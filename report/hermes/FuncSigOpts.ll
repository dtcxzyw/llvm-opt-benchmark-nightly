inline.NumInlined: 522
inline.NumDeleted: 315
begin_hunk_0_@_ZN6hermes11FuncSigOpts11runOnModuleEPNS_6ModuleE:bb.a
._crit_edge111.i:                                 ; preds = %bb.w, %._crit_edge.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.046113.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.dv, %i.cw
  br i1 %.not.i, label %._crit_edge115.i, label %.lr.ph114.i

.lr.ph110.i:                                      ; preds = %bb.w, %.lr.ph110.preheader.i
  %indvars.iv136.i = phi i64 [ 1, %.lr.ph110.preheader.i ], [ %indvars.iv.next137.i, %bb.w ] ; 4 uses
  %i.dw = icmp samesign ugt i64 %indvars.iv136.i, %i.cj
  br i1 %i.dw, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph110.i
  %i.dx = load ptr, ptr %i.cg, align 8, !tbaa !81
  %i.dy = getelementptr [8 x i8], ptr %i.dx, i64 %indvars.iv136.i
  %i.dz = getelementptr i8, ptr %i.dy, i64 -8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !94
  %i.eb = call noundef zeroext i1 @_ZNK6hermes5Value8hasUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ea) #13
  br i1 %i.eb, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph110.i
  %i.ec = load i32, ptr %i.n, align 8, !tbaa !82  ; 2 uses
  %i.ed = load i32, ptr %i.o, align 4, !tbaa !83
  %.not.i61.i = icmp ult i32 %i.ec, %i.ed
  br i1 %.not.i61.i, label %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes8CallInstEjELb1EE9push_backERKS5_.exit.i, label %bb.v, !prof !18

bb.v:                                             ; preds = %bb.u
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.m, i64 noundef 0, i64 noundef 16) #13
  %.pre.i62.i = load i32, ptr %i.n, align 8, !tbaa !82
  br label %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes8CallInstEjELb1EE9push_backERKS5_.exit.i

_ZN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes8CallInstEjELb1EE9push_backERKS5_.exit.i: ; preds = %bb.v, %bb.u
  %i.ee = phi i32 [ %.pre.i62.i, %bb.v ], [ %i.ec, %bb.u ]
  %i.ef = load ptr, ptr %7, align 8, !tbaa !81
  %i.eg = zext i32 %i.ee to i64
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %i.eg ; 2 uses
  store ptr %i.db, ptr %i.eh, align 1
  %.sroa.473.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ei = trunc nuw i64 %indvars.iv136.i to i32
  store i32 %i.ei, ptr %.sroa.473.0..sroa_idx.i, align 1
  %i.ej = load i32, ptr %i.n, align 8, !tbaa !82
  %i.ek = add i32 %i.ej, 1
  store i32 %i.ek, ptr %i.n, align 8, !tbaa !82
  br label %bb.w

bb.w:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes8CallInstEjELb1EE9push_backERKS5_.exit.i, %bb.t
  %indvars.iv.next137.i = add nuw nsw i64 %indvars.iv136.i, 1 ; 2 uses
  %exitcond140.not.i = icmp eq i64 %indvars.iv.next137.i, %wide.trip.count139.i
  br i1 %exitcond140.not.i, label %._crit_edge111.i, label %.lr.ph110.i, !llvm.loop !95

._crit_edge122.i.loopexit:                        ; preds = %bb.y
  %i.el = or i1 %.049, %.151.i
  br label %._crit_edge122.i

._crit_edge122.i:                                 ; preds = %._crit_edge122.i.loopexit, %._crit_edge115.i
  %.050.lcssa.i = phi i1 [ %.049, %._crit_edge115.i ], [ %i.el, %._crit_edge122.i.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 20, i1 false)
  %i.em = load ptr, ptr %7, align 8, !tbaa !81    ; 2 uses
  %i.en = load i32, ptr %i.n, align 8, !tbaa !82  ; 2 uses
  %i.eo = zext i32 %i.en to i64
  %.idx134.i = shl nuw nsw i64 %i.eo, 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 %.idx134.i
  %.not58123.i = icmp eq i32 %i.en, 0
  br i1 %.not58123.i, label %._crit_edge127.thread.i, label %.lr.ph126.i

