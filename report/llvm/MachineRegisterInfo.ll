Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachineRegisterInfo?download=true
inline.NumInlined: 1629
inline.NumDeleted: 952
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm19MachineRegisterInfo26disableCalleeSavedRegisterENS_10MCRegisterE:bb.a
  %.1.i.i.i = phi ptr [ %.032.i.i.i, %.lr.ph.i.i.i ], [ %i.cb, %bb.s ] ; 2 uses
  %.017.i.i.i = getelementptr inbounds nuw i8, ptr %.01733.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.017.i.i.i, %i.av
  br i1 %.not.i.i.i, label %_ZN4llvm5eraseINS_11SmallVectorItLj16EEENS_10MCRegisterEEEvRT_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !441

_ZN4llvm5eraseINS_11SmallVectorItLj16EEENS_10MCRegisterEEEvRT_T0_.exit: ; preds = %bb.t, %._crit_edge.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i, %_ZSt9__find_ifIPtN9__gnu_cxx5__ops16_Iter_equals_valIKN4llvm10MCRegisterEEEET_S8_S8_T0_.exit.i.i.i
  %.016.i.i.i = phi ptr [ %.028.i.i.i.i.i, %_ZSt9__find_ifIPtN9__gnu_cxx5__ops16_Iter_equals_valIKN4llvm10MCRegisterEEEET_S8_S8_T0_.exit.i.i.i ], [ %i.av, %._crit_edge._crit_edge52.i.i.i.i.i ], [ %i.av, %._crit_edge.i.i.i.i.i ], [ %.1.i.i.i, %bb.t ]
  %i.cc = ptrtoint ptr %.016.i.i.i to i64
  %i.cd = sub i64 %i.cc, %i.as
  %i.ce = ashr exact i64 %i.cd, 1                 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.027, i64 2 ; 2 uses
  %.not15 = icmp eq ptr %i.cf, %i.ao
  br i1 %.not15, label %._crit_edge30, label %bb.j, !llvm.loop !442
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm19MachineRegisterInfo18getCalleeSavedRegsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(520) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i8, ptr %i.a, align 8, !tbaa !233, !range !23, !noundef !24
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !234
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !104
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !226, !nonnull !24, !align !227 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(344) %i.h) #23, !inline_history !0 ; 2 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !104
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(316) %i.l, ptr noundef %i.m) #23 ; 5 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !334  ; 2 uses
  %.not11 = icmp eq i16 %i.r, 0
  br i1 %.not11, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %i.s = phi i16 [ %i.ak, %bb.e ], [ %i.r, %bb.c ]
  %i.t = phi ptr [ %i.aj, %bb.e ], [ %i.q, %bb.c ]
  %.012 = phi i32 [ %i.ah, %bb.e ], [ 0, %bb.c ]
  %i.u = load ptr, ptr %0, align 8, !tbaa !104
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !226, !nonnull !24, !align !227 ; 2 uses
  %i.x = zext i16 %i.s to i32
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 512
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(344) %i.w, i32 %i.x) #23
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.ac = load ptr, ptr %0, align 8, !tbaa !104
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !444
  %i.af = load i16, ptr %i.t, align 2, !tbaa !334
  %i.ag = zext i16 %i.af to i32
  tail call void @_ZN4llvm19MachineRegisterInfo26disableCalleeSavedRegisterENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(520) %i.ae, i32 %i.ag)
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.ah = add i32 %.012, 1                        ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.ai ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !334 ; 2 uses
  %.not = icmp eq i16 %i.ak, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !443

