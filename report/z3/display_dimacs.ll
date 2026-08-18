inline.NumInlined: 222
inline.NumDeleted: 103
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%struct.dimacs_pp = type <{ ptr, %class.svector.17, %class.ptr_vector, i32, [4 x i8] }>
%class.svector.17 = type { %class.vector.18 }
%class.vector.18 = type { ptr }
%class.ptr_vector = type { %class.vector }
%class.vector = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }

$_ZN9dimacs_pp16init_from_dimacsEP4expr = comdat any

$_ZN9dimacs_pp12init_formulaEP4expr = comdat any

$_ZN9dimacs_pp10pp_formulaERSoP4expr = comdat any

$_ZN9dimacs_pp7pp_defsERSo = comdat any

$_ZN9dimacs_ppD2Ev = comdat any

$_ZN6vectorIjLb0EjE13expand_vectorEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN17default_exceptionD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN6vectorIP4exprLb0EjE13expand_vectorEv = comdat any

@.str = private unnamed_addr constant [7 x i8] c"p cnf \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"p wcnf \00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Overflow encountered when expanding vector\00", align 1
@_ZTI17default_exception = external constant ptr
@.str.5 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZTV17default_exception = external constant { [6 x ptr] }, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"1 -1 \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"c \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"k!\00", align 1

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_Z14display_dimacsRSoRK10ref_vectorI4expr11ast_managerEb(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.dimacs_pp, align 8          ; 14 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !8, !nonnull !12, !align !13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr %i.a, ptr %3, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.b, i8 0, i64 20, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.thread, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !19   ; 2 uses
  %i.h = zext i32 %i.g to i64                     ; 6 uses
  %i.i = shl nuw nsw i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.i
  %.not5279.not = icmp eq i32 %i.g, 0
  br i1 %.not5279.not, label %.thread, label %.lr.ph

bb.b:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.04980, i64 8 ; 2 uses
  %.not52.not = icmp eq ptr %i.k, %i.j
  br i1 %.not52.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit, %bb.b
  %.04980 = phi ptr [ %i.k, %bb.b ], [ %i.d, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit ] ; 2 uses
  %i.l = load ptr, ptr %.04980, align 8, !tbaa !20
  %i.m = invoke noundef zeroext i1 @_ZN9dimacs_pp16init_from_dimacsEP4expr(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef %i.l)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.d:                                             ; preds = %.lr.ph
  br i1 %i.m, label %bb.b, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %i.o, align 8, !tbaa !22
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZN6vectorIjLb0EjE5resetEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -4
  store i32 0, ptr %i.q, align 4, !tbaa !19
  br label %_ZN6vectorIjLb0EjE5resetEv.exit.i

_ZN6vectorIjLb0EjE5resetEv.exit.i:                ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15   ; 2 uses
  %.not.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i1.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit.i
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4
  store i32 0, ptr %i.t, align 4, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %_ZN6vectorIjLb0EjE5resetEv.exit.i, %bb.g
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !15   ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.thread, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit65

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit65: ; preds = %bb.h
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !19   ; 2 uses
  %i.y = zext i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z
  %.not5582 = icmp eq i32 %i.x, 0
  br i1 %.not5582, label %.thread, label %.lr.ph84

bb.i:                                             ; preds = %_ZNSolsEj.exit67, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66, %_ZNSolsEj.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %.thread, %bb.o
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.lr.ph84:                                         ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit65, %bb.j
  %.05183 = phi ptr [ %i.ad, %bb.j ], [ %i.u, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit65 ] ; 2 uses
  %i.ac = load ptr, ptr %.05183, align 8, !tbaa !20
  invoke void @_ZN9dimacs_pp12init_formulaEP4expr(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef %i.ac)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.lr.ph84
  %i.ad = getelementptr inbounds nuw i8, ptr %.05183, i64 8 ; 2 uses
  %.not55 = icmp eq ptr %i.ad, %i.aa
  br i1 %.not55, label %.thread, label %.lr.ph84

bb.k:                                             ; preds = %.lr.ph84
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.thread:                                          ; preds = %bb.b, %bb.j, %bb.h, %bb.a, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit65
  %.0.i.i72101 = phi i64 [ %i.h, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit65 ], [ 0, %bb.a ], [ %i.h, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit ], [ %i.h, %bb.h ], [ %i.h, %bb.j ], [ %i.h, %bb.b ]
  %.not5278 = phi i1 [ %2, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit65 ], [ false, %bb.a ], [ false, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit ], [ %2, %bb.h ], [ %2, %bb.j ], [ false, %bb.b ]
  %i.af = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %.thread
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !22
  %i.ai = zext i32 %i.ah to i64
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.ai)
          to label %_ZNSolsEj.exit unwind label %bb.i ; 2 uses

_ZNSolsEj.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66 unwind label %bb.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66: ; preds = %_ZNSolsEj.exit
  %i.al = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i64 noundef %.0.i.i72101)
          to label %_ZNSolsEj.exit67 unwind label %bb.i

_ZNSolsEj.exit67:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit66
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %bb.l unwind label %bb.i       ; 0 uses

bb.l:                                             ; preds = %_ZNSolsEj.exit67
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !15  ; 4 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %._crit_edge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit70

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit70: ; preds = %bb.l
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !19 ; 2 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.as
  %.not5985 = icmp eq i32 %i.aq, 0
  br i1 %.not5985, label %._crit_edge, label %.lr.ph87

._crit_edge:                                      ; preds = %bb.m, %bb.l, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit70
  br i1 %.not5278, label %bb.o, label %bb.p

.lr.ph87:                                         ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit70, %bb.m
  %.04686 = phi ptr [ %i.av, %bb.m ], [ %i.an, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit70 ] ; 2 uses
  %i.au = load ptr, ptr %.04686, align 8, !tbaa !20
  invoke void @_ZN9dimacs_pp10pp_formulaERSoP4expr(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.au)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph87
  %i.av = getelementptr inbounds nuw i8, ptr %.04686, i64 8 ; 2 uses
  %.not59 = icmp eq ptr %i.av, %i.at
  br i1 %.not59, label %._crit_edge, label %.lr.ph87

bb.n:                                             ; preds = %.lr.ph87
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.o:                                             ; preds = %._crit_edge
  invoke void @_ZN9dimacs_pp7pp_defsERSo(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.p unwind label %bb.i

bb.p:                                             ; preds = %bb.o, %._crit_edge
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !15 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %_ZN6vectorIP4exprLb0EjED2Ev.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.az)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit.i unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #15
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit.i:               ; preds = %bb.q, %bb.p
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !28  ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i1.i, label %_ZN9dimacs_ppD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN6vectorIP4exprLb0EjED2Ev.exit.i
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bd)
          to label %_ZN9dimacs_ppD2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #15
  unreachable

_ZN9dimacs_ppD2Ev.exit:                           ; preds = %_ZN6vectorIP4exprLb0EjED2Ev.exit.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret ptr %0

