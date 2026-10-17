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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.e = load <2 x float>, ptr %i.c, align 4, !tbaa !21
  %i.f = fpext <2 x float> %i.e to <2 x double>
  %i.g = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.f, <2 x double> splat (double 2.550000e+02), <2 x double> splat (double 5.000000e-01))
  %i.h = fptoui <2 x double> %i.g to <2 x i8>     ; 2 uses
  %i.i = extractelement <2 x i8> %i.h, i64 0
  store i8 %i.i, ptr %i.d, align 4, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 29
  %i.k = extractelement <2 x i8> %i.h, i64 1
  store i8 %i.k, ptr %i.j, align 1, !tbaa !28
  ret i32 0
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @blurdetect_uninit(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 7 uses
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 17 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41   ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !43   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !44   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.v = load i32, ptr %i.u, align 4, !tbaa !45   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i32, ptr %i.w, align 8, !tbaa !46   ; 2 uses
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
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !70
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !29
  %i.bb = call i32 @ff_filter_frame(ptr noundef %i.i, ptr noundef %1) #9
  ret i32 %i.bb

bb.c:                                             ; preds = %.lr.ph, %bb.ao
  %i.bc = phi i32 [ %i.s, %.lr.ph ], [ %i.kc, %bb.ao ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ao ] ; 5 uses
  %.097113 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.ao ] ; 2 uses
  %.098112 = phi float [ 0.000000e+00, %.lr.ph ], [ %.199, %bb.ao ] ; 2 uses
  %i.bd = trunc i64 %indvars.iv to i32
  %i.be = add i32 %i.bd, -1
  %or.cond = icmp ult i32 %i.be, 2
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bf = load i32, ptr %i.y, align 8, !tbaa !71
  %i.bg = load i32, ptr %i.z, align 4, !tbaa !72
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bh = phi i32 [ %i.bf, %bb.d ], [ 0, %bb.c ]  ; 2 uses
  %i.bi = phi i32 [ %i.bg, %bb.d ], [ 0, %bb.c ]  ; 2 uses
  %i.bj = ashr i32 %i.aa, %i.bh                   ; 2 uses
  %i.bk = sub nsw i32 0, %i.bj                    ; 17 uses
  %i.bl = ashr i32 %i.ab, %i.bi
  %i.bm = sub nsw i32 0, %i.bl                    ; 6 uses
  %i.bn = trunc nuw nsw i64 %indvars.iv to i32
  %i.bo = shl nuw i32 1, %i.bn
  %i.bp = load i32, ptr %i.ac, align 8, !tbaa !73
  %i.bq = and i32 %i.bp, %i.bo
  %.not100 = icmp eq i32 %i.bq, 0
  br i1 %.not100, label %bb.ao, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.br = add i32 %.097113, 1
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !74
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !47
  tail call void @ff_gaussian_blur_8(i32 noundef %i.bk, i32 noundef %i.bm, ptr noundef %i.m, i32 noundef %i.bk, ptr noundef %i.bt, i32 noundef %i.bv, i32 noundef 1) #9
  tail call void @ff_sobel_8(i32 noundef %i.bk, i32 noundef %i.bm, ptr noundef %i.o, i32 noundef %i.bk, ptr noundef %i.q, i32 noundef %i.bk, ptr noundef %i.m, i32 noundef %i.bk, i32 noundef 1) #9
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.k, i8 0, i64 %i.af, i1 false)
  tail call void @ff_non_maximum_suppression(i32 noundef %i.bk, i32 noundef %i.bm, ptr noundef %i.k, i32 noundef %i.bk, ptr noundef %i.q, i32 noundef %i.bk, ptr noundef %i.o, i32 noundef %i.bk) #9
  %i.bw = load i8, ptr %i.ag, align 4, !tbaa !27
  %i.bx = zext i8 %i.bw to i32
  %i.by = load i8, ptr %i.ah, align 1, !tbaa !28
  %i.bz = zext i8 %i.by to i32
  tail call void @ff_double_threshold(i32 noundef %i.bx, i32 noundef %i.bz, i32 noundef %i.bk, i32 noundef %i.bm, ptr noundef %i.k, i32 noundef %i.bk, ptr noundef %i.k, i32 noundef %i.bk) #9
  %i.ca = load ptr, ptr %i.ai, align 8, !tbaa !48 ; 12 uses
  %i.cb = load i32, ptr %i.aj, align 4, !tbaa !75
  %i.cc = sitofp nsz i32 %i.cb to double
  %i.cd = fdiv nnan nsz double %i.cc, 1.000000e+02
  %i.ce = fptrunc nnan nsz double %i.cd to float
  %i.cf = load i32, ptr %i.ak, align 8, !tbaa !49
  %i.cg = sub nsw i32 0, %i.cf
  %i.ch = ashr i32 %i.cg, %i.bh                   ; 2 uses
  %i.ci = sub nsw i32 0, %i.ch                    ; 3 uses
  %i.cj = load i32, ptr %i.al, align 4, !tbaa !50
  %i.ck = sub nsw i32 0, %i.cj
  %i.cl = ashr i32 %i.ck, %i.bi                   ; 2 uses
  %i.cm = sub nsw i32 0, %i.cl                    ; 2 uses
  %i.cn = sdiv i32 %i.bm, %i.cm                   ; 2 uses
  %i.co = sdiv i32 %i.bk, %i.ci                   ; 2 uses
  %i.cp = icmp sgt i32 %i.cn, 0
  br i1 %i.cp, label %.preheader265.lr.ph.i, label %._crit_edge298.i

