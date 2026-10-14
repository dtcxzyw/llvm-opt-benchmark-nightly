Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/toppush?download=true
inline.NumInlined: 3473
inline.NumDeleted: 1236
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZNSt6vectorI17InteractionOfTypeSaIS0_EED2Ev:bb.a

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !35
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #31
  br label %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i

_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i:  ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 112 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !30
  br label %_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exit

_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.q = phi ptr [ %.pr, %_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseI17InteractionOfTypeSaIS0_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !42
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #31
  br label %_ZNSt12_Vector_baseI17InteractionOfTypeSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseI17InteractionOfTypeSaIS0_EED2Ev.exit: ; preds = %_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISt5arrayIiLm4EES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91
  tail call void @_ZNSt8_Rb_treeISt5arrayIiLm4EES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #31
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !365

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm4EES7_St9_IdentityIS7_ESt4lessIS7_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91
  tail call void @_ZNSt8_Rb_treeISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm4EES7_St9_IdentityIS7_ESt4lessIS7_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92   ; 2 uses
  tail call void @_ZNSt8_Rb_treeISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm4EES7_St9_IdentityIS7_ESt4lessIS7_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %.07) #30
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !366

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm4EES7_St9_IdentityIS7_ESt4lessIS7_ESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !23
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !23
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !22   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i
  %i.r = load i64, ptr %i.p, align 8, !tbaa !23
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt8_Rb_treeISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm4EES7_St9_IdentityIS7_ESt4lessIS7_ESaIS7_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS7_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !23
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #31
  br label %_ZNSt8_Rb_treeISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm4EES7_St9_IdentityIS7_ESt4lessIS7_ESaIS7_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS7_E.exit

_ZNSt8_Rb_treeISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm4EES7_St9_IdentityIS7_ESt4lessIS7_ESaIS7_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeIS7_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 160) #31
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm4EED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !23
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !23
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1
  %i.q = load i64, ptr %i.o, align 8, !tbaa !23
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2
  %i.s = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2
  %i.v = load i64, ptr %i.t, align 8, !tbaa !23
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z9push_bond9DirectiveRN3gmx16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLS2_95EEES5_P7t_atomsP22PreprocessingAtomTypesPcbbfbbPbP14WarningHandler(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(21280) %1, ptr noundef nonnull align 8 dereferenceable(21280) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7, float noundef %8, i1 noundef zeroext %9, i1 noundef zeroext %10, ptr nofree noundef captures(none) %11, ptr noundef %12) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 7 uses
  %i.b = alloca [13 x double], align 16           ; 39 uses
  %13 = alloca %"struct.std::array.151", align 4  ; 21 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %14 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %20 = alloca %"struct.std::array", align 4      ; 6 uses
  %21 = alloca %class.InteractionOfType, align 8  ; 49 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.std::allocator", align 1   ; 3 uses
  %25 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %28 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %34 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %36 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store i32 0, ptr %i.d, align 4, !tbaa !63
  store i32 0, ptr %i.c, align 4, !tbaa !63
  %i.e = tail call noundef i32 @_Z11ifunc_index9Directivei(i32 noundef %0, i32 noundef 1) ; 3 uses
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !167  ; 17 uses
  %i.j = icmp sgt i32 %i.i, 0                     ; 2 uses
  br i1 %i.j, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.i, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check849 = icmp ult i32 %i.i, 32
  br i1 %min.iters.check849, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %index ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store <8 x i32> splat (i32 -409203), ptr %i.l, align 4, !tbaa !63
  store <8 x i32> splat (i32 -409203), ptr %i.m, align 4, !tbaa !63
  store <8 x i32> splat (i32 -409203), ptr %i.n, align 4, !tbaa !63
  store <8 x i32> splat (i32 -409203), ptr %i.o, align 4, !tbaa !63
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !367

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !61

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec850 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index851 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next852, %vec.epilog.vector.body ] ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %index851
  store <8 x i32> splat (i32 -409203), ptr %i.q, align 4, !tbaa !63
  %index.next852 = add nuw i64 %index851, 8       ; 2 uses
  %i.r = icmp eq i64 %index.next852, %n.vec850
  br i1 %i.r, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !368

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n853 = icmp eq i64 %n.vec850, %wide.trip.count
  br i1 %cmp.n853, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec850, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !27
  %i.w = add nsw i32 %i.v, %i.t
  %i.x = icmp sgt i32 %i.w, 0                     ; 2 uses
  %i.y = icmp eq i32 %i.e, 64                     ; 2 uses
  %. = select i1 %i.y, i32 1, i32 %i.i            ; 3 uses
  %i.z = add nsw i32 %., -1
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr @__const._Z9push_bond9DirectiveRN3gmx16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLS2_95EEES5_P7t_atomsP22PreprocessingAtomTypesPcbbfbbPbP14WarningHandler.aaformat, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !62
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 20
  %i.ai = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %5, ptr noundef %i.ac, ptr noundef nonnull %13, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ah) #30 ; 2 uses
  br i1 %i.y, label %bb.b, label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %indvars.iv
  store i32 -409203, ptr %i.aj, align 4, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !369

bb.b:                                             ; preds = %._crit_edge
  %i.ak = load i32, ptr %i.ad, align 4, !tbaa !63
  store i32 %i.ak, ptr %i.af, align 4, !tbaa !63
  %37 = load <1 x i32>, ptr %13, align 4
  %i.al = shufflevector <1 x i32> %37, <1 x i32> poison, <2 x i32> zeroinitializer
  %i.am = add nsw <2 x i32> %i.al, <i32 1, i32 2>
  store <2 x i32> %i.am, ptr %i.ad, align 4, !tbaa !63
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.an = icmp slt i32 %i.ai, %.
  br i1 %i.an, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  call void @_ZNSt10filesystem7__cxx114pathC2IA70_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 1 dereferenceable(70) @.str.9, i8 noundef zeroext 2)
  invoke void @_Z16too_few_functionP14WarningHandlerRKNSt10filesystem7__cxx114pathEi(ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef 2292)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull %i.ap) #30
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.f, %bb.e
  %i.aq = load ptr, ptr %14, align 8, !tbaa !22   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !23
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #31
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit498

