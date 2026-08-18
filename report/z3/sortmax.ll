inline.NumInlined: 607
inline.NumDeleted: 295
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN8rationalD2Ev:bb.a
bb.a:
  %i.a = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !66 ; 2 uses
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_ZN11mpq_managerILb1EE3delEPS0_R3mpq.exit unwind label %bb.b

_ZN11mpq_managerILb1EE3delEPS0_R3mpq.exit:        ; preds = %.noexc
  ret void

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #17
  unreachable
}

declare void @_ZN11mpz_managerILb1EE3delEPS0_R3mpz(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN3opt18maxsmt_solver_base4initEv(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !85
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #20
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !124

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #21 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !102
  store i64 %i.c, ptr %i.a, align 8, !tbaa !91
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !91
  store i8 %i.j, ptr %i.i, align 1, !tbaa !91
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !88
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !91
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN17default_exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !91
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8psort_nwIN3opt7sortmaxEE7sortingEjPKP4exprR10ptr_vectorIS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.ptr_vector, align 8          ; 8 uses
  %5 = alloca %class.ptr_vector, align 8          ; 8 uses
  switch i32 %1, label %bb.f [
    i32 0, label %bb.s
    i32 1, label %bb.b
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !43     ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !44   ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !44
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %bb.d, label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !43  ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !44
  br label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit:     ; preds = %bb.c, %bb.d
  %i.h = phi i32 [ %.pre2.i, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %i.i = phi ptr [ %.pre.i, %bb.d ], [ %i.a, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.k = zext i32 %i.h to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k
  %i.m = load ptr, ptr %2, align 8, !tbaa !45
  store ptr %i.m, ptr %i.l, align 8, !tbaa !45
  %i.n = add i32 %i.h, 1
  store i32 %i.n, ptr %i.j, align 4, !tbaa !44
  br label %bb.s

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @_ZN8psort_nwIN3opt7sortmaxEE5mergeEjPKP4exprjS6_R10ptr_vectorIS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1, ptr noundef %2, i32 noundef 1, ptr noundef nonnull %i.o, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.s

bb.f:                                             ; preds = %bb.a
  %i.p = icmp ult i32 %1, 10
  br i1 %i.p, label %bb.g, label %._ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit.thread_crit_edge

._ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit.thread_crit_edge: ; preds = %bb.f
  %.pre = lshr i32 %1, 1
  br label %_ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !125
  %.pre.i.i = add nsw i32 %1, -1
  %.pre23.i.i = shl nuw nsw i32 1, %.pre.i.i      ; 3 uses
  switch i32 %i.r, label %.thread.fold.split.i.i [
    i32 1, label %.thread.i.i
    i32 0, label %_ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit
  ]

.thread.fold.split.i.i:                           ; preds = %bb.g
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.fold.split.i.i, %bb.g
  %.sroa.6.022.i.i = phi i32 [ 0, %bb.g ], [ %.pre23.i.i, %.thread.fold.split.i.i ]
  %i.s = add nuw nsw i32 %.sroa.6.022.i.i, %.pre23.i.i
  br label %_ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit

_ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit: ; preds = %bb.g, %.thread.i.i
  %.sroa.6.1.i.i = phi i32 [ %.pre23.i.i, %bb.g ], [ %i.s, %.thread.i.i ]
  %i.t = lshr i32 %1, 1                           ; 4 uses
  %i.u = tail call i64 @_ZN8psort_nwIN3opt7sortmaxEE10vc_sortingEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.t), !inline_history !129 ; 2 uses
  %.sroa.415.0.extract.shift.i = lshr i64 %i.u, 32
  %.sroa.415.0.extract.trunc.i = trunc nuw i64 %.sroa.415.0.extract.shift.i to i32
  %i.v = sub nuw nsw i32 %1, %i.t                 ; 2 uses
  %i.w = tail call i64 @_ZN8psort_nwIN3opt7sortmaxEE10vc_sortingEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.v), !inline_history !129 ; 2 uses
  %.sroa.413.0.extract.shift.i = lshr i64 %i.w, 32
  %.sroa.413.0.extract.trunc.i = trunc nuw i64 %.sroa.413.0.extract.shift.i to i32
  %i.x = add i64 %i.w, %i.u
  %i.y = add i32 %.sroa.413.0.extract.trunc.i, %.sroa.415.0.extract.trunc.i
  %i.z = tail call i64 @_ZN8psort_nwIN3opt7sortmaxEE8vc_mergeEjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.t, i32 noundef %i.v), !inline_history !129 ; 2 uses
  %.sroa.411.0.extract.shift.i = lshr i64 %i.z, 32
  %.sroa.411.0.extract.trunc.i = trunc nuw i64 %.sroa.411.0.extract.shift.i to i32
  %i.aa = add i64 %i.x, %i.z
  %i.ab = add i32 %i.y, %.sroa.411.0.extract.trunc.i
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.aa to i32
  %i.ac = mul nuw nsw i32 %1, 5
  %i.ad = add nuw nsw i32 %.sroa.6.1.i.i, %i.ac
  %i.ae = mul i32 %.sroa.0.0.extract.trunc.i, 5
  %i.af = add i32 %i.ab, %i.ae
  %i.ag = icmp ult i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %_ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit.thread

bb.h:                                             ; preds = %_ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit
  tail call void @_ZN8psort_nwIN3opt7sortmaxEE8dsortingEjjPKP4exprR10ptr_vectorIS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %bb.s

_ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit.thread: ; preds = %._ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit.thread_crit_edge, %_ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit
  %.pre-phi = phi i32 [ %.pre, %._ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit.thread_crit_edge ], [ %i.t, %_ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr null, ptr %4, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr null, ptr %5, align 8, !tbaa !43
  invoke void @_ZN8psort_nwIN3opt7sortmaxEE7sortingEjPKP4exprR10ptr_vectorIS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.pre-phi, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %_ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit.thread
  %i.ah = sub nuw i32 %1, %.pre-phi
  %i.ai = zext nneg i32 %.pre-phi to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ai
  invoke void @_ZN8psort_nwIN3opt7sortmaxEE7sortingEjPKP4exprR10ptr_vectorIS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.ah, ptr noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %4, align 8, !tbaa !43    ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !44
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit:             ; preds = %bb.j, %bb.k
  %.0.i = phi i32 [ %i.an, %bb.k ], [ 0, %bb.j ]
  %i.ao = load ptr, ptr %5, align 8, !tbaa !43    ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit22, label %bb.l

bb.l:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !44
  br label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit22

_ZNK6vectorIP4exprLb0EjE4sizeEv.exit22:           ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit, %bb.l
  %.0.i21 = phi i32 [ %i.ar, %bb.l ], [ 0, %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit ]
  invoke void @_ZN8psort_nwIN3opt7sortmaxEE5mergeEjPKP4exprjS6_R10ptr_vectorIS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0.i, ptr noundef %i.ak, i32 noundef %.0.i21, ptr noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit22
  %i.as = load ptr, ptr %5, align 8, !tbaa !43    ; 2 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.at)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #17
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit:                 ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.aw = load ptr, ptr %4, align 8, !tbaa !43    ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i23, label %_ZN6vectorIP4exprLb0EjED2Ev.exit24, label %bb.p

bb.p:                                             ; preds = %_ZN6vectorIP4exprLb0EjED2Ev.exit
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ax)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit24 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #17
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit24:               ; preds = %_ZN6vectorIP4exprLb0EjED2Ev.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.s

bb.r:                                             ; preds = %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit22, %bb.i, %_ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit.thread
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIP4exprLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @_ZN6vectorIP4exprLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %i.ba

bb.s:                                             ; preds = %bb.h, %_ZN6vectorIP4exprLb0EjED2Ev.exit24, %bb.e, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(112) ptr @_ZN3opt18maxsmt_solver_base1sEv(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #1

declare void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef) local_unnamed_addr #1

declare void @_ZN3opt18maxsmt_solver_base12trace_boundsEPKc(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) local_unnamed_addr #1

declare noundef i32 @_ZN6solver9check_satEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(112), i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZplRK8rationalS1_(ptr dead_on_unwind noalias writable sret(%class.rational) align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.rational, align 8            ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store i32 0, ptr %3, align 8, !tbaa !108
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = and i8 %i.b, -4                          ; 2 uses
  store i8 %i.c, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.d, align 8, !tbaa !115
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store i32 1, ptr %i.e, align 8, !tbaa !108
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 5 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, -4
  store i8 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %i.i, align 8, !tbaa !115
  %i.j = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !66 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i8, ptr %i.k, align 4
  %i.m = and i8 %i.l, 1
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %1, align 8, !tbaa !108
  store i32 %i.o, ptr %3, align 8, !tbaa !108
  store i8 %i.c, ptr %i.a, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

bb.c:                                             ; preds = %bb.a
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i:   ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.r = load i8, ptr %i.q, align 4
  %i.s = and i8 %i.r, 1
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  %i.u = load i32, ptr %i.p, align 8, !tbaa !108
  store i32 %i.u, ptr %i.e, align 8, !tbaa !108
  %i.v = load i8, ptr %i.f, align 4
  %i.w = and i8 %i.v, -2
  store i8 %i.w, ptr %i.f, align 4
  br label %_ZN8rationalC2ERKS_.exit

bb.e:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i
  call void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.p)
  br label %_ZN8rationalC2ERKS_.exit

_ZN8rationalC2ERKS_.exit:                         ; preds = %bb.d, %bb.e
  %i.x = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !66
  invoke void @_ZN11mpq_managerILb1EE3addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN8rationalpLERKS_.exit unwind label %bb.k

_ZN8rationalpLERKS_.exit:                         ; preds = %_ZN8rationalC2ERKS_.exit
  store i32 0, ptr %0, align 8, !tbaa !108
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.z = load i8, ptr %i.y, align 4
  %i.aa = and i8 %i.z, -4                         ; 2 uses
  store i8 %i.aa, ptr %i.y, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.ab, align 8, !tbaa !115
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 1, ptr %i.ac, align 8, !tbaa !108
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.ae = load i8, ptr %i.ad, align 4
  %i.af = and i8 %i.ae, -4
  store i8 %i.af, ptr %i.ad, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.ag, align 8, !tbaa !115
  %i.ah = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !66 ; 2 uses
  %i.ai = load i8, ptr %i.a, align 4
  %i.aj = and i8 %i.ai, 1
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN8rationalpLERKS_.exit
  %i.al = load i32, ptr %3, align 8, !tbaa !108
  store i32 %i.al, ptr %0, align 8, !tbaa !108
  store i8 %i.aa, ptr %i.y, align 4
  br label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i3

bb.g:                                             ; preds = %_ZN8rationalpLERKS_.exit
  invoke void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i3 unwind label %bb.k

_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i3:  ; preds = %bb.g, %bb.f
  %i.am = load i8, ptr %i.f, align 4
  %i.an = and i8 %i.am, 1
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i3
  %i.ap = load i32, ptr %i.e, align 8, !tbaa !108
  store i32 %i.ap, ptr %i.ac, align 8, !tbaa !108
  %i.aq = load i8, ptr %i.ad, align 4
  %i.ar = and i8 %i.aq, -2
  store i8 %i.ar, ptr %i.ad, align 4
  br label %_ZN8rationalC2ERKS_.exit5

bb.i:                                             ; preds = %_ZN11mpq_managerILb1EE3setER3mpzRKS1_.exit.i.i3
end_hunk_0
begin_hunk_1_@_ZN8psort_nwIN3opt7sortmaxEE8dsortingEjjPKP4exprR10ptr_vectorIS3_E:bb.a
  %i.az = zext i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !45
  %i.bc = invoke noundef ptr @_ZN8psort_nwIN3opt7sortmaxEE6mk_notEP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.bb)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bd = load ptr, ptr %5, align 8, !tbaa !43    ; 4 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !44 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 -8
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !44
  %i.bj = icmp eq i32 %i.bg, %i.bi
  br i1 %i.bj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc42 unwind label %bb.q

.noexc42:                                         ; preds = %bb.o
  %.pre.i39 = load ptr, ptr %5, align 8, !tbaa !43 ; 2 uses
  %.phi.trans.insert.i40 = getelementptr inbounds i8, ptr %.pre.i39, i64 -4
  %.pre2.i41 = load i32, ptr %.phi.trans.insert.i40, align 4, !tbaa !44
  br label %bb.p

