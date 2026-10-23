Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCMakePkgConfigCommand?download=true
inline.NumInlined: 4427
inline.NumDeleted: 1719
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN12_GLOBAL__N_115CommonArgumentsD2Ev:bb.a
  br i1 %i.bt, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i19: ; preds = %bb.i
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !23
  %i.bv = add i64 %i.bu, 1
  tail call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit21

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit21: ; preds = %bb.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i19
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !67 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit21
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !23
  %i.cb = add i64 %i.ca, 1
  tail call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !67 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !23
  %i.ch = add i64 %i.cg, 1
  tail call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !75
  invoke void @_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3setINSt7__cxx1112basic_stringIcS2_SaIcEEESt4lessISA_ESaISA_EEESt10_Select1stISF_ESB_IS3_ESaISF_EE8_M_eraseEPSt13_Rb_tree_nodeISF_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.cj)
          to label %_ZN14ArgumentParser11ParseResultD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  tail call void @__clang_call_terminate(ptr %i.cl) #22
  unreachable

_ZN14ArgumentParser11ParseResultD2Ev.exit:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3setINSt7__cxx1112basic_stringIcS2_SaIcEEESt4lessISA_ESaISA_EEESt10_Select1stISF_ESB_IS3_ESaISF_EE8_M_eraseEPSt13_Rb_tree_nodeISF_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3setINSt7__cxx1112basic_stringIcS2_SaIcEEESt4lessISA_ESaISA_EEESt10_Select1stISF_ESB_IS3_ESaISF_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISF_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3setINSt7__cxx1112basic_stringIcS2_SaIcEEESt4lessISA_ESaISA_EEESt10_Select1stISF_ESB_IS3_ESaISF_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISF_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !203
  tail call void @_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3setINSt7__cxx1112basic_stringIcS2_SaIcEEESt4lessISA_ESaISA_EEESt10_Select1stISF_ESB_IS3_ESaISF_EE8_M_eraseEPSt13_Rb_tree_nodeISF_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !204  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef %i.g)
          to label %_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3setINSt7__cxx1112basic_stringIcS2_SaIcEEESt4lessISA_ESaISA_EEESt10_Select1stISF_ESB_IS3_ESaISF_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISF_E.exit unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #22
  unreachable

_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3setINSt7__cxx1112basic_stringIcS2_SaIcEEESt4lessISA_ESaISA_EEESt10_Select1stISF_ESB_IS3_ESaISF_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISF_E.exit: ; preds = %.lr.ph
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 96) #24
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !778

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3setINSt7__cxx1112basic_stringIcS2_SaIcEEESt4lessISA_ESaISA_EEESt10_Select1stISF_ESB_IS3_ESaISF_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISF_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !203
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !204  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !23
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #24
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #24
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !779

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

declare noundef ptr @_ZNK10cmMakefile15FindTargetToUseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cm8enum_setIN12cmStateEnums12TargetDomainELm32ELi0EEE(ptr noundef nonnull align 8 dereferenceable(2952), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef align 8 dead_on_return) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define internal fastcc range(i16 0, 258) i16 @_ZN12_GLOBAL__N_116PopulatePCTargetERNS_17PopulateArgumentsER17cmExecutionStatus(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [3 x %"struct.std::pair.53"], align 8 ; 11 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %3 = alloca [2 x %"struct.std::pair.53"], align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::optional.446", align 8 ; 7 uses
  %9 = alloca %struct.cmPkgConfigLibsResult, align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::optional.446", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.std::optional.446", align 8 ; 7 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::optional.446", align 8 ; 7 uses
  %19 = alloca %struct.cmPkgConfigCflagsResult, align 8 ; 13 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %22 = alloca %"class.std::optional.446", align 8 ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.std::optional.446", align 8 ; 7 uses
  %26 = alloca %"class.std::vector.262", align 8  ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %28 = alloca %"class.std::optional.446", align 8 ; 7 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %31 = alloca %"class.std::optional.446", align 8 ; 7 uses
  %32 = alloca [9 x %"struct.std::pair.53"], align 8 ; 30 uses
  %33 = alloca %class.cmAlphaNum, align 8         ; 6 uses
  %34 = alloca [4 x %"struct.std::pair.53"], align 8 ; 14 uses
  %35 = alloca %class.cmAlphaNum, align 8         ; 6 uses
  %36 = alloca [4 x %"struct.std::pair.53"], align 8 ; 15 uses
  %37 = alloca [3 x %"struct.std::pair.53"], align 8 ; 12 uses
  %38 = alloca %class.cmAlphaNum, align 8         ; 6 uses
  %39 = alloca %class.cmAlphaNum, align 8         ; 6 uses
  %40 = alloca %"class.std::optional.86", align 8 ; 27 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %i.m = alloca i64, align 8                      ; 6 uses
  %i.n = alloca i64, align 8                      ; 6 uses
  %47 = alloca [3 x %"struct.std::pair.53"], align 8 ; 12 uses
  %48 = alloca %class.cmAlphaNum, align 8         ; 6 uses
  %i.o = alloca i64, align 8                      ; 6 uses
  %i.p = alloca i64, align 8                      ; 6 uses
  %49 = alloca [2 x %"struct.std::pair.53"], align 8 ; 9 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %51 = alloca %"class.std::optional.64", align 8 ; 19 uses
  %52 = alloca %"class.std::unordered_map", align 8 ; 16 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %56 = alloca %"class.std::unordered_map.356", align 8 ; 17 uses
  %57 = alloca %"class.std::unordered_map.370", align 8 ; 16 uses
  %58 = alloca %"class.std::optional.86", align 8 ; 22 uses
  %59 = alloca %"class.std::optional.26", align 8 ; 12 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %61 = alloca %"class.std::vector.388", align 8  ; 10 uses
  %62 = alloca %"class.std::optional.86", align 8 ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.r = load i8, ptr %i.q, align 8, !tbaa !78, !range !98, !noundef !99
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %.thread, label %._crit_edge.i.i

.thread:                                          ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 360
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #23, !noalias !881
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !67, !noalias !881
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.w = load i64, ptr %i.v, align 8, !tbaa !68, !noalias !881
  store i64 %i.w, ptr %49, align 8, !tbaa !61, !alias.scope !882, !noalias !881
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %49, i64 8
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !62, !alias.scope !882, !noalias !881
  %i.x = getelementptr inbounds nuw i8, ptr %49, i64 16
  store ptr null, ptr %i.x, align 8, !tbaa !66, !alias.scope !882, !noalias !881
  %i.y = getelementptr inbounds nuw i8, ptr %49, i64 24
  store i64 1, ptr %i.y, align 8, !tbaa !61, !alias.scope !883, !noalias !881
  %.sroa.4.0..sroa_idx.i11.i = getelementptr inbounds nuw i8, ptr %49, i64 32
  store ptr @.str.128, ptr %.sroa.4.0..sroa_idx.i11.i, align 8, !tbaa !62, !alias.scope !883, !noalias !881
  %i.z = getelementptr inbounds nuw i8, ptr %49, i64 40
  store ptr null, ptr %i.z, align 8, !tbaa !66, !alias.scope !883, !noalias !881
  call void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %50, ptr nonnull %49, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #23, !noalias !881
  br label %.critedge

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 2 uses
  store ptr %i.aa, ptr %50, align 8, !tbaa !73
  %i.ab = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !68
  store i8 0, ptr %i.aa, align 8, !tbaa !23
  br label %.critedge

.critedge:                                        ; preds = %.thread, %._crit_edge.i.i
  %i.ac = load ptr, ptr %1, align 8, !tbaa !121, !nonnull !99, !align !122
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #23
  invoke fastcc void @_ZN12_GLOBAL__N_112HandleCommonERNS_15CommonArgumentsER17cmExecutionStatus(ptr dead_on_unwind noalias writable align 8 %51, ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.critedge
  %i.ad = getelementptr inbounds nuw i8, ptr %51, i64 256 ; 5 uses
  %.val = load i8, ptr %i.ad, align 8, !tbaa !97, !range !98, !noundef !99
  %i.ae = trunc nuw i8 %.val to i1
  br i1 %i.ae, label %bb.d, label %.thread1133

.thread1133:                                      ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !100, !range !98, !noundef !99
  %i.ah = xor i8 %i.ag, 1
  br label %_ZNSt14_Optional_baseISt4pairI14cmPkgConfigEnvN12_GLOBAL__N_19ImportEnvEELb0ELb0EED2Ev.exit202

bb.c:                                             ; preds = %.critedge
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseISt4pairI14cmPkgConfigEnvN12_GLOBAL__N_19ImportEnvEELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %51, i64 240 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %51, i64 234
  store i8 1, ptr %i.ak, align 2, !tbaa !113
  %i.al = getelementptr inbounds nuw i8, ptr %51, i64 235
  store i8 1, ptr %i.al, align 1, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #23
  %i.am = getelementptr inbounds nuw i8, ptr %52, i64 48 ; 2 uses
  store ptr %i.am, ptr %52, align 8, !tbaa !138
  %i.an = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 3 uses
  store i64 1, ptr %i.an, align 8, !tbaa !139
  %i.ao = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %52, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ap, align 8, !tbaa !205
  %i.aq = getelementptr inbounds nuw i8, ptr %52, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !80, !range !98, !noundef !99
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.e, label %.critedge85

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !165 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !165 ; 2 uses
  %.not749 = icmp eq ptr %i.av, %i.ax
  br i1 %.not749, label %.critedge85, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %54, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104
  %.sroa.0286.0750 = phi ptr [ %i.av, %.lr.ph ], [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104 ] ; 7 uses
  %i.bc = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0286.0750, i8 noundef signext 61, i64 noundef 0) #23 ; 4 uses
  %.not.not = icmp eq i64 %i.bc, -1
  br i1 %.not.not, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !884)
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0286.0750, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !68, !noalias !884
  store ptr %i.ay, ptr %53, align 8, !tbaa !73, !alias.scope !884
  %i.bf = load ptr, ptr %.sroa.0286.0750, align 8, !tbaa !67, !noalias !884 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.bc, i64 %i.be) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #23, !noalias !884
  store i64 %spec.select.i.i.i, ptr %i.p, align 8, !tbaa !61, !noalias !884
  %i.bg = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.bg, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.g
  %i.bh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef 0)
          to label %.noexc95 unwind label %bb.o   ; 2 uses

