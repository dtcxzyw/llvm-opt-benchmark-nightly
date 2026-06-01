inline.NumInlined: 25
inline.NumDeleted: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TIFFDisplay = type { [3 x [3 x float]], float, float, float, i32, i32, i32, float, float, float, float, float, float }
%struct._TIFFRGBAImage = type { ptr, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, %union.anon.0, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.0 = type { ptr }

@.str = private unnamed_addr constant [54 x i8] c"Sorry, requested compression method is not configured\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Sorry, can not handle images with %u-bit samples\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Sorry, can not handle images with IEEE floating-point samples\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Missing needed %s tag\00", align 1
@photoTag = internal constant [26 x i8] c"PhotometricInterpretation\00", align 16
@.str.4 = private unnamed_addr constant [79 x i8] c"Sorry, can not handle contiguous data with %s=%u, and %s=%u and Bits/Sample=%u\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Samples/pixel\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Sorry, can not handle RGB image with %s=%d\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Color channels\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"Sorry, can not handle separated image with %s=%d\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"InkSet\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"Sorry, can not handle separated image with %s=%u\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Sorry, LogL data must have %s=%d\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Compression\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"Sorry, LogLuv data must have %s=%d or %d\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"Sorry, can not handle LogLuv images with %s=%u\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Planarconfiguration\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"Sorry, can not handle image with %s=%u, %s=%d\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"colorchannels\00", align 1
@.str.18 = private unnamed_addr constant [56 x i8] c"Sorry, can not handle image with %s=%u, %s=%d and %s=%u\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"Bits/sample\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"Sorry, can not handle image with %s=%u\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"Missing required \22Colormap\22 tag\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"Out of memory for colormap copy\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"Sorry, can not handle image\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"No \22get\22 routine setup\00", align 1
@.str.25 = private unnamed_addr constant [62 x i8] c"No \22put\22 routine setupl; probably can not handle image format\00", align 1
@.str.26 = private unnamed_addr constant [65 x i8] c"Error in TIFFRGBAImageGet: row offset %d exceeds image height %d\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"Can't use TIFFReadRGBAStrip() with tiled file.\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"rowsperstrip is zero\00", align 1
@.str.30 = private unnamed_addr constant [60 x i8] c"Row passed to TIFFReadRGBAStrip() must be first in a strip.\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"Invalid row passed to TIFFReadRGBAStrip().\00", align 1
@.str.32 = private unnamed_addr constant [48 x i8] c"Can't use TIFFReadRGBATile() with striped file.\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"tile_xsize or tile_ysize is zero\00", align 1
@.str.34 = private unnamed_addr constant [71 x i8] c"Row/col passed to TIFFReadRGBATile() must be topleft corner of a tile.\00", align 1
@.str.35 = private unnamed_addr constant [46 x i8] c"Invalid row/col passed to TIFFReadRGBATile().\00", align 1
@.str.36 = private unnamed_addr constant [63 x i8] c"Error in gtTileContig: column offset %d exceeds image width %d\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"No space for tile buffer\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"unsupported tile size (too wide)\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"tile width or height is zero\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"%s %ld\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"Invalid skew\00", align 1
@.str.42 = private unnamed_addr constant [64 x i8] c"Error in gtStripContig: column offset %d exceeds image width %d\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"Invalid vertical YCbCr subsampling\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"Width overflow\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"Integer overflow in gtStripContig\00", align 1
@BuildMapUaToAa.module = internal constant [15 x i8] c"BuildMapUaToAa\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@BuildMapBitdepth16To8.module = internal constant [22 x i8] c"BuildMapBitdepth16To8\00", align 16
@.str.47 = private unnamed_addr constant [24 x i8] c"Assuming 8-bit colormap\00", align 1
@.str.48 = private unnamed_addr constant [42 x i8] c"No space for photometric conversion table\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"No space for B&W mapping table\00", align 1
@.str.50 = private unnamed_addr constant [35 x i8] c"No space for Palette mapping table\00", align 1
@initYCbCrConversion.module = internal constant [20 x i8] c"initYCbCrConversion\00", align 16
@.str.51 = private unnamed_addr constant [41 x i8] c"No space for YCbCr->RGB conversion state\00", align 1
@.str.52 = private unnamed_addr constant [41 x i8] c"Invalid values for YCbCrCoefficients tag\00", align 1
@.str.53 = private unnamed_addr constant [43 x i8] c"Invalid values for ReferenceBlackWhite tag\00", align 1
@initCIELabConversion.module = internal constant [21 x i8] c"initCIELabConversion\00", align 16
@.str.54 = private unnamed_addr constant [34 x i8] c"Invalid value for WhitePoint tag.\00", align 1
@.str.55 = private unnamed_addr constant [47 x i8] c"No space for CIE L*a*b*->RGB conversion state.\00", align 1
@display_sRGB = internal constant %struct.TIFFDisplay { [3 x [3 x float]] [[3 x float] [float 3.241000e+00, float -1.537400e+00, float -4.986000e-01], [3 x float] [float -9.692000e-01, float 1.876000e+00, float 4.160000e-02], [3 x float] [float 5.560000e-02, float -2.040000e-01, float 1.057000e+00]], float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, i32 255, i32 255, i32 255, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 2.400000e+00, float 2.400000e+00, float 2.400000e+00 }, align 4
@.str.56 = private unnamed_addr constant [55 x i8] c"Failed to initialize CIE L*a*b*->RGB conversion state.\00", align 1
@.str.57 = private unnamed_addr constant [65 x i8] c"Error in gtTileSeparate: column offset %d exceeds image width %d\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"gtTileSeparate\00", align 1
@.str.59 = private unnamed_addr constant [66 x i8] c"Error in gtStripSeparate: column offset %d exceeds image width %d\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"gtStripSeparate\00", align 1
@.str.61 = private unnamed_addr constant [36 x i8] c"Integer overflow in gtStripSeparate\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @TIFFRGBAImageOK(ptr noundef %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.d = load i32, ptr %i.c, align 8, !tbaa !7
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(54) %1, ptr noundef nonnull align 1 dereferenceable(54) @.str, i64 54, i1 false)
  br label %.thread74

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.f = load i16, ptr %i.e, align 4, !tbaa !27
  %i.g = zext i16 %i.f to i32                     ; 3 uses
  %i.h = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.g)
  %i.i = icmp eq i32 %i.h, 1
  %i.j = and i32 %i.g, 31
  %switch = icmp ne i32 %i.j, 0
  %or.cond71 = and i1 %i.i, %switch
  br i1 %or.cond71, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 1024, ptr noundef nonnull @.str.1, i32 noundef %i.g) #11 ; 0 uses
  br label %.thread74

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 118
  %i.m = load i16, ptr %i.l, align 2, !tbaa !28
  %i.n = icmp eq i16 %i.m, 3
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(62) %1, ptr noundef nonnull align 1 dereferenceable(62) @.str.2, i64 62, i1 false)
  br label %.thread74

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 130 ; 5 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !29
  %i.q = zext i16 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.s = load i16, ptr %i.r, align 4, !tbaa !30
  %i.t = zext i16 %i.s to i32
  %i.u = sub nsw i32 %i.q, %i.t                   ; 7 uses
  %i.v = call i32 (ptr, i32, ...) @TIFFGetField(ptr noundef nonnull %0, i32 noundef 262, ptr noundef nonnull %i.a) #11
  %.not62 = icmp eq i32 %i.v, 0
  br i1 %.not62, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  switch i32 %i.u, label %bb.i [
    i32 1, label %.thread
    i32 3, label %.thread74
  ]

