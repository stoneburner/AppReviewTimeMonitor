//
//  AppReviewTimeMonitorStyleKit.swift
//  ProjectName
//
//  Created by Alexander Kasimir on 27/10/15.
//  Copyright (c) 2015 kasimir.technology. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//



import Cocoa

public class AppReviewTimeMonitorStyleKit : NSObject {

    //// Cache

    private struct Cache {
        static var imageOfStatusBarError: NSImage?
        static var imageOfCombinedStatusBarError: NSImage?
    }

    //// Drawing Methods

    public class func drawStatusBarImage(iosDayLabel iosDayLabel: String = "99") {
        //// General Declarations
        //let context = unsafeBitCast(NSGraphicsContext.currentContext()!.graphicsPort, CGContext.self)

        //// Rectangle Drawing
        let rectanglePath = NSBezierPath(roundedRect: NSMakeRect(1, 5, 20, 13), xRadius: 3, yRadius: 3)
        NSColor.blackColor().setStroke()
        rectanglePath.lineWidth = 1
        rectanglePath.stroke()


        //// Text Drawing
        let textRect = NSMakeRect(3, 6, 16, 11)
        let textStyle = NSParagraphStyle.defaultParagraphStyle().mutableCopy() as! NSMutableParagraphStyle
        textStyle.alignment = .Center

        let textFontAttributes = [NSFontAttributeName: NSFont.labelFontOfSize(12), NSForegroundColorAttributeName: NSColor.blackColor(), NSParagraphStyleAttributeName: textStyle]

        let textTextHeight: CGFloat = NSString(string: iosDayLabel).boundingRectWithSize(NSMakeSize(textRect.width, CGFloat.infinity), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: textFontAttributes).size.height
        let textTextRect: NSRect = NSMakeRect(textRect.minX, textRect.minY + (textRect.height - textTextHeight) / 2, textRect.width, textTextHeight)
        NSGraphicsContext.saveGraphicsState()
        NSRectClip(textRect)
        NSString(string: iosDayLabel).drawInRect(NSOffsetRect(textTextRect, 0, 1), withAttributes: textFontAttributes)
        NSGraphicsContext.restoreGraphicsState()
    }

    public class func drawStatusBarError() {

        //// Rectangle Drawing
        let rectanglePath = NSBezierPath(roundedRect: NSMakeRect(1, 5.5, 20, 13), xRadius: 3, yRadius: 3)
        NSColor.blackColor().setStroke()
        rectanglePath.lineWidth = 1
        rectanglePath.stroke()


        //// Bezier Drawing
        let bezierPath = NSBezierPath()
        bezierPath.moveToPoint(NSMakePoint(11.5, 14))
        bezierPath.lineToPoint(NSMakePoint(10.5, 14))
        bezierPath.curveToPoint(NSMakePoint(10.5, 12.87), controlPoint1: NSMakePoint(10.5, 14), controlPoint2: NSMakePoint(10.5, 13.48))
        bezierPath.curveToPoint(NSMakePoint(10.5, 11), controlPoint1: NSMakePoint(10.5, 12.02), controlPoint2: NSMakePoint(10.5, 11))
        bezierPath.lineToPoint(NSMakePoint(11.5, 11))
        bezierPath.lineToPoint(NSMakePoint(11.5, 14))
        bezierPath.closePath()
        bezierPath.moveToPoint(NSMakePoint(11.5, 10))
        bezierPath.lineToPoint(NSMakePoint(10.5, 10))
        bezierPath.curveToPoint(NSMakePoint(10.5, 9.22), controlPoint1: NSMakePoint(10.5, 10), controlPoint2: NSMakePoint(10.5, 9.51))
        bezierPath.curveToPoint(NSMakePoint(10.5, 9), controlPoint1: NSMakePoint(10.5, 9.09), controlPoint2: NSMakePoint(10.5, 9))
        bezierPath.lineToPoint(NSMakePoint(11.5, 9))
        bezierPath.lineToPoint(NSMakePoint(11.5, 10))
        bezierPath.closePath()
        bezierPath.moveToPoint(NSMakePoint(11, 16.75))
        bezierPath.lineToPoint(NSMakePoint(15.98, 8.13))
        bezierPath.lineToPoint(NSMakePoint(6.02, 8.13))
        bezierPath.curveToPoint(NSMakePoint(6.69, 9.28), controlPoint1: NSMakePoint(6.02, 8.13), controlPoint2: NSMakePoint(6.28, 8.58))
        bezierPath.curveToPoint(NSMakePoint(11, 16.75), controlPoint1: NSMakePoint(8.04, 11.63), controlPoint2: NSMakePoint(11, 16.75))
        bezierPath.closePath()
        NSColor.blackColor().setFill()
        bezierPath.fill()
    }

    public class func drawCombinedStatusBarImage(iosDayLabel iosDayLabel: String = "99", osxDayLabel: String = "99") {
        //// General Declarations
        //let context = unsafeBitCast(NSGraphicsContext.currentContext()!.graphicsPort, CGContext.self)

