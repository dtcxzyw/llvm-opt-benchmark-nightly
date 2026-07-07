inline.NumInlined: 114
inline.NumDeleted: 54
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN14btContactArray14merge_contactsERKS_b:bb.a
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZNK20btAlignedObjectArrayI11GIM_CONTACTE4copyEiiPS0_.exit.i.i, label %bb.c

_ZNK20btAlignedObjectArrayI11GIM_CONTACTE4copyEiiPS0_.exit.i.i: ; preds = %bb.c, %_ZN20btAlignedObjectArrayI11GIM_CONTACTE8allocateEi.exit.i.i
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI11GIM_CONTACTE9push_backERKS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayI11GIM_CONTACTE4copyEiiPS0_.exit.i.i
  %i.z = load i8, ptr %i.c, align 8, !tbaa !15, !range !14, !noundef !24
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.e, label %_ZN20btAlignedObjectArrayI11GIM_CONTACTE9push_backERKS0_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.y)
  br label %_ZN20btAlignedObjectArrayI11GIM_CONTACTE9push_backERKS0_.exit

_ZN20btAlignedObjectArrayI11GIM_CONTACTE9push_backERKS0_.exit: ; preds = %_ZNK20btAlignedObjectArrayI11GIM_CONTACTE4copyEiiPS0_.exit.i.i, %bb.d, %bb.e
  store i8 1, ptr %i.c, align 8, !tbaa !15
  store ptr %i.l, ptr %i.a, align 8, !tbaa !8
  store i32 1, ptr %i.g, align 8, !tbaa !17
  %.pre2.i = load i32, ptr %i.f, align 4, !tbaa !16
  %i.ab = sext i32 %.pre2.i to i64
  %i.ac = getelementptr inbounds [48 x i8], ptr %i.l, i64 %i.ab ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.ac, ptr noundef nonnull align 4 dereferenceable(48) %i.k, i64 16, i1 false), !tbaa.struct !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ad, ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !18
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !20
  store float %i.ah, ptr %i.af, align 4, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.ak = load <2 x i32>, ptr %i.aj, align 4, !tbaa !4
  store <2 x i32> %i.ak, ptr %i.ai, align 4, !tbaa !4
  %i.al = load i32, ptr %i.f, align 4, !tbaa !16
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.f, align 4, !tbaa !16
  br label %bb.ao

bb.f:                                             ; preds = %_ZN20btAlignedObjectArrayI11GIM_CONTACTE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 9 uses
  store i8 1, ptr %i.an, align 8, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store ptr null, ptr %i.ao, align 8, !tbaa !29
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 8 uses
  store i32 0, ptr %i.ap, align 4, !tbaa !30
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.aq, align 8, !tbaa !31
  %i.ar = icmp sgt i32 %i.i, 0
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = zext nneg i32 %i.i to i64
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.at, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE8allocateEi.exit.i unwind label %bb.m ; 14 uses

