Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/nussinov?download=true
inline.NumInlined: 15
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
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
@.str.2 = private unnamed_addr constant [76 x i8] c"A[%d][%d] = %lf and B[%d][%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00", align 1

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
  tail call void @free(ptr noundef %0) #13
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = sext i32 %1 to i64
  %i.c = mul i64 %0, %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef %i.c) #13
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne i32 %i.d, 0
  %or.cond.i = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond.i, label %bb.b, label %xmalloc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.i = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.h) #14 ; 0 uses
  call void @exit(i32 noundef 1) #15
  unreachable

xmalloc.exit:                                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr null, ptr %i.c, align 8, !tbaa !11
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 2500) #13
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !11   ; 10 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne i32 %i.d, 0
  %or.cond.i.i = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.i = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.h) #14 ; 0 uses
  call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr null, ptr %i.b, align 8, !tbaa !11
  %i.j = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 25000000) #13
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11   ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  %i.m = icmp ne i32 %i.j, 0
  %or.cond.i.i20 = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond.i.i20, label %bb.c, label %polybench_alloc_data.exit21

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.o = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.n) #14 ; 0 uses
  call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit21:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.p = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 25000000) #13
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !11   ; 8 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = icmp ne i32 %i.p, 0
  %or.cond.i.i22 = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond.i.i22, label %bb.d, label %iter.check

bb.d:                                             ; preds = %polybench_alloc_data.exit21
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.u = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.t) #14 ; 0 uses
  call void @exit(i32 noundef 1) #15
  unreachable

iter.check:                                       ; preds = %polybench_alloc_data.exit21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %iter.check
  %index = phi i64 [ 0, %iter.check ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %iter.check ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.v = trunc <16 x i64> %vec.ind to <16 x i8>
  %i.w = add <16 x i8> %i.v, splat (i8 1)
  %i.x = and <16 x i8> %i.w, splat (i8 3)
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 %index
  store <16 x i8> %i.x, ptr %i.y, align 1, !tbaa !26
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %i.z = icmp eq i64 %index.next, 2496
  br i1 %i.z, label %vec.epilog.vector.body, label %vector.body, !llvm.loop !14

vec.epilog.vector.body:                           ; preds = %vector.body
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 2496
  store <4 x i8> <i8 1, i8 2, i8 3, i8 0>, ptr %i.aa, align 1, !tbaa !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(25000000) %i.k, i8 0, i64 25000000, i1 false), !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge135.i, %vec.epilog.vector.body
  %indvars.iv144.i = phi i64 [ 2499, %vec.epilog.vector.body ], [ %indvars.iv.next145.i, %._crit_edge135.i ] ; 7 uses
  %indvars.iv.i24 = phi i64 [ 2500, %vec.epilog.vector.body ], [ %indvars.iv.next.i25, %._crit_edge135.i ] ; 5 uses
  %i.ab = add nuw nsw i64 %indvars.iv144.i, 1     ; 2 uses
  %i.ac = icmp samesign ult i64 %indvars.iv144.i, 2499
  br i1 %i.ac, label %.lr.ph134.i, label %._crit_edge135.i

