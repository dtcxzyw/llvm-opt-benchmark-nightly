Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/main?download=true
inline.NumInlined: 364
inline.NumDeleted: 157
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0
@.str.178 = private unnamed_addr constant [33 x i8] c"Failed to write shape SVG file.\0A\00", align 1
@.str.179 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.180 = private unnamed_addr constant [16 x i8] c"SDF error ~ %e\0A\00", align 1
@.str.182 = private unnamed_addr constant [112 x i8] c"Warning: -testrendermulti specified with an extension other than .png but will be saved in that format anyway.\0A\00", align 1
@.str.183 = private unnamed_addr constant [35 x i8] c"Failed to write test render file.\0A\00", align 1
@.str.184 = private unnamed_addr constant [107 x i8] c"Warning: -testrender specified with an extension other than .png but will be saved in that format anyway.\0A\00", align 1
@_ZN7msdfgen21ErrorCorrectionConfig24defaultMinDeviationRatioE = external local_unnamed_addr constant double, align 8
@_ZN7msdfgen21ErrorCorrectionConfig22defaultMinImproveRatioE = external local_unnamed_addr constant double, align 8
@.str.185 = private unnamed_addr constant [816 x i8] c"\0AERROR CORRECTION MODES\0A  auto-fast\0A\09Detects inversion artifacts and distance errors that do not affect edges by range testing.\0A  auto-full\0A\09Detects inversion artifacts and distance errors that do not affect edges by exact distance evaluation.\0A  auto-mixed (default)\0A\09Detects inversions by distance evaluation and distance errors that do not affect edges by range testing.\0A  disabled\0A\09Disables error correction.\0A  distance-fast\0A\09Detects distance errors by range testing. Does not care if edges and corners are affected.\0A  distance-full\0A\09Detects distance errors by exact distance evaluation. Does not care if edges and corners are affected, slow.\0A  edge-fast\0A\09Detects inversion artifacts only by range testing.\0A  edge-full\0A\09Detects inversion artifacts only by exact distance evaluation.\0A  help\0A\09Displays this help.\0A\0A\00", align 1
@.str.186 = private unnamed_addr constant [37 x i8] c"Font variation axis \22%s\22 not found.\0A\00", align 1
@.str.187 = private unnamed_addr constant [65 x i8] c"The selected font doesn't appear to contain any variation axes.\0A\00", align 1
@.str.188 = private unnamed_addr constant [32 x i8] c"Available font variation axes:\0A\00", align 1
@.str.189 = private unnamed_addr constant [52 x i8] c"\09[%c%c%c%c] \22%s\22 (%.17g to %.17g), default = %.17g\0A\00", align 1
@.str.193 = private unnamed_addr constant [6 x i8] c".rgba\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c".fl32\00", align 1
@.str.195 = private unnamed_addr constant [5 x i8] c".txt\00", align 1
@.str.196 = private unnamed_addr constant [5 x i8] c".bin\00", align 1
@.str.197 = private unnamed_addr constant [47 x i8] c"Could not deduce format from output file name.\00", align 1
@.str.198 = private unnamed_addr constant [34 x i8] c"Failed to write output PNG image.\00", align 1
@.str.199 = private unnamed_addr constant [34 x i8] c"Failed to write output BMP image.\00", align 1
@.str.200 = private unnamed_addr constant [35 x i8] c"Failed to write output TIFF image.\00", align 1
@.str.201 = private unnamed_addr constant [35 x i8] c"Failed to write output RGBA image.\00", align 1
@.str.202 = private unnamed_addr constant [35 x i8] c"Failed to write output FL32 image.\00", align 1
@.str.203 = private unnamed_addr constant [34 x i8] c"Failed to write output text file.\00", align 1
@.str.204 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.205 = private unnamed_addr constant [36 x i8] c"Failed to write output binary file.\00", align 1
@.str.206 = private unnamed_addr constant [40 x i8] c"Unsupported format for standard output.\00", align 1
@.str.207 = private unnamed_addr constant [6 x i8] c" %02X\00", align 1
@.str.208 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.210 = private unnamed_addr constant [6 x i8] c" %.9g\00", align 1
@.str.211 = private unnamed_addr constant [5 x i8] c"%.9g\00", align 1
@switch.table.main = private unnamed_addr constant [4 x ptr] [ptr @.str.89, ptr @.str.101, ptr @.str.96, ptr @.str.106], align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef range(i32 0, 2) i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %3 = alloca %"struct.msdfgen::FontVariationAxis::Tag", align 4 ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca ptr, align 8                      ; 6 uses
  %i.j = alloca ptr, align 8                      ; 6 uses
  %i.k = alloca ptr, align 8                      ; 6 uses
  %i.l = alloca ptr, align 8                      ; 6 uses
  %i.m = alloca ptr, align 8                      ; 6 uses
  %i.n = alloca ptr, align 8                      ; 6 uses
  %i.o = alloca ptr, align 8                      ; 6 uses
  %i.p = alloca ptr, align 8                      ; 6 uses
  %i.q = alloca ptr, align 8                      ; 6 uses
  %i.r = alloca ptr, align 8                      ; 6 uses
  %i.s = alloca ptr, align 8                      ; 6 uses
  %i.t = alloca ptr, align 8                      ; 6 uses
  %i.u = alloca ptr, align 8                      ; 6 uses
  %i.v = alloca ptr, align 8                      ; 6 uses
  %i.w = alloca ptr, align 8                      ; 6 uses
  %i.x = alloca ptr, align 8                      ; 7 uses
  %i.y = alloca ptr, align 8                      ; 7 uses
  %4 = alloca %"struct.msdfgen::MSDFGeneratorConfig", align 8 ; 16 uses
  %5 = alloca %"class.msdfgen::GlyphIndex", align 4 ; 7 uses
  %6 = alloca %"struct.msdfgen::Vector2", align 16 ; 17 uses
  %7 = alloca %"struct.msdfgen::Vector2", align 16 ; 16 uses
  %i.z = alloca i8, align 1                       ; 9 uses
  %8 = alloca %"class.msdfgen::GlyphIndex", align 4 ; 4 uses
  %i.aa = alloca double, align 8                  ; 5 uses
  %9 = alloca %"struct.msdfgen::Shape::Bounds", align 8 ; 11 uses
  %i.ab = alloca double, align 8                  ; 8 uses
  %10 = alloca %"class.msdfgen::Shape", align 8   ; 45 uses
  %11 = alloca %"struct.msdfgen::Shape::Bounds", align 16 ; 14 uses
  %12 = alloca %"struct.msdfgen::Shape::Bounds", align 8 ; 5 uses
  %13 = alloca %"struct.msdfgen::Vector2", align 16 ; 5 uses
  %14 = alloca %"class.msdfgen::SDFTransformation", align 8 ; 17 uses
  %15 = alloca %"class.msdfgen::Projection", align 8 ; 5 uses
  %16 = alloca %"class.msdfgen::DistanceMapping", align 8 ; 5 uses
  %17 = alloca %"struct.msdfgen::MSDFGeneratorConfig", align 8 ; 9 uses
  %18 = alloca %"struct.msdfgen::BitmapSection", align 8 ; 6 uses
  %19 = alloca %"struct.msdfgen::BitmapSection", align 8 ; 9 uses
  %20 = alloca %"struct.msdfgen::BitmapSection", align 8 ; 6 uses
  %21 = alloca %"struct.msdfgen::BitmapSection", align 8 ; 9 uses
  %22 = alloca %"struct.msdfgen::BitmapSection.9", align 8 ; 6 uses
  %23 = alloca %"struct.msdfgen::BitmapSection.9", align 8 ; 9 uses
  %24 = alloca %"struct.msdfgen::BitmapSection.10", align 8 ; 6 uses
  %25 = alloca %"struct.msdfgen::BitmapSection.10", align 8 ; 9 uses
  %26 = alloca %"struct.msdfgen::BitmapSection", align 8 ; 6 uses
  %27 = alloca %"struct.msdfgen::BitmapSection.9", align 8 ; 6 uses
  %28 = alloca %"struct.msdfgen::BitmapSection.9", align 8 ; 9 uses
  %29 = alloca %"struct.msdfgen::BitmapSection.10", align 8 ; 6 uses
  %30 = alloca %"struct.msdfgen::BitmapSection.10", align 8 ; 9 uses
  %31 = alloca %"struct.msdfgen::BitmapConstSection", align 8 ; 22 uses
  %32 = alloca %"struct.msdfgen::BitmapSection", align 8 ; 9 uses
  %33 = alloca %"struct.msdfgen::BitmapConstSection", align 8 ; 9 uses
  %34 = alloca %"struct.msdfgen::BitmapSection.9", align 8 ; 9 uses
  %35 = alloca %"struct.msdfgen::BitmapConstSection", align 8 ; 9 uses
  %36 = alloca %"struct.msdfgen::BitmapConstSection.11", align 8 ; 6 uses
  %37 = alloca %"struct.msdfgen::BitmapSection", align 8 ; 9 uses
  %38 = alloca %"struct.msdfgen::BitmapConstSection", align 8 ; 9 uses
  %39 = alloca %"struct.msdfgen::BitmapConstSection", align 8 ; 6 uses
  %40 = alloca %"struct.msdfgen::BitmapConstSection.11", align 8 ; 22 uses
  %41 = alloca %"struct.msdfgen::BitmapSection.9", align 8 ; 9 uses
  %42 = alloca %"struct.msdfgen::BitmapConstSection.11", align 8 ; 9 uses
  %43 = alloca %"struct.msdfgen::BitmapSection.9", align 8 ; 9 uses
  %44 = alloca %"struct.msdfgen::BitmapConstSection.11", align 8 ; 9 uses
  %45 = alloca %"struct.msdfgen::BitmapConstSection.11", align 8 ; 6 uses
  %46 = alloca %"struct.msdfgen::BitmapSection", align 8 ; 9 uses
  %47 = alloca %"struct.msdfgen::BitmapConstSection.11", align 8 ; 9 uses
  %48 = alloca %"struct.msdfgen::BitmapConstSection", align 8 ; 6 uses
  %49 = alloca %"struct.msdfgen::BitmapConstSection.12", align 8 ; 22 uses
  %50 = alloca %"struct.msdfgen::BitmapSection.10", align 8 ; 9 uses
  %51 = alloca %"struct.msdfgen::BitmapConstSection.12", align 8 ; 9 uses
  %52 = alloca %"struct.msdfgen::BitmapSection.10", align 8 ; 9 uses
  %53 = alloca %"struct.msdfgen::BitmapConstSection.12", align 8 ; 9 uses
  %54 = alloca %"struct.msdfgen::BitmapConstSection.12", align 8 ; 6 uses
  %55 = alloca %"struct.msdfgen::BitmapSection", align 8 ; 9 uses
  %56 = alloca %"struct.msdfgen::BitmapConstSection.12", align 8 ; 9 uses
  %57 = alloca %"struct.msdfgen::BitmapConstSection", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 13 uses
  %i.ad = load double, ptr @_ZN7msdfgen21ErrorCorrectionConfig24defaultMinDeviationRatioE, align 8, !tbaa !12
  %i.ae = load double, ptr @_ZN7msdfgen21ErrorCorrectionConfig22defaultMinImproveRatioE, align 8, !tbaa !12
  store i32 2, ptr %i.ac, align 8, !tbaa !127
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 10 uses
  store i32 1, ptr %i.af, align 4, !tbaa !128
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store double %i.ad, ptr %i.ag, align 8, !tbaa !129
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store double %i.ae, ptr %i.ah, align 8, !tbaa !130
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr null, ptr %i.ai, align 8, !tbaa !131
  store i8 1, ptr %4, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @_ZN7msdfgen10GlyphIndexC1Ej(ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store <2 x double> splat (double 1.000000e+00), ptr %7, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #21
  store i8 0, ptr %i.z, align 1, !tbaa !135
  %i.al = icmp sgt i32 %0, 1
  br i1 %i.al, label %.lr.ph, label %.thread4905

.thread4905:                                      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #21
  store double 0.000000e+00, ptr %i.ab, align 8, !tbaa !12
  br label %bb.it

.lr.ph:                                           ; preds = %bb.a, %.backedge
  %.07644526 = phi i32 [ %.3767.jt2, %.backedge ], [ 0, %bb.a ] ; 76 uses
  %.07684525 = phi i32 [ %.1769.jt2, %.backedge ], [ 2, %bb.a ] ; 85 uses
  %.07704524 = phi i32 [ %.1771.jt2, %.backedge ], [ 0, %bb.a ] ; 87 uses
  %.07724523 = phi i8 [ %.1773.jt2, %.backedge ], [ 0, %bb.a ] ; 89 uses
  %.07744522 = phi i1 [ %.1775.jt2, %.backedge ], [ true, %bb.a ] ; 82 uses
  %.07764521 = phi i32 [ %.2778.jt2, %.backedge ], [ 0, %bb.a ] ; 85 uses
  %.07794520 = phi ptr [ %.1780.jt2, %.backedge ], [ null, %bb.a ] ; 76 uses
  %.07814519 = phi ptr [ %.2783.jt2, %.backedge ], [ @.str, %bb.a ] ; 88 uses
  %.07844518 = phi ptr [ %.1785.jt2, %.backedge ], [ null, %bb.a ] ; 89 uses
  %.07864517 = phi ptr [ %.1787.jt2, %.backedge ], [ null, %bb.a ] ; 89 uses
  %.07884516 = phi ptr [ %.1789.jt2, %.backedge ], [ null, %bb.a ] ; 89 uses
  %.07904515 = phi ptr [ %.1791.jt2, %.backedge ], [ null, %bb.a ] ; 89 uses
  %.07924514 = phi i8 [ %.1793.jt2, %.backedge ], [ 0, %bb.a ] ; 99 uses
  %.07944513 = phi i1 [ %.2796.jt2, %.backedge ], [ false, %bb.a ] ; 89 uses
  %.07974512 = phi i32 [ %.1798.jt2, %.backedge ], [ 2, %bb.a ] ; 86 uses
  %.07994511 = phi i1 [ %.1800.jt2, %.backedge ], [ false, %bb.a ] ; 86 uses
  %.08014510 = phi i32 [ %.2803.jt2, %.backedge ], [ 64, %bb.a ] ; 89 uses
  %.08044509 = phi i32 [ %.2806.jt2, %.backedge ], [ 64, %bb.a ] ; 89 uses
  %.08074508 = phi i32 [ %.2809.jt2, %.backedge ], [ 0, %bb.a ] ; 89 uses
  %.08114507 = phi i32 [ %.2813.jt2, %.backedge ], [ 0, %bb.a ] ; 89 uses
  %.08144506 = phi i32 [ %.2816.jt2, %.backedge ], [ 0, %bb.a ] ; 89 uses
  %.08184505 = phi i32 [ %.2820.jt2, %.backedge ], [ 0, %bb.a ] ; 89 uses
  %.08214504 = phi i8 [ %.1822.jt2, %.backedge ], [ 0, %bb.a ] ; 89 uses
  %.08234503 = phi i32 [ %.5828.jt2, %.backedge ], [ 1, %bb.a ] ; 86 uses
  %.08294502 = phi i8 [ %.3832.jt2, %.backedge ], [ 0, %bb.a ] ; 88 uses
  %.08334501 = phi double [ %.2835.jt2, %.backedge ], [ 3.000000e+00, %bb.a ] ; 89 uses
  %.08364500 = phi float [ %.2838.jt2, %.backedge ], [ 0.000000e+00, %bb.a ] ; 89 uses
  %.08394499 = phi ptr [ %.1840.jt2, %.backedge ], [ null, %bb.a ] ; 89 uses
  %.08414498 = phi i1 [ %.1842.jt2, %.backedge ], [ false, %bb.a ] ; 89 uses
  %.08434497 = phi i8 [ %.1844.jt2, %.backedge ], [ 0, %bb.a ] ; 89 uses
  %.08454496 = phi i8 [ %.1846.jt2, %.backedge ], [ 0, %bb.a ] ; 89 uses
  %.08474495 = phi i32 [ %.1848.jt2, %.backedge ], [ 0, %bb.a ] ; 87 uses
  %.08504494 = phi ptr [ %.2852.jt2, %.backedge ], [ @_ZN7msdfgen18edgeColoringSimpleERNS_5ShapeEdy, %bb.a ] ; 87 uses
  %.08534493 = phi i1 [ %.1854.jt2, %.backedge ], [ false, %bb.a ] ; 81 uses
  %.08554492 = phi i32 [ %.17872.jt2, %.backedge ], [ 1, %bb.a ] ; 58 uses
  %.08734491 = phi i1 [ %.1874.jt2, %.backedge ], [ false, %bb.a ] ; 89 uses
  %.020894490 = phi i32 [ %.22091.jt2, %.backedge ], [ 0, %bb.a ] ; 79 uses
  %.021154489 = phi i32 [ %.22117.jt2, %.backedge ], [ 0, %bb.a ] ; 89 uses
  %.021194482 = phi i64 [ %.12120.jt2, %.backedge ], [ 0, %bb.a ] ; 89 uses
  %i.am = phi <2 x double> [ %i.uu, %.backedge ], [ <double -1.000000e+00, double 1.000000e+00>, %bb.a ] ; 88 uses
  %i.an = phi <2 x double> [ %i.uv, %.backedge ], [ <double -5.000000e-01, double 5.000000e-01>, %bb.a ] ; 88 uses
  %i.ao = phi <2 x double> [ %i.uw, %.backedge ], [ zeroinitializer, %bb.a ] ; 89 uses
  %i.ap = sext i32 %.08554492 to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ap ; 13 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !15 ; 5 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !16
  %i.at = icmp eq i8 %i.as, 45                    ; 2 uses
  br i1 %i.at, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !16
  %i.aw = icmp eq i8 %i.av, 45
  %spec.select = select i1 %i.aw, ptr %i.au, ptr %i.ar
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.0875 = phi ptr [ %i.ar, %.lr.ph ], [ %spec.select, %bb.b ] ; 67 uses
  %i.ax = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(4) @.str.1) #22
  %.not1124 = icmp eq i32 %i.ax, 0
  br i1 %.not1124, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ay = add nsw i32 %.08554492, 1
  br label %.backedge, !llvm.loop !32