bb.p:                                             ; preds = %.noexc42, %bb.n
  %i.bk = phi i32 [ %.pre2.i41, %.noexc42 ], [ %i.bg, %bb.n ] ; 2 uses
  %i.bl = phi ptr [ %.pre.i39, %.noexc42 ], [ %i.bd, %bb.n ] ; 2 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -4
  %i.bn = zext i32 %i.bk to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bn
  store ptr %i.bc, ptr %i.bo, align 8, !tbaa !45
  %i.bp = add i32 %i.bk, 1
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !44
  %i.bq = sub i32 %i.aw, %.050
  invoke void @_ZN8psort_nwIN3opt7sortmaxEE10add_subsetEbjjR10ptr_vectorI4exprEjPKPS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext false, i32 noundef %i.bq, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %2, ptr noundef %3)
          to label %.critedge unwind label %bb.r

.critedge:                                        ; preds = %bb.p
  %i.br = load ptr, ptr %5, align 8, !tbaa !43
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -4 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !44
  %i.bu = add i32 %i.bt, -1
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !44
  %i.bv = add i32 %.050, 1                        ; 2 uses
  %.not31 = icmp ugt i32 %i.bv, %1
  br i1 %.not31, label %.loopexit, label %bb.l, !llvm.loop !137

bb.q:                                             ; preds = %bb.o, %bb.l
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit:                                        ; preds = %.critedge, %bb.a, %thread-pre-split
  %i.by = load ptr, ptr %5, align 8, !tbaa !43    ; 2 uses
  %.not.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %.loopexit
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bz)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #17
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit:                 ; preds = %.loopexit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void

bb.u:                                             ; preds = %bb.q, %bb.r, %bb.k, %bb.f
  %.pn33 = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.au, %bb.k ], [ %i.bx, %bb.r ], [ %i.bw, %bb.q ]
  call void @_ZN6vectorIP4exprLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %.pn33
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8psort_nwIN3opt7sortmaxEE3cmpEP4exprS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  %i.b = alloca [2 x ptr], align 16               ; 5 uses
  %i.c = alloca [2 x ptr], align 16               ; 5 uses
  %i.d = alloca [3 x ptr], align 16               ; 6 uses
  %i.e = alloca [2 x ptr], align 16               ; 5 uses
  %i.f = alloca [2 x ptr], align 16               ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !125
  switch i32 %i.h, label %bb.e [
    i32 0, label %bb.b
    i32 4, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.i = tail call noundef ptr @_ZN8psort_nwIN3opt7sortmaxEE6mk_notEP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store ptr %i.i, ptr %i.f, align 16, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %3, ptr %i.j, align 8, !tbaa !45
  call void @_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, ptr noundef nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  %i.k = call noundef ptr @_ZN8psort_nwIN3opt7sortmaxEE6mk_notEP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store ptr %i.k, ptr %i.e, align 16, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %3, ptr %i.l, align 8, !tbaa !45
  call void @_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  %i.m = call noundef ptr @_ZN8psort_nwIN3opt7sortmaxEE6mk_notEP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1)
  %i.n = call noundef ptr @_ZN8psort_nwIN3opt7sortmaxEE6mk_notEP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store ptr %i.m, ptr %i.d, align 16, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !45
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %4, ptr %i.p, align 16, !tbaa !45
  call void @_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.q = tail call noundef ptr @_ZN8psort_nwIN3opt7sortmaxEE6mk_notEP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store ptr %i.q, ptr %i.c, align 16, !tbaa !45
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %1, ptr %i.r, align 8, !tbaa !45
  call void @_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.s = call noundef ptr @_ZN8psort_nwIN3opt7sortmaxEE6mk_notEP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr %i.s, ptr %i.b, align 16, !tbaa !45
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.t, align 8, !tbaa !45
  call void @_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.u = call noundef ptr @_ZN8psort_nwIN3opt7sortmaxEE6mk_notEP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %i.u, ptr %i.a, align 16, !tbaa !45
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.v, align 8, !tbaa !45
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.w, align 16, !tbaa !45
  call void @_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN8psort_nwIN3opt7sortmaxEE6cmp_eqEP4exprS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 10
  %i.b = icmp ult i32 %2, 10
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = add nuw nsw i32 %2, %1                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !125  ; 2 uses
  %.not.i = icmp eq i32 %i.e, 1
  %.pre54.i = mul nuw nsw i32 %2, %1
  %.pre55.i = lshr i32 %.pre54.i, 1               ; 2 uses
  br i1 %.not.i, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw nsw i32 %.pre55.i, %i.c          ; 2 uses
  %.not2.i = icmp eq i32 %i.e, 0
  br i1 %.not2.i, label %_ZN8psort_nwIN3opt7sortmaxEE10vc_dsmergeEjjj.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.b, %bb.c
  %.sroa.6.052.i = phi i32 [ %i.f, %bb.c ], [ 0, %bb.b ]
  %i.g = add nuw nsw i32 %.sroa.6.052.i, %.pre55.i
  br label %_ZN8psort_nwIN3opt7sortmaxEE10vc_dsmergeEjjj.exit

_ZN8psort_nwIN3opt7sortmaxEE10vc_dsmergeEjjj.exit: ; preds = %bb.c, %.thread.i
  %.sroa.6.1.i = phi i32 [ %i.f, %bb.c ], [ %i.g, %.thread.i ]
  %i.h = lshr i32 %1, 1                           ; 3 uses
  %i.i = sub nuw nsw i32 %1, %i.h                 ; 2 uses
  %i.j = lshr i32 %2, 1                           ; 3 uses
  %i.k = sub nuw nsw i32 %2, %i.j                 ; 2 uses
  %i.l = trunc i32 %3 to i1
  %i.m = lshr i32 %3, 1                           ; 2 uses
  %i.n = add nuw i32 %i.m, 1
  %i.o = add i32 %3, 1
  %i.p = lshr i32 %i.o, 1
  %i.q = select i1 %i.l, i32 %i.p, i32 %i.n
  %i.r = tail call i64 @_ZN8psort_nwIN3opt7sortmaxEE9vc_smergeEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.i, i32 noundef %i.k, i32 noundef %i.q) #22, !inline_history !138 ; 2 uses
  %.sroa.439.0.extract.shift.i = lshr i64 %i.r, 32
  %.sroa.439.0.extract.trunc.i = trunc nuw i64 %.sroa.439.0.extract.shift.i to i32
  %i.s = tail call i64 @_ZN8psort_nwIN3opt7sortmaxEE9vc_smergeEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.h, i32 noundef %i.j, i32 noundef %i.m) #22, !inline_history !138 ; 2 uses
  %.sroa.437.0.extract.shift.i = lshr i64 %i.s, 32
  %.sroa.437.0.extract.trunc.i = trunc nuw i64 %.sroa.437.0.extract.shift.i to i32
  %i.t = add i32 %.sroa.437.0.extract.trunc.i, %.sroa.439.0.extract.trunc.i
  %i.u = add nuw nsw i32 %i.j, %i.h
  %i.v = load i32, ptr %i.d, align 8, !tbaa !125  ; 3 uses
  %i.w = icmp eq i32 %i.v, 2
  %.sroa.4.0.extract.trunc.i.i = select i1 %i.w, i32 6, i32 3
  %i.x = add nsw i32 %i.i, -1
  %i.y = add nsw i32 %i.x, %i.k
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.u, i32 %i.y) ; 2 uses
  %i.z = mul nuw nsw i32 %.sroa.4.0.extract.trunc.i.i, %.sroa.speculated.i.i
  %i.aa = add i32 %i.t, %i.z                      ; 2 uses
  %.not.i12 = icmp eq i32 %i.v, 1
  %i.ab = add i32 %i.aa, 2
  %.not14.i = icmp ne i32 %i.v, 0
  %spec.select.i = zext i1 %.not14.i to i32
  %i.ac = select i1 %.not.i12, i32 %i.aa, i32 %i.ab
  %i.ad = shl nuw nsw i32 %.sroa.speculated.i.i, 1
  %i.ae = add i64 %i.s, %i.r
  %.sroa.040.0.extract.trunc.i = trunc i64 %i.ae to i32
  %i.af = or disjoint i32 %i.ad, 1
  %i.ag = add i32 %i.af, %.sroa.040.0.extract.trunc.i
  %i.ah = mul nuw nsw i32 %i.c, 5
  %i.ai = add nuw nsw i32 %.sroa.6.1.i, %i.ah
  %i.aj = mul i32 %i.ag, 5
  %i.ak = add i32 %i.aj, %spec.select.i
  %i.al = add i32 %i.ak, %i.ac
  %i.am = icmp ult i32 %i.ai, %i.al
  br label %bb.d

