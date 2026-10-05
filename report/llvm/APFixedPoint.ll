Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/APFixedPoint?download=true
inline.NumInlined: 807
inline.NumDeleted: 210
begin_hunk_0_@_ZNK4llvm12APFixedPoint10getIntPartEv:bb.a
  call void @_ZNK4llvm5APInt12relativeLShrEi(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %5, ptr noundef nonnull align 8 dereferenceable(13) %16, i32 noundef %i.co), !noalias !292
  br label %_ZNK4llvm6APSInt11relativeShlEj.exit

_ZNK4llvm6APSInt11relativeShlEj.exit:             ; preds = %bb.t, %.critedge.i
  %.sink10.i.sroa.phi = phi ptr [ %.sink10.i.sroa.gep, %.critedge.i ], [ %.sink10.i.sroa.gep31, %bb.t ]
  %.sink10.i = phi ptr [ %5, %.critedge.i ], [ %6, %bb.t ]
  %.sink.i14 = phi i8 [ 1, %.critedge.i ], [ 0, %bb.t ]
  %i.cp = load i32, ptr %.sink10.i.sroa.phi, align 8, !tbaa !18, !noalias !292 ; 4 uses
  %i.cq = load i64, ptr %.sink10.i, align 8, !noalias !292 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i32 %i.cp, ptr %i.cr, align 8, !tbaa !18, !alias.scope !292
  store i64 %i.cq, ptr %15, align 8, !alias.scope !292
  %i.cs = getelementptr inbounds nuw i8, ptr %15, i64 12 ; 2 uses
  store i8 %.sink.i14, ptr %i.cs, align 4, !tbaa !20, !alias.scope !292
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.experimental.noalias.scope.decl(metadata !293)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 %i.cp, ptr %i.ct, align 8, !tbaa !18, !noalias !293
  %i.cu = icmp ult i32 %i.cp, 65
  br i1 %i.cu, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i.i17, label %_ZN4llvm5APIntC2ERKS0_.exit.i15

_ZN4llvm5APIntC2ERKS0_.exit.i15:                  ; preds = %_ZNK4llvm6APSInt11relativeShlEj.exit
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(13) %15) #15, !noalias !293
  %.pr.i16 = load i32, ptr %i.ct, align 8, !tbaa !18, !noalias !294 ; 2 uses
  %i.cv = icmp ult i32 %.pr.i16, 65
  br i1 %i.cv, label %_ZN4llvm5APIntC2ERKS0_.exit.i15._ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i.i17_crit_edge, label %bb.u

_ZN4llvm5APIntC2ERKS0_.exit.i15._ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i.i17_crit_edge: ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i15
  %.pre.i19.pre = load i64, ptr %4, align 8, !tbaa !16, !noalias !293
  br label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i.i17

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i.i17: ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i15._ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i.i17_crit_edge, %_ZNK4llvm6APSInt11relativeShlEj.exit
  %.pre.i19 = phi i64 [ %i.cq, %_ZNK4llvm6APSInt11relativeShlEj.exit ], [ %.pre.i19.pre, %_ZN4llvm5APIntC2ERKS0_.exit.i15._ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i.i17_crit_edge ]
  %i.cw = phi i32 [ %i.cp, %_ZNK4llvm6APSInt11relativeShlEj.exit ], [ %.pr.i16, %_ZN4llvm5APIntC2ERKS0_.exit.i15._ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i.i17_crit_edge ] ; 2 uses
  %i.cx = xor i64 %.pre.i19, -1
  %i.cy = sub nsw i32 0, %i.cw
  %i.cz = and i32 %i.cy, 63
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = lshr i64 -1, %i.da
  %i.dc = icmp eq i32 %i.cw, 0
  %spec.select.i.i.i.i20 = select i1 %i.dc, i64 0, i64 %i.db, !prof !24
  %i.dd = and i64 %spec.select.i.i.i.i20, %i.cx
  store i64 %i.dd, ptr %4, align 8, !tbaa !16, !noalias !294
  br label %_ZNK4llvm6APSIntngEv.exit21