        //// Rectangle Drawing
        let rectanglePath = NSBezierPath(roundedRect: NSMakeRect(1, 4.5, 39.5, 13), xRadius: 3, yRadius: 3)
        NSColor.blackColor().setStroke()
        rectanglePath.lineWidth = 1
        rectanglePath.stroke()


        //// Text Drawing
        let textRect = NSMakeRect(3, 5.5, 16, 11)
        let textStyle = NSParagraphStyle.defaultParagraphStyle().mutableCopy() as! NSMutableParagraphStyle
        textStyle.alignment = .Center

        let textFontAttributes = [NSFontAttributeName: NSFont.labelFontOfSize(12), NSForegroundColorAttributeName: NSColor.blackColor(), NSParagraphStyleAttributeName: textStyle]

        let textTextHeight: CGFloat = NSString(string: iosDayLabel).boundingRectWithSize(NSMakeSize(textRect.width, CGFloat.infinity), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: textFontAttributes).size.height
        let textTextRect: NSRect = NSMakeRect(textRect.minX, textRect.minY + (textRect.height - textTextHeight) / 2, textRect.width, textTextHeight)
        NSGraphicsContext.saveGraphicsState()
        NSRectClip(textRect)
        NSString(string: iosDayLabel).drawInRect(NSOffsetRect(textTextRect, 0, 1), withAttributes: textFontAttributes)
        NSGraphicsContext.restoreGraphicsState()


        //// Text 2 Drawing
        let text2Rect = NSMakeRect(22, 5.5, 16, 11)
        let text2Style = NSParagraphStyle.defaultParagraphStyle().mutableCopy() as! NSMutableParagraphStyle
        text2Style.alignment = .Center

        let text2FontAttributes = [NSFontAttributeName: NSFont.labelFontOfSize(12), NSForegroundColorAttributeName: NSColor.blackColor(), NSParagraphStyleAttributeName: text2Style]

        let text2TextHeight: CGFloat = NSString(string: osxDayLabel).boundingRectWithSize(NSMakeSize(text2Rect.width, CGFloat.infinity), options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: text2FontAttributes).size.height
        let text2TextRect: NSRect = NSMakeRect(text2Rect.minX, text2Rect.minY + (text2Rect.height - text2TextHeight) / 2, text2Rect.width, text2TextHeight)
        NSGraphicsContext.saveGraphicsState()
        NSRectClip(text2Rect)
        NSString(string: osxDayLabel).drawInRect(NSOffsetRect(text2TextRect, 0, 1), withAttributes: text2FontAttributes)
        NSGraphicsContext.restoreGraphicsState()


        //// Bezier Drawing
        let bezierPath = NSBezierPath()
        bezierPath.moveToPoint(NSMakePoint(20.5, 17.5))
        bezierPath.lineToPoint(NSMakePoint(20.5, 4.5))
        NSColor.blackColor().setStroke()
        bezierPath.lineWidth = 1
        bezierPath.stroke()
    }

    public class func drawCombinedStatusBarError() {

        //// Rectangle Drawing
        let rectanglePath = NSBezierPath(roundedRect: NSMakeRect(1, 4.5, 39.5, 13), xRadius: 3, yRadius: 3)
        NSColor.blackColor().setStroke()
        rectanglePath.lineWidth = 1
        rectanglePath.stroke()


        //// Bezier Drawing
        let bezierPath = NSBezierPath()
        bezierPath.moveToPoint(NSMakePoint(20.5, 17.5))
        bezierPath.lineToPoint(NSMakePoint(20.5, 4.5))
        NSColor.blackColor().setStroke()
        bezierPath.lineWidth = 1
        bezierPath.stroke()


        //// Bezier 2 Drawing
        let bezier2Path = NSBezierPath()
        bezier2Path.moveToPoint(NSMakePoint(11.5, 13))
        bezier2Path.lineToPoint(NSMakePoint(10.5, 13))
        bezier2Path.curveToPoint(NSMakePoint(10.5, 11.87), controlPoint1: NSMakePoint(10.5, 13), controlPoint2: NSMakePoint(10.5, 12.48))
        bezier2Path.curveToPoint(NSMakePoint(10.5, 10), controlPoint1: NSMakePoint(10.5, 11.02), controlPoint2: NSMakePoint(10.5, 10))
        bezier2Path.lineToPoint(NSMakePoint(11.5, 10))
        bezier2Path.lineToPoint(NSMakePoint(11.5, 13))
        bezier2Path.closePath()
        bezier2Path.moveToPoint(NSMakePoint(11.5, 9))
        bezier2Path.lineToPoint(NSMakePoint(10.5, 9))
        bezier2Path.curveToPoint(NSMakePoint(10.5, 8.22), controlPoint1: NSMakePoint(10.5, 9), controlPoint2: NSMakePoint(10.5, 8.51))
        bezier2Path.curveToPoint(NSMakePoint(10.5, 8), controlPoint1: NSMakePoint(10.5, 8.09), controlPoint2: NSMakePoint(10.5, 8))
        bezier2Path.lineToPoint(NSMakePoint(11.5, 8))
        bezier2Path.lineToPoint(NSMakePoint(11.5, 9))
        bezier2Path.closePath()
        bezier2Path.moveToPoint(NSMakePoint(11, 15.75))
        bezier2Path.lineToPoint(NSMakePoint(15.98, 7.13))
        bezier2Path.lineToPoint(NSMakePoint(6.02, 7.13))
        bezier2Path.curveToPoint(NSMakePoint(6.69, 8.28), controlPoint1: NSMakePoint(6.02, 7.13), controlPoint2: NSMakePoint(6.28, 7.58))
        bezier2Path.curveToPoint(NSMakePoint(11, 15.75), controlPoint1: NSMakePoint(8.04, 10.63), controlPoint2: NSMakePoint(11, 15.75))
        bezier2Path.closePath()
        NSColor.blackColor().setFill()
        bezier2Path.fill()