bb.d:                                             ; preds = %_ZN8psort_nwIN3opt7sortmaxEE10vc_dsmergeEjjj.exit, %bb.a
  %i.an = phi i1 [ %i.am, %_ZN8psort_nwIN3opt7sortmaxEE10vc_dsmergeEjjj.exit ], [ false, %bb.a ]
  ret i1 %i.an
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8psort_nwIN3opt7sortmaxEE7dsmergeEjjPKP4exprjS6_R10ptr_vectorIS3_E(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::allocator", align 1    ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::allocator", align 1   ; 4 uses
  %11 = alloca %class.ptr_vector, align 8         ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::allocator", align 1   ; 4 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::allocator", align 1   ; 4 uses
  %16 = alloca %class.ptr_vector, align 8         ; 7 uses
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %i.b = alloca [2 x ptr], align 16               ; 5 uses
  %i.c = alloca [2 x ptr], align 16               ; 5 uses
  %i.d = alloca [2 x ptr], align 16               ; 5 uses
  %17 = alloca %class.ptr_vector, align 8         ; 15 uses
  %.not223 = icmp eq i32 %1, 0                    ; 2 uses
  br i1 %.not223, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !125
  %.not = icmp eq i32 %i.h, 1
  br i1 %.not, label %.thread, label %.preheader195

.preheader195:                                    ; preds = %._crit_edge
  %.not224 = icmp eq i32 %2, 0                    ; 2 uses
  br i1 %.not224, label %.preheader194, label %.lr.ph207

.lr.ph207:                                        ; preds = %.preheader195
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %wide.trip.count = zext i32 %2 to i64
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  %.069205 = phi i32 [ 0, %.lr.ph ], [ %i.aa, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit ]
  %i.j = load i32, ptr %i.e, align 4, !tbaa !130
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.e, align 4, !tbaa !130
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !131, !nonnull !40, !align !41
  %i.m = tail call noundef ptr @_ZN3opt7sortmax5freshEPKc(ptr noundef nonnull align 8 dereferenceable(232) %i.l, ptr noundef nonnull @.str.8)
  %i.n = load ptr, ptr %6, align 8, !tbaa !43     ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !44   ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !44
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !43  ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !44
  br label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit:      ; preds = %bb.c, %bb.d
  %i.u = phi i32 [ %.pre2.i, %bb.d ], [ %i.q, %bb.c ] ; 2 uses
  %i.v = phi ptr [ %.pre.i, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.x = zext i32 %i.u to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.x
  store ptr %i.m, ptr %i.y, align 8, !tbaa !45
  %i.z = add i32 %i.u, 1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !44
  %i.aa = add nuw i32 %.069205, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.aa, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !139

.preheader194:                                    ; preds = %.preheader195
  %.not225 = icmp eq i32 %4, 0
  br i1 %.not225, label %._crit_edge216, label %.lr.ph209

.preheader194.thread:                             ; preds = %bb.e
  %.not225382 = icmp eq i32 %4, 0
  br i1 %.not225382, label %._crit_edge216, label %.lr.ph209

.lr.ph209:                                        ; preds = %.preheader194.thread, %.preheader194
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %wide.trip.count235 = zext i32 %4 to i64
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph207, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph207 ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !45
  %i.ae = call noundef ptr @_ZN8psort_nwIN3opt7sortmaxEE6mk_notEP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ad)
  %i.af = load ptr, ptr %6, align 8, !tbaa !43
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store ptr %i.ae, ptr %i.d, align 16, !tbaa !45
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !45
  call void @_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond231.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond231.not, label %.preheader194.thread, label %bb.e, !llvm.loop !140

.preheader193.thread:                             ; preds = %bb.f
  br i1 %.not224, label %._crit_edge216, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader193.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %.preheader

bb.f:                                             ; preds = %.lr.ph209, %bb.f
  %indvars.iv232 = phi i64 [ 0, %.lr.ph209 ], [ %indvars.iv.next233, %bb.f ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv232
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !45
  %i.am = call noundef ptr @_ZN8psort_nwIN3opt7sortmaxEE6mk_notEP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.al)
  %i.an = load ptr, ptr %6, align 8, !tbaa !43
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv232
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store ptr %i.am, ptr %i.c, align 16, !tbaa !45
  store ptr %i.ap, ptr %i.ab, align 8, !tbaa !45
  call void @_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1 ; 2 uses
  %exitcond236.not = icmp eq i64 %indvars.iv.next233, %wide.trip.count235
  br i1 %exitcond236.not, label %.preheader193.thread, label %bb.f, !llvm.loop !141

.preheader:                                       ; preds = %.preheader.preheader, %.critedge
  %.066215 = phi i32 [ %i.au, %.critedge ], [ 1, %.preheader.preheader ] ; 3 uses
  %i.aq = add i32 %.066215, -1
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ar
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEjPKP4expr.exit
  %.065211 = phi i32 [ 1, %.preheader ], [ %i.gy, %_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEjPKP4expr.exit ] ; 3 uses
  %i.at = add i32 %.065211, %.066215              ; 2 uses
  %.not80 = icmp ugt i32 %i.at, %1
  br i1 %.not80, label %.critedge, label %bb.h

.critedge:                                        ; preds = %bb.g, %_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEjPKP4expr.exit
  %i.au = add i32 %.066215, 1                     ; 2 uses
  %.not74 = icmp ugt i32 %i.au, %2
  br i1 %.not74, label %._crit_edge216, label %.preheader, !llvm.loop !142

bb.h:                                             ; preds = %bb.g
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !45 ; 7 uses
end_hunk_1
begin_hunk_2_@_ZN8psort_nwIN3opt7sortmaxEE7dsmergeEjjPKP4exprjS6_R10ptr_vectorIS3_E:bb.a
  %i.et = icmp eq ptr %i.eq, %i.el
  %or.cond384 = select i1 %or.cond, i1 true, i1 %i.et
  br i1 %or.cond384, label %_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEjPKP4expr.exit, label %bb.af

split:                                            ; preds = %bb.ah, %bb.ag
  %i.eu = call ptr @__cxa_allocate_exception(i64 40) #18 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %split
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.eu, align 8, !tbaa !8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 24 ; 3 uses
  store ptr %i.ew, ptr %i.ev, align 8, !tbaa !85
  %i.ex = load ptr, ptr %9, align 8, !tbaa !102   ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i153

bb.ab:                                            ; preds = %bb.aa
  %i.fa = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !88 ; 3 uses
  %i.fc = icmp ult i64 %i.fb, 16
  call void @llvm.assume(i1 %i.fc)
  %i.fd = add nuw nsw i64 %i.fb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ew, ptr noundef nonnull align 8 dereferenceable(1) %i.ey, i64 %i.fd, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i153: ; preds = %bb.aa
  store ptr %i.ex, ptr %i.ev, align 8, !tbaa !102
  %i.fe = load i64, ptr %i.ey, align 8, !tbaa !91
  store i64 %i.fe, ptr %i.ew, align 8, !tbaa !91
  %.phi.trans.insert.i154 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.pre.i155 = load i64, ptr %.phi.trans.insert.i154, align 8, !tbaa !88
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i156

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i156: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i153, %bb.ab
  %i.ff = phi i64 [ %i.fb, %bb.ab ], [ %.pre.i155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i153 ]
  %i.fg = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store i64 %i.ff, ptr %i.fh, align 8, !tbaa !88
  store ptr %i.ey, ptr %9, align 8, !tbaa !102
  store i64 0, ptr %i.fg, align 8, !tbaa !88
  store i8 0, ptr %i.ey, align 8, !tbaa !91
  invoke void @__cxa_throw(ptr nonnull %i.eu, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #20
          to label %bb.ae unwind label %bb.ac

bb.ac:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i156
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = load ptr, ptr %9, align 8, !tbaa !102   ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.ey
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i157: ; preds = %bb.ac
  %i.fl = load i64, ptr %i.ey, align 8, !tbaa !91
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i158: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %common.resume

bb.ad:                                            ; preds = %split
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @__cxa_free_exception(ptr %i.eu) #18
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i158, %bb.ad, %.body, %bb.ak
  %common.resume.op = phi { ptr, i32 } [ %.pn, %.body ], [ %i.gx, %bb.ak ], [ %i.fi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i158 ], [ %i.fn, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

bb.ae:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i156
  unreachable

bb.af:                                            ; preds = %_ZN8psort_nwIN3opt7sortmaxEE6mk_notEP4expr.exit90
  %i.fo = load <2 x i32>, ptr %i.aj, align 8, !tbaa !44
  %i.fp = add <2 x i32> %i.fo, <i32 1, i32 3>
  store <2 x i32> %i.fp, ptr %i.aj, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.fq = call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24) ; 8 uses
  store i32 2, ptr %i.fq, align 4, !tbaa !44
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 3 uses
  store ptr %i.fr, ptr %16, align 8, !tbaa !43
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  store ptr %.0.i, ptr %i.fr, align 8, !tbaa !45
  store i32 1, ptr %i.fs, align 4, !tbaa !44
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store ptr %.0.i84, ptr %i.fu, align 8, !tbaa !45
  store i32 2, ptr %i.ft, align 4, !tbaa !44
  %i.fv = load i32, ptr %i.fq, align 8, !tbaa !44
  %i.fw = icmp eq i32 %i.fv, 2
  br i1 %i.fw, label %bb.ag, label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i.i.i.2

bb.ag:                                            ; preds = %bb.af
  %i.fx = load i32, ptr %i.fq, align 8, !tbaa !44 ; 3 uses
  %i.fy = mul i32 %i.fx, 3
  %i.fz = add i32 %i.fy, 1
  %i.ga = lshr i32 %i.fz, 1                       ; 3 uses
  %i.gb = shl i32 %i.ga, 3
  %i.gc = add i32 %i.gb, 8                        ; 2 uses
  %.not.i151.2 = icmp ugt i32 %i.ga, %i.fx
  br i1 %.not.i151.2, label %bb.ah, label %split

bb.ah:                                            ; preds = %bb.ag
  %i.gd = shl i32 %i.fx, 3
  %i.ge = add i32 %i.gd, 8
  %.not27.i160.2 = icmp ugt i32 %i.gc, %i.ge
  br i1 %.not27.i160.2, label %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit161.2, label %split

_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit161.2: ; preds = %bb.ah
  %i.gf = zext i32 %i.gc to i64
  %i.gg = call noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.fq, i64 noundef %i.gf) ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 2 uses
  store ptr %i.gh, ptr %16, align 8, !tbaa !43
  store i32 %i.ga, ptr %i.gg, align 4, !tbaa !44
  %.phi.trans.insert.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %.pre2.i.i.i.i.2 = load i32, ptr %.phi.trans.insert.i.i.i.i.2, align 4, !tbaa !44
  br label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i.i.i.2

_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i.i.i.2: ; preds = %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit161.2, %bb.af
  %i.gi = phi ptr [ %i.gh, %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit161.2 ], [ %i.fr, %bb.af ] ; 3 uses
  %i.gj = phi i32 [ %.pre2.i.i.i.i.2, %_ZN6vectorIP4exprLb0EjE13expand_vectorEv.exit161.2 ], [ 2, %bb.af ] ; 2 uses
  %i.gk = getelementptr inbounds i8, ptr %i.gi, i64 -4
  %i.gl = zext i32 %i.gj to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gl
  store ptr %i.eq, ptr %i.gm, align 8, !tbaa !45
  %i.gn = add i32 %i.gj, 1
  store i32 %i.gn, ptr %i.gk, align 4, !tbaa !44
  %i.go = load ptr, ptr %i.ai, align 8, !tbaa !131, !nonnull !40, !align !41 ; 2 uses
  %i.gp = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN3opt18maxsmt_solver_base1sEv(ptr noundef nonnull align 8 dereferenceable(232) %i.go)
          to label %.noexc.i unwind label %bb.ak

.noexc.i:                                         ; preds = %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i.i.i.2
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !16, !nonnull !40, !align !41
  %i.gs = invoke noundef ptr @_Z5mk_orR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.gr, i32 noundef 3, ptr noundef nonnull %i.gi)
          to label %.noexc13.i unwind label %bb.ak

.noexc13.i:                                       ; preds = %.noexc.i
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.gp, ptr noundef %i.gs)
          to label %_ZN3opt7sortmax9mk_clauseEjPKP4expr.exit.i unwind label %bb.ak

_ZN3opt7sortmax9mk_clauseEjPKP4expr.exit.i:       ; preds = %.noexc13.i
  %i.gt = load ptr, ptr %16, align 8, !tbaa !43   ; 2 uses
  %.not.i.i15.i = icmp eq ptr %i.gt, null
  br i1 %.not.i.i15.i, label %_ZN6vectorIP4exprLb0EjED2Ev.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_ZN3opt7sortmax9mk_clauseEjPKP4expr.exit.i
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.gu)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit.i unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gv = landingpad { ptr, i32 }
          catch ptr null
  %i.gw = extractvalue { ptr, i32 } %i.gv, 0
  call void @__clang_call_terminate(ptr %i.gw) #17
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit.i:               ; preds = %bb.ai, %_ZN3opt7sortmax9mk_clauseEjPKP4expr.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEjPKP4expr.exit

bb.ak:                                            ; preds = %.noexc13.i, %.noexc.i, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i.i.i.2
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIP4exprLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %common.resume

_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEjPKP4expr.exit: ; preds = %_ZN8psort_nwIN3opt7sortmaxEE6mk_notEP4expr.exit90, %_ZN6vectorIP4exprLb0EjED2Ev.exit.i
  %i.gy = add i32 %.065211, 1                     ; 2 uses
  %.not79 = icmp ugt i32 %i.gy, %4
  br i1 %.not79, label %.critedge, label %bb.g, !llvm.loop !213

._crit_edge216:                                   ; preds = %.critedge, %.preheader194.thread, %.preheader194, %.preheader193.thread
  %.pr = load i32, ptr %i.g, align 8, !tbaa !125
  %.not75 = icmp eq i32 %.pr, 0
  br i1 %.not75, label %bb.co, label %.thread

.thread:                                          ; preds = %._crit_edge, %._crit_edge216
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  store ptr null, ptr %17, align 8, !tbaa !43
  br i1 %.not223, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %.lr.ph221

.lr.ph221:                                        ; preds = %.thread
  %i.gz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.he = zext i32 %4 to i64                      ; 2 uses
  %i.hf = zext i32 %2 to i64                      ; 2 uses
  %wide.trip.count247 = zext i32 %1 to i64
  %.not227 = icmp eq i32 %2, 0
  br label %bb.an

.loopexit192:                                     ; preds = %bb.cn, %bb.ba
  %indvars.iv.next241 = add i32 %indvars.iv240, 1
  %exitcond248.not = icmp eq i64 %indvars.iv.next245, %wide.trip.count247
  br i1 %exitcond248.not, label %._crit_edge222, label %bb.an, !llvm.loop !214

._crit_edge222:                                   ; preds = %.loopexit192
  %.pre295 = load ptr, ptr %17, align 8, !tbaa !43 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre295, null
  br i1 %.not.i.i, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %._crit_edge222
  %i.hg = getelementptr inbounds i8, ptr %.pre295, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.hg)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hh = landingpad { ptr, i32 }
          catch ptr null
  %i.hi = extractvalue { ptr, i32 } %i.hh, 0
  call void @__clang_call_terminate(ptr %i.hi) #17
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit:                 ; preds = %.thread, %._crit_edge222, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %bb.co

bb.an:                                            ; preds = %.lr.ph221, %.loopexit192
  %indvars.iv244 = phi i64 [ 0, %.lr.ph221 ], [ %indvars.iv.next245, %.loopexit192 ] ; 9 uses
  %indvars.iv240 = phi i32 [ 1, %.lr.ph221 ], [ %indvars.iv.next241, %.loopexit192 ] ; 2 uses
  %umin = call i32 @llvm.umin.i32(i32 %2, i32 %indvars.iv240)
  %i.hj = load ptr, ptr %17, align 8, !tbaa !43   ; 2 uses
  %.not.i = icmp eq ptr %i.hj, null
  br i1 %.not.i, label %_ZN6vectorIP4exprLb0EjE5resetEv.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hk = getelementptr inbounds i8, ptr %i.hj, i64 -4
  store i32 0, ptr %i.hk, align 4, !tbaa !44
  br label %_ZN6vectorIP4exprLb0EjE5resetEv.exit

_ZN6vectorIP4exprLb0EjE5resetEv.exit:             ; preds = %bb.an, %bb.ao
  %i.hl = load ptr, ptr %6, align 8, !tbaa !43
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %indvars.iv244
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !45
  %i.ho = invoke noundef ptr @_ZN8psort_nwIN3opt7sortmaxEE6mk_notEP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.hn)
          to label %bb.ap unwind label %bb.aw

bb.ap:                                            ; preds = %_ZN6vectorIP4exprLb0EjE5resetEv.exit
  %i.hp = load ptr, ptr %17, align 8, !tbaa !43   ; 4 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hr = getelementptr inbounds i8, ptr %i.hp, i64 -4
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !44 ; 2 uses
  %i.ht = getelementptr inbounds i8, ptr %i.hp, i64 -8
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !44
  %i.hv = icmp eq i32 %i.hs, %i.hu
  br i1 %i.hv, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %.noexc unwind label %bb.aw

