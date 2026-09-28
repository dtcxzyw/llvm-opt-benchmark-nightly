Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/trmm?download=true
inline.NumInlined: 11
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@polybench_papi_counters_threadid = dso_local local_unnamed_addr global i32 0, align 4
@polybench_program_total_flops = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@polybench_t_start = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@polybench_t_end = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [7 x i8] c"%0.6f\0A\00", align 1
@polybench_c_start = dso_local local_unnamed_addr global i64 0, align 8
@polybench_c_end = dso_local local_unnamed_addr global i64 0, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_flush_cache() local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_prepare_instruments() local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #3 {
bb.a:
  store double 0.000000e+00, ptr @polybench_t_start, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #3 {
bb.a:
  store double 0.000000e+00, ptr @polybench_t_end, align 8, !tbaa !9
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #4 {
bb.a:
  %i.a = load double, ptr @polybench_t_end, align 8, !tbaa !9
  %i.b = load double, ptr @polybench_t_start, align 8, !tbaa !9
  %i.c = fsub double %i.a, %i.b
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.c) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @polybench_free_data(ptr noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  tail call void @free(ptr noundef %0) #12
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = sext i32 %1 to i64
  %i.c = mul i64 %0, %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef %i.c) #12
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne i32 %i.d, 0
  %or.cond.i = or i1 %i.g, %i.f
  br i1 %or.cond.i, label %bb.b, label %xmalloc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.h) #13 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

xmalloc.exit:                                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8, !tbaa !11
  %i.c = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 8000000) #12
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !11   ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = icmp ne i32 %i.c, 0
  %or.cond.i.i = or i1 %i.f, %i.e
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.g) #13 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.h = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 9600000) #12
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !11   ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = icmp ne i32 %i.h, 0
  %or.cond.i.i12 = or i1 %i.k, %i.j
  br i1 %or.cond.i.i12, label %bb.c, label %polybench_alloc_data.exit14

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i13 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.l) #13 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit14:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.preheader.i

.preheader.i:                                     ; preds = %middle.block, %polybench_alloc_data.exit14
  %indvars.iv38.i = phi i64 [ 0, %polybench_alloc_data.exit14 ], [ %indvars.iv.next39.i, %middle.block ] ; 13 uses
  %.not.i = icmp eq i64 %indvars.iv38.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.m = getelementptr inbounds nuw [8000 x i8], ptr %i.d, i64 %indvars.iv38.i ; 2 uses
  %min.iters.check = icmp eq i64 %indvars.iv38.i, 1
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph31

vector.ph31:                                      ; preds = %.lr.ph.i
  %n.vec = and i64 %indvars.iv38.i, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert32 = insertelement <2 x i64> poison, i64 %indvars.iv38.i, i64 0
  %broadcast.splat33 = shufflevector <2 x i64> %broadcast.splatinsert32, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body34

vector.body34:                                    ; preds = %vector.body34, %vector.ph31
  %index35 = phi i64 [ 0, %vector.ph31 ], [ %index.next37, %vector.body34 ] ; 2 uses
  %vec.ind36 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph31 ], [ %vec.ind.next38, %vector.body34 ] ; 2 uses
  %i.n = add nuw nsw <2 x i64> %vec.ind36, %broadcast.splat33
  %i.o = trunc nuw nsw <2 x i64> %i.n to <2 x i32>
  %i.p = urem <2 x i32> %i.o, splat (i32 1000)
  %i.q = uitofp nneg <2 x i32> %i.p to <2 x double>
  %i.r = fdiv <2 x double> %i.q, splat (double 1.000000e+03)
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index35
  store <2 x double> %i.r, ptr %i.s, align 8, !tbaa !9
  %index.next37 = add nuw i64 %index35, 2         ; 2 uses
  %vec.ind.next38 = add nuw nsw <2 x i64> %vec.ind36, splat (i64 2)
  %i.t = icmp eq i64 %index.next37, %n.vec
  br i1 %i.t, label %middle.block39, label %vector.body34, !llvm.loop !14

