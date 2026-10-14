Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/indexutil?download=true
inline.NumInlined: 683
inline.NumDeleted: 377
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_Z24gmx_ana_index_differenceP15gmx_ana_index_tS0_S0_:bb.a

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.f ]
  store i32 %.0.lcssa, ptr %0, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_Z29gmx_ana_index_difference_sizeP15gmx_ana_index_tS0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !59     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i32, ptr %1, align 8, !tbaa !59     ; 4 uses
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
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !68
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv30
  %i.k = load i32, ptr %i.j, align 4, !tbaa !44
  %i.l = sext i32 %.01726 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.l, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !44
  %i.o = icmp slt i32 %i.n, %i.k
  br i1 %i.o, label %bb.c, label %.critedge.loopexit

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %exitcond.not, label %.critedge.thread, label %bb.b, !llvm.loop !7

.critedge.loopexit:                               ; preds = %bb.b
  %i.p = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader
  %.118.lcssa = phi i32 [ %.01726, %.preheader ], [ %i.p, %.critedge.loopexit ] ; 5 uses
  %i.q = icmp eq i32 %.118.lcssa, %i.d
  br i1 %i.q, label %.critedge.thread, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.s = sext i32 %.118.lcssa to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !44
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !68
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv30
  %i.x = load i32, ptr %i.w, align 4, !tbaa !44
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
  br i1 %exitcond33.not, label %._crit_edge, label %.preheader, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.e ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_Z23gmx_ana_index_partitionP15gmx_ana_index_tS0_S0_S0_(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4), (8, 16)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = load i32, ptr %3, align 8, !tbaa !59     ; 2 uses
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.e ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !68
  %i.h = load i32, ptr %2, align 8, !tbaa !59
  %i.i = sub nsw i32 %i.h, %i.d                   ; 2 uses
  store i32 %i.i, ptr %1, align 8, !tbaa !59
  %i.j = load i32, ptr %3, align 8, !tbaa !59     ; 3 uses
  %i.k = load i32, ptr %2, align 8, !tbaa !59     ; 3 uses
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
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !68
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.next52.prol
  %i.u = sext i32 %i.l to i64
  %i.v = sub i32 %i.l, %i.k
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %i.u, %.lr.ph.prol ], [ %indvars.iv.next.prol, %bb.c ] ; 3 uses
  %.12833.prol = phi i32 [ %.02739, %.lr.ph.prol ], [ %i.aa, %bb.c ] ; 4 uses
  %i.w = zext nneg i32 %.12833.prol to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !44   ; 2 uses
  %i.z = load i32, ptr %i.t, align 4, !tbaa !44
  %.not.prol = icmp eq i32 %i.y, %i.z
  br i1 %.not.prol, label %.critedge.loopexit.split.loop.exit.prol, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = add nsw i32 %.12833.prol, -1
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, -1
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv.prol
  store i32 %i.y, ptr %i.ab, align 4, !tbaa !44
  %i.ac = icmp sgt i32 %.12833.prol, 0
  br i1 %i.ac, label %bb.b, label %.critedge.prol, !llvm.loop !276

.critedge.loopexit.split.loop.exit.prol:          ; preds = %bb.b
  %i.ad = trunc nsw i64 %indvars.iv.prol to i32
  br label %.critedge.prol

.critedge.prol:                                   ; preds = %bb.c, %.critedge.loopexit.split.loop.exit.prol, %.preheader32.prol
  %.128.lcssa.prol = phi i32 [ %.02739, %.preheader32.prol ], [ %.12833.prol, %.critedge.loopexit.split.loop.exit.prol ], [ -1, %bb.c ]
  %.1.lcssa.prol = phi i32 [ %i.l, %.preheader32.prol ], [ %i.ad, %.critedge.loopexit.split.loop.exit.prol ], [ %i.v, %bb.c ] ; 2 uses
  %.027.prol = add nsw i32 %.128.lcssa.prol, -1   ; 2 uses
  br label %.preheader32.prol.loopexit

