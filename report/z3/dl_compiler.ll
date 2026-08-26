Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/dl_compiler?download=true
inline.NumInlined: 1879
inline.NumDeleted: 861
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 27
begin_hunk_0
%class.core_hashtable.196 = type <{ ptr, i32, i32, i32, [4 x i8] }>
%class.svector.199 = type { %class.vector.200 }
%class.vector.200 = type { ptr }
%"class.datalog::rule_dependencies" = type { %class.obj_map.105, ptr, %class.ptr_vector.17, %class.expr_sparse_mark, %class.obj_hashtable.82 }
%class.obj_map.105 = type { %class.core_hashtable.106 }
%class.core_hashtable.106 = type <{ ptr, i32, i32, i32, [4 x i8] }>
%class.obj_hashtable.82 = type { %class.core_hashtable.base.86, [4 x i8] }
%class.core_hashtable.base.86 = type <{ ptr, i32, i32, i32 }>
%"class.datalog::cycle_breaker" = type { ptr, ptr, %class.svector.201, %class.ast_mark, %class.ast_mark }
%class.svector.201 = type { %class.vector.120 }
%class.vector.120 = type { ptr }
%class.ast_mark = type { ptr, %class.obj_mark, %class.obj_mark.202 }
%class.obj_mark = type { [8 x i8], %class.bit_vector }
%class.bit_vector = type { i32, i32, ptr }
%class.obj_mark.202 = type { [8 x i8], %class.bit_vector }
%class.obj_map = type { %class.core_hashtable }
%class.core_hashtable = type <{ ptr, i32, i32, i32, [4 x i8] }>
%class.ptr_vector.119 = type { %class.vector.120 }
%class.ptr_vector.203 = type { %class.vector.204 }
%class.vector.204 = type { ptr }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }

$_ZN7datalog17tr_infrastructureINS_15relation_traitsEE14signature_base9from_joinERKNS_18relation_signatureES6_jPKjS8_RS4_ = comdat any

$_ZN7datalog17tr_infrastructureINS_15relation_traitsEE14signature_base12from_projectERKNS_18relation_signatureEjPKjRS4_ = comdat any

$_ZN7datalog21variable_intersectionD2Ev = comdat any

$_ZN7obj_refI4expr11ast_managerED2Ev = comdat any

$_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqED2Ev = comdat any

$_ZN9table2mapI17default_map_entryIjjE6u_hash4u_eqED2Ev = comdat any

$_ZN6vectorIN7datalog8compiler22assembling_column_infoELb0EjED2Ev = comdat any

$_ZN11var_counterD2Ev = comdat any

$_ZN7datalog21variable_intersection8populateIP3appS3_EEvRKT_RKT0_ = comdat any

$_ZN9table2mapI17default_map_entryIj7svectorIjjEE6u_hash4u_eqE19insert_if_not_thereERKjRKS2_ = comdat any

$_ZN7datalog21variable_intersection8populateI10ref_vectorI4expr11ast_managerEP3appEEvRKT_RKT0_ = comdat any

$_ZN7obj_refI3app11ast_managerED2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN17default_exceptionD2Ev = comdat any

$_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev = comdat any

$_ZN9table2mapI17default_map_entryIj7svectorIjjEE6u_hash4u_eqED2Ev = comdat any

$_ZN9table2mapI17default_map_entryIjP4exprE6u_hash4u_eqED2Ev = comdat any

$_ZN6vectorIjLb0EjED2Ev = comdat any

$_ZN6vectorISt4pairIjjELb0EjED2Ev = comdat any

$_ZN7datalog13cycle_breakerD2Ev = comdat any

$_ZN7obj_mapI9func_decljED2Ev = comdat any

$_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EED2Ev = comdat any

$_ZN6vectorIP9func_declLb0EjED2Ev = comdat any

$_ZN6vectorIP13obj_hashtableI9func_declELb0EjED2Ev = comdat any

$_ZN6vectorIPN7datalog11instructionELb0EjE13expand_vectorEv = comdat any

$__clang_call_terminate = comdat any

$_ZN13ast_fast_markILj1EED2Ev = comdat any

$_ZN7counterD2Ev = comdat any

$_ZN6vectorIP4sortLb0EjED2Ev = comdat any

$_ZN9_key_dataIj7svectorIjjEED2Ev = comdat any

$_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

$_ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ = comdat any

$_ZN6vectorIjLb0EjE13expand_vectorEv = comdat any

$_ZN7datalog13cycle_breaker8traverseEP9func_decl = comdat any

$_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE6insertEOPS1_ = comdat any

$_ZN14core_hashtableI14obj_hash_entryI9func_declE12obj_ptr_hashIS1_E6ptr_eqIS1_EE12expand_tableEv = comdat any

$_ZN14core_hashtableIN7obj_mapI9func_decljE13obj_map_entryE8obj_hashINS2_8key_dataEE10default_eqIS5_EEC2ERKS9_ = comdat any

$_ZN6vectorIP4exprLb0EjE13expand_vectorEv = comdat any

$_ZN6vectorISt4pairIjjELb0EjE13expand_vectorEv = comdat any

$_ZN14core_hashtableI17default_map_entryIjjEN9table2mapIS1_6u_hash4u_eqE15entry_hash_procENS5_13entry_eq_procEE6insertEO9_key_dataIjjE = comdat any

$_ZN14core_hashtableI17default_map_entryIjjEN9table2mapIS1_6u_hash4u_eqE15entry_hash_procENS5_13entry_eq_procEE12expand_tableEv = comdat any

$_ZN14core_hashtableIN7obj_mapI9func_decljE13obj_map_entryE8obj_hashINS2_8key_dataEE10default_eqIS5_EE24insert_if_not_there_coreEOS5_RPS3_ = comdat any

$_ZN14core_hashtableIN7obj_mapI9func_decljE13obj_map_entryE8obj_hashINS2_8key_dataEE10default_eqIS5_EE12expand_tableEv = comdat any

$_ZN6vectorIP4sortLb0EjE13expand_vectorEv = comdat any

$_ZN6vectorIN7datalog18relation_signatureELb1EjE13expand_vectorEv = comdat any

$_ZN14core_hashtableIN7obj_mapI9func_decljE13obj_map_entryE8obj_hashINS2_8key_dataEE10default_eqIS5_EE6insertEOS5_ = comdat any

$_ZNK12obj_pair_mapI4sort3appjE9find_coreEPS0_PS1_ = comdat any

$_ZN14core_hashtableIN12obj_pair_mapI4sort3appjE5entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE6insertEOS6_ = comdat any

$_ZN14core_hashtableIN12obj_pair_mapI4sort3appjE5entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE12expand_tableEv = comdat any

$_ZNK12obj_pair_mapI4sort4decljE9find_coreEPS0_PS1_ = comdat any

$_ZN14core_hashtableIN12obj_pair_mapI4sort4decljE5entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE6insertEOS6_ = comdat any

$_ZN14core_hashtableIN12obj_pair_mapI4sort4decljE5entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE12expand_tableEv = comdat any

$_ZN14core_hashtableIN7obj_mapI4decljE13obj_map_entryE8obj_hashINS2_8key_dataEE10default_eqIS5_EE6insertEOS5_ = comdat any

$_ZN14core_hashtableIN7obj_mapI4decljE13obj_map_entryE8obj_hashINS2_8key_dataEE10default_eqIS5_EE12expand_tableEv = comdat any

$_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE6insertEOj = comdat any

$_ZN14core_hashtableI18default_hash_entryIjE6u_hash4u_eqE12expand_tableEv = comdat any

$_ZN14core_hashtableI17default_map_entryIj7svectorIjjEEN9table2mapIS3_6u_hash4u_eqE15entry_hash_procENS7_13entry_eq_procEE24insert_if_not_there_coreERK9_key_dataIjS2_ERPS3_ = comdat any

