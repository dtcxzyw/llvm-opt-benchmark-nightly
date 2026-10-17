Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/emerge?download=true
inline.NumInlined: 1608
inline.NumDeleted: 822
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #27, !inline_history !555
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_15BlockEmergeDataESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_15BlockEmergeDataESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_15BlockEmergeDataESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !444
  tail call void @_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_15BlockEmergeDataESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !445  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !222  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_15BlockEmergeDataESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !223
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #29
  br label %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_15BlockEmergeDataESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit

_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_15BlockEmergeDataESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit: ; preds = %.lr.ph, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #29
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !556

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIN4core8vector3dIsEESt4pairIKS2_15BlockEmergeDataESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !444
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !445  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !114  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !115
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #29
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !557

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !444
  tail call void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !445  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #29
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !558

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !117    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = load ptr, ptr %0, align 8, !tbaa !163    ; 9 uses
  %.not.i = icmp eq ptr %i.c, null                ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN11StreamProxylsIPKcEERS_OT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !170
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !163
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %.pre.i, %bb.d ], [ %i.c, %bb.c ]
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.51, i64 noundef 6) ; 0 uses
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN11StreamProxylsIPKcEERS_OT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.c, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !170
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i5 = load ptr, ptr %0, align 8, !tbaa !163 ; 3 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !117   ; 2 uses
  %.not.i.i6 = icmp eq ptr %.pre, null
  br i1 %.not.i.i6, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %.pre.i5, align 8, !tbaa !34
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %.pre.i5, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !170
  %i.z = or i32 %i.y, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i32 noundef %i.z)
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

.thread:                                          ; preds = %bb.g, %bb.h
  %i.aa = phi ptr [ %.pre.i5, %bb.h ], [ %i.c, %bb.g ]
  %i.ab = phi ptr [ %.pre, %bb.h ], [ %i.a, %bb.g ] ; 2 uses
  %i.ac = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #27
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull %i.ab, i64 noundef %i.ac) ; 0 uses
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

_ZN11StreamProxylsIPKcEERS_OT_.exit:              ; preds = %.thread, %bb.i, %bb.f, %bb.e, %bb.b
  ret ptr %0
}

declare void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN16BiomeGenOriginalC1EP12BiomeManagerPK19BiomeParamsOriginalN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef, ptr noundef, i48) unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt4pairIPFvN4core8vector3dIsEE12EmergeActionPvES5_ESaIS8_EEaSERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !224  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !222    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !223
  %i.j = load ptr, ptr %0, align 8, !tbaa !222    ; 9 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 576460752303423487
  br i1 %i.o, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !126

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28 ; 4 uses
  %i.p = add i64 %i.d, -16
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -16
  %i.s = add i64 %i.r, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.s, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !222      ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt4pairIPFvN4core8vector3dIsEE12EmergeActionPvES5_ESaIS8_EE13_M_deallocateEPS8_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !223
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %3 to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.w) #29
  br label %_ZNSt12_Vector_baseISt4pairIPFvN4core8vector3dIsEE12EmergeActionPvES5_ESaIS8_EE13_M_deallocateEPS8_m.exit

_ZNSt12_Vector_baseISt4pairIPFvN4core8vector3dIsEE12EmergeActionPvES5_ESaIS8_EE13_M_deallocateEPS8_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !222
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.x, ptr %i.h, align 8, !tbaa !223
  br label %_ZSt22__uninitialized_copy_aIPSt4pairIPFvN4core8vector3dIsEE12EmergeActionPvES5_ES9_S8_ET0_T_SB_SA_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !224  ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.ab, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp sgt i64 %i.g, 0
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIPSt4pairIPFvN4core8vector3dIsEE12EmergeActionPvES5_ES9_S8_ET0_T_SB_SA_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %xtraiter = and i64 %i.g, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.012.i.i.i.i.i.prol = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i.prol ], [ %i.g, %.lr.ph.i.i.i.i.i.preheader ]
  %.0811.i.i.i.i.i.prol = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.prol = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.prol ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.ad = load <2 x ptr>, ptr %.0910.i.i.i.i.i.prol, align 8, !tbaa !118
  store <2 x ptr> %i.ad, ptr %.0811.i.i.i.i.i.prol, align 8, !tbaa !118
  %i.ae = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ag = add nsw i64 %.012.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !559

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.unr = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.i.prol ]
  %.0811.i.i.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.preheader ], [ %i.af, %.lr.ph.i.i.i.i.i.prol ]
  %.0910.i.i.i.i.i.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ae, %.lr.ph.i.i.i.i.i.prol ]
  %i.ah = icmp ult i64 %i.g, 8
  br i1 %i.ah, label %_ZSt22__uninitialized_copy_aIPSt4pairIPFvN4core8vector3dIsEE12EmergeActionPvES5_ES9_S8_ET0_T_SB_SA_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.ai = load <2 x ptr>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !118
  store <2 x ptr> %i.ai, ptr %.0811.i.i.i.i.i, align 8, !tbaa !118
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.al = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !118
  store <2 x ptr> %i.al, ptr %i.ak, align 8, !tbaa !118
  %i.am = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.ao = load <2 x ptr>, ptr %i.am, align 8, !tbaa !118
  store <2 x ptr> %i.ao, ptr %i.an, align 8, !tbaa !118
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48
  %i.ar = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !118
  store <2 x ptr> %i.ar, ptr %i.aq, align 8, !tbaa !118
  %i.as = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64
  %i.au = load <2 x ptr>, ptr %i.as, align 8, !tbaa !118
  store <2 x ptr> %i.au, ptr %i.at, align 8, !tbaa !118
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 80
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 80
  %i.ax = load <2 x ptr>, ptr %i.av, align 8, !tbaa !118
  store <2 x ptr> %i.ax, ptr %i.aw, align 8, !tbaa !118
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 96
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 96
  %i.ba = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !118
  store <2 x ptr> %i.ba, ptr %i.az, align 8, !tbaa !118
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 112
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 112
  %i.bd = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !118
  store <2 x ptr> %i.bd, ptr %i.bc, align 8, !tbaa !118
  %i.be = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 128
  %i.bf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 128
  %i.bg = add nsw i64 %.012.i.i.i.i.i, -8
  %i.bh = icmp sgt i64 %.012.i.i.i.i.i, 8
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIPFvN4core8vector3dIsEE12EmergeActionPvES5_ES9_S8_ET0_T_SB_SA_RSaIT1_E.exit, !llvm.loop !560