.preheader32.prol.loopexit:                       ; preds = %.critedge.prol, %.preheader32.lr.ph
  %indvars.iv51.unr = phi i64 [ %i.p, %.preheader32.lr.ph ], [ %indvars.iv.next52.prol, %.critedge.prol ]
  %.02742.unr = phi i32 [ %.02739, %.preheader32.lr.ph ], [ %.027.prol, %.critedge.prol ]
  %.041.unr = phi i32 [ %i.l, %.preheader32.lr.ph ], [ %.1.lcssa.prol, %.critedge.prol ]
  %.1.lcssa.lcssa.unr = phi i32 [ poison, %.preheader32.lr.ph ], [ %.1.lcssa.prol, %.critedge.prol ]
  %.027.lcssa85.unr = phi i32 [ poison, %.preheader32.lr.ph ], [ %.027.prol, %.critedge.prol ]
  %i.ae = icmp eq i32 %i.j, 1
  br i1 %i.ae, label %.preheader, label %.preheader32

.preheader32:                                     ; preds = %.preheader32.prol.loopexit, %.critedge.1
  %indvars.iv51 = phi i64 [ %indvars.iv.next52.1, %.critedge.1 ], [ %indvars.iv51.unr, %.preheader32.prol.loopexit ] ; 3 uses
  %.02742 = phi i32 [ %.027.1, %.critedge.1 ], [ %.02742.unr, %.preheader32.prol.loopexit ] ; 4 uses
  %.041 = phi i32 [ %.1.lcssa.1, %.critedge.1 ], [ %.041.unr, %.preheader32.prol.loopexit ] ; 3 uses
  %i.af = icmp sgt i32 %.02742, -1
  br i1 %i.af, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader32
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !68
  %i.ai = getelementptr [4 x i8], ptr %i.ah, i64 %indvars.iv51
  %i.aj = getelementptr i8, ptr %i.ai, i64 -4
  %i.ak = sext i32 %.041 to i64
  %i.al = xor i32 %.02742, -1
  %i.am = add i32 %.041, %i.al
  br label %bb.d