.preheader265.lr.ph.i:                            ; preds = %bb.f
  %i.cq = icmp slt i32 %i.co, 1
  %i.cr = sext i32 %i.bk to i64                   ; 5 uses
  %i.cs = sext i32 %i.bm to i64                   ; 2 uses
  %i.ct = and i32 %i.ch, %i.cl
  %i.cu = icmp sgt i32 %i.ct, -1
  %brmerge.i = or i1 %i.cu, %i.cq
  br i1 %brmerge.i, label %._crit_edge298.i, label %.preheader265.us.us.us.preheader.i

.preheader265.us.us.us.preheader.i:               ; preds = %.preheader265.lr.ph.i
  %i.cv = zext nneg i32 %i.cm to i64              ; 2 uses
  %wide.trip.count356.i.a = zext nneg i32 %i.cn to i64
  br label %.preheader265.us.us.us.i

.preheader265.us.us.us.i:                         ; preds = %._crit_edge.split.us.split.us.us.us.us.i, %.preheader265.us.us.us.preheader.i
  %indvars.iv353.i.a = phi i64 [ 0, %.preheader265.us.us.us.preheader.i ], [ %indvars.iv.next354.i.a, %._crit_edge.split.us.split.us.us.us.us.i ] ; 2 uses
  %.0192297.us.us.us.i = phi i32 [ 0, %.preheader265.us.us.us.preheader.i ], [ %.2.us.us.us.us.us.i, %._crit_edge.split.us.split.us.us.us.us.i ]
  %i.cw = mul nuw nsw i64 %indvars.iv353.i.a, %i.cv
  br label %.preheader264.us.us.us.us.us.i

.preheader264.us.us.us.us.us.i:                   ; preds = %bb.q, %.preheader265.us.us.us.i
  %.1289.us.us.us.us.us.i = phi i32 [ %.0192297.us.us.us.i, %.preheader265.us.us.us.i ], [ %.2.us.us.us.us.us.i, %bb.q ] ; 3 uses
  %.0221288.us.us.us.us.us.i = phi i32 [ 0, %.preheader265.us.us.us.i ], [ %10, %bb.q ] ; 2 uses
  %2 = mul nuw nsw i32 %.0221288.us.us.us.us.us.i, %i.ci
  br label %.preheader263.us.us.us.us.us.us.i

.preheader263.us.us.us.us.us.us.i:                ; preds = %._crit_edge.us.us.us.us.us.us.i, %.preheader264.us.us.us.us.us.i
  %indvars.iv.i.a = phi i64 [ %indvars.iv.next.i.a, %._crit_edge.us.us.us.us.us.us.i ], [ 0, %.preheader264.us.us.us.us.us.i ] ; 2 uses
  %.0213280.us.us.us.us.us.us.i = phi i32 [ %.3216.us.us.us.us.us.us.i, %._crit_edge.us.us.us.us.us.us.i ], [ 0, %.preheader264.us.us.us.us.us.i ]
  %.0217279.us.us.us.us.us.us.i = phi double [ %.3220.us.us.us.us.us.us.i, %._crit_edge.us.us.us.us.us.us.i ], [ 0.000000e+00, %.preheader264.us.us.us.us.us.i ]
  %i.cx = add nuw nsw i64 %indvars.iv.i.a, %i.cw  ; 3 uses
  %3 = trunc nuw i64 %i.cx to i32                 ; 2 uses
  %4 = mul nsw i32 %i.bk, %3
  br label %bb.g