bb.u:                                             ; preds = %bb.n, %bb.k, %bb.c, %bb.i
  %.pn60.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.k ], [ %i.ab, %bb.i ], [ %i.aw, %bb.n ], [ %i.n, %bb.c ]
  call void @_ZN9dimacs_ppD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  resume { ptr, i32 } %.pn60.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9dimacs_pp16init_from_dimacsEP4expr(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 65535
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %.lr.ph, label %_ZNK11ast_manager5is_orEPK4expr.exit

_ZNK11ast_manager5is_orEPK4expr.exit:             ; preds = %bb.b
  %i.j = load i32, ptr %i.i, align 8, !tbaa !40
  %i.k = icmp eq i32 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 6
  %i.o = select i1 %i.k, i1 %i.n, i1 false
  br i1 %i.o, label %_ZNK11ast_manager5is_orEPK4expr.exit.thread, label %.lr.ph

_ZNK11ast_manager5is_orEPK4expr.exit.thread:      ; preds = %_ZNK11ast_manager5is_orEPK4expr.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !45   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not1852 = icmp eq i32 %i.q, 0
  br i1 %.not1852, label %.critedge20, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.a, %_ZNK11ast_manager5is_orEPK4expr.exit, %_ZNK11ast_manager5is_orEPK4expr.exit.thread
  %.01686 = phi ptr [ %i.r, %_ZNK11ast_manager5is_orEPK4expr.exit.thread ], [ %i.a, %_ZNK11ast_manager5is_orEPK4expr.exit ], [ %i.a, %bb.a ], [ %i.a, %bb.b ]
  %.01785 = phi i32 [ %i.q, %_ZNK11ast_manager5is_orEPK4expr.exit.thread ], [ 1, %_ZNK11ast_manager5is_orEPK4expr.exit ], [ 1, %bb.a ], [ 1, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %wide.trip.count = zext i32 %.01785 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.01686, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20   ; 7 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !46, !nonnull !12, !align !13
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 840
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47
  %i.aa = icmp eq ptr %i.w, %i.z
  br i1 %i.aa, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ac = load i32, ptr %i.ab, align 4            ; 4 uses
  %i.ad = and i32 %i.ac, 65535
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %_ZNK11ast_manager6is_notEPK4expr.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !35 ; 3 uses
  %.not.i.i.i.i21 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i21, label %_ZNK11ast_manager6is_notEPK4expr.exit.thread, label %_ZNK11ast_manager6is_notEPK4expr.exit

_ZNK11ast_manager6is_notEPK4expr.exit:            ; preds = %bb.e
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !40
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.am = load i32, ptr %i.al, align 4
  %i.an = icmp eq i32 %i.am, 8
  %i.ao = select i1 %i.ak, i1 %i.an, i1 false
  br i1 %i.ao, label %bb.f, label %_ZNK11ast_manager6is_notEPK4expr.exit.thread

bb.f:                                             ; preds = %_ZNK11ast_manager6is_notEPK4expr.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !20 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %_ZNK11ast_manager6is_notEPK4expr.exit.thread

_ZNK11ast_manager6is_notEPK4expr.exit.thread:     ; preds = %bb.e, %bb.d, %bb.f, %_ZNK11ast_manager6is_notEPK4expr.exit
  %i.ar = phi i32 [ %.pre, %bb.f ], [ %i.ac, %_ZNK11ast_manager6is_notEPK4expr.exit ], [ %i.ac, %bb.d ], [ %i.ac, %bb.e ]
  %.0 = phi ptr [ %i.aq, %bb.f ], [ %i.w, %_ZNK11ast_manager6is_notEPK4expr.exit ], [ %i.w, %bb.d ], [ %i.w, %bb.e ] ; 5 uses
  %i.as = and i32 %i.ar, 65535
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.g, label %.critedge20

bb.g:                                             ; preds = %_ZNK11ast_manager6is_notEPK4expr.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !45
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.h, label %.critedge20

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !29 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !35 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %_Z17is_uninterp_constPK4expr.exit.thread49, label %_Z17is_uninterp_constPK4expr.exit

_Z17is_uninterp_constPK4expr.exit:                ; preds = %bb.h
  %i.bc = load i32, ptr %i.ba, align 8, !tbaa !40
  %i.bd = icmp eq i32 %i.bc, -1
  br i1 %i.bd, label %_Z17is_uninterp_constPK4expr.exit.thread49, label %.critedge20

_Z17is_uninterp_constPK4expr.exit.thread49:       ; preds = %bb.h, %_Z17is_uninterp_constPK4expr.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !104
  %i.bg = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bh = and i64 %i.bg, 7
  %i.bi = icmp eq i64 %i.bh, 1
  br i1 %i.bi, label %bb.i, label %.critedge20

bb.i:                                             ; preds = %_Z17is_uninterp_constPK4expr.exit.thread49
  %i.bj = lshr i64 %i.bg, 3
  %i.bk = trunc i64 %i.bj to i32                  ; 2 uses
  %.not = icmp eq i32 %i.bk, 0
  br i1 %.not, label %.critedge20, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = load i32, ptr %.0, align 8, !tbaa !105  ; 6 uses
  %i.bm = load ptr, ptr %i.s, align 8, !tbaa !28  ; 6 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i:                ; preds = %bb.j
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 -4 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !19
  %.not.i = icmp ult i32 %i.bl, %i.bp
  br i1 %.not.i, label %_ZNK6vectorIjLb0EjE3getEjRKj.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i22

_ZNK6vectorIjLb0EjE3getEjRKj.exit:                ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i
  %i.bq = zext i32 %i.bl to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bq
  %.0.i.sroa.speculate.load. = load i32, ptr %i.br, align 4, !tbaa !19
  %i.bs = icmp eq i32 %.0.i.sroa.speculate.load., -1
  br i1 %i.bs, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i22, label %.critedge

_ZNK6vectorIjLb0EjE4sizeEv.exit.i22:              ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %_ZNK6vectorIjLb0EjE3getEjRKj.exit
  %storemerge.in = load i32, ptr %i.t, align 8, !tbaa !22
  %storemerge = add i32 %storemerge.in, 1
  store i32 %storemerge, ptr %i.t, align 8, !tbaa !22
  %i.bt = load i32, ptr %i.bo, align 4, !tbaa !19 ; 3 uses
  %.not.i23 = icmp ult i32 %i.bl, %i.bt
  br i1 %.not.i23, label %_ZN6vectorIjLb0EjE4setxEjRKjS2_.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i:              ; preds = %bb.j
  %i.bu = load i32, ptr %i.t, align 8, !tbaa !22
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.t, align 8, !tbaa !22
  %i.bw = add i32 %i.bl, 1                        ; 2 uses
  %.not.not.i.i = icmp ne i32 %i.bw, 0
  tail call void @llvm.assume(i1 %.not.not.i.i)
  br label %thread-pre-split.i.i.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i:       ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i22
  %i.bx = add i32 %i.bl, 1                        ; 3 uses
  %.not16.i.i = icmp ugt i32 %i.bx, %i.bt
  br i1 %.not16.i.i, label %thread-pre-split.i.i.preheader, label %bb.k

thread-pre-split.i.i.preheader:                   ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i
  %.ph88 = phi ptr [ %i.bm, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i ], [ null, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i ]
  %.ph89 = phi i32 [ %i.bx, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i ], [ %i.bw, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i ] ; 4 uses
  %.0.i17.i.i.ph = phi i32 [ %i.bt, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i ], [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i ] ; 2 uses
  br label %thread-pre-split.i.i

bb.k:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i
  store i32 %i.bx, ptr %i.bo, align 4, !tbaa !19
  br label %_ZN6vectorIjLb0EjE4setxEjRKjS2_.exit

thread-pre-split.i.i:                             ; preds = %thread-pre-split.i.i.preheader, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i
  %i.by = phi ptr [ %.pr.pre.i.i, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i ], [ %.ph88, %thread-pre-split.i.i.preheader ] ; 6 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.a

_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.a:        ; preds = %thread-pre-split.i.i
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 -8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !19
  %i.cc = icmp ugt i32 %.ph89, %i.cb
  br i1 %i.cc, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i, label %bb.l

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i:   ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.a, %thread-pre-split.i.i
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  %.pr.pre.i.i = load ptr, ptr %i.s, align 8, !tbaa !28
  br label %thread-pre-split.i.i, !llvm.loop !106

bb.l:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i.a
  %i.cd = getelementptr inbounds i8, ptr %i.by, i64 -4
  store i32 %.ph89, ptr %i.cd, align 4, !tbaa !19
  %.not1319.i.i = icmp eq i32 %.0.i17.i.i.ph, %.ph89
  br i1 %.not1319.i.i, label %_ZN6vectorIjLb0EjE4setxEjRKjS2_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.l
  %i.ce = zext i32 %.ph89 to i64
  %i.cf = zext i32 %.0.i17.i.i.ph to i64          ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %i.by, i64 %i.cf
  %i.ch = sub nsw i64 %i.ce, %i.cf
  %i.ci = shl nsw i64 %i.ch, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cg, i8 -1, i64 %i.ci, i1 false), !tbaa !19
  br label %_ZN6vectorIjLb0EjE4setxEjRKjS2_.exit

_ZN6vectorIjLb0EjE4setxEjRKjS2_.exit:             ; preds = %.lr.ph.preheader.i.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i22, %bb.k, %bb.l
  %i.cj = phi ptr [ %i.bm, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i22 ], [ %i.by, %bb.l ], [ %i.bm, %bb.k ], [ %i.by, %.lr.ph.preheader.i.i ]
  %i.ck = zext i32 %i.bl to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ck
  store i32 %i.bk, ptr %i.cl, align 4, !tbaa !19
  %i.cm = load i32, ptr %.0, align 8, !tbaa !105  ; 4 uses
  %i.cn = load ptr, ptr %i.u, align 8, !tbaa !15  ; 5 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %_ZN6vectorIjLb0EjE4setxEjRKjS2_.exit
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 -4 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !19 ; 3 uses
  %.not.i24 = icmp ult i32 %i.cm, %i.cq
  br i1 %.not.i24, label %_ZN6vectorIP4exprLb0EjE4setxEjRKS1_S4_.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i:         ; preds = %_ZN6vectorIjLb0EjE4setxEjRKjS2_.exit
  %i.cr = add i32 %i.cm, 1                        ; 2 uses
  %.not.not.i.i37 = icmp ne i32 %i.cr, 0
  tail call void @llvm.assume(i1 %.not.not.i.i37)
  br label %thread-pre-split.i.i26.preheader

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i:  ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.cs = add i32 %i.cm, 1                        ; 3 uses
  %.not16.i.i25 = icmp ugt i32 %i.cs, %i.cq
  br i1 %.not16.i.i25, label %thread-pre-split.i.i26.preheader, label %bb.m

thread-pre-split.i.i26.preheader:                 ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i
  %.ph = phi ptr [ %i.cn, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i ], [ null, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ]
  %.ph87 = phi i32 [ %i.cs, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i ], [ %i.cr, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ] ; 4 uses
  %.0.i17.i.i29.ph = phi i32 [ %i.cq, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i ], [ 0, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ] ; 2 uses
  br label %thread-pre-split.i.i26

bb.m:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i
  store i32 %i.cs, ptr %i.cp, align 4, !tbaa !19
  br label %_ZN6vectorIP4exprLb0EjE4setxEjRKS1_S4_.exit

thread-pre-split.i.i26:                           ; preds = %thread-pre-split.i.i26.preheader, %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i
  %i.ct = phi ptr [ %.pr.pre.i.i36, %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i ], [ %.ph, %thread-pre-split.i.i26.preheader ] ; 6 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i.a

_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i.a:   ; preds = %thread-pre-split.i.i26
  %i.cv = getelementptr inbounds i8, ptr %i.ct, i64 -8
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !19
  %i.cx = icmp ugt i32 %.ph87, %i.cw
  br i1 %i.cx, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i, label %bb.n

_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i.a, %thread-pre-split.i.i26
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %.pr.pre.i.i36 = load ptr, ptr %i.u, align 8, !tbaa !15
  br label %thread-pre-split.i.i26, !llvm.loop !108

bb.n:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i.a
  %i.cy = getelementptr inbounds i8, ptr %i.ct, i64 -4
  store i32 %.ph87, ptr %i.cy, align 4, !tbaa !19
  %.not1319.i.i30 = icmp eq i32 %.0.i17.i.i29.ph, %.ph87
  br i1 %.not1319.i.i30, label %_ZN6vectorIP4exprLb0EjE4setxEjRKS1_S4_.exit, label %.lr.ph.preheader.i.i31

.lr.ph.preheader.i.i31:                           ; preds = %bb.n
  %i.cz = zext i32 %.ph87 to i64
  %i.da = zext i32 %.0.i17.i.i29.ph to i64        ; 2 uses
  %i.db = getelementptr [8 x i8], ptr %i.ct, i64 %i.da
  %i.dc = sub nsw i64 %i.cz, %i.da
  %i.dd = shl nsw i64 %i.dc, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.db, i8 0, i64 %i.dd, i1 false), !tbaa !20
  br label %_ZN6vectorIP4exprLb0EjE4setxEjRKS1_S4_.exit

