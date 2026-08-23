Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/indexutil?download=true
inline.NumInlined: 683
inline.NumDeleted: 377
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_Z24gmx_ana_index_differenceP15gmx_ana_index_tS0_S0_:bb.a
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.f
  %i.f = phi i32 [ %i.a, %.preheader.lr.ph ], [ %i.ad, %bb.f ]
  %indvars.iv34 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next35, %bb.f ] ; 4 uses
  %.031 = phi i32 [ 0, %.preheader.lr.ph ], [ %.1, %bb.f ] ; 3 uses
  %.02130 = phi i32 [ 0, %.preheader.lr.ph ], [ %.122.lcssa43, %bb.f ] ; 3 uses
  %i.g = load i32, ptr %2, align 8, !tbaa !85     ; 4 uses
  %i.h = icmp slt i32 %.02130, %i.g
  br i1 %i.h, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !122
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre.pre, i64 %indvars.iv34
  %i.k = load i32, ptr %i.j, align 4, !tbaa !35
  %i.l = sext i32 %.02130 to i64
  %i.m = sext i32 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.l, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !35
  %i.p = icmp slt i32 %i.o, %i.k
  br i1 %i.p, label %bb.c, label %.critedge.loopexit

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.m
  br i1 %exitcond.not, label %.critedge._crit_edge, label %bb.b, !llvm.loop !160

.critedge.loopexit:                               ; preds = %bb.b
  %i.q = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader
  %.122.lcssa = phi i32 [ %.02130, %.preheader ], [ %i.q, %.critedge.loopexit ] ; 5 uses
  %i.r = icmp eq i32 %.122.lcssa, %i.g
  br i1 %i.r, label %.critedge._crit_edge, label %bb.d

.critedge._crit_edge:                             ; preds = %bb.c, %.critedge
  %.122.lcssa44 = phi i32 [ %.122.lcssa, %.critedge ], [ %i.g, %bb.c ]
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre.pre, i64 %indvars.iv34
  %.pre37 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !35
  br label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !122
  %i.t = sext i32 %.122.lcssa to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !35
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre.pre, i64 %indvars.iv34
  %i.x = load i32, ptr %i.w, align 4, !tbaa !35   ; 2 uses
  %.not = icmp eq i32 %i.v, %i.x
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge._crit_edge, %bb.d
  %.122.lcssa42 = phi i32 [ %.122.lcssa44, %.critedge._crit_edge ], [ %.122.lcssa, %bb.d ]
  %i.y = phi i32 [ %.pre37, %.critedge._crit_edge ], [ %i.x, %bb.d ]
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !122
  %i.aa = add nsw i32 %.031, 1
  %i.ab = sext i32 %.031 to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ab
  store i32 %i.y, ptr %i.ac, align 4, !tbaa !35
  %.pre38 = load i32, ptr %1, align 8, !tbaa !85
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.122.lcssa43 = phi i32 [ %.122.lcssa42, %bb.e ], [ %.122.lcssa, %bb.d ]
  %i.ad = phi i32 [ %.pre38, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %i.aa, %bb.e ], [ %.031, %bb.d ] ; 2 uses
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp slt i64 %indvars.iv.next35, %i.ae
  br i1 %i.af, label %.preheader, label %._crit_edge, !llvm.loop !161

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.f ]
  store i32 %.0.lcssa, ptr %0, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_Z29gmx_ana_index_difference_sizeP15gmx_ana_index_tS0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !85     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i32, ptr %1, align 8, !tbaa !85     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = sext i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.e
  %indvars.iv30 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next31, %bb.e ] ; 3 uses
  %.027 = phi i32 [ 0, %.preheader.lr.ph ], [ %.1, %bb.e ] ; 2 uses
  %.01726 = phi i32 [ 0, %.preheader.lr.ph ], [ %.118.lcssa36, %bb.e ] ; 3 uses
  %i.g = icmp slt i32 %.01726, %i.d
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !122
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !122
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv30
  %i.k = load i32, ptr %i.j, align 4, !tbaa !35
  %i.l = sext i32 %.01726 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.l, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !35
  %i.o = icmp slt i32 %i.n, %i.k
  br i1 %i.o, label %bb.c, label %.critedge.loopexit

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %exitcond.not, label %.critedge.thread, label %bb.b, !llvm.loop !162

