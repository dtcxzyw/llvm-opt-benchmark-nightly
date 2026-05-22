inline.NumInlined: 1092
inline.NumDeleted: 420
begin_hunk_0_@_ZN6hermes13platform_intl22ParsedLocaleIdentifierD2Ev:bb.a
  %i.bg = shl i64 %i.bf, 1
  %i.bh = add i64 %i.bg, 2
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bh) #15
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit3.i4

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit3.i4: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i2, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i1.i3
  %i.bi = load ptr, ptr %0, align 8, !tbaa !7     ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZN6hermes13platform_intl22ParsedLocaleIdentifier24ParsedLanguageIdentifierD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i4.i5

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i4.i5: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit3.i4
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !19
  %i.bm = shl i64 %i.bl, 1
  %i.bn = add i64 %i.bm, 2
  tail call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bn) #15
  br label %_ZN6hermes13platform_intl22ParsedLocaleIdentifier24ParsedLanguageIdentifierD2Ev.exit9

_ZN6hermes13platform_intl22ParsedLocaleIdentifier24ParsedLanguageIdentifierD2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit3.i4, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i4.i5
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIDsSt4pairIKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEESt10_Select1stIS8_ESt4lessIDsESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIDsSt4pairIKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEESt10_Select1stIS8_ESt4lessIDsESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIDsSt4pairIKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEESt10_Select1stIS8_ESt4lessIDsESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83
  tail call void @_ZNSt8_Rb_treeIDsSt4pairIKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEESt10_Select1stIS8_ESt4lessIDsESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 56 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeIDsSt4pairIKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEESt10_Select1stIS8_ESt4lessIDsESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !19
  %i.j = shl i64 %i.i, 1
  %i.k = add i64 %i.j, 2
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.k) #15
  br label %_ZNSt8_Rb_treeIDsSt4pairIKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEESt10_Select1stIS8_ESt4lessIDsESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeIDsSt4pairIKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEESt10_Select1stIS8_ESt4lessIDsESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #15
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !94

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIDsSt4pairIKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEESt10_Select1stIS8_ESt4lessIDsESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !7    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 80 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.j = load i64, ptr %i.h, align 8, !tbaa !19
  %i.k = shl i64 %i.j, 1
  %i.l = add i64 %i.k, 2
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.l) #15
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i.i.i: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !7    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !19
  %i.q = shl i64 %i.p, 1
  %i.r = add i64 %i.q, 2
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.r) #15
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i1.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 96) #15
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !95

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !83
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !19
  %i.j = shl i64 %i.i, 1
  %i.k = add i64 %i.j, 2
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.k) #15
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #15
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !96

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [8 x i16], align 16               ; 4 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13   ; 5 uses
  %i.h = icmp ult i64 %i.g, 8
  tail call void @llvm.assume(i1 %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.d, label %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit45

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13   ; 4 uses
  %i.n = icmp ult i64 %i.m, 8
  tail call void @llvm.assume(i1 %i.n)
  %.not = icmp eq i64 %i.g, 0
  %.not38 = icmp eq i64 %i.m, 0                   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not38, label %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit44, label %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit42

_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit42:      ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.p, i1 false)
  %i.q = shl nuw nsw i64 %i.g, 1
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.r, i1 false)
  %i.s = shl nuw nsw i64 %i.o, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.s, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  br i1 %.not38, label %bb.h, label %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit43

_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit43:      ; preds = %bb.f
  %i.t = shl nuw nsw i64 %i.m, 1
  %i.u = add nuw nsw i64 %i.t, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.u, i1 false)
  %.pre52 = load ptr, ptr %1, align 8, !tbaa !7
  %.pre51 = load i64, ptr %i.l, align 8, !tbaa !13
  store i64 %.pre51, ptr %i.f, align 8, !tbaa !13
  store i64 0, ptr %i.l, align 8, !tbaa !13
  br label %.sink.split

_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit44:      ; preds = %bb.e
  %i.v = shl nuw nsw i64 %i.g, 1
  %i.w = add nuw nsw i64 %i.v, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.w, i1 false)
  %.pre50 = load ptr, ptr %0, align 8, !tbaa !7
  %.pre = load i64, ptr %i.f, align 8, !tbaa !13
  store i64 %.pre, ptr %i.l, align 8, !tbaa !13
  store i64 0, ptr %i.f, align 8, !tbaa !13
  br label %.sink.split

_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit45:      ; preds = %bb.c
  %i.x = load i64, ptr %i.j, align 8, !tbaa !19
  %i.y = shl nuw nsw i64 %i.g, 1
  %i.z = add nuw nsw i64 %i.y, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.z, i1 false)
  store ptr %i.i, ptr %0, align 8, !tbaa !7
  store ptr %i.j, ptr %1, align 8, !tbaa !7
  store i64 %i.x, ptr %i.d, align 8, !tbaa !19
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit: ; preds = %bb.b
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !19
  %i.ab = load ptr, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit47, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit46