.thread:                                          ; preds = %bb.h
  store i16 1, ptr %i.a, align 2, !tbaa !31
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.w = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 1024, ptr noundef nonnull @.str.3, ptr noundef nonnull @photoTag) #11 ; 0 uses
  br label %.thread74

bb.j:                                             ; preds = %bb.g
  %.pr = load i16, ptr %i.a, align 2, !tbaa !31   ; 5 uses
  switch i16 %.pr, label %bb.ag [
    i16 0, label %bb.k
    i16 1, label %bb.k
    i16 3, label %bb.k
    i16 6, label %.thread74
    i16 2, label %bb.o
    i16 5, label %bb.q
    i16 -32692, label %bb.v
    i16 -32691, label %bb.x
    i16 8, label %bb.ad
  ]

bb.k:                                             ; preds = %.thread, %bb.j, %bb.j, %bb.j
  %i.x = phi i16 [ 1, %.thread ], [ %.pr, %bb.j ], [ %.pr, %bb.j ], [ %.pr, %bb.j ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 170
  %i.z = load i16, ptr %i.y, align 2, !tbaa !32
  %i.aa = icmp eq i16 %i.z, 1
  br i1 %i.aa, label %bb.l, label %.thread74

bb.l:                                             ; preds = %bb.k
  %i.ab = load i16, ptr %i.o, align 2, !tbaa !29  ; 2 uses
  %i.ac = zext i16 %i.ab to i32
  %.not70 = icmp eq i16 %i.ab, 1
  br i1 %.not70, label %.thread74, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = load i16, ptr %i.e, align 4, !tbaa !27  ; 2 uses
  %i.ae = icmp ult i16 %i.ad, 8
  br i1 %i.ae, label %bb.n, label %.thread74

bb.n:                                             ; preds = %bb.m
  %i.af = zext nneg i16 %i.ad to i32
  %i.ag = zext nneg i16 %i.x to i32
  %i.ah = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 1024, ptr noundef nonnull @.str.4, ptr noundef nonnull @photoTag, i32 noundef %i.ag, ptr noundef nonnull @.str.5, i32 noundef %i.ac, i32 noundef %i.af) #11 ; 0 uses
  br label %.thread74

