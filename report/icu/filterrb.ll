Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/filterrb?download=true
inline.NumInlined: 538
inline.NumDeleted: 244
begin_hunk_0
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%class.ResKeyPath = type { %"class.std::__cxx11::list" }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_List_impl" }
%"struct.std::__cxx11::_List_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { ptr, ptr }
%"struct.SimpleRuleBasedPathFilter::Tree" = type { i32, %"class.std::map", %"class.std::unique_ptr" }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, SimpleRuleBasedPathFilter::Tree>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, SimpleRuleBasedPathFilter::Tree>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, SimpleRuleBasedPathFilter::Tree>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, SimpleRuleBasedPathFilter::Tree>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.7" }
%"struct.std::_Head_base.7" = type { ptr }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, SimpleRuleBasedPathFilter::Tree>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, SimpleRuleBasedPathFilter::Tree>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node" = type { ptr }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, SimpleRuleBasedPathFilter::Tree>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, SimpleRuleBasedPathFilter::Tree>>, std::less<std::__cxx11::basic_string<char>>>::_Auto_node" = type { ptr, ptr }

$_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZN10ResKeyPathD2Ev = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE7emplaceIJRSB_S7_EEESA_ISt17_Rb_tree_iteratorISC_EbEDpOT_ = comdat any

$_ZN25SimpleRuleBasedPathFilter4TreeD2Ev = comdat any

$_ZN25SimpleRuleBasedPathFilterD2Ev = comdat any

$_ZN25SimpleRuleBasedPathFilterD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_ = comdat any

$_ZNKSt14default_deleteIN25SimpleRuleBasedPathFilter4TreeEEclEPS1_ = comdat any

$_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJRKS5_EEEvSt14_List_iteratorIS5_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRS7_S9_EEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRS7_S9_EEEvPSt13_Rb_tree_nodeISA_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_ = comdat any

@.str = private unnamed_addr constant [8 x i8] c"INCLUDE\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"PARTIAL\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"EXCLUDE\00", align 1
@_ZN10PathFilter16kEInclusionNamesE = dso_local local_unnamed_addr global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], align 16
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"genrb error: path must start with /: \00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"genrb error: empty subpaths and trailing slashes are not allowed: \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"genrb error: empty filter rules are not allowed\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"genrb error: rules must start with + or -: \00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.8 = private unnamed_addr constant [26 x i8] c"genrb info: rule on path \00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c" overrides previous rules\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"included: \00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c": {\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"* {\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"SimpleRuleBasedPathFilter {\00", align 1
@_ZTV10PathFilter = dso_local local_unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI10PathFilter, ptr @_ZN10PathFilterD2Ev, ptr @_ZN10PathFilterD0Ev, ptr @__cxa_pure_virtual] }, align 8
@_ZTI10PathFilter = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS10PathFilter }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS10PathFilter = dso_local constant [13 x i8] c"10PathFilter\00", align 1
@_ZTV25SimpleRuleBasedPathFilter = dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI25SimpleRuleBasedPathFilter, ptr @_ZN25SimpleRuleBasedPathFilterD2Ev, ptr @_ZN25SimpleRuleBasedPathFilterD0Ev, ptr @_ZNK25SimpleRuleBasedPathFilter5matchERK10ResKeyPath] }, align 8
@_ZTI25SimpleRuleBasedPathFilter = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS25SimpleRuleBasedPathFilter, ptr @_ZTI10PathFilter }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS25SimpleRuleBasedPathFilter = dso_local constant [28 x i8] c"25SimpleRuleBasedPathFilter\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.18 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1

@_ZN10ResKeyPathC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN10ResKeyPathC2Ev
@_ZN10ResKeyPathC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER10UErrorCode = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN10ResKeyPathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER10UErrorCode
@_ZN10PathFilterD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN10PathFilterD2Ev
@_ZN25SimpleRuleBasedPathFilter4TreeC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN25SimpleRuleBasedPathFilter4TreeC2ERKS0_

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN10ResKeyPathC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !9
  store ptr %0, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ResKeyPathC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !9
  store ptr %0, ptr %0, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 0, ptr %i.d, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !21
  %i.i = load i8, ptr %i.h, align 1, !tbaa !22
  %.not = icmp eq i8 %i.i, 47
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.3, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.k = load ptr, ptr %1, align 8, !tbaa !21
  %i.l = load i64, ptr %i.e, align 8, !tbaa !17
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.k, i64 noundef %i.l)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.g ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 240
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !25   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.d:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZSt16__throw_bad_castv() #22
          to label %.noexc36 unwind label %bb.g