.loopexit:                                        ; preds = %bb.e, %bb.c, %bb.b
  %.09 = phi ptr [ %i.e, %bb.b ], [ %i.q, %bb.c ], [ %i.q, %bb.e ]
  ret ptr %.09
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm19MachineRegisterInfo18setCalleeSavedRegsENS_8ArrayRefItEE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr %1, i64 %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !233, !range !23, !noundef !24
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i64, ptr %i.d, align 8, !tbaa !235
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.d, align 8, !tbaa !235
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.e = phi i64 [ %.pre, %._crit_edge ], [ 0, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !234
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.e
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2
  %i.k = tail call noundef ptr @_ZN4llvm15SmallVectorImplItE6insertIPKtvEEPtS5_T_S6_(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef %i.i, ptr noundef %1, ptr noundef %i.j) ; 0 uses
  %i.l = load i64, ptr %i.h, align 8, !tbaa !235  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.n = load i64, ptr %i.m, align 8, !tbaa !236
  %.not.i = icmp ult i64 %i.l, %i.n
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !257

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm23SmallVectorTemplateBaseItLb1EE15growAndPushBackEt(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i16 noundef zeroext 0)
  br label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !234
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.l
  store i16 0, ptr %i.p, align 1
  %i.q = load i64, ptr %i.h, align 8, !tbaa !235
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.h, align 8, !tbaa !235
  br label %_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit

_ZN4llvm23SmallVectorTemplateBaseItLb1EE9push_backEt.exit: ; preds = %bb.d, %bb.e
  store i8 1, ptr %i.a, align 8, !tbaa !233
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm19MachineRegisterInfo17isReservedRegUnitENS_9MCRegUnitE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(520) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !104
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !226, !nonnull !24, !align !227 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(344) %i.c) #23, !inline_history !0 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !455
  %i.j = zext i32 %1 to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = load i16, ptr %i.k, align 2, !tbaa !334  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !334
  %.not = icmp eq i16 %i.l, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !456, !noalias !457 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not5.i.i.i.i.i, label %.critedge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !458, !noalias !457
  %.val.val.i.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !27, !noalias !459
  br label %.lr.ph.i.i.i.i.i

"_ZN4llvm6all_ofINS_14iterator_rangeINS_18MCSuperRegIteratorEEEZNKS_19MachineRegisterInfo17isReservedRegUnitENS_9MCRegUnitEE3$_0EEbOT_T0_.exit.loopexit": ; preds = %bb.b
  %.not19 = icmp eq i16 %.sroa.810.017, 0
  br i1 %.not19, label %.critedge, label %.lr.ph.i.i.i.i.i, !llvm.loop !453

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.split, %"_ZN4llvm6all_ofINS_14iterator_rangeINS_18MCSuperRegIteratorEEEZNKS_19MachineRegisterInfo17isReservedRegUnitENS_9MCRegUnitEE3$_0EEbOT_T0_.exit.loopexit"
  %.sroa.810.017 = phi i16 [ %i.n, %.lr.ph.split ], [ 0, %"_ZN4llvm6all_ofINS_14iterator_rangeINS_18MCSuperRegIteratorEEEZNKS_19MachineRegisterInfo17isReservedRegUnitENS_9MCRegUnitEE3$_0EEbOT_T0_.exit.loopexit" ] ; 2 uses
  %.sroa.08.016 = phi i16 [ %i.l, %.lr.ph.split ], [ %.sroa.810.017, %"_ZN4llvm6all_ofINS_14iterator_rangeINS_18MCSuperRegIteratorEEEZNKS_19MachineRegisterInfo17isReservedRegUnitENS_9MCRegUnitEE3$_0EEbOT_T0_.exit.loopexit" ] ; 2 uses
  %i.t = zext i16 %.sroa.08.016 to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !461, !noalias !457
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.x
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.z = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.ak, %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i ] ; 2 uses
  %i.aa = phi i16 [ %.sroa.08.016, %.lr.ph.i.i.i.i.i ], [ %i.am, %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i ] ; 2 uses
  %i.ab = zext i16 %i.aa to i32                   ; 2 uses
  %i.ac = and i32 %i.ab, 63
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = lshr i32 %i.ab, 6
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !252, !noalias !459
  %i.aj = and i64 %i.ae, %i.ai
  %.not.i.i.i.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i, label %"_ZN4llvm6all_ofINS_14iterator_rangeINS_18MCSuperRegIteratorEEEZNKS_19MachineRegisterInfo17isReservedRegUnitENS_9MCRegUnitEE3$_0EEbOT_T0_.exit.loopexit", label %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i

