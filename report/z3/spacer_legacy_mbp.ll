Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/spacer_legacy_mbp?download=true
inline.NumInlined: 152
inline.NumDeleted: 95
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%class.obj_ref = type { ptr, ptr }
%class.th_rewriter = type { ptr, %class.params_ref }
%class.params_ref = type { ptr }
%class.qe_lite = type { ptr }
%class.ref_vector = type { %class.ref_vector_core }
%class.ref_vector_core = type { %class.ref_manager_wrapper, %class.ptr_vector.21 }
%class.ref_manager_wrapper = type { ptr }
%class.ptr_vector.21 = type { %class.vector.22 }
%class.vector.22 = type { ptr }
%class.expr_substitution = type <{ ptr, %class.obj_map.23, %class.scoped_ptr, %class.scoped_ptr.28, i8, [7 x i8] }>
%class.obj_map.23 = type { %class.core_hashtable.24 }
%class.core_hashtable.24 = type <{ ptr, i32, i32, i32, [4 x i8] }>
%class.scoped_ptr = type { ptr }
%class.scoped_ptr.28 = type { ptr }
%class.obj_ref.29 = type { ptr, ptr }
%"class.model::scoped_model_completion" = type { i8, ptr }
%class.scoped_ptr.51 = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }

$_ZN7obj_refI4expr11ast_managerED2Ev = comdat any

$_ZN10scoped_ptrI13expr_replacerED2Ev = comdat any

$_ZN5model23scoped_model_completionD2Ev = comdat any

$_ZN7obj_refI3app11ast_managerED2Ev = comdat any

$_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN6vectorIP3appLb0EjE13expand_vectorEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN17default_exceptionD2Ev = comdat any