.noexc36:                                         ; preds = %bb.d
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load i8, ptr %i.t, align 8, !tbaa !41
  %.not.i1.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i1.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 67
  %i.w = load i8, ptr %i.v, align 1, !tbaa !22
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.s)
          to label %.noexc37 unwind label %bb.g

.noexc37:                                         ; preds = %bb.f
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef signext i8 %i.z(ptr noundef nonnull align 8 dereferenceable(570) %i.s, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.g, !inline_history !47

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc37, %bb.e
  %.0.i.i.i = phi i8 [ %i.w, %bb.e ], [ %i.aa, %.noexc37 ]
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i8 noundef signext %.0.i.i.i)
          to label %.noexc39 unwind label %bb.g

.noexc39:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.g ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc39
  store i32 9, ptr %2, align 4, !tbaa !48
  br label %.loopexit59

bb.g:                                             ; preds = %.noexc39, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc37, %bb.f, %bb.d, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.h:                                             ; preds = %bb.b
  %i.ae = icmp eq i64 %i.f, 1
  br i1 %i.ae, label %.loopexit59, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %.018 = phi i64 [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ], [ 0, %.preheader ]
  %i.ah = add i64 %.018, 1                        ; 6 uses
  %i.ai = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext 47, i64 noundef %i.ah) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  %i.aj = load i64, ptr %i.e, align 8, !tbaa !17, !noalias !50 ; 3 uses
  %i.ak = icmp ugt i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i64 noundef %i.ah, i64 noundef %i.aj) #22
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.i
  %i.al = sub i64 %i.ai, %i.ah
  store ptr %i.af, ptr %3, align 8, !tbaa !53, !alias.scope !50
  %i.am = load ptr, ptr %1, align 8, !tbaa !21, !noalias !50
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ah ; 2 uses
  %i.ao = sub nuw i64 %i.aj, %i.ah
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.al, i64 %i.ao) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23, !noalias !50
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !tbaa !54, !noalias !50
  %i.ap = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.ap, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.aq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc25 unwind label %.loopexit ; 2 uses

.noexc25:                                         ; preds = %.noexc10.i.i
  store ptr %i.aq, ptr %3, align 8, !tbaa !21, !alias.scope !50
  %i.ar = load i64, ptr %i.b, align 8, !tbaa !54, !noalias !50
  store i64 %i.ar, ptr %i.af, align 8, !tbaa !22, !alias.scope !50
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.as = phi ptr [ %i.aq, %.noexc25 ], [ %i.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.at = load i8, ptr %i.an, align 1, !tbaa !22
  store i8 %i.at, ptr %i.as, align 1, !tbaa !22
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.an, i64 %spec.select.i.i.i, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i.i
  %i.au = load i64, ptr %i.b, align 8, !tbaa !54, !noalias !50 ; 2 uses
  store i64 %i.au, ptr %i.ag, align 8, !tbaa !17, !alias.scope !50
  %i.av = load ptr, ptr %3, align 8, !tbaa !21, !alias.scope !50
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  store i8 0, ptr %i.aw, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23, !noalias !50
  %i.ax = load i64, ptr %i.ag, align 8, !tbaa !17 ; 5 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.az = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.4, i64 noundef 66)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27 unwind label %.loopexit54 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27: ; preds = %bb.n
  %i.ba = load ptr, ptr %1, align 8, !tbaa !21
  %i.bb = load i64, ptr %i.e, align 8, !tbaa !17
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef %i.ba, i64 noundef %i.bb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit29 unwind label %.loopexit54 ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit29: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !23
  %i.be = getelementptr i8, ptr %i.bd, i64 -24
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr %i.bc, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 240
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !25 ; 6 uses
  %.not.i.i.i41 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i41, label %bb.o, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42

bb.o:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit29
  invoke void @_ZSt16__throw_bad_castv() #22
          to label %.noexc46 unwind label %.loopexit.split-lp55

.noexc46:                                         ; preds = %bb.o
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit29
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !41
  %.not.i1.i.i43 = icmp eq i8 %i.bk, 0
  br i1 %.not.i1.i.i43, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 67
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !22
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i44

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bi)
          to label %.noexc47 unwind label %.loopexit54

