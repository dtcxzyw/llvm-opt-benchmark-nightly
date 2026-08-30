Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/JXRGlue?download=true
inline.NumInlined: 21
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GUID = type { i32, i16, i16, [8 x i8] }
%struct.tagPKIIDInfo = type { ptr, ptr, ptr }
%struct.tagCWMTranscodingParam = type { i64, i64, i64, i64, i32, i8, i32, i32, i32 }

@GUID_PKPixelFormatDontCare = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9\00" }, align 4
@GUID_PKPixelFormatBlackWhite = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9\05" }, align 4
@GUID_PKPixelFormat8bppGray = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9\08" }, align 4
@GUID_PKPixelFormat16bppRGB555 = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9\09" }, align 4
@GUID_PKPixelFormat16bppRGB565 = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9\0A" }, align 4
@GUID_PKPixelFormat16bppGray = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9\0B" }, align 4
@GUID_PKPixelFormat24bppBGR = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9\0C" }, align 4
@GUID_PKPixelFormat24bppRGB = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9\0D" }, align 4
@GUID_PKPixelFormat32bppBGR = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9\0E" }, align 4
@GUID_PKPixelFormat32bppBGRA = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9\0F" }, align 4
@GUID_PKPixelFormat32bppPBGRA = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9\10" }, align 4
@GUID_PKPixelFormat32bppGrayFloat = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9\11" }, align 4
@GUID_PKPixelFormat32bppRGB = constant %struct._GUID { i32 -645108843, i16 16126, i16 18390, [8 x i8] c"\BB%\EB\17H\AB\0C\F1" }, align 4
@GUID_PKPixelFormat32bppRGBA = constant %struct._GUID { i32 -171463379, i16 27277, i16 17373, [8 x i8] c"\A7\A8\A2\995&\1A\E9" }, align 4
@GUID_PKPixelFormat32bppPRGBA = constant %struct._GUID { i32 1019520592, i16 -23257, i16 19767, [8 x i8] c"\A9\161B\C7\EB\ED\BA" }, align 4
@GUID_PKPixelFormat48bppRGBFixedPoint = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9\12" }, align 4
@GUID_PKPixelFormat16bppGrayFixedPoint = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9\13" }, align 4
@GUID_PKPixelFormat32bppRGB101010 = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9\14" }, align 4
@GUID_PKPixelFormat48bppRGB = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9\15" }, align 4
@GUID_PKPixelFormat64bppRGBA = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9\16" }, align 4
@GUID_PKPixelFormat64bppPRGBA = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9\17" }, align 4
@GUID_PKPixelFormat96bppRGBFixedPoint = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9\18" }, align 4
@GUID_PKPixelFormat96bppRGBFloat = constant %struct._GUID { i32 -469837937, i16 -5925, i16 19151, [8 x i8] c"\84\C1\E9\7Fa6\B3'" }, align 4
@GUID_PKPixelFormat128bppRGBAFloat = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9\19" }, align 4
@GUID_PKPixelFormat128bppPRGBAFloat = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9\1A" }, align 4
@GUID_PKPixelFormat128bppRGBFloat = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9\1B" }, align 4
@GUID_PKPixelFormat32bppCMYK = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9\1C" }, align 4
@GUID_PKPixelFormat64bppRGBAFixedPoint = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9\1D" }, align 4
@GUID_PKPixelFormat64bppRGBFixedPoint = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9@" }, align 4
@GUID_PKPixelFormat128bppRGBAFixedPoint = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9\1E" }, align 4
@GUID_PKPixelFormat128bppRGBFixedPoint = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9A" }, align 4
@GUID_PKPixelFormat64bppRGBAHalf = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9:" }, align 4
@GUID_PKPixelFormat64bppRGBHalf = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9B" }, align 4
@GUID_PKPixelFormat48bppRGBHalf = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9;" }, align 4
@GUID_PKPixelFormat32bppRGBE = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9=" }, align 4
@GUID_PKPixelFormat16bppGrayHalf = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9>" }, align 4
@GUID_PKPixelFormat32bppGrayFixedPoint = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9?" }, align 4
@GUID_PKPixelFormat64bppCMYK = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9\1F" }, align 4
@GUID_PKPixelFormat24bpp3Channels = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9 " }, align 4
@GUID_PKPixelFormat32bpp4Channels = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9!" }, align 4
@GUID_PKPixelFormat40bpp5Channels = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9\22" }, align 4
@GUID_PKPixelFormat48bpp6Channels = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9#" }, align 4
@GUID_PKPixelFormat56bpp7Channels = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9$" }, align 4
@GUID_PKPixelFormat64bpp8Channels = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9%" }, align 4
@GUID_PKPixelFormat48bpp3Channels = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9&" }, align 4
@GUID_PKPixelFormat64bpp4Channels = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9'" }, align 4
@GUID_PKPixelFormat80bpp5Channels = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9(" }, align 4
@GUID_PKPixelFormat96bpp6Channels = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9)" }, align 4
@GUID_PKPixelFormat112bpp7Channels = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9*" }, align 4
@GUID_PKPixelFormat128bpp8Channels = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9+" }, align 4
@GUID_PKPixelFormat40bppCMYKAlpha = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9," }, align 4
@GUID_PKPixelFormat80bppCMYKAlpha = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9-" }, align 4
@GUID_PKPixelFormat32bpp3ChannelsAlpha = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9." }, align 4
@GUID_PKPixelFormat40bpp4ChannelsAlpha = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9/" }, align 4
@GUID_PKPixelFormat48bpp5ChannelsAlpha = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C90" }, align 4
@GUID_PKPixelFormat56bpp6ChannelsAlpha = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C91" }, align 4
@GUID_PKPixelFormat64bpp7ChannelsAlpha = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C92" }, align 4
@GUID_PKPixelFormat72bpp8ChannelsAlpha = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C93" }, align 4
@GUID_PKPixelFormat64bpp3ChannelsAlpha = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C94" }, align 4
@GUID_PKPixelFormat80bpp4ChannelsAlpha = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C95" }, align 4
@GUID_PKPixelFormat96bpp5ChannelsAlpha = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C96" }, align 4
@GUID_PKPixelFormat112bpp6ChannelsAlpha = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C97" }, align 4
@GUID_PKPixelFormat128bpp7ChannelsAlpha = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C98" }, align 4
@GUID_PKPixelFormat144bpp8ChannelsAlpha = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C99" }, align 4
@GUID_PKPixelFormat12bppYCC420 = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9D" }, align 4
@GUID_PKPixelFormat16bppYCC422 = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9E" }, align 4
@GUID_PKPixelFormat20bppYCC422 = local_unnamed_addr constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9F" }, align 4
@GUID_PKPixelFormat32bppYCC422 = local_unnamed_addr constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9G" }, align 4
@GUID_PKPixelFormat24bppYCC444 = constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9H" }, align 4
@GUID_PKPixelFormat30bppYCC444 = local_unnamed_addr constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9I" }, align 4
@GUID_PKPixelFormat48bppYCC444 = local_unnamed_addr constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9J" }, align 4
@GUID_PKPixelFormat16bpp48bppYCC444FixedPoint = local_unnamed_addr constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9K" }, align 4
@GUID_PKPixelFormat20bppYCC420Alpha = local_unnamed_addr constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9L" }, align 4
@GUID_PKPixelFormat24bppYCC422Alpha = local_unnamed_addr constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9M" }, align 4
@GUID_PKPixelFormat30bppYCC422Alpha = local_unnamed_addr constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9N" }, align 4
@GUID_PKPixelFormat48bppYCC422Alpha = local_unnamed_addr constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9O" }, align 4
@GUID_PKPixelFormat32bppYCC444Alpha = local_unnamed_addr constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9P" }, align 4
@GUID_PKPixelFormat40bppYCC444Alpha = local_unnamed_addr constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9Q" }, align 4
@GUID_PKPixelFormat64bppYCC444Alpha = local_unnamed_addr constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9R" }, align 4
@GUID_PKPixelFormat64bppYCC444AlphaFixedPoint = local_unnamed_addr constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9S" }, align 4
@GUID_PKPixelFormat32bppCMYKDIRECT = local_unnamed_addr constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9T" }, align 4
@GUID_PKPixelFormat64bppCMYKDIRECT = local_unnamed_addr constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9U" }, align 4
@GUID_PKPixelFormat40bppCMYKDIRECTAlpha = local_unnamed_addr constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9V" }, align 4
@GUID_PKPixelFormat80bppCMYKDIRECTAlpha = local_unnamed_addr constant %struct._GUID { i32 1876804388, i16 19971, i16 19454, [8 x i8] c"\B1\85=wv\8D\C9C" }, align 4
@IID_PKImageScanEncode = local_unnamed_addr constant i32 1, align 4
@IID_PKImageFrameEncode = local_unnamed_addr constant i32 2, align 4
@IID_PKImageUnsupported = constant i32 100, align 4
@IID_PKImageWmpEncode = constant i32 101, align 4
@IID_PKImageWmpDecode = constant i32 201, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@pixelInfo = internal unnamed_addr constant [68 x { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 }] [{ ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormatDontCare, i64 1, i32 0, i32 1, i32 8, [4 x i8] zeroinitializer, i64 0, i32 0, i32 0, i32 0, i32 0 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormatBlackWhite, i64 1, i32 0, i32 0, i32 1, [4 x i8] zeroinitializer, i64 0, i32 1, i32 1, i32 1, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormatBlackWhite, i64 1, i32 0, i32 0, i32 1, [4 x i8] zeroinitializer, i64 0, i32 0, i32 1, i32 1, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat8bppGray, i64 1, i32 0, i32 1, i32 8, [4 x i8] zeroinitializer, i64 0, i32 1, i32 1, i32 8, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat16bppGray, i64 1, i32 0, i32 2, i32 16, [4 x i8] zeroinitializer, i64 0, i32 1, i32 1, i32 16, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat16bppGrayFixedPoint, i64 1, i32 0, i32 3, i32 16, [4 x i8] zeroinitializer, i64 0, i32 1, i32 1, i32 16, i32 2 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat16bppGrayHalf, i64 1, i32 0, i32 4, i32 16, [4 x i8] zeroinitializer, i64 0, i32 1, i32 1, i32 16, i32 3 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat32bppGrayFixedPoint, i64 1, i32 0, i32 6, i32 32, [4 x i8] zeroinitializer, i64 0, i32 1, i32 1, i32 32, i32 2 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat32bppGrayFloat, i64 1, i32 0, i32 7, i32 32, [4 x i8] zeroinitializer, i64 0, i32 1, i32 1, i32 32, i32 3 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat24bppRGB, i64 3, i32 7, i32 1, i32 24, [4 x i8] zeroinitializer, i64 0, i32 2, i32 3, i32 8, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat24bppBGR, i64 3, i32 7, i32 1, i32 24, [4 x i8] zeroinitializer, i64 64, i32 2, i32 3, i32 8, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat32bppRGB, i64 3, i32 7, i32 1, i32 32, [4 x i8] zeroinitializer, i64 0, i32 2, i32 3, i32 8, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat32bppBGR, i64 3, i32 7, i32 1, i32 32, [4 x i8] zeroinitializer, i64 64, i32 2, i32 3, i32 8, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat48bppRGB, i64 3, i32 7, i32 2, i32 48, [4 x i8] zeroinitializer, i64 0, i32 2, i32 3, i32 16, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat48bppRGBFixedPoint, i64 3, i32 7, i32 3, i32 48, [4 x i8] zeroinitializer, i64 0, i32 2, i32 3, i32 16, i32 2 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat48bppRGBHalf, i64 3, i32 7, i32 4, i32 48, [4 x i8] zeroinitializer, i64 0, i32 2, i32 3, i32 16, i32 3 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat64bppRGBFixedPoint, i64 3, i32 7, i32 3, i32 64, [4 x i8] zeroinitializer, i64 0, i32 2, i32 3, i32 16, i32 2 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat64bppRGBHalf, i64 3, i32 7, i32 4, i32 64, [4 x i8] zeroinitializer, i64 0, i32 2, i32 3, i32 16, i32 3 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat96bppRGBFixedPoint, i64 3, i32 7, i32 6, i32 96, [4 x i8] zeroinitializer, i64 0, i32 2, i32 3, i32 32, i32 2 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat96bppRGBFloat, i64 3, i32 7, i32 7, i32 96, [4 x i8] zeroinitializer, i64 0, i32 2, i32 3, i32 32, i32 3 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat128bppRGBFixedPoint, i64 3, i32 7, i32 6, i32 128, [4 x i8] zeroinitializer, i64 0, i32 2, i32 3, i32 32, i32 2 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat128bppRGBFloat, i64 3, i32 7, i32 7, i32 128, [4 x i8] zeroinitializer, i64 0, i32 2, i32 3, i32 32, i32 3 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat32bppBGRA, i64 4, i32 7, i32 1, i32 32, [4 x i8] zeroinitializer, i64 80, i32 2, i32 4, i32 8, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat32bppRGBA, i64 4, i32 7, i32 1, i32 32, [4 x i8] zeroinitializer, i64 16, i32 2, i32 4, i32 8, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat64bppRGBA, i64 4, i32 7, i32 2, i32 64, [4 x i8] zeroinitializer, i64 16, i32 2, i32 4, i32 16, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat64bppRGBAFixedPoint, i64 4, i32 7, i32 3, i32 64, [4 x i8] zeroinitializer, i64 16, i32 2, i32 4, i32 16, i32 2 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat64bppRGBAHalf, i64 4, i32 7, i32 4, i32 64, [4 x i8] zeroinitializer, i64 16, i32 2, i32 4, i32 16, i32 3 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat128bppRGBAFixedPoint, i64 4, i32 7, i32 6, i32 128, [4 x i8] zeroinitializer, i64 16, i32 2, i32 4, i32 32, i32 2 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat128bppRGBAFloat, i64 4, i32 7, i32 7, i32 128, [4 x i8] zeroinitializer, i64 16, i32 2, i32 4, i32 32, i32 3 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat32bppPBGRA, i64 4, i32 7, i32 1, i32 32, [4 x i8] zeroinitializer, i64 112, i32 2, i32 4, i32 8, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat32bppPRGBA, i64 4, i32 7, i32 1, i32 32, [4 x i8] zeroinitializer, i64 48, i32 2, i32 4, i32 8, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat64bppPRGBA, i64 4, i32 7, i32 2, i32 64, [4 x i8] zeroinitializer, i64 48, i32 2, i32 4, i32 16, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat128bppPRGBAFloat, i64 4, i32 7, i32 7, i32 128, [4 x i8] zeroinitializer, i64 48, i32 2, i32 4, i32 32, i32 3 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat16bppRGB555, i64 3, i32 7, i32 8, i32 16, [4 x i8] zeroinitializer, i64 0, i32 2, i32 3, i32 5, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat16bppRGB565, i64 3, i32 7, i32 10, i32 16, [4 x i8] zeroinitializer, i64 0, i32 2, i32 3, i32 6, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat32bppRGB101010, i64 3, i32 7, i32 9, i32 32, [4 x i8] zeroinitializer, i64 0, i32 2, i32 3, i32 10, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat32bppCMYK, i64 4, i32 4, i32 1, i32 32, [4 x i8] zeroinitializer, i64 0, i32 5, i32 4, i32 8, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat40bppCMYKAlpha, i64 5, i32 4, i32 1, i32 40, [4 x i8] zeroinitializer, i64 16, i32 5, i32 5, i32 8, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat64bppCMYK, i64 4, i32 4, i32 2, i32 64, [4 x i8] zeroinitializer, i64 0, i32 5, i32 4, i32 16, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat80bppCMYKAlpha, i64 5, i32 4, i32 2, i32 80, [4 x i8] zeroinitializer, i64 16, i32 5, i32 5, i32 16, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat24bpp3Channels, i64 3, i32 6, i32 1, i32 24, [4 x i8] zeroinitializer, i64 0, i32 100, i32 3, i32 8, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat32bpp4Channels, i64 4, i32 6, i32 1, i32 32, [4 x i8] zeroinitializer, i64 0, i32 100, i32 4, i32 8, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat40bpp5Channels, i64 5, i32 6, i32 1, i32 40, [4 x i8] zeroinitializer, i64 0, i32 100, i32 5, i32 8, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat48bpp6Channels, i64 6, i32 6, i32 1, i32 48, [4 x i8] zeroinitializer, i64 0, i32 100, i32 6, i32 8, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat56bpp7Channels, i64 7, i32 6, i32 1, i32 56, [4 x i8] zeroinitializer, i64 0, i32 100, i32 7, i32 8, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat64bpp8Channels, i64 8, i32 6, i32 1, i32 64, [4 x i8] zeroinitializer, i64 0, i32 100, i32 8, i32 8, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat32bpp3ChannelsAlpha, i64 4, i32 6, i32 1, i32 32, [4 x i8] zeroinitializer, i64 16, i32 100, i32 4, i32 8, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat40bpp4ChannelsAlpha, i64 5, i32 6, i32 1, i32 40, [4 x i8] zeroinitializer, i64 16, i32 100, i32 5, i32 8, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat48bpp5ChannelsAlpha, i64 6, i32 6, i32 1, i32 48, [4 x i8] zeroinitializer, i64 16, i32 100, i32 6, i32 8, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat56bpp6ChannelsAlpha, i64 7, i32 6, i32 1, i32 56, [4 x i8] zeroinitializer, i64 16, i32 100, i32 7, i32 8, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat64bpp7ChannelsAlpha, i64 8, i32 6, i32 1, i32 64, [4 x i8] zeroinitializer, i64 16, i32 100, i32 8, i32 8, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat72bpp8ChannelsAlpha, i64 9, i32 6, i32 1, i32 72, [4 x i8] zeroinitializer, i64 16, i32 100, i32 9, i32 8, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat48bpp3Channels, i64 3, i32 6, i32 2, i32 48, [4 x i8] zeroinitializer, i64 0, i32 100, i32 3, i32 16, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat64bpp4Channels, i64 4, i32 6, i32 2, i32 64, [4 x i8] zeroinitializer, i64 0, i32 100, i32 4, i32 16, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat80bpp5Channels, i64 5, i32 6, i32 2, i32 80, [4 x i8] zeroinitializer, i64 0, i32 100, i32 5, i32 16, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat96bpp6Channels, i64 6, i32 6, i32 2, i32 96, [4 x i8] zeroinitializer, i64 0, i32 100, i32 6, i32 16, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat112bpp7Channels, i64 7, i32 6, i32 2, i32 112, [4 x i8] zeroinitializer, i64 0, i32 100, i32 7, i32 16, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat128bpp8Channels, i64 8, i32 6, i32 2, i32 128, [4 x i8] zeroinitializer, i64 0, i32 100, i32 8, i32 16, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat64bpp3ChannelsAlpha, i64 4, i32 6, i32 2, i32 64, [4 x i8] zeroinitializer, i64 16, i32 100, i32 4, i32 16, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat80bpp4ChannelsAlpha, i64 5, i32 6, i32 2, i32 80, [4 x i8] zeroinitializer, i64 16, i32 100, i32 5, i32 16, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat96bpp5ChannelsAlpha, i64 6, i32 6, i32 2, i32 96, [4 x i8] zeroinitializer, i64 16, i32 100, i32 6, i32 16, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat112bpp6ChannelsAlpha, i64 7, i32 6, i32 2, i32 112, [4 x i8] zeroinitializer, i64 16, i32 100, i32 7, i32 16, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat128bpp7ChannelsAlpha, i64 8, i32 6, i32 2, i32 128, [4 x i8] zeroinitializer, i64 16, i32 100, i32 8, i32 16, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat144bpp8ChannelsAlpha, i64 9, i32 6, i32 2, i32 144, [4 x i8] zeroinitializer, i64 16, i32 100, i32 9, i32 16, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat32bppRGBE, i64 4, i32 8, i32 1, i32 32, [4 x i8] zeroinitializer, i64 0, i32 101, i32 4, i32 8, i32 1 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat12bppYCC420, i64 3, i32 1, i32 1, i32 48, [4 x i8] zeroinitializer, i64 0, i32 0, i32 0, i32 0, i32 0 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat16bppYCC422, i64 3, i32 2, i32 1, i32 32, [4 x i8] zeroinitializer, i64 0, i32 0, i32 0, i32 0, i32 0 }, { ptr, i64, i32, i32, i32, [4 x i8], i64, i32, i32, i32, i32 } { ptr @GUID_PKPixelFormat24bppYCC444, i64 3, i32 3, i32 1, i32 24, [4 x i8] zeroinitializer, i64 0, i32 0, i32 0, i32 0, i32 0 }], align 16
@GetIIDInfo.iidInfo = internal global [3 x %struct.tagPKIIDInfo] [%struct.tagPKIIDInfo { ptr @.str.2, ptr @IID_PKImageWmpEncode, ptr @IID_PKImageWmpDecode }, %struct.tagPKIIDInfo { ptr @.str.3, ptr @IID_PKImageUnsupported, ptr @IID_PKImageWmpDecode }, %struct.tagPKIIDInfo { ptr @.str.4, ptr @IID_PKImageUnsupported, ptr @IID_PKImageWmpDecode }], align 16
@.str.2 = private unnamed_addr constant [5 x i8] c".jxr\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".wdp\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".hdp\00", align 1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable
define noundef range(i64 -101, 1) i64 @PKAlloc(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %1) #19 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !8
  %.not = icmp eq ptr %i.a, null
  %i.b = select i1 %.not, i64 -101, i64 0
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef i64 @PKFree(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  tail call void @free(ptr noundef %i.a) #20
  store ptr null, ptr %0, align 8, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i64 0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define range(i64 -101, 1) i64 @PKAllocAligned(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = add i64 %1, 7
  %i.b = add i64 %i.a, %2
  store ptr null, ptr %0, align 8, !tbaa !8
  %i.c = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.b) #19 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = urem i64 %i.e, %2
  %i.g = sub nuw i64 %2, %i.f                     ; 2 uses
  %i.h = icmp ult i64 %i.g, 8
  %i.i = select i1 %i.h, i64 %2, i64 0
  %i.j = getelementptr i8, ptr %i.c, i64 %i.g
  %i.k = getelementptr i8, ptr %i.j, i64 %i.i     ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8
  store ptr %i.c, ptr %i.l, align 8, !tbaa !8
  store ptr %i.k, ptr %0, align 8, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ 0, %bb.b ], [ -101, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define noundef i64 @PKFreeAligned(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not6 = icmp eq ptr %i.a, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10
  tail call void @free(ptr noundef %i.c) #20
  store ptr null, ptr %0, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret i64 0
}

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -255, 256) i32 @PKStrnicmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call ptr @__ctype_tolower_loc() #21
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 4 uses
  %i.c = load i8, ptr %0, align 1, !tbaa !14      ; 4 uses
  %i.d = sext i8 %i.c to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !15
  %i.g = load i8, ptr %1, align 1, !tbaa !14      ; 4 uses
  %i.h = sext i8 %i.g to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !15
  %i.k = icmp ne i32 %i.f, %i.j
  %.not20 = icmp eq i8 %i.c, 0
  %or.cond1821 = or i1 %.not20, %i.k
  br i1 %or.cond1821, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.l = icmp ne i8 %i.g, 0
  %i.m = icmp ne i64 %2, 0
  %or.cond32 = and i1 %i.l, %i.m
  br i1 %or.cond32, label %.lr.ph36, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph36
  %i.n = icmp ne i8 %i.w, 0
  %i.o = icmp ne i64 %i.r, 0
  %or.cond = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond, label %.lr.ph36, label %.critedge, !llvm.loop !16

