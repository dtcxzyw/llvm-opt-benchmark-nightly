Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_blurdetect?download=true
inline.NumInlined: 12
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"blurdetect\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Blurdetect filter.\00", align 1
@blurdetect_inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr @blurdetect_filter_frame, ptr null, ptr @blurdetect_config_input }], align 16
@ff_video_default_filterpad = external constant [1 x %struct.AVFilterPad], align 16
@pix_fmts = internal constant [18 x i32] [i32 8, i32 71, i32 111, i32 4, i32 0, i32 5, i32 31, i32 7, i32 6, i32 32, i32 138, i32 12, i32 13, i32 14, i32 79, i32 78, i32 33, i32 -1], align 16
@ff_vf_blurdetect = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @blurdetect_inputs, ptr @ff_video_default_filterpad, ptr @blurdetect_class, i32 8, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 3, [5 x i8] zeroinitializer, ptr null, ptr @blurdetect_init, ptr @blurdetect_uninit, %union.anon.0 { ptr @pix_fmts }, i32 112, i32 0, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"blur: %.7f\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"lavfi.blur\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@blurdetect_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @blurdetect_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"set high threshold\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"set low threshold\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"search radius for maxima detection\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"block_pct\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"block pooling threshold when calculating blurriness\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"block_width\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"block size for block-based abbreviation of blurriness\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"block_height\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"planes\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"set planes to filter\00", align 1
@blurdetect_options = internal constant <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.7, ptr @.str.8, i32 24, i32 5, { double } { double f0x3FBE1E1E1E1E1E1E }, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.9, ptr @.str.10, i32 20, i32 5, { double } { double f0x3FAE1E1E1E1E1E1E }, double 0.000000e+00, double 1.000000e+00, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.11, ptr @.str.12, i32 32, i32 2, %union.anon.2 { i64 50 }, double 1.000000e+00, double 1.000000e+02, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.13, ptr @.str.14, i32 36, i32 2, %union.anon.2 { i64 80 }, double 1.000000e+00, double 1.000000e+02, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.15, ptr @.str.16, i32 40, i32 2, %union.anon.2 { i64 -1 }, double -1.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.17, ptr @.str.16, i32 44, i32 2, %union.anon.2 { i64 -1 }, double -1.000000e+00, double f0x41DFFFFFFFC00000, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.18, ptr @.str.19, i32 48, i32 2, %union.anon.2 { i64 1 }, double 0.000000e+00, double 1.500000e+01, i32 65552, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@.str.21 = private unnamed_addr constant [17 x i8] c"blur mean: %.7f\0A\00", align 1
@switch.table.blurdetect_filter_frame = private unnamed_addr constant [4 x i8] c"\01\01\01\00", align 4
@switch.table.blurdetect_filter_frame.4 = private unnamed_addr constant [4 x i32] [i32 -1, i32 1, i32 0, i32 1], align 4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @blurdetect_init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.e = load <2 x float>, ptr %i.c, align 4, !tbaa !20
  %i.f = fpext <2 x float> %i.e to <2 x double>
  %i.g = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.f, <2 x double> splat (double 2.550000e+02), <2 x double> splat (double 5.000000e-01))
  %i.h = fptoui <2 x double> %i.g to <2 x i8>     ; 2 uses
  %i.i = extractelement <2 x i8> %i.h, i64 0
  store i8 %i.i, ptr %i.d, align 4, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 29
  %i.k = extractelement <2 x i8> %i.h, i64 1
  store i8 %i.k, ptr %i.j, align 1, !tbaa !28
  ret i32 0
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @blurdetect_uninit(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = load double, ptr %i.e, align 8, !tbaa !30
  %i.g = uitofp nsz i64 %i.d to double
  %i.h = fdiv nsz double %i.f, %i.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull @.str.21, double noundef %i.h) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  tail call void @av_freep(ptr noundef nonnull %i.i) #9
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  tail call void @av_freep(ptr noundef nonnull %i.j) #9
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  tail call void @av_freep(ptr noundef nonnull %i.k) #9
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  tail call void @av_freep(ptr noundef nonnull %i.l) #9
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @av_freep(ptr noundef nonnull %i.m) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @blurdetect_filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = alloca [64 x [2 x ptr]], align 16        ; 7 uses
  %i.b = alloca [128 x i8], align 16              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9    ; 17 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !43   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !44   ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !47   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.v = load i32, ptr %i.u, align 4, !tbaa !48   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i32, ptr %i.w, align 8, !tbaa !49   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.aa = sub nsw i32 0, %i.x
  %i.ab = sub nsw i32 0, %i.v
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ae = mul nsw i32 %i.v, %i.x
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 29
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.am = getelementptr i8, ptr %i.f, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %bb.ao
  %.not = icmp eq i32 %.1, 0
  %i.ao = sitofp nsz i32 %.1 to float
  %i.ap = fdiv nsz float %.199, %i.ao
  br i1 %.not, label %bb.b, label %._crit_edge.thread

bb.b:                                             ; preds = %._crit_edge
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge, %bb.b
  %i.aq = phi float [ %i.ap, %._crit_edge ], [ %.199, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.as = fpext nsz float %i.aq to double         ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !30
  %i.av = fadd nsz double %i.au, %i.as
  store double %i.av, ptr %i.at, align 8, !tbaa !30
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.d, i32 noundef 40, ptr noundef nonnull @.str.3, double noundef %i.as) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.aw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 128, ptr noundef nonnull @.str.5, double noundef %i.as) #9 ; 0 uses
  %i.ax = call i32 @av_dict_set(ptr noundef nonnull %i.ar, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.b, i32 noundef 0) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !50
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !29
  %i.bb = call i32 @ff_filter_frame(ptr noundef %i.i, ptr noundef %1) #9
  ret i32 %i.bb