bb.e:                                             ; preds = %bb.c
  %i.az = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(5) @.str.2) #22
  %.not1125 = icmp eq i32 %i.az, 0
  br i1 %.not1125, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ba = add nsw i32 %.08554492, 1
  br label %.backedge, !llvm.loop !32

bb.g:                                             ; preds = %bb.e
  %i.bb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(5) @.str.3) #22
  %.not1126 = icmp eq i32 %i.bb, 0
  br i1 %.not1126, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bc = add nsw i32 %.08554492, 1
  br label %.backedge, !llvm.loop !32

bb.i:                                             ; preds = %bb.g
  %i.bd = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(6) @.str.4) #22
  %.not1127 = icmp eq i32 %i.bd, 0
  br i1 %.not1127, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.be = add nsw i32 %.08554492, 1
  br label %.backedge, !llvm.loop !32

bb.k:                                             ; preds = %bb.i
  %i.bf = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(8) @.str.5) #22
  %.not1128 = icmp eq i32 %i.bf, 0
  br i1 %.not1128, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = add nsw i32 %.08554492, 1
  br label %.backedge, !llvm.loop !32

bb.m:                                             ; preds = %bb.k
  %i.bh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(5) @.str.6) #22
  %.not1129 = icmp eq i32 %i.bh, 0
  br i1 %.not1129, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bi = add nsw i32 %.08554492, 1               ; 2 uses
  %i.bj = icmp slt i32 %i.bi, %0
  br i1 %i.bj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bk = add nsw i32 %.08554492, 2
  %i.bl = sext i32 %i.bi to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !15
  br label %.backedge, !llvm.loop !32

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.bo = add nsw i32 %.08554492, 2               ; 52 uses
  %i.bp = icmp sge i32 %i.bo, %0                  ; 9 uses
  br i1 %i.bp, label %bb.al, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(6) @.str.7) #22
  %.not1130.not = icmp eq i32 %i.bq, 0            ; 2 uses
  br i1 %.not1130.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(9) @.str.8) #22
  %.not1131 = icmp eq i32 %i.br, 0
  br i1 %.not1131, label %bb.s, label %bb.al

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1765 = phi i32 [ 2, %bb.q ], [ 3, %bb.r ]     ; 8 uses
  %i.bs = getelementptr i8, ptr %i.aq, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !15 ; 10 uses
  %i.bu = add nsw i32 %.08554492, 3               ; 10 uses
  %i.bv = getelementptr i8, ptr %i.aq, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !15 ; 7 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !16
  switch i8 %i.bx, label %bb.ac [
    i8 112, label %bb.t
    i8 71, label %bb.v
    i8 103, label %bb.v
    i8 85, label %bb.ab
    i8 117, label %bb.ab
  ]

