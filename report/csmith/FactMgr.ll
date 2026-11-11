Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/FactMgr?download=true
inline.NumInlined: 1467
inline.NumDeleted: 663
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"struct.std::piecewise_construct_t" = type { i8 }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<const Fact *, std::allocator<const Fact *>>::_Vector_impl" }
%"struct.std::_Vector_base<const Fact *, std::allocator<const Fact *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const Fact *, std::allocator<const Fact *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const Fact *, std::allocator<const Fact *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }
%"class.std::tuple.105" = type { i8 }
%class.Lhs = type <{ %class.Expression, ptr, ptr, i8, [7 x i8] }>
%class.Expression = type { ptr, i32, i32, ptr }
%"class.std::vector.36" = type { %"struct.std::_Vector_base.37" }
%"struct.std::_Vector_base.37" = type { %"struct.std::_Vector_base<const Variable *, std::allocator<const Variable *>>::_Vector_impl" }
%"struct.std::_Vector_base<const Variable *, std::allocator<const Variable *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const Variable *, std::allocator<const Variable *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const Variable *, std::allocator<const Variable *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<Fact *, std::allocator<Fact *>>::_Vector_impl" }
%"struct.std::_Vector_base<Fact *, std::allocator<Fact *>>::_Vector_impl" = type { %"struct.std::_Vector_base<Fact *, std::allocator<Fact *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<Fact *, std::allocator<Fact *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.31" = type { %"struct.std::_Vector_base.32" }
%"struct.std::_Vector_base.32" = type { %"struct.std::_Vector_base<Variable *, std::allocator<Variable *>>::_Vector_impl" }
%"struct.std::_Vector_base<Variable *, std::allocator<Variable *>>::_Vector_impl" = type { %"struct.std::_Vector_base<Variable *, std::allocator<Variable *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<Variable *, std::allocator<Variable *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::tuple.111" = type { %"struct.std::_Tuple_impl.112" }
%"struct.std::_Tuple_impl.112" = type { %"struct.std::_Head_base.113" }
%"struct.std::_Head_base.113" = type { ptr }
%"class.std::vector.81" = type { %"struct.std::_Vector_base.82" }
%"struct.std::_Vector_base.82" = type { %"struct.std::_Vector_base<const Block *, std::allocator<const Block *>>::_Vector_impl" }
%"struct.std::_Vector_base<const Block *, std::allocator<const Block *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const Block *, std::allocator<const Block *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const Block *, std::allocator<const Block *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"struct.std::_Rb_tree<const Statement *, std::pair<const Statement *const, std::vector<Fact *>>, std::_Select1st<std::pair<const Statement *const, std::vector<Fact *>>>, std::less<const Statement *>>::_Auto_node" = type { ptr, ptr }
%"struct.std::_Rb_tree<const Statement *, std::pair<const Statement *const, std::vector<const Fact *>>, std::_Select1st<std::pair<const Statement *const, std::vector<const Fact *>>>, std::less<const Statement *>>::_Auto_node" = type { ptr, ptr }

$_ZNSt6vectorIP4FactSaIS1_EED2Ev = comdat any

$_ZNSt6vectorIPK4FactSaIS2_EEaSERKS4_ = comdat any

$_ZNSt6vectorIP4FactSaIS1_EEaSERKS3_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorIPK8VariableSaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKPS0_S_IS8_SaIS8_EEEEEEvNS7_IPS2_S4_EET_SG_St20forward_iterator_tag = comdat any

$_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_bESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E = comdat any

$_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_6EffectESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E = comdat any

$_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_St6vectorIP4FactSaIS7_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E = comdat any

$_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_St6vectorIPK4FactSaIS8_EEESt10_Select1stISB_ESt4lessIS2_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt6vectorIP8VariableSaIS1_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEvNS6_IPS1_S3_EET_SC_St20forward_iterator_tag = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

$_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_St6vectorIP4FactSaIS7_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESL_IJEEEEESt17_Rb_tree_iteratorISA_ESt23_Rb_tree_const_iteratorISA_EDpOT_ = comdat any

$_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_St6vectorIP4FactSaIS7_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS4_ = comdat any

$_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_St6vectorIP4FactSaIS7_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_St6vectorIPK4FactSaIS8_EEESt10_Select1stISB_ESt4lessIS2_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_ = comdat any

$_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_St6vectorIPK4FactSaIS8_EEESt10_Select1stISB_ESt4lessIS2_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS4_ = comdat any

$_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_St6vectorIPK4FactSaIS8_EEESt10_Select1stISB_ESt4lessIS2_ESaISB_EE10_Auto_nodeD2Ev = comdat any

$_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_St6vectorIPK4FactSaIS8_EEESt10_Select1stISB_ESt4lessIS2_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS2_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_ = comdat any

$_ZSt19piecewise_construct = comdat any

@_ZN7FactMgr10meta_factsE = dso_local global { { ptr, ptr, ptr } } zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTI9Statement = external constant ptr
@_ZTI13StatementGoto = external constant ptr
@_ZTI4Fact = external constant ptr
@_ZTI11FactPointTo = external constant ptr
@_ZN11FactPointTo11garbage_ptrE = external local_unnamed_addr global ptr, align 8
@_ZN9FactUnion6BOTTOME = external local_unnamed_addr constant i32, align 4
@.str = private unnamed_addr constant [13 x i8] c"facts after \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"for loop\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"branching\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"statement id: \00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@_ZN11FactPointTo8null_ptrE = external local_unnamed_addr global ptr, align 8
@_ZN11FactPointTo7tbd_ptrE = external local_unnamed_addr global ptr, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_FactMgr.cpp, ptr null }]

