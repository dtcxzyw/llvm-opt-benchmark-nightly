Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_splittingstep_coefficients?download=true
inline.NumInlined: 17
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__func__.SplittingStepCoefficients_LoadCoefficients = private unnamed_addr constant [43 x i8] c"SplittingStepCoefficients_LoadCoefficients\00", align 1
@.str = private unnamed_addr constant [81 x i8] c"/opt-bench/work/sundials/sundials/src/arkode/arkode_splittingstep_coefficients.c\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Unknown splitting coefficients\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"ARKODE_SPLITTING_NONE\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"ARKODE_SPLITTING_LIE_TROTTER_1_1_2\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"ARKODE_SPLITTING_STRANG_2_2_2\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"ARKODE_SPLITTING_BEST_2_2_2\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"ARKODE_SPLITTING_SUZUKI_3_3_2\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"ARKODE_SPLITTING_RUTH_3_3_2\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"ARKODE_SPLITTING_YOSHIDA_4_4_2\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"ARKODE_SPLITTING_YOSHIDA_8_6_2\00", align 1
@__func__.SplittingStepCoefficients_LoadCoefficientsByName = private unnamed_addr constant [49 x i8] c"SplittingStepCoefficients_LoadCoefficientsByName\00", align 1
@__func__.SplittingStepCoefficients_IDToName = private unnamed_addr constant [35 x i8] c"SplittingStepCoefficients_IDToName\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"  sequential methods = %i\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"  stages = %i\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"  partitions = %i\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"  order = %i\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"  alpha = \00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"% .15e  \00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"  beta[%i] = \0A\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"      \00", align 1
@switch.table.SplittingStepCoefficients_IDToName = private unnamed_addr constant [8 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], align 8

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @SplittingStepCoefficients_Alloc(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %0, 1
  %i.b = icmp slt i32 %1, 1
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp slt i32 %2, 1
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16 ; 9 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %0, ptr %i.f, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 %1, ptr %i.g, align 4, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %2, ptr %i.h, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 0, ptr %i.i, align 4, !tbaa !17
  %i.j = zext nneg i32 %0 to i64                  ; 5 uses
  %i.k = tail call noalias ptr @calloc(i64 noundef %i.j, i64 noundef 8) #17 ; 4 uses
  store ptr %i.k, ptr %i.d, align 8, !tbaa !18
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = shl nuw nsw i64 %i.j, 3
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #16 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !19
  %i.o = icmp eq ptr %i.m, null
  br i1 %i.o, label %.loopexit.sink.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.p = add nuw nsw i32 %1, 1                    ; 3 uses
  %i.q = mul nuw nsw i32 %i.p, %0                 ; 2 uses
  %i.r = zext nneg i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #16 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.u = zext nneg i32 %i.p to i64                ; 7 uses
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.v = add nsw i32 %0, -1
  %i.w = icmp ult i32 %i.v, 3
  br i1 %i.w, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.j, 2147483644
  br label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod112 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod112)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.x = mul nuw nsw i64 %indvars.iv.epil, %i.u
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.x
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.epil
  store ptr %i.y, ptr %i.z, align 8, !tbaa !21
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !27

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %i.aa = mul nuw nsw i32 %i.q, %2
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = tail call noalias ptr @calloc(i64 noundef %i.ab, i64 noundef 8) #17 ; 6 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.d, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge
  %i.ae = zext nneg i32 %2 to i64                 ; 5 uses
  %i.af = zext nneg i32 %i.p to i64
  %xtraiter113 = and i64 %i.u, 3                  ; 3 uses
  %i.ag = icmp ult i32 %1, 3
  %unroll_iter117 = and i64 %i.u, 2147483644
  %lcmp.mod115.not = icmp eq i64 %xtraiter113, 0
  %lcmp.mod116 = icmp ne i64 %xtraiter113, 0
  br label %.preheader

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ah = mul nuw nsw i64 %indvars.iv, %i.u
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ah
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !21
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ak = mul nuw nsw i64 %indvars.iv.next, %i.u
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ak
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next
  store ptr %i.al, ptr %i.am, align 8, !tbaa !21
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.an = mul nuw nsw i64 %indvars.iv.next.1, %i.u
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.an
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.1
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !21
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.aq = mul nuw nsw i64 %indvars.iv.next.2, %i.u
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.2
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !21
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.k) #18
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !21  ; 3 uses
  %.not19.i65 = icmp eq ptr %i.at, null
  br i1 %.not19.i65, label %.loopexit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !22 ; 2 uses
  %.not20.i66 = icmp eq ptr %i.au, null
  br i1 %.not20.i66, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.au) #18
  %.pre21.i68 = load ptr, ptr %i.m, align 8, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.av = phi ptr [ %.pre21.i68, %bb.f ], [ %i.at, %bb.e ]
  tail call void @free(ptr noundef %i.av) #18
  br label %.loopexit.sink.split

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge86
  %indvars.iv95 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next96, %._crit_edge86 ] ; 3 uses
  %i.aw = mul nuw nsw i64 %indvars.iv95, %i.af    ; 5 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv95
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !21 ; 5 uses
  br i1 %i.ag, label %.epil.preheader, label %.preheader.new

._crit_edge86.unr-lcssa:                          ; preds = %.preheader.new
  br i1 %lcmp.mod115.not, label %._crit_edge86, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge86.unr-lcssa, %.preheader
  %indvars.iv90.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next91.3, %._crit_edge86.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod116)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv90.epil = phi i64 [ %indvars.iv90.epil.init, %.epil.preheader ], [ %indvars.iv.next91.epil, %bb.h ] ; 3 uses
  %epil.iter114 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter114.next, %bb.h ]
  %i.az = add nuw nsw i64 %indvars.iv90.epil, %i.aw
  %i.ba = mul nuw nsw i64 %i.az, %i.ae
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ba
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv90.epil
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !22
  %indvars.iv.next91.epil = add nuw nsw i64 %indvars.iv90.epil, 1
  %epil.iter114.next = add i64 %epil.iter114, 1   ; 2 uses
  %epil.iter114.cmp.not = icmp eq i64 %epil.iter114.next, %xtraiter113
  br i1 %epil.iter114.cmp.not, label %._crit_edge86, label %bb.h, !llvm.loop !28

