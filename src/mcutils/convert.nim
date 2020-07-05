import strutils, times

proc strToBool*(val: string): bool =
    try:
        if val.toLower == "true":
            return true
        if val.toLower == "t":
            return true
        elif val.toLower == "yes":
            return true
        elif val.toLower == "y":
            return true
        elif val.parseInt > 0:
            return true
        else:
            return false 
    except:
        return false

proc strToTime*(val: string): Time =
    try:
        result = fromUnix(val.parseInt)
    except:
        return Time()