_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit47:      ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !13 ; 2 uses
  %i.ag = icmp ult i64 %i.af, 8
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = shl nuw nsw i64 %i.af, 1
  %i.ai = add nuw nsw i64 %i.ah, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.ai, i1 false)
  store ptr %i.c, ptr %1, align 8, !tbaa !7
  store ptr %i.d, ptr %0, align 8, !tbaa !7
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit46: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit
  store ptr %i.ab, ptr %0, align 8, !tbaa !7
  store ptr %i.c, ptr %1, align 8, !tbaa !7
  %i.aj = load i64, ptr %i.ac, align 8, !tbaa !19
  store i64 %i.aj, ptr %i.d, align 8, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit46, %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit47
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit45, %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit42, %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !13
  store i64 %i.an, ptr %i.ak, align 8, !tbaa !13
  store i64 %i.al, ptr %i.am, align 8, !tbaa !13
  br label %bb.i

.sink.split:                                      ; preds = %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit43, %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit44
  %.pre50.sink = phi ptr [ %.pre50, %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit44 ], [ %.pre52, %_ZNSt11char_traitsIDsE4copyEPDsPKDsm.exit43 ]
  store i16 0, ptr %.pre50.sink, align 2, !tbaa !24
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !7      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8              ; 2 uses
  %i.g = select i1 %i.e, i64 7, i64 %i.f          ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit
  %i.i = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.i, label %bb.c, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit: ; preds = %bb.b
  %i.j = shl nuw nsw i64 %i.g, 1                  ; 2 uses
  %i.k = icmp samesign ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 2305843009213693951)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = shl nuw nsw i64 %.0, 1
  %i.m = add nuw nsw i64 %i.l, 2
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #17 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit
  %i.o = shl i64 %i.f, 1
  %i.p = add i64 %i.o, 2
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.p) #15
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i
  store ptr %i.n, ptr %0, align 8, !tbaa !7
  store i64 %.0, ptr %i.d, align 8, !tbaa !19
  br label %.split12

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !13
  store i16 0, ptr %i.c, align 2, !tbaa !24
  br label %bb.g

.split12:                                         ; preds = %.thread, %bb.d
  %i.r = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.d ] ; 3 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.split12
  %i.t = load i16, ptr %i.s, align 2, !tbaa !24
  store i16 %i.t, ptr %i.r, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit

bb.f:                                             ; preds = %.split12
  %i.u = shl i64 %i.b, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.r, ptr align 2 %i.s, i64 %i.u, i1 false)
  %.pre = load ptr, ptr %0, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit: ; preds = %bb.e, %bb.f
  %i.v = phi ptr [ %i.r, %bb.e ], [ %.pre, %bb.f ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.w, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.b
  store i16 0, ptr %i.x, align 2, !tbaa !24
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIRKS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char16_t>, std::__cxx11::basic_string<char16_t>, std::_Identity<std::__cxx11::basic_string<char16_t>>, std::less<std::__cxx11::basic_string<char16_t>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02838.i = load ptr, ptr %i.a, align 8, !tbaa !82 ; 2 uses
  %.not39.i = icmp eq ptr %.02838.i, null
  br i1 %.not39.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.i
  %.02840.i = phi ptr [ %.02838.i, %.lr.ph.i ], [ %.02840.i.be, %.backedge.backedge ] ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02840.i, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %.02840.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.d) ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !7    ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEclERKS5_S8_.exit.i, label %.lr.ph.i.i.i.i.i

bb.b:                                             ; preds = %bb.c
  %i.j = add nuw i64 %.01216.i.i.i.i.i, 1         ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.j, %.sroa.speculated.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEclERKS5_S8_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !97

.lr.ph.i.i.i.i.i:                                 ; preds = %.backedge, %bb.b
  %.01216.i.i.i.i.i = phi i64 [ %i.j, %bb.b ], [ 0, %.backedge ] ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %.01216.i.i.i.i.i
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %.01216.i.i.i.i.i
  %i.m = load i16, ptr %i.k, align 2, !tbaa !24   ; 2 uses
  %i.n = load i16, ptr %i.l, align 2, !tbaa !24   ; 2 uses
  %i.o = icmp ult i16 %i.m, %i.n
  br i1 %i.o, label %_ZNKSt4lessINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEclERKS5_S8_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.p = icmp ult i16 %i.n, %i.m
  br i1 %i.p, label %_ZNKSt4lessINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEclERKS5_S8_.exit.thread.i.thread, label %bb.b

_ZNKSt4lessINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEclERKS5_S8_.exit.i: ; preds = %bb.b, %.backedge
  %i.q = sub i64 %i.d, %i.h
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %_ZNKSt4lessINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEclERKS5_S8_.exit.thread.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEclERKS5_S8_.exit.thread.i.thread

