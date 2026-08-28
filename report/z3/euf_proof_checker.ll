Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/euf_proof_checker?download=true
inline.NumInlined: 1780
inline.NumDeleted: 709
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%class.rational = type { %class.mpq }
%class.mpq = type { %class.mpz, %class.mpz }
%class.mpz = type { i32, i8, ptr }
%class.symbol = type { ptr }
%struct._key_data.154 = type { %class.symbol, ptr }
%class.ref_vector = type { %class.ref_vector_core }
%class.ref_vector_core = type { %class.ref_manager_wrapper, %class.ptr_vector.36 }
%class.ref_manager_wrapper = type { ptr }
%class.ptr_vector.36 = type { %class.vector.37 }
%class.vector.37 = type { ptr }
%struct.mk_pp = type { %struct.mk_ismt2_pp }
%struct.mk_ismt2_pp = type { ptr, ptr, %class.params_ref, ptr, i32, i32, ptr }
%class.params_ref = type { ptr }
%class.obj_mark = type { [8 x i8], %class.bit_vector }
%class.bit_vector = type { i32, i32, ptr }
%struct.solver_params = type { ptr, %class.params_ref }
%struct._key_data = type <{ %class.symbol, i32, [4 x i8] }>
%"class.sat::status" = type { i32, i32, ptr }
%class.ref.97 = type { ptr }
%class.ref.119 = type { ptr }
%class.obj_ref.120 = type { ptr, ptr }
%"struct.std::pair" = type { %class.rational, ptr }
%"struct.obj_map<expr, rational>::key_data" = type { ptr, %class.rational }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"struct.arith::theory_checker::row" = type { %class.obj_map.28, %class.rational }
%class.obj_map.28 = type { %class.core_hashtable.29 }
%class.core_hashtable.29 = type <{ ptr, i32, i32, i32, [4 x i8] }>
%"struct.std::pair.132" = type { i32, i32 }

$_ZN5arith14theory_checkerC2ER11ast_manager = comdat any

$_ZN9table2mapI17default_map_entryI6symbolPN3euf21theory_checker_pluginEE16symbol_hash_proc14symbol_eq_procED2Ev = comdat any

$_ZN17scoped_ptr_vectorIN3euf21theory_checker_pluginEED2Ev = comdat any

$_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev = comdat any

$_ZN8obj_markI4expr10bit_vector14default_t2uintIS0_EED2Ev = comdat any

$_ZN9table2mapI17default_map_entryI6symboljE16symbol_hash_proc14symbol_eq_procED2Ev = comdat any

$_ZN6vectorIN3sat7literalELb0EjED2Ev = comdat any

$_ZN10scoped_ptrI6solverED2Ev = comdat any

$_ZN3euf14theory_checkerD2Ev = comdat any

$_ZN3euf17smt_proof_checker9mk_clauseERK10ref_vectorI4expr11ast_managerE = comdat any

$_ZN3refI5modelED2Ev = comdat any

$_ZN7obj_refI4expr11ast_managerED2Ev = comdat any

$_ZN3refI6solverED2Ev = comdat any

$_ZN3euf21theory_checker_pluginD2Ev = comdat any

$_ZN3euf25smt_theory_checker_pluginD0Ev = comdat any

$_ZN3euf25smt_theory_checker_plugin5checkEP3app = comdat any

$_ZN3euf21theory_checker_plugin2vcEP3appRK10ref_vectorI4expr11ast_managerERS6_ = comdat any

$_ZN6vectorIN5arith14theory_checker3rowELb1EjED2Ev = comdat any

$_ZN5arith14theory_checker3rowD2Ev = comdat any

$_ZN6vectorISt4pairI8rationalP4exprELb1EjED2Ev = comdat any

$_ZN5arith14theory_checkerD2Ev = comdat any

$_ZN5arith14theory_checkerD0Ev = comdat any

$_ZN5arith14theory_checker5checkEP3app = comdat any

$_ZN5arith14theory_checker6clauseEP3app = comdat any

$_ZN5arith14theory_checker16register_pluginsERN3euf14theory_checkerE = comdat any

$__clang_call_terminate = comdat any

$_ZN7obj_mapI4expr8rationalE8key_dataD2Ev = comdat any

