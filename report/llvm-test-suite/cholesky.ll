Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/cholesky?download=true
inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@polybench_papi_counters_threadid = dso_local local_unnamed_addr global i32 0, align 4, !guid !8
@polybench_program_total_flops = dso_local local_unnamed_addr global double 0.000000e+00, align 8, !guid !9
@polybench_t_start = dso_local local_unnamed_addr global double 0.000000e+00, align 8, !guid !10
@polybench_t_end = dso_local local_unnamed_addr global double 0.000000e+00, align 8, !guid !11
@.str = private unnamed_addr constant [7 x i8] c"%0.6f\0A\00", align 1, !guid !12
@polybench_c_start = dso_local local_unnamed_addr global i64 0, align 8, !guid !13
@polybench_c_end = dso_local local_unnamed_addr global i64 0, align 8, !guid !14
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1, !guid !15
@.str.2 = private unnamed_addr constant [76 x i8] c"A[%d][%d] = %lf and B[%d][%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00", align 1, !guid !16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_flush_cache() local_unnamed_addr #0 !guid !23 {
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
define dso_local void @polybench_prepare_instruments() local_unnamed_addr #0 !guid !24 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #3 !guid !25 {
bb.a:
  store double 0.000000e+00, ptr @polybench_t_start, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #3 !guid !26 {
bb.a:
  store double 0.000000e+00, ptr @polybench_t_end, align 8, !tbaa !18
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #4 !guid !27 {
bb.a:
  %i.a = load double, ptr @polybench_t_end, align 8, !tbaa !18
  %i.b = load double, ptr @polybench_t_start, align 8, !tbaa !18
  %i.c = fsub double %i.a, %i.b
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.c) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @polybench_free_data(ptr noundef captures(none) %0) local_unnamed_addr #6 !guid !28 {
bb.a:
  tail call void @free(ptr noundef %0) #16
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %0, i32 noundef %1) local_unnamed_addr #4 !guid !29 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = sext i32 %1 to i64
  %i.c = mul i64 %0, %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8, !tbaa !20
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef %i.c) #16
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne i32 %i.d, 0
  %or.cond.i = or i1 %i.g, %i.f
  br i1 %or.cond.i, label %bb.b, label %xmalloc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.h) #17 ; 0 uses
  tail call void @exit(i32 noundef 1) #18
  unreachable

xmalloc.exit:                                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 !guid !57 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store ptr null, ptr %i.c, align 8, !tbaa !20
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 32000000) #16
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !20   ; 14 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 3 uses
  %i.g = icmp eq ptr %i.e, null
  %i.h = icmp ne i32 %i.d, 0
  %or.cond.i.i = or i1 %i.h, %i.g
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.i) #17 ; 0 uses
  tail call void @exit(i32 noundef 1) #18
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr null, ptr %i.b, align 8, !tbaa !20
  %i.j = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 32000000) #16
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !20   ; 13 uses
  %i.l = ptrtoaddr ptr %i.k to i64                ; 3 uses
  %i.m = icmp eq ptr %i.k, null
  %i.n = icmp ne i32 %i.j, 0
  %or.cond.i.i14 = or i1 %i.n, %i.m
  br i1 %or.cond.i.i14, label %bb.c, label %polybench_alloc_data.exit16

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite.i.i15 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.o) #17 ; 0 uses
  tail call void @exit(i32 noundef 1) #18
  unreachable

polybench_alloc_data.exit16:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.p = sub i64 %i.f, %i.l
  %diff.check = icmp ugt i64 %i.p, -16
  br label %.preheader87.i