@.str = private unnamed_addr constant [43 x i8] c"Overflow encountered when expanding vector\00", align 1
@_ZTI17default_exception = external constant ptr
@.str.1 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZTV17default_exception = external constant { [6 x ptr] }, align 8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6spacer10qe_projectER11ast_managerR10ref_vectorI3appS0_ER7obj_refI4exprS0_ER3refI5modelER8expr_map(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(64) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.obj_ref, align 8             ; 6 uses
  %6 = alloca %class.th_rewriter, align 8         ; 8 uses
  %7 = alloca %class.params_ref, align 8          ; 7 uses
  %8 = alloca %class.params_ref, align 8          ; 7 uses
  %9 = alloca %class.qe_lite, align 8             ; 7 uses
  %10 = alloca %class.ref_vector, align 8         ; 8 uses
  %11 = alloca %class.expr_substitution, align 8  ; 9 uses
  %12 = alloca %class.obj_ref.29, align 8         ; 8 uses
  %13 = alloca %class.obj_ref, align 8            ; 7 uses
  %14 = alloca %"class.model::scoped_model_completion", align 8 ; 7 uses
  %15 = alloca %class.obj_ref, align 8            ; 5 uses
  %16 = alloca %class.scoped_ptr.51, align 8      ; 5 uses
  %17 = alloca %class.params_ref, align 8         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store ptr null, ptr %7, align 8, !tbaa !57
  invoke void @_ZN11th_rewriterC1ER11ast_managerRK10params_ref(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store ptr null, ptr %8, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  invoke void @_ZN7qe_liteC1ER11ast_managerRK10params_refb(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull align 8 dereferenceable(8) %8, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7qe_liteclER10ref_vectorI3app11ast_managerER7obj_refI4exprS2_E(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.d unwind label %bb.k

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN11th_rewriterclER7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit: ; preds = %bb.e
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !14
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.g = ptrtoint ptr %0 to i64
  store i64 %i.g, ptr %10, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 9 uses
  store ptr null, ptr %i.h, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  invoke void @_ZN17expr_substitutionC1ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(49) %11, ptr noundef nonnull align 8 dereferenceable(952) %0)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !117
  %i.k = invoke noundef ptr @_ZN11ast_manager11mk_assertedEP4expr(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef %i.j)
          to label %bb.h unwind label %bb.m       ; 5 uses

bb.h:                                             ; preds = %bb.g
  store ptr %i.k, ptr %12, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %0, ptr %i.l, align 8, !tbaa !58
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i:          ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !23
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !23
  br label %_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit

_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit:   ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #14
  store ptr null, ptr %13, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  store ptr %0, ptr %i.p, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #14
  %i.q = load ptr, ptr %3, align 8, !tbaa !119    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 128 ; 2 uses
  %i.s = invoke noundef zeroext i1 @_ZNK15model_evaluator20get_model_completionEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit
  %i.t = zext i1 %i.s to i8
  store i8 %i.t, ptr %14, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.u, align 8, !tbaa !120
  invoke void @_ZN15model_evaluator20set_model_completionEb(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i1 noundef zeroext true)
          to label %_ZN5model23scoped_model_completionC2ERS_b.exit.preheader unwind label %bb.n

_ZN5model23scoped_model_completionC2ERS_b.exit.preheader: ; preds = %.noexc
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.critedge, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %_ZN5model23scoped_model_completionC2ERS_b.exit.preheader, %_ZN5model23scoped_model_completionC2ERS_b.exit
  %i.x = phi ptr [ %i.by, %_ZN5model23scoped_model_completionC2ERS_b.exit ], [ %i.k, %_ZN5model23scoped_model_completionC2ERS_b.exit.preheader ] ; 4 uses
  %i.y = phi ptr [ %i.bz, %_ZN5model23scoped_model_completionC2ERS_b.exit ], [ null, %_ZN5model23scoped_model_completionC2ERS_b.exit.preheader ] ; 5 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN5model23scoped_model_completionC2ERS_b.exit ], [ 0, %_ZN5model23scoped_model_completionC2ERS_b.exit.preheader ] ; 6 uses
  %i.z = phi ptr [ %i.ca, %_ZN5model23scoped_model_completionC2ERS_b.exit ], [ %i.v, %_ZN5model23scoped_model_completionC2ERS_b.exit.preheader ] ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !14
  %i.ac = zext i32 %i.ab to i64
  %i.ad = icmp samesign ult i64 %indvars.iv, %i.ac
  br i1 %i.ad, label %bb.p, label %.critedge

bb.i:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %bb.br

bb.j:                                             ; preds = %bb.b
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.k:                                             ; preds = %bb.d, %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.l:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.m:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.n:                                             ; preds = %.noexc, %_ZN7obj_refI3app11ast_managerEC2EPS0_RS1_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.o:                                             ; preds = %bb.ab, %bb.w, %bb.p
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.p:                                             ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !30
  %i.an = invoke noundef zeroext i1 @_ZNK11ast_manager7is_boolEPK4expr(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef %i.am)
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p
  br i1 %i.an, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #14
  %i.ao = load ptr, ptr %3, align 8, !tbaa !119
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !30
  invoke void @_ZN5modelclEP4expr(ptr dead_on_unwind nonnull writable sret(%class.obj_ref) align 8 %15, ptr noundef nonnull align 8 dereferenceable(160) %i.ao, ptr noundef %i.ar)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %bb.r
  %.not.i.i62 = icmp eq ptr %i.y, null
  br i1 %.not.i.i62, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = load ptr, ptr %i.p, align 8, !tbaa !31, !nonnull !32, !align !33
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !23
  %i.av = add i32 %i.au, -1                       ; 2 uses
  store i32 %i.av, ptr %i.at, align 4, !tbaa !23
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.as, ptr noundef nonnull %i.y)
          to label %._crit_edge unwind label %bb.v

._crit_edge:                                      ; preds = %bb.u
  %.pre = load ptr, ptr %12, align 8, !tbaa !21
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #15
  unreachable

bb.w:                                             ; preds = %._crit_edge, %bb.s, %bb.t
  %i.az = phi ptr [ %.pre, %._crit_edge ], [ %i.x, %bb.s ], [ %i.x, %bb.t ] ; 2 uses
  %i.ba = load ptr, ptr %15, align 8, !tbaa !26   ; 3 uses
  store ptr %i.ba, ptr %13, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !30
  invoke void @_ZN17expr_substitution6insertEP4exprS1_P3appPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(49) %11, ptr noundef %i.bd, ptr noundef %i.ba, ptr noundef %i.az, ptr noundef null)
          to label %_ZN5model23scoped_model_completionC2ERS_b.exit unwind label %bb.o

