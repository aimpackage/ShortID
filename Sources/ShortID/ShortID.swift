import Foundation
import CryptoKit

public struct ShortID {
    /// 生成一个短ID（默认9字符）
    /// - Parameter length: ID长度（建议 6~12）
    /// - Returns: 短字符串ID
    public static func generate(length: Int = 9) -> String {
        // URL安全字符集
        let allowedChars = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_-")

        // 生成随机数据
        var randomBytes = [UInt8](repeating: 0, count: 16)
        _ = SecRandomCopyBytes(kSecRandomDefault, randomBytes.count, &randomBytes)

        // 使用SHA256增强随机性
        let hash = SHA256.hash(data: Data(randomBytes))

        // Base64编码并清理特殊符号
        let base64 = Data(hash).base64EncodedString()
            .replacingOccurrences(of: "/", with: "_")
            .replacingOccurrences(of: "+", with: "-")
            .replacingOccurrences(of: "=", with: "")

        // 截取指定长度
        return String(base64.prefix(length))
    }
}