.noexc95:                                         ; preds = %.noexc10.i.i
  store ptr %i.bh, ptr %53, align 8, !tbaa !67, !alias.scope !884
  %i.bi = load i64, ptr %i.p, align 8, !tbaa !61, !noalias !884
  store i64 %i.bi, ptr %i.ay, align 8, !tbaa !23, !alias.scope !884
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc95, %bb.g
  %i.bj = phi ptr [ %i.bh, %.noexc95 ], [ %i.ay, %bb.g ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.bk = load i8, ptr %i.bf, align 1, !tbaa !23
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !23
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 1 %i.bf, i64 %spec.select.i.i.i, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i
  %i.bl = load i64, ptr %i.p, align 8, !tbaa !61, !noalias !884 ; 2 uses
  store i64 %i.bl, ptr %i.az, align 8, !tbaa !68, !alias.scope !884
  %i.bm = load ptr, ptr %53, align 8, !tbaa !67, !alias.scope !884
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bl
  store i8 0, ptr %i.bn, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23, !noalias !884
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #23
  %i.bo = add nuw i64 %i.bc, 1                    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !885)
  %i.bp = load i64, ptr %i.bd, align 8, !tbaa !68, !noalias !885 ; 3 uses
  %.not300 = icmp ult i64 %i.bc, %i.bp
  br i1 %.not300, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.123, i64 noundef %i.bo, i64 noundef %i.bp) #25
          to label %.noexc99 unwind label %.loopexit.split-lp323.loopexit.split-lp.loopexit.split-lp

.noexc99:                                         ; preds = %bb.k
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.j
  store ptr %i.ba, ptr %54, align 8, !tbaa !73, !alias.scope !885
  %i.bq = load ptr, ptr %.sroa.0286.0750, align 8, !tbaa !67, !noalias !885
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo ; 2 uses
  %i.bs = sub nuw i64 %i.bp, %i.bo                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #23, !noalias !885
  store i64 %i.bs, ptr %i.o, align 8, !tbaa !61, !noalias !885
  %i.bt = icmp ugt i64 %i.bs, 15
  br i1 %i.bt, label %.noexc10.i.i98, label %._crit_edge.i.i.i97

.noexc10.i.i98:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef 0)
          to label %.noexc100 unwind label %.loopexit.split-lp323.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc100:                                        ; preds = %.noexc10.i.i98
  store ptr %i.bu, ptr %54, align 8, !tbaa !67, !alias.scope !885
  %i.bv = load i64, ptr %i.o, align 8, !tbaa !61, !noalias !885
  store i64 %i.bv, ptr %i.ba, align 8, !tbaa !23, !alias.scope !885
  br label %._crit_edge.i.i.i97

._crit_edge.i.i.i97:                              ; preds = %.noexc100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bw = phi ptr [ %i.bu, %.noexc100 ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.bs, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i97
  %i.bx = load i8, ptr %i.br, align 1, !tbaa !23
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !23
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.i97
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr nonnull align 1 %i.br, i64 %i.bs, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.i97
  %i.by = load i64, ptr %i.o, align 8, !tbaa !61, !noalias !885 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_116PopulatePCTargetERNS_17PopulateArgumentsER17cmExecutionStatus:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #23
  store i8 1, ptr @_ZN13cmSystemTools20s_FatalErrorOccurredE, align 1, !tbaa !103
  br label %bb.ja

.critedge85:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i104, %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #23
  %i.du = getelementptr inbounds nuw i8, ptr %56, i64 48 ; 2 uses
  store ptr %i.du, ptr %56, align 8, !tbaa !207
  %i.dv = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 5 uses
  store i64 1, ptr %i.dv, align 8, !tbaa !208
  %i.dw = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 10 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %56, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.dx, align 8, !tbaa !205
  %i.dy = getelementptr inbounds nuw i8, ptr %56, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #23
  %i.dz = getelementptr inbounds nuw i8, ptr %57, i64 48 ; 2 uses
  store ptr %i.dz, ptr %57, align 8, !tbaa !210
  %i.ea = getelementptr inbounds nuw i8, ptr %57, i64 8 ; 3 uses
  store i64 1, ptr %i.ea, align 8, !tbaa !211
  %i.eb = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %57, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eb, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ec, align 8, !tbaa !205
  %i.ed = getelementptr inbounds nuw i8, ptr %57, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #23
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.eg = getelementptr inbounds nuw i8, ptr %59, i64 32 ; 6 uses
  store i8 0, ptr %i.eg, align 8, !tbaa !78
  %i.eh = load i8, ptr %i.ef, align 8, !tbaa !78, !range !98, !noundef !99
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.u, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

bb.u:                                             ; preds = %.critedge85
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ek = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 3 uses
  store ptr %i.ek, ptr %59, align 8, !tbaa !73
  %i.el = load ptr, ptr %i.ej, align 8, !tbaa !67 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.en = load i64, ptr %i.em, align 8, !tbaa !68 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #23
  store i64 %i.en, ptr %i.n, align 8, !tbaa !61
  %i.eo = icmp ugt i64 %i.en, 15
  br i1 %i.eo, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.u
  %i.ep = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %59, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0)
          to label %.noexc122 unwind label %bb.aa ; 2 uses

.noexc122:                                        ; preds = %.noexc.i.i.i.i.i.i.i.i
  store ptr %i.ep, ptr %59, align 8, !tbaa !67
  %i.eq = load i64, ptr %i.n, align 8, !tbaa !61
  store i64 %i.eq, ptr %i.ek, align 8, !tbaa !23
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc122, %bb.u
  %i.er = phi ptr [ %i.ep, %.noexc122 ], [ %i.ek, %bb.u ] ; 2 uses
  switch i64 %i.en, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.es = load i8, ptr %i.el, align 1, !tbaa !23
  store i8 %i.es, ptr %i.er, align 1, !tbaa !23
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i

bb.w:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.er, ptr align 1 %i.el, i64 %i.en, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i: ; preds = %bb.w, %bb.v, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.et = load i64, ptr %i.n, align 8, !tbaa !61  ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %59, i64 8
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !68
  %i.ev = load ptr, ptr %59, align 8, !tbaa !67
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.et
  store i8 0, ptr %i.ew, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  store i8 1, ptr %i.eg, align 8, !tbaa !78
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit: ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i, %.critedge85
  invoke fastcc void @_ZN12_GLOBAL__N_113ImportPackageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalIS5_ERNS_9ImportEnvER14cmPkgConfigEnv(ptr dead_on_unwind noalias writable align 8 %58, ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef align 8 %59, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(236) %51)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit
  %i.ex = load i8, ptr %i.eg, align 8, !tbaa !78, !range !98, !noundef !99
  %i.ey = trunc nuw i8 %i.ex to i1
  store i8 0, ptr %i.eg, align 8, !tbaa !78
  br i1 %i.ey, label %bb.y, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.ez = load ptr, ptr %59, align 8, !tbaa !67   ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 2 uses
  %i.fb = icmp eq ptr %i.ez, %i.fa
  br i1 %i.fb, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.y
  %i.fc = load i64, ptr %i.fa, align 8, !tbaa !23
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fd) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.y, %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %58, i64 120 ; 4 uses
  %i.ff = load i8, ptr %i.fe, align 8, !tbaa !102, !range !98, !noundef !99
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fi = load i8, ptr %i.fh, align 8, !tbaa !100, !range !98, !noundef !99
  %i.fj = xor i8 %i.fi, 1
  br label %.loopexit

bb.aa:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit125

bb.ab:                                            ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit
  %i.fl = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.fm = load i8, ptr %i.eg, align 8, !tbaa !78, !range !98, !noundef !99
  %i.fn = trunc nuw i8 %i.fm to i1
  store i8 0, ptr %i.eg, align 8, !tbaa !78
  br i1 %i.fn, label %bb.ac, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit125

bb.ac:                                            ; preds = %bb.ab
  %i.fo = load ptr, ptr %59, align 8, !tbaa !67   ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i123: ; preds = %bb.ac
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !23
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fs) #24
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit125

bb.ad:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.ft = getelementptr inbounds nuw i8, ptr %51, i64 242
  store i8 0, ptr %i.ft, align 2, !tbaa !184
  %i.fu = invoke fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_124CheckPackageDependenciesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_R17cmPkgConfigResultRSt13unordered_mapIS5_St6vectorINS_13pkgStackEntryESaISC_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIS6_SE_EEERSA_IS5_S8_SG_SI_SaISJ_IS6_S8_EEERSA_IS5_S5_SG_SI_SaISJ_IS6_S5_EEERNS_9ImportEnvE(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull align 8 dereferenceable(120) %58, ptr noundef nonnull align 8 dereferenceable(56) %56, ptr noundef nonnull align 8 dereferenceable(56) %57, ptr noundef nonnull align 8 dereferenceable(56) %52, ptr noundef nonnull align 8 dereferenceable(16) %i.aj)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.fu, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fw = load i8, ptr %i.fv, align 8, !tbaa !100, !range !98, !noundef !99
  %i.fx = xor i8 %i.fw, 1
  br label %.loopexit

bb.ag:                                            ; preds = %bb.ae
  %i.fy = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_17cmPkgConfigResultESaISA_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %57, ptr noundef nonnull align 8 dereferenceable(32) %i.ee)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17cmPkgConfigResultSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEixERSC_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17cmPkgConfigResultSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEixERSC_.exit: ; preds = %bb.ag
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSL_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(120) %i.fy, ptr noundef nonnull align 8 dereferenceable(120) %58)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEaSEOSE_.exit.i unwind label %bb.ah

bb.ah:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17cmPkgConfigResultSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEixERSC_.exit
  %i.fz = landingpad { ptr, i32 }
          catch ptr null
  %i.ga = extractvalue { ptr, i32 } %i.fz, 0
  call void @__clang_call_terminate(ptr %i.ga) #22
  unreachable

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEaSEOSE_.exit.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17cmPkgConfigResultSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEEixERSC_.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 56
  %i.gc = getelementptr inbounds nuw i8, ptr %58, i64 56 ; 2 uses
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSL_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %i.gb, ptr noundef nonnull align 8 dereferenceable(56) %i.gc)
          to label %_ZN17cmPkgConfigResultaSEOS_.exit unwind label %bb.ai

bb.ai:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEaSEOSE_.exit.i
  %i.gd = landingpad { ptr, i32 }
          catch ptr null
  %i.ge = extractvalue { ptr, i32 } %i.gd, 0
  call void @__clang_call_terminate(ptr %i.ge) #22
  unreachable