_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE8allocateEi.exit.i: ; preds = %bb.f
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !30 ; 5 uses
  %i.aw = icmp sgt i32 %i.av, 0
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !29 ; 13 uses
  br i1 %i.aw, label %.lr.ph.i.i, label %_ZNK20btAlignedObjectArrayI17CONTACT_KEY_TOKENE4copyEiiPS0_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE8allocateEi.exit.i
  %wide.trip.count.i.i = zext nneg i32 %i.av to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.av, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.ay = shl nuw nsw i64 %wide.trip.count.i.i, 3 ; 3 uses
  %i.az = add nsw i64 %i.ay, -4                   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.au, i64 %i.az
  %scevgep176 = getelementptr i8, ptr %i.ax, i64 %i.az
  %scevgep177 = getelementptr i8, ptr %i.au, i64 4
  %scevgep178 = getelementptr i8, ptr %i.au, i64 %i.ay
  %scevgep179 = getelementptr i8, ptr %i.ax, i64 4
  %scevgep180 = getelementptr i8, ptr %i.ax, i64 %i.ay
  %bound0 = icmp ult ptr %i.au, %scevgep176
  %bound1 = icmp ult ptr %i.ax, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0181 = icmp ult ptr %scevgep177, %scevgep180
  %bound1182 = icmp ult ptr %scevgep179, %scevgep178
  %found.conflict183 = and i1 %bound0181, %bound1182
  %conflict.rdx = or i1 %found.conflict, %found.conflict183
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ba = or disjoint i64 %index, 2               ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ba
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %index
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ba
  %wide.vec = load <4 x i32>, ptr %i.bd, align 4, !tbaa !4
  %wide.vec185 = load <4 x i32>, ptr %i.be, align 4, !tbaa !4
  store <4 x i32> %wide.vec, ptr %i.bb, align 4, !tbaa !4
  store <4 x i32> %wide.vec185, ptr %i.bc, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayI17CONTACT_KEY_TOKENE4copyEiiPS0_.exit.thread.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i.i.prol
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i.i.prol
  %i.bi = load <2 x i32>, ptr %i.bh, align 4, !tbaa !4
  store <2 x i32> %i.bi, ptr %i.bg, align 4, !tbaa !4
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !35

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.bj = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %_ZNK20btAlignedObjectArrayI17CONTACT_KEY_TOKENE4copyEiiPS0_.exit.thread.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i.i
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i.i
  %i.bn = load <2 x i32>, ptr %i.bm, align 4, !tbaa !4
  store <2 x i32> %i.bn, ptr %i.bl, align 4, !tbaa !4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next.i.i
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next.i.i
  %i.bq = load <2 x i32>, ptr %i.bp, align 4, !tbaa !4
  store <2 x i32> %i.bq, ptr %i.bo, align 4, !tbaa !4
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next.i.i.1
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next.i.i.1
  %i.bt = load <2 x i32>, ptr %i.bs, align 4, !tbaa !4
  store <2 x i32> %i.bt, ptr %i.br, align 4, !tbaa !4
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next.i.i.2
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.next.i.i.2
  %i.bw = load <2 x i32>, ptr %i.bv, align 4, !tbaa !4
  store <2 x i32> %i.bw, ptr %i.bu, align 4, !tbaa !4
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %_ZNK20btAlignedObjectArrayI17CONTACT_KEY_TOKENE4copyEiiPS0_.exit.thread.i, label %scalar.ph, !llvm.loop !37

_ZNK20btAlignedObjectArrayI17CONTACT_KEY_TOKENE4copyEiiPS0_.exit.i: ; preds = %_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE8allocateEi.exit.i
  %.not.i5.i = icmp ne ptr %i.ax, null
  %i.bx = load i8, ptr %i.an, align 8, !range !14
  %i.by = trunc nuw i8 %i.bx to i1
  %or.cond171 = select i1 %.not.i5.i, i1 %i.by, i1 false
  br i1 %or.cond171, label %bb.g, label %_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE7reserveEi.exit

_ZNK20btAlignedObjectArrayI17CONTACT_KEY_TOKENE4copyEiiPS0_.exit.thread.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.old169 = load i8, ptr %i.an, align 8, !tbaa !25, !range !14, !noundef !24
  %.old170 = trunc nuw i8 %.old169 to i1
  br i1 %.old170, label %bb.g, label %_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE7reserveEi.exit

bb.g:                                             ; preds = %_ZNK20btAlignedObjectArrayI17CONTACT_KEY_TOKENE4copyEiiPS0_.exit.i, %_ZNK20btAlignedObjectArrayI17CONTACT_KEY_TOKENE4copyEiiPS0_.exit.thread.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ax)
          to label %..noexc56_crit_edge unwind label %bb.m

..noexc56_crit_edge:                              ; preds = %bb.g
  %.pre131.pre.pre.pre = load i32, ptr %i.ap, align 4, !tbaa !30
  br label %_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE7reserveEi.exit