@_ZN7FactMgrC1EPK8Function = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN7FactMgrC2EPK8Function
@_ZN7FactMgrD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN7FactMgrD2Ev

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP4FactSaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIP4FactSaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #22
  br label %_ZNSt12_Vector_baseIP4FactSaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIP4FactSaIS1_EED2Ev.exit:      ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7FactMgr38add_new_var_fact_and_update_inout_mapsEPK5BlockPK8Variable(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.0", align 8     ; 9 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7FactMgr10meta_factsE, i64 8), align 8, !tbaa !20
  %i.b = load ptr, ptr @_ZN7FactMgr10meta_factsE, align 8, !tbaa !18 ; 2 uses
  %.not94 = icmp eq ptr %i.a, %i.b
  br i1 %.not94, label %._crit_edge93, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = icmp eq ptr %1, null                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.b

._crit_edge93:                                    ; preds = %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph92, %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit
  %i.m = phi ptr [ %i.b, %.lr.ph92 ], [ %i.w, %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit ]
  %.01990 = phi i64 [ 0, %.lr.ph92 ], [ %i.u, %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.01990
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !22
  call void @_ZN4Fact26abstract_fact_for_var_initEPK8Variable(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.0") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %i.o, ptr noundef %2)
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.q = load ptr, ptr %3, align 8, !tbaa !25     ; 4 uses
  %4 = ptrtoint ptr %i.q to i64
  %.not95 = icmp eq ptr %i.p, %i.q
  br i1 %.not95, label %._crit_edge88, label %.lr.ph87

._crit_edge88:                                    ; preds = %._crit_edge84, %bb.b
  %.lcssa73 = phi ptr [ %i.q, %bb.b ], [ %i.df, %._crit_edge84 ] ; 2 uses
  %.lcssa = phi i64 [ %4, %bb.b ], [ %i.dh, %._crit_edge84 ]
  %.not.i.i.i = icmp eq ptr %.lcssa73, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge88
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %.lcssa
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa73, i64 noundef %i.t) #22
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit:            ; preds = %._crit_edge88, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.u = add nuw i64 %.01990, 1                   ; 2 uses
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7FactMgr10meta_factsE, i64 8), align 8, !tbaa !20
  %i.w = load ptr, ptr @_ZN7FactMgr10meta_factsE, align 8, !tbaa !18 ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 3
  %i.ab = icmp ult i64 %i.u, %i.aa
  br i1 %i.ab, label %bb.b, label %._crit_edge93, !llvm.loop !173

.lr.ph87:                                         ; preds = %bb.b, %._crit_edge84
  %i.ac = phi ptr [ %i.df, %._crit_edge84 ], [ %i.q, %bb.b ]
  %.01885 = phi i64 [ %i.dd, %._crit_edge84 ], [ 0, %bb.b ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.01885
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !22 ; 8 uses
  %i.af = invoke noundef ptr @_Z17find_related_factRKSt6vectorIPK4FactSaIS2_EES2_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef %i.ae)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %.lr.ph87
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.e, label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !24  ; 4 uses
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.aj, ptr %i.e, align 8, !tbaa !24
  br label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !25  ; 4 uses
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am                    ; 6 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775800
  br i1 %i.ao, label %.split.us.invoke, label %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ap = ashr exact i64 %i.an, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i, %i.ap ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ap
  %i.as = call i64 @llvm.umin.i64(i64 %i.aq, i64 1152921504606846975)
  %i.at = select i1 %i.ar, i64 1152921504606846975, i64 %i.as ; 3 uses
  %.not.i.i.i23 = icmp ne i64 %i.at, 0
  call void @llvm.assume(i1 %.not.i.i.i23)
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #24
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc24:                                         ; preds = %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.an ; 2 uses
  store ptr %i.ae, ptr %i.aw, align 8, !tbaa !22
  %i.ax = icmp sgt i64 %i.an, 0
  br i1 %i.ax, label %bb.h, label %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.h:                                             ; preds = %.noexc24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.ak, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.h, %.noexc24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.an) #22
  br label %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.av, ptr %i.d, align 8, !tbaa !25
  store ptr %i.ay, ptr %i.e, align 8, !tbaa !24
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.at
  store ptr %i.az, ptr %i.f, align 8, !tbaa !26
  br label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.f, %bb.d
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !33  ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.h
  br i1 %i.bb, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit34, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit
  %i.bc = load ptr, ptr %i.j, align 8, !tbaa !33  ; 3 uses
  %i.bd = icmp eq ptr %i.bc, %i.k
  br i1 %i.bd, label %._crit_edge84, label %.lr.ph83

.lr.ph83:                                         ; preds = %._crit_edge
  br i1 %i.i, label %.lr.ph83.split.us, label %.lr.ph83.split

.lr.ph83.split.us:                                ; preds = %.lr.ph83, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit44.us
  %.sroa.047.081.us = phi ptr [ %i.ca, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit44.us ], [ %i.bc, %.lr.ph83 ] ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.047.081.us, i64 40 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.047.081.us, i64 48 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !24 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.047.081.us, i64 56 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !26
  %.not.i35.us = icmp eq ptr %i.bg, %i.bi
  br i1 %.not.i35.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph83.split.us
  store ptr %i.ae, ptr %i.bg, align 8, !tbaa !22
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !24
  br label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit44.us

bb.k:                                             ; preds = %.lr.ph83.split.us
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !25 ; 4 uses
  %i.bl = ptrtoint ptr %i.bg to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm                    ; 6 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %.split.us.invoke, label %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i36.us

_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i36.us: ; preds = %bb.k
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i.i37.us = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i37.us, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i.i38.us = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i.i38.us)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #24
          to label %.noexc43.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc43.us:                                      ; preds = %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i36.us
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %i.bn ; 2 uses
  store ptr %i.ae, ptr %i.bw, align 8, !tbaa !22
  %i.bx = icmp sgt i64 %i.bn, 0
  br i1 %i.bx, label %bb.l, label %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i39.us

bb.l:                                             ; preds = %.noexc43.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bv, ptr align 8 %i.bk, i64 %i.bn, i1 false)
  br label %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i39.us

_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i39.us: ; preds = %bb.l, %.noexc43.us
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.not.i17.i.i40.us = icmp eq ptr %i.bk, null
  br i1 %.not.i17.i.i40.us, label %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i41.us, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i39.us
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bn) #22
  br label %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i41.us

_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i41.us: ; preds = %bb.m, %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i39.us
  store ptr %i.bv, ptr %i.be, align 8, !tbaa !25
  store ptr %i.by, ptr %i.bf, align 8, !tbaa !24
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.bz, ptr %i.bh, align 8, !tbaa !26
  br label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit44.us

_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit44.us: ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i41.us, %bb.j
  %i.ca = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.047.081.us) #25 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.k
  br i1 %i.cb, label %._crit_edge84, label %.lr.ph83.split.us, !llvm.loop !174

.lr.ph:                                           ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit34
  %.sroa.052.080 = phi ptr [ %i.db, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit34 ], [ %i.ba, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit ] ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.052.080, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !39 ; 2 uses
  %.not21 = icmp eq ptr %i.cd, null
  br i1 %.not21, label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit34, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.ce = invoke noundef zeroext i1 @_ZNK9Statement8in_blockEPK5Block(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef %1)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %or.cond = or i1 %i.i, %i.ce
  br i1 %or.cond, label %bb.p, label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit34

bb.p:                                             ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.052.080, i64 40 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.052.080, i64 48 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !24 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.052.080, i64 56 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !26
  %.not.i25 = icmp eq ptr %i.ch, %i.cj
  br i1 %.not.i25, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.ae, ptr %i.ch, align 8, !tbaa !22
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.ck, ptr %i.cg, align 8, !tbaa !24
  br label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit34

bb.r:                                             ; preds = %bb.p
  %i.cl = load ptr, ptr %i.cf, align 8, !tbaa !25 ; 4 uses
  %i.cm = ptrtoint ptr %i.ch to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 6 uses
  %i.cp = icmp eq i64 %i.co, 9223372036854775800
  br i1 %i.cp, label %.split.us.invoke, label %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i26