bb.g:                                             ; preds = %bb.o, %.preheader263.us.us.us.us.us.us.i
  %.0211277.us.us.us.us.us.us.i = phi i32 [ 0, %.preheader263.us.us.us.us.us.us.i ], [ %9, %bb.o ] ; 2 uses
  %.1214276.us.us.us.us.us.us.i = phi i32 [ %.0213280.us.us.us.us.us.us.i, %.preheader263.us.us.us.us.us.us.i ], [ %.3216.us.us.us.us.us.us.i, %bb.o ] ; 2 uses
  %.1218275.us.us.us.us.us.us.i = phi double [ %.0217279.us.us.us.us.us.us.i, %.preheader263.us.us.us.us.us.us.i ], [ %.3220.us.us.us.us.us.us.i, %bb.o ] ; 3 uses
  %5 = add nuw nsw i32 %.0211277.us.us.us.us.us.us.i, %2
  %.fr335.i = freeze i32 %5                       ; 4 uses
  %i.cy = add nsw i32 %.fr335.i, %4
  %6 = sext i32 %i.cy to i64                      ; 3 uses
  %i.cz = getelementptr inbounds i8, ptr %i.k, i64 %6
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !51
  %.not236.us.us.us.us.us.us.i = icmp eq i8 %i.da, 0
  br i1 %.not236.us.us.us.us.us.us.i, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.db = getelementptr inbounds i8, ptr %i.q, i64 %6
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !51  ; 4 uses
  %.val.us.us.us.us.us.us.i = load i32, ptr %i.am, align 8, !tbaa !76 ; 4 uses
  %i.dd = icmp ult i8 %i.dc, 4
  br i1 %i.dd, label %switch.lookup, label %bb.i

switch.lookup:                                    ; preds = %bb.h
  %i.de = zext nneg i8 %i.dc to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.blurdetect_filter_frame, i64 %i.de
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.df = zext nneg i8 %i.dc to i64
  %switch.gep179 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.blurdetect_filter_frame.4, i64 %i.df
  %switch.load180 = load i32, ptr %switch.gep179, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %switch.lookup
  %.089.i.us.us.us.us.us.us.i = phi i32 [ %switch.ext, %switch.lookup ], [ 1, %bb.h ] ; 3 uses
  %.088.i.us.us.us.us.us.us.i = phi i32 [ %switch.load180, %switch.lookup ], [ 1, %bb.h ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.m, i64 %6
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !51
  %.neg = sub i32 %.088.i.us.us.us.us.us.us.i, %3
  %i.di = mul i32 %.neg, %i.bj
  %i.dj = sub i32 %.fr335.i, %.089.i.us.us.us.us.us.us.i ; 2 uses
  %i.dk = add i32 %i.di, %i.dj
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds i8, ptr %i.m, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !51
  %i.do = icmp ugt i8 %i.dh, %i.dn
  %i.dp = select i1 %i.do, i32 1, i32 -1          ; 2 uses
  %i.dq = icmp sgt i32 %.val.us.us.us.us.us.us.i, 0
  br i1 %i.dq, label %.lr.ph.preheader.i.us.us.us.us.us.us.i, label %._crit_edge16.i.us.us.us.us.us.us.i

.lr.ph.preheader.i.us.us.us.us.us.us.i:           ; preds = %bb.i
  %7 = zext nneg i32 %.089.i.us.us.us.us.us.us.i to i64 ; 4 uses
  %i.dr = zext nneg i32 %.fr335.i to i64          ; 2 uses
  %i.ds = sext i32 %.088.i.us.us.us.us.us.us.i to i64 ; 4 uses
  %wide.trip.count.i.us.us.us.us.us.us.i = zext nneg i32 %.val.us.us.us.us.us.us.i to i64 ; 2 uses
  %8 = icmp slt i32 %i.dj, %i.bk
  br i1 %8, label %.lr.ph.i.us.us.us.us.us.us.i, label %edge_width.exit.us.us.us.us.us.us.i

.lr.ph.i.us.us.us.us.us.us.i:                     ; preds = %.lr.ph.preheader.i.us.us.us.us.us.us.i, %bb.l
  %indvars.iv.i.us.us.us.us.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.us.us.us.us.i, %bb.l ], [ 0, %.lr.ph.preheader.i.us.us.us.us.us.us.i ] ; 4 uses
  %i.dt = mul nuw nsw i64 %indvars.iv.i.us.us.us.us.us.us.i, %7
  %i.du = sub nsw i64 %i.dr, %i.dt                ; 2 uses
  %i.dv = mul nsw i64 %indvars.iv.i.us.us.us.us.us.us.i, %i.ds
  %i.dw = sub nsw i64 %i.cx, %i.dv                ; 2 uses
  %i.dx = mul nsw i64 %i.dw, %i.cr
  %i.dy = sub nsw i64 %i.du, %7                   ; 2 uses
  %i.dz = sub nsw i64 %i.dw, %i.ds                ; 3 uses
  %i.ea = mul nsw i64 %i.dz, %i.cr
  %i.eb = icmp slt i64 %i.dy, 0
  br i1 %i.eb, label %edge_width.exit.us.us.us.us.us.us.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.us.us.us.us.us.us.i
  %i.ec = icmp sgt i64 %i.dz, -1
  %.not.i.us.us.us.us.us.us.i = icmp slt i64 %i.dz, %i.cs
  %i.ed = and i1 %i.ec, %.not.i.us.us.us.us.us.us.i
  br i1 %i.ed, label %bb.k, label %edge_width.exit.us.us.us.us.us.us.i