_ZN6vectorIP4exprLb0EjE4setxEjRKS1_S4_.exit:      ; preds = %.lr.ph.preheader.i.i31, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %bb.m, %bb.n
  %i.de = phi ptr [ %i.cn, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ], [ %i.ct, %bb.n ], [ %i.cn, %bb.m ], [ %i.ct, %.lr.ph.preheader.i.i31 ]
  %i.df = zext i32 %i.cm to i64
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.df
  store ptr %.0, ptr %i.dg, align 8, !tbaa !20
  br label %.critedge

.critedge:                                        ; preds = %_ZN6vectorIP4exprLb0EjE4setxEjRKS1_S4_.exit, %_ZNK6vectorIjLb0EjE3getEjRKj.exit, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge20, label %bb.c, !llvm.loop !109

.critedge20:                                      ; preds = %.critedge, %bb.i, %_Z17is_uninterp_constPK4expr.exit.thread49, %_Z17is_uninterp_constPK4expr.exit, %bb.g, %_ZNK11ast_manager6is_notEPK4expr.exit.thread, %_ZNK11ast_manager5is_orEPK4expr.exit.thread
  %.not18.lcssa = phi i1 [ true, %_ZNK11ast_manager5is_orEPK4expr.exit.thread ], [ false, %_ZNK11ast_manager6is_notEPK4expr.exit.thread ], [ false, %bb.g ], [ false, %_Z17is_uninterp_constPK4expr.exit ], [ false, %_Z17is_uninterp_constPK4expr.exit.thread49 ], [ false, %bb.i ], [ true, %.critedge ]
  ret i1 %.not18.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9dimacs_pp12init_formulaEP4expr(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 65535
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %.lr.ph, label %_ZNK11ast_manager5is_orEPK4expr.exit

_ZNK11ast_manager5is_orEPK4expr.exit:             ; preds = %bb.b
  %i.j = load i32, ptr %i.i, align 8, !tbaa !40
  %i.k = icmp eq i32 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 6
  %i.o = select i1 %i.k, i1 %i.n, i1 false
  br i1 %i.o, label %_ZNK11ast_manager5is_orEPK4expr.exit.thread, label %.lr.ph

_ZNK11ast_manager5is_orEPK4expr.exit.thread:      ; preds = %_ZNK11ast_manager5is_orEPK4expr.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !45   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.a, %_ZNK11ast_manager5is_orEPK4expr.exit, %_ZNK11ast_manager5is_orEPK4expr.exit.thread
  %.0585 = phi ptr [ %i.r, %_ZNK11ast_manager5is_orEPK4expr.exit.thread ], [ %i.a, %_ZNK11ast_manager5is_orEPK4expr.exit ], [ %i.a, %bb.a ], [ %i.a, %bb.b ]
  %.0684 = phi i32 [ %i.q, %_ZNK11ast_manager5is_orEPK4expr.exit.thread ], [ 1, %_ZNK11ast_manager5is_orEPK4expr.exit ], [ 1, %bb.a ], [ 1, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %wide.trip.count = zext i32 %.0684 to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.ab, %_ZNK11ast_manager5is_orEPK4expr.exit.thread
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.ab
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ab ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.0585, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20   ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4
  %i.z = and i32 %i.y, 65535
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.d, label %_ZNK11ast_manager6is_notEPK4expr.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35 ; 3 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i7, label %_ZNK11ast_manager6is_notEPK4expr.exit.thread, label %_ZNK11ast_manager6is_notEPK4expr.exit

_ZNK11ast_manager6is_notEPK4expr.exit:            ; preds = %bb.d
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !40
  %i.ag = icmp eq i32 %i.af, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.ai, 8
  %i.ak = select i1 %i.ag, i1 %i.aj, i1 false
  br i1 %i.ak, label %bb.e, label %_ZNK11ast_manager6is_notEPK4expr.exit.thread

bb.e:                                             ; preds = %_ZNK11ast_manager6is_notEPK4expr.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !20
  br label %_ZNK11ast_manager6is_notEPK4expr.exit.thread

_ZNK11ast_manager6is_notEPK4expr.exit.thread:     ; preds = %bb.d, %bb.c, %bb.e, %_ZNK11ast_manager6is_notEPK4expr.exit
  %.042 = phi ptr [ %i.am, %bb.e ], [ %i.w, %_ZNK11ast_manager6is_notEPK4expr.exit ], [ %i.w, %bb.c ], [ %i.w, %bb.d ] ; 3 uses
  %i.an = load i32, ptr %.042, align 4, !tbaa !105 ; 6 uses
  %i.ao = load ptr, ptr %i.s, align 8, !tbaa !28  ; 6 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i:                ; preds = %_ZNK11ast_manager6is_notEPK4expr.exit.thread
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -4 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !19
  %.not.i = icmp ult i32 %i.an, %i.ar
  br i1 %.not.i, label %_ZNK6vectorIjLb0EjE3getEjRKj.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i8

_ZNK6vectorIjLb0EjE3getEjRKj.exit:                ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i
  %i.as = zext i32 %i.an to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.as
  %.0.i.sroa.speculate.load. = load i32, ptr %i.at, align 4, !tbaa !19
  %i.au = icmp eq i32 %.0.i.sroa.speculate.load., -1
  br i1 %i.au, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.i8, label %bb.ab

_ZNK6vectorIjLb0EjE4sizeEv.exit.i8:               ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i, %_ZNK6vectorIjLb0EjE3getEjRKj.exit
  %storemerge.in = load i32, ptr %i.t, align 8, !tbaa !22
  %storemerge = add i32 %storemerge.in, 1
  store i32 %storemerge, ptr %i.t, align 8, !tbaa !22
  %i.av = load i32, ptr %i.aq, align 4, !tbaa !19 ; 3 uses
  %.not.i9 = icmp ult i32 %i.an, %i.av
  br i1 %.not.i9, label %_ZN6vectorIjLb0EjE4setxEjRKjS2_.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i

_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i:              ; preds = %_ZNK11ast_manager6is_notEPK4expr.exit.thread
  %i.aw = load i32, ptr %i.t, align 8, !tbaa !22
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.t, align 8, !tbaa !22
  %i.ay = add i32 %i.an, 1                        ; 2 uses
  %.not.not.i.i = icmp ne i32 %i.ay, 0
  tail call void @llvm.assume(i1 %.not.not.i.i)
  br label %thread-pre-split.i.i.preheader

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i:       ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i8
  %i.az = add i32 %i.an, 1                        ; 3 uses
  %.not16.i.i = icmp ugt i32 %i.az, %i.av
  br i1 %.not16.i.i, label %thread-pre-split.i.i.preheader, label %bb.f

thread-pre-split.i.i.preheader:                   ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i
  %.ph87 = phi ptr [ %i.ao, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i ], [ null, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i ]
  %.ph88 = phi i32 [ %i.az, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i ], [ %i.ay, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i ] ; 4 uses
  %.0.i17.i.i.ph = phi i32 [ %i.av, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i ], [ 0, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i.i ] ; 2 uses
  br label %thread-pre-split.i.i

bb.f:                                             ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.i.i
  store i32 %i.az, ptr %i.aq, align 4, !tbaa !19
  br label %_ZN6vectorIjLb0EjE4setxEjRKjS2_.exit

thread-pre-split.i.i:                             ; preds = %thread-pre-split.i.i.backedge, %thread-pre-split.i.i.preheader
  %i.ba = phi ptr [ %.ph87, %thread-pre-split.i.i.preheader ], [ %.be89, %thread-pre-split.i.i.backedge ] ; 7 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.g, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i

_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i:          ; preds = %thread-pre-split.i.i
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 -8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !19
  %i.be = icmp ugt i32 %.ph88, %i.bd
  br i1 %i.be, label %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i, label %bb.p

bb.g:                                             ; preds = %thread-pre-split.i.i
  %i.bf = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16) ; 3 uses
  store i32 2, ptr %i.bf, align 4, !tbaa !19
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i32 0, ptr %i.bg, align 4, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  store ptr %i.bh, ptr %i.s, align 8, !tbaa !28
  br label %thread-pre-split.i.i.backedge

_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i:   ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i
  %i.bi = getelementptr inbounds i8, ptr %i.ba, i64 -8 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !19 ; 3 uses
  %i.bk = mul i32 %i.bj, 3
  %i.bl = add i32 %i.bk, 1
  %i.bm = lshr i32 %i.bl, 1                       ; 3 uses
  %i.bn = shl i32 %i.bm, 2
  %i.bo = add i32 %i.bn, 8                        ; 2 uses
  %.not.i24 = icmp ugt i32 %i.bm, %i.bj
  br i1 %.not.i24, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i
  %i.bp = shl i32 %i.bj, 2
  %i.bq = add i32 %i.bp, 8
  %.not27.i = icmp ugt i32 %i.bo, %i.bq
  br i1 %.not27.i, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK6vectorIjLb0EjE8capacityEv.exit.thread.i.i
  %i.br = tail call ptr @__cxa_allocate_exception(i64 40) #14 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.br, align 8, !tbaa !110
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 24 ; 3 uses
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !112
  %i.bu = load ptr, ptr %4, align 8, !tbaa !114   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !116 ; 3 uses
  %i.bz = icmp ult i64 %i.by, 16
  call void @llvm.assume(i1 %i.bz)
  %i.ca = add nuw nsw i64 %i.by, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bt, ptr noundef nonnull align 8 dereferenceable(1) %i.bv, i64 %i.ca, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !114
  %i.cb = load i64, ptr %i.bv, align 8, !tbaa !117
  store i64 %i.cb, ptr %i.bt, align 8, !tbaa !117
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !116
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.k
  %i.cc = phi i64 [ %i.by, %bb.k ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i64 %i.cc, ptr %i.ce, align 8, !tbaa !116
  store ptr %i.bv, ptr %4, align 8, !tbaa !114
  store i64 0, ptr %i.cd, align 8, !tbaa !116
  store i8 0, ptr %i.bv, align 8, !tbaa !117
  invoke void @__cxa_throw(ptr nonnull %i.br, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #16
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = load ptr, ptr %4, align 8, !tbaa !114   ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.bv
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.l
  %i.ci = load i64, ptr %i.bv, align 8, !tbaa !117
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %common.resume

bb.m:                                             ; preds = %bb.i
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @__cxa_free_exception(ptr %i.br) #14
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i32, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.ck, %bb.m ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i32 ], [ %i.ep, %bb.x ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.h
  %i.cl = zext i32 %i.bo to i64
  %i.cm = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.bi, i64 noundef %i.cl) ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  store ptr %i.cn, ptr %i.s, align 8, !tbaa !28
  store i32 %i.bm, ptr %i.cm, align 4, !tbaa !19
  br label %thread-pre-split.i.i.backedge

thread-pre-split.i.i.backedge:                    ; preds = %bb.n, %bb.g
  %.be89 = phi ptr [ %i.bh, %bb.g ], [ %i.cn, %bb.n ]
  br label %thread-pre-split.i.i, !llvm.loop !106

bb.o:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

bb.p:                                             ; preds = %_ZNK6vectorIjLb0EjE8capacityEv.exit.i.i
  %i.co = getelementptr inbounds i8, ptr %i.ba, i64 -4
  store i32 %.ph88, ptr %i.co, align 4, !tbaa !19
  %.not1319.i.i = icmp eq i32 %.0.i17.i.i.ph, %.ph88
  br i1 %.not1319.i.i, label %_ZN6vectorIjLb0EjE4setxEjRKjS2_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.p
  %i.cp = zext i32 %.ph88 to i64
  %i.cq = zext i32 %.0.i17.i.i.ph to i64          ; 2 uses
  %i.cr = getelementptr [4 x i8], ptr %i.ba, i64 %i.cq
  %i.cs = sub nsw i64 %i.cp, %i.cq
  %i.ct = shl nsw i64 %i.cs, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cr, i8 -1, i64 %i.ct, i1 false), !tbaa !19
  br label %_ZN6vectorIjLb0EjE4setxEjRKjS2_.exit

_ZN6vectorIjLb0EjE4setxEjRKjS2_.exit:             ; preds = %.lr.ph.preheader.i.i, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i8, %bb.f, %bb.p
  %i.cu = phi ptr [ %i.ao, %_ZNK6vectorIjLb0EjE4sizeEv.exit.i8 ], [ %i.ba, %bb.p ], [ %i.ao, %bb.f ], [ %i.ba, %.lr.ph.preheader.i.i ]
  %i.cv = load i32, ptr %i.t, align 8, !tbaa !19
  %i.cw = zext i32 %i.an to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cw
  store i32 %i.cv, ptr %i.cx, align 4, !tbaa !19
  %i.cy = load i32, ptr %.042, align 4, !tbaa !105 ; 4 uses
  %i.cz = load ptr, ptr %i.u, align 8, !tbaa !15  ; 5 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i:           ; preds = %_ZN6vectorIjLb0EjE4setxEjRKjS2_.exit
  %i.db = getelementptr inbounds i8, ptr %i.cz, i64 -4 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !19 ; 3 uses
  %.not.i10 = icmp ult i32 %i.cy, %i.dc
  br i1 %.not.i10, label %_ZN6vectorIP4exprLb0EjE4setxEjRKS1_S4_.exit, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i:         ; preds = %_ZN6vectorIjLb0EjE4setxEjRKjS2_.exit
  %i.dd = add i32 %i.cy, 1                        ; 2 uses
  %.not.not.i.i23 = icmp ne i32 %i.dd, 0
  tail call void @llvm.assume(i1 %.not.not.i.i23)
  br label %thread-pre-split.i.i12.preheader

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i:  ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i
  %i.de = add i32 %i.cy, 1                        ; 3 uses
  %.not16.i.i11 = icmp ugt i32 %i.de, %i.dc
  br i1 %.not16.i.i11, label %thread-pre-split.i.i12.preheader, label %bb.q

thread-pre-split.i.i12.preheader:                 ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i
  %.ph = phi ptr [ %i.cz, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i ], [ null, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ]
  %.ph86 = phi i32 [ %i.de, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i ], [ %i.dd, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ] ; 4 uses
  %.0.i17.i.i15.ph = phi i32 [ %i.dc, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i ], [ 0, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i.i ] ; 2 uses
  br label %thread-pre-split.i.i12

bb.q:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.thread.i.i
  store i32 %i.de, ptr %i.db, align 4, !tbaa !19
  br label %_ZN6vectorIP4exprLb0EjE4setxEjRKS1_S4_.exit

thread-pre-split.i.i12:                           ; preds = %thread-pre-split.i.i12.backedge, %thread-pre-split.i.i12.preheader
  %i.df = phi ptr [ %.ph, %thread-pre-split.i.i12.preheader ], [ %.be, %thread-pre-split.i.i12.backedge ] ; 7 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.r, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i

_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i:     ; preds = %thread-pre-split.i.i12
  %i.dh = getelementptr inbounds i8, ptr %i.df, i64 -8
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !19
  %i.dj = icmp ugt i32 %.ph86, %i.di
  br i1 %i.dj, label %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i, label %bb.aa

bb.r:                                             ; preds = %thread-pre-split.i.i12
  %i.dk = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.dk, align 4, !tbaa !19
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  store i32 0, ptr %i.dl, align 4, !tbaa !19
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  store ptr %i.dm, ptr %i.u, align 8, !tbaa !15
  br label %thread-pre-split.i.i12.backedge

_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i: ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i
  %i.dn = getelementptr inbounds i8, ptr %i.df, i64 -8 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !19 ; 3 uses
  %i.dp = mul i32 %i.do, 3
  %i.dq = add i32 %i.dp, 1
  %i.dr = lshr i32 %i.dq, 1                       ; 3 uses
  %i.ds = shl i32 %i.dr, 3
  %i.dt = add i32 %i.ds, 8                        ; 2 uses
  %.not.i25 = icmp ugt i32 %i.dr, %i.do
  br i1 %.not.i25, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i
  %i.du = shl i32 %i.do, 3
  %i.dv = add i32 %i.du, 8
  %.not27.i34 = icmp ugt i32 %i.dt, %i.dv
  br i1 %.not27.i34, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.thread.i.i
  %i.dw = tail call ptr @__cxa_allocate_exception(i64 40) #14 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.dw, align 8, !tbaa !110
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 24 ; 3 uses
  store ptr %i.dy, ptr %i.dx, align 8, !tbaa !112
  %i.dz = load ptr, ptr %2, align 8, !tbaa !114   ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27

bb.v:                                             ; preds = %bb.u
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !116 ; 3 uses
  %i.ee = icmp ult i64 %i.ed, 16
  call void @llvm.assume(i1 %i.ee)
  %i.ef = add nuw nsw i64 %i.ed, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dy, ptr noundef nonnull align 8 dereferenceable(1) %i.ea, i64 %i.ef, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27: ; preds = %bb.u
  store ptr %i.dz, ptr %i.dx, align 8, !tbaa !114
  %i.eg = load i64, ptr %i.ea, align 8, !tbaa !117
  store i64 %i.eg, ptr %i.dy, align 8, !tbaa !117
  %.phi.trans.insert.i28 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i29 = load i64, ptr %.phi.trans.insert.i28, align 8, !tbaa !116
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i30

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i30: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27, %bb.v
  %i.eh = phi i64 [ %i.ed, %bb.v ], [ %.pre.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27 ]
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store i64 %i.eh, ptr %i.ej, align 8, !tbaa !116
  store ptr %i.ea, ptr %2, align 8, !tbaa !114
  store i64 0, ptr %i.ei, align 8, !tbaa !116
  store i8 0, ptr %i.ea, align 8, !tbaa !117
  invoke void @__cxa_throw(ptr nonnull %i.dw, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #16
          to label %bb.z unwind label %bb.w

bb.w:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i30
  %i.ek = landingpad { ptr, i32 }
          cleanup
  %i.el = load ptr, ptr %2, align 8, !tbaa !114   ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.ea
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i31: ; preds = %bb.w
  %i.en = load i64, ptr %i.ea, align 8, !tbaa !117
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i32: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %common.resume

bb.x:                                             ; preds = %bb.t
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @__cxa_free_exception(ptr %i.dw) #14
  br label %common.resume

bb.y:                                             ; preds = %bb.s
  %i.eq = zext i32 %i.dt to i64
  %i.er = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.dn, i64 noundef %i.eq) ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  store ptr %i.es, ptr %i.u, align 8, !tbaa !15
  store i32 %i.dr, ptr %i.er, align 4, !tbaa !19
  br label %thread-pre-split.i.i12.backedge

thread-pre-split.i.i12.backedge:                  ; preds = %bb.y, %bb.r
  %.be = phi ptr [ %i.dm, %bb.r ], [ %i.es, %bb.y ]
  br label %thread-pre-split.i.i12, !llvm.loop !108

bb.z:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i30
  unreachable

bb.aa:                                            ; preds = %_ZNK6vectorIP4exprLb0EjE8capacityEv.exit.i.i
  %i.et = getelementptr inbounds i8, ptr %i.df, i64 -4
  store i32 %.ph86, ptr %i.et, align 4, !tbaa !19
  %.not1319.i.i16 = icmp eq i32 %.0.i17.i.i15.ph, %.ph86
  br i1 %.not1319.i.i16, label %_ZN6vectorIP4exprLb0EjE4setxEjRKS1_S4_.exit, label %.lr.ph.preheader.i.i17

.lr.ph.preheader.i.i17:                           ; preds = %bb.aa
  %i.eu = zext i32 %.ph86 to i64
  %i.ev = zext i32 %.0.i17.i.i15.ph to i64        ; 2 uses
  %i.ew = getelementptr [8 x i8], ptr %i.df, i64 %i.ev
  %i.ex = sub nsw i64 %i.eu, %i.ev
  %i.ey = shl nsw i64 %i.ex, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ew, i8 0, i64 %i.ey, i1 false), !tbaa !20
  br label %_ZN6vectorIP4exprLb0EjE4setxEjRKS1_S4_.exit

