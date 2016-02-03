public struct VCSRootEntry {

    public let id : String
    public let vcsRoot : VCSRoot
    public let checkoutRules: String?

    init?(dictionary: [String: AnyObject]) {
        guard let id = dictionary["id"] as? String,
              let checkoutRules = dictionary["checkout-rules"] as? String,
              let vcsRootDictionary = dictionary["vcs-root"] as? [String: AnyObject],
              let vcsRoot = VCSRoot(dictionary: vcsRootDictionary) else {
                return nil
        }

        self.id = id
        self.vcsRoot = vcsRoot
        self.checkoutRules = checkoutRules
    }

}
