set -o pipefail

# Grab the full directory name (allows us to call the script from anywhere)
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Run the tests
xcodebuild test -project "$DIR/HelloWorld/HelloWorld.xcodeproj" -sdk iphonesimulator9.3 -scheme "HelloWorld" | xcpretty