.lr.ph36:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0162235 = phi i64 [ %i.r, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %.0152334 = phi ptr [ %i.q, %.lr.ph ], [ %1, %.lr.ph.preheader ]
  %.02433 = phi ptr [ %i.p, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.02433, i64 1 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0152334, i64 1 ; 2 uses
  %i.r = add i64 %.0162235, -1                    ; 4 uses
  %i.s = load i8, ptr %i.p, align 1, !tbaa !14    ; 4 uses
  %i.t = sext i8 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !15
  %i.w = load i8, ptr %i.q, align 1, !tbaa !14    ; 4 uses
  %i.x = sext i8 %i.w to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !15
  %i.aa = icmp ne i32 %i.v, %i.z
  %.not = icmp eq i8 %i.s, 0
  %or.cond18 = or i1 %.not, %i.aa
  br i1 %or.cond18, label %..critedge.loopexit_crit_edge, label %.lr.ph, !llvm.loop !16

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph36
  br label %.critedge, !llvm.loop !16

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge.loopexit_crit_edge, %bb.a
  %.016.lcssa = phi i64 [ %2, %bb.a ], [ %i.r, %..critedge.loopexit_crit_edge ], [ %2, %.lr.ph.preheader ], [ %i.r, %.lr.ph ]
  %.lcssa19 = phi i8 [ %i.c, %bb.a ], [ %i.s, %..critedge.loopexit_crit_edge ], [ %i.c, %.lr.ph.preheader ], [ %i.s, %.lr.ph ]
  %.lcssa = phi i8 [ %i.g, %bb.a ], [ %i.w, %..critedge.loopexit_crit_edge ], [ %i.g, %.lr.ph.preheader ], [ %i.w, %.lr.ph ]
  %.not17 = icmp eq i64 %.016.lcssa, 0
  %i.ab = sext i8 %.lcssa19 to i32
  %i.ac = sext i8 %.lcssa to i32
  %i.ad = sub nsw i32 %i.ab, %i.ac
  %i.ae = select i1 %.not17, i32 0, i32 %i.ad
  ret i32 %i.ae
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 -106, 1) i64 @PixelFormatLookup(ptr nofree noundef captures(none) %0, i8 noundef zeroext %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  switch i8 %1, label %.loopexit [
    i8 0, label %.split.us
    i8 1, label %.split.us27
  ]

.split.us:                                        ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !18
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.split.us
  %.024.us = phi i64 [ 0, %.split.us ], [ %i.l, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw [56 x i8], ptr @pixelInfo, i64 %.024.us ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.h = load i128, ptr %i.e, align 1
  %i.i = load i128, ptr %i.g, align 1
  %i.j = icmp ne i128 %i.h, %i.i
  %i.k = zext i1 %i.j to i32
  %.not.us = icmp eq i32 %i.k, 0
  br i1 %.not.us, label %.loopexit.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = add nuw nsw i64 %.024.us, 1              ; 2 uses
  %exitcond37.not = icmp eq i64 %i.l, 68
  br i1 %exitcond37.not, label %.loopexit, label %bb.b, !llvm.loop !22

.split.us27:                                      ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %.split.us27
  %.024.us28 = phi i64 [ 0, %.split.us27 ], [ %i.ak, %bb.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [56 x i8], ptr @pixelInfo, i64 %.024.us28 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !23
  %i.r = icmp eq i32 %i.n, %i.q
  br i1 %i.r, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %i.a, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.u = load i32, ptr %i.t, align 8, !tbaa !24
  %i.v = icmp eq i32 %i.s, %i.u
  br i1 %i.v, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %i.b, align 4, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %i.y = load i32, ptr %i.x, align 4, !tbaa !25
  %i.z = icmp eq i32 %i.w, %i.y
  br i1 %i.z, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %i.c, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !26
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = load i64, ptr %i.d, align 8, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !27
  %i.ah = xor i64 %i.ag, %i.ae
  %i.ai = and i64 %i.ah, 48
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.loopexit.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.ak = add nuw nsw i64 %.024.us28, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, 68
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !22

.loopexit.sink.split:                             ; preds = %bb.h, %bb.b
  %.lcssa41.sink = phi ptr [ %i.f, %bb.b ], [ %i.o, %bb.h ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %.lcssa41.sink, i64 56, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.c, %.loopexit.sink.split, %bb.a
  %.021 = phi i64 [ 0, %.loopexit.sink.split ], [ -106, %bb.c ], [ -106, %bb.a ], [ -106, %bb.i ]
  ret i64 %.021
}

end_hunk_0