bb.o:                                             ; preds = %bb.j
  %i.ai = icmp slt i32 %i.u, 3
  br i1 %i.ai, label %bb.p, label %.thread74

bb.p:                                             ; preds = %bb.o
  %i.aj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 1024, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %i.u) #11 ; 0 uses
  br label %.thread74

bb.q:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.ak = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef nonnull %0, i32 noundef 332, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.al = load i16, ptr %i.b, align 2, !tbaa !31  ; 2 uses
  %.not69 = icmp eq i16 %i.al, 1
  br i1 %.not69, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = zext i16 %i.al to i32
  %i.an = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 1024, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %i.am) #11 ; 0 uses
  br label %.critedge

bb.s:                                             ; preds = %bb.q
  %i.ao = load i16, ptr %i.o, align 2, !tbaa !29  ; 2 uses
  %i.ap = icmp ult i16 %i.ao, 4
  br i1 %i.ap, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.aq = zext nneg i16 %i.ao to i32
  %i.ar = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 1024, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5, i32 noundef %i.aq) #11 ; 0 uses
  br label %.critedge

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %.thread74

bb.v:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.at = load i16, ptr %i.as, align 8, !tbaa !33
  %.not68 = icmp eq i16 %i.at, -30860
  br i1 %.not68, label %.thread74, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.au = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 1024, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 34676) #11 ; 0 uses
  br label %.thread74

bb.x:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aw = load i16, ptr %i.av, align 8, !tbaa !33
  %i.ax = and i16 %i.aw, -2
  %switch72 = icmp eq i16 %i.ax, -30860
  br i1 %switch72, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ay = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 1024, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, i32 noundef 34676, i32 noundef 34677) #11 ; 0 uses
  br label %.thread74

bb.z:                                             ; preds = %bb.x
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 170
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !32 ; 2 uses
  %.not67 = icmp eq i16 %i.ba, 1
  br i1 %.not67, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bb = zext i16 %i.ba to i32
  %i.bc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 1024, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %i.bb) #11 ; 0 uses
  br label %.thread74

bb.ab:                                            ; preds = %bb.z
  %i.bd = load i16, ptr %i.o, align 2, !tbaa !29  ; 2 uses
  %i.be = icmp ne i16 %i.bd, 3
  %i.bf = icmp ne i32 %i.u, 3
  %or.cond = select i1 %i.be, i1 true, i1 %i.bf
  br i1 %or.cond, label %bb.ac, label %.thread74

bb.ac:                                            ; preds = %bb.ab
  %i.bg = zext i16 %i.bd to i32
  %i.bh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 1024, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.5, i32 noundef %i.bg, ptr noundef nonnull @.str.17, i32 noundef %i.u) #11 ; 0 uses
  br label %.thread74