_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i26: ; preds = %bb.r
  %i.cq = ashr exact i64 %i.co, 3                 ; 3 uses
  %.sroa.speculated.i.i.i27 = call i64 @llvm.umax.i64(i64 %i.cq, i64 1)
  %i.cr = add nsw i64 %.sroa.speculated.i.i.i27, %i.cq ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.cq
  %i.ct = call i64 @llvm.umin.i64(i64 %i.cr, i64 1152921504606846975)
  %i.cu = select i1 %i.cs, i64 1152921504606846975, i64 %i.ct ; 3 uses
  %.not.i.i.i28 = icmp ne i64 %i.cu, 0
  call void @llvm.assume(i1 %.not.i.i.i28)
  %i.cv = shl nuw nsw i64 %i.cu, 3
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #24
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc33:                                         ; preds = %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i26
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.co ; 2 uses
  store ptr %i.ae, ptr %i.cx, align 8, !tbaa !22
  %i.cy = icmp sgt i64 %i.co, 0
  br i1 %i.cy, label %bb.s, label %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i29

bb.s:                                             ; preds = %.noexc33
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cw, ptr align 8 %i.cl, i64 %i.co, i1 false)
  br label %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i29

_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i29: ; preds = %bb.s, %.noexc33
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.not.i17.i.i30 = icmp eq ptr %i.cl, null
  br i1 %.not.i17.i.i30, label %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i31, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i29
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.co) #22
  br label %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i31

_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i31: ; preds = %bb.t, %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i29
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !25
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !24
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.da, ptr %i.ci, align 8, !tbaa !26
  br label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit34

_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit34: ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i31, %bb.q, %bb.o, %.lr.ph
  %i.db = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.052.080) #25 ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.h
  br i1 %i.dc, label %._crit_edge, label %.lr.ph, !llvm.loop !175

._crit_edge84:                                    ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit44, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit44.us, %._crit_edge
  %i.dd = add nuw i64 %.01885, 1                  ; 2 uses
  %i.de = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.df = load ptr, ptr %3, align 8, !tbaa !25    ; 3 uses
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %i.df to i64               ; 2 uses
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = ashr exact i64 %i.di, 3
  %i.dk = icmp ult i64 %i.dd, %i.dj
  br i1 %i.dk, label %.lr.ph87, label %._crit_edge88, !llvm.loop !176

.lr.ph83.split:                                   ; preds = %.lr.ph83, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit44
  %.sroa.047.081 = phi ptr [ %i.do, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit44 ], [ %i.bc, %.lr.ph83 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.047.081, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !39
  invoke void @_ZN7FactMgr12add_fact_outEPK9StatementPK4Fact(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %i.dm, ptr noundef %i.ae)
          to label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i26, %.lr.ph83.split, %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i36.us, %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph87, %.split.us.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.dn = load ptr, ptr %3, align 8, !tbaa !25    ; 3 uses
  %.not.i.i.i45 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit46, label %bb.u

.split.us.invoke:                                 ; preds = %bb.g, %bb.r, %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #26
          to label %.split.us.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split.us.cont:                                   ; preds = %.split.us.invoke
  unreachable

_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit44: ; preds = %.lr.ph83.split
  %i.do = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.047.081) #25 ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.k
  br i1 %i.dp, label %._crit_edge84, label %.lr.ph83.split, !llvm.loop !174

