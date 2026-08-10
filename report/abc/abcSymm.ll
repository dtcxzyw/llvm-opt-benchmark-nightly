inline.NumInlined: 78
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@Ntk_SymFunDeriveNpn:bb.a
  %i.dp = icmp ult i64 %i.dm, %i.do
  br i1 %i.dp, label %Abc_TtCopy.exit55, label %Abc_TtCompareRev.exit48

Abc_TtCompareRev.exit48:                          ; preds = %bb.j
  br i1 %i.g, label %Abc_TtNot.exit, label %.lr.ph18.i51.preheader

.lr.ph18.i51.preheader:                           ; preds = %Abc_TtCompareRev.exit48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %0, i64 %i.am, i1 false), !tbaa !63
  br label %.lr.ph.preheader.i56

Abc_TtCopy.exit55:                                ; preds = %bb.i, %Abc_TtFlip.exit, %bb.j
  br i1 %i.g, label %Abc_TtNot.exit, label %.lr.ph.preheader.i56

.lr.ph.preheader.i56:                             ; preds = %.lr.ph18.i51.preheader, %Abc_TtCopy.exit55
  br i1 %min.iters.check138, label %.lr.ph.i58.preheader, label %vector.body141

vector.body141:                                   ; preds = %.lr.ph.preheader.i56, %vector.body141
  %index142 = phi i64 [ %index.next145, %vector.body141 ], [ 0, %.lr.ph.preheader.i56 ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index142 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 2 uses
  %wide.load143 = load <2 x i64>, ptr %i.dq, align 8, !tbaa !63
  %wide.load144 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !63
  %i.ds = xor <2 x i64> %wide.load143, splat (i64 -1)
  %i.dt = xor <2 x i64> %wide.load144, splat (i64 -1)
  store <2 x i64> %i.ds, ptr %i.dq, align 8, !tbaa !63
  store <2 x i64> %i.dt, ptr %i.dr, align 8, !tbaa !63
  %index.next145 = add nuw i64 %index142, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next145, %n.vec140
  br i1 %i.du, label %middle.block146, label %vector.body141, !llvm.loop !87

middle.block146:                                  ; preds = %vector.body141
  br i1 %cmp.n147, label %Abc_TtNot.exit, label %.lr.ph.i58.preheader

.lr.ph.i58.preheader:                             ; preds = %.lr.ph.preheader.i56, %middle.block146
  %indvars.iv.i59.ph = phi i64 [ 0, %.lr.ph.preheader.i56 ], [ %n.vec140, %middle.block146 ]
  br label %.lr.ph.i58

.lr.ph.i58:                                       ; preds = %.lr.ph.i58.preheader, %.lr.ph.i58
  %indvars.iv.i59 = phi i64 [ %indvars.iv.next.i60, %.lr.ph.i58 ], [ %indvars.iv.i59.ph, %.lr.ph.i58.preheader ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i59 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !63
  %i.dx = xor i64 %i.dw, -1
  store i64 %i.dx, ptr %i.dv, align 8, !tbaa !63
  %indvars.iv.next.i60 = add nuw nsw i64 %indvars.iv.i59, 1 ; 2 uses
  %exitcond.not.i61 = icmp eq i64 %indvars.iv.next.i60, %.pre-phi
  br i1 %exitcond.not.i61, label %Abc_TtNot.exit, label %.lr.ph.i58, !llvm.loop !88

Abc_TtNot.exit:                                   ; preds = %.lr.ph.i58, %middle.block146, %Abc_TtCompareRev.exit48, %Abc_TtCopy.exit55
  br i1 %i.aq, label %.lr.ph135, label %Abc_TtCopy.exit72

bb.k:                                             ; preds = %.lr.ph135
  %i.dy = trunc nuw i64 %i.ea to i32
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %.lr.ph135, label %Abc_TtCopy.exit72, !llvm.loop !77

.lr.ph135:                                        ; preds = %Abc_TtNot.exit, %bb.k
  %indvars.iv.i62134 = phi i64 [ %i.ea, %bb.k ], [ %.pre-phi, %Abc_TtNot.exit ]
  %i.ea = add nsw i64 %indvars.iv.i62134, -1      ; 4 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !63 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ea
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !63 ; 2 uses
  %.not.i64 = icmp eq i64 %i.ec, %i.ee
  br i1 %.not.i64, label %bb.k, label %bb.l, !llvm.loop !77

bb.l:                                             ; preds = %.lr.ph135
  %i.ef = icmp ult i64 %i.ec, %i.ee
  %brmerge89 = or i1 %i.g, %i.ef
  br i1 %brmerge89, label %Abc_TtCopy.exit72, label %.lr.ph18.i68.preheader

.lr.ph18.i68.preheader:                           ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %0, i64 %i.am, i1 false), !tbaa !63
  br label %Abc_TtCopy.exit72

Abc_TtCopy.exit72:                                ; preds = %bb.k, %Abc_TtNot.exit, %.lr.ph18.i68.preheader, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !89

._crit_edge:                                      ; preds = %Abc_TtCopy.exit72, %Abc_TtCopy.exit38
  br i1 %i.g, label %Abc_TtCopy.exit79, label %.lr.ph18.i75.preheader

.lr.ph18.i75.preheader:                           ; preds = %._crit_edge
  %i.eg = shl nuw nsw i64 %.pre-phi, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %i.f, i64 %i.eg, i1 false), !tbaa !63
  br label %Abc_TtCopy.exit79.thread