bb.ad:                                            ; preds = %bb.j
  %i.bi = load i16, ptr %i.o, align 2, !tbaa !29  ; 2 uses
  %i.bj = icmp ne i16 %i.bi, 3
  %i.bk = icmp ne i32 %i.u, 3
  %or.cond3 = select i1 %i.bj, i1 true, i1 %i.bk
  %.pre = load i16, ptr %i.e, align 4, !tbaa !27  ; 2 uses
  br i1 %or.cond3, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  switch i16 %.pre, label %bb.af [
    i16 8, label %.thread74
    i16 16, label %.thread74
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.bl = zext i16 %i.bi to i32
  %i.bm = zext i16 %.pre to i32
end_hunk_0
begin_hunk_1_@TIFFRGBAImageBegin:bb.a

bb.be:                                            ; preds = %bb.aw
  %i.eh = load i32, ptr %i.ah, align 8, !tbaa !51
  %.pre.i = load i16, ptr %i.ai, align 2, !tbaa !53 ; 3 uses
  switch i32 %i.eh, label %.thread81.i [
    i32 1, label %bb.bf
    i32 2, label %bb.bi
  ]

bb.bf:                                            ; preds = %bb.be
  %i.ei = icmp ugt i16 %.pre.i, 3
  br i1 %i.ei, label %bb.bg, label %.thread81.i

bb.bg:                                            ; preds = %bb.bf
  %i.ej = call fastcc i32 @BuildMapBitdepth16To8(ptr noundef nonnull %0)
  %.not78.i = icmp eq i32 %i.ej, 0
  br i1 %.not78.i, label %bb.da, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store ptr @putRGBAAcontig16bittile, ptr %i.dz, align 8, !tbaa !57
  br label %bb.da

bb.bi:                                            ; preds = %bb.be
  %i.ek = icmp ugt i16 %.pre.i, 3
  br i1 %i.ek, label %bb.bj, label %.thread81.i

bb.bj:                                            ; preds = %bb.bi
  %i.el = call fastcc i32 @BuildMapBitdepth16To8(ptr noundef nonnull %0)
  %.not76.i = icmp eq i32 %i.el, 0
  br i1 %.not76.i, label %bb.da, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.em = call fastcc i32 @BuildMapUaToAa(ptr noundef nonnull %0)
  %.not77.i = icmp eq i32 %i.em, 0
  br i1 %.not77.i, label %bb.da, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  store ptr @putRGBUAcontig16bittile, ptr %i.dz, align 8, !tbaa !57
  br label %bb.da

.thread81.i:                                      ; preds = %bb.bi, %bb.bf, %bb.be
  %i.en = icmp ugt i16 %.pre.i, 2
  br i1 %i.en, label %bb.bm, label %bb.da

bb.bm:                                            ; preds = %.thread81.i
  %i.eo = call fastcc i32 @BuildMapBitdepth16To8(ptr noundef nonnull %0)
  %.not75.i = icmp eq i32 %i.eo, 0
  br i1 %.not75.i, label %bb.da, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store ptr @putRGBcontig16bittile, ptr %i.dz, align 8, !tbaa !57
  br label %bb.da

bb.bo:                                            ; preds = %bb.av
  %i.ep = load i16, ptr %i.ai, align 2, !tbaa !53
  %i.eq = icmp ugt i16 %i.ep, 3
  br i1 %i.eq, label %bb.bp, label %bb.da

bb.bp:                                            ; preds = %bb.bo
  %i.er = call fastcc i32 @buildMap(ptr noundef nonnull %0)
  %.not73.i = icmp eq i32 %i.er, 0
  br i1 %.not73.i, label %bb.da, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.es = load i16, ptr %i.z, align 4, !tbaa !50
  %i.et = icmp eq i16 %i.es, 8
  br i1 %i.et, label %bb.br, label %bb.da

bb.br:                                            ; preds = %bb.bq
  %i.eu = load ptr, ptr %i.t, align 8, !tbaa !34
  %.not74.i = icmp eq ptr %i.eu, null
  br i1 %.not74.i, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store ptr @putRGBcontig8bitCMYKtile, ptr %i.dz, align 8, !tbaa !57
  br label %bb.da

bb.bt:                                            ; preds = %bb.br
  store ptr @putRGBcontig8bitCMYKMaptile, ptr %i.dz, align 8, !tbaa !57
  br label %bb.da

bb.bu:                                            ; preds = %bb.av
  %i.ev = call fastcc i32 @buildMap(ptr noundef nonnull %0)
  %.not72.i = icmp eq i32 %i.ev, 0
  br i1 %.not72.i, label %bb.da, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ew = load i16, ptr %i.z, align 4, !tbaa !50
  %i.ex = zext i16 %i.ew to i32                   ; 2 uses
  %i.ey = call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.ex)
  %i.ez = icmp eq i32 %i.ey, 1
  br i1 %i.ez, label %.split.i, label %bb.da