bb.k:                                             ; preds = %bb.j
  %i.ee = getelementptr i8, ptr %i.m, i64 %i.dx
  %i.ef = getelementptr i8, ptr %i.ee, i64 %i.du
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !51
  %i.eh = zext i8 %i.eg to i32
  %i.ei = getelementptr i8, ptr %i.m, i64 %i.ea
  %i.ej = getelementptr i8, ptr %i.ei, i64 %i.dy
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !51
  %i.el = zext i8 %i.ek to i32
  %i.em = sub nsw i32 %i.eh, %i.el
  %i.en = mul nsw i32 %i.em, %i.dp
  %i.eo = icmp slt i32 %i.en, 1
  br i1 %i.eo, label %._crit_edge.split.loop.exit29.i.us.us.us.us.us.us.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next.i.us.us.us.us.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond.not.i.us.us.us.us.us.us.i = icmp eq i64 %indvars.iv.next.i.us.us.us.us.us.us.i, %wide.trip.count.i.us.us.us.us.us.us.i
  br i1 %exitcond.not.i.us.us.us.us.us.us.i, label %._crit_edge.i.us.us.us.us.us.us.i, label %.lr.ph.i.us.us.us.us.us.us.i, !llvm.loop !52

._crit_edge.split.loop.exit29.i.us.us.us.us.us.us.i: ; preds = %bb.k
  %i.ep = trunc nuw nsw i64 %indvars.iv.i.us.us.us.us.us.us.i to i32
  br label %._crit_edge.i.us.us.us.us.us.us.i

._crit_edge.i.us.us.us.us.us.us.i:                ; preds = %bb.l, %._crit_edge.split.loop.exit29.i.us.us.us.us.us.us.i
  %.0.lcssa.ph.i.us.us.us.us.us.us.i = phi i32 [ %i.ep, %._crit_edge.split.loop.exit29.i.us.us.us.us.us.us.i ], [ %.val.us.us.us.us.us.us.i, %bb.l ]
  %i.eq = uitofp nsz nneg i32 %.0.lcssa.ph.i.us.us.us.us.us.us.i to float
  %i.er = add i32 %.089.i.us.us.us.us.us.us.i, %.fr335.i
  %i.es = icmp slt i32 %i.er, 0
  br i1 %i.es, label %edge_width.exit.us.us.us.us.us.us.i, label %.lr.ph15.i.us.us.us.us.us.us.i

.lr.ph15.i.us.us.us.us.us.us.i:                   ; preds = %._crit_edge.i.us.us.us.us.us.us.i, %bb.n
  %indvars.iv22.i.us.us.us.us.us.us.i = phi i64 [ %indvars.iv.next23.i.us.us.us.us.us.us.i, %bb.n ], [ 0, %._crit_edge.i.us.us.us.us.us.us.i ] ; 4 uses
  %i.et = mul nuw nsw i64 %indvars.iv22.i.us.us.us.us.us.us.i, %7
  %i.eu = add nuw nsw i64 %i.et, %i.dr            ; 2 uses
  %i.ev = mul nsw i64 %indvars.iv22.i.us.us.us.us.us.us.i, %i.ds
  %i.ew = add nsw i64 %i.ev, %i.cx                ; 2 uses
  %i.ex = add nuw nsw i64 %i.eu, %7               ; 2 uses
  %i.ey = add nsw i64 %i.ew, %i.ds                ; 3 uses
  %i.ez = icmp slt i64 %i.ex, %i.cr
  %i.fa = icmp sgt i64 %i.ey, -1
  %.not96.i.us.us.us.us.us.us.i = icmp slt i64 %i.ey, %i.cs
  %i.fb = and i1 %i.fa, %.not96.i.us.us.us.us.us.us.i
  %or.cond98.i.us.us.us.us.us.us.i = select i1 %i.ez, i1 %i.fb, i1 false
  br i1 %or.cond98.i.us.us.us.us.us.us.i, label %bb.m, label %edge_width.exit.us.us.us.us.us.us.i

bb.m:                                             ; preds = %.lr.ph15.i.us.us.us.us.us.us.i
  %i.fc = mul nsw i64 %i.ey, %i.cr
  %i.fd = mul nsw i64 %i.ew, %i.cr
  %i.fe = getelementptr i8, ptr %i.m, i64 %i.fd
  %i.ff = getelementptr i8, ptr %i.fe, i64 %i.eu
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !51
  %i.fh = zext i8 %i.fg to i32
  %i.fi = getelementptr i8, ptr %i.m, i64 %i.fc
  %i.fj = getelementptr i8, ptr %i.fi, i64 %i.ex
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !51
  %i.fl = zext i8 %i.fk to i32
  %i.fm = sub nsw i32 %i.fh, %i.fl
  %i.fn = mul nsw i32 %i.fm, %i.dp
  %i.fo = icmp sgt i32 %i.fn, -1
  br i1 %i.fo, label %._crit_edge16.loopexit.split.loop.exit.i.us.us.us.us.us.us.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next23.i.us.us.us.us.us.us.i = add nuw nsw i64 %indvars.iv22.i.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond26.not.i.us.us.us.us.us.us.i = icmp eq i64 %indvars.iv.next23.i.us.us.us.us.us.us.i, %wide.trip.count.i.us.us.us.us.us.us.i
  br i1 %exitcond26.not.i.us.us.us.us.us.us.i, label %._crit_edge16.loopexit.i.us.us.us.us.us.us.i, label %.lr.ph15.i.us.us.us.us.us.us.i, !llvm.loop !53