bb.u:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dq = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.dn to i64
  %i.dt = sub i64 %i.dr, %i.ds
  call void @_ZdlPvm(ptr noundef nonnull %i.dn, i64 noundef %i.dt) #22
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit46

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit46:          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %lpad.loopexit.split-lp
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_ZN4Fact26abstract_fact_for_var_initEPK8Variable(ptr dead_on_unwind writable sret(%"class.std::vector.0") align 8, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_Z17find_related_factRKSt6vectorIPK4FactSaIS2_EES2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare noundef zeroext i1 @_ZNK9Statement8in_blockEPK5Block(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7FactMgr12add_fact_outEPK9StatementPK4Fact(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple", align 8        ; 4 uses
  %4 = alloca %"class.std::tuple.105", align 1    ; 3 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !40
  %i.b = load ptr, ptr %2, align 8, !tbaa !42
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(12) %2) ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.h = tail call noundef zeroext i1 @_ZNK8Function14is_var_visibleEPK8VariablePK9Statement(ptr noundef nonnull align 8 dereferenceable(424) %i.g, ptr noundef %i.e, ptr noundef %1)
  br i1 %i.h, label %bb.b, label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !68   ; 2 uses
  %i.k = icmp eq i32 %i.j, 5
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(200) %i.e)
  br i1 %i.o, label %._crit_edge, label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i32, ptr %i.i, align 8, !tbaa !68
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.p = phi i32 [ %.pre, %._crit_edge ], [ %i.j, %bb.b ] ; 2 uses
  %i.q = and i32 %i.p, -2
  %switch = icmp eq i32 %i.q, 6
  br i1 %switch, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.d, %bb.e
  %.pn = phi ptr [ %.0, %bb.e ], [ %1, %bb.d ]
  %.0.in = getelementptr inbounds nuw i8, ptr %.pn, i64 24
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !69  ; 4 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.r = getelementptr inbounds nuw i8, ptr %.0, i64 152
  %i.s = load i8, ptr %i.r, align 8, !tbaa !91, !range !92, !noundef !93
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.critedge, label %.preheader, !llvm.loop !177

.critedge:                                        ; preds = %.preheader, %bb.e
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.v = tail call noundef zeroext i1 @_ZNK8Function14is_var_visibleEPK8VariablePK9Statement(ptr noundef nonnull align 8 dereferenceable(424) %i.u, ptr noundef %i.e, ptr noundef %.0)
  br i1 %i.v, label %.critedge._crit_edge, label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit

.critedge._crit_edge:                             ; preds = %.critedge
  %.pre15 = load i32, ptr %i.i, align 8, !tbaa !68
  br label %bb.f

bb.f:                                             ; preds = %.critedge._crit_edge, %bb.d
  %i.w = phi i32 [ %.pre15, %.critedge._crit_edge ], [ %i.p, %bb.d ]
  %i.x = icmp eq i32 %i.w, 8
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !103
  %i.ab = tail call noundef zeroext i1 @_ZNK8Function14is_var_visibleEPK8VariablePK9Statement(ptr noundef nonnull align 8 dereferenceable(424) %i.y, ptr noundef %i.e, ptr noundef %i.aa)
  br i1 %i.ab, label %bb.h, label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !104 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ae, %bb.h ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.af, %bb.h ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !40
  %i.ai = icmp ult ptr %i.ah, %1                  ; 2 uses
  %.19.i.i.i.i = select i1 %i.ai, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.ai, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIPK9StatementSt6vectorIPK4FactSaIS6_EESt4lessIS2_ESaISt4pairIKS2_S8_EEE11lower_boundERSC_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt3mapIPK9StatementSt6vectorIPK4FactSaIS6_EESt4lessIS2_ESaISt4pairIKS2_S8_EEE11lower_boundERSC_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.aj = icmp eq ptr %.19.i.i.i.i, %i.af
  br i1 %i.aj, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt3mapIPK9StatementSt6vectorIPK4FactSaIS6_EESt4lessIS2_ESaISt4pairIKS2_S8_EEE11lower_boundERSC_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !39
  %i.am = icmp ult ptr %1, %i.al
  br i1 %i.am, label %.critedge.i, label %_ZNSt3mapIPK9StatementSt6vectorIPK4FactSaIS6_EESt4lessIS2_ESaISt4pairIKS2_S8_EEEixERSC_.exit

.critedge.i:                                      ; preds = %bb.i, %_ZNSt3mapIPK9StatementSt6vectorIPK4FactSaIS6_EESt4lessIS2_ESaISt4pairIKS2_S8_EEE11lower_boundERSC_.exit.i, %bb.h
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.i ], [ %.19.i.i.i.i, %_ZNSt3mapIPK9StatementSt6vectorIPK4FactSaIS6_EESt4lessIS2_ESaISt4pairIKS2_S8_EEE11lower_boundERSC_.exit.i ], [ %i.af, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %i.a, ptr %3, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.an = call ptr @_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_St6vectorIPK4FactSaIS8_EEESt10_Select1stISB_ESt4lessIS2_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZNSt3mapIPK9StatementSt6vectorIPK4FactSaIS6_EESt4lessIS2_ESaISt4pairIKS2_S8_EEEixERSC_.exit

_ZNSt3mapIPK9StatementSt6vectorIPK4FactSaIS6_EESt4lessIS2_ESaISt4pairIKS2_S8_EEEixERSC_.exit: ; preds = %bb.i, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.an, %.critedge.i ], [ %.19.i.i.i.i, %bb.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !24 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.aq, %i.as
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt3mapIPK9StatementSt6vectorIPK4FactSaIS6_EESt4lessIS2_ESaISt4pairIKS2_S8_EEEixERSC_.exit
  store ptr %2, ptr %i.aq, align 8, !tbaa !22
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.at, ptr %i.ap, align 8, !tbaa !24
  br label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit

bb.k:                                             ; preds = %_ZNSt3mapIPK9StatementSt6vectorIPK4FactSaIS6_EESt4lessIS2_ESaISt4pairIKS2_S8_EEEixERSC_.exit
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !25 ; 4 uses
  %i.av = ptrtoint ptr %i.aq to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 6 uses
  %i.ay = icmp eq i64 %i.ax, 9223372036854775800
  br i1 %i.ay, label %bb.l, label %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #26
  unreachable

end_hunk_0
begin_hunk_1_@_ZN7FactMgr15add_param_factsERKSt6vectorIPK10ExpressionSaIS3_EERS0_IPK4FactSaISA_EE:bb.a
  %i.m = invoke noundef zeroext i1 @_ZN7FactMgr22update_fact_for_assignEPK3LhsPK10ExpressionRSt6vectorIPK4FactSaIS9_EE(ptr noundef nonnull %3, ptr noundef %i.l, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %.lr.ph
  call void @_ZN3LhsD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.n = add nuw i64 %.010, 1                     ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !107
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !108  ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3
  %i.x = icmp ult i64 %i.n, %i.w
  br i1 %i.x, label %.lr.ph, label %._crit_edge, !llvm.loop !1

bb.c:                                             ; preds = %.lr.ph
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3LhsD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.y
}

declare void @_ZN3LhsC1ERK8Variable(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN7FactMgr22update_fact_for_assignEPK3LhsPK10ExpressionRSt6vectorIPK4FactSaIS9_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.0", align 8     ; 13 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7FactMgr10meta_factsE, i64 8), align 8, !tbaa !20
  %i.b = load ptr, ptr @_ZN7FactMgr10meta_factsE, align 8, !tbaa !18 ; 2 uses
  %.not29 = icmp eq ptr %i.a, %i.b
  br i1 %.not29, label %._crit_edge, label %.lr.ph28

.lr.ph28:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit21, %bb.a
  %.018.lcssa = phi i1 [ false, %bb.a ], [ %.1, %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit21 ]
  ret i1 %.018.lcssa

bb.b:                                             ; preds = %.lr.ph28, %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit21
  %i.e = phi ptr [ %i.b, %.lr.ph28 ], [ %i.ay, %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit21 ]
  %.01727 = phi i64 [ 0, %.lr.ph28 ], [ %i.aw, %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit21 ] ; 2 uses
  %.01826 = phi i1 [ false, %.lr.ph28 ], [ %.1, %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit21 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.01727
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(12) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.m = load ptr, ptr %3, align 8, !tbaa !25     ; 4 uses
  %.not = icmp eq ptr %i.l, %i.m
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq i32 %i.k, 1
  br i1 %i.n, label %bb.e, label %.lr.ph.preheader

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !22   ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !42
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(12) %i.o)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.u = load i8, ptr %i.t, align 8, !tbaa !189, !range !92, !noundef !93
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %3, align 8, !tbaa !25
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !22
  %i.y = invoke noundef zeroext i1 @_Z10renew_factRSt6vectorIPK4FactSaIS2_EES2_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.x)
          to label %..loopexit_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

..loopexit_crit_edge:                             ; preds = %bb.g
  %.pre34 = load ptr, ptr %3, align 8, !tbaa !25
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !24
  %.pre33 = load ptr, ptr %3, align 8, !tbaa !25  ; 3 uses
  %i.z = icmp eq ptr %.pre, %.pre33
  br i1 %i.z, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d, %bb.h
  %.ph = phi ptr [ %i.m, %bb.d ], [ %.pre33, %bb.h ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %i.aa = phi ptr [ %i.ag, %bb.i ], [ %.ph, %.lr.ph.preheader ]
  %.025 = phi i64 [ %i.ae, %bb.i ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.025
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22
  %i.ad = invoke noundef zeroext i1 @_Z10merge_factRSt6vectorIPK4FactSaIS2_EES2_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.ac)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.i:                                             ; preds = %.lr.ph
  %i.ae = add nuw i64 %.025, 1                    ; 2 uses
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.ag = load ptr, ptr %3, align 8, !tbaa !25    ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3
  %i.al = icmp ult i64 %i.ae, %i.ak
  br i1 %i.al, label %.lr.ph, label %.loopexit, !llvm.loop !178

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.b, %bb.e, %bb.g
  %lpad.loopexit.split-lp45 = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %3, align 8, !tbaa !25    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.aq) #22
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit:            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %lpad.loopexit.split-lp45

.loopexit:                                        ; preds = %bb.i, %..loopexit_crit_edge, %bb.h, %bb.c
  %i.ar = phi ptr [ %i.m, %bb.c ], [ %.pre34, %..loopexit_crit_edge ], [ %.pre33, %bb.h ], [ %i.ag, %bb.i ] ; 3 uses
  %.1 = phi i1 [ %.01826, %bb.c ], [ true, %..loopexit_crit_edge ], [ true, %bb.h ], [ true, %bb.i ] ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit21, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #22
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit21

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit21:          ; preds = %.loopexit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.aw = add nuw i64 %.01727, 1                  ; 2 uses
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7FactMgr10meta_factsE, i64 8), align 8, !tbaa !20
  %i.ay = load ptr, ptr @_ZN7FactMgr10meta_factsE, align 8, !tbaa !18 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 3
  %i.bd = icmp ult i64 %i.aw, %i.bc
  br i1 %i.bd, label %bb.b, label %._crit_edge, !llvm.loop !179
}