_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE7reserveEi.exit: ; preds = %_ZNK20btAlignedObjectArrayI17CONTACT_KEY_TOKENE4copyEiiPS0_.exit.thread.i, %..noexc56_crit_edge, %_ZNK20btAlignedObjectArrayI17CONTACT_KEY_TOKENE4copyEiiPS0_.exit.i
  %.pre131.pre = phi i32 [ %i.av, %_ZNK20btAlignedObjectArrayI17CONTACT_KEY_TOKENE4copyEiiPS0_.exit.i ], [ %.pre131.pre.pre.pre, %..noexc56_crit_edge ], [ %i.av, %_ZNK20btAlignedObjectArrayI17CONTACT_KEY_TOKENE4copyEiiPS0_.exit.thread.i ] ; 2 uses
  store i8 1, ptr %i.an, align 8, !tbaa !25
  store ptr %i.au, ptr %i.ao, align 8, !tbaa !29
  store i32 %i.i, ptr %i.aq, align 8, !tbaa !31
  %.pre = load i32, ptr %i.h, align 4, !tbaa !16  ; 2 uses
  %i.bz = icmp sgt i32 %.pre, 0
  br i1 %i.bz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE7reserveEi.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.l
  %i.cb = phi i32 [ %.pre, %.lr.ph ], [ %i.dy, %bb.l ] ; 2 uses
  %i.cc = phi ptr [ %i.au, %.lr.ph ], [ %i.dz, %bb.l ] ; 2 uses
  %i.cd = phi i32 [ %i.i, %.lr.ph ], [ %i.ea, %bb.l ] ; 7 uses
  %i.ce = phi i32 [ %.pre131.pre, %.lr.ph ], [ %i.eg, %bb.l ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw [48 x i8], ptr %i.cf, i64 %indvars.iv ; 3 uses
  %5 = load float, ptr %i.cg, align 4, !tbaa !38
  %6 = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ch = load float, ptr %6, align 4, !tbaa !38
  %7 = fmul float %i.ch, 1.333000e+03
  %i.ci = fptosi float %7 to i32
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !38
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %9 = insertelement <2 x float> %8, float %i.ck, i64 1
  %10 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> <float 1.000000e+03, float 2.133000e+03>, <2 x float> <float 1.000000e+00, float 3.000000e+00>) ; 2 uses
  %11 = extractelement <2 x float> %10, i64 0
  %12 = fptosi float %11 to i32
  %13 = extractelement <2 x float> %10, i64 1
  %i.cl = fptosi float %13 to i32
  %i.cm = shl i32 %i.ci, 4
  %i.cn = add i32 %i.cm, %12
  %i.co = shl i32 %i.cl, 8
  %i.cp = add i32 %i.cn, %i.co
  %i.cq = icmp eq i32 %i.ce, %i.cd
  br i1 %i.cq, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.not.i.i57 = icmp eq i32 %i.cd, 0
  %i.cr = shl nuw nsw i32 %i.cd, 1
  %i.cs = select i1 %.not.i.i57, i32 1, i32 %i.cr ; 4 uses
  %i.ct = icmp slt i32 %i.cd, %i.cs
  br i1 %i.ct, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.cu = zext nneg i32 %i.cs to i64
  %i.cv = shl nuw nsw i64 %i.cu, 3
  %i.cw = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.cv, i32 noundef 16)
          to label %_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE8allocateEi.exit.i.i unwind label %bb.n ; 13 uses

_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE8allocateEi.exit.i.i: ; preds = %bb.j
  %.pre.i59 = load i32, ptr %i.ap, align 4, !tbaa !30 ; 5 uses
  %.pre129 = load ptr, ptr %i.ao, align 8, !tbaa !29 ; 13 uses
  %i.cx = icmp sgt i32 %.pre.i59, 0
  br i1 %i.cx, label %.lr.ph.i.i.i63, label %_ZNK20btAlignedObjectArrayI17CONTACT_KEY_TOKENE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i63:                                   ; preds = %_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE8allocateEi.exit.i.i
  %wide.trip.count.i.i.i64 = zext nneg i32 %.pre.i59 to i64 ; 6 uses
  %min.iters.check206 = icmp ult i32 %.pre.i59, 8
  br i1 %min.iters.check206, label %scalar.ph205.preheader, label %vector.memcheck189

vector.memcheck189:                               ; preds = %.lr.ph.i.i.i63
  %scevgep190 = getelementptr i8, ptr %i.cw, i64 -4
  %i.cy = shl nuw nsw i64 %wide.trip.count.i.i.i64, 3 ; 4 uses
  %scevgep191 = getelementptr i8, ptr %scevgep190, i64 %i.cy
  %scevgep192 = getelementptr i8, ptr %.pre129, i64 -4
  %scevgep193 = getelementptr i8, ptr %scevgep192, i64 %i.cy
  %scevgep194 = getelementptr i8, ptr %i.cw, i64 4
  %scevgep195 = getelementptr i8, ptr %i.cw, i64 %i.cy
  %scevgep196 = getelementptr i8, ptr %.pre129, i64 4
  %scevgep197 = getelementptr i8, ptr %.pre129, i64 %i.cy
  %bound0198 = icmp ult ptr %i.cw, %scevgep193
  %bound1199 = icmp ult ptr %.pre129, %scevgep191
  %found.conflict200 = and i1 %bound0198, %bound1199
  %bound0201 = icmp ult ptr %scevgep194, %scevgep197
  %bound1202 = icmp ult ptr %scevgep196, %scevgep195
  %found.conflict203 = and i1 %bound0201, %bound1202
  %conflict.rdx204 = or i1 %found.conflict200, %found.conflict203
  br i1 %conflict.rdx204, label %scalar.ph205.preheader, label %vector.ph207

