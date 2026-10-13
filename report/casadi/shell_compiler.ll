Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/shell_compiler?download=true
inline.NumInlined: 1126
inline.NumDeleted: 331
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryEEC2IS6_S9_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairISD_SE_EEEbE4typeELb1EEERS6_RKS9_:bb.a

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.u, i64 %i.w, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !54  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !23
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void

bb.g:                                             ; preds = %.noexc.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.c
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.aj = load i64, ptr %i.c, align 8, !tbaa !24
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ag
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryESt4lessIS5_ESaISt4pairIKS5_S8_EEEC2ESt16initializer_listISD_ERKSA_RKSE_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, casadi::Options::Entry>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, casadi::Options::Entry>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !133
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.c, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !134
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !74
  %.idx = mul nuw nsw i64 %2, 72
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %0, ptr %5, align 8, !tbaa !136
  %.not6.i = icmp eq i64 %2, 0
  br i1 %.not6.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi7Options5EntryEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_insert_unique_IRKSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EOT_RT0_.exit.i
  %.07.i = phi ptr [ %i.x, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi7Options5EntryEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_insert_unique_IRKSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EOT_RT0_.exit.i ], [ %1, %bb.a ] ; 5 uses
  %i.g = load i64, ptr %i.e, align 8, !tbaa !74
  %.not.i7 = icmp eq i64 %i.g, 0
  br i1 %.not.i7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !75   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !23   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !23   ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.l, i64 %i.j) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.o = load ptr, ptr %.07.i, align 8, !tbaa !19
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !19
  %i.q = call i32 @memcmp(ptr noundef %i.p, ptr noundef %i.o, i64 noundef %.sroa.speculated.i.i.i.i) #27 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.b
  %i.r = sub i64 %i.j, %i.l
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.r, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.q, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.s = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.s, label %.noexc.thread, label %bb.c

bb.c:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %.lr.ph.i
  %i.t = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi7Options5EntryEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(72) %.07.i)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.u = extractvalue { ptr, ptr } %i.t, 0
  %i.v = extractvalue { ptr, ptr } %i.t, 1        ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi7Options5EntryEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_insert_unique_IRKSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EOT_RT0_.exit.i, label %.noexc.thread

.noexc.thread:                                    ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %.noexc
  %.sroa.12.2.i17 = phi ptr [ %i.v, %.noexc ], [ %i.h, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ]
  %.sroa.066.2.i16 = phi ptr [ %i.u, %.noexc ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ]
  %i.w = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi7Options5EntryEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_M_insert_IRKSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_EPSt18_Rb_tree_node_baseSP_OT_RT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %.sroa.066.2.i16, ptr noundef nonnull %.sroa.12.2.i17, ptr noundef nonnull align 8 dereferenceable(72) %.07.i, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi7Options5EntryEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_insert_unique_IRKSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EOT_RT0_.exit.i unwind label %bb.d ; 0 uses

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi7Options5EntryEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_insert_unique_IRKSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EOT_RT0_.exit.i: ; preds = %.noexc.thread, %.noexc
  %i.x = getelementptr inbounds nuw i8, ptr %.07.i, i64 72 ; 2 uses
  %.not.i = icmp eq ptr %i.x, %i.f
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !132

.loopexit:                                        ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi7Options5EntryEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE17_M_insert_unique_IRKSB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EOT_RT0_.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void

bb.d:                                             ; preds = %bb.c, %.noexc.thread
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi7Options5EntryEESt10_Select1stISB_ESt4lessIS5_ESaISB_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #27
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN6casadi7Options5EntryD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !24
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #26
  br label %_ZN6casadi7Options5EntryD2Ev.exit