; Function Attrs: nounwind
declare void @_ZN3LhsD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7FactMgr16add_new_var_factEPK8VariableRSt6vectorIPK4FactSaIS6_EE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.0", align 8     ; 9 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7FactMgr10meta_factsE, i64 8), align 8, !tbaa !20
  %i.b = load ptr, ptr @_ZN7FactMgr10meta_factsE, align 8, !tbaa !18 ; 2 uses
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

._crit_edge26:                                    ; preds = %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph25, %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit
  %i.g = phi ptr [ %i.b, %.lr.ph25 ], [ %i.q, %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit ]
  %.023 = phi i64 [ 0, %.lr.ph25 ], [ %i.o, %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.023
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  call void @_ZN4Fact26abstract_fact_for_var_initEPK8Variable(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.0") align 8 %2, ptr noundef nonnull align 8 dereferenceable(12) %i.i, ptr noundef %0)
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.k = load ptr, ptr %2, align 8, !tbaa !25     ; 4 uses
  %3 = ptrtoint ptr %i.k to i64
  %.not27 = icmp eq ptr %i.j, %i.k
  br i1 %.not27, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit, %bb.b
  %.lcssa18 = phi ptr [ %i.k, %bb.b ], [ %i.bb, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.lcssa = phi i64 [ %3, %bb.b ], [ %i.bd, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit ]
  %.not.i.i.i = icmp eq ptr %.lcssa18, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %.lcssa
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa18, i64 noundef %i.n) #22
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit:            ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.o = add nuw i64 %.023, 1                     ; 2 uses
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7FactMgr10meta_factsE, i64 8), align 8, !tbaa !20
  %i.q = load ptr, ptr @_ZN7FactMgr10meta_factsE, align 8, !tbaa !18 ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3
  %i.v = icmp ult i64 %i.o, %i.u
  br i1 %i.v, label %bb.b, label %._crit_edge26, !llvm.loop !190

.lr.ph:                                           ; preds = %bb.b, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit
  %i.w = phi ptr [ %i.bb, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit ], [ %i.k, %bb.b ]
  %.01021 = phi i64 [ %i.az, %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit ], [ 0, %bb.b ] ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.01021
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !22   ; 3 uses
  %i.z = invoke noundef ptr @_Z17find_related_factRKSt6vectorIPK4FactSaIS2_EES2_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.y)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %.lr.ph
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.e, label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !24  ; 4 uses
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !26
  %.not.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ad, ptr %i.d, align 8, !tbaa !24
  br label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %1, align 8, !tbaa !25    ; 4 uses
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 6 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.h, label %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #26
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.aj = ashr exact i64 %i.ah, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = call i64 @llvm.umin.i64(i64 %i.ak, i64 1152921504606846975)
  %i.an = select i1 %i.al, i64 1152921504606846975, i64 %i.am ; 3 uses
  %.not.i.i.i11 = icmp ne i64 %i.an, 0
  call void @llvm.assume(i1 %.not.i.i.i11)
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #24
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc12:                                         ; preds = %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.ah ; 2 uses
  store ptr %i.y, ptr %i.aq, align 8, !tbaa !22
  %i.ar = icmp sgt i64 %i.ah, 0
  br i1 %i.ar, label %bb.i, label %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.i:                                             ; preds = %.noexc12
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr align 8 %i.ae, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.i, %.noexc12
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.not.i17.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ah) #22
  br label %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIPK4FactSaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.ap, ptr %1, align 8, !tbaa !25
  store ptr %i.as, ptr %i.d, align 8, !tbaa !24
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.an
  store ptr %i.at, ptr %i.e, align 8, !tbaa !26
  br label %_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIPK4FactSaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph, %bb.h
  %lpad.loopexit.split-lp43 = landingpad { ptr, i32 }
          cleanup
  %i.au = load ptr, ptr %2, align 8, !tbaa !25    ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit14, label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.av = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ay) #22
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit14

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit14:          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %lpad.loopexit.split-lp43

_ZNSt6vectorIPK4FactSaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.f, %bb.d
  %i.az = add nuw i64 %.01021, 1                  ; 2 uses
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.bb = load ptr, ptr %2, align 8, !tbaa !25    ; 3 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 3
  %i.bg = icmp ult i64 %i.az, %i.bf
  br i1 %i.bg, label %.lr.ph, label %._crit_edge, !llvm.loop !191
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7FactMgr25update_facts_for_oos_varsERKSt6vectorIP8VariableSaIS2_EERS0_IPK4FactSaIS9_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.36", align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %0, align 8, !tbaa !116
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !116
  invoke void @_ZNSt6vectorIPK8VariableSaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKPS0_S_IS8_SaIS8_EEEEEEvNS7_IPS2_S4_EET_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr null, ptr %i.a, ptr %i.c)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7FactMgr25update_facts_for_oos_varsERKSt6vectorIPK8VariableSaIS3_EERS0_IPK4FactSaISA_EE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %2, align 8, !tbaa !117    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #22
  br label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit

_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit:        ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.e:                                             ; preds = %bb.a, %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !117    ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit9, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !118
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #22
  br label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit9

_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit9:       ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7FactMgr25update_facts_for_oos_varsERKSt6vectorIPK8VariableSaIS3_EERS0_IPK4FactSaISA_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !116    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !116  ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %._crit_edge58, label %.lr.ph49

.lr.ph49:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br label %bb.b

._crit_edge50:                                    ; preds = %._crit_edge
  %.pre = load ptr, ptr %0, align 8, !tbaa !116   ; 2 uses
  %.pre61 = load ptr, ptr %i.b, align 8, !tbaa !116 ; 2 uses
  %i.f = icmp eq ptr %.pre, %.pre61
  br i1 %i.f, label %._crit_edge58, label %.lr.ph57

.lr.ph57:                                         ; preds = %._crit_edge50
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.pre62 = load ptr, ptr %i.g, align 8, !tbaa !24
  %.pre63 = load ptr, ptr %1, align 8, !tbaa !25  ; 2 uses
  br label %bb.i