bb.c:                                             ; preds = %.lr.ph, %bb.ao
  %i.bc = phi i32 [ %i.s, %.lr.ph ], [ %i.kd, %bb.ao ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ao ] ; 5 uses
  %.097113 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.ao ] ; 2 uses
  %.098112 = phi float [ 0.000000e+00, %.lr.ph ], [ %.199, %bb.ao ] ; 2 uses
  %i.bd = trunc i64 %indvars.iv to i32
  %i.be = add i32 %i.bd, -1
  %or.cond = icmp ult i32 %i.be, 2
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bf = load i32, ptr %i.y, align 8, !tbaa !52
  %i.bg = load i32, ptr %i.z, align 4, !tbaa !53
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bh = phi i32 [ %i.bf, %bb.d ], [ 0, %bb.c ]  ; 2 uses
  %i.bi = phi i32 [ %i.bg, %bb.d ], [ 0, %bb.c ]  ; 2 uses
  %i.bj = ashr i32 %i.aa, %i.bh                   ; 2 uses
  %i.bk = sub nsw i32 0, %i.bj                    ; 16 uses
  %i.bl = ashr i32 %i.ab, %i.bi
  %i.bm = sub nsw i32 0, %i.bl                    ; 6 uses
  %i.bn = trunc nuw nsw i64 %indvars.iv to i32
  %i.bo = shl nuw i32 1, %i.bn
  %i.bp = load i32, ptr %i.ac, align 8, !tbaa !54
  %i.bq = and i32 %i.bp, %i.bo
  %.not100 = icmp eq i32 %i.bq, 0
  br i1 %.not100, label %bb.ao, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.br = add i32 %.097113, 1
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !55
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !56
  tail call void @ff_gaussian_blur_8(i32 noundef %i.bk, i32 noundef %i.bm, ptr noundef %i.m, i32 noundef %i.bk, ptr noundef %i.bt, i32 noundef %i.bv, i32 noundef 1) #9
  tail call void @ff_sobel_8(i32 noundef %i.bk, i32 noundef %i.bm, ptr noundef %i.o, i32 noundef %i.bk, ptr noundef %i.q, i32 noundef %i.bk, ptr noundef %i.m, i32 noundef %i.bk, i32 noundef 1) #9
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.k, i8 0, i64 %i.af, i1 false)
  tail call void @ff_non_maximum_suppression(i32 noundef %i.bk, i32 noundef %i.bm, ptr noundef %i.k, i32 noundef %i.bk, ptr noundef %i.q, i32 noundef %i.bk, ptr noundef %i.o, i32 noundef %i.bk) #9
  %i.bw = load i8, ptr %i.ag, align 4, !tbaa !22
  %i.bx = zext i8 %i.bw to i32
  %i.by = load i8, ptr %i.ah, align 1, !tbaa !28
  %i.bz = zext i8 %i.by to i32
  tail call void @ff_double_threshold(i32 noundef %i.bx, i32 noundef %i.bz, i32 noundef %i.bk, i32 noundef %i.bm, ptr noundef %i.k, i32 noundef %i.bk, ptr noundef %i.k, i32 noundef %i.bk) #9
  %i.ca = load ptr, ptr %i.ai, align 8, !tbaa !57 ; 12 uses
  %i.cb = load i32, ptr %i.aj, align 4, !tbaa !58
  %i.cc = sitofp nsz i32 %i.cb to double
  %i.cd = fdiv nnan nsz double %i.cc, 1.000000e+02
  %i.ce = fptrunc nnan nsz double %i.cd to float
  %i.cf = load i32, ptr %i.ak, align 8, !tbaa !59
  %i.cg = sub nsw i32 0, %i.cf
  %i.ch = ashr i32 %i.cg, %i.bh                   ; 2 uses
  %i.ci = sub nsw i32 0, %i.ch                    ; 2 uses
  %i.cj = load i32, ptr %i.al, align 4, !tbaa !60
  %i.ck = sub nsw i32 0, %i.cj
  %i.cl = ashr i32 %i.ck, %i.bi                   ; 2 uses
  %i.cm = sub nsw i32 0, %i.cl                    ; 2 uses
  %i.cn = sdiv i32 %i.bm, %i.cm                   ; 2 uses
  %i.co = sdiv i32 %i.bk, %i.ci                   ; 2 uses
  %i.cp = icmp sgt i32 %i.cn, 0
  br i1 %i.cp, label %.preheader265.lr.ph.i, label %._crit_edge298.i

.preheader265.lr.ph.i:                            ; preds = %bb.f
  %i.cq = icmp slt i32 %i.co, 1
  %i.cr = sext i32 %i.bk to i64                   ; 6 uses
  %i.cs = sext i32 %i.bm to i64                   ; 2 uses
  %i.ct = and i32 %i.ch, %i.cl
  %i.cu = icmp sgt i32 %i.ct, -1
  %brmerge.i = or i1 %i.cu, %i.cq
  br i1 %brmerge.i, label %._crit_edge298.i, label %.preheader265.us.us.us.preheader.i

.preheader265.us.us.us.preheader.i:               ; preds = %.preheader265.lr.ph.i
  %2 = zext nneg i32 %i.ci to i64                 ; 2 uses
  %i.cv = zext nneg i32 %i.cm to i64              ; 2 uses
  %wide.trip.count356.i.a = zext nneg i32 %i.cn to i64
  %wide.trip.count356.i = zext nneg i32 %i.co to i64
  br label %.preheader265.us.us.us.i

