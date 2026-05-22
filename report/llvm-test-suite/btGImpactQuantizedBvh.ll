inline.NumInlined: 486
inline.NumDeleted: 144
begin_hunk_0_@_ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br i1 %i.bm, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.bo = getelementptr inbounds [16 x i8], ptr %i.bn, i64 %i.c
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !33 ; 2 uses
  %i.br = icmp sgt i32 %i.bq, -1
  %i.bs = load ptr, ptr %i.ag, align 8, !tbaa !30
  %i.bt = getelementptr inbounds [16 x i8], ptr %i.bs, i64 %i.ai
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !33 ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, -1                  ; 2 uses
  br i1 %i.br, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  br i1 %i.bw, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !78 ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !82
  %i.cb = icmp eq i32 %i.by, %i.ca
  br i1 %i.cb, label %bb.e, label %_ZN9btPairSet9push_pairEii.exit

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i32 %i.by, 0
  %i.cc = shl nsw i32 %i.by, 1
  %i.cd = select i1 %.not.i.i.i, i32 1, i32 %i.cc ; 4 uses
  %i.ce = icmp slt i32 %i.by, %i.cd
  br i1 %i.ce, label %bb.f, label %_ZN9btPairSet9push_pairEii.exit

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i.i.i, label %_ZN20btAlignedObjectArrayI8GIM_PAIRE8allocateEi.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cf = sext i32 %i.cd to i64
  %i.cg = shl nsw i64 %i.cf, 3
  %i.ch = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.cg, i32 noundef 16)
  %.pre.i.i = load i32, ptr %i.bx, align 4, !tbaa !78
  br label %_ZN20btAlignedObjectArrayI8GIM_PAIRE8allocateEi.exit.i.i.i

_ZN20btAlignedObjectArrayI8GIM_PAIRE8allocateEi.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.ci = phi i32 [ %.pre.i.i, %bb.g ], [ %i.by, %bb.f ] ; 5 uses
  %.0.i.i.i.i = phi ptr [ %i.ch, %bb.g ], [ null, %bb.f ] ; 12 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !83 ; 13 uses
  br i1 %i.cj, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN20btAlignedObjectArrayI8GIM_PAIRE8allocateEi.exit.i.i.i
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.ci to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.ci, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i
  %i.cm = shl nuw nsw i64 %wide.trip.count.i.i.i.i, 3 ; 3 uses
  %i.cn = add nsw i64 %i.cm, -4                   ; 2 uses
  %scevgep = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.cn
  %scevgep86 = getelementptr i8, ptr %i.cl, i64 %i.cn
  %scevgep87 = getelementptr i8, ptr %.0.i.i.i.i, i64 4
  %scevgep88 = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.cm
  %scevgep89 = getelementptr i8, ptr %i.cl, i64 4
  %scevgep90 = getelementptr i8, ptr %i.cl, i64 %i.cm
  %bound0 = icmp ult ptr %.0.i.i.i.i, %scevgep86
  %bound1 = icmp ult ptr %i.cl, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound091 = icmp ult ptr %scevgep87, %scevgep90
  %bound192 = icmp ult ptr %scevgep89, %scevgep88
  %found.conflict93 = and i1 %bound091, %bound192
  %conflict.rdx = or i1 %found.conflict, %found.conflict93
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.co = or disjoint i64 %index, 2               ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %index
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %i.co
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %index
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.co
  %wide.vec = load <4 x i32>, ptr %i.cr, align 4, !tbaa !4
  %wide.vec95 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !4
  store <4 x i32> %wide.vec, ptr %i.cp, align 4, !tbaa !4
  store <4 x i32> %wide.vec95, ptr %i.cq, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i, %middle.block
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i.prol
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.i.i.i.i.prol
  %i.cw = load <2 x i32>, ptr %i.cv, align 4, !tbaa !4
  store <2 x i32> %i.cw, ptr %i.cu, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !85

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph.prol ]
  %i.cx = sub nsw i64 %indvars.iv.i.i.i.i.ph, %wide.trip.count.i.i.i.i
  %i.cy = icmp ugt i64 %i.cx, -4
  br i1 %i.cy, label %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.i.i.i.i
  %i.db = load <2 x i32>, ptr %i.da, align 4, !tbaa !4
  store <2 x i32> %i.db, ptr %i.cz, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.next.i.i.i.i
  %i.de = load <2 x i32>, ptr %i.dd, align 4, !tbaa !4
  store <2 x i32> %i.de, ptr %i.dc, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.1
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.next.i.i.i.i.1
  %i.dh = load <2 x i32>, ptr %i.dg, align 4, !tbaa !4
  store <2 x i32> %i.dh, ptr %i.df, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i, 3 ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i.2
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.next.i.i.i.i.2
  %i.dk = load <2 x i32>, ptr %i.dj, align 4, !tbaa !4
  store <2 x i32> %i.dk, ptr %i.di, align 4, !tbaa !4
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i, label %scalar.ph, !llvm.loop !86