.preheader87.i:                                   ; preds = %._crit_edge.i, %polybench_alloc_data.exit16
  %indvars.iv104.i = phi i64 [ 1, %polybench_alloc_data.exit16 ], [ %indvars.iv.next105.i, %._crit_edge.i ] ; 6 uses
  %indvar.i = phi i64 [ 0, %polybench_alloc_data.exit16 ], [ %indvar.next.i, %._crit_edge.i ] ; 9 uses
  %i.q = getelementptr inbounds nuw [16000 x i8], ptr %i.e, i64 %indvar.i ; 5 uses
  %i.r = getelementptr inbounds nuw [16000 x i8], ptr %i.k, i64 %indvar.i ; 5 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv104.i, 2
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader87.i
  %n.vec = and i64 %indvars.iv104.i, 9223372036854775806 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.s = sub <2 x i32> zeroinitializer, %vec.ind
  %i.t = sitofp <2 x i32> %i.s to <2 x double>
  %i.u = fdiv <2 x double> %i.t, splat (double 2.000000e+03)
  %i.v = fadd <2 x double> %i.u, splat (double 1.000000e+00) ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index
  store <2 x double> %i.v, ptr %i.w, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index
  store <2 x double> %i.v, ptr %i.x, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv104.i, %n.vec
  br i1 %cmp.n, label %.loopexit134, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader87.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader87.i ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %indvars.iv104.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.z = trunc i64 %indvars.iv.i.ph to i32
  %i.aa = sub i32 0, %i.z
  %i.ab = sitofp i32 %i.aa to double
  %i.ac = fdiv double %i.ab, 2.000000e+03
  %i.ad = fadd double %i.ac, 1.000000e+00         ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i.ph
  store double %i.ad, ptr %i.ae, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i.ph
  store double %i.ad, ptr %i.af, align 8, !tbaa !18
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.ag = icmp eq i64 %indvar.i, %indvars.iv.i.ph
  br i1 %i.ag, label %.loopexit134, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ah = trunc i64 %indvars.iv.i to i32
  %i.ai = sub i32 0, %i.ah
  %i.aj = sitofp i32 %i.ai to double
  %i.ak = fdiv double %i.aj, 2.000000e+03
  %i.al = fadd double %i.ak, 1.000000e+00         ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i
  store double %i.al, ptr %i.am, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.i
  store double %i.al, ptr %i.an, align 8, !tbaa !18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ao = trunc i64 %indvars.iv.i to i32
  %.neg = xor i32 %i.ao, -1
  %i.ap = sitofp i32 %.neg to double
  %i.aq = fdiv double %i.ap, 2.000000e+03
  %i.ar = fadd double %i.aq, 1.000000e+00         ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i
  store double %i.ar, ptr %i.as, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next.i
  store double %i.ar, ptr %i.at, align 8, !tbaa !18
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %indvars.iv104.i
  br i1 %exitcond.not.i.1, label %.loopexit134, label %scalar.ph, !llvm.loop !31

.loopexit134:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1   ; 2 uses
  %i.au = icmp samesign ult i64 %indvar.i, 1999
  br i1 %i.au, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.loopexit134
  %i.av = mul nuw nsw i64 %indvar.i, 16008
  %i.aw = add nuw nsw i64 %i.av, 8                ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.e, i64 %i.aw
  %i.ax = shl nuw nsw i64 %indvar.i, 3
  %i.ay = sub nsw i64 15992, %i.ax                ; 2 uses
  %scevgep103.i = getelementptr i8, ptr %i.k, i64 %i.aw
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 range(i64 0, 15993) %i.ay, i1 false), !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep103.i, i8 0, i64 range(i64 0, 15993) %i.ay, i1 false), !tbaa !18
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.loopexit134
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvar.i
  store double 1.000000e+00, ptr %i.az, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvar.i
  store double 1.000000e+00, ptr %i.ba, align 8, !tbaa !18
  %indvars.iv.next105.i = add nuw nsw i64 %indvars.iv104.i, 1
  %exitcond112.not.i = icmp eq i64 %indvar.next.i, 2000
  br i1 %exitcond112.not.i, label %bb.d, label %.preheader87.i, !llvm.loop !32

bb.d:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8, !tbaa !20
  %i.bb = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 32000000) #16
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !20  ; 8 uses
  %i.bd = ptrtoaddr ptr %i.bc to i64              ; 2 uses
  %i.be = icmp eq ptr %i.bc, null
  %i.bf = icmp ne i32 %i.bb, 0
  %or.cond.i.i.i = or i1 %i.bf, %i.be
  br i1 %or.cond.i.i.i, label %bb.e, label %polybench_alloc_data.exit.i

bb.e:                                             ; preds = %bb.d
  %i.bg = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite.i.i.i = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.bg) #17 ; 0 uses
  tail call void @exit(i32 noundef 1) #18
  unreachable

polybench_alloc_data.exit.i:                      ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32000000) %i.bc, i8 0, i64 32000000, i1 false), !tbaa !18
  %scevgep104 = getelementptr i8, ptr %i.bc, i64 32000000
  br label %.preheader84.i