.preheader265.us.us.us.i:                         ; preds = %._crit_edge.split.us.split.us.us.us.us.i, %.preheader265.us.us.us.preheader.i
  %indvars.iv353.i.a = phi i64 [ 0, %.preheader265.us.us.us.preheader.i ], [ %indvars.iv.next354.i.a, %._crit_edge.split.us.split.us.us.us.us.i ] ; 2 uses
  %.0192297.us.us.us.i = phi i32 [ 0, %.preheader265.us.us.us.preheader.i ], [ %.2.us.us.us.us.us.i, %._crit_edge.split.us.split.us.us.us.us.i ]
  %i.cw = mul nuw nsw i64 %indvars.iv353.i.a, %i.cv
  br label %.preheader264.us.us.us.us.us.i

.preheader264.us.us.us.us.us.i:                   ; preds = %bb.h, %.preheader265.us.us.us.i
  %indvars.iv353.i = phi i64 [ %indvars.iv.next354.i, %bb.h ], [ 0, %.preheader265.us.us.us.i ] ; 2 uses
  %.1289.us.us.us.us.us.i = phi i32 [ %.2.us.us.us.us.us.i, %bb.h ], [ %.0192297.us.us.us.i, %.preheader265.us.us.us.i ] ; 3 uses
  %3 = mul nuw nsw i64 %indvars.iv353.i, %2       ; 2 uses
  %4 = trunc nsw i64 %3 to i32
  br label %.preheader263.us.us.us.us.us.us.i

bb.g:                                             ; preds = %._crit_edge282.split.us.us.us.us.us.us.i
  %i.cx = sitofp nsz i32 %.3216.us.us.us.us.us.us.i to double
  %i.cy = fdiv nsz double %.3220.us.us.us.us.us.us.i, %i.cx
  %i.cz = fptrunc nsz double %i.cy to float
  %i.da = sext i32 %.1289.us.us.us.us.us.i to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.da
  store float %i.cz, ptr %i.db, align 4, !tbaa !20
  %i.dc = add nsw i32 %.1289.us.us.us.us.us.i, 1
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge282.split.us.us.us.us.us.us.i, %bb.g
  %.2.us.us.us.us.us.i = phi i32 [ %i.dc, %bb.g ], [ %.1289.us.us.us.us.us.i, %._crit_edge282.split.us.us.us.us.us.us.i ] ; 3 uses
  %indvars.iv.next354.i = add nuw nsw i64 %indvars.iv353.i, 1 ; 2 uses
  %exitcond352.not.i.a = icmp eq i64 %indvars.iv.next354.i, %wide.trip.count356.i
  br i1 %exitcond352.not.i.a, label %._crit_edge.split.us.split.us.us.us.us.i, label %.preheader264.us.us.us.us.us.i, !llvm.loop !61

.preheader263.us.us.us.us.us.us.i:                ; preds = %._crit_edge.us.us.us.us.us.us.i, %.preheader264.us.us.us.us.us.i
  %indvars.iv.i.a = phi i64 [ %indvars.iv.next.i.a, %._crit_edge.us.us.us.us.us.us.i ], [ 0, %.preheader264.us.us.us.us.us.i ] ; 2 uses
  %.0213280.us.us.us.us.us.us.i = phi i32 [ %.3216.us.us.us.us.us.us.i, %._crit_edge.us.us.us.us.us.us.i ], [ 0, %.preheader264.us.us.us.us.us.i ]
  %.0217279.us.us.us.us.us.us.i = phi double [ %.3220.us.us.us.us.us.us.i, %._crit_edge.us.us.us.us.us.us.i ], [ 0.000000e+00, %.preheader264.us.us.us.us.us.i ]
  %i.dd = add nuw nsw i64 %indvars.iv.i.a, %i.cw  ; 4 uses
  %5 = mul nsw i64 %i.dd, %i.cr                   ; 3 uses
  %invariant.gep.i = getelementptr i8, ptr %i.k, i64 %5
  %invariant.gep400.i = getelementptr i8, ptr %i.q, i64 %5
  %invariant.gep402.i = getelementptr i8, ptr %i.m, i64 %5
  %6 = trunc nsw i64 %i.dd to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.q, %.preheader263.us.us.us.us.us.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.q ], [ 0, %.preheader263.us.us.us.us.us.us.i ] ; 3 uses
  %.1214276.us.us.us.us.us.us.i = phi i32 [ %.3216.us.us.us.us.us.us.i, %bb.q ], [ %.0213280.us.us.us.us.us.us.i, %.preheader263.us.us.us.us.us.us.i ] ; 2 uses
  %.1218275.us.us.us.us.us.us.i = phi double [ %.3220.us.us.us.us.us.us.i, %bb.q ], [ %.0217279.us.us.us.us.us.us.i, %.preheader263.us.us.us.us.us.us.i ] ; 3 uses
  %indvars347.i = trunc i64 %indvars.iv.i to i32
  %7 = add nuw nsw i64 %indvars.iv.i, %3          ; 6 uses
  %i.de = add nuw nsw i32 %indvars347.i, %4
  %i.df = getelementptr i8, ptr %invariant.gep.i, i64 %7
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !63
  %.not236.us.us.us.us.us.us.i = icmp eq i8 %i.dg, 0
  br i1 %.not236.us.us.us.us.us.us.i, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dh = getelementptr i8, ptr %invariant.gep400.i, i64 %7
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !63  ; 4 uses
  %.val.us.us.us.us.us.us.i = load i32, ptr %i.am, align 8, !tbaa !64 ; 4 uses
  %i.dj = icmp ult i8 %i.di, 4
  br i1 %i.dj, label %switch.lookup, label %bb.k

