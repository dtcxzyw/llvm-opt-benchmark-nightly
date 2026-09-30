Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_despill?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"despill\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Despill video.\00", align 1
@despill_inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 1, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr null }], align 16
@despill_outputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 0, i32 0, %union.anon zeroinitializer, ptr null, ptr null, ptr @config_output }], align 16
@pixel_fmts = internal constant [5 x i32] [i32 25, i32 26, i32 27, i32 28, i32 -1], align 16
@ff_vf_despill = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @despill_inputs, ptr @despill_outputs, ptr @despill_class, i32 65540, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 3, [5 x i8] zeroinitializer, ptr null, ptr null, ptr null, %union.anon.0 { ptr @pixel_fmts }, i32 56, i32 0, ptr @ff_filter_process_command, ptr null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@despill_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @despill_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"set the screen type\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"greenscreen\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"bluescreen\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"mix\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"set the spillmap mix\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"expand\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"set the spillmap expand\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"set red scale\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"set green scale\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"set blue scale\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"set brightness\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"change alpha component\00", align 1
@despill_options = internal constant <{ { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.4, ptr @.str.5, i32 28, i32 2, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.4 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.6, ptr @.str.7, i32 0, i32 11, %union.anon.2 zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.4 }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.8, ptr @.str.9, i32 0, i32 11, %union.anon.2 { i64 1 }, double 0.000000e+00, double 0.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr @.str.4 }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.10, ptr @.str.11, i32 32, i32 5, { double } { double 5.000000e-01 }, double 0.000000e+00, double 1.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.12, ptr @.str.13, i32 36, i32 5, { double } zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.14, ptr @.str.15, i32 40, i32 5, { double } zeroinitializer, double -1.000000e+02, double 1.000000e+02, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.6, ptr @.str.16, i32 44, i32 5, { double } { double -1.000000e+00 }, double -1.000000e+02, double 1.000000e+02, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.8, ptr @.str.17, i32 48, i32 5, { double } zeroinitializer, double -1.000000e+02, double 1.000000e+02, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.18, ptr @.str.19, i32 52, i32 5, { double } zeroinitializer, double -1.000000e+01, double 1.000000e+01, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.20, ptr @.str.21, i32 24, i32 18, %union.anon.2 zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 98320, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16