._crit_edge16.loopexit.split.loop.exit.i.us.us.us.us.us.us.i: ; preds = %bb.m
  %i.fp = trunc nuw nsw i64 %indvars.iv22.i.us.us.us.us.us.us.i to i32
  br label %._crit_edge16.loopexit.i.us.us.us.us.us.us.i

._crit_edge16.loopexit.i.us.us.us.us.us.us.i:     ; preds = %bb.n, %._crit_edge16.loopexit.split.loop.exit.i.us.us.us.us.us.us.i
  %.1.lcssa.ph.i.us.us.us.us.us.us.i = phi i32 [ %i.fp, %._crit_edge16.loopexit.split.loop.exit.i.us.us.us.us.us.us.i ], [ %.val.us.us.us.us.us.us.i, %bb.n ]
  %i.fq = uitofp nsz nneg i32 %.1.lcssa.ph.i.us.us.us.us.us.us.i to float
  %i.fr = fadd nsz float %i.eq, %i.fq
  br label %._crit_edge16.i.us.us.us.us.us.us.i

._crit_edge16.i.us.us.us.us.us.us.i:              ; preds = %._crit_edge16.loopexit.i.us.us.us.us.us.us.i, %bb.i
  %.1.lcssa.i.us.us.us.us.us.us.i = phi float [ 0.000000e+00, %bb.i ], [ %i.fr, %._crit_edge16.loopexit.i.us.us.us.us.us.us.i ] ; 2 uses
  %or.cond6.i.us.us.us.us.us.us.i = icmp ult i8 %i.dc, 2
  %i.fs = fpext nnan nsz float %.1.lcssa.i.us.us.us.us.us.us.i to double
  %i.ft = fmul nnan nsz double %i.fs, f0x3FE6666666666666
  %i.fu = fptrunc nsz double %i.ft to float
  %.090.i.us.us.us.us.us.us.i = select nsz i1 %or.cond6.i.us.us.us.us.us.us.i, float %i.fu, float %.1.lcssa.i.us.us.us.us.us.us.i
  %i.fv = fpext nsz float %.090.i.us.us.us.us.us.us.i to double
  br label %edge_width.exit.us.us.us.us.us.us.i

edge_width.exit.us.us.us.us.us.us.i:              ; preds = %bb.j, %.lr.ph.i.us.us.us.us.us.us.i, %.lr.ph15.i.us.us.us.us.us.us.i, %._crit_edge16.i.us.us.us.us.us.us.i, %._crit_edge.i.us.us.us.us.us.us.i, %.lr.ph.preheader.i.us.us.us.us.us.us.i
  %.091.i.us.us.us.us.us.us.i = phi double [ %i.fv, %._crit_edge16.i.us.us.us.us.us.us.i ], [ 0.000000e+00, %._crit_edge.i.us.us.us.us.us.us.i ], [ 0.000000e+00, %.lr.ph15.i.us.us.us.us.us.us.i ], [ 0.000000e+00, %.lr.ph.preheader.i.us.us.us.us.us.us.i ], [ 0.000000e+00, %.lr.ph.i.us.us.us.us.us.us.i ], [ 0.000000e+00, %bb.j ] ; 2 uses
  %i.fw = fcmp nsz ogt double %.091.i.us.us.us.us.us.us.i, 1.000000e-03 ; 2 uses
  %i.fx = fadd nsz double %.1218275.us.us.us.us.us.us.i, %.091.i.us.us.us.us.us.us.i
  %.2219.us.us.us.us.us.us.i = select nsz i1 %i.fw, double %i.fx, double %.1218275.us.us.us.us.us.us.i
  %i.fy = zext i1 %i.fw to i32
  %.2215.us.us.us.us.us.us.i = add nsw i32 %.1214276.us.us.us.us.us.us.i, %i.fy
  br label %bb.o