.noexc:                                           ; preds = %bb.ar
  %.pre.i91 = load ptr, ptr %17, align 8, !tbaa !43 ; 2 uses
  %.phi.trans.insert.i92 = getelementptr inbounds i8, ptr %.pre.i91, i64 -4
  %.pre2.i93 = load i32, ptr %.phi.trans.insert.i92, align 4, !tbaa !44
  br label %bb.as

bb.as:                                            ; preds = %.noexc, %bb.aq
  %i.hw = phi i32 [ %.pre2.i93, %.noexc ], [ %i.hs, %bb.aq ] ; 2 uses
  %i.hx = phi ptr [ %.pre.i91, %.noexc ], [ %i.hp, %bb.aq ] ; 2 uses
  %i.hy = getelementptr inbounds i8, ptr %i.hx, i64 -4
  %i.hz = zext i32 %i.hw to i64
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.hz
  store ptr %i.ho, ptr %i.ia, align 8, !tbaa !45
  %i.ib = add i32 %i.hw, 1
  store i32 %i.ib, ptr %i.hy, align 4, !tbaa !44
  %.not76 = icmp samesign ult i64 %indvars.iv244, %i.hf
  br i1 %.not76, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ic = load ptr, ptr %6, align 8, !tbaa !43
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv244
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !45
  %i.if = invoke noundef ptr @_ZN8psort_nwIN3opt7sortmaxEE6mk_notEP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.ie)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  %18 = sub nuw nsw i64 %indvars.iv244, %i.hf
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %18
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr %i.if, ptr %i.b, align 16, !tbaa !45
  store ptr %i.ih, ptr %i.gz, align 8, !tbaa !45
  invoke void @_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, ptr noundef nonnull %i.b)
          to label %_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEP4exprS4_.exit unwind label %bb.av

_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEP4exprS4_.exit: ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.ax

bb.av:                                            ; preds = %bb.az, %bb.au, %bb.ay, %bb.at
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aw:                                            ; preds = %bb.ar, %_ZN6vectorIP4exprLb0EjE5resetEv.exit
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ax:                                            ; preds = %_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEP4exprS4_.exit, %bb.as
  %.not77 = icmp samesign ult i64 %indvars.iv244, %i.he
  br i1 %.not77, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ik = load ptr, ptr %6, align 8, !tbaa !43
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv244
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !45
  %i.in = invoke noundef ptr @_ZN8psort_nwIN3opt7sortmaxEE6mk_notEP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.im)
          to label %bb.az unwind label %bb.av

bb.az:                                            ; preds = %bb.ay
  %19 = sub nuw nsw i64 %indvars.iv244, %i.he
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %19
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr %i.in, ptr %i.a, align 16, !tbaa !45
  store ptr %i.ip, ptr %i.ha, align 8, !tbaa !45
  invoke void @_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, ptr noundef nonnull %i.a)
          to label %_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEP4exprS4_.exit97 unwind label %bb.av

_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEP4exprS4_.exit97: ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEP4exprS4_.exit97, %bb.ax
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  br i1 %.not227, label %.loopexit192, label %.lr.ph219.preheader

.lr.ph219.preheader:                              ; preds = %bb.ba
  %wide.trip.count242 = zext i32 %umin to i64
  %i.iq = trunc nuw i64 %indvars.iv244 to i32
  br label %.lr.ph219

.lr.ph219:                                        ; preds = %.lr.ph219.preheader, %bb.cn
  %indvars.iv237 = phi i64 [ 0, %.lr.ph219.preheader ], [ %indvars.iv.next238, %bb.cn ] ; 3 uses
  %i.ir = trunc nuw i64 %indvars.iv237 to i32
  %i.is = sub i32 %i.iq, %i.ir                    ; 2 uses
  %i.it = icmp ult i32 %i.is, %4
  br i1 %i.it, label %bb.bb, label %bb.cn

bb.bb:                                            ; preds = %.lr.ph219
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv237
  %i.iv = load ptr, ptr %17, align 8, !tbaa !43   ; 4 uses
  %i.iw = icmp eq ptr %i.iv, null
  br i1 %i.iw, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ix = getelementptr inbounds i8, ptr %i.iv, i64 -4
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !44 ; 5 uses
  %i.iz = getelementptr inbounds i8, ptr %i.iv, i64 -8 ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !44
  %i.jb = icmp eq i32 %i.iy, %i.ja
  br i1 %i.jb, label %bb.be, label %bb.bn

bb.bd:                                            ; preds = %bb.bb
  %i.jc = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc111 unwind label %.loopexit.split-lp ; 3 uses

.noexc111:                                        ; preds = %bb.bd
  store i32 2, ptr %i.jc, align 4, !tbaa !44
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  store i32 0, ptr %i.jd, align 4, !tbaa !44
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 8 ; 2 uses
  store ptr %i.je, ptr %17, align 8, !tbaa !43
  br label %.noexc101

bb.be:                                            ; preds = %bb.bc
  %i.jf = mul i32 %i.iy, 3
  %i.jg = add i32 %i.jf, 1
  %i.jh = lshr i32 %i.jg, 1                       ; 3 uses
  %i.ji = shl i32 %i.jh, 3
  %i.jj = add i32 %i.ji, 8                        ; 2 uses
  %.not.i108 = icmp ugt i32 %i.jh, %i.iy
  br i1 %.not.i108, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.jk = shl i32 %i.iy, 3
  %i.jl = add i32 %i.jk, 8
  %.not27.i = icmp ugt i32 %i.jj, %i.jl
  br i1 %.not27.i, label %bb.bl, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.jm = call ptr @__cxa_allocate_exception(i64 40) #18 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.bh unwind label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.jm, align 8, !tbaa !8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 24 ; 3 uses
  store ptr %i.jo, ptr %i.jn, align 8, !tbaa !85
  %i.jp = load ptr, ptr %14, align 8, !tbaa !102  ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  %i.jr = icmp eq ptr %i.jp, %i.jq
  br i1 %i.jr, label %bb.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.js = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !88 ; 3 uses
  %i.ju = icmp ult i64 %i.jt, 16
  call void @llvm.assume(i1 %i.ju)
  %i.jv = add nuw nsw i64 %i.jt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jo, ptr noundef nonnull align 8 dereferenceable(1) %i.jq, i64 %i.jv, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bh
  store ptr %i.jp, ptr %i.jn, align 8, !tbaa !102
  %i.jw = load i64, ptr %i.jq, align 8, !tbaa !91
  store i64 %i.jw, ptr %i.jo, align 8, !tbaa !91
  %.phi.trans.insert.i109 = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.pre.i110 = load i64, ptr %.phi.trans.insert.i109, align 8, !tbaa !88
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.bi
  %i.jx = phi i64 [ %i.jt, %bb.bi ], [ %.pre.i110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.jy = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  store i64 %i.jx, ptr %i.jz, align 8, !tbaa !88
  store ptr %i.jq, ptr %14, align 8, !tbaa !102
  store i64 0, ptr %i.jy, align 8, !tbaa !88
  store i8 0, ptr %i.jq, align 8, !tbaa !91
  invoke void @__cxa_throw(ptr nonnull %i.jm, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #20
          to label %bb.bm unwind label %bb.bj

bb.bj:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.ka = landingpad { ptr, i32 }
          cleanup
  %i.kb = load ptr, ptr %14, align 8, !tbaa !102  ; 2 uses
  %i.kc = icmp eq ptr %i.kb, %i.jq
  br i1 %i.kc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.bj
  %i.kd = load i64, ptr %i.jq, align 8, !tbaa !91
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.kb, i64 noundef %i.ke) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %.body

bb.bk:                                            ; preds = %bb.bg
  %i.kf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @__cxa_free_exception(ptr %i.jm) #18
  br label %.body

bb.bl:                                            ; preds = %bb.bf
  %i.kg = zext i32 %i.jj to i64
  %i.kh = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.iz, i64 noundef %i.kg)
          to label %.noexc112 unwind label %.loopexit.split-lp ; 2 uses

.noexc112:                                        ; preds = %bb.bl
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8 ; 2 uses
  store ptr %i.ki, ptr %17, align 8, !tbaa !43
  store i32 %i.jh, ptr %i.kh, align 4, !tbaa !44
  br label %.noexc101

bb.bm:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

.noexc101:                                        ; preds = %.noexc112, %.noexc111
  %.pre.i98 = phi ptr [ %i.ki, %.noexc112 ], [ %i.je, %.noexc111 ] ; 2 uses
  %.phi.trans.insert.i99 = getelementptr inbounds i8, ptr %.pre.i98, i64 -4
  %.pre2.i100 = load i32, ptr %.phi.trans.insert.i99, align 4, !tbaa !44
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bc, %.noexc101
  %i.kj = phi i32 [ %.pre2.i100, %.noexc101 ], [ %i.iy, %bb.bc ] ; 2 uses
  %i.kk = phi ptr [ %.pre.i98, %.noexc101 ], [ %i.iv, %bb.bc ] ; 4 uses
  %i.kl = getelementptr inbounds i8, ptr %i.kk, i64 -4
  %i.km = zext i32 %i.kj to i64
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %i.km
  %i.ko = load ptr, ptr %i.iu, align 8, !tbaa !45
  store ptr %i.ko, ptr %i.kn, align 8, !tbaa !45
  %i.kp = add i32 %i.kj, 1                        ; 6 uses
  store i32 %i.kp, ptr %i.kl, align 4, !tbaa !44
  %i.kq = zext i32 %i.is to i64
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.kq
  %i.ks = getelementptr inbounds i8, ptr %i.kk, i64 -8 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !44
  %i.ku = icmp eq i32 %i.kp, %i.kt
  br i1 %i.ku, label %bb.bo, label %_ZNK6vectorIP4exprLb0EjE4sizeEv.exit.i

bb.bo:                                            ; preds = %bb.bn
  %i.kv = mul i32 %i.kp, 3
  %i.kw = add i32 %i.kv, 1
  %i.kx = lshr i32 %i.kw, 1                       ; 3 uses
  %i.ky = shl i32 %i.kx, 3
  %i.kz = add i32 %i.ky, 8                        ; 2 uses
  %.not.i113 = icmp ugt i32 %i.kx, %i.kp
  br i1 %.not.i113, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.la = shl i32 %i.kp, 3
  %i.lb = add i32 %i.la, 8
  %.not27.i122 = icmp ugt i32 %i.kz, %i.lb
  br i1 %.not27.i122, label %bb.bv, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.lc = call ptr @__cxa_allocate_exception(i64 40) #18 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.br unwind label %bb.bu

bb.br:                                            ; preds = %bb.bq
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.lc, align 8, !tbaa !8
end_hunk_2
begin_hunk_3_@_ZN8psort_nwIN3opt7sortmaxEE6mk_notEP4expr:bb.a

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !45
  br label %_ZN3opt7sortmax6mk_notEP4expr.exit

bb.g:                                             ; preds = %bb.e, %_ZNK11ast_manager6is_notEPK4expr.exit.i.i, %bb.d, %bb.c
  %i.ad = tail call noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.d, i32 noundef 0, i32 noundef 8, ptr noundef nonnull %1) ; 4 uses
  %.not.i.i.i.i.i2.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i2.i, label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !48
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !48
  br label %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i

_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 200 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !43 ; 4 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !44 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !44
  %i.ao = icmp eq i32 %i.al, %i.an
  br i1 %i.ao, label %bb.j, label %_ZN3opt7sortmax5trailEP4expr.exit.i

bb.j:                                             ; preds = %bb.i, %_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i.i.i
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
  %.pre.i.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !43 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !44
  br label %_ZN3opt7sortmax5trailEP4expr.exit.i

_ZN3opt7sortmax5trailEP4expr.exit.i:              ; preds = %bb.j, %bb.i
  %i.ap = phi i32 [ %.pre2.i.i.i.i, %bb.j ], [ %i.al, %bb.i ] ; 2 uses
  %i.aq = phi ptr [ %.pre.i.i.i.i, %bb.j ], [ %i.ai, %bb.i ] ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -4
  %i.as = zext i32 %i.ap to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  store ptr %i.ad, ptr %i.at, align 8, !tbaa !45
  %i.au = add i32 %i.ap, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !44
  br label %_ZN3opt7sortmax6mk_notEP4expr.exit