bb.u:                                             ; preds = %_ZN4llvm5APIntC2ERKS0_.exit.i15
  call void @_ZN4llvm5APInt19flipAllBitsSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #15, !noalias !294
  br label %_ZNK4llvm6APSIntngEv.exit21

_ZNK4llvm6APSIntngEv.exit21:                      ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i.i.i17, %bb.u
  %i.de = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntppEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #15, !noalias !294 ; 0 uses
  %i.df = load i32, ptr %i.ct, align 8, !tbaa !18, !noalias !294
  %i.dg = load i64, ptr %4, align 8, !noalias !294
  %i.dh = load i8, ptr %i.cs, align 4, !tbaa !20, !range !21, !noalias !293, !noundef !22
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.df, ptr %i.di, align 8, !tbaa !18, !alias.scope !293
  store i64 %i.dg, ptr %0, align 8, !alias.scope !293
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.dh, ptr %i.dj, align 4, !tbaa !20, !alias.scope !293
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.dk = load i32, ptr %i.cr, align 8, !tbaa !18
  %i.dl = icmp ugt i32 %i.dk, 64
  br i1 %i.dl, label %bb.v, label %_ZN4llvm5APIntD2Ev.exit22

bb.v:                                             ; preds = %_ZNK4llvm6APSIntngEv.exit21
  %i.dm = load ptr, ptr %15, align 8, !tbaa !16   ; 2 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %_ZN4llvm5APIntD2Ev.exit22, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.dm) #16
  br label %_ZN4llvm5APIntD2Ev.exit22

_ZN4llvm5APIntD2Ev.exit22:                        ; preds = %_ZNK4llvm6APSIntngEv.exit21, %bb.v, %bb.w
  %i.do = load i32, ptr %i.ci, align 8, !tbaa !18
  %i.dp = icmp ugt i32 %i.do, 64
  br i1 %i.dp, label %bb.x, label %_ZN4llvm5APIntD2Ev.exit23

bb.x:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit22
  %i.dq = load ptr, ptr %16, align 8, !tbaa !16   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %_ZN4llvm5APIntD2Ev.exit23, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZdaPv(ptr noundef nonnull %i.dq) #16
  br label %_ZN4llvm5APIntD2Ev.exit23

_ZN4llvm5APIntD2Ev.exit23:                        ; preds = %_ZN4llvm5APIntD2Ev.exit22, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %bb.aa

.critedge.thread:                                 ; preds = %_ZNK4llvm6APSIntltEl.exit, %.critedge
  %i.ds = load i32, ptr %i.a, align 8
  %i.dt = shl i32 %i.ds, 3
  %i.du = ashr i32 %i.dt, 19
  call void @llvm.experimental.noalias.scope.decl(metadata !295)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.dv = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.dw = load i8, ptr %i.dv, align 4, !tbaa !20, !range !21, !noalias !295, !noundef !22
  %i.dx = trunc nuw i8 %i.dw to i1
  %i.dy = sub nsw i32 0, %i.du                    ; 2 uses
  br i1 %i.dx, label %.critedge.i27, label %bb.z

bb.z:                                             ; preds = %.critedge.thread
  call void @_ZNK4llvm5APInt12relativeAShrEi(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %3, ptr noundef nonnull align 8 dereferenceable(13) %13, i32 noundef %i.dy), !noalias !295
  br label %_ZNK4llvm6APSInt11relativeShlEj.exit28

.critedge.i27:                                    ; preds = %.critedge.thread
  call void @_ZNK4llvm5APInt12relativeLShrEi(ptr dead_on_unwind nonnull writable sret(%"class.llvm::APInt") align 8 %2, ptr noundef nonnull align 8 dereferenceable(13) %13, i32 noundef %i.dy), !noalias !295
  br label %_ZNK4llvm6APSInt11relativeShlEj.exit28

