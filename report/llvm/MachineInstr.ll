Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachineInstr?download=true
inline.NumInlined: 3831
inline.NumDeleted: 1709
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvm12MachineInstr15addRegisterDeadENS_8RegisterEPKNS_18TargetRegisterInfoEb:bb.a
  store i32 %1, ptr %i.dw, align 4, !tbaa !68, !alias.scope !592
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, i8 0, i64 16, i1 false), !alias.scope !592
  store i32 117440512, ptr %5, align 8, !alias.scope !592
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !73
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !122
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(1065) %i.eb, ptr noundef nonnull readonly align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZNK4llvm14MCRegisterInfo15isSuperRegisterENS_10MCRegisterES1_.exit

_ZNK4llvm14MCRegisterInfo15isSuperRegisterENS_10MCRegisterES1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %._crit_edge, %bb.s
  %i.ec = phi ptr [ %i.cm, %bb.s ], [ %i.cm, %._crit_edge ], [ %i.d, %.lr.ph.i.i.i.i.i ]
  %.4 = phi i1 [ true, %bb.s ], [ %.031.lcssa, %._crit_edge ], [ true, %.lr.ph.i.i.i.i.i ]
  %i.ed = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.ec
  br i1 %i.ee, label %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNK4llvm14MCRegisterInfo15isSuperRegisterENS_10MCRegisterES1_.exit
  call void @free(ptr noundef %i.ed) #26
  br label %_ZN4llvm11SmallVectorIjLj4EED2Ev.exit

_ZN4llvm11SmallVectorIjLj4EED2Ev.exit:            ; preds = %_ZNK4llvm14MCRegisterInfo15isSuperRegisterENS_10MCRegisterES1_.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret i1 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4llvm12MachineInstr18clearRegisterDeadsENS_8RegisterE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69, !noalias !597 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i24, ptr %i.c, align 8, !noalias !597 ; 2 uses
  %i.e = zext i24 %i.d to i64
  %.idx.i = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr i8, ptr %i.b, i64 %.idx.i  ; 5 uses
  %.not1.i.i.i.i.i = icmp eq i24 %i.d, 0
  br i1 %.not1.i.i.i.i.i, label %_ZN4llvm12MachineInstr8all_defsEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %bb.b
  %.sroa.011.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.g = load i32, ptr %.sroa.011.0.i.i, align 8, !noalias !598
  %i.h = and i32 %i.g, 16777471
  %i.i = icmp eq i32 %i.h, 16777216
  br i1 %i.i, label %_ZN4llvm12MachineInstr8all_defsEv.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, %i.f
  br i1 %.not.i.i.i.i.i, label %._crit_edge, label %.lr.ph.i.i.i.i.i, !llvm.loop !7

