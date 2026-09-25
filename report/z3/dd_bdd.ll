Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/dd_bdd?download=true
inline.NumInlined: 1516
inline.NumDeleted: 417
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0
%"class.std::allocator" = type { i8 }
%"class.dd::bddv" = type { %class.vector.10, ptr }
%class.vector.10 = type { ptr }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }

$__clang_call_terminate = comdat any

$_ZN14core_hashtableI18default_hash_entryIN2dd11bdd_manager8bdd_nodeEENS2_9hash_nodeENS2_7eq_nodeEE6removeERKS3_ = comdat any

$_ZN6vectorIPN2dd11bdd_manager8op_entryELb0EjED2Ev = comdat any

$_ZN6vectorIbLb0EjED2Ev = comdat any

$_ZNK2dd3bddntEv = comdat any

$_ZN2dd3bddaNERKS0_ = comdat any

$_ZN2dd3bddD2Ev = comdat any

$_ZN2dd3bddoRERKS0_ = comdat any

$_ZN2dd4bddvD2Ev = comdat any

$_ZN6vectorIN2dd3bddELb1EjE6shrinkEj = comdat any

$_ZN8rationalD2Ev = comdat any

$_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

$_ZSt11__make_heapIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ = comdat any

$_ZN6vectorIN2dd3bddELb1EjE13expand_vectorEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN17default_exceptionD2Ev = comdat any

$_ZSt8_DestroyIPN2dd3bddEEvT_S3_ = comdat any

$_ZN6vectorIN2dd3bddELb1EjE16destroy_elementsEv = comdat any

$_ZN6vectorIN2dd3bddELb1EjE9push_backERKS1_ = comdat any

$_ZSt16__do_uninit_copyIPKN2dd3bddEPS1_ET0_T_S6_S5_ = comdat any

$_ZN11mpq_managerILb1EE3addERK3mpqS3_RS1_ = comdat any

$_ZN6vectorIN2dd11bdd_manager8bdd_nodeELb0EjE13expand_vectorEv = comdat any

$_ZN14core_hashtableI14ptr_hash_entryIN2dd11bdd_manager8op_entryEENS2_10hash_entryENS2_8eq_entryEE24insert_if_not_there_coreEOPS3_RPS4_ = comdat any

$_ZN14core_hashtableI14ptr_hash_entryIN2dd11bdd_manager8op_entryEENS2_10hash_entryENS2_8eq_entryEE12expand_tableEv = comdat any

$_ZN6vectorIjLb0EjE13expand_vectorEv = comdat any

$_ZN14core_hashtableI18default_hash_entryIN2dd11bdd_manager8bdd_nodeEENS2_9hash_nodeENS2_7eq_nodeEE24insert_if_not_there_coreEOS3_RPS4_ = comdat any

$_ZN14core_hashtableI18default_hash_entryIN2dd11bdd_manager8bdd_nodeEENS2_9hash_nodeENS2_7eq_nodeEE12expand_tableEv = comdat any

$_ZN14core_hashtableI18default_hash_entryIN2dd11bdd_manager8bdd_nodeEENS2_9hash_nodeENS2_7eq_nodeEE22remove_deleted_entriesEv = comdat any

$_ZN14core_hashtableI18default_hash_entryIN2dd11bdd_manager8bdd_nodeEENS2_9hash_nodeENS2_7eq_nodeEE6insertEOS3_ = comdat any

$_ZN6vectorI7svectorIjjELb1EjE13expand_vectorEv = comdat any

$_ZN6vectorIdLb0EjE13expand_vectorEv = comdat any

$_ZN6vectorIbLb0EjE13expand_vectorEv = comdat any

$_ZN6vectorIPN2dd11bdd_manager8op_entryELb0EjE13expand_vectorEv = comdat any

$_ZN14core_hashtableI14ptr_hash_entryIN2dd11bdd_manager8op_entryEENS2_10hash_entryENS2_8eq_entryEE6insertEOPS3_ = comdat any

$_ZTIN2dd11bdd_manager7mem_outE = comdat any

