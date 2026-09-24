Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/dp_enc?download=true
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @init_coefs(ptr nofree noundef writeonly captures(none) initializes((0, 6)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = shl i32 38, %1
  %i.b = lshr i32 %i.a, 4
  %i.c = trunc i32 %i.b to i16
  store i16 %i.c, ptr %0, align 2, !tbaa !9
  %i.d = shl i32 -29, %1
  %i.e = lshr i32 %i.d, 4
  %i.f = trunc i32 %i.e to i16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.f, ptr %i.g, align 2, !tbaa !9
  %i.h = shl nsw i32 -2, %1
  %i.i = lshr i32 %i.h, 4
  %i.j = trunc i32 %i.i to i16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %i.j, ptr %i.k, align 2, !tbaa !9
  %i.l = icmp sgt i32 %2, 3
  br i1 %i.l, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 6
  %i.m = add nsw i32 %2, -3
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %scevgep, i8 0, i64 %i.o, i1 false), !tbaa !9
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @copy_coefs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 8 uses
  %min.iters.check = icmp ult i32 %2, 4
  %i.d = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.d, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check8 = icmp ult i32 %2, 16
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %wide.load = load <8 x i16>, ptr %i.f, align 2, !tbaa !9
  %wide.load9 = load <8 x i16>, ptr %i.g, align 2, !tbaa !9
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <8 x i16> %wide.load, ptr %i.h, align 2, !tbaa !9
  store <8 x i16> %wide.load9, ptr %i.i, align 2, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index11
  %wide.load12 = load <4 x i16>, ptr %i.k, align 2, !tbaa !9
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index11
  store <4 x i16> %wide.load12, ptr %i.l, align 2, !tbaa !9
  %index.next13 = add nuw i64 %index11, 4         ; 2 uses
  %i.m = icmp eq i64 %index.next13, %n.vec10
  br i1 %i.m, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !14

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %n.vec10, %wide.trip.count
  br i1 %cmp.n14, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec10, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.prol
  %i.o = load i16, ptr %i.n, align 2, !tbaa !9
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.prol
  store i16 %i.o, ptr %i.p, align 2, !tbaa !9
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !15

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.q = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.r = icmp ugt i64 %i.q, -4
  br i1 %i.r, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.t = load i16, ptr %i.s, align 2, !tbaa !9
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv
  store i16 %i.t, ptr %i.u, align 2, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.w = load i16, ptr %i.v, align 2, !tbaa !9
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next
  store i16 %i.w, ptr %i.x, align 2, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.z = load i16, ptr %i.y, align 2, !tbaa !9
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.1
  store i16 %i.z, ptr %i.aa, align 2, !tbaa !9
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !9
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.next.2
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !9
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @pc_block(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(address) initializes((0, 4)) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = sub i32 32, %5                           ; 20 uses
  %i.b = add i32 %6, -1
  %i.c = shl nuw i32 1, %i.b                      ; 3 uses
  %i.d = load i32, ptr %0, align 4, !tbaa !7
  store i32 %i.d, ptr %1, align 4, !tbaa !7
  switch i32 %4, label %.preheader527 [
    i32 0, label %bb.b
    i32 31, label %.preheader528
  ]

.preheader528:                                    ; preds = %bb.a
  %i.e = icmp sgt i32 %2, 1
  br i1 %i.e, label %.lr.ph.preheader, label %.loopexit526

.lr.ph.preheader:                                 ; preds = %.preheader528
  %wide.trip.count = zext nneg i32 %2 to i64      ; 5 uses
  %i.f = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %min.iters.check = icmp ult i32 %2, 9
  br i1 %min.iters.check, label %.lr.ph.preheader701, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %1, i64 4
  %i.g = shl nuw nsw i64 %wide.trip.count, 2      ; 2 uses
  %scevgep648 = getelementptr i8, ptr %1, i64 %i.g
  %scevgep649 = getelementptr i8, ptr %0, i64 %i.g
  %bound0 = icmp ult ptr %scevgep, %scevgep649
  %bound1 = icmp ult ptr %0, %scevgep648
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader701, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.f, -8                       ; 3 uses
  %i.h = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.i = or disjoint i64 %index, 1                ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <4 x i32>, ptr %i.j, align 4, !tbaa !7, !alias.scope !36
  %wide.load650 = load <4 x i32>, ptr %i.k, align 4, !tbaa !7, !alias.scope !36
  %i.l = getelementptr i8, ptr %i.j, i64 -4
  %i.m = getelementptr i8, ptr %i.j, i64 12
  %wide.load651 = load <4 x i32>, ptr %i.l, align 4, !tbaa !7, !alias.scope !36
  %wide.load652 = load <4 x i32>, ptr %i.m, align 4, !tbaa !7, !alias.scope !36
  %i.n = sub nsw <4 x i32> %wide.load, %wide.load651
  %i.o = sub nsw <4 x i32> %wide.load650, %wide.load652
  %i.p = shl <4 x i32> %i.n, %broadcast.splat
  %i.q = shl <4 x i32> %i.o, %broadcast.splat
  %i.r = ashr exact <4 x i32> %i.p, %broadcast.splat
  %i.s = ashr exact <4 x i32> %i.q, %broadcast.splat
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %i.r, ptr %i.t, align 4, !tbaa !7, !alias.scope !37, !noalias !36
  store <4 x i32> %i.s, ptr %i.u, align 4, !tbaa !7, !alias.scope !37, !noalias !36
  %index.next = add nuw i64 %index, 8             ; 2 uses
end_hunk_0
begin_hunk_1_@pc_block:bb.a
  %scevgep656 = getelementptr i8, ptr %0, i64 %i.ai
  %bound0657 = icmp ult ptr %scevgep654, %scevgep656
  %bound1658 = icmp ult ptr %0, %scevgep655
  %found.conflict659 = and i1 %bound0657, %bound1658
  br i1 %found.conflict659, label %.lr.ph533.preheader700, label %vector.ph662

vector.ph662:                                     ; preds = %vector.memcheck653
  %n.vec663 = and i64 %i.ah, -8                   ; 3 uses
  %i.aj = or disjoint i64 %n.vec663, 1
  %broadcast.splatinsert664 = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat665 = shufflevector <4 x i32> %broadcast.splatinsert664, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body666

vector.body666:                                   ; preds = %vector.body666, %vector.ph662
  %index667 = phi i64 [ 0, %vector.ph662 ], [ %index.next672, %vector.body666 ] ; 2 uses
  %i.ak = or disjoint i64 %index667, 1            ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ak ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load668 = load <4 x i32>, ptr %i.al, align 4, !tbaa !7, !alias.scope !38
  %wide.load669 = load <4 x i32>, ptr %i.am, align 4, !tbaa !7, !alias.scope !38
  %i.an = getelementptr i8, ptr %i.al, i64 -4
  %i.ao = getelementptr i8, ptr %i.al, i64 12
  %wide.load670 = load <4 x i32>, ptr %i.an, align 4, !tbaa !7, !alias.scope !38
  %wide.load671 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !7, !alias.scope !38
  %i.ap = sub nsw <4 x i32> %wide.load668, %wide.load670
  %i.aq = sub nsw <4 x i32> %wide.load669, %wide.load671
  %i.ar = shl <4 x i32> %i.ap, %broadcast.splat665
  %i.as = shl <4 x i32> %i.aq, %broadcast.splat665
  %i.at = ashr exact <4 x i32> %i.ar, %broadcast.splat665
  %i.au = ashr exact <4 x i32> %i.as, %broadcast.splat665
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ak ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store <4 x i32> %i.at, ptr %i.av, align 4, !tbaa !7, !alias.scope !39, !noalias !38
  store <4 x i32> %i.au, ptr %i.aw, align 4, !tbaa !7, !alias.scope !39, !noalias !38
  %index.next672 = add nuw i64 %index667, 8       ; 2 uses
  %i.ax = icmp eq i64 %index.next672, %n.vec663
  br i1 %i.ax, label %middle.block673, label %vector.body666, !llvm.loop !26

middle.block673:                                  ; preds = %vector.body666
  %cmp.n674 = icmp eq i64 %i.ah, %n.vec663
  br i1 %cmp.n674, label %._crit_edge, label %.lr.ph533.preheader700

.lr.ph533.preheader700:                           ; preds = %vector.memcheck653, %.lr.ph533.preheader, %middle.block673
  %indvars.iv578.ph = phi i64 [ 1, %vector.memcheck653 ], [ 1, %.lr.ph533.preheader ], [ %i.aj, %middle.block673 ] ; 5 uses
  %i.ay = and i64 %wide.trip.count581, 1
  %lcmp.mod704.not.not = icmp eq i64 %i.ay, 0
  br i1 %lcmp.mod704.not.not, label %.lr.ph533.prol, label %.lr.ph533.prol.loopexit

.lr.ph533.prol:                                   ; preds = %.lr.ph533.preheader700
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv578.ph ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !7
  %i.bb = getelementptr i8, ptr %i.az, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !7
  %i.bd = sub nsw i32 %i.ba, %i.bc
  %i.be = shl i32 %i.bd, %i.a
  %i.bf = ashr exact i32 %i.be, %i.a
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv578.ph
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !7
  %indvars.iv.next579.prol = add nuw nsw i64 %indvars.iv578.ph, 1
  br label %.lr.ph533.prol.loopexit

.lr.ph533.prol.loopexit:                          ; preds = %.lr.ph533.prol, %.lr.ph533.preheader700
  %indvars.iv578.unr = phi i64 [ %indvars.iv578.ph, %.lr.ph533.preheader700 ], [ %indvars.iv.next579.prol, %.lr.ph533.prol ]
  %i.bh = add nsw i64 %wide.trip.count581, -1
  %i.bi = icmp eq i64 %indvars.iv578.ph, %i.bh
  br i1 %i.bi, label %._crit_edge, label %.lr.ph533

bb.b:                                             ; preds = %bb.a
  %i.bj = icmp slt i32 %2, 2
  %.not479 = icmp eq ptr %0, %1
  %or.cond = or i1 %.not479, %i.bj
  br i1 %or.cond, label %.loopexit526, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bm = add nsw i32 %2, -1
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bk, ptr nonnull align 4 %i.bl, i64 %i.bo, i1 false)
  br label %.loopexit526

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !7
  %i.br = getelementptr i8, ptr %i.bp, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !7
  %i.bt = sub nsw i32 %i.bq, %i.bs
  %i.bu = shl i32 %i.bt, %i.a
  %i.bv = ashr exact i32 %i.bu, %i.a
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !7
  %i.bz = getelementptr i8, ptr %i.bx, i64 -4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !7
  %i.cb = sub nsw i32 %i.by, %i.ca
  %i.cc = shl i32 %i.cb, %i.a
  %i.cd = ashr exact i32 %i.cc, %i.a
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !7
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit526, label %.lr.ph, !llvm.loop !27

.lr.ph533:                                        ; preds = %.lr.ph533.prol.loopexit, %.lr.ph533
  %indvars.iv578 = phi i64 [ %indvars.iv.next579.1, %.lr.ph533 ], [ %indvars.iv578.unr, %.lr.ph533.prol.loopexit ] ; 4 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv578 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !7
  %i.ch = getelementptr i8, ptr %i.cf, i64 -4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !7
  %i.cj = sub nsw i32 %i.cg, %i.ci
  %i.ck = shl i32 %i.cj, %i.a
  %i.cl = ashr exact i32 %i.ck, %i.a
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv578
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !7
  %indvars.iv.next579 = add nuw nsw i64 %indvars.iv578, 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next579 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !7
  %i.cp = getelementptr i8, ptr %i.cn, i64 -4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !7
  %i.cr = sub nsw i32 %i.co, %i.cq
  %i.cs = shl i32 %i.cr, %i.a
  %i.ct = ashr exact i32 %i.cs, %i.a
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next579
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !7
  %indvars.iv.next579.1 = add nuw nsw i64 %indvars.iv578, 2 ; 2 uses
  %exitcond582.not.1 = icmp eq i64 %indvars.iv.next579.1, %wide.trip.count581
  br i1 %exitcond582.not.1, label %._crit_edge, label %.lr.ph533, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph533.prol.loopexit, %.lr.ph533, %middle.block673, %.preheader527
  switch i32 %4, label %.preheader525 [
    i32 4, label %bb.d
    i32 8, label %bb.o
  ]

.preheader525:                                    ; preds = %._crit_edge
  %i.cv = icmp slt i32 %.pre, %2
  br i1 %i.cv, label %.lr.ph572, label %.loopexit526

.lr.ph572:                                        ; preds = %.preheader525
  %i.cw = icmp sgt i32 %4, 0
  %i.cx = sext i32 %4 to i64                      ; 2 uses
  %i.cy = sext i32 %.pre to i64                   ; 2 uses
  %wide.trip.count594 = zext i32 %4 to i64        ; 3 uses
  %min.iters.check677 = icmp ult i32 %4, 8
  %n.vec679 = and i64 %wide.trip.count594, 2147483640 ; 3 uses
  %cmp.n692 = icmp eq i64 %n.vec679, %wide.trip.count594
  %i.cz = icmp sgt i32 %4, 0
  %i.da = icmp sgt i32 %4, 0
  br label %bb.ah

bb.d:                                             ; preds = %._crit_edge
  %i.db = load i16, ptr %3, align 2, !tbaa !9     ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !9  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.df = load i16, ptr %i.de, align 2, !tbaa !9  ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 6 ; 2 uses
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !9  ; 2 uses
  %i.di = icmp sgt i32 %2, 5
  br i1 %i.di, label %.lr.ph559.preheader, label %._crit_edge560

.lr.ph559.preheader:                              ; preds = %bb.d
  %i.dj = zext i32 %.pre to i64
  %wide.trip.count589 = zext nneg i32 %2 to i64
  br label %.lr.ph559

.lr.ph559:                                        ; preds = %.lr.ph559.preheader, %bb.n
  %indvars.iv587 = phi i64 [ 5, %.lr.ph559.preheader ], [ %indvars.iv.next588, %bb.n ] ; 4 uses
  %.0423556 = phi i16 [ %i.dh, %.lr.ph559.preheader ], [ %.1424, %bb.n ] ; 4 uses
  %.0427555 = phi i16 [ %i.df, %.lr.ph559.preheader ], [ %.1428, %bb.n ] ; 6 uses
  %.0431554 = phi i16 [ %i.dd, %.lr.ph559.preheader ], [ %.1432, %bb.n ] ; 8 uses
  %.0435553 = phi i16 [ %i.db, %.lr.ph559.preheader ], [ %.1436, %bb.n ] ; 10 uses
  %i.dk = sub nuw nsw i64 %indvars.iv587, %i.dj
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !7  ; 13 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv587 ; 5 uses
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !7  ; 3 uses
  %.neg574 = sub i32 %i.dp, %i.dm
  %i.dq = getelementptr inbounds i8, ptr %i.dn, i64 -8
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !7  ; 3 uses
  %i.ds = sub nsw i32 %i.dm, %i.dr                ; 3 uses
  %i.dt = getelementptr inbounds i8, ptr %i.dn, i64 -12
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !7  ; 3 uses
  %i.dv = sub nsw i32 %i.dm, %i.du                ; 3 uses
  %i.dw = getelementptr inbounds i8, ptr %i.dn, i64 -16
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !7  ; 3 uses
  %i.dy = sub nsw i32 %i.dm, %i.dx                ; 3 uses
  %i.dz = sext i16 %.0435553 to i32
  %i.ea = sext i16 %.0431554 to i32
  %i.eb = sext i16 %.0427555 to i32
  %i.ec = sext i16 %.0423556 to i32
  %.neg506.neg = mul i32 %.neg574, %i.dz
  %.neg507 = mul i32 %i.ds, %i.ea
  %.neg509 = mul i32 %i.dv, %i.eb
  %.neg511 = mul i32 %i.dy, %i.ec
  %i.ed = add i32 %.neg507, %.neg509
  %i.ee = add i32 %i.ed, %.neg511
  %reass.add518.neg = sub i32 %.neg506.neg, %i.ee
  %i.ef = add i32 %reass.add518.neg, %i.c
  %i.eg = ashr i32 %i.ef, %6
  %i.eh = load i32, ptr %i.dn, align 4, !tbaa !7
  %i.ei = add i32 %i.dm, %i.eg
  %i.ej = sub i32 %i.eh, %i.ei
  %i.ek = shl i32 %i.ej, %i.a
  %i.el = ashr exact i32 %i.ek, %i.a              ; 5 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv587
  store i32 %i.el, ptr %i.em, align 4, !tbaa !7
  %i.en = icmp sgt i32 %i.el, 0
  br i1 %i.en, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.lr.ph559
  %i.eo = tail call i32 @llvm.scmp.i32.i32(i32 %i.dm, i32 %i.dx) ; 2 uses
  %i.ep = trunc nsw i32 %i.eo to i16
  %i.eq = sub i16 %.0423556, %i.ep                ; 4 uses
  %i.er = mul nsw i32 %i.eo, %i.dy
  %i.es = ashr i32 %i.er, %6
  %i.et = sub nsw i32 %i.el, %i.es                ; 2 uses
  %i.eu = icmp slt i32 %i.et, 1
  br i1 %i.eu, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ev = tail call i32 @llvm.scmp.i32.i32(i32 %i.dm, i32 %i.du) ; 2 uses
  %i.ew = trunc nsw i32 %i.ev to i16
  %i.ex = sub i16 %.0427555, %i.ew                ; 3 uses
  %i.ey = mul nsw i32 %i.ev, %i.dv
  %i.ez = ashr i32 %i.ey, %6
  %i.fa = shl nsw i32 %i.ez, 1
  %i.fb = sub nsw i32 %i.et, %i.fa                ; 2 uses
  %i.fc = icmp slt i32 %i.fb, 1
  br i1 %i.fc, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fd = tail call i32 @llvm.scmp.i32.i32(i32 %i.dm, i32 %i.dr) ; 2 uses
  %i.fe = trunc nsw i32 %i.fd to i16
  %i.ff = sub i16 %.0431554, %i.fe                ; 2 uses
  %i.fg = mul nsw i32 %i.fd, %i.ds
  %i.fh = ashr i32 %i.fg, %6
  %.neg478 = mul i32 %i.fh, -3
  %i.fi = add i32 %i.fb, %.neg478
  %i.fj = icmp slt i32 %i.fi, 1
  br i1 %i.fj, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fk = tail call i16 @llvm.scmp.i16.i32(i32 %i.dp, i32 %i.dm)
  %i.fl = add i16 %i.fk, %.0435553
  br label %bb.n

bb.i:                                             ; preds = %.lr.ph559
  %i.fm = icmp slt i32 %i.el, 0
  br i1 %i.fm, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.fn = tail call i32 @llvm.scmp.i32.i32(i32 %i.dm, i32 %i.dx) ; 2 uses
  %i.fo = trunc nsw i32 %i.fn to i16
  %i.fp = add i16 %.0423556, %i.fo                ; 4 uses
  %i.fq = mul i32 %i.dy, %i.fn
  %i.fr = sub i32 0, %i.fq
  %i.fs = ashr i32 %i.fr, %6
  %i.ft = sub nsw i32 %i.el, %i.fs                ; 2 uses
  %i.fu = icmp sgt i32 %i.ft, -1
  br i1 %i.fu, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fv = tail call i32 @llvm.scmp.i32.i32(i32 %i.dm, i32 %i.du) ; 2 uses
  %i.fw = trunc nsw i32 %i.fv to i16
  %i.fx = add i16 %.0427555, %i.fw                ; 3 uses
  %i.fy = mul i32 %i.dv, %i.fv
  %i.fz = sub i32 0, %i.fy
  %i.ga = ashr i32 %i.fz, %6
  %i.gb = shl nsw i32 %i.ga, 1
  %i.gc = sub nsw i32 %i.ft, %i.gb                ; 2 uses
  %i.gd = icmp sgt i32 %i.gc, -1
  br i1 %i.gd, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ge = tail call i32 @llvm.scmp.i32.i32(i32 %i.dm, i32 %i.dr) ; 2 uses
  %i.gf = trunc nsw i32 %i.ge to i16
  %i.gg = add i16 %.0431554, %i.gf                ; 2 uses
  %i.gh = mul i32 %i.ds, %i.ge
  %i.gi = sub i32 0, %i.gh
  %i.gj = ashr i32 %i.gi, %6
  %.neg477 = mul i32 %i.gj, -3
  %i.gk = add i32 %i.gc, %.neg477
  %i.gl = icmp sgt i32 %i.gk, -1
  br i1 %i.gl, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gm = tail call i16 @llvm.scmp.i16.i32(i32 %i.dm, i32 %i.dp)
  %i.gn = add i16 %i.gm, %.0435553
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.m, %bb.i, %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.e
  %.1436 = phi i16 [ %.0435553, %bb.e ], [ %.0435553, %bb.f ], [ %.0435553, %bb.g ], [ %i.fl, %bb.h ], [ %.0435553, %bb.j ], [ %.0435553, %bb.k ], [ %.0435553, %bb.l ], [ %i.gn, %bb.m ], [ %.0435553, %bb.i ] ; 2 uses
  %.1432 = phi i16 [ %.0431554, %bb.e ], [ %.0431554, %bb.f ], [ %i.ff, %bb.g ], [ %i.ff, %bb.h ], [ %.0431554, %bb.j ], [ %.0431554, %bb.k ], [ %i.gg, %bb.l ], [ %i.gg, %bb.m ], [ %.0431554, %bb.i ] ; 2 uses
  %.1428 = phi i16 [ %.0427555, %bb.e ], [ %i.ex, %bb.f ], [ %i.ex, %bb.g ], [ %i.ex, %bb.h ], [ %.0427555, %bb.j ], [ %i.fx, %bb.k ], [ %i.fx, %bb.l ], [ %i.fx, %bb.m ], [ %.0427555, %bb.i ] ; 2 uses
  %.1424 = phi i16 [ %i.eq, %bb.e ], [ %i.eq, %bb.f ], [ %i.eq, %bb.g ], [ %i.eq, %bb.h ], [ %i.fp, %bb.j ], [ %i.fp, %bb.k ], [ %i.fp, %bb.l ], [ %i.fp, %bb.m ], [ %.0423556, %bb.i ] ; 2 uses
  %indvars.iv.next588 = add nuw nsw i64 %indvars.iv587, 1 ; 2 uses
  %exitcond590.not = icmp eq i64 %indvars.iv.next588, %wide.trip.count589
  br i1 %exitcond590.not, label %._crit_edge560, label %.lr.ph559, !llvm.loop !29

._crit_edge560:                                   ; preds = %bb.n, %bb.d
  %.0435.lcssa = phi i16 [ %i.db, %bb.d ], [ %.1436, %bb.n ]
  %.0431.lcssa = phi i16 [ %i.dd, %bb.d ], [ %.1432, %bb.n ]
  %.0427.lcssa = phi i16 [ %i.df, %bb.d ], [ %.1428, %bb.n ]
  %.0423.lcssa = phi i16 [ %i.dh, %bb.d ], [ %.1424, %bb.n ]
  store i16 %.0435.lcssa, ptr %3, align 2, !tbaa !9
  store i16 %.0431.lcssa, ptr %i.dc, align 2, !tbaa !9
  store i16 %.0427.lcssa, ptr %i.de, align 2, !tbaa !9
  store i16 %.0423.lcssa, ptr %i.dg, align 2, !tbaa !9
  br label %.loopexit526

bb.o:                                             ; preds = %._crit_edge
  %i.go = load i16, ptr %3, align 2, !tbaa !9     ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !9  ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !9  ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 6 ; 2 uses
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !9  ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !9  ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 10 ; 2 uses
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !9  ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !9  ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %3, i64 14 ; 2 uses
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !9  ; 2 uses
  %i.hd = icmp sgt i32 %2, 9
  br i1 %i.hd, label %.lr.ph544.preheader, label %._crit_edge545

.lr.ph544.preheader:                              ; preds = %bb.o
  %i.he = zext i32 %.pre to i64
  %wide.trip.count585 = zext nneg i32 %2 to i64
  br label %.lr.ph544

.lr.ph544:                                        ; preds = %.lr.ph544.preheader, %bb.ag
  %indvars.iv583 = phi i64 [ 9, %.lr.ph544.preheader ], [ %indvars.iv.next584, %bb.ag ] ; 4 uses
  %.0542 = phi i16 [ %i.hc, %.lr.ph544.preheader ], [ %.1, %bb.ag ] ; 4 uses
  %.0409541 = phi i16 [ %i.ha, %.lr.ph544.preheader ], [ %.1410, %bb.ag ] ; 6 uses
  %.0411540 = phi i16 [ %i.gy, %.lr.ph544.preheader ], [ %.1412, %bb.ag ] ; 8 uses
  %.0413539 = phi i16 [ %i.gw, %.lr.ph544.preheader ], [ %.1414, %bb.ag ] ; 10 uses
  %.2425537 = phi i16 [ %i.gu, %.lr.ph544.preheader ], [ %.3426, %bb.ag ] ; 12 uses
  %.2429536 = phi i16 [ %i.gs, %.lr.ph544.preheader ], [ %.3430, %bb.ag ] ; 14 uses
  %.2433535 = phi i16 [ %i.gq, %.lr.ph544.preheader ], [ %.3434, %bb.ag ] ; 16 uses
  %.2437534 = phi i16 [ %i.go, %.lr.ph544.preheader ], [ %.3438, %bb.ag ] ; 18 uses
  %i.hf = sub nuw nsw i64 %indvars.iv583, %i.he
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hf
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !7  ; 25 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv583 ; 9 uses
  %i.hj = getelementptr inbounds i8, ptr %i.hi, i64 -4
  %i.hk = getelementptr inbounds i8, ptr %i.hi, i64 -8
  %i.hl = load i32, ptr %i.hj, align 4, !tbaa !7  ; 3 uses
  %.neg573 = sub i32 %i.hl, %i.hh
  %i.hm = getelementptr inbounds i8, ptr %i.hi, i64 -12
  %i.hn = load i32, ptr %i.hk, align 4, !tbaa !7  ; 3 uses
  %i.ho = sub nsw i32 %i.hh, %i.hn                ; 3 uses
  %i.hp = getelementptr inbounds i8, ptr %i.hi, i64 -16
  %i.hq = load i32, ptr %i.hm, align 4, !tbaa !7  ; 3 uses
  %i.hr = sub nsw i32 %i.hh, %i.hq                ; 3 uses
  %i.hs = getelementptr inbounds i8, ptr %i.hi, i64 -20
  %i.ht = load i32, ptr %i.hp, align 4, !tbaa !7  ; 3 uses
  %i.hu = sub nsw i32 %i.hh, %i.ht                ; 3 uses
  %i.hv = getelementptr inbounds i8, ptr %i.hi, i64 -24
  %i.hw = load i32, ptr %i.hs, align 4, !tbaa !7  ; 3 uses
  %i.hx = sub nsw i32 %i.hh, %i.hw                ; 3 uses
  %i.hy = getelementptr inbounds i8, ptr %i.hi, i64 -28
  %i.hz = load i32, ptr %i.hv, align 4, !tbaa !7  ; 3 uses
  %i.ia = sub nsw i32 %i.hh, %i.hz                ; 3 uses
  %i.ib = getelementptr inbounds i8, ptr %i.hi, i64 -32
  %i.ic = load i32, ptr %i.hy, align 4, !tbaa !7  ; 3 uses
  %i.id = sub nsw i32 %i.hh, %i.ic                ; 3 uses
  %i.ie = load i32, ptr %i.ib, align 4, !tbaa !7  ; 3 uses
  %i.if = sub nsw i32 %i.hh, %i.ie                ; 3 uses
  %i.ig = sext i16 %.2437534 to i32
  %i.ih = sext i16 %.2433535 to i32
  %i.ii = sext i16 %.2429536 to i32
  %i.ij = sext i16 %.2425537 to i32
  %i.ik = sext i16 %.0413539 to i32
  %i.il = sext i16 %.0411540 to i32
  %i.im = sext i16 %.0409541 to i32
  %i.in = sext i16 %.0542 to i32
  %.neg482.neg = mul i32 %.neg573, %i.ig
  %.neg483 = mul i32 %i.ho, %i.ih
  %.neg485 = mul i32 %i.hr, %i.ii
  %.neg487 = mul i32 %i.hu, %i.ij
  %.neg489 = mul i32 %i.hx, %i.ik
  %.neg491 = mul i32 %i.ia, %i.il
  %.neg493 = mul i32 %i.id, %i.im
  %.neg495 = mul i32 %i.if, %i.in
  %i.io = add i32 %.neg483, %.neg485
  %i.ip = add i32 %i.io, %.neg487
  %i.iq = add i32 %i.ip, %.neg489
  %i.ir = add i32 %i.iq, %.neg491
  %i.is = add i32 %i.ir, %.neg493
  %i.it = add i32 %i.is, %.neg495
  %reass.add505.neg = sub i32 %.neg482.neg, %i.it
  %i.iu = add i32 %reass.add505.neg, %i.c
  %i.iv = ashr i32 %i.iu, %6
  %i.iw = load i32, ptr %i.hi, align 4, !tbaa !7
  %i.ix = add i32 %i.hh, %i.iv
  %i.iy = sub i32 %i.iw, %i.ix
  %i.iz = shl i32 %i.iy, %i.a
  %i.ja = ashr exact i32 %i.iz, %i.a              ; 5 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv583
  store i32 %i.ja, ptr %i.jb, align 4, !tbaa !7
  %i.jc = icmp sgt i32 %i.ja, 0
  br i1 %i.jc, label %bb.p, label %bb.x

bb.p:                                             ; preds = %.lr.ph544
  %i.jd = tail call i32 @llvm.scmp.i32.i32(i32 %i.hh, i32 %i.ie) ; 2 uses
  %i.je = trunc nsw i32 %i.jd to i16
  %i.jf = sub i16 %.0542, %i.je                   ; 8 uses
  %i.jg = mul nsw i32 %i.jd, %i.if
  %i.jh = ashr i32 %i.jg, %6
  %i.ji = sub nsw i32 %i.ja, %i.jh                ; 2 uses
  %i.jj = icmp slt i32 %i.ji, 1
  br i1 %i.jj, label %bb.ag, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.jk = tail call i32 @llvm.scmp.i32.i32(i32 %i.hh, i32 %i.ic) ; 2 uses
  %i.jl = trunc nsw i32 %i.jk to i16
  %i.jm = sub i16 %.0409541, %i.jl                ; 7 uses
  %i.jn = mul nsw i32 %i.jk, %i.id
  %i.jo = ashr i32 %i.jn, %6
  %i.jp = shl nsw i32 %i.jo, 1
  %i.jq = sub nsw i32 %i.ji, %i.jp                ; 2 uses
  %i.jr = icmp slt i32 %i.jq, 1
  br i1 %i.jr, label %bb.ag, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.js = tail call i32 @llvm.scmp.i32.i32(i32 %i.hh, i32 %i.hz) ; 2 uses
  %i.jt = trunc nsw i32 %i.js to i16
  %i.ju = sub i16 %.0411540, %i.jt                ; 6 uses
  %i.jv = mul nsw i32 %i.js, %i.ia
  %i.jw = ashr i32 %i.jv, %6
  %.neg473 = mul i32 %i.jw, -3
  %i.jx = add i32 %i.jq, %.neg473                 ; 2 uses
  %i.jy = icmp slt i32 %i.jx, 1
  br i1 %i.jy, label %bb.ag, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.jz = tail call i32 @llvm.scmp.i32.i32(i32 %i.hh, i32 %i.hw) ; 2 uses
  %i.ka = trunc nsw i32 %i.jz to i16
  %i.kb = sub i16 %.0413539, %i.ka                ; 5 uses
  %i.kc = mul nsw i32 %i.jz, %i.hx
  %i.kd = ashr i32 %i.kc, %6
  %i.ke = shl nsw i32 %i.kd, 2
  %i.kf = sub nsw i32 %i.jx, %i.ke                ; 2 uses
  %i.kg = icmp slt i32 %i.kf, 1
  br i1 %i.kg, label %bb.ag, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.kh = tail call i32 @llvm.scmp.i32.i32(i32 %i.hh, i32 %i.ht) ; 2 uses
  %i.ki = trunc nsw i32 %i.kh to i16
  %i.kj = sub i16 %.2425537, %i.ki                ; 4 uses
  %i.kk = mul nsw i32 %i.kh, %i.hu
  %i.kl = ashr i32 %i.kk, %6
  %.neg474 = mul i32 %i.kl, -5
  %i.km = add i32 %i.kf, %.neg474                 ; 2 uses
  %i.kn = icmp slt i32 %i.km, 1
  br i1 %i.kn, label %bb.ag, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ko = tail call i32 @llvm.scmp.i32.i32(i32 %i.hh, i32 %i.hq) ; 2 uses
  %i.kp = trunc nsw i32 %i.ko to i16
  %i.kq = sub i16 %.2429536, %i.kp                ; 3 uses
  %i.kr = mul nsw i32 %i.ko, %i.hr
  %i.ks = ashr i32 %i.kr, %6
  %.neg475 = mul i32 %i.ks, -6
  %i.kt = add i32 %i.km, %.neg475                 ; 2 uses
  %i.ku = icmp slt i32 %i.kt, 1
  br i1 %i.ku, label %bb.ag, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.kv = tail call i32 @llvm.scmp.i32.i32(i32 %i.hh, i32 %i.hn) ; 2 uses
  %i.kw = trunc nsw i32 %i.kv to i16
  %i.kx = sub i16 %.2433535, %i.kw                ; 2 uses
  %i.ky = mul nsw i32 %i.kv, %i.ho
  %i.kz = ashr i32 %i.ky, %6
  %.neg476 = mul i32 %i.kz, -7
  %i.la = add i32 %i.kt, %.neg476
  %i.lb = icmp slt i32 %i.la, 1
  br i1 %i.lb, label %bb.ag, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.lc = tail call i16 @llvm.scmp.i16.i32(i32 %i.hl, i32 %i.hh)
  %i.ld = add i16 %i.lc, %.2437534
  br label %bb.ag

bb.x:                                             ; preds = %.lr.ph544
  %i.le = icmp slt i32 %i.ja, 0
  br i1 %i.le, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  %i.lf = tail call i32 @llvm.scmp.i32.i32(i32 %i.hh, i32 %i.ie) ; 2 uses
  %i.lg = trunc nsw i32 %i.lf to i16
  %i.lh = add i16 %.0542, %i.lg                   ; 8 uses
  %i.li = mul i32 %i.if, %i.lf
  %i.lj = sub i32 0, %i.li
  %i.lk = ashr i32 %i.lj, %6
  %i.ll = sub nsw i32 %i.ja, %i.lk                ; 2 uses
  %i.lm = icmp sgt i32 %i.ll, -1
  br i1 %i.lm, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ln = tail call i32 @llvm.scmp.i32.i32(i32 %i.hh, i32 %i.ic) ; 2 uses
  %i.lo = trunc nsw i32 %i.ln to i16
  %i.lp = add i16 %.0409541, %i.lo                ; 7 uses
  %i.lq = mul i32 %i.id, %i.ln
  %i.lr = sub i32 0, %i.lq
  %i.ls = ashr i32 %i.lr, %6
  %i.lt = shl nsw i32 %i.ls, 1
  %i.lu = sub nsw i32 %i.ll, %i.lt                ; 2 uses
  %i.lv = icmp sgt i32 %i.lu, -1
  br i1 %i.lv, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.lw = tail call i32 @llvm.scmp.i32.i32(i32 %i.hh, i32 %i.hz) ; 2 uses
  %i.lx = trunc nsw i32 %i.lw to i16
  %i.ly = add i16 %.0411540, %i.lx                ; 6 uses
  %i.lz = mul i32 %i.ia, %i.lw
  %i.ma = sub i32 0, %i.lz
  %i.mb = ashr i32 %i.ma, %6
  %.neg469 = mul i32 %i.mb, -3
  %i.mc = add i32 %i.lu, %.neg469                 ; 2 uses
  %i.md = icmp sgt i32 %i.mc, -1
  br i1 %i.md, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.me = tail call i32 @llvm.scmp.i32.i32(i32 %i.hh, i32 %i.hw) ; 2 uses
  %i.mf = trunc nsw i32 %i.me to i16
  %i.mg = add i16 %.0413539, %i.mf                ; 5 uses
  %i.mh = mul i32 %i.hx, %i.me
  %i.mi = sub i32 0, %i.mh
  %i.mj = ashr i32 %i.mi, %6
  %i.mk = shl nsw i32 %i.mj, 2
  %i.ml = sub nsw i32 %i.mc, %i.mk                ; 2 uses
  %i.mm = icmp sgt i32 %i.ml, -1
  br i1 %i.mm, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.mn = tail call i32 @llvm.scmp.i32.i32(i32 %i.hh, i32 %i.ht) ; 2 uses
  %i.mo = trunc nsw i32 %i.mn to i16
  %i.mp = add i16 %.2425537, %i.mo                ; 4 uses
  %i.mq = mul i32 %i.hu, %i.mn
  %i.mr = sub i32 0, %i.mq
  %i.ms = ashr i32 %i.mr, %6
  %.neg470 = mul i32 %i.ms, -5
  %i.mt = add i32 %i.ml, %.neg470                 ; 2 uses
  %i.mu = icmp sgt i32 %i.mt, -1
  br i1 %i.mu, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.mv = tail call i32 @llvm.scmp.i32.i32(i32 %i.hh, i32 %i.hq) ; 2 uses
  %i.mw = trunc nsw i32 %i.mv to i16
  %i.mx = add i16 %.2429536, %i.mw                ; 3 uses
  %i.my = mul i32 %i.hr, %i.mv
  %i.mz = sub i32 0, %i.my
  %i.na = ashr i32 %i.mz, %6
  %.neg471 = mul i32 %i.na, -6
  %i.nb = add i32 %i.mt, %.neg471                 ; 2 uses
  %i.nc = icmp sgt i32 %i.nb, -1
  br i1 %i.nc, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.nd = tail call i32 @llvm.scmp.i32.i32(i32 %i.hh, i32 %i.hn) ; 2 uses
  %i.ne = trunc nsw i32 %i.nd to i16
  %i.nf = add i16 %.2433535, %i.ne                ; 2 uses
  %i.ng = mul i32 %i.ho, %i.nd
  %i.nh = sub i32 0, %i.ng
  %i.ni = ashr i32 %i.nh, %6
  %.neg472 = mul i32 %i.ni, -7
  %i.nj = add i32 %i.nb, %.neg472
  %i.nk = icmp sgt i32 %i.nj, -1
  br i1 %i.nk, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.nl = tail call i16 @llvm.scmp.i16.i32(i32 %i.hh, i32 %i.hl)
  %i.nm = add i16 %i.nl, %.2437534
  br label %bb.ag

bb.ag:                                            ; preds = %bb.w, %bb.af, %bb.x, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %.3438 = phi i16 [ %.2437534, %bb.p ], [ %.2437534, %bb.q ], [ %.2437534, %bb.r ], [ %.2437534, %bb.s ], [ %.2437534, %bb.t ], [ %.2437534, %bb.u ], [ %.2437534, %bb.v ], [ %i.ld, %bb.w ], [ %.2437534, %bb.y ], [ %.2437534, %bb.z ], [ %.2437534, %bb.aa ], [ %.2437534, %bb.ab ], [ %.2437534, %bb.ac ], [ %.2437534, %bb.ad ], [ %.2437534, %bb.ae ], [ %i.nm, %bb.af ], [ %.2437534, %bb.x ] ; 2 uses
  %.3434 = phi i16 [ %.2433535, %bb.p ], [ %.2433535, %bb.q ], [ %.2433535, %bb.r ], [ %.2433535, %bb.s ], [ %.2433535, %bb.t ], [ %.2433535, %bb.u ], [ %i.kx, %bb.v ], [ %i.kx, %bb.w ], [ %.2433535, %bb.y ], [ %.2433535, %bb.z ], [ %.2433535, %bb.aa ], [ %.2433535, %bb.ab ], [ %.2433535, %bb.ac ], [ %.2433535, %bb.ad ], [ %i.nf, %bb.ae ], [ %i.nf, %bb.af ], [ %.2433535, %bb.x ] ; 2 uses
  %.3430 = phi i16 [ %.2429536, %bb.p ], [ %.2429536, %bb.q ], [ %.2429536, %bb.r ], [ %.2429536, %bb.s ], [ %.2429536, %bb.t ], [ %i.kq, %bb.u ], [ %i.kq, %bb.v ], [ %i.kq, %bb.w ], [ %.2429536, %bb.y ], [ %.2429536, %bb.z ], [ %.2429536, %bb.aa ], [ %.2429536, %bb.ab ], [ %.2429536, %bb.ac ], [ %i.mx, %bb.ad ], [ %i.mx, %bb.ae ], [ %i.mx, %bb.af ], [ %.2429536, %bb.x ] ; 2 uses
  %.3426 = phi i16 [ %.2425537, %bb.p ], [ %.2425537, %bb.q ], [ %.2425537, %bb.r ], [ %.2425537, %bb.s ], [ %i.kj, %bb.t ], [ %i.kj, %bb.u ], [ %i.kj, %bb.v ], [ %i.kj, %bb.w ], [ %.2425537, %bb.y ], [ %.2425537, %bb.z ], [ %.2425537, %bb.aa ], [ %.2425537, %bb.ab ], [ %i.mp, %bb.ac ], [ %i.mp, %bb.ad ], [ %i.mp, %bb.ae ], [ %i.mp, %bb.af ], [ %.2425537, %bb.x ] ; 2 uses
  %.1414 = phi i16 [ %.0413539, %bb.p ], [ %.0413539, %bb.q ], [ %.0413539, %bb.r ], [ %i.kb, %bb.s ], [ %i.kb, %bb.t ], [ %i.kb, %bb.u ], [ %i.kb, %bb.v ], [ %i.kb, %bb.w ], [ %.0413539, %bb.y ], [ %.0413539, %bb.z ], [ %.0413539, %bb.aa ], [ %i.mg, %bb.ab ], [ %i.mg, %bb.ac ], [ %i.mg, %bb.ad ], [ %i.mg, %bb.ae ], [ %i.mg, %bb.af ], [ %.0413539, %bb.x ] ; 2 uses
  %.1412 = phi i16 [ %.0411540, %bb.p ], [ %.0411540, %bb.q ], [ %i.ju, %bb.r ], [ %i.ju, %bb.s ], [ %i.ju, %bb.t ], [ %i.ju, %bb.u ], [ %i.ju, %bb.v ], [ %i.ju, %bb.w ], [ %.0411540, %bb.y ], [ %.0411540, %bb.z ], [ %i.ly, %bb.aa ], [ %i.ly, %bb.ab ], [ %i.ly, %bb.ac ], [ %i.ly, %bb.ad ], [ %i.ly, %bb.ae ], [ %i.ly, %bb.af ], [ %.0411540, %bb.x ] ; 2 uses
  %.1410 = phi i16 [ %.0409541, %bb.p ], [ %i.jm, %bb.q ], [ %i.jm, %bb.r ], [ %i.jm, %bb.s ], [ %i.jm, %bb.t ], [ %i.jm, %bb.u ], [ %i.jm, %bb.v ], [ %i.jm, %bb.w ], [ %.0409541, %bb.y ], [ %i.lp, %bb.z ], [ %i.lp, %bb.aa ], [ %i.lp, %bb.ab ], [ %i.lp, %bb.ac ], [ %i.lp, %bb.ad ], [ %i.lp, %bb.ae ], [ %i.lp, %bb.af ], [ %.0409541, %bb.x ] ; 2 uses
  %.1 = phi i16 [ %i.jf, %bb.p ], [ %i.jf, %bb.q ], [ %i.jf, %bb.r ], [ %i.jf, %bb.s ], [ %i.jf, %bb.t ], [ %i.jf, %bb.u ], [ %i.jf, %bb.v ], [ %i.jf, %bb.w ], [ %i.lh, %bb.y ], [ %i.lh, %bb.z ], [ %i.lh, %bb.aa ], [ %i.lh, %bb.ab ], [ %i.lh, %bb.ac ], [ %i.lh, %bb.ad ], [ %i.lh, %bb.ae ], [ %i.lh, %bb.af ], [ %.0542, %bb.x ] ; 2 uses
  %indvars.iv.next584 = add nuw nsw i64 %indvars.iv583, 1 ; 2 uses
  %exitcond586.not = icmp eq i64 %indvars.iv.next584, %wide.trip.count585
  br i1 %exitcond586.not, label %._crit_edge545, label %.lr.ph544, !llvm.loop !30

._crit_edge545:                                   ; preds = %bb.ag, %bb.o
end_hunk_1