_ZN6casadi7Options5EntryD2Ev.exit:                ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6casadi7Options5EntryD2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !24
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6casadi7Options5EntryD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6casadi7OptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi7Options5EntryEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #29
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit: ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !79     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6casadi7OptionsESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !80
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #26
  br label %_ZNSt6vectorIPKN6casadi7OptionsESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN6casadi7OptionsESaIS3_EED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi7Options5EntryESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi13ShellCompiler4initERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::vector.16", align 16   ; 12 uses
  %5 = alloca %"class.std::vector.16", align 16   ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %18 = alloca %"class.std::vector.16", align 16  ; 10 uses
  %19 = alloca %"class.std::vector.16", align 16  ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %22 = alloca %"class.std::vector.16", align 8   ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %32 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 25 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %44 = alloca %"class.std::allocator", align 1   ; 5 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %49 = alloca %"class.std::vector.16", align 8   ; 5 uses
  %50 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 25 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %56 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %63 = alloca %"class.std::allocator", align 1   ; 5 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %66 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %67 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %68 = alloca %"class.std::vector.16", align 8   ; 5 uses
  %69 = alloca %"class.std::vector.16", align 8   ; 10 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZN6casadi16ImporterInternal4initERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE(ptr noundef nonnull align 8 dereferenceable(161) %0, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  store i8 1, ptr %i.f, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  store i64 25, ptr %i.e, align 8, !tbaa !54
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !19
  %i.i = load i64, ptr %i.e, align 8, !tbaa !54   ; 3 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.h, ptr noundef nonnull align 1 dereferenceable(25) @.str.35, i64 25, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %i.i, ptr %i.j, align 8, !tbaa !23
  %i.k = load ptr, ptr %2, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store i64 0, ptr %i.n, align 8, !tbaa !23
  store i8 0, ptr %i.m, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.o, ptr %6, align 8, !tbaa !22
  store i16 28462, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 2, ptr %i.p, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 18
  store i8 0, ptr %i.q, align 2, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  store ptr %i.r, ptr %7, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.r, ptr noundef nonnull align 1 dereferenceable(3) @.str.38, i64 3, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store i64 3, ptr %i.s, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 19
  store i8 0, ptr %i.t, align 1, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  store ptr %i.u, ptr %8, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.u, ptr noundef nonnull align 1 dereferenceable(3) @.str.38, i64 3, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i64 3, ptr %i.v, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 19
  store i8 0, ptr %i.w, align 1, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  store ptr %i.x, ptr %9, align 8, !tbaa !22
  store i64 7146403657071748653, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  store i64 8, ptr %i.y, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 0, ptr %i.z, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 8 uses
  store ptr %i.aa, ptr %10, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.aa, ptr noundef nonnull align 1 dereferenceable(7) @.str.40, i64 7, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  store i64 7, ptr %i.ab, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 23
  store i8 0, ptr %i.ac, align 1, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 8 uses
  store ptr %i.ad, ptr %11, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ad, ptr noundef nonnull align 1 dereferenceable(3) @.str.41, i64 3, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  store i64 3, ptr %i.ae, align 8, !tbaa !23
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 19
  store i8 0, ptr %i.af, align 1, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.ag, ptr %12, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ag, ptr noundef nonnull align 1 dereferenceable(3) @.str.41, i64 3, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 3, ptr %i.ah, align 8, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 19
  store i8 0, ptr %i.ai, align 1, !tbaa !24
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !73 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not906924 = icmp eq ptr %i.ak, %i.al
  br i1 %.not906924, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.noexc.i
  %i.am = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 264
  br label %bb.a

._crit_edge:                                      ; preds = %_ZNK6casadi11GenericTypecvbEv.exit317
  %.pre949 = load ptr, ptr %3, align 8, !tbaa !19, !noalias !53 ; 2 uses
  %.pre950 = load i64, ptr %i.n, align 8, !tbaa !23, !noalias !53 ; 4 uses
  br i1 %.147, label %.critedge, label %bb.bv

bb.a:                                             ; preds = %.lr.ph, %_ZNK6casadi11GenericTypecvbEv.exit317
  %.046933 = phi i1 [ true, %.lr.ph ], [ %.147, %_ZNK6casadi11GenericTypecvbEv.exit317 ] ; 13 uses
  %.sroa.0855.0925 = phi ptr [ %i.ak, %.lr.ph ], [ %i.jw, %_ZNK6casadi11GenericTypecvbEv.exit317 ] ; 16 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0855.0925, i64 32 ; 12 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0855.0925, i64 40
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !23 ; 11 uses
  switch i64 %i.bl, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit309.thread877 [
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit210
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit223
    i64 14, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit236
    i64 7, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit249
    i64 12, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit252
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit267
    i64 20, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit296
    i64 18, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit309
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.bm = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.bn = load i64, ptr %i.bm, align 1
  %i.bo = icmp ne i64 %i.bn, 8243113893085146979
  %i.bp = zext i1 %i.bo to i32
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit309.thread877

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0855.0925, i64 64
  invoke void @_ZNK6casadi11GenericType9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(8) %i.br)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bs = load ptr, ptr %7, align 8, !tbaa !19    ; 6 uses
  %i.bt = icmp eq ptr %i.bs, %i.r
  %i.bu = load ptr, ptr %13, align 8, !tbaa !19   ; 5 uses
  %i.bv = icmp eq ptr %i.bu, %i.bf                ; 2 uses
  br i1 %i.bt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.bv, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  br i1 %i.bv, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bw = load i64, ptr %i.bg, align 8, !tbaa !23 ; 3 uses
  %i.bx = icmp ult i64 %i.bw, 16
  call void @llvm.assume(i1 %i.bx)
  switch i64 %i.bw, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.by = load i8, ptr %i.bu, align 1, !tbaa !24
  store i8 %i.by, ptr %i.bs, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr align 1 %i.bu, i64 %i.bw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.bz = load i64, ptr %i.bg, align 8, !tbaa !23 ; 2 uses
  store i64 %i.bz, ptr %i.s, align 8, !tbaa !23
  %i.ca = load ptr, ptr %7, align 8, !tbaa !19
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bz
  store i8 0, ptr %i.cb, align 1, !tbaa !24
  %.pre.i = load ptr, ptr %13, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bu, ptr %7, align 8, !tbaa !19
  %i.cc = load <2 x i64>, ptr %i.bg, align 8, !tbaa !24
  store <2 x i64> %i.cc, ptr %i.s, align 8, !tbaa !24
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.cd = load i64, ptr %i.r, align 8, !tbaa !24
  store ptr %i.bu, ptr %7, align 8, !tbaa !19
  %i.ce = load <2 x i64>, ptr %i.bg, align 8, !tbaa !24
  store <2 x i64> %i.ce, ptr %i.s, align 8, !tbaa !24
  %.not.i = icmp eq ptr %i.bs, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bs, ptr %13, align 8, !tbaa !19
  store i64 %i.cd, ptr %i.bf, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.bf, ptr %13, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.cf = phi ptr [ %i.bs, %bb.f ], [ %i.bf, %bb.g ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.bg, align 8, !tbaa !23
  store i8 0, ptr %i.cf, align 1, !tbaa !24
  %i.cg = load ptr, ptr %13, align 8, !tbaa !19   ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.bf
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ci = load i64, ptr %i.bf, align 8, !tbaa !24
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %_ZNK6casadi11GenericTypecvbEv.exit317

bb.h:                                             ; preds = %bb.bl, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit249.thread, %bb.bj, %bb.be, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit309.thread877
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.ih

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.ih

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit210: ; preds = %bb.a
  %.pre = load ptr, ptr %i.bj, align 8, !tbaa !19
  %bcmp.i209 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.9, i64 %i.bl)
  %i.cm = icmp eq i32 %bcmp.i209, 0
  br i1 %i.cm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit210.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit309.thread877

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit210.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit210
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0855.0925, i64 64
  invoke void @_ZNK6casadi11GenericType9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.cn)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit210.thread
  %i.co = load ptr, ptr %8, align 8, !tbaa !19    ; 6 uses
  %i.cp = icmp eq ptr %i.co, %i.u
  %i.cq = load ptr, ptr %14, align 8, !tbaa !19   ; 5 uses
  %i.cr = icmp eq ptr %i.cq, %i.bd                ; 2 uses
  br i1 %i.cp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i216: ; preds = %bb.j
  br i1 %i.cr, label %bb.k, label %.thread.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i211: ; preds = %bb.j
  br i1 %i.cr, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i212

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i211, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i216
  %i.cs = load i64, ptr %i.be, align 8, !tbaa !23 ; 3 uses
  %i.ct = icmp ult i64 %i.cs, 16
  call void @llvm.assume(i1 %i.ct)
  switch i64 %i.cs, label %bb.m [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i214
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.cu = load i8, ptr %i.cq, align 1, !tbaa !24
  store i8 %i.cu, ptr %i.co, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i214

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.cq, i64 %i.cs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i214

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i214: ; preds = %bb.m, %bb.l, %bb.k
  %i.cv = load i64, ptr %i.be, align 8, !tbaa !23 ; 2 uses
  store i64 %i.cv, ptr %i.v, align 8, !tbaa !23
  %i.cw = load ptr, ptr %8, align 8, !tbaa !19
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cv
  store i8 0, ptr %i.cx, align 1, !tbaa !24
  %.pre.i215 = load ptr, ptr %14, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit218

.thread.i217:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i216
  store ptr %i.cq, ptr %8, align 8, !tbaa !19
  %i.cy = load <2 x i64>, ptr %i.be, align 8, !tbaa !24
  store <2 x i64> %i.cy, ptr %i.v, align 8, !tbaa !24
  br label %bb.o

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i212: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i211
  %i.cz = load i64, ptr %i.u, align 8, !tbaa !24
  store ptr %i.cq, ptr %8, align 8, !tbaa !19
  %i.da = load <2 x i64>, ptr %i.be, align 8, !tbaa !24
  store <2 x i64> %i.da, ptr %i.v, align 8, !tbaa !24
  %.not.i213 = icmp eq ptr %i.co, null
  br i1 %.not.i213, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i212
  store ptr %i.co, ptr %14, align 8, !tbaa !19
  store i64 %i.cz, ptr %i.bd, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit218

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i212, %.thread.i217
  store ptr %i.bd, ptr %14, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit218: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i214, %bb.n, %bb.o
  %i.db = phi ptr [ %i.co, %bb.n ], [ %i.bd, %bb.o ], [ %.pre.i215, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i214 ]
end_hunk_0
begin_hunk_1_@_ZN6casadi13ShellCompiler4initERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_11GenericTypeESt4lessIS7_ESaISt4pairIKS7_S8_EEE:.noexc.i
  br i1 %i.fg, label %bb.af, label %.thread.i259

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i253: ; preds = %bb.ae
  br i1 %i.fg, label %bb.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i254

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i253, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i258
  %i.fh = load i64, ptr %i.ay, align 8, !tbaa !23 ; 3 uses
  %i.fi = icmp ult i64 %i.fh, 16
  call void @llvm.assume(i1 %i.fi)
  switch i64 %i.fh, label %bb.ah [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i256
    i64 1, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  %i.fj = load i8, ptr %i.ff, align 1, !tbaa !24
  store i8 %i.fj, ptr %i.fd, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i256

bb.ah:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fd, ptr align 1 %i.ff, i64 %i.fh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i256

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i256: ; preds = %bb.ah, %bb.ag, %bb.af
  %i.fk = load i64, ptr %i.ay, align 8, !tbaa !23 ; 2 uses
  store i64 %i.fk, ptr %i.ab, align 8, !tbaa !23
  %i.fl = load ptr, ptr %10, align 8, !tbaa !19
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fk
  store i8 0, ptr %i.fm, align 1, !tbaa !24
  %.pre.i257 = load ptr, ptr %17, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit260

.thread.i259:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i258
  store ptr %i.ff, ptr %10, align 8, !tbaa !19
  %i.fn = load <2 x i64>, ptr %i.ay, align 8, !tbaa !24
  store <2 x i64> %i.fn, ptr %i.ab, align 8, !tbaa !24
  br label %bb.aj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i254: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i253
  %i.fo = load i64, ptr %i.aa, align 8, !tbaa !24
  store ptr %i.ff, ptr %10, align 8, !tbaa !19
  %i.fp = load <2 x i64>, ptr %i.ay, align 8, !tbaa !24
  store <2 x i64> %i.fp, ptr %i.ab, align 8, !tbaa !24
  %.not.i255 = icmp eq ptr %i.fd, null
  br i1 %.not.i255, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i254
  store ptr %i.fd, ptr %17, align 8, !tbaa !19
  store i64 %i.fo, ptr %i.ax, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit260

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i254, %.thread.i259
  store ptr %i.ax, ptr %17, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit260

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit260: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i256, %bb.ai, %bb.aj
  %i.fq = phi ptr [ %i.fd, %bb.ai ], [ %i.ax, %bb.aj ], [ %.pre.i257, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i256 ]
  store i64 0, ptr %i.ay, align 8, !tbaa !23
  store i8 0, ptr %i.fq, align 1, !tbaa !24
  %i.fr = load ptr, ptr %17, align 8, !tbaa !19   ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.ax
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit260
  %i.ft = load i64, ptr %i.ax, align 8, !tbaa !24
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit260, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %_ZNK6casadi11GenericTypecvbEv.exit317

bb.ak:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit252.thread
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %bb.ih

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit236
  %bcmp.i264 = call i32 @bcmp(ptr %.pre943, ptr nonnull @.str.17, i64 %i.bl)
  %i.fw = icmp eq i32 %bcmp.i264, 0
  br i1 %i.fw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit309.thread877

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit267: ; preds = %bb.a
  %.pre946 = load ptr, ptr %i.bj, align 8, !tbaa !19
  %bcmp.i266 = call i32 @bcmp(ptr %.pre946, ptr nonnull @.str.19, i64 %i.bl)
  %i.fx = icmp eq i32 %bcmp.i266, 0
  br i1 %i.fx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit309.thread877

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit267, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0855.0925, i64 64
  invoke void @_ZNK6casadi11GenericType16to_string_vectorB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.16") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %i.fy)
          to label %_ZNK6casadi11GenericTypecvSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEv.exit unwind label %bb.an

_ZNK6casadi11GenericTypecvSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEv.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265.thread
  %i.fz = load ptr, ptr %4, align 16, !tbaa !56   ; 5 uses
  %i.ga = load ptr, ptr %i.at, align 8, !tbaa !57 ; 2 uses
  %i.gb = load ptr, ptr %i.au, align 16, !tbaa !59
  %i.gc = load <2 x ptr>, ptr %18, align 16, !tbaa !55
  store <2 x ptr> %i.gc, ptr %4, align 16, !tbaa !55
  %i.gd = load ptr, ptr %i.aw, align 16, !tbaa !59
  store ptr %i.gd, ptr %i.au, align 16, !tbaa !59
  %.not4.i.i.i.i.i = icmp eq ptr %i.fz, %i.ga
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK6casadi11GenericTypecvSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEv.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.gj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.fz, %_ZNK6casadi11GenericTypecvSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEv.exit ] ; 3 uses
  %i.ge = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !19 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !24
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gj, %i.ga
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, %_ZNK6casadi11GenericTypecvSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEv.exit
  %.not.i.i1.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, label %bb.al

bb.al:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.gk = ptrtoint ptr %i.gb to i64
  %i.gl = ptrtoint ptr %i.fz to i64
  %i.gm = sub i64 %i.gk, %i.gl
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef %i.gm) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.al
  %i.gn = load ptr, ptr %18, align 16, !tbaa !56  ; 3 uses
  %i.go = load ptr, ptr %i.av, align 8, !tbaa !57 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gn, %i.go
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gu, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.gn, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %i.gp = load ptr, ptr %.05.i.i.i, align 8, !tbaa !19 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.gr = icmp eq ptr %i.gp, %i.gq
  br i1 %i.gr, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.gs = load i64, ptr %i.gq, align 8, !tbaa !24
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gp, i64 noundef %i.gt) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gu, %i.go
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %18, align 16, !tbaa !56
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit
  %i.gv = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.gn, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gv, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.gw = load ptr, ptr %i.aw, align 16, !tbaa !59
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = ptrtoint ptr %i.gv to i64
  %i.gz = sub i64 %i.gx, %i.gy
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef %i.gz) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %_ZNK6casadi11GenericTypecvbEv.exit317

