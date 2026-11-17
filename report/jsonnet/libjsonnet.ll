Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jsonnet/original/libjsonnet?download=true
inline.NumInlined: 2016
inline.NumDeleted: 814
begin_hunk_0_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7jsonnet8internal8BinaryOpEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNKSt14default_deleteI16JsonnetJsonValueEclEPS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrI16JsonnetJsonValueSt14default_deleteIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.d) #38
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrI16JsonnetJsonValueSt14default_deleteIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EED2Ev.exit.i unwind label %bb.c, !inline_history !1

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #33, !inline_history !1
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrI16JsonnetJsonValueSt14default_deleteIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EED2Ev.exit.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53   ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i12.i, label %_ZNSt6vectorISt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EESaIS4_EED2Ev.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrI16JsonnetJsonValueSt14default_deleteIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EED2Ev.exit.i, %.lr.ph.i
  %.0.i.i3.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.h, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrI16JsonnetJsonValueSt14default_deleteIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EED2Ev.exit.i ] ; 2 uses
  tail call void @_ZSt8_DestroyISt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EEEvPT_(ptr noundef %.0.i.i3.i) #38, !inline_history !2
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i3.i, i64 8 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.k, %i.j
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EESaIS4_EED2Ev.exit.loopexit.i, label %.lr.ph.i, !llvm.loop !0

_ZNSt6vectorISt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EESaIS4_EED2Ev.exit.loopexit.i: ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !61
  br label %_ZNSt6vectorISt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EESaIS4_EED2Ev.exit.i

_ZNSt6vectorISt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EESaIS4_EED2Ev.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EESaIS4_EED2Ev.exit.loopexit.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrI16JsonnetJsonValueSt14default_deleteIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EED2Ev.exit.i
  %i.l = phi ptr [ %.pre.i, %_ZNSt6vectorISt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EESaIS4_EED2Ev.exit.loopexit.i ], [ %i.h, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrI16JsonnetJsonValueSt14default_deleteIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseISt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EESaIS4_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EESaIS4_EED2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #37, !inline_history !62
  br label %_ZNSt12_Vector_baseISt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EESaIS4_EED2Ev.exit.i

_ZNSt12_Vector_baseISt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EESaIS4_EED2Ev.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EESaIS4_EED2Ev.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !44   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN16JsonnetJsonValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EESaIS4_EED2Ev.exit.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !47
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #37, !inline_history !62
  br label %_ZN16JsonnetJsonValueD2Ev.exit

_ZN16JsonnetJsonValueD2Ev.exit:                   ; preds = %_ZNSt12_Vector_baseISt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EESaIS4_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 120) #37
  br label %bb.e

bb.e:                                             ; preds = %_ZN16JsonnetJsonValueD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrI16JsonnetJsonValueSt14default_deleteIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.07 = phi ptr [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %1, %bb.a ] ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrI16JsonnetJsonValueSt14default_deleteIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !135  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  tail call void @_ZNSt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.f) #35, !inline_history !262
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.lr.ph
  %i.j = load i64, ptr %i.h, align 8, !tbaa !47
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #37
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !263

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyISt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EEEvPT_(ptr noundef %0) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !52     ; 9 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS0_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrI16JsonnetJsonValueSt14default_deleteIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE8_M_eraseEPSt13_Rb_tree_nodeISD_E(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.d)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrI16JsonnetJsonValueSt14default_deleteIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EED2Ev.exit.i unwind label %bb.c, !inline_history !264

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #33, !inline_history !264
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrI16JsonnetJsonValueSt14default_deleteIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EED2Ev.exit.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53   ; 2 uses
  %.not.i.i1.i1 = icmp eq ptr %i.h, %i.j
  br i1 %.not.i.i1.i1, label %_ZSt8_DestroyIPSt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EEEvT_S6_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrI16JsonnetJsonValueSt14default_deleteIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EED2Ev.exit.i, %.lr.ph
  %.0.i.i.i2 = phi ptr [ %i.k, %.lr.ph ], [ %i.h, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrI16JsonnetJsonValueSt14default_deleteIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EED2Ev.exit.i ] ; 2 uses
  tail call void @_ZSt8_DestroyISt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EEEvPT_(ptr noundef %.0.i.i.i2), !inline_history !265
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i2, i64 8 ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.k, %i.j
  br i1 %.not.i.i1.i, label %_ZSt8_DestroyIPSt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EEEvT_S6_.exit.i.loopexit, label %.lr.ph, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EEEvT_S6_.exit.i.loopexit: ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !61
  br label %_ZSt8_DestroyIPSt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EEEvT_S6_.exit.i