.noexc47:                                         ; preds = %bb.q
  %i.bn = load ptr, ptr %i.bi, align 8, !tbaa !23
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = invoke noundef signext i8 %i.bp(ptr noundef nonnull align 8 dereferenceable(570) %i.bi, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i44 unwind label %.loopexit54, !inline_history !47

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i44: ; preds = %.noexc47, %bb.p
  %.0.i.i.i45 = phi i8 [ %i.bm, %bb.p ], [ %i.bq, %.noexc47 ]
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, i8 noundef signext %.0.i.i.i45)
          to label %.noexc49 unwind label %.loopexit54

.noexc49:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i44
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.br)
          to label %_ZNSolsEPFRSoS_E.exit31 unwind label %.loopexit54 ; 0 uses

_ZNSolsEPFRSoS_E.exit31:                          ; preds = %.noexc49
  store i32 9, ptr %2, align 4, !tbaa !48
  br label %bb.v

.loopexit:                                        ; preds = %.noexc10.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.loopexit54:                                      ; preds = %bb.n, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27, %bb.q, %.noexc47, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i44, %.noexc49, %bb.r
  %lpad.loopexit56 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp55:                             ; preds = %bb.o
  %lpad.loopexit.split-lp57 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit54, %.loopexit.split-lp55, %_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit9.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.cf, %_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit9.i.i ], [ %lpad.loopexit56, %.loopexit54 ], [ %lpad.loopexit.split-lp57, %.loopexit.split-lp55 ] ; 2 uses
  %i.bt = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.af
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.bv = load i64, ptr %i.af, align 8, !tbaa !22
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.r:                                             ; preds = %bb.m
  %i.bx = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #25
          to label %.noexc52 unwind label %.loopexit54 ; 5 uses

.noexc52:                                         ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 32 ; 4 uses
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !53
  %i.ca = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.ax, ptr %i.a, align 8, !tbaa !54
  %i.cb = icmp ugt i64 %i.ax, 15
  br i1 %i.cb, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.noexc52
  %i.cc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %._crit_edge.i.i.i.i.thread unwind label %_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit9.i.i ; 2 uses

._crit_edge.i.i.i.i.thread:                       ; preds = %.noexc.i.i.i
  store ptr %i.cc, ptr %i.by, align 8, !tbaa !21
  %i.cd = load i64, ptr %i.a, align 8, !tbaa !54
  store i64 %i.cd, ptr %i.bz, align 8, !tbaa !22
  br label %bb.t

._crit_edge.i.i.i.i:                              ; preds = %.noexc52
  %cond53 = icmp eq i64 %i.ax, 1
  br i1 %cond53, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ce = load i8, ptr %i.ca, align 1, !tbaa !22
  store i8 %i.ce, ptr %i.bz, align 8, !tbaa !22
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i.i.i.thread, %._crit_edge.i.i.i.i
  %4 = phi ptr [ %i.cc, %._crit_edge.i.i.i.i.thread ], [ %i.bz, %._crit_edge.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 %i.ca, i64 %i.ax, i1 false)
  br label %bb.u

_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit9.i.i: ; preds = %.noexc.i.i.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef 48) #24
  br label %.body

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.cg = load i64, ptr %i.a, align 8, !tbaa !54  ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !17
  %i.ci = load ptr, ptr %i.by, align 8, !tbaa !21
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cg
  store i8 0, ptr %i.cj, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %0) #23
  %i.ck = load i64, ptr %i.d, align 8, !tbaa !55
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.d, align 8, !tbaa !55
  %i.cm = icmp ne i64 %i.ai, -1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZNSolsEPFRSoS_E.exit31
  %.0 = phi i1 [ false, %_ZNSolsEPFRSoS_E.exit31 ], [ %i.cm, %bb.u ]
  %i.cn = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.af
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.v
  %i.cp = load i64, ptr %i.af, align 8, !tbaa !22
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br i1 %.0, label %bb.i, label %.loopexit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.w