middle.block39:                                   ; preds = %vector.body34
  %cmp.n = icmp eq i64 %indvars.iv38.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block39
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block39 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.u = add nuw nsw i64 %indvars.iv.i, %indvars.iv38.i
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = urem i32 %i.v, 1000
  %i.x = uitofp nneg i32 %i.w to double
  %i.y = fdiv double %i.x, 1.000000e+03
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i
  store double %i.y, ptr %i.z, align 8, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv38.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !15

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block39, %.preheader.i
  %i.aa = getelementptr inbounds nuw [8000 x i8], ptr %i.d, i64 %indvars.iv38.i
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv38.i
  store double 1.000000e+00, ptr %i.ab, align 8, !tbaa !9
  %i.ac = getelementptr inbounds nuw [9600 x i8], ptr %i.i, i64 %indvars.iv38.i ; 2 uses
  %i.ad = add nuw nsw i64 %indvars.iv38.i, 1200
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ad, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %._crit_edge.i
  %index = phi i64 [ 0, %._crit_edge.i ], [ %index.next.1, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %._crit_edge.i ], [ %vec.ind.next.1, %vector.body ] ; 3 uses
  %i.ae = sub nuw nsw <2 x i64> %broadcast.splat, %vec.ind
  %i.af = trunc nuw nsw <2 x i64> %i.ae to <2 x i32>
  %i.ag = urem <2 x i32> %i.af, splat (i32 1200)
  %i.ah = uitofp nneg <2 x i32> %i.ag to <2 x double>
  %i.ai = fdiv <2 x double> %i.ah, splat (double 1.200000e+03)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index
  store <2 x double> %i.ai, ptr %i.aj, align 8, !tbaa !9
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.ak = sub nuw nsw <2 x i64> %broadcast.splat, %vec.ind.next
  %i.al = trunc nuw nsw <2 x i64> %i.ak to <2 x i32>
  %i.am = urem <2 x i32> %i.al, splat (i32 1200)
  %i.an = uitofp nneg <2 x i32> %i.am to <2 x double>
  %i.ao = fdiv <2 x double> %i.an, splat (double 1.200000e+03)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <2 x double> %i.ao, ptr %i.aq, align 8, !tbaa !9
  %index.next.1 = add nuw nsw i64 %index, 4       ; 2 uses
  %vec.ind.next.1 = add nuw nsw <2 x i64> %vec.ind, splat (i64 4)
  %i.ar = icmp eq i64 %index.next.1, 1200
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next39.i, 1000
  br i1 %exitcond41.not.i, label %.preheader28.i, label %.preheader.i, !llvm.loop !17

.preheader28.i:                                   ; preds = %middle.block, %.split.us.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %.split.us.i ], [ 0, %middle.block ] ; 8 uses
  %i.as = icmp samesign ult i64 %indvars.iv36.i, 999
  %i.at = getelementptr inbounds nuw [9600 x i8], ptr %i.i, i64 %indvars.iv36.i ; 4 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv36.i ; 3 uses
  br i1 %i.as, label %.preheader.us.i.preheader, label %vector.body42

.preheader.us.i.preheader:                        ; preds = %.preheader28.i
  %i.au = and i64 %indvars.iv36.i, 1
  %lcmp.mod.not.not = icmp eq i64 %i.au, 0
  %indvars.iv.next39.i20.prol = or disjoint i64 %indvars.iv36.i, 1 ; 3 uses
  %gep.us.i.prol = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next39.i20.prol
  %i.av = icmp eq i64 %indvars.iv36.i, 998
  br label %.preheader.us.i