bb.b:                                             ; preds = %.lr.ph49, %._crit_edge
  %.sroa.042.047 = phi ptr [ %i.a, %.lr.ph49 ], [ %i.o, %._crit_edge ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.042.047, align 8, !tbaa !110
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %.not59 = icmp eq ptr %i.i, %i.j
  br i1 %.not59, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.042.047, i64 8 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.c
  br i1 %i.p, label %._crit_edge50, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.03146 = phi i64 [ %i.an, %bb.h ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %.03245 = phi i64 [ %.133, %bb.h ], [ %i.n, %.lr.ph.preheader ] ; 2 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.03146
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !22   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !42
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(12) %i.s)
  %i.x = tail call noundef zeroext i1 @_ZNK8Variable5matchEPKS_(ptr noundef nonnull align 8 dereferenceable(200) %i.h, ptr noundef %i.w)
  br i1 %i.x, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph
  %i.y = load ptr, ptr %1, align 8, !tbaa !119
  %i.z = getelementptr inbounds [8 x i8], ptr %i.y, i64 %.03146 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !119 ; 5 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt6vectorIPK4FactSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  %i.ag = icmp sgt i64 %i.af, 8
  br i1 %i.ag, label %bb.e, label %bb.f, !prof !120

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.aa, i64 %i.af, i1 false)
  %.pre.i.i = load ptr, ptr %i.e, align 8, !tbaa !24
  br label %_ZNSt6vectorIPK4FactSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

bb.f:                                             ; preds = %bb.d
  %i.ah = icmp eq i64 %i.af, 8
  br i1 %i.ah, label %bb.g, label %_ZNSt6vectorIPK4FactSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !22
  store ptr %i.ai, ptr %i.z, align 8, !tbaa !22
  br label %_ZNSt6vectorIPK4FactSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

_ZNSt6vectorIPK4FactSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  %i.aj = phi ptr [ %i.ab, %bb.g ], [ %i.ab, %bb.f ], [ %.pre.i.i, %bb.e ], [ %i.ab, %bb.c ]
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -8
  store ptr %i.ak, ptr %i.e, align 8, !tbaa !24
  %i.al = add i64 %.03245, -1
  %i.am = add i64 %.03146, -1
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPK4FactSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit, %.lr.ph
  %.133 = phi i64 [ %i.al, %_ZNSt6vectorIPK4FactSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit ], [ %.03245, %.lr.ph ] ; 2 uses
  %.1 = phi i64 [ %i.am, %_ZNSt6vectorIPK4FactSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit ], [ %.03146, %.lr.ph ]
  %i.an = add i64 %.1, 1                          ; 2 uses
  %i.ao = icmp ult i64 %i.an, %.133
  br i1 %i.ao, label %.lr.ph, label %._crit_edge, !llvm.loop !192

._crit_edge58:                                    ; preds = %._crit_edge54, %bb.a, %._crit_edge50
  ret void

bb.i:                                             ; preds = %.lr.ph57, %._crit_edge54
  %i.ap = phi ptr [ %.pre63, %.lr.ph57 ], [ %i.at, %._crit_edge54 ] ; 2 uses
  %i.aq = phi ptr [ %.pre63, %.lr.ph57 ], [ %i.au, %._crit_edge54 ] ; 4 uses
  %i.ar = phi ptr [ %.pre62, %.lr.ph57 ], [ %i.av, %._crit_edge54 ]
  %.sroa.035.055 = phi ptr [ %.pre, %.lr.ph57 ], [ %i.aw, %._crit_edge54 ] ; 2 uses
  %i.as = load ptr, ptr %.sroa.035.055, align 8, !tbaa !110
  %.not60 = icmp eq ptr %i.ar, %i.aq
  br i1 %.not60, label %._crit_edge54, label %.lr.ph53

._crit_edge54:                                    ; preds = %bb.l, %bb.i
  %i.at = phi ptr [ %i.ap, %bb.i ], [ %i.bh, %bb.l ]
  %i.au = phi ptr [ %i.aq, %bb.i ], [ %i.bh, %bb.l ]
  %i.av = phi ptr [ %i.aq, %bb.i ], [ %i.bj, %bb.l ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.035.055, i64 8 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %.pre61
  br i1 %i.ax, label %._crit_edge58, label %bb.i

.lr.ph53:                                         ; preds = %bb.i, %bb.l
  %i.ay = phi ptr [ %i.bh, %bb.l ], [ %i.ap, %bb.i ]
  %i.az = phi ptr [ %i.bh, %bb.l ], [ %i.aq, %bb.i ]
  %.051 = phi i64 [ %i.bi, %bb.l ], [ 0, %bb.i ]  ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.051
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !22 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !123
  %i.be = icmp eq i32 %i.bd, 1
  br i1 %i.be, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.lr.ph53
  %i.bf = tail call noundef ptr @_ZNK11FactPointTo13mark_dead_varEPK8Variable(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef %i.as) ; 2 uses
  %.not = icmp eq ptr %i.bf, null
  %.pre64 = load ptr, ptr %1, align 8, !tbaa !25  ; 3 uses
  br i1 %.not, label %bb.l, label %bb.k

end_hunk_1
begin_hunk_2_@_Z20find_variable_in_setRKSt6vectorIP8VariableSaIS1_EEPKS0_
declare noundef i32 @_Z20find_variable_in_setRKSt6vectorIP8VariableSaIS1_EEPKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7FactMgr15remove_rv_factsERSt6vectorIPK4FactSaIS3_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %.not21 = icmp eq ptr %i.b, %i.c
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub i64 %i.e, %i.d
  %i.g = ashr exact i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 384
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK8Variable5is_rvEv.exit.thread, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK8Variable5is_rvEv.exit.thread
  %.020 = phi i64 [ %i.g, %.lr.ph ], [ %.1, %_ZNK8Variable5is_rvEv.exit.thread ] ; 7 uses
  %.01319 = phi i64 [ 0, %.lr.ph ], [ %i.bj, %_ZNK8Variable5is_rvEv.exit.thread ] ; 9 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.01319
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(12) %i.k) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !125  ; 4 uses
  %.not.i.i.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.not.i, label %_ZNK8Variable5is_rvEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !126  ; 3 uses
  %.not3339.i.i.i = icmp ult i64 %i.q, 3
  br i1 %.not3339.i.i.i, label %_ZNK8Variable5is_rvEv.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  %i.u = ptrtoint ptr %i.t to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.d, %.lr.ph.i.i.i
  %.041.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i ], [ %i.ai, %bb.d ]
  %.02740.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.ag, %bb.d ]
  %.reass.reass.i.reass.reass.i.i = add i64 %.041.i.i.i, -2
  %i.v = tail call ptr @memchr(ptr noundef %.02740.i.i.i, i32 noundef 95, i64 noundef %.reass.reass.i.reass.reass.i.i) #23 ; 5 uses
  %.not34.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not34.i.i.i, label %_ZNK8Variable5is_rvEv.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.w = load i16, ptr %i.v, align 1
  %i.x = xor i16 %i.w, 29279
  %i.y = getelementptr i8, ptr %i.v, i64 2
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i16
  %i.ab = xor i16 %i.aa, 118
  %i.ac = or i16 %i.x, %i.ab
  %i.ad = icmp ne i16 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZNK8Variable5is_rvEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.u, %i.ah                     ; 2 uses
  %.not33.i.i.i = icmp ult i64 %i.ai, 3
  br i1 %.not33.i.i.i, label %_ZNK8Variable5is_rvEv.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, !llvm.loop !2