declare i32 @ff_filter_process_command(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.d = load i32, ptr %i.c, align 4, !tbaa !26
  %i.e = tail call i32 @ff_filter_get_nb_threads(ptr noundef %i.b) #6
  %. = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %i.e)
  %i.f = tail call i32 @ff_filter_execute(ptr noundef %i.b, ptr noundef nonnull @do_despill_slice, ptr noundef %1, ptr noundef null, i32 noundef %.) #7 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.j = tail call i32 @ff_filter_frame(ptr noundef %i.i, ptr noundef nonnull %1) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ %i.f, %bb.a ]
  ret i32 %.0
}

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @do_despill_slice(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.l = load i32, ptr %i.k, align 4, !tbaa !26
  %i.m = sext i32 %i.l to i64                     ; 2 uses
  %i.n = sext i32 %2 to i64
  %i.o = mul nsw i64 %i.m, %i.n
  %i.p = sext i32 %3 to i64                       ; 2 uses
  %i.q = sdiv i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = add nsw i32 %2, 1
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %i.m, %i.t
  %i.v = sdiv i64 %i.u, %i.p
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.y = load float, ptr %i.x, align 4, !tbaa !44 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.aa = load <2 x float>, ptr %i.z, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !46
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !47 ; 2 uses
  %i.af = fsub nsz float 1.000000e+00, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !48
  %i.ai = fsub nsz float 1.000000e+00, %i.ah
  %i.aj = fmul nsz float %i.af, %i.ai
  %i.ak = icmp slt i32 %i.r, %i.w
  br i1 %i.ak, label %.lr.ph126, label %._crit_edge127

.lr.ph126:                                        ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ap = load i32, ptr %i.am, align 8, !tbaa !49 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph126.split.preheader, label %._crit_edge127

.lr.ph126.split.preheader:                        ; preds = %.lr.ph126
  %i.ar = sext i32 %i.j to i64
  %i.as = sext i32 %i.h to i64
  %i.at = sext i32 %i.f to i64
  %i.au = sext i32 %i.d to i64
  %i.av = insertelement <2 x float> poison, float %i.y, i64 0
  %i.aw = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph126.split

.lr.ph126.split:                                  ; preds = %.lr.ph126.split.preheader, %._crit_edge
  %i.ax = phi i32 [ %i.cp, %._crit_edge ], [ %i.ap, %.lr.ph126.split.preheader ] ; 2 uses
  %.0106124 = phi i32 [ %i.cq, %._crit_edge ], [ %i.r, %.lr.ph126.split.preheader ] ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph126.split
  %i.az = load ptr, ptr %1, align 8, !tbaa !50
  %i.ba = load i32, ptr %i.al, align 8, !tbaa !34
  %i.bb = mul nsw i32 %i.ba, %.0106124
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 %i.bc ; 4 uses
  %invariant.gep = getelementptr i8, ptr %i.bd, i64 %i.au
  %invariant.gep135 = getelementptr i8, ptr %i.bd, i64 %i.at
  %invariant.gep137 = getelementptr i8, ptr %i.bd, i64 %i.as
  %invariant.gep139 = getelementptr i8, ptr %i.bd, i64 %i.ar
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.be = shl nuw nsw i64 %indvars.iv, 2          ; 4 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.be ; 2 uses
  %i.bf = load i8, ptr %gep, align 1, !tbaa !51
  %gep136 = getelementptr i8, ptr %invariant.gep135, i64 %i.be ; 2 uses
  %i.bg = load i8, ptr %gep136, align 1, !tbaa !51
  %gep138 = getelementptr i8, ptr %invariant.gep137, i64 %i.be ; 2 uses
  %i.bh = load i8, ptr %gep138, align 1, !tbaa !51
  %i.bi = uitofp i8 %i.bh to float
  %i.bj = fdiv nsz float %i.bi, 2.550000e+02      ; 3 uses
  %i.bk = load i32, ptr %i.an, align 4, !tbaa !52
  %.not = icmp eq i32 %i.bk, 0                    ; 2 uses
  %i.bl = insertelement <2 x i8> poison, i8 %i.bf, i64 0
  %i.bm = insertelement <2 x i8> %i.bl, i8 %i.bg, i64 1
  %i.bn = uitofp <2 x i8> %i.bm to <2 x float>
  %i.bo = fdiv nsz <2 x float> %i.bn, splat (float 2.550000e+02) ; 3 uses
  %i.bp = extractelement <2 x float> %i.bo, i64 1 ; 2 uses
  %. = select i1 %.not, float %i.bj, float %i.bp
  %.146 = select i1 %.not, float %i.bp, float %i.bj
  %i.bq = fmul nsz float %i.aj, %.
  %i.br = extractelement <2 x float> %i.bo, i64 0
  %i.bs = tail call nsz float @llvm.fmuladd.f32(float %i.br, float %i.ae, float %i.bq)
  %i.bt = fsub nsz float %.146, %i.bs             ; 2 uses
  %i.bu = fcmp nsz ogt float %i.bt, 0.000000e+00
  %i.bv = select nsz i1 %i.bu, float %i.bt, float 0.000000e+00 ; 4 uses
  %i.bw = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.by = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.aa, <2 x float> %i.bo)
  %i.bz = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.bx, <2 x float> %i.by) ; 3 uses
  %4 = extractelement <2 x float> %i.bz, i64 0
  %5 = fmul nnan nsz float %4, 2.550000e+02
  %6 = fptosi float %5 to i32
  %7 = fcmp nsz ogt <2 x float> %i.bz, zeroinitializer ; 2 uses
  %8 = extractelement <2 x float> %i.bz, i64 1
  %i.ca = fmul nnan nsz float %8, 2.550000e+02
  %i.cb = fptosi float %i.ca to i32
  %9 = tail call nsz float @llvm.fmuladd.f32(float %i.bv, float %i.ac, float %i.bj)
  %10 = tail call nsz float @llvm.fmuladd.f32(float %i.y, float %i.bv, float %9) ; 2 uses
  %11 = fcmp nsz ogt float %10, 0.000000e+00
  %12 = fmul nnan nsz float %10, 2.550000e+02
  %13 = fptosi float %12 to i32
  %14 = tail call i32 @llvm.smax.i32(i32 %6, i32 0)
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 255)
  %i.cc = trunc nuw i32 %15 to i8
  %i.cd = extractelement <2 x i1> %7, i64 0
  %.0.i122 = select i1 %i.cd, i8 %i.cc, i8 0
  store i8 %.0.i122, ptr %gep, align 1, !tbaa !51
  %16 = tail call i32 @llvm.smax.i32(i32 %i.cb, i32 0)
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 255)
  %i.ce = trunc nuw i32 %17 to i8
  %i.cf = extractelement <2 x i1> %7, i64 1
  %.0.i119 = select i1 %i.cf, i8 %i.ce, i8 0
  store i8 %.0.i119, ptr %gep136, align 1, !tbaa !51
  %18 = tail call i32 @llvm.smax.i32(i32 %13, i32 0)
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 255)
  %i.cg = trunc nuw i32 %19 to i8
  %.0.i116 = select i1 %11, i8 %i.cg, i8 0
  store i8 %.0.i116, ptr %gep138, align 1, !tbaa !51
  %i.ch = load i32, ptr %i.ao, align 8, !tbaa !53
  %.not113 = icmp eq i32 %i.ch, 0
  br i1 %.not113, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.ci = fsub nsz float 1.000000e+00, %i.bv
  %i.cj = fmul nsz float %i.ci, 2.550000e+02
  %i.ck = fptosi float %i.cj to i32
  %20 = tail call i32 @llvm.smax.i32(i32 %i.ck, i32 0)
  %.0.i126 = tail call i32 @llvm.umin.i32(i32 %20, i32 255)
  %i.cl = trunc nuw i32 %.0.i126 to i8
  %gep140 = getelementptr i8, ptr %invariant.gep139, i64 %i.be
  store i8 %i.cl, ptr %gep140, align 1, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cm = load i32, ptr %i.am, align 8, !tbaa !49 ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = icmp slt i64 %indvars.iv.next, %i.cn
  br i1 %i.co, label %.lr.ph, label %._crit_edge, !llvm.loop !40

