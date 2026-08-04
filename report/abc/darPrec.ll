inline.NumInlined: 8
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 19
begin_hunk_0_@Dar_Permutations:bb.a
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds i8, ptr %i.o, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i.epil
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !8
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %Dar_ArrayAlloc.exit, label %bb.c, !llvm.loop !25

Dar_ArrayAlloc.exit:                              ; preds = %Dar_ArrayAlloc.exit.loopexit.unr-lcssa, %bb.c, %Dar_Factorial.exit
  %i.as = icmp sgt i32 %0, 0
  br i1 %i.as, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %Dar_ArrayAlloc.exit
  %wide.trip.count = zext nneg i32 %0 to i64      ; 6 uses
  %min.iters.check18 = icmp ult i32 %0, 4
  br i1 %min.iters.check18, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check19 = icmp ult i32 %0, 32
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph20

vector.ph20:                                      ; preds = %vector.main.loop.iter.check
  %n.mod.vf21 = and i64 %wide.trip.count, 28
  %n.vec22 = and i64 %wide.trip.count, 2147483616 ; 4 uses
  br label %vector.body23

vector.body23:                                    ; preds = %vector.body23, %vector.ph20
  %index24 = phi i64 [ 0, %vector.ph20 ], [ %index.next27, %vector.body23 ] ; 2 uses
  %vec.ind25 = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %vector.ph20 ], [ %vec.ind.next28, %vector.body23 ] ; 3 uses
  %step.add26 = add <16 x i8> %vec.ind25, splat (i8 16)
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %index24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store <16 x i8> %vec.ind25, ptr %i.at, align 16, !tbaa !19
  store <16 x i8> %step.add26, ptr %i.au, align 16, !tbaa !19
  %index.next27 = add nuw i64 %index24, 32        ; 2 uses
  %vec.ind.next28 = add <16 x i8> %vec.ind25, splat (i8 32)
  %i.av = icmp eq i64 %index.next27, %n.vec22
  br i1 %i.av, label %middle.block29, label %vector.body23, !llvm.loop !26

middle.block29:                                   ; preds = %vector.body23
  %cmp.n30 = icmp eq i64 %n.vec22, %wide.trip.count
  br i1 %cmp.n30, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block29
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf21, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !27

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec22, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec32 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %i.aw = trunc i64 %vec.epilog.resume.val to i8
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %i.aw, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next35, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind34 = phi <4 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next36, %vec.epilog.vector.body ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 %index33
  store <4 x i8> %vec.ind34, ptr %i.ax, align 4, !tbaa !19
  %index.next35 = add nuw i64 %index33, 4         ; 2 uses
  %vec.ind.next36 = add <4 x i8> %vec.ind34, splat (i8 4)
  %i.ay = icmp eq i64 %index.next35, %n.vec32
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !28

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n37 = icmp eq i64 %n.vec32, %wide.trip.count
  br i1 %cmp.n37, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec22, %vec.epilog.iter.check ], [ %n.vec32, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.az = trunc i64 %indvars.iv to i8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %.lr.ph, %middle.block29, %vec.epilog.middle.block, %Dar_ArrayAlloc.exit
  call void @Dar_Permutations_rec(ptr noundef nonnull %i.m, i32 noundef %.0.lcssa.i, i32 noundef %0, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %i.m
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Dar_TruthPermute_int(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = shl nsw i64 %i.a, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 %i.b, i1 false)
  %i.c = icmp sgt i32 %1, 0
  %i.d = icmp sgt i32 %3, 0
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge17.split

.preheader.preheader:                             ; preds = %bb.a
  %wide.trip.count22 = zext nneg i32 %1 to i64
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.e = icmp eq i32 %3, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod25 = trunc i32 %3 to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv19 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next20, %._crit_edge ] ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv19 ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv19 ; 6 uses
  br i1 %i.e, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.e ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.e ], [ 0, %.preheader ]
  %i.h = load i32, ptr %i.f, align 4, !tbaa !30
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
  %i.j = shl nuw i32 1, %i.i
  %i.k = and i32 %i.h, %i.j
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.new
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.m = load i8, ptr %i.l, align 1, !tbaa !19
  %i.n = zext nneg i8 %i.m to i32
  %i.o = shl nuw i32 1, %i.n
  %i.p = load i32, ptr %i.g, align 4, !tbaa !30
  %i.q = or i32 %i.o, %i.p
  store i32 %i.q, ptr %i.g, align 4, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %.preheader.new, %bb.b
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.r = load i32, ptr %i.f, align 4, !tbaa !30
  %i.s = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.t = shl nuw i32 1, %i.s
  %i.u = and i32 %i.r, %i.t
  %.not.1 = icmp eq i32 %i.u, 0
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  %i.w = load i8, ptr %i.v, align 1, !tbaa !19
  %i.x = zext nneg i8 %i.w to i32
  %i.y = shl nuw i32 1, %i.x
  %i.z = load i32, ptr %i.g, align 4, !tbaa !30
  %i.aa = or i32 %i.y, %i.z
  store i32 %i.aa, ptr %i.g, align 4, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !31