.critedge.loopexit:                               ; preds = %bb.b
  %i.p = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader
  %.118.lcssa = phi i32 [ %.01726, %.preheader ], [ %i.p, %.critedge.loopexit ] ; 5 uses
  %i.q = icmp eq i32 %.118.lcssa, %i.d
  br i1 %i.q, label %.critedge.thread, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !122
  %i.s = sext i32 %.118.lcssa to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !35
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !122
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv30
  %i.x = load i32, ptr %i.w, align 4, !tbaa !35
  %.not = icmp eq i32 %i.u, %i.x
  br i1 %.not, label %bb.e, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.c, %bb.d, %.critedge
  %.118.lcssa37 = phi i32 [ %.118.lcssa, %.critedge ], [ %.118.lcssa, %bb.d ], [ %i.d, %bb.c ]
  %i.y = add nsw i32 %.027, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge.thread
  %.118.lcssa36 = phi i32 [ %.118.lcssa37, %.critedge.thread ], [ %.118.lcssa, %bb.d ]
  %.1 = phi i32 [ %i.y, %.critedge.thread ], [ %.027, %bb.d ] ; 2 uses
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %exitcond33.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count
  br i1 %exitcond33.not, label %._crit_edge, label %.preheader, !llvm.loop !163

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.e ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_Z23gmx_ana_index_partitionP15gmx_ana_index_tS0_S0_S0_(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4), (8, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122  ; 2 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = load i32, ptr %3, align 8, !tbaa !85     ; 2 uses
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.e ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !122
  %i.h = load i32, ptr %2, align 8, !tbaa !85
  %i.i = sub nsw i32 %i.h, %i.d                   ; 2 uses
  store i32 %i.i, ptr %1, align 8, !tbaa !85
  %i.j = load i32, ptr %3, align 8, !tbaa !85     ; 3 uses
  %i.k = load i32, ptr %2, align 8, !tbaa !85     ; 3 uses
  %i.l = add nsw i32 %i.i, -1                     ; 5 uses
  %.02739 = add nsw i32 %i.k, -1                  ; 4 uses
  %i.m = icmp sgt i32 %i.j, 0
  br i1 %i.m, label %.preheader32.lr.ph, label %.preheader

.preheader32.lr.ph:                               ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.p = zext nneg i32 %i.j to i64                ; 3 uses
  %xtraiter = and i64 %i.p, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader32.prol.loopexit, label %.preheader32.prol

.preheader32.prol:                                ; preds = %.preheader32.lr.ph
  %indvars.iv.next52.prol = add nsw i64 %i.p, -1  ; 2 uses
  %i.q = icmp sgt i32 %i.k, 0
  br i1 %i.q, label %.lr.ph.prol, label %.critedge.prol

.lr.ph.prol:                                      ; preds = %.preheader32.prol
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !122
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !122
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next52.prol
  %i.u = sext i32 %i.l to i64
  %i.v = sub i32 %i.l, %i.k
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.prol
  %indvars.iv.prol.a = phi i64 [ %i.u, %.lr.ph.prol ], [ %indvars.iv.next.prol, %bb.c ] ; 3 uses
  %.12833.prol = phi i32 [ %.02739, %.lr.ph.prol ], [ %5, %bb.c ] ; 4 uses
  %4 = zext nneg i32 %.12833.prol to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !35   ; 2 uses
  %i.y = load i32, ptr %i.t, align 4, !tbaa !35
  %.not.prol = icmp eq i32 %i.x, %i.y
  br i1 %.not.prol, label %.critedge.loopexit.split.loop.exit.prol, label %bb.c

bb.c:                                             ; preds = %bb.b
  %5 = add nsw i32 %.12833.prol, -1
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol.a, -1
  %i.z = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv.prol.a
  store i32 %i.x, ptr %i.z, align 4, !tbaa !35
  %i.aa = icmp sgt i32 %.12833.prol, 0
  br i1 %i.aa, label %bb.b, label %.critedge.prol, !llvm.loop !164

.critedge.loopexit.split.loop.exit.prol:          ; preds = %bb.b
  %i.ab = trunc nsw i64 %indvars.iv.prol.a to i32
  br label %.critedge.prol

.critedge.prol:                                   ; preds = %bb.c, %.critedge.loopexit.split.loop.exit.prol, %.preheader32.prol
  %.128.lcssa.prol = phi i32 [ %.02739, %.preheader32.prol ], [ %.12833.prol, %.critedge.loopexit.split.loop.exit.prol ], [ -1, %bb.c ]
  %.1.lcssa.prol = phi i32 [ %i.l, %.preheader32.prol ], [ %i.ab, %.critedge.loopexit.split.loop.exit.prol ], [ %i.v, %bb.c ] ; 2 uses
  %.027.prol = add nsw i32 %.128.lcssa.prol, -1   ; 2 uses
  br label %.preheader32.prol.loopexit

.preheader32.prol.loopexit:                       ; preds = %.critedge.prol, %.preheader32.lr.ph
  %indvars.iv51.unr = phi i64 [ %i.p, %.preheader32.lr.ph ], [ %indvars.iv.next52.prol, %.critedge.prol ]
  %.02742.unr = phi i32 [ %.02739, %.preheader32.lr.ph ], [ %.027.prol, %.critedge.prol ]
  %.041.unr = phi i32 [ %i.l, %.preheader32.lr.ph ], [ %.1.lcssa.prol, %.critedge.prol ]
  %.1.lcssa.lcssa.unr = phi i32 [ poison, %.preheader32.lr.ph ], [ %.1.lcssa.prol, %.critedge.prol ]
  %.027.lcssa85.unr = phi i32 [ poison, %.preheader32.lr.ph ], [ %.027.prol, %.critedge.prol ]
  %i.ac = icmp eq i32 %i.j, 1
  br i1 %i.ac, label %.preheader, label %.preheader32

.preheader32:                                     ; preds = %.preheader32.prol.loopexit, %.critedge.1
  %indvars.iv51 = phi i64 [ %indvars.iv.next52.1, %.critedge.1 ], [ %indvars.iv51.unr, %.preheader32.prol.loopexit ] ; 3 uses
  %.02742 = phi i32 [ %.027.1, %.critedge.1 ], [ %.02742.unr, %.preheader32.prol.loopexit ] ; 4 uses
  %.041 = phi i32 [ %.1.lcssa.1, %.critedge.1 ], [ %.041.unr, %.preheader32.prol.loopexit ] ; 3 uses
  %i.ad = icmp sgt i32 %.02742, -1
  br i1 %i.ad, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader32
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !122
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !122
  %i.ag = getelementptr [4 x i8], ptr %i.af, i64 %indvars.iv51
  %i.ah = getelementptr i8, ptr %i.ag, i64 -4
  %i.ai = sext i32 %.041 to i64
  %i.aj = xor i32 %.02742, -1
  %i.ak = add i32 %.041, %i.aj
  br label %bb.d

.preheader:                                       ; preds = %.preheader32.prol.loopexit, %.critedge.1, %bb.a
  %.0.lcssa = phi i32 [ %i.l, %bb.a ], [ %.1.lcssa.lcssa.unr, %.preheader32.prol.loopexit ], [ %.1.lcssa.1, %.critedge.1 ]
  %.027.lcssa = phi i32 [ %.02739, %bb.a ], [ %.027.lcssa85.unr, %.preheader32.prol.loopexit ], [ %.027.1, %.critedge.1 ] ; 4 uses
  %i.al = icmp sgt i32 %.027.lcssa, -1
  br i1 %i.al, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !122 ; 12 uses
  %i.ao = sext i32 %.0.lcssa to i64               ; 7 uses
  %i.ap = zext nneg i32 %.027.lcssa to i64        ; 8 uses
  %i.aq = add nuw nsw i64 %i.ap, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %.027.lcssa, 7
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ar = ptrtoaddr ptr %i.an to i64
  %i.as = shl nuw nsw i64 %i.ap, 2
  %i.at = add i64 %i.as, %i.ar
  %i.au = add nsw i64 %i.ao, %i.e
  %i.av = shl nsw i64 %i.au, 2
  %i.aw = add i64 %i.av, %i.c
  %i.ax = sub i64 %i.aw, %i.at
  %diff.check = icmp ugt i64 %i.ax, -128
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check71 = icmp ult i32 %.027.lcssa, 31
  br i1 %min.iters.check71, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ay = and i64 %i.aq, 24
  %n.vec = and i64 %i.aq, 4294967264              ; 5 uses
  %i.az = sub nsw i64 %i.ap, %n.vec
  %i.ba = sub nsw i64 %i.ao, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bb = sub i64 %i.ap, %index
  %i.bc = sub i64 %i.ao, %index
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.bb ; 4 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -28
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -60
  %i.bg = getelementptr inbounds i8, ptr %i.bd, i64 -92
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 -124
  %wide.load = load <8 x i32>, ptr %i.be, align 4, !tbaa !35
  %wide.load72 = load <8 x i32>, ptr %i.bf, align 4, !tbaa !35
  %wide.load73 = load <8 x i32>, ptr %i.bg, align 4, !tbaa !35
  %wide.load74 = load <8 x i32>, ptr %i.bh, align 4, !tbaa !35
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bc ; 4 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -28
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -60
  %i.bl = getelementptr inbounds i8, ptr %i.bi, i64 -92
  %i.bm = getelementptr inbounds i8, ptr %i.bi, i64 -124
  store <8 x i32> %wide.load, ptr %i.bj, align 4, !tbaa !35
  store <8 x i32> %wide.load72, ptr %i.bk, align 4, !tbaa !35
  store <8 x i32> %wide.load73, ptr %i.bl, align 4, !tbaa !35
  store <8 x i32> %wide.load74, ptr %i.bm, align 4, !tbaa !35
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !165

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ay, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !166

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec76 = and i64 %i.aq, 4294967288            ; 4 uses
  %i.bo = sub nsw i64 %i.ap, %n.vec76
  %i.bp = sub nsw i64 %i.ao, %n.vec76
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index77 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next79, %vec.epilog.vector.body ] ; 3 uses
  %i.bq = sub i64 %i.ap, %index77
  %i.br = sub i64 %i.ao, %index77
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.bq
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -28
  %wide.load78 = load <8 x i32>, ptr %i.bt, align 4, !tbaa !35
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.br
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -28
  store <8 x i32> %wide.load78, ptr %i.bv, align 4, !tbaa !35
  %index.next79 = add nuw i64 %index77, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next79, %n.vec76
  br i1 %i.bw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !167

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n80 = icmp eq i64 %i.aq, %n.vec76
  br i1 %cmp.n80, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv56.ph = phi i64 [ %i.ap, %iter.check ], [ %i.ap, %vector.memcheck ], [ %i.az, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ] ; 4 uses
  %indvars.iv54.ph = phi i64 [ %i.ao, %iter.check ], [ %i.ao, %vector.memcheck ], [ %i.ba, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ] ; 2 uses
  %i.bx = add nsw i64 %indvars.iv56.ph, 1
  %xtraiter86 = and i64 %i.bx, 7                  ; 2 uses
  %lcmp.mod87.not = icmp eq i64 %xtraiter86, 0
  br i1 %lcmp.mod87.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv56.prol = phi i64 [ %indvars.iv.next57.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv56.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv54.prol = phi i64 [ %indvars.iv.next55.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv54.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %indvars.iv.next57.prol = add nsw i64 %indvars.iv56.prol, -1 ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv56.prol
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !35
  %indvars.iv.next55.prol = add nsw i64 %indvars.iv54.prol, -1 ; 2 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv54.prol
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !35
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter86
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !168

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv56.unr = phi i64 [ %indvars.iv56.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next57.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv54.unr = phi i64 [ %indvars.iv54.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next55.prol, %vec.epilog.scalar.ph.prol ]
  %i.cb = icmp ult i64 %indvars.iv56.ph, 7
  br i1 %i.cb, label %._crit_edge, label %vec.epilog.scalar.ph

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv.a = phi i64 [ %i.ai, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.12833 = phi i32 [ %.02742, %.lr.ph ], [ %7, %bb.e ] ; 4 uses
  %6 = zext nneg i32 %.12833 to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %6
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !35 ; 2 uses
  %i.ce = load i32, ptr %i.ah, align 4, !tbaa !35
  %.not = icmp eq i32 %i.cd, %i.ce
  br i1 %.not, label %.critedge.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %7 = add nsw i32 %.12833, -1
  %indvars.iv.next = add nsw i64 %indvars.iv.a, -1
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv.a
  store i32 %i.cd, ptr %i.cf, align 4, !tbaa !35
  %i.cg = icmp sgt i32 %.12833, 0
  br i1 %i.cg, label %bb.d, label %.critedge, !llvm.loop !164

.critedge.loopexit.split.loop.exit:               ; preds = %bb.d
  %i.ch = trunc nsw i64 %indvars.iv.a to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %.critedge.loopexit.split.loop.exit, %.preheader32
  %.128.lcssa = phi i32 [ %.02742, %.preheader32 ], [ %.12833, %.critedge.loopexit.split.loop.exit ], [ -1, %bb.e ] ; 3 uses
  %.1.lcssa = phi i32 [ %.041, %.preheader32 ], [ %i.ch, %.critedge.loopexit.split.loop.exit ], [ %i.ak, %bb.e ] ; 3 uses
  %.027 = add nsw i32 %.128.lcssa, -1             ; 2 uses
  %indvars.iv.next52.1 = add nsw i64 %indvars.iv51, -2 ; 2 uses
  %i.ci = icmp sgt i32 %.128.lcssa, 0
  br i1 %i.ci, label %.lr.ph.1, label %.critedge.1

.lr.ph.1:                                         ; preds = %.critedge
  %i.cj = load ptr, ptr %i.n, align 8, !tbaa !122
  %i.ck = load ptr, ptr %i.o, align 8, !tbaa !122
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %indvars.iv.next52.1
  %i.cm = sext i32 %.1.lcssa to i64
  %i.cn = sub i32 %.1.lcssa, %.128.lcssa
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.1
  %indvars.iv.1.a = phi i64 [ %i.cm, %.lr.ph.1 ], [ %indvars.iv.next.1, %bb.g ] ; 3 uses
  %.12833.1 = phi i32 [ %.027, %.lr.ph.1 ], [ %9, %bb.g ] ; 4 uses
  %8 = zext nneg i32 %.12833.1 to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %8
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !35 ; 2 uses
  %i.cq = load i32, ptr %i.cl, align 4, !tbaa !35
  %.not.1 = icmp eq i32 %i.cp, %i.cq
  br i1 %.not.1, label %.critedge.loopexit.split.loop.exit.1, label %bb.g

bb.g:                                             ; preds = %bb.f
  %9 = add nsw i32 %.12833.1, -1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1.a, -1
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv.1.a
  store i32 %i.cp, ptr %i.cr, align 4, !tbaa !35
  %i.cs = icmp sgt i32 %.12833.1, 0
  br i1 %i.cs, label %bb.f, label %.critedge.1, !llvm.loop !164

.critedge.loopexit.split.loop.exit.1:             ; preds = %bb.f
  %i.ct = trunc nsw i64 %indvars.iv.1.a to i32
  br label %.critedge.1

.critedge.1:                                      ; preds = %bb.g, %.critedge.loopexit.split.loop.exit.1, %.critedge
  %.128.lcssa.1 = phi i32 [ %.027, %.critedge ], [ %.12833.1, %.critedge.loopexit.split.loop.exit.1 ], [ -1, %bb.g ]
  %.1.lcssa.1 = phi i32 [ %.1.lcssa, %.critedge ], [ %i.ct, %.critedge.loopexit.split.loop.exit.1 ], [ %i.cn, %bb.g ] ; 2 uses
  %.027.1 = add nsw i32 %.128.lcssa.1, -1         ; 2 uses
  %i.cu = icmp sgt i64 %indvars.iv51, 2
  br i1 %i.cu, label %.preheader32, label %.preheader, !llvm.loop !169

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv56 = phi i64 [ %indvars.iv.next57.7, %vec.epilog.scalar.ph ], [ %indvars.iv56.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %indvars.iv54 = phi i64 [ %indvars.iv.next55.7, %vec.epilog.scalar.ph ], [ %indvars.iv54.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv56
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !35
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv54
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !35
  %i.cy = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv56
  %i.cz = getelementptr i8, ptr %i.cy, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !35
  %i.db = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv54
  %i.dc = getelementptr i8, ptr %i.db, i64 -4
  store i32 %i.da, ptr %i.dc, align 4, !tbaa !35
  %i.dd = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv56
  %i.de = getelementptr i8, ptr %i.dd, i64 -8
  %i.df = load i32, ptr %i.de, align 4, !tbaa !35
  %i.dg = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv54
  %i.dh = getelementptr i8, ptr %i.dg, i64 -8
  store i32 %i.df, ptr %i.dh, align 4, !tbaa !35
  %i.di = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv56
  %i.dj = getelementptr i8, ptr %i.di, i64 -12
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !35
  %i.dl = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv54
  %i.dm = getelementptr i8, ptr %i.dl, i64 -12
  store i32 %i.dk, ptr %i.dm, align 4, !tbaa !35
  %i.dn = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv56
  %i.do = getelementptr i8, ptr %i.dn, i64 -16
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !35
  %i.dq = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv54
  %i.dr = getelementptr i8, ptr %i.dq, i64 -16
  store i32 %i.dp, ptr %i.dr, align 4, !tbaa !35
  %i.ds = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv56
  %i.dt = getelementptr i8, ptr %i.ds, i64 -20
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !35
  %i.dv = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv54
  %i.dw = getelementptr i8, ptr %i.dv, i64 -20
  store i32 %i.du, ptr %i.dw, align 4, !tbaa !35
  %indvars.iv.next57.6 = add nsw i64 %indvars.iv56, -7 ; 2 uses
  %i.dx = getelementptr [4 x i8], ptr %i.an, i64 %indvars.iv56
  %i.dy = getelementptr i8, ptr %i.dx, i64 -24
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !35
  %i.ea = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv54
  %i.eb = getelementptr i8, ptr %i.ea, i64 -24
  store i32 %i.dz, ptr %i.eb, align 4, !tbaa !35
  %indvars.iv.next57.7 = add nsw i64 %indvars.iv56, -8
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next57.6
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !35
  %indvars.iv.next55.7 = add nsw i64 %indvars.iv54, -8
  %i.ee = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv54
  %i.ef = getelementptr i8, ptr %i.ee, i64 -28
  store i32 %i.ed, ptr %i.ef, align 4, !tbaa !35
  %.not67.7 = icmp eq i64 %indvars.iv.next57.6, 0
  br i1 %.not67.7, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !170

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %i.eg = load i32, ptr %3, align 8, !tbaa !85    ; 3 uses
  store i32 %i.eg, ptr %0, align 8, !tbaa !85
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %bb.h, label %_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b.exit

bb.h:                                             ; preds = %._crit_edge
  %i.ei = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !122
  %i.el = zext nneg i32 %i.eg to i64
  %i.em = shl nuw nsw i64 %i.el, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ei, ptr align 4 %i.ek, i64 %i.em, i1 false)
  br label %_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b.exit

_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b.exit: ; preds = %._crit_edge, %bb.h
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_Z19gmx_ana_index_unionP15gmx_ana_index_tS0_S0_(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #19 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !85     ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  %.pre = load i32, ptr %1, align 8, !tbaa !85    ; 7 uses
  br i1 %i.b, label %.preheader.lr.ph.i, label %_Z29gmx_ana_index_difference_sizeP15gmx_ana_index_tS0_.exit

.preheader.lr.ph.i:                               ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = sext i32 %.pre to i64
  %wide.trip.count.i = zext nneg i32 %i.a to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.e, %.preheader.lr.ph.i
  %indvars.iv30.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next31.i, %bb.e ] ; 3 uses
  %.027.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.1.i, %bb.e ] ; 2 uses
  %.01726.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.118.lcssa36.i, %bb.e ] ; 3 uses
  %i.f = icmp slt i32 %.01726.i, %.pre
  br i1 %i.f, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !122
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !122
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv30.i
  %i.j = load i32, ptr %i.i, align 4, !tbaa !35
  %i.k = sext i32 %.01726.i to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.k, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !35
  %i.n = icmp slt i32 %i.m, %i.j
  br i1 %i.n, label %bb.c, label %.critedge.loopexit.i

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.e
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %bb.b, !llvm.loop !162

.critedge.loopexit.i:                             ; preds = %bb.b
  %i.o = trunc nsw i64 %indvars.iv.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i
  %.118.lcssa.i = phi i32 [ %.01726.i, %.preheader.i ], [ %i.o, %.critedge.loopexit.i ] ; 4 uses
  %i.p = icmp eq i32 %.118.lcssa.i, %.pre
  br i1 %i.p, label %.critedge.thread.i, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !122
  %i.r = sext i32 %.118.lcssa.i to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !35
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !122
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv30.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !35
  %.not.i = icmp eq i32 %i.t, %i.w
  br i1 %.not.i, label %bb.e, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bb.c, %bb.d, %.critedge.i
  %.118.lcssa37.i = phi i32 [ %.pre, %.critedge.i ], [ %.118.lcssa.i, %bb.d ], [ %.pre, %bb.c ]
  %i.x = add nsw i32 %.027.i, 1
  br label %bb.e

bb.e:                                             ; preds = %.critedge.thread.i, %bb.d
  %.118.lcssa36.i = phi i32 [ %.118.lcssa37.i, %.critedge.thread.i ], [ %.118.lcssa.i, %bb.d ]
  %.1.i = phi i32 [ %i.x, %.critedge.thread.i ], [ %.027.i, %bb.d ] ; 2 uses
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %exitcond33.not.i = icmp eq i64 %indvars.iv.next31.i, %wide.trip.count.i
  br i1 %exitcond33.not.i, label %_Z29gmx_ana_index_difference_sizeP15gmx_ana_index_tS0_.exit, label %.preheader.i, !llvm.loop !163

_Z29gmx_ana_index_difference_sizeP15gmx_ana_index_tS0_.exit: ; preds = %bb.e, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %.1.i, %bb.e ]
  %i.y = add nsw i32 %.pre, %.0.lcssa.i           ; 3 uses
  store i32 %i.y, ptr %0, align 8, !tbaa !85
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_Z29gmx_ana_index_difference_sizeP15gmx_ana_index_tS0_.exit
  %i.aa = add nsw i32 %i.a, -1
  %i.ab = add nsw i32 %.pre, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = zext nneg i32 %i.y to i64
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !122
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ %i.af, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %.02935 = phi i32 [ %i.aa, %.lr.ph ], [ %.2, %bb.k ] ; 6 uses
  %.03034 = phi i32 [ %i.ab, %.lr.ph ], [ %.131, %bb.k ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ah = icmp slt i32 %.03034, 0
  br i1 %i.ah, label %._crit_edge42, label %bb.g

._crit_edge42:                                    ; preds = %bb.f
  %.pre43 = load ptr, ptr %i.ad, align 8, !tbaa !122
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ai = icmp sgt i32 %.02935, -1
  %.pre39 = load ptr, ptr %i.ac, align 8, !tbaa !122
  %i.aj = zext nneg i32 %.03034 to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.pre39, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !35 ; 3 uses
  br i1 %i.ai, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !122 ; 2 uses
  %i.an = zext nneg i32 %.02935 to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !35 ; 2 uses
  %i.aq = icmp slt i32 %i.al, %i.ap
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge42, %bb.h
  %i.ar = phi ptr [ %.pre43, %._crit_edge42 ], [ %i.am, %bb.h ]
  %i.as = add nsw i32 %.02935, -1
  %i.at = sext i32 %.02935 to i64
end_hunk_0