bb.x:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  br label %bb.bl

bb.y:                                             ; preds = %bb.q
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !30 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !23
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !23
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.z, %bb.y
  %i.bl = load ptr, ptr %i.h, align 8, !tbaa !13  ; 4 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !14 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !14
  %i.br = icmp eq i32 %i.bo, %i.bq
  br i1 %i.br, label %bb.ab, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

bb.ab:                                            ; preds = %bb.aa, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %.noexc64 unwind label %bb.o

.noexc64:                                         ; preds = %bb.ab
  %.pre.i.i = load ptr, ptr %i.h, align 8, !tbaa !13 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !14
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit: ; preds = %bb.aa, %.noexc64
  %i.bs = phi i32 [ %.pre2.i.i, %.noexc64 ], [ %i.bo, %bb.aa ] ; 2 uses
  %i.bt = phi ptr [ %.pre.i.i, %.noexc64 ], [ %i.bl, %bb.aa ] ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -4
  %i.bv = zext i32 %i.bs to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bv
  store ptr %i.bh, ptr %i.bw, align 8, !tbaa !30
  %i.bx = add i32 %i.bs, 1
  store i32 %i.bx, ptr %i.bu, align 4, !tbaa !14
  br label %_ZN5model23scoped_model_completionC2ERS_b.exit

_ZN5model23scoped_model_completionC2ERS_b.exit:   ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit, %bb.w
  %i.by = phi ptr [ %i.x, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ], [ %i.az, %bb.w ] ; 2 uses
  %i.bz = phi ptr [ %i.y, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit ], [ %i.ba, %bb.w ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %.critedge, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, !llvm.loop !51

.critedge:                                        ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %_ZN5model23scoped_model_completionC2ERS_b.exit, %_ZN5model23scoped_model_completionC2ERS_b.exit.preheader
  %18 = phi ptr [ %i.k, %_ZN5model23scoped_model_completionC2ERS_b.exit.preheader ], [ %i.x, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ], [ %i.by, %_ZN5model23scoped_model_completionC2ERS_b.exit ] ; 2 uses
  %i.cc = phi ptr [ null, %_ZN5model23scoped_model_completionC2ERS_b.exit.preheader ], [ %i.y, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ], [ %i.bz, %_ZN5model23scoped_model_completionC2ERS_b.exit ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !123
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.aq, label %bb.ac

bb.ac:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  store ptr null, ptr %17, align 8, !tbaa !57
  %i.cg = invoke noundef ptr @_Z21mk_expr_simp_replacerR11ast_managerRK10params_ref(ptr noundef nonnull align 8 dereferenceable(952) %0, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.ad unwind label %bb.an     ; 9 uses

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.cg, ptr %16, align 8, !tbaa !37
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !39
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull %11)
          to label %bb.ae unwind label %bb.ao

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.ck = load ptr, ptr %2, align 8, !tbaa !26    ; 6 uses
  %i.cl = load ptr, ptr %i.cg, align 8, !tbaa !39
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = invoke noundef nonnull align 8 dereferenceable(952) ptr %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %i.cg)
          to label %.noexc65 unwind label %bb.ao, !inline_history !52 ; 2 uses

.noexc65:                                         ; preds = %bb.ae
  store ptr %i.ck, ptr %5, align 8, !tbaa !26
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !58
  %.not.i.i.i = icmp eq ptr %i.ck, null           ; 2 uses
  br i1 %.not.i.i.i, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i:        ; preds = %.noexc65
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !23
  %i.cs = add i32 %i.cr, 1
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !23
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i, %.noexc65
  invoke void @_ZN13expr_replacerclEP4exprR7obj_refIS0_11ast_managerE(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.af unwind label %bb.aj

bb.af:                                            ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i
  br i1 %.not.i.i.i, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !23
  %i.cv = add i32 %i.cu, -1                       ; 2 uses
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !23
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.co, ptr noundef nonnull %i.ck)
          to label %bb.ak unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #15
  unreachable

bb.aj:                                            ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %.body

bb.ak:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  invoke void @_ZN11th_rewriterclER7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.da = load ptr, ptr %i.cg, align 8, !tbaa !39
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cg) #14, !inline_history !53
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cg)
          to label %_ZN10scoped_ptrI13expr_replacerED2Ev.exit unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  %i.dd = extractvalue { ptr, i32 } %i.dc, 0
  call void @__clang_call_terminate(ptr %i.dd) #15
  unreachable