bb.an:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265.thread
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %bb.ih

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit270: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit252
  %bcmp.i269 = call i32 @bcmp(ptr %.pre945, ptr nonnull @.str.21, i64 %i.bl)
  %i.hb = icmp eq i32 %bcmp.i269, 0
  br i1 %i.hb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit270.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit309.thread877

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit270.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit270
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.0855.0925, i64 64
  invoke void @_ZNK6casadi11GenericType16to_string_vectorB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.16") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.hc)
          to label %_ZNK6casadi11GenericTypecvSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEv.exit272 unwind label %bb.aq

_ZNK6casadi11GenericTypecvSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEv.exit272: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit270.thread
  %71 = load ptr, ptr %5, align 16, !tbaa !56     ; 5 uses
  %i.hd = load ptr, ptr %i.ap, align 8, !tbaa !57 ; 2 uses
  %i.he = load ptr, ptr %i.aq, align 16, !tbaa !59
  %i.hf = load <2 x ptr>, ptr %19, align 16, !tbaa !55
  store <2 x ptr> %i.hf, ptr %5, align 16, !tbaa !55
  %i.hg = load ptr, ptr %i.as, align 16, !tbaa !59
  store ptr %i.hg, ptr %i.aq, align 16, !tbaa !59
  %.not4.i.i.i.i.i273 = icmp eq ptr %71, %i.hd
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i273, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i279, label %.lr.ph.i.i.i.i.i274