._crit_edge.unr-lcssa:                            ; preds = %bb.e
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.ab = load i32, ptr %i.f, align 4, !tbaa !30
  %i.ac = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.ad = shl nuw i32 1, %i.ac
  %i.ae = and i32 %i.ab, %i.ad
  %.not.epil = icmp eq i32 %i.ae, 0
  br i1 %.not.epil, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.epil.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.epil.init
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !19
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = shl nuw i32 1, %i.ah
  %i.aj = load i32, ptr %i.g, align 4, !tbaa !30
  %i.ak = or i32 %i.ai, %i.aj
  store i32 %i.ak, ptr %i.g, align 4, !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.f, %._crit_edge.unr-lcssa
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1 ; 2 uses
  %exitcond23.not = icmp eq i64 %indvars.iv.next20, %wide.trip.count22
  br i1 %exitcond23.not, label %._crit_edge17.split, label %.preheader, !llvm.loop !32

._crit_edge17.split:                              ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define i32 @Dar_TruthPermute(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 {
bb.a:
  %i.a = shl nuw i32 1, %2                        ; 7 uses
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2                      ; 3 uses
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #14 ; 11 uses
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.c) #14 ; 9 uses
  %.not55 = icmp eq i32 %2, 31
  br i1 %.not55, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1) ; 3 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 5 uses
  %min.iters.check = icmp slt i32 %i.a, 8
  br i1 %min.iters.check, label %.lr.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <4 x i32> %vec.ind, ptr %i.f, align 4, !tbaa !30
  store <4 x i32> %step.add, ptr %i.g, align 4, !tbaa !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %._crit_edge, label %vector.body, !llvm.loop !33

.lr.ph:                                           ; preds = %.lr.ph.preheader
  store i32 0, ptr %i.d, align 4, !tbaa !30
  %exitcond.not = icmp slt i32 %i.a, 2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 1, ptr %i.i, align 4, !tbaa !30
  %exitcond.not.1 = icmp eq i32 %2, 1
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 2, ptr %i.j, align 4, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 3, ptr %i.k, align 4, !tbaa !30
  %exitcond.not.3 = icmp eq i32 %2, 2
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.2
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 4, ptr %i.l, align 4, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i32 5, ptr %i.m, align 4, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 6, ptr %i.n, align 4, !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %vector.body, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.e, i8 0, i64 %i.c, i1 false)
  %i.o = icmp sgt i32 %2, 0
  br i1 %i.o, label %.preheader.preheader.i, label %Dar_TruthPermute_int.exit.thread