        //// Bezier 3 Drawing
        let bezier3Path = NSBezierPath()
        bezier3Path.moveToPoint(NSMakePoint(30.5, 13))
        bezier3Path.lineToPoint(NSMakePoint(29.5, 13))
        bezier3Path.curveToPoint(NSMakePoint(29.5, 11.87), controlPoint1: NSMakePoint(29.5, 13), controlPoint2: NSMakePoint(29.5, 12.48))
        bezier3Path.curveToPoint(NSMakePoint(29.5, 10), controlPoint1: NSMakePoint(29.5, 11.02), controlPoint2: NSMakePoint(29.5, 10))
        bezier3Path.lineToPoint(NSMakePoint(30.5, 10))
        bezier3Path.lineToPoint(NSMakePoint(30.5, 13))
        bezier3Path.closePath()
        bezier3Path.moveToPoint(NSMakePoint(30.5, 9))
        bezier3Path.lineToPoint(NSMakePoint(29.5, 9))
        bezier3Path.curveToPoint(NSMakePoint(29.5, 8.22), controlPoint1: NSMakePoint(29.5, 9), controlPoint2: NSMakePoint(29.5, 8.51))
        bezier3Path.curveToPoint(NSMakePoint(29.5, 8), controlPoint1: NSMakePoint(29.5, 8.09), controlPoint2: NSMakePoint(29.5, 8))
        bezier3Path.lineToPoint(NSMakePoint(30.5, 8))
        bezier3Path.lineToPoint(NSMakePoint(30.5, 9))
        bezier3Path.closePath()
        bezier3Path.moveToPoint(NSMakePoint(30, 15.75))
        bezier3Path.lineToPoint(NSMakePoint(34.98, 7.13))
        bezier3Path.lineToPoint(NSMakePoint(25.02, 7.13))
        bezier3Path.curveToPoint(NSMakePoint(25.69, 8.28), controlPoint1: NSMakePoint(25.02, 7.13), controlPoint2: NSMakePoint(25.28, 7.58))
        bezier3Path.curveToPoint(NSMakePoint(30, 15.75), controlPoint1: NSMakePoint(27.04, 10.63), controlPoint2: NSMakePoint(30, 15.75))
        bezier3Path.closePath()
        NSColor.blackColor().setFill()
        bezier3Path.fill()
    }

    //// Generated Images

    public class func imageOfStatusBarImage(iosDayLabel iosDayLabel: String = "99") -> NSImage {
        return NSImage(size: NSMakeSize(22, 22), flipped: false) { (NSRect) -> Bool in 
                AppReviewTimeMonitorStyleKit.drawStatusBarImage(iosDayLabel: iosDayLabel)

            return true
        }
    }

    public class var imageOfStatusBarError: NSImage {
        if Cache.imageOfStatusBarError != nil {
            return Cache.imageOfStatusBarError!
        }

        Cache.imageOfStatusBarError = NSImage(size: NSMakeSize(22, 22), flipped: false) { (NSRect) -> Bool in 
                AppReviewTimeMonitorStyleKit.drawStatusBarError()

            return true
        }

        return Cache.imageOfStatusBarError!
    }

    public class func imageOfCombinedStatusBarImage(iosDayLabel iosDayLabel: String = "99", osxDayLabel: String = "99") -> NSImage {
        return NSImage(size: NSMakeSize(42, 22), flipped: false) { (NSRect) -> Bool in 
                AppReviewTimeMonitorStyleKit.drawCombinedStatusBarImage(iosDayLabel: iosDayLabel, osxDayLabel: osxDayLabel)

            return true
        }
    }

    public class var imageOfCombinedStatusBarError: NSImage {
        if Cache.imageOfCombinedStatusBarError != nil {
            return Cache.imageOfCombinedStatusBarError!
        }

        Cache.imageOfCombinedStatusBarError = NSImage(size: NSMakeSize(42, 22), flipped: false) { (NSRect) -> Bool in 
                AppReviewTimeMonitorStyleKit.drawCombinedStatusBarError()

            return true
        }

        return Cache.imageOfCombinedStatusBarError!
    }

}