_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i:  ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.al = load i16, ptr %i.z, align 2, !tbaa !334, !noalias !459 ; 2 uses
  %i.am = add i16 %i.al, %i.aa
  %.not.i.i.i.i.i.i.i = icmp eq i16 %i.al, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.critedge, label %bb.b, !llvm.loop !454

.critedge:                                        ; preds = %"_ZN4llvm6all_ofINS_14iterator_rangeINS_18MCSuperRegIteratorEEEZNKS_19MachineRegisterInfo17isReservedRegUnitENS_9MCRegUnitEE3$_0EEbOT_T0_.exit.loopexit", %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i, %.lr.ph, %bb.a
  %i.an = phi i1 [ true, %.lr.ph ], [ false, %bb.a ], [ true, %_ZN4llvm18MCSuperRegIteratorppEv.exit.i.i.i.i.i ], [ false, %"_ZN4llvm6all_ofINS_14iterator_rangeINS_18MCSuperRegIteratorEEEZNKS_19MachineRegisterInfo17isReservedRegUnitENS_9MCRegUnitEE3$_0EEbOT_T0_.exit.loopexit" ]
  ret i1 %i.an
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm19MachineRegisterInfo19updateDbgUsersToRegENS_10MCRegisterES1_NS_8ArrayRefIPNS_12MachineInstrEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(520) %0, i32 %1, i32 %2, ptr nofree readonly captures(address) %3, i64 %4) local_unnamed_addr #4 align 2 {
bb.a:
  %.fr = freeze i32 %1                            ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !104
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !226, !nonnull !24, !align !227 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(344) %i.c) #23, !inline_history !0 ; 6 uses
  %.idx = shl nuw nsw i64 %4, 3
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  %.not61 = icmp eq i64 %4, 0
  br i1 %.not61, label %._crit_edge, label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.a
  %i.i = add i32 %.fr, -1
  %i.j = icmp ult i32 %i.i, 1073741823            ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %"_ZZNK4llvm19MachineRegisterInfo19updateDbgUsersToRegENS_10MCRegisterES1_NS_8ArrayRefIPNS_12MachineInstrEEEENK3$_0clERNS_14MachineOperandE.exit34", %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph63, %"_ZZNK4llvm19MachineRegisterInfo19updateDbgUsersToRegENS_10MCRegisterES1_NS_8ArrayRefIPNS_12MachineInstrEEEENK3$_0clERNS_14MachineOperandE.exit34"
  %.01862 = phi ptr [ %3, %.lr.ph63 ], [ %i.bg, %"_ZZNK4llvm19MachineRegisterInfo19updateDbgUsersToRegENS_10MCRegisterES1_NS_8ArrayRefIPNS_12MachineInstrEEEENK3$_0clERNS_14MachineOperandE.exit34" ] ; 2 uses
  %i.k = load ptr, ptr %.01862, align 8, !tbaa !285 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  %i.m = load i32, ptr %i.l, align 4, !tbaa !336  ; 3 uses
  %i.n = and i32 %i.m, -2
  %spec.select.i = icmp eq i32 %i.n, 14
  br i1 %spec.select.i, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i32 %i.m, 14                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !280
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.s = load i24, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp ne i24 %i.s, 0
  %..i.i = zext i1 %i.t to i64
  %i.u = zext i24 %i.s to i64
  %i.v = add nsw i64 %i.u, -2
  %.sroa.5.0.i = select i1 %i.o, i64 %..i.i, i64 %i.v ; 2 uses
  %.sroa.05.0.idx.i = select i1 %i.o, i64 0, i64 64
  %.sroa.05.0.i = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.05.0.idx.i ; 3 uses
  %.idx65 = shl nuw nsw i64 %.sroa.5.0.i, 5
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 %.idx65 ; 2 uses
  %.not1959 = icmp eq i64 %.sroa.5.0.i, 0
  br i1 %.not1959, label %"_ZZNK4llvm19MachineRegisterInfo19updateDbgUsersToRegENS_10MCRegisterES1_NS_8ArrayRefIPNS_12MachineInstrEEEENK3$_0clERNS_14MachineOperandE.exit34", label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  br i1 %i.j, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %"_ZZNK4llvm19MachineRegisterInfo19updateDbgUsersToRegENS_10MCRegisterES1_NS_8ArrayRefIPNS_12MachineInstrEEEENK3$_0clERNS_14MachineOperandE.exit.us"
  %.060.us = phi ptr [ %i.ad, %"_ZZNK4llvm19MachineRegisterInfo19updateDbgUsersToRegENS_10MCRegisterES1_NS_8ArrayRefIPNS_12MachineInstrEEEENK3$_0clERNS_14MachineOperandE.exit.us" ], [ %.sroa.05.0.i, %.lr.ph ] ; 4 uses
  %i.x = load i32, ptr %.060.us, align 8
  %i.y = and i32 %i.x, 255
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.d, label %"_ZZNK4llvm19MachineRegisterInfo19updateDbgUsersToRegENS_10MCRegisterES1_NS_8ArrayRefIPNS_12MachineInstrEEEENK3$_0clERNS_14MachineOperandE.exit.us"

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.aa = getelementptr inbounds nuw i8, ptr %.060.us, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !232
  %i.ac = icmp eq i32 %i.ab, %.fr
  br i1 %i.ac, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread27.sink.split.i.us, label %"_ZZNK4llvm19MachineRegisterInfo19updateDbgUsersToRegENS_10MCRegisterES1_NS_8ArrayRefIPNS_12MachineInstrEEEENK3$_0clERNS_14MachineOperandE.exit.us"

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread27.sink.split.i.us: ; preds = %bb.d
  tail call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %.060.us, i32 %2) #23
  br label %"_ZZNK4llvm19MachineRegisterInfo19updateDbgUsersToRegENS_10MCRegisterES1_NS_8ArrayRefIPNS_12MachineInstrEEEENK3$_0clERNS_14MachineOperandE.exit.us"