_ZN6vectorIP4exprLb0EjE4setxEjRKS1_S4_.exit:      ; preds = %.lr.ph.preheader.i.i17, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i, %bb.q, %bb.aa
  %i.ez = phi ptr [ %i.cz, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i ], [ %i.df, %bb.aa ], [ %i.cz, %bb.q ], [ %i.df, %.lr.ph.preheader.i.i17 ]
  %i.fa = zext i32 %i.cy to i64
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fa
  store ptr %.042, ptr %i.fb, align 8, !tbaa !20
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN6vectorIP4exprLb0EjE4setxEjRKS1_S4_.exit, %_ZNK6vectorIjLb0EjE3getEjRKj.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !118
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9dimacs_pp10pp_formulaERSoP4expr(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 65535
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %.lr.ph, label %_ZNK11ast_manager5is_orEPK4expr.exit

_ZNK11ast_manager5is_orEPK4expr.exit:             ; preds = %bb.b
  %i.j = load i32, ptr %i.i, align 8, !tbaa !40
  %i.k = icmp eq i32 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 6
  %i.o = select i1 %i.k, i1 %i.n, i1 false
  br i1 %i.o, label %_ZNK11ast_manager5is_orEPK4expr.exit.thread, label %.lr.ph

_ZNK11ast_manager5is_orEPK4expr.exit.thread:      ; preds = %_ZNK11ast_manager5is_orEPK4expr.exit
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !45   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.a, %_ZNK11ast_manager5is_orEPK4expr.exit, %_ZNK11ast_manager5is_orEPK4expr.exit.thread
  %.01527 = phi ptr [ %i.r, %_ZNK11ast_manager5is_orEPK4expr.exit.thread ], [ %i.a, %_ZNK11ast_manager5is_orEPK4expr.exit ], [ %i.a, %bb.a ], [ %i.a, %bb.b ]
  %.01626 = phi i32 [ %i.q, %_ZNK11ast_manager5is_orEPK4expr.exit.thread ], [ 1, %_ZNK11ast_manager5is_orEPK4expr.exit ], [ 1, %bb.a ], [ 1, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext i32 %.01626 to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.i, %_ZNK11ast_manager5is_orEPK4expr.exit.thread
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.9, i64 noundef 2) ; 0 uses
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.01527, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !20   ; 8 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !46, !nonnull !12, !align !13 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 840
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !47
  %i.z = icmp eq ptr %i.v, %i.y
  br i1 %i.z, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 832
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !119
  %i.ac = icmp eq ptr %i.v, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.7, i64 noundef 5) ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = and i32 %i.af, 65535
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %_ZNK11ast_manager6is_notEPK4expr.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !35 ; 3 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i17, label %_ZNK11ast_manager6is_notEPK4expr.exit.thread, label %_ZNK11ast_manager6is_notEPK4expr.exit