.preheader:                                       ; preds = %.preheader32.prol.loopexit, %.critedge.1, %bb.a
  %.0.lcssa = phi i32 [ %i.l, %bb.a ], [ %.1.lcssa.lcssa.unr, %.preheader32.prol.loopexit ], [ %.1.lcssa.1, %.critedge.1 ]
  %.027.lcssa = phi i32 [ %.02739, %bb.a ], [ %.027.lcssa85.unr, %.preheader32.prol.loopexit ], [ %.027.1, %.critedge.1 ] ; 4 uses
  %i.an = icmp sgt i32 %.027.lcssa, -1
  br i1 %i.an, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !68 ; 12 uses
  %i.aq = sext i32 %.0.lcssa to i64               ; 7 uses
  %i.ar = zext nneg i32 %.027.lcssa to i64        ; 8 uses
  %i.as = add nuw nsw i64 %i.ar, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %.027.lcssa, 7
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.at = ptrtoaddr ptr %i.ap to i64
  %i.au = shl nuw nsw i64 %i.ar, 2
  %i.av = add i64 %i.au, %i.at
  %4 = add nsw i64 %i.aq, %i.e
  %5 = shl nsw i64 %4, 2
  %i.aw = add i64 %5, %i.c
  %i.ax = sub i64 %i.aw, %i.av
  %diff.check = icmp ugt i64 %i.ax, -128
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check71 = icmp ult i32 %.027.lcssa, 31
  br i1 %min.iters.check71, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ay = and i64 %i.as, 24
  %n.vec = and i64 %i.as, 4294967264              ; 5 uses
  %i.az = sub nsw i64 %i.ar, %n.vec
  %i.ba = sub nsw i64 %i.aq, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bb = sub i64 %i.ar, %index
  %i.bc = sub i64 %i.aq, %index
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bb ; 4 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -28
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -60
  %i.bg = getelementptr inbounds i8, ptr %i.bd, i64 -92
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 -124
  %wide.load = load <8 x i32>, ptr %i.be, align 4, !tbaa !44
  %wide.load72 = load <8 x i32>, ptr %i.bf, align 4, !tbaa !44
  %wide.load73 = load <8 x i32>, ptr %i.bg, align 4, !tbaa !44
  %wide.load74 = load <8 x i32>, ptr %i.bh, align 4, !tbaa !44
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bc ; 4 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -28
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -60
  %i.bl = getelementptr inbounds i8, ptr %i.bi, i64 -92
  %i.bm = getelementptr inbounds i8, ptr %i.bi, i64 -124
  store <8 x i32> %wide.load, ptr %i.bj, align 4, !tbaa !44
  store <8 x i32> %wide.load72, ptr %i.bk, align 4, !tbaa !44
  store <8 x i32> %wide.load73, ptr %i.bl, align 4, !tbaa !44
  store <8 x i32> %wide.load74, ptr %i.bm, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !277

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ay, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !70

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec76 = and i64 %i.as, 4294967288            ; 4 uses
  %i.bo = sub nsw i64 %i.ar, %n.vec76
  %i.bp = sub nsw i64 %i.aq, %n.vec76
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index77 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next79, %vec.epilog.vector.body ] ; 3 uses
  %i.bq = sub i64 %i.ar, %index77
  %i.br = sub i64 %i.aq, %index77
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bq
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -28
  %wide.load78 = load <8 x i32>, ptr %i.bt, align 4, !tbaa !44
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.br
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -28
  store <8 x i32> %wide.load78, ptr %i.bv, align 4, !tbaa !44
  %index.next79 = add nuw i64 %index77, 8         ; 2 uses
  %i.bw = icmp eq i64 %index.next79, %n.vec76
  br i1 %i.bw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !278

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n80 = icmp eq i64 %i.as, %n.vec76
  br i1 %cmp.n80, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv56.ph = phi i64 [ %i.ar, %iter.check ], [ %i.ar, %vector.memcheck ], [ %i.az, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ] ; 4 uses
  %indvars.iv54.ph = phi i64 [ %i.aq, %iter.check ], [ %i.aq, %vector.memcheck ], [ %i.ba, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ] ; 2 uses
  %i.bx = add nsw i64 %indvars.iv56.ph, 1
  %xtraiter86 = and i64 %i.bx, 7                  ; 2 uses
  %lcmp.mod87.not = icmp eq i64 %xtraiter86, 0
  br i1 %lcmp.mod87.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv56.prol = phi i64 [ %indvars.iv.next57.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv56.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv54.prol = phi i64 [ %indvars.iv.next55.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv54.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %indvars.iv.next57.prol = add nsw i64 %indvars.iv56.prol, -1 ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv56.prol
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !44
  %indvars.iv.next55.prol = add nsw i64 %indvars.iv54.prol, -1 ; 2 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv54.prol
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !44
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter86
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !279

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv56.unr = phi i64 [ %indvars.iv56.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next57.prol, %vec.epilog.scalar.ph.prol ]
  %indvars.iv54.unr = phi i64 [ %indvars.iv54.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next55.prol, %vec.epilog.scalar.ph.prol ]
  %i.cb = icmp ult i64 %indvars.iv56.ph, 7
  br i1 %i.cb, label %._crit_edge, label %vec.epilog.scalar.ph

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %i.ak, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.12833 = phi i32 [ %.02742, %.lr.ph ], [ %i.cg, %bb.e ] ; 4 uses
  %i.cc = zext nneg i32 %.12833 to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !44 ; 2 uses
  %i.cf = load i32, ptr %i.aj, align 4, !tbaa !44
  %.not = icmp eq i32 %i.ce, %i.cf
  br i1 %.not, label %.critedge.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cg = add nsw i32 %.12833, -1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv
  store i32 %i.ce, ptr %i.ch, align 4, !tbaa !44
  %i.ci = icmp sgt i32 %.12833, 0
  br i1 %i.ci, label %bb.d, label %.critedge, !llvm.loop !276

.critedge.loopexit.split.loop.exit:               ; preds = %bb.d
  %i.cj = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %.critedge.loopexit.split.loop.exit, %.preheader32
  %.128.lcssa = phi i32 [ %.02742, %.preheader32 ], [ %.12833, %.critedge.loopexit.split.loop.exit ], [ -1, %bb.e ] ; 3 uses
  %.1.lcssa = phi i32 [ %.041, %.preheader32 ], [ %i.cj, %.critedge.loopexit.split.loop.exit ], [ %i.am, %bb.e ] ; 3 uses
  %.027 = add nsw i32 %.128.lcssa, -1             ; 2 uses
  %indvars.iv.next52.1 = add nsw i64 %indvars.iv51, -2 ; 2 uses
  %i.ck = icmp sgt i32 %.128.lcssa, 0
  br i1 %i.ck, label %.lr.ph.1, label %.critedge.1

.lr.ph.1:                                         ; preds = %.critedge
  %i.cl = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.cm = load ptr, ptr %i.o, align 8, !tbaa !68
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %indvars.iv.next52.1
  %i.co = sext i32 %.1.lcssa to i64
  %i.cp = sub i32 %.1.lcssa, %.128.lcssa
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.1
  %indvars.iv.1 = phi i64 [ %i.co, %.lr.ph.1 ], [ %indvars.iv.next.1, %bb.g ] ; 3 uses
  %.12833.1 = phi i32 [ %.027, %.lr.ph.1 ], [ %i.cu, %bb.g ] ; 4 uses
  %i.cq = zext nneg i32 %.12833.1 to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !44 ; 2 uses
  %i.ct = load i32, ptr %i.cn, align 4, !tbaa !44
  %.not.1 = icmp eq i32 %i.cs, %i.ct
  br i1 %.not.1, label %.critedge.loopexit.split.loop.exit.1, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cu = add nsw i32 %.12833.1, -1
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.1, -1
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv.1
  store i32 %i.cs, ptr %i.cv, align 4, !tbaa !44
  %i.cw = icmp sgt i32 %.12833.1, 0
  br i1 %i.cw, label %bb.f, label %.critedge.1, !llvm.loop !276

.critedge.loopexit.split.loop.exit.1:             ; preds = %bb.f
  %i.cx = trunc nsw i64 %indvars.iv.1 to i32
  br label %.critedge.1

.critedge.1:                                      ; preds = %bb.g, %.critedge.loopexit.split.loop.exit.1, %.critedge
  %.128.lcssa.1 = phi i32 [ %.027, %.critedge ], [ %.12833.1, %.critedge.loopexit.split.loop.exit.1 ], [ -1, %bb.g ]
  %.1.lcssa.1 = phi i32 [ %.1.lcssa, %.critedge ], [ %i.cx, %.critedge.loopexit.split.loop.exit.1 ], [ %i.cp, %bb.g ] ; 2 uses
  %.027.1 = add nsw i32 %.128.lcssa.1, -1         ; 2 uses
  %i.cy = icmp sgt i64 %indvars.iv51, 2
  br i1 %i.cy, label %.preheader32, label %.preheader, !llvm.loop !280

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv56 = phi i64 [ %indvars.iv.next57.7, %vec.epilog.scalar.ph ], [ %indvars.iv56.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %indvars.iv54 = phi i64 [ %indvars.iv.next55.7, %vec.epilog.scalar.ph ], [ %indvars.iv54.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv56
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !44
  %i.db = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv54
  store i32 %i.da, ptr %i.db, align 4, !tbaa !44
  %i.dc = getelementptr [4 x i8], ptr %i.ap, i64 %indvars.iv56
  %i.dd = getelementptr i8, ptr %i.dc, i64 -4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !44
  %i.df = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv54
  %i.dg = getelementptr i8, ptr %i.df, i64 -4
  store i32 %i.de, ptr %i.dg, align 4, !tbaa !44
  %i.dh = getelementptr [4 x i8], ptr %i.ap, i64 %indvars.iv56
  %i.di = getelementptr i8, ptr %i.dh, i64 -8
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !44
  %i.dk = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv54
  %i.dl = getelementptr i8, ptr %i.dk, i64 -8
  store i32 %i.dj, ptr %i.dl, align 4, !tbaa !44
  %i.dm = getelementptr [4 x i8], ptr %i.ap, i64 %indvars.iv56
  %i.dn = getelementptr i8, ptr %i.dm, i64 -12
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !44
  %i.dp = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv54
  %i.dq = getelementptr i8, ptr %i.dp, i64 -12
  store i32 %i.do, ptr %i.dq, align 4, !tbaa !44
  %i.dr = getelementptr [4 x i8], ptr %i.ap, i64 %indvars.iv56
  %i.ds = getelementptr i8, ptr %i.dr, i64 -16
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !44
  %i.du = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv54
  %i.dv = getelementptr i8, ptr %i.du, i64 -16
  store i32 %i.dt, ptr %i.dv, align 4, !tbaa !44
  %i.dw = getelementptr [4 x i8], ptr %i.ap, i64 %indvars.iv56
end_hunk_0