vector.ph207:                                     ; preds = %vector.memcheck189
  %n.vec209 = and i64 %wide.trip.count.i.i.i64, 2147483644 ; 3 uses
  br label %vector.body210

vector.body210:                                   ; preds = %vector.body210, %vector.ph207
  %index211 = phi i64 [ 0, %vector.ph207 ], [ %index.next220, %vector.body210 ] ; 4 uses
  %i.cz = or disjoint i64 %index211, 2            ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index211
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cz
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.pre129, i64 %index211
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.pre129, i64 %i.cz
  %wide.vec212 = load <4 x i32>, ptr %i.dc, align 4, !tbaa !4
  %wide.vec215 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !4
  store <4 x i32> %wide.vec212, ptr %i.da, align 4, !tbaa !4
  store <4 x i32> %wide.vec215, ptr %i.db, align 4, !tbaa !4
  %index.next220 = add nuw i64 %index211, 4       ; 2 uses
  %i.de = icmp eq i64 %index.next220, %n.vec209
  br i1 %i.de, label %middle.block221, label %vector.body210, !llvm.loop !39

middle.block221:                                  ; preds = %vector.body210
  %cmp.n222 = icmp eq i64 %n.vec209, %wide.trip.count.i.i.i64
  br i1 %cmp.n222, label %_ZNK20btAlignedObjectArrayI17CONTACT_KEY_TOKENE4copyEiiPS0_.exit.thread.i.i, label %scalar.ph205.preheader

scalar.ph205.preheader:                           ; preds = %vector.memcheck189, %.lr.ph.i.i.i63, %middle.block221
  %indvars.iv.i.i.i65.ph = phi i64 [ 0, %vector.memcheck189 ], [ 0, %.lr.ph.i.i.i63 ], [ %n.vec209, %middle.block221 ] ; 3 uses
  %xtraiter228 = and i64 %wide.trip.count.i.i.i64, 3 ; 2 uses
  %lcmp.mod229.not = icmp eq i64 %xtraiter228, 0
  br i1 %lcmp.mod229.not, label %scalar.ph205.prol.loopexit, label %scalar.ph205.prol

scalar.ph205.prol:                                ; preds = %scalar.ph205.preheader, %scalar.ph205.prol
  %indvars.iv.i.i.i65.prol = phi i64 [ %indvars.iv.next.i.i.i66.prol, %scalar.ph205.prol ], [ %indvars.iv.i.i.i65.ph, %scalar.ph205.preheader ] ; 3 uses
  %prol.iter230 = phi i64 [ %prol.iter230.next, %scalar.ph205.prol ], [ 0, %scalar.ph205.preheader ]
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.i.i.i65.prol
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.pre129, i64 %indvars.iv.i.i.i65.prol
  %i.dh = load <2 x i32>, ptr %i.dg, align 4, !tbaa !4
  store <2 x i32> %i.dh, ptr %i.df, align 4, !tbaa !4
  %indvars.iv.next.i.i.i66.prol = add nuw nsw i64 %indvars.iv.i.i.i65.prol, 1 ; 2 uses
  %prol.iter230.next = add i64 %prol.iter230, 1   ; 2 uses
  %prol.iter230.cmp.not = icmp eq i64 %prol.iter230.next, %xtraiter228
  br i1 %prol.iter230.cmp.not, label %scalar.ph205.prol.loopexit, label %scalar.ph205.prol, !llvm.loop !40

scalar.ph205.prol.loopexit:                       ; preds = %scalar.ph205.prol, %scalar.ph205.preheader
  %indvars.iv.i.i.i65.unr = phi i64 [ %indvars.iv.i.i.i65.ph, %scalar.ph205.preheader ], [ %indvars.iv.next.i.i.i66.prol, %scalar.ph205.prol ]
  %i.di = sub nsw i64 %indvars.iv.i.i.i65.ph, %wide.trip.count.i.i.i64
  %i.dj = icmp ugt i64 %i.di, -4
  br i1 %i.dj, label %_ZNK20btAlignedObjectArrayI17CONTACT_KEY_TOKENE4copyEiiPS0_.exit.thread.i.i, label %scalar.ph205