Abc_TtCopy.exit79:                                ; preds = %._crit_edge
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.m, label %Abc_TtCopy.exit79.thread

Abc_TtCopy.exit79.thread:                         ; preds = %.lr.ph18.i75.preheader, %Abc_TtCopy.exit79
  tail call void @free(ptr noundef nonnull %i.f) #18
  br label %bb.m

bb.m:                                             ; preds = %Abc_TtCopy.exit79, %Abc_TtCopy.exit79.thread
  ret void
}

; Function Attrs: nounwind uwtable
define void @Ntk_SymFunGenerate(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 9 uses
  %i.b = tail call ptr @Extra_GreyCodeSchedule(i32 noundef %0) #18 ; 4 uses
  %i.c = icmp slt i32 %0, 7
  %i.d = add nsw i32 %0, -6
  %i.e = shl nuw i32 1, %i.d
  %i.f = select i1 %i.c, i32 1, i32 %i.e          ; 2 uses
  %i.g = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #21 ; 11 uses
  store i32 %i.f, ptr %i.g, align 8, !tbaa !90
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 12, ptr %i.h, align 8, !tbaa !93
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 4095, ptr %i.i, align 4, !tbaa !94
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 2 uses
  store i32 -1, ptr %i.j, align 4, !tbaa !95
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.backedge, %bb.a
  %.012.i.i = phi i32 [ 9999, %bb.a ], [ %i.k, %.critedge.i.i.backedge ] ; 3 uses
  %i.k = add i32 %.012.i.i, 1                     ; 7 uses
  %i.l = and i32 %.012.i.i, 1
  %.not.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.not.i.i, label %.preheader.i.i, label %.critedge.i.i.backedge

.critedge.i.i.backedge:                           ; preds = %.lr.ph.i.i, %.critedge.i.i
  br label %.critedge.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i
  %.not15.i.i = icmp ult i32 %i.k, 9
  br i1 %.not15.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.m = add nuw nsw i32 %.01116.i.i, 2           ; 3 uses
  %i.n = mul nuw nsw i32 %i.m, %i.m
  %.not.i.i = icmp ugt i32 %i.n, %i.k
  br i1 %.not.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i, !llvm.loop !96

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.b
  %.01116.i.i = phi i32 [ %i.m, %bb.b ], [ 3, %.preheader.i.i ] ; 2 uses
  %i.o = urem i32 %i.k, %.01116.i.i
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.critedge.i.i.backedge, label %bb.b

Abc_PrimeCudd.exit.i:                             ; preds = %.preheader.i.i, %bb.b
  %i.q = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 4 uses
  %or.cond.i.i.i = icmp samesign ult i32 %.012.i.i, 15
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 16, i32 %i.k ; 2 uses
  store i32 %spec.store.select.i.i.i, ptr %i.q, align 8, !tbaa !97
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = zext nneg i32 %spec.store.select.i.i.i to i64
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #20 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.u, ptr %i.v, align 8, !tbaa !98
  store i32 %i.k, ptr %i.r, align 4, !tbaa !99
  %.not.i3.i = icmp eq ptr %i.u, null
  br i1 %.not.i3.i, label %Vec_MemHashAlloc.exit, label %bb.c

bb.c:                                             ; preds = %Abc_PrimeCudd.exit.i
  %i.w = zext nneg i32 %i.k to i64
  %i.x = shl nuw nsw i64 %i.w, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.u, i8 -1, i64 %i.x, i1 false)
  br label %Vec_MemHashAlloc.exit