_ZNK8Variable5is_rvEv.exit:                       ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.aj = ptrtoint ptr %i.v to i64
  %i.ak = ptrtoint ptr %i.s to i64
  %i.al = sub i64 %i.aj, %i.ak
  %.not = icmp eq i64 %i.al, -1
  br i1 %.not, label %_ZNK8Variable5is_rvEv.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK8Variable5is_rvEv.exit
  %i.am = load ptr, ptr %i.h, align 8, !tbaa !64
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 208
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !136
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !42
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call noundef ptr %i.ar(ptr noundef nonnull align 8 dereferenceable(12) %i.k)
  %i.at = tail call noundef zeroext i1 @_ZNK8Variable5matchEPKS_(ptr noundef nonnull align 8 dereferenceable(200) %i.ao, ptr noundef %i.as)
  br i1 %i.at, label %_ZNK8Variable5is_rvEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = load ptr, ptr %1, align 8, !tbaa !119
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %.01319 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !119 ; 5 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt6vectorIPK4FactSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.h, label %bb.i, !prof !120

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.av, ptr nonnull align 8 %i.aw, i64 %i.bb, i1 false)
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !24
  br label %_ZNSt6vectorIPK4FactSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

bb.i:                                             ; preds = %bb.g
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.j, label %_ZNSt6vectorIPK4FactSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

bb.j:                                             ; preds = %bb.i
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !22
  store ptr %i.be, ptr %i.av, align 8, !tbaa !22
  br label %_ZNSt6vectorIPK4FactSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit

_ZNSt6vectorIPK4FactSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit: ; preds = %bb.f, %bb.h, %bb.i, %bb.j
  %i.bf = phi ptr [ %i.ax, %bb.j ], [ %i.ax, %bb.i ], [ %.pre.i.i, %bb.h ], [ %i.ax, %bb.f ]
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8
  store ptr %i.bg, ptr %i.a, align 8, !tbaa !24
  %i.bh = add i64 %.020, -1
  %i.bi = add i64 %.01319, -1
  br label %_ZNK8Variable5is_rvEv.exit.thread

_ZNK8Variable5is_rvEv.exit.thread:                ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %bb.d, %bb.b, %bb.c, %_ZNSt6vectorIPK4FactSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit, %bb.e, %_ZNK8Variable5is_rvEv.exit
  %.114 = phi i64 [ %.01319, %bb.e ], [ %i.bi, %_ZNSt6vectorIPK4FactSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit ], [ %.01319, %_ZNK8Variable5is_rvEv.exit ], [ %.01319, %bb.c ], [ %.01319, %bb.b ], [ %.01319, %bb.d ], [ %.01319, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i ]
  %.1 = phi i64 [ %.020, %bb.e ], [ %i.bh, %_ZNSt6vectorIPK4FactSaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit ], [ %.020, %_ZNK8Variable5is_rvEv.exit ], [ %.020, %bb.c ], [ %.020, %bb.b ], [ %.020, %bb.d ], [ %.020, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i ] ; 2 uses
  %i.bj = add i64 %.114, 1                        ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %.1
  br i1 %i.bk, label %bb.b, label %._crit_edge, !llvm.loop !208
}

declare noundef zeroext i1 @_Z10renew_factRSt6vectorIPK4FactSaIS2_EES2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_Z10merge_factRSt6vectorIPK4FactSaIS2_EES2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN7FactMgr22update_fact_for_assignEPK15StatementAssignRSt6vectorIPK4FactSaIS6_EE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213, !nonnull !93, !align !146
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !214
  %i.e = tail call noundef zeroext i1 @_ZN7FactMgr22update_fact_for_assignEPK3LhsPK10ExpressionRSt6vectorIPK4FactSaIS9_EE(ptr noundef nonnull %i.b, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !124
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  store i8 1, ptr %i.h, align 8, !tbaa !147
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7FactMgr22update_fact_for_returnEPK15StatementReturnRSt6vectorIPK4FactSaIS6_EE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.0", align 8     ; 9 uses
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7FactMgr10meta_factsE, i64 8), align 8, !tbaa !20
  %i.b = load ptr, ptr @_ZN7FactMgr10meta_factsE, align 8, !tbaa !18 ; 2 uses
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %._crit_edge27, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

._crit_edge27:                                    ; preds = %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124
  %i.i = call noundef ptr @_Z21get_fact_mgr_for_funcPK8Function(ptr noundef %i.h)
  call void @_ZN7FactMgr12set_fact_outEPK9StatementRKSt6vectorIPK4FactSaIS6_EE(ptr noundef nonnull align 8 dereferenceable(392) %i.i, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret void

bb.b:                                             ; preds = %.lr.ph26, %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit
  %i.j = phi ptr [ %i.b, %.lr.ph26 ], [ %i.y, %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit ]
  %.024 = phi i64 [ 0, %.lr.ph26 ], [ %i.w, %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.024
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22   ; 2 uses
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !219, !nonnull !93, !align !146
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !124
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !42
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.0") align 8 %2, ptr noundef nonnull align 8 dereferenceable(12) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.m, ptr noundef %i.n)
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.s = load ptr, ptr %2, align 8, !tbaa !25     ; 4 uses
  %3 = ptrtoint ptr %i.s to i64
  %.not28 = icmp eq ptr %i.r, %i.s
  br i1 %.not28, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.h, %bb.b
  %.lcssa20 = phi ptr [ %i.s, %bb.b ], [ %i.as, %bb.h ] ; 2 uses
  %.lcssa = phi i64 [ %3, %bb.b ], [ %i.au, %bb.h ]
  %.not.i.i.i = icmp eq ptr %.lcssa20, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %.lcssa
  call void @_ZdlPvm(ptr noundef nonnull %.lcssa20, i64 noundef %i.v) #22
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit:            ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.w = add nuw i64 %.024, 1                     ; 2 uses
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN7FactMgr10meta_factsE, i64 8), align 8, !tbaa !20
  %i.y = load ptr, ptr @_ZN7FactMgr10meta_factsE, align 8, !tbaa !18 ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3
  %i.ad = icmp ult i64 %i.w, %i.ac
  br i1 %i.ad, label %bb.b, label %._crit_edge27, !llvm.loop !215

.lr.ph:                                           ; preds = %bb.b, %bb.h
  %i.ae = phi ptr [ %i.as, %bb.h ], [ %i.s, %bb.b ]
  %.01622 = phi i64 [ %i.aq, %bb.h ], [ 0, %bb.b ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.01622
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !22
  %i.ah = invoke noundef zeroext i1 @_Z10merge_factRSt6vectorIPK4FactSaIS2_EES2_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.ag)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %.lr.ph
  br i1 %i.ah, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !124
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 264
  store i8 1, ptr %i.aj, align 8, !tbaa !147
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %2, align 8, !tbaa !25    ; 3 uses
  %.not.i.i.i17 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i17, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit18, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ap) #22
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit18

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit18:          ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.ak