_ZN10scoped_ptrI13expr_replacerED2Ev.exit:        ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  br label %bb.aq

.loopexit:                                        ; preds = %bb.az
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

.loopexit.split-lp:                               ; preds = %bb.av
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.an:                                            ; preds = %bb.ac
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #14
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ae, %bb.ak, %bb.ad
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.aj, %bb.ao
  %eh.lpad-body = phi { ptr, i32 } [ %i.df, %bb.ao ], [ %i.cz, %bb.aj ]
  call void @_ZN10scoped_ptrI13expr_replacerED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #14
  br label %bb.ap

bb.ap:                                            ; preds = %.body, %bb.an
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.de, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #14
  br label %bb.bl

bb.aq:                                            ; preds = %_ZN10scoped_ptrI13expr_replacerED2Ev.exit, %.critedge
  %i.dg = load ptr, ptr %i.h, align 8, !tbaa !13  ; 2 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit66.thread, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit66

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit66: ; preds = %bb.aq
  %i.di = getelementptr inbounds i8, ptr %i.dg, i64 -4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !14
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit66.thread, label %bb.ar

bb.ar:                                            ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit66
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 4 uses
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !124 ; 2 uses
  store i32 0, ptr %i.dl, align 8, !tbaa !124
  %i.dn = load ptr, ptr %3, align 8, !tbaa !119
  invoke void @_ZN9spacer_qe13arith_projectER5modelR10ref_vectorI3app11ast_managerER7obj_refI4exprS4_ER8expr_map(ptr noundef nonnull align 8 dereferenceable(160) %i.dn, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 %i.dm, ptr %i.dl, align 8, !tbaa !124
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit66.thread

bb.at:                                            ; preds = %bb.ar
  %i.do = landingpad { ptr, i32 }
          cleanup
  store i32 %i.dm, ptr %i.dl, align 8, !tbaa !124
  br label %bb.bl

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit66.thread: ; preds = %bb.aq, %bb.as, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit66
  %i.dp = load ptr, ptr %i.a, align 8, !tbaa !13  ; 5 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i

_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i:            ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit66.thread
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 -4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !14 ; 2 uses
  %i.dt = zext i32 %i.ds to i64
  %i.du = shl nuw nsw i64 %i.dt, 3
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.du
  %.not.i = icmp eq i32 %i.ds, 0
  br i1 %.not.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.06.i.i = phi ptr [ %i.ec, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i ], [ %i.dp, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.dw = load ptr, ptr %.06.i.i, align 8, !tbaa !30 ; 3 uses
  %i.dx = load ptr, ptr %1, align 8, !tbaa !41, !nonnull !32, !align !33
  %.not.i.i.i.i.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !23
  %i.ea = add i32 %i.dz, -1                       ; 2 uses
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !23
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.av, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.dx, ptr noundef nonnull %i.dw)
          to label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i unwind label %.loopexit.split-lp

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i: ; preds = %bb.av, %bb.au, %.lr.ph.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.ed = icmp ult ptr %i.ec, %i.dv
  br i1 %i.ed, label %.lr.ph.i.i, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, !llvm.loop !0

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !13 ; 2 uses
  %.not.i.i67 = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i67, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i
  %i.ee = phi ptr [ %.pre.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ %i.dp, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i ] ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -4
  store i32 0, ptr %i.ef, align 4, !tbaa !14
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit66.thread
  %i.eg = phi ptr [ %i.ee, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i ], [ null, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i ], [ null, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit66.thread ]
  %i.eh = load ptr, ptr %i.h, align 8, !tbaa !13  ; 2 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i
  %i.ej = phi ptr [ %i.fa, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ], [ %i.eg, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit ] ; 4 uses
  %i.ek = phi ptr [ %i.fb, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ], [ %i.eh, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i ], [ 0, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit ] ; 3 uses
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -4
  %i.em = load i32, ptr %i.el, align 4, !tbaa !14
  %i.en = zext i32 %i.em to i64
  %i.eo = icmp samesign ult i64 %indvars.iv.i, %i.en
  br i1 %i.eo, label %bb.aw, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit

bb.aw:                                            ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv.i
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !30 ; 3 uses
  %.not.i.i.i.i.i69 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i.i.i69, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !23
  %i.et = add i32 %i.es, 1
  store i32 %i.et, ptr %i.er, align 4, !tbaa !23
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i: ; preds = %bb.ax, %bb.aw
  %i.eu = icmp eq ptr %i.ej, null
  br i1 %i.eu, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  %i.ev = getelementptr inbounds i8, ptr %i.ej, i64 -4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !14 ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %i.ej, i64 -8
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !14
  %i.ez = icmp eq i32 %i.ew, %i.ey
  br i1 %i.ez, label %bb.az, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i

bb.az:                                            ; preds = %bb.ay, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i
  invoke void @_ZN6vectorIP3appLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc71 unwind label %.loopexit

.noexc71:                                         ; preds = %bb.az
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !13 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !14
  %.pre.i70 = load ptr, ptr %i.h, align 8, !tbaa !13
  br label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i: ; preds = %.noexc71, %bb.ay
  %i.fa = phi ptr [ %.pre.i.i.i, %.noexc71 ], [ %i.ej, %bb.ay ] ; 3 uses
  %i.fb = phi ptr [ %.pre.i70, %.noexc71 ], [ %i.ek, %bb.ay ] ; 2 uses
  %i.fc = phi i32 [ %.pre2.i.i.i, %.noexc71 ], [ %i.ew, %bb.ay ] ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %i.fa, i64 -4
  %i.fe = zext i32 %i.fc to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fe
  store ptr %i.eq, ptr %i.ff, align 8, !tbaa !30
  %i.fg = add i32 %i.fc, 1
  store i32 %i.fg, ptr %i.fd, align 4, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.fh = icmp eq ptr %i.fb, null
  br i1 %i.fh, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, !llvm.loop !54

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE9push_backEPS0_.exit.i, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.i, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5resetEv.exit
  %i.fi = load ptr, ptr %i.u, align 8, !tbaa !42, !nonnull !32, !align !33
  %i.fj = load i8, ptr %14, align 8, !tbaa !29, !range !43, !noundef !32
  %i.fk = trunc nuw i8 %i.fj to i1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 128
  invoke void @_ZN15model_evaluator20set_model_completionEb(ptr noundef nonnull align 8 dereferenceable(8) %i.fl, i1 noundef zeroext %i.fk)
          to label %_ZN5model23scoped_model_completionD2Ev.exit unwind label %bb.ba

bb.ba:                                            ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  call void @__clang_call_terminate(ptr %i.fn) #15
  unreachable

_ZN5model23scoped_model_completionD2Ev.exit:      ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE6appendERKS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  %.not.i.i72 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i72, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit73, label %bb.bb

bb.bb:                                            ; preds = %_ZN5model23scoped_model_completionD2Ev.exit
  %i.fo = load ptr, ptr %i.p, align 8, !tbaa !31, !nonnull !32, !align !33
  %i.fp = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !23
  %i.fr = add i32 %i.fq, -1                       ; 2 uses
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !23
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.bc, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit73

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.fo, ptr noundef nonnull %i.cc)
          to label %._ZN7obj_refI4expr11ast_managerED2Ev.exit73_crit_edge unwind label %bb.bd