$_ZN14core_hashtableI17default_map_entryIj7svectorIjjEEN9table2mapIS3_6u_hash4u_eqE15entry_hash_procENS7_13entry_eq_procEE24insert_if_not_there_coreEO9_key_dataIjS2_ERPS3_ = comdat any

$_ZN14core_hashtableI17default_map_entryIj7svectorIjjEEN9table2mapIS3_6u_hash4u_eqE15entry_hash_procENS7_13entry_eq_procEE12expand_tableEv = comdat any

$_ZN14core_hashtableI17default_map_entryIj7svectorIjjEEN9table2mapIS3_6u_hash4u_eqE15entry_hash_procENS7_13entry_eq_procEE10move_tableEPS3_jSB_j = comdat any

$_ZN14core_hashtableI17default_map_entryIj7svectorIjjEEN9table2mapIS3_6u_hash4u_eqE15entry_hash_procENS7_13entry_eq_procEE6removeERK9_key_dataIjS2_E = comdat any

$_ZN14core_hashtableI17default_map_entryIj7svectorIjjEEN9table2mapIS3_6u_hash4u_eqE15entry_hash_procENS7_13entry_eq_procEE22remove_deleted_entriesEv = comdat any

$_ZN6vectorIN7datalog8compiler22assembling_column_infoELb0EjE13expand_vectorEv = comdat any

$_ZN6vectorIP9func_declLb0EjE13expand_vectorEv = comdat any

@.str = private unnamed_addr constant [30 x i8] c"Compiling unsafe rule column \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"could not process non-numeral in Datalog engine\00", align 1
@_ZTI17default_exception = external constant ptr
@.str.3 = private unnamed_addr constant [50 x i8] c"/opt-bench/work/z3/z3/src/muz/rel/dl_compiler.cpp\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Failed to verify: deps.sort_deps(ordered_preds)\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"NOT IMPLEMENTED YET!\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Overflow encountered when expanding vector\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZTV17default_exception = external constant { [6 x ptr] }, align 8
@_ZTV8ast_mark = external constant { [6 x ptr] }, align 8
@.str.9 = private unnamed_addr constant [43 x i8] c"/opt-bench/work/z3/z3/src/util/hashtable.h\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"UNEXPECTED CODE WAS REACHED.\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7datalog8compiler5resetEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !8
  %i.d = icmp eq i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, 0
  %or.cond.i.i = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond.i.i, label %_ZN7obj_mapI9func_decljE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !12   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !13   ; 5 uses
  %.not11.i.i = icmp eq i32 %i.j, 0
  br i1 %.not11.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.k = zext i32 %i.j to i64
  %i.l = add nuw nsw i64 %i.k, 1152921504606846975 ; 2 uses
  %i.m = and i64 %i.l, 1152921504606846975        ; 2 uses
  %i.n = add nuw nsw i64 %i.m, 1                  ; 2 uses
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.n, 2305843009213693950
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i.preheader.new
  %.013.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %.1.i.i.1, %bb.g ] ; 2 uses
  %.0712.i.i = phi ptr [ %i.h, %.lr.ph.i.i.preheader.new ], [ %i.w, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %bb.g ]
  %i.p = load ptr, ptr %.0712.i.i, align 8, !tbaa !14
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  store ptr null, ptr %.0712.i.i, align 8, !tbaa !14
  br label %.lr.ph.i.i.1

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.r = add i32 %.013.i.i, 1
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %bb.c
  %.1.i.i = phi i32 [ %i.r, %bb.d ], [ %.013.i.i, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0712.i.i, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  store ptr null, ptr %i.s, align 8, !tbaa !14
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.1
  %i.v = add i32 %.1.i.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i.i.1 = phi i32 [ %i.v, %bb.f ], [ %.1.i.i, %bb.e ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0712.i.i, i64 32 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !18

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.g
  %i.x = and i64 %i.l, 1
  %lcmp.mod.not.not = icmp eq i64 %i.x, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.epil.preheader, label %._crit_edge.i.i

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.013.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %.1.i.i.1, %._crit_edge.i.i.unr-lcssa ] ; 2 uses
  %.0712.i.i.epil.init = phi ptr [ %i.h, %.lr.ph.i.i.preheader ], [ %i.w, %._crit_edge.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod5 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod5)
  %i.y = load ptr, ptr %.0712.i.i.epil.init, align 8, !tbaa !14
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.epil.preheader
  store ptr null, ptr %.0712.i.i.epil.init, align 8, !tbaa !14
  br label %._crit_edge.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.epil.preheader
  %i.aa = add i32 %.013.i.i.epil.init, 1
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.h, %bb.i, %._crit_edge.i.i.unr-lcssa
  %.1.i.i.lcssa = phi i32 [ %.1.i.i.1, %._crit_edge.i.i.unr-lcssa ], [ %i.aa, %bb.i ], [ %.013.i.i.epil.init, %bb.h ]
  %i.ab = shl i32 %.1.i.i.lcssa, 2
  %i.ac = icmp ugt i32 %i.j, 16
  %i.ad = mul i32 %i.j, 3
  %i.ae = icmp ugt i32 %i.ab, %i.ad
  %or.cond19.i.i = select i1 %i.ac, i1 %i.ae, i1 false
  br i1 %or.cond19.i.i, label %bb.j, label %._crit_edge.thread.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.af = icmp eq ptr %i.h, null
  br i1 %i.af, label %_ZN14core_hashtableIN7obj_mapI9func_decljE13obj_map_entryE8obj_hashINS2_8key_dataEE10default_eqIS5_EE12delete_tableEv.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.h)
  %.pre.i.i = load i32, ptr %i.i, align 8, !tbaa !13
  br label %_ZN14core_hashtableIN7obj_mapI9func_decljE13obj_map_entryE8obj_hashINS2_8key_dataEE10default_eqIS5_EE12delete_tableEv.exit.i.i