scalar.ph205:                                     ; preds = %scalar.ph205.prol.loopexit, %scalar.ph205
  %indvars.iv.i.i.i65 = phi i64 [ %indvars.iv.next.i.i.i66.3, %scalar.ph205 ], [ %indvars.iv.i.i.i65.unr, %scalar.ph205.prol.loopexit ] ; 6 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.i.i.i65
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.pre129, i64 %indvars.iv.i.i.i65
  %i.dm = load <2 x i32>, ptr %i.dl, align 4, !tbaa !4
  store <2 x i32> %i.dm, ptr %i.dk, align 4, !tbaa !4
  %indvars.iv.next.i.i.i66 = add nuw nsw i64 %indvars.iv.i.i.i65, 1 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.next.i.i.i66
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.pre129, i64 %indvars.iv.next.i.i.i66
  %i.dp = load <2 x i32>, ptr %i.do, align 4, !tbaa !4
  store <2 x i32> %i.dp, ptr %i.dn, align 4, !tbaa !4
  %indvars.iv.next.i.i.i66.1 = add nuw nsw i64 %indvars.iv.i.i.i65, 2 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.next.i.i.i66.1
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.pre129, i64 %indvars.iv.next.i.i.i66.1
  %i.ds = load <2 x i32>, ptr %i.dr, align 4, !tbaa !4
  store <2 x i32> %i.ds, ptr %i.dq, align 4, !tbaa !4
  %indvars.iv.next.i.i.i66.2 = add nuw nsw i64 %indvars.iv.i.i.i65, 3 ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.next.i.i.i66.2
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.pre129, i64 %indvars.iv.next.i.i.i66.2
  %i.dv = load <2 x i32>, ptr %i.du, align 4, !tbaa !4
  store <2 x i32> %i.dv, ptr %i.dt, align 4, !tbaa !4
  %indvars.iv.next.i.i.i66.3 = add nuw nsw i64 %indvars.iv.i.i.i65, 4 ; 2 uses
  %exitcond.not.i.i.i67.3 = icmp eq i64 %indvars.iv.next.i.i.i66.3, %wide.trip.count.i.i.i64
  br i1 %exitcond.not.i.i.i67.3, label %_ZNK20btAlignedObjectArrayI17CONTACT_KEY_TOKENE4copyEiiPS0_.exit.thread.i.i, label %scalar.ph205, !llvm.loop !41

_ZNK20btAlignedObjectArrayI17CONTACT_KEY_TOKENE4copyEiiPS0_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE8allocateEi.exit.i.i
  %.not.i5.i.i61 = icmp ne ptr %.pre129, null
  %i.dw = load i8, ptr %i.an, align 8, !range !14
  %i.dx = trunc nuw i8 %i.dw to i1
  %or.cond111 = select i1 %.not.i5.i.i61, i1 %i.dx, i1 false
  br i1 %or.cond111, label %bb.k, label %_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE10deallocateEv.exit.i.i

_ZNK20btAlignedObjectArrayI17CONTACT_KEY_TOKENE4copyEiiPS0_.exit.thread.i.i: ; preds = %scalar.ph205.prol.loopexit, %scalar.ph205, %middle.block221
  %.old = load i8, ptr %i.an, align 8, !tbaa !25, !range !14, !noundef !24
  %.old110 = trunc nuw i8 %.old to i1
  br i1 %.old110, label %bb.k, label %_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE10deallocateEv.exit.i.i

bb.k:                                             ; preds = %_ZNK20btAlignedObjectArrayI17CONTACT_KEY_TOKENE4copyEiiPS0_.exit.i.i, %_ZNK20btAlignedObjectArrayI17CONTACT_KEY_TOKENE4copyEiiPS0_.exit.thread.i.i
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.pre129)
          to label %.noexc69 unwind label %bb.n