.preheader84.i:                                   ; preds = %bb.f, %polybench_alloc_data.exit.i
  %indvars.iv127.i = phi i64 [ 0, %polybench_alloc_data.exit.i ], [ %indvars.iv.next128.i, %bb.f ] ; 3 uses
  %i.bh = shl nuw nsw i64 %indvars.iv127.i, 3
  %i.bi = getelementptr i8, ptr %i.e, i64 %i.bh
  %scevgep = getelementptr i8, ptr %i.bi, i64 31984008
  %invariant.gep94.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv127.i ; 8 uses
  %bound0 = icmp ult ptr %i.bc, %scevgep
  %bound1 = icmp ult ptr %invariant.gep94.i, %scevgep104
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader83.i

.preheader83.i:                                   ; preds = %middle.block112, %.preheader84.i
  %indvars.iv123.i = phi i64 [ 0, %.preheader84.i ], [ %indvars.iv.next124.i, %middle.block112 ] ; 3 uses
  %gep95.i = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep94.i, i64 %indvars.iv123.i ; 3 uses
  %i.bj = getelementptr inbounds nuw [16000 x i8], ptr %i.bc, i64 %indvars.iv123.i ; 3 uses
  br i1 %found.conflict, label %scalar.ph105, label %vector.ph107

vector.ph107:                                     ; preds = %.preheader83.i
  %i.bk = load double, ptr %gep95.i, align 8, !tbaa !18, !alias.scope !61
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bk, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph107
  %index109 = phi i64 [ 0, %vector.ph107 ], [ %index.next111, %vector.body108 ] ; 6 uses
  %i.bl = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep94.i, i64 %index109
  %i.bm = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep94.i, i64 %index109
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16000
  %i.bo = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep94.i, i64 %index109
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32000
  %i.bq = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep94.i, i64 %index109
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48000
  %i.bs = load double, ptr %i.bl, align 8, !tbaa !18, !alias.scope !62
  %i.bt = load double, ptr %i.bn, align 8, !tbaa !18, !alias.scope !62
  %i.bu = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %i.bt, i64 1
  %i.bw = load double, ptr %i.bp, align 8, !tbaa !18, !alias.scope !62
  %i.bx = load double, ptr %i.br, align 8, !tbaa !18, !alias.scope !62
  %i.by = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.bx, i64 1
  %i.ca = fmul <2 x double> %broadcast.splat, %i.bv
  %i.cb = fmul <2 x double> %broadcast.splat, %i.bz
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index109 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.cc, align 8, !tbaa !18, !alias.scope !63, !noalias !64
  %wide.load110 = load <2 x double>, ptr %i.cd, align 8, !tbaa !18, !alias.scope !63, !noalias !64
  %i.ce = fadd <2 x double> %wide.load, %i.ca
  %i.cf = fadd <2 x double> %wide.load110, %i.cb
  store <2 x double> %i.ce, ptr %i.cc, align 8, !tbaa !18, !alias.scope !63, !noalias !64
  store <2 x double> %i.cf, ptr %i.cd, align 8, !tbaa !18, !alias.scope !63, !noalias !64
  %index.next111 = add nuw i64 %index109, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next111, 2000
  br i1 %i.cg, label %middle.block112, label %vector.body108, !llvm.loop !37

scalar.ph105:                                     ; preds = %.preheader83.i, %scalar.ph105
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i.1, %scalar.ph105 ], [ 0, %.preheader83.i ] ; 4 uses
  %i.ch = load double, ptr %gep95.i, align 8, !tbaa !18
  %gep.i = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep94.i, i64 %indvars.iv119.i
  %i.ci = load double, ptr %gep.i, align 8, !tbaa !18
  %i.cj = fmul double %i.ch, %i.ci
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv119.i ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !18
  %i.cm = fadd double %i.cl, %i.cj
  store double %i.cm, ptr %i.ck, align 8, !tbaa !18
  %indvars.iv.next120.i = or disjoint i64 %indvars.iv119.i, 1 ; 2 uses
  %i.cn = load double, ptr %gep95.i, align 8, !tbaa !18
  %gep.i.1 = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep94.i, i64 %indvars.iv.next120.i
  %i.co = load double, ptr %gep.i.1, align 8, !tbaa !18
  %i.cp = fmul double %i.cn, %i.co
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.next120.i ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !18
  %i.cs = fadd double %i.cr, %i.cp
  store double %i.cs, ptr %i.cq, align 8, !tbaa !18
  %indvars.iv.next120.i.1 = add nuw nsw i64 %indvars.iv119.i, 2 ; 2 uses
  %exitcond122.not.i.1 = icmp eq i64 %indvars.iv.next120.i.1, 2000
  br i1 %exitcond122.not.i.1, label %middle.block112, label %scalar.ph105, !llvm.loop !38