._ZN7obj_refI4expr11ast_managerED2Ev.exit73_crit_edge: ; preds = %bb.bc
  %.pre89 = load ptr, ptr %12, align 8, !tbaa !21
  br label %_ZN7obj_refI4expr11ast_managerED2Ev.exit73

bb.bd:                                            ; preds = %bb.bc
  %i.ft = landingpad { ptr, i32 }
          catch ptr null
  %i.fu = extractvalue { ptr, i32 } %i.ft, 0
  call void @__clang_call_terminate(ptr %i.fu) #15
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit73:       ; preds = %._ZN7obj_refI4expr11ast_managerED2Ev.exit73_crit_edge, %_ZN5model23scoped_model_completionD2Ev.exit, %bb.bb
  %19 = phi ptr [ %.pre89, %._ZN7obj_refI4expr11ast_managerED2Ev.exit73_crit_edge ], [ %18, %_ZN5model23scoped_model_completionD2Ev.exit ], [ %18, %bb.bb ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  %.not.i.i74 = icmp eq ptr %19, null
  br i1 %.not.i.i74, label %_ZN7obj_refI3app11ast_managerED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit73
  %i.fv = load ptr, ptr %i.l, align 8, !tbaa !44, !nonnull !32, !align !33
  %i.fw = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !23
  %i.fy = add i32 %i.fx, -1                       ; 2 uses
  store i32 %i.fy, ptr %i.fw, align 4, !tbaa !23
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %bb.bf, label %_ZN7obj_refI3app11ast_managerED2Ev.exit

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.fv, ptr noundef nonnull %19)
          to label %_ZN7obj_refI3app11ast_managerED2Ev.exit unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ga = landingpad { ptr, i32 }
          catch ptr null
  %i.gb = extractvalue { ptr, i32 } %i.ga, 0
  call void @__clang_call_terminate(ptr %i.gb) #15
  unreachable