.noexc69:                                         ; preds = %bb.k
  %.pre2.pre.pre.i = load i32, ptr %i.ap, align 4, !tbaa !30
  br label %_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE10deallocateEv.exit.i.i: ; preds = %.noexc69, %_ZNK20btAlignedObjectArrayI17CONTACT_KEY_TOKENE4copyEiiPS0_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayI17CONTACT_KEY_TOKENE4copyEiiPS0_.exit.i.i
  %.pre2.i62 = phi i32 [ %.pre.i59, %_ZNK20btAlignedObjectArrayI17CONTACT_KEY_TOKENE4copyEiiPS0_.exit.i.i ], [ %.pre2.pre.pre.i, %.noexc69 ], [ %.pre.i59, %_ZNK20btAlignedObjectArrayI17CONTACT_KEY_TOKENE4copyEiiPS0_.exit.thread.i.i ]
  store i8 1, ptr %i.an, align 8, !tbaa !25
  store ptr %i.cw, ptr %i.ao, align 8, !tbaa !29
  store i32 %i.cs, ptr %i.aq, align 8, !tbaa !31
  %.pre130 = load i32, ptr %i.h, align 4, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE10deallocateEv.exit.i.i, %bb.i, %bb.h
  %i.dy = phi i32 [ %.pre130, %_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE10deallocateEv.exit.i.i ], [ %i.cb, %bb.i ], [ %i.cb, %bb.h ] ; 2 uses
  %i.dz = phi ptr [ %i.cw, %_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE10deallocateEv.exit.i.i ], [ %i.cc, %bb.i ], [ %i.cc, %bb.h ] ; 3 uses
  %i.ea = phi i32 [ %i.cs, %_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE10deallocateEv.exit.i.i ], [ %i.cd, %bb.i ], [ %i.cd, %bb.h ]
  %i.eb = phi i32 [ %.pre2.i62, %_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE10deallocateEv.exit.i.i ], [ %i.cd, %bb.i ], [ %i.ce, %bb.h ] ; 2 uses
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.ec ; 2 uses
  store i32 %i.cp, ptr %i.ed, align 4, !tbaa !42
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.ef = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ef, ptr %i.ee, align 4, !tbaa !44
  %i.eg = add nsw i32 %i.eb, 1                    ; 3 uses
  store i32 %i.eg, ptr %i.ap, align 4, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eh = sext i32 %i.dy to i64
  %i.ei = icmp slt i64 %indvars.iv.next, %i.eh
  br i1 %i.ei, label %bb.h, label %._crit_edge

bb.m:                                             ; preds = %bb.o, %bb.g, %bb.f
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

._crit_edge:                                      ; preds = %bb.l, %_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE7reserveEi.exit
  %i.el = phi ptr [ %i.au, %_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE7reserveEi.exit ], [ %i.dz, %bb.l ]
  %i.em = phi i32 [ %.pre131.pre, %_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE7reserveEi.exit ], [ %i.eg, %bb.l ] ; 2 uses
  %i.en = icmp sgt i32 %i.em, 1
  br i1 %i.en, label %bb.o, label %_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE9quickSortI22CONTACT_KEY_TOKEN_COMPEEvT_.exit

bb.o:                                             ; preds = %._crit_edge
  %i.eo = add nsw i32 %i.em, -1
  invoke void @_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE17quickSortInternalI22CONTACT_KEY_TOKEN_COMPEEvT_ii(ptr noundef nonnull align 8 dereferenceable(25) %3, i32 noundef 0, i32 noundef %i.eo)
          to label %._ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE9quickSortI22CONTACT_KEY_TOKEN_COMPEEvT_.exit_crit_edge unwind label %bb.m

._ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE9quickSortI22CONTACT_KEY_TOKEN_COMPEEvT_.exit_crit_edge: ; preds = %bb.o
  %.pre132 = load ptr, ptr %i.ao, align 8, !tbaa !29
  br label %_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE9quickSortI22CONTACT_KEY_TOKEN_COMPEEvT_.exit

