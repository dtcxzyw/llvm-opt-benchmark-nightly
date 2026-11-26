Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/reodft010e-r2hc?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.plan_adt = type { ptr, ptr, ptr, ptr }
%struct.tw_instr = type { i8, i8, i16 }
%struct.opcnt = type { double, double, double, double }

@mksolver.sadt = internal constant { i32, [4 x i8], ptr, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @mkplan, ptr null }, align 8
@mkplan.padt = internal constant %struct.plan_adt { ptr @fftw_rdft_solve, ptr @awake, ptr @print, ptr @destroy }, align 8
@awake.reodft010e_tw = internal constant [3 x %struct.tw_instr] [%struct.tw_instr { i8 0, i8 0, i16 1 }, %struct.tw_instr { i8 1, i8 0, i16 1 }, %struct.tw_instr { i8 3, i8 1, i16 0 }], align 2
@.str = private unnamed_addr constant [22 x i8] c"(%se-r2hc-%D%v%(%p%))\00", align 1
@switch.table.mkplan = private unnamed_addr constant [6 x ptr] [ptr @apply_re01, ptr @apply_re10, ptr poison, ptr poison, ptr @apply_ro01, ptr @apply_ro10], align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_reodft010e_r2hc_register(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @fftw_mksolver(i64 noundef 16, ptr noundef nonnull @mksolver.sadt) #4
  tail call void @fftw_solver_register(ptr noundef %0, ptr noundef %i.a) #4
  ret void
}