bb.h:                                             ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ab ; 2 uses
  %i.bj = ashr exact i64 %i.ab, 4                 ; 5 uses
  %i.bk = icmp sgt i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i26.preheader, label %_ZSt4copyIPSt4pairIPFvN4core8vector3dIsEE12EmergeActionPvES5_ES9_ET0_T_SB_SA_.exit

.lr.ph.i.i.i.i.i26.preheader:                     ; preds = %bb.h
  %xtraiter44 = and i64 %i.bj, 7                  ; 2 uses
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.lr.ph.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i26.prol

.lr.ph.i.i.i.i.i26.prol:                          ; preds = %.lr.ph.i.i.i.i.i26.preheader, %.lr.ph.i.i.i.i.i26.prol
  %.012.i.i.i.i.i27.prol = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i26.prol ], [ %i.bj, %.lr.ph.i.i.i.i.i26.preheader ]
  %.0811.i.i.i.i.i28.prol = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i26.prol ], [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ] ; 2 uses
  %.0910.i.i.i.i.i29.prol = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i26.prol ], [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ] ; 2 uses
  %prol.iter46 = phi i64 [ %prol.iter46.next, %.lr.ph.i.i.i.i.i26.prol ], [ 0, %.lr.ph.i.i.i.i.i26.preheader ]
  %i.bl = load <2 x ptr>, ptr %.0910.i.i.i.i.i29.prol, align 8, !tbaa !118
  store <2 x ptr> %i.bl, ptr %.0811.i.i.i.i.i28.prol, align 8, !tbaa !118
  %i.bm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29.prol, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28.prol, i64 16 ; 2 uses
  %i.bo = add nsw i64 %.012.i.i.i.i.i27.prol, -1  ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i.i.i26.prol.loopexit, label %.lr.ph.i.i.i.i.i26.prol, !llvm.loop !561