bb.t:                                             ; preds = %bb.s
  br i1 %.not1130.not, label %.backedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bw, ptr noundef nonnull dereferenceable(10) @.str.9) #22
  %.not1132 = icmp eq i32 %i.by, 0
  %spec.select1265 = select i1 %.not1132, i32 4, i32 3
  br label %.backedge

bb.v:                                             ; preds = %bb.s, %bb.s
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #21
  store ptr null, ptr %i.y, align 8, !tbaa !15
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !16
  %i.cb = icmp eq i8 %i.ca, 48
  br i1 %i.cb, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !16
  switch i8 %i.cd, label %bb.y [
    i8 120, label %bb.x
    i8 88, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w, %bb.w
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 3 ; 2 uses
  %i.cf = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.ce, ptr noundef nonnull %i.y, i32 noundef 16) #21
  br label %bb.z

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.cg = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.bz, ptr noundef nonnull %i.y, i32 noundef 10) #21
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %storemerge.in.i = phi i64 [ %i.cg, %bb.y ], [ %i.cf, %bb.x ]
  %.0.i = phi ptr [ %i.bz, %bb.y ], [ %i.ce, %bb.x ]
  %storemerge.i = trunc i64 %storemerge.in.i to i32
  %i.ch = load ptr, ptr %i.y, align 8, !tbaa !15  ; 2 uses
  %i.ci = icmp ugt ptr %i.ch, %.0.i
  br i1 %i.ci, label %_ZL21parseUnsignedDecOrHexRjPKc.exit, label %_ZL21parseUnsignedDecOrHexRjPKc.exit.thread