$_ZTSN2dd11bdd_manager7mem_outE = comdat any

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@_ZTIN2dd11bdd_manager7mem_outE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN2dd11bdd_manager7mem_outE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN2dd11bdd_manager7mem_outE = linkonce_odr hidden constant [27 x i8] c"N2dd11bdd_manager7mem_outE\00", comdat, align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"/opt-bench/work/z3/z3/src/math/dd/dd_bdd.cpp\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"UNEXPECTED CODE WAS REACHED.\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"(bdd :gc \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" @ \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"free node is not internal \00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c" lo \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" hi \00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c" : v\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c" rc \00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"level: \00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"/opt-bench/work/z3/z3/src/math/dd/dd_bdd.h\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"Failed to verify: !m_free_nodes.contains(b)\0A\00", align 1
@_ZN8rational13g_mpq_managerE = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [43 x i8] c"Overflow encountered when expanding vector\00", align 1
@_ZTI17default_exception = external constant ptr
@.str.18 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZTV17default_exception = external constant { [6 x ptr] }, align 8
@_ZN8rational6m_zeroE = external global %class.rational, align 8
@.str.20 = private unnamed_addr constant [43 x i8] c"/opt-bench/work/z3/z3/src/util/hashtable.h\00", align 1
@"_ZTIZN2dd11bdd_manager6mk_mulERKNS_4bddvES3_E3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN2dd11bdd_manager6mk_mulERKNS_4bddvES3_E3$_0" }, align 8
@"_ZTSZN2dd11bdd_manager6mk_mulERKNS_4bddvES3_E3$_0" = internal constant [46 x i8] c"ZN2dd11bdd_manager6mk_mulERKNS_4bddvES3_E3$_0\00", align 1
@"_ZTIZN2dd11bdd_manager6mk_mulERKNS_4bddvERK7svectorIbjEE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN2dd11bdd_manager6mk_mulERKNS_4bddvERK7svectorIbjEE3$_0" }, align 8
@"_ZTSZN2dd11bdd_manager6mk_mulERKNS_4bddvERK7svectorIbjEE3$_0" = internal constant [57 x i8] c"ZN2dd11bdd_manager6mk_mulERKNS_4bddvERK7svectorIbjEE3$_0\00", align 1

@_ZN2dd11bdd_managerC1Ej = hidden unnamed_addr alias void (ptr, i32), ptr @_ZN2dd11bdd_managerC2Ej
@_ZN2dd11bdd_managerD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN2dd11bdd_managerD2Ev

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2dd11bdd_managerC2Ej(ptr noundef nonnull align 8 dereferenceable(728) initializes((0, 4), (8, 16), (24, 36)) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  store i32 -1, ptr %0, align 8, !tbaa !47
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store ptr null, ptr %i.a, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 8, ptr %i.c, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.d, align 4, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.e, align 8, !tbaa !51
  %i.f = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 128)
          to label %.lr.ph.i.i.i.i.i.i.i.preheader unwind label %bb.d ; 9 uses

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr null, ptr %i.h, align 8, !tbaa !53
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr null, ptr %i.i, align 8, !tbaa !53
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr null, ptr %i.j, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store ptr null, ptr %i.k, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store ptr null, ptr %i.l, align 8, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store ptr null, ptr %i.m, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store ptr null, ptr %i.n, align 8, !tbaa !53
  store ptr %i.f, ptr %i.b, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 8, ptr %i.p, align 8, !tbaa !55
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.q, align 4, !tbaa !56
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.r, align 8, !tbaa !57
  %i.s = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 192)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(192) %i.s, i8 0, i64 192, i1 false)
  store ptr %i.s, ptr %i.o, align 8, !tbaa !58
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 11 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false)
  invoke void @_ZN22small_object_allocatorC1EPKc(ptr noundef nonnull align 8 dereferenceable(520) %i.z, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !59
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 720
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i8 0, i64 40, i1 false)
  store i32 2, ptr %i.ai, align 8, !tbaa !60
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 724
  store i32 0, ptr %i.aj, align 4, !tbaa !61
  %.pre.pre = load ptr, ptr %i.t, align 8, !tbaa !59
  br label %.preheader86