.loopexit59:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %bb.h, %_ZNSolsEPFRSoS_E.exit
  ret void

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g
  %.pn23 = phi { ptr, i32 } [ %i.ad, %bb.g ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #23
  resume { ptr, i32 } %.pn23
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ResKeyPath4pushERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJRKS5_EEEvSt14_List_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %.not8.i = icmp eq ptr %i.a, %0
  br i1 %.not8.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.09.i = phi ptr [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.b = load ptr, ptr %.09.i, align 8, !tbaa !13 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.09.i, i64 32 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !22
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i, i64 noundef 48) #24
  %.not.i = icmp eq ptr %i.b, %0
  br i1 %.not.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv.exit, label %.lr.ph.i, !llvm.loop !58

_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_clearEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN10ResKeyPath3popEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !55
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !55
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.h, align 8, !tbaa !22
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #24
  br label %_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit

_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 48) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNK10ResKeyPath6piecesB5cxx11Ev(ptr nofree noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(24) %0) local_unnamed_addr #5 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK10ResKeyPath(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.b = icmp eq ptr %i.a, %1
  br i1 %i.b, label %bb.b, label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.5, i64 noundef 1) ; 0 uses
  br label %.loopexit

.preheader:                                       ; preds = %bb.a, %.preheader
  %.sroa.08.011 = phi ptr [ %i.j, %.preheader ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.011, i64 16
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.5, i64 noundef 1) ; 0 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.011, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !17
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.f, i64 noundef %i.h) ; 0 uses
  %i.j = load ptr, ptr %.sroa.08.011, align 8, !tbaa !13 ; 2 uses
  %.not = icmp eq ptr %i.j, %1
  br i1 %.not, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN10PathFilterD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #5 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN10PathFilterD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @llvm.trap() #26
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN25SimpleRuleBasedPathFilter7addRuleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %class.ResKeyPath, align 8          ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.6, i64 noundef 47) ; 0 uses
  %i.f = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !23
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25   ; 6 uses
  %.not.i.i.i18 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i18, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt16__throw_bad_castv() #22
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load i8, ptr %i.l, align 8, !tbaa !41
  %.not.i1.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i1.i.i, label %bb.e, label %bb.d
end_hunk_0
begin_hunk_1_@_ZN25SimpleRuleBasedPathFilter7addRuleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEER10UErrorCode:bb.a

bb.q:                                             ; preds = %bb.n
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10ResKeyPathD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.q ], [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN25SimpleRuleBasedPathFilter7addRuleERK10ResKeyPathbR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !48
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %1, align 8, !tbaa !13
  tail call void @_ZN25SimpleRuleBasedPathFilter4Tree9applyRuleERK10ResKeyPathSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.d, i1 noundef zeroext %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10ResKeyPathD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %.not8.i.i = icmp eq ptr %i.a, %0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.09.i.i = phi ptr [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.b = load ptr, ptr %.09.i.i, align 8, !tbaa !13 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !22
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 48) #24
  %.not.i.i = icmp eq ptr %i.b, %0
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !58

_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN25SimpleRuleBasedPathFilter4Tree9applyRuleERK10ResKeyPathSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %2, i1 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.SimpleRuleBasedPathFilter::Tree", align 8 ; 9 uses
  %6 = alloca %"struct.SimpleRuleBasedPathFilter::Tree", align 8 ; 14 uses
  %i.a = icmp eq ptr %2, %1
  br i1 %i.a, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.b = tail call signext i8 @isVerbose()
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 8, !tbaa !64
  %.not38 = icmp eq i32 %i.c, 1
  br i1 %.not38, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !83
  %i.f = icmp eq i64 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8
  %.not.i = icmp eq ptr %i.h, null
  %i.i = select i1 %i.f, i1 %.not.i, i1 false
  br i1 %i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.8, i64 noundef 25) ; 0 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.l = icmp eq ptr %i.k, %2
  br i1 %i.l, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.5, i64 noundef 1) ; 0 uses
  br label %_ZlsRSoRK10ResKeyPath.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.sroa.08.011.i = phi ptr [ %i.t, %.preheader.i ], [ %i.k, %bb.e ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i, i64 16
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.5, i64 noundef 1) ; 0 uses
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !17
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.p, i64 noundef %i.r) ; 0 uses
  %i.t = load ptr, ptr %.sroa.08.011.i, align 8, !tbaa !13 ; 2 uses
  %.not.i39 = icmp eq ptr %i.t, %2
  br i1 %.not.i39, label %_ZlsRSoRK10ResKeyPath.exit, label %.preheader.i