_ZSt8_DestroyIPSt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EEEvT_S6_.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EEEvT_S6_.exit.i.loopexit, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrI16JsonnetJsonValueSt14default_deleteIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EED2Ev.exit.i
  %i.l = phi ptr [ %.pre, %_ZSt8_DestroyIPSt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EEEvT_S6_.exit.i.loopexit ], [ %i.h, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrI16JsonnetJsonValueSt14default_deleteIS9_EEESt10_Select1stISD_ESt4lessIS5_ESaISD_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseISt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EESaIS4_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EEEvT_S6_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !54
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #37, !inline_history !266
  br label %_ZNSt12_Vector_baseISt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EESaIS4_EED2Ev.exit.i

_ZNSt12_Vector_baseISt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EESaIS4_EED2Ev.exit.i: ; preds = %bb.d, %_ZSt8_DestroyIPSt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EEEvT_S6_.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !44   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNKSt14default_deleteI16JsonnetJsonValueEclEPS0_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EESaIS4_EED2Ev.exit.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !47
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #37, !inline_history !266
  br label %_ZNKSt14default_deleteI16JsonnetJsonValueEclEPS0_.exit.i

_ZNKSt14default_deleteI16JsonnetJsonValueEclEPS0_.exit.i: ; preds = %_ZNSt12_Vector_baseISt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS1_EESaIS4_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 120) #37, !inline_history !267
  br label %_ZNSt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrI16JsonnetJsonValueSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteI16JsonnetJsonValueEclEPS0_.exit.i
  store ptr null, ptr %0, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 0, 2) i32 @_ZL23default_import_callbackPvPKcS1_PPcS3_Pm(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::vector.34", align 8   ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.e, ptr %6, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !56
  store i8 0, ptr %i.e, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.g, ptr %7, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !56
  store i8 0, ptr %i.g, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.i, ptr %8, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.j, align 8, !tbaa !56
  store i8 0, ptr %i.i, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.k, ptr %9, align 8, !tbaa !46
  %i.l = icmp eq ptr %1, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.57) #36
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #35
  store i64 %i.m, ptr %i.d, align 8, !tbaa !55
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc50 unwind label %bb.t   ; 2 uses

.noexc50:                                         ; preds = %.noexc.i
  store ptr %i.o, ptr %9, align 8, !tbaa !44
  %i.p = load i64, ptr %i.d, align 8, !tbaa !55
  store i64 %i.p, ptr %i.k, align 8, !tbaa !47
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc50, %bb.c
  %i.q = phi ptr [ %i.o, %.noexc50 ], [ %i.k, %bb.c ] ; 2 uses
  switch i64 %i.m, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %1, align 1, !tbaa !47
  store i8 %i.r, ptr %i.q, align 1, !tbaa !47
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr nonnull align 1 %1, i64 %i.m, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.s = load i64, ptr %i.d, align 8, !tbaa !55   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !56
  %i.u = load ptr, ptr %9, align 8, !tbaa !44
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.w, ptr %10, align 8, !tbaa !46
  %i.x = icmp eq ptr %2, null
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.57) #36
          to label %.noexc53 unwind label %bb.u

.noexc53:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #35
  store i64 %i.y, ptr %i.c, align 8, !tbaa !55
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %.noexc.i52, label %._crit_edge.i.i51

.noexc.i52:                                       ; preds = %bb.h
  %i.aa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc54 unwind label %bb.u   ; 2 uses

.noexc54:                                         ; preds = %.noexc.i52
  store ptr %i.aa, ptr %10, align 8, !tbaa !44
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !55
  store i64 %i.ab, ptr %i.w, align 8, !tbaa !47
  br label %._crit_edge.i.i51