.preheader.preheader.i:                           ; preds = %._crit_edge
  %wide.trip.count22.i = zext nneg i32 %i.a to i64
  %wide.trip.count.i = zext nneg i32 %2 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.p = icmp eq i32 %2, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod84 = trunc i32 %2 to i1
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv19.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next20.i, %._crit_edge.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv19.i
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv19.i ; 6 uses
  %i.s = load i32, ptr %i.q, align 4, !tbaa !30   ; 3 uses
  br i1 %i.p, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %bb.e
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.e ], [ 0, %.preheader.i ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.e ], [ 0, %.preheader.i ]
  %i.t = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.u = shl nuw i32 1, %i.t
  %i.v = and i32 %i.u, %i.s
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader.i.new
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !19
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw i32 1, %i.y
  %i.aa = load i32, ptr %i.r, align 4, !tbaa !30
  %i.ab = or i32 %i.z, %i.aa
  store i32 %i.ab, ptr %i.r, align 4, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.i.new
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.ad = shl nuw i32 1, %i.ac
  %i.ae = and i32 %i.ad, %i.s
  %.not.i.1 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !19
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = shl nuw i32 1, %i.ah
  %i.aj = load i32, ptr %i.r, align 4, !tbaa !30
  %i.ak = or i32 %i.ai, %i.aj
  store i32 %i.ak, ptr %i.r, align 4, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !31

._crit_edge.i.unr-lcssa:                          ; preds = %bb.e
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod84)
  %i.al = trunc nuw nsw i64 %indvars.iv.i.epil.init to i32
  %i.am = shl nuw i32 1, %i.al
  %i.an = and i32 %i.am, %i.s
  %.not.i.epil = icmp eq i32 %i.an, 0
  br i1 %.not.i.epil, label %._crit_edge.i, label %bb.f

bb.f:                                             ; preds = %.epil.preheader
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.epil.init
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !19
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = shl nuw i32 1, %i.aq
  %i.as = load i32, ptr %i.r, align 4, !tbaa !30
  %i.at = or i32 %i.ar, %i.as
  store i32 %i.at, ptr %i.r, align 4, !tbaa !30
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %bb.f, %._crit_edge.i.unr-lcssa
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1 ; 2 uses
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next20.i, %wide.trip.count22.i
  br i1 %exitcond23.not.i, label %Dar_TruthPermute_int.exit, label %.preheader.i, !llvm.loop !32

Dar_TruthPermute_int.exit:                        ; preds = %._crit_edge.i
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %.lr.ph53.preheader, label %.lr.ph50.preheader

Dar_TruthPermute_int.exit.thread:                 ; preds = %._crit_edge
  %.not74 = icmp eq i32 %3, 0
  br i1 %.not74, label %.lr.ph53.preheader, label %.lr.ph50.preheader

.lr.ph50.preheader:                               ; preds = %Dar_TruthPermute_int.exit, %Dar_TruthPermute_int.exit.thread
  %xtraiter85 = and i64 %wide.trip.count, 1
  %i.au = icmp slt i32 %i.a, 2
  br i1 %i.au, label %.lr.ph50.epil.preheader, label %.lr.ph50.preheader.new

.lr.ph50.preheader.new:                           ; preds = %.lr.ph50.preheader
  %unroll_iter89 = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph50

.lr.ph53.preheader:                               ; preds = %Dar_TruthPermute_int.exit, %Dar_TruthPermute_int.exit.thread
  %xtraiter91 = and i64 %wide.trip.count, 1
  %i.av = icmp slt i32 %i.a, 2
  br i1 %i.av, label %.lr.ph53.epil.preheader, label %.lr.ph53.preheader.new

.lr.ph53.preheader.new:                           ; preds = %.lr.ph53.preheader
  %unroll_iter95 = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph53