.lr.ph121.i:                                      ; preds = %._crit_edge115.i, %bb.y
  %indvars.iv141.i = phi i64 [ %indvars.iv.next142.i, %bb.y ], [ 0, %._crit_edge115.i ] ; 2 uses
  %.050119.i = phi i1 [ %.151.i, %bb.y ], [ false, %._crit_edge115.i ]
  %.053117.i = phi ptr [ %i.eu, %bb.y ], [ %i.cx, %._crit_edge115.i ] ; 2 uses
  %i.eq = load ptr, ptr %6, align 8, !tbaa !81
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %indvars.iv141.i
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !92 ; 2 uses
  %.not59.i = icmp eq ptr %i.es, null
  br i1 %.not59.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph121.i
  %i.et = load ptr, ptr %.053117.i, align 8, !tbaa !94
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.et, ptr noundef nonnull %i.es) #13
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph121.i
  %.151.i = phi i1 [ true, %bb.x ], [ %.050119.i, %.lr.ph121.i ] ; 2 uses
  %indvars.iv.next142.i = add nuw nsw i64 %indvars.iv141.i, 1
  %i.eu = getelementptr inbounds nuw i8, ptr %.053117.i, i64 8 ; 2 uses
  %.not57.i = icmp eq ptr %i.eu, %i.da
  br i1 %.not57.i, label %._crit_edge122.i.loopexit, label %.lr.ph121.i

._crit_edge127.i:                                 ; preds = %bb.ab
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !96
  %.pre143.i = load ptr, ptr %8, align 8, !tbaa !99 ; 7 uses
  %.pre145.i = load i32, ptr %.phi.trans.insert144.i, align 8, !tbaa !100 ; 2 uses
  %i.ev = icmp eq i32 %.pre.i, 0
  %i.ew = zext i32 %.pre145.i to i64              ; 4 uses
  br i1 %i.ev, label %._crit_edge127.thread.i, label %bb.z