_ZlsRSoRK10ResKeyPath.exit:                       ; preds = %.preheader.i, %bb.f
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.9, i64 noundef 25) ; 0 uses
  %i.v = load ptr, ptr @_ZSt4cout, align 8, !tbaa !23
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 240
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25  ; 6 uses
  %.not.i.i.i48 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i48, label %bb.g, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.g:                                             ; preds = %_ZlsRSoRK10ResKeyPath.exit
  tail call void @_ZSt16__throw_bad_castv() #22
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZlsRSoRK10ResKeyPath.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !41
  %.not.i1.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i1.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 67
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !22
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.aa)
  %i.af = load ptr, ptr %i.aa, align 8, !tbaa !23
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef signext i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(570) %i.aa, i8 noundef signext 10), !inline_history !60
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.h, %bb.i
  %.0.i.i.i = phi i8 [ %i.ae, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i)
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.d, %bb.b
  %i.al = select i1 %3, i32 0, i32 2
  store i32 %i.al, ptr %0, align 8, !tbaa !64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !84
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef %i.ao)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE5clearEv.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #26
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE5clearEv.exit: ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.an, align 8, !tbaa !84
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !85
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !86
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.au, align 8, !tbaa !83
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !87 ; 2 uses
  store ptr null, ptr %i.av, align 8, !tbaa !87
  %.not.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EE5resetEPS1_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE5clearEv.exit
  tail call void @_ZNKSt14default_deleteIN25SimpleRuleBasedPathFilter4TreeEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull %i.aw)
  br label %_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EE5resetEPS1_.exit

bb.m:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !17 ; 5 uses
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.m
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !21
  %lhsc = load i8, ptr %i.bb, align 1
  %i.bc = icmp eq i8 %lhsc, 42
  br i1 %i.bc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !87 ; 2 uses
  %.not61.a = icmp eq ptr %i.be, null
  br i1 %.not61.a, label %_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EEaSEOS4_.exit, label %bb.n

_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bf = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25, !noalias !88 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bf, i8 0, i64 32, i1 false), !noalias !88
  store i32 1, ptr %i.bf, align 16, !tbaa !64, !noalias !88
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  store ptr %i.bg, ptr %i.bh, align 16, !tbaa !85, !noalias !88
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  store ptr %i.bg, ptr %i.bi, align 8, !tbaa !86, !noalias !88
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false), !noalias !88
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !87
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EEaSEOS4_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %7 = phi ptr [ %i.bf, %_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EEaSEOS4_.exit ], [ %i.be, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ]
  %i.bk = load ptr, ptr %2, align 8, !tbaa !13    ; 2 uses
  tail call void @_ZN25SimpleRuleBasedPathFilter4Tree9applyRuleERK10ResKeyPathSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.bk, i1 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !85 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not6263 = icmp eq ptr %i.bm, %i.bn
  br i1 %.not6263, label %_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EE5resetEPS1_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %.lr.ph
  %.sroa.052.064 = phi ptr [ %i.bp, %.lr.ph ], [ %i.bm, %bb.n ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.052.064, i64 64
  tail call void @_ZN25SimpleRuleBasedPathFilter4Tree9applyRuleERK10ResKeyPathSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.bk, i1 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %i.bp = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.052.064) #27 ; 2 uses
  %.not62 = icmp eq ptr %i.bp, %i.bn
  br i1 %.not62, label %_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EE5resetEPS1_.exit, label %.lr.ph

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58: ; preds = %bb.m, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !84 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58
  %i.bu = load ptr, ptr %i.ax, align 8            ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !17 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.az, i64 %i.bw) ; 2 uses
  %i.bx = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.bx, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !21
  %i.ca = tail call i32 @memcmp(ptr noundef %i.bz, ptr noundef %i.bu, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.o
  %i.cb = sub i64 %i.bw, %i.az
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.cb, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ca, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.cc = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.cc, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.cc, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.o, !llvm.loop !92

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.cd = icmp eq ptr %.19.i.i.i, %i.bt
  br i1 %i.cd, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.p

bb.p:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !17 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 %i.az) ; 2 uses
  %i.cg = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.cg, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !21
  %i.cj = tail call i32 @memcmp(ptr noundef %i.bu, ptr noundef %i.ci, i64 noundef %.sroa.speculated.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.p
  %i.ck = sub i64 %i.az, %i.cf
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ck, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.cj, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.cl = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.cl, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.aa

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread58, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !87 ; 2 uses
  %.not60 = icmp eq ptr %i.cn, null
  br i1 %.not60, label %bb.v, label %bb.q

bb.q:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN25SimpleRuleBasedPathFilter4TreeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %i.cn)
  %i.co = invoke { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE7emplaceIJRSB_S7_EEESA_ISt17_Rb_tree_iteratorISC_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  %.fca.0.extract5 = extractvalue { ptr, i8 } %i.co, 0
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !87 ; 2 uses
  %.not.i.i42 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i42, label %_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EED2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZNKSt14default_deleteIN25SimpleRuleBasedPathFilter4TreeEEclEPS1_(ptr noundef nonnull align 1 dereferenceable(1) %i.cp, ptr noundef nonnull %i.cq), !inline_history !93
  br label %_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.s, %bb.r
  store ptr null, ptr %i.cp, align 8, !tbaa !87
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !84
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cr, ptr noundef %i.ct)
          to label %_ZN25SimpleRuleBasedPathFilter4TreeD2Ev.exit unwind label %bb.t, !inline_history !94

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EED2Ev.exit.i
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  call void @__clang_call_terminate(ptr %i.cv) #26, !inline_history !94
  unreachable