_ZNK11ast_manager6is_notEPK4expr.exit:            ; preds = %bb.g
  %i.am = load i32, ptr %i.al, align 8, !tbaa !40
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = icmp eq i32 %i.ap, 8
  %i.ar = select i1 %i.an, i1 %i.aq, i1 false
  br i1 %i.ar, label %bb.h, label %_ZNK11ast_manager6is_notEPK4expr.exit.thread

bb.h:                                             ; preds = %_ZNK11ast_manager6is_notEPK4expr.exit
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, i64 noundef 1) ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !20
  br label %_ZNK11ast_manager6is_notEPK4expr.exit.thread

_ZNK11ast_manager6is_notEPK4expr.exit.thread:     ; preds = %bb.g, %bb.f, %bb.h, %_ZNK11ast_manager6is_notEPK4expr.exit
  %.0 = phi ptr [ %i.au, %bb.h ], [ %i.v, %_ZNK11ast_manager6is_notEPK4expr.exit ], [ %i.v, %bb.f ], [ %i.v, %bb.g ]
  %i.av = load i32, ptr %.0, align 4, !tbaa !105
  %i.aw = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.ax = zext i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !19
  %i.ba = zext i32 %i.az to i64
  %i.bb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.ba)
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %_ZNK11ast_manager6is_notEPK4expr.exit.thread, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !120
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN9dimacs_pp7pp_defsERSo(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %._crit_edge, label %_ZN6vectorIP4exprLb0EjE3endEv.exit

_ZN6vectorIP4exprLb0EjE3endEv.exit:               ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !19   ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %.not15 = icmp eq i32 %i.e, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6vectorIP4exprLb0EjE3endEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.h, %bb.a, %_ZN6vectorIP4exprLb0EjE3endEv.exit
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.016 = phi ptr [ %i.b, %.lr.ph ], [ %i.al, %bb.h ] ; 2 uses
  %i.j = load ptr, ptr %.016, align 8, !tbaa !20  ; 4 uses
  %.not14 = icmp eq ptr %i.j, null
  br i1 %.not14, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 65535
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.10, i64 noundef 2) ; 0 uses
  %i.s = load i32, ptr %i.j, align 8, !tbaa !105
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !28
  %i.u = zext i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !19
  %i.x = zext i32 %i.w to i64
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.x) ; 6 uses
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull @.str.1, i64 noundef 1) ; 0 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !121 ; 4 uses
  %i.aa = ptrtoint ptr %.sroa.0.0.copyload to i64 ; 2 uses
  %i.ab = and i64 %i.aa, 7
  %i.ac = icmp eq i64 %i.ab, 0