_ZN17cmPkgConfigResultaSEOS_.exit:                ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEaSEOSE_.exit.i
  %i.gf = getelementptr inbounds nuw i8, ptr %58, i64 112 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !183
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 112
  store ptr %i.gg, ptr %i.gh, align 8, !tbaa !183
  %i.gi = getelementptr inbounds nuw i8, ptr %56, i64 24 ; 5 uses
  %.val90752 = load i64, ptr %i.gi, align 8, !tbaa !212
  %i.gj = icmp eq i64 %.val90752, 0
  br i1 %i.gj, label %._crit_edge, label %.lr.ph753

.lr.ph753:                                        ; preds = %_ZN17cmPkgConfigResultaSEOS_.exit
  %i.gk = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 9 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %40, i64 120 ; 6 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %51, i64 243 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %38, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %38, i64 16
  %.sroa.4.0..sroa_idx.i3.i.i = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.gt = getelementptr inbounds nuw i8, ptr %37, i64 24
  %.sroa.4.0..sroa_idx.i11.i.i = getelementptr inbounds nuw i8, ptr %37, i64 32
  %i.gu = getelementptr inbounds nuw i8, ptr %37, i64 40
  %i.gv = getelementptr inbounds nuw i8, ptr %37, i64 48
  %i.gw = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %39, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i12.i.i = getelementptr inbounds nuw i8, ptr %39, i64 16
  %.sroa.4.0..sroa_idx.i20.i.i = getelementptr inbounds nuw i8, ptr %37, i64 56
  %i.gy = getelementptr inbounds nuw i8, ptr %37, i64 64
  %i.gz = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i58.i = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %34, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %34, i64 24
  %.sroa.4.0..sroa_idx.i11.i59.i = getelementptr inbounds nuw i8, ptr %34, i64 32
  %i.hc = getelementptr inbounds nuw i8, ptr %34, i64 48
  %.sroa.4.0..sroa_idx.i19.i60.i = getelementptr inbounds nuw i8, ptr %34, i64 56
  %i.hd = getelementptr inbounds nuw i8, ptr %34, i64 64
  %i.he = getelementptr inbounds nuw i8, ptr %34, i64 72
  %i.hf = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %35, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i20.i61.i = getelementptr inbounds nuw i8, ptr %35, i64 16
  %.sroa.4.0..sroa_idx.i28.i.i = getelementptr inbounds nuw i8, ptr %34, i64 80
  %i.hh = getelementptr inbounds nuw i8, ptr %34, i64 88
  %i.hi = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 6 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 6 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i56.i = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.hl = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.hm = getelementptr inbounds nuw i8, ptr %36, i64 24
  %.sroa.4.0..sroa_idx.i11.i57.i = getelementptr inbounds nuw i8, ptr %36, i64 32
  %i.hn = getelementptr inbounds nuw i8, ptr %36, i64 40
  %i.ho = getelementptr inbounds nuw i8, ptr %36, i64 48
  %.sroa.4.0..sroa_idx.i19.i.i = getelementptr inbounds nuw i8, ptr %36, i64 56
  %i.hp = getelementptr inbounds nuw i8, ptr %36, i64 64
  %i.hq = getelementptr inbounds nuw i8, ptr %36, i64 72
  %.sroa.4.0..sroa_idx.i27.i.i = getelementptr inbounds nuw i8, ptr %36, i64 80
  %i.hr = getelementptr inbounds nuw i8, ptr %36, i64 88
  %i.hs = getelementptr inbounds nuw i8, ptr %51, i64 241 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %51, i64 248 ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %62, i64 120 ; 7 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 6 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 6 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 6 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %62, i64 24 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %40, i64 24 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %62, i64 32 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %40, i64 32 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %62, i64 48 ; 9 uses
  %i.if = getelementptr inbounds nuw i8, ptr %40, i64 48 ; 9 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %40, i64 40 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %62, i64 56 ; 6 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %40, i64 56 ; 6 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %62, i64 64 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %40, i64 64 ; 6 uses
  %i.il = getelementptr inbounds nuw i8, ptr %62, i64 72 ; 6 uses
  %i.im = getelementptr inbounds nuw i8, ptr %40, i64 72 ; 5 uses
  %i.in = getelementptr inbounds nuw i8, ptr %62, i64 80 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %40, i64 80 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %62, i64 88 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %40, i64 88 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %62, i64 104 ; 9 uses
  %i.is = getelementptr inbounds nuw i8, ptr %40, i64 104 ; 9 uses
  %i.it = getelementptr inbounds nuw i8, ptr %40, i64 96 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %62, i64 112 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %40, i64 112 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i75.i = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.iw = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.ix = getelementptr inbounds nuw i8, ptr %32, i64 24
  %.sroa.4.0..sroa_idx.i16.i.i = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.iy = getelementptr inbounds nuw i8, ptr %32, i64 40
  %i.iz = getelementptr inbounds nuw i8, ptr %32, i64 48
  %.sroa.4.0..sroa_idx.i24.i.i = getelementptr inbounds nuw i8, ptr %32, i64 56
  %i.ja = getelementptr inbounds nuw i8, ptr %32, i64 64
  %i.jb = getelementptr inbounds nuw i8, ptr %32, i64 72
  %i.jc = getelementptr inbounds nuw i8, ptr %44, i64 8
  %.sroa.4.0..sroa_idx.i32.i.i = getelementptr inbounds nuw i8, ptr %32, i64 80
  %i.jd = getelementptr inbounds nuw i8, ptr %32, i64 88
  %i.je = getelementptr inbounds nuw i8, ptr %32, i64 96
  %.sroa.4.0..sroa_idx.i40.i.i = getelementptr inbounds nuw i8, ptr %32, i64 104
  %i.jf = getelementptr inbounds nuw i8, ptr %32, i64 112
  %i.jg = getelementptr inbounds nuw i8, ptr %32, i64 120
  %.sroa.gep86.i.i = getelementptr inbounds nuw i8, ptr %46, i64 8
  %.sroa.4.0..sroa_idx.i48.i.i = getelementptr inbounds nuw i8, ptr %32, i64 128
  %i.jh = getelementptr inbounds nuw i8, ptr %32, i64 136
  %i.ji = getelementptr inbounds nuw i8, ptr %32, i64 144
  %.sroa.4.0..sroa_idx.i56.i.i = getelementptr inbounds nuw i8, ptr %32, i64 152
  %i.jj = getelementptr inbounds nuw i8, ptr %32, i64 160
  %i.jk = getelementptr inbounds nuw i8, ptr %32, i64 168
  %.sroa.4.0..sroa_idx.i64.i.i = getelementptr inbounds nuw i8, ptr %32, i64 176
  %i.jl = getelementptr inbounds nuw i8, ptr %32, i64 184
  %i.jm = getelementptr inbounds nuw i8, ptr %32, i64 192
  %i.jn = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.jo = getelementptr inbounds nuw i8, ptr %33, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i65.i.i = getelementptr inbounds nuw i8, ptr %33, i64 16
  %.sroa.4.0..sroa_idx.i73.i.i = getelementptr inbounds nuw i8, ptr %32, i64 200
  %i.jp = getelementptr inbounds nuw i8, ptr %32, i64 208
  %i.jq = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 4 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph753, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #23
  %.val92 = load ptr, ptr %i.dw, align 8, !tbaa !213 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.val92, i64 8
  store ptr %i.gk, ptr %60, align 8, !tbaa !73
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !67 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.val92, i64 16
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !68 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #23
  store i64 %i.jw, ptr %i.m, align 8, !tbaa !61
  %i.jx = icmp ugt i64 %i.jw, 15
  br i1 %i.jx, label %.noexc.i128, label %._crit_edge.i.i127

.noexc.i128:                                      ; preds = %bb.aj
  %i.jy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %60, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0)
          to label %.noexc129 unwind label %bb.dd ; 2 uses

.noexc129:                                        ; preds = %.noexc.i128
  store ptr %i.jy, ptr %60, align 8, !tbaa !67
  %i.jz = load i64, ptr %i.m, align 8, !tbaa !61
  store i64 %i.jz, ptr %i.gk, align 8, !tbaa !23
  br label %._crit_edge.i.i127

._crit_edge.i.i127:                               ; preds = %.noexc129, %bb.aj
  %i.ka = phi ptr [ %i.jy, %.noexc129 ], [ %i.gk, %bb.aj ] ; 2 uses
  switch i64 %i.jw, label %bb.al [
    i64 1, label %bb.ak
    i64 0, label %bb.am
  ]

bb.ak:                                            ; preds = %._crit_edge.i.i127
  %i.kb = load i8, ptr %i.ju, align 1, !tbaa !23
  store i8 %i.kb, ptr %i.ka, align 1, !tbaa !23
  br label %bb.am

bb.al:                                            ; preds = %._crit_edge.i.i127
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ka, ptr align 1 %i.ju, i64 %i.jw, i1 false)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %._crit_edge.i.i127
  %i.kc = load i64, ptr %i.m, align 8, !tbaa !61  ; 2 uses
  store i64 %i.kc, ptr %i.gl, align 8, !tbaa !68
  %i.kd = load ptr, ptr %60, align 8, !tbaa !67
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.kc
  store i8 0, ptr %i.ke, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #23
  %.val91 = load ptr, ptr %i.dw, align 8, !tbaa !213 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.val91, i64 40 ; 2 uses
  %.val10.i = load ptr, ptr %i.kf, align 8, !tbaa !216 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.val91, i64 48 ; 2 uses
  %.val11.i = load ptr, ptr %i.kg, align 8, !tbaa !217 ; 2 uses
  %i.kh = ptrtoint ptr %.val11.i to i64
  %i.ki = ptrtoint ptr %.val10.i to i64
  %i.kj = sub i64 %i.kh, %i.ki                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %61, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %.val11.i, %.val10.i
  br i1 %.not.i.i.i.i, label %.noexc133.thread, label %bb.an

.noexc133.thread:                                 ; preds = %bb.am
  %i.kk = getelementptr inbounds nuw i8, ptr null, i64 %i.kj
  store i64 0, ptr %61, align 8
  store ptr %i.kk, ptr %i.gn, align 8, !tbaa !218
  br label %.loopexit316

bb.an:                                            ; preds = %bb.am
  %i.kl = sdiv exact i64 %i.kj, 72
  %i.km = icmp ugt i64 %i.kl, 128102389400760775
  br i1 %i.km, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN12_GLOBAL__N_113pkgStackEntryEE8allocateEmPKv.exit.i.i.i.i, !prof !151