$_ZN8rationalD2Ev = comdat any

$_ZNSt4pairI8rationalP4exprED2Ev = comdat any

$_ZN5arith14theory_checker5resetEv = comdat any

$_ZN5arith14theory_checker10add_conseqERK8rationalP4exprb = comdat any

$_ZN5arith14theory_checker8add_ineqENS0_11rule_type_tERK8rationalP4exprb = comdat any

$_ZN5arith14theory_checker17add_implied_diseqEbP3app = comdat any

$_ZN5arith14theory_checker6add_eqEP4exprS2_ = comdat any

$_ZN14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE5resetEv = comdat any

$_ZN5arith14theory_checker11add_literalERNS0_3rowERK8rationalP4exprb = comdat any

$_ZN5arith14theory_checker9linearizeERNS0_3rowERK8rationalP4expr = comdat any

$_ZN6vectorISt4pairI8rationalP4exprELb1EjE9push_backEOS4_ = comdat any

$_ZmlRK8rationalS1_ = comdat any

$_ZN5arith14theory_checker3addERNS0_3rowEP4exprRK8rational = comdat any

$_ZN6vectorISt4pairI8rationalP4exprELb1EjE13expand_vectorEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN17default_exceptionD2Ev = comdat any

$_ZSt16__do_uninit_copyISt13move_iteratorIPSt4pairI8rationalP4exprEES6_ET0_T_S9_S8_ = comdat any

$_ZN7obj_mapI4expr8rationalE6insertEPS0_RKS1_ = comdat any

$_ZNK7obj_mapI4expr8rationalE9find_coreEPS0_ = comdat any

$_ZN14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE6removeERKS6_ = comdat any

$_ZN14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE22remove_deleted_entriesEv = comdat any

$_ZN14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE10move_tableEPS4_jSB_j = comdat any

$_ZN14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE6insertEOS6_ = comdat any

$_ZN14core_hashtableIN7obj_mapI4expr8rationalE13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE12expand_tableEv = comdat any

$_ZN11mpq_managerILb1EE3addERK3mpqS3_RS1_ = comdat any

$_ZN5arith14theory_checker5freshER6vectorINS0_3rowELb1EjE = comdat any

$_ZN6vectorIN5arith14theory_checker3rowELb1EjE9push_backEOS2_ = comdat any

$_ZN6vectorIN5arith14theory_checker3rowELb1EjE13expand_vectorEv = comdat any

$_ZSt16__do_uninit_copyISt13move_iteratorIPN5arith14theory_checker3rowEES4_ET0_T_S7_S6_ = comdat any

$_ZN5arith14theory_checker12check_farkasEv = comdat any

$_ZN5arith14theory_checker11check_boundEv = comdat any

$_ZN5arith14theory_checker16check_implied_eqEv = comdat any

$_ZN5arith14theory_checker9reduce_eqEv = comdat any

$_ZN5arith14theory_checker11display_rowERSoRKNS0_3rowE = comdat any

$_ZgtRK8rationali = comdat any

$_ZeqRK8rationali = comdat any

$_ZneRK8rationali = comdat any

$_ZN5arith14theory_checker7resolveEP4exprRNS0_3rowERK8rationalRKS3_ = comdat any

$_ZdvRK8rationalS1_ = comdat any

$_ZltRK8rationali = comdat any

$_ZN5arith14theory_checker3mulERNS0_3rowERK8rational = comdat any

$_ZN5arith14theory_checker3addERNS0_3rowERKS1_RK8rational = comdat any

$_ZN11mpq_managerILb1EE3divERK3mpqS3_RS1_ = comdat any

$_ZN5arith14theory_checker3cutERNS0_3rowE = comdat any

$_ZmiRK8rationalS1_ = comdat any

$_ZN6vectorISt4pairIjjELb0EjE13expand_vectorEv = comdat any

$_ZN6vectorIjLb0EjE13expand_vectorEv = comdat any

$_ZN3euf17eq_theory_checkerD2Ev = comdat any

$_ZN3euf17eq_theory_checkerD0Ev = comdat any

$_ZN3euf17eq_theory_checker5checkEP3app = comdat any