._crit_edge.i.i51:                                ; preds = %.noexc54, %bb.h
  %i.ac = phi ptr [ %i.aa, %.noexc54 ], [ %i.w, %bb.h ] ; 2 uses
  switch i64 %i.y, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i51
  %i.ad = load i8, ptr %2, align 1, !tbaa !47
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !47
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i51
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr nonnull align 1 %2, i64 %i.y, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i51
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !55  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !56
  %i.ag = load ptr, ptr %10, align 8, !tbaa !44
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  %.val40 = load ptr, ptr %9, align 8
  %.val41 = load i64, ptr %i.t, align 8
  %i.ai = invoke fastcc noundef i32 @_ZL8try_pathRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_RS4_S7_S7_(ptr %.val40, i64 %.val41, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.l unwind label %bb.v

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr %10, align 8, !tbaa !44   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.w
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.al = load i64, ptr %i.w, align 8, !tbaa !47
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  %i.an = load ptr, ptr %9, align 8, !tbaa !44    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.k
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = load i64, ptr %i.k, align 8, !tbaa !47
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !88 ; 3 uses
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !90 ; 3 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 5 uses
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %14, align 8
  %.not.i.i.i.i = icmp eq ptr %i.at, %i.au
  br i1 %.not.i.i.i.i, label %.noexc60, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.ay = icmp ugt i64 %i.ax, 9223372036854775776
  br i1 %i.ay, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !92

.noexc.i.i:                                       ; preds = %bb.m
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #36
          to label %.noexc59 unwind label %bb.w

.noexc59:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.m
  %i.az = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #34
          to label %.noexc60 unwind label %bb.w

.noexc60:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %.pr.i = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %i.az, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 10 uses
  store ptr %.pr.i, ptr %11, align 8, !tbaa !90
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.pr.i, i64 %i.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !89
  %i.bd = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.au, ptr %i.at, ptr noundef %.pr.i)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit unwind label %bb.n

bb.n:                                             ; preds = %.noexc60
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.ax) #37
  br label %.body

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit: ; preds = %.noexc60
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit.backedge, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit
  %i.bh = phi ptr [ %i.bd, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit ], [ %i.ci, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit.backedge ] ; 9 uses
  %.028 = phi i32 [ %i.ai, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_.exit ], [ %i.ct, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit.backedge ]
  switch i32 %.028, label %bb.aj [
    i32 1, label %bb.p
    i32 2, label %bb.af
  ]

bb.p:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit
  %i.bi = icmp eq ptr %i.bh, %.pr.i
  br i1 %i.bi, label %.noexc.i62, label %bb.y

.noexc.i62:                                       ; preds = %bb.p
  store ptr %i.bh, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.bj, ptr %12, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  store i64 49, ptr %i.b, align 8, !tbaa !55
  %i.bk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc63 unwind label %bb.x   ; 3 uses

.noexc63:                                         ; preds = %.noexc.i62
  store ptr %i.bk, ptr %12, align 8, !tbaa !44
  %i.bl = load i64, ptr %i.b, align 8, !tbaa !55  ; 3 uses
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.bk, ptr noundef nonnull align 1 dereferenceable(49) @.str.37, i64 49, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !56
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  store i8 0, ptr %i.bn, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  %.val46 = load ptr, ptr %12, align 8            ; 3 uses
  %.val47 = load i64, ptr %i.bm, align 8, !tbaa !56 ; 5 uses
  %i.bo = icmp eq i64 %.val47, 0
  br i1 %i.bo, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.noexc63
  %i.bp = call noalias ptr @malloc(i64 noundef %.val47) #41 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call fastcc void @_ZL12memory_panicv()
  unreachable

bb.s:                                             ; preds = %bb.q, %.noexc63
  %.0.i.i = phi ptr [ %i.bp, %bb.q ], [ null, %.noexc63 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i, ptr readonly align 1 %.val46, i64 %.val47, i1 false)
  store i64 %.val47, ptr %5, align 8, !tbaa !55
  store ptr %.0.i.i, ptr %4, align 8, !tbaa !91
  %i.br = icmp eq ptr %.val46, %i.bj
  br i1 %i.br, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i66: ; preds = %bb.s
  %i.bs = icmp ult i64 %.val47, 16
  call void @llvm.assume(i1 %i.bs)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.s
  %i.bt = load i64, ptr %i.bj, align 8, !tbaa !47
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %.val46, i64 noundef %i.bu) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  br label %bb.aq