_ZL21parseUnsignedDecOrHexRjPKc.exit.thread:      ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #21
  br label %.backedge

_ZL21parseUnsignedDecOrHexRjPKc.exit:             ; preds = %bb.z
  %i.cj = load i8, ptr %i.ch, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.cj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #21
  br i1 %.not.i, label %bb.aa, label %.backedge

bb.aa:                                            ; preds = %_ZL21parseUnsignedDecOrHexRjPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @_ZN7msdfgen10GlyphIndexC1Ej(ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef %storemerge.i)
  %i.ck = load i32, ptr %8, align 4, !tbaa !136
  store i32 %i.ck, ptr %5, align 4, !tbaa !136
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %.backedge

bb.ab:                                            ; preds = %bb.s, %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.s
  %.0909 = phi ptr [ %i.bw, %bb.s ], [ %i.cl, %bb.ab ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #21
  store ptr null, ptr %i.x, align 8, !tbaa !15
  %i.cm = load i8, ptr %.0909, align 1, !tbaa !16
  %i.cn = icmp eq i8 %i.cm, 48
  br i1 %i.cn, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.co = getelementptr inbounds nuw i8, ptr %.0909, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !16
  switch i8 %i.cp, label %bb.af [
    i8 120, label %bb.ae
    i8 88, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %i.cq = getelementptr inbounds nuw i8, ptr %.0909, i64 2 ; 2 uses
  %i.cr = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.cq, ptr noundef nonnull %i.x, i32 noundef 16) #21
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %i.cs = call i64 @__isoc23_strtoul(ptr noundef nonnull %.0909, ptr noundef nonnull %i.x, i32 noundef 10) #21
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %storemerge.in.i.i = phi i64 [ %i.cs, %bb.af ], [ %i.cr, %bb.ae ]
  %.0.i.i = phi ptr [ %.0909, %bb.af ], [ %i.cq, %bb.ae ]
  %i.ct = load ptr, ptr %i.x, align 8, !tbaa !15  ; 2 uses
  %i.cu = icmp ugt ptr %i.ct, %.0.i.i
  br i1 %i.cu, label %_ZL21parseUnsignedDecOrHexRjPKc.exit.i, label %_ZL21parseUnsignedDecOrHexRjPKc.exit.thread.i

_ZL21parseUnsignedDecOrHexRjPKc.exit.thread.i:    ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #21
  br label %bb.ah

_ZL21parseUnsignedDecOrHexRjPKc.exit.i:           ; preds = %bb.ag
  %storemerge.i.i = trunc i64 %storemerge.in.i.i to i32
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !16
  %.not.i.i = icmp eq i8 %i.cv, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #21
  br i1 %.not.i.i, label %.backedge, label %bb.ah

bb.ah:                                            ; preds = %_ZL21parseUnsignedDecOrHexRjPKc.exit.i, %_ZL21parseUnsignedDecOrHexRjPKc.exit.thread.i
  %i.cw = load i8, ptr %.0909, align 1, !tbaa !16
  %i.cx = icmp eq i8 %i.cw, 39
  br i1 %i.cx, label %bb.ai, label %.backedge

bb.ai:                                            ; preds = %bb.ah
  %i.cy = getelementptr inbounds nuw i8, ptr %.0909, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !16  ; 2 uses
  %.not.i1296 = icmp eq i8 %i.cz, 0
  br i1 %.not.i1296, label %.backedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.da = getelementptr inbounds nuw i8, ptr %.0909, i64 2
  %i.db = load i8, ptr %i.da, align 1, !tbaa !16
  %i.dc = icmp eq i8 %i.db, 39
  br i1 %i.dc, label %bb.ak, label %.backedge

bb.ak:                                            ; preds = %bb.aj
  %i.dd = getelementptr inbounds nuw i8, ptr %.0909, i64 3
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !16
  %.not10.i = icmp eq i8 %i.de, 0
  %i.df = zext i8 %i.cz to i32
  %spec.select2329 = select i1 %.not10.i, i32 %i.df, i32 %.021154489
  br label %.backedge

bb.al:                                            ; preds = %bb.r, %bb.p
  %i.dg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(15) @.str.10) #22
  %.not1133 = icmp eq i32 %i.dg, 0
  br i1 %.not1133, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dh = add nsw i32 %.08554492, 1
  br label %.backedge, !llvm.loop !32