$_ZN3euf17eq_theory_checker6clauseEP3app = comdat any

$_ZN3euf17eq_theory_checker16register_pluginsERNS_14theory_checkerE = comdat any

$_ZN3euf17eq_theory_checker5mergeEP4exprS2_ = comdat any

$_ZN3euf17eq_theory_checker10congruenceEbP3appS2_ = comdat any

$_ZN6vectorISt4pairIP4exprS2_ELb0EjE13expand_vectorEv = comdat any

$_ZN3euf17eq_theory_checker7expr2idEP4expr = comdat any

$_ZN3euf17eq_theory_checker13merge_numeralEP4expr = comdat any

$_ZN16basic_union_find6mk_varEv = comdat any

$_ZN6vectorIP4exprLb0EjE13expand_vectorEv = comdat any

$_ZN3euf11res_checkerD0Ev = comdat any

$_ZN3euf11res_checker5checkEP3app = comdat any

$_ZN3euf11res_checker6clauseEP3app = comdat any

$_ZN3euf11res_checker16register_pluginsERNS_14theory_checkerE = comdat any

$_ZN8distinct14theory_checkerD0Ev = comdat any

$_ZN8distinct14theory_checker5checkEP3app = comdat any

$_ZN8distinct14theory_checker6clauseEP3app = comdat any

$_ZN8distinct14theory_checker16register_pluginsERN3euf14theory_checkerE = comdat any

$_ZN2bv14theory_checkerD0Ev = comdat any

$_ZN2bv14theory_checker5checkEP3app = comdat any

$_ZN2bv14theory_checker6clauseEP3app = comdat any

$_ZN2bv14theory_checker16register_pluginsERN3euf14theory_checkerE = comdat any

$_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv = comdat any

$_ZN6vectorIPN3euf21theory_checker_pluginELb0EjE13expand_vectorEv = comdat any
end_hunk_0
begin_hunk_1_@_ZNK11ast_manager12are_distinctEP4exprS1_
declare noundef zeroext i1 @_ZNK11ast_manager12are_distinctEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK11ast_manager8is_valueEP4expr(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorISt4pairIP4exprS2_ELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !526    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 40) ; 3 uses
  store i32 2, ptr %i.c, align 4, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.e, ptr %0, align 8, !tbaa !526
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !21   ; 3 uses
  %i.h = mul i32 %i.g, 3
  %i.i = add i32 %i.h, 1
  %i.j = lshr i32 %i.i, 1                         ; 3 uses
  %i.k = shl i32 %i.j, 4                          ; 2 uses
  %.not = icmp ugt i32 %i.j, %i.g
  %i.l = shl i32 %i.g, 4
  %.not31 = icmp ugt i32 %i.k, %i.l
  %or.cond = and i1 %.not, %.not31
  br i1 %or.cond, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @__cxa_allocate_exception(i64 40) #18 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.m, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !458
  %i.p = load ptr, ptr %1, align 8, !tbaa !459    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !460  ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  store ptr %i.p, ptr %i.n, align 8, !tbaa !459
  %i.w = load i64, ptr %i.q, align 8, !tbaa !461
  store i64 %i.w, ptr %i.o, align 8, !tbaa !461
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !460
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.x = phi i64 [ %i.t, %bb.f ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.x, ptr %i.z, align 8, !tbaa !460
  store ptr %i.q, ptr %1, align 8, !tbaa !459
  store i64 0, ptr %i.y, align 8, !tbaa !460
  store i8 0, ptr %i.q, align 8, !tbaa !461
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #21
          to label %bb.l unwind label %bb.g

bb.g:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %1, align 8, !tbaa !459   ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.q
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.g
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !461
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @__cxa_free_exception(ptr %i.m) #18
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.h
  %.pn36 = phi { ptr, i32 } [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.af, %bb.h ]
  resume { ptr, i32 } %.pn36

bb.j:                                             ; preds = %bb.c
  %i.ag = or disjoint i32 %i.k, 8
  %i.ah = zext i32 %i.ag to i64
  %i.ai = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ah) ; 5 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !526   ; 6 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %_ZSt20uninitialized_move_nIPSt4pairIP4exprS2_EjS4_ES0_IT_T1_ES5_T0_S6_.exit, label %_ZNK6vectorISt4pairIP4exprS2_ELb0EjE4sizeEv.exit