.split.i:                                         ; preds = %bb.bv
  %i.fa = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ex, i1 true)
  switch i32 %i.fa, label %bb.da [
    i32 3, label %bb.bw
    i32 2, label %bb.bx
    i32 1, label %bb.by
    i32 0, label %bb.bz
  ]

bb.bw:                                            ; preds = %.split.i
  store ptr @put8bitcmaptile, ptr %i.dz, align 8, !tbaa !57
  br label %bb.da

bb.bx:                                            ; preds = %.split.i
  store ptr @put4bitcmaptile, ptr %i.dz, align 8, !tbaa !57
  br label %bb.da

bb.by:                                            ; preds = %.split.i
  store ptr @put2bitcmaptile, ptr %i.dz, align 8, !tbaa !57
  br label %bb.da

bb.bz:                                            ; preds = %.split.i
  store ptr @put1bitcmaptile, ptr %i.dz, align 8, !tbaa !57
  br label %bb.da

bb.ca:                                            ; preds = %bb.av, %bb.av
  %i.fb = call fastcc i32 @buildMap(ptr noundef nonnull %0)
  %.not70.i = icmp eq i32 %i.fb, 0
  br i1 %.not70.i, label %bb.da, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fc = load i16, ptr %i.z, align 4, !tbaa !50
  %i.fd = zext i16 %i.fc to i32                   ; 2 uses
  %i.fe = call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.fd)
  %i.ff = icmp eq i32 %i.fe, 1
  br i1 %i.ff, label %.split1.i, label %bb.da

.split1.i:                                        ; preds = %bb.cb
  %i.fg = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.fd, i1 true)
  switch i32 %i.fg, label %bb.da [
    i32 4, label %bb.cc
    i32 3, label %bb.cd
    i32 2, label %bb.ch
    i32 1, label %bb.ci
    i32 0, label %bb.cj
  ]

bb.cc:                                            ; preds = %.split1.i
  store ptr @put16bitbwtile, ptr %i.dz, align 8, !tbaa !57
  br label %bb.da

bb.cd:                                            ; preds = %.split1.i
  %i.fh = load i32, ptr %i.ah, align 8, !tbaa !51
  %.not71.i = icmp eq i32 %i.fh, 0
  br i1 %.not71.i, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.fi = load i16, ptr %i.ai, align 2, !tbaa !53
  %i.fj = icmp eq i16 %i.fi, 2
  br i1 %i.fj, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store ptr @putagreytile, ptr %i.dz, align 8, !tbaa !57
  br label %bb.da

bb.cg:                                            ; preds = %bb.ce, %bb.cd
  store ptr @putgreytile, ptr %i.dz, align 8, !tbaa !57
  br label %bb.da

bb.ch:                                            ; preds = %.split1.i
  store ptr @put4bitbwtile, ptr %i.dz, align 8, !tbaa !57
  br label %bb.da

bb.ci:                                            ; preds = %.split1.i
  store ptr @put2bitbwtile, ptr %i.dz, align 8, !tbaa !57
  br label %bb.da

bb.cj:                                            ; preds = %.split1.i
  store ptr @put1bitbwtile, ptr %i.dz, align 8, !tbaa !57
  br label %bb.da

bb.ck:                                            ; preds = %bb.av
  %i.fk = load i16, ptr %i.z, align 4, !tbaa !50
  %i.fl = icmp eq i16 %i.fk, 8
  br i1 %i.fl, label %bb.cl, label %bb.da

bb.cl:                                            ; preds = %bb.ck
  %i.fm = load i16, ptr %i.ai, align 2, !tbaa !53
  %i.fn = icmp eq i16 %i.fm, 3
  br i1 %i.fn, label %bb.cm, label %bb.da

bb.cm:                                            ; preds = %bb.cl
  %i.fo = call fastcc i32 @initYCbCrConversion(ptr noundef nonnull %0)
  %.not69.i = icmp eq i32 %i.fo, 0
  br i1 %.not69.i, label %bb.da, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  %i.fp = load ptr, ptr %0, align 8, !tbaa !38
  %i.fq = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %i.fp, i32 noundef 530, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #11 ; 0 uses
  %i.fr = load i16, ptr %i.e, align 2, !tbaa !31
  %i.fs = zext i16 %i.fr to i32
  %i.ft = shl nuw nsw i32 %i.fs, 4
  %i.fu = load i16, ptr %i.f, align 2, !tbaa !31
  %i.fv = zext i16 %i.fu to i32
  %i.fw = or i32 %i.ft, %i.fv
  switch i32 %i.fw, label %bb.co [
    i32 68, label %.sink.split.i
    i32 66, label %4
    i32 65, label %5
    i32 34, label %6
    i32 33, label %7
    i32 18, label %8
    i32 17, label %9
  ]