middle.block112:                                  ; preds = %vector.body108, %scalar.ph105
  %indvars.iv.next124.i = add nuw nsw i64 %indvars.iv123.i, 1 ; 2 uses
  %exitcond126.not.i = icmp eq i64 %indvars.iv.next124.i, 2000
  br i1 %exitcond126.not.i, label %bb.f, label %.preheader83.i, !llvm.loop !39

bb.f:                                             ; preds = %middle.block112
  %indvars.iv.next128.i = add nuw nsw i64 %indvars.iv127.i, 1 ; 2 uses
  %exitcond130.not.i = icmp eq i64 %indvars.iv.next128.i, 2000
  br i1 %exitcond130.not.i, label %.preheader.i.preheader, label %.preheader84.i, !llvm.loop !40

.preheader.i.preheader:                           ; preds = %bb.f
  %i.ct = sub i64 %i.f, %i.l
  %diff.check121 = icmp ugt i64 %i.ct, -32
  %i.cu = sub i64 %i.bd, %i.f
  %diff.check122 = icmp ugt i64 %i.cu, -32
  %conflict.rdx123 = or i1 %diff.check121, %diff.check122
  %i.cv = sub i64 %i.bd, %i.l
  %diff.check124 = icmp ugt i64 %i.cv, -32
  %conflict.rdx125 = or i1 %conflict.rdx123, %diff.check124
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %middle.block132
  %indvars.iv135.i = phi i64 [ %indvars.iv.next136.i, %middle.block132 ], [ 0, %.preheader.i.preheader ] ; 4 uses
  %i.cw = getelementptr inbounds nuw [16000 x i8], ptr %i.bc, i64 %indvars.iv135.i ; 6 uses
  %i.cx = getelementptr inbounds nuw [16000 x i8], ptr %i.e, i64 %indvars.iv135.i ; 6 uses
  %i.cy = getelementptr inbounds nuw [16000 x i8], ptr %i.k, i64 %indvars.iv135.i ; 6 uses
  br i1 %conflict.rdx125, label %scalar.ph119, label %vector.body127

vector.body127:                                   ; preds = %.preheader.i, %vector.body127
  %index128 = phi i64 [ %index.next131.1, %vector.body127 ], [ 0, %.preheader.i ] ; 5 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index128 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %wide.load129 = load <2 x double>, ptr %i.cz, align 8, !tbaa !18 ; 2 uses
  %wide.load130 = load <2 x double>, ptr %i.da, align 8, !tbaa !18 ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index128 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <2 x double> %wide.load129, ptr %i.db, align 8, !tbaa !18
  store <2 x double> %wide.load130, ptr %i.dc, align 8, !tbaa !18
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %index128 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <2 x double> %wide.load129, ptr %i.dd, align 8, !tbaa !18
  store <2 x double> %wide.load130, ptr %i.de, align 8, !tbaa !18
  %index.next131 = or disjoint i64 %index128, 4   ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index.next131 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load129.1 = load <2 x double>, ptr %i.df, align 8, !tbaa !18 ; 2 uses
  %wide.load130.1 = load <2 x double>, ptr %i.dg, align 8, !tbaa !18 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %index.next131 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <2 x double> %wide.load129.1, ptr %i.dh, align 8, !tbaa !18
  store <2 x double> %wide.load130.1, ptr %i.di, align 8, !tbaa !18
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %index.next131 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store <2 x double> %wide.load129.1, ptr %i.dj, align 8, !tbaa !18
  store <2 x double> %wide.load130.1, ptr %i.dk, align 8, !tbaa !18
  %index.next131.1 = add nuw nsw i64 %index128, 8 ; 2 uses
  %i.dl = icmp eq i64 %index.next131.1, 2000
  br i1 %i.dl, label %middle.block132, label %vector.body127, !llvm.loop !41