_ZNK4llvm6APSInt11relativeShlEj.exit28:           ; preds = %bb.z, %.critedge.i27
  %.sink10.i25.sroa.phi = phi ptr [ %.sink10.i25.sroa.gep, %.critedge.i27 ], [ %.sink10.i25.sroa.gep32, %bb.z ]
  %.sink10.i25 = phi ptr [ %2, %.critedge.i27 ], [ %3, %bb.z ]
  %.sink.i26 = phi i8 [ 1, %.critedge.i27 ], [ 0, %bb.z ]
  %i.dz = load i32, ptr %.sink10.i25.sroa.phi, align 8, !tbaa !18, !noalias !295
  %i.ea = load i64, ptr %.sink10.i25, align 8, !noalias !295
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.dz, ptr %i.eb, align 8, !tbaa !18, !alias.scope !295
  store i64 %i.ea, ptr %0, align 8, !alias.scope !295
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %.sink.i26, ptr %i.ec, align 4, !tbaa !20, !alias.scope !295
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNK4llvm6APSInt11relativeShlEj.exit28, %_ZN4llvm5APIntD2Ev.exit23
  %i.ed = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !18
  %i.ef = icmp ugt i32 %i.ee, 64
  br i1 %i.ef, label %bb.ab, label %_ZN4llvm5APIntD2Ev.exit29

bb.ab:                                            ; preds = %bb.aa
  %i.eg = load ptr, ptr %13, align 8, !tbaa !16   ; 2 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %_ZN4llvm5APIntD2Ev.exit29, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdaPv(ptr noundef nonnull %i.eg) #16
  br label %_ZN4llvm5APIntD2Ev.exit29

_ZN4llvm5APIntD2Ev.exit29:                        ; preds = %bb.aa, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit29, %_ZN4llvm5APIntD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN4llvm12APFixedPoint21promoteFloatSemanticsEPKNS_12fltSemanticsE(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, @_ZN4llvm11APFloatBase9semBFloatE
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, @_ZN4llvm11APFloatBase11semIEEEhalfE
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq ptr %0, @_ZN4llvm11APFloatBase13semIEEEsingleE
  %spec.select = select i1 %i.c, ptr @_ZN4llvm11APFloatBase13semIEEEdoubleE, ptr @_ZN4llvm11APFloatBase11semIEEEquadE
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ %spec.select, %bb.c ], [ @_ZN4llvm11APFloatBase13semIEEEdoubleE, %bb.a ], [ @_ZN4llvm11APFloatBase13semIEEEsingleE, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm12APFixedPoint14convertToFloatERKNS_12fltSemanticsE(ptr dead_on_unwind noalias writable sret(%"class.llvm::APFloat") align 8 %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 4 dereferenceable(29) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::detail::IEEEFloat", align 8 ; 5 uses
  %4 = alloca %"class.llvm::APFloat", align 8     ; 7 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = tail call noundef zeroext i1 @_ZNK4llvm19FixedPointSemantics20fitsInFloatSemanticsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(29) %2)
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvm12APFixedPoint21promoteFloatSemanticsEPKNS_12fltSemanticsE.exit
  %.017 = phi ptr [ %.0.i, %_ZN4llvm12APFixedPoint21promoteFloatSemanticsEPKNS_12fltSemanticsE.exit ], [ %2, %bb.a ] ; 3 uses
  %i.d = icmp eq ptr %.017, @_ZN4llvm11APFloatBase9semBFloatE
  br i1 %i.d, label %_ZN4llvm12APFixedPoint21promoteFloatSemanticsEPKNS_12fltSemanticsE.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = icmp eq ptr %.017, @_ZN4llvm11APFloatBase11semIEEEhalfE
  br i1 %i.e, label %_ZN4llvm12APFixedPoint21promoteFloatSemanticsEPKNS_12fltSemanticsE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq ptr %.017, @_ZN4llvm11APFloatBase13semIEEEsingleE
  %spec.select.i = select i1 %i.f, ptr @_ZN4llvm11APFloatBase13semIEEEdoubleE, ptr @_ZN4llvm11APFloatBase11semIEEEquadE
  br label %_ZN4llvm12APFixedPoint21promoteFloatSemanticsEPKNS_12fltSemanticsE.exit

_ZN4llvm12APFixedPoint21promoteFloatSemanticsEPKNS_12fltSemanticsE.exit: ; preds = %.lr.ph, %bb.b, %bb.c
  %.0.i = phi ptr [ %spec.select.i, %bb.c ], [ @_ZN4llvm11APFloatBase13semIEEEdoubleE, %.lr.ph ], [ @_ZN4llvm11APFloatBase13semIEEEsingleE, %bb.b ] ; 3 uses
  %i.g = tail call noundef zeroext i1 @_ZNK4llvm19FixedPointSemantics20fitsInFloatSemanticsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(29) %.0.i)
  br i1 %i.g, label %._crit_edge, label %.lr.ph, !llvm.loop !296