._crit_edge127.thread.i:                          ; preds = %._crit_edge127.i, %._crit_edge122.i
  %i.ex = phi i64 [ %i.ew, %._crit_edge127.i ], [ 0, %._crit_edge122.i ] ; 2 uses
  %i.ey = phi ptr [ %.pre143.i, %._crit_edge127.i ], [ null, %._crit_edge122.i ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.ex ; 2 uses
  br label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i

bb.z:                                             ; preds = %._crit_edge127.i
  %.idx.i.i63.i = shl nuw nsw i64 %i.ew, 3
  %i.fa = getelementptr i8, ptr %.pre143.i, i64 %.idx.i.i63.i ; 5 uses
  %.not5.i5.i10.i2.i.i.i = icmp eq i32 %.pre145.i, 0
  br i1 %.not5.i5.i10.i2.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i, label %.lr.ph.i6.i12.i3.i.i.i

.lr.ph.i6.i12.i3.i.i.i:                           ; preds = %bb.z, %.critedge2.i8.i14.i6.i.i.i
  %.sroa.0.3.i4.i.i.i = phi ptr [ %i.fc, %.critedge2.i8.i14.i6.i.i.i ], [ %.pre143.i, %bb.z ] ; 3 uses
  %i.fb = load ptr, ptr %.sroa.0.3.i4.i.i.i, align 8, !tbaa !15
  %magicptr.i7.i13.i5.i.i.i = ptrtoint ptr %i.fb to i64
  switch i64 %magicptr.i7.i13.i5.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i [
    i64 -8, label %.critedge2.i8.i14.i6.i.i.i
    i64 -16, label %.critedge2.i8.i14.i6.i.i.i
  ]

.critedge2.i8.i14.i6.i.i.i:                       ; preds = %.lr.ph.i6.i12.i3.i.i.i, %.lr.ph.i6.i12.i3.i.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i4.i.i.i, i64 8 ; 2 uses
  %.not.i9.i15.i7.i.i.i = icmp eq ptr %i.fc, %i.fa
  br i1 %.not.i9.i15.i7.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i, label %.lr.ph.i6.i12.i3.i.i.i, !llvm.loop !101

_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i: ; preds = %.critedge2.i8.i14.i6.i.i.i, %.lr.ph.i6.i12.i3.i.i.i, %bb.z, %._crit_edge127.thread.i
  %i.fd = phi i64 [ %i.ex, %._crit_edge127.thread.i ], [ 0, %bb.z ], [ %i.ew, %.lr.ph.i6.i12.i3.i.i.i ], [ %i.ew, %.critedge2.i8.i14.i6.i.i.i ]
  %i.fe = phi ptr [ %i.ey, %._crit_edge127.thread.i ], [ %.pre143.i, %bb.z ], [ %.pre143.i, %.lr.ph.i6.i12.i3.i.i.i ], [ %.pre143.i, %.critedge2.i8.i14.i6.i.i.i ] ; 2 uses
  %.pn14.i.i.i = phi ptr [ %i.ez, %._crit_edge127.thread.i ], [ %.pre143.i, %bb.z ], [ %i.fa, %.critedge2.i8.i14.i6.i.i.i ], [ %.sroa.0.3.i4.i.i.i, %.lr.ph.i6.i12.i3.i.i.i ] ; 2 uses
  %.pn12.i.i.i = phi ptr [ %i.ez, %._crit_edge127.thread.i ], [ %i.fa, %bb.z ], [ %i.fa, %.lr.ph.i6.i12.i3.i.i.i ], [ %i.fa, %.critedge2.i8.i14.i6.i.i.i ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.fd ; 2 uses
  %.not106128.i = icmp eq ptr %.pn14.i.i.i, %i.ff
  br i1 %.not106128.i, label %._crit_edge131.i, label %.lr.ph130.i

.lr.ph126.i:                                      ; preds = %._crit_edge122.i, %bb.ab
  %.047124.i = phi ptr [ %i.fw, %bb.ab ], [ %i.em, %._crit_edge122.i ] ; 5 uses
  %i.fg = load ptr, ptr %.047124.i, align 8, !tbaa !102
  %i.fh = getelementptr inbounds nuw i8, ptr %.047124.i, i64 8 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !104
  %i.fj = add i32 %i.fi, 2
  %i.fk = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(144) %i.fg, i32 noundef %i.fj) #13
  %i.fl = load i8, ptr %i.fk, align 8, !tbaa !25
  %i.fm = add i8 %i.fl, -109
  %i.fn = icmp ult i8 %i.fm, 11
  br i1 %i.fn, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph126.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.fo = load ptr, ptr %.047124.i, align 8, !tbaa !102
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 56
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !105
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 72
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !115
  store ptr %i.fs, ptr %i.a, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13, !noalias !123
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13, !noalias !123
  call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbEOS4_DpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.140") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %2), !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13, !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13, !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph126.i
  %i.ft = load ptr, ptr %.047124.i, align 8, !tbaa !102
  %i.fu = load i32, ptr %i.fh, align 8, !tbaa !104
  %i.fv = add i32 %i.fu, 2
  call void @_ZN6hermes11Instruction10setOperandEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(144) %i.ft, ptr noundef %i.ck, i32 noundef %i.fv) #13
  %i.fw = getelementptr inbounds nuw i8, ptr %.047124.i, i64 16 ; 2 uses
  %.not58.i = icmp eq ptr %i.fw, %i.ep
  br i1 %.not58.i, label %._crit_edge127.i, label %.lr.ph126.i