.lr.ph.i.i.i.i.i274:                              ; preds = %_ZNK6casadi11GenericTypecvSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEv.exit272, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i277
  %.05.i.i.i.i.i275 = phi ptr [ %i.hm, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i277 ], [ %71, %_ZNK6casadi11GenericTypecvSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEv.exit272 ] ; 3 uses
  %i.hh = load ptr, ptr %.05.i.i.i.i.i275, align 8, !tbaa !19 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i275, i64 16 ; 2 uses
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i277, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i276: ; preds = %.lr.ph.i.i.i.i.i274
  %i.hk = load i64, ptr %i.hi, align 8, !tbaa !24
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hl) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i277

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i277: ; preds = %.lr.ph.i.i.i.i.i274, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i276
  %i.hm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i275, i64 32 ; 2 uses
  %.not.i.i.i.i.i278 = icmp eq ptr %i.hm, %i.hd
  br i1 %.not.i.i.i.i.i278, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i279, label %.lr.ph.i.i.i.i.i274, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i279: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i277, %_ZNK6casadi11GenericTypecvSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEv.exit272
  %.not.i.i1.i.i.i280 = icmp eq ptr %71, null
  br i1 %.not.i.i1.i.i.i280, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit282, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i279
  %i.hn = ptrtoint ptr %i.he to i64
  %i.ho = ptrtoint ptr %71 to i64
  %i.hp = sub i64 %i.hn, %i.ho
  call void @_ZdlPvm(ptr noundef nonnull %71, i64 noundef %i.hp) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit282

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit282: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i279, %bb.ao
  %i.hq = load ptr, ptr %19, align 16, !tbaa !56  ; 3 uses
  %i.hr = load ptr, ptr %i.ar, align 8, !tbaa !57 ; 2 uses
  %.not4.i.i.i283 = icmp eq ptr %i.hq, %i.hr
  br i1 %.not4.i.i.i283, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i291, label %.lr.ph.i.i.i284