bb.h:                                             ; preds = %bb.d, %bb.e
  %i.aq = add nuw i64 %.01622, 1                  ; 2 uses
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.as = load ptr, ptr %2, align 8, !tbaa !25    ; 3 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 3
  %i.ax = icmp ult i64 %i.aq, %i.aw
  br i1 %i.ax, label %.lr.ph, label %._crit_edge, !llvm.loop !216
}

declare noundef ptr @_Z21get_fact_mgr_for_funcPK8Function(ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK8Function10is_var_oosEPK8VariablePK9Statement(ptr noundef nonnull align 8 dereferenceable(424), ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef i32 @_Z20find_variable_in_setRKSt6vectorIPK8VariableSaIS2_EES2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN7FactMgrC2EPK8Function(ptr noundef nonnull align 8 dereferenceable(392) initializes((8, 12), (16, 24)) %0, ptr noundef %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !220
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !104
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.c, align 8, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !221
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !148
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !220
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.g, align 8, !tbaa !104
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.f, ptr %i.h, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.f, ptr %i.i, align 8, !tbaa !221
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.j, align 8, !tbaa !148
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !220
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %i.l, align 8, !tbaa !104
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.k, ptr %i.m, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.k, ptr %i.n, align 8, !tbaa !221
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 0, ptr %i.o, align 8, !tbaa !148
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  store i32 0, ptr %i.p, align 8, !tbaa !220
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.q, align 8, !tbaa !104
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.p, ptr %i.r, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.p, ptr %i.s, align 8, !tbaa !221
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %i.t, align 8, !tbaa !148
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  store i32 0, ptr %i.u, align 8, !tbaa !220
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr null, ptr %i.v, align 8, !tbaa !104
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.u, ptr %i.w, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.u, ptr %i.x, align 8, !tbaa !221
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 0, ptr %i.y, align 8, !tbaa !148
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  store i32 0, ptr %i.z, align 8, !tbaa !220
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr null, ptr %i.aa, align 8, !tbaa !104
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !221
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 0, ptr %i.ad, align 8, !tbaa !148
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  store i32 0, ptr %i.ae, align 8, !tbaa !220
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr null, ptr %i.af, align 8, !tbaa !104
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !221
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ai, i8 0, i64 56, i1 false)
  store ptr %1, ptr %i.aj, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN7FactMgrD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !149  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !150  ; 3 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %_ZNSt6vectorIPK7CFGEdgeSaIS2_EE5clearEv.exit, label %.lr.ph

._crit_edge:                                      ; preds = %bb.l
  %i.e = icmp eq ptr %i.bj, %i.bi
  br i1 %i.e, label %_ZNSt6vectorIPK7CFGEdgeSaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPPK7CFGEdgeS2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPK7CFGEdgeS2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %._crit_edge
  store ptr %i.bi, ptr %i.b, align 8, !tbaa !149
  br label %_ZNSt6vectorIPK7CFGEdgeSaIS2_EE5clearEv.exit

_ZNSt6vectorIPK7CFGEdgeSaIS2_EE5clearEv.exit:     ; preds = %bb.a, %._crit_edge, %_ZSt8_DestroyIPPK7CFGEdgeS2_EvT_S4_RSaIT0_E.exit.i.i
  %.lcssa25 = phi ptr [ %i.bi, %_ZSt8_DestroyIPPK7CFGEdgeS2_EvT_S4_RSaIT0_E.exit.i.i ], [ %i.bi, %._crit_edge ], [ %i.d, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIPK7CFGEdgeSaIS2_EE5clearEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #22
  %.pre16 = load ptr, ptr %i.a, align 8, !tbaa !150
  br label %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit

_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit:            ; preds = %_ZNSt6vectorIPK7CFGEdgeSaIS2_EE5clearEv.exit, %bb.b
  %i.m = phi ptr [ %.lcssa25, %_ZNSt6vectorIPK7CFGEdgeSaIS2_EE5clearEv.exit ], [ %.pre16, %bb.b ] ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIPK7CFGEdgeSaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !151
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #22
  br label %_ZNSt6vectorIPK7CFGEdgeSaIS2_EED2Ev.exit

_ZNSt6vectorIPK7CFGEdgeSaIS2_EED2Ev.exit:         ; preds = %_ZNSt6vectorIPK4FactSaIS2_EED2Ev.exit, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !104
  invoke void @_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_bESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef %i.u)
          to label %_ZNSt3mapIPK9StatementbSt4lessIS2_ESaISt4pairIKS2_bEEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPK7CFGEdgeSaIS2_EED2Ev.exit
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #27
  unreachable

_ZNSt3mapIPK9StatementbSt4lessIS2_ESaISt4pairIKS2_bEEED2Ev.exit: ; preds = %_ZNSt6vectorIPK7CFGEdgeSaIS2_EED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !104
  invoke void @_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_6EffectESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef %i.z)
          to label %_ZNSt3mapIPK9Statement6EffectSt4lessIS2_ESaISt4pairIKS2_S3_EEED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt3mapIPK9StatementbSt4lessIS2_ESaISt4pairIKS2_bEEED2Ev.exit
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #27
  unreachable

_ZNSt3mapIPK9Statement6EffectSt4lessIS2_ESaISt4pairIKS2_S3_EEED2Ev.exit: ; preds = %_ZNSt3mapIPK9StatementbSt4lessIS2_ESaISt4pairIKS2_bEEED2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !104
  invoke void @_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_6EffectESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noundef %i.ae)
          to label %_ZNSt3mapIPK9Statement6EffectSt4lessIS2_ESaISt4pairIKS2_S3_EEED2Ev.exit5 unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt3mapIPK9Statement6EffectSt4lessIS2_ESaISt4pairIKS2_S3_EEED2Ev.exit
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #27
  unreachable

_ZNSt3mapIPK9Statement6EffectSt4lessIS2_ESaISt4pairIKS2_S3_EEED2Ev.exit5: ; preds = %_ZNSt3mapIPK9Statement6EffectSt4lessIS2_ESaISt4pairIKS2_S3_EEED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !104
  invoke void @_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_St6vectorIP4FactSaIS7_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef %i.aj)
          to label %_ZNSt3mapIPK9StatementSt6vectorIP4FactSaIS5_EESt4lessIS2_ESaISt4pairIKS2_S7_EEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZNSt3mapIPK9Statement6EffectSt4lessIS2_ESaISt4pairIKS2_S3_EEED2Ev.exit5
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  tail call void @__clang_call_terminate(ptr %i.al) #27
  unreachable

_ZNSt3mapIPK9StatementSt6vectorIP4FactSaIS5_EESt4lessIS2_ESaISt4pairIKS2_S7_EEED2Ev.exit: ; preds = %_ZNSt3mapIPK9Statement6EffectSt4lessIS2_ESaISt4pairIKS2_S3_EEED2Ev.exit5
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !104
  invoke void @_ZNSt8_Rb_treeIPK9StatementSt4pairIKS2_St6vectorIP4FactSaIS7_EEESt10_Select1stISA_ESt4lessIS2_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef %i.ao)
end_hunk_2