._crit_edge:                                      ; preds = %bb.c, %.lr.ph126.split
  %i.cp = phi i32 [ %i.ax, %.lr.ph126.split ], [ %i.cm, %bb.c ]
  %i.cq = add nsw i32 %.0106124, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cq, %i.w
  br i1 %exitcond.not, label %._crit_edge127, label %.lr.ph126.split, !llvm.loop !41

._crit_edge127:                                   ; preds = %._crit_edge, %.lr.ph126, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #3

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @config_output(ptr nofree noundef readonly captures(none) %0) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !57
  %i.f = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.e) #7
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw [20 x i8], ptr %i.f, i64 %indvars.iv
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i32, ptr %i.i, align 4, !tbaa !59
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store i32 %i.j, ptr %i.k, align 4, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !55

bb.c:                                             ; preds = %bb.b
  ret i32 0
}

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #0

declare ptr @av_default_item_name(ptr noundef) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

attributes #0 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!11 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!12 = !{!"AVRational", !6, i64 0, !6, i64 4}
!13 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!16 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!17 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!18 = !{!"AVFilterFormatsConfig", !16, i64 0, !16, i64 8, !17, i64 16, !16, i64 24, !16, i64 32, !16, i64 40}
!19 = !{!"AVFilterLink", !10, i64 0, !11, i64 8, !10, i64 16, !11, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !12, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !13, i64 72, !12, i64 96, !15, i64 104, !6, i64 112, !6, i64 116, !18, i64 120, !18, i64 168}
!20 = !{!"p2 omnipotent char", !14, i64 0}
!21 = !{!"long", !5, i64 0}
!22 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!23 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!24 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!25 = !{!"AVFrame", !5, i64 0, !5, i64 64, !20, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !12, i64 124, !21, i64 136, !21, i64 144, !12, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !22, i64 248, !6, i64 256, !15, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !21, i64 304, !23, i64 312, !6, i64 320, !24, i64 328, !24, i64 336, !21, i64 344, !21, i64 352, !21, i64 360, !21, i64 368, !9, i64 376, !13, i64 384, !21, i64 408, !6, i64 416}
!26 = !{!25, !6, i64 108}
!27 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!28 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!29 = !{!"p1 omnipotent char", !9, i64 0}
!30 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!31 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!32 = !{!"AVFilterContext", !27, i64 0, !28, i64 8, !29, i64 16, !11, i64 24, !30, i64 32, !6, i64 40, !11, i64 48, !30, i64 56, !6, i64 64, !9, i64 72, !31, i64 80, !6, i64 88, !6, i64 92, !29, i64 96, !6, i64 104, !24, i64 112, !6, i64 120}
!33 = !{!32, !9, i64 72}
!34 = !{!6, !6, i64 0}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!19, !10, i64 16}
!37 = !{!32, !30, i64 56}
!38 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!39 = !{!38, !38, i64 0}
!40 = distinct !{!40, !35}
!41 = distinct !{!41, !35, !54}
!42 = !{!"float", !5, i64 0}
!43 = !{!"DespillContext", !27, i64 0, !5, i64 8, !6, i64 24, !6, i64 28, !42, i64 32, !42, i64 36, !42, i64 40, !42, i64 44, !42, i64 48, !42, i64 52}
!44 = !{!43, !42, i64 52}
!45 = !{!42, !42, i64 0}
!46 = !{!43, !42, i64 48}
!47 = !{!43, !42, i64 32}
!48 = !{!43, !42, i64 36}
!49 = !{!25, !6, i64 104}
!50 = !{!29, !29, i64 0}
!51 = !{!5, !5, i64 0}
!52 = !{!43, !6, i64 28}
!53 = !{!43, !6, i64 24}
!54 = !{!"llvm.loop.unswitch.partial.disable"}
!55 = distinct !{!55, !35}
!56 = !{!19, !10, i64 0}
!57 = !{!19, !6, i64 36}
!58 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!59 = !{!58, !6, i64 8}
end_hunk_0