_ZN7obj_refI3app11ast_managerED2Ev.exit:          ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit73, %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @_ZN17expr_substitutionD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %11) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  %i.gc = load ptr, ptr %i.h, align 8, !tbaa !13  ; 5 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i75

_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i75:          ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit
  %i.ge = getelementptr inbounds i8, ptr %i.gc, i64 -4
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !14 ; 2 uses
  %i.gg = zext i32 %i.gf to i64
  %i.gh = shl nuw nsw i64 %i.gg, 3
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gh
  %.not.i76 = icmp eq i32 %i.gf, 0
  br i1 %.not.i76, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i84, label %.lr.ph.i.i77

.lr.ph.i.i77:                                     ; preds = %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i75, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i80
  %.06.i.i78 = phi ptr [ %i.gp, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i80 ], [ %i.gc, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i75 ] ; 2 uses
  %i.gj = load ptr, ptr %.06.i.i78, align 8, !tbaa !30 ; 3 uses
  %i.gk = load ptr, ptr %10, align 8, !tbaa !41, !nonnull !32, !align !33
  %.not.i.i.i.i.i79 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i.i.i79, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i80, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.i77
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !23
  %i.gn = add i32 %i.gm, -1                       ; 2 uses
  store i32 %i.gn, ptr %i.gl, align 4, !tbaa !23
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %bb.bi, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i80

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.gk, ptr noundef nonnull %i.gj)
          to label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i80 unwind label %bb.bk

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i80: ; preds = %bb.bi, %bb.bh, %.lr.ph.i.i77
  %i.gp = getelementptr inbounds nuw i8, ptr %.06.i.i78, i64 8 ; 2 uses
  %i.gq = icmp ult ptr %i.gp, %i.gi
  br i1 %i.gq, label %.lr.ph.i.i77, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i81, !llvm.loop !0

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i81: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE7dec_refEPS0_.exit.i.i80
  %.pre.i82 = load ptr, ptr %i.h, align 8, !tbaa !13 ; 2 uses
  %.not.i.i.i83 = icmp eq ptr %.pre.i82, null
  br i1 %.not.i.i.i83, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i84

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i84: ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i81, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i75
  %i.gr = phi ptr [ %.pre.i82, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i81 ], [ %i.gc, %_ZNK6vectorIP3appLb0EjE4sizeEv.exit.i75 ]
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gs)
          to label %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit unwind label %bb.bj