switch.lookup:                                    ; preds = %bb.j
  %i.dk = zext nneg i8 %i.di to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.blurdetect_filter_frame, i64 %i.dk
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.dl = zext nneg i8 %i.di to i64
  %switch.gep179 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.blurdetect_filter_frame.4, i64 %i.dl
  %switch.load180 = load i32, ptr %switch.gep179, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %switch.lookup
  %.089.i.us.us.us.us.us.us.i = phi i32 [ %switch.ext, %switch.lookup ], [ 1, %bb.j ] ; 3 uses
  %.088.i.us.us.us.us.us.us.i = phi i32 [ %switch.load180, %switch.lookup ], [ 1, %bb.j ] ; 2 uses
  %i.dm = getelementptr i8, ptr %invariant.gep402.i, i64 %7
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !63
  %.neg = sub i32 %.088.i.us.us.us.us.us.us.i, %6
  %i.do = mul i32 %.neg, %i.bj
  %8 = trunc nsw i64 %7 to i32
  %i.dp = sub nsw i32 %8, %.089.i.us.us.us.us.us.us.i ; 2 uses
  %i.dq = add i32 %i.do, %i.dp
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds i8, ptr %i.m, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !63
  %i.du = icmp ugt i8 %i.dn, %i.dt
  %i.dv = select i1 %i.du, i32 1, i32 -1          ; 2 uses
  %i.dw = icmp sgt i32 %.val.us.us.us.us.us.us.i, 0
  br i1 %i.dw, label %.lr.ph.preheader.i.us.us.us.us.us.us.i, label %._crit_edge16.i.us.us.us.us.us.us.i

.lr.ph.preheader.i.us.us.us.us.us.us.i:           ; preds = %bb.k
  %9 = icmp slt i32 %i.dp, %i.bk
  %i.dx = zext nneg i32 %.089.i.us.us.us.us.us.us.i to i64 ; 4 uses
  %i.dy = sext i32 %.088.i.us.us.us.us.us.us.i to i64 ; 4 uses
  %wide.trip.count.i.us.us.us.us.us.us.i = zext nneg i32 %.val.us.us.us.us.us.us.i to i64 ; 2 uses
  br i1 %9, label %.lr.ph.i.us.us.us.us.us.us.i, label %edge_width.exit.us.us.us.us.us.us.i

.lr.ph.i.us.us.us.us.us.us.i:                     ; preds = %.lr.ph.preheader.i.us.us.us.us.us.us.i, %bb.n
  %indvars.iv.i.us.us.us.us.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.us.us.us.us.i, %bb.n ], [ 0, %.lr.ph.preheader.i.us.us.us.us.us.us.i ] ; 4 uses
  %i.dz = mul nuw nsw i64 %indvars.iv.i.us.us.us.us.us.us.i, %i.dx
  %i.ea = sub nsw i64 %7, %i.dz                   ; 2 uses
  %i.eb = mul nsw i64 %indvars.iv.i.us.us.us.us.us.us.i, %i.dy
  %i.ec = sub nsw i64 %i.dd, %i.eb                ; 2 uses
  %i.ed = mul nsw i64 %i.ec, %i.cr
  %i.ee = sub nsw i64 %i.ea, %i.dx                ; 2 uses
  %i.ef = sub nsw i64 %i.ec, %i.dy                ; 3 uses
  %i.eg = mul nsw i64 %i.ef, %i.cr
  %i.eh = icmp slt i64 %i.ee, 0
  br i1 %i.eh, label %edge_width.exit.us.us.us.us.us.us.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.us.us.us.us.us.us.i
  %i.ei = icmp sgt i64 %i.ef, -1
  %.not.i.us.us.us.us.us.us.i = icmp slt i64 %i.ef, %i.cs
  %i.ej = and i1 %i.ei, %.not.i.us.us.us.us.us.us.i
  br i1 %i.ej, label %bb.m, label %edge_width.exit.us.us.us.us.us.us.i

bb.m:                                             ; preds = %bb.l
  %i.ek = getelementptr i8, ptr %i.m, i64 %i.ed
  %i.el = getelementptr i8, ptr %i.ek, i64 %i.ea
  %i.em = load i8, ptr %i.el, align 1, !tbaa !63
  %i.en = zext i8 %i.em to i32
  %i.eo = getelementptr i8, ptr %i.m, i64 %i.eg
  %i.ep = getelementptr i8, ptr %i.eo, i64 %i.ee
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !63
  %i.er = zext i8 %i.eq to i32
  %i.es = sub nsw i32 %i.en, %i.er
  %i.et = mul nsw i32 %i.es, %i.dv
  %i.eu = icmp slt i32 %i.et, 1
  br i1 %i.eu, label %._crit_edge.split.loop.exit29.i.us.us.us.us.us.us.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next.i.us.us.us.us.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond.not.i.us.us.us.us.us.us.i = icmp eq i64 %indvars.iv.next.i.us.us.us.us.us.us.i, %wide.trip.count.i.us.us.us.us.us.us.i
  br i1 %exitcond.not.i.us.us.us.us.us.us.i, label %._crit_edge.i.us.us.us.us.us.us.i, label %.lr.ph.i.us.us.us.us.us.us.i, !llvm.loop !65