._crit_edge86:                                    ; preds = %bb.h, %._crit_edge86.unr-lcssa
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %i.j
  br i1 %exitcond99.not, label %.loopexit, label %.preheader

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv90 = phi i64 [ %indvars.iv.next91.3, %.preheader.new ], [ 0, %.preheader ] ; 6 uses
  %niter118 = phi i64 [ %niter118.next.3, %.preheader.new ], [ 0, %.preheader ]
  %i.bd = add nuw nsw i64 %indvars.iv90, %i.aw
  %i.be = mul nuw nsw i64 %i.bd, %i.ae
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.be
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv90
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !22
  %indvars.iv.next91 = or disjoint i64 %indvars.iv90, 1 ; 2 uses
  %i.bh = add nuw nsw i64 %indvars.iv.next91, %i.aw
  %i.bi = mul nuw nsw i64 %i.bh, %i.ae
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bi
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next91
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !22
  %indvars.iv.next91.1 = or disjoint i64 %indvars.iv90, 2 ; 2 uses
  %i.bl = add nuw nsw i64 %indvars.iv.next91.1, %i.aw
  %i.bm = mul nuw nsw i64 %i.bl, %i.ae
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next91.1
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !22
  %indvars.iv.next91.2 = or disjoint i64 %indvars.iv90, 3 ; 2 uses
  %i.bp = add nuw nsw i64 %indvars.iv.next91.2, %i.aw
  %i.bq = mul nuw nsw i64 %i.bp, %i.ae
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next91.2
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !22
  %indvars.iv.next91.3 = add nuw nsw i64 %indvars.iv90, 4 ; 2 uses
  %niter118.next.3 = add i64 %niter118, 4         ; 2 uses
  %niter118.ncmp.3 = icmp eq i64 %niter118.next.3, %unroll_iter117
  br i1 %niter118.ncmp.3, label %._crit_edge86.unr-lcssa, label %.preheader.new

.loopexit.sink.split:                             ; preds = %bb.d, %bb.g, %bb.c
  %.sink = phi ptr [ %i.k, %bb.c ], [ %i.m, %bb.g ], [ %i.m, %bb.d ]
  tail call void @free(ptr noundef nonnull %.sink) #18
  tail call void @free(ptr noundef nonnull %i.d) #18
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge86, %.loopexit.sink.split, %bb.b, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %.loopexit.sink.split ], [ %i.d, %._crit_edge86 ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @SplittingStepCoefficients_Destroy(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !31     ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 3 uses
  %.not18 = icmp eq ptr %i.f, null
  br i1 %.not18, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 3 uses
  %.not19 = icmp eq ptr %i.g, null
  br i1 %.not19, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %.not20 = icmp eq ptr %i.h, null
  br i1 %.not20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.h) #18
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !19
  %.pre21 = load ptr, ptr %.pre, align 8, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.i = phi ptr [ %.pre21, %bb.h ], [ %i.g, %bb.g ]
  tail call void @free(ptr noundef %i.i) #18
  %.pre22 = load ptr, ptr %i.e, align 8, !tbaa !19
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.j = phi ptr [ %.pre22, %bb.i ], [ %i.f, %bb.f ]
  tail call void @free(ptr noundef %i.j) #18
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e
  tail call void @free(ptr noundef nonnull %i.b) #18
  store ptr null, ptr %0, align 8, !tbaa !31
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.b, %bb.k
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @SplittingStepCoefficients_Create(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef readonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %4, null
  %i.b = icmp eq ptr %5, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp slt i32 %3, 1
  %or.cond3 = or i1 %i.c, %or.cond
  br i1 %or.cond3, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @SplittingStepCoefficients_Alloc(i32 noundef %0, i32 noundef %1, i32 noundef %2) ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  store i32 %3, ptr %i.f, align 4, !tbaa !17
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.h = sext i32 %0 to i64
  %i.i = shl nsw i64 %i.h, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.g, ptr nonnull align 8 %4, i64 %i.i, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = add nsw i32 %1, 1
  %i.o = mul nsw i32 %i.n, %0
  %i.p = mul nsw i32 %i.o, %2
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.m, ptr nonnull align 8 %5, i64 %i.r, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.d, %bb.c ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noundef ptr @SplittingStepCoefficients_Copy(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !16
  %i.h = tail call ptr @SplittingStepCoefficients_Alloc(i32 noundef %i.c, i32 noundef %i.e, i32 noundef %i.g) ; 5 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store i32 %i.k, ptr %i.l, align 4, !tbaa !17
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.n = load ptr, ptr %0, align 8, !tbaa !18
  %i.o = load i32, ptr %i.b, align 8, !tbaa !14
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.m, ptr align 8 %i.n, i64 %i.q, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.z = load i32, ptr %i.b, align 8, !tbaa !14
  %i.aa = load i32, ptr %i.d, align 4, !tbaa !15
  %i.ab = add nsw i32 %i.aa, 1
  %i.ac = mul nsw i32 %i.ab, %i.z
  %i.ad = load i32, ptr %i.f, align 8, !tbaa !16
  %i.ae = mul nsw i32 %i.ac, %i.ad
  %i.af = sext i32 %i.ae to i64
end_hunk_0