bb.t:                                             ; preds = %.noexc.i, %bb.b
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

bb.u:                                             ; preds = %.noexc.i52, %bb.g
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.v:                                             ; preds = %bb.k
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = load ptr, ptr %10, align 8, !tbaa !44   ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.w
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.v
  %i.ca = load i64, ptr %i.w, align 8, !tbaa !47
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bw, %bb.u ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.bx, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  %i.cc = load ptr, ptr %9, align 8, !tbaa !44    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.k
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.ce = load i64, ptr %i.k, align 8, !tbaa !47
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.t ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %bb.at

bb.w:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.x:                                             ; preds = %.noexc.i62
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  br label %bb.as

bb.y:                                             ; preds = %bb.p
  %i.ci = getelementptr inbounds i8, ptr %i.bh, i64 -32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  store ptr %i.bf, ptr %13, align 8, !tbaa !46
  %i.cj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 %i.cj, ptr %i.a, align 8, !tbaa !55
  %i.ck = icmp ugt i64 %i.cj, 15
  br i1 %i.ck, label %.noexc.i78, label %._crit_edge.i.i77

.noexc.i78:                                       ; preds = %bb.y
  %i.cl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc80 unwind label %bb.ad  ; 2 uses

.noexc80:                                         ; preds = %.noexc.i78
  store ptr %i.cl, ptr %13, align 8, !tbaa !44
  %i.cm = load i64, ptr %i.a, align 8, !tbaa !55
  store i64 %i.cm, ptr %i.bf, align 8, !tbaa !47
  br label %._crit_edge.i.i77

._crit_edge.i.i77:                                ; preds = %.noexc80, %bb.y
  %i.cn = phi ptr [ %i.cl, %.noexc80 ], [ %i.bf, %bb.y ] ; 2 uses
  switch i64 %i.cj, label %bb.aa [
    i64 1, label %bb.z
    i64 0, label %bb.ab
  ]

bb.z:                                             ; preds = %._crit_edge.i.i77
  %i.co = load i8, ptr %2, align 1, !tbaa !47
  store i8 %i.co, ptr %i.cn, align 1, !tbaa !47
  br label %bb.ab