scalar.ph119:                                     ; preds = %.preheader.i, %scalar.ph119
  %indvars.iv131.i = phi i64 [ %indvars.iv.next132.i.3, %scalar.ph119 ], [ 0, %.preheader.i ] ; 7 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv131.i
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !18 ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv131.i
  store double %i.dn, ptr %i.do, align 8, !tbaa !18
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv131.i
  store double %i.dn, ptr %i.dp, align 8, !tbaa !18
  %indvars.iv.next132.i = or disjoint i64 %indvars.iv131.i, 1 ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.next132.i
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !18 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.next132.i
  store double %i.dr, ptr %i.ds, align 8, !tbaa !18
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.next132.i
  store double %i.dr, ptr %i.dt, align 8, !tbaa !18
  %indvars.iv.next132.i.1 = or disjoint i64 %indvars.iv131.i, 2 ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.next132.i.1
  %i.dv = load double, ptr %i.du, align 8, !tbaa !18 ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.next132.i.1
  store double %i.dv, ptr %i.dw, align 8, !tbaa !18
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.next132.i.1
  store double %i.dv, ptr %i.dx, align 8, !tbaa !18
  %indvars.iv.next132.i.2 = or disjoint i64 %indvars.iv131.i, 3 ; 3 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.next132.i.2
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !18 ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.next132.i.2
  store double %i.dz, ptr %i.ea, align 8, !tbaa !18
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.next132.i.2
  store double %i.dz, ptr %i.eb, align 8, !tbaa !18
  %indvars.iv.next132.i.3 = add nuw nsw i64 %indvars.iv131.i, 4 ; 2 uses
  %exitcond134.not.i.3 = icmp eq i64 %indvars.iv.next132.i.3, 2000
  br i1 %exitcond134.not.i.3, label %middle.block132, label %scalar.ph119, !llvm.loop !42

middle.block132:                                  ; preds = %vector.body127, %scalar.ph119
  %indvars.iv.next136.i = add nuw nsw i64 %indvars.iv135.i, 1 ; 2 uses
  %exitcond138.not.i = icmp eq i64 %indvars.iv.next136.i, 2000
  br i1 %exitcond138.not.i, label %init_array.exit, label %.preheader.i, !llvm.loop !43

init_array.exit:                                  ; preds = %middle.block132
  tail call void @free(ptr noundef nonnull %i.bc) #16
  br label %.preheader44.i

.preheader44.i:                                   ; preds = %._crit_edge49.i, %init_array.exit
  %indvars.iv64.i = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next65.i, %._crit_edge49.i ] ; 11 uses
  %.not.i = icmp eq i64 %indvars.iv64.i, 0
  br i1 %.not.i, label %.preheader43.._crit_edge49_crit_edge.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.preheader44.i
  %i.ec = getelementptr inbounds nuw [16000 x i8], ptr %i.e, i64 %indvars.iv64.i ; 10 uses
  br label %.preheader.i17

.preheader43.._crit_edge49_crit_edge.i:           ; preds = %.preheader44.i
  %.pre70.i = load double, ptr %i.e, align 8, !tbaa !18
  br label %._crit_edge49.i

.lr.ph48.i:                                       ; preds = %._crit_edge.i22
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv64.i ; 4 uses
  %.promoted50.i = load double, ptr %i.ed, align 8, !tbaa !18 ; 2 uses
  %xtraiter152 = and i64 %indvars.iv64.i, 1
  %i.ee = icmp eq i64 %indvars.iv64.i, 1
  br i1 %i.ee, label %.epil.preheader151, label %.lr.ph48.i.new

.lr.ph48.i.new:                                   ; preds = %.lr.ph48.i
  %unroll_iter158 = and i64 %indvars.iv64.i, 9223372036854775806
  br label %bb.h

.preheader.i17:                                   ; preds = %._crit_edge.i22, %.preheader.lr.ph.i
  %indvars.iv55.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next56.i, %._crit_edge.i22 ] ; 11 uses
  %.not52.i = icmp eq i64 %indvars.iv55.i, 0
  br i1 %.not52.i, label %.preheader.._crit_edge_crit_edge.i, label %.lr.ph.i18

.preheader.._crit_edge_crit_edge.i:               ; preds = %.preheader.i17
  %.pre.i = load double, ptr %i.ec, align 8, !tbaa !18
  br label %._crit_edge.i22

.lr.ph.i18:                                       ; preds = %.preheader.i17
  %i.ef = getelementptr inbounds nuw [16000 x i8], ptr %i.e, i64 %indvars.iv55.i ; 3 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv55.i ; 4 uses
  %.promoted.i = load double, ptr %i.eg, align 8, !tbaa !18 ; 2 uses
  %xtraiter147 = and i64 %indvars.iv55.i, 1
end_hunk_0