_ZN25SimpleRuleBasedPathFilter4TreeD2Ev.exit:     ; preds = %_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.aa

bb.u:                                             ; preds = %bb.q
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN25SimpleRuleBasedPathFilter4TreeD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.ab

bb.v:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 24, i1 false)
  store i32 1, ptr %6, align 8, !tbaa !64
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr null, ptr %i.cy, align 8, !tbaa !84
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.cx, ptr %i.cz, align 8, !tbaa !85
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.cx, ptr %i.da, align 8, !tbaa !86
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, i8 0, i64 16, i1 false)
  %i.dc = invoke { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE7emplaceIJRSB_S7_EEESA_ISt17_Rb_tree_iteratorISC_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  %.fca.0.extract = extractvalue { ptr, i8 } %i.dc, 0
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !87 ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.de, null
  br i1 %.not.i.i43, label %_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EED2Ev.exit.i44, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZNKSt14default_deleteIN25SimpleRuleBasedPathFilter4TreeEEclEPS1_(ptr noundef nonnull align 1 dereferenceable(1) %i.dd, ptr noundef nonnull %i.de), !inline_history !93
  br label %_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EED2Ev.exit.i44

_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EED2Ev.exit.i44: ; preds = %bb.x, %bb.w
  store ptr null, ptr %i.dd, align 8, !tbaa !87
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dg = load ptr, ptr %i.cy, align 8, !tbaa !84
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.df, ptr noundef %i.dg)
          to label %_ZN25SimpleRuleBasedPathFilter4TreeD2Ev.exit45 unwind label %bb.y, !inline_history !94

bb.y:                                             ; preds = %_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EED2Ev.exit.i44
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #26, !inline_history !94
  unreachable

_ZN25SimpleRuleBasedPathFilter4TreeD2Ev.exit45:   ; preds = %_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EED2Ev.exit.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.aa

bb.z:                                             ; preds = %bb.v
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN25SimpleRuleBasedPathFilter4TreeD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ab

bb.aa:                                            ; preds = %_ZN25SimpleRuleBasedPathFilter4TreeD2Ev.exit, %_ZN25SimpleRuleBasedPathFilter4TreeD2Ev.exit45, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %.sroa.049.0 = phi ptr [ %.fca.0.extract5, %_ZN25SimpleRuleBasedPathFilter4TreeD2Ev.exit ], [ %.fca.0.extract, %_ZN25SimpleRuleBasedPathFilter4TreeD2Ev.exit45 ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit ]
  %i.dk = load ptr, ptr %2, align 8, !tbaa !13
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.049.0, i64 64
  call void @_ZN25SimpleRuleBasedPathFilter4Tree9applyRuleERK10ResKeyPathSt20_List_const_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEbR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %i.dl, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.dk, i1 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EE5resetEPS1_.exit

bb.ab:                                            ; preds = %bb.z, %bb.u
  %.pn = phi { ptr, i32 } [ %i.cw, %bb.u ], [ %i.dj, %bb.z ]
  resume { ptr, i32 } %.pn