.noexc.i.i:                                       ; preds = %bb.an
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc132 unwind label %.loopexit.split-lp318.loopexit.split-lp.loopexit.split-lp

.noexc132:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN12_GLOBAL__N_113pkgStackEntryEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.an
  %i.kn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kj) #26
          to label %.noexc133 unwind label %.loopexit.split-lp318.loopexit.split-lp.loopexit.split-lp ; 7 uses

.noexc133:                                        ; preds = %_ZNSt15__new_allocatorIN12_GLOBAL__N_113pkgStackEntryEE8allocateEmPKv.exit.i.i.i.i
  %.val12.i.pre = load ptr, ptr %i.kf, align 8, !tbaa !890 ; 2 uses
  %.val13.i.pre = load ptr, ptr %i.kg, align 8, !tbaa !890 ; 2 uses
  store ptr %i.kn, ptr %61, align 8, !tbaa !216
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.kj
  store ptr %i.ko, ptr %i.gn, align 8, !tbaa !218
  %.not19.i.i.i.i.i = icmp eq ptr %.val12.i.pre, %.val13.i.pre
  br i1 %.not19.i.i.i.i.i, label %.loopexit316, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc133, %bb.at
  %.021.i.i.i.i.i.idx = phi i64 [ %.021.i.i.i.i.i.add, %bb.at ], [ 0, %.noexc133 ] ; 2 uses
  %.sroa.010.020.i.i.i.i.i = phi ptr [ %i.lz, %bb.at ], [ %.val12.i.pre, %.noexc133 ] ; 6 uses
  %.021.i.i.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.kn, i64 %.021.i.i.i.i.i.idx ; 8 uses
  %i.kp = load i32, ptr %.sroa.010.020.i.i.i.i.i, align 8, !tbaa !221
  store i32 %i.kp, ptr %.021.i.i.i.i.i.ptr, align 8, !tbaa !221
  %i.kq = getelementptr inbounds nuw i8, ptr %.021.i.i.i.i.i.ptr, i64 8 ; 5 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.010.020.i.i.i.i.i, i64 8
  %i.ks = getelementptr inbounds nuw i8, ptr %.021.i.i.i.i.i.ptr, i64 24 ; 5 uses
  store ptr %i.ks, ptr %i.kq, align 8, !tbaa !73
  %i.kt = load ptr, ptr %i.kr, align 8, !tbaa !67 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.010.020.i.i.i.i.i, i64 16
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !68 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #23
  store i64 %i.kv, ptr %i.l, align 8, !tbaa !61
  %i.kw = icmp ugt i64 %i.kv, 15
  br i1 %i.kw, label %.noexc.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i
  %i.kx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.kq, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0)
          to label %.noexc.i.i.i.i.i unwind label %bb.au ; 2 uses

.noexc.i.i.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  store ptr %i.kx, ptr %i.kq, align 8, !tbaa !67
  %i.ky = load i64, ptr %i.l, align 8, !tbaa !61
  store i64 %i.ky, ptr %i.ks, align 8, !tbaa !23
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.kz = phi ptr [ %i.kx, %.noexc.i.i.i.i.i ], [ %i.ks, %.lr.ph.i.i.i.i.i ] ; 2 uses
  switch i64 %i.kv, label %bb.ap [
    i64 1, label %bb.ao
    i64 0, label %_ZN21cmPkgConfigVersionReqC2ERKS_.exit.i.i.i.i.i.i.i
  ]

bb.ao:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.la = load i8, ptr %i.kt, align 1, !tbaa !23
  store i8 %i.la, ptr %i.kz, align 1, !tbaa !23
  br label %_ZN21cmPkgConfigVersionReqC2ERKS_.exit.i.i.i.i.i.i.i

bb.ap:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kz, ptr align 1 %i.kt, i64 %i.kv, i1 false)
  br label %_ZN21cmPkgConfigVersionReqC2ERKS_.exit.i.i.i.i.i.i.i

_ZN21cmPkgConfigVersionReqC2ERKS_.exit.i.i.i.i.i.i.i: ; preds = %bb.ap, %bb.ao, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.lb = load i64, ptr %i.l, align 8, !tbaa !61  ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.021.i.i.i.i.i.ptr, i64 16
  store i64 %i.lb, ptr %i.lc, align 8, !tbaa !68
  %i.ld = load ptr, ptr %i.kq, align 8, !tbaa !67
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lb
  store i8 0, ptr %i.le, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #23
  %i.lf = getelementptr inbounds nuw i8, ptr %.021.i.i.i.i.i.ptr, i64 40 ; 4 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.010.020.i.i.i.i.i, i64 40
  %i.lh = getelementptr inbounds nuw i8, ptr %.021.i.i.i.i.i.ptr, i64 56 ; 3 uses
  store ptr %i.lh, ptr %i.lf, align 8, !tbaa !73
  %i.li = load ptr, ptr %i.lg, align 8, !tbaa !67 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.010.020.i.i.i.i.i, i64 48
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !68 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #23
  store i64 %i.lk, ptr %i.k, align 8, !tbaa !61
  %i.ll = icmp ugt i64 %i.lk, 15
  br i1 %i.ll, label %.noexc.i.i.i.i.i.i.i.i131, label %._crit_edge.i.i.i.i.i.i.i.i.i130

.noexc.i.i.i.i.i.i.i.i131:                        ; preds = %_ZN21cmPkgConfigVersionReqC2ERKS_.exit.i.i.i.i.i.i.i
  %i.lm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.lf, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.as ; 2 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %.noexc.i.i.i.i.i.i.i.i131
  store ptr %i.lm, ptr %i.lf, align 8, !tbaa !67
  %i.ln = load i64, ptr %i.k, align 8, !tbaa !61
  store i64 %i.ln, ptr %i.lh, align 8, !tbaa !23
  br label %._crit_edge.i.i.i.i.i.i.i.i.i130

._crit_edge.i.i.i.i.i.i.i.i.i130:                 ; preds = %.noexc.i.i.i.i.i.i.i, %_ZN21cmPkgConfigVersionReqC2ERKS_.exit.i.i.i.i.i.i.i
  %i.lo = phi ptr [ %i.lm, %.noexc.i.i.i.i.i.i.i ], [ %i.lh, %_ZN21cmPkgConfigVersionReqC2ERKS_.exit.i.i.i.i.i.i.i ] ; 2 uses
  switch i64 %i.lk, label %bb.ar [
    i64 1, label %bb.aq
    i64 0, label %bb.at
  ]

bb.aq:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i130
  %i.lp = load i8, ptr %i.li, align 1, !tbaa !23
  store i8 %i.lp, ptr %i.lo, align 1, !tbaa !23
  br label %bb.at

bb.ar:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i130
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lo, ptr align 1 %i.li, i64 %i.lk, i1 false)
  br label %bb.at

bb.as:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i131
  %i.lq = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.lr = load ptr, ptr %i.kq, align 8, !tbaa !67 ; 2 uses
  %i.ls = icmp eq ptr %i.lr, %i.ks
  br i1 %i.ls, label %.body.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.as
  %i.lt = load i64, ptr %i.ks, align 8, !tbaa !23
  %i.lu = add i64 %i.lt, 1
  call void @_ZdlPvm(ptr noundef %i.lr, i64 noundef %i.lu) #24
  br label %.body.i.i.i.i.i

bb.at:                                            ; preds = %bb.ar, %bb.aq, %._crit_edge.i.i.i.i.i.i.i.i.i130
  %i.lv = load i64, ptr %i.k, align 8, !tbaa !61  ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.021.i.i.i.i.i.ptr, i64 48
  store i64 %i.lv, ptr %i.lw, align 8, !tbaa !68
  %i.lx = load ptr, ptr %i.lf, align 8, !tbaa !67
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.lv
  store i8 0, ptr %i.ly, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #23
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.010.020.i.i.i.i.i, i64 72 ; 2 uses
  %.021.i.i.i.i.i.add = add nuw nsw i64 %.021.i.i.i.i.i.idx, 72 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.lz, %.val13.i.pre
  br i1 %.not.i.i.i.i.i, label %.loopexit316, label %.lr.ph.i.i.i.i.i, !llvm.loop !798

bb.au:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.ma = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.as, %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.ma, %bb.au ], [ %i.lq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.lq, %bb.as ]
  %i.mb = extractvalue { ptr, i32 } %eh.lpad-body.i.i.i.i.i, 0
  %i.mc = call ptr @__cxa_begin_catch(ptr %i.mb) #23 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN12_GLOBAL__N_113pkgStackEntryEEvT_S3_(ptr noundef nonnull %i.kn, ptr noundef nonnull %.021.i.i.i.i.i.ptr)
  invoke void @__cxa_rethrow() #25
          to label %bb.ax unwind label %bb.av

bb.av:                                            ; preds = %.body.i.i.i.i.i
  %i.md = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.me = landingpad { ptr, i32 }
          catch ptr null
  %i.mf = extractvalue { ptr, i32 } %i.me, 0
  call void @__clang_call_terminate(ptr %i.mf) #22
  unreachable

bb.ax:                                            ; preds = %.body.i.i.i.i.i
  unreachable

.body.i:                                          ; preds = %bb.av
  call void @_ZdlPvm(ptr noundef nonnull %i.kn, i64 noundef %i.kj) #24
  br label %.body

.loopexit316:                                     ; preds = %bb.at, %.noexc133.thread, %.noexc133
  %i.mg = phi ptr [ %i.kn, %.noexc133 ], [ null, %.noexc133.thread ], [ %i.kn, %bb.at ] ; 12 uses
  %.0.lcssa.i.i.i.i.i.idx = phi i64 [ 0, %.noexc133 ], [ 0, %.noexc133.thread ], [ %.021.i.i.i.i.i.add, %bb.at ] ; 5 uses
  %.0.lcssa.i.i.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.mg, i64 %.0.lcssa.i.i.i.i.i.idx ; 5 uses
  store ptr %.0.lcssa.i.i.i.i.i.ptr, ptr %i.gm, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !891)
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #23, !noalias !891
  invoke fastcc void @_ZN12_GLOBAL__N_111ReadPackageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_9ImportEnvER14cmPkgConfigEnv(ptr dead_on_unwind noalias writable align 8 %40, ptr noundef nonnull align 8 dereferenceable(32) %60, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(236) %51)
          to label %.noexc138 unwind label %bb.de