end_hunk_0
begin_hunk_1_@_Z12display_wcnfRSoRK10ref_vectorI4expr11ast_managerERK7svectorISt4pairIPS1_jEjE:bb.a
  %niter = phi i64 [ 0, %.lr.ph106.preheader.new ], [ %niter.next.7, %.lr.ph106 ]
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.066104, i64 8
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8
  %i.ay = add i32 %.sroa.3.0.copyload, %.065105
  %.sroa.3.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.066104, i64 24
  %.sroa.3.0.copyload.1 = load i32, ptr %.sroa.3.0..sroa_idx.1, align 8
  %i.az = add i32 %.sroa.3.0.copyload.1, %i.ay
  %.sroa.3.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %.066104, i64 40
  %.sroa.3.0.copyload.2 = load i32, ptr %.sroa.3.0..sroa_idx.2, align 8
  %i.ba = add i32 %.sroa.3.0.copyload.2, %i.az
  %.sroa.3.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %.066104, i64 56
  %.sroa.3.0.copyload.3 = load i32, ptr %.sroa.3.0..sroa_idx.3, align 8
  %i.bb = add i32 %.sroa.3.0.copyload.3, %i.ba
  %.sroa.3.0..sroa_idx.4 = getelementptr inbounds nuw i8, ptr %.066104, i64 72
  %.sroa.3.0.copyload.4 = load i32, ptr %.sroa.3.0..sroa_idx.4, align 8
  %i.bc = add i32 %.sroa.3.0.copyload.4, %i.bb
  %.sroa.3.0..sroa_idx.5 = getelementptr inbounds nuw i8, ptr %.066104, i64 88
  %.sroa.3.0.copyload.5 = load i32, ptr %.sroa.3.0..sroa_idx.5, align 8
  %i.bd = add i32 %.sroa.3.0.copyload.5, %i.bc
  %.sroa.3.0..sroa_idx.6 = getelementptr inbounds nuw i8, ptr %.066104, i64 104
  %.sroa.3.0.copyload.6 = load i32, ptr %.sroa.3.0..sroa_idx.6, align 8
  %i.be = add i32 %.sroa.3.0.copyload.6, %i.bd
  %.sroa.3.0..sroa_idx.7 = getelementptr inbounds nuw i8, ptr %.066104, i64 120
  %.sroa.3.0.copyload.7 = load i32, ptr %.sroa.3.0..sroa_idx.7, align 8
  %i.bf = add i32 %.sroa.3.0.copyload.7, %i.be    ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.066104, i64 128 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge107.loopexit.unr-lcssa, label %.lr.ph106

._crit_edge107.loopexit.unr-lcssa:                ; preds = %.lr.ph106
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge107.loopexit, label %.lr.ph106.epil.preheader

.lr.ph106.epil.preheader:                         ; preds = %._crit_edge107.loopexit.unr-lcssa, %.lr.ph106.preheader
  %.065105.epil.init = phi i32 [ 1, %.lr.ph106.preheader ], [ %i.bf, %._crit_edge107.loopexit.unr-lcssa ]
  %.066104.epil.init = phi ptr [ %i.ao, %.lr.ph106.preheader ], [ %i.bg, %._crit_edge107.loopexit.unr-lcssa ]
  %lcmp.mod139 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod139)
  br label %.lr.ph106.epil

.lr.ph106.epil:                                   ; preds = %.lr.ph106.epil, %.lr.ph106.epil.preheader
  %.065105.epil = phi i32 [ %i.bh, %.lr.ph106.epil ], [ %.065105.epil.init, %.lr.ph106.epil.preheader ]
  %.066104.epil = phi ptr [ %i.bi, %.lr.ph106.epil ], [ %.066104.epil.init, %.lr.ph106.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph106.epil ], [ 0, %.lr.ph106.epil.preheader ]
  %.sroa.3.0..sroa_idx.epil = getelementptr inbounds nuw i8, ptr %.066104.epil, i64 8
  %.sroa.3.0.copyload.epil = load i32, ptr %.sroa.3.0..sroa_idx.epil, align 8
  %i.bh = add i32 %.sroa.3.0.copyload.epil, %.065105.epil ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.066104.epil, i64 16
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge107.loopexit, label %.lr.ph106.epil, !llvm.loop !125

._crit_edge107.loopexit:                          ; preds = %.lr.ph106.epil, %._crit_edge107.loopexit.unr-lcssa
  %.lcssa = phi i32 [ %i.bf, %._crit_edge107.loopexit.unr-lcssa ], [ %i.bh, %.lr.ph106.epil ]
  %i.bj = zext i32 %.lcssa to i64
  br label %._crit_edge107

._crit_edge107:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86, %._crit_edge107.loopexit, %_ZNK6vectorISt4pairIP4exprjELb0EjE3endEv.exit88
  %.065.lcssa = phi i64 [ 1, %_ZNK6vectorISt4pairIP4exprjELb0EjE3endEv.exit88 ], [ %i.bj, %._crit_edge107.loopexit ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit86 ]
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !15  ; 4 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %._crit_edge111, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit90

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit90: ; preds = %._crit_edge107
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 -4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !19 ; 2 uses
  %i.bo = zext i32 %i.bn to i64
  %i.bp = shl nuw nsw i64 %i.bo, 3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bp
  %.not70108 = icmp eq i32 %i.bn, 0
  br i1 %.not70108, label %._crit_edge111, label %.lr.ph110

._crit_edge111.loopexit:                          ; preds = %bb.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !122
  br label %._crit_edge111

._crit_edge111:                                   ; preds = %._crit_edge107, %._crit_edge111.loopexit, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit90
  %i.br = phi ptr [ %.pre, %._crit_edge111.loopexit ], [ %i.ao, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit90 ], [ %i.ao, %._crit_edge107 ] ; 4 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %._crit_edge115, label %_ZNK6vectorISt4pairIP4exprjELb0EjE3endEv.exit92

_ZNK6vectorISt4pairIP4exprjELb0EjE3endEv.exit92:  ; preds = %._crit_edge111
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !19 ; 2 uses
  %i.bv = zext i32 %i.bu to i64
  %i.bw = shl nuw nsw i64 %i.bv, 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bw
  %.not71112 = icmp eq i32 %i.bu, 0
  br i1 %.not71112, label %._crit_edge115, label %.lr.ph114

.lr.ph110:                                        ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit90, %bb.i
  %.067109 = phi ptr [ %i.cb, %bb.i ], [ %i.bk, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE3endEv.exit90 ] ; 2 uses
  %i.by = load ptr, ptr %.067109, align 8, !tbaa !20
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %.065.lcssa)
          to label %_ZNSolsEj.exit93 unwind label %bb.j

_ZNSolsEj.exit93:                                 ; preds = %.lr.ph110
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94: ; preds = %_ZNSolsEj.exit93
  invoke void @_ZN9dimacs_pp10pp_formulaERSoP4expr(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.by)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94
  %i.cb = getelementptr inbounds nuw i8, ptr %.067109, i64 8 ; 2 uses
  %.not70 = icmp eq ptr %i.cb, %i.bq
  br i1 %.not70, label %._crit_edge111.loopexit, label %.lr.ph110

bb.j:                                             ; preds = %_ZNSolsEj.exit93, %.lr.ph110, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

._crit_edge115:                                   ; preds = %bb.k, %._crit_edge111, %_ZNK6vectorISt4pairIP4exprjELb0EjE3endEv.exit92
  invoke void @_ZN9dimacs_pp7pp_defsERSo(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.m unwind label %bb.r

.lr.ph114:                                        ; preds = %_ZNK6vectorISt4pairIP4exprjELb0EjE3endEv.exit92, %bb.k
  %.064113 = phi ptr [ %i.cg, %bb.k ], [ %i.br, %_ZNK6vectorISt4pairIP4exprjELb0EjE3endEv.exit92 ] ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %.064113, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.064113, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8
  %i.cd = zext i32 %.sroa.5.0.copyload to i64
  %i.ce = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.cd)
          to label %_ZNSolsEj.exit95 unwind label %bb.l

_ZNSolsEj.exit95:                                 ; preds = %.lr.ph114
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96: ; preds = %_ZNSolsEj.exit95
  invoke void @_ZN9dimacs_pp10pp_formulaERSoP4expr(ptr noundef nonnull align 8 dereferenceable(28) %3, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.sroa.0.0.copyload)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96
  %i.cg = getelementptr inbounds nuw i8, ptr %.064113, i64 16 ; 2 uses
  %.not71 = icmp eq ptr %i.cg, %i.bx
  br i1 %.not71, label %._crit_edge115, label %.lr.ph114

bb.l:                                             ; preds = %_ZNSolsEj.exit95, %.lr.ph114, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit96
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.m:                                             ; preds = %._crit_edge115
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !15 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i, label %_ZN6vectorIP4exprLb0EjED2Ev.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ck)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #15
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit.i:               ; preds = %bb.n, %bb.m
  %i.cn = load ptr, ptr %i.b, align 8, !tbaa !28  ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i1.i, label %_ZN9dimacs_ppD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN6vectorIP4exprLb0EjED2Ev.exit.i
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.co)
          to label %_ZN9dimacs_ppD2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #15
  unreachable