_ZN14core_hashtableIN7obj_mapI9func_decljE13obj_map_entryE8obj_hashINS2_8key_dataEE10default_eqIS5_EE12delete_tableEv.exit.i.i: ; preds = %bb.k, %bb.j
  %i.ag = phi i32 [ %i.j, %bb.j ], [ %.pre.i.i, %bb.k ] ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !12
  %i.ah = lshr i32 %i.ag, 1                       ; 6 uses
  store i32 %i.ah, ptr %i.i, align 8, !tbaa !13
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.aj) ; 3 uses
  %.not6.i.i.i.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZN14core_hashtableIN7obj_mapI9func_decljE13obj_map_entryE8obj_hashINS2_8key_dataEE10default_eqIS5_EE11alloc_tableEj.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN14core_hashtableIN7obj_mapI9func_decljE13obj_map_entryE8obj_hashINS2_8key_dataEE10default_eqIS5_EE12delete_tableEv.exit.i.i
  %xtraiter6 = and i32 %i.ah, 7                   ; 2 uses
  %lcmp.mod7.not = icmp eq i32 %xtraiter6, 0
  br i1 %lcmp.mod7.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %.08.i.i.i.i.i.i.i.prol = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.057.i.i.i.i.i.i.i.prol = phi i32 [ %i.al, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  store ptr null, ptr %.08.i.i.i.i.i.i.i.prol, align 8, !tbaa !20
  %i.al = add nsw i32 %.057.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter6
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !21

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.08.i.i.i.i.i.i.i.unr = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.i.i.unr = phi i32 [ %i.ah, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.al, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.an = icmp ult i32 %i.ag, 16
  br i1 %i.an, label %_ZN14core_hashtableIN7obj_mapI9func_decljE13obj_map_entryE8obj_hashINS2_8key_dataEE10default_eqIS5_EE11alloc_tableEj.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i.i.i.i.i.i = phi i32 [ %i.av, %.lr.ph.i.i.i.i.i.i.i ], [ %.057.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  store ptr null, ptr %.08.i.i.i.i.i.i.i, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 16
  store ptr null, ptr %i.ao, align 8, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 32
  store ptr null, ptr %i.ap, align 8, !tbaa !20
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 48
  store ptr null, ptr %i.aq, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 64
  store ptr null, ptr %i.ar, align 8, !tbaa !20
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 80
  store ptr null, ptr %i.as, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 96
  store ptr null, ptr %i.at, align 8, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 112
  store ptr null, ptr %i.au, align 8, !tbaa !20
  %i.av = add nsw i32 %.057.i.i.i.i.i.i.i, -8     ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 128
  %.not.i.i.i.i.i.i.i.7 = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i.i.i.i.i.7, label %_ZN14core_hashtableIN7obj_mapI9func_decljE13obj_map_entryE8obj_hashINS2_8key_dataEE10default_eqIS5_EE11alloc_tableEj.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !23

_ZN14core_hashtableIN7obj_mapI9func_decljE13obj_map_entryE8obj_hashINS2_8key_dataEE10default_eqIS5_EE11alloc_tableEj.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %_ZN14core_hashtableIN7obj_mapI9func_decljE13obj_map_entryE8obj_hashINS2_8key_dataEE10default_eqIS5_EE12delete_tableEv.exit.i.i
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !12
  br label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %_ZN14core_hashtableIN7obj_mapI9func_decljE13obj_map_entryE8obj_hashINS2_8key_dataEE10default_eqIS5_EE11alloc_tableEj.exit.i.i, %._crit_edge.i.i, %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !8
  store i32 0, ptr %i.e, align 8, !tbaa !24
  br label %_ZN7obj_mapI9func_decljE5resetEv.exit

_ZN7obj_mapI9func_decljE5resetEv.exit:            ; preds = %bb.a, %._crit_edge.thread.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7datalog8compiler23ensure_predicate_loadedEP9func_declRNS_17instruction_blockE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"struct.obj_map<func_decl, unsigned int>::key_data", align 8 ; 5 uses
  %4 = alloca %"class.datalog::relation_signature", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %1, ptr %3, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 -1, ptr %i.c, align 8, !tbaa !26
  %i.d = call noundef zeroext i1 @_ZN14core_hashtableIN7obj_mapI9func_decljE13obj_map_entryE8obj_hashINS2_8key_dataEE10default_eqIS5_EE24insert_if_not_there_coreEOS5_RPS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.g = load i32, ptr %i.f, align 4, !tbaa !27
  %.not = icmp eq i32 %i.g, -1
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !28
  %i.h = load ptr, ptr %0, align 8, !tbaa !32, !nonnull !62, !align !63 ; 2 uses
  invoke void @_ZN7datalog7context13ensure_engineEP4expr(ptr noundef nonnull align 8 dereferenceable(3028) %i.h, ptr noundef null)
          to label %bb.c unwind label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2968
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !246
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef nonnull align 8 dereferenceable(200) ptr %i.m(ptr noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %bb.d unwind label %bb.s

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN7datalog16relation_manager14from_predicateEP9func_declRNS_18relation_signatureE(ptr noundef nonnull align 8 dereferenceable(200) %i.n, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.e unwind label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !248  ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZNK6vectorIN7datalog18relation_signatureELb1EjE4sizeEv.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !27   ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !27
  %i.v = icmp eq i32 %i.s, %i.u
  br i1 %i.v, label %_ZNK6vectorIN7datalog18relation_signatureELb1EjE4sizeEv.exit.thread.i, label %bb.g

_ZNK6vectorIN7datalog18relation_signatureELb1EjE4sizeEv.exit.thread.i: ; preds = %bb.f, %bb.e
  %.0.i4.i = phi i32 [ %i.s, %bb.f ], [ 0, %bb.e ]
  invoke void @_ZN6vectorIN7datalog18relation_signatureELb1EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %_ZNK6vectorIN7datalog18relation_signatureELb1EjE4sizeEv.exit.thread.i
  %.pre.i.i = load ptr, ptr %i.o, align 8, !tbaa !248 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %.noexc, %bb.f
  %.0.i3.i = phi i32 [ %.0.i4.i, %.noexc ], [ %i.s, %bb.f ] ; 2 uses
  %i.w = phi i32 [ %.pre2.i.i, %.noexc ], [ %i.s, %bb.f ]
  %i.x = phi ptr [ %.pre.i.i, %.noexc ], [ %i.p, %bb.f ]
  %i.y = zext i32 %i.w to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.y ; 2 uses
  store ptr null, ptr %i.z, align 8, !tbaa !28
  %i.aa = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %_ZNK6vectorIP4sortLb0EjE8capacityEv.exit.i.i.i.i.i.i.i

_ZNK6vectorIP4sortLb0EjE8capacityEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 4, !tbaa !27
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !27
  %i.ae = zext i32 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 8
  %i.ah = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ag)
          to label %.noexc12 unwind label %bb.t   ; 2 uses

.noexc12:                                         ; preds = %_ZNK6vectorIP4sortLb0EjE8capacityEv.exit.i.i.i.i.i.i.i
  store <2 x i32> %i.ac, ptr %i.ah, align 4, !tbaa !27
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  store ptr %i.ai, ptr %i.z, align 8, !tbaa !28
  %i.aj = load ptr, ptr %4, align 8, !tbaa !28    ; 4 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.k, label %_ZNK6vectorIP4sortLb0EjE3endEv.exit.i.i.i.i.i.i.i

_ZNK6vectorIP4sortLb0EjE3endEv.exit.i.i.i.i.i.i.i: ; preds = %.noexc12
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !27 ; 3 uses
  %i.an = icmp ugt i32 %i.am, 1
  br i1 %i.an, label %bb.h, label %bb.i, !prof !249

bb.h:                                             ; preds = %_ZNK6vectorIP4sortLb0EjE3endEv.exit.i.i.i.i.i.i.i
  %i.ao = zext i32 %i.am to i64
  %i.ap = shl nuw nsw i64 %i.ao, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr nonnull align 8 %i.aj, i64 %i.ap, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZNK6vectorIP4sortLb0EjE3endEv.exit.i.i.i.i.i.i.i
  %i.aq = icmp eq i32 %i.am, 1
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !250
  store ptr %i.ar, ptr %i.ai, align 8, !tbaa !250
end_hunk_0
begin_hunk_1_@_ZN7datalog8compiler27compile_rule_evaluation_runEPNS_4ruleEjPKjjbRNS_17instruction_blockE:bb.a
  %i.ari = getelementptr inbounds i8, ptr %i.arg, i64 -4
  %i.arj = load i32, ptr %i.ari, align 4, !tbaa !27 ; 2 uses
  %i.ark = getelementptr inbounds i8, ptr %i.arg, i64 -8
  %i.arl = load i32, ptr %i.ark, align 4, !tbaa !27
  %i.arm = icmp eq i32 %i.arj, %i.arl
  br i1 %i.arm, label %bb.jt, label %_ZN6vectorIPN7datalog11instructionELb0EjE9push_backERKS2_.exit.i544

bb.jt:                                            ; preds = %bb.js, %bb.jr
  invoke void @_ZN6vectorIPN7datalog11instructionELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc549 unwind label %bb.jp

.noexc549:                                        ; preds = %bb.jt
  %.pre.i.i546 = load ptr, ptr %6, align 8, !tbaa !253 ; 2 uses
  %.phi.trans.insert.i.i547 = getelementptr inbounds i8, ptr %.pre.i.i546, i64 -4
  %.pre2.i.i548 = load i32, ptr %.phi.trans.insert.i.i547, align 4, !tbaa !27
  br label %_ZN6vectorIPN7datalog11instructionELb0EjE9push_backERKS2_.exit.i544

_ZN6vectorIPN7datalog11instructionELb0EjE9push_backERKS2_.exit.i544: ; preds = %.noexc549, %bb.js
  %i.arn = phi i32 [ %.pre2.i.i548, %.noexc549 ], [ %i.arj, %bb.js ] ; 2 uses
  %i.aro = phi ptr [ %.pre.i.i546, %.noexc549 ], [ %i.arg, %bb.js ] ; 2 uses
  %i.arp = getelementptr inbounds i8, ptr %i.aro, i64 -4
  %i.arq = zext i32 %i.arn to i64
  %i.arr = getelementptr inbounds nuw [8 x i8], ptr %i.aro, i64 %i.arq
  store ptr %i.arf, ptr %i.arr, align 8, !tbaa !256
  %i.ars = add i32 %i.arn, 1
  store i32 %i.ars, ptr %i.arp, align 4, !tbaa !27
  %i.art = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aru = load ptr, ptr %i.art, align 8, !tbaa !258 ; 3 uses
  %.not.i545 = icmp eq ptr %i.aru, null
  br i1 %.not.i545, label %_ZN7datalog17instruction_block9push_backEPNS_11instructionE.exit551, label %bb.ju

bb.ju:                                            ; preds = %_ZN6vectorIPN7datalog11instructionELb0EjE9push_backERKS2_.exit.i544
  %i.arv = load ptr, ptr %i.aru, align 8, !tbaa !246
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arv, i64 16
  %i.arx = load ptr, ptr %i.arw, align 8
  invoke void %i.arx(ptr noundef nonnull align 8 dereferenceable(8) %i.aru, ptr noundef %i.arf)
          to label %_ZN7datalog17instruction_block9push_backEPNS_11instructionE.exit551 unwind label %bb.jp, !inline_history !262

bb.jv:                                            ; preds = %_ZNK6vectorIjLb0EjE5emptyEv.exit543
  %i.ary = zext i32 %i.aqw to i64                 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ary, 2
  %i.arz = getelementptr inbounds nuw i8, ptr %i.aqt, i64 %.idx ; 2 uses
  %i.asa = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ary, i1 true)
  %i.asb = shl nuw nsw i64 %i.asa, 1
  %i.asc = xor i64 %i.asb, 126
  invoke void @_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %i.aqt, ptr noundef nonnull %i.arz, i64 noundef %i.asc)
          to label %.noexc555 unwind label %bb.jp

.noexc555:                                        ; preds = %bb.jv
  invoke void @_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %i.aqt, ptr noundef nonnull %i.arz)
          to label %_ZSt4sortIPjEvT_S1_.exit unwind label %bb.jp

_ZSt4sortIPjEvT_S1_.exit:                         ; preds = %.noexc555
  %i.asd = load i32, ptr %i.e, align 4, !tbaa !27
  %i.ase = load i8, ptr %i.b, align 1, !tbaa !288, !range !289, !noundef !62
  %i.asf = trunc nuw i8 %i.ase to i1
  invoke void @_ZN7datalog8compiler35make_filter_interpreted_and_projectEjR7obj_refI3app11ast_managerERK7svectorIjjERjbRNS_17instruction_blockE(ptr noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %i.asd, ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 4 dereferenceable(4) %i.e, i1 noundef zeroext %i.asf, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZN7datalog17instruction_block9push_backEPNS_11instructionE.exit551 unwind label %bb.jp

_ZN7datalog17instruction_block9push_backEPNS_11instructionE.exit551: ; preds = %_ZN6vectorIPN7datalog11instructionELb0EjE9push_backERKS2_.exit.i544, %bb.ju, %_ZSt4sortIPjEvT_S1_.exit
  store i8 1, ptr %i.b, align 1, !tbaa !288
  %i.asg = load ptr, ptr %38, align 8, !tbaa !433 ; 3 uses
  %.not.i.i557 = icmp eq ptr %i.asg, null
  br i1 %.not.i.i557, label %_ZN7obj_refI3app11ast_managerED2Ev.exit, label %bb.jw

bb.jw:                                            ; preds = %_ZN7datalog17instruction_block9push_backEPNS_11instructionE.exit551
  %i.ash = load ptr, ptr %i.aqp, align 8, !tbaa !440, !nonnull !62, !align !63
  %i.asi = getelementptr inbounds nuw i8, ptr %i.asg, i64 8 ; 2 uses
  %i.asj = load i32, ptr %i.asi, align 4, !tbaa !291
  %i.ask = add i32 %i.asj, -1                     ; 2 uses
  store i32 %i.ask, ptr %i.asi, align 4, !tbaa !291
  %i.asl = icmp eq i32 %i.ask, 0
  br i1 %i.asl, label %bb.jx, label %_ZN7obj_refI3app11ast_managerED2Ev.exit

bb.jx:                                            ; preds = %bb.jw
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ash, ptr noundef nonnull %i.asg)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit unwind label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.asm = landingpad { ptr, i32 }
          catch ptr null
  %i.asn = extractvalue { ptr, i32 } %i.asm, 0
  call void @__clang_call_terminate(ptr %i.asn) #18
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit:          ; preds = %_ZN7datalog17instruction_block9push_backEPNS_11instructionE.exit551, %bb.jw, %bb.jx
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #17
  %i.aso = load ptr, ptr %37, align 8, !tbaa !293 ; 3 uses
  %.not.i.i558 = icmp eq ptr %i.aso, null
  br i1 %.not.i.i558, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit559, label %bb.jz

bb.jz:                                            ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit
  %i.asp = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.asq = load ptr, ptr %i.asp, align 8, !tbaa !294, !nonnull !62, !align !63
  %i.asr = getelementptr inbounds nuw i8, ptr %i.aso, i64 8 ; 2 uses
  %i.ass = load i32, ptr %i.asr, align 4, !tbaa !291
  %i.ast = add i32 %i.ass, -1                     ; 2 uses
  store i32 %i.ast, ptr %i.asr, align 4, !tbaa !291
  %i.asu = icmp eq i32 %i.ast, 0
  br i1 %i.asu, label %bb.ka, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit559

bb.ka:                                            ; preds = %bb.jz
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.asq, ptr noundef nonnull %i.aso)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit559 unwind label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.asv = landingpad { ptr, i32 }
          catch ptr null
  %i.asw = extractvalue { ptr, i32 } %i.asv, 0
  call void @__clang_call_terminate(ptr %i.asw) #18
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit559:      ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit, %bb.jz, %bb.ka
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #17
  br i1 %i.aqu, label %_ZN6vectorIjLb0EjED2Ev.exit561, label %bb.kc