.noexc138:                                        ; preds = %.loopexit316
  %i.mh = load i8, ptr %i.go, align 8, !tbaa !102, !range !98, !noalias !891, !noundef !99
  %i.mi = trunc nuw i8 %i.mh to i1
  br i1 %i.mi, label %bb.bz, label %bb.ay

bb.ay:                                            ; preds = %.noexc138
  %i.mj = load i8, ptr %i.gp, align 1, !tbaa !168, !range !98, !noalias !891, !noundef !99
  %i.mk = trunc nuw i8 %i.mj to i1
  br i1 %i.mk, label %.thread.i, label %bb.az

.thread.i:                                        ; preds = %bb.ay
  store i8 0, ptr %i.hv, align 8, !tbaa !102, !alias.scope !891
  br label %bb.cz

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #23, !noalias !891
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mg, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #23, !noalias !892
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #23, !noalias !892
  store i64 0, ptr %38, align 8, !noalias !892
  store i8 39, ptr %i.gr, align 8, !tbaa !23, !noalias !892
  store i64 1, ptr %i.gq, align 8, !tbaa !61, !noalias !892
  store ptr %i.gr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !62, !noalias !892
  store i64 1, ptr %37, align 8, !tbaa !61, !alias.scope !893, !noalias !892
  store ptr %i.gr, ptr %.sroa.4.0..sroa_idx.i3.i.i, align 8, !tbaa !62, !alias.scope !893, !noalias !892
  store ptr null, ptr %i.gs, align 8, !tbaa !66, !alias.scope !893, !noalias !892
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !67, !noalias !892
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mg, i64 48
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !68, !noalias !892
  store i64 %i.mo, ptr %i.gt, align 8, !tbaa !61, !alias.scope !894, !noalias !892
  store ptr %i.mm, ptr %.sroa.4.0..sroa_idx.i11.i.i, align 8, !tbaa !62, !alias.scope !894, !noalias !892
  store ptr null, ptr %i.gu, align 8, !tbaa !66, !alias.scope !894, !noalias !892
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #23, !noalias !892
  store i64 0, ptr %39, align 8, !noalias !892
  store i8 39, ptr %i.gx, align 8, !tbaa !23, !noalias !892
  store i64 1, ptr %i.gw, align 8, !tbaa !61, !noalias !892
  store ptr %i.gx, ptr %.sroa.4.0..sroa_idx.i12.i.i, align 8, !tbaa !62, !noalias !892
  store i64 1, ptr %i.gv, align 8, !tbaa !61, !alias.scope !895, !noalias !892
  store ptr %i.gx, ptr %.sroa.4.0..sroa_idx.i20.i.i, align 8, !tbaa !62, !alias.scope !895, !noalias !892
  store ptr null, ptr %i.gy, align 8, !tbaa !66, !alias.scope !895, !noalias !892
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %41, ptr nonnull %37, i64 3)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23, !noalias !892
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23, !noalias !892
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23, !noalias !892
  %.not13.i = icmp eq i64 %.0.lcssa.i.i.i.i.i.idx, 72
  br i1 %.not13.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ba
  %.sroa.05.012.i = getelementptr inbounds nuw i8, ptr %i.mg, i64 72
  br label %bb.bc

._crit_edge.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #23, !noalias !891
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23, !noalias !896
  store i64 28, ptr %36, align 8, !tbaa !61, !alias.scope !897, !noalias !896
  store ptr @.str.112, ptr %.sroa.4.0..sroa_idx.i.i56.i, align 8, !tbaa !62, !alias.scope !897, !noalias !896
  store ptr null, ptr %i.hl, align 8, !tbaa !66, !alias.scope !897, !noalias !896
  %i.mp = load ptr, ptr %60, align 8, !tbaa !67, !noalias !896
  %i.mq = load i64, ptr %i.gl, align 8, !tbaa !68, !noalias !896
  store i64 %i.mq, ptr %i.hm, align 8, !tbaa !61, !alias.scope !898, !noalias !896
  store ptr %i.mp, ptr %.sroa.4.0..sroa_idx.i11.i57.i, align 8, !tbaa !62, !alias.scope !898, !noalias !896
  store ptr null, ptr %i.hn, align 8, !tbaa !66, !alias.scope !898, !noalias !896
  store i64 15, ptr %i.ho, align 8, !tbaa !61, !alias.scope !899, !noalias !896
  store ptr @.str.141, ptr %.sroa.4.0..sroa_idx.i19.i.i, align 8, !tbaa !62, !alias.scope !899, !noalias !896
  store ptr null, ptr %i.hp, align 8, !tbaa !66, !alias.scope !899, !noalias !896
  %i.mr = load ptr, ptr %41, align 8, !tbaa !67, !noalias !896
  %i.ms = load i64, ptr %i.gz, align 8, !tbaa !68, !noalias !896
  store i64 %i.ms, ptr %i.hq, align 8, !tbaa !61, !alias.scope !900, !noalias !896
  store ptr %i.mr, ptr %.sroa.4.0..sroa_idx.i27.i.i, align 8, !tbaa !62, !alias.scope !900, !noalias !896
  store ptr null, ptr %i.hr, align 8, !tbaa !66, !alias.scope !900, !noalias !896
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %43, ptr nonnull %36, i64 4)
          to label %bb.bk unwind label %bb.bp