_ZNK6vectorISt4pairIP4exprS2_ELb0EjE4sizeEv.exit: ; preds = %bb.j
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !21 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %i.am, ptr %i.an, align 4, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.ap = zext i32 %i.am to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.ap, 4          ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.i.i.i
  %i.ar = icmp eq i32 %i.am, 0
  br i1 %i.ar, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNK6vectorISt4pairIP4exprS2_ELb0EjE4sizeEv.exit
  %i.as = add nsw i64 %.idx.i.i.i, -16            ; 2 uses
  %i.at = lshr exact i64 %i.as, 4
  %i.au = add nuw nsw i64 %i.at, 1
  %xtraiter = and i64 %i.au, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.prol = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i.i.prol, i64 16, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !542

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.08.i.i.i.i.i.i.unr = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.04.07.i.i.i.i.i.i.unr = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.av, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ax = icmp ult i64 %i.as, 48
  br i1 %i.ax, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i.i, i64 16, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 64
  %i.bg = icmp eq ptr %i.be, %i.aq
  br i1 %i.bg, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !544

_ZSt20uninitialized_move_nIPSt4pairIP4exprS2_EjS4_ES0_IT_T1_ES5_T0_S6_.exit: ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 0, ptr %i.bh, align 4, !tbaa !21
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  br label %_ZN6vectorISt4pairIP4exprS2_ELb0EjE7destroyEv.exit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNK6vectorISt4pairIP4exprS2_ELb0EjE4sizeEv.exit
  %i.bj = getelementptr inbounds i8, ptr %i.aj, i64 -8
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bj)
  br label %_ZN6vectorISt4pairIP4exprS2_ELb0EjE7destroyEv.exit

_ZN6vectorISt4pairIP4exprS2_ELb0EjE7destroyEv.exit: ; preds = %_ZSt20uninitialized_move_nIPSt4pairIP4exprS2_EjS4_ES0_IT_T1_ES5_T0_S6_.exit, %.loopexit
  %i.bk = phi ptr [ %i.bi, %_ZSt20uninitialized_move_nIPSt4pairIP4exprS2_EjS4_ES0_IT_T1_ES5_T0_S6_.exit ], [ %i.ao, %.loopexit ]
  store ptr %i.bk, ptr %0, align 8, !tbaa !526
  store i32 %i.j, ptr %i.ai, align 4, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %_ZN6vectorISt4pairIP4exprS2_ELb0EjE7destroyEv.exit, %bb.b
  ret void

bb.l:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN3euf17eq_theory_checker7expr2idEP4expr(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.132", align 4    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !112    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i32 0, ptr %2, align 4, !tbaa !545
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %.4..4..4..sroa_idx, align 4, !tbaa !547
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !420  ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNK6vectorISt4pairIjjELb0EjE3getEjRKS1_.exit, label %_ZNK6vectorISt4pairIjjELb0EjE4sizeEv.exit.i

_ZNK6vectorISt4pairIjjELb0EjE4sizeEv.exit.i:      ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !21
  %.not.i = icmp ult i32 %i.b, %i.f
  br i1 %.not.i, label %bb.b, label %_ZNK6vectorISt4pairIjjELb0EjE3getEjRKS1_.exit

bb.b:                                             ; preds = %_ZNK6vectorISt4pairIjjELb0EjE4sizeEv.exit.i
  %i.g = zext i32 %i.b to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.g
  br label %_ZNK6vectorISt4pairIjjELb0EjE3getEjRKS1_.exit

_ZNK6vectorISt4pairIjjELb0EjE3getEjRKS1_.exit:    ; preds = %bb.a, %_ZNK6vectorISt4pairIjjELb0EjE4sizeEv.exit.i, %bb.b
  %.0.i = phi ptr [ %i.h, %bb.b ], [ %2, %_ZNK6vectorISt4pairIjjELb0EjE4sizeEv.exit.i ], [ %2, %bb.a ]
  %i.i = load i64, ptr %.0.i, align 4             ; 2 uses
  %.sroa.026.0.extract.trunc = trunc i64 %i.i to i32
  %.sroa.427.0.extract.shift = lshr i64 %i.i, 32
  %.sroa.427.0.extract.trunc = trunc nuw i64 %.sroa.427.0.extract.shift to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !533
  %.not = icmp eq i32 %i.k, %.sroa.026.0.extract.trunc
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %_ZNK6vectorISt4pairIjjELb0EjE3getEjRKS1_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = tail call noundef i32 @_ZN16basic_union_find6mk_varEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l) ; 6 uses
  %i.n = load i32, ptr %1, align 4, !tbaa !112    ; 4 uses
  %i.o = load i32, ptr %i.j, align 8, !tbaa !21
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !420  ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZNK6vectorISt4pairIjjELb0EjE4sizeEv.exit.i.i, label %_ZNK6vectorISt4pairIjjELb0EjE4sizeEv.exit.i6