_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i.i: ; preds = %_ZN20btAlignedObjectArrayI8GIM_PAIRE8allocateEi.exit.i.i.i
  %.not.i5.i.i.i = icmp ne ptr %i.cl, null
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dm = load i8, ptr %i.dl, align 8, !range !38
  %i.dn = trunc nuw i8 %i.dm to i1
  %or.cond.i.i = select i1 %.not.i5.i.i.i, i1 %i.dn, i1 false
  br i1 %or.cond.i.i, label %bb.h, label %_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i

_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.old.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.old8.i.i = load i8, ptr %.old.i.i, align 8, !tbaa !87, !range !38, !noundef !62
  %.old9.i.i = trunc nuw i8 %.old8.i.i to i1
  br i1 %.old9.i.i, label %bb.h, label %_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i

bb.h:                                             ; preds = %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i, %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i.i
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.cl)
  %.pre2.pre.pre.i.i = load i32, ptr %i.bx, align 4, !tbaa !78
  br label %_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i

_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i: ; preds = %bb.h, %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i, %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i.i
  %.pre2.i.i = phi i32 [ %i.ci, %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.i.i.i ], [ %.pre2.pre.pre.i.i, %bb.h ], [ %i.ci, %_ZNK20btAlignedObjectArrayI8GIM_PAIRE4copyEiiPS0_.exit.thread.i.i.i ]
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 1, ptr %i.do, align 8, !tbaa !87
  store ptr %.0.i.i.i.i, ptr %i.ck, align 8, !tbaa !83
  store i32 %i.cd, ptr %i.bz, align 8, !tbaa !82
  br label %_ZN9btPairSet9push_pairEii.exit

_ZN9btPairSet9push_pairEii.exit:                  ; preds = %bb.d, %bb.e, %_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i
  %i.dp = phi i32 [ %.pre2.i.i, %_ZN20btAlignedObjectArrayI8GIM_PAIRE10deallocateEv.exit.i.i.i ], [ %i.by, %bb.e ], [ %i.by, %bb.d ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !83
  %i.ds = sext i32 %i.dp to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.ds ; 2 uses
  store i32 %i.bq, ptr %i.dt, align 4, !tbaa !88
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store i32 %i.bv, ptr %i.du, align 4, !tbaa !90
  %i.dv = add nsw i32 %i.dp, 1
  store i32 %i.dv, ptr %i.bx, align 4, !tbaa !78
  br label %bb.m

bb.i:                                             ; preds = %bb.c
  %i.dw = add nsw i32 %5, 1                       ; 3 uses
  call fastcc void @_ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(112) %3, i32 noundef %4, i32 noundef %i.dw, i1 noundef zeroext false)
  %i.dx = load ptr, ptr %i.ag, align 8, !tbaa !30
  %i.dy = sext i32 %i.dw to i64
  %i.dz = getelementptr inbounds [16 x i8], ptr %i.dx, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 12
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !33 ; 2 uses
  %i.ec = add nsw i32 %5, 2
  %i.ed = sub nsw i32 %i.dw, %i.eb
  %i.ee = icmp slt i32 %i.eb, 0
  %.0.i.i = select i1 %i.ee, i32 %i.ed, i32 %i.ec
  call fastcc void @_ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(112) %3, i32 noundef %4, i32 noundef %.0.i.i, i1 noundef zeroext false)
  br label %bb.m