Vec_MemHashAlloc.exit:                            ; preds = %Abc_PrimeCudd.exit.i, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  store ptr %i.q, ptr %i.y, align 8, !tbaa !100
  %i.z = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i32 0, ptr %i.aa, align 4, !tbaa !99
  store i32 10000, ptr %i.z, align 8, !tbaa !97
  %i.ab = tail call noalias dereferenceable_or_null(40000) ptr @malloc(i64 noundef 40000) #20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !98
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  store ptr %i.z, ptr %i.ad, align 8, !tbaa !101
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %0) ; 0 uses
  %i.af = add nsw i32 %0, 1                       ; 5 uses
  %.not58 = icmp eq i32 %i.af, 31
  br i1 %.not58, label %._crit_edge57, label %.lr.ph56

.lr.ph56:                                         ; preds = %Vec_MemHashAlloc.exit
  %i.ag = shl nuw i32 1, %i.af
  %.not3653 = icmp slt i32 %0, 0
  %.not37 = icmp eq i32 %1, 0                     ; 2 uses
  %i.ah = sext i32 %i.f to i64
  %i.ai = shl nuw i32 1, %0                       ; 2 uses
  %.not.i = icmp eq i32 %0, 31
  %i.aj = icmp sgt i32 %0, 0
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 1) ; 4 uses
  %i.ak = icmp slt i32 %0, 6
  %i.al = icmp eq i32 %0, 0
  %i.am = icmp ult i32 %0, 2
  %i.an = icmp ult i32 %0, 3
  %i.ao = icmp ult i32 %0, 4
  %i.ap = icmp ult i32 %0, 5
  %i.aq = icmp ult i32 %0, 6
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 1)
  %wide.trip.count = zext i32 %i.af to i64        ; 6 uses
  %min.iters.check93 = icmp ult i32 %i.af, 4
  %min.iters.check94 = icmp ult i32 %i.af, 16
  %i.ar = and i64 %wide.trip.count, 12
  %n.vec96 = and i64 %wide.trip.count, 2147483632 ; 4 uses
  %cmp.n105 = icmp eq i64 %n.vec96, %wide.trip.count
  %min.epilog.iters.check.not.not = icmp eq i64 %i.ar, 0
  %n.vec106 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n115 = icmp eq i64 %n.vec106, %wide.trip.count
  %xtraiter = and i32 %smax.i, 1
  %i.as = icmp slt i32 %i.ai, 2
  %unroll_iter = and i32 %smax.i, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod125 = trunc i32 %smax.i to i1
  %min.iters.check = icmp ult i32 %0, 8
  %n.vec = and i32 %0, 2147483640                 ; 3 uses
  %cmp.n = icmp eq i32 %0, %n.vec
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph56, %bb.l
  %.03255 = phi i32 [ 0, %.lr.ph56 ], [ %i.ef, %bb.l ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %i.a, i8 0, i64 100, i1 false)
  br i1 %.not3653, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.d
  br i1 %min.iters.check93, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check94, label %vec.epilog.ph, label %vector.ph95