_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE9quickSortI22CONTACT_KEY_TOKEN_COMPEEvT_.exit: ; preds = %._ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE9quickSortI22CONTACT_KEY_TOKEN_COMPEEvT_.exit_crit_edge, %._crit_edge
  %i.ep = phi ptr [ %.pre132, %._ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE9quickSortI22CONTACT_KEY_TOKEN_COMPEEvT_.exit_crit_edge ], [ %i.el, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !42
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !44
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !8
  %i.ev = sext i32 %i.es to i64
end_hunk_0
begin_hunk_1_@_ZN14btContactArray21merge_contacts_uniqueERKS_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = load i8, ptr %i.c, align 8, !range !14
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %_ZN20btAlignedObjectArrayI11GIM_CONTACTE5clearEv.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
  br label %_ZN20btAlignedObjectArrayI11GIM_CONTACTE5clearEv.exit

_ZN20btAlignedObjectArrayI11GIM_CONTACTE5clearEv.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  store i8 1, ptr %i.c, align 8, !tbaa !15
  store ptr null, ptr %i.a, align 8, !tbaa !8
  store i32 0, ptr %i.f, align 4, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %cond = icmp eq i32 %i.i, 1
  br i1 %cond, label %_ZN20btAlignedObjectArrayI11GIM_CONTACTE8allocateEi.exit.i.i, label %.loopexit

_ZN20btAlignedObjectArrayI11GIM_CONTACTE8allocateEi.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayI11GIM_CONTACTE5clearEv.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8    ; 4 uses
  %i.l = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 48, i32 noundef 16) ; 3 uses
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !16 ; 2 uses
  %i.m = icmp sgt i32 %.pre.i, 0
  br i1 %i.m, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI11GIM_CONTACTE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI11GIM_CONTACTE8allocateEi.exit.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %.pre.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %indvars.iv.i.i.i ; 4 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %indvars.iv.i.i.i ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.n, ptr noundef nonnull align 4 dereferenceable(48) %i.p, i64 16, i1 false), !tbaa.struct !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.q, ptr noundef nonnull align 4 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !18
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.u = load float, ptr %i.t, align 4, !tbaa !20
  store float %i.u, ptr %i.s, align 4, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.x = load <2 x i32>, ptr %i.w, align 4, !tbaa !4
  store <2 x i32> %i.x, ptr %i.v, align 4, !tbaa !4
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZNK20btAlignedObjectArrayI11GIM_CONTACTE4copyEiiPS0_.exit.i.i, label %bb.c

_ZNK20btAlignedObjectArrayI11GIM_CONTACTE4copyEiiPS0_.exit.i.i: ; preds = %bb.c, %_ZN20btAlignedObjectArrayI11GIM_CONTACTE8allocateEi.exit.i.i
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %.not.i5.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayI11GIM_CONTACTE9push_backERKS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayI11GIM_CONTACTE4copyEiiPS0_.exit.i.i
  %i.z = load i8, ptr %i.c, align 8, !tbaa !15, !range !14, !noundef !24
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.e, label %_ZN20btAlignedObjectArrayI11GIM_CONTACTE9push_backERKS0_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.y)
  br label %_ZN20btAlignedObjectArrayI11GIM_CONTACTE9push_backERKS0_.exit

_ZN20btAlignedObjectArrayI11GIM_CONTACTE9push_backERKS0_.exit: ; preds = %_ZNK20btAlignedObjectArrayI11GIM_CONTACTE4copyEiiPS0_.exit.i.i, %bb.d, %bb.e
  store i8 1, ptr %i.c, align 8, !tbaa !15
  store ptr %i.l, ptr %i.a, align 8, !tbaa !8
  store i32 1, ptr %i.g, align 8, !tbaa !17
  %.pre2.i = load i32, ptr %i.f, align 4, !tbaa !16
  %i.ab = sext i32 %.pre2.i to i64
  %i.ac = getelementptr inbounds [48 x i8], ptr %i.l, i64 %i.ab ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.ac, ptr noundef nonnull align 4 dereferenceable(48) %i.k, i64 16, i1 false), !tbaa.struct !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ad, ptr noundef nonnull align 4 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !18
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !20
  store float %i.ah, ptr %i.af, align 4, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.ak = load <2 x i32>, ptr %i.aj, align 4, !tbaa !4
  store <2 x i32> %i.ak, ptr %i.ai, align 4, !tbaa !4
  %i.al = load i32, ptr %i.f, align 4, !tbaa !16
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.f, align 4, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN20btAlignedObjectArrayI11GIM_CONTACTE5clearEv.exit, %_ZN20btAlignedObjectArrayI11GIM_CONTACTE9push_backERKS0_.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #5

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE17quickSortInternalI22CONTACT_KEY_TOKEN_COMPEEvT_ii(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.j, %bb.a
  %.tr31 = phi i32 [ %1, %bb.a ], [ %.226, %bb.j ] ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = add nsw i32 %.tr31, %2
  %i.d = sdiv i32 %i.c, 2
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !42   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %tailrecurse
  %.024 = phi i32 [ %.tr31, %tailrecurse ], [ %.226, %bb.g ]
  %.0 = phi i32 [ %2, %tailrecurse ], [ %.2, %bb.g ]
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !29   ; 4 uses
  %i.i = sext i32 %.024 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %i.i, %bb.b ] ; 5 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !42
  %i.l = icmp ult i32 %i.k, %i.g
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %i.l, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.m = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.n = sext i32 %.0 to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %bb.d ], [ %i.n, %.preheader ] ; 6 uses
  %i.o = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv40
  %i.p = load i32, ptr %i.o, align 4, !tbaa !42
  %i.q = icmp ult i32 %i.g, %i.p
  %indvars.iv.next41 = add nsw i64 %indvars.iv40, -1
  br i1 %i.q, label %bb.d, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %i.s = trunc nsw i64 %indvars.iv40 to i32       ; 2 uses
  %.not = icmp sgt i64 %indvars.iv, %indvars.iv40
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv40
  %i.u = load i64, ptr %i.m, align 4
  %i.v = load i64, ptr %i.t, align 4
  store i64 %i.v, ptr %i.m, align 4
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv40
  store i64 %i.u, ptr %i.x, align 4
  %i.y = add nsw i32 %i.r, 1
  %i.z = add nsw i32 %i.s, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.226 = phi i32 [ %i.y, %bb.f ], [ %i.r, %bb.e ] ; 4 uses
  %.2 = phi i32 [ %i.z, %bb.f ], [ %i.s, %bb.e ]  ; 4 uses
  %.not29 = icmp sgt i32 %.226, %.2
  br i1 %.not29, label %bb.h, label %bb.b

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp slt i32 %.tr31, %.2
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN20btAlignedObjectArrayI17CONTACT_KEY_TOKENE17quickSortInternalI22CONTACT_KEY_TOKEN_COMPEEvT_ii(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %.tr31, i32 noundef %.2)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ab = icmp slt i32 %.226, %2
  br i1 %i.ab, label %tailrecurse, label %bb.k