._crit_edge.split.loop.exit29.i.us.us.us.us.us.us.i: ; preds = %bb.m
  %i.ev = trunc nuw nsw i64 %indvars.iv.i.us.us.us.us.us.us.i to i32
  br label %._crit_edge.i.us.us.us.us.us.us.i

._crit_edge.i.us.us.us.us.us.us.i:                ; preds = %bb.n, %._crit_edge.split.loop.exit29.i.us.us.us.us.us.us.i
  %.0.lcssa.ph.i.us.us.us.us.us.us.i = phi i32 [ %i.ev, %._crit_edge.split.loop.exit29.i.us.us.us.us.us.us.i ], [ %.val.us.us.us.us.us.us.i, %bb.n ]
  %i.ew = uitofp nneg i32 %.0.lcssa.ph.i.us.us.us.us.us.us.i to float
  %i.ex = add nuw i32 %i.de, %.089.i.us.us.us.us.us.us.i
  %i.ey = icmp slt i32 %i.ex, 0
  br i1 %i.ey, label %edge_width.exit.us.us.us.us.us.us.i, label %.lr.ph15.i.us.us.us.us.us.us.i

.lr.ph15.i.us.us.us.us.us.us.i:                   ; preds = %._crit_edge.i.us.us.us.us.us.us.i, %bb.p
  %indvars.iv22.i.us.us.us.us.us.us.i = phi i64 [ %indvars.iv.next23.i.us.us.us.us.us.us.i, %bb.p ], [ 0, %._crit_edge.i.us.us.us.us.us.us.i ] ; 4 uses
  %i.ez = mul nuw nsw i64 %indvars.iv22.i.us.us.us.us.us.us.i, %i.dx
  %i.fa = add nuw nsw i64 %i.ez, %7               ; 2 uses
  %i.fb = mul nsw i64 %indvars.iv22.i.us.us.us.us.us.us.i, %i.dy
  %i.fc = add nsw i64 %i.fb, %i.dd                ; 2 uses
  %i.fd = add nuw nsw i64 %i.fa, %i.dx            ; 2 uses
  %i.fe = add nsw i64 %i.fc, %i.dy                ; 3 uses
  %i.ff = icmp slt i64 %i.fd, %i.cr
  %i.fg = icmp sgt i64 %i.fe, -1
  %.not96.i.us.us.us.us.us.us.i = icmp slt i64 %i.fe, %i.cs
  %i.fh = and i1 %i.fg, %.not96.i.us.us.us.us.us.us.i
  %or.cond98.i.us.us.us.us.us.us.i = select i1 %i.ff, i1 %i.fh, i1 false
  br i1 %or.cond98.i.us.us.us.us.us.us.i, label %bb.o, label %edge_width.exit.us.us.us.us.us.us.i

bb.o:                                             ; preds = %.lr.ph15.i.us.us.us.us.us.us.i
  %i.fi = mul nsw i64 %i.fe, %i.cr
  %i.fj = mul nsw i64 %i.fc, %i.cr
  %i.fk = getelementptr i8, ptr %i.m, i64 %i.fj
  %i.fl = getelementptr i8, ptr %i.fk, i64 %i.fa
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !63
  %i.fn = zext i8 %i.fm to i32
  %i.fo = getelementptr i8, ptr %i.m, i64 %i.fi
  %i.fp = getelementptr i8, ptr %i.fo, i64 %i.fd
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !63
  %i.fr = zext i8 %i.fq to i32
  %i.fs = sub nsw i32 %i.fn, %i.fr
  %i.ft = mul nsw i32 %i.fs, %i.dv
  %i.fu = icmp sgt i32 %i.ft, -1
  br i1 %i.fu, label %._crit_edge16.loopexit.split.loop.exit.i.us.us.us.us.us.us.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next23.i.us.us.us.us.us.us.i = add nuw nsw i64 %indvars.iv22.i.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond26.not.i.us.us.us.us.us.us.i = icmp eq i64 %indvars.iv.next23.i.us.us.us.us.us.us.i, %wide.trip.count.i.us.us.us.us.us.us.i
  br i1 %exitcond26.not.i.us.us.us.us.us.us.i, label %._crit_edge16.loopexit.i.us.us.us.us.us.us.i, label %.lr.ph15.i.us.us.us.us.us.us.i, !llvm.loop !66

._crit_edge16.loopexit.split.loop.exit.i.us.us.us.us.us.us.i: ; preds = %bb.o
  %i.fv = trunc nuw nsw i64 %indvars.iv22.i.us.us.us.us.us.us.i to i32
  br label %._crit_edge16.loopexit.i.us.us.us.us.us.us.i

._crit_edge16.loopexit.i.us.us.us.us.us.us.i:     ; preds = %bb.p, %._crit_edge16.loopexit.split.loop.exit.i.us.us.us.us.us.us.i
  %.1.lcssa.ph.i.us.us.us.us.us.us.i = phi i32 [ %i.fv, %._crit_edge16.loopexit.split.loop.exit.i.us.us.us.us.us.us.i ], [ %.val.us.us.us.us.us.us.i, %bb.p ]
  %i.fw = uitofp nneg i32 %.1.lcssa.ph.i.us.us.us.us.us.us.i to float
  %i.fx = fadd nsz float %i.ew, %i.fw
  br label %._crit_edge16.i.us.us.us.us.us.us.i