._crit_edge131.loopexit.i:                        ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i
  %.pre148.i = load ptr, ptr %8, align 8, !tbaa !99
  br label %._crit_edge131.i

._crit_edge131.i:                                 ; preds = %._crit_edge131.loopexit.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i
  %.sroa.19.7 = phi ptr [ %.sroa.19.246, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ], [ %.sroa.19.6, %._crit_edge131.loopexit.i ]
  %.sroa.9.6 = phi ptr [ %i.bi, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ], [ %.sroa.9.5, %._crit_edge131.loopexit.i ]
  %.sroa.018.7 = phi ptr [ %.sroa.018.248, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ], [ %.sroa.018.6, %._crit_edge131.loopexit.i ]
  %i.fx = phi ptr [ %i.fe, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ], [ %.pre148.i, %._crit_edge131.loopexit.i ]
  call void @_ZdlPv(ptr noundef %i.fx) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %i.fy = load ptr, ptr %7, align 8, !tbaa !81    ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.m
  br i1 %i.fz, label %_ZN4llvh11SmallVectorISt4pairIPN6hermes8CallInstEjELj8EED2Ev.exit.i, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge131.i
  call void @free(ptr noundef %i.fy) #13
  br label %_ZN4llvh11SmallVectorISt4pairIPN6hermes8CallInstEjELj8EED2Ev.exit.i

_ZN4llvh11SmallVectorISt4pairIPN6hermes8CallInstEjELj8EED2Ev.exit.i: ; preds = %bb.ac, %._crit_edge131.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.ga = load ptr, ptr %6, align 8, !tbaa !81    ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.j
  br i1 %i.gb, label %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EED2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvh11SmallVectorISt4pairIPN6hermes8CallInstEjELj8EED2Ev.exit.i
  call void @free(ptr noundef %i.ga) #13
  br label %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EED2Ev.exit.i

_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EED2Ev.exit.i: ; preds = %bb.ad, %_ZN4llvh11SmallVectorISt4pairIPN6hermes8CallInstEjELj8EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.aj

.lr.ph130.i:                                      ; preds = %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i
  %.sroa.19.5 = phi ptr [ %.sroa.19.6, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i ], [ %.sroa.19.246, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ]
  %.sroa.018.5 = phi ptr [ %.sroa.018.6, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i ], [ %.sroa.018.248, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ] ; 5 uses
  %i.gc = phi ptr [ %i.gt, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i ], [ %.sroa.19.246, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ] ; 3 uses
  %i.gd = phi ptr [ %.sroa.9.5, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i ], [ %i.bi, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ] ; 3 uses
  %.sroa.066.0129.i = phi ptr [ %.sroa.066.2.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i ], [ %.pn14.i.i.i, %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E5beginEv.exit.i ] ; 2 uses
  %i.ge = load ptr, ptr %.sroa.066.0129.i, align 8, !tbaa !15 ; 2 uses
  %.not.i64.i = icmp eq ptr %i.gd, %i.gc
  br i1 %.not.i64.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph130.i
  store ptr %i.ge, ptr %i.gd, align 8, !tbaa !15
  br label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backERKS2_.exit.i

bb.af:                                            ; preds = %.lr.ph130.i
  %i.gf = ptrtoint ptr %i.gc to i64
  %i.gg = ptrtoint ptr %.sroa.018.5 to i64
  %i.gh = sub i64 %i.gf, %i.gg                    ; 6 uses
  %i.gi = icmp eq i64 %i.gh, 9223372036854775800
  br i1 %i.gi, label %bb.ag, label %_ZNKSt6vectorIPN6hermes8FunctionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i9

bb.ag:                                            ; preds = %bb.af
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #10
  unreachable