vector.body42:                                    ; preds = %.preheader28.i, %vector.body42
  %index43 = phi i64 [ %index.next45.2, %vector.body42 ], [ 0, %.preheader28.i ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index43 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.aw, align 8, !tbaa !9
  %wide.load44 = load <2 x double>, ptr %i.ax, align 8, !tbaa !9
  %i.ay = fmul <2 x double> %wide.load, splat (double 1.500000e+00)
  %i.az = fmul <2 x double> %wide.load44, splat (double 1.500000e+00)
  store <2 x double> %i.ay, ptr %i.aw, align 8, !tbaa !9
  store <2 x double> %i.az, ptr %i.ax, align 8, !tbaa !9
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index43 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 48 ; 2 uses
  %wide.load.1 = load <2 x double>, ptr %i.bb, align 8, !tbaa !9
  %wide.load44.1 = load <2 x double>, ptr %i.bc, align 8, !tbaa !9
  %i.bd = fmul <2 x double> %wide.load.1, splat (double 1.500000e+00)
  %i.be = fmul <2 x double> %wide.load44.1, splat (double 1.500000e+00)
  store <2 x double> %i.bd, ptr %i.bb, align 8, !tbaa !9
  store <2 x double> %i.be, ptr %i.bc, align 8, !tbaa !9
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index43 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 80 ; 2 uses
  %wide.load.2 = load <2 x double>, ptr %i.bg, align 8, !tbaa !9
  %wide.load44.2 = load <2 x double>, ptr %i.bh, align 8, !tbaa !9
  %i.bi = fmul <2 x double> %wide.load.2, splat (double 1.500000e+00)
  %i.bj = fmul <2 x double> %wide.load44.2, splat (double 1.500000e+00)
  store <2 x double> %i.bi, ptr %i.bg, align 8, !tbaa !9
  store <2 x double> %i.bj, ptr %i.bh, align 8, !tbaa !9
  %index.next45.2 = add nuw nsw i64 %index43, 12  ; 2 uses
  %i.bk = icmp eq i64 %index.next45.2, 1200
  br i1 %i.bk, label %.split.us.i, label %vector.body42, !llvm.loop !18

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %._crit_edge.us.i
  %indvars.iv42.i = phi i64 [ %indvars.iv.next43.i, %._crit_edge.us.i ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %invariant.gep30.us.i = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv42.i ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv42.i ; 5 uses
  %.promoted.us.i = load double, ptr %i.bl, align 8, !tbaa !9 ; 2 uses
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader.us.i
  %i.bm = load double, ptr %gep.us.i.prol, align 8, !tbaa !9
  %gep31.us.i.prol = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep30.us.i, i64 %indvars.iv.next39.i20.prol
  %i.bn = load double, ptr %gep31.us.i.prol, align 8, !tbaa !9
  %i.bo = fmul double %i.bm, %i.bn
  %i.bp = fadd double %.promoted.us.i, %i.bo      ; 3 uses
  store double %i.bp, ptr %i.bl, align 8, !tbaa !9
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader.us.i
  %.lcssa.unr = phi double [ poison, %.preheader.us.i ], [ %i.bp, %.prol.loopexit.unr-lcssa ]
  %indvars.iv38.i19.unr = phi i64 [ %indvars.iv36.i, %.preheader.us.i ], [ %indvars.iv.next39.i20.prol, %.prol.loopexit.unr-lcssa ]
  %.unr = phi double [ %.promoted.us.i, %.preheader.us.i ], [ %i.bp, %.prol.loopexit.unr-lcssa ]
  br i1 %i.av, label %._crit_edge.us.i, label %.preheader.us.i.new

.preheader.us.i.new:                              ; preds = %.prol.loopexit, %.preheader.us.i.new
  %indvars.iv38.i19 = phi i64 [ %indvars.iv.next39.i20.1, %.preheader.us.i.new ], [ %indvars.iv38.i19.unr, %.prol.loopexit ] ; 2 uses
  %i.bq = phi double [ %i.by, %.preheader.us.i.new ], [ %.unr, %.prol.loopexit ]
  %indvars.iv.next39.i20 = add nuw nsw i64 %indvars.iv38.i19, 1 ; 2 uses
  %gep.us.i = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next39.i20
  %i.br = load double, ptr %gep.us.i, align 8, !tbaa !9
  %gep31.us.i = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep30.us.i, i64 %indvars.iv.next39.i20
  %i.bs = load double, ptr %gep31.us.i, align 8, !tbaa !9
  %i.bt = fmul double %i.br, %i.bs
  %i.bu = fadd double %i.bq, %i.bt                ; 2 uses
  store double %i.bu, ptr %i.bl, align 8, !tbaa !9
  %indvars.iv.next39.i20.1 = add nuw nsw i64 %indvars.iv38.i19, 2 ; 4 uses
  %gep.us.i.1 = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next39.i20.1
  %i.bv = load double, ptr %gep.us.i.1, align 8, !tbaa !9
  %gep31.us.i.1 = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep30.us.i, i64 %indvars.iv.next39.i20.1
  %i.bw = load double, ptr %gep31.us.i.1, align 8, !tbaa !9
  %i.bx = fmul double %i.bv, %i.bw
  %i.by = fadd double %i.bu, %i.bx                ; 3 uses
  store double %i.by, ptr %i.bl, align 8, !tbaa !9
  %exitcond41.not.i21.1 = icmp eq i64 %indvars.iv.next39.i20.1, 999
  br i1 %exitcond41.not.i21.1, label %._crit_edge.us.i, label %.preheader.us.i.new, !llvm.loop !19

._crit_edge.us.i:                                 ; preds = %.preheader.us.i.new, %.prol.loopexit
  %.lcssa = phi double [ %.lcssa.unr, %.prol.loopexit ], [ %i.by, %.preheader.us.i.new ]
  %i.bz = fmul double %.lcssa, 1.500000e+00
  store double %i.bz, ptr %i.bl, align 8, !tbaa !9
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next43.i, 1200
  br i1 %exitcond45.not.i, label %.split.us.i, label %.preheader.us.i, !llvm.loop !20

.split.us.i:                                      ; preds = %vector.body42, %._crit_edge.us.i
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond47.not.i = icmp eq i64 %indvars.iv.next37.i, 1000
  br i1 %exitcond47.not.i, label %kernel_trmm.exit, label %.preheader28.i, !llvm.loop !21

kernel_trmm.exit:                                 ; preds = %.split.us.i
  %2 = tail call noalias dereferenceable_or_null(19201) ptr @malloc(i64 noundef 19201) #15 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 19200
  store i8 0, ptr %i.ca, align 1, !tbaa !27
  br label %.preheader.i22

.preheader.i22:                                   ; preds = %bb.e, %kernel_trmm.exit
  %indvars.iv23.i = phi i64 [ 0, %kernel_trmm.exit ], [ %indvars.iv.next24.i, %bb.e ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [9600 x i8], ptr %i.i, i64 %indvars.iv23.i
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i22
  %indvars.iv.i23 = phi i64 [ 0, %.preheader.i22 ], [ %indvars.iv.next.i24, %bb.d ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.i23
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !9
  %i.ce = shl nuw nsw i64 %indvars.iv.i23, 4
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 %i.ce
  %.inner = and i64 %i.cd, 1085102592571150095
  %.inner47 = or disjoint i64 %.inner, 3472328296227680304
  %i.cg = bitcast i64 %.inner47 to <8 x i8>
  %i.ch = shufflevector <8 x i8> %i.cg, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.ch, ptr %i.cf, align 1, !tbaa !27
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %exitcond.not.i25 = icmp eq i64 %indvars.iv.next.i24, 1200
  br i1 %exitcond.not.i25, label %bb.e, label %bb.d, !llvm.loop !22

bb.e:                                             ; preds = %bb.d
  %i.ci = load ptr, ptr @stderr, align 8, !tbaa !13
  %3 = tail call i32 @fputs(ptr noundef nonnull %2, ptr noundef %i.ci) #13 ; 0 uses
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %exitcond26.not.i = icmp eq i64 %indvars.iv.next24.i, 1000
  br i1 %exitcond26.not.i, label %print_array.exit, label %.preheader.i22, !llvm.loop !23

print_array.exit:                                 ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %2) #12
  tail call void @free(ptr noundef %i.d) #12
  tail call void @free(ptr noundef nonnull %i.i) #12
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noundef i32 @posix_memalign(ptr noundef writeonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"double", !5, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!13 = !{!12, !12, i64 0}
!14 = distinct !{!14, !24, !25, !26}
!15 = distinct !{!15, !24, !26, !25}
!16 = distinct !{!16, !24, !25, !26}
!17 = distinct !{!17, !24}
!18 = distinct !{!18, !24, !25, !26}
!19 = distinct !{!19, !24}
!20 = distinct !{!20, !24}
!21 = distinct !{!21, !24}
!22 = distinct !{!22, !24}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!5, !5, i64 0}
end_hunk_0