bb.an:                                            ; preds = %bb.al
  %i.di = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(13) @.str.11) #22
  %.not1134 = icmp eq i32 %i.di, 0
  br i1 %.not1134, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dj = add nsw i32 %.08554492, 1
  br label %.backedge, !llvm.loop !32

bb.ap:                                            ; preds = %bb.an
  %i.dk = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(19) @.str.12) #22
  %.not1135 = icmp eq i32 %i.dk, 0
  br i1 %.not1135, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dl = add nsw i32 %.08554492, 1
  br label %.backedge, !llvm.loop !32

bb.ar:                                            ; preds = %bb.ap
  %i.dm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(13) @.str.13) #22
  %.not1136 = icmp eq i32 %i.dm, 0
  br i1 %.not1136, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.dn = add nsw i32 %.08554492, 1               ; 2 uses
  %i.do = icmp slt i32 %i.dn, %0
  br i1 %i.do, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.dp = sext i32 %i.dn to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !15
  br label %.backedge, !llvm.loop !32

bb.au:                                            ; preds = %bb.as, %bb.ar
  %i.ds = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(7) @.str.14) #22
  %.not1137 = icmp eq i32 %i.ds, 0
  br i1 %.not1137, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.dt = add nsw i32 %.08554492, 1
  br label %.backedge, !llvm.loop !32