_ZNKSt6vectorIPN6hermes8FunctionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i9: ; preds = %bb.af
  %i.gj = ashr exact i64 %i.gh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i10 = call i64 @llvm.umax.i64(i64 %i.gj, i64 1)
  %i.gk = add nsw i64 %.sroa.speculated.i.i.i.i10, %i.gj ; 2 uses
  %i.gl = icmp ult i64 %i.gk, %i.gj
  %i.gm = call i64 @llvm.umin.i64(i64 %i.gk, i64 1152921504606846975)
  %i.gn = select i1 %i.gl, i64 1152921504606846975, i64 %i.gm ; 3 uses
  %.not.i.i.i.i11 = icmp ne i64 %i.gn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i11)
  %i.go = shl nuw nsw i64 %i.gn, 3
  %i.gp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.go) #11 ; 4 uses
  %i.gq = getelementptr inbounds i8, ptr %i.gp, i64 %i.gh ; 2 uses
  store ptr %i.ge, ptr %i.gq, align 8, !tbaa !15
  %i.gr = icmp sgt i64 %i.gh, 0
  br i1 %i.gr, label %bb.ah, label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i12

bb.ah:                                            ; preds = %_ZNKSt6vectorIPN6hermes8FunctionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i9
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gp, ptr align 8 %.sroa.018.5, i64 %i.gh, i1 false)
  br label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i12

_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i12: ; preds = %bb.ah, %_ZNKSt6vectorIPN6hermes8FunctionESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i9
  %.not.i17.i.i.i13 = icmp eq ptr %.sroa.018.5, null
  br i1 %.not.i17.i.i.i13, label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i12
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.018.5, i64 noundef %i.gh) #12
  br label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.ai, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i12
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.gn ; 2 uses
  br label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backERKS2_.exit.i

_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backERKS2_.exit.i: ; preds = %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.ae
  %.sroa.19.6 = phi ptr [ %i.gs, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.19.5, %bb.ae ] ; 2 uses
  %.pn = phi ptr [ %i.gq, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.gd, %bb.ae ]
  %.sroa.018.6 = phi ptr [ %i.gp, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.018.5, %bb.ae ] ; 2 uses
  %i.gt = phi ptr [ %i.gs, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.gc, %bb.ae ]
  %.sroa.9.5 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.066.0129.i, i64 8 ; 3 uses
  %.not5.i3.i.i.i = icmp eq ptr %i.gu, %.pn12.i.i.i
  br i1 %.not5.i3.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i, label %.lr.ph.i4.i.i.i

.lr.ph.i4.i.i.i:                                  ; preds = %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backERKS2_.exit.i, %.critedge2.i6.i.i.i
  %.sroa.066.1.i = phi ptr [ %i.gw, %.critedge2.i6.i.i.i ], [ %i.gu, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backERKS2_.exit.i ] ; 3 uses
  %i.gv = load ptr, ptr %.sroa.066.1.i, align 8, !tbaa !15
  %magicptr.i5.i.i.i = ptrtoint ptr %i.gv to i64
  switch i64 %magicptr.i5.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i [
    i64 -8, label %.critedge2.i6.i.i.i
    i64 -16, label %.critedge2.i6.i.i.i
  ]

.critedge2.i6.i.i.i:                              ; preds = %.lr.ph.i4.i.i.i, %.lr.ph.i4.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.066.1.i, i64 8 ; 3 uses
  %.not.i7.i.i.i = icmp eq ptr %i.gw, %.pn12.i.i.i
  br i1 %.not.i7.i.i.i, label %_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i, label %.lr.ph.i4.i.i.i, !llvm.loop !101

_ZN4llvh6detail12DenseSetImplIPN6hermes8FunctionENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_E8IteratorppEv.exit.i: ; preds = %.critedge2.i6.i.i.i, %.lr.ph.i4.i.i.i, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backERKS2_.exit.i
  %.sroa.066.2.i = phi ptr [ %i.gu, %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EE9push_backERKS2_.exit.i ], [ %.sroa.066.1.i, %.lr.ph.i4.i.i.i ], [ %i.gw, %.critedge2.i6.i.i.i ] ; 2 uses
  %.not106.i = icmp eq ptr %.sroa.066.2.i, %i.ff
  br i1 %.not106.i, label %._crit_edge131.loopexit.i, label %.lr.ph130.i