.preheader86:                                     ; preds = %bb.c, %_ZN2dd11bdd_manager11apply_constEjjNS0_6bdd_opE.exit.2.1
  %.pre = phi ptr [ %.pre.pre, %bb.c ], [ %.pre108.1, %_ZN2dd11bdd_manager11apply_constEjjNS0_6bdd_opE.exit.2.1 ] ; 6 uses
  %.0.i.2 = phi i32 [ 0, %bb.c ], [ 1, %_ZN2dd11bdd_manager11apply_constEjjNS0_6bdd_opE.exit.2.1 ] ; 2 uses
  %i.ak = phi i1 [ true, %bb.c ], [ false, %_ZN2dd11bdd_manager11apply_constEjjNS0_6bdd_opE.exit.2.1 ] ; 2 uses
  %indvars.iv97 = phi i64 [ 0, %bb.c ], [ 1, %_ZN2dd11bdd_manager11apply_constEjjNS0_6bdd_opE.exit.2.1 ] ; 13 uses
  %i.al = or disjoint i64 %indvars.iv97, 8        ; 3 uses
  %i.am = add nuw nsw i64 %indvars.iv97, 9        ; 3 uses
  %i.an = icmp eq ptr %.pre, null
  br i1 %i.an, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.preheader, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i

bb.d:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZN14core_hashtableI14ptr_hash_entryIN2dd11bdd_manager8op_entryEENS2_10hash_entryENS2_8eq_entryEED2Ev.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZN14core_hashtableI18default_hash_entryIN2dd11bdd_manager8bdd_nodeEENS2_9hash_nodeENS2_7eq_nodeEED2Ev.exit

bb.f:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

.preheader.preheader:                             ; preds = %_ZN2dd11bdd_manager11apply_constEjjNS0_6bdd_opE.exit.2.1
  %.pre101 = load ptr, ptr %i.a, align 8, !tbaa !48
  br label %.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i:         ; preds = %.preheader86
  %i.ar = getelementptr inbounds i8, ptr %.pre, i64 -4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !62 ; 2 uses
  %i.at = zext i32 %i.as to i64
  %.not = icmp samesign ult i64 %i.al, %i.at
  br i1 %.not, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.1, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.preheader:    ; preds = %.preheader86, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i
  %.ph = phi ptr [ %.pre, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i ], [ null, %.preheader86 ]
  %.0.i16.i.i.ph = phi i32 [ %i.as, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i ], [ 0, %.preheader86 ]
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i:              ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.backedge, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.preheader
  %.pre113 = phi ptr [ %.pre, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.preheader ], [ %.be, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.backedge ] ; 2 uses
  %i.au = phi ptr [ %.ph, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.preheader ], [ %.be, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.backedge ] ; 7 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.g, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i:          ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !62
  %i.ay = zext i32 %i.ax to i64
  %.not84 = icmp samesign ult i64 %i.al, %i.ay
  br i1 %.not84, label %bb.m, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i

bb.g:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i
  %i.az = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16)
          to label %.noexc72 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc72:                                         ; preds = %bb.g
  store i32 2, ptr %i.az, align 4, !tbaa !62
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store i32 0, ptr %i.ba, align 4, !tbaa !62
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  store ptr %i.bb, ptr %i.t, align 8, !tbaa !59
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.backedge

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.backedge:     ; preds = %.noexc72, %.noexc73
  %.be = phi ptr [ %i.cc, %.noexc73 ], [ %i.bb, %.noexc72 ] ; 2 uses
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i, !llvm.loop !0

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i:   ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i
  %i.bc = getelementptr inbounds i8, ptr %i.au, i64 -8 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !62 ; 3 uses
  %i.be = mul i32 %i.bd, 3
  %i.bf = add i32 %i.be, 1
  %i.bg = lshr i32 %i.bf, 1                       ; 3 uses
  %i.bh = shl i32 %i.bg, 2
  %i.bi = add i32 %i.bh, 8                        ; 2 uses
  %.not.i = icmp ugt i32 %i.bg, %i.bd
  br i1 %.not.i, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