_ZN4llvm12MachineInstr8all_defsEv.exit:           ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %.sroa.011.1.i.i = phi ptr [ %i.b, %bb.a ], [ %.sroa.011.0.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.not14 = icmp eq ptr %.sroa.011.1.i.i, %i.f
  br i1 %.not14, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.d, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit, %bb.e, %_ZN4llvm12MachineInstr8all_defsEv.exit
  ret void

.lr.ph:                                           ; preds = %_ZN4llvm12MachineInstr8all_defsEv.exit, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit
  %.sroa.06.015 = phi ptr [ %.sroa.06.1, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit ], [ %.sroa.011.1.i.i, %_ZN4llvm12MachineInstr8all_defsEv.exit ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !68
  %i.m = icmp eq i32 %i.l, %1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.n = load i32, ptr %.sroa.06.015, align 8
  %i.o = and i32 %i.n, -67108865
  store i32 %i.o, ptr %.sroa.06.015, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.015, i64 32 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.p, %i.f
  br i1 %.not1.i.i, label %._crit_edge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.sroa.06.1 = phi ptr [ %i.t, %bb.e ], [ %i.p, %bb.d ] ; 4 uses
  %i.q = load i32, ptr %.sroa.06.1, align 8
  %i.r = and i32 %i.q, 16777471
  %i.s = icmp eq i32 %i.r, 16777216
  br i1 %i.s, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.1, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.f
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph.i.i, !llvm.loop !7

_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit: ; preds = %.lr.ph.i.i
  %.not = icmp eq ptr %.sroa.06.1, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4llvm12MachineInstr23setRegisterDefReadUndefENS_8RegisterEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 %1, i1 noundef zeroext %2) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69, !noalias !603 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i24, ptr %i.c, align 8, !noalias !603 ; 2 uses
  %i.e = zext i24 %i.d to i64
  %.idx.i = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr i8, ptr %i.b, i64 %.idx.i  ; 5 uses
  %.not1.i.i.i.i.i = icmp eq i24 %i.d, 0
  br i1 %.not1.i.i.i.i.i, label %_ZN4llvm12MachineInstr8all_defsEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %bb.b
  %.sroa.011.0.i.i = phi ptr [ %i.j, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.g = load i32, ptr %.sroa.011.0.i.i, align 8, !noalias !604
  %i.h = and i32 %i.g, 16777471
  %i.i = icmp eq i32 %i.h, 16777216
  br i1 %i.i, label %_ZN4llvm12MachineInstr8all_defsEv.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.j, %i.f
  br i1 %.not.i.i.i.i.i, label %._crit_edge, label %.lr.ph.i.i.i.i.i, !llvm.loop !7

_ZN4llvm12MachineInstr8all_defsEv.exit:           ; preds = %.lr.ph.i.i.i.i.i, %bb.a
  %.sroa.011.1.i.i = phi ptr [ %i.b, %bb.a ], [ %.sroa.011.0.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.not1516 = icmp eq ptr %.sroa.011.1.i.i, %i.f
  br i1 %.not1516, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm12MachineInstr8all_defsEv.exit
  %i.k = select i1 %2, i32 268435456, i32 0
  br label %bb.c

._crit_edge:                                      ; preds = %bb.b, %.critedge, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit, %bb.f, %_ZN4llvm12MachineInstr8all_defsEv.exit
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit
  %.sroa.07.017 = phi ptr [ %.sroa.011.1.i.i, %.lr.ph ], [ %.sroa.07.1, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.07.017, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !68
  %i.n = icmp eq i32 %i.m, %1
  br i1 %i.n, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %.sroa.07.017, align 8     ; 2 uses
  %i.p = and i32 %i.o, 1048320
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = and i32 %i.o, -268435457
  %i.r = or disjoint i32 %i.q, %i.k
  store i32 %i.r, ptr %.sroa.07.017, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.07.017, i64 32 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.s, %i.f
  br i1 %.not1.i.i, label %._crit_edge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge, %bb.f
  %.sroa.07.1 = phi ptr [ %i.w, %bb.f ], [ %i.s, %.critedge ] ; 4 uses
  %i.t = load i32, ptr %.sroa.07.1, align 8
  %i.u = and i32 %i.t, 16777471
  %i.v = icmp eq i32 %i.u, 16777216
  br i1 %i.v, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.07.1, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, %i.f
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph.i.i, !llvm.loop !7

_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit: ; preds = %.lr.ph.i.i
  %.not15 = icmp eq ptr %.sroa.07.1, %i.f
  br i1 %.not15, label %._crit_edge, label %bb.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm12MachineInstr18addRegisterDefinedENS_8RegisterEPKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %.fr.i = freeze i32 %1                          ; 7 uses
  %i.a = add i32 %.fr.i, -1
  %i.b = icmp ult i32 %i.a, 1073741823
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i24, ptr %i.c, align 8              ; 2 uses
  %.not4058.i = icmp eq i24 %i.d, 0
  br i1 %.not4058.i, label %_ZN4llvm12MachineInstr22findRegisterDefOperandENS_8RegisterEPKNS_18TargetRegisterInfoEbb.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %2, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = zext nneg i32 %.fr.i to i64
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !69   ; 3 uses
  %i.j = zext i24 %i.d to i64                     ; 2 uses
  br i1 %.not, label %.lr.ph.split.us.split.split.i, label %.lr.ph.split.i

.lr.ph.split.us.split.split.i:                    ; preds = %.lr.ph.i, %_ZNK4llvm14MCRegisterInfo13isSubRegisterENS_10MCRegisterES1_.exit.thread.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZNK4llvm14MCRegisterInfo13isSubRegisterENS_10MCRegisterES1_.exit.thread.us.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %indvars.iv.i ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = and i32 %i.l, 16777471
  %or.cond55.us.i = icmp eq i32 %i.m, 16777216
  br i1 %or.cond55.us.i, label %_ZNK4llvm14MCRegisterInfo13isSubRegisterENS_10MCRegisterES1_.exit.us.i, label %_ZNK4llvm14MCRegisterInfo13isSubRegisterENS_10MCRegisterES1_.exit.thread.us.i

_ZNK4llvm14MCRegisterInfo13isSubRegisterENS_10MCRegisterES1_.exit.us.i: ; preds = %.lr.ph.split.us.split.split.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !68
  %.not.i = icmp eq i32 %i.o, %.fr.i
  br i1 %.not.i, label %.loopexit, label %_ZNK4llvm14MCRegisterInfo13isSubRegisterENS_10MCRegisterES1_.exit.thread.us.i

_ZNK4llvm14MCRegisterInfo13isSubRegisterENS_10MCRegisterES1_.exit.thread.us.i: ; preds = %_ZNK4llvm14MCRegisterInfo13isSubRegisterENS_10MCRegisterES1_.exit.us.i, %.lr.ph.split.us.split.split.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not40.us.i = icmp eq i64 %indvars.iv.next.i, %i.j
  br i1 %.not40.us.i, label %_ZN4llvm12MachineInstr22findRegisterDefOperandENS_8RegisterEPKNS_18TargetRegisterInfoEbb.exit.thread, label %.lr.ph.split.us.split.split.i, !llvm.loop !4

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZNK4llvm14MCRegisterInfo13isSubRegisterENS_10MCRegisterES1_.exit.thread.i
  %indvars.iv131.i = phi i64 [ %indvars.iv.next132.i, %_ZNK4llvm14MCRegisterInfo13isSubRegisterENS_10MCRegisterES1_.exit.thread.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %indvars.iv131.i ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = and i32 %i.q, 16777471
  %or.cond55.i = icmp eq i32 %i.r, 16777216
  br i1 %or.cond55.i, label %bb.c, label %_ZNK4llvm14MCRegisterInfo13isSubRegisterENS_10MCRegisterES1_.exit.thread.i

bb.c:                                             ; preds = %.lr.ph.split.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !68   ; 3 uses
  %i.u = icmp ne i32 %i.t, %.fr.i                 ; 2 uses
  %i.v = add i32 %i.t, -1
  %i.w = icmp ult i32 %i.v, 1073741823
  %i.x = and i1 %i.u, %i.w
  br i1 %i.x, label %bb.d, label %_ZNK4llvm14MCRegisterInfo13isSubRegisterENS_10MCRegisterES1_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !298, !noalias !619
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !299, !noalias !619
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !301, !noalias !619
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.ad ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !64, !noalias !619 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %i.af, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK4llvm14MCRegisterInfo13isSubRegisterENS_10MCRegisterES1_.exit.thread.i, label %.lr.ph.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i:                   ; preds = %bb.d
  %i.ag = zext i16 %i.af to i32
  %i.ah = add nuw nsw i32 %.fr.i, %i.ag
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i
  %.pn.i.i.i = phi ptr [ %i.al, %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i.i ], [ %i.ae, %.lr.ph.i.i.i.i.preheader.i.i.i ]
  %i.ai = phi i32 [ %i.ao, %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i.i ], [ %i.ah, %.lr.ph.i.i.i.i.preheader.i.i.i ] ; 2 uses
  %i.aj = and i32 %i.ai, 65535
  %i.ak = icmp eq i32 %i.t, %i.aj
  br i1 %i.ak, label %_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb.exit, label %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i.i

_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 2 ; 2 uses
  %i.am = load i16, ptr %i.al, align 2, !tbaa !64, !noalias !620 ; 2 uses
  %i.an = zext i16 %i.am to i32
  %i.ao = add i32 %i.ai, %i.an
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNK4llvm14MCRegisterInfo13isSubRegisterENS_10MCRegisterES1_.exit.thread.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !5

_ZNK4llvm14MCRegisterInfo13isSubRegisterENS_10MCRegisterES1_.exit.i: ; preds = %bb.c
  br i1 %i.u, label %_ZNK4llvm14MCRegisterInfo13isSubRegisterENS_10MCRegisterES1_.exit.thread.i, label %.loopexit

_ZNK4llvm14MCRegisterInfo13isSubRegisterENS_10MCRegisterES1_.exit.thread.i: ; preds = %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i.i.i, %_ZNK4llvm14MCRegisterInfo13isSubRegisterENS_10MCRegisterES1_.exit.i, %bb.d, %.lr.ph.split.i
  %indvars.iv.next132.i = add nuw nsw i64 %indvars.iv131.i, 1 ; 2 uses
  %.not40.i = icmp eq i64 %indvars.iv.next132.i, %i.j
  br i1 %.not40.i, label %_ZN4llvm12MachineInstr22findRegisterDefOperandENS_8RegisterEPKNS_18TargetRegisterInfoEbb.exit.thread, label %.lr.ph.split.i, !llvm.loop !4

_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.not.not = icmp eq ptr %i.i, null
  br i1 %.not.not, label %_ZN4llvm12MachineInstr22findRegisterDefOperandENS_8RegisterEPKNS_18TargetRegisterInfoEbb.exit.thread, label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !69, !noalias !621 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = load i24, ptr %i.ar, align 8, !noalias !621 ; 2 uses
  %i.at = zext i24 %i.as to i64
  %.idx.i = shl nuw nsw i64 %i.at, 5
  %i.au = getelementptr i8, ptr %i.aq, i64 %.idx.i ; 5 uses
  %.not1.i.i.i.i.i = icmp eq i24 %i.as, 0
  br i1 %.not1.i.i.i.i.i, label %_ZN4llvm12MachineInstr8all_defsEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.sroa.011.0.i.i = phi ptr [ %i.ay, %bb.f ], [ %i.aq, %bb.e ] ; 3 uses
  %i.av = load i32, ptr %.sroa.011.0.i.i, align 8, !noalias !622
  %i.aw = and i32 %i.av, 16777471
  %i.ax = icmp eq i32 %i.aw, 16777216
  br i1 %i.ax, label %_ZN4llvm12MachineInstr8all_defsEv.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.011.0.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ay, %i.au
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm12MachineInstr22findRegisterDefOperandENS_8RegisterEPKNS_18TargetRegisterInfoEbb.exit.thread, label %.lr.ph.i.i.i.i.i, !llvm.loop !7

_ZN4llvm12MachineInstr8all_defsEv.exit:           ; preds = %.lr.ph.i.i.i.i.i, %bb.e
  %.sroa.011.1.i.i = phi ptr [ %i.aq, %bb.e ], [ %.sroa.011.0.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.not2735 = icmp eq ptr %.sroa.011.1.i.i, %i.au
  br i1 %.not2735, label %_ZN4llvm12MachineInstr22findRegisterDefOperandENS_8RegisterEPKNS_18TargetRegisterInfoEbb.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm12MachineInstr8all_defsEv.exit, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit
  %.sroa.013.036 = phi ptr [ %.sroa.013.1, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit ], [ %.sroa.011.1.i.i, %_ZN4llvm12MachineInstr8all_defsEv.exit ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.013.036, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !68
  %i.bb = icmp eq i32 %i.ba, %.fr.i
  br i1 %i.bb, label %bb.g, label %.critedge11

bb.g:                                             ; preds = %.lr.ph
  %i.bc = load i32, ptr %.sroa.013.036, align 8
  %i.bd = and i32 %i.bc, 1048320
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %.loopexit, label %.critedge11

.critedge11:                                      ; preds = %.lr.ph, %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.013.036, i64 32 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.bf, %i.au
  br i1 %.not1.i.i, label %_ZN4llvm12MachineInstr22findRegisterDefOperandENS_8RegisterEPKNS_18TargetRegisterInfoEbb.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge11, %bb.h
  %.sroa.013.1 = phi ptr [ %i.bj, %bb.h ], [ %i.bf, %.critedge11 ] ; 4 uses
  %i.bg = load i32, ptr %.sroa.013.1, align 8
  %i.bh = and i32 %i.bg, 16777471
  %i.bi = icmp eq i32 %i.bh, 16777216
  br i1 %i.bi, label %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.013.1, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bj, %i.au
  br i1 %.not.i.i, label %_ZN4llvm12MachineInstr22findRegisterDefOperandENS_8RegisterEPKNS_18TargetRegisterInfoEbb.exit.thread, label %.lr.ph.i.i, !llvm.loop !7

_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit: ; preds = %.lr.ph.i.i
  %.not27 = icmp eq ptr %.sroa.013.1, %i.au
  br i1 %.not27, label %_ZN4llvm12MachineInstr22findRegisterDefOperandENS_8RegisterEPKNS_18TargetRegisterInfoEbb.exit.thread, label %.lr.ph

_ZN4llvm12MachineInstr22findRegisterDefOperandENS_8RegisterEPKNS_18TargetRegisterInfoEbb.exit.thread: ; preds = %bb.f, %.critedge11, %_ZN4llvm20filter_iterator_baseIPNS_14MachineOperandEPFbRKS1_ESt26bidirectional_iterator_tagEppEv.exit, %bb.h, %_ZNK4llvm14MCRegisterInfo13isSubRegisterENS_10MCRegisterES1_.exit.thread.i, %_ZNK4llvm14MCRegisterInfo13isSubRegisterENS_10MCRegisterES1_.exit.thread.us.i, %_ZN4llvm12MachineInstr8all_defsEv.exit, %bb.b, %_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.bk, align 8, !tbaa !67, !alias.scope !623
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.fr.i, ptr %i.bl, align 4, !tbaa !68, !alias.scope !623
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false), !alias.scope !623
  store i32 50331648, ptr %3, align 8, !alias.scope !623
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !73
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !122
  call void @_ZN4llvm12MachineInstr10addOperandERNS_15MachineFunctionERKNS_14MachineOperandE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(1065) %i.bq, ptr noundef nonnull readonly align 8 dereferenceable(32) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %_ZNK4llvm14MCRegisterInfo13isSubRegisterENS_10MCRegisterES1_.exit.i, %_ZNK4llvm14MCRegisterInfo13isSubRegisterENS_10MCRegisterES1_.exit.us.i, %_ZNK4llvm12MachineInstr25findRegisterDefOperandIdxENS_8RegisterEPKNS_18TargetRegisterInfoEbb.exit, %_ZN4llvm12MachineInstr22findRegisterDefOperandENS_8RegisterEPKNS_18TargetRegisterInfoEbb.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm12MachineInstr21setPhysRegsDeadExceptENS_8ArrayRefINS_8RegisterEEERKNS_18TargetRegisterInfoE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(316) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i24, ptr %i.c, align 8              ; 2 uses
  %i.e = zext i24 %i.d to i64
  %.idx = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx ; 2 uses
  %.not61 = icmp eq i24 %i.d, 0
  br i1 %.not61, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2 ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = lshr i64 %2, 2                           ; 2 uses
  %.not.i = icmp eq i64 %i.i, 0
  br label %.outer

.outer:                                           ; preds = %.thread, %.lr.ph
  %.063.ph = phi i1 [ true, %.thread ], [ false, %.lr.ph ]
  %.02462.ph = phi ptr [ %i.bk, %.thread ], [ %i.b, %.lr.ph ]
  br label %bb.b

._crit_edge:                                      ; preds = %.fold.split
  br i1 %.063.ph, label %._crit_edge.thread, label %.loopexit

bb.b:                                             ; preds = %.outer, %.fold.split
  %.02462 = phi ptr [ %i.bj, %.fold.split ], [ %.02462.ph, %.outer ] ; 6 uses
  %i.j = load i32, ptr %.02462, align 8           ; 2 uses
  %trunc = trunc i32 %i.j to i8
  switch i8 %trunc, label %.fold.split [
    i8 12, label %.thread
    i8 0, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = and i32 %i.j, 16777216
  %.not41 = icmp eq i32 %i.k, 0
  br i1 %.not41, label %.fold.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.02462, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !68   ; 15 uses
  %i.n = add i32 %i.m, -1
  %i.o = icmp ult i32 %i.n, 1073741823
  br i1 %i.o, label %bb.e, label %.fold.split

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit55.thread75.i.i.i.i.i"
  %.0108.i.i.i.i.i = phi i64 [ %i.aj, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit55.thread75.i.i.i.i.i" ], [ %i.i, %bb.e ] ; 2 uses
  %.029107.i.i.i.i.i = phi ptr [ %i.ai, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit55.thread75.i.i.i.i.i" ], [ %1, %bb.e ] ; 13 uses
  %.029.val46.i.i.i.i.i = load i32, ptr %.029107.i.i.i.i.i, align 4, !tbaa !626 ; 3 uses
  %i.p = icmp eq i32 %.029.val46.i.i.i.i.i, %i.m
  br i1 %i.p, label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_8RegisterEEEZNS_12MachineInstr21setPhysRegsDeadExceptES3_RKNS_18TargetRegisterInfoEE3$_0EEbOT_T0_.exit", label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.q = add i32 %.029.val46.i.i.i.i.i, -1
  %i.r = icmp ult i32 %i.q, 1073741823
  br i1 %i.r, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit.thread66.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit.i.i.i.i.i": ; preds = %bb.f
  %i.s = tail call noundef zeroext i1 @_ZNK4llvm14MCRegisterInfo11regsOverlapENS_10MCRegisterES1_(ptr noundef nonnull align 8 dereferenceable(316) %3, i32 %.029.val46.i.i.i.i.i, i32 %i.m) #26
  br i1 %i.s, label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_8RegisterEEEZNS_12MachineInstr21setPhysRegsDeadExceptES3_RKNS_18TargetRegisterInfoEE3$_0EEbOT_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit.thread66.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit.thread66.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit.i.i.i.i.i", %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.029107.i.i.i.i.i, i64 4
  %.val43.i.i.i.i.i = load i32, ptr %i.t, align 4, !tbaa !626 ; 3 uses
  %i.u = icmp eq i32 %.val43.i.i.i.i.i, %i.m
  br i1 %i.u, label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_8RegisterEEEZNS_12MachineInstr21setPhysRegsDeadExceptES3_RKNS_18TargetRegisterInfoEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit88", label %bb.g

bb.g:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit.thread66.i.i.i.i.i"
  %i.v = add i32 %.val43.i.i.i.i.i, -1
  %i.w = icmp ult i32 %i.v, 1073741823
  br i1 %i.w, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit49.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit49.thread69.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit49.i.i.i.i.i": ; preds = %bb.g
  %i.x = tail call noundef zeroext i1 @_ZNK4llvm14MCRegisterInfo11regsOverlapENS_10MCRegisterES1_(ptr noundef nonnull align 8 dereferenceable(316) %3, i32 %.val43.i.i.i.i.i, i32 %i.m) #26
  br i1 %i.x, label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_8RegisterEEEZNS_12MachineInstr21setPhysRegsDeadExceptES3_RKNS_18TargetRegisterInfoEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit49.thread69.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit49.thread69.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit49.i.i.i.i.i", %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %.029107.i.i.i.i.i, i64 8
  %.val40.i.i.i.i.i = load i32, ptr %i.y, align 4, !tbaa !626 ; 3 uses
  %i.z = icmp eq i32 %.val40.i.i.i.i.i, %i.m
  br i1 %i.z, label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_8RegisterEEEZNS_12MachineInstr21setPhysRegsDeadExceptES3_RKNS_18TargetRegisterInfoEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit90", label %bb.h

bb.h:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit49.thread69.i.i.i.i.i"
  %i.aa = add i32 %.val40.i.i.i.i.i, -1
  %i.ab = icmp ult i32 %i.aa, 1073741823
  br i1 %i.ab, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit52.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit52.thread72.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit52.i.i.i.i.i": ; preds = %bb.h
  %i.ac = tail call noundef zeroext i1 @_ZNK4llvm14MCRegisterInfo11regsOverlapENS_10MCRegisterES1_(ptr noundef nonnull align 8 dereferenceable(316) %3, i32 %.val40.i.i.i.i.i, i32 %i.m) #26
  br i1 %i.ac, label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_8RegisterEEEZNS_12MachineInstr21setPhysRegsDeadExceptES3_RKNS_18TargetRegisterInfoEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit84", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit52.thread72.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit52.thread72.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit52.i.i.i.i.i", %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %.029107.i.i.i.i.i, i64 12
  %.val37.i.i.i.i.i = load i32, ptr %i.ad, align 4, !tbaa !626 ; 3 uses
  %i.ae = icmp eq i32 %.val37.i.i.i.i.i, %i.m
  br i1 %i.ae, label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_8RegisterEEEZNS_12MachineInstr21setPhysRegsDeadExceptES3_RKNS_18TargetRegisterInfoEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit92", label %bb.i

bb.i:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit52.thread72.i.i.i.i.i"
  %i.af = add i32 %.val37.i.i.i.i.i, -1
  %i.ag = icmp ult i32 %i.af, 1073741823
  br i1 %i.ag, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit55.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit55.thread75.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit55.i.i.i.i.i": ; preds = %bb.i
  %i.ah = tail call noundef zeroext i1 @_ZNK4llvm14MCRegisterInfo11regsOverlapENS_10MCRegisterES1_(ptr noundef nonnull align 8 dereferenceable(316) %3, i32 %.val37.i.i.i.i.i, i32 %i.m) #26
  br i1 %i.ah, label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_8RegisterEEEZNS_12MachineInstr21setPhysRegsDeadExceptES3_RKNS_18TargetRegisterInfoEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit86", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit55.thread75.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit55.thread75.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit55.i.i.i.i.i", %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.029107.i.i.i.i.i, i64 16 ; 3 uses
  %i.aj = add nsw i64 %.0108.i.i.i.i.i, -1
  %i.ak = icmp sgt i64 %.0108.i.i.i.i.i, 1
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !624

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit55.thread75.i.i.i.i.i"
  %.pre.i.i.i.i.i = ptrtoint ptr %i.ai to i64
  %.pre119.i.i.i.i.i = sub i64 %i.h, %.pre.i.i.i.i.i
  %i.al = ashr exact i64 %.pre119.i.i.i.i.i, 2
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %bb.e
  %.pre-phi120.i.i.i.i.i = phi i64 [ %i.al, %._crit_edge.loopexit.i.i.i.i.i ], [ %2, %bb.e ]
  %.029.lcssa.i.i.i.i.i = phi ptr [ %i.ai, %._crit_edge.loopexit.i.i.i.i.i ], [ %1, %bb.e ] ; 6 uses
  switch i64 %.pre-phi120.i.i.i.i.i, label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_8RegisterEEEZNS_12MachineInstr21setPhysRegsDeadExceptES3_RKNS_18TargetRegisterInfoEE3$_0EEbOT_T0_.exit.thread" [
    i64 3, label %bb.j
    i64 2, label %bb.l
    i64 1, label %bb.n
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i
  %.029.val.i.i.i.i.i = load i32, ptr %.029.lcssa.i.i.i.i.i, align 4, !tbaa !626 ; 3 uses
  %i.am = icmp eq i32 %.029.val.i.i.i.i.i, %i.m
  br i1 %i.am, label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_8RegisterEEEZNS_12MachineInstr21setPhysRegsDeadExceptES3_RKNS_18TargetRegisterInfoEE3$_0EEbOT_T0_.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = add i32 %.029.val.i.i.i.i.i, -1
  %i.ao = icmp ult i32 %i.an, 1073741823
  br i1 %i.ao, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit58.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit58.thread78.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit58.i.i.i.i.i": ; preds = %bb.k
  %i.ap = tail call noundef zeroext i1 @_ZNK4llvm14MCRegisterInfo11regsOverlapENS_10MCRegisterES1_(ptr noundef nonnull align 8 dereferenceable(316) %3, i32 %.029.val.i.i.i.i.i, i32 %i.m) #26
  br i1 %i.ap, label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_8RegisterEEEZNS_12MachineInstr21setPhysRegsDeadExceptES3_RKNS_18TargetRegisterInfoEE3$_0EEbOT_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit58.thread78.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit58.thread78.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit58.i.i.i.i.i", %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 4
  br label %bb.l

bb.l:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit58.thread78.i.i.i.i.i", %._crit_edge.i.i.i.i.i
  %.1.i.i.i.i.i = phi ptr [ %i.aq, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit58.thread78.i.i.i.i.i" ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 4 uses
  %.1.val.i.i.i.i.i = load i32, ptr %.1.i.i.i.i.i, align 4, !tbaa !626 ; 3 uses
  %i.ar = icmp eq i32 %.1.val.i.i.i.i.i, %i.m
  br i1 %i.ar, label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_8RegisterEEEZNS_12MachineInstr21setPhysRegsDeadExceptES3_RKNS_18TargetRegisterInfoEE3$_0EEbOT_T0_.exit", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = add i32 %.1.val.i.i.i.i.i, -1
  %i.at = icmp ult i32 %i.as, 1073741823
  br i1 %i.at, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit61.i.i.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit61.thread81.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit61.i.i.i.i.i": ; preds = %bb.m
  %i.au = tail call noundef zeroext i1 @_ZNK4llvm14MCRegisterInfo11regsOverlapENS_10MCRegisterES1_(ptr noundef nonnull align 8 dereferenceable(316) %3, i32 %.1.val.i.i.i.i.i, i32 %i.m) #26
  br i1 %i.au, label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_8RegisterEEEZNS_12MachineInstr21setPhysRegsDeadExceptES3_RKNS_18TargetRegisterInfoEE3$_0EEbOT_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit61.thread81.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit61.thread81.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit61.i.i.i.i.i", %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 4
  br label %bb.n

bb.n:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit61.thread81.i.i.i.i.i", %._crit_edge.i.i.i.i.i
  %.2.i.i.i.i.i = phi ptr [ %i.av, %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit61.thread81.i.i.i.i.i" ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %.2.val.i.i.i.i.i = load i32, ptr %.2.i.i.i.i.i, align 4, !tbaa !626 ; 3 uses
  %i.aw = icmp eq i32 %.2.val.i.i.i.i.i, %i.m
  br i1 %i.aw, label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_8RegisterEEEZNS_12MachineInstr21setPhysRegsDeadExceptES3_RKNS_18TargetRegisterInfoEE3$_0EEbOT_T0_.exit", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = add i32 %.2.val.i.i.i.i.i, -1
  %i.ay = icmp ult i32 %i.ax, 1073741823
  br i1 %i.ay, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit64.i.i.i.i.i", label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_8RegisterEEEZNS_12MachineInstr21setPhysRegsDeadExceptES3_RKNS_18TargetRegisterInfoEE3$_0EEbOT_T0_.exit.thread"

"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit64.i.i.i.i.i": ; preds = %bb.o
  %i.az = tail call noundef zeroext i1 @_ZNK4llvm14MCRegisterInfo11regsOverlapENS_10MCRegisterES1_(ptr noundef nonnull align 8 dereferenceable(316) %3, i32 %.2.val.i.i.i.i.i, i32 %i.m) #26
  br i1 %i.az, label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_8RegisterEEEZNS_12MachineInstr21setPhysRegsDeadExceptES3_RKNS_18TargetRegisterInfoEE3$_0EEbOT_T0_.exit", label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_8RegisterEEEZNS_12MachineInstr21setPhysRegsDeadExceptES3_RKNS_18TargetRegisterInfoEE3$_0EEbOT_T0_.exit.thread"

"_ZN4llvm7none_ofIRNS_8ArrayRefINS_8RegisterEEEZNS_12MachineInstr21setPhysRegsDeadExceptES3_RKNS_18TargetRegisterInfoEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit49.i.i.i.i.i"
  %i.ba = getelementptr inbounds nuw i8, ptr %.029107.i.i.i.i.i, i64 4
  br label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_8RegisterEEEZNS_12MachineInstr21setPhysRegsDeadExceptES3_RKNS_18TargetRegisterInfoEE3$_0EEbOT_T0_.exit"

"_ZN4llvm7none_ofIRNS_8ArrayRefINS_8RegisterEEEZNS_12MachineInstr21setPhysRegsDeadExceptES3_RKNS_18TargetRegisterInfoEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit84": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit52.i.i.i.i.i"
  %i.bb = getelementptr inbounds nuw i8, ptr %.029107.i.i.i.i.i, i64 8
  br label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_8RegisterEEEZNS_12MachineInstr21setPhysRegsDeadExceptES3_RKNS_18TargetRegisterInfoEE3$_0EEbOT_T0_.exit"

"_ZN4llvm7none_ofIRNS_8ArrayRefINS_8RegisterEEEZNS_12MachineInstr21setPhysRegsDeadExceptES3_RKNS_18TargetRegisterInfoEE3$_0EEbOT_T0_.exit.loopexit.split.loop.exit86": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZN4llvm12MachineInstr21setPhysRegsDeadExceptENS2_8ArrayRefINS2_8RegisterEEERKNS2_18TargetRegisterInfoEE3$_0EclIPKS5_EEbT_.exit55.i.i.i.i.i"
  %i.bc = getelementptr inbounds nuw i8, ptr %.029107.i.i.i.i.i, i64 12
  br label %"_ZN4llvm7none_ofIRNS_8ArrayRefINS_8RegisterEEEZNS_12MachineInstr21setPhysRegsDeadExceptES3_RKNS_18TargetRegisterInfoEE3$_0EEbOT_T0_.exit"
end_hunk_0