._crit_edge:                                      ; preds = %_ZN4llvm12APFixedPoint21promoteFloatSemanticsEPKNS_12fltSemanticsE.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %.0.i, %_ZN4llvm12APFixedPoint21promoteFloatSemanticsEPKNS_12fltSemanticsE.exit ] ; 5 uses
  %.not.i.i = icmp eq ptr %.0.lcssa, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i.i, label %bb.d, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge
  tail call void @_ZN4llvm6detail9IEEEFloatC1ERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) %.0.lcssa) #15
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsE.exit

bb.d:                                             ; preds = %._crit_edge
  tail call void @_ZN4llvm6detail13DoubleAPFloatC1ERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) %.0.lcssa) #15
  br label %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsE.exit

_ZN4llvm7APFloatC2ERKNS_12fltSemanticsE.exit:     ; preds = %._crit_edge.thread, %bb.d
  %i.h = load i32, ptr %i.b, align 8
  %i.i = and i32 %i.h, 536870912
  %i.j = icmp ne i32 %i.i, 0                      ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !16
  %.not.i = icmp eq ptr %i.k, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsE.exit
  %i.l = tail call noundef i32 @_ZN4llvm6detail9IEEEFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i1 noundef zeroext %i.j, i8 noundef signext 1) #15 ; 0 uses
  br label %_ZN4llvm7APFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE.exit

bb.f:                                             ; preds = %_ZN4llvm7APFloatC2ERKNS_12fltSemanticsE.exit
  %i.m = tail call noundef i32 @_ZN4llvm6detail13DoubleAPFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, i1 noundef zeroext %i.j, i8 noundef signext 1) #15 ; 0 uses
  br label %_ZN4llvm7APFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE.exit

_ZN4llvm7APFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.n = load i32, ptr %i.b, align 8
  %i.o = shl i32 %i.n, 3
  %i.p = ashr i32 %i.o, 19
  %ldexp = tail call double @ldexp(double 1.000000e+00, i32 %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN4llvm6detail9IEEEFloatC1Ed(ptr noundef nonnull align 8 dereferenceable(24) %3, double noundef %ldexp) #15
  call void @_ZN4llvm7APFloat7StorageC1ENS_6detail9IEEEFloatERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nofree noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase13semIEEEdoubleE) #15
  call void @_ZN4llvm6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(24) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.q = call noundef i32 @_ZN4llvm7APFloat7convertERKNS_12fltSemanticsENS_12RoundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(29) %.0.lcssa, i8 noundef signext 0, ptr noundef nonnull %i.a) #15 ; 0 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !16
  %.not.i15 = icmp eq ptr %i.r, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i15, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm7APFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE.exit
  %i.s = call noundef i32 @_ZN4llvm6detail9IEEEFloat8multiplyERKS1_NS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef signext 0) #15 ; 0 uses
  br label %_ZN4llvm7APFloat8multiplyERKS0_NS_12RoundingModeE.exit