_ZN9dimacs_ppD2Ev.exit:                           ; preds = %_ZN6vectorIP4exprLb0EjED2Ev.exit.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret ptr %0

bb.r:                                             ; preds = %._crit_edge115
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.j, %bb.l, %bb.e, %bb.c, %bb.h
  %.pn79.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.h ], [ %i.ch, %bb.l ], [ %i.cc, %bb.j ], [ %i.cr, %bb.r ], [ %i.t, %bb.c ], [ %i.w, %bb.e ]
  call void @_ZN9dimacs_ppD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  resume { ptr, i32 } %.pn79.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %4 = load ptr, ptr %0, align 8, !tbaa !28       ; 2 uses
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 16) ; 3 uses
  store i32 2, ptr %7, align 4, !tbaa !19
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %8, align 4, !tbaa !19
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %9, ptr %0, align 8, !tbaa !28
  br label %51

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %4, i64 -8 ; 2 uses
  %12 = load i32, ptr %11, align 4, !tbaa !19     ; 3 uses
  %13 = mul i32 %12, 3
  %14 = add i32 %13, 1
  %15 = lshr i32 %14, 1                           ; 3 uses
  %16 = shl i32 %15, 2
  %17 = add i32 %16, 8                            ; 2 uses
  %.not = icmp ugt i32 %15, %12
  br i1 %.not, label %18, label %21

18:                                               ; preds = %10
  %19 = shl i32 %12, 2
  %20 = add i32 %19, 8
  %.not27 = icmp ugt i32 %17, %20
  br i1 %.not27, label %47, label %21

21:                                               ; preds = %18, %10
  %22 = tail call ptr @__cxa_allocate_exception(i64 40) #14 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %23 unwind label %44

23:                                               ; preds = %21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %22, align 8, !tbaa !110
  %24 = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %25 = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 3 uses
  store ptr %25, ptr %24, align 8, !tbaa !112
  %26 = load ptr, ptr %2, align 8, !tbaa !114     ; 2 uses
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

29:                                               ; preds = %23
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %31 = load i64, ptr %30, align 8, !tbaa !116    ; 3 uses
  %32 = icmp ult i64 %31, 16
  call void @llvm.assume(i1 %32)
  %33 = add nuw nsw i64 %31, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %25, ptr noundef nonnull align 8 dereferenceable(1) %27, i64 %33, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %23
  store ptr %26, ptr %24, align 8, !tbaa !114
  %34 = load i64, ptr %27, align 8, !tbaa !117
  store i64 %34, ptr %25, align 8, !tbaa !117
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !116
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %35 = phi i64 [ %31, %29 ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %37 = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 %35, ptr %37, align 8, !tbaa !116
  store ptr %27, ptr %2, align 8, !tbaa !114
  store i64 0, ptr %36, align 8, !tbaa !116
  store i8 0, ptr %27, align 8, !tbaa !117
  invoke void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #16
          to label %52 unwind label %38

38:                                               ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %39 = landingpad { ptr, i32 }
          cleanup
  %40 = load ptr, ptr %2, align 8, !tbaa !114     ; 2 uses
  %41 = icmp eq ptr %40, %27
  br i1 %41, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %38
  %42 = load i64, ptr %27, align 8, !tbaa !117
  %43 = add i64 %42, 1
  call void @_ZdlPvm(ptr noundef %40, i64 noundef %43) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %46

44:                                               ; preds = %21
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @__cxa_free_exception(ptr %22) #14
  br label %46

46:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %44
  %.pn32 = phi { ptr, i32 } [ %39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %45, %44 ]
  resume { ptr, i32 } %.pn32

47:                                               ; preds = %18
  %48 = zext i32 %17 to i64
  %49 = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %11, i64 noundef %48) ; 2 uses
  %50 = getelementptr inbounds nuw i8, ptr %49, i64 8
  store ptr %50, ptr %0, align 8, !tbaa !28
  store i32 %15, ptr %49, align 4, !tbaa !19
  br label %51

51:                                               ; preds = %47, %6
  ret void

52:                                               ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !112
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #16
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !127

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #16
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #18 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !114
  store i64 %i.c, ptr %i.a, align 8, !tbaa !117
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !117
  store i8 %i.j, ptr %i.i, align 1, !tbaa !117
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !116
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !117
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN17default_exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %0, align 8, !tbaa !110
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !117
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #14
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #4

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %4 = load ptr, ptr %0, align 8, !tbaa !15       ; 2 uses
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %7, align 4, !tbaa !19
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %8, align 4, !tbaa !19
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %9, ptr %0, align 8, !tbaa !15
  br label %51

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %4, i64 -8 ; 2 uses
  %12 = load i32, ptr %11, align 4, !tbaa !19     ; 3 uses
  %13 = mul i32 %12, 3
  %14 = add i32 %13, 1
  %15 = lshr i32 %14, 1                           ; 3 uses
  %16 = shl i32 %15, 3
  %17 = add i32 %16, 8                            ; 2 uses
  %.not = icmp ugt i32 %15, %12
  br i1 %.not, label %18, label %21

18:                                               ; preds = %10
  %19 = shl i32 %12, 3
  %20 = add i32 %19, 8
  %.not27 = icmp ugt i32 %17, %20
  br i1 %.not27, label %47, label %21

21:                                               ; preds = %18, %10
  %22 = tail call ptr @__cxa_allocate_exception(i64 40) #14 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %23 unwind label %44

23:                                               ; preds = %21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %22, align 8, !tbaa !110
  %24 = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %25 = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 3 uses
  store ptr %25, ptr %24, align 8, !tbaa !112
  %26 = load ptr, ptr %2, align 8, !tbaa !114     ; 2 uses
  %27 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

29:                                               ; preds = %23
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %31 = load i64, ptr %30, align 8, !tbaa !116    ; 3 uses
  %32 = icmp ult i64 %31, 16
  call void @llvm.assume(i1 %32)
  %33 = add nuw nsw i64 %31, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %25, ptr noundef nonnull align 8 dereferenceable(1) %27, i64 %33, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %23
  store ptr %26, ptr %24, align 8, !tbaa !114
  %34 = load i64, ptr %27, align 8, !tbaa !117
  store i64 %34, ptr %25, align 8, !tbaa !117
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !116
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %35 = phi i64 [ %31, %29 ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %36 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %37 = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 %35, ptr %37, align 8, !tbaa !116
  store ptr %27, ptr %2, align 8, !tbaa !114
  store i64 0, ptr %36, align 8, !tbaa !116
  store i8 0, ptr %27, align 8, !tbaa !117
  invoke void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #16
          to label %52 unwind label %38

38:                                               ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %39 = landingpad { ptr, i32 }
          cleanup
  %40 = load ptr, ptr %2, align 8, !tbaa !114     ; 2 uses
  %41 = icmp eq ptr %40, %27
  br i1 %41, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %38
  %42 = load i64, ptr %27, align 8, !tbaa !117
  %43 = add i64 %42, 1
  call void @_ZdlPvm(ptr noundef %40, i64 noundef %43) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %46

44:                                               ; preds = %21
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @__cxa_free_exception(ptr %22) #14
  br label %46

46:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %44
  %.pn32 = phi { ptr, i32 } [ %39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %45, %44 ]
  resume { ptr, i32 } %.pn32

47:                                               ; preds = %18
  %48 = zext i32 %17 to i64
  %49 = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %11, i64 noundef %48) ; 2 uses
  %50 = getelementptr inbounds nuw i8, ptr %49, i64 8
  store ptr %50, ptr %0, align 8, !tbaa !15
  store i32 %15, ptr %49, align 4, !tbaa !19
  br label %51

51:                                               ; preds = %47, %6
  ret void

