Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/pb2bv_rewriter?download=true
inline.NumInlined: 3208
inline.NumDeleted: 831
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6vectorIP4exprLb0EjE13expand_vectorEv:bb.a
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.r, ptr %i.p, align 8, !tbaa !231
  %i.y = load i64, ptr %i.s, align 8, !tbaa !234
  store i64 %i.y, ptr %i.q, align 8, !tbaa !234
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !233
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !233
  store ptr %i.s, ptr %1, align 8, !tbaa !231
  store i64 0, ptr %i.aa, align 8, !tbaa !233
  store i8 0, ptr %i.s, align 8, !tbaa !234
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #25
          to label %bb.m unwind label %bb.h

bb.h:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !231   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.s
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.af = load i64, ptr %i.s, align 8, !tbaa !234
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @__cxa_free_exception(ptr %i.o) #22
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.i
  %.pn32 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ah, %bb.i ]
  resume { ptr, i32 } %.pn32

bb.k:                                             ; preds = %bb.d
  %i.ai = zext i32 %i.l to i64
  %i.aj = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.f, i64 noundef %i.ai) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.ak, ptr %0, align 8, !tbaa !14
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !103
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !229
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.25) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #25
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !264

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !231
  store i64 %i.c, ptr %i.a, align 8, !tbaa !234
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !234
  store i8 %i.j, ptr %i.i, align 1, !tbaa !234
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !233
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !234
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #12

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorIP4exprLb0EjE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !103  ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !103
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.pre = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.pre, i64 -4
  %.pre2 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !103
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi i32 [ %.pre2, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.k = zext i32 %i.h to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k
  %i.m = load ptr, ptr %1, align 8, !tbaa !114
  store ptr %i.m, ptr %i.l, align 8, !tbaa !114
  %i.n = add i32 %i.h, 1
  store i32 %i.n, ptr %i.j, align 4, !tbaa !103
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8psort_nwIN14pb2bv_rewriter3imp16card2bv_rewriterEE18mk_at_most_1_smallEbjPKP4exprS5_R10ptr_vectorIS4_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::allocator", align 1    ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::allocator", align 1    ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::allocator", align 1   ; 4 uses
  %12 = alloca %class.ptr_vector, align 8         ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.std::allocator", align 1   ; 4 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %16 = alloca %"class.std::allocator", align 1   ; 4 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %18 = alloca %"class.std::allocator", align 1   ; 4 uses
  %19 = alloca %class.ptr_vector, align 8         ; 10 uses
  %i.a = icmp eq i32 %2, 1
  br i1 %i.a, label %bb.da, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not142 = icmp eq i32 %2, 0                    ; 2 uses
  br i1 %.not142, label %._crit_edge, label %.lr.ph136

.lr.ph136:                                        ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = zext i32 %2 to i64                       ; 2 uses
  br label %bb.b

.loopexit:                                        ; preds = %_ZN8psort_nwIN14pb2bv_rewriter3imp16card2bv_rewriterEE10add_clauseEjPKP4expr.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond154.not = icmp eq i64 %indvars.iv.next152, %i.h
  br i1 %exitcond154.not, label %._crit_edge, label %bb.b, !llvm.loop !265

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  br i1 %1, label %bb.cd, label %bb.da

bb.b:                                             ; preds = %.lr.ph136, %.loopexit
  %indvars.iv151 = phi i64 [ 0, %.lr.ph136 ], [ %indvars.iv.next152, %.loopexit ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph136 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 3 uses
  %i.i = icmp samesign ult i64 %indvars.iv.next152, %i.h
  br i1 %i.i, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv151
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN8psort_nwIN14pb2bv_rewriter3imp16card2bv_rewriterEE10add_clauseEjPKP4expr.exit
  %indvars.iv148 = phi i64 [ %indvars.iv, %.lr.ph ], [ %indvars.iv.next149, %_ZN8psort_nwIN14pb2bv_rewriter3imp16card2bv_rewriterEE10add_clauseEjPKP4expr.exit ] ; 2 uses
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !248, !nonnull !99, !align !100 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !222, !nonnull !99, !align !100 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 832
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !249  ; 5 uses
  %i.p = icmp eq ptr %4, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 840
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !228  ; 5 uses
  br i1 %i.p, label %_ZN8psort_nwIN14pb2bv_rewriter3imp16card2bv_rewriterEE6mk_notEP4expr.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = icmp eq ptr %4, %i.r
  br i1 %i.s, label %_ZN8psort_nwIN14pb2bv_rewriter3imp16card2bv_rewriterEE6mk_notEP4expr.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i32, ptr %i.c, align 4
  %i.u = and i32 %i.t, 65535
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !193
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !209  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %_ZNK11ast_manager6is_notEPK4expr.exit.i.i.i

_ZNK11ast_manager6is_notEPK4expr.exit.i.i.i:      ; preds = %bb.f
  %i.z = load i32, ptr %i.y, align 8, !tbaa !212
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = icmp eq i32 %i.ac, 8
  %i.ae = select i1 %i.aa, i1 %i.ad, i1 false
  br i1 %i.ae, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZNK11ast_manager6is_notEPK4expr.exit.i.i.i
  %i.af = load i32, ptr %i.e, align 8, !tbaa !197
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !114
  br label %_ZN8psort_nwIN14pb2bv_rewriter3imp16card2bv_rewriterEE6mk_notEP4expr.exit

bb.i:                                             ; preds = %bb.g, %_ZNK11ast_manager6is_notEPK4expr.exit.i.i.i, %bb.f, %bb.e
  %i.ai = tail call noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.m, i32 noundef 0, i32 noundef 8, ptr noundef nonnull %4) ; 4 uses
  %.not.i.i.i.i.i2.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i2.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !108
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !108
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 160 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !14 ; 4 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !103 ; 5 uses
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 -8 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !103
  %i.at = icmp eq i32 %i.aq, %i.as
  br i1 %i.at, label %bb.m, label %_ZN14pb2bv_rewriter3imp16card2bv_rewriter5trailEP4expr.exit.i.i

bb.l:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i.i
  %i.au = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 3 uses
  store i32 2, ptr %i.au, align 4, !tbaa !103
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 0, ptr %i.av, align 4, !tbaa !103
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  store ptr %i.aw, ptr %i.am, align 8, !tbaa !14
  br label %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit

bb.m:                                             ; preds = %bb.k
  %i.ax = mul i32 %i.aq, 3
  %i.ay = add i32 %i.ax, 1
  %i.az = lshr i32 %i.ay, 1                       ; 3 uses
  %i.ba = shl i32 %i.az, 3
  %i.bb = add i32 %i.ba, 8                        ; 2 uses
  %.not.i = icmp ugt i32 %i.az, %i.aq
  br i1 %.not.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bc = shl i32 %i.aq, 3
  %i.bd = add i32 %i.bc, 8
  %.not27.i = icmp ugt i32 %i.bb, %i.bd
  br i1 %.not27.i, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.be = tail call ptr @__cxa_allocate_exception(i64 40) #22 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %18)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.be, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 3 uses
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !229
  %i.bh = load ptr, ptr %17, align 8, !tbaa !231  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !233 ; 3 uses
  %i.bm = icmp ult i64 %i.bl, 16
  call void @llvm.assume(i1 %i.bm)
  %i.bn = add nuw nsw i64 %i.bl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bg, ptr noundef nonnull align 8 dereferenceable(1) %i.bi, i64 %i.bn, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.p
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !231
  %i.bo = load i64, ptr %i.bi, align 8, !tbaa !234
  store i64 %i.bo, ptr %i.bg, align 8, !tbaa !234
  %.phi.trans.insert.i63 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %.pre.i64 = load i64, ptr %.phi.trans.insert.i63, align 8, !tbaa !233
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.q
  %i.bp = phi i64 [ %i.bl, %bb.q ], [ %.pre.i64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 %i.bp, ptr %i.br, align 8, !tbaa !233
  store ptr %i.bi, ptr %17, align 8, !tbaa !231
  store i64 0, ptr %i.bq, align 8, !tbaa !233
  store i8 0, ptr %i.bi, align 8, !tbaa !234
  invoke void @__cxa_throw(ptr nonnull %i.be, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #25
          to label %bb.u unwind label %bb.r

bb.r:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  %i.bt = load ptr, ptr %17, align 8, !tbaa !231  ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bi
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.r
  %i.bv = load i64, ptr %i.bi, align 8, !tbaa !234
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
end_hunk_0
begin_hunk_1_@_ZN8psort_nwIN14pb2bv_rewriter3imp16card2bv_rewriterEE18mk_at_most_1_smallEbjPKP4exprS5_R10ptr_vectorIS4_E:bb.a
  %i.hb = shl i32 %i.gp, 3
  %i.hc = add i32 %i.hb, 8
  %.not27.i85 = icmp ugt i32 %i.ha, %i.hc
  br i1 %.not27.i85, label %bb.bd, label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.hd = tail call ptr @__cxa_allocate_exception(i64 40) #22 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %bb.ay
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.hd, align 8, !tbaa !18
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 24 ; 3 uses
  store ptr %i.hf, ptr %i.he, align 8, !tbaa !229
  %i.hg = load ptr, ptr %13, align 8, !tbaa !231  ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.hi = icmp eq ptr %i.hg, %i.hh
  br i1 %i.hi, label %bb.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78

bb.ba:                                            ; preds = %bb.az
  %i.hj = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !233 ; 3 uses
  %i.hl = icmp ult i64 %i.hk, 16
  call void @llvm.assume(i1 %i.hl)
  %i.hm = add nuw nsw i64 %i.hk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hf, ptr noundef nonnull align 8 dereferenceable(1) %i.hh, i64 %i.hm, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78: ; preds = %bb.az
  store ptr %i.hg, ptr %i.he, align 8, !tbaa !231
  %i.hn = load i64, ptr %i.hh, align 8, !tbaa !234
  store i64 %i.hn, ptr %i.hf, align 8, !tbaa !234
  %.phi.trans.insert.i79 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.pre.i80 = load i64, ptr %.phi.trans.insert.i79, align 8, !tbaa !233
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i81

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i81: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78, %bb.ba
  %i.ho = phi i64 [ %i.hk, %bb.ba ], [ %.pre.i80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78 ]
  %i.hp = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  store i64 %i.ho, ptr %i.hq, align 8, !tbaa !233
  store ptr %i.hh, ptr %13, align 8, !tbaa !231
  store i64 0, ptr %i.hp, align 8, !tbaa !233
  store i8 0, ptr %i.hh, align 8, !tbaa !234
  invoke void @__cxa_throw(ptr nonnull %i.hd, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #25
          to label %bb.be unwind label %bb.bb

bb.bb:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i81
  %i.hr = landingpad { ptr, i32 }
          cleanup
  %i.hs = load ptr, ptr %13, align 8, !tbaa !231  ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.hh
  br i1 %i.ht, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i82: ; preds = %bb.bb
  %i.hu = load i64, ptr %i.hh, align 8, !tbaa !234
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i83: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i82
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %common.resume

bb.bc:                                            ; preds = %bb.ay
  %i.hw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @__cxa_free_exception(ptr %i.hd) #22
  br label %common.resume

bb.bd:                                            ; preds = %bb.ax
  %i.hx = zext i32 %i.ha to i64
  %i.hy = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.gq, i64 noundef %i.hx) ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8 ; 2 uses
  store ptr %i.hz, ptr %i.gl, align 8, !tbaa !14
  store i32 %i.gy, ptr %i.hy, align 4, !tbaa !103
  br label %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit86

bb.be:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i81
  unreachable

_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit86:  ; preds = %bb.av, %bb.bd
  %.pre.i.i.i.i.i48 = phi ptr [ %i.gv, %bb.av ], [ %i.hz, %bb.bd ] ; 2 uses
  %.phi.trans.insert.i.i.i.i.i49 = getelementptr inbounds i8, ptr %.pre.i.i.i.i.i48, i64 -4
  %.pre2.i.i.i.i.i50 = load i32, ptr %.phi.trans.insert.i.i.i.i.i49, align 4, !tbaa !103
  br label %_ZN14pb2bv_rewriter3imp16card2bv_rewriter5trailEP4expr.exit.i.i46

_ZN14pb2bv_rewriter3imp16card2bv_rewriter5trailEP4expr.exit.i.i46: ; preds = %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit86, %bb.au
  %i.ia = phi i32 [ %.pre2.i.i.i.i.i50, %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit86 ], [ %i.gp, %bb.au ] ; 2 uses
  %i.ib = phi ptr [ %.pre.i.i.i.i.i48, %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit86 ], [ %i.gm, %bb.au ] ; 2 uses
  %i.ic = getelementptr inbounds i8, ptr %i.ib, i64 -4
  %i.id = zext i32 %i.ia to i64
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.id
  store ptr %i.gh, ptr %i.ie, align 8, !tbaa !114
  %i.if = add i32 %i.ia, 1
  store i32 %i.if, ptr %i.ic, align 4, !tbaa !103
  %.pre183 = load ptr, ptr %i.b, align 8, !tbaa !248
  %.phi.trans.insert184 = getelementptr inbounds nuw i8, ptr %.pre183, i64 32
  %.pre185 = load ptr, ptr %.phi.trans.insert184, align 8, !tbaa !222
  %.phi.trans.insert186 = getelementptr inbounds nuw i8, ptr %.pre185, i64 832
  %.pre187 = load ptr, ptr %.phi.trans.insert186, align 8, !tbaa !249
  br label %_ZN8psort_nwIN14pb2bv_rewriter3imp16card2bv_rewriterEE6mk_notEP4expr.exit53

_ZN8psort_nwIN14pb2bv_rewriter3imp16card2bv_rewriterEE6mk_notEP4expr.exit53: ; preds = %_ZN8psort_nwIN14pb2bv_rewriter3imp16card2bv_rewriterEE6mk_notEP4expr.exit43, %bb.an, %bb.ar, %_ZN14pb2bv_rewriter3imp16card2bv_rewriter5trailEP4expr.exit.i.i46
  %i.ig = phi ptr [ %.pre187, %_ZN14pb2bv_rewriter3imp16card2bv_rewriter5trailEP4expr.exit.i.i46 ], [ %i.fh, %bb.an ], [ %i.fh, %bb.ar ], [ %i.fh, %_ZN8psort_nwIN14pb2bv_rewriter3imp16card2bv_rewriterEE6mk_notEP4expr.exit43 ] ; 3 uses
  %.0.i47 = phi ptr [ %i.gh, %_ZN14pb2bv_rewriter3imp16card2bv_rewriter5trailEP4expr.exit.i.i46 ], [ %i.fh, %bb.an ], [ %i.gg, %bb.ar ], [ %i.fg, %_ZN8psort_nwIN14pb2bv_rewriter3imp16card2bv_rewriterEE6mk_notEP4expr.exit43 ] ; 2 uses
  %i.ih = icmp eq ptr %.0.i, %i.ig
  %i.ii = icmp eq ptr %.0.i37, %i.ig
  %or.cond = select i1 %i.ih, i1 true, i1 %i.ii
  %i.ij = icmp eq ptr %.0.i47, %i.ig
  %or.cond297 = select i1 %or.cond, i1 true, i1 %i.ij
  br i1 %or.cond297, label %_ZN8psort_nwIN14pb2bv_rewriter3imp16card2bv_rewriterEE10add_clauseEjPKP4expr.exit, label %bb.bk

split:                                            ; preds = %bb.bm, %bb.bl
  %i.ik = tail call ptr @__cxa_allocate_exception(i64 40) #22 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.bf unwind label %bb.bi

bb.bf:                                            ; preds = %split
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.ik, align 8, !tbaa !18
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 24 ; 3 uses
  store ptr %i.im, ptr %i.il, align 8, !tbaa !229
  %i.in = load ptr, ptr %6, align 8, !tbaa !231   ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.ip = icmp eq ptr %i.in, %i.io
  br i1 %i.ip, label %bb.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i117

bb.bg:                                            ; preds = %bb.bf
  %i.iq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !233 ; 3 uses
  %i.is = icmp ult i64 %i.ir, 16
  call void @llvm.assume(i1 %i.is)
  %i.it = add nuw nsw i64 %i.ir, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.im, ptr noundef nonnull align 8 dereferenceable(1) %i.io, i64 %i.it, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i117: ; preds = %bb.bf
  store ptr %i.in, ptr %i.il, align 8, !tbaa !231
  %i.iu = load i64, ptr %i.io, align 8, !tbaa !234
  store i64 %i.iu, ptr %i.im, align 8, !tbaa !234
  %.phi.trans.insert.i118 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre.i119 = load i64, ptr %.phi.trans.insert.i118, align 8, !tbaa !233
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i120

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i120: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i117, %bb.bg
  %i.iv = phi i64 [ %i.ir, %bb.bg ], [ %.pre.i119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i117 ]
  %i.iw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  store i64 %i.iv, ptr %i.ix, align 8, !tbaa !233
  store ptr %i.io, ptr %6, align 8, !tbaa !231
  store i64 0, ptr %i.iw, align 8, !tbaa !233
  store i8 0, ptr %i.io, align 8, !tbaa !234
  invoke void @__cxa_throw(ptr nonnull %i.ik, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #25
          to label %bb.bj unwind label %bb.bh

bb.bh:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i120
  %i.iy = landingpad { ptr, i32 }
          cleanup
  %i.iz = load ptr, ptr %6, align 8, !tbaa !231   ; 2 uses
  %i.ja = icmp eq ptr %i.iz, %i.io
  br i1 %i.ja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i121: ; preds = %bb.bh
  %i.jb = load i64, ptr %i.io, align 8, !tbaa !234
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i122

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i122: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.resume

bb.bi:                                            ; preds = %split
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @__cxa_free_exception(ptr %i.ik) #22
  br label %common.resume

bb.bj:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i120
  unreachable

bb.bk:                                            ; preds = %_ZN8psort_nwIN14pb2bv_rewriter3imp16card2bv_rewriterEE6mk_notEP4expr.exit53
  %i.je = load <2 x i32>, ptr %i.g, align 8, !tbaa !103
  %i.jf = add <2 x i32> %i.je, <i32 1, i32 3>
  store <2 x i32> %i.jf, ptr %i.g, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.jg = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 8 uses
  store i32 2, ptr %i.jg, align 4, !tbaa !103
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  store ptr %.0.i, ptr %i.jh, align 8, !tbaa !114
  store i32 1, ptr %i.ji, align 4, !tbaa !103
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  store ptr %.0.i37, ptr %i.jk, align 8, !tbaa !114
  store i32 2, ptr %i.jj, align 4, !tbaa !103
  %i.jl = load i32, ptr %i.jg, align 8, !tbaa !103
  %i.jm = icmp eq i32 %i.jl, 2
  br i1 %i.jm, label %bb.bl, label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i.i.i.2

bb.bl:                                            ; preds = %bb.bk
  %i.jn = load i32, ptr %i.jg, align 8, !tbaa !103 ; 3 uses
  %i.jo = mul i32 %i.jn, 3
  %i.jp = add i32 %i.jo, 1
  %i.jq = lshr i32 %i.jp, 1                       ; 3 uses
  %i.jr = shl i32 %i.jq, 3
  %i.js = add i32 %i.jr, 8                        ; 2 uses
  %.not.i115.2 = icmp ugt i32 %i.jq, %i.jn
  br i1 %.not.i115.2, label %bb.bm, label %split

bb.bm:                                            ; preds = %bb.bl
  %i.jt = shl i32 %i.jn, 3
  %i.ju = add i32 %i.jt, 8
  %.not27.i124.2 = icmp ugt i32 %i.js, %i.ju
  br i1 %.not27.i124.2, label %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit125.2, label %split

_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit125.2: ; preds = %bb.bm
  %i.jv = zext i32 %i.js to i64
  %i.jw = tail call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.jg, i64 noundef %i.jv) ; 3 uses
  store i32 %i.jq, ptr %i.jw, align 4, !tbaa !103
  %.phi.trans.insert.i.i.i.i.2.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  %.pre2.i.i.i.i.2.pre = load i32, ptr %.phi.trans.insert.i.i.i.i.2.phi.trans.insert, align 4, !tbaa !103
  %20 = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  br label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i.i.i.2

_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i.i.i.2: ; preds = %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit125.2, %bb.bk
  %i.jx = phi ptr [ %20, %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit125.2 ], [ %i.jh, %bb.bk ] ; 4 uses
  %i.jy = phi i32 [ %.pre2.i.i.i.i.2.pre, %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit125.2 ], [ 2, %bb.bk ] ; 2 uses
  %i.jz = getelementptr inbounds i8, ptr %i.jx, i64 -4
  %i.ka = zext i32 %i.jy to i64
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.jx, i64 %i.ka
  store ptr %.0.i47, ptr %i.kb, align 8, !tbaa !114
  %i.kc = add i32 %i.jy, 1
  store i32 %i.kc, ptr %i.jz, align 4, !tbaa !103
  store ptr %i.jx, ptr %12, align 8
  %i.kd = load ptr, ptr %i.b, align 8, !tbaa !248, !nonnull !99, !align !100 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 40
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !221, !nonnull !99, !align !100
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 32
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !222, !nonnull !99, !align !100
  %i.ki = invoke noundef ptr @_Z5mk_orR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.kh, i32 noundef 3, ptr noundef nonnull %i.jx)
          to label %.noexc.i unwind label %bb.cc  ; 3 uses

.noexc.i:                                         ; preds = %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i.i.i.2
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ki, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %.noexc.i
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8 ; 2 uses
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !108
  %i.kl = add i32 %i.kk, 1
  store i32 %i.kl, ptr %i.kj, align 4, !tbaa !108
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.bn, %.noexc.i
  %i.km = getelementptr inbounds nuw i8, ptr %i.kf, i64 24 ; 3 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !14 ; 4 uses
  %i.ko = icmp eq ptr %i.kn, null
  br i1 %i.ko, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.kp = getelementptr inbounds i8, ptr %i.kn, i64 -4
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !103 ; 5 uses
  %i.kr = getelementptr inbounds i8, ptr %i.kn, i64 -8 ; 2 uses
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !103
  %i.kt = icmp eq i32 %i.kq, %i.ks
  br i1 %i.kt, label %bb.bq, label %bb.bz

bb.bp:                                            ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.ku = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc110 unwind label %bb.cc ; 3 uses

.noexc110:                                        ; preds = %bb.bp
  store i32 2, ptr %i.ku, align 4, !tbaa !103
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 4
  store i32 0, ptr %i.kv, align 4, !tbaa !103
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 8 ; 2 uses
  store ptr %i.kw, ptr %i.km, align 8, !tbaa !14
  br label %.noexc16.i

bb.bq:                                            ; preds = %bb.bo
  %i.kx = mul i32 %i.kq, 3
  %i.ky = add i32 %i.kx, 1
  %i.kz = lshr i32 %i.ky, 1                       ; 3 uses
  %i.la = shl i32 %i.kz, 3
  %i.lb = add i32 %i.la, 8                        ; 2 uses
  %.not.i100 = icmp ugt i32 %i.kz, %i.kq
  br i1 %.not.i100, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.lc = shl i32 %i.kq, 3
  %i.ld = add i32 %i.lc, 8
  %.not27.i109 = icmp ugt i32 %i.lb, %i.ld
  br i1 %.not27.i109, label %bb.bx, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.le = tail call ptr @__cxa_allocate_exception(i64 40) #22 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.bt unwind label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.le, align 8, !tbaa !18
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 24 ; 3 uses
  store ptr %i.lg, ptr %i.lf, align 8, !tbaa !229
  %i.lh = load ptr, ptr %8, align 8, !tbaa !231   ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  %i.lj = icmp eq ptr %i.lh, %i.li
  br i1 %i.lj, label %bb.bu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102

bb.bu:                                            ; preds = %bb.bt
  %i.lk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !233 ; 3 uses
  %i.lm = icmp ult i64 %i.ll, 16
  call void @llvm.assume(i1 %i.lm)
  %i.ln = add nuw nsw i64 %i.ll, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lg, ptr noundef nonnull align 8 dereferenceable(1) %i.li, i64 %i.ln, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102: ; preds = %bb.bt
  store ptr %i.lh, ptr %i.lf, align 8, !tbaa !231
  %i.lo = load i64, ptr %i.li, align 8, !tbaa !234
  store i64 %i.lo, ptr %i.lg, align 8, !tbaa !234
  %.phi.trans.insert.i103 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.pre.i104 = load i64, ptr %.phi.trans.insert.i103, align 8, !tbaa !233
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i105

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i105: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102, %bb.bu
  %i.lp = phi i64 [ %i.ll, %bb.bu ], [ %.pre.i104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102 ]
  %i.lq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  store i64 %i.lp, ptr %i.lr, align 8, !tbaa !233
  store ptr %i.li, ptr %8, align 8, !tbaa !231
  store i64 0, ptr %i.lq, align 8, !tbaa !233
  store i8 0, ptr %i.li, align 8, !tbaa !234
  invoke void @__cxa_throw(ptr nonnull %i.le, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #25
          to label %bb.by unwind label %bb.bv

bb.bv:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i105
  %i.ls = landingpad { ptr, i32 }
          cleanup
  %i.lt = load ptr, ptr %8, align 8, !tbaa !231   ; 2 uses
  %i.lu = icmp eq ptr %i.lt, %i.li
  br i1 %i.lu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i106: ; preds = %bb.bv
  %i.lv = load i64, ptr %i.li, align 8, !tbaa !234
  %i.lw = add i64 %i.lv, 1
  call void @_ZdlPvm(ptr noundef %i.lt, i64 noundef %i.lw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i107

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i107: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %.body111

bb.bw:                                            ; preds = %bb.bs
  %i.lx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @__cxa_free_exception(ptr %i.le) #22
  br label %.body111

bb.bx:                                            ; preds = %bb.br
  %i.ly = zext i32 %i.lb to i64
  %i.lz = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.kr, i64 noundef %i.ly)
          to label %.noexc113 unwind label %bb.cc ; 2 uses

.noexc113:                                        ; preds = %bb.bx
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8 ; 2 uses
  store ptr %i.ma, ptr %i.km, align 8, !tbaa !14
  store i32 %i.kz, ptr %i.lz, align 4, !tbaa !103
  br label %.noexc16.i

bb.by:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i105
  unreachable

.noexc16.i:                                       ; preds = %.noexc113, %.noexc110
  %.pre.i.i.i13.i = phi ptr [ %i.ma, %.noexc113 ], [ %i.kw, %.noexc110 ] ; 2 uses
  %.phi.trans.insert.i.i.i14.i = getelementptr inbounds i8, ptr %.pre.i.i.i13.i, i64 -4
  %.pre2.i.i.i15.i = load i32, ptr %.phi.trans.insert.i.i.i14.i, align 4, !tbaa !103
  br label %bb.bz

bb.bz:                                            ; preds = %.noexc16.i, %bb.bo
  %i.mb = phi i32 [ %.pre2.i.i.i15.i, %.noexc16.i ], [ %i.kq, %bb.bo ] ; 2 uses
  %i.mc = phi ptr [ %.pre.i.i.i13.i, %.noexc16.i ], [ %i.kn, %bb.bo ] ; 2 uses
  %i.md = getelementptr inbounds i8, ptr %i.mc, i64 -4
  %i.me = zext i32 %i.mb to i64
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %i.me
  store ptr %i.ki, ptr %i.mf, align 8, !tbaa !114
  %i.mg = add i32 %i.mb, 1
  store i32 %i.mg, ptr %i.md, align 4, !tbaa !103
  %i.mh = load ptr, ptr %12, align 8, !tbaa !14   ; 2 uses
  %.not.i.i17.i = icmp eq ptr %i.mh, null
  br i1 %.not.i.i17.i, label %_ZN6vectorIP4exprLb0EjED2Ev.exit.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.mi = getelementptr inbounds i8, ptr %i.mh, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.mi)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit.i unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.mj = landingpad { ptr, i32 }
          catch ptr null
  %i.mk = extractvalue { ptr, i32 } %i.mj, 0
  tail call void @__clang_call_terminate(ptr %i.mk) #23
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit.i:               ; preds = %bb.ca, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %_ZN8psort_nwIN14pb2bv_rewriter3imp16card2bv_rewriterEE10add_clauseEjPKP4expr.exit

bb.cc:                                            ; preds = %bb.bx, %bb.bp, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i.i.i.2
  %i.ml = landingpad { ptr, i32 }
          cleanup
  br label %.body111

.body111:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i107, %bb.bw, %bb.cc
  %eh.lpad-body112 = phi { ptr, i32 } [ %i.ml, %bb.cc ], [ %i.ls, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i107 ], [ %i.lx, %bb.bw ]
  call void @_ZN6vectorIP4exprLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %common.resume

_ZN8psort_nwIN14pb2bv_rewriter3imp16card2bv_rewriterEE10add_clauseEjPKP4expr.exit: ; preds = %_ZN8psort_nwIN14pb2bv_rewriter3imp16card2bv_rewriterEE6mk_notEP4expr.exit53, %_ZN6vectorIP4exprLb0EjED2Ev.exit.i
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next149 to i32
  %exitcond.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !266

bb.cd:                                            ; preds = %._crit_edge
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !253
end_hunk_1