bb.bb:                                            ; preds = %bb.az
  %i.mt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.lr.ph.i
  %.sroa.05.015.i = phi ptr [ %.sroa.05.012.i, %.lr.ph.i ], [ %.sroa.05.0.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  %.0.val.pn14.i = phi ptr [ %i.mg, %.lr.ph.i ], [ %.sroa.05.015.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #23, !noalias !891
  %i.mu = getelementptr inbounds nuw i8, ptr %.0.val.pn14.i, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23, !noalias !901
  %i.mv = load ptr, ptr %41, align 8, !tbaa !67, !noalias !901
  %i.mw = load i64, ptr %i.gz, align 8, !tbaa !68, !noalias !901
  store i64 %i.mw, ptr %34, align 8, !tbaa !61, !alias.scope !902, !noalias !901
  store ptr %i.mv, ptr %.sroa.4.0..sroa_idx.i.i58.i, align 8, !tbaa !62, !alias.scope !902, !noalias !901
  store ptr null, ptr %i.ha, align 8, !tbaa !66, !alias.scope !902, !noalias !901
  store i64 3, ptr %i.hb, align 8, !tbaa !61, !alias.scope !903, !noalias !901
  store <2 x ptr> <ptr @.str.140, ptr null>, ptr %.sroa.4.0..sroa_idx.i11.i59.i, align 8, !tbaa !91, !alias.scope !903, !noalias !901
  %i.mx = load ptr, ptr %i.mu, align 8, !tbaa !67, !noalias !901
  %i.my = getelementptr inbounds nuw i8, ptr %.0.val.pn14.i, i64 120
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !68, !noalias !901
  store i64 %i.mz, ptr %i.hc, align 8, !tbaa !61, !alias.scope !904, !noalias !901
  store ptr %i.mx, ptr %.sroa.4.0..sroa_idx.i19.i60.i, align 8, !tbaa !62, !alias.scope !904, !noalias !901
  store ptr null, ptr %i.hd, align 8, !tbaa !66, !alias.scope !904, !noalias !901
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23, !noalias !901
  store i64 0, ptr %35, align 8, !noalias !901
  store i8 39, ptr %i.hg, align 8, !tbaa !23, !noalias !901
  store i64 1, ptr %i.hf, align 8, !tbaa !61, !noalias !901
  store ptr %i.hg, ptr %.sroa.4.0..sroa_idx.i20.i61.i, align 8, !tbaa !62, !noalias !901
  store i64 1, ptr %i.he, align 8, !tbaa !61, !alias.scope !905, !noalias !901
  store ptr %i.hg, ptr %.sroa.4.0..sroa_idx.i28.i.i, align 8, !tbaa !62, !alias.scope !905, !noalias !901
  store ptr null, ptr %i.hh, align 8, !tbaa !66, !alias.scope !905, !noalias !901
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %42, ptr nonnull %34, i64 4)
          to label %bb.bd unwind label %bb.bj

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23, !noalias !901
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23, !noalias !901
  %i.na = load ptr, ptr %41, align 8, !tbaa !67, !noalias !891 ; 6 uses
  %i.nb = icmp eq ptr %i.na, %i.hi
  %i.nc = load ptr, ptr %42, align 8, !tbaa !67, !noalias !891 ; 5 uses
  %i.nd = icmp eq ptr %i.nc, %i.hj                ; 2 uses
  br i1 %i.nb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %bb.bd
  br i1 %i.nd, label %bb.be, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i134: ; preds = %bb.bd
  br i1 %i.nd, label %bb.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.be:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  %i.ne = load i64, ptr %i.hk, align 8, !tbaa !68, !noalias !891 ; 3 uses
  %i.nf = icmp ult i64 %i.ne, 16
  call void @llvm.assume(i1 %i.nf)
  switch i64 %i.ne, label %bb.bg [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.bf
  ]

bb.bf:                                            ; preds = %bb.be
  %i.ng = load i8, ptr %i.nc, align 1, !tbaa !23
  store i8 %i.ng, ptr %i.na, align 1, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.bg:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.na, ptr align 1 %i.nc, i64 %i.ne, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.bg, %bb.bf, %bb.be
  %i.nh = load i64, ptr %i.hk, align 8, !tbaa !68, !noalias !891 ; 2 uses
  store i64 %i.nh, ptr %i.gz, align 8, !tbaa !68, !noalias !891
  %i.ni = load ptr, ptr %41, align 8, !tbaa !67, !noalias !891
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.nh
  store i8 0, ptr %i.nj, align 1, !tbaa !23
  %.pre.i.i = load ptr, ptr %42, align 8, !tbaa !67, !noalias !891
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  store ptr %i.nc, ptr %41, align 8, !tbaa !67, !noalias !891
  %i.nk = load <2 x i64>, ptr %i.hk, align 8, !tbaa !23, !noalias !891
  store <2 x i64> %i.nk, ptr %i.gz, align 8, !tbaa !23, !noalias !891
  br label %bb.bi

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i134
  %i.nl = load i64, ptr %i.hi, align 8, !tbaa !23, !noalias !891
  store ptr %i.nc, ptr %41, align 8, !tbaa !67, !noalias !891
  %i.nm = load <2 x i64>, ptr %i.hk, align 8, !tbaa !23, !noalias !891
  store <2 x i64> %i.nm, ptr %i.gz, align 8, !tbaa !23, !noalias !891
  %.not.i.i = icmp eq ptr %i.na, null
  br i1 %.not.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.na, ptr %42, align 8, !tbaa !67, !noalias !891
  store i64 %i.nl, ptr %i.hj, align 8, !tbaa !23, !noalias !891
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.hj, ptr %42, align 8, !tbaa !67, !noalias !891
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.bi, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.nn = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.na, %bb.bh ], [ %i.hj, %bb.bi ]
  store i64 0, ptr %i.hk, align 8, !tbaa !68, !noalias !891
  store i8 0, ptr %i.nn, align 1, !tbaa !23
  %i.no = load ptr, ptr %42, align 8, !tbaa !67, !noalias !891 ; 2 uses
  %i.np = icmp eq ptr %i.no, %i.hj
  br i1 %i.np, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.nq = load i64, ptr %i.hj, align 8, !tbaa !23, !noalias !891
  %i.nr = add i64 %i.nq, 1
  call void @_ZdlPvm(ptr noundef %i.no, i64 noundef %i.nr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #23, !noalias !891
  %.sroa.05.0.i = getelementptr inbounds nuw i8, ptr %.sroa.05.015.i, i64 72 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_116PopulatePCTargetERNS_17PopulateArgumentsER17cmExecutionStatus:bb.a

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread2.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i, %.preheader.split.i.i.i.i
  %.0.val.i.i.i.i = load ptr, ptr %.04.i.i.i.i, align 8, !tbaa !137 ; 2 uses
  %.not14.i.i.i.i = icmp eq ptr %.0.val.i.i.i.i, null
  br i1 %.not14.i.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN12_GLOBAL__N_113pkgStackEntryESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE5eraseERSG_.exit, label %.preheader.split.i.i.i.i, !llvm.loop !850

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i, %bb.dk, %.preheader.split.us.i.i.i.i
  %i.wk = phi ptr [ %.0.val.us.i.i.i.i, %bb.dk ], [ %i.wa, %.preheader.split.us.i.i.i.i ], [ %.04.i.i.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i ] ; 2 uses
  %.1.i.i.i.i = phi ptr [ %.04.us7.i.i.i.i, %bb.dk ], [ %i.dw, %.preheader.split.us.i.i.i.i ], [ %.0113.i.i.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i ]
  %.val26.i.i.i = load i64, ptr %i.dv, align 8, !tbaa !208 ; 2 uses
  %i.wl = getelementptr i8, ptr %i.wk, i64 64
  %.val27.i.i.i = load i64, ptr %i.wl, align 8, !tbaa !177
  %i.wm = urem i64 %.val27.i.i.i, %.val26.i.i.i   ; 2 uses
  %.pre.i.i.i = load ptr, ptr %56, align 8, !tbaa !207 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %i.wm
  %.pre61.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !178
  br label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS7_m.exit.i.i.i

bb.dl:                                            ; preds = %bb.di
  %i.wn = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %.val.i.i.i, i64 noundef %.8.val.fr.i.i.i.i, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i.i.i unwind label %bb.dm ; 3 uses

bb.dm:                                            ; preds = %bb.dl
  %i.wo = landingpad { ptr, i32 }
          catch ptr null
  %i.wp = extractvalue { ptr, i32 } %i.wo, 0
  call void @__clang_call_terminate(ptr %i.wp) #22
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i.i.i: ; preds = %bb.dl
  %.val25.i.i.i = load i64, ptr %i.dv, align 8, !tbaa !208 ; 5 uses
  %i.wq = urem i64 %i.wn, %.val25.i.i.i           ; 5 uses
  %.val28.i.i.i = load ptr, ptr %56, align 8, !tbaa !207 ; 3 uses
  %.val30.i.i.i = load ptr, ptr %60, align 8
  %.val31.i.i.i = load i64, ptr %i.gl, align 8
  %.8.val4.fr.i.i.i.i = freeze i64 %.val31.i.i.i  ; 3 uses
  %i.wr = getelementptr inbounds nuw [8 x i8], ptr %.val28.i.i.i, i64 %i.wq
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !178 ; 6 uses
  %.not.i35.i.i.i = icmp eq ptr %i.ws, null
  br i1 %.not.i35.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN12_GLOBAL__N_113pkgStackEntryESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE5eraseERSG_.exit, label %bb.dn

bb.dn:                                            ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i.i.i
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !137 ; 3 uses
  %i.wu = icmp eq i64 %.8.val4.fr.i.i.i.i, 0
  %.phi.trans.insert11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.wt, i64 64
  %.val.i.us.pre.i.i.i.i = load i64, ptr %.phi.trans.insert11.i.i.i.i, align 8, !tbaa !177 ; 2 uses
  br i1 %i.wu, label %.split.us.i.i.i.i, label %.split.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %bb.dn, %bb.dp
  %.val.i.us.i.i.i.i = phi i64 [ %.val23.us.i.i.i.i, %bb.dp ], [ %.val.i.us.pre.i.i.i.i, %bb.dn ]
  %.015.us.i.i.i.i = phi ptr [ %.0.us.i.i.i.i, %bb.dp ], [ %i.ws, %bb.dn ]
  %.0.us.i.i.i.i = phi ptr [ %i.wy, %bb.dp ], [ %i.wt, %bb.dn ] ; 4 uses
  %i.wv = icmp eq i64 %i.wn, %.val.i.us.i.i.i.i
  br i1 %i.wv, label %bb.do, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i.i.i

bb.do:                                            ; preds = %.split.us.i.i.i.i
  %i.ww = getelementptr inbounds nuw i8, ptr %.0.us.i.i.i.i, i64 16
  %.val7.i.us.i.i.i.i = load i64, ptr %i.ww, align 8, !tbaa !68
  %i.wx = icmp eq i64 %.val7.i.us.i.i.i.i, 0
  br i1 %i.wx, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS7_m.exit.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i.i.i: ; preds = %bb.do, %.split.us.i.i.i.i
  %i.wy = load ptr, ptr %.0.us.i.i.i.i, align 8, !tbaa !137 ; 3 uses
  %.not18.us.i.i.i.i = icmp eq ptr %i.wy, null
  br i1 %.not18.us.i.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN12_GLOBAL__N_113pkgStackEntryESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE5eraseERSG_.exit, label %bb.dp

bb.dp:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i.i.i
  %i.wz = getelementptr i8, ptr %i.wy, i64 64
  %.val23.us.i.i.i.i = load i64, ptr %i.wz, align 8, !tbaa !177 ; 2 uses
  %i.xa = urem i64 %.val23.us.i.i.i.i, %.val25.i.i.i
  %.not19.us.i.i.i.i = icmp eq i64 %i.xa, %i.wq
  br i1 %.not19.us.i.i.i.i, label %.split.us.i.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN12_GLOBAL__N_113pkgStackEntryESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE5eraseERSG_.exit, !llvm.loop !8

.split.i.i.i.i:                                   ; preds = %bb.dn, %bb.dr
  %.val.i.i.i.i.i = phi i64 [ %.val23.i.i.i.i, %bb.dr ], [ %.val.i.us.pre.i.i.i.i, %bb.dn ]
  %.015.i.i.i.i = phi ptr [ %.0.i.i.i.i, %bb.dr ], [ %i.ws, %bb.dn ]
  %.0.i.i.i.i = phi ptr [ %i.xg, %bb.dr ], [ %i.wt, %bb.dn ] ; 5 uses
  %i.xb = icmp eq i64 %i.wn, %.val.i.i.i.i.i
  br i1 %i.xb, label %bb.dq, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i

bb.dq:                                            ; preds = %.split.i.i.i.i
  %i.xc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %.val7.i.i.i.i.i = load i64, ptr %i.xc, align 8, !tbaa !68
  %i.xd = icmp eq i64 %.8.val4.fr.i.i.i.i, %.val7.i.i.i.i.i
  br i1 %i.xd, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i: ; preds = %bb.dq
  %i.xe = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %.val6.i.i.i.i.i = load ptr, ptr %i.xe, align 8
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr readonly %.val30.i.i.i, ptr readonly %.val6.i.i.i.i.i, i64 %.8.val4.fr.i.i.i.i)
  %i.xf = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.xf, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS7_m.exit.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i, %bb.dq, %.split.i.i.i.i
  %i.xg = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !137 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.xg, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN12_GLOBAL__N_113pkgStackEntryESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE5eraseERSG_.exit, label %bb.dr

bb.dr:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i
  %i.xh = getelementptr i8, ptr %i.xg, i64 64
  %.val23.i.i.i.i = load i64, ptr %i.xh, align 8, !tbaa !177 ; 2 uses
  %i.xi = urem i64 %.val23.i.i.i.i, %.val25.i.i.i
  %.not19.i.i.i.i = icmp eq i64 %i.xi, %i.wq
  br i1 %.not19.i.i.i.i, label %.split.i.i.i.i, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN12_GLOBAL__N_113pkgStackEntryESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE5eraseERSG_.exit, !llvm.loop !8

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS7_m.exit.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i, %bb.do, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.i.i.i
  %.val24.i.i.i.i = phi i64 [ %.val26.i.i.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.i.i.i ], [ %.val25.i.i.i, %bb.do ], [ %.val25.i.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i ] ; 2 uses
  %i.xj = phi ptr [ %.pre61.i.i.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.i.i.i ], [ %i.ws, %bb.do ], [ %i.ws, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i ] ; 3 uses
  %i.xk = phi ptr [ %.pre.i.i.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.i.i.i ], [ %.val28.i.i.i, %bb.do ], [ %.val28.i.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i ] ; 3 uses
  %.020.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.i.i.i ], [ %.015.us.i.i.i.i, %bb.do ], [ %.015.i.i.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i ] ; 3 uses
  %.119.i.i.i = phi ptr [ %i.wk, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.i.i.i ], [ %.0.us.i.i.i.i, %bb.do ], [ %.0.i.i.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i ] ; 3 uses
  %.017.i.i.i = phi i64 [ %i.wm, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeERS7_.exit.i.i.i ], [ %i.wq, %bb.do ], [ %i.wq, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i ] ; 3 uses
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.xk, i64 %.017.i.i.i
  %i.xm = icmp eq ptr %.020.i.i.i, %i.xj
  %.val21.i.i.i.i = load ptr, ptr %.119.i.i.i, align 8, !tbaa !137 ; 4 uses
  %.not18.i37.i.i.i = icmp eq ptr %.val21.i.i.i.i, null ; 2 uses
  br i1 %i.xm, label %bb.ds, label %bb.dx