52:                                               ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare void @_ZN6memory10deallocateEPv(ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin nounwind }
attributes #18 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTS19ref_manager_wrapperI4expr11ast_managerE", !10, i64 0}
!10 = !{!"p1 _ZTS11ast_manager", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{}
!13 = !{i64 8}
!14 = !{!10, !10, i64 0}
!15 = !{!16, !17, i64 0}
!16 = !{!"_ZTS6vectorIP4exprLb0EjE", !17, i64 0}
!17 = !{!"p2 _ZTS4expr", !18, i64 0}
!18 = !{!"any p2 pointer", !11, i64 0}
!19 = !{!5, !5, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 _ZTS4expr", !11, i64 0}
!22 = !{!23, !5, i64 24}
!23 = !{!"_ZTS9dimacs_pp", !10, i64 0, !24, i64 8, !27, i64 16, !5, i64 24}
!24 = !{!"_ZTS7svectorIjjE", !25, i64 0}
!25 = !{!"_ZTS6vectorIjLb0EjE", !26, i64 0}
!26 = !{!"p1 int", !11, i64 0}
!27 = !{!"_ZTS10ptr_vectorI4exprE", !16, i64 0}
!28 = !{!25, !26, i64 0}
!29 = !{!30, !33, i64 16}
!30 = !{!"_ZTS3app", !31, i64 0, !33, i64 16, !5, i64 24, !34, i64 28, !6, i64 32}
!31 = !{!"_ZTS4expr", !32, i64 0}
!32 = !{!"_ZTS3ast", !5, i64 0, !5, i64 4, !5, i64 6, !5, i64 6, !5, i64 6, !5, i64 8, !5, i64 12}
!33 = !{!"p1 _ZTS9func_decl", !11, i64 0}
!34 = !{!"_ZTS9app_flags", !5, i64 0, !5, i64 2, !5, i64 2, !5, i64 2}
!35 = !{!36, !39, i64 24}
!36 = !{!"_ZTS4decl", !32, i64 0, !37, i64 16, !39, i64 24}
!37 = !{!"_ZTS6symbol", !38, i64 0}
!38 = !{!"p1 omnipotent char", !11, i64 0}
!39 = !{!"p1 _ZTS9decl_info", !11, i64 0}
!40 = !{!41, !5, i64 0}
!41 = !{!"_ZTS9decl_info", !5, i64 0, !5, i64 4, !42, i64 8, !44, i64 16}
!42 = !{!"_ZTS6vectorI9parameterLb1EjE", !43, i64 0}
!43 = !{!"p1 _ZTS9parameter", !11, i64 0}
!44 = !{!"bool", !6, i64 0}
!45 = !{!30, !5, i64 24}
!46 = !{!23, !10, i64 0}
!47 = !{!48, !93, i64 840}
!48 = !{!"_ZTS11ast_manager", !49, i64 0, !59, i64 40, !60, i64 560, !71, i64 616, !76, i64 648, !80, i64 672, !84, i64 704, !87, i64 712, !44, i64 716, !88, i64 720, !91, i64 784, !91, i64 800, !92, i64 816, !92, i64 824, !93, i64 832, !93, i64 840, !93, i64 848, !5, i64 856, !44, i64 860, !94, i64 864, !99, i64 888, !44, i64 896, !44, i64 897, !10, i64 904, !37, i64 912, !100, i64 920, !103, i64 944}
!49 = !{!"_ZTS8reslimit", !50, i64 0, !44, i64 4, !52, i64 8, !52, i64 16, !53, i64 24, !56, i64 32}
!50 = !{!"_ZTSSt6atomicIjE", !51, i64 0}
!51 = !{!"_ZTSSt13__atomic_baseIjE", !5, i64 0}
!52 = !{!"long", !6, i64 0}
!53 = !{!"_ZTS7svectorImjE", !54, i64 0}
!54 = !{!"_ZTS6vectorImLb0EjE", !55, i64 0}
!55 = !{!"p1 long", !11, i64 0}
!56 = !{!"_ZTS10ptr_vectorI8reslimitE", !57, i64 0}
!57 = !{!"_ZTS6vectorIP8reslimitLb0EjE", !58, i64 0}
!58 = !{!"p2 _ZTS8reslimit", !18, i64 0}
!59 = !{!"_ZTS22small_object_allocator", !6, i64 0, !6, i64 256, !52, i64 512}
!60 = !{!"_ZTS14family_manager", !5, i64 0, !61, i64 8, !68, i64 48}
!61 = !{!"_ZTS12symbol_tableIiE", !62, i64 0, !64, i64 24, !66, i64 32}
!62 = !{!"_ZTS14core_hashtableIN12symbol_tableIiE10hash_entryENS1_18key_data_hash_procENS1_16key_data_eq_procEE", !63, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!63 = !{!"p1 _ZTSN12symbol_tableIiE10hash_entryE", !11, i64 0}
!64 = !{!"_ZTS6vectorIN12symbol_tableIiE8key_dataELb1EjE", !65, i64 0}
!65 = !{!"p1 _ZTSN12symbol_tableIiE8key_dataE", !11, i64 0}
!66 = !{!"_ZTS7svectorIijE", !67, i64 0}
!67 = !{!"_ZTS6vectorIiLb0EjE", !26, i64 0}
!68 = !{!"_ZTS7svectorI6symboljE", !69, i64 0}
!69 = !{!"_ZTS6vectorI6symbolLb0EjE", !70, i64 0}
!70 = !{!"p1 _ZTS6symbol", !11, i64 0}
!71 = !{!"_ZTS14parray_managerIN11ast_manager17expr_array_configEE", !10, i64 0, !72, i64 8, !73, i64 16, !73, i64 24}
!72 = !{!"p1 _ZTS22small_object_allocator", !11, i64 0}
!73 = !{!"_ZTS10ptr_vectorIN14parray_managerIN11ast_manager17expr_array_configEE4cellEE", !74, i64 0}
!74 = !{!"_ZTS6vectorIPN14parray_managerIN11ast_manager17expr_array_configEE4cellELb0EjE", !75, i64 0}
!75 = !{!"p2 _ZTSN14parray_managerIN11ast_manager17expr_array_configEE4cellE", !18, i64 0}
!76 = !{!"_ZTS18dependency_managerIN11ast_manager22expr_dependency_configEE", !10, i64 0, !72, i64 8, !77, i64 16}
!77 = !{!"_ZTS10ptr_vectorIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyEE", !78, i64 0}
!78 = !{!"_ZTS6vectorIPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyELb0EjE", !79, i64 0}
!79 = !{!"p2 _ZTSN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyE", !18, i64 0}
!80 = !{!"_ZTS14parray_managerIN11ast_manager28expr_dependency_array_configEE", !10, i64 0, !72, i64 8, !81, i64 16, !81, i64 24}
!81 = !{!"_ZTS10ptr_vectorIN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellEE", !82, i64 0}
!82 = !{!"_ZTS6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE", !83, i64 0}
!83 = !{!"p2 _ZTSN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellE", !18, i64 0}
!84 = !{!"_ZTS10ptr_vectorI11decl_pluginE", !85, i64 0}
!85 = !{!"_ZTS6vectorIP11decl_pluginLb0EjE", !86, i64 0}
!86 = !{!"p2 _ZTS11decl_plugin", !18, i64 0}
!87 = !{!"_ZTS14proof_gen_mode", !6, i64 0}
!88 = !{!"_ZTS9ast_table", !89, i64 0}
!89 = !{!"_ZTS10chashtableIP3ast12obj_ptr_hashIS0_E11ast_eq_procE", !90, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !90, i64 40, !90, i64 48, !90, i64 56}
!90 = !{!"p1 _ZTSN10chashtableIP3ast12obj_ptr_hashIS0_E11ast_eq_procE4cellE", !11, i64 0}
!91 = !{!"_ZTS6id_gen", !5, i64 0, !24, i64 8}
!92 = !{!"p1 _ZTS4sort", !11, i64 0}
!93 = !{!"p1 _ZTS3app", !11, i64 0}
!94 = !{!"_ZTS5u_mapIjE", !95, i64 0}
!95 = !{!"_ZTS3mapIjj6u_hash4u_eqE", !96, i64 0}
!96 = !{!"_ZTS9table2mapI17default_map_entryIjjE6u_hash4u_eqE", !97, i64 0}
!97 = !{!"_ZTS14core_hashtableI17default_map_entryIjjEN9table2mapIS1_6u_hash4u_eqE15entry_hash_procENS5_13entry_eq_procEE", !98, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!98 = !{!"p1 _ZTS17default_map_entryIjjE", !11, i64 0}
!99 = !{!"p1 _ZTSSt13basic_fstreamIcSt11char_traitsIcEE", !11, i64 0}
!100 = !{!"_ZTS7obj_mapI9func_declPS0_E", !101, i64 0}
!101 = !{!"_ZTS14core_hashtableIN7obj_mapI9func_declPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE", !102, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!102 = !{!"p1 _ZTSN7obj_mapI9func_declPS0_E13obj_map_entryE", !11, i64 0}
!103 = !{!"p1 _ZTS15some_value_proc", !11, i64 0}
!104 = !{!37, !38, i64 0}
!105 = !{!32, !5, i64 0}
!106 = distinct !{!106, !107}
!107 = !{!"llvm.loop.mustprogress"}
!108 = distinct !{!108, !107}
!109 = distinct !{!109, !107}
!110 = !{!111, !111, i64 0}
!111 = !{!"vtable pointer", !7, i64 0}
!112 = !{!113, !38, i64 0}
!113 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !38, i64 0}
!114 = !{!115, !38, i64 0}
!115 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !113, i64 0, !52, i64 8, !6, i64 16}
!116 = !{!115, !52, i64 8}
!117 = !{!6, !6, i64 0}
!118 = distinct !{!118, !107}
!119 = !{!48, !93, i64 832}
!120 = distinct !{!120, !107}
!121 = !{!38, !38, i64 0}
!122 = !{!123, !124, i64 0}
!123 = !{!"_ZTS6vectorISt4pairIP4exprjELb0EjE", !124, i64 0}
!124 = !{!"p1 _ZTSSt4pairIP4exprjE", !11, i64 0}
!125 = distinct !{!125, !126}
!126 = !{!"llvm.loop.unroll.disable"}
!127 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_1