bb.h:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i
  %i.bj = shl i32 %i.bd, 2
  %i.bk = add i32 %i.bj, 8
  %.not27.i = icmp ugt i32 %i.bi, %i.bk
  br i1 %.not27.i, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.h, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i.1207, %bb.p, %bb.n, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i.1, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i.1.1, %bb.s, %bb.x, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i.2, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i.2.1, %bb.u
  %i.bl = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.bm, ptr %2, align 8, !tbaa !66
  %i.bn = invoke noalias noundef nonnull dereferenceable(43) ptr @_Znwm(i64 noundef 43) #26
          to label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.j ; 3 uses

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  store i64 42, ptr %i.bm, align 8, !tbaa !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(42) %i.bn, ptr noundef nonnull align 1 dereferenceable(42) @.str.17, i64 42, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 42
  store i8 0, ptr %i.bp, align 1, !tbaa !67
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.bl, align 8, !tbaa !69
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store ptr %i.bn, ptr %i.bq, align 8, !tbaa !71
  %i.bs = load i64, ptr %i.bm, align 8, !tbaa !67
  store i64 %i.bs, ptr %i.br, align 8, !tbaa !67
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 42, ptr %i.bt, align 8, !tbaa !72
  store ptr %i.bm, ptr %2, align 8, !tbaa !71
  store i64 0, ptr %i.bo, align 8, !tbaa !72
  store i8 0, ptr %i.bm, align 8, !tbaa !67
  invoke void @__cxa_throw(ptr nonnull %i.bl, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #27
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = load ptr, ptr %2, align 8, !tbaa !71    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.bm
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.i
  %i.bx = load i64, ptr %i.bm, align 8, !tbaa !67
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %.body

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @__cxa_free_exception(ptr %i.bl) #25
  br label %.body

bb.k:                                             ; preds = %bb.h
  %i.ca = zext i32 %i.bi to i64
  %i.cb = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.bc, i64 noundef %i.ca)
          to label %.noexc73 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc73:                                         ; preds = %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  store ptr %i.cc, ptr %i.t, align 8, !tbaa !59
  store i32 %i.bg, ptr %i.cb, align 4, !tbaa !62
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.backedge

bb.l:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

bb.m:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i
  %i.cd = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.ce = trunc nuw nsw i64 %i.am to i32
  store i32 %i.ce, ptr %i.cd, align 4, !tbaa !62
  %i.cf = zext i32 %.0.i16.i.i.ph to i64          ; 3 uses
  %.not1218.i.i = icmp eq i64 %i.am, %i.cf
  br i1 %.not1218.i.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.1, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.m
  %i.cg = getelementptr [4 x i8], ptr %i.au, i64 %i.cf
  %i.ch = sub nsw i64 %i.am, %i.cf
  %i.ci = shl nsw i64 %i.ch, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cg, i8 0, i64 %i.ci, i1 false), !tbaa !62
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.1

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.1:       ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i, %bb.m, %.lr.ph.preheader.i.i
  %.pre112 = phi ptr [ %.pre113, %.lr.ph.preheader.i.i ], [ %.pre113, %bb.m ], [ %.pre, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i ] ; 2 uses
  %i.cj = phi ptr [ %i.au, %.lr.ph.preheader.i.i ], [ %i.au, %bb.m ], [ %.pre, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i ] ; 6 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.al
  store i32 0, ptr %i.ck, align 4, !tbaa !62
  %i.cl = or disjoint i64 %indvars.iv97, 12       ; 4 uses
  %i.cm = add nuw nsw i64 %indvars.iv97, 13       ; 3 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cj, i64 -4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !62 ; 2 uses
  %i.cp = zext i32 %i.co to i64
  %.not.1 = icmp samesign ult i64 %i.cl, %i.cp
  br i1 %.not.1, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.2, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1.preheader

_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1.preheader: ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.1
  %i.cq = getelementptr inbounds i8, ptr %i.cj, i64 -8
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !62
  %i.cs = zext i32 %i.cr to i64
  %.not84.1189 = icmp samesign ult i64 %i.cl, %i.cs
  br i1 %.not84.1189, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1._crit_edge, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i.1