.lr.ph.i.i.i284:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit282, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i287
  %.05.i.i.i285 = phi ptr [ %i.hx, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i287 ], [ %i.hq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit282 ] ; 3 uses
  %i.hs = load ptr, ptr %.05.i.i.i285, align 8, !tbaa !19 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.05.i.i.i285, i64 16 ; 2 uses
  %i.hu = icmp eq ptr %i.hs, %i.ht
  br i1 %i.hu, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i287, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i286

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i286: ; preds = %.lr.ph.i.i.i284
  %i.hv = load i64, ptr %i.ht, align 8, !tbaa !24
  %i.hw = add i64 %i.hv, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hw) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i287

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i287: ; preds = %.lr.ph.i.i.i284, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i286
  %i.hx = getelementptr inbounds nuw i8, ptr %.05.i.i.i285, i64 32 ; 2 uses
  %.not.i.i.i288 = icmp eq ptr %i.hx, %i.hr
  br i1 %.not.i.i.i288, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i289, label %.lr.ph.i.i.i284, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i289: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i287
  %.pr.i290 = load ptr, ptr %19, align 16, !tbaa !56
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i291

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i291: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i289, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit282
  %i.hy = phi ptr [ %.pr.i290, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i289 ], [ %i.hq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit282 ] ; 3 uses
  %.not.i.i1.i292 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i1.i292, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit294, label %bb.ap

bb.ap:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i291
  %i.hz = load ptr, ptr %i.as, align 16, !tbaa !59
  %i.ia = ptrtoint ptr %i.hz to i64
  %i.ib = ptrtoint ptr %i.hy to i64
  %i.ic = sub i64 %i.ia, %i.ib
  call void @_ZdlPvm(ptr noundef nonnull %i.hy, i64 noundef %i.ic) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit294

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit294: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i291, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %_ZNK6casadi11GenericTypecvbEv.exit317