bb.aw:                                            ; preds = %bb.au
  %i.du = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(11) @.str.16) #22
  %.not1138 = icmp eq i32 %i.du, 0
  br i1 %.not1138, label %bb.ax, label %sub_0

bb.ax:                                            ; preds = %bb.aw
  %i.dv = add nsw i32 %.08554492, 1               ; 2 uses
  %i.dw = icmp slt i32 %i.dv, %0
  br i1 %i.dw, label %bb.ay, label %sub_0

bb.ay:                                            ; preds = %bb.ax
  %i.dx = sext i32 %i.dv to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dx
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !15
  br label %.backedge, !llvm.loop !32

sub_0:                                            ; preds = %bb.aw, %bb.ax
  br i1 %i.at, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.ea = getelementptr inbounds nuw i8, ptr %.0875, i64 1
  %i.eb = load i8, ptr %i.ea, align 1
  %.not4579 = icmp eq i8 %i.eb, 111
  br i1 %.not4579, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.ec = getelementptr inbounds nuw i8, ptr %.0875, i64 2
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = icmp eq i8 %i.ed, 0
  br i1 %i.ee, label %bb.bb, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  %i.ef = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(5) @.str.18) #22
  %.not1140 = icmp eq i32 %i.ef, 0
  br i1 %.not1140, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %.tail.thread
  %i.eg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(8) @.str.19) #22
  %.not1141 = icmp eq i32 %i.eg, 0
  br i1 %.not1141, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.eh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(10) @.str.20) #22
  %.not1142 = icmp eq i32 %i.eh, 0
  br i1 %.not1142, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba, %bb.az, %.tail.thread, %.tail
  %i.ei = add nsw i32 %.08554492, 1               ; 2 uses
  %i.ej = icmp slt i32 %i.ei, %0
  br i1 %i.ej, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ek = sext i32 %i.ei to i64
  %i.el = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !15
  br label %.backedge, !llvm.loop !32