bb.aa:                                            ; preds = %._crit_edge.i.i77
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cn, ptr nonnull align 1 %2, i64 %i.cj, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %._crit_edge.i.i77
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !55  ; 2 uses
  store i64 %i.cp, ptr %i.bg, align 8, !tbaa !56
  %i.cq = load ptr, ptr %13, align 8, !tbaa !44
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cp
  store i8 0, ptr %i.cr, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %.val = load ptr, ptr %i.ci, align 8
  %i.cs = getelementptr i8, ptr %i.bh, i64 -24
  %.val39 = load i64, ptr %i.cs, align 8
  %i.ct = invoke fastcc noundef i32 @_ZL8try_pathRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_RS4_S7_S7_(ptr %.val, i64 %.val39, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.cu = load ptr, ptr %13, align 8, !tbaa !44   ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.bf
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82: ; preds = %bb.ac
  %i.cw = load i64, ptr %i.bf, align 8, !tbaa !47
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  %i.cy = load ptr, ptr %i.ci, align 8, !tbaa !44 ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %i.bh, i64 -16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit.backedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit.backedge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit, !llvm.loop !268

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !47
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #37
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit.backedge

bb.ad:                                            ; preds = %.noexc.i78
  %i.dd = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bh, ptr %i.ba, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

bb.ae:                                            ; preds = %bb.ab
  %i.de = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.bh, ptr %i.ba, align 8
  %i.df = load ptr, ptr %13, align 8, !tbaa !44   ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.bf
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %bb.ae
  %i.dh = load i64, ptr %i.bf, align 8, !tbaa !47
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.ad
  %.pn32 = phi { ptr, i32 } [ %i.dd, %bb.ad ], [ %i.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %i.de, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  br label %bb.as

bb.af:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit
  %.val44 = load ptr, ptr %8, align 8
  %.val45 = load i64, ptr %i.j, align 8, !tbaa !56 ; 4 uses
  %i.dj = icmp eq i64 %.val45, 0
  br i1 %i.dj, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dk = call noalias ptr @malloc(i64 noundef %.val45) #41 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call fastcc void @_ZL12memory_panicv()
  unreachable

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %.0.i.i88 = phi ptr [ %i.dk, %bb.ag ], [ null, %bb.af ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i88, ptr readonly align 1 %.val44, i64 %.val45, i1 false)
  store i64 %.val45, ptr %5, align 8, !tbaa !55
  store ptr %.0.i.i88, ptr %4, align 8, !tbaa !91
  br label %bb.aq

bb.aj:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit
  %.val48 = load ptr, ptr %7, align 8
  %.val49 = load i64, ptr %i.h, align 8, !tbaa !56
  %i.dm = add i64 %.val49, 1                      ; 3 uses
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.do = call noalias ptr @malloc(i64 noundef %i.dm) #41 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call fastcc void @_ZL12memory_panicv()
  unreachable

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %.0.i.i90 = phi ptr [ %i.do, %bb.ak ], [ null, %bb.aj ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i90, ptr readonly align 1 %.val48, i64 %i.dm, i1 false)
  store ptr %.0.i.i90, ptr %3, align 8, !tbaa !91
  %.val42 = load ptr, ptr %6, align 8
  %.val43 = load i64, ptr %i.f, align 8, !tbaa !56 ; 4 uses
  %i.dq = icmp eq i64 %.val43, 0
  br i1 %i.dq, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dr = call noalias ptr @malloc(i64 noundef %.val43) #41 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call fastcc void @_ZL12memory_panicv()
  unreachable

bb.ap:                                            ; preds = %bb.an, %bb.am
  %.0.i.i91 = phi ptr [ %i.dr, %bb.an ], [ null, %bb.am ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i91, ptr readonly align 1 %.val42, i64 %.val43, i1 false)
  store i64 %.val43, ptr %5, align 8, !tbaa !55
  store ptr %.0.i.i91, ptr %4, align 8, !tbaa !91
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %.029 = phi i32 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ 1, %bb.ai ], [ 0, %bb.ap ]
  %.not4.i.i.i = icmp eq ptr %.pr.i, %i.bh
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.aq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.dy, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %.pr.i, %bb.aq ] ; 3 uses
  %i.dt = load ptr, ptr %.05.i.i.i, align 8, !tbaa !44 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !47
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #37
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i93 = icmp eq ptr %i.dy, %i.bh
  br i1 %.not.i.i.i93, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, %bb.aq
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.ax) #37
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  %i.dz = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.i
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.eb = load i64, ptr %i.i, align 8, !tbaa !47
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  %i.ed = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.g
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %i.ef = load i64, ptr %i.g, align 8, !tbaa !47
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.eh = load ptr, ptr %6, align 8, !tbaa !44    ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.e
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %i.ej = load i64, ptr %i.e, align 8, !tbaa !47
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  ret i32 %.029

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %bb.x
  %.pn34.pn = phi { ptr, i32 } [ %i.ch, %bb.x ], [ %.pn32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #35
  br label %.body

.body:                                            ; preds = %bb.w, %bb.o, %bb.n, %bb.as
  %.pn34.pn.pn = phi { ptr, i32 } [ %.pn34.pn, %bb.as ], [ %i.cg, %bb.w ], [ %i.be, %bb.o ], [ %i.be, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %bb.at

bb.at:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %.body ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ]
  %i.el = load ptr, ptr %8, align 8, !tbaa !44    ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.i
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %bb.at
  %i.en = load i64, ptr %i.i, align 8, !tbaa !47
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  %i.ep = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.g
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  %i.er = load i64, ptr %i.g, align 8, !tbaa !47
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.et = load ptr, ptr %6, align 8, !tbaa !44    ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.e
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  %i.ev = load i64, ptr %i.e, align 8, !tbaa !47
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  resume { ptr, i32 } %.pn34.pn.pn.pn
}

end_hunk_0