bb.aq:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit270.thread
  %i.id = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %bb.ih

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit296: ; preds = %bb.a
  %.pre947 = load ptr, ptr %i.bj, align 8, !tbaa !19
  %bcmp.i295 = call i32 @bcmp(ptr %.pre947, ptr nonnull @.str.25, i64 %i.bl)
  %i.ie = icmp eq i32 %bcmp.i295, 0
  br i1 %i.ie, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit296.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit309.thread877

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit296.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit296
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0855.0925, i64 64
  invoke void @_ZNK6casadi11GenericType9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(8) %i.if)
          to label %bb.ar unwind label %bb.ax

bb.ar:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit296.thread
  %i.ig = load ptr, ptr %11, align 8, !tbaa !19   ; 6 uses
  %i.ih = icmp eq ptr %i.ig, %i.ad
  %i.ii = load ptr, ptr %20, align 8, !tbaa !19   ; 5 uses
  %i.ij = icmp eq ptr %i.ii, %i.an                ; 2 uses
  br i1 %i.ih, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i302: ; preds = %bb.ar
  br i1 %i.ij, label %bb.as, label %.thread.i303

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i297: ; preds = %bb.ar
  br i1 %i.ij, label %bb.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i298

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i297, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i302
  %i.ik = load i64, ptr %i.ao, align 8, !tbaa !23 ; 3 uses
  %i.il = icmp ult i64 %i.ik, 16
  call void @llvm.assume(i1 %i.il)
  switch i64 %i.ik, label %bb.au [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i300
    i64 1, label %bb.at
  ]

bb.at:                                            ; preds = %bb.as
  %i.im = load i8, ptr %i.ii, align 1, !tbaa !24
  store i8 %i.im, ptr %i.ig, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i300

bb.au:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ig, ptr align 1 %i.ii, i64 %i.ik, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i300

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i300: ; preds = %bb.au, %bb.at, %bb.as
  %i.in = load i64, ptr %i.ao, align 8, !tbaa !23 ; 2 uses
  store i64 %i.in, ptr %i.ae, align 8, !tbaa !23
  %i.io = load ptr, ptr %11, align 8, !tbaa !19
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.in
  store i8 0, ptr %i.ip, align 1, !tbaa !24
  %.pre.i301 = load ptr, ptr %20, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit304

.thread.i303:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i302
  store ptr %i.ii, ptr %11, align 8, !tbaa !19
  %i.iq = load <2 x i64>, ptr %i.ao, align 8, !tbaa !24
  store <2 x i64> %i.iq, ptr %i.ae, align 8, !tbaa !24
  br label %bb.aw

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i298: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i297
  %i.ir = load i64, ptr %i.ad, align 8, !tbaa !24
  store ptr %i.ii, ptr %11, align 8, !tbaa !19
  %i.is = load <2 x i64>, ptr %i.ao, align 8, !tbaa !24
  store <2 x i64> %i.is, ptr %i.ae, align 8, !tbaa !24
  %.not.i299 = icmp eq ptr %i.ig, null
  br i1 %.not.i299, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i298
  store ptr %i.ig, ptr %20, align 8, !tbaa !19
  store i64 %i.ir, ptr %i.an, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit304

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i298, %.thread.i303
  store ptr %i.an, ptr %20, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit304

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit304: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i300, %bb.av, %bb.aw
  %i.it = phi ptr [ %i.ig, %bb.av ], [ %i.an, %bb.aw ], [ %.pre.i301, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i300 ]
  store i64 0, ptr %i.ao, align 8, !tbaa !23
  store i8 0, ptr %i.it, align 1, !tbaa !24
  %i.iu = load ptr, ptr %20, align 8, !tbaa !19   ; 2 uses
  %i.iv = icmp eq ptr %i.iu, %i.an
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit304
  %i.iw = load i64, ptr %i.an, align 8, !tbaa !24
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.ix) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit304, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i305
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %_ZNK6casadi11GenericTypecvbEv.exit317

bb.ax:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit296.thread
  %i.iy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %bb.ih

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit309: ; preds = %bb.a
  %.pre948 = load ptr, ptr %i.bj, align 8, !tbaa !19
  %bcmp.i308 = call i32 @bcmp(ptr %.pre948, ptr nonnull @.str.27, i64 %i.bl)
  %i.iz = icmp eq i32 %bcmp.i308, 0
  br i1 %i.iz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit309.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit309.thread877

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit309.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit309
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0855.0925, i64 64
  invoke void @_ZNK6casadi11GenericType9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(8) %i.ja)
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit309.thread
  %i.jb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %21) #27 ; 0 uses
  %i.jc = load ptr, ptr %21, align 8, !tbaa !19   ; 2 uses
  %i.jd = icmp eq ptr %i.jc, %i.am
  br i1 %i.jd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310: ; preds = %bb.ay
  %i.je = load i64, ptr %i.am, align 8, !tbaa !24
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br label %_ZNK6casadi11GenericTypecvbEv.exit317

bb.az:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit309.thread
  %i.jg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br label %bb.ih

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit309.thread877: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit296, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit270, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit267, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit265, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit249, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit223, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit210, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit309
  %i.jh = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull @.str.29)
          to label %bb.ba unwind label %bb.h