bb.h:                                             ; preds = %_ZN4llvm7APFloat16convertFromAPIntERKNS_5APIntEbNS_12RoundingModeE.exit
  %i.t = call noundef i32 @_ZN4llvm6detail13DoubleAPFloat8multiplyERKS1_NS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i8 noundef signext 0) #15 ; 0 uses
  br label %_ZN4llvm7APFloat8multiplyERKS0_NS_12RoundingModeE.exit

_ZN4llvm7APFloat8multiplyERKS0_NS_12RoundingModeE.exit: ; preds = %bb.g, %bb.h
  %.not = icmp eq ptr %.0.lcssa, %2
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm7APFloat8multiplyERKS0_NS_12RoundingModeE.exit
  %i.u = call noundef i32 @_ZN4llvm7APFloat7convertERKNS_12fltSemanticsENS_12RoundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(29) %2, i8 noundef signext 1, ptr noundef nonnull %i.a) #15 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4llvm7APFloat8multiplyERKS0_NS_12RoundingModeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @_ZN4llvm7APFloat7StorageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

declare noundef i32 @_ZN4llvm7APFloat7convertERKNS_12fltSemanticsENS_12RoundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(29), i8 noundef signext, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm12APFixedPoint15getFromIntValueERKNS_6APSIntERKNS_19FixedPointSemanticsEPb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::APFixedPoint") align 8 captures(none) initializes((0, 13), (16, 20)) %0, ptr noundef nonnull align 8 dereferenceable(13) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %5 = alloca %"class.llvm::APFixedPoint", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i8, ptr %i.c, align 4, !tbaa !20, !range !21, !noundef !22 ; 2 uses
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = and i32 %i.b, 65535
  %i.g = select i1 %i.e, i32 0, i32 536870912
  %i.h = or disjoint i32 %i.g, %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %i.b, ptr %i.i, align 8, !tbaa !18
  %i.j = icmp ult i32 %i.b, 65
  br i1 %i.j, label %_ZN4llvm12APFixedPointC2ERKNS_5APIntERKNS_19FixedPointSemanticsE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %1) #15
  %.pre.i = load i32, ptr %i.i, align 8, !tbaa !18
  br label %_ZN4llvm12APFixedPointC2ERKNS_5APIntERKNS_19FixedPointSemanticsE.exit

_ZN4llvm12APFixedPointC2ERKNS_5APIntERKNS_19FixedPointSemanticsE.exit: ; preds = %bb.a, %bb.b
  %.sink.i = phi ptr [ %4, %bb.b ], [ %1, %bb.a ]
  %i.k = phi i32 [ %.pre.i, %bb.b ], [ %i.b, %bb.a ]
  %.pre4.i = load i64, ptr %.sink.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 %i.k, ptr %i.l, align 8, !tbaa !18
  store i64 %.pre4.i, ptr %5, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i8 %i.d, ptr %i.m, align 4, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %i.h, ptr %i.n, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZNK4llvm12APFixedPoint7convertERKNS_19FixedPointSemanticsEPb(ptr dead_on_unwind writable sret(%"class.llvm::APFixedPoint") align 8 %0, ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef %3)
  %i.o = load i32, ptr %i.l, align 8, !tbaa !18
  %i.p = icmp ugt i32 %i.o, 64
  br i1 %i.p, label %bb.c, label %_ZN4llvm12APFixedPointD2Ev.exit

bb.c:                                             ; preds = %_ZN4llvm12APFixedPointC2ERKNS_5APIntERKNS_19FixedPointSemanticsE.exit
  %i.q = load ptr, ptr %5, align 8, !tbaa !16     ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN4llvm12APFixedPointD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.q) #16
  br label %_ZN4llvm12APFixedPointD2Ev.exit