4:                                                ; preds = %bb.cn
  br label %.sink.split.i

5:                                                ; preds = %bb.cn
  br label %.sink.split.i

6:                                                ; preds = %bb.cn
  br label %.sink.split.i

7:                                                ; preds = %bb.cn
  br label %.sink.split.i

8:                                                ; preds = %bb.cn
  br label %.sink.split.i

9:                                                ; preds = %bb.cn
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %9, %8, %7, %6, %5, %4, %bb.cn
  %putcontig8bitYCbCr11tile.sink.i = phi ptr [ @putcontig8bitYCbCr11tile, %9 ], [ @putcontig8bitYCbCr12tile, %8 ], [ @putcontig8bitYCbCr21tile, %7 ], [ @putcontig8bitYCbCr22tile, %6 ], [ @putcontig8bitYCbCr41tile, %5 ], [ @putcontig8bitYCbCr42tile, %4 ], [ @putcontig8bitYCbCr44tile, %bb.cn ]
  store ptr %putcontig8bitYCbCr11tile.sink.i, ptr %i.dz, align 8, !tbaa !57
  br label %bb.co

bb.co:                                            ; preds = %.sink.split.i, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  br label %bb.da

bb.cp:                                            ; preds = %bb.av
  %i.fx = load i16, ptr %i.ai, align 2, !tbaa !53
  %i.fy = icmp eq i16 %i.fx, 3
  br i1 %i.fy, label %bb.cq, label %bb.da

bb.cq:                                            ; preds = %bb.cp
  %i.fz = call fastcc i32 @buildMap(ptr noundef nonnull %0)
  %.not68.i = icmp eq i32 %i.fz, 0
  br i1 %.not68.i, label %bb.da, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ga = load i16, ptr %i.z, align 4, !tbaa !50
  switch i16 %i.ga, label %bb.da [
    i16 8, label %bb.cs
    i16 16, label %bb.cs
  ]

bb.cs:                                            ; preds = %bb.cr, %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.gb = load ptr, ptr %0, align 8, !tbaa !38
  %i.gc = call i32 (ptr, i32, ...) @TIFFGetFieldDefaulted(ptr noundef %i.gb, i32 noundef 318, ptr noundef nonnull %i.c) #11 ; 0 uses
  %i.gd = load ptr, ptr %i.c, align 8, !tbaa !58  ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !59 ; 2 uses
  %i.gg = fcmp oeq float %i.gf, 0.000000e+00
  br i1 %i.gg, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.gh = load ptr, ptr %0, align 8, !tbaa !38
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %i.gh, ptr noundef nonnull @initCIELabConversion.module, ptr noundef nonnull @.str.54) #11
  br label %initCIELabConversion.exit.i

bb.cu:                                            ; preds = %bb.cs
  %i.gi = load ptr, ptr %i.u, align 8, !tbaa !42  ; 2 uses
  %.not.i.i = icmp eq ptr %i.gi, null
  br i1 %.not.i.i, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  %i.gj = load ptr, ptr %0, align 8, !tbaa !38
  %i.gk = call ptr @_TIFFmallocExt(ptr noundef %i.gj, i64 noundef 18124) #11 ; 3 uses
  store ptr %i.gk, ptr %i.u, align 8, !tbaa !42
  %.not15.i.i = icmp eq ptr %i.gk, null
  br i1 %.not15.i.i, label %bb.cw, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.cv
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !58 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 4
  %.pre18.i.i = load float, ptr %.phi.trans.insert.i.i, align 4, !tbaa !59
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.gl = load ptr, ptr %0, align 8, !tbaa !38
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %i.gl, ptr noundef nonnull @initCIELabConversion.module, ptr noundef nonnull @.str.55) #11
  br label %initCIELabConversion.exit.i