_ZNK6vectorISt4pairIjjELb0EjE4sizeEv.exit.i6:     ; preds = %bb.c
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !21   ; 3 uses
  %.not.i7 = icmp ult i32 %i.n, %i.s
  br i1 %.not.i7, label %_ZN6vectorISt4pairIjjELb0EjE4setxEjRKS1_S4_.exit, label %_ZNK6vectorISt4pairIjjELb0EjE4sizeEv.exit.thread.i.i

_ZNK6vectorISt4pairIjjELb0EjE4sizeEv.exit.i.i:    ; preds = %bb.c
  %i.t = add i32 %i.n, 1                          ; 2 uses
  %.not.not.i.i = icmp ne i32 %i.t, 0
  tail call void @llvm.assume(i1 %.not.not.i.i)
  br label %thread-pre-split.i.i.preheader

_ZNK6vectorISt4pairIjjELb0EjE4sizeEv.exit.thread.i.i: ; preds = %_ZNK6vectorISt4pairIjjELb0EjE4sizeEv.exit.i6
  %i.u = add i32 %i.n, 1                          ; 3 uses
  %.not16.i.i = icmp ugt i32 %i.u, %i.s
  br i1 %.not16.i.i, label %thread-pre-split.i.i.preheader, label %bb.d

thread-pre-split.i.i.preheader:                   ; preds = %_ZNK6vectorISt4pairIjjELb0EjE4sizeEv.exit.i.i, %_ZNK6vectorISt4pairIjjELb0EjE4sizeEv.exit.thread.i.i
  %.ph46 = phi ptr [ %i.p, %_ZNK6vectorISt4pairIjjELb0EjE4sizeEv.exit.thread.i.i ], [ null, %_ZNK6vectorISt4pairIjjELb0EjE4sizeEv.exit.i.i ]
  %.ph47 = phi i32 [ %i.u, %_ZNK6vectorISt4pairIjjELb0EjE4sizeEv.exit.thread.i.i ], [ %i.t, %_ZNK6vectorISt4pairIjjELb0EjE4sizeEv.exit.i.i ] ; 4 uses
  %.0.i17.i.i.ph = phi i32 [ %i.s, %_ZNK6vectorISt4pairIjjELb0EjE4sizeEv.exit.thread.i.i ], [ 0, %_ZNK6vectorISt4pairIjjELb0EjE4sizeEv.exit.i.i ] ; 2 uses
  br label %thread-pre-split.i.i

bb.d:                                             ; preds = %_ZNK6vectorISt4pairIjjELb0EjE4sizeEv.exit.thread.i.i
  store i32 %i.u, ptr %i.r, align 4, !tbaa !21
  br label %_ZN6vectorISt4pairIjjELb0EjE4setxEjRKS1_S4_.exit

thread-pre-split.i.i:                             ; preds = %thread-pre-split.i.i.preheader, %_ZNK6vectorISt4pairIjjELb0EjE8capacityEv.exit.thread.i.i
  %i.v = phi ptr [ %.pr.pre.i.i, %_ZNK6vectorISt4pairIjjELb0EjE8capacityEv.exit.thread.i.i ], [ %.ph46, %thread-pre-split.i.i.preheader ] ; 5 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZNK6vectorISt4pairIjjELb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorISt4pairIjjELb0EjE8capacityEv.exit.i.i

