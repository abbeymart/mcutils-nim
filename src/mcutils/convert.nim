import strutils, times

proc strToBool*(val: string): bool =
    try:
        if val.toLowerAscii == "true":
            return true
        if val.toLowerAscii == "t":
            return true
        elif val.toLowerAscii == "yes":
            return true
        elif val.toLowerAscii == "y":
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