_ZN3opt7sortmax6mk_notEP4expr.exit:               ; preds = %bb.a, %_ZN3opt7sortmax5trailEP4expr.exit.i, %bb.f, %bb.b
  %.0 = phi ptr [ %i.ad, %_ZN3opt7sortmax5trailEP4expr.exit.i ], [ %i.f, %bb.b ], [ %i.ac, %bb.f ], [ %i.i, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.ptr_vector, align 8          ; 10 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %_ZN10ptr_vectorI4exprEC2EjPKPS0_.exit.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !131, !nonnull !40, !align !41
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16, !nonnull !40, !align !41
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 832
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !143
  %wide.trip.count = zext i32 %1 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !215

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.i = icmp eq ptr %i.h, %i.f
  br i1 %i.i, label %.loopexit, label %bb.b

._crit_edge:                                      ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !216
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !216
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !217
  %i.o = add i32 %i.n, %1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr null, ptr %3, align 8, !tbaa !43
  %wide.trip.count.i.i = zext i32 %1 to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i.i, %._crit_edge
  %i.p = phi ptr [ null, %._crit_edge ], [ %i.x, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i.i ] ; 4 uses
  %indvars.iv.i.i = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next.i.i, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i.i
  %i.r = icmp eq ptr %i.p, null
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 -4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !44   ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 -8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !44
  %i.w = icmp eq i32 %i.t, %i.v
  br i1 %i.w, label %bb.e, label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i.i

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.pre.i.i.i = load ptr, ptr %3, align 8, !tbaa !43 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !44
  br label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i.i

_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i.i: ; preds = %bb.e, %bb.d
  %i.x = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.p, %bb.d ] ; 4 uses
  %i.y = phi i32 [ %.pre2.i.i.i, %bb.e ], [ %i.t, %bb.d ] ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -4
  %i.aa = zext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.aa
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !45
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !45
  %i.ad = add i32 %i.y, 1
  store i32 %i.ad, ptr %i.z, align 4, !tbaa !44
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN10ptr_vectorI4exprEC2EjPKPS0_.exit, label %.lr.ph.i.i, !llvm.loop !218

_ZN10ptr_vectorI4exprEC2EjPKPS0_.exit.critedge:   ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !216
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  store ptr null, ptr %3, align 8, !tbaa !43
  br label %_ZN10ptr_vectorI4exprEC2EjPKPS0_.exit

_ZN10ptr_vectorI4exprEC2EjPKPS0_.exit:            ; preds = %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i.i, %_ZN10ptr_vectorI4exprEC2EjPKPS0_.exit.critedge
  %i.ah = phi ptr [ null, %_ZN10ptr_vectorI4exprEC2EjPKPS0_.exit.critedge ], [ %i.x, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !131, !nonnull !40, !align !41 ; 2 uses
  %i.ak = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN3opt18maxsmt_solver_base1sEv(ptr noundef nonnull align 8 dereferenceable(232) %i.aj)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %_ZN10ptr_vectorI4exprEC2EjPKPS0_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !16, !nonnull !40, !align !41
  %i.an = invoke noundef ptr @_Z5mk_orR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.am, i32 noundef %1, ptr noundef %i.ah)
          to label %.noexc13 unwind label %bb.h

.noexc13:                                         ; preds = %.noexc
  invoke void @_ZN6solver11assert_exprEP4expr(ptr noundef nonnull align 8 dereferenceable(112) %i.ak, ptr noundef %i.an)
          to label %_ZN3opt7sortmax9mk_clauseEjPKP4expr.exit unwind label %bb.h

_ZN3opt7sortmax9mk_clauseEjPKP4expr.exit:         ; preds = %.noexc13
  %i.ao = load ptr, ptr %3, align 8, !tbaa !43    ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i15, label %_ZN6vectorIP4exprLb0EjED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3opt7sortmax9mk_clauseEjPKP4expr.exit
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ap)
          to label %_ZN6vectorIP4exprLb0EjED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #17
  unreachable

_ZN6vectorIP4exprLb0EjED2Ev.exit:                 ; preds = %_ZN3opt7sortmax9mk_clauseEjPKP4expr.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %_ZN6vectorIP4exprLb0EjED2Ev.exit
  ret void

bb.h:                                             ; preds = %.noexc13, %.noexc, %_ZN10ptr_vectorI4exprEC2EjPKPS0_.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIP4exprLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %i.as
}

declare noundef ptr @_Z5mk_orR11ast_managerjPKP4expr(ptr noundef nonnull align 8 dereferenceable(952), i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11ast_manager6mk_appEiiP4expr(ptr noundef nonnull align 8 dereferenceable(952), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZN8psort_nwIN3opt7sortmaxEE13vc_smerge_recEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
.thread:
  %i.a = lshr i32 %1, 1                           ; 3 uses
  %i.b = sub nuw i32 %1, %i.a                     ; 2 uses
  %i.c = lshr i32 %2, 1                           ; 3 uses
  %i.d = sub nuw i32 %2, %i.c                     ; 2 uses
  %i.e = trunc i32 %3 to i1
  %i.f = lshr i32 %3, 1                           ; 2 uses
  %i.g = add nuw i32 %i.f, 1
  %i.h = add i32 %3, 1
  %i.i = lshr i32 %i.h, 1
  %i.j = select i1 %i.e, i32 %i.i, i32 %i.g
  %i.k = tail call i64 @_ZN8psort_nwIN3opt7sortmaxEE9vc_smergeEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.b, i32 noundef %i.d, i32 noundef %i.j) ; 2 uses
  %.sroa.439.0.extract.shift = lshr i64 %i.k, 32
  %.sroa.439.0.extract.trunc = trunc nuw i64 %.sroa.439.0.extract.shift to i32
  %i.l = tail call i64 @_ZN8psort_nwIN3opt7sortmaxEE9vc_smergeEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.a, i32 noundef %i.c, i32 noundef %i.f) ; 2 uses
  %.sroa.437.0.extract.shift = lshr i64 %i.l, 32
  %.sroa.437.0.extract.trunc = trunc nuw i64 %.sroa.437.0.extract.shift to i32
  %i.m = add i32 %.sroa.437.0.extract.trunc, %.sroa.439.0.extract.trunc
  %i.n = add nuw i32 %i.c, %i.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !125  ; 3 uses
  %i.q = icmp eq i32 %i.p, 2
  %.sroa.4.0.extract.trunc.i = select i1 %i.q, i32 6, i32 3
  %i.r = add i32 %i.b, -1
  %i.s = add i32 %i.r, %i.d
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.s) ; 2 uses
  %i.t = mul i32 %.sroa.4.0.extract.trunc.i, %.sroa.speculated.i
  %i.u = add i32 %i.m, %i.t                       ; 2 uses
  %.not = icmp eq i32 %i.p, 1
  %i.v = add i32 %i.u, 2
  %.not14 = icmp ne i32 %i.p, 0
  %spec.select = zext i1 %.not14 to i32
  %i.w = select i1 %.not, i32 %i.u, i32 %i.v
  %i.x = shl i32 %.sroa.speculated.i, 1
  %i.y = add i64 %i.l, %i.k
  %.sroa.040.0.extract.trunc = trunc i64 %i.y to i32
  %i.z = or disjoint i32 %i.x, 1
  %i.aa = add i32 %i.z, %.sroa.040.0.extract.trunc
  %i.ab = add i32 %i.w, %spec.select
  %.sroa.2.0.insert.ext.i27 = zext i32 %i.ab to i64
  %.sroa.2.0.insert.shift.i28 = shl nuw i64 %.sroa.2.0.insert.ext.i27, 32
  %.sroa.0.0.insert.ext.i29 = zext i32 %i.aa to i64
  %.sroa.0.0.insert.insert.i30 = or disjoint i64 %.sroa.2.0.insert.shift.i28, %.sroa.0.0.insert.ext.i29
  ret i64 %.sroa.0.0.insert.insert.i30
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZN8psort_nwIN3opt7sortmaxEE9vc_smergeEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  %i.b = icmp eq i32 %2, 1
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp eq i32 %3, 1
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !125
  switch i32 %i.e, label %.thread.fold.split [
    i32 1, label %.thread
    i32 0, label %_ZN8psort_nwIN3opt7sortmaxEE10vc_dsmergeEjjj.exit
  ]

.thread.fold.split:                               ; preds = %bb.b
  br label %_ZN8psort_nwIN3opt7sortmaxEE10vc_dsmergeEjjj.exit

.thread:                                          ; preds = %bb.b
  br label %_ZN8psort_nwIN3opt7sortmaxEE10vc_dsmergeEjjj.exit

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %1, 0
  %i.g = icmp eq i32 %2, 0
  %or.cond5 = or i1 %i.f, %i.g
  br i1 %or.cond5, label %_ZN8psort_nwIN3opt7sortmaxEE10vc_dsmergeEjjj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ugt i32 %1, %3
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i64 @_ZN8psort_nwIN3opt7sortmaxEE9vc_smergeEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %3, i32 noundef %2, i32 noundef %3) ; 2 uses
  %.sroa.045.0.extract.trunc = trunc i64 %i.i to i32
  %.sroa.12.0.extract.shift = lshr i64 %i.i, 32
  %.sroa.12.0.extract.trunc = trunc nuw i64 %.sroa.12.0.extract.shift to i32
  br label %_ZN8psort_nwIN3opt7sortmaxEE10vc_dsmergeEjjj.exit

bb.f:                                             ; preds = %bb.d
  %i.j = icmp ugt i32 %2, %3
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = tail call i64 @_ZN8psort_nwIN3opt7sortmaxEE9vc_smergeEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %3, i32 noundef %3) ; 2 uses
  %.sroa.045.0.extract.trunc47 = trunc i64 %i.k to i32
  %.sroa.12.0.extract.shift54 = lshr i64 %i.k, 32
  %.sroa.12.0.extract.trunc55 = trunc nuw i64 %.sroa.12.0.extract.shift54 to i32
  br label %_ZN8psort_nwIN3opt7sortmaxEE10vc_dsmergeEjjj.exit

bb.h:                                             ; preds = %bb.f
  %i.l = add i32 %2, %1                           ; 4 uses
  %.not = icmp ugt i32 %i.l, %3
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = tail call i64 @_ZN8psort_nwIN3opt7sortmaxEE8vc_mergeEjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) ; 2 uses
  %.sroa.045.0.extract.trunc48 = trunc i64 %i.m to i32
  %.sroa.12.0.extract.shift56 = lshr i64 %i.m, 32
  %.sroa.12.0.extract.trunc57 = trunc nuw i64 %.sroa.12.0.extract.shift56 to i32
  br label %_ZN8psort_nwIN3opt7sortmaxEE10vc_dsmergeEjjj.exit

bb.j:                                             ; preds = %bb.h
  %i.n = icmp ult i32 %1, 10
  %i.o = icmp ult i32 %2, 10
  %or.cond.i = and i1 %i.n, %i.o
  br i1 %or.cond.i, label %bb.k, label %_ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !125  ; 2 uses
  %.not.i.i = icmp eq i32 %i.q, 1
  %.pre54.i.i = mul nuw nsw i32 %2, %1
  %.pre55.i.i = lshr i32 %.pre54.i.i, 1           ; 4 uses
  br i1 %.not.i.i, label %.thread.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = add nuw nsw i32 %.pre55.i.i, %i.l        ; 2 uses
  %.not2.i.i = icmp eq i32 %i.q, 0
  br i1 %.not2.i.i, label %_ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.k, %bb.l
  %.sroa.6.052.i.i = phi i32 [ %i.r, %bb.l ], [ 0, %bb.k ]
  %i.s = add nsw i32 %.sroa.6.052.i.i, %.pre55.i.i
  br label %_ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit

_ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit: ; preds = %bb.l, %.thread.i.i
  %.sroa.6.1.i.i = phi i32 [ %i.r, %bb.l ], [ %i.s, %.thread.i.i ]
  %i.t = tail call i64 @_ZN8psort_nwIN3opt7sortmaxEE13vc_smerge_recEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3), !inline_history !221 ; 2 uses
  %.sroa.067.0.extract.trunc = trunc i64 %i.t to i32
  %.sroa.468.0.extract.shift = lshr i64 %i.t, 32
  %.sroa.468.0.extract.trunc = trunc nuw i64 %.sroa.468.0.extract.shift to i32
  %i.u = mul nuw nsw i32 %i.l, 5
  %i.v = add i32 %.sroa.6.1.i.i, %i.u
  %i.w = mul i32 %.sroa.067.0.extract.trunc, 5
  %i.x = add i32 %i.w, %.sroa.468.0.extract.trunc
  %i.y = icmp ult i32 %i.v, %i.x
  br i1 %i.y, label %bb.m, label %_ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit.thread