_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1._crit_edge: ; preds = %.noexc40.1, %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1.preheader
  %.pre106.lcssa = phi ptr [ %.pre112, %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1.preheader ], [ %i.dl, %.noexc40.1 ] ; 2 uses
  %.lcssa = phi ptr [ %i.cj, %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1.preheader ], [ %i.dl, %.noexc40.1 ] ; 4 uses
  %i.ct = getelementptr inbounds i8, ptr %.lcssa, i64 -4
  %i.cu = trunc nuw nsw i64 %i.cm to i32
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !62
  %i.cv = zext i32 %i.co to i64                   ; 3 uses
  %.not1218.i.i.1 = icmp eq i64 %i.cm, %i.cv
  br i1 %.not1218.i.i.1, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.2, label %.lr.ph.preheader.i.i.1

.lr.ph.preheader.i.i.1:                           ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1._crit_edge
  %i.cw = getelementptr [4 x i8], ptr %.lcssa, i64 %i.cv
  %i.cx = sub nsw i64 %i.cm, %i.cv
  %i.cy = shl nsw i64 %i.cx, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cw, i8 0, i64 %i.cy, i1 false), !tbaa !62
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.2

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i.1: ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1.preheader, %.noexc40.1
  %i.cz = phi ptr [ %i.dl, %.noexc40.1 ], [ %i.cj, %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1.preheader ]
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -8 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !62 ; 3 uses
  %i.dc = mul i32 %i.db, 3
  %i.dd = add i32 %i.dc, 1
  %i.de = lshr i32 %i.dd, 1                       ; 4 uses
  %i.df = shl i32 %i.de, 2
  %i.dg = add i32 %i.df, 8                        ; 2 uses
  %.not.i.1 = icmp ugt i32 %i.de, %i.db
  br i1 %.not.i.1, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

bb.n:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i.1
  %i.dh = shl i32 %i.db, 2
  %i.di = add i32 %i.dh, 8
  %.not27.i.1 = icmp ugt i32 %i.dg, %i.di
  br i1 %.not27.i.1, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.dj = zext i32 %i.dg to i64
  %i.dk = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.da, i64 noundef %i.dj)
          to label %.noexc40.1 unwind label %.loopexit.split-lp.loopexit.loopexit ; 2 uses

.noexc40.1:                                       ; preds = %bb.o
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 4 uses
  store ptr %i.dl, ptr %i.t, align 8, !tbaa !59
  store i32 %i.de, ptr %i.dk, align 4, !tbaa !62
  %i.dm = zext nneg i32 %i.de to i64
  %.not84.1 = icmp samesign ult i64 %i.cl, %i.dm
  br i1 %.not84.1, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1._crit_edge, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i.1, !llvm.loop !0

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.2:       ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.1, %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1._crit_edge, %.lr.ph.preheader.i.i.1
  %.pre110 = phi ptr [ %.pre106.lcssa, %.lr.ph.preheader.i.i.1 ], [ %.pre106.lcssa, %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1._crit_edge ], [ %.pre112, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.1 ] ; 2 uses
  %i.dn = phi ptr [ %.lcssa, %.lr.ph.preheader.i.i.1 ], [ %.lcssa, %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1._crit_edge ], [ %i.cj, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.1 ] ; 6 uses
  %.0.i.1 = trunc nuw nsw i64 %indvars.iv97 to i32
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.cl
  store i32 %.0.i.1, ptr %i.do, align 4, !tbaa !62
  %i.dp = or disjoint i64 %indvars.iv97, 16       ; 4 uses
  %i.dq = add nuw nsw i64 %indvars.iv97, 17       ; 3 uses
  %i.dr = getelementptr inbounds i8, ptr %i.dn, i64 -4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !62 ; 2 uses
  %i.dt = zext i32 %i.ds to i64
  %.not.2 = icmp samesign ult i64 %i.dp, %i.dt
  br i1 %.not.2, label %_ZN2dd11bdd_manager11apply_constEjjNS0_6bdd_opE.exit.2, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.2.preheader

_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.2.preheader: ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.2
  %i.du = getelementptr inbounds i8, ptr %i.dn, i64 -8
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !62
  %i.dw = zext i32 %i.dv to i64
  %.not84.2191 = icmp samesign ult i64 %i.dp, %i.dw
  br i1 %.not84.2191, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.2._crit_edge, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i.2