.lr.ph50:                                         ; preds = %.lr.ph50, %.lr.ph50.preheader.new
  %indvars.iv60 = phi i64 [ 0, %.lr.ph50.preheader.new ], [ %indvars.iv.next61.1, %.lr.ph50 ] ; 4 uses
  %.03648 = phi i32 [ 0, %.lr.ph50.preheader.new ], [ %.137.1, %.lr.ph50 ]
  %niter90 = phi i64 [ 0, %.lr.ph50.preheader.new ], [ %niter90.next.1, %.lr.ph50 ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv60
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !30
  %i.ay = shl nuw i32 1, %i.ax
  %i.az = and i32 %i.ay, %0
  %.not44 = icmp eq i32 %i.az, 0
  %i.ba = trunc nuw nsw i64 %indvars.iv60 to i32
  %i.bb = shl nuw i32 1, %i.ba
  %i.bc = select i1 %.not44, i32 0, i32 %i.bb
  %.137 = or i32 %i.bc, %.03648
  %indvars.iv.next61 = or disjoint i64 %indvars.iv60, 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next61
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !30
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = and i32 %i.bf, %0
  %.not44.1 = icmp eq i32 %i.bg, 0
  %i.bh = trunc nuw nsw i64 %indvars.iv.next61 to i32
  %i.bi = shl nuw i32 1, %i.bh
  %i.bj = select i1 %.not44.1, i32 0, i32 %i.bi
  %.137.1 = or i32 %i.bj, %.137                   ; 3 uses
  %indvars.iv.next61.1 = add nuw nsw i64 %indvars.iv60, 2 ; 2 uses
  %niter90.next.1 = add i64 %niter90, 2           ; 2 uses
  %niter90.ncmp.1 = icmp eq i64 %niter90.next.1, %unroll_iter89
  br i1 %niter90.ncmp.1, label %.loopexit.loopexit81.unr-lcssa, label %.lr.ph50, !llvm.loop !34

.lr.ph53:                                         ; preds = %bb.i, %.lr.ph53.preheader.new
  %indvars.iv66 = phi i64 [ 0, %.lr.ph53.preheader.new ], [ %indvars.iv.next67.1, %bb.i ] ; 4 uses
  %.251 = phi i32 [ 0, %.lr.ph53.preheader.new ], [ %.3.1, %bb.i ] ; 2 uses
  %niter96 = phi i64 [ 0, %.lr.ph53.preheader.new ], [ %niter96.next.1, %bb.i ]
  %i.bk = trunc nuw nsw i64 %indvars.iv66 to i32
  %i.bl = shl nuw i32 1, %i.bk
  %i.bm = and i32 %i.bl, %0
  %.not41 = icmp eq i32 %i.bm, 0
  br i1 %.not41, label %.lr.ph53.1, label %bb.g

bb.g:                                             ; preds = %.lr.ph53
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv66
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !30
  %i.bp = shl nuw i32 1, %i.bo
  %i.bq = or i32 %i.bp, %.251
  br label %.lr.ph53.1

.lr.ph53.1:                                       ; preds = %.lr.ph53, %bb.g
  %.3 = phi i32 [ %i.bq, %bb.g ], [ %.251, %.lr.ph53 ] ; 2 uses
  %indvars.iv.next67 = or disjoint i64 %indvars.iv66, 1 ; 2 uses
  %i.br = trunc nuw nsw i64 %indvars.iv.next67 to i32
  %i.bs = shl nuw i32 1, %i.br
  %i.bt = and i32 %i.bs, %0
  %.not41.1 = icmp eq i32 %i.bt, 0
  br i1 %.not41.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph53.1
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next67
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !30
  %i.bw = shl nuw i32 1, %i.bv
  %i.bx = or i32 %i.bw, %.3
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph53.1
  %.3.1 = phi i32 [ %i.bx, %bb.h ], [ %.3, %.lr.ph53.1 ] ; 3 uses
  %indvars.iv.next67.1 = add nuw nsw i64 %indvars.iv66, 2 ; 2 uses
  %niter96.next.1 = add i64 %niter96, 2           ; 2 uses
  %niter96.ncmp.1 = icmp eq i64 %niter96.next.1, %unroll_iter95
  br i1 %niter96.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph53, !llvm.loop !35

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  br i1 %lcmp.mod92.not, label %.loopexit, label %.lr.ph53.epil.preheader

.lr.ph53.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph53.preheader
  %indvars.iv66.epil.init = phi i64 [ 0, %.lr.ph53.preheader ], [ %indvars.iv.next67.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.251.epil.init = phi i32 [ 0, %.lr.ph53.preheader ], [ %.3.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod94 = trunc i32 %smax to i1
  tail call void @llvm.assume(i1 %lcmp.mod94)
  %i.by = trunc nuw nsw i64 %indvars.iv66.epil.init to i32
  %i.bz = shl nuw i32 1, %i.by
  %i.ca = and i32 %i.bz, %0
  %.not41.epil = icmp eq i32 %i.ca, 0
  br i1 %.not41.epil, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph53.epil.preheader
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv66.epil.init
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !30
  %i.cd = shl nuw i32 1, %i.cc
  %i.ce = or i32 %i.cd, %.251.epil.init
  br label %.loopexit

.loopexit.loopexit81.unr-lcssa:                   ; preds = %.lr.ph50
  %lcmp.mod86.not = icmp eq i64 %xtraiter85, 0
  br i1 %lcmp.mod86.not, label %.loopexit, label %.lr.ph50.epil.preheader

.lr.ph50.epil.preheader:                          ; preds = %.loopexit.loopexit81.unr-lcssa, %.lr.ph50.preheader
  %indvars.iv60.epil.init = phi i64 [ 0, %.lr.ph50.preheader ], [ %indvars.iv.next61.1, %.loopexit.loopexit81.unr-lcssa ] ; 2 uses
  %.03648.epil.init = phi i32 [ 0, %.lr.ph50.preheader ], [ %.137.1, %.loopexit.loopexit81.unr-lcssa ]
  %lcmp.mod88 = trunc i32 %smax to i1
  tail call void @llvm.assume(i1 %lcmp.mod88)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv60.epil.init
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !30
  %i.ch = shl nuw i32 1, %i.cg
  %i.ci = and i32 %i.ch, %0
  %.not44.epil = icmp eq i32 %i.ci, 0
  %i.cj = trunc nuw nsw i64 %indvars.iv60.epil.init to i32
  %i.ck = shl nuw i32 1, %i.cj
  %i.cl = select i1 %.not44.epil, i32 0, i32 %i.ck
  %.137.epil = or i32 %i.cl, %.03648.epil.init
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph50.epil.preheader, %.loopexit.loopexit81.unr-lcssa, %.loopexit.loopexit.unr-lcssa, %bb.j, %.lr.ph53.epil.preheader, %bb.a
  %.4 = phi i32 [ 0, %bb.a ], [ %.251.epil.init, %.lr.ph53.epil.preheader ], [ %.3.1, %.loopexit.loopexit.unr-lcssa ], [ %i.ce, %bb.j ], [ %.137.1, %.loopexit.loopexit81.unr-lcssa ], [ %.137.epil, %.lr.ph50.epil.preheader ]
  %.not42 = icmp eq ptr %i.d, null
  br i1 %.not42, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  tail call void @free(ptr noundef nonnull %i.d) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  tail call void @free(ptr noundef nonnull %i.e) #15
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define i32 @Dar_TruthPolarize(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.b = icmp eq i32 %2, 1
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.d ] ; 4 uses
  %.01920 = phi i32 [ %0, %.lr.ph.preheader.new ], [ %.1.1, %bb.d ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.d ]
  %i.c = trunc nuw nsw i64 %indvars.iv to i32
  %i.d = shl nuw i32 1, %i.c                      ; 3 uses
  %i.e = and i32 %i.d, %1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.lr.ph.1, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @Dar_TruthPolarize.Signs, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 8, !tbaa !30   ; 2 uses
  %i.h = xor i32 %i.g, -1
  %i.i = and i32 %.01920, %i.h
  %i.j = and i32 %i.g, %.01920
  %i.k = shl i32 %i.i, %i.d
  %i.l = lshr i32 %i.j, %i.d
  %i.m = or i32 %i.k, %i.l
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.b
  %.1 = phi i32 [ %i.m, %bb.b ], [ %.01920, %.lr.ph ] ; 3 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.n = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.o = shl nuw i32 1, %i.n                      ; 3 uses
  %i.p = and i32 %i.o, %1
  %.not.1 = icmp eq i32 %i.p, 0
  br i1 %.not.1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.1
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @Dar_TruthPolarize.Signs, i64 %indvars.iv.next
  %i.r = load i32, ptr %i.q, align 4, !tbaa !30   ; 2 uses
  %i.s = xor i32 %i.r, -1
  %i.t = and i32 %.1, %i.s
  %i.u = and i32 %i.r, %.1
  %i.v = shl i32 %i.t, %i.o
  %i.w = lshr i32 %i.u, %i.o
  %i.x = or i32 %i.v, %i.w
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.1
  %.1.1 = phi i32 [ %i.x, %bb.c ], [ %.1, %.lr.ph.1 ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !36

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.01920.epil.init = phi i32 [ %0, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod24 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod24)
  %i.y = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.z = shl nuw i32 1, %i.y                      ; 3 uses
  %i.aa = and i32 %i.z, %1
  %.not.epil = icmp eq i32 %i.aa, 0
  br i1 %.not.epil, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %.lr.ph.epil.preheader
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr @Dar_TruthPolarize.Signs, i64 %indvars.iv.epil.init
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !30 ; 2 uses
  %i.ad = xor i32 %i.ac, -1
  %i.ae = and i32 %.01920.epil.init, %i.ad
  %i.af = and i32 %i.ac, %.01920.epil.init
  %i.ag = shl i32 %i.ae, %i.z
  %i.ah = lshr i32 %i.af, %i.z
  %i.ai = or i32 %i.ag, %i.ah
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.e, %.lr.ph.epil.preheader, %bb.a
  %.019.lcssa = phi i32 [ %0, %bb.a ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.ai, %bb.e ], [ %.01920.epil.init, %.lr.ph.epil.preheader ]
  ret i32 %.019.lcssa
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Dar_Truth4VarNPN(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #10 {
Dar_ArrayAlloc.exit.i:
  %i.a = alloca [50 x i8], align 16               ; 4 uses
  %i.b = tail call noalias dereferenceable_or_null(131072) ptr @calloc(i64 noundef 65536, i64 noundef 2) #16 ; 7 uses
  %i.c = tail call noalias dereferenceable_or_null(65536) ptr @calloc(i64 noundef 65536, i64 noundef 1) #16 ; 7 uses
  %i.d = tail call noalias dereferenceable_or_null(65536) ptr @calloc(i64 noundef 65536, i64 noundef 1) #16 ; 7 uses
  %i.e = tail call noalias dereferenceable_or_null(65536) ptr @calloc(i64 noundef 65536, i64 noundef 1) #16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.f = tail call noalias dereferenceable_or_null(288) ptr @malloc(i64 noundef 288) #14 ; 52 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 192
  store ptr %i.g, ptr %i.f, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 196
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 204
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.l, ptr %i.m, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 208
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.n, ptr %i.o, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 212
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %i.p, ptr %i.q, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %i.r, ptr %i.s, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 220
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr %i.t, ptr %i.u, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %i.v, ptr %i.w, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 228
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store ptr %i.x, ptr %i.y, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 232
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 236
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 244
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 248
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 252
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store ptr %i.al, ptr %i.am, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 260
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 264
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 268
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  store ptr %i.at, ptr %i.au, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 276
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 280
end_hunk_0