bb.m:                                             ; preds = %_ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit
  %i.z = load i32, ptr %i.p, align 8, !tbaa !125  ; 2 uses
  %.not.i = icmp eq i32 %i.z, 1
  br i1 %.not.i, label %.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = add nuw nsw i32 %.pre55.i.i, %i.l       ; 2 uses
  %.not2.i = icmp eq i32 %i.z, 0
  br i1 %.not2.i, label %_ZN8psort_nwIN3opt7sortmaxEE10vc_dsmergeEjjj.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.m, %bb.n
  %.sroa.6.052.i = phi i32 [ %i.aa, %bb.n ], [ 0, %bb.m ]
  %i.ab = add nsw i32 %.sroa.6.052.i, %.pre55.i.i
  br label %_ZN8psort_nwIN3opt7sortmaxEE10vc_dsmergeEjjj.exit

_ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit.thread: ; preds = %bb.j, %_ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit
  %i.ac = lshr i32 %1, 1                          ; 3 uses
  %i.ad = sub nuw i32 %1, %i.ac                   ; 2 uses
  %i.ae = lshr i32 %2, 1                          ; 3 uses
  %i.af = sub nuw i32 %2, %i.ae                   ; 2 uses
  %i.ag = trunc i32 %3 to i1
  %i.ah = lshr i32 %3, 1                          ; 2 uses
  %i.ai = add nuw i32 %i.ah, 1
  %i.aj = add nuw i32 %3, 1
  %i.ak = lshr i32 %i.aj, 1
  %i.al = select i1 %i.ag, i32 %i.ak, i32 %i.ai
  %i.am = tail call i64 @_ZN8psort_nwIN3opt7sortmaxEE9vc_smergeEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.ad, i32 noundef %i.af, i32 noundef %i.al), !inline_history !138 ; 2 uses
  %.sroa.439.0.extract.shift.i = lshr i64 %i.am, 32
  %.sroa.439.0.extract.trunc.i = trunc nuw i64 %.sroa.439.0.extract.shift.i to i32
  %i.an = tail call i64 @_ZN8psort_nwIN3opt7sortmaxEE9vc_smergeEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.ac, i32 noundef %i.ae, i32 noundef %i.ah), !inline_history !138 ; 2 uses
  %.sroa.437.0.extract.shift.i = lshr i64 %i.an, 32
  %.sroa.437.0.extract.trunc.i = trunc nuw i64 %.sroa.437.0.extract.shift.i to i32
  %i.ao = add i32 %.sroa.437.0.extract.trunc.i, %.sroa.439.0.extract.trunc.i
  %i.ap = add nuw i32 %i.ae, %i.ac
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !125 ; 3 uses
  %i.as = icmp eq i32 %i.ar, 2
  %.sroa.4.0.extract.trunc.i.i = select i1 %i.as, i32 6, i32 3
  %i.at = add i32 %i.ad, -1
  %i.au = add i32 %i.at, %i.af
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.ap, i32 %i.au) ; 2 uses
  %i.av = mul i32 %.sroa.4.0.extract.trunc.i.i, %.sroa.speculated.i.i
  %i.aw = add i32 %i.ao, %i.av                    ; 2 uses
  %.not.i82 = icmp eq i32 %i.ar, 1
  %i.ax = add i32 %i.aw, 2
  %.not14.i = icmp ne i32 %i.ar, 0
  %spec.select.i = zext i1 %.not14.i to i32
  %i.ay = select i1 %.not.i82, i32 %i.aw, i32 %i.ax
  %i.az = shl i32 %.sroa.speculated.i.i, 1
  %i.ba = add i64 %i.an, %i.am
  %.sroa.040.0.extract.trunc.i = trunc i64 %i.ba to i32
  %i.bb = or disjoint i32 %i.az, 1
  %i.bc = add i32 %i.bb, %.sroa.040.0.extract.trunc.i
  %i.bd = add i32 %i.ay, %spec.select.i
  br label %_ZN8psort_nwIN3opt7sortmaxEE10vc_dsmergeEjjj.exit

_ZN8psort_nwIN3opt7sortmaxEE10vc_dsmergeEjjj.exit: ; preds = %.thread.i, %bb.n, %.thread.fold.split, %bb.b, %bb.c, %.thread, %_ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit.thread, %bb.i, %bb.g, %bb.e
  %.sroa.12.1 = phi i32 [ 2, %bb.b ], [ 0, %bb.c ], [ %.sroa.12.0.extract.trunc57, %bb.i ], [ %.sroa.12.0.extract.trunc, %bb.e ], [ %.sroa.12.0.extract.trunc55, %bb.g ], [ 1, %.thread ], [ %i.bd, %_ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit.thread ], [ 3, %.thread.fold.split ], [ %i.aa, %bb.n ], [ %i.ab, %.thread.i ]
  %.sroa.045.1 = phi i32 [ 1, %bb.b ], [ 0, %bb.c ], [ %.sroa.045.0.extract.trunc48, %bb.i ], [ %.sroa.045.0.extract.trunc, %bb.e ], [ %.sroa.045.0.extract.trunc47, %bb.g ], [ 1, %.thread ], [ %i.bc, %_ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit.thread ], [ 1, %.thread.fold.split ], [ %3, %bb.n ], [ %3, %.thread.i ]
  %.sroa.12.0.insert.ext = zext i32 %.sroa.12.1 to i64
  %.sroa.12.0.insert.shift = shl nuw i64 %.sroa.12.0.insert.ext, 32
  %.sroa.045.0.insert.ext = zext i32 %.sroa.045.1 to i64
  %.sroa.045.0.insert.insert = or disjoint i64 %.sroa.12.0.insert.shift, %.sroa.045.0.insert.ext
  ret i64 %.sroa.045.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZN8psort_nwIN3opt7sortmaxEE8vc_mergeEjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  %i.b = icmp eq i32 %2, 1
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !125
  %i.e = icmp eq i32 %i.d, 2
  %.sroa.5.0.extract.trunc = select i1 %i.e, i32 6, i32 3
  br label %_ZN8psort_nwIN3opt7sortmaxEE10vc_dsmergeEjjj.exit

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %1, 0
  %i.g = icmp eq i32 %2, 0
  %or.cond3 = or i1 %i.f, %i.g
  br i1 %or.cond3, label %_ZN8psort_nwIN3opt7sortmaxEE10vc_dsmergeEjjj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add i32 %2, %1                           ; 10 uses
  %i.i = icmp ult i32 %1, 10
  %i.j = icmp ult i32 %2, 10
  %or.cond.i = and i1 %i.i, %i.j
  br i1 %or.cond.i, label %bb.e, label %._ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit.thread_crit_edge

._ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit.thread_crit_edge: ; preds = %bb.d
  %.pre = lshr i32 %1, 1                          ; 3 uses
  %.pre34 = sub nuw i32 %1, %.pre                 ; 2 uses
  %.pre36 = lshr i32 %2, 1                        ; 3 uses
  %.pre38 = sub nuw i32 %2, %.pre36               ; 2 uses
  %.pre40 = add nuw i32 %.pre36, %.pre
  %.pre42 = add i32 %.pre34, -1
  %.pre44 = add i32 %.pre42, %.pre38
  %.pre46 = tail call i32 @llvm.umin.i32(i32 %.pre40, i32 %.pre44) ; 2 uses
  %.pre47 = shl i32 %.pre46, 1
  br label %_ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !125  ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 1
  %.pre54.i.i = mul nuw nsw i32 %2, %1
  %.pre55.i.i = lshr i32 %.pre54.i.i, 1           ; 2 uses
  br i1 %.not.i.i, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw nsw i32 %.pre55.i.i, %i.h        ; 2 uses
  %.not2.i.i = icmp eq i32 %i.l, 0
  br i1 %.not2.i.i, label %_ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.e, %bb.f
  %.sroa.6.052.i.i = phi i32 [ %i.m, %bb.f ], [ 0, %bb.e ]
  %i.n = add nsw i32 %.sroa.6.052.i.i, %.pre55.i.i
  br label %_ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit

_ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit: ; preds = %bb.f, %.thread.i.i
  %.sroa.6.1.i.i = phi i32 [ %i.m, %bb.f ], [ %i.n, %.thread.i.i ]
  %i.o = lshr i32 %1, 1                           ; 4 uses
  %i.p = sub nuw nsw i32 %1, %i.o                 ; 3 uses
  %i.q = lshr i32 %2, 1                           ; 4 uses
  %i.r = sub nuw nsw i32 %2, %i.q                 ; 3 uses
  %i.s = trunc i32 %i.h to i1
  %i.t = lshr i32 %i.h, 1                         ; 2 uses
  %i.u = add nuw nsw i32 %i.t, 1
  %i.v = add nuw nsw i32 %i.h, 1
  %i.w = lshr i32 %i.v, 1
  %i.x = select i1 %i.s, i32 %i.w, i32 %i.u
  %i.y = tail call i64 @_ZN8psort_nwIN3opt7sortmaxEE9vc_smergeEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.p, i32 noundef %i.r, i32 noundef %i.x), !inline_history !222 ; 2 uses
  %.sroa.439.0.extract.shift.i = lshr i64 %i.y, 32
  %.sroa.439.0.extract.trunc.i = trunc nuw i64 %.sroa.439.0.extract.shift.i to i32
  %i.z = tail call i64 @_ZN8psort_nwIN3opt7sortmaxEE9vc_smergeEjjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.o, i32 noundef %i.q, i32 noundef %i.t), !inline_history !222 ; 2 uses
  %.sroa.437.0.extract.shift.i = lshr i64 %i.z, 32
  %.sroa.437.0.extract.trunc.i = trunc nuw i64 %.sroa.437.0.extract.shift.i to i32
  %i.aa = add i32 %.sroa.437.0.extract.trunc.i, %.sroa.439.0.extract.trunc.i
  %i.ab = add nuw nsw i32 %i.q, %i.o
  %i.ac = load i32, ptr %i.k, align 8, !tbaa !125 ; 4 uses
  %i.ad = icmp eq i32 %i.ac, 2
  %.sroa.4.0.extract.trunc.i.i = select i1 %i.ad, i32 6, i32 3
  %i.ae = add nsw i32 %i.p, -1
  %i.af = add nsw i32 %i.ae, %i.r
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 %i.af) ; 3 uses
  %i.ag = mul nuw nsw i32 %.sroa.4.0.extract.trunc.i.i, %.sroa.speculated.i.i
  %i.ah = add i32 %i.aa, %i.ag                    ; 2 uses
  %.not.i31 = icmp eq i32 %i.ac, 1                ; 2 uses
  %i.ai = add i32 %i.ah, 2
  %.not14.i = icmp ne i32 %i.ac, 0
  %spec.select.i = zext i1 %.not14.i to i32
  %i.aj = select i1 %.not.i31, i32 %i.ah, i32 %i.ai
  %i.ak = shl nuw nsw i32 %.sroa.speculated.i.i, 1 ; 2 uses
  %i.al = add i64 %i.z, %i.y
  %.sroa.040.0.extract.trunc.i = trunc i64 %i.al to i32
  %i.am = or disjoint i32 %i.ak, 1
  %i.an = add i32 %i.am, %.sroa.040.0.extract.trunc.i
  %i.ao = mul nuw nsw i32 %i.h, 5
  %i.ap = add i32 %.sroa.6.1.i.i, %i.ao
  %i.aq = mul i32 %i.an, 5
  %i.ar = add i32 %i.aq, %spec.select.i
  %i.as = add i32 %i.ar, %i.aj
  %i.at = icmp ult i32 %i.ap, %i.as
  br i1 %i.at, label %bb.g, label %_ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit.thread

bb.g:                                             ; preds = %_ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit
  %.pre.i = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %1)
  %.pre53.i = tail call i32 @llvm.umin.i32(i32 %i.h, i32 %2)
  %.pre54.i = mul nuw nsw i32 %.pre.i, %.pre53.i
  %.pre55.i = lshr i32 %.pre54.i, 1               ; 2 uses
  br i1 %.not.i31, label %.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = add nuw nsw i32 %.pre55.i, %i.h         ; 2 uses
  %.not2.i = icmp eq i32 %i.ac, 0
  br i1 %.not2.i, label %_ZN8psort_nwIN3opt7sortmaxEE10vc_dsmergeEjjj.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.g, %bb.h
  %.sroa.6.052.i = phi i32 [ %i.au, %bb.h ], [ 0, %bb.g ]
  %i.av = add nsw i32 %.sroa.6.052.i, %.pre55.i
  br label %_ZN8psort_nwIN3opt7sortmaxEE10vc_dsmergeEjjj.exit

_ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit.thread: ; preds = %._ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit.thread_crit_edge, %_ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit
  %.pre-phi48 = phi i32 [ %.pre47, %._ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit.thread_crit_edge ], [ %i.ak, %_ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit ]
  %.sroa.speculated.i.i33.pre-phi = phi i32 [ %.pre46, %._ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit.thread_crit_edge ], [ %.sroa.speculated.i.i, %_ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit ]
  %.pre-phi39 = phi i32 [ %.pre38, %._ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit.thread_crit_edge ], [ %i.r, %_ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit ]
  %.pre-phi37 = phi i32 [ %.pre36, %._ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit.thread_crit_edge ], [ %i.q, %_ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit ]
  %.pre-phi35 = phi i32 [ %.pre34, %._ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit.thread_crit_edge ], [ %i.p, %_ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit ]
  %.pre-phi = phi i32 [ %.pre, %._ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit.thread_crit_edge ], [ %i.o, %_ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit ]
  %i.aw = tail call i64 @_ZN8psort_nwIN3opt7sortmaxEE8vc_mergeEjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.pre-phi35, i32 noundef %.pre-phi39), !inline_history !223 ; 2 uses
  %.sroa.421.0.extract.shift.i = lshr i64 %i.aw, 32
  %.sroa.421.0.extract.trunc.i = trunc nuw i64 %.sroa.421.0.extract.shift.i to i32
  %i.ax = tail call i64 @_ZN8psort_nwIN3opt7sortmaxEE8vc_mergeEjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.pre-phi, i32 noundef %.pre-phi37), !inline_history !223 ; 2 uses
  %.sroa.419.0.extract.shift.i = lshr i64 %i.ax, 32
  %.sroa.419.0.extract.trunc.i = trunc nuw i64 %.sroa.419.0.extract.shift.i to i32
  %i.ay = add i64 %i.ax, %i.aw
  %.sroa.022.0.extract.trunc.i = trunc i64 %i.ay to i32
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !125
  %i.bb = icmp eq i32 %i.ba, 2
  %.sroa.4.0.extract.trunc.i.i32 = select i1 %i.bb, i32 6, i32 3
  %i.bc = mul i32 %.sroa.4.0.extract.trunc.i.i32, %.sroa.speculated.i.i33.pre-phi
  %i.bd = add i32 %.pre-phi48, %.sroa.022.0.extract.trunc.i
  %i.be = add i32 %.sroa.421.0.extract.trunc.i, -2
  %i.bf = add i32 %i.be, %.sroa.419.0.extract.trunc.i
  %i.bg = add i32 %i.bf, %i.bc
  br label %_ZN8psort_nwIN3opt7sortmaxEE10vc_dsmergeEjjj.exit

_ZN8psort_nwIN3opt7sortmaxEE10vc_dsmergeEjjj.exit: ; preds = %.thread.i, %bb.h, %bb.c, %_ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit.thread, %bb.b
  %.sroa.5.0 = phi i32 [ %.sroa.5.0.extract.trunc, %bb.b ], [ %i.bg, %_ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit.thread ], [ 0, %bb.c ], [ %i.au, %bb.h ], [ %i.av, %.thread.i ]
  %.sroa.0.0 = phi i32 [ 2, %bb.b ], [ %i.bd, %_ZN8psort_nwIN3opt7sortmaxEE11use_dsmergeEjjj.exit.thread ], [ 0, %bb.c ], [ %i.h, %bb.h ], [ %i.h, %.thread.i ]
  %.sroa.5.0.insert.ext = zext i32 %.sroa.5.0 to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3opt7sortmax5freshEPKc(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.generic_model_converter::entry", align 8 ; 9 uses
  %3 = alloca %class.symbol, align 8              ; 4 uses
  %4 = alloca %class.obj_ref, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16, !nonnull !40, !align !41 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 816
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !224
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN6symbolC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1)
  %i.e = call noundef ptr @_ZN11ast_manager18mk_fresh_func_declERK6symbolS2_jPKP4sortS4_b(ptr noundef nonnull align 8 dereferenceable(952) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) @_ZN6symbol4nullE, i32 noundef 0, ptr noundef null, ptr noundef %i.d, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.f = call noundef ptr @_ZN11ast_manager6mk_appEP9func_decljPKP4expr(ptr noundef nonnull align 8 dereferenceable(952) %i.b, ptr noundef %i.e, i32 noundef 0, ptr noundef null) ; 9 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !16, !nonnull !40, !align !41 ; 2 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !96
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.g, ptr %i.h, align 8, !tbaa !42
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i:          ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !48
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !48
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit:  ; preds = %bb.a, %_ZN11ast_manager7inc_refEP3ast.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !201  ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null          ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !48
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !48
  br label %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i

_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i: ; preds = %bb.b, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !74   ; 4 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !44   ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !44
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %_ZN15ref_vector_coreI9func_decl19ref_manager_wrapperIS0_11ast_managerEE7inc_refEPS0_.exit.i
  invoke void @_ZN6vectorIP9func_declLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.d
  %.pre.i.i = load ptr, ptr %i.q, align 8, !tbaa !74 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds i8, ptr %.pre.i.i, i64 -4
  %.pre2.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !44
  br label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.c
  %i.y = phi i32 [ %.pre2.i.i, %.noexc ], [ %i.u, %bb.c ] ; 2 uses
  %i.z = phi ptr [ %.pre.i.i, %.noexc ], [ %i.r, %bb.c ] ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ab = zext i32 %i.y to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  store ptr %i.m, ptr %i.ac, align 8, !tbaa !75
  %i.ad = add i32 %i.y, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !44
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !68 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 72 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !225, !nonnull !40, !align !41 ; 4 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !227
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !42
  br i1 %.not.i.i.i.i, label %_ZN23generic_model_converter5entryC2EP9func_declP4exprR11ast_managerNS_11instructionE.exit.i, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i.i.i:      ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !48
  %i.am = add i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !48
  br label %_ZN23generic_model_converter5entryC2EP9func_declP4exprR11ast_managerNS_11instructionE.exit.i

_ZN23generic_model_converter5entryC2EP9func_declP4exprR11ast_managerNS_11instructionE.exit.i: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i.i.i, %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.an, align 8, !tbaa !96
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.ai, ptr %i.ao, align 8, !tbaa !42
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 0, ptr %i.ap, align 8, !tbaa !229
  %i.aq = load ptr, ptr %i.ag, align 8, !tbaa !92 ; 4 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN23generic_model_converter5entryC2EP9func_declP4exprR11ast_managerNS_11instructionE.exit.i
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -4
end_hunk_3
begin_hunk_4_@_ZN6vectorIN23generic_model_converter5entryELb1EjE13expand_vectorEv:bb.a
  %i.an = load i32, ptr %i.am, align 4, !tbaa !44 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !44
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.aq = zext i32 %i.an to i64
  %.idx.i.i.i = mul nuw nsw i64 %i.aq, 40         ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx.i.i.i
  %i.as = icmp eq i32 %i.an, 0
  br i1 %i.as, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNK6vectorIN23generic_model_converter5entryELb1EjE4sizeEv.exit
  %i.at = add nsw i64 %.idx.i.i.i, -40            ; 2 uses
  %i.au = udiv i64 %i.at, 40
  %i.av = and i64 %i.au, 1
  %lcmp.mod.not.not = icmp eq i64 %i.av, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.aw = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !233
  store <2 x ptr> %i.aw, ptr %i.ap, align 8, !tbaa !233
  store ptr null, ptr %i.ak, align 8, !tbaa !227
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.az = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !233
  store <2 x ptr> %i.az, ptr %i.ax, align 8, !tbaa !233
  store ptr null, ptr %i.ay, align 8, !tbaa !96
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !229
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !229
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.08.i.i.i.i.i.i.unr = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.be, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.04.07.i.i.i.i.i.i.unr = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bd, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.bf = icmp ult i64 %i.at, 40
  br i1 %i.bf, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.08.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %.sroa.04.07.i.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.bg = load <2 x ptr>, ptr %.sroa.04.07.i.i.i.i.i.i, align 8, !tbaa !233
  store <2 x ptr> %i.bg, ptr %.08.i.i.i.i.i.i, align 8, !tbaa !233
  store ptr null, ptr %.sroa.04.07.i.i.i.i.i.i, align 8, !tbaa !227
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bj = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !233
  store <2 x ptr> %i.bj, ptr %i.bh, align 8, !tbaa !233
  store ptr null, ptr %i.bi, align 8, !tbaa !96
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 32
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !229
  store i32 %i.bm, ptr %i.bk, align 8, !tbaa !229
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 40
  %i.bp = load <2 x ptr>, ptr %i.bn, align 8, !tbaa !233
  store <2 x ptr> %i.bp, ptr %i.bo, align 8, !tbaa !233
  store ptr null, ptr %i.bn, align 8, !tbaa !227
  %i.bq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 56
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.bs = load <2 x ptr>, ptr %i.br, align 8, !tbaa !233
  store <2 x ptr> %i.bs, ptr %i.bq, align 8, !tbaa !233
  store ptr null, ptr %i.br, align 8, !tbaa !96
  %i.bt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 72
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 72
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !229
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !229
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i, i64 80 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 80
  %i.by = icmp eq ptr %i.bw, %i.ar
  br i1 %i.by, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !234

_ZSt20uninitialized_move_nIPN23generic_model_converter5entryEjS2_ESt4pairIT_T1_ES4_T0_S5_.exit: ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i32 0, ptr %i.bz, align 4, !tbaa !44
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  br label %_ZN6vectorIN23generic_model_converter5entryELb1EjE7destroyEv.exit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_ZNK6vectorIN23generic_model_converter5entryELb1EjE4sizeEv.exit
  tail call void @_ZN6vectorIN23generic_model_converter5entryELb1EjE16destroy_elementsEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.cb = load ptr, ptr %0, align 8, !tbaa !92
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -8
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cc)
  br label %_ZN6vectorIN23generic_model_converter5entryELb1EjE7destroyEv.exit

_ZN6vectorIN23generic_model_converter5entryELb1EjE7destroyEv.exit: ; preds = %_ZSt20uninitialized_move_nIPN23generic_model_converter5entryEjS2_ESt4pairIT_T1_ES4_T0_S5_.exit, %.loopexit
  %i.cd = phi ptr [ %i.ca, %_ZSt20uninitialized_move_nIPN23generic_model_converter5entryEjS2_ESt4pairIT_T1_ES4_T0_S5_.exit ], [ %i.ap, %.loopexit ]
  store ptr %i.cd, ptr %0, align 8, !tbaa !92
  store i32 %i.j, ptr %i.aj, align 4, !tbaa !44
  br label %bb.l

bb.l:                                             ; preds = %_ZN6vectorIN23generic_model_converter5entryELb1EjE7destroyEv.exit, %bb.b
  ret void

bb.m:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6vectorIN23generic_model_converter5entryELb1EjE16destroy_elementsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !92     ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZSt9destroy_nIPN23generic_model_converter5entryEjET_S3_T0_.exit, label %_ZNK6vectorIN23generic_model_converter5entryELb1EjE4sizeEv.exit

_ZNK6vectorIN23generic_model_converter5entryELb1EjE4sizeEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !44   ; 2 uses
  %.not7.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not7.i.i.i, label %_ZSt9destroy_nIPN23generic_model_converter5entryEjET_S3_T0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK6vectorIN23generic_model_converter5entryELb1EjE4sizeEv.exit, %_ZSt8_DestroyIN23generic_model_converter5entryEEvPT_.exit.i.i.i
  %.09.i.i.i = phi i32 [ %i.y, %_ZSt8_DestroyIN23generic_model_converter5entryEEvPT_.exit.i.i.i ], [ %i.d, %_ZNK6vectorIN23generic_model_converter5entryELb1EjE4sizeEv.exit ]
  %.048.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyIN23generic_model_converter5entryEEvPT_.exit.i.i.i ], [ %i.a, %_ZNK6vectorIN23generic_model_converter5entryELb1EjE4sizeEv.exit ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !96   ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !117, !nonnull !40, !align !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !48
  %i.k = add i32 %i.j, -1                         ; 2 uses
  store i32 %i.k, ptr %i.i, align 4, !tbaa !48
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.h, ptr noundef nonnull %i.f)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit.i.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #17
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i.i
  %i.o = load ptr, ptr %.048.i.i.i, align 8, !tbaa !227 ; 3 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZSt8_DestroyIN23generic_model_converter5entryEEvPT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !232, !nonnull !40, !align !41
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !48
  %i.t = add i32 %i.s, -1                         ; 2 uses
  store i32 %i.t, ptr %i.r, align 4, !tbaa !48
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %_ZSt8_DestroyIN23generic_model_converter5entryEEvPT_.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.q, ptr noundef nonnull %i.o)
          to label %_ZSt8_DestroyIN23generic_model_converter5entryEEvPT_.exit.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #17
  unreachable

_ZSt8_DestroyIN23generic_model_converter5entryEEvPT_.exit.i.i.i: ; preds = %bb.f, %bb.e, %_ZN7obj_refI4expr11ast_managerED2Ev.exit.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 40
  %i.y = add i32 %.09.i.i.i, -1                   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i, label %_ZSt9destroy_nIPN23generic_model_converter5entryEjET_S3_T0_.exit, label %.lr.ph.i.i.i, !llvm.loop !235