bb.bd:                                            ; preds = %bb.bb, %bb.ba
  %i.en = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(8) @.str.21) #22
  %.not1143 = icmp eq i32 %i.en, 0
  br i1 %.not1143, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.eo = add nsw i32 %.08554492, 1
  br label %.backedge, !llvm.loop !32

bb.bf:                                            ; preds = %bb.bd
  %i.ep = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(8) @.str.22) #22
  %.not1144 = icmp eq i32 %i.ep, 0
  br i1 %.not1144, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.eq = add nsw i32 %.08554492, 1
  br label %.backedge, !llvm.loop !32

bb.bh:                                            ; preds = %bb.bf
  %i.er = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(14) @.str.23) #22
  %.not1145 = icmp eq i32 %i.er, 0
  br i1 %.not1145, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.es = add nsw i32 %.08554492, 1
  br label %.backedge, !llvm.loop !32

bb.bj:                                            ; preds = %bb.bh
  %i.et = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(19) @.str.24) #22
  %.not1146 = icmp eq i32 %i.et, 0
  br i1 %.not1146, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.eu = add nsw i32 %.08554492, 1
  br label %.backedge, !llvm.loop !32

bb.bl:                                            ; preds = %bb.bj
  %i.ev = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(12) @.str.25) #22
  %.not1147 = icmp eq i32 %i.ev, 0
  br i1 %.not1147, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ew = add nsw i32 %.08554492, 1
  br label %.backedge, !llvm.loop !32

bb.bn:                                            ; preds = %bb.bl
  %i.ex = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(11) @.str.26) #22
  %.not1148 = icmp eq i32 %i.ex, 0
  br i1 %.not1148, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ey = add nsw i32 %.08554492, 1
  store i8 0, ptr %4, align 8, !tbaa !134
  br label %.backedge, !llvm.loop !32

bb.bp:                                            ; preds = %bb.bn
  %i.ez = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(9) @.str.27) #22
  %.not1149 = icmp eq i32 %i.ez, 0
  br i1 %.not1149, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.fa = add nsw i32 %.08554492, 1
  store i8 1, ptr %4, align 8, !tbaa !134
  br label %.backedge, !llvm.loop !32

bb.br:                                            ; preds = %bb.bp
  %i.fb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(12) @.str.28) #22
  %.not1150 = icmp eq i32 %i.fb, 0
  br i1 %.not1150, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.fc = add nsw i32 %.08554492, 1
  br label %.backedge, !llvm.loop !32