end_hunk_1
begin_hunk_2_@_ZNK25SimpleRuleBasedPathFilter5matchERK10ResKeyPath:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.02655, i64 16 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.040.057, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.040.057, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !17   ; 4 uses
  %i.j = load ptr, ptr %i.g, align 8              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !17   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.l) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.p = tail call i32 @memcmp(ptr noundef %i.o, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.q = sub i64 %i.l, %i.i
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.q, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.p, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.r = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.r, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.r, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.b, !llvm.loop !95

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.s = icmp eq ptr %.19.i.i.i, %i.f
  br i1 %i.s, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !17   ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.i) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.y = tail call i32 @memcmp(ptr noundef %i.j, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.c
  %i.z = sub i64 %i.i, %i.u
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.z, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.y, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.aa = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.aa, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.d

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %.lr.ph, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.02655, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !87 ; 2 uses
  %.not52 = icmp eq ptr %i.ac, null
  br i1 %.not52, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread._crit_edge.thread, label %bb.e

bb.d:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread
  %.127 = phi ptr [ %i.ad, %bb.d ], [ %i.ac, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread ] ; 3 uses
  %i.ae = load i32, ptr %.127, align 8, !tbaa !64 ; 4 uses
  %.not34 = icmp eq i32 %i.ae, 1
  %spec.select35 = select i1 %.not34, i32 %.12356, i32 %i.ae ; 2 uses
  %.sroa.040.0 = load ptr, ptr %.sroa.040.057, align 8, !tbaa !13 ; 2 uses
  %.not51.not = icmp eq ptr %.sroa.040.0, %1
  br i1 %.not51.not, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread._crit_edge, label %.lr.ph

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread._crit_edge: ; preds = %bb.e, %bb.a
  %i.af = phi i32 [ %i.b, %bb.a ], [ %i.ae, %bb.e ]
  %.026.lcssa = phi ptr [ %i.a, %bb.a ], [ %.127, %bb.e ] ; 2 uses
  %.123.lcssa = phi i32 [ %spec.select, %bb.a ], [ %spec.select35, %bb.e ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.026.lcssa, i64 48
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !83
  %i.ai = icmp eq i64 %i.ah, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %.026.lcssa, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8
  %.not.i = icmp eq ptr %i.ak, null
  %i.al = select i1 %i.ai, i1 %.not.i, i1 false
  br i1 %i.al, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread._crit_edge.thread, label %bb.f

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread._crit_edge.thread: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread._crit_edge
  %.123.lcssa72 = phi i32 [ %.123.lcssa, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread._crit_edge ], [ %.12356, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread ]
  %i.am = phi i32 [ %i.af, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread._crit_edge ], [ %i.c, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread ] ; 2 uses
  %i.an = icmp eq i32 %i.am, 1
  %.4. = select i1 %i.an, i32 %.123.lcssa72, i32 %i.am
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread._crit_edge.thread, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread._crit_edge
  %.030 = phi i32 [ %.4., %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread._crit_edge.thread ], [ 1, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread._crit_edge ]
  ret i32 %.030
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK25SimpleRuleBasedPathFilter4Tree6isLeafEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !83
  %i.c = icmp eq i64 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  %.not = icmp eq ptr %i.e, null
  %i.f = select i1 %i.c, i1 %.not, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN25SimpleRuleBasedPathFilter4TreeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 4), (16, 20), (24, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, SimpleRuleBasedPathFilter::Tree>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, SimpleRuleBasedPathFilter::Tree>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !64
  store i32 %i.a, ptr %0, align 8, !tbaa !64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i32 0, ptr %i.c, align 8, !tbaa !96
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !84
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.c, ptr %i.e, align 8, !tbaa !85
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.c, ptr %i.f, align 8, !tbaa !86
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i64 0, ptr %i.g, align 8, !tbaa !83
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !84   ; 2 uses
  %.not.i8 = icmp eq ptr %i.i, null
  br i1 %.not.i8, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEC2ERKSG_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %i.b, ptr %2, align 8, !tbaa !97
  %i.j = call noundef ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull %i.i, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(8) %2), !inline_history !99 ; 3 uses
  br label %.noexc9

.noexc9:                                          ; preds = %bb.b, %.noexc9
  %.0.i.i.i = phi ptr [ %i.l, %.noexc9 ], [ %i.j, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !100  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i, label %.noexc9, !llvm.loop !101

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i: ; preds = %.noexc9
  store ptr %.0.i.i.i, ptr %i.e, align 8, !tbaa !91
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i
  %.0.i.i7.i = phi ptr [ %i.j, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i7.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !102  ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i8.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyERKSG_.exit.i, label %bb.c, !llvm.loop !103

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyERKSG_.exit.i: ; preds = %bb.c
  store ptr %.0.i.i7.i, ptr %i.f, align 8, !tbaa !91
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !83
  store i64 %i.p, ptr %i.g, align 8, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  store ptr %i.j, ptr %i.d, align 8, !tbaa !91
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEC2ERKSG_.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEC2ERKSG_.exit: ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyERKSG_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  store ptr null, ptr %i.q, align 8, !tbaa !104
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !87   ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEC2ERKSG_.exit
  %i.t = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #25
          to label %.noexc unwind label %.body.thread, !inline_history !105 ; 3 uses

.noexc:                                           ; preds = %bb.d
  invoke void @_ZN25SimpleRuleBasedPathFilter4TreeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %bb.e unwind label %.body, !noalias !106, !inline_history !105

bb.e:                                             ; preds = %.noexc
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !87   ; 2 uses
  store ptr %i.t, ptr %i.q, align 8, !tbaa !87
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %bb.e
  call void @_ZNKSt14default_deleteIN25SimpleRuleBasedPathFilter4TreeEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %i.u)
  br label %_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EED2Ev.exit

.body.thread:                                     ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EED2Ev.exit7

.body:                                            ; preds = %.noexc
  %3 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 64) #24, !noalias !106, !inline_history !105
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !87  ; 2 uses
  %.not.i6 = icmp eq ptr %.pre, null
  br i1 %.not.i6, label %_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EED2Ev.exit7, label %bb.f

bb.f:                                             ; preds = %.body
  call void @_ZNKSt14default_deleteIN25SimpleRuleBasedPathFilter4TreeEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %.pre), !inline_history !109
  br label %_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EED2Ev.exit7