"_ZZNK4llvm19MachineRegisterInfo19updateDbgUsersToRegENS_10MCRegisterES1_NS_8ArrayRefIPNS_12MachineInstrEEEENK3$_0clERNS_14MachineOperandE.exit.us": ; preds = %bb.d, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread27.sink.split.i.us, %.lr.ph.split.us
  %i.ad = getelementptr inbounds nuw i8, ptr %.060.us, i64 32 ; 2 uses
  %.not19.us = icmp eq ptr %i.ad, %i.w
  br i1 %.not19.us, label %"_ZZNK4llvm19MachineRegisterInfo19updateDbgUsersToRegENS_10MCRegisterES1_NS_8ArrayRefIPNS_12MachineInstrEEEENK3$_0clERNS_14MachineOperandE.exit34", label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %"_ZZNK4llvm19MachineRegisterInfo19updateDbgUsersToRegENS_10MCRegisterES1_NS_8ArrayRefIPNS_12MachineInstrEEEENK3$_0clERNS_14MachineOperandE.exit"
  %.060 = phi ptr [ %i.aq, %"_ZZNK4llvm19MachineRegisterInfo19updateDbgUsersToRegENS_10MCRegisterES1_NS_8ArrayRefIPNS_12MachineInstrEEEENK3$_0clERNS_14MachineOperandE.exit" ], [ %.sroa.05.0.i, %.lr.ph ] ; 4 uses
  %i.ae = load i32, ptr %.060, align 8
  %i.af = and i32 %i.ae, 255
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.e, label %"_ZZNK4llvm19MachineRegisterInfo19updateDbgUsersToRegENS_10MCRegisterES1_NS_8ArrayRefIPNS_12MachineInstrEEEENK3$_0clERNS_14MachineOperandE.exit"