_ZSt9destroy_nIPN23generic_model_converter5entryEjET_S3_T0_.exit: ; preds = %_ZSt8_DestroyIN23generic_model_converter5entryEEvPT_.exit.i.i.i, %bb.a, %_ZNK6vectorIN23generic_model_converter5entryELb1EjE4sizeEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZN8psort_nwIN3opt7sortmaxEE10vc_sortingEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 0, label %_ZN8psort_nwIN3opt7sortmaxEE11vc_dsortingEjj.exit
    i32 1, label %_ZN8psort_nwIN3opt7sortmaxEE11vc_dsortingEjj.exit
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !125
  %i.c = icmp eq i32 %i.b, 2
  %.sroa.5.0.extract.trunc.i = select i1 %i.c, i32 6, i32 3
  br label %_ZN8psort_nwIN3opt7sortmaxEE11vc_dsortingEjj.exit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %1, 10
  br i1 %i.d, label %bb.d, label %._ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit.thread_crit_edge

._ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit.thread_crit_edge: ; preds = %bb.c
  %.pre = lshr i32 %1, 1                          ; 2 uses
  %.pre18 = sub nuw i32 %1, %.pre
  br label %_ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !125
  %.pre.i.i = add nsw i32 %1, -1
  %.pre23.i.i = shl nuw nsw i32 1, %.pre.i.i      ; 6 uses
  switch i32 %i.f, label %.thread.fold.split.i.i [
    i32 1, label %.thread.i.i
    i32 0, label %_ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit
  ]

.thread.fold.split.i.i:                           ; preds = %bb.d
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.fold.split.i.i, %bb.d
  %.sroa.6.022.i.i = phi i32 [ 0, %bb.d ], [ %.pre23.i.i, %.thread.fold.split.i.i ]
  %i.g = add nuw nsw i32 %.sroa.6.022.i.i, %.pre23.i.i
  br label %_ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit

_ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit: ; preds = %bb.d, %.thread.i.i
  %.sroa.6.1.i.i = phi i32 [ %.pre23.i.i, %bb.d ], [ %i.g, %.thread.i.i ]
  %i.h = lshr i32 %1, 1                           ; 4 uses
  %i.i = tail call i64 @_ZN8psort_nwIN3opt7sortmaxEE10vc_sortingEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.h), !inline_history !129 ; 2 uses
  %.sroa.415.0.extract.shift.i = lshr i64 %i.i, 32
  %.sroa.415.0.extract.trunc.i = trunc nuw i64 %.sroa.415.0.extract.shift.i to i32
  %i.j = sub nuw nsw i32 %1, %i.h                 ; 3 uses
  %i.k = tail call i64 @_ZN8psort_nwIN3opt7sortmaxEE10vc_sortingEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.j), !inline_history !129 ; 2 uses
  %.sroa.413.0.extract.shift.i = lshr i64 %i.k, 32
  %.sroa.413.0.extract.trunc.i = trunc nuw i64 %.sroa.413.0.extract.shift.i to i32
  %i.l = add i64 %i.k, %i.i
  %i.m = add i32 %.sroa.413.0.extract.trunc.i, %.sroa.415.0.extract.trunc.i
  %i.n = tail call i64 @_ZN8psort_nwIN3opt7sortmaxEE8vc_mergeEjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.h, i32 noundef %i.j), !inline_history !129 ; 2 uses
  %.sroa.411.0.extract.shift.i = lshr i64 %i.n, 32
  %.sroa.411.0.extract.trunc.i = trunc nuw i64 %.sroa.411.0.extract.shift.i to i32
  %i.o = add i64 %i.l, %i.n
  %i.p = add i32 %i.m, %.sroa.411.0.extract.trunc.i
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.o to i32
  %i.q = mul nuw nsw i32 %1, 5
  %i.r = add nuw nsw i32 %.sroa.6.1.i.i, %i.q
  %i.s = mul i32 %.sroa.0.0.extract.trunc.i, 5
  %i.t = add i32 %i.p, %i.s
  %i.u = icmp ult i32 %i.r, %i.t
  br i1 %i.u, label %bb.e, label %_ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit.thread

bb.e:                                             ; preds = %_ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit
  %i.v = load i32, ptr %i.e, align 8, !tbaa !125
  switch i32 %i.v, label %.thread.fold.split.i [
    i32 1, label %.thread.i
    i32 0, label %_ZN8psort_nwIN3opt7sortmaxEE11vc_dsortingEjj.exit
  ]

.thread.fold.split.i:                             ; preds = %bb.e
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.fold.split.i, %bb.e
  %.sroa.6.022.i = phi i32 [ 0, %bb.e ], [ %.pre23.i.i, %.thread.fold.split.i ]
  %i.w = add nuw nsw i32 %.sroa.6.022.i, %.pre23.i.i
  br label %_ZN8psort_nwIN3opt7sortmaxEE11vc_dsortingEjj.exit

_ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit.thread: ; preds = %._ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit.thread_crit_edge, %_ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit
  %.pre-phi19 = phi i32 [ %.pre18, %._ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit.thread_crit_edge ], [ %i.j, %_ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit ] ; 2 uses
  %.pre-phi = phi i32 [ %.pre, %._ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit.thread_crit_edge ], [ %i.h, %_ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit ] ; 2 uses
  %i.x = tail call i64 @_ZN8psort_nwIN3opt7sortmaxEE10vc_sortingEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.pre-phi), !inline_history !236 ; 2 uses
  %.sroa.415.0.extract.shift = lshr i64 %i.x, 32
  %.sroa.415.0.extract.trunc = trunc nuw i64 %.sroa.415.0.extract.shift to i32
  %i.y = tail call i64 @_ZN8psort_nwIN3opt7sortmaxEE10vc_sortingEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.pre-phi19), !inline_history !236 ; 2 uses
  %.sroa.413.0.extract.shift = lshr i64 %i.y, 32
  %.sroa.413.0.extract.trunc = trunc nuw i64 %.sroa.413.0.extract.shift to i32
  %i.z = add i64 %i.y, %i.x
  %i.aa = add i32 %.sroa.413.0.extract.trunc, %.sroa.415.0.extract.trunc
  %i.ab = tail call i64 @_ZN8psort_nwIN3opt7sortmaxEE8vc_mergeEjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.pre-phi, i32 noundef %.pre-phi19), !inline_history !236 ; 2 uses
  %.sroa.4.0.extract.shift = lshr i64 %i.ab, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  %i.ac = add i64 %i.z, %i.ab
  %i.ad = add i32 %i.aa, %.sroa.4.0.extract.trunc
  %.sroa.0.0.extract.trunc6 = trunc i64 %i.ac to i32
  br label %_ZN8psort_nwIN3opt7sortmaxEE11vc_dsortingEjj.exit

_ZN8psort_nwIN3opt7sortmaxEE11vc_dsortingEjj.exit: ; preds = %.thread.i, %bb.e, %bb.a, %bb.a, %_ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit.thread, %bb.b
  %.sroa.6.0 = phi i32 [ 0, %bb.a ], [ %i.ad, %_ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit.thread ], [ %.sroa.5.0.extract.trunc.i, %bb.b ], [ 0, %bb.a ], [ %.pre23.i.i, %bb.e ], [ %i.w, %.thread.i ]
  %.sroa.0.0 = phi i32 [ 0, %bb.a ], [ %.sroa.0.0.extract.trunc6, %_ZN8psort_nwIN3opt7sortmaxEE12use_dsortingEj.exit.thread ], [ 2, %bb.b ], [ 0, %bb.a ], [ %1, %bb.e ], [ %1, %.thread.i ]
  %.sroa.6.0.insert.ext = zext i32 %.sroa.6.0 to i64
  %.sroa.6.0.insert.shift = shl nuw i64 %.sroa.6.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.0 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8psort_nwIN3opt7sortmaxEE10add_subsetEbjjR10ptr_vectorI4exprEjPKPS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %reass.sub = sub i32 %5, %2
  %i.b = add i32 %reass.sub, 1                    ; 3 uses
  %i.c = icmp ult i32 %3, %i.b
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.d = add i32 %2, -1                           ; 2 uses
  %i.e = zext i32 %3 to i64                       ; 2 uses
  br i1 %1, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.pre = load ptr, ptr %4, align 8, !tbaa !43
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit.us
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit.us ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.h = tail call noundef ptr @_ZN8psort_nwIN3opt7sortmaxEE6mk_notEP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.g)
  %i.i = load ptr, ptr %4, align 8, !tbaa !43     ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !44   ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !44
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit.us

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre.i.us = load ptr, ptr %4, align 8, !tbaa !43 ; 2 uses
  %.phi.trans.insert.i.us = getelementptr inbounds i8, ptr %.pre.i.us, i64 -4
  %.pre2.i.us = load i32, ptr %.phi.trans.insert.i.us, align 4, !tbaa !44
  br label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit.us

_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit.us:   ; preds = %bb.c, %bb.b
  %i.p = phi i32 [ %.pre2.i.us, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %i.q = phi ptr [ %.pre.i.us, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4
  %i.s = zext i32 %i.p to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.s
  store ptr %i.h, ptr %i.t, align 8, !tbaa !45
  %i.u = add i32 %i.p, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !44
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %i.v = trunc i64 %indvars.iv.next25 to i32      ; 2 uses
  tail call void @_ZN8psort_nwIN3opt7sortmaxEE10add_subsetEbjjR10ptr_vectorI4exprEjPKPS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext true, i32 noundef %i.d, i32 noundef %i.v, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %5, ptr noundef nonnull %6)
  %i.w = load ptr, ptr %4, align 8, !tbaa !43
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !44
  %i.z = add i32 %i.y, -1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !44
  %exitcond28.not = icmp eq i32 %i.b, %i.v
  br i1 %exitcond28.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !237

bb.d:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %4, align 8, !tbaa !43    ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN8psort_nwIN3opt7sortmaxEE10add_clauseERK10ptr_vectorI4exprE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !44
  br label %_ZN8psort_nwIN3opt7sortmaxEE10add_clauseERK10ptr_vectorI4exprE.exit

_ZN8psort_nwIN3opt7sortmaxEE10add_clauseERK10ptr_vectorI4exprE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i32 [ %i.ad, %bb.e ], [ 0, %bb.d ]
  tail call void @_ZN8psort_nwIN3opt7sortmaxEE10add_clauseEjPKP4expr(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.0.i.i, ptr noundef %i.aa)
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit
  %i.ae = phi ptr [ %.pre, %.lr.ph.split.preheader ], [ %i.au, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit ] ; 4 uses
  %indvars.iv = phi i64 [ %i.e, %.lr.ph.split.preheader ], [ %indvars.iv.next, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !45
  %i.ah = icmp eq ptr %i.ae, null
  br i1 %i.ah, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !44 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !44
  %i.am = icmp eq i32 %i.aj, %i.al
  br i1 %i.am, label %bb.g, label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

bb.g:                                             ; preds = %bb.f, %.lr.ph.split
  tail call void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !43  ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !44
  br label %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit:      ; preds = %bb.f, %bb.g
  %i.an = phi i32 [ %.pre2.i, %bb.g ], [ %i.aj, %bb.f ] ; 2 uses
  %i.ao = phi ptr [ %.pre.i, %bb.g ], [ %i.ae, %bb.f ] ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -4
  %i.aq = zext i32 %i.an to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.aq
  store ptr %i.ag, ptr %i.ar, align 8, !tbaa !45
  %i.as = add i32 %i.an, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !44
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = trunc i64 %indvars.iv.next to i32       ; 2 uses
  tail call void @_ZN8psort_nwIN3opt7sortmaxEE10add_subsetEbjjR10ptr_vectorI4exprEjPKPS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext false, i32 noundef %i.d, i32 noundef %i.at, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %5, ptr noundef nonnull %6)
  %i.au = load ptr, ptr %4, align 8, !tbaa !43    ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !44
  %i.ax = add i32 %i.aw, -1
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !44
  %exitcond.not = icmp eq i32 %i.b, %i.at
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !237

.loopexit:                                        ; preds = %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit, %_ZN6vectorIP4exprLb0EjE9push_backEOS1_.exit.us, %.preheader, %_ZN8psort_nwIN3opt7sortmaxEE10add_clauseERK10ptr_vectorI4exprE.exit
  ret void
}

declare noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN8reslimit3incEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN5model7is_trueEP4expr(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) local_unnamed_addr #1

declare void @_ZN11mpz_managerILb1EE7big_setER3mpzRKS1_(ptr noundef nonnull align 8 dereferenceable(600), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
end_hunk_4