bb.k:                                             ; preds = %bb.j
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

attributes #0 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !11, i64 16}
!9 = !{!"_ZTS20btAlignedObjectArrayI11GIM_CONTACTE", !10, i64 0, !5, i64 4, !5, i64 8, !11, i64 16, !13, i64 24}
!10 = !{!"_ZTS18btAlignedAllocatorI11GIM_CONTACTLj16EE"}
!11 = !{!"p1 _ZTS11GIM_CONTACT", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"bool", !6, i64 0}
!14 = !{i8 0, i8 2}
!15 = !{!9, !13, i64 24}
!16 = !{!9, !5, i64 4}
!17 = !{!9, !5, i64 8}
!18 = !{i64 0, i64 16, !19}
!19 = !{!6, !6, i64 0}
!20 = !{!21, !23, i64 32}
!21 = !{!"_ZTS11GIM_CONTACT", !22, i64 0, !22, i64 16, !23, i64 32, !23, i64 36, !5, i64 40, !5, i64 44}
!22 = !{!"_ZTS9btVector3", !6, i64 0}
!23 = !{!"float", !6, i64 0}
!24 = !{}
!25 = !{!26, !13, i64 24}
!26 = !{!"_ZTS20btAlignedObjectArrayI17CONTACT_KEY_TOKENE", !27, i64 0, !5, i64 4, !5, i64 8, !28, i64 16, !13, i64 24}
!27 = !{!"_ZTS18btAlignedAllocatorI17CONTACT_KEY_TOKENLj16EE"}
!28 = !{!"p1 _ZTS17CONTACT_KEY_TOKEN", !12, i64 0}
!29 = !{!26, !28, i64 16}
!30 = !{!26, !5, i64 4}
!31 = !{!26, !5, i64 8}
!32 = distinct !{!32, !33, !34}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !{!"llvm.loop.unroll.runtime.disable"}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = distinct !{!37, !33}
!38 = !{!23, !23, i64 0}
!39 = distinct !{!39, !33, !34}
!40 = distinct !{!40, !36}
!41 = distinct !{!41, !33}
!42 = !{!43, !5, i64 0}
!43 = !{!"_ZTS17CONTACT_KEY_TOKEN", !5, i64 0, !5, i64 4}
!44 = !{!43, !5, i64 4}
!45 = !{i64 0, i64 16, !19, i64 16, i64 16, !19, i64 32, i64 4, !38, i64 36, i64 4, !38, i64 40, i64 4, !4, i64 44, i64 4, !4}
!46 = distinct !{!46, !36}
end_hunk_1