_ZNK6vectorISt4pairIjjELb0EjE8capacityEv.exit.i.i: ; preds = %thread-pre-split.i.i
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !21
  %i.z = icmp ugt i32 %.ph47, %i.y
  br i1 %i.z, label %_ZNK6vectorISt4pairIjjELb0EjE8capacityEv.exit.thread.i.i, label %bb.e

_ZNK6vectorISt4pairIjjELb0EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorISt4pairIjjELb0EjE8capacityEv.exit.i.i, %thread-pre-split.i.i
  tail call void @_ZN6vectorISt4pairIjjELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pr.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !420
  br label %thread-pre-split.i.i, !llvm.loop !548

bb.e:                                             ; preds = %_ZNK6vectorISt4pairIjjELb0EjE8capacityEv.exit.i.i
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 -4
  store i32 %.ph47, ptr %i.aa, align 4, !tbaa !21
  %.not1319.i.i = icmp eq i32 %.0.i17.i.i.ph, %.ph47
  br i1 %.not1319.i.i, label %_ZN6vectorISt4pairIjjELb0EjE4setxEjRKS1_S4_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %i.ab = zext i32 %.ph47 to i64
  %i.ac = zext i32 %.0.i17.i.i.ph to i64          ; 2 uses
  %i.ad = getelementptr [8 x i8], ptr %i.v, i64 %i.ac
  %i.ae = sub nsw i64 %i.ab, %i.ac
  %i.af = shl nsw i64 %i.ae, 3
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ad, i8 0, i64 %i.af, i1 false)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !420
  br label %_ZN6vectorISt4pairIjjELb0EjE4setxEjRKS1_S4_.exit

_ZN6vectorISt4pairIjjELb0EjE4setxEjRKS1_S4_.exit: ; preds = %_ZNK6vectorISt4pairIjjELb0EjE4sizeEv.exit.i6, %bb.d, %bb.e, %.lr.ph.preheader.i.i
  %i.ag = phi ptr [ %.pre.i, %.lr.ph.preheader.i.i ], [ %i.v, %bb.e ], [ %i.p, %bb.d ], [ %i.p, %_ZNK6vectorISt4pairIjjELb0EjE4sizeEv.exit.i6 ]
  %i.ah = zext i32 %i.n to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  store i32 %i.o, ptr %i.ai, align 4, !tbaa !545
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %i.m, ptr %i.aj, align 4, !tbaa !547
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !92 ; 5 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %_ZN6vectorISt4pairIjjELb0EjE4setxEjRKS1_S4_.exit
  %i.an = getelementptr inbounds i8, ptr %i.al, i64 -4 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !21 ; 3 uses
  %.not.i8 = icmp ult i32 %i.m, %i.ao
  br i1 %.not.i8, label %_ZN6vectorIP4exprLb0EjE4setxEjRKS1_S4_.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i:         ; preds = %_ZN6vectorISt4pairIjjELb0EjE4setxEjRKS1_S4_.exit
  %i.ap = add i32 %i.m, 1                         ; 2 uses
  %.not.not.i.i20 = icmp ne i32 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.not.i.i20)
  br label %thread-pre-split.i.i10.preheader

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i:  ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.aq = add i32 %i.m, 1                         ; 3 uses
  %.not16.i.i9 = icmp ugt i32 %i.aq, %i.ao
  br i1 %.not16.i.i9, label %thread-pre-split.i.i10.preheader, label %bb.f

thread-pre-split.i.i10.preheader:                 ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i
  %.ph = phi ptr [ %i.al, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i ], [ null, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ]
  %.ph45 = phi i32 [ %i.aq, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i ], [ %i.ap, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ] ; 4 uses
  %.0.i17.i.i13.ph = phi i32 [ %i.ao, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i ], [ 0, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ] ; 2 uses
  br label %thread-pre-split.i.i10

bb.f:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i
  store i32 %i.aq, ptr %i.an, align 4, !tbaa !21
  br label %_ZN6vectorIP4exprLb0EjE4setxEjRKS1_S4_.exit