._crit_edge16.i.us.us.us.us.us.us.i:              ; preds = %._crit_edge16.loopexit.i.us.us.us.us.us.us.i, %bb.k
  %.1.lcssa.i.us.us.us.us.us.us.i = phi float [ 0.000000e+00, %bb.k ], [ %i.fx, %._crit_edge16.loopexit.i.us.us.us.us.us.us.i ] ; 2 uses
  %or.cond6.i.us.us.us.us.us.us.i = icmp ult i8 %i.di, 2
  %i.fy = fpext nnan nsz float %.1.lcssa.i.us.us.us.us.us.us.i to double
  %i.fz = fmul nnan nsz double %i.fy, f0x3FE6666666666666
  %i.ga = fptrunc nsz double %i.fz to float
  %.090.i.us.us.us.us.us.us.i = select nsz i1 %or.cond6.i.us.us.us.us.us.us.i, float %i.ga, float %.1.lcssa.i.us.us.us.us.us.us.i
  %i.gb = fpext nsz float %.090.i.us.us.us.us.us.us.i to double
  br label %edge_width.exit.us.us.us.us.us.us.i

edge_width.exit.us.us.us.us.us.us.i:              ; preds = %bb.l, %.lr.ph.i.us.us.us.us.us.us.i, %.lr.ph15.i.us.us.us.us.us.us.i, %._crit_edge16.i.us.us.us.us.us.us.i, %._crit_edge.i.us.us.us.us.us.us.i, %.lr.ph.preheader.i.us.us.us.us.us.us.i
  %.091.i.us.us.us.us.us.us.i = phi double [ %i.gb, %._crit_edge16.i.us.us.us.us.us.us.i ], [ 0.000000e+00, %._crit_edge.i.us.us.us.us.us.us.i ], [ 0.000000e+00, %.lr.ph15.i.us.us.us.us.us.us.i ], [ 0.000000e+00, %.lr.ph.preheader.i.us.us.us.us.us.us.i ], [ 0.000000e+00, %.lr.ph.i.us.us.us.us.us.us.i ], [ 0.000000e+00, %bb.l ] ; 2 uses
  %i.gc = fcmp nsz ogt double %.091.i.us.us.us.us.us.us.i, 1.000000e-03 ; 2 uses
  %i.gd = fadd nsz double %.1218275.us.us.us.us.us.us.i, %.091.i.us.us.us.us.us.us.i
  %.2219.us.us.us.us.us.us.i = select nsz i1 %i.gc, double %i.gd, double %.1218275.us.us.us.us.us.us.i
  %i.ge = zext i1 %i.gc to i32
  %.2215.us.us.us.us.us.us.i = add nsw i32 %.1214276.us.us.us.us.us.us.i, %i.ge
  br label %bb.q

bb.q:                                             ; preds = %edge_width.exit.us.us.us.us.us.us.i, %bb.i
  %.3220.us.us.us.us.us.us.i = phi nsz double [ %.2219.us.us.us.us.us.us.i, %edge_width.exit.us.us.us.us.us.us.i ], [ %.1218275.us.us.us.us.us.us.i, %bb.i ] ; 4 uses
  %.3216.us.us.us.us.us.us.i = phi i32 [ %.2215.us.us.us.us.us.us.i, %edge_width.exit.us.us.us.us.us.us.i ], [ %.1214276.us.us.us.us.us.us.i, %bb.i ] ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %2
  br i1 %exitcond.not.i, label %._crit_edge.us.us.us.us.us.us.i, label %bb.i, !llvm.loop !67

._crit_edge.us.us.us.us.us.us.i:                  ; preds = %bb.q
  %indvars.iv.next.i.a = add nuw nsw i64 %indvars.iv.i.a, 1 ; 2 uses
  %exitcond351.not.i = icmp eq i64 %indvars.iv.next.i.a, %i.cv
  br i1 %exitcond351.not.i, label %._crit_edge282.split.us.us.us.us.us.us.i, label %.preheader263.us.us.us.us.us.us.i, !llvm.loop !68

._crit_edge282.split.us.us.us.us.us.us.i:         ; preds = %._crit_edge.us.us.us.us.us.us.i
  %i.gf = fcmp nsz oge double %.3220.us.us.us.us.us.us.i, 2.000000e+00
  %i.gg = icmp ne i32 %.3216.us.us.us.us.us.us.i, 0
  %or.cond.us.us.us.us.us.i = select i1 %i.gf, i1 %i.gg, i1 false
  br i1 %or.cond.us.us.us.us.us.i, label %bb.g, label %bb.h

._crit_edge.split.us.split.us.us.us.us.i:         ; preds = %bb.h
  %indvars.iv.next354.i.a = add nuw nsw i64 %indvars.iv353.i.a, 1 ; 2 uses
  %exitcond357.not.i = icmp eq i64 %indvars.iv.next354.i.a, %wide.trip.count356.i.a
  br i1 %exitcond357.not.i, label %._crit_edge298.i, label %.preheader265.us.us.us.i, !llvm.loop !69

