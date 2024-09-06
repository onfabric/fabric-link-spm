// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI
import SafariServices

public struct FabricLink: UIViewControllerRepresentable {
    let url: URL
    var onDismiss: () -> Void

    public init(url: URL, onDismiss: @escaping () -> Void) {
        self.url = url
        self.onDismiss = onDismiss
    }

    public func makeUIViewController(context: Context) -> SFSafariViewController {
        let config = SFSafariViewController.Configuration()
        config.entersReaderIfAvailable = false
        let safariViewController = SFSafariViewController(url: url, configuration: config)
        safariViewController.delegate = context.coordinator
        return safariViewController
    }

    public func updateUIViewController(_ safariViewController: SFSafariViewController, context: Context) {}

    public func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    public class Coordinator: NSObject, SFSafariViewControllerDelegate {
        let parent: FabricLink

        init(_ parent: FabricLink) {
            self.parent = parent
        }

        public func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
            parent.onDismiss()
        }
    }
}