thread-pre-split.i.i10:                           ; preds = %thread-pre-split.i.i10.preheader, %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i
  %i.ar = phi ptr [ %.pr.pre.i.i19, %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i ], [ %.ph, %thread-pre-split.i.i10.preheader ] ; 6 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i

_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i:     ; preds = %thread-pre-split.i.i10
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %i.au = load i32, ptr %i.at, align 4, !tbaa !21
  %i.av = icmp ugt i32 %.ph45, %i.au
  br i1 %i.av, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i, label %bb.g

_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i, %thread-pre-split.i.i10
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
  %.pr.pre.i.i19 = load ptr, ptr %i.ak, align 8, !tbaa !92
  br label %thread-pre-split.i.i10, !llvm.loop !549

bb.g:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i
  %i.aw = getelementptr inbounds i8, ptr %i.ar, i64 -4
  store i32 %.ph45, ptr %i.aw, align 4, !tbaa !21
  %.not1319.i.i14 = icmp eq i32 %.0.i17.i.i13.ph, %.ph45
  br i1 %.not1319.i.i14, label %_ZN6vectorIP4exprLb0EjE4setxEjRKS1_S4_.exit, label %.lr.ph.preheader.i.i15

.lr.ph.preheader.i.i15:                           ; preds = %bb.g
  %i.ax = zext i32 %.ph45 to i64
  %i.ay = zext i32 %.0.i17.i.i13.ph to i64        ; 2 uses
  %i.az = getelementptr [8 x i8], ptr %i.ar, i64 %i.ay
  %i.ba = sub nsw i64 %i.ax, %i.ay
  %i.bb = shl nsw i64 %i.ba, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.az, i8 0, i64 %i.bb, i1 false), !tbaa !95
  br label %_ZN6vectorIP4exprLb0EjE4setxEjRKS1_S4_.exit

_ZN6vectorIP4exprLb0EjE4setxEjRKS1_S4_.exit:      ; preds = %.lr.ph.preheader.i.i15, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %bb.f, %bb.g
  %i.bc = phi ptr [ %i.al, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ], [ %i.ar, %bb.g ], [ %i.al, %bb.f ], [ %i.ar, %.lr.ph.preheader.i.i15 ]
  %i.bd = zext i32 %i.m to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bd
  store ptr %1, ptr %i.be, align 8, !tbaa !95
  br label %bb.h

bb.h:                                             ; preds = %_ZN6vectorIP4exprLb0EjE4setxEjRKS1_S4_.exit, %_ZNK6vectorISt4pairIjjELb0EjE3getEjRKS1_.exit
  %.sroa.427.0 = phi i32 [ %.sroa.427.0.extract.trunc, %_ZNK6vectorISt4pairIjjELb0EjE3getEjRKS1_.exit ], [ %i.m, %_ZN6vectorIP4exprLb0EjE4setxEjRKS1_S4_.exit ]
  ret i32 %.sroa.427.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3euf17eq_theory_checker13merge_numeralEP4expr(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %2 = alloca %class.rational, align 8            ; 14 uses
  %3 = alloca %class.rational, align 8            ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store i32 0, ptr %2, align 8, !tbaa !71
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, -4
  store i8 %i.d, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr null, ptr %i.e, align 8, !tbaa !72
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store i32 1, ptr %i.f, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 3 uses
  %i.h = load i8, ptr %i.g, align 4
  %i.i = and i8 %i.h, -4
  store i8 %i.i, ptr %i.g, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr null, ptr %i.j, align 8, !tbaa !72
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, 65535
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.b, label %_ZN16basic_union_find5mergeEjj.exit

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !77
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !116  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZN16basic_union_find5mergeEjj.exit, label %_ZNK17arith_recognizers9is_uminusEPK4expr.exit.i

_ZNK17arith_recognizers9is_uminusEPK4expr.exit.i: ; preds = %bb.b
  %i.t = load i32, ptr %i.s, align 8, !tbaa !119
  %i.u = icmp eq i32 %i.t, 5
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.w = load i32, ptr %i.v, align 4
  %i.x = icmp eq i32 %i.w, 8
  %i.y = select i1 %i.u, i1 %i.x, i1 false
  br i1 %i.y, label %bb.c, label %_ZN16basic_union_find5mergeEjj.exit
end_hunk_1