bb.ba:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit309.thread877
  br i1 %i.jh, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0855.0925, i64 64
  invoke void @_ZNK6casadi11GenericType16to_string_vectorB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.16") align 8 %22, ptr noundef nonnull align 8 dereferenceable(8) %i.ji)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.jj = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %22) #27 ; 0 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  br label %_ZNK6casadi11GenericTypecvbEv.exit317

bb.bd:                                            ; preds = %bb.bb
  %i.jk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  br label %bb.ih

bb.be:                                            ; preds = %bb.ba
  %i.jl = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull @.str.31)
          to label %bb.bf unwind label %bb.h

bb.bf:                                            ; preds = %bb.be
  br i1 %i.jl, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0855.0925, i64 64
  invoke void @_ZNK6casadi11GenericType9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %i.jm)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.jn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %23) #27 ; 0 uses
  %i.jo = load ptr, ptr %23, align 8, !tbaa !19   ; 2 uses
  %i.jp = icmp eq ptr %i.jo, %i.bh
  br i1 %i.jp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313: ; preds = %bb.bh
  %i.jq = load i64, ptr %i.bh, align 8, !tbaa !24
  %i.jr = add i64 %i.jq, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.jr) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br label %_ZNK6casadi11GenericTypecvbEv.exit317

bb.bi:                                            ; preds = %bb.bg
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br label %bb.ih

bb.bj:                                            ; preds = %bb.bf
  %i.jt = invoke noundef zeroext i1 @_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull @.str.33)
          to label %bb.bk unwind label %bb.h

bb.bk:                                            ; preds = %bb.bj
  br i1 %i.jt, label %bb.bl, label %_ZNK6casadi11GenericTypecvbEv.exit317

bb.bl:                                            ; preds = %bb.bk
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0855.0925, i64 64
  %i.jv = invoke noundef zeroext i1 @_ZNK6casadi11GenericType7to_boolEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ju)
          to label %_ZNK6casadi11GenericTypecvbEv.exit317 unwind label %bb.h

_ZNK6casadi11GenericTypecvbEv.exit317:            ; preds = %bb.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit294, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315, %bb.bk, %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNK6casadi11GenericTypecvbEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.147 = phi i1 [ %.046933, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.046933, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ], [ %.046933, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit234 ], [ %.046933, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247 ], [ %.046933, %_ZNK6casadi11GenericTypecvbEv.exit ], [ %.046933, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263 ], [ %.046933, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ], [ %.046933, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit294 ], [ %.046933, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit307 ], [ %.046933, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312 ], [ %.046933, %bb.bc ], [ %.046933, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315 ], [ %.046933, %bb.bk ], [ %i.jv, %bb.bl ] ; 2 uses
  %i.jw = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.0855.0925) #30 ; 2 uses
  %.not906 = icmp eq ptr %i.jw, %i.al
  br i1 %.not906, label %._crit_edge, label %bb.a

.critedge:                                        ; preds = %.noexc.i, %._crit_edge
  %i.jx = phi i64 [ 0, %.noexc.i ], [ %.pre950, %._crit_edge ] ; 3 uses
  %i.jy = phi ptr [ %i.m, %.noexc.i ], [ %.pre949, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %i.jz = load ptr, ptr %2, align 8, !tbaa !19, !noalias !199
  %i.ka = load i64, ptr %i.j, align 8, !tbaa !23, !noalias !199 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 7 uses
  store ptr %i.kb, ptr %25, align 8, !tbaa !22, !alias.scope !200
  %i.kc = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  store i64 0, ptr %i.kc, align 8, !tbaa !23, !alias.scope !200
  store i8 0, ptr %i.kb, align 8, !tbaa !24, !alias.scope !200
  %i.kd = add i64 %i.ka, %i.jx
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %25, i64 noundef %i.kd)
          to label %bb.bm unwind label %bb.bn

bb.bm:                                            ; preds = %.critedge
  %i.ke = load i64, ptr %i.kc, align 8, !tbaa !23, !alias.scope !200
  %i.kf = sub i64 4611686018427387903, %i.ke
  %i.kg = icmp ult i64 %i.kf, %i.jx
  br i1 %i.kg, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.bm
  %i.kh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef %i.jy, i64 noundef %i.jx)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.bn ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.ki = load i64, ptr %i.kc, align 8, !tbaa !23, !alias.scope !200
  %i.kj = sub i64 4611686018427387903, %i.ki
  %i.kk = icmp ult i64 %i.kj, %i.ka
  br i1 %i.kk, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.bm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #28
          to label %.cont.i.i unwind label %bb.bn

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.kl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef %i.jz, i64 noundef %i.ka)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit unwind label %bb.bn ; 0 uses

bb.bn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %.critedge
  %i.km = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kn = load ptr, ptr %25, align 8, !tbaa !19, !alias.scope !200 ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.kb
  br i1 %i.ko, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  invoke void @_ZN6casadi14temporary_fileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.bo unwind label %bb.bu