bb.o:                                             ; preds = %edge_width.exit.us.us.us.us.us.us.i, %bb.g
  %.3220.us.us.us.us.us.us.i = phi nsz double [ %.2219.us.us.us.us.us.us.i, %edge_width.exit.us.us.us.us.us.us.i ], [ %.1218275.us.us.us.us.us.us.i, %bb.g ] ; 4 uses
  %.3216.us.us.us.us.us.us.i = phi i32 [ %.2215.us.us.us.us.us.us.i, %edge_width.exit.us.us.us.us.us.us.i ], [ %.1214276.us.us.us.us.us.us.i, %bb.g ] ; 4 uses
  %9 = add nuw nsw i32 %.0211277.us.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i32 %9, %i.ci
  br i1 %exitcond.not.i, label %._crit_edge.us.us.us.us.us.us.i, label %bb.g, !llvm.loop !54

._crit_edge.us.us.us.us.us.us.i:                  ; preds = %bb.o
  %indvars.iv.next.i.a = add nuw nsw i64 %indvars.iv.i.a, 1 ; 2 uses
  %exitcond351.not.i = icmp eq i64 %indvars.iv.next.i.a, %i.cv
  br i1 %exitcond351.not.i, label %._crit_edge282.split.us.us.us.us.us.us.i, label %.preheader263.us.us.us.us.us.us.i, !llvm.loop !55

._crit_edge282.split.us.us.us.us.us.us.i:         ; preds = %._crit_edge.us.us.us.us.us.us.i
  %i.fz = fcmp nsz oge double %.3220.us.us.us.us.us.us.i, 2.000000e+00
  %i.ga = icmp ne i32 %.3216.us.us.us.us.us.us.i, 0
  %or.cond.us.us.us.us.us.i = select i1 %i.fz, i1 %i.ga, i1 false
  br i1 %or.cond.us.us.us.us.us.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge282.split.us.us.us.us.us.us.i
  %i.gb = sitofp nsz i32 %.3216.us.us.us.us.us.us.i to double
  %i.gc = fdiv nsz double %.3220.us.us.us.us.us.us.i, %i.gb
  %i.gd = fptrunc nsz double %i.gc to float
  %i.ge = sext i32 %.1289.us.us.us.us.us.i to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.ge
  store float %i.gd, ptr %i.gf, align 4, !tbaa !21
  %i.gg = add nsw i32 %.1289.us.us.us.us.us.i, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge282.split.us.us.us.us.us.us.i
  %.2.us.us.us.us.us.i = phi i32 [ %i.gg, %bb.p ], [ %.1289.us.us.us.us.us.i, %._crit_edge282.split.us.us.us.us.us.us.i ] ; 3 uses
  %10 = add nuw nsw i32 %.0221288.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond352.not.i = icmp eq i32 %10, %i.co
  br i1 %exitcond352.not.i, label %._crit_edge.split.us.split.us.us.us.us.i, label %.preheader264.us.us.us.us.us.i, !llvm.loop !56

._crit_edge.split.us.split.us.us.us.us.i:         ; preds = %bb.q
  %indvars.iv.next354.i.a = add nuw nsw i64 %indvars.iv353.i.a, 1 ; 2 uses
  %exitcond357.not.i = icmp eq i64 %indvars.iv.next354.i.a, %wide.trip.count356.i.a
  br i1 %exitcond357.not.i, label %._crit_edge298.i, label %.preheader265.us.us.us.i, !llvm.loop !57