_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.2._crit_edge: ; preds = %.noexc40.2, %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.2.preheader
  %.pre107.lcssa = phi ptr [ %.pre110, %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.2.preheader ], [ %i.ih, %.noexc40.2 ] ; 2 uses
  %.lcssa184 = phi ptr [ %i.dn, %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.2.preheader ], [ %i.ih, %.noexc40.2 ] ; 4 uses
  %i.dx = getelementptr inbounds i8, ptr %.lcssa184, i64 -4
  %i.dy = trunc nuw nsw i64 %i.dq to i32
  store i32 %i.dy, ptr %i.dx, align 4, !tbaa !62
  %i.dz = zext i32 %i.ds to i64                   ; 3 uses
  %.not1218.i.i.2 = icmp eq i64 %i.dq, %i.dz
  br i1 %.not1218.i.i.2, label %_ZN2dd11bdd_manager11apply_constEjjNS0_6bdd_opE.exit.2, label %.lr.ph.preheader.i.i.2

.lr.ph.preheader.i.i.2:                           ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.2._crit_edge
  %i.ea = getelementptr [4 x i8], ptr %.lcssa184, i64 %i.dz
  %i.eb = sub nsw i64 %i.dq, %i.dz
  %i.ec = shl nsw i64 %i.eb, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ea, i8 0, i64 %i.ec, i1 false), !tbaa !62
  br label %_ZN2dd11bdd_manager11apply_constEjjNS0_6bdd_opE.exit.2

_ZN2dd11bdd_manager11apply_constEjjNS0_6bdd_opE.exit.2: ; preds = %.lr.ph.preheader.i.i.2, %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.2._crit_edge, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.2
  %.pre108 = phi ptr [ %.pre107.lcssa, %.lr.ph.preheader.i.i.2 ], [ %.pre107.lcssa, %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.2._crit_edge ], [ %.pre110, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.2 ] ; 2 uses
  %i.ed = phi ptr [ %.lcssa184, %.lr.ph.preheader.i.i.2 ], [ %.lcssa184, %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.2._crit_edge ], [ %i.dn, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.2 ] ; 5 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.dp
  store i32 %.0.i.2, ptr %i.ee, align 4, !tbaa !62
  %i.ef = or disjoint i64 %indvars.iv97, 10       ; 3 uses
  %i.eg = add nuw nsw i64 %indvars.iv97, 11       ; 3 uses
  %i.eh = icmp eq ptr %i.ed, null
  br i1 %i.eh, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.preheader.1, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.1204

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.1204:    ; preds = %_ZN2dd11bdd_manager11apply_constEjjNS0_6bdd_opE.exit.2
  %i.ei = getelementptr inbounds i8, ptr %i.ed, i64 -4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !62 ; 2 uses
  %i.ek = zext i32 %i.ej to i64
  %.not.1203 = icmp samesign ult i64 %i.ef, %i.ek
  br i1 %.not.1203, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.1.1, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.preheader.1

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.preheader.1:  ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.1204, %_ZN2dd11bdd_manager11apply_constEjjNS0_6bdd_opE.exit.2
  %.ph.1 = phi ptr [ %i.ed, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.1204 ], [ null, %_ZN2dd11bdd_manager11apply_constEjjNS0_6bdd_opE.exit.2 ]
  %.0.i16.i.i.ph.1 = phi i32 [ %i.ej, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.1204 ], [ 0, %_ZN2dd11bdd_manager11apply_constEjjNS0_6bdd_opE.exit.2 ]
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.1

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.1:            ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.backedge.1, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.preheader.1
  %.pre113.1 = phi ptr [ %.pre108, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.preheader.1 ], [ %.be.1, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.backedge.1 ] ; 2 uses
  %i.el = phi ptr [ %.ph.1, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.preheader.1 ], [ %.be.1, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.backedge.1 ] ; 7 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %bb.w, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1

_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1:        ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.1
  %i.en = getelementptr inbounds i8, ptr %i.el, i64 -8
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !62
  %i.ep = zext i32 %i.eo to i64
  %.not84.1205 = icmp samesign ult i64 %i.ef, %i.ep
  br i1 %.not84.1205, label %bb.r, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i.1207

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i.1207: ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1
  %i.eq = getelementptr inbounds i8, ptr %i.el, i64 -8 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !62 ; 3 uses
  %i.es = mul i32 %i.er, 3
  %i.et = add i32 %i.es, 1
  %i.eu = lshr i32 %i.et, 1                       ; 3 uses
  %i.ev = shl i32 %i.eu, 2
  %i.ew = add i32 %i.ev, 8                        ; 2 uses
  %.not.i.1206 = icmp ugt i32 %i.eu, %i.er
  br i1 %.not.i.1206, label %bb.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