bb.bt:                                            ; preds = %bb.br
  %i.fd = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(10) @.str.29) #22
  %.not1151 = icmp eq i32 %i.fd, 0
  br i1 %.not1151, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.fe = add nsw i32 %.08554492, 1
  br label %.backedge, !llvm.loop !32

bb.bv:                                            ; preds = %bb.bt
  %i.ff = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(10) @.str.30) #22
  %.not1152 = icmp eq i32 %i.ff, 0
  br i1 %.not1152, label %bb.bw, label %bb.cd

bb.bw:                                            ; preds = %bb.bv
  %i.fg = add nsw i32 %.08554492, 1               ; 2 uses
  %i.fh = icmp slt i32 %i.fg, %0
  br i1 %i.fh, label %bb.bx, label %bb.cd

bb.bx:                                            ; preds = %bb.bw
  %i.fi = sext i32 %i.fg to i64
  %i.fj = getelementptr inbounds [8 x i8], ptr %1, i64 %i.fi
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !15 ; 5 uses
  %i.fl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fk, ptr noundef nonnull dereferenceable(8) @.str.31) #22
  %.not1153 = icmp eq i32 %i.fl, 0
  br i1 %.not1153, label %.backedge, label %bb.by, !llvm.loop !32

bb.by:                                            ; preds = %bb.bx
  %i.fm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fk, ptr noundef nonnull dereferenceable(8) @.str.32) #22
  %.not1154 = icmp eq i32 %i.fm, 0
  br i1 %.not1154, label %.backedge, label %bb.bz, !llvm.loop !32

bb.bz:                                            ; preds = %bb.by
  %i.fn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fk, ptr noundef nonnull dereferenceable(4) @.str.33) #22
  %.not1155 = icmp eq i32 %i.fn, 0
  br i1 %.not1155, label %.backedge, label %bb.ca, !llvm.loop !32

bb.ca:                                            ; preds = %bb.bz
  %i.fo = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fk, ptr noundef nonnull dereferenceable(9) @.str.34) #22
  %.not1156 = icmp eq i32 %i.fo, 0
  br i1 %.not1156, label %.backedge, label %bb.cb, !llvm.loop !32

bb.cb:                                            ; preds = %bb.ca
  %i.fp = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fk, ptr noundef nonnull dereferenceable(9) @.str.35) #22
  %.not1157 = icmp eq i32 %i.fp, 0
  br i1 %.not1157, label %.backedge, label %bb.cc, !llvm.loop !32

bb.cc:                                            ; preds = %bb.cb
  %i.fq = load ptr, ptr @stderr, align 8, !tbaa !138
  %fwrite1158 = call i64 @fwrite(ptr nonnull @.str.36, i64 29, i64 1, ptr %i.fq) #23 ; 0 uses
  br label %.backedge, !llvm.loop !32

bb.cd:                                            ; preds = %bb.bw, %bb.bv
  %i.fr = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0875, ptr noundef nonnull dereferenceable(8) @.str.37) #22
  %.not1159 = icmp eq i32 %i.fr, 0
  br i1 %.not1159, label %bb.ce, label %bb.dg

bb.ce:                                            ; preds = %bb.cd
  %i.fs = add nsw i32 %.08554492, 1               ; 2 uses
  %i.ft = icmp slt i32 %i.fs, %0
  br i1 %i.ft, label %bb.cf, label %bb.dg

bb.cf:                                            ; preds = %bb.ce
  %i.fu = sext i32 %i.fs to i64
  %i.fv = getelementptr inbounds [8 x i8], ptr %1, i64 %i.fu
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !15 ; 16 uses
  %i.fx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fw, ptr noundef nonnull dereferenceable(5) @.str.38) #22
  %.not1160 = icmp eq i32 %i.fx, 0
  br i1 %.not1160, label %.backedge, label %bb.cg, !llvm.loop !32

bb.cg:                                            ; preds = %bb.cf
  %i.fy = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fw, ptr noundef nonnull dereferenceable(4) @.str.39) #22
  %.not1161 = icmp eq i32 %i.fy, 0
  br i1 %.not1161, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.fz = trunc nuw i8 %.07924514 to i1
  %spec.select1266 = select i1 %i.fz, ptr %.07814519, ptr @.str
  br label %.backedge, !llvm.loop !32

bb.ci:                                            ; preds = %bb.cg
  %i.ga = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fw, ptr noundef nonnull dereferenceable(4) @.str.40) #22
  %.not1162 = icmp eq i32 %i.ga, 0
  br i1 %.not1162, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.gb = trunc nuw i8 %.07924514 to i1
end_hunk_0