bb.g:                                             ; preds = %bb.d
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit502

bb.h:                                             ; preds = %bb.c
  %i.aw = icmp sgt i32 %i.ai, %.                  ; 2 uses
  br i1 %i.aw, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.ax = sext i32 %i.i to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !63 ; 4 uses
  %i.ba = icmp sgt i32 %i.az, -1                  ; 2 uses
  %.lobit = lshr i32 %i.az, 31
  %i.bb = trunc nuw nsw i32 %.lobit to i8
  br i1 %i.ba, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = sub nsw i32 0, %i.az                    ; 2 uses
  store i32 %i.bc, ptr %i.ay, align 4, !tbaa !63
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bd = phi i32 [ %i.bc, %bb.j ], [ %i.az, %bb.i ]
  %i.be = call noundef i32 @_Z11ifunc_index9Directivei(i32 noundef %0, i32 noundef %i.bd) ; 2 uses
  %i.bf = and i32 %i.be, -2
  %switch = icmp eq i32 %i.bf, 70
  %or.cond371 = or i1 %i.ba, %switch
  br i1 %or.cond371, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2248), align 8, !tbaa !43
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @interaction_function, i64 2280), align 8, !tbaa !43
  call void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull @.str.156, ptr noundef %i.bg, ptr noundef %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA70_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 1 dereferenceable(70) @.str.9, i8 noundef zeroext 2)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @_Z22warning_error_and_exitP14WarningHandlerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNSt10filesystem7__cxx114pathEi(ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef 2316) #29
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.l
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %16) #30
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn366 = phi { ptr, i32 } [ %i.bj, %bb.p ], [ %i.bi, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.bk = load ptr, ptr %15, align 8, !tbaa !22   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !23
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit502

bb.r:                                             ; preds = %bb.h, %bb.k
  %.0270 = phi i32 [ %i.e, %bb.h ], [ %i.be, %bb.k ] ; 11 uses
  %.0267 = phi i8 [ 0, %bb.h ], [ %i.bb, %bb.k ]  ; 2 uses
  br i1 %i.j, label %.lr.ph620, label %.._crit_edge621_crit_edge

.._crit_edge621_crit_edge:                        ; preds = %bb.r
  %.pre726 = sext i32 %i.i to i64
  br label %._crit_edge621

.lr.ph620:                                        ; preds = %bb.r
  %i.bp = icmp eq i32 %.0270, 58
  %i.bq = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  %i.bs = zext nneg i32 %i.i to i64               ; 2 uses
  %wide.trip.count685 = zext nneg i32 %i.i to i64 ; 3 uses
  br label %bb.s

._crit_edge621:                                   ; preds = %._crit_edge615, %.._crit_edge621_crit_edge
  %.pre-phi = phi i64 [ %.pre726, %.._crit_edge621_crit_edge ], [ %i.bs, %._crit_edge615 ] ; 5 uses
  %.idx595 = shl nsw i64 %.pre-phi, 2             ; 3 uses
  %i.bt = getelementptr inbounds i8, ptr %13, i64 %.idx595 ; 3 uses
  %i.bu = icmp slt i32 %i.i, 0
  br i1 %i.bu, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %._crit_edge621
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #29
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge621
  %.not.i.i.i.i = icmp eq i32 %i.i, 0             ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit403.thread, label %.noexc376

.noexc376:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx595) #33 ; 10 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %.pre-phi ; 6 uses
  store i32 0, ptr %i.bv, align 4, !tbaa !63
  %i.bx = getelementptr i8, ptr %i.bv, i64 4      ; 3 uses
  %i.by = add nsw i64 %.pre-phi, -1               ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %.lr.ph.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc376
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.by, 2  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.bx, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !63
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.i

bb.s:                                             ; preds = %.lr.ph620, %._crit_edge615
  %indvars.iv682 = phi i64 [ 0, %.lr.ph620 ], [ %indvars.iv.next683, %._crit_edge615 ] ; 2 uses
  %indvars.iv670 = phi i64 [ 1, %.lr.ph620 ], [ %indvars.iv.next671, %._crit_edge615 ] ; 3 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %indvars.iv682 ; 5 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !63 ; 3 uses
  %i.cd = icmp slt i32 %i.cc, 1
  br i1 %i.cd, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = load i32, ptr %3, align 8, !tbaa !141
  %i.cf = icmp sgt i32 %i.cc, %i.ce
  br i1 %i.cf, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  %i.cg = call noundef ptr @_Z17enumValueToString9Directive(i32 noundef %0)
  %i.ch = load i32, ptr %3, align 8, !tbaa !141
  %i.ci = call noundef ptr @_Z17enumValueToString9Directive(i32 noundef %0)
  %i.cj = call noundef ptr @_Z17enumValueToString9Directive(i32 noundef %0)
  call void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull @.str.157, i32 noundef %i.cc, ptr noundef %i.cg, i32 noundef %i.ch, ptr noundef %i.ci, ptr noundef %i.cj)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA70_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull align 1 dereferenceable(70) @.str.9, i8 noundef zeroext 2)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  invoke void @_Z22warning_error_and_exitP14WarningHandlerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNSt10filesystem7__cxx114pathEi(ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %18, i32 noundef 2337) #29
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.z
end_hunk_0