bb.p:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i.1207
  %i.ex = shl i32 %i.er, 2
  %i.ey = add i32 %i.ex, 8
  %.not27.i.1208 = icmp ugt i32 %i.ew, %i.ey
  br i1 %.not27.i.1208, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

bb.q:                                             ; preds = %bb.p
  %i.ez = zext i32 %i.ew to i64
  %i.fa = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.eq, i64 noundef %i.ez)
          to label %.noexc73.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc73.1:                                       ; preds = %bb.q
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  store ptr %i.fb, ptr %i.t, align 8, !tbaa !59
  store i32 %i.eu, ptr %i.fa, align 4, !tbaa !62
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i.backedge.1

bb.r:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1
  %i.fc = getelementptr inbounds i8, ptr %i.el, i64 -4
  %i.fd = trunc nuw nsw i64 %i.eg to i32
  store i32 %i.fd, ptr %i.fc, align 4, !tbaa !62
  %i.fe = zext i32 %.0.i16.i.i.ph.1 to i64        ; 3 uses
  %.not1218.i.i.1209 = icmp eq i64 %i.eg, %i.fe
  br i1 %.not1218.i.i.1209, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.1.1, label %.lr.ph.preheader.i.i.1210

.lr.ph.preheader.i.i.1210:                        ; preds = %bb.r
  %i.ff = getelementptr [4 x i8], ptr %i.el, i64 %i.fe
  %i.fg = sub nsw i64 %i.eg, %i.fe
  %i.fh = shl nsw i64 %i.fg, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ff, i8 0, i64 %i.fh, i1 false), !tbaa !62
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.1.1

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.1.1:     ; preds = %.lr.ph.preheader.i.i.1210, %bb.r, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.1204
  %.pre112.1 = phi ptr [ %.pre113.1, %.lr.ph.preheader.i.i.1210 ], [ %.pre113.1, %bb.r ], [ %.pre108, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.1204 ] ; 2 uses
  %i.fi = phi ptr [ %i.el, %.lr.ph.preheader.i.i.1210 ], [ %i.el, %bb.r ], [ %i.ed, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.1204 ] ; 6 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.ef
  store i32 %.0.i.2, ptr %i.fj, align 4, !tbaa !62
  %i.fk = or disjoint i64 %indvars.iv97, 14       ; 4 uses
  %i.fl = add nuw nsw i64 %indvars.iv97, 15       ; 3 uses
  %i.fm = getelementptr inbounds i8, ptr %i.fi, i64 -4
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !62 ; 2 uses
  %i.fo = zext i32 %i.fn to i64
  %.not.1.1 = icmp samesign ult i64 %i.fk, %i.fo
  br i1 %.not.1.1, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.2.1, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1.preheader.1

_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1.preheader.1: ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.1.1
  %i.fp = getelementptr inbounds i8, ptr %i.fi, i64 -8
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !62
  %i.fr = zext i32 %i.fq to i64
  %.not84.1189.1 = icmp samesign ult i64 %i.fk, %i.fr
  br i1 %.not84.1189.1, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1._crit_edge.1, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i.1.1

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i.1.1: ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1.preheader.1, %.noexc40.1.1
  %i.fs = phi ptr [ %i.ge, %.noexc40.1.1 ], [ %i.fi, %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1.preheader.1 ]
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 -8 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !62 ; 3 uses
  %i.fv = mul i32 %i.fu, 3
  %i.fw = add i32 %i.fv, 1
  %i.fx = lshr i32 %i.fw, 1                       ; 4 uses
  %i.fy = shl i32 %i.fx, 2
  %i.fz = add i32 %i.fy, 8                        ; 2 uses
  %.not.i.1.1 = icmp ugt i32 %i.fx, %i.fu
  br i1 %.not.i.1.1, label %bb.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