._crit_edge298.i:                                 ; preds = %._crit_edge.split.us.split.us.us.us.us.i, %.preheader265.lr.ph.i, %bb.f
  %.0192.lcssa.i = phi i32 [ 0, %bb.f ], [ 0, %.preheader265.lr.ph.i ], [ %.2.us.us.us.us.us.i, %._crit_edge.split.us.split.us.us.us.us.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr %i.ca, ptr %i.a, align 16, !tbaa !78
  %i.gh = sext i32 %.0192.lcssa.i to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.gh
  %i.gj = getelementptr inbounds i8, ptr %i.gi, i64 -4
  store ptr %i.gj, ptr %i.an, align 8, !tbaa !78
  br label %bb.r

bb.r:                                             ; preds = %.thread.i, %._crit_edge298.i
  %.0208327.i = phi i32 [ 1, %._crit_edge298.i ], [ %.1209270.i, %.thread.i ] ; 2 uses
  %i.gk = add nsw i32 %.0208327.i, -1             ; 2 uses
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.gl ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 16, !tbaa !78 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !78 ; 2 uses
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
  %i.gt = getelementptr inbounds i8, ptr %.0202320.i, i64 -4 ; 5 uses
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
  %.0205.val248.i = load float, ptr %.0205319.i, align 4, !tbaa !21 ; 5 uses
  %.0202.val249.i = load float, ptr %.0202320.i, align 4, !tbaa !21 ; 4 uses
  %i.hc = fcmp nsz ogt float %.0205.val248.i, %.0202.val249.i
  %.val247.i = load float, ptr %i.hb, align 4, !tbaa !21 ; 5 uses
  br i1 %i.hc, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.hd = fcmp nsz ogt float %.0202.val249.i, %.val247.i
  br i1 %i.hd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store float %.0205.val248.i, ptr %i.hb, align 4, !tbaa !21
  br label %.sink.split.i

bb.v:                                             ; preds = %bb.t
  store float %.0205.val248.i, ptr %.0202320.i, align 4, !tbaa !21
  br label %.sink.split.i

bb.w:                                             ; preds = %bb.s
  %i.he = fcmp nsz ogt float %.0205.val248.i, %.val247.i
  br i1 %i.he, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store float %.0205.val248.i, ptr %i.hb, align 4, !tbaa !21
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.x, %bb.v, %bb.u
  %.val247.sink.i = phi float [ %.val247.i, %bb.x ], [ %.val247.i, %bb.u ], [ %.0202.val249.i, %bb.v ]
  store float %.val247.sink.i, ptr %.0205319.i, align 4, !tbaa !21
  %.val242.i.pre = load float, ptr %i.hb, align 4, !tbaa !21
  %.0202.val243.i.pre = load float, ptr %.0202320.i, align 4, !tbaa !21
  br label %bb.y

bb.y:                                             ; preds = %.sink.split.i, %bb.w
  %.0202.val243.i = phi float [ %.0202.val249.i, %bb.w ], [ %.0202.val243.i.pre, %.sink.split.i ] ; 3 uses
  %.val242.i = phi float [ %.val247.i, %bb.w ], [ %.val242.i.pre, %.sink.split.i ] ; 3 uses
  %.0200.i = phi i32 [ 1, %bb.w ], [ 0, %.sink.split.i ]
  %i.hf = fcmp nsz ogt float %.val242.i, %.0202.val243.i
  br i1 %i.hf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store float %.val242.i, ptr %.0202320.i, align 4, !tbaa !21
  store float %.0202.val243.i, ptr %i.hb, align 4, !tbaa !21
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.val241.pre367.i = phi float [ %.0202.val243.i, %bb.z ], [ %.val242.i, %bb.y ] ; 4 uses
  %.1201.i = phi i32 [ 0, %bb.z ], [ %.0200.i, %bb.y ]
  %i.hg = icmp eq ptr %.0205319.i, %i.gv
  br i1 %i.hg, label %.thread.loopexit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hh = load float, ptr %i.gt, align 4, !tbaa !21
  store float %i.hh, ptr %i.hb, align 4, !tbaa !21
  store float %.val241.pre367.i, ptr %i.gt, align 4, !tbaa !21
  %.not232313.i = icmp ugt ptr %i.gw, %i.gv
  br i1 %.not232313.i, label %._crit_edge.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ab, %.critedge237.i
  %.val240.i = phi float [ %.val240370.i, %.critedge237.i ], [ %.val241.pre367.i, %bb.ab ] ; 4 uses
  %.val241.i = phi float [ %.val241368.i, %.critedge237.i ], [ %.val241.pre367.i, %bb.ab ] ; 2 uses
  %.0194315.i = phi ptr [ %.2196.i, %.critedge237.i ], [ %i.gw, %bb.ab ]
  %.0197314.i = phi ptr [ %.2199.i, %.critedge237.i ], [ %i.gv, %bb.ab ] ; 4 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %.preheader.i
  %.1195309.i = phi ptr [ %.0194315.i, %.preheader.i ], [ %i.hj, %bb.ad ] ; 3 uses
  %.1195.val.i = load float, ptr %.1195309.i, align 4, !tbaa !21
  %i.hi = fcmp nsz olt float %.1195.val.i, %.val241.i
  br i1 %i.hi, label %bb.ad, label %.critedge.i

bb.ad:                                            ; preds = %bb.ac
  %i.hj = getelementptr inbounds nuw i8, ptr %.1195309.i, i64 4 ; 3 uses
  %.not234.i = icmp ugt ptr %i.hj, %.0197314.i
  br i1 %.not234.i, label %.critedge.i, label %bb.ac, !llvm.loop !58

.critedge.i:                                      ; preds = %bb.ad, %bb.ac
  %.1195.lcssa.i = phi ptr [ %i.hj, %bb.ad ], [ %.1195309.i, %bb.ac ] ; 7 uses
  %.not235310.i = icmp ugt ptr %.1195.lcssa.i, %.0197314.i
  br i1 %.not235310.i, label %.critedge237.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.i, %bb.ae
  %.1198311.i = phi ptr [ %i.hl, %bb.ae ], [ %.0197314.i, %.critedge.i ] ; 4 uses
  %.1198.val.i = load float, ptr %.1198311.i, align 4, !tbaa !21 ; 2 uses
  %i.hk = fcmp nsz ogt float %.1198.val.i, %.val240.i
  br i1 %i.hk, label %bb.ae, label %.critedge3.i

bb.ae:                                            ; preds = %.lr.ph.i
  %i.hl = getelementptr inbounds i8, ptr %.1198311.i, i64 -4 ; 3 uses
  %.not235.i = icmp ugt ptr %.1195.lcssa.i, %i.hl
  br i1 %.not235.i, label %.critedge237.i, label %.lr.ph.i, !llvm.loop !59

.critedge3.i:                                     ; preds = %.lr.ph.i
  %i.hm = load float, ptr %.1195.lcssa.i, align 4, !tbaa !21
  store float %i.hm, ptr %.1198311.i, align 4, !tbaa !21
  store float %.1198.val.i, ptr %.1195.lcssa.i, align 4, !tbaa !21
  %i.hn = getelementptr inbounds nuw i8, ptr %.1195.lcssa.i, i64 4
  %i.ho = getelementptr inbounds i8, ptr %.1198311.i, i64 -4
  %.val241.pre.i = load float, ptr %i.gt, align 4, !tbaa !21 ; 2 uses
  br label %.critedge237.i

.critedge237.i:                                   ; preds = %bb.ae, %.critedge3.i, %.critedge.i
  %.val240370.i = phi float [ %.val241.pre.i, %.critedge3.i ], [ %.val240.i, %.critedge.i ], [ %.val240.i, %bb.ae ] ; 2 uses
  %.val241368.i = phi float [ %.val241.pre.i, %.critedge3.i ], [ %.val241.i, %.critedge.i ], [ %.val240.i, %bb.ae ]
  %.2199.i = phi ptr [ %i.ho, %.critedge3.i ], [ %.0197314.i, %.critedge.i ], [ %i.hl, %bb.ae ] ; 3 uses
  %.2196.i = phi ptr [ %i.hn, %.critedge3.i ], [ %.1195.lcssa.i, %.critedge.i ], [ %.1195.lcssa.i, %bb.ae ] ; 3 uses
  %.not232.i = icmp ugt ptr %.2196.i, %.2199.i
  br i1 %.not232.i, label %._crit_edge.i, label %.preheader.i, !llvm.loop !60

._crit_edge.i:                                    ; preds = %.critedge237.i, %bb.ab
  %i.hp = phi float [ %.val241.pre367.i, %bb.ab ], [ %.val240370.i, %.critedge237.i ]
  %.0197.lcssa.i = phi ptr [ %i.gv, %bb.ab ], [ %.2199.i, %.critedge237.i ] ; 2 uses
  %.0194.lcssa.i = phi ptr [ %i.gw, %bb.ab ], [ %.2196.i, %.critedge237.i ] ; 7 uses
  %i.hq = load float, ptr %.0194.lcssa.i, align 4, !tbaa !21
  store float %i.hp, ptr %.0194.lcssa.i, align 4, !tbaa !21
  store float %i.hq, ptr %i.gt, align 4, !tbaa !21
  %.not233.i = icmp eq i32 %.1201.i, 0
  br i1 %.not233.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %._crit_edge.i
  %i.hr = getelementptr inbounds i8, ptr %.0194.lcssa.i, i64 -4
  %i.hs = icmp eq ptr %i.hb, %i.hr
  %i.ht = icmp eq ptr %i.hb, %.0194.lcssa.i
  %or.cond238.i = or i1 %i.ht, %i.hs
  br i1 %or.cond238.i, label %.preheader261.i, label %bb.ah

.preheader261.i:                                  ; preds = %bb.af, %bb.ag
  %.0193.i = phi ptr [ %i.hv, %bb.ag ], [ %.0205319.i, %bb.af ] ; 4 uses
  %i.hu = icmp ult ptr %.0193.i, %.0202320.i
  br i1 %i.hu, label %bb.ag, label %.critedge5.i

bb.ag:                                            ; preds = %.preheader261.i
  %i.hv = getelementptr inbounds nuw i8, ptr %.0193.i, i64 4 ; 2 uses
  %.0193.val.i = load float, ptr %.0193.i, align 4, !tbaa !21
  %.val239.i = load float, ptr %i.hv, align 4, !tbaa !21
  %i.hw = fcmp nsz ule float %.0193.val.i, %.val239.i
  br i1 %i.hw, label %.preheader261.i, label %.critedge5.i, !llvm.loop !61

.critedge5.i:                                     ; preds = %bb.ag, %.preheader261.i
  %i.hx = icmp eq ptr %.0193.i, %.0202320.i
  br i1 %i.hx, label %.thread.loopexit.i, label %bb.ah

bb.ah:                                            ; preds = %.critedge5.i, %bb.af, %._crit_edge.i
  %i.hy = ptrtoint ptr %.0194.lcssa.i to i64      ; 2 uses
  %i.hz = sub i64 %i.gx, %i.hy
  %i.ia = sub i64 %i.hy, %i.gy
  %i.ib = icmp slt i64 %i.hz, %i.ia
  br i1 %i.ib, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ic = getelementptr inbounds [16 x i8], ptr %i.a, i64 %indvars.iv358.i ; 2 uses
end_hunk_0