bb.kc:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit559
  %i.asx = getelementptr inbounds i8, ptr %i.aqt, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.asx)
          to label %_ZN6vectorIjLb0EjED2Ev.exit561 unwind label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.asy = landingpad { ptr, i32 }
          catch ptr null
  %i.asz = extractvalue { ptr, i32 } %i.asy, 0
  call void @__clang_call_terminate(ptr %i.asz) #18
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit561:                   ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit559, %bb.kc
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #17
  %.not.i.i562 = icmp eq ptr %i.aqj, null
  br i1 %.not.i.i562, label %_ZN7obj_refI3app11ast_managerED2Ev.exit563, label %bb.ke

bb.ke:                                            ; preds = %_ZN6vectorIjLb0EjED2Ev.exit561
  %i.ata = load ptr, ptr %i.ahm, align 8, !tbaa !440, !nonnull !62, !align !63
  %i.atb = getelementptr inbounds nuw i8, ptr %i.aqj, i64 8 ; 2 uses
  %i.atc = load i32, ptr %i.atb, align 4, !tbaa !291
  %i.atd = add i32 %i.atc, -1                     ; 2 uses
  store i32 %i.atd, ptr %i.atb, align 4, !tbaa !291
  %i.ate = icmp eq i32 %i.atd, 0
  br i1 %i.ate, label %bb.kf, label %_ZN7obj_refI3app11ast_managerED2Ev.exit563