bb.aj:                                            ; preds = %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EED2Ev.exit.i, %bb.m
  %.sroa.19.4 = phi ptr [ %.sroa.19.7, %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EED2Ev.exit.i ], [ %.sroa.19.246, %bb.m ]
  %.sroa.9.4 = phi ptr [ %.sroa.9.6, %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EED2Ev.exit.i ], [ %i.bi, %bb.m ]
  %.sroa.018.4 = phi ptr [ %.sroa.018.7, %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EED2Ev.exit.i ], [ %.sroa.018.248, %bb.m ]
  %.0.i = phi i1 [ %.050.lcssa.i, %_ZN4llvh11SmallVectorISt4pairIPN6hermes7LiteralEbELj8EED2Ev.exit.i ], [ %.049, %bb.m ]
  %i.gx = load ptr, ptr %5, align 8, !tbaa !81    ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.g
  br i1 %i.gy, label %_ZN4llvh11SmallVectorIPN6hermes8CallInstELj8EED2Ev.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef %i.gx) #13
  br label %_ZN4llvh11SmallVectorIPN6hermes8CallInstELj8EED2Ev.exit.i

_ZN4llvh11SmallVectorIPN6hermes8CallInstELj8EED2Ev.exit.i: ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit

_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit: ; preds = %.lr.ph.i.i, %bb.k, %_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i, %_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i, %_ZN4llvh11SmallVectorIPN6hermes8CallInstELj8EED2Ev.exit.i
  %.sroa.19.8 = phi ptr [ %.sroa.19.4, %_ZN4llvh11SmallVectorIPN6hermes8CallInstELj8EED2Ev.exit.i ], [ %.sroa.19.246, %_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i ], [ %.sroa.19.246, %_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i ], [ %.sroa.19.246, %bb.k ], [ %.sroa.19.246, %.lr.ph.i.i ] ; 2 uses
  %.sroa.9.7 = phi ptr [ %.sroa.9.4, %_ZN4llvh11SmallVectorIPN6hermes8CallInstELj8EED2Ev.exit.i ], [ %i.bi, %_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i ], [ %i.bi, %_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i ], [ %i.bi, %bb.k ], [ %i.bi, %.lr.ph.i.i ] ; 2 uses
  %.sroa.018.8 = phi ptr [ %.sroa.018.4, %_ZN4llvh11SmallVectorIPN6hermes8CallInstELj8EED2Ev.exit.i ], [ %.sroa.018.248, %_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i ], [ %.sroa.018.248, %_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i ], [ %.sroa.018.248, %bb.k ], [ %.sroa.018.248, %.lr.ph.i.i ] ; 3 uses
  %.1.i = phi i1 [ %.0.i, %_ZN4llvh11SmallVectorIPN6hermes8CallInstELj8EED2Ev.exit.i ], [ %.049, %_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i ], [ %.049, %_ZL22capturesArgumentVectorPN6hermes8FunctionE.exit.i ], [ %.049, %bb.k ], [ %.049, %.lr.ph.i.i ] ; 2 uses
  %.not = icmp eq ptr %.sroa.9.7, %.sroa.018.8
  br i1 %.not, label %._crit_edge, label %bb.j, !llvm.loop !126

._crit_edge:                                      ; preds = %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit, %.preheader
  %.sroa.018.2.lcssa44 = phi ptr [ %.sroa.018.1, %.preheader ], [ %.sroa.018.8, %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit ] ; 3 uses
  %.sroa.19.2.lcssa = phi ptr [ %.sroa.19.1, %.preheader ], [ %.sroa.19.8, %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit ]
  %.0.lcssa = phi i1 [ false, %.preheader ], [ %.1.i, %_ZL10performFSOPN6hermes8FunctionERSt6vectorIS1_SaIS1_EE.exit ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.018.2.lcssa44, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %._crit_edge
  %i.gz = ptrtoint ptr %.sroa.018.2.lcssa44 to i64
  %i.ha = ptrtoint ptr %.sroa.19.2.lcssa to i64
  %i.hb = sub i64 %i.ha, %i.gz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.018.2.lcssa44, i64 noundef %i.hb) #12
  br label %_ZNSt6vectorIPN6hermes8FunctionESaIS2_EED2Ev.exit

