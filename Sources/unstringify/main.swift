import Foundation

let arguments = try parseArguments()

print("Generating enums...")

let keys = try generateKeys(localizablePath: arguments.localizablePath)

writeSwiftFile(keys.standard,
               keys.formatted,
               keys.rich,
               keys.richFormatted,
               outputPath: arguments.outputPath)

print("Done!")