bb.kf:                                            ; preds = %bb.ke
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.ata, ptr noundef nonnull %i.aqj)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit563 unwind label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.atf = landingpad { ptr, i32 }
          catch ptr null
  %i.atg = extractvalue { ptr, i32 } %i.atf, 0
  call void @__clang_call_terminate(ptr %i.atg) #18
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit563:       ; preds = %_ZN6vectorIjLb0EjED2Ev.exit561, %bb.ke, %bb.kf
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #17
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit412.thread

bb.kh:                                            ; preds = %bb.jp, %bb.jo
  %.pn272.pn = phi { ptr, i32 } [ %i.ard, %bb.jp ], [ %i.arc, %bb.jo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #17
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %.body705
  %.pn275.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn275.pn.pn.pn.pn.pn, %.body705 ], [ %.pn272.pn, %bb.kh ]
  call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #17
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %33) #17
  br label %bb.kj

bb.kj:                                            ; preds = %bb.ki, %bb.ic
  %.pn275.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn275.pn.pn.pn.pn.pn.pn, %bb.ki ], [ %i.aig, %bb.ic ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #17
  br label %bb.mi

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit412.thread: ; preds = %._crit_edge843, %_ZN7obj_refI3app11ast_managerED2Ev.exit563, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit412
  %i.ath = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ati = load ptr, ptr %i.ath, align 8, !tbaa !248
  %i.atj = zext i32 %2 to i64
  %i.atk = getelementptr inbounds nuw [8 x i8], ptr %i.ati, i64 %i.atj
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #17
  store ptr null, ptr %39, align 8, !tbaa !314
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #17
  store ptr null, ptr %40, align 8, !tbaa !263
  %.not883 = icmp eq i32 %i.s, 0
  br i1 %.not883, label %._crit_edge873, label %.lr.ph872

.lr.ph872:                                        ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit412.thread
  %i.atl = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %wide.trip.count955 = zext i32 %i.s to i64
  br label %bb.kk

._crit_edge873:                                   ; preds = %bb.lf, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit412.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #17
  %i.atm = load i32, ptr %i.e, align 4, !tbaa !27
  invoke void @_ZN7datalog8compiler20make_assembling_codeEPNS_4ruleEP9func_decljRK7svectorINS0_22assembling_column_infoEjERjRbRNS_17instruction_blockE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull %1, ptr noundef %i.u, i32 noundef %i.atm, ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.lg unwind label %bb.lm

bb.kk:                                            ; preds = %.lr.ph872, %bb.lf
  %i.atn = phi ptr [ null, %.lr.ph872 ], [ %i.awv, %bb.lf ] ; 3 uses
  %indvars.iv952 = phi i64 [ 0, %.lr.ph872 ], [ %indvars.iv.next953, %bb.lf ] ; 3 uses
  %.sroa.8710.0869 = phi ptr [ undef, %.lr.ph872 ], [ %.sroa.8710.2, %bb.lf ] ; 2 uses
  %i.ato = load ptr, ptr %i.atk, align 8, !tbaa !28
  %i.atp = getelementptr inbounds nuw [8 x i8], ptr %i.ato, i64 %indvars.iv952
  %i.atq = load ptr, ptr %i.atp, align 8, !tbaa !250
  %i.atr = getelementptr inbounds nuw [8 x i8], ptr %i.atl, i64 %indvars.iv952
  %i.ats = load ptr, ptr %i.atr, align 8, !tbaa !367 ; 4 uses
  %i.att = getelementptr inbounds nuw i8, ptr %i.ats, i64 4
  %i.atu = load i32, ptr %i.att, align 4
  %i.atv = and i32 %i.atu, 65535
  %i.atw = icmp eq i32 %i.atv, 1
  br i1 %i.atw, label %bb.kl, label %bb.kv

bb.kl:                                            ; preds = %bb.kk
  %i.atx = getelementptr inbounds nuw i8, ptr %i.ats, i64 16
  %i.aty = load i32, ptr %i.atx, align 8, !tbaa !368 ; 6 uses
  %i.atz = load i32, ptr %i.fl, align 8, !tbaa !406 ; 3 uses
  %i.aua = add i32 %i.atz, -1
  %i.aub = and i32 %i.aua, %i.aty                 ; 3 uses
  %i.auc = load ptr, ptr %23, align 8, !tbaa !415 ; 3 uses
  %i.aud = zext i32 %i.aub to i64
  %.idx.i.i564 = mul nuw nsw i64 %i.aud, 24
  %i.aue = getelementptr inbounds nuw i8, ptr %i.auc, i64 %.idx.i.i564 ; 2 uses
  %i.auf = zext i32 %i.atz to i64
  %i.aug = getelementptr inbounds nuw [24 x i8], ptr %i.auc, i64 %i.auf
  %.not30.i.i565 = icmp eq i32 %i.aub, %i.atz
  br i1 %.not30.i.i565, label %.preheader.i.i570, label %.lr.ph.i.i566

.preheader.i.i570:                                ; preds = %bb.ko, %bb.kl
  %.not2732.i.i571 = icmp eq i32 %i.aub, 0
  br i1 %.not2732.i.i571, label %.loopexit, label %.lr.ph34.i.i572

.lr.ph.i.i566:                                    ; preds = %bb.kl, %bb.ko
  %.031.i.i567 = phi ptr [ %i.auo, %bb.ko ], [ %i.aue, %bb.kl ] ; 5 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %.031.i.i567, i64 4
  %i.aui = load i32, ptr %i.auh, align 4, !tbaa !414
  switch i32 %i.aui, label %bb.ko [
    i32 2, label %bb.km
    i32 0, label %.loopexit
  ]

bb.km:                                            ; preds = %.lr.ph.i.i566
  %i.auj = load i32, ptr %.031.i.i567, align 8, !tbaa !411
  %i.auk = icmp eq i32 %i.auj, %i.aty
  br i1 %i.auk, label %bb.kn, label %bb.ko

bb.kn:                                            ; preds = %bb.km
  %i.aul = getelementptr inbounds nuw i8, ptr %.031.i.i567, i64 8
  %i.aum = load i32, ptr %i.aul, align 8, !tbaa !426
  %i.aun = icmp eq i32 %i.aum, %i.aty
  br i1 %i.aun, label %_ZNK9table2mapI17default_map_entryIj7svectorIjjEE6u_hash4u_eqE9find_coreERKj.exit575, label %bb.ko

bb.ko:                                            ; preds = %bb.kn, %bb.km, %.lr.ph.i.i566
  %i.auo = getelementptr inbounds nuw i8, ptr %.031.i.i567, i64 24 ; 2 uses
  %.not.i.i569 = icmp eq ptr %i.auo, %i.aug
  br i1 %.not.i.i569, label %.preheader.i.i570, label %.lr.ph.i.i566, !llvm.loop !427

.lr.ph34.i.i572:                                  ; preds = %.preheader.i.i570, %bb.kr
  %.133.i.i573 = phi ptr [ %i.auw, %bb.kr ], [ %i.auc, %.preheader.i.i570 ] ; 5 uses
  %i.aup = getelementptr inbounds nuw i8, ptr %.133.i.i573, i64 4
  %i.auq = load i32, ptr %i.aup, align 4, !tbaa !414
  switch i32 %i.auq, label %bb.kr [
    i32 2, label %bb.kp
    i32 0, label %.loopexit
  ]

bb.kp:                                            ; preds = %.lr.ph34.i.i572
  %i.aur = load i32, ptr %.133.i.i573, align 8, !tbaa !411
  %i.aus = icmp eq i32 %i.aur, %i.aty
  br i1 %i.aus, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %bb.kp
  %i.aut = getelementptr inbounds nuw i8, ptr %.133.i.i573, i64 8
  %i.auu = load i32, ptr %i.aut, align 8, !tbaa !426
  %i.auv = icmp eq i32 %i.auu, %i.aty
  br i1 %i.auv, label %_ZNK9table2mapI17default_map_entryIj7svectorIjjEE6u_hash4u_eqE9find_coreERKj.exit575, label %bb.kr

bb.kr:                                            ; preds = %bb.kq, %bb.kp, %.lr.ph34.i.i572
  %i.auw = getelementptr inbounds nuw i8, ptr %.133.i.i573, i64 24 ; 2 uses
  %.not27.i.i574 = icmp eq ptr %i.auw, %i.aue
  br i1 %.not27.i.i574, label %.loopexit, label %.lr.ph34.i.i572, !llvm.loop !428

_ZNK9table2mapI17default_map_entryIj7svectorIjjEE6u_hash4u_eqE9find_coreERKj.exit575: ; preds = %bb.kn, %bb.kq
  %.026.i.i568 = phi ptr [ %.133.i.i573, %bb.kq ], [ %.031.i.i567, %bb.kn ]
  %i.aux = getelementptr inbounds nuw i8, ptr %.026.i.i568, i64 16
  %i.auy = load ptr, ptr %i.aux, align 8, !tbaa !263 ; 4 uses
  %i.auz = icmp eq ptr %i.auy, null
  br i1 %i.auz, label %_ZNK9table2mapI17default_map_entryIj7svectorIjjEE6u_hash4u_eqE9find_coreERKj.exit575._ZNK6vectorIjLb0EjE4sizeEv.exit580_crit_edge, label %bb.ks

_ZNK9table2mapI17default_map_entryIj7svectorIjjEE6u_hash4u_eqE9find_coreERKj.exit575._ZNK6vectorIjLb0EjE4sizeEv.exit580_crit_edge: ; preds = %_ZNK9table2mapI17default_map_entryIj7svectorIjjEE6u_hash4u_eqE9find_coreERKj.exit575
  %.pre983.a = load i32, ptr inttoptr (i64 -4 to ptr), align 4, !tbaa !27
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit580

bb.ks:                                            ; preds = %_ZNK9table2mapI17default_map_entryIj7svectorIjjEE6u_hash4u_eqE9find_coreERKj.exit575
  %i.ava = getelementptr inbounds i8, ptr %i.auy, i64 -4
  %i.avb = load i32, ptr %i.ava, align 4, !tbaa !27 ; 2 uses
  %i.avc = add i32 %i.avb, -1
  %i.avd = zext i32 %i.avc to i64
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit580

_ZNK6vectorIjLb0EjE4sizeEv.exit580:               ; preds = %_ZNK9table2mapI17default_map_entryIj7svectorIjjEE6u_hash4u_eqE9find_coreERKj.exit575._ZNK6vectorIjLb0EjE4sizeEv.exit580_crit_edge, %bb.ks
  %i.ave = phi i32 [ %i.avb, %bb.ks ], [ %.pre983.a, %_ZNK9table2mapI17default_map_entryIj7svectorIjjEE6u_hash4u_eqE9find_coreERKj.exit575._ZNK6vectorIjLb0EjE4sizeEv.exit580_crit_edge ] ; 2 uses
  %.0.i.i577 = phi i64 [ %i.avd, %bb.ks ], [ 4294967295, %_ZNK9table2mapI17default_map_entryIj7svectorIjjEE6u_hash4u_eqE9find_coreERKj.exit575._ZNK6vectorIjLb0EjE4sizeEv.exit580_crit_edge ]
  %i.avf = getelementptr inbounds nuw [4 x i8], ptr %i.auy, i64 %.0.i.i577
  %i.avg = load i32, ptr %i.avf, align 4, !tbaa !27
  %43 = ptrtoint ptr %.sroa.8710.0869 to i64
  %.sroa.8710.16.insert.ext712 = zext i32 %i.avg to i64
  %.sroa.8710.16.insert.mask713 = and i64 %43, -4294967296
  %.sroa.8710.16.insert.insert714 = or disjoint i64 %.sroa.8710.16.insert.mask713, %.sroa.8710.16.insert.ext712
  %i.avh = inttoptr i64 %.sroa.8710.16.insert.insert714 to ptr ; 2 uses
  %i.avi = icmp ugt i32 %i.ave, 1
  br i1 %i.avi, label %bb.kt, label %bb.lc

bb.kt:                                            ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit580
  %i.avj = getelementptr inbounds i8, ptr %i.auy, i64 -4
  %i.avk = add i32 %i.ave, -1
  store i32 %i.avk, ptr %i.avj, align 4, !tbaa !27
  br label %bb.lc

bb.ku:                                            ; preds = %bb.le, %bb.kv
  %i.avl = landingpad { ptr, i32 }
          cleanup
  br label %bb.mh

.loopexit:                                        ; preds = %.lr.ph.i.i566, %.lr.ph34.i.i572, %bb.kr, %.preheader.i.i570
  %44 = ptrtoint ptr %.sroa.8710.0869 to i64
  %.sroa.8710.16.insert.ext = zext i32 %i.aty to i64
  %.sroa.8710.16.insert.mask = and i64 %44, -4294967296
  %.sroa.8710.16.insert.insert = or disjoint i64 %.sroa.8710.16.insert.mask, %.sroa.8710.16.insert.ext
  %i.avm = inttoptr i64 %.sroa.8710.16.insert.insert to ptr
  br label %bb.lc

bb.kv:                                            ; preds = %bb.kk
  %i.avn = load ptr, ptr %0, align 8, !tbaa !32, !nonnull !62, !align !63
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avn, i64 56
  %i.avp = invoke noundef zeroext i1 @_ZNK7datalog12dl_decl_util14is_numeral_extEP4expr(ptr noundef nonnull align 8 dereferenceable(28) %i.avo, ptr noundef nonnull %i.ats)
          to label %bb.kw unwind label %bb.ku

bb.kw:                                            ; preds = %bb.kv
  br i1 %i.avp, label %._crit_edge984, label %bb.kx

._crit_edge984:                                   ; preds = %bb.kw
  %.pre985 = load ptr, ptr %39, align 8, !tbaa !314
  br label %bb.lc

bb.kx:                                            ; preds = %bb.kw
  %i.avq = call ptr @__cxa_allocate_exception(i64 40) #17 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %42)
          to label %bb.ky unwind label %bb.lb

bb.ky:                                            ; preds = %bb.kx
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.avq, align 8, !tbaa !246
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avq, i64 8 ; 2 uses
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avq, i64 24 ; 3 uses
  store ptr %i.avs, ptr %i.avr, align 8, !tbaa !355
  %i.avt = load ptr, ptr %41, align 8, !tbaa !357 ; 2 uses
  %i.avu = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 7 uses
  %i.avv = icmp eq ptr %i.avt, %i.avu
  br i1 %i.avv, label %bb.kz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.kz:                                            ; preds = %bb.ky
  %i.avw = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.avx = load i64, ptr %i.avw, align 8, !tbaa !360 ; 3 uses
  %i.avy = icmp ult i64 %i.avx, 16
  call void @llvm.assume(i1 %i.avy)
  %i.avz = add nuw nsw i64 %i.avx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.avs, ptr noundef nonnull align 8 dereferenceable(1) %i.avu, i64 %i.avz, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ky
  store ptr %i.avt, ptr %i.avr, align 8, !tbaa !357
  %i.awa = load i64, ptr %i.avu, align 8, !tbaa !320
  store i64 %i.awa, ptr %i.avs, align 8, !tbaa !320
  %.phi.trans.insert980 = getelementptr inbounds nuw i8, ptr %41, i64 8
  %.pre981 = load i64, ptr %.phi.trans.insert980, align 8, !tbaa !360
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.kz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.awb = phi i64 [ %i.avx, %bb.kz ], [ %.pre981, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.awc = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.awd = getelementptr inbounds nuw i8, ptr %i.avq, i64 16
  store i64 %i.awb, ptr %i.awd, align 8, !tbaa !360
  store ptr %i.avu, ptr %41, align 8, !tbaa !357
  store i64 0, ptr %i.awc, align 8, !tbaa !360
  store i8 0, ptr %i.avu, align 8, !tbaa !320
  invoke void @__cxa_throw(ptr nonnull %i.avq, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #19
          to label %bb.mn unwind label %bb.la

bb.la:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.awe = landingpad { ptr, i32 }
          cleanup
  %i.awf = load ptr, ptr %41, align 8, !tbaa !357 ; 2 uses
  %i.awg = icmp eq ptr %i.awf, %i.avu
  br i1 %i.awg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i581

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i581: ; preds = %bb.la
  %i.awh = load i64, ptr %i.avu, align 8, !tbaa !320
  %i.awi = add i64 %i.awh, 1
  call void @_ZdlPvm(ptr noundef %i.awf, i64 noundef %i.awi) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.la, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i581
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #17
  br label %bb.mh

bb.lb:                                            ; preds = %bb.kx
  %i.awj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #17
  call void @__cxa_free_exception(ptr %i.avq) #17
  br label %bb.mh

bb.lc:                                            ; preds = %._crit_edge984, %.loopexit, %bb.kt, %_ZNK6vectorIjLb0EjE4sizeEv.exit580
  %i.awk = phi ptr [ %i.atn, %_ZNK6vectorIjLb0EjE4sizeEv.exit580 ], [ %i.atn, %.loopexit ], [ %i.atn, %bb.kt ], [ %.pre985, %._crit_edge984 ] ; 4 uses
  %.sroa.8710.2 = phi ptr [ %i.avh, %_ZNK6vectorIjLb0EjE4sizeEv.exit580 ], [ %i.avm, %.loopexit ], [ %i.avh, %bb.kt ], [ %i.ats, %._crit_edge984 ] ; 2 uses
  %.sroa.5.1 = phi i32 [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit580 ], [ 1, %.loopexit ], [ 0, %bb.kt ], [ 2, %._crit_edge984 ]
  %i.awl = icmp eq ptr %i.awk, null
  br i1 %i.awl, label %bb.le, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.awm = getelementptr inbounds i8, ptr %i.awk, i64 -4
  %i.awn = load i32, ptr %i.awm, align 4, !tbaa !27 ; 2 uses
  %i.awo = getelementptr inbounds i8, ptr %i.awk, i64 -8
  %i.awp = load i32, ptr %i.awo, align 4, !tbaa !27
  %i.awq = icmp eq i32 %i.awn, %i.awp
  br i1 %i.awq, label %bb.le, label %bb.lf

bb.le:                                            ; preds = %bb.ld, %bb.lc
  invoke void @_ZN6vectorIN7datalog8compiler22assembling_column_infoELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %.noexc585 unwind label %bb.ku

.noexc585:                                        ; preds = %bb.le
  %.pre.i582 = load ptr, ptr %39, align 8, !tbaa !314 ; 2 uses
  %.phi.trans.insert.i583 = getelementptr inbounds i8, ptr %.pre.i582, i64 -4
  %.pre2.i584 = load i32, ptr %.phi.trans.insert.i583, align 4, !tbaa !27
  br label %bb.lf

bb.lf:                                            ; preds = %.noexc585, %bb.ld
  %i.awr = phi i32 [ %.pre2.i584, %.noexc585 ], [ %i.awn, %bb.ld ]
  %i.aws = phi ptr [ %.pre.i582, %.noexc585 ], [ %i.awk, %bb.ld ]
  %i.awt = zext i32 %i.awr to i64
  %i.awu = getelementptr inbounds nuw [24 x i8], ptr %i.aws, i64 %i.awt ; 3 uses
  store ptr %i.atq, ptr %i.awu, align 8, !tbaa !250
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.awu, i64 8
  store i32 %.sroa.5.1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !318
  %.sroa.8710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.awu, i64 16
  store ptr %.sroa.8710.2, ptr %.sroa.8710.0..sroa_idx, align 8, !tbaa !320
  %i.awv = load ptr, ptr %39, align 8, !tbaa !314 ; 2 uses
  %i.aww = getelementptr inbounds i8, ptr %i.awv, i64 -4 ; 2 uses
  %i.awx = load i32, ptr %i.aww, align 4, !tbaa !27
  %i.awy = add i32 %i.awx, 1
  store i32 %i.awy, ptr %i.aww, align 4, !tbaa !27
  %indvars.iv.next953 = add nuw nsw i64 %indvars.iv952, 1 ; 2 uses
  %exitcond956.not = icmp eq i64 %indvars.iv.next953, %wide.trip.count955
  br i1 %exitcond956.not, label %._crit_edge873, label %bb.kk, !llvm.loop !441

bb.lg:                                            ; preds = %._crit_edge873
  %i.awz = load i32, ptr %i.l, align 4, !tbaa !27 ; 3 uses
  invoke void @_ZN7datalog8compiler10make_unionEjjjbRNS_17instruction_blockE(ptr nonnull align 8 poison, i32 noundef %i.awz, i32 noundef %2, i32 noundef %4, i1 noundef zeroext %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.lh unwind label %bb.lm

bb.lh:                                            ; preds = %bb.lg
  %i.axa = load i8, ptr %i.b, align 1, !tbaa !288, !range !289, !noundef !62
  %i.axb = trunc nuw i8 %i.axa to i1
  %.not.i586 = icmp ne i32 %i.awz, -1
  %or.cond770.not = and i1 %.not.i586, %i.axb
  br i1 %or.cond770.not, label %bb.li, label %_ZN7datalog8compiler21make_dealloc_non_voidEjRNS_17instruction_blockE.exit

bb.li:                                            ; preds = %bb.lh
  %i.axc = invoke noundef ptr @_ZN7datalog11instruction10mk_deallocEj(i32 noundef %i.awz)
          to label %.noexc591 unwind label %bb.lm ; 2 uses

.noexc591:                                        ; preds = %bb.li
  %i.axd = load ptr, ptr %6, align 8, !tbaa !253  ; 4 uses
  %i.axe = icmp eq ptr %i.axd, null
  br i1 %i.axe, label %bb.lk, label %bb.lj

bb.lj:                                            ; preds = %.noexc591
  %i.axf = getelementptr inbounds i8, ptr %i.axd, i64 -4
  %i.axg = load i32, ptr %i.axf, align 4, !tbaa !27 ; 2 uses
  %i.axh = getelementptr inbounds i8, ptr %i.axd, i64 -8
  %i.axi = load i32, ptr %i.axh, align 4, !tbaa !27
  %i.axj = icmp eq i32 %i.axg, %i.axi
  br i1 %i.axj, label %bb.lk, label %_ZN6vectorIPN7datalog11instructionELb0EjE9push_backERKS2_.exit.i.i

bb.lk:                                            ; preds = %bb.lj, %.noexc591
  invoke void @_ZN6vectorIPN7datalog11instructionELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc592 unwind label %bb.lm

.noexc592:                                        ; preds = %bb.lk
  %.pre.i.i.i588 = load ptr, ptr %6, align 8, !tbaa !253 ; 2 uses
  %.phi.trans.insert.i.i.i589 = getelementptr inbounds i8, ptr %.pre.i.i.i588, i64 -4
  %.pre2.i.i.i590 = load i32, ptr %.phi.trans.insert.i.i.i589, align 4, !tbaa !27
  br label %_ZN6vectorIPN7datalog11instructionELb0EjE9push_backERKS2_.exit.i.i

_ZN6vectorIPN7datalog11instructionELb0EjE9push_backERKS2_.exit.i.i: ; preds = %.noexc592, %bb.lj
  %i.axk = phi i32 [ %.pre2.i.i.i590, %.noexc592 ], [ %i.axg, %bb.lj ] ; 2 uses
  %i.axl = phi ptr [ %.pre.i.i.i588, %.noexc592 ], [ %i.axd, %bb.lj ] ; 2 uses
  %i.axm = getelementptr inbounds i8, ptr %i.axl, i64 -4
  %i.axn = zext i32 %i.axk to i64
  %i.axo = getelementptr inbounds nuw [8 x i8], ptr %i.axl, i64 %i.axn
  store ptr %i.axc, ptr %i.axo, align 8, !tbaa !256
  %i.axp = add i32 %i.axk, 1
  store i32 %i.axp, ptr %i.axm, align 4, !tbaa !27
  %i.axq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.axr = load ptr, ptr %i.axq, align 8, !tbaa !258 ; 3 uses
  %.not.i.i587 = icmp eq ptr %i.axr, null
  br i1 %.not.i.i587, label %_ZN7datalog8compiler21make_dealloc_non_voidEjRNS_17instruction_blockE.exit, label %bb.ll

bb.ll:                                            ; preds = %_ZN6vectorIPN7datalog11instructionELb0EjE9push_backERKS2_.exit.i.i
  %i.axs = load ptr, ptr %i.axr, align 8, !tbaa !246
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axs, i64 16
  %i.axu = load ptr, ptr %i.axt, align 8
  invoke void %i.axu(ptr noundef nonnull align 8 dereferenceable(8) %i.axr, ptr noundef %i.axc)
          to label %_ZN7datalog8compiler21make_dealloc_non_voidEjRNS_17instruction_blockE.exit unwind label %bb.lm, !inline_history !311

bb.lm:                                            ; preds = %bb.ll, %bb.lk, %bb.li, %bb.lg, %._crit_edge873
  %i.axv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #17
  br label %bb.mh

_ZN7datalog8compiler21make_dealloc_non_voidEjRNS_17instruction_blockE.exit: ; preds = %_ZN6vectorIPN7datalog11instructionELb0EjE9push_backERKS2_.exit.i.i, %bb.ll, %bb.lh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #17
  %i.axw = load ptr, ptr %40, align 8, !tbaa !263 ; 2 uses
  %.not.i.i594 = icmp eq ptr %i.axw, null
  br i1 %.not.i.i594, label %_ZN6vectorIjLb0EjED2Ev.exit595, label %bb.ln

bb.ln:                                            ; preds = %_ZN7datalog8compiler21make_dealloc_non_voidEjRNS_17instruction_blockE.exit
  %i.axx = getelementptr inbounds i8, ptr %i.axw, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.axx)
          to label %_ZN6vectorIjLb0EjED2Ev.exit595 unwind label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %i.axy = landingpad { ptr, i32 }
          catch ptr null
  %i.axz = extractvalue { ptr, i32 } %i.axy, 0
  call void @__clang_call_terminate(ptr %i.axz) #18
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit595:                   ; preds = %_ZN7datalog8compiler21make_dealloc_non_voidEjRNS_17instruction_blockE.exit, %bb.ln
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #17
  %i.aya = load ptr, ptr %39, align 8, !tbaa !314 ; 2 uses
  %.not.i.i596 = icmp eq ptr %i.aya, null
  br i1 %.not.i.i596, label %_ZN6vectorIN7datalog8compiler22assembling_column_infoELb0EjED2Ev.exit, label %bb.lp

bb.lp:                                            ; preds = %_ZN6vectorIjLb0EjED2Ev.exit595
  %i.ayb = getelementptr inbounds i8, ptr %i.aya, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ayb)
          to label %_ZN6vectorIN7datalog8compiler22assembling_column_infoELb0EjED2Ev.exit unwind label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.ayc = landingpad { ptr, i32 }
          catch ptr null
  %i.ayd = extractvalue { ptr, i32 } %i.ayc, 0
  call void @__clang_call_terminate(ptr %i.ayd) #18
  unreachable

_ZN6vectorIN7datalog8compiler22assembling_column_infoELb0EjED2Ev.exit: ; preds = %_ZN6vectorIjLb0EjED2Ev.exit595, %bb.lp
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #17
  store ptr null, ptr %i.o, align 8, !tbaa !400
  %i.aye = load ptr, ptr %i.sx, align 8, !tbaa !396 ; 5 uses
  %i.ayf = icmp eq ptr %i.aye, null
  br i1 %i.ayf, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i597

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i597:        ; preds = %_ZN6vectorIN7datalog8compiler22assembling_column_infoELb0EjED2Ev.exit
  %i.ayg = getelementptr inbounds i8, ptr %i.aye, i64 -4
  %i.ayh = load i32, ptr %i.ayg, align 4, !tbaa !27 ; 2 uses
  %i.ayi = zext i32 %i.ayh to i64
  %i.ayj = shl nuw nsw i64 %i.ayi, 3
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.aye, i64 %i.ayj
  %.not.i598 = icmp eq i32 %i.ayh, 0
  br i1 %.not.i598, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i599

.lr.ph.i.i599:                                    ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i597, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i602
  %.06.i.i600 = phi ptr [ %i.ayr, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i602 ], [ %i.aye, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i597 ] ; 2 uses
  %i.ayl = load ptr, ptr %.06.i.i600, align 8, !tbaa !367 ; 3 uses
  %i.aym = load ptr, ptr %26, align 8, !tbaa !423, !nonnull !62, !align !63
  %.not.i.i.i.i.i601 = icmp eq ptr %i.ayl, null
  br i1 %.not.i.i.i.i.i601, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i602, label %bb.lr

bb.lr:                                            ; preds = %.lr.ph.i.i599
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.ayl, i64 8 ; 2 uses
  %i.ayo = load i32, ptr %i.ayn, align 4, !tbaa !291
  %i.ayp = add i32 %i.ayo, -1                     ; 2 uses
  store i32 %i.ayp, ptr %i.ayn, align 4, !tbaa !291
  %i.ayq = icmp eq i32 %i.ayp, 0
  br i1 %i.ayq, label %bb.ls, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i602

bb.ls:                                            ; preds = %bb.lr
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.aym, ptr noundef nonnull %i.ayl)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i602 unwind label %bb.lu

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i602: ; preds = %bb.ls, %bb.lr, %.lr.ph.i.i599
  %i.ayr = getelementptr inbounds nuw i8, ptr %.06.i.i600, i64 8 ; 2 uses
  %i.ays = icmp ult ptr %i.ayr, %i.ayk
  br i1 %i.ays, label %.lr.ph.i.i599, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i603, !llvm.loop !424

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i603: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i602
  %.pre.i604 = load ptr, ptr %i.sx, align 8, !tbaa !396 ; 2 uses
  %.not.i.i.i605 = icmp eq ptr %.pre.i604, null
  br i1 %.not.i.i.i605, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i603, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i597
  %i.ayt = phi ptr [ %.pre.i604, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i603 ], [ %i.aye, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i597 ]
  %i.ayu = getelementptr inbounds i8, ptr %i.ayt, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ayu)
          to label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.lt

bb.lt:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i
  %i.ayv = landingpad { ptr, i32 }
          catch ptr null
  %i.ayw = extractvalue { ptr, i32 } %i.ayv, 0
  call void @__clang_call_terminate(ptr %i.ayw) #18
  unreachable
end_hunk_1