.lr.ph134.i:                                      ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw [10000 x i8], ptr %i.k, i64 %indvars.iv144.i ; 5 uses
  %i.ae = getelementptr inbounds nuw [10000 x i8], ptr %i.k, i64 %i.ab ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv144.i
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i24
  %indvars.iv.next138.i.prol = add nuw nsw i64 %indvars.iv.i24, 1 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %.lr.ph134.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.i ], [ 0, %.lr.ph134.i ] ; 3 uses
  %indvars.iv140.i = phi i64 [ %indvars.iv.next141.i, %._crit_edge.i ], [ %indvars.iv.i24, %.lr.ph134.i ] ; 8 uses
  %i.ah = add nsw i64 %indvars.iv140.i, -1        ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv140.i ; 6 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ah
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7
  %i.am = call i32 @llvm.smax.i32(i32 %i.aj, i32 %i.al)
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv140.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !7
  %..i = call i32 @llvm.smax.i32(i32 %i.am, i32 %i.ao) ; 2 uses
  store i32 %..i, ptr %i.ai, align 4, !tbaa !7
  %i.ap = icmp samesign ult i64 %indvars.iv144.i, %i.ah
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ah
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7  ; 2 uses
  br i1 %i.ap, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.as = load i8, ptr %i.af, align 1, !tbaa !26
  %i.at = sext i8 %i.as to i32
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv140.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !26
  %i.aw = sext i8 %i.av to i32
  %i.ax = add nsw i32 %i.aw, %i.at
  %i.ay = icmp eq i32 %i.ax, 3
  %i.az = zext i1 %i.ay to i32
  %i.ba = add nsw i32 %i.ar, %i.az
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.g, %bb.f
  %.sink.i = phi i32 [ %i.ba, %bb.g ], [ %i.ar, %bb.f ]
  %.127.i = call i32 @llvm.smax.i32(i32 %..i, i32 %.sink.i) ; 3 uses
  store i32 %.127.i, ptr %i.ai, align 4, !tbaa !7
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv140.i ; 3 uses
  %i.bb = icmp samesign ult i64 %i.ab, %indvars.iv140.i
  br i1 %i.bb, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.critedge.i
  %xtraiter = and i64 %indvar, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.bc = load i32, ptr %i.ag, align 4, !tbaa !7
  %gep.i.prol = getelementptr inbounds nuw [10000 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next138.i.prol
  %i.bd = load i32, ptr %gep.i.prol, align 4, !tbaa !7
  %i.be = add nsw i32 %i.bd, %i.bc
  %.129.i.prol = call i32 @llvm.smax.i32(i32 %.127.i, i32 %i.be) ; 2 uses
  store i32 %.129.i.prol, ptr %i.ai, align 4, !tbaa !7
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv137.i.unr = phi i64 [ %indvars.iv.i24, %.lr.ph.i.preheader ], [ %indvars.iv.next138.i.prol, %.lr.ph.i.prol ]
  %.129131.i.unr = phi i32 [ %.127.i, %.lr.ph.i.preheader ], [ %.129.i.prol, %.lr.ph.i.prol ]
  %i.bf = icmp eq i64 %indvar, 1
  br i1 %i.bf, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv137.i = phi i64 [ %indvars.iv.next138.i.1, %.lr.ph.i ], [ %indvars.iv137.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.129131.i = phi i32 [ %.129.i.1, %.lr.ph.i ], [ %.129131.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv137.i
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !7
  %indvars.iv.next138.i = add nuw nsw i64 %indvars.iv137.i, 1 ; 2 uses
  %gep.i = getelementptr inbounds nuw [10000 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next138.i
  %i.bi = load i32, ptr %gep.i, align 4, !tbaa !7
  %i.bj = add nsw i32 %i.bi, %i.bh
  %.129.i = call i32 @llvm.smax.i32(i32 %.129131.i, i32 %i.bj) ; 2 uses
  store i32 %.129.i, ptr %i.ai, align 4, !tbaa !7
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next138.i
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !7
  %indvars.iv.next138.i.1 = add nuw nsw i64 %indvars.iv137.i, 2 ; 3 uses
  %gep.i.1 = getelementptr inbounds nuw [10000 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next138.i.1
  %i.bm = load i32, ptr %gep.i.1, align 4, !tbaa !7
  %i.bn = add nsw i32 %i.bm, %i.bl
  %.129.i.1 = call i32 @llvm.smax.i32(i32 %.129.i, i32 %i.bn) ; 2 uses
  store i32 %.129.i.1, ptr %i.ai, align 4, !tbaa !7
  %exitcond.not.i26.1 = icmp eq i64 %indvars.iv.next138.i.1, %indvars.iv140.i
  br i1 %exitcond.not.i26.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !15

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.critedge.i
  %indvars.iv.next141.i = add nuw nsw i64 %indvars.iv140.i, 1 ; 2 uses
  %exitcond143.not.i = icmp eq i64 %indvars.iv.next141.i, 2500
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond143.not.i, label %._crit_edge135.i, label %bb.f, !llvm.loop !16

._crit_edge135.i:                                 ; preds = %._crit_edge.i, %bb.e
  %indvars.iv.next145.i = add nsw i64 %indvars.iv144.i, -1
  %.not.i = icmp eq i64 %indvars.iv144.i, 0
  %indvars.iv.next.i25 = add nsw i64 %indvars.iv.i24, -1
  br i1 %.not.i, label %vector.body96, label %bb.e, !llvm.loop !17

vector.body96:                                    ; preds = %._crit_edge135.i, %vector.body96
  %index97 = phi i64 [ %index.next99, %vector.body96 ], [ 0, %._crit_edge135.i ] ; 2 uses
  %vec.ind98 = phi <16 x i64> [ %vec.ind.next100, %vector.body96 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %._crit_edge135.i ] ; 2 uses
  %i.bo = trunc <16 x i64> %vec.ind98 to <16 x i8>
  %i.bp = add <16 x i8> %i.bo, splat (i8 1)
  %i.bq = and <16 x i8> %i.bp, splat (i8 3)
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 %index97
  store <16 x i8> %i.bq, ptr %i.br, align 1, !tbaa !26
  %index.next99 = add nuw i64 %index97, 16        ; 2 uses
  %vec.ind.next100 = add nuw nsw <16 x i64> %vec.ind98, splat (i64 16)
  %i.bs = icmp eq i64 %index.next99, 2496
  br i1 %i.bs, label %vec.epilog.vector.body110, label %vector.body96, !llvm.loop !18

vec.epilog.vector.body110:                        ; preds = %vector.body96
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 2496
  store <4 x i8> <i8 1, i8 2, i8 3, i8 0>, ptr %i.bt, align 1, !tbaa !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(25000000) %i.q, i8 0, i64 25000000, i1 false), !tbaa !7
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge135.i33, %vec.epilog.vector.body110
  %indvars.iv144.i31 = phi i64 [ 2499, %vec.epilog.vector.body110 ], [ %indvars.iv.next145.i34, %._crit_edge135.i33 ] ; 7 uses
  %indvars.iv.i32 = phi i64 [ 2500, %vec.epilog.vector.body110 ], [ %indvars.iv.next.i36, %._crit_edge135.i33 ] ; 5 uses
  %i.bu = add nuw nsw i64 %indvars.iv144.i31, 1   ; 2 uses
  %i.bv = icmp samesign ult i64 %indvars.iv144.i31, 2499
  br i1 %i.bv, label %.lr.ph134.i37, label %._crit_edge135.i33

.lr.ph134.i37:                                    ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw [10000 x i8], ptr %i.q, i64 %indvars.iv144.i31 ; 5 uses
  %i.bx = getelementptr inbounds nuw [10000 x i8], ptr %i.q, i64 %i.bu ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv144.i31
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.i32
  %indvars.iv.next138.i50.prol = add nuw nsw i64 %indvars.iv.i32, 1 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i44, %.lr.ph134.i37
  %indvar122 = phi i64 [ %indvar.next123, %._crit_edge.i44 ], [ 0, %.lr.ph134.i37 ] ; 3 uses
  %indvars.iv140.i38 = phi i64 [ %indvars.iv.next141.i45, %._crit_edge.i44 ], [ %indvars.iv.i32, %.lr.ph134.i37 ] ; 8 uses
  %i.ca = add nsw i64 %indvars.iv140.i38, -1      ; 3 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv140.i38 ; 6 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !7
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.ca
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !7
  %i.cf = call i32 @llvm.smax.i32(i32 %i.cc, i32 %i.ce)
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv140.i38
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !7
  %..i39 = call i32 @llvm.smax.i32(i32 %i.cf, i32 %i.ch) ; 2 uses
  store i32 %..i39, ptr %i.cb, align 4, !tbaa !7
  %i.ci = icmp samesign ult i64 %indvars.iv144.i31, %i.ca
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.ca
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !7  ; 2 uses
  br i1 %i.ci, label %bb.j, label %.critedge.i40

bb.j:                                             ; preds = %bb.i
  %i.cl = load i8, ptr %i.by, align 1, !tbaa !26
  %i.cm = sext i8 %i.cl to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv140.i38
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !26
  %i.cp = sext i8 %i.co to i32
  %i.cq = add nsw i32 %i.cp, %i.cm
  %i.cr = icmp eq i32 %i.cq, 3
  %i.cs = zext i1 %i.cr to i32
  %i.ct = add nsw i32 %i.ck, %i.cs
  br label %.critedge.i40

.critedge.i40:                                    ; preds = %bb.j, %bb.i
  %.sink.i41 = phi i32 [ %i.ct, %bb.j ], [ %i.ck, %bb.i ]
  %.127.i42 = call i32 @llvm.smax.i32(i32 %..i39, i32 %.sink.i41) ; 3 uses
  store i32 %.127.i42, ptr %i.cb, align 4, !tbaa !7
  %invariant.gep.i43 = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv140.i38 ; 3 uses
  %i.cu = icmp samesign ult i64 %i.bu, %indvars.iv140.i38
  br i1 %i.cu, label %.lr.ph.i47.preheader, label %._crit_edge.i44

.lr.ph.i47.preheader:                             ; preds = %.critedge.i40
  %xtraiter124 = and i64 %indvar122, 1
  %lcmp.mod125.not = icmp eq i64 %xtraiter124, 0
  br i1 %lcmp.mod125.not, label %.lr.ph.i47.prol.loopexit, label %.lr.ph.i47.prol

.lr.ph.i47.prol:                                  ; preds = %.lr.ph.i47.preheader
  %i.cv = load i32, ptr %i.bz, align 4, !tbaa !7
  %gep.i51.prol = getelementptr inbounds nuw [10000 x i8], ptr %invariant.gep.i43, i64 %indvars.iv.next138.i50.prol
  %i.cw = load i32, ptr %gep.i51.prol, align 4, !tbaa !7
  %i.cx = add nsw i32 %i.cw, %i.cv
  %.129.i52.prol = call i32 @llvm.smax.i32(i32 %.127.i42, i32 %i.cx) ; 2 uses
  store i32 %.129.i52.prol, ptr %i.cb, align 4, !tbaa !7
  br label %.lr.ph.i47.prol.loopexit

.lr.ph.i47.prol.loopexit:                         ; preds = %.lr.ph.i47.prol, %.lr.ph.i47.preheader
  %indvars.iv137.i48.unr = phi i64 [ %indvars.iv.i32, %.lr.ph.i47.preheader ], [ %indvars.iv.next138.i50.prol, %.lr.ph.i47.prol ]
  %.129131.i49.unr = phi i32 [ %.127.i42, %.lr.ph.i47.preheader ], [ %.129.i52.prol, %.lr.ph.i47.prol ]
  %i.cy = icmp eq i64 %indvar122, 1
  br i1 %i.cy, label %._crit_edge.i44, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %.lr.ph.i47.prol.loopexit, %.lr.ph.i47
  %indvars.iv137.i48 = phi i64 [ %indvars.iv.next138.i50.1, %.lr.ph.i47 ], [ %indvars.iv137.i48.unr, %.lr.ph.i47.prol.loopexit ] ; 3 uses
  %.129131.i49 = phi i32 [ %.129.i52.1, %.lr.ph.i47 ], [ %.129131.i49.unr, %.lr.ph.i47.prol.loopexit ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv137.i48
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !7
  %indvars.iv.next138.i50 = add nuw nsw i64 %indvars.iv137.i48, 1 ; 2 uses
  %gep.i51 = getelementptr inbounds nuw [10000 x i8], ptr %invariant.gep.i43, i64 %indvars.iv.next138.i50
  %i.db = load i32, ptr %gep.i51, align 4, !tbaa !7
  %i.dc = add nsw i32 %i.db, %i.da
  %.129.i52 = call i32 @llvm.smax.i32(i32 %.129131.i49, i32 %i.dc) ; 2 uses
  store i32 %.129.i52, ptr %i.cb, align 4, !tbaa !7
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next138.i50
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !7
  %indvars.iv.next138.i50.1 = add nuw nsw i64 %indvars.iv137.i48, 2 ; 3 uses
  %gep.i51.1 = getelementptr inbounds nuw [10000 x i8], ptr %invariant.gep.i43, i64 %indvars.iv.next138.i50.1
  %i.df = load i32, ptr %gep.i51.1, align 4, !tbaa !7
  %i.dg = add nsw i32 %i.df, %i.de
  %.129.i52.1 = call i32 @llvm.smax.i32(i32 %.129.i52, i32 %i.dg) ; 2 uses
  store i32 %.129.i52.1, ptr %i.cb, align 4, !tbaa !7
  %exitcond.not.i53.1 = icmp eq i64 %indvars.iv.next138.i50.1, %indvars.iv140.i38
  br i1 %exitcond.not.i53.1, label %._crit_edge.i44, label %.lr.ph.i47, !llvm.loop !19

._crit_edge.i44:                                  ; preds = %.lr.ph.i47.prol.loopexit, %.lr.ph.i47, %.critedge.i40
  %indvars.iv.next141.i45 = add nuw nsw i64 %indvars.iv140.i38, 1 ; 2 uses
  %exitcond143.not.i46 = icmp eq i64 %indvars.iv.next141.i45, 2500
  %indvar.next123 = add i64 %indvar122, 1
  br i1 %exitcond143.not.i46, label %._crit_edge135.i33, label %bb.i, !llvm.loop !20

._crit_edge135.i33:                               ; preds = %._crit_edge.i44, %bb.h
  %indvars.iv.next145.i34 = add nsw i64 %indvars.iv144.i31, -1
  %.not.i35 = icmp eq i64 %indvars.iv144.i31, 0
  %indvars.iv.next.i36 = add nsw i64 %indvars.iv.i32, -1
  br i1 %.not.i35, label %.preheader.i, label %bb.h, !llvm.loop !21

.preheader.i:                                     ; preds = %._crit_edge135.i33, %bb.l
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %bb.l ], [ 0, %._crit_edge135.i33 ] ; 4 uses
  %i.dh = getelementptr inbounds nuw [10000 x i8], ptr %i.k, i64 %indvars.iv39.i ; 5 uses
  %i.di = getelementptr inbounds nuw [10000 x i8], ptr %i.q, i64 %indvars.iv39.i ; 5 uses
  br label %bb.k

bb.k:                                             ; preds = %.critedge.i56.4, %.preheader.i
  %indvars.iv.i54 = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i57.4, %.critedge.i56.4 ] ; 8 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.i54
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !7  ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.i54
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !7  ; 2 uses
  %.not.i55 = icmp eq i32 %i.dk, %i.dm
  br i1 %.not.i55, label %.critedge.i56, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i56.3, %.critedge.i56.2, %.critedge.i56.1, %.critedge.i56, %bb.k
  %indvars.iv.i54.lcssa = phi i64 [ %indvars.iv.i54, %bb.k ], [ %indvars.iv.next.i57, %.critedge.i56 ], [ %indvars.iv.next.i57.1, %.critedge.i56.1 ], [ %indvars.iv.next.i57.2, %.critedge.i56.2 ], [ %indvars.iv.next.i57.3, %.critedge.i56.3 ]
  %.lcssa118 = phi i32 [ %i.dk, %bb.k ], [ %i.du, %.critedge.i56 ], [ %i.dy, %.critedge.i56.1 ], [ %i.ec, %.critedge.i56.2 ], [ %i.eg, %.critedge.i56.3 ]
  %.lcssa = phi i32 [ %i.dm, %bb.k ], [ %i.dw, %.critedge.i56 ], [ %i.ea, %.critedge.i56.1 ], [ %i.ee, %.critedge.i56.2 ], [ %i.ei, %.critedge.i56.3 ]
  %i.dn = trunc nuw nsw i64 %indvars.iv39.i to i32 ; 2 uses
  %i.do = trunc nuw nsw i64 %indvars.iv.i54.lcssa to i32 ; 2 uses
  %i.dp = sitofp i32 %.lcssa to double
  %i.dq = sitofp i32 %.lcssa118 to double
  %i.dr = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.ds = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dr, ptr noundef nonnull @.str.2, i32 noundef %i.dn, i32 noundef %i.do, double noundef %i.dq, i32 noundef %i.dn, i32 noundef %i.do, double noundef %i.dp, double noundef 1.000000e-05) #16 ; 0 uses
  br label %bb.o

.critedge.i56:                                    ; preds = %bb.k
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i54, 1 ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next.i57
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !7  ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.next.i57
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !7  ; 2 uses
  %.not.i55.1 = icmp eq i32 %i.du, %i.dw
  br i1 %.not.i55.1, label %.critedge.i56.1, label %check_FP.exit.thread

.critedge.i56.1:                                  ; preds = %.critedge.i56
  %indvars.iv.next.i57.1 = add nuw nsw i64 %indvars.iv.i54, 2 ; 3 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next.i57.1
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !7  ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.next.i57.1
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !7  ; 2 uses
  %.not.i55.2 = icmp eq i32 %i.dy, %i.ea
  br i1 %.not.i55.2, label %.critedge.i56.2, label %check_FP.exit.thread

.critedge.i56.2:                                  ; preds = %.critedge.i56.1
  %indvars.iv.next.i57.2 = add nuw nsw i64 %indvars.iv.i54, 3 ; 3 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next.i57.2
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !7  ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.next.i57.2
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !7  ; 2 uses
  %.not.i55.3 = icmp eq i32 %i.ec, %i.ee
  br i1 %.not.i55.3, label %.critedge.i56.3, label %check_FP.exit.thread

.critedge.i56.3:                                  ; preds = %.critedge.i56.2
  %indvars.iv.next.i57.3 = add nuw nsw i64 %indvars.iv.i54, 4 ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.next.i57.3
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !7  ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.next.i57.3
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !7  ; 2 uses
  %.not.i55.4 = icmp eq i32 %i.eg, %i.ei
  br i1 %.not.i55.4, label %.critedge.i56.4, label %check_FP.exit.thread

.critedge.i56.4:                                  ; preds = %.critedge.i56.3
  %indvars.iv.next.i57.4 = add nuw nsw i64 %indvars.iv.i54, 5 ; 2 uses
  %exitcond.not.i58.4 = icmp eq i64 %indvars.iv.next.i57.4, 2500
  br i1 %exitcond.not.i58.4, label %bb.l, label %bb.k, !llvm.loop !22

bb.l:                                             ; preds = %.critedge.i56.4
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next40.i, 2500
  br i1 %exitcond42.not.i, label %check_FP.exit, label %.preheader.i, !llvm.loop !23

check_FP.exit:                                    ; preds = %bb.l
  %i.ej = call noalias dereferenceable_or_null(40001) ptr @malloc(i64 noundef 40001) #17 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 40000
  store i8 0, ptr %i.ek, align 1, !tbaa !26
  br label %.preheader.i59

.preheader.i59:                                   ; preds = %bb.n, %check_FP.exit
  %indvars.iv20.i = phi i64 [ 0, %check_FP.exit ], [ %indvars.iv.next21.i, %bb.n ] ; 2 uses
  %i.el = getelementptr inbounds nuw [10000 x i8], ptr %i.q, i64 %indvars.iv20.i
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i59
  %indvars.iv.i60 = phi i64 [ 0, %.preheader.i59 ], [ %indvars.iv.next.i61, %bb.m ] ; 3 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv.i60
  %i.en = load i32, ptr %i.em, align 4, !tbaa !7
  %i.eo = sitofp i32 %i.en to double
  %i.ep = shl nuw nsw i64 %indvars.iv.i60, 4
end_hunk_0