.lr.ph.i.i.i.i.i26.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i26.prol, %.lr.ph.i.i.i.i.i26.preheader
  %.012.i.i.i.i.i27.unr = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bo, %.lr.ph.i.i.i.i.i26.prol ]
  %.0811.i.i.i.i.i28.unr = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bn, %.lr.ph.i.i.i.i.i26.prol ]
  %.0910.i.i.i.i.i29.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i26.preheader ], [ %i.bm, %.lr.ph.i.i.i.i.i26.prol ]
  %i.bp = icmp ult i64 %i.bj, 8
  br i1 %i.bp, label %_ZSt4copyIPSt4pairIPFvN4core8vector3dIsEE12EmergeActionPvES5_ES9_ET0_T_SB_SA_.exit, label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i26
  %.012.i.i.i.i.i27 = phi i64 [ %i.co, %.lr.ph.i.i.i.i.i26 ], [ %.012.i.i.i.i.i27.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i28 = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i26 ], [ %.0811.i.i.i.i.i28.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i29 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i26 ], [ %.0910.i.i.i.i.i29.unr, %.lr.ph.i.i.i.i.i26.prol.loopexit ] ; 9 uses
  %i.bq = load <2 x ptr>, ptr %.0910.i.i.i.i.i29, align 8, !tbaa !118
  store <2 x ptr> %i.bq, ptr %.0811.i.i.i.i.i28, align 8, !tbaa !118
  %i.br = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 16
  %i.bt = load <2 x ptr>, ptr %i.br, align 8, !tbaa !118
  store <2 x ptr> %i.bt, ptr %i.bs, align 8, !tbaa !118
  %i.bu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 32
  %i.bw = load <2 x ptr>, ptr %i.bu, align 8, !tbaa !118
  store <2 x ptr> %i.bw, ptr %i.bv, align 8, !tbaa !118
  %i.bx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 48
  %i.by = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 48
  %i.bz = load <2 x ptr>, ptr %i.bx, align 8, !tbaa !118
  store <2 x ptr> %i.bz, ptr %i.by, align 8, !tbaa !118
  %i.ca = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 64
  %i.cb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 64
  %i.cc = load <2 x ptr>, ptr %i.ca, align 8, !tbaa !118
  store <2 x ptr> %i.cc, ptr %i.cb, align 8, !tbaa !118
  %i.cd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 80
  %i.ce = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 80
  %i.cf = load <2 x ptr>, ptr %i.cd, align 8, !tbaa !118
  store <2 x ptr> %i.cf, ptr %i.ce, align 8, !tbaa !118
  %i.cg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 96
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 96
  %i.ci = load <2 x ptr>, ptr %i.cg, align 8, !tbaa !118
  store <2 x ptr> %i.ci, ptr %i.ch, align 8, !tbaa !118
  %i.cj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 112
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 112
  %i.cl = load <2 x ptr>, ptr %i.cj, align 8, !tbaa !118
  store <2 x ptr> %i.cl, ptr %i.ck, align 8, !tbaa !118
  %i.cm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i29, i64 128
  %i.cn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i28, i64 128
  %i.co = add nsw i64 %.012.i.i.i.i.i27, -8
  %i.cp = icmp sgt i64 %.012.i.i.i.i.i27, 8
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIPSt4pairIPFvN4core8vector3dIsEE12EmergeActionPvES5_ES9_ET0_T_SB_SA_.exit, !llvm.loop !562

_ZSt4copyIPSt4pairIPFvN4core8vector3dIsEE12EmergeActionPvES5_ES9_ET0_T_SB_SA_.exit: ; preds = %.lr.ph.i.i.i.i.i26.prol.loopexit, %.lr.ph.i.i.i.i.i26, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.bi, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIPFvN4core8vector3dIsEE12EmergeActionPvES5_ES9_S8_ET0_T_SB_SA_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPSt4pairIPFvN4core8vector3dIsEE12EmergeActionPvES5_ES9_ET0_T_SB_SA_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i ], [ %i.z, %_ZSt4copyIPSt4pairIPFvN4core8vector3dIsEE12EmergeActionPvES5_ES9_ET0_T_SB_SA_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i ], [ %i.bi, %_ZSt4copyIPSt4pairIPFvN4core8vector3dIsEE12EmergeActionPvES5_ES9_ET0_T_SB_SA_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.cq, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPSt4pairIPFvN4core8vector3dIsEE12EmergeActionPvES5_ES9_S8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !563

_ZSt22__uninitialized_copy_aIPSt4pairIPFvN4core8vector3dIsEE12EmergeActionPvES5_ES9_S8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !222
  br label %_ZSt22__uninitialized_copy_aIPSt4pairIPFvN4core8vector3dIsEE12EmergeActionPvES5_ES9_S8_ET0_T_SB_SA_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPSt4pairIPFvN4core8vector3dIsEE12EmergeActionPvES5_ES9_S8_ET0_T_SB_SA_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZSt22__uninitialized_copy_aIPSt4pairIPFvN4core8vector3dIsEE12EmergeActionPvES5_ES9_S8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit, %bb.g, %_ZSt4copyIPSt4pairIPFvN4core8vector3dIsEE12EmergeActionPvES5_ES9_ET0_T_SB_SA_.exit, %_ZNSt12_Vector_baseISt4pairIPFvN4core8vector3dIsEE12EmergeActionPvES5_ESaIS8_EE13_M_deallocateEPS8_m.exit
  %i.cs = phi ptr [ %2, %_ZNSt12_Vector_baseISt4pairIPFvN4core8vector3dIsEE12EmergeActionPvES5_ESaIS8_EE13_M_deallocateEPS8_m.exit ], [ %.pre, %_ZSt22__uninitialized_copy_aIPSt4pairIPFvN4core8vector3dIsEE12EmergeActionPvES5_ES9_S8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit ], [ %i.j, %bb.g ], [ %i.j, %_ZSt4copyIPSt4pairIPFvN4core8vector3dIsEE12EmergeActionPvES5_ES9_ET0_T_SB_SA_.exit ], [ %i.j, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.f
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !224
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPSt4pairIPFvN4core8vector3dIsEE12EmergeActionPvES5_ES9_S8_ET0_T_SB_SA_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #16

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #16

; Function Attrs: nounwind
end_hunk_0