._crit_edge298.i:                                 ; preds = %._crit_edge.split.us.split.us.us.us.us.i, %.preheader265.lr.ph.i, %bb.f
  %.0192.lcssa.i = phi i32 [ 0, %bb.f ], [ 0, %.preheader265.lr.ph.i ], [ %.2.us.us.us.us.us.i, %._crit_edge.split.us.split.us.us.us.us.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr %i.ca, ptr %i.a, align 16, !tbaa !70
  %i.gh = sext i32 %.0192.lcssa.i to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.gh
  %i.gj = getelementptr inbounds i8, ptr %i.gi, i64 -4
  store ptr %i.gj, ptr %i.an, align 8, !tbaa !70
  br label %bb.r

bb.r:                                             ; preds = %.thread.i, %._crit_edge298.i
  %.0208327.i = phi i32 [ 1, %._crit_edge298.i ], [ %.1209270.i, %.thread.i ] ; 2 uses
  %i.gk = add nsw i32 %.0208327.i, -1             ; 2 uses
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.gl ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 16, !tbaa !70 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !70 ; 2 uses
  %i.gq = icmp ult ptr %i.gn, %i.gp
  br i1 %i.gq, label %.lr.ph322.preheader.i, label %.thread.i

.lr.ph322.preheader.i:                            ; preds = %bb.r
  %i.gr = sext i32 %.0208327.i to i64
  %i.gs = add nsw i64 %i.gr, -1
  br label %.lr.ph322.i

.lr.ph322.i:                                      ; preds = %bb.ak, %.lr.ph322.preheader.i
  %indvars.iv358.i = phi i64 [ %i.gs, %.lr.ph322.preheader.i ], [ %indvars.iv.next359.i, %bb.ak ] ; 6 uses
  %.0202320.i = phi ptr [ %i.gp, %.lr.ph322.preheader.i ], [ %.1203.i, %bb.ak ] ; 13 uses
  %.0205319.i = phi ptr [ %i.gn, %.lr.ph322.preheader.i ], [ %.1206.i, %bb.ak ] ; 12 uses
  %i.gt = getelementptr inbounds i8, ptr %.0202320.i, i64 -4 ; 6 uses
  %i.gu = icmp ult ptr %.0205319.i, %i.gt
  br i1 %i.gu, label %bb.s, label %bb.al

bb.s:                                             ; preds = %.lr.ph322.i
  %i.gv = getelementptr inbounds i8, ptr %.0202320.i, i64 -8 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.0205319.i, i64 4 ; 3 uses
  %i.gx = ptrtoint ptr %.0202320.i to i64         ; 2 uses
  %i.gy = ptrtoint ptr %.0205319.i to i64         ; 2 uses
  %i.gz = sub i64 %i.gx, %i.gy
  %i.ha = ashr i64 %i.gz, 3
  %i.hb = getelementptr inbounds [4 x i8], ptr %.0205319.i, i64 %i.ha ; 8 uses
  %.0205.val248.i = load float, ptr %.0205319.i, align 4, !tbaa !20 ; 5 uses
  %.0202.val249.i = load float, ptr %.0202320.i, align 4, !tbaa !20 ; 4 uses
  %i.hc = fcmp nsz ogt float %.0205.val248.i, %.0202.val249.i
  %.val247.i = load float, ptr %i.hb, align 4, !tbaa !20 ; 5 uses
  br i1 %i.hc, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.hd = fcmp nsz ogt float %.0202.val249.i, %.val247.i
  br i1 %i.hd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store float %.0205.val248.i, ptr %i.hb, align 4, !tbaa !20
  br label %.sink.split.i

bb.v:                                             ; preds = %bb.t
  store float %.0205.val248.i, ptr %.0202320.i, align 4, !tbaa !20
  br label %.sink.split.i

bb.w:                                             ; preds = %bb.s
  %i.he = fcmp nsz ogt float %.0205.val248.i, %.val247.i
  br i1 %i.he, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store float %.0205.val248.i, ptr %i.hb, align 4, !tbaa !20
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.x, %bb.v, %bb.u
  %.val247.sink.i = phi float [ %.val247.i, %bb.x ], [ %.val247.i, %bb.u ], [ %.0202.val249.i, %bb.v ]
  store float %.val247.sink.i, ptr %.0205319.i, align 4, !tbaa !20
  %.val242.i.pre = load float, ptr %i.hb, align 4, !tbaa !20
  %.0202.val243.i.pre = load float, ptr %.0202320.i, align 4, !tbaa !20
  br label %bb.y

bb.y:                                             ; preds = %.sink.split.i, %bb.w
  %.0202.val243.i = phi float [ %.0202.val249.i, %bb.w ], [ %.0202.val243.i.pre, %.sink.split.i ] ; 3 uses
  %.val242.i = phi float [ %.val247.i, %bb.w ], [ %.val242.i.pre, %.sink.split.i ] ; 3 uses
  %.0200.i = phi i32 [ 1, %bb.w ], [ 0, %.sink.split.i ]
  %i.hf = fcmp nsz ogt float %.val242.i, %.0202.val243.i
  br i1 %i.hf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store float %.val242.i, ptr %.0202320.i, align 4, !tbaa !20
  store float %.0202.val243.i, ptr %i.hb, align 4, !tbaa !20
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.hg = phi float [ %.0202.val243.i, %bb.z ], [ %.val242.i, %bb.y ] ; 2 uses
  %.1201.i = phi i32 [ 0, %bb.z ], [ %.0200.i, %bb.y ]
  %i.hh = icmp eq ptr %.0205319.i, %i.gv
  br i1 %i.hh, label %.thread.loopexit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hi = load float, ptr %i.gt, align 4, !tbaa !20
  store float %i.hi, ptr %i.hb, align 4, !tbaa !20
  store float %i.hg, ptr %i.gt, align 4, !tbaa !20
  %.not232313.i = icmp ugt ptr %i.gw, %i.gv
  br i1 %.not232313.i, label %._crit_edge.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ab, %.critedge237.i
  %.0194315.i = phi ptr [ %.2196.i, %.critedge237.i ], [ %i.gw, %bb.ab ]
  %.0197314.i = phi ptr [ %.2199.i, %.critedge237.i ], [ %i.gv, %bb.ab ] ; 4 uses
  %.val241.i = load float, ptr %i.gt, align 4, !tbaa !20 ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %.preheader.i
  %.1195309.i = phi ptr [ %.0194315.i, %.preheader.i ], [ %i.hk, %bb.ad ] ; 3 uses
  %.1195.val.i = load float, ptr %.1195309.i, align 4, !tbaa !20
  %i.hj = fcmp nsz olt float %.1195.val.i, %.val241.i
  br i1 %i.hj, label %bb.ad, label %.critedge.i

bb.ad:                                            ; preds = %bb.ac
  %i.hk = getelementptr inbounds nuw i8, ptr %.1195309.i, i64 4 ; 3 uses
  %.not234.i = icmp ugt ptr %i.hk, %.0197314.i
  br i1 %.not234.i, label %.critedge.i, label %bb.ac, !llvm.loop !71

.critedge.i:                                      ; preds = %bb.ad, %bb.ac
  %.1195.lcssa.i = phi ptr [ %i.hk, %bb.ad ], [ %.1195309.i, %bb.ac ] ; 7 uses
  %.not235310.i = icmp ugt ptr %.1195.lcssa.i, %.0197314.i
  br i1 %.not235310.i, label %.critedge237.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.i, %bb.ae
  %.1198311.i = phi ptr [ %i.hm, %bb.ae ], [ %.0197314.i, %.critedge.i ] ; 4 uses
  %.1198.val.i = load float, ptr %.1198311.i, align 4, !tbaa !20 ; 2 uses
  %i.hl = fcmp nsz ogt float %.1198.val.i, %.val241.i
  br i1 %i.hl, label %bb.ae, label %.critedge3.i

bb.ae:                                            ; preds = %.lr.ph.i
  %i.hm = getelementptr inbounds i8, ptr %.1198311.i, i64 -4 ; 3 uses
  %.not235.i = icmp ugt ptr %.1195.lcssa.i, %i.hm
  br i1 %.not235.i, label %.critedge237.i, label %.lr.ph.i, !llvm.loop !72

.critedge3.i:                                     ; preds = %.lr.ph.i
  %i.hn = load float, ptr %.1195.lcssa.i, align 4, !tbaa !20
  store float %i.hn, ptr %.1198311.i, align 4, !tbaa !20
  store float %.1198.val.i, ptr %.1195.lcssa.i, align 4, !tbaa !20
  %i.ho = getelementptr inbounds nuw i8, ptr %.1195.lcssa.i, i64 4
  %i.hp = getelementptr inbounds i8, ptr %.1198311.i, i64 -4
  br label %.critedge237.i

.critedge237.i:                                   ; preds = %bb.ae, %.critedge3.i, %.critedge.i
  %.2199.i = phi ptr [ %i.hp, %.critedge3.i ], [ %.0197314.i, %.critedge.i ], [ %i.hm, %bb.ae ] ; 3 uses
  %.2196.i = phi ptr [ %i.ho, %.critedge3.i ], [ %.1195.lcssa.i, %.critedge.i ], [ %.1195.lcssa.i, %bb.ae ] ; 3 uses
  %.not232.i = icmp ugt ptr %.2196.i, %.2199.i
  br i1 %.not232.i, label %._crit_edge.loopexit.i, label %.preheader.i, !llvm.loop !73

._crit_edge.loopexit.i:                           ; preds = %.critedge237.i
  %.pre.i = load float, ptr %i.gt, align 4, !tbaa !20
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.ab
  %i.hq = phi float [ %i.hg, %bb.ab ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.0197.lcssa.i = phi ptr [ %i.gv, %bb.ab ], [ %.2199.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.0194.lcssa.i = phi ptr [ %i.gw, %bb.ab ], [ %.2196.i, %._crit_edge.loopexit.i ] ; 7 uses
  %i.hr = load float, ptr %.0194.lcssa.i, align 4, !tbaa !20
  store float %i.hq, ptr %.0194.lcssa.i, align 4, !tbaa !20
  store float %i.hr, ptr %i.gt, align 4, !tbaa !20
  %.not233.i = icmp eq i32 %.1201.i, 0
  br i1 %.not233.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %._crit_edge.i
  %i.hs = getelementptr inbounds i8, ptr %.0194.lcssa.i, i64 -4
  %i.ht = icmp eq ptr %i.hb, %i.hs
  %i.hu = icmp eq ptr %i.hb, %.0194.lcssa.i
  %or.cond238.i = or i1 %i.hu, %i.ht
  br i1 %or.cond238.i, label %.preheader261.i, label %bb.ah

.preheader261.i:                                  ; preds = %bb.af, %bb.ag
  %.0193.i = phi ptr [ %i.hw, %bb.ag ], [ %.0205319.i, %bb.af ] ; 4 uses
  %i.hv = icmp ult ptr %.0193.i, %.0202320.i
  br i1 %i.hv, label %bb.ag, label %.critedge5.i

bb.ag:                                            ; preds = %.preheader261.i
  %i.hw = getelementptr inbounds nuw i8, ptr %.0193.i, i64 4 ; 2 uses
  %.0193.val.i = load float, ptr %.0193.i, align 4, !tbaa !20
  %.val239.i = load float, ptr %i.hw, align 4, !tbaa !20
  %i.hx = fcmp nsz ule float %.0193.val.i, %.val239.i
  br i1 %i.hx, label %.preheader261.i, label %.critedge5.i, !llvm.loop !74

.critedge5.i:                                     ; preds = %bb.ag, %.preheader261.i
  %i.hy = icmp eq ptr %.0193.i, %.0202320.i
end_hunk_0