_ZNSt6vectorIPN6hermes8FunctionESaIS2_EED2Ev.exit: ; preds = %bb.a, %._crit_edge, %bb.al
  %.0.lcssa90 = phi i1 [ %.0.lcssa, %bb.al ], [ %.0.lcssa, %._crit_edge ], [ false, %bb.a ]
  ret i1 %.0.lcssa90
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes17createFuncSigOptsEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 {
_ZNSt10unique_ptrIN6hermes11FuncSigOptsESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #11, !noalias !127 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !130, !noalias !127
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.1, ptr %i.c, align 8, !tbaa !135, !noalias !127
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 11, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !136, !noalias !127
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6hermes11FuncSigOptsE, i64 16), ptr %i.a, align 8, !tbaa !137, !noalias !127
  store ptr %i.a, ptr %0, align 8, !tbaa !139
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes11FuncSigOptsD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #12
  ret void
}

declare noundef zeroext i1 @_ZN6hermes12getCallSitesEPNS_8FunctionERN4llvh15SmallVectorImplIPNS_8CallInstEEE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes9IRBuilder19getLiteralUndefinedEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK6hermes5Value8hasUsersEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK6hermes11Instruction14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(132)) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbEOS4_DpOT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.140") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !99     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !100  ; 9 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !15     ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = lshr i32 %i.h, 4
  %i.j = lshr i32 %i.h, 9
  %i.k = xor i32 %i.i, %i.j
  %i.l = add i32 %i.d, -1                         ; 2 uses
  %.02944.i.i = and i32 %i.k, %i.l                ; 2 uses
  %i.m = zext nneg i32 %.02944.i.i to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15   ; 2 uses
  %i.p = icmp eq ptr %i.f, %i.o
  br i1 %i.p, label %.loopexit, label %.lr.ph.i.i, !prof !17

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.q = phi ptr [ %i.aa, %bb.d ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = phi ptr [ %i.z, %bb.d ], [ %i.n, %bb.b ] ; 2 uses
  %.02947.i.i = phi i32 [ %.029.i.i, %bb.d ], [ %.02944.i.i, %bb.b ]
  %.02746.i.i = phi i32 [ %i.w, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.03245.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.s = icmp eq ptr %i.q, inttoptr (i64 -8 to ptr)
  br i1 %i.s, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.03245.i.i, null
  %i.t = select i1 %.not.i.i, ptr %i.r, ptr %.03245.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.u = icmp eq ptr %i.q, inttoptr (i64 -16 to ptr)
  %i.v = icmp eq ptr %.03245.i.i, null
  %or.cond.not.i.i = select i1 %i.u, i1 %i.v, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.r, ptr %.03245.i.i
  %i.w = add i32 %.02746.i.i, 1
  %i.x = add i32 %.02746.i.i, %.02947.i.i
  %.029.i.i = and i32 %i.x, %i.l                  ; 2 uses
  %i.y = zext i32 %.029.i.i to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.y ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !15  ; 2 uses
  %i.ab = icmp eq ptr %i.f, %i.aa
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i.i, !prof !19, !llvm.loop !142

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.t, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !143
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !96 ; 3 uses
  %i.ae = shl i32 %i.ad, 2
  %i.af = add i32 %i.ae, 4
  %i.ag = mul i32 %i.d, 3
  %.not.i.i4 = icmp ult i32 %i.af, %i.ag
  br i1 %.not.i.i4, label %bb.f, label %bb.e, !prof !18

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit
  %i.ah = shl i32 %i.d, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes8FunctionENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !144
end_hunk_0