bb.j:                                             ; preds = %bb.b
  %i.ef = add nsw i32 %4, 1                       ; 8 uses
  br i1 %i.bw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call fastcc void @_ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(112) %3, i32 noundef %i.ef, i32 noundef %5, i1 noundef zeroext false)
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.eh = sext i32 %i.ef to i64
  %i.ei = getelementptr inbounds [16 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !33 ; 2 uses
  %i.el = add nsw i32 %4, 2
  %i.em = sub nsw i32 %i.ef, %i.ek
  %i.en = icmp slt i32 %i.ek, 0
  %.0.i.i76 = select i1 %i.en, i32 %i.em, i32 %i.el
  call fastcc void @_ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(112) %3, i32 noundef %.0.i.i76, i32 noundef %5, i1 noundef zeroext false)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.eo = add nsw i32 %5, 1                       ; 5 uses
  call fastcc void @_ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(112) %3, i32 noundef %i.ef, i32 noundef %i.eo, i1 noundef zeroext false)
  %i.ep = load ptr, ptr %i.ag, align 8, !tbaa !30
  %i.eq = sext i32 %i.eo to i64                   ; 2 uses
  %i.er = getelementptr inbounds [16 x i8], ptr %i.ep, i64 %i.eq
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  %i.et = load i32, ptr %i.es, align 4, !tbaa !33 ; 2 uses
  %i.eu = add nsw i32 %5, 2                       ; 2 uses
  %i.ev = sub nsw i32 %i.eo, %i.et
  %i.ew = icmp slt i32 %i.et, 0
  %.0.i.i77 = select i1 %i.ew, i32 %i.ev, i32 %i.eu
  call fastcc void @_ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(112) %3, i32 noundef %i.ef, i32 noundef %.0.i.i77, i1 noundef zeroext false)
  %i.ex = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.ey = sext i32 %i.ef to i64                   ; 2 uses
  %i.ez = getelementptr inbounds [16 x i8], ptr %i.ex, i64 %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !33 ; 2 uses
  %i.fc = add nsw i32 %4, 2                       ; 2 uses
  %i.fd = sub nsw i32 %i.ef, %i.fb
  %i.fe = icmp slt i32 %i.fb, 0
  %.0.i.i78 = select i1 %i.fe, i32 %i.fd, i32 %i.fc
  call fastcc void @_ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(112) %3, i32 noundef %.0.i.i78, i32 noundef %i.eo, i1 noundef zeroext false)
  %i.ff = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.fg = getelementptr inbounds [16 x i8], ptr %i.ff, i64 %i.ey
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !33 ; 2 uses
  %i.fj = sub nsw i32 %i.ef, %i.fi
  %i.fk = icmp slt i32 %i.fi, 0
  %.0.i.i79 = select i1 %i.fk, i32 %i.fj, i32 %i.fc
  %i.fl = load ptr, ptr %i.ag, align 8, !tbaa !30
  %i.fm = getelementptr inbounds [16 x i8], ptr %i.fl, i64 %i.eq
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !33 ; 2 uses
  %i.fp = sub nsw i32 %i.eo, %i.fo
  %i.fq = icmp slt i32 %i.fo, 0
  %.0.i.i80 = select i1 %i.fq, i32 %i.fp, i32 %i.eu
  call fastcc void @_ZL41_find_quantized_collision_pairs_recursiveP21btGImpactQuantizedBvhS0_P9btPairSetRK26BT_BOX_BOX_TRANSFORM_CACHEiib(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(112) %3, i32 noundef %.0.i.i79, i32 noundef %.0.i.i80, i1 noundef zeroext false)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.a, %bb.i, %_ZN9btPairSet9push_pairEii.exit
  ret void
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK6btAABB23overlapping_trans_cacheERKS_RK26BT_BOX_BOX_TRANSFORM_CACHEb(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(112) %2, i1 noundef zeroext %3) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load float, ptr %i.a, align 4, !tbaa !16 ; 2 uses
  %i.c = load float, ptr %0, align 4, !tbaa !16
  %i.d = fadd float %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load float, ptr %i.e, align 4, !tbaa !16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !16
  %i.i = fadd float %i.f, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load float, ptr %i.j, align 4, !tbaa !16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !16
  %i.n = fadd float %i.k, %i.m
  %i.o = fmul float %i.d, 5.000000e-01            ; 2 uses
  %i.p = fmul float %i.i, 5.000000e-01            ; 2 uses
  %i.q = fmul float %i.n, 5.000000e-01            ; 2 uses
  %i.r = fsub float %i.b, %i.o                    ; 10 uses
  %i.s = fsub float %i.f, %i.p                    ; 10 uses
  %i.t = fsub float %i.k, %i.q                    ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load float, ptr %i.u, align 4, !tbaa !16 ; 2 uses
  %i.w = load float, ptr %1, align 4, !tbaa !16
  %i.x = fadd float %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.z = load float, ptr %i.y, align 4, !tbaa !16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !16
  %i.ac = fadd float %i.z, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load float, ptr %i.af, align 4, !tbaa !16
  %i.ah = fadd float %i.ae, %i.ag
  %i.ai = fmul float %i.x, 5.000000e-01           ; 4 uses
  %i.aj = fmul float %i.ac, 5.000000e-01          ; 4 uses
  %i.ak = fmul float %i.ah, 5.000000e-01          ; 4 uses
  %i.al = fsub float %i.v, %i.ai                  ; 10 uses
  %i.am = fsub float %i.z, %i.aj                  ; 10 uses
  %i.an = fsub float %i.ae, %i.ak                 ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aq = load float, ptr %i.ao, align 4, !tbaa !16 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.as = load float, ptr %i.ar, align 4, !tbaa !16 ; 4 uses
  %i.at = fmul float %i.aj, %i.as
  %i.au = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.ai, float %i.at)
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aw = load float, ptr %i.av, align 4, !tbaa !16 ; 4 uses
  %i.ax = tail call noundef float @llvm.fmuladd.f32(float %i.aw, float %i.ak, float %i.au)
  %i.ay = load float, ptr %2, align 4, !tbaa !16
  %i.az = fadd float %i.ay, %i.ax
  %i.ba = fsub float %i.az, %i.o                  ; 10 uses
  %i.bb = load float, ptr %i.ap, align 4, !tbaa !16 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !16 ; 6 uses
  %i.be = fmul float %i.bd, %i.am
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.al, float %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !16 ; 6 uses
  %i.bi = tail call noundef float @llvm.fmuladd.f32(float %i.bh, float %i.an, float %i.bf)
  %i.bj = fadd float %i.bi, %i.r
  %i.bk = tail call noundef float @llvm.fabs.f32(float %i.ba)
  %i.bl = fcmp ogt float %i.bk, %i.bj
  br i1 %i.bl, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !16 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !16 ; 4 uses
  %i.bq = fmul float %i.aj, %i.bp
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.ai, float %i.bq)
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !16 ; 4 uses
  %i.bu = tail call noundef float @llvm.fmuladd.f32(float %i.bt, float %i.ak, float %i.br)
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !16
  %i.bx = fadd float %i.bw, %i.bu
  %i.by = fsub float %i.bx, %i.p                  ; 10 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !16 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !16 ; 6 uses
  %i.cd = fmul float %i.cc, %i.am
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.al, float %i.cd)
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !16 ; 6 uses
  %i.ch = tail call noundef float @llvm.fmuladd.f32(float %i.cg, float %i.an, float %i.ce)
  %i.ci = fadd float %i.ch, %i.s
  %i.cj = tail call noundef float @llvm.fabs.f32(float %i.by)
  %i.ck = fcmp ogt float %i.cj, %i.ci
  br i1 %i.ck, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !16 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.co = load float, ptr %i.cn, align 4, !tbaa !16 ; 4 uses
  %i.cp = fmul float %i.aj, %i.co
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.ai, float %i.cp)
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !16 ; 4 uses
  %i.ct = tail call noundef float @llvm.fmuladd.f32(float %i.cs, float %i.ak, float %i.cq)
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !16
  %i.cw = fadd float %i.cv, %i.ct
  %i.cx = fsub float %i.cw, %i.q                  ; 10 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !16 ; 6 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.db = load float, ptr %i.da, align 4, !tbaa !16 ; 6 uses
  %i.dc = fmul float %i.db, %i.am
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.al, float %i.dc)
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.df = load float, ptr %i.de, align 4, !tbaa !16 ; 6 uses
  %i.dg = tail call noundef float @llvm.fmuladd.f32(float %i.df, float %i.an, float %i.dd)
  %i.dh = fadd float %i.dg, %i.t
  %i.di = tail call noundef float @llvm.fabs.f32(float %i.cx)
  %i.dj = fcmp ogt float %i.di, %i.dh
  br i1 %i.dj, label %.critedge, label %.preheader83