bb.bo:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !19 ; 6 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ks = icmp eq ptr %i.kq, %i.kr
  %i.kt = load ptr, ptr %24, align 8, !tbaa !19   ; 5 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.kv = icmp eq ptr %i.kt, %i.ku                ; 2 uses
  br i1 %i.ks, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i323, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i318

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i323: ; preds = %bb.bo
  br i1 %i.kv, label %bb.bp, label %.thread.i324

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i318: ; preds = %bb.bo
  br i1 %i.kv, label %bb.bp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i319

bb.bp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i318, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i323
  %i.kw = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !23 ; 3 uses
  %i.ky = icmp ult i64 %i.kx, 16
  call void @llvm.assume(i1 %i.ky)
  switch i64 %i.kx, label %bb.br [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i321
    i64 1, label %bb.bq
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.kz = load i8, ptr %i.kt, align 1, !tbaa !24
  store i8 %i.kz, ptr %i.kq, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i321

bb.br:                                            ; preds = %bb.bp
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kq, ptr align 1 %i.kt, i64 %i.kx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i321

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i321: ; preds = %bb.br, %bb.bq, %bb.bp
  %i.la = load i64, ptr %i.kw, align 8, !tbaa !23 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %i.la, ptr %i.lb, align 8, !tbaa !23
  %i.lc = load ptr, ptr %i.kp, align 8, !tbaa !19
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.la
  store i8 0, ptr %i.ld, align 1, !tbaa !24
  %.pre.i322 = load ptr, ptr %24, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit325

.thread.i324:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i323
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr %i.kt, ptr %i.kp, align 8, !tbaa !19
  %i.lf = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.lg = load <2 x i64>, ptr %i.lf, align 8, !tbaa !24
  store <2 x i64> %i.lg, ptr %i.le, align 8, !tbaa !24
  br label %bb.bt

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i319: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i318
  %i.lh = load i64, ptr %i.kr, align 8, !tbaa !24
  store ptr %i.kt, ptr %i.kp, align 8, !tbaa !19
  %i.li = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.lk = load <2 x i64>, ptr %i.li, align 8, !tbaa !24
  store <2 x i64> %i.lk, ptr %i.lj, align 8, !tbaa !24
  %.not.i320 = icmp eq ptr %i.kq, null
  br i1 %.not.i320, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i319
  store ptr %i.kq, ptr %24, align 8, !tbaa !19
  store i64 %i.lh, ptr %i.ku, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit325

bb.bt:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i319, %.thread.i324
  store ptr %i.ku, ptr %24, align 8, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit325

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit325: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i321, %bb.bs, %bb.bt
  %i.ll = phi ptr [ %i.kq, %bb.bs ], [ %i.ku, %bb.bt ], [ %.pre.i322, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i321 ]
  %i.lm = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 0, ptr %i.lm, align 8, !tbaa !23
  store i8 0, ptr %i.ll, align 1, !tbaa !24
  %i.ln = load ptr, ptr %24, align 8, !tbaa !19   ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.lp = icmp eq ptr %i.ln, %i.lo
  br i1 %i.lp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit325
  %i.lq = load i64, ptr %i.lo, align 8, !tbaa !24
  %i.lr = add i64 %i.lq, 1
  call void @_ZdlPvm(ptr noundef %i.ln, i64 noundef %i.lr) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit325, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326
  %i.ls = load ptr, ptr %25, align 8, !tbaa !19   ; 2 uses
  %i.lt = icmp eq ptr %i.ls, %i.kb
  br i1 %i.lt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328
  %i.lu = load i64, ptr %i.kb, align 8, !tbaa !24
  %i.lv = add i64 %i.lu, 1
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lv) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  br label %bb.ch

bb.bu:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %i.lw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lx = load ptr, ptr %25, align 8, !tbaa !19   ; 2 uses
  %i.ly = icmp eq ptr %i.lx, %i.kb
  br i1 %i.ly, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.bu, %bb.bn
  %.sink = phi ptr [ %i.kn, %bb.bn ], [ %i.lx, %bb.bu ]
  %.pn110.ph = phi { ptr, i32 } [ %i.km, %bb.bn ], [ %i.lw, %bb.bu ]
  %i.lz = load i64, ptr %i.kb, align 8, !tbaa !24
  %i.ma = add i64 %i.lz, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ma) #26
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.bu, %bb.bn
  %.pn110 = phi { ptr, i32 } [ %i.km, %bb.bn ], [ %i.lw, %bb.bu ], [ %.pn110.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  br label %bb.ih

bb.bv:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.mb = load ptr, ptr %2, align 8, !tbaa !19, !noalias !201
  %i.mc = load i64, ptr %i.j, align 8, !tbaa !23, !noalias !201 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 7 uses
  store ptr %i.md, ptr %27, align 8, !tbaa !22, !alias.scope !202
  %i.me = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 4 uses
  store i64 0, ptr %i.me, align 8, !tbaa !23, !alias.scope !202
  store i8 0, ptr %i.md, align 8, !tbaa !24, !alias.scope !202
  %i.mf = add i64 %i.mc, %.pre950
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %27, i64 noundef %i.mf)
          to label %bb.bw unwind label %bb.bx

end_hunk_1