vector.ph95:                                      ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert97 = insertelement <16 x i32> poison, i32 %.03255, i64 0
  %broadcast.splat98 = shufflevector <16 x i32> %broadcast.splatinsert97, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph95
  %index100 = phi i64 [ 0, %vector.ph95 ], [ %index.next102, %vector.body99 ] ; 2 uses
  %vec.ind101 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph95 ], [ %vec.ind.next103, %vector.body99 ] ; 2 uses
  %i.at = lshr <16 x i32> %broadcast.splat98, %vec.ind101
  %i.au = trunc <16 x i32> %i.at to <16 x i8>
  %i.av = and <16 x i8> %i.au, splat (i8 1)
  %i.aw = or disjoint <16 x i8> %i.av, splat (i8 48)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 %index100
  store <16 x i8> %i.aw, ptr %i.ax, align 16, !tbaa !57
  %index.next102 = add nuw i64 %index100, 16      ; 2 uses
  %vec.ind.next103 = add <16 x i32> %vec.ind101, splat (i32 16)
  %i.ay = icmp eq i64 %index.next102, %n.vec96
  br i1 %i.ay, label %middle.block104, label %vector.body99, !llvm.loop !102

middle.block104:                                  ; preds = %vector.body99
  br i1 %cmp.n105, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block104
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !103

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec96, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert107 = insertelement <4 x i32> poison, i32 %.03255, i64 0
  %broadcast.splat108 = shufflevector <4 x i32> %broadcast.splatinsert107, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.az = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert109 = insertelement <4 x i32> poison, i32 %i.az, i64 0
  %broadcast.splat110 = shufflevector <4 x i32> %broadcast.splatinsert109, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat110, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index111 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next113, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind112 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next114, %vec.epilog.vector.body ] ; 2 uses
  %2 = lshr <4 x i32> %broadcast.splat108, %vec.ind112
  %3 = trunc <4 x i32> %2 to <4 x i8>
  %4 = and <4 x i8> %3, splat (i8 1)
  %5 = or disjoint <4 x i8> %4, splat (i8 48)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %index111
  store <4 x i8> %5, ptr %i.ba, align 4, !tbaa !57
  %index.next113 = add nuw i64 %index111, 4       ; 2 uses
  %vec.ind.next114 = add <4 x i32> %vec.ind112, splat (i32 4)
  %i.bb = icmp eq i64 %index.next113, %n.vec106
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !104

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n115, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec96, %vec.epilog.iter.check ], [ %n.vec106, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv to i32
  %i.bd = lshr i32 %.03255, %i.bc
  %i.be = trunc i32 %i.bd to i8
  %i.bf = and i8 %i.be, 1
  %i.bg = or disjoint i8 %i.bf, 48
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !105

._crit_edge:                                      ; preds = %.lr.ph, %middle.block104, %vec.epilog.middle.block, %bb.d
  br i1 %.not37, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.bi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %i.bj = call noalias ptr @calloc(i64 noundef %i.ah, i64 noundef 8) #21 ; 14 uses
  br i1 %.not.i, label %Abc_TtSymFunGenerate.exit.thread47, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.f
  br i1 %i.aj, label %.preheader.us.i, label %.preheader.lr.ph.split.i

.preheader.us.i:                                  ; preds = %.preheader.lr.ph.i, %bb.h
  %.018.us.i = phi i32 [ %i.ce, %bb.h ], [ 0, %.preheader.lr.ph.i ] ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.018.us.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bo, %vector.body ]
  %vec.phi91 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bp, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.bk = lshr <4 x i32> %broadcast.splat, %vec.ind
  %i.bl = lshr <4 x i32> %broadcast.splat, %step.add
  %i.bm = and <4 x i32> %i.bk, splat (i32 1)
  %i.bn = and <4 x i32> %i.bl, splat (i32 1)
  %i.bo = add <4 x i32> %i.bm, %vec.phi           ; 2 uses
  %i.bp = add <4 x i32> %i.bn, %vec.phi91         ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 8)
  %i.bq = icmp eq i32 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bp, %i.bo
  %i.br = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.i, %middle.block
  %.01417.us.i.ph = phi i32 [ 0, %.preheader.us.i ], [ %i.br, %middle.block ]
  %.01516.us.i.ph = phi i32 [ 0, %.preheader.us.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01417.us.i = phi i32 [ %i.bu, %scalar.ph ], [ %.01417.us.i.ph, %scalar.ph.preheader ]
  %.01516.us.i = phi i32 [ %i.bv, %scalar.ph ], [ %.01516.us.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bs = lshr i32 %.018.us.i, %.01516.us.i
  %i.bt = and i32 %i.bs, 1
  %i.bu = add nuw nsw i32 %i.bt, %.01417.us.i     ; 2 uses
  %i.bv = add nuw nsw i32 %.01516.us.i, 1         ; 2 uses
  %exitcond21.not.i = icmp eq i32 %i.bv, %0
  br i1 %exitcond21.not.i, label %._crit_edge.us.i, label %scalar.ph, !llvm.loop !107

bb.g:                                             ; preds = %._crit_edge.us.i
  %i.bw = and i32 %.018.us.i, 63
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = shl nuw i64 1, %i.bx
  %i.bz = lshr i32 %.018.us.i, 6
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.ca ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !63
  %i.cd = xor i64 %i.cc, %i.by
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !63
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.us.i, %bb.g
  %i.ce = add nuw nsw i32 %.018.us.i, 1           ; 2 uses
  %exitcond23.not.i = icmp eq i32 %i.ce, %smax.i
  br i1 %exitcond23.not.i, label %Abc_TtSymFunGenerate.exit, label %.preheader.us.i, !llvm.loop !108

._crit_edge.us.i:                                 ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.br, %middle.block ], [ %i.bu, %scalar.ph ]
  %i.cf = zext nneg i32 %.lcssa to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !57
  %i.ci = icmp eq i8 %i.ch, 49
  br i1 %i.ci, label %bb.g, label %bb.h

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.cj = load i8, ptr %i.a, align 16, !tbaa !57
  %i.ck = icmp eq i8 %i.cj, 49
  br i1 %i.ck, label %.preheader.i.preheader, label %Abc_TtSymFunGenerate.exit.thread

.preheader.i.preheader:                           ; preds = %.preheader.lr.ph.split.i
  br i1 %i.as, label %.preheader.i.epil.preheader, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.018.i = phi i32 [ %i.dc, %.preheader.i ], [ 0, %.preheader.i.preheader ] ; 5 uses
  %niter = phi i32 [ %niter.next.1, %.preheader.i ], [ 0, %.preheader.i.preheader ]
  %i.cl = and i32 %.018.i, 62
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = shl nuw nsw i64 1, %i.cm
  %i.co = lshr i32 %.018.i, 6
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cp ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !63
  %i.cs = xor i64 %i.cn, %i.cr
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !63
  %i.ct = and i32 %.018.i, 62
  %i.cu = or disjoint i32 %i.ct, 1
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = shl nuw i64 1, %i.cv
  %i.cx = lshr i32 %.018.i, 6
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cy ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !63
  %i.db = xor i64 %i.cw, %i.da
  store i64 %i.db, ptr %i.cz, align 8, !tbaa !63
  %i.dc = add nuw nsw i32 %.018.i, 2              ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Abc_TtSymFunGenerate.exit.thread.loopexit.unr-lcssa, label %.preheader.i, !llvm.loop !108

Abc_TtSymFunGenerate.exit:                        ; preds = %bb.h
  br i1 %i.ak, label %Abc_TtSymFunGenerate.exit.thread, label %Abc_TtSymFunGenerate.exit.thread47

Abc_TtSymFunGenerate.exit.thread.loopexit.unr-lcssa: ; preds = %.preheader.i
  br i1 %lcmp.mod.not, label %Abc_TtSymFunGenerate.exit.thread, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %Abc_TtSymFunGenerate.exit.thread.loopexit.unr-lcssa, %.preheader.i.preheader
  %.018.i.epil.init = phi i32 [ 0, %.preheader.i.preheader ], [ %i.dc, %Abc_TtSymFunGenerate.exit.thread.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod125)
  %i.dd = and i32 %.018.i.epil.init, 63
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = shl nuw i64 1, %i.de
  %i.dg = lshr i32 %.018.i.epil.init, 6
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.dh ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !63
  %i.dk = xor i64 %i.df, %i.dj
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !63
  br label %Abc_TtSymFunGenerate.exit.thread

Abc_TtSymFunGenerate.exit.thread:                 ; preds = %.preheader.i.epil.preheader, %Abc_TtSymFunGenerate.exit.thread.loopexit.unr-lcssa, %.preheader.lr.ph.split.i, %Abc_TtSymFunGenerate.exit
  %i.dl = load i64, ptr %i.bj, align 8, !tbaa !63 ; 7 uses
  %i.dm = trunc i64 %i.dl to i1
  %i.dn = select i1 %i.dm, i64 3, i64 0
  %i.do = and i64 %i.dl, 3
  %i.dp = select i1 %i.al, i64 %i.dn, i64 %i.do
  %i.dq = mul nuw nsw i64 %i.dp, 5
  %.126.i = select i1 %i.am, i64 %i.dq, i64 %i.dl
  %i.dr = and i64 %.126.i, 15
  %i.ds = mul nuw nsw i64 %i.dr, 17
  %.227.i = select i1 %i.an, i64 %i.ds, i64 %i.dl
  %i.dt = and i64 %.227.i, 255
  %i.du = mul nuw nsw i64 %i.dt, 257
  %.328.i = select i1 %i.ao, i64 %i.du, i64 %i.dl
  %i.dv = and i64 %.328.i, 65535
  %i.dw = mul nuw nsw i64 %i.dv, 65537
  %.429.i = select i1 %i.ap, i64 %i.dw, i64 %i.dl
  %i.dx = and i64 %.429.i, 4294967295
  %i.dy = mul nuw i64 %i.dx, 4294967297
  %.5.i = select i1 %i.aq, i64 %i.dy, i64 %i.dl
  store i64 %.5.i, ptr %i.bj, align 8, !tbaa !63
  br label %Abc_TtSymFunGenerate.exit.thread47

Abc_TtSymFunGenerate.exit.thread47:               ; preds = %bb.f, %Abc_TtSymFunGenerate.exit.thread, %Abc_TtSymFunGenerate.exit
  br i1 %.not37, label %.critedge, label %bb.i

bb.i:                                             ; preds = %Abc_TtSymFunGenerate.exit.thread47
  %i.dz = load ptr, ptr @stdout, align 8, !tbaa !109
  call void @Extra_PrintHex(ptr noundef %i.dz, ptr noundef %i.bj, i32 noundef %0) #18
  call void @Ntk_SymFunDeriveNpn(ptr noundef %i.bj, i32 noundef %0, ptr noundef %i.b)
  %i.ea = call fastcc i32 @Vec_MemHashInsert(ptr noundef nonnull %i.g, ptr noundef %i.bj)
  %i.eb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2) ; 0 uses
  %i.ec = load ptr, ptr @stdout, align 8, !tbaa !109
  call void @Extra_PrintHex(ptr noundef %i.ec, ptr noundef %i.bj, i32 noundef %0) #18
  %i.ed = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.ea) ; 0 uses
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.j
end_hunk_0
begin_hunk_1_@Abc_Print:bb.a
bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void
}

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #9