.preheader83:                                     ; preds = %bb.c
  %i.dk = fmul float %i.by, %i.bn
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.aq, float %i.dk)
  %i.dm = tail call noundef float @llvm.fmuladd.f32(float %i.cx, float %i.cm, float %i.dl)
  %i.dn = fmul float %i.s, %i.ca
  %i.do = tail call float @llvm.fmuladd.f32(float %i.r, float %i.bb, float %i.dn)
  %i.dp = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.cz, float %i.do)
  %i.dq = fadd float %i.dp, %i.al
  %i.dr = tail call noundef float @llvm.fabs.f32(float %i.dm)
  %i.ds = fcmp ogt float %i.dr, %i.dq
  br i1 %i.ds, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.preheader83
  %i.dt = fmul float %i.by, %i.bp
  %i.du = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.as, float %i.dt)
  %i.dv = tail call noundef float @llvm.fmuladd.f32(float %i.cx, float %i.co, float %i.du)
  %i.dw = fmul float %i.s, %i.cc
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.r, float %i.bd, float %i.dw)
  %i.dy = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.db, float %i.dx)
  %i.dz = fadd float %i.dy, %i.am
  %i.ea = tail call noundef float @llvm.fabs.f32(float %i.dv)
  %i.eb = fcmp ogt float %i.ea, %i.dz
  br i1 %i.eb, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ec = fmul float %i.by, %i.bt
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.aw, float %i.ec)
  %i.ee = tail call noundef float @llvm.fmuladd.f32(float %i.cx, float %i.cs, float %i.ed)
  %i.ef = fmul float %i.s, %i.cg
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.r, float %i.bh, float %i.ef)
  %i.eh = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.df, float %i.eg)
  %i.ei = fadd float %i.eh, %i.an
  %i.ej = tail call noundef float @llvm.fabs.f32(float %i.ee)
  %i.ek = fcmp ule float %i.ej, %i.ei             ; 2 uses
  %brmerge.not = and i1 %i.ek, %3
  br i1 %brmerge.not, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.e
  %i.el = fneg float %i.cm
  %i.em = fmul float %i.by, %i.el
  %i.en = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.bn, float %i.em)
  %i.eo = fmul float %i.t, %i.ca
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.s, float %i.cz, float %i.eo)
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.am, float %i.bh, float %i.ep)
  %i.er = tail call float @llvm.fmuladd.f32(float %i.an, float %i.bd, float %i.eq)
  %i.es = tail call noundef float @llvm.fabs.f32(float %i.en)
  %i.et = fcmp ogt float %i.es, %i.er
  br i1 %i.et, label %.critedge.loopexit, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.eu = fneg float %i.co
  %i.ev = fmul float %i.by, %i.eu
  %i.ew = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.bp, float %i.ev)
  %i.ex = fmul float %i.t, %i.cc
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.s, float %i.db, float %i.ex)
  %i.ez = tail call float @llvm.fmuladd.f32(float %i.al, float %i.bh, float %i.ey)
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.an, float %i.bb, float %i.ez)
  %i.fb = tail call noundef float @llvm.fabs.f32(float %i.ew)
  %i.fc = fcmp ogt float %i.fb, %i.fa
  br i1 %i.fc, label %.critedge.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fd = fneg float %i.cs
  %i.fe = fmul float %i.by, %i.fd
end_hunk_0