bb.e:                                             ; preds = %.lr.ph.split
  %i.ah = getelementptr inbounds nuw i8, ptr %.060, i64 4 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !232 ; 3 uses
  %i.aj = icmp eq i32 %i.ai, %.fr
  br i1 %i.aj, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread27.sink.split.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = add i32 %i.ai, -1
  %i.al = icmp ult i32 %i.ak, 1073741823
  br i1 %i.al, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i, label %"_ZZNK4llvm19MachineRegisterInfo19updateDbgUsersToRegENS_10MCRegisterES1_NS_8ArrayRefIPNS_12MachineInstrEEEENK3$_0clERNS_14MachineOperandE.exit"

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i: ; preds = %bb.f
  %i.am = tail call noundef zeroext i1 @_ZNK4llvm14MCRegisterInfo11regsOverlapENS_10MCRegisterES1_(ptr noundef nonnull align 8 dereferenceable(316) %i.g, i32 %i.ai, i32 %.fr) #23
  br i1 %i.am, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.i, label %"_ZZNK4llvm19MachineRegisterInfo19updateDbgUsersToRegENS_10MCRegisterES1_NS_8ArrayRefIPNS_12MachineInstrEEEENK3$_0clERNS_14MachineOperandE.exit"

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.i: ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i
  %.pre.i = load i32, ptr %i.ah, align 4, !tbaa !232 ; 2 uses
  %i.an = icmp eq i32 %.pre.i, %.fr
  br i1 %i.an, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread27.sink.split.i, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.i
  %i.ao = tail call noundef i32 @_ZNK4llvm14MCRegisterInfo14getSubRegIndexENS_10MCRegisterES1_(ptr noundef nonnull align 8 dereferenceable(240) %i.g, i32 %.fr, i32 %.pre.i) #23 ; 2 uses
  %.not.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.g, i32 %2, i32 noundef %i.ao) #23 ; 2 uses
  %.not18.i = icmp eq i32 %i.ap, 0
  br i1 %.not18.i, label %bb.i, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread27.sink.split.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread27.sink.split.i

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread27.sink.split.i: ; preds = %bb.e, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.i, %bb.i, %bb.h
  %.sink.i = phi i32 [ %i.ap, %bb.h ], [ 0, %bb.i ], [ %2, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.i ], [ %2, %bb.e ]
  tail call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %.060, i32 %.sink.i) #23
  br label %"_ZZNK4llvm19MachineRegisterInfo19updateDbgUsersToRegENS_10MCRegisterES1_NS_8ArrayRefIPNS_12MachineInstrEEEENK3$_0clERNS_14MachineOperandE.exit"

"_ZZNK4llvm19MachineRegisterInfo19updateDbgUsersToRegENS_10MCRegisterES1_NS_8ArrayRefIPNS_12MachineInstrEEEENK3$_0clERNS_14MachineOperandE.exit": ; preds = %.lr.ph.split, %bb.f, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread27.sink.split.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.060, i64 32 ; 2 uses
  %.not19 = icmp eq ptr %i.aq, %i.w
  br i1 %.not19, label %"_ZZNK4llvm19MachineRegisterInfo19updateDbgUsersToRegENS_10MCRegisterES1_NS_8ArrayRefIPNS_12MachineInstrEEEENK3$_0clERNS_14MachineOperandE.exit34", label %.lr.ph.split