_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EED2Ev.exit7: ; preds = %.body.thread, %.body, %bb.f
  %eh.lpad-body16 = phi { ptr, i32 } [ %i.v, %.body.thread ], [ %3, %.body ], [ %3, %bb.f ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.b) #23
  resume { ptr, i32 } %eh.lpad-body16

_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.e, %_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EEaSEOS4_.exit, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEC2ERKSG_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev.exit unwind label %bb.b, !inline_history !110

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #26, !inline_history !110
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev.exit: ; preds = %bb.a
  ret void
}

declare signext i8 @isVerbose() local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE7emplaceIJRSB_S7_EEESA_ISt17_Rb_tree_iteratorISC_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !17   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #23 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !91 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, label %bb.b, !llvm.loop !92

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !17   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #23 ; 2 uses
  %.not.i.i.i10 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i10, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i21 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN25SimpleRuleBasedPathFilter4TreeESt4lessIS5_ESaISt4pairIKS5_S7_EEE11lower_boundERSB_.exit ], [ %i.c, %bb.a ]
  %i.x = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE22_M_emplace_hint_uniqueIJRS7_S9_EEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i21, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(64) %2)
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %.critedge
  %.sroa.019.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.sroa.3.0 = phi i8 [ 1, %.critedge ], [ 0, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.019.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN25SimpleRuleBasedPathFilter4TreeD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt14default_deleteIN25SimpleRuleBasedPathFilter4TreeEEclEPS1_(ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull %i.b), !inline_history !109
  br label %_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !84
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.e)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev.exit unwind label %bb.c, !inline_history !111

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EED2Ev.exit
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #26, !inline_history !111
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N25SimpleRuleBasedPathFilter4TreeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN25SimpleRuleBasedPathFilter4TreeESt14default_deleteIS1_EED2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK25SimpleRuleBasedPathFilter4Tree5printERSoi(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0                       ; 5 uses
  br i1 %i.a, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.12, i64 noundef 10) ; 0 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !64
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZN10PathFilter16kEInclusionNamesE, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !112  ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.g = load ptr, ptr %1, align 8, !tbaa !23
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !113
  %i.m = or i32 %i.l, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.j, i32 noundef %i.m)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.c:                                             ; preds = %._crit_edge
  %i.n = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #23
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.f, i64 noundef %i.n) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b, %bb.c
  %i.p = load ptr, ptr %1, align 8, !tbaa !23
  %i.q = getelementptr i8, ptr %i.p, i64 -24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds i8, ptr %1, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 240
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  tail call void @_ZSt16__throw_bad_castv() #22
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
end_hunk_2