bb.cx:                                            ; preds = %._crit_edge.i.i, %bb.cu
  %i.gm = phi ptr [ %i.gk, %._crit_edge.i.i ], [ %i.gi, %bb.cu ]
  %i.gn = phi float [ %.pre18.i.i, %._crit_edge.i.i ], [ %i.gf, %bb.cu ] ; 3 uses
  %i.go = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.gd, %bb.cu ]
  %i.gp = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store float 1.000000e+02, ptr %i.gp, align 4, !tbaa !59
  %i.gq = load float, ptr %i.go, align 4, !tbaa !59 ; 2 uses
  %i.gr = fdiv float %i.gq, %i.gn
  %i.gs = fmul float %i.gr, 1.000000e+02
  store float %i.gs, ptr %i.d, align 4, !tbaa !59
  %i.gt = fsub float 1.000000e+00, %i.gq
  %i.gu = fsub float %i.gt, %i.gn
  %i.gv = fdiv float %i.gu, %i.gn
  %i.gw = fmul float %i.gv, 1.000000e+02
  %i.gx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store float %i.gw, ptr %i.gx, align 4, !tbaa !59
  %i.gy = call i32 @TIFFCIELabToRGBInit(ptr noundef nonnull %i.gm, ptr noundef nonnull @display_sRGB, ptr noundef nonnull %i.d) #11
  %i.gz = icmp slt i32 %i.gy, 0
  br i1 %i.gz, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.ha = load ptr, ptr %0, align 8, !tbaa !38
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %i.ha, ptr noundef nonnull @initCIELabConversion.module, ptr noundef nonnull @.str.56) #11
  %i.hb = load ptr, ptr %0, align 8, !tbaa !38
  %i.hc = load ptr, ptr %i.u, align 8, !tbaa !42
  call void @_TIFFfreeExt(ptr noundef %i.hb, ptr noundef %i.hc) #11
  br label %initCIELabConversion.exit.i

bb.cz:                                            ; preds = %bb.cx
  %i.hd = load i16, ptr %i.z, align 4, !tbaa !50  ; 2 uses
  %switch.selectcmp.i.i = icmp eq i16 %i.hd, 16
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, ptr @putcontig8bitCIELab16, ptr null
  %switch.selectcmp16.i.i = icmp eq i16 %i.hd, 8
  %switch.select17.i.i = select i1 %switch.selectcmp16.i.i, ptr @putcontig8bitCIELab8, ptr %switch.select.i.i
  br label %initCIELabConversion.exit.i

initCIELabConversion.exit.i:                      ; preds = %bb.cz, %bb.cy, %bb.cw, %bb.ct
  %.0.i.i = phi ptr [ null, %bb.ct ], [ null, %bb.cy ], [ null, %bb.cw ], [ %switch.select17.i.i, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  store ptr %.0.i.i, ptr %i.dz, align 8, !tbaa !57
  br label %bb.da

bb.da:                                            ; preds = %initCIELabConversion.exit.i, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.cc, %.split1.i, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %.split.i, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %.thread81.i, %bb.bl, %bb.bk, %bb.bj, %bb.bh, %bb.bg, %bb.bd, %.thread.i, %bb.bc, %bb.bb, %bb.az, %bb.aw
  %.pr.i = load ptr, ptr %i.dy, align 8, !tbaa !56
  %.not80.i = icmp eq ptr %.pr.i, null
  br i1 %.not80.i, label %PickContigCase.exit.thread, label %PickContigCase.exit

PickContigCase.exit:                              ; preds = %bb.da
  %.pre86.i = load ptr, ptr %i.dz, align 8, !tbaa !57
  %.not155 = icmp eq ptr %.pre86.i, null
  br i1 %.not155, label %PickContigCase.exit.thread, label %bb.dw

PickContigCase.exit.thread:                       ; preds = %bb.av, %bb.da, %PickContigCase.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %3, ptr noundef nonnull align 1 dereferenceable(28) @.str.23, i64 28, i1 false)
  br label %bb.dv

bb.db:                                            ; preds = %bb.au
  %i.he = load ptr, ptr %0, align 8, !tbaa !38
  %i.hf = call i32 @TIFFIsTiled(ptr noundef %i.he) #11
  %.not.i142 = icmp eq i32 %i.hf, 0
  %i.hg = select i1 %.not.i142, ptr @gtStripSeparate, ptr @gtTileSeparate
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.hg, ptr %i.hh, align 8, !tbaa !56
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 10 uses
  store ptr null, ptr %i.hi, align 8, !tbaa !57
  %i.hj = load i16, ptr %i.ar, align 4, !tbaa !54
  switch i16 %i.hj, label %PickSeparateCase.exit.thread [
    i16 0, label %bb.dc
    i16 1, label %bb.dc
    i16 2, label %bb.dc
    i16 5, label %bb.dl
    i16 6, label %bb.do
  ]