bb.ds:                                            ; preds = %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS7_m.exit.i.i.i
  br i1 %.not18.i37.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.xn = getelementptr i8, ptr %.val21.i.i.i.i, i64 64
  %.val25.i.i.i.i = load i64, ptr %i.xn, align 8, !tbaa !177
  %i.xo = urem i64 %.val25.i.i.i.i, %.val24.i.i.i.i ; 2 uses
  %.not9.i.i.i.i.i = icmp eq i64 %i.xo, %.017.i.i.i
  br i1 %.not9.i.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSF_15_Hash_node_baseEPNSF_10_Hash_nodeISD_Lb1EEE.exit.i.i.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.xp = getelementptr inbounds nuw [8 x i8], ptr %i.xk, i64 %i.xo
  store ptr %i.xj, ptr %i.xp, align 8, !tbaa !178
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.du, %bb.ds
  %i.xq = icmp eq ptr %i.dw, %i.xj
  br i1 %i.xq, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %._crit_edge.i.i.i.i.i
  store ptr %.val21.i.i.i.i, ptr %i.dw, align 8, !tbaa !213
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %._crit_edge.i.i.i.i.i
  store ptr null, ptr %i.xl, align 8, !tbaa !178
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSF_15_Hash_node_baseEPNSF_10_Hash_nodeISD_Lb1EEE.exit.i.i.i

bb.dx:                                            ; preds = %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS7_m.exit.i.i.i
  br i1 %.not18.i37.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSF_15_Hash_node_baseEPNSF_10_Hash_nodeISD_Lb1EEE.exit.i.i.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.xr = getelementptr i8, ptr %.val21.i.i.i.i, i64 64
  %.val23.i38.i.i.i = load i64, ptr %i.xr, align 8, !tbaa !177
  %i.xs = urem i64 %.val23.i38.i.i.i, %.val24.i.i.i.i ; 2 uses
  %.not17.i.i.i.i = icmp eq i64 %i.xs, %.017.i.i.i
  br i1 %.not17.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSF_15_Hash_node_baseEPNSF_10_Hash_nodeISD_Lb1EEE.exit.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %i.xk, i64 %i.xs
  store ptr %.020.i.i.i, ptr %i.xt, align 8, !tbaa !178
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSF_15_Hash_node_baseEPNSF_10_Hash_nodeISD_Lb1EEE.exit.i.i.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSF_15_Hash_node_baseEPNSF_10_Hash_nodeISD_Lb1EEE.exit.i.i.i: ; preds = %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dt
  %i.xu = load ptr, ptr %.119.i.i.i, align 8, !tbaa !137
  store ptr %i.xu, ptr %.020.i.i.i, align 8, !tbaa !137
  call fastcc void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN12_GLOBAL__N_113pkgStackEntryESaISC_EEELb1EEEEE18_M_deallocate_nodeEPSG_(ptr noundef nonnull %.119.i.i.i)
  %i.xv = load i64, ptr %i.gi, align 8, !tbaa !212
  %i.xw = add i64 %i.xv, -1
  store i64 %i.xw, ptr %i.gi, align 8, !tbaa !212
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN12_GLOBAL__N_113pkgStackEntryESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE5eraseERSG_.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN12_GLOBAL__N_113pkgStackEntryESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE5eraseERSG_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread2.i.i.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread2.us.i.i.i.i, %bb.dr, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i, %bb.dp, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i.i.i, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSF_15_Hash_node_baseEPNSF_10_Hash_nodeISD_Lb1EEE.exit.i.i.i, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St6vectorIN12_GLOBAL__N_113pkgStackEntryESaISB_EEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i.i.i, %bb.dj
  %i.xx = invoke noundef nonnull align 8 dereferenceable(120) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_17cmPkgConfigResultESaISA_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 8 dereferenceable(56) %57, ptr noundef nonnull align 8 dereferenceable(32) %60)
          to label %.critedge87 unwind label %bb.dh ; 3 uses

.critedge87:                                      ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN12_GLOBAL__N_113pkgStackEntryESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE5eraseERSG_.exit
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSL_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(120) %i.xx, ptr noundef nonnull align 8 dereferenceable(120) %58)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEaSEOSE_.exit.i144 unwind label %bb.ea

bb.ea:                                            ; preds = %.critedge87
  %i.xy = landingpad { ptr, i32 }
          catch ptr null
  %i.xz = extractvalue { ptr, i32 } %i.xy, 0
  call void @__clang_call_terminate(ptr %i.xz) #22
  unreachable

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEaSEOSE_.exit.i144: ; preds = %.critedge87
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xx, i64 56
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSL_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %i.ya, ptr noundef nonnull align 8 dereferenceable(56) %i.gc)
          to label %_ZN17cmPkgConfigResultaSEOS_.exit145 unwind label %bb.eb

bb.eb:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEaSEOSE_.exit.i144
  %i.yb = landingpad { ptr, i32 }
          catch ptr null
  %i.yc = extractvalue { ptr, i32 } %i.yb, 0
  call void @__clang_call_terminate(ptr %i.yc) #22
  unreachable

_ZN17cmPkgConfigResultaSEOS_.exit145:             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEaSEOSE_.exit.i144
  %i.yd = load ptr, ptr %i.gf, align 8, !tbaa !183
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xx, i64 112
  store ptr %i.yd, ptr %i.ye, align 8, !tbaa !183
  %.not4.i.i.i = icmp samesign eq i64 %.0.lcssa.i.i.i.i.i.idx, 0
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_113pkgStackEntryES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN17cmPkgConfigResultaSEOS_.exit145, %_ZSt8_DestroyIN12_GLOBAL__N_113pkgStackEntryEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.yr, %_ZSt8_DestroyIN12_GLOBAL__N_113pkgStackEntryEEvPT_.exit.i.i.i ], [ %i.mg, %_ZN17cmPkgConfigResultaSEOS_.exit145 ] ; 5 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !67 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %i.yi = icmp eq ptr %i.yg, %i.yh
  br i1 %i.yi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.yj = load i64, ptr %i.yh, align 8, !tbaa !23
  %i.yk = add i64 %i.yj, 1
  call void @_ZdlPvm(ptr noundef %i.yg, i64 noundef %i.yk) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.yl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !67 ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.yo = icmp eq ptr %i.ym, %i.yn
  br i1 %i.yo, label %_ZSt8_DestroyIN12_GLOBAL__N_113pkgStackEntryEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.yp = load i64, ptr %i.yn, align 8, !tbaa !23
  %i.yq = add i64 %i.yp, 1
  call void @_ZdlPvm(ptr noundef %i.ym, i64 noundef %i.yq) #24
  br label %_ZSt8_DestroyIN12_GLOBAL__N_113pkgStackEntryEEvPT_.exit.i.i.i

_ZSt8_DestroyIN12_GLOBAL__N_113pkgStackEntryEEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i146
  %i.yr = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i147 = icmp eq ptr %i.yr, %.0.lcssa.i.i.i.i.i.ptr
  br i1 %.not.i.i.i147, label %_ZSt8_DestroyIPN12_GLOBAL__N_113pkgStackEntryES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPN12_GLOBAL__N_113pkgStackEntryES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_113pkgStackEntryEEvPT_.exit.i.i.i, %_ZN17cmPkgConfigResultaSEOS_.exit145
  %.not.i.i2.i = icmp eq ptr %i.mg, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIN12_GLOBAL__N_113pkgStackEntryESaIS1_EED2Ev.exit, label %bb.ec

bb.ec:                                            ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_113pkgStackEntryES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.mg, i64 noundef %i.kj) #24
  br label %_ZNSt6vectorIN12_GLOBAL__N_113pkgStackEntryESaIS1_EED2Ev.exit