_ZN4llvm12APFixedPointD2Ev.exit:                  ; preds = %_ZN4llvm12APFixedPointC2ERKNS_5APIntERKNS_19FixedPointSemanticsE.exit, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm12APFixedPoint17getFromFloatValueERKNS_7APFloatERKNS_19FixedPointSemanticsEPb(ptr dead_on_unwind noalias writable sret(%"class.llvm::APFixedPoint") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %5 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %7 = alloca %"class.llvm::detail::IEEEFloat", align 8 ; 5 uses
  %8 = alloca %"class.llvm::detail::IEEEFloat", align 8 ; 5 uses
  %9 = alloca %"class.llvm::APFloat", align 8     ; 28 uses
  %i.a = alloca i8, align 1                       ; 7 uses
  %10 = alloca %"class.llvm::APFloat", align 8    ; 11 uses
  %11 = alloca %"class.llvm::APSInt", align 8     ; 14 uses
  %12 = alloca %"class.llvm::APFloat", align 8    ; 5 uses
  %13 = alloca %"class.llvm::APFloat", align 8    ; 8 uses
  %14 = alloca %"class.llvm::APFixedPoint", align 8 ; 6 uses
  %15 = alloca %"class.llvm::APFloat", align 8    ; 8 uses
  %16 = alloca %"class.llvm::APFixedPoint", align 8 ; 6 uses
  %17 = alloca %"class.llvm::APFixedPoint", align 8 ; 8 uses
  %18 = alloca %"class.llvm::APFixedPoint", align 8 ; 8 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !16     ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.b, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %.0.i.i.i = select i1 %.not.i.i.i, ptr %i.d, ptr %1
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.f = load i8, ptr %i.e, align 4
  %i.g = and i8 %i.f, 7
  %i.h = icmp eq i8 %i.g, 1
  br i1 %i.h, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZNK4llvm19FixedPointSemantics20fitsInFloatSemanticsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(29) %i.b)
  br i1 %i.i, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @_ZN4llvm7APFloat7StorageC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %.not39 = icmp eq ptr %3, null
  br i1 %.not39, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %3, align 1, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN4llvm12APFixedPointC2EmRKNS_19FixedPointSemanticsE(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.ay

.lr.ph:                                           ; preds = %.preheader, %_ZN4llvm12APFixedPoint21promoteFloatSemanticsEPKNS_12fltSemanticsE.exit
  %.03678 = phi ptr [ %.0.i, %_ZN4llvm12APFixedPoint21promoteFloatSemanticsEPKNS_12fltSemanticsE.exit ], [ %i.b, %.preheader ] ; 3 uses
  %i.j = icmp eq ptr %.03678, @_ZN4llvm11APFloatBase9semBFloatE
  br i1 %i.j, label %_ZN4llvm12APFixedPoint21promoteFloatSemanticsEPKNS_12fltSemanticsE.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.k = icmp eq ptr %.03678, @_ZN4llvm11APFloatBase11semIEEEhalfE
  br i1 %i.k, label %_ZN4llvm12APFixedPoint21promoteFloatSemanticsEPKNS_12fltSemanticsE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = icmp eq ptr %.03678, @_ZN4llvm11APFloatBase13semIEEEsingleE
  %spec.select.i = select i1 %i.l, ptr @_ZN4llvm11APFloatBase13semIEEEdoubleE, ptr @_ZN4llvm11APFloatBase11semIEEEquadE
  br label %_ZN4llvm12APFixedPoint21promoteFloatSemanticsEPKNS_12fltSemanticsE.exit

_ZN4llvm12APFixedPoint21promoteFloatSemanticsEPKNS_12fltSemanticsE.exit: ; preds = %.lr.ph, %bb.e, %bb.f
  %.0.i = phi ptr [ %spec.select.i, %bb.f ], [ @_ZN4llvm11APFloatBase13semIEEEdoubleE, %.lr.ph ], [ @_ZN4llvm11APFloatBase13semIEEEsingleE, %bb.e ] ; 6 uses
  %i.m = tail call noundef zeroext i1 @_ZNK4llvm19FixedPointSemantics20fitsInFloatSemanticsERKNS_12fltSemanticsE(ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(29) %.0.i)
  br i1 %i.m, label %._crit_edge, label %.lr.ph, !llvm.loop !297

._crit_edge:                                      ; preds = %_ZN4llvm12APFixedPoint21promoteFloatSemanticsEPKNS_12fltSemanticsE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @_ZN4llvm7APFloat7StorageC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %1) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %.not = icmp eq ptr %i.b, %.0.i
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.n = call noundef i32 @_ZN4llvm7APFloat7convertERKNS_12fltSemanticsENS_12RoundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 4 dereferenceable(29) %.0.i, i8 noundef signext 0, ptr noundef nonnull %i.a) #15 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.thread, %bb.g, %._crit_edge
  %.036.lcssa92 = phi ptr [ %i.b, %._crit_edge.thread ], [ %.0.i, %bb.g ], [ %.0.i, %._crit_edge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.o = load i32, ptr %2, align 4
  %i.p = shl i32 %i.o, 3
  %i.q = ashr i32 %i.p, 19
  %i.r = sub nsw i32 0, %i.q
  %ldexp = call double @ldexp(double 1.000000e+00, i32 %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @_ZN4llvm6detail9IEEEFloatC1Ed(ptr noundef nonnull align 8 dereferenceable(24) %8, double noundef %ldexp) #15
  call void @_ZN4llvm7APFloat7StorageC1ENS_6detail9IEEEFloatERKNS_12fltSemanticsE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr nofree noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 4 dereferenceable(29) @_ZN4llvm11APFloatBase13semIEEEdoubleE) #15
  call void @_ZN4llvm6detail9IEEEFloatD1Ev(ptr noundef nonnull align 8 dead_on_return(21) dereferenceable(24) %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.s = call noundef i32 @_ZN4llvm7APFloat7convertERKNS_12fltSemanticsENS_12RoundingModeEPb(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 4 dereferenceable(29) %.036.lcssa92, i8 noundef signext 0, ptr noundef nonnull %i.a) #15 ; 0 uses
  %i.t = load ptr, ptr %9, align 8, !tbaa !16
  %.not.i = icmp eq ptr %i.t, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = call noundef i32 @_ZN4llvm6detail9IEEEFloat8multiplyERKS1_NS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, i8 noundef signext 0) #15 ; 0 uses
  br label %_ZN4llvm7APFloat8multiplyERKS0_NS_12RoundingModeE.exit

bb.j:                                             ; preds = %bb.h
  %i.v = call noundef i32 @_ZN4llvm6detail13DoubleAPFloat8multiplyERKS1_NS_12RoundingModeE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %10, i8 noundef signext 0) #15 ; 0 uses
  br label %_ZN4llvm7APFloat8multiplyERKS0_NS_12RoundingModeE.exit

_ZN4llvm7APFloat8multiplyERKS0_NS_12RoundingModeE.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.w = load i32, ptr %2, align 4                ; 2 uses
  %i.x = and i32 %i.w, 65535                      ; 2 uses
  %i.y = and i32 %i.w, 536870912
  %.not75 = icmp eq i32 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 7 uses
  store i32 %i.x, ptr %i.z, align 8, !tbaa !18
  %i.aa = icmp samesign ult i32 %i.x, 65
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4llvm7APFloat8multiplyERKS0_NS_12RoundingModeE.exit
  store i64 0, ptr %11, align 8, !tbaa !16
  br label %_ZN4llvm6APSIntC2Ejb.exit

bb.l:                                             ; preds = %_ZN4llvm7APFloat8multiplyERKS0_NS_12RoundingModeE.exit
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(13) %11, i64 noundef 0, i1 noundef zeroext false) #15
  br label %_ZN4llvm6APSIntC2Ejb.exit

_ZN4llvm6APSIntC2Ejb.exit:                        ; preds = %bb.k, %bb.l
  %i.ab = zext i1 %.not75 to i8
end_hunk_0