declare void @fftw_solver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @mkplan(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct.opcnt, align 8              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  %i.a = getelementptr i8, ptr %2, i64 212
  %.val = load i64, ptr %i.a, align 4
  %i.b = and i64 %.val, 8
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %applicable.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !37
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %applicable.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.i = load i32, ptr %i.h, align 8, !tbaa !37
  %i.j = icmp slt i32 %i.i, 2
  br i1 %i.j, label %bb.d, label %applicable.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !39
  switch i32 %i.l, label %applicable.exit.thread [
    i32 10, label %applicable.exit.thread51
    i32 11, label %applicable.exit.thread51
    i32 14, label %applicable.exit.thread51
    i32 15, label %applicable.exit.thread51
  ]

applicable.exit.thread51:                         ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !41   ; 5 uses
  %i.o = shl i64 %i.n, 3
  %i.p = tail call ptr @fftw_malloc_plain(i64 noundef %i.o) #4 ; 3 uses
  %i.q = tail call ptr @fftw_mktensor_1d(i64 noundef %i.n, i64 noundef 1, i64 noundef 1) #4
  %i.r = tail call ptr @fftw_mktensor_0d() #4
  %i.s = tail call ptr @fftw_mkproblem_rdft_1_d(ptr noundef %i.q, ptr noundef %i.r, ptr noundef %i.p, ptr noundef %i.p, i32 noundef 0) #4
  %i.t = tail call ptr @fftw_mkplan_d(ptr noundef nonnull %2, ptr noundef %i.s) #4 ; 3 uses
  tail call void @fftw_ifree(ptr noundef %i.p) #4
  %.not48 = icmp eq ptr %i.t, null
  br i1 %.not48, label %applicable.exit.thread, label %bb.e

bb.e:                                             ; preds = %applicable.exit.thread51
  %i.u = load i32, ptr %i.k, align 8, !tbaa !39
  %switch.tableidx = add i32 %i.u, -10            ; 3 uses
  %i.v = icmp ult i32 %switch.tableidx, 6
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 51, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.v, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %applicable.exit.thread

switch.lookup:                                    ; preds = %bb.e
  %i.w = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.mkplan, i64 %i.w
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.x = tail call ptr @fftw_mkplan_rdft(i64 noundef 136, ptr noundef nonnull @mkplan.padt, ptr noundef nonnull %switch.load) #4 ; 10 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  store i64 %i.n, ptr %i.y, align 8, !tbaa !19
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.ac = load <2 x i64>, ptr %i.aa, align 8, !tbaa !42
  store <2 x i64> %i.ac, ptr %i.ab, align 8, !tbaa !42
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store ptr %i.t, ptr %i.ad, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  store ptr null, ptr %i.ae, align 8, !tbaa !21
  %i.af = load i32, ptr %i.k, align 8, !tbaa !39
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !22
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 104 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  %i.al = tail call i32 @fftw_tensor_tornk1(ptr noundef %i.ah, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.ak) #4 ; 0 uses
  call void @fftw_ops_zero(ptr noundef nonnull %3) #4
  %i.am = add nsw i64 %i.n, -1
  %i.an = sdiv i64 %i.am, 2                       ; 5 uses
  %i.ao = mul nsw i64 %i.an, 10
  %i.ap = add nsw i64 %i.ao, 4
  %i.aq = srem i64 %i.n, 2
  %i.ar = sub nsw i64 1, %i.aq                    ; 2 uses
  %i.as = mul nuw nsw i64 %i.ar, 5
  %i.at = add nsw i64 %i.ap, %i.as
  %i.au = sitofp i64 %i.at to double
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double %i.au, ptr %i.av, align 8, !tbaa !43
  %i.aw = load i32, ptr %i.k, align 8, !tbaa !39
  switch i32 %i.aw, label %bb.g [
    i32 10, label %bb.f
    i32 14, label %bb.f
  ]

bb.f:                                             ; preds = %switch.lookup, %switch.lookup
  %i.ax = mul nsw i64 %i.an, 6
  %i.ay = sitofp i64 %i.ax to double
  store double %i.ay, ptr %3, align 8, !tbaa !44
  %i.az = shl nsw i64 %i.an, 2
  br label %bb.h

bb.g:                                             ; preds = %switch.lookup
  %i.ba = shl nsw i64 %i.an, 1
  %i.bb = sitofp i64 %i.ba to double
  store double %i.bb, ptr %3, align 8, !tbaa !44
  %i.bc = mul nsw i64 %i.an, 6
  %i.bd = or disjoint i64 %i.bc, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink = phi i64 [ %i.bd, %bb.g ], [ %i.az, %bb.f ]
  %i.be = shl nuw nsw i64 %i.ar, 1
  %i.bf = add nsw i64 %.sink, %i.be
  %i.bg = sitofp i64 %i.bf to double
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %i.bg, ptr %i.bh, align 8, !tbaa !45
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  call void @fftw_ops_zero(ptr noundef nonnull %i.bi) #4
  %i.bj = load i64, ptr %i.ai, align 8, !tbaa !23
  call void @fftw_ops_madd2(i64 noundef %i.bj, ptr noundef nonnull %3, ptr noundef nonnull %i.bi) #4
  %i.bk = load i64, ptr %i.ai, align 8, !tbaa !23
  %i.bl = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  call void @fftw_ops_madd2(i64 noundef %i.bk, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bi) #4
  br label %applicable.exit.thread

applicable.exit.thread:                           ; preds = %bb.e, %bb.d, %bb.b, %bb.c, %bb.a, %applicable.exit.thread51, %bb.h
  %.045 = phi ptr [ null, %applicable.exit.thread51 ], [ %i.x, %bb.h ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  ret ptr %.045
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @fftw_mksolver(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @fftw_rdft_solve(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @awake(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  tail call void @fftw_plan_awake(ptr noundef %i.b, i32 noundef %1) #4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %i.f = shl nsw i64 %i.e, 2
  %i.g = sdiv i64 %i.e, 2
  %i.h = add nsw i64 %i.g, 1
  tail call void @fftw_twiddle_awake(i32 noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull @awake.reodft010e_tw, i64 noundef %i.f, i64 noundef 1, i64 noundef %i.h) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load i32, ptr %i.b, align 8, !tbaa !22
  %i.d = tail call ptr @fftw_rdft_kind_str(i32 noundef %i.c) #4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  tail call void (ptr, ptr, ...) %i.a(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef %i.d, i64 noundef %i.f, i64 noundef %i.h, ptr noundef %i.j) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @destroy(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  tail call void @fftw_plan_destroy_internal(ptr noundef %i.b) #4
  ret void
}

declare ptr @fftw_malloc_plain(i64 noundef) local_unnamed_addr #1

declare ptr @fftw_mkplan_d(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mkproblem_rdft_1_d(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @fftw_mktensor_1d(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @fftw_mktensor_0d() local_unnamed_addr #1

declare void @fftw_ifree(ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mkplan_rdft(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @apply_re01(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8, !tbaa !25   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load i64, ptr %i.i, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29   ; 2 uses
  %i.p = shl i64 %i.f, 3
  %i.q = tail call ptr @fftw_malloc_plain(i64 noundef %i.p) #4 ; 11 uses
  %i.r = icmp sgt i64 %i.h, 0
  br i1 %i.r, label %.lr.ph117, label %._crit_edge118

.lr.ph117:                                        ; preds = %bb.a
  %i.s = add nsw i64 %i.f, -1                     ; 5 uses
  %i.t = icmp sgt i64 %i.f, 2                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = mul nsw i64 %i.s, %i.d
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph117, %bb.f
  %.0115 = phi ptr [ %1, %.lr.ph117 ], [ %i.cg, %bb.f ] ; 5 uses
  %.096114 = phi ptr [ %2, %.lr.ph117 ], [ %i.ch, %bb.f ] ; 5 uses
  %.098113 = phi i64 [ 0, %.lr.ph117 ], [ %i.cf, %bb.f ]
  %i.w = load double, ptr %.0115, align 8, !tbaa !30
  store double %i.w, ptr %i.q, align 8, !tbaa !30
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.x = phi i64 [ %i.aw, %.lr.ph ], [ %i.s, %bb.b ] ; 2 uses
  %.097105 = phi i64 [ %i.av, %.lr.ph ], [ 1, %bb.b ] ; 4 uses
  %i.y = mul nsw i64 %.097105, %i.b
  %i.z = getelementptr inbounds [8 x i8], ptr %.0115, i64 %i.y
  %i.aa = load double, ptr %i.z, align 8, !tbaa !30 ; 2 uses
  %i.ab = mul nsw i64 %i.x, %i.b
  %i.ac = getelementptr inbounds [8 x i8], ptr %.0115, i64 %i.ab
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !30 ; 2 uses
  %.idx103 = shl nuw nsw i64 %.097105, 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx103
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.097105
  %i.ag = fadd double %i.aa, %i.ad                ; 2 uses
  %i.ah = fsub double %i.aa, %i.ad                ; 2 uses
  %i.ai = load <2 x double>, ptr %i.ae, align 8, !tbaa !30 ; 2 uses
  %i.aj = fneg double %i.ah
  %i.ak = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.aj, i64 1
  %i.am = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.an = fmul <2 x double> %i.al, %i.am
  %i.ao = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.ag, i64 1
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.aq, <2 x double> %i.an) ; 2 uses
  %i.as = extractelement <2 x double> %i.ar, i64 0
  store double %i.as, ptr %i.af, align 8, !tbaa !30
  %i.at = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.x
  %i.au = extractelement <2 x double> %i.ar, i64 1
  store double %i.au, ptr %i.at, align 8, !tbaa !30
  %i.av = add nuw nsw i64 %.097105, 1             ; 4 uses
  %i.aw = sub nsw i64 %i.f, %i.av                 ; 3 uses
  %i.ax = icmp slt i64 %i.av, %i.aw
  br i1 %i.ax, label %.lr.ph, label %._crit_edge, !llvm.loop !48

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.097.lcssa = phi i64 [ 1, %bb.b ], [ %i.av, %.lr.ph ] ; 4 uses
  %.lcssa = phi i64 [ %i.s, %bb.b ], [ %i.aw, %.lr.ph ]
  %i.ay = icmp eq i64 %.097.lcssa, %.lcssa
  br i1 %i.ay, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.az = mul nsw i64 %.097.lcssa, %i.b
  %i.ba = getelementptr inbounds [8 x i8], ptr %.0115, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !30
  %i.bc = fmul double %i.bb, 2.000000e+00
  %.idx = shl nuw nsw i64 %.097.lcssa, 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx
  %i.be = load double, ptr %i.bd, align 8, !tbaa !30
  %i.bf = fmul double %i.bc, %i.be
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.097.lcssa
  store double %i.bf, ptr %i.bg, align 8, !tbaa !30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.bh = load ptr, ptr %i.u, align 8, !tbaa !20  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !32
  tail call void %i.bj(ptr noundef %i.bh, ptr noundef nonnull %i.q, ptr noundef nonnull %i.q) #4
  %i.bk = load double, ptr %i.q, align 8, !tbaa !30
  store double %i.bk, ptr %.096114, align 8, !tbaa !30
  br i1 %i.t, label %.lr.ph109, label %._crit_edge110

.lr.ph109:                                        ; preds = %bb.d, %.lr.ph109
  %i.bl = phi i64 [ %i.bz, %.lr.ph109 ], [ %i.s, %bb.d ]
  %.1107 = phi i64 [ %i.by, %.lr.ph109 ], [ 1, %bb.d ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.1107
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !30 ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.bl
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !30 ; 2 uses
  %i.bq = shl nuw nsw i64 %.1107, 1               ; 2 uses
  %i.br = fsub double %i.bn, %i.bp
  %i.bs = add nsw i64 %i.bq, -1
  %i.bt = mul nsw i64 %i.bs, %i.d
  %i.bu = getelementptr inbounds [8 x i8], ptr %.096114, i64 %i.bt
  store double %i.br, ptr %i.bu, align 8, !tbaa !30
  %i.bv = fadd double %i.bn, %i.bp
  %i.bw = mul nsw i64 %i.bq, %i.d
  %i.bx = getelementptr inbounds [8 x i8], ptr %.096114, i64 %i.bw
  store double %i.bv, ptr %i.bx, align 8, !tbaa !30
  %i.by = add nuw nsw i64 %.1107, 1               ; 4 uses
  %i.bz = sub nsw i64 %i.f, %i.by                 ; 3 uses
  %i.ca = icmp slt i64 %i.by, %i.bz
  br i1 %i.ca, label %.lr.ph109, label %._crit_edge110, !llvm.loop !49

._crit_edge110:                                   ; preds = %.lr.ph109, %bb.d
  %.1.lcssa = phi i64 [ 1, %bb.d ], [ %i.by, %.lr.ph109 ] ; 2 uses
  %.lcssa104 = phi i64 [ %i.s, %bb.d ], [ %i.bz, %.lr.ph109 ]
  %i.cb = icmp eq i64 %.1.lcssa, %.lcssa104
  br i1 %i.cb, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge110
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.1.lcssa
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !30
  %i.ce = getelementptr inbounds [8 x i8], ptr %.096114, i64 %i.v
  store double %i.cd, ptr %i.ce, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge110, %bb.e
  %i.cf = add nuw nsw i64 %.098113, 1             ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %.0115, i64 %i.j
  %i.ch = getelementptr inbounds [8 x i8], ptr %.096114, i64 %i.l
  %exitcond.not = icmp eq i64 %i.cf, %i.h
  br i1 %exitcond.not, label %._crit_edge118, label %bb.b, !llvm.loop !50

._crit_edge118:                                   ; preds = %bb.f, %bb.a
  tail call void @fftw_ifree(ptr noundef %i.q) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @apply_re10(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8, !tbaa !25   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load i64, ptr %i.i, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29   ; 2 uses
  %i.p = shl i64 %i.f, 3
  %i.q = tail call ptr @fftw_malloc_plain(i64 noundef %i.p) #4 ; 11 uses
  %i.r = icmp sgt i64 %i.h, 0
  br i1 %i.r, label %.lr.ph111, label %._crit_edge112

.lr.ph111:                                        ; preds = %bb.a
  %i.s = add nsw i64 %i.f, -1                     ; 5 uses
  %i.t = icmp sgt i64 %i.f, 2                     ; 2 uses
  %i.u = mul nsw i64 %i.s, %i.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph111, %bb.f
  %.0109 = phi ptr [ %1, %.lr.ph111 ], [ %i.ce, %bb.f ] ; 5 uses
  %.090108 = phi ptr [ %2, %.lr.ph111 ], [ %i.cf, %bb.f ] ; 5 uses
  %.092107 = phi i64 [ 0, %.lr.ph111 ], [ %i.cd, %bb.f ]
  %i.w = load double, ptr %.0109, align 8, !tbaa !30
  store double %i.w, ptr %i.q, align 8, !tbaa !30
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.x = phi i64 [ %i.aj, %.lr.ph ], [ %i.s, %bb.b ]
  %.09199 = phi i64 [ %i.ai, %.lr.ph ], [ 1, %bb.b ] ; 3 uses
  %i.y = shl nuw nsw i64 %.09199, 1               ; 2 uses
  %i.z = add nsw i64 %i.y, -1
  %i.aa = mul nsw i64 %i.z, %i.b
  %i.ab = getelementptr inbounds [8 x i8], ptr %.0109, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !30
  %i.ad = mul nsw i64 %i.y, %i.b
  %i.ae = getelementptr inbounds [8 x i8], ptr %.0109, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !30
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.x
  store double %i.ac, ptr %i.ag, align 8, !tbaa !30
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.09199
  store double %i.af, ptr %i.ah, align 8, !tbaa !30
  %i.ai = add nuw nsw i64 %.09199, 1              ; 4 uses
  %i.aj = sub nsw i64 %i.f, %i.ai                 ; 3 uses
  %i.ak = icmp slt i64 %i.ai, %i.aj
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !51

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.091.lcssa = phi i64 [ 1, %bb.b ], [ %i.ai, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.s, %bb.b ], [ %i.aj, %.lr.ph ]
  %i.al = icmp eq i64 %.091.lcssa, %.lcssa
  br i1 %i.al, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.am = getelementptr inbounds [8 x i8], ptr %.0109, i64 %i.u
  %i.an = load double, ptr %i.am, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.091.lcssa
  store double %i.an, ptr %i.ao, align 8, !tbaa !30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.ap = load ptr, ptr %i.v, align 8, !tbaa !20  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !32
  tail call void %i.ar(ptr noundef %i.ap, ptr noundef nonnull %i.q, ptr noundef nonnull %i.q) #4
  %i.as = load double, ptr %i.q, align 8, !tbaa !30
  %i.at = fmul double %i.as, 2.000000e+00
  store double %i.at, ptr %.090108, align 8, !tbaa !30
  br i1 %i.t, label %.lr.ph103, label %._crit_edge104

.lr.ph103:                                        ; preds = %bb.d, %.lr.ph103
  %i.au = phi i64 [ %i.bs, %.lr.ph103 ], [ %i.s, %bb.d ] ; 2 uses
  %.1101 = phi i64 [ %i.br, %.lr.ph103 ], [ 1, %bb.d ] ; 4 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.1101
  %i.aw = load double, ptr %i.av, align 8, !tbaa !30
  %i.ax = fmul double %i.aw, 2.000000e+00
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.au
  %i.az = load double, ptr %i.ay, align 8, !tbaa !30
  %i.ba = fmul double %i.az, 2.000000e+00         ; 2 uses
  %.idx97 = shl nuw nsw i64 %.1101, 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx97
  %i.bc = mul nsw i64 %.1101, %i.d
  %i.bd = getelementptr inbounds [8 x i8], ptr %.090108, i64 %i.bc
  %i.be = fneg double %i.ba
  %i.bf = load <2 x double>, ptr %i.bb, align 8, !tbaa !30 ; 2 uses
  %i.bg = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bh = insertelement <2 x double> %i.bg, double %i.ba, i64 1
  %i.bi = fmul <2 x double> %i.bh, %i.bf
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bk = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> %i.bl, <2 x double> %i.bj) ; 2 uses
  %i.bn = extractelement <2 x double> %i.bm, i64 0
  store double %i.bn, ptr %i.bd, align 8, !tbaa !30
  %i.bo = mul nsw i64 %i.au, %i.d
  %i.bp = getelementptr inbounds [8 x i8], ptr %.090108, i64 %i.bo
  %i.bq = extractelement <2 x double> %i.bm, i64 1
  store double %i.bq, ptr %i.bp, align 8, !tbaa !30
  %i.br = add nuw nsw i64 %.1101, 1               ; 4 uses
  %i.bs = sub nsw i64 %i.f, %i.br                 ; 3 uses
  %i.bt = icmp slt i64 %i.br, %i.bs
  br i1 %i.bt, label %.lr.ph103, label %._crit_edge104, !llvm.loop !52

._crit_edge104:                                   ; preds = %.lr.ph103, %bb.d
  %.1.lcssa = phi i64 [ 1, %bb.d ], [ %i.br, %.lr.ph103 ] ; 4 uses
  %.lcssa98 = phi i64 [ %i.s, %bb.d ], [ %i.bs, %.lr.ph103 ]
  %i.bu = icmp eq i64 %.1.lcssa, %.lcssa98
  br i1 %i.bu, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge104
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.1.lcssa
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !30
  %i.bx = fmul double %i.bw, 2.000000e+00
  %.idx = shl nuw nsw i64 %.1.lcssa, 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx
  %i.bz = load double, ptr %i.by, align 8, !tbaa !30
  %i.ca = fmul double %i.bx, %i.bz
  %i.cb = mul nsw i64 %.1.lcssa, %i.d
  %i.cc = getelementptr inbounds [8 x i8], ptr %.090108, i64 %i.cb
  store double %i.ca, ptr %i.cc, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge104, %bb.e
  %i.cd = add nuw nsw i64 %.092107, 1             ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %.0109, i64 %i.j
  %i.cf = getelementptr inbounds [8 x i8], ptr %.090108, i64 %i.l
  %exitcond.not = icmp eq i64 %i.cd, %i.h
  br i1 %exitcond.not, label %._crit_edge112, label %bb.b, !llvm.loop !53

._crit_edge112:                                   ; preds = %bb.f, %bb.a
  tail call void @fftw_ifree(ptr noundef %i.q) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @apply_ro01(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8, !tbaa !25   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load i64, ptr %i.i, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29   ; 2 uses
  %i.p = shl i64 %i.f, 3
  %i.q = tail call ptr @fftw_malloc_plain(i64 noundef %i.p) #4 ; 11 uses
  %i.r = icmp sgt i64 %i.h, 0
  br i1 %i.r, label %.lr.ph119, label %._crit_edge120

.lr.ph119:                                        ; preds = %bb.a
  %i.s = add nsw i64 %i.f, -1                     ; 7 uses
  %i.t = mul nsw i64 %i.s, %i.b
  %i.u = icmp sgt i64 %i.f, 2                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = mul nsw i64 %i.s, %i.d
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph119, %bb.f
  %.0117 = phi ptr [ %1, %.lr.ph119 ], [ %i.cm, %bb.f ] ; 5 uses
  %.098116 = phi ptr [ %2, %.lr.ph119 ], [ %i.cn, %bb.f ] ; 5 uses
  %.0100115 = phi i64 [ 0, %.lr.ph119 ], [ %i.cl, %bb.f ]
  %i.x = getelementptr inbounds [8 x i8], ptr %.0117, i64 %i.t
  %i.y = load double, ptr %i.x, align 8, !tbaa !30
  store double %i.y, ptr %i.q, align 8, !tbaa !30
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.z = phi i64 [ %i.ba, %.lr.ph ], [ %i.s, %bb.b ]
  %.099107 = phi i64 [ %i.az, %.lr.ph ], [ 1, %bb.b ] ; 5 uses
  %i.aa = sub nsw i64 %i.s, %.099107
  %i.ab = mul nsw i64 %i.aa, %i.b
  %i.ac = getelementptr inbounds [8 x i8], ptr %.0117, i64 %i.ab
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !30 ; 2 uses
  %i.ae = add nsw i64 %.099107, -1
  %i.af = mul nsw i64 %i.ae, %i.b
  %i.ag = getelementptr inbounds [8 x i8], ptr %.0117, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !30 ; 2 uses
  %.idx105 = shl nuw nsw i64 %.099107, 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx105
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.099107
  %i.ak = fadd double %i.ad, %i.ah                ; 2 uses
  %i.al = fsub double %i.ad, %i.ah                ; 2 uses
  %i.am = load <2 x double>, ptr %i.ai, align 8, !tbaa !30 ; 2 uses
  %i.an = fneg double %i.al
  %i.ao = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %i.an, i64 1
  %i.aq = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ar = fmul <2 x double> %i.ap, %i.aq
  %i.as = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = insertelement <2 x double> poison, double %i.al, i64 0
  %i.au = insertelement <2 x double> %i.at, double %i.ak, i64 1
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.au, <2 x double> %i.ar) ; 2 uses
  %i.aw = extractelement <2 x double> %i.av, i64 0
  store double %i.aw, ptr %i.aj, align 8, !tbaa !30
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.z
  %i.ay = extractelement <2 x double> %i.av, i64 1
  store double %i.ay, ptr %i.ax, align 8, !tbaa !30
  %i.az = add nuw nsw i64 %.099107, 1             ; 4 uses
  %i.ba = sub nsw i64 %i.f, %i.az                 ; 3 uses
  %i.bb = icmp slt i64 %i.az, %i.ba
  br i1 %i.bb, label %.lr.ph, label %._crit_edge, !llvm.loop !54

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.099.lcssa = phi i64 [ 1, %bb.b ], [ %i.az, %.lr.ph ] ; 4 uses
  %.lcssa = phi i64 [ %i.s, %bb.b ], [ %i.ba, %.lr.ph ]
  %i.bc = icmp eq i64 %.099.lcssa, %.lcssa
  br i1 %i.bc, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.bd = add nsw i64 %.099.lcssa, -1
  %i.be = mul nsw i64 %i.bd, %i.b
  %i.bf = getelementptr inbounds [8 x i8], ptr %.0117, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !30
  %i.bh = fmul double %i.bg, 2.000000e+00
  %.idx = shl nuw nsw i64 %.099.lcssa, 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !30
  %i.bk = fmul double %i.bh, %i.bj
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.099.lcssa
  store double %i.bk, ptr %i.bl, align 8, !tbaa !30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.bm = load ptr, ptr %i.v, align 8, !tbaa !20  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !32
  tail call void %i.bo(ptr noundef %i.bm, ptr noundef nonnull %i.q, ptr noundef nonnull %i.q) #4
  %i.bp = load double, ptr %i.q, align 8, !tbaa !30
  store double %i.bp, ptr %.098116, align 8, !tbaa !30
  br i1 %i.u, label %.lr.ph111, label %._crit_edge112

.lr.ph111:                                        ; preds = %bb.d, %.lr.ph111
  %i.bq = phi i64 [ %i.ce, %.lr.ph111 ], [ %i.s, %bb.d ]
  %.1109 = phi i64 [ %i.cd, %.lr.ph111 ], [ 1, %bb.d ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.1109
  %i.bs = load double, ptr %i.br, align 8, !tbaa !30 ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.bq
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !30 ; 2 uses
  %i.bv = shl nuw nsw i64 %.1109, 1               ; 2 uses
  %i.bw = fsub double %i.bu, %i.bs
  %i.bx = add nsw i64 %i.bv, -1
  %i.by = mul nsw i64 %i.bx, %i.d
  %i.bz = getelementptr inbounds [8 x i8], ptr %.098116, i64 %i.by
  store double %i.bw, ptr %i.bz, align 8, !tbaa !30
  %i.ca = fadd double %i.bs, %i.bu
  %i.cb = mul nsw i64 %i.bv, %i.d
  %i.cc = getelementptr inbounds [8 x i8], ptr %.098116, i64 %i.cb
  store double %i.ca, ptr %i.cc, align 8, !tbaa !30
  %i.cd = add nuw nsw i64 %.1109, 1               ; 4 uses
  %i.ce = sub nsw i64 %i.f, %i.cd                 ; 3 uses
  %i.cf = icmp slt i64 %i.cd, %i.ce
  br i1 %i.cf, label %.lr.ph111, label %._crit_edge112, !llvm.loop !55

._crit_edge112:                                   ; preds = %.lr.ph111, %bb.d
  %.1.lcssa = phi i64 [ 1, %bb.d ], [ %i.cd, %.lr.ph111 ] ; 2 uses
  %.lcssa106 = phi i64 [ %i.s, %bb.d ], [ %i.ce, %.lr.ph111 ]
  %i.cg = icmp eq i64 %.1.lcssa, %.lcssa106
  br i1 %i.cg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge112
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.1.lcssa
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !30
  %i.cj = fneg double %i.ci
  %i.ck = getelementptr inbounds [8 x i8], ptr %.098116, i64 %i.w
  store double %i.cj, ptr %i.ck, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge112, %bb.e
  %i.cl = add nuw nsw i64 %.0100115, 1            ; 2 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %.0117, i64 %i.j
  %i.cn = getelementptr inbounds [8 x i8], ptr %.098116, i64 %i.l
  %exitcond.not = icmp eq i64 %i.cl, %i.h
  br i1 %exitcond.not, label %._crit_edge120, label %bb.b, !llvm.loop !56

._crit_edge120:                                   ; preds = %bb.f, %bb.a
  tail call void @fftw_ifree(ptr noundef %i.q) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @apply_ro10(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8, !tbaa !25   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.j = load i64, ptr %i.i, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29   ; 2 uses
  %i.p = shl i64 %i.f, 3
  %i.q = tail call ptr @fftw_malloc_plain(i64 noundef %i.p) #4 ; 11 uses
  %i.r = icmp sgt i64 %i.h, 0
  br i1 %i.r, label %.lr.ph113, label %._crit_edge114

.lr.ph113:                                        ; preds = %bb.a
  %i.s = add nsw i64 %i.f, -1                     ; 7 uses
  %i.t = icmp sgt i64 %i.f, 2                     ; 2 uses
  %i.u = mul nsw i64 %i.s, %i.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = mul nsw i64 %i.s, %i.d
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph113, %bb.f
  %.0111 = phi ptr [ %1, %.lr.ph113 ], [ %i.cl, %bb.f ] ; 5 uses
  %.092110 = phi ptr [ %2, %.lr.ph113 ], [ %i.cm, %bb.f ] ; 5 uses
  %.094109 = phi i64 [ 0, %.lr.ph113 ], [ %i.ck, %bb.f ]
  %i.x = load double, ptr %.0111, align 8, !tbaa !30
  store double %i.x, ptr %i.q, align 8, !tbaa !30
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.y = phi i64 [ %i.al, %.lr.ph ], [ %i.s, %bb.b ]
  %.093101 = phi i64 [ %i.ak, %.lr.ph ], [ 1, %bb.b ] ; 3 uses
  %i.z = shl nuw nsw i64 %.093101, 1              ; 2 uses
  %i.aa = add nsw i64 %i.z, -1
  %i.ab = mul nsw i64 %i.aa, %i.b
  %i.ac = getelementptr inbounds [8 x i8], ptr %.0111, i64 %i.ab
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !30
  %i.ae = fneg double %i.ad
  %i.af = mul nsw i64 %i.z, %i.b
  %i.ag = getelementptr inbounds [8 x i8], ptr %.0111, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !30
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.y
  store double %i.ae, ptr %i.ai, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.093101
  store double %i.ah, ptr %i.aj, align 8, !tbaa !30
  %i.ak = add nuw nsw i64 %.093101, 1             ; 4 uses
  %i.al = sub nsw i64 %i.f, %i.ak                 ; 3 uses
  %i.am = icmp slt i64 %i.ak, %i.al
  br i1 %i.am, label %.lr.ph, label %._crit_edge, !llvm.loop !57

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.093.lcssa = phi i64 [ 1, %bb.b ], [ %i.ak, %.lr.ph ] ; 2 uses
  %.lcssa = phi i64 [ %i.s, %bb.b ], [ %i.al, %.lr.ph ]
  %i.an = icmp eq i64 %.093.lcssa, %.lcssa
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.ao = getelementptr inbounds [8 x i8], ptr %.0111, i64 %i.u
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !30
  %i.aq = fneg double %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.093.lcssa
  store double %i.aq, ptr %i.ar, align 8, !tbaa !30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.as = load ptr, ptr %i.v, align 8, !tbaa !20  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !32
  tail call void %i.au(ptr noundef %i.as, ptr noundef nonnull %i.q, ptr noundef nonnull %i.q) #4
  %i.av = load double, ptr %i.q, align 8, !tbaa !30
  %i.aw = fmul double %i.av, 2.000000e+00
  %i.ax = getelementptr inbounds [8 x i8], ptr %.092110, i64 %i.w
  store double %i.aw, ptr %i.ax, align 8, !tbaa !30
  br i1 %i.t, label %.lr.ph105, label %._crit_edge106

.lr.ph105:                                        ; preds = %bb.d, %.lr.ph105
  %i.ay = phi i64 [ %i.by, %.lr.ph105 ], [ %i.s, %bb.d ]
  %.1103 = phi i64 [ %i.bx, %.lr.ph105 ], [ 1, %bb.d ] ; 5 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.1103
  %i.ba = load double, ptr %i.az, align 8, !tbaa !30
  %i.bb = fmul double %i.ba, 2.000000e+00
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.ay
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !30
  %i.be = fmul double %i.bd, 2.000000e+00         ; 2 uses
  %.idx99 = shl nuw nsw i64 %.1103, 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx99
  %i.bg = sub nsw i64 %i.s, %.1103
  %i.bh = mul nsw i64 %i.bg, %i.d
  %i.bi = getelementptr inbounds [8 x i8], ptr %.092110, i64 %i.bh
  %i.bj = fneg double %i.be
  %i.bk = load <2 x double>, ptr %i.bf, align 8, !tbaa !30 ; 2 uses
  %i.bl = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bm = insertelement <2 x double> %i.bl, double %i.be, i64 1
  %i.bn = fmul <2 x double> %i.bm, %i.bk
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bp = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.bq, <2 x double> %i.bo) ; 2 uses
  %i.bs = extractelement <2 x double> %i.br, i64 0
  store double %i.bs, ptr %i.bi, align 8, !tbaa !30
  %i.bt = add nsw i64 %.1103, -1
  %i.bu = mul nsw i64 %i.bt, %i.d
  %i.bv = getelementptr inbounds [8 x i8], ptr %.092110, i64 %i.bu
  %i.bw = extractelement <2 x double> %i.br, i64 1
  store double %i.bw, ptr %i.bv, align 8, !tbaa !30
  %i.bx = add nuw nsw i64 %.1103, 1               ; 4 uses
  %i.by = sub nsw i64 %i.f, %i.bx                 ; 3 uses
  %i.bz = icmp slt i64 %i.bx, %i.by
  br i1 %i.bz, label %.lr.ph105, label %._crit_edge106, !llvm.loop !58

._crit_edge106:                                   ; preds = %.lr.ph105, %bb.d
  %.1.lcssa = phi i64 [ 1, %bb.d ], [ %i.bx, %.lr.ph105 ] ; 4 uses
  %.lcssa100 = phi i64 [ %i.s, %bb.d ], [ %i.by, %.lr.ph105 ]
  %i.ca = icmp eq i64 %.1.lcssa, %.lcssa100
  br i1 %i.ca, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge106
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.1.lcssa
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !30
  %i.cd = fmul double %i.cc, 2.000000e+00
  %.idx = shl nuw nsw i64 %.1.lcssa, 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !30
  %i.cg = fmul double %i.cd, %i.cf
  %i.ch = add nsw i64 %.1.lcssa, -1
  %i.ci = mul nsw i64 %i.ch, %i.d
  %i.cj = getelementptr inbounds [8 x i8], ptr %.092110, i64 %i.ci
  store double %i.cg, ptr %i.cj, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge106, %bb.e
  %i.ck = add nuw nsw i64 %.094109, 1             ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %.0111, i64 %i.j
  %i.cm = getelementptr inbounds [8 x i8], ptr %.092110, i64 %i.l
  %exitcond.not = icmp eq i64 %i.ck, %i.h
  br i1 %exitcond.not, label %._crit_edge114, label %bb.b, !llvm.loop !59

._crit_edge114:                                   ; preds = %bb.f, %bb.a
  tail call void @fftw_ifree(ptr noundef %i.q) #4
  ret void
}

declare i32 @fftw_tensor_tornk1(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @fftw_ops_zero(ptr noundef) local_unnamed_addr #1

declare void @fftw_ops_madd2(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @fftw_plan_awake(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @fftw_twiddle_awake(i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @fftw_rdft_kind_str(i32 noundef) local_unnamed_addr #1

declare void @fftw_plan_destroy_internal(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 double", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"double", !5, i64 0}
!13 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!14 = !{!"plan_s", !9, i64 0, !13, i64 8, !12, i64 40, !6, i64 48, !6, i64 52}
!15 = !{!"", !14, i64 0, !9, i64 56}
!16 = !{!"p1 _ZTS6plan_s", !9, i64 0}
!17 = !{!"p1 _ZTS6twid_s", !9, i64 0}
!18 = !{!"", !15, i64 0, !16, i64 64, !17, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !6, i64 128}
!19 = !{!18, !11, i64 96}
!20 = !{!18, !16, i64 64}
!21 = !{!18, !17, i64 72}
!22 = !{!18, !6, i64 128}
!23 = !{!18, !11, i64 104}
!24 = !{!18, !11, i64 80}
!25 = !{!18, !11, i64 88}
!26 = !{!18, !11, i64 112}
!27 = !{!18, !11, i64 120}
!28 = !{!"twid_s", !10, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !6, i64 32, !9, i64 40, !17, i64 48, !6, i64 56}
!29 = !{!28, !10, i64 0}
!30 = !{!12, !12, i64 0}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!15, !9, i64 56}
!33 = !{!"problem_s", !9, i64 0}
!34 = !{!"", !33, i64 0, !9, i64 8, !9, i64 16, !10, i64 24, !10, i64 32, !5, i64 40}
!35 = !{!34, !9, i64 8}
!36 = !{!"", !6, i64 0, !5, i64 8}
!37 = !{!36, !6, i64 0}
!38 = !{!34, !9, i64 16}
!39 = !{!6, !6, i64 0}
!40 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16}
!41 = !{!40, !11, i64 0}
!42 = !{!11, !11, i64 0}
!43 = !{!13, !12, i64 24}
!44 = !{!13, !12, i64 0}
!45 = !{!13, !12, i64 8}
!46 = !{!"printer_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !6, i64 36}
!47 = !{!46, !9, i64 0}
!48 = distinct !{!48, !31}
!49 = distinct !{!49, !31}
!50 = distinct !{!50, !31}
!51 = distinct !{!51, !31}
!52 = distinct !{!52, !31}
!53 = distinct !{!53, !31}
!54 = distinct !{!54, !31}
!55 = distinct !{!55, !31}
!56 = distinct !{!56, !31}
!57 = distinct !{!57, !31}
!58 = distinct !{!58, !31}
!59 = distinct !{!59, !31}
end_hunk_0