bb.bj:                                            ; preds = %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i84
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #15
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.gv = landingpad { ptr, i32 }
          catch ptr null
  %i.gw = extractvalue { ptr, i32 } %i.gv, 0
  call void @__clang_call_terminate(ptr %i.gw) #15
  unreachable

_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit: ; preds = %_ZN7obj_refI3app11ast_managerED2Ev.exit, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.i81, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE13dec_range_refEPKPS0_S7_.exit.thread7.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread

bb.bl:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.at, %bb.o, %bb.x, %bb.ap
  %.pn51.pn = phi { ptr, i32 } [ %.pn, %bb.ap ], [ %i.do, %bb.at ], [ %i.be, %bb.x ], [ %i.ak, %bb.o ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN5model23scoped_model_completionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #14
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.n
  %.pn51.pn.pn = phi { ptr, i32 } [ %.pn51.pn, %bb.bl ], [ %i.aj, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #14
  call void @_ZN7obj_refI3app11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #14
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.m
  %.pn51.pn.pn.pn = phi { ptr, i32 } [ %.pn51.pn.pn, %bb.bm ], [ %i.ai, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  call void @_ZN17expr_substitutionD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %11) #14
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.l
  %.pn51.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn51.pn.pn.pn, %bb.bn ], [ %i.ah, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  call void @_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  br label %bb.bp

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit.thread: ; preds = %bb.e, %_ZN15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEED2Ev.exit, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE5emptyEv.exit
  call void @_ZN7qe_liteD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @_ZN11th_rewriterD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void

bb.bp:                                            ; preds = %bb.bo, %bb.k
  %.pn51.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn51.pn.pn.pn.pn, %bb.bo ], [ %i.ag, %bb.k ]
  call void @_ZN7qe_liteD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #14
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.j
  %.pn51.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn51.pn.pn.pn.pn.pn.pn, %bb.bp ], [ %i.af, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @_ZN11th_rewriterD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #14
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.i
  %.pn51.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn51.pn.pn.pn.pn.pn.pn.pn, %bb.bq ], [ %i.ae, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  resume { ptr, i32 } %.pn51.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN11th_rewriterC1ER11ast_managerRK10params_ref(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(952), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN7qe_liteC1ER11ast_managerRK10params_refb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(952), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) unnamed_addr #2

declare void @_ZN7qe_liteclER10ref_vectorI3app11ast_managerER7obj_refI4exprS2_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN11th_rewriterclER7obj_refI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN17expr_substitutionC1ER11ast_manager(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef nonnull align 8 dereferenceable(952)) unnamed_addr #2

declare noundef ptr @_ZN11ast_manager11mk_assertedEP4expr(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK11ast_manager7is_boolEPK4expr(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef) local_unnamed_addr #2

declare void @_ZN5modelclEP4expr(ptr dead_on_unwind writable sret(%class.obj_ref) align 8, ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31, !nonnull !32, !align !33
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !23
  %i.f = add i32 %i.e, -1                         ; 2 uses
  store i32 %i.f, ptr %i.d, align 4, !tbaa !23
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.c, ptr noundef nonnull %i.a)
          to label %_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit unwind label %bb.d

_ZN7obj_refI4expr11ast_managerE7dec_refEv.exit:   ; preds = %bb.b, %bb.a, %bb.c
  ret void

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #15
  unreachable
}

declare void @_ZN17expr_substitution6insertEP4exprS1_P3appPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_Z21mk_expr_simp_replacerR11ast_managerRK10params_ref(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10scoped_ptrI13expr_replacerED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37     ; 4 uses
end_hunk_0