bb.s:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i.1.1
  %i.ga = shl i32 %i.fu, 2
  %i.gb = add i32 %i.ga, 8
  %.not27.i.1.1 = icmp ugt i32 %i.fz, %i.gb
  br i1 %.not27.i.1.1, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.gc = zext i32 %i.fz to i64
  %i.gd = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.ft, i64 noundef %i.gc)
          to label %.noexc40.1.1 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp ; 2 uses

.noexc40.1.1:                                     ; preds = %bb.t
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8 ; 4 uses
  store ptr %i.ge, ptr %i.t, align 8, !tbaa !59
  store i32 %i.fx, ptr %i.gd, align 4, !tbaa !62
  %i.gf = zext nneg i32 %i.fx to i64
  %.not84.1.1 = icmp samesign ult i64 %i.fk, %i.gf
  br i1 %.not84.1.1, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1._crit_edge.1, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i.1.1, !llvm.loop !0

_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1._crit_edge.1: ; preds = %.noexc40.1.1, %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1.preheader.1
  %.pre106.lcssa.1 = phi ptr [ %.pre112.1, %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1.preheader.1 ], [ %i.ge, %.noexc40.1.1 ] ; 2 uses
  %.lcssa.1 = phi ptr [ %i.fi, %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1.preheader.1 ], [ %i.ge, %.noexc40.1.1 ] ; 4 uses
  %i.gg = getelementptr inbounds i8, ptr %.lcssa.1, i64 -4
  %i.gh = trunc nuw nsw i64 %i.fl to i32
  store i32 %i.gh, ptr %i.gg, align 4, !tbaa !62
  %i.gi = zext i32 %i.fn to i64                   ; 3 uses
  %.not1218.i.i.1.1 = icmp eq i64 %i.fl, %i.gi
  br i1 %.not1218.i.i.1.1, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.2.1, label %.lr.ph.preheader.i.i.1.1

.lr.ph.preheader.i.i.1.1:                         ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1._crit_edge.1
  %i.gj = getelementptr [4 x i8], ptr %.lcssa.1, i64 %i.gi
  %i.gk = sub nsw i64 %i.fl, %i.gi
  %i.gl = shl nsw i64 %i.gk, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.gj, i8 0, i64 %i.gl, i1 false), !tbaa !62
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.2.1

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.2.1:     ; preds = %.lr.ph.preheader.i.i.1.1, %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1._crit_edge.1, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.1.1
  %.pre110.1 = phi ptr [ %.pre106.lcssa.1, %.lr.ph.preheader.i.i.1.1 ], [ %.pre106.lcssa.1, %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1._crit_edge.1 ], [ %.pre112.1, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.1.1 ] ; 2 uses
  %i.gm = phi ptr [ %.lcssa.1, %.lr.ph.preheader.i.i.1.1 ], [ %.lcssa.1, %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.1._crit_edge.1 ], [ %i.fi, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.1.1 ] ; 6 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %i.fk
  store i32 1, ptr %i.gn, align 4, !tbaa !62
  %i.go = or disjoint i64 %indvars.iv97, 18       ; 4 uses
  %i.gp = add nuw nsw i64 %indvars.iv97, 19       ; 3 uses
  %i.gq = getelementptr inbounds i8, ptr %i.gm, i64 -4
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !62 ; 2 uses
  %i.gs = zext i32 %i.gr to i64
  %.not.2.1 = icmp samesign ult i64 %i.go, %i.gs
  br i1 %.not.2.1, label %_ZN2dd11bdd_manager11apply_constEjjNS0_6bdd_opE.exit.2.1, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.2.preheader.1

_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.2.preheader.1: ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.2.1
  %i.gt = getelementptr inbounds i8, ptr %i.gm, i64 -8
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !62
  %i.gv = zext i32 %i.gu to i64
  %.not84.2191.1 = icmp samesign ult i64 %i.go, %i.gv
  br i1 %.not84.2191.1, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.2._crit_edge.1, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i.2.1

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i.2.1: ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.2.preheader.1, %.noexc40.2.1
  %i.gw = phi ptr [ %i.hi, %.noexc40.2.1 ], [ %i.gm, %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.2.preheader.1 ]
end_hunk_0