_ZNKSt4lessINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEclERKS5_S8_.exit.thread.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEclERKS5_S8_.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %.02840.i, i64 16
  %.028.i = load ptr, ptr %i.s, align 8, !tbaa !82 ; 2 uses
  %.not.i = icmp eq ptr %.028.i, null
  br i1 %.not.i, label %._crit_edge.thread.i, label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEclERKS5_S8_.exit.thread.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEclERKS5_S8_.exit.thread.i.thread
  %.02840.i.be = phi ptr [ %.028.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEclERKS5_S8_.exit.thread.i ], [ %.028.i11, %_ZNKSt4lessINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEclERKS5_S8_.exit.thread.i.thread ]
  br label %.backedge, !llvm.loop !98

_ZNKSt4lessINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEclERKS5_S8_.exit.thread.i.thread: ; preds = %bb.c, %_ZNKSt4lessINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEclERKS5_S8_.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %.02840.i, i64 24
  %.028.i11 = load ptr, ptr %i.t, align 8, !tbaa !82 ; 2 uses
  %.not.i12 = icmp eq ptr %.028.i11, null
  br i1 %.not.i12, label %._crit_edge.i.thread, label %.backedge.backedge

._crit_edge.thread.i:                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEclERKS5_S8_.exit.thread.i, %bb.a
  %.027.lcssa52.i = phi ptr [ %i.b, %bb.a ], [ %.02840.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEclERKS5_S8_.exit.thread.i ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !37
  %i.w = icmp eq ptr %.027.lcssa52.i, %i.v
  br i1 %i.w, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_.exit.thread21, label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i
  %i.x = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.027.lcssa52.i) #18 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !13 ; 2 uses
  %.phi.trans.insert31 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre32 = load i64, ptr %.phi.trans.insert31, align 8, !tbaa !13 ; 2 uses
  %.phi.trans.insert33 = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.pre34 = load ptr, ptr %.phi.trans.insert33, align 8, !tbaa !7
  %.pre35 = load ptr, ptr %1, align 8, !tbaa !7
  %.pre36 = tail call i64 @llvm.umin.i64(i64 %.pre32, i64 %.pre)
  br label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEclERKS5_S8_.exit.thread.i.thread, %bb.d
  %.sroa.speculated.i.i.i5.i.pre-phi = phi i64 [ %.pre36, %bb.d ], [ %.sroa.speculated.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEclERKS5_S8_.exit.thread.i.thread ] ; 2 uses
  %i.y = phi ptr [ %.pre35, %bb.d ], [ %i.e, %_ZNKSt4lessINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEclERKS5_S8_.exit.thread.i.thread ]
  %i.z = phi ptr [ %.pre34, %bb.d ], [ %i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEclERKS5_S8_.exit.thread.i.thread ]
  %i.aa = phi i64 [ %.pre32, %bb.d ], [ %i.d, %_ZNKSt4lessINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEclERKS5_S8_.exit.thread.i.thread ]
  %i.ab = phi i64 [ %.pre, %bb.d ], [ %i.h, %_ZNKSt4lessINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEclERKS5_S8_.exit.thread.i.thread ]
  %.027.lcssa51.i = phi ptr [ %.027.lcssa52.i, %bb.d ], [ %.02840.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEclERKS5_S8_.exit.thread.i.thread ] ; 2 uses
  %.sroa.013.0.i = phi ptr [ %i.x, %bb.d ], [ %.02840.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEclERKS5_S8_.exit.thread.i.thread ] ; 2 uses
  %.not.i.i.i.i6.i = icmp eq i64 %.sroa.speculated.i.i.i5.i.pre-phi, 0
  br i1 %.not.i.i.i.i6.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEclERKS5_S8_.exit12.i, label %.lr.ph.i.i.i.i7.i

bb.e:                                             ; preds = %bb.f
  %i.ac = add nuw i64 %.01216.i.i.i.i8.i, 1       ; 2 uses
  %exitcond.not.i.i.i.i9.i = icmp eq i64 %i.ac, %.sroa.speculated.i.i.i5.i.pre-phi
  br i1 %exitcond.not.i.i.i.i9.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEclERKS5_S8_.exit12.i, label %.lr.ph.i.i.i.i7.i, !llvm.loop !97

.lr.ph.i.i.i.i7.i:                                ; preds = %._crit_edge.i.thread, %bb.e
  %.01216.i.i.i.i8.i = phi i64 [ %i.ac, %bb.e ], [ 0, %._crit_edge.i.thread ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %.01216.i.i.i.i8.i
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %.01216.i.i.i.i8.i
  %i.af = load i16, ptr %i.ad, align 2, !tbaa !24 ; 2 uses
  %i.ag = load i16, ptr %i.ae, align 2, !tbaa !24 ; 2 uses
  %i.ah = icmp ult i16 %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_.exit.thread21, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i7.i
  %i.ai = icmp ult i16 %i.ag, %i.af
  br i1 %i.ai, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_.exit.thread, label %bb.e
end_hunk_0