_ZNSt6vectorIN12_GLOBAL__N_113pkgStackEntryESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_113pkgStackEntryES1_EvT_S3_RSaIT0_E.exit.i, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #23
  %i.ys = load ptr, ptr %60, align 8, !tbaa !67   ; 2 uses
  %i.yt = icmp eq ptr %i.ys, %i.gk
  br i1 %i.yt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_113pkgStackEntryESaIS1_EED2Ev.exit
  %i.yu = load i64, ptr %i.gk, align 8, !tbaa !23
  %i.yv = add i64 %i.yu, 1
  call void @_ZdlPvm(ptr noundef %i.ys, i64 noundef %i.yv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_113pkgStackEntryESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #23
  %.val90 = load i64, ptr %i.gi, align 8, !tbaa !212
  %i.yw = icmp eq i64 %.val90, 0
  br i1 %i.yw, label %._crit_edge, label %bb.aj

bb.ed:                                            ; preds = %bb.dg, %_ZNSt14_Optional_baseI17cmPkgConfigResultLb0ELb0EED2Ev.exit
  %.sroa.0293.2.in.in = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0293.2.in = load i8, ptr %.sroa.0293.2.in.in, align 8, !tbaa !100, !range !98, !noundef !99
  %.sroa.0293.2 = xor i8 %.sroa.0293.2.in, 1
  %.not4.i.i.i154 = icmp samesign eq i64 %.0.lcssa.i.i.i.i.i.idx, 0
  br i1 %.not4.i.i.i154, label %_ZSt8_DestroyIPN12_GLOBAL__N_113pkgStackEntryES1_EvT_S3_RSaIT0_E.exit.i164, label %.lr.ph.i.i.i155

.lr.ph.i.i.i155:                                  ; preds = %bb.ed, %_ZSt8_DestroyIN12_GLOBAL__N_113pkgStackEntryEEvPT_.exit.i.i.i160
  %.05.i.i.i156 = phi ptr [ %i.zj, %_ZSt8_DestroyIN12_GLOBAL__N_113pkgStackEntryEEvPT_.exit.i.i.i160 ], [ %i.mg, %bb.ed ] ; 5 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %.05.i.i.i156, i64 40
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !67 ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %.05.i.i.i156, i64 56 ; 2 uses
  %i.za = icmp eq ptr %i.yy, %i.yz
  br i1 %i.za, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i157: ; preds = %.lr.ph.i.i.i155
  %i.zb = load i64, ptr %i.yz, align 8, !tbaa !23
  %i.zc = add i64 %i.zb, 1
  call void @_ZdlPvm(ptr noundef %i.yy, i64 noundef %i.zc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i158: ; preds = %.lr.ph.i.i.i155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i157
  %i.zd = getelementptr inbounds nuw i8, ptr %.05.i.i.i156, i64 8
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !67 ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %.05.i.i.i156, i64 24 ; 2 uses
  %i.zg = icmp eq ptr %i.ze, %i.zf
  br i1 %i.zg, label %_ZSt8_DestroyIN12_GLOBAL__N_113pkgStackEntryEEvPT_.exit.i.i.i160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i158
  %i.zh = load i64, ptr %i.zf, align 8, !tbaa !23
  %i.zi = add i64 %i.zh, 1
  call void @_ZdlPvm(ptr noundef %i.ze, i64 noundef %i.zi) #24
  br label %_ZSt8_DestroyIN12_GLOBAL__N_113pkgStackEntryEEvPT_.exit.i.i.i160

_ZSt8_DestroyIN12_GLOBAL__N_113pkgStackEntryEEvPT_.exit.i.i.i160: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i159
  %i.zj = getelementptr inbounds nuw i8, ptr %.05.i.i.i156, i64 72 ; 2 uses
  %.not.i.i.i161 = icmp eq ptr %i.zj, %.0.lcssa.i.i.i.i.i.ptr
  br i1 %.not.i.i.i161, label %_ZSt8_DestroyIPN12_GLOBAL__N_113pkgStackEntryES1_EvT_S3_RSaIT0_E.exit.i164, label %.lr.ph.i.i.i155, !llvm.loop !9

_ZSt8_DestroyIPN12_GLOBAL__N_113pkgStackEntryES1_EvT_S3_RSaIT0_E.exit.i164: ; preds = %_ZSt8_DestroyIN12_GLOBAL__N_113pkgStackEntryEEvPT_.exit.i.i.i160, %bb.ed
  %.not.i.i2.i166 = icmp eq ptr %i.mg, null
  br i1 %.not.i.i2.i166, label %_ZNSt6vectorIN12_GLOBAL__N_113pkgStackEntryESaIS1_EED2Ev.exit171, label %bb.ee

bb.ee:                                            ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_113pkgStackEntryES1_EvT_S3_RSaIT0_E.exit.i164
  call void @_ZdlPvm(ptr noundef nonnull %i.mg, i64 noundef %i.kj) #24
  br label %_ZNSt6vectorIN12_GLOBAL__N_113pkgStackEntryESaIS1_EED2Ev.exit171

_ZNSt6vectorIN12_GLOBAL__N_113pkgStackEntryESaIS1_EED2Ev.exit171: ; preds = %_ZSt8_DestroyIPN12_GLOBAL__N_113pkgStackEntryES1_EvT_S3_RSaIT0_E.exit.i164, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #23
  %i.zk = load ptr, ptr %60, align 8, !tbaa !67   ; 2 uses
  %i.zl = icmp eq ptr %i.zk, %i.gk
  br i1 %i.zl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_113pkgStackEntryESaIS1_EED2Ev.exit171
  %i.zm = load i64, ptr %i.gk, align 8, !tbaa !23
  %i.zn = add i64 %i.zm, 1
  call void @_ZdlPvm(ptr noundef %i.zk, i64 noundef %i.zn) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_113pkgStackEntryESaIS1_EED2Ev.exit171, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #23
  br label %.loopexit, !llvm.loop !851

bb.ef:                                            ; preds = %bb.dh, %.body139
  %.pn75 = phi { ptr, i32 } [ %i.vz, %bb.dh ], [ %eh.lpad-body140, %.body139 ]
  call fastcc void @_ZNSt6vectorIN12_GLOBAL__N_113pkgStackEntryESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %61) #23
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp318.loopexit.split-lp.loopexit.split-lp, %.body.i, %bb.ef
  %.pn75.pn = phi { ptr, i32 } [ %.pn75, %bb.ef ], [ %lpad.loopexit.split-lp1322, %.loopexit.split-lp318.loopexit.split-lp.loopexit.split-lp ], [ %i.md, %.body.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #23
  %i.zo = load ptr, ptr %60, align 8, !tbaa !67   ; 2 uses
  %i.zp = icmp eq ptr %i.zo, %i.gk
  br i1 %i.zp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %.body
  %i.zq = load i64, ptr %i.gk, align 8, !tbaa !23
  %i.zr = add i64 %i.zq, 1
  call void @_ZdlPvm(ptr noundef %i.zo, i64 noundef %i.zr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175, %bb.dd
  %.pn75.pn.pn = phi { ptr, i32 } [ %i.vw, %bb.dd ], [ %.pn75.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175 ], [ %.pn75.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #23
  br label %.body195

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, %_ZN17cmPkgConfigResultaSEOS_.exit
  %i.zs = load ptr, ptr %i.eb, align 8, !tbaa !222 ; 2 uses
  %.not299754 = icmp eq ptr %i.zs, null
  br i1 %.not299754, label %.loopexit, label %.lr.ph757

.lr.ph757:                                        ; preds = %._crit_edge
  %i.zt = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.zv = getelementptr inbounds nuw i8, ptr %4, i64 22
  %i.zw = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i179 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.zx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.zy = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.4.0..sroa_idx.i9.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.zz = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.aaa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aad = getelementptr inbounds nuw i8, ptr %6, i64 23
  %i.aae = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aag = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.aai = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.aaj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aal = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aan = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.aap = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.aaq = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.aar = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.aat = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.aav = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.aax = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.aaz = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.aba = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.abb = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.abd = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.abf = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 3 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %19, i64 40 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.abj = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 7 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.abl = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.abn = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.abp = getelementptr inbounds nuw i8, ptr %19, i64 56 ; 3 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %19, i64 64 ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.abt = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 3 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.abv = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.aby = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 3 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.aca = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 6 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %29, i64 8
  %.sroa.4.0..sroa_idx.i.i261.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.acc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.4.0..sroa_idx.i10.i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.acd = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ace = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.4.0..sroa_idx.i18.i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.acf = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.acg = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 3 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.aci = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 4 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.ack = getelementptr inbounds nuw i8, ptr %19, i64 72
  %i.acl = getelementptr inbounds nuw i8, ptr %19, i64 48
  %i.acm = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  br label %bb.eg

bb.eg:                                            ; preds = %.lr.ph757, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %.sroa.0269.0755 = phi ptr [ %i.zs, %.lr.ph757 ], [ %i.atz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 4 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %.sroa.0269.0755, i64 8
  %i.aco = getelementptr inbounds nuw i8, ptr %.sroa.0269.0755, i64 40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %i.zt, ptr %4, align 8, !tbaa !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.zt, ptr noundef nonnull align 1 dereferenceable(6) @.str.142, i64 6, i1 false)
  store i64 6, ptr %i.zu, align 8, !tbaa !68
  store i8 0, ptr %i.zv, align 2, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !917
  %i.acp = load ptr, ptr %50, align 8, !tbaa !67, !noalias !917
  %i.acq = load i64, ptr %i.zw, align 8, !tbaa !68, !noalias !917
  store i64 %i.acq, ptr %3, align 8, !tbaa !61, !alias.scope !918, !noalias !917
  store ptr %i.acp, ptr %.sroa.4.0..sroa_idx.i.i.i179, align 8, !tbaa !62, !alias.scope !918, !noalias !917
  store ptr null, ptr %i.zx, align 8, !tbaa !66, !alias.scope !918, !noalias !917
  %i.acr = load ptr, ptr %i.acn, align 8, !tbaa !67, !noalias !917
  %i.acs = getelementptr inbounds nuw i8, ptr %.sroa.0269.0755, i64 16
  %i.act = load i64, ptr %i.acs, align 8, !tbaa !68, !noalias !917
  store i64 %i.act, ptr %i.zy, align 8, !tbaa !61, !alias.scope !919, !noalias !917
  store ptr %i.acr, ptr %.sroa.4.0..sroa_idx.i9.i.i, align 8, !tbaa !62, !alias.scope !919, !noalias !917
  store ptr null, ptr %i.zz, align 8, !tbaa !66, !alias.scope !919, !noalias !917
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull %3, i64 2)
          to label %bb.eh unwind label %bb.es

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !917
  %i.acu = invoke noundef ptr @_ZN10cmMakefile16AddForeignTargetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(2952) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ei unwind label %bb.et     ; 8 uses

bb.ei:                                            ; preds = %bb.eh
  %i.acv = load ptr, ptr %5, align 8, !tbaa !67   ; 2 uses
  %i.acw = icmp eq ptr %i.acv, %i.aaa
  br i1 %i.acw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i181: ; preds = %bb.ei
  %i.acx = load i64, ptr %i.aaa, align 8, !tbaa !23
  %i.acy = add i64 %i.acx, 1
  call void @_ZdlPvm(ptr noundef %i.acv, i64 noundef %i.acy) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i182: ; preds = %bb.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i181
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.acz = load ptr, ptr %4, align 8, !tbaa !67   ; 2 uses
  %i.ada = icmp eq ptr %i.acz, %i.zt
  br i1 %i.ada, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i182
  %i.adb = load i64, ptr %i.zt, align 8, !tbaa !23
  %i.adc = add i64 %i.adb, 1
  call void @_ZdlPvm(ptr noundef %i.acz, i64 noundef %i.adc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i182, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %i.aab, ptr %6, align 8, !tbaa !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.aab, ptr noundef nonnull align 1 dereferenceable(7) @.str.138, i64 7, i1 false)
  store i64 7, ptr %i.aac, align 8, !tbaa !68
  store i8 0, ptr %i.aad, align 1, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZN17cmPkgConfigResult7VersionB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(120) %i.aco)
          to label %bb.ej unwind label %bb.eu

bb.ej:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store i8 0, ptr %i.aae, align 8, !tbaa !141
  invoke void @_ZN8cmTarget14AppendPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RKSt8optionalI19cmListFileBacktraceEb(ptr noundef nonnull align 8 dereferenceable(8) %i.acu, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i1 noundef zeroext false)
          to label %bb.ek unwind label %bb.ev

bb.ek:                                            ; preds = %bb.ej
  %i.add = load i8, ptr %i.aae, align 8, !tbaa !141, !range !98, !noundef !99
  %i.ade = trunc nuw i8 %i.add to i1
  store i8 0, ptr %i.aae, align 8, !tbaa !141
end_hunk_2