bb.dc:                                            ; preds = %bb.db, %bb.db, %bb.db
  %i.hk = load i16, ptr %i.z, align 4, !tbaa !50
  switch i16 %i.hk, label %bb.du [
    i16 8, label %bb.dd
    i16 16, label %bb.dh
  ]

bb.dd:                                            ; preds = %bb.dc
  %i.hl = load i32, ptr %i.ah, align 8, !tbaa !51
  switch i32 %i.hl, label %bb.dg [
    i32 1, label %bb.de
    i32 2, label %bb.df
  ]

bb.de:                                            ; preds = %bb.dd
  store ptr @putRGBAAseparate8bittile, ptr %i.hi, align 8, !tbaa !57
  br label %bb.du

bb.df:                                            ; preds = %bb.dd
  %i.hm = load ptr, ptr %0, align 8, !tbaa !38
  %i.hn = call ptr @_TIFFmallocExt(ptr noundef %i.hm, i64 noundef 65536) #11 ; 3 uses
  store ptr %i.hn, ptr %i.v, align 8, !tbaa !43
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %BuildMapUaToAa.exit.thread.i, label %vector.ph198

BuildMapUaToAa.exit.thread.i:                     ; preds = %bb.df
  %i.hp = load ptr, ptr %0, align 8, !tbaa !38
  call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef %i.hp, ptr noundef nonnull @BuildMapUaToAa.module, ptr noundef nonnull @.str.46) #11
  br label %bb.du

vector.ph198:                                     ; preds = %bb.df, %middle.block207
  %indvars.iv25.i.i = phi i32 [ %indvars.iv.next26.i.i, %middle.block207 ], [ 0, %bb.df ] ; 2 uses
  %.01321.i.i = phi ptr [ %i.hq, %middle.block207 ], [ %i.hn, %bb.df ] ; 2 uses
  %i.hq = getelementptr i8, ptr %.01321.i.i, i64 256
  %broadcast.splatinsert199 = insertelement <16 x i32> poison, i32 %indvars.iv25.i.i, i64 0
  %broadcast.splat200 = shufflevector <16 x i32> %broadcast.splatinsert199, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph198
  %index202 = phi i64 [ 0, %vector.ph198 ], [ %index.next205, %vector.body201 ] ; 2 uses
  %vec.ind203 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph198 ], [ %vec.ind.next206, %vector.body201 ] ; 2 uses
  %next.gep204 = getelementptr i8, ptr %.01321.i.i, i64 %index202
  %i.hr = mul nuw nsw <16 x i32> %vec.ind203, %broadcast.splat200
  %i.hs = add nuw nsw <16 x i32> %i.hr, splat (i32 127)
  %i.ht = udiv <16 x i32> %i.hs, splat (i32 255)
  %i.hu = trunc <16 x i32> %i.ht to <16 x i8>
  store <16 x i8> %i.hu, ptr %next.gep204, align 1, !tbaa !57
  %index.next205 = add nuw i64 %index202, 16      ; 2 uses
  %vec.ind.next206 = add nuw nsw <16 x i32> %vec.ind203, splat (i32 16)
  %i.hv = icmp eq i64 %index.next205, 256
  br i1 %i.hv, label %middle.block207, label %vector.body201, !llvm.loop !60

middle.block207:                                  ; preds = %vector.body201
  %indvars.iv.next26.i.i = add nuw nsw i32 %indvars.iv25.i.i, 1 ; 2 uses
  %exitcond28.not.i.i = icmp eq i32 %indvars.iv.next26.i.i, 256
  br i1 %exitcond28.not.i.i, label %BuildMapUaToAa.exit.i, label %vector.ph198

BuildMapUaToAa.exit.i:                            ; preds = %middle.block207
  store ptr @putRGBUAseparate8bittile, ptr %i.hi, align 8, !tbaa !57
  br label %bb.du

bb.dg:                                            ; preds = %bb.dd
  store ptr @putRGBseparate8bittile, ptr %i.hi, align 8, !tbaa !57
  br label %bb.du

end_hunk_1