bb.j:                                             ; preds = %bb.b
  %i.ar = icmp eq i32 %i.m, 17
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !280 ; 3 uses
  %i.au = load i32, ptr %i.at, align 8
  %i.av = and i32 %i.au, 255
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.k, label %"_ZZNK4llvm19MachineRegisterInfo19updateDbgUsersToRegENS_10MCRegisterES1_NS_8ArrayRefIPNS_12MachineInstrEEEENK3$_0clERNS_14MachineOperandE.exit34"

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !232 ; 3 uses
  %i.az = icmp eq i32 %i.ay, %.fr
  br i1 %i.az, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread27.sink.split.i30, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = add i32 %i.ay, -1
  %i.bb = icmp ult i32 %i.ba, 1073741823
  %or.cond.i.i21 = and i1 %i.j, %i.bb
  br i1 %or.cond.i.i21, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i22, label %"_ZZNK4llvm19MachineRegisterInfo19updateDbgUsersToRegENS_10MCRegisterES1_NS_8ArrayRefIPNS_12MachineInstrEEEENK3$_0clERNS_14MachineOperandE.exit34"

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i22: ; preds = %bb.l
  %i.bc = tail call noundef zeroext i1 @_ZNK4llvm14MCRegisterInfo11regsOverlapENS_10MCRegisterES1_(ptr noundef nonnull align 8 dereferenceable(316) %i.g, i32 %i.ay, i32 %.fr) #23
  br i1 %i.bc, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.i23, label %"_ZZNK4llvm19MachineRegisterInfo19updateDbgUsersToRegENS_10MCRegisterES1_NS_8ArrayRefIPNS_12MachineInstrEEEENK3$_0clERNS_14MachineOperandE.exit34"

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.i23: ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i22
  %.pre.i24 = load i32, ptr %i.ax, align 4, !tbaa !232 ; 2 uses
  %i.bd = icmp eq i32 %.pre.i24, %.fr
  br i1 %i.bd, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread27.sink.split.i30, label %bb.m

bb.m:                                             ; preds = %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.i23
  %i.be = tail call noundef i32 @_ZNK4llvm14MCRegisterInfo14getSubRegIndexENS_10MCRegisterES1_(ptr noundef nonnull align 8 dereferenceable(240) %i.g, i32 %.fr, i32 %.pre.i24) #23 ; 2 uses
  %.not.i27 = icmp eq i32 %i.be, 0
  br i1 %.not.i27, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.g, i32 %2, i32 noundef %i.be) #23 ; 2 uses
  %.not18.i29 = icmp eq i32 %i.bf, 0
  br i1 %.not18.i29, label %bb.o, label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread27.sink.split.i30

bb.o:                                             ; preds = %bb.n, %bb.m
  br label %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread27.sink.split.i30

_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread27.sink.split.i30: ; preds = %bb.k, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.i23, %bb.o, %bb.n
  %.sink.i31 = phi i32 [ %i.bf, %bb.n ], [ 0, %bb.o ], [ %2, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread.i23 ], [ %2, %bb.k ]
  tail call void @_ZN4llvm14MachineOperand6setRegENS_8RegisterE(ptr noundef nonnull align 8 dereferenceable(32) %i.at, i32 %.sink.i31) #23
  br label %"_ZZNK4llvm19MachineRegisterInfo19updateDbgUsersToRegENS_10MCRegisterES1_NS_8ArrayRefIPNS_12MachineInstrEEEENK3$_0clERNS_14MachineOperandE.exit34"

"_ZZNK4llvm19MachineRegisterInfo19updateDbgUsersToRegENS_10MCRegisterES1_NS_8ArrayRefIPNS_12MachineInstrEEEENK3$_0clERNS_14MachineOperandE.exit34": ; preds = %"_ZZNK4llvm19MachineRegisterInfo19updateDbgUsersToRegENS_10MCRegisterES1_NS_8ArrayRefIPNS_12MachineInstrEEEENK3$_0clERNS_14MachineOperandE.exit.us", %"_ZZNK4llvm19MachineRegisterInfo19updateDbgUsersToRegENS_10MCRegisterES1_NS_8ArrayRefIPNS_12MachineInstrEEEENK3$_0clERNS_14MachineOperandE.exit", %bb.c, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.thread27.sink.split.i30, %_ZNK4llvm18TargetRegisterInfo11regsOverlapENS_8RegisterES1_.exit.i22, %bb.l, %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %.01862, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bg, %i.h
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm19MachineRegisterInfo8DelegateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm19MachineRegisterInfo8DelegateD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #26
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

end_hunk_0