declare i32 @Cudd_SupportSize(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @Extra_SymmPairsComputeNaive(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @Extra_SymmPairsCompute(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @Abc_ObjName(ptr noundef) local_unnamed_addr #5

declare void @Extra_SymmPairsDissolve(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

declare ptr @Abc_NtkCollectCioNames(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #5

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #12

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #12

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(1) }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind allocsize(0,1) }
attributes #22 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"timespec", !10, i64 0, !10, i64 8}
!10 = !{!"long", !6, i64 0}
!11 = !{!9, !10, i64 8}
!12 = !{!13, !17, i64 64}
!13 = !{!"Abc_Ntk_t_", !5, i64 0, !5, i64 4, !14, i64 8, !14, i64 16, !16, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !17, i64 80, !17, i64 88, !6, i64 96, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !18, i64 160, !5, i64 168, !19, i64 176, !18, i64 184, !5, i64 192, !5, i64 196, !5, i64 200, !20, i64 208, !5, i64 216, !21, i64 224, !23, i64 240, !24, i64 248, !15, i64 256, !25, i64 264, !15, i64 272, !26, i64 280, !5, i64 284, !27, i64 288, !17, i64 296, !22, i64 304, !28, i64 312, !17, i64 320, !18, i64 328, !15, i64 336, !15, i64 344, !18, i64 352, !15, i64 360, !15, i64 368, !27, i64 376, !27, i64 384, !14, i64 392, !29, i64 400, !17, i64 408, !27, i64 416, !27, i64 424, !17, i64 432, !27, i64 440, !27, i64 448, !27, i64 456}
!14 = !{!"p1 omnipotent char", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"p1 _ZTS9Nm_Man_t_", !15, i64 0}
!17 = !{!"p1 _ZTS10Vec_Ptr_t_", !15, i64 0}
!18 = !{!"p1 _ZTS10Abc_Ntk_t_", !15, i64 0}
!19 = !{!"p1 _ZTS10Abc_Des_t_", !15, i64 0}
!20 = !{!"double", !6, i64 0}
!21 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !22, i64 8}
!22 = !{!"p1 int", !15, i64 0}
!23 = !{!"p1 _ZTS12Mem_Fixed_t_", !15, i64 0}
!24 = !{!"p1 _ZTS11Mem_Step_t_", !15, i64 0}
!25 = !{!"p1 _ZTS14Abc_ManTime_t_", !15, i64 0}
!26 = !{!"float", !6, i64 0}
!27 = !{!"p1 _ZTS10Vec_Int_t_", !15, i64 0}
!28 = !{!"p1 _ZTS10Abc_Cex_t_", !15, i64 0}
!29 = !{!"p1 float", !15, i64 0}
!30 = !{!31, !5, i64 4}
!31 = !{!"Vec_Ptr_t_", !5, i64 0, !5, i64 4, !32, i64 8}
!32 = !{!"any p2 pointer", !15, i64 0}
!33 = !{!31, !32, i64 8}
!34 = !{!15, !15, i64 0}
!35 = !{!36, !18, i64 0}
!36 = !{!"Abc_Obj_t_", !18, i64 0, !37, i64 8, !5, i64 16, !5, i64 20, !5, i64 20, !5, i64 20, !5, i64 20, !5, i64 20, !5, i64 21, !5, i64 21, !5, i64 21, !5, i64 21, !5, i64 21, !21, i64 24, !21, i64 40, !15, i64 56, !6, i64 64, !6, i64 72}
!37 = !{!"p1 _ZTS10Abc_Obj_t_", !15, i64 0}
!38 = !{!36, !5, i64 16}
!39 = !{!13, !17, i64 432}
!40 = !{!41, !5, i64 0}
!41 = !{!"Vec_Att_t_", !5, i64 0, !32, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40}
!42 = !{!41, !32, i64 8}
!43 = !{!41, !15, i64 32}
!44 = !{!41, !15, i64 16}
!45 = distinct !{null, null, null, null}
!46 = !{!47, !5, i64 0}
!47 = !{!"DdNode", !5, i64 0, !5, i64 4, !48, i64 8, !6, i64 16, !10, i64 32}
!48 = !{!"p1 _ZTS6DdNode", !15, i64 0}
!49 = !{!50, !5, i64 8}
!50 = !{!"Extra_SymmInfo_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !22, i64 16, !51, i64 24}
!51 = !{!"p2 omnipotent char", !32, i64 0}
!52 = !{!13, !17, i64 56}
!53 = !{!50, !5, i64 0}
!54 = !{!5, !5, i64 0}
!55 = !{!50, !51, i64 24}
!56 = !{!14, !14, i64 0}
!57 = !{!6, !6, i64 0}
!58 = !{!50, !22, i64 16}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.mustprogress"}
!61 = distinct !{!61, !60}
!62 = distinct !{!62, !60}
!63 = !{!10, !10, i64 0}
!64 = !{!65}
!65 = distinct !{!65, !66}
!66 = distinct !{!66, !"LVerDomain"}
!67 = !{!68}
!68 = distinct !{!68, !66}
!69 = distinct !{!69, !60, !70, !71}
!70 = !{!"llvm.loop.isvectorized", i32 1}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = distinct !{!72, !60, !70}
!73 = distinct !{!73, !60}
!74 = distinct !{!74, !60, !70, !71}
!75 = distinct !{!75, !60}
!76 = distinct !{!76, !60, !70, !71}
!77 = distinct !{!77, !60}
!78 = distinct !{!78, !60, !70, !71}
!79 = distinct !{!79, !60, !71, !70}
!80 = !{!81}
!81 = distinct !{!81, !82}
!82 = distinct !{!82, !"LVerDomain"}
!83 = !{!84}
!84 = distinct !{!84, !82}
!85 = distinct !{!85, !60, !70, !71}
!86 = distinct !{!86, !60, !70}
!87 = distinct !{!87, !60, !70, !71}
!88 = distinct !{!88, !60, !71, !70}
!89 = distinct !{!89, !60}
!90 = !{!91, !5, i64 0}
!91 = !{!"Vec_Mem_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !92, i64 24, !27, i64 32, !27, i64 40}
!92 = !{!"p2 long", !32, i64 0}
!93 = !{!91, !5, i64 8}
!94 = !{!91, !5, i64 12}
!95 = !{!91, !5, i64 20}
!96 = distinct !{!96, !60}
!97 = !{!21, !5, i64 0}
!98 = !{!21, !22, i64 8}
!99 = !{!21, !5, i64 4}
!100 = !{!91, !27, i64 32}
!101 = !{!91, !27, i64 40}
!102 = distinct !{!102, !60, !70, !71}
!103 = !{!"branch_weights", i32 4, i32 12}
!104 = distinct !{!104, !60, !70, !71}
!105 = distinct !{!105, !60, !71, !70}
!106 = distinct !{!106, !60, !70, !71}
!107 = distinct !{!107, !60, !71, !70}
!108 = distinct !{!108, !60}
!109 = !{!110, !110, i64 0}
!110 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!111 = distinct !{!111, !60}
!112 = !{!91, !5, i64 4}
!113 = !{!27, !27, i64 0}
!114 = !{!91, !92, i64 24}
!115 = !{!116, !116, i64 0}
!116 = !{!"p1 long", !15, i64 0}
!117 = distinct !{!117, !60}
!118 = distinct !{!118, !60, !70, !71}
!119 = distinct !{!119, !120}
!120 = !{!"llvm.loop.unroll.disable"}
!121 = distinct !{!121, !60, !70}
!122 = distinct !{!122, !60}
!123 = distinct !{!123, !60}
!124 = distinct !{!124, !60, !70, !71}
!125 = distinct !{!125, !120}
!126 = distinct !{!126, !60, !70}
!127 = !{!91, !5, i64 16}
!128 = distinct !{!128, !60}
!129 = !{!130}
!130 = distinct !{!130, !131, !"vprintf: argument 0"}
!131 = distinct !{!131, !"vprintf"}
!132 = distinct !{null}
end_hunk_1
