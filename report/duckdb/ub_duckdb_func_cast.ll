inline.NumInlined: 41041
inline.NumDeleted: 4767
begin_hunk_0_@_ZN6duckdb6vectorImLb1ESaImEEixEm:bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !13
  store i64 %i.i, ptr %i.b, align 8, !tbaa !13
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorImLb1ESaImEE3getILb1EEERmm.exit, label %bb.b, !prof !177

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !105    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorImLb1ESaImEE3getILb1EEERmm.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

declare void @_ZN6duckdb6Vector6VerifyEm(ptr noundef nonnull align 8 dereferenceable(104), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESt6vectorISB_SaISB_EEEEPSB_ET0_T_SK_SJ_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not17 = icmp eq ptr %0, %1
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEJRKS9_EEvPT_DpOT0_.exit
  %.019 = phi ptr [ %i.u, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEJRKS9_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 10 uses
  %.sroa.08.018 = phi ptr [ %i.t, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEJRKS9_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.019, i64 16 ; 4 uses
  store ptr %i.b, ptr %.019, align 8, !tbaa !108
  %i.c = load ptr, ptr %.sroa.08.018, align 8, !tbaa !105 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.018, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !109  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.e, ptr %i.a, align 8, !tbaa !13
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %.019, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.g, ptr %.019, align 8, !tbaa !105
  %i.h = load i64, ptr %i.a, align 8, !tbaa !13
  store i64 %i.h, ptr %i.b, align 8, !tbaa !100
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !100
  store i8 %i.j, ptr %i.i, align 1, !tbaa !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.019, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !109
  %i.m = load ptr, ptr %.019, align 8, !tbaa !105
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.o = getelementptr inbounds nuw i8, ptr %.019, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.018, i64 32
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEJRKS9_EEvPT_DpOT0_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.r = load ptr, ptr %.019, align 8, !tbaa !105 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.b
  br i1 %i.s, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.r) #30
  br label %.body

_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEJRKS9_EEvPT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.08.018, i64 56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.019, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.t, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1421

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.q, %bb.d ]
  %i.w = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.x = call ptr @__cxa_begin_catch(ptr %i.w) #28 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvT_SB_(ptr noundef %2, ptr noundef nonnull %.019)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #31
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEJRKS9_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.u, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEJRKS9_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %.body
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.y

bb.i:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #32
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

declare { i64, ptr } @_ZN6duckdb12StringVector9AddStringERNS_6VectorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb9UnionType13GetMemberTypeERKNS_11LogicalTypeEm(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE12emplace_backIJRmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_11LogicalTypeERlNS0_13BoundCastInfoEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !386  ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1422
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.f = load i64, ptr %1, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  store ptr %i.g, ptr %6, align 8, !tbaa !108
  %i.h = load ptr, ptr %2, align 8, !tbaa !105    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !109  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.j, ptr %i.a, align 8, !tbaa !13
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %6, align 8, !tbaa !105
  %i.m = load i64, ptr %i.a, align 8, !tbaa !13
  store i64 %i.m, ptr %i.g, align 8, !tbaa !100
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.n = phi ptr [ %i.l, %.noexc.i ], [ %i.g, %bb.b ] ; 2 uses
  switch i64 %i.j, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.h, align 1, !tbaa !100
  store i8 %i.o, ptr %i.n, align 1, !tbaa !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.p = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 %i.p, ptr %i.q, align 8, !tbaa !109
  %i.r = load ptr, ptr %6, align 8, !tbaa !105
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZNSt15__new_allocatorIN6duckdb18UnionBoundCastDataEE9constructIS1_JRmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_11LogicalTypeERlNS0_13BoundCastInfoEEEEvPT_DpOT0_.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %6, align 8, !tbaa !105    ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.g
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.u) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.t

_ZNSt15__new_allocatorIN6duckdb18UnionBoundCastDataEE9constructIS1_JRmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_11LogicalTypeERlNS0_13BoundCastInfoEEEEvPT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = trunc i64 %i.f to i8
  %i.x = load i64, ptr %4, align 8, !tbaa !13
  %.sroa.0.sroa.0.0.copyload = load <2 x ptr>, ptr %5, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !28
  store ptr null, ptr %i.y, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb18UnionBoundCastDataE, i64 16), ptr %i.c, align 8, !tbaa !30
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %i.w, ptr %i.aa, align 8, !tbaa !393
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !108
  %i.ad = load ptr, ptr %6, align 8, !tbaa !105   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.g
  br i1 %i.ae, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIN6duckdb18UnionBoundCastDataEE9constructIS1_JRmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_11LogicalTypeERlNS0_13BoundCastInfoEEEEvPT_DpOT0_.exit
  %i.af = load i64, ptr %i.q, align 8, !tbaa !109 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.ah, i1 false)
  br label %_ZN6duckdb13BoundCastInfoD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt15__new_allocatorIN6duckdb18UnionBoundCastDataEE9constructIS1_JRmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_11LogicalTypeERlNS0_13BoundCastInfoEEEEvPT_DpOT0_.exit
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !105
  %i.ai = load i64, ptr %i.g, align 8, !tbaa !100
  store i64 %i.ai, ptr %i.ac, align 8, !tbaa !100
  %.pre = load i64, ptr %i.q, align 8, !tbaa !109
  br label %_ZN6duckdb13BoundCastInfoD2Ev.exit

_ZN6duckdb13BoundCastInfoD2Ev.exit:               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11, %bb.f
  %i.aj = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11 ], [ %i.af, %bb.f ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !109
  store ptr %i.g, ptr %6, align 8, !tbaa !105
  store i64 0, ptr %i.q, align 8, !tbaa !109
  store i8 0, ptr %i.g, align 8, !tbaa !100
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %7) #28, !inline_history !1423
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 %i.x, ptr %i.am, align 8, !tbaa !384
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store <2 x ptr> %.sroa.0.sroa.0.0.copyload, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store i64 %i.z, ptr %i.ao, align 8, !tbaa !28
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #28
  %i.ap = load ptr, ptr %6, align 8, !tbaa !105   ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.g
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZN6duckdb13BoundCastInfoD2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ap) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZN6duckdb13BoundCastInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !386
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 104
  store ptr %i.as, ptr %i.b, align 8, !tbaa !386
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE17_M_realloc_insertIJRmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_11LogicalTypeERlNS0_13BoundCastInfoEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb10StringUtil6FormatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_EEES7_S7_DpT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector.457", align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !1424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !noalias !1424
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS7_S9_EEES7_S9_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %5, align 8, !tbaa !116, !noalias !1424 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !119, !noalias !1424 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #30
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !120

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %5, align 8, !tbaa !116, !noalias !1424
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_EEES7_RKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #30
  br label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_EEES7_RKS7_DpRKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !1424
  resume { ptr, i32 } %i.j

_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_EEES7_RKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !1424
  ret void
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb18UnionBoundCastData19SortByCostAscendingERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !384
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i64, ptr %i.c, align 8, !tbaa !384
  %i.e = icmp slt i64 %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_18UnionBoundCastDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.81", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !386
  %i.e = load ptr, ptr %0, align 8, !tbaa !388    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 104                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !13
  store i64 %i.i, ptr %i.b, align 8, !tbaa !13
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_18UnionBoundCastDataELb1ESaIS1_EE3getILb1EEERS1_m.exit, label %bb.b, !prof !177

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.33, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !105    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_18UnionBoundCastDataELb1ESaIS1_EE3getILb1EEERS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [104 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb10StringUtil6FormatIJNS_11LogicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_DpT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.457", align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !1427
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !1427
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINS_11LogicalTypeEJRKS2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSA_RSt6vectorINS_20ExceptionFormatValueESaISE_EERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %4, align 8, !tbaa !116, !noalias !1427 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !119, !noalias !1427 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #30
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !120

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 8, !tbaa !116, !noalias !1427
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJNS_11LogicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #30
  br label %_ZN6duckdb9Exception16ConstructMessageIJNS_11LogicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !1427
  resume { ptr, i32 } %i.j

_ZN6duckdb9Exception16ConstructMessageIJNS_11LogicalTypeES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !1427
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !388    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !386  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb18UnionBoundCastDataES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.f, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !30
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(104) %.05.i.i) #28, !inline_history !1430
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 104 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb18UnionBoundCastDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !395

_ZSt8_DestroyIPN6duckdb18UnionBoundCastDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !388
  br label %_ZSt8_DestroyIPN6duckdb18UnionBoundCastDataES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb18UnionBoundCastDataES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb18UnionBoundCastDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.g = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb18UnionBoundCastDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb18UnionBoundCastDataESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb18UnionBoundCastDataES1_EvT_S3_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #30
  br label %_ZNSt12_Vector_baseIN6duckdb18UnionBoundCastDataESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb18UnionBoundCastDataESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb18UnionBoundCastDataES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE17_M_realloc_insertIJRmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_11LogicalTypeERlNS0_13BoundCastInfoEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !386  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !388    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #31
  unreachable

_ZNKSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = sdiv exact i64 %i.g, 104                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 88686269585142075)
  %i.m = select i1 %i.k, i64 88686269585142075, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6duckdb18UnionBoundCastDataESaIS1_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE12_M_check_lenEmPKc.exit
  %i.p = mul nuw nsw i64 %i.m, 104
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #29
  br label %_ZNSt12_Vector_baseIN6duckdb18UnionBoundCastDataESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6duckdb18UnionBoundCastDataESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.r = phi ptr [ %i.q, %bb.c ], [ null, %_ZNKSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.t = load i64, ptr %2, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  store ptr %i.u, ptr %7, align 8, !tbaa !108
  %i.v = load ptr, ptr %3, align 8, !tbaa !105    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !109  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.x, ptr %i.a, align 8, !tbaa !13
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt12_Vector_baseIN6duckdb18UnionBoundCastDataESaIS1_EE11_M_allocateEm.exit
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc31 unwind label %bb.k   ; 2 uses

.noexc31:                                         ; preds = %.noexc.i
  store ptr %i.z, ptr %7, align 8, !tbaa !105
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !13
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !100
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc31, %_ZNSt12_Vector_baseIN6duckdb18UnionBoundCastDataESaIS1_EE11_M_allocateEm.exit
  %i.ab = phi ptr [ %i.z, %.noexc31 ], [ %i.u, %_ZNSt12_Vector_baseIN6duckdb18UnionBoundCastDataESaIS1_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.x, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %.noexc
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !100
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !100
  br label %.noexc

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %.noexc

.noexc:                                           ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !109
  %i.af = load ptr, ptr %7, align 8, !tbaa !105
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt15__new_allocatorIN6duckdb18UnionBoundCastDataEE9constructIS1_JRmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_11LogicalTypeERlNS0_13BoundCastInfoEEEEvPT_DpOT0_.exit unwind label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.ah = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ai = load ptr, ptr %7, align 8, !tbaa !105   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.u
  br i1 %i.aj, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.ai) #30
  br label %.body

_ZNSt15__new_allocatorIN6duckdb18UnionBoundCastDataEE9constructIS1_JRmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_11LogicalTypeERlNS0_13BoundCastInfoEEEEvPT_DpOT0_.exit: ; preds = %.noexc
  %i.ak = trunc i64 %i.t to i8
  %i.al = load i64, ptr %5, align 8, !tbaa !13
  %.sroa.054.sroa.0.0.copyload = load <2 x ptr>, ptr %6, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !28
  store ptr null, ptr %i.am, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb18UnionBoundCastDataE, i64 16), ptr %i.s, align 8, !tbaa !30
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i8 %i.ak, ptr %i.ao, align 8, !tbaa !393
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 3 uses
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !108
  %i.ar = load ptr, ptr %7, align 8, !tbaa !105   ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.u
  br i1 %i.as, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIN6duckdb18UnionBoundCastDataEE9constructIS1_JRmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_11LogicalTypeERlNS0_13BoundCastInfoEEEEvPT_DpOT0_.exit
  %i.at = load i64, ptr %i.ae, align 8, !tbaa !109 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.av, i1 false)
  br label %_ZN6duckdb13BoundCastInfoD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt15__new_allocatorIN6duckdb18UnionBoundCastDataEE9constructIS1_JRmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_11LogicalTypeERlNS0_13BoundCastInfoEEEEvPT_DpOT0_.exit
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !105
  %i.aw = load i64, ptr %i.u, align 8, !tbaa !100
  store i64 %i.aw, ptr %i.aq, align 8, !tbaa !100
  %.pre = load i64, ptr %i.ae, align 8, !tbaa !109
  br label %_ZN6duckdb13BoundCastInfoD2Ev.exit

_ZN6duckdb13BoundCastInfoD2Ev.exit:               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.g
  %i.ax = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.at, %bb.g ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !109
  store ptr %i.u, ptr %7, align 8, !tbaa !105
  store i64 0, ptr %i.ae, align 8, !tbaa !109
  store i8 0, ptr %i.u, align 8, !tbaa !100
  %i.az = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr noundef nonnull align 8 dereferenceable(24) %8) #28, !inline_history !1423
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  store i64 %i.al, ptr %i.ba, align 8, !tbaa !384
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  store <2 x ptr> %.sroa.054.sroa.0.0.copyload, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  store i64 %i.an, ptr %i.bc, align 8, !tbaa !28
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #28
  %i.bd = load ptr, ptr %7, align 8, !tbaa !105   ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.u
  br i1 %i.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZN6duckdb13BoundCastInfoD2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bd) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i34: ; preds = %_ZN6duckdb13BoundCastInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %.not10.i.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i34, %_ZSt19__relocate_object_aIN6duckdb18UnionBoundCastDataES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cj, %_ZSt19__relocate_object_aIN6duckdb18UnionBoundCastDataES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i34 ] ; 10 uses
  %.0911.i.i.i.i = phi ptr [ %i.ci, %_ZSt19__relocate_object_aIN6duckdb18UnionBoundCastDataES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i34 ] ; 13 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1431)
  call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb18UnionBoundCastDataE, i64 16), ptr %.012.i.i.i.i, align 8, !tbaa !30, !alias.scope !1431, !noalias !1434
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !393, !alias.scope !1434, !noalias !1431
  store i8 %i.bh, ptr %i.bf, align 8, !tbaa !393, !alias.scope !1431, !noalias !1434
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 3 uses
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !108, !alias.scope !1431, !noalias !1434
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !105, !alias.scope !1434, !noalias !1431 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 5 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !109, !alias.scope !1434, !noalias !1431 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bq)
  %i.br = add nuw nsw i64 %i.bp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bk, ptr noundef nonnull align 8 dereferenceable(1) %i.bm, i64 %i.br, i1 false), !alias.scope !1436
  br label %_ZSt19__relocate_object_aIN6duckdb18UnionBoundCastDataES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !105, !alias.scope !1431, !noalias !1434
  %i.bs = load i64, ptr %i.bm, align 8, !tbaa !100, !alias.scope !1434, !noalias !1431
  store i64 %i.bs, ptr %i.bk, align 8, !tbaa !100, !alias.scope !1431, !noalias !1434
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !109, !alias.scope !1434, !noalias !1431
  br label %_ZSt19__relocate_object_aIN6duckdb18UnionBoundCastDataES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aIN6duckdb18UnionBoundCastDataES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.h
  %i.bt = phi i64 [ %i.bp, %bb.h ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  store i64 %i.bt, ptr %i.bv, align 8, !tbaa !109, !alias.scope !1431, !noalias !1434
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !105, !alias.scope !1434, !noalias !1431
  store i64 0, ptr %i.bu, align 8, !tbaa !109, !alias.scope !1434, !noalias !1431
  store i8 0, ptr %i.bm, align 8, !tbaa !100, !alias.scope !1434, !noalias !1431
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %i.bx) #28
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 72
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 72
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !384, !alias.scope !1434, !noalias !1431
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !384, !alias.scope !1431, !noalias !1434
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 80
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 16, i1 false), !alias.scope !1436
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 96
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 96 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !28, !alias.scope !1434, !noalias !1431
  store i64 %i.cf, ptr %i.cd, align 8, !tbaa !28, !alias.scope !1431, !noalias !1434
  store ptr null, ptr %i.ce, align 8, !tbaa !28, !alias.scope !1434, !noalias !1431
  %i.cg = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !30, !alias.scope !1434, !noalias !1431
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(104) %.0911.i.i.i.i) #28, !inline_history !1437
  %i.ci = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 104 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ci, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1438

_ZNSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN6duckdb18UnionBoundCastDataES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i34
  %.0.lcssa.i.i.i.i = phi ptr [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i34 ], [ %i.cj, %_ZSt19__relocate_object_aIN6duckdb18UnionBoundCastDataES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 104 ; 2 uses
  %.not10.i.i.i.i36 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i.i36, label %_ZNSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit46, label %.lr.ph.i.i.i.i37

.lr.ph.i.i.i.i37:                                 ; preds = %_ZNSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN6duckdb18UnionBoundCastDataES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i43
  %.012.i.i.i.i38 = phi ptr [ %i.dp, %_ZSt19__relocate_object_aIN6duckdb18UnionBoundCastDataES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i43 ], [ %i.ck, %_ZNSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 10 uses
  %.0911.i.i.i.i39 = phi ptr [ %i.do, %_ZSt19__relocate_object_aIN6duckdb18UnionBoundCastDataES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i43 ], [ %1, %_ZNSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 13 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  call void @llvm.experimental.noalias.scope.decl(metadata !1442)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb18UnionBoundCastDataE, i64 16), ptr %.012.i.i.i.i38, align 8, !tbaa !30, !alias.scope !1439, !noalias !1442
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i38, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i39, i64 8
  %i.cn = load i8, ptr %i.cm, align 8, !tbaa !393, !alias.scope !1442, !noalias !1439
  store i8 %i.cn, ptr %i.cl, align 8, !tbaa !393, !alias.scope !1439, !noalias !1442
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i38, i64 16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i39, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i38, i64 32 ; 3 uses
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !108, !alias.scope !1439, !noalias !1442
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !105, !alias.scope !1442, !noalias !1439 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i39, i64 32 ; 5 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i40

bb.i:                                             ; preds = %.lr.ph.i.i.i.i37
  %i.cu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i39, i64 24
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !109, !alias.scope !1442, !noalias !1439 ; 3 uses
  %i.cw = icmp ult i64 %i.cv, 16
  call void @llvm.assume(i1 %i.cw)
  %i.cx = add nuw nsw i64 %i.cv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cq, ptr noundef nonnull align 8 dereferenceable(1) %i.cs, i64 %i.cx, i1 false), !alias.scope !1444
  br label %_ZSt19__relocate_object_aIN6duckdb18UnionBoundCastDataES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i40: ; preds = %.lr.ph.i.i.i.i37
  store ptr %i.cr, ptr %i.co, align 8, !tbaa !105, !alias.scope !1439, !noalias !1442
  %i.cy = load i64, ptr %i.cs, align 8, !tbaa !100, !alias.scope !1442, !noalias !1439
  store i64 %i.cy, ptr %i.cq, align 8, !tbaa !100, !alias.scope !1439, !noalias !1442
  %.phi.trans.insert.i.i.i.i.i41 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i39, i64 24
  %.pre.i.i.i.i.i42 = load i64, ptr %.phi.trans.insert.i.i.i.i.i41, align 8, !tbaa !109, !alias.scope !1442, !noalias !1439
  br label %_ZSt19__relocate_object_aIN6duckdb18UnionBoundCastDataES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i43

_ZSt19__relocate_object_aIN6duckdb18UnionBoundCastDataES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i43: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i40, %bb.i
  %i.cz = phi i64 [ %i.cv, %bb.i ], [ %.pre.i.i.i.i.i42, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i40 ]
  %i.da = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i39, i64 24
  %i.db = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i38, i64 24
  store i64 %i.cz, ptr %i.db, align 8, !tbaa !109, !alias.scope !1439, !noalias !1442
  store ptr %i.cs, ptr %i.cp, align 8, !tbaa !105, !alias.scope !1442, !noalias !1439
  store i64 0, ptr %i.da, align 8, !tbaa !109, !alias.scope !1442, !noalias !1439
  store i8 0, ptr %i.cs, align 8, !tbaa !100, !alias.scope !1442, !noalias !1439
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i38, i64 48
  %i.dd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i39, i64 48
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %i.dd) #28
  %i.de = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i38, i64 72
  %i.df = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i39, i64 72
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !384, !alias.scope !1442, !noalias !1439
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !384, !alias.scope !1439, !noalias !1442
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i38, i64 80
  %i.di = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i39, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %i.di, i64 16, i1 false), !alias.scope !1444
  %i.dj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i38, i64 96
  %i.dk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i39, i64 96 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !28, !alias.scope !1442, !noalias !1439
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !28, !alias.scope !1439, !noalias !1442
  store ptr null, ptr %i.dk, align 8, !tbaa !28, !alias.scope !1442, !noalias !1439
  %i.dm = load ptr, ptr %.0911.i.i.i.i39, align 8, !tbaa !30, !alias.scope !1442, !noalias !1439
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(104) %.0911.i.i.i.i39) #28, !inline_history !1437
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i39, i64 104 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i38, i64 104 ; 2 uses
  %.not.i.i.i.i44 = icmp eq ptr %i.do, %i.c
  br i1 %.not.i.i.i.i44, label %_ZNSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit46, label %.lr.ph.i.i.i.i37, !llvm.loop !1438

_ZNSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit46: ; preds = %_ZSt19__relocate_object_aIN6duckdb18UnionBoundCastDataES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i43, %_ZNSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i45 = phi ptr [ %i.ck, %_ZNSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.dp, %_ZSt19__relocate_object_aIN6duckdb18UnionBoundCastDataES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i43 ]
  %.not.i47 = icmp eq ptr %i.d, null
  br i1 %.not.i47, label %_ZNSt12_Vector_baseIN6duckdb18UnionBoundCastDataESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit46
  call void @_ZdlPv(ptr noundef nonnull %i.d) #30
  br label %_ZNSt12_Vector_baseIN6duckdb18UnionBoundCastDataESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb18UnionBoundCastDataESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb18UnionBoundCastDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit46, %bb.j
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %0, align 8, !tbaa !388
  store ptr %.0.lcssa.i.i.i.i45, ptr %i.b, align 8, !tbaa !386
  %i.dr = getelementptr inbounds nuw [104 x i8], ptr %i.r, i64 %i.m
  store ptr %i.dr, ptr %i.dq, align 8, !tbaa !1422
  ret void

bb.k:                                             ; preds = %.noexc.i
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.ds, %bb.k ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ah, %bb.f ]
  %i.dt = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.du = call ptr @__cxa_begin_catch(ptr %i.dt) #28 ; 0 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %_ZSt8_DestroyIPN6duckdb18UnionBoundCastDataES1_EvT_S3_RSaIT0_E.exit.thread, label %_ZSt8_DestroyIPN6duckdb18UnionBoundCastDataES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb18UnionBoundCastDataES1_EvT_S3_RSaIT0_E.exit.thread: ; preds = %.body
  %i.dv = load ptr, ptr %i.s, align 8, !tbaa !30
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(104) %i.s) #28, !inline_history !1445
  br label %_ZNSt12_Vector_baseIN6duckdb18UnionBoundCastDataESaIS1_EE13_M_deallocateEPS1_m.exit50

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb18UnionBoundCastDataESaIS1_EE13_M_deallocateEPS1_m.exit50
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

_ZSt8_DestroyIPN6duckdb18UnionBoundCastDataES1_EvT_S3_RSaIT0_E.exit: ; preds = %.body
  call void @_ZdlPv(ptr noundef nonnull %i.r) #30
  br label %_ZNSt12_Vector_baseIN6duckdb18UnionBoundCastDataESaIS1_EE13_M_deallocateEPS1_m.exit50

_ZNSt12_Vector_baseIN6duckdb18UnionBoundCastDataESaIS1_EE13_M_deallocateEPS1_m.exit50: ; preds = %_ZSt8_DestroyIPN6duckdb18UnionBoundCastDataES1_EvT_S3_RSaIT0_E.exit, %_ZSt8_DestroyIPN6duckdb18UnionBoundCastDataES1_EvT_S3_RSaIT0_E.exit.thread
  invoke void @__cxa_rethrow() #31
          to label %bb.o unwind label %bb.l

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.dx

bb.n:                                             ; preds = %bb.l
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  call void @__clang_call_terminate(ptr %i.dz) #32
  unreachable

bb.o:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb18UnionBoundCastDataESaIS1_EE13_M_deallocateEPS1_m.exit50
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb18UnionBoundCastDataD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb18UnionBoundCastDataE, i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN6duckdb13BoundCastInfoD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #28, !inline_history !34
  br label %_ZN6duckdb13BoundCastInfoD2Ev.exit

_ZN6duckdb13BoundCastInfoD2Ev.exit:               ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.f) #28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6duckdb13BoundCastInfoD2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.h) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6duckdb13BoundCastInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb18UnionBoundCastDataD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb18UnionBoundCastDataE, i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6duckdb13BoundCastInfoD2Ev.exit.i, label %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #28, !inline_history !1446
  br label %_ZN6duckdb13BoundCastInfoD2Ev.exit.i

_ZN6duckdb13BoundCastInfoD2Ev.exit.i:             ; preds = %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i.i, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.f) #28, !inline_history !1447
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !105  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6duckdb18UnionBoundCastDataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6duckdb13BoundCastInfoD2Ev.exit.i
  tail call void @_ZdlPv(ptr noundef %i.h) #30, !inline_history !1447
  br label %_ZN6duckdb18UnionBoundCastDataD2Ev.exit

_ZN6duckdb18UnionBoundCastDataD2Ev.exit:          ; preds = %_ZN6duckdb13BoundCastInfoD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %0) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb18UnionBoundCastData4CopyEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr", align 8 ; 7 uses
  %3 = alloca %"class.duckdb::unique_ptr.701", align 8 ; 6 uses
  %4 = alloca %"struct.duckdb::BoundCastInfo", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !171, !noalias !1448
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28, !noalias !1448
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13BoundCastDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g), !noalias !1448 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30, !noalias !1448
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !noalias !1448
  call void %i.l(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.i), !noalias !1448, !inline_history !248
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !32, !noalias !1448
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !249, !noalias !1448
  invoke void @_ZN6duckdb13BoundCastInfoC1EPFbRNS_6VectorES2_mRNS_14CastParametersEENS_10unique_ptrINS_13BoundCastDataESt14default_deleteIS8_ELb1EEEPFNS7_INS_18FunctionLocalStateES9_ISC_ELb1EEERNS_24CastLocalStateParametersEE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef %i.f, ptr noundef nonnull %2, ptr noundef %i.n)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %2, align 8, !tbaa !28, !noalias !1448 ; 3 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNK6duckdb13BoundCastInfo4CopyEv.exit, label %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i: ; preds = %bb.e
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #28, !inline_history !250
  br label %_ZNK6duckdb13BoundCastInfo4CopyEv.exit

bb.f:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !28, !noalias !1448 ; 3 uses
  %.not.i2.i = icmp eq ptr %i.t, null
  br i1 %.not.i2.i, label %common.resume, label %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i3.i

_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i3.i: ; preds = %bb.f
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.t) #28, !inline_history !250
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i3.i, %_ZN6duckdb13BoundCastInfoD2Ev.exit7
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %_ZN6duckdb13BoundCastInfoD2Ev.exit7 ], [ %i.s, %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i3.i ], [ %i.s, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_ZNK6duckdb13BoundCastInfo4CopyEv.exit:           ; preds = %bb.e, %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  invoke void @_ZN6duckdb9make_uniqINS_18UnionBoundCastDataEJRKhRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11LogicalTypeERKlNS_13BoundCastInfoEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.701") align 8 %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %_ZNSt10unique_ptrIN6duckdb18UnionBoundCastDataESt14default_deleteIS1_EED2Ev.exit unwind label %bb.g

_ZNSt10unique_ptrIN6duckdb18UnionBoundCastDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNK6duckdb13BoundCastInfo4CopyEv.exit
  %i.x = load ptr, ptr %3, align 8, !tbaa !375
  store ptr null, ptr %3, align 8, !tbaa !375
  store ptr %i.x, ptr %0, align 8, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !28   ; 3 uses
  %.not.i.i3 = icmp eq ptr %i.z, null
  br i1 %.not.i.i3, label %_ZN6duckdb13BoundCastInfoD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i4

_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i4: ; preds = %_ZNSt10unique_ptrIN6duckdb18UnionBoundCastDataESt14default_deleteIS1_EED2Ev.exit
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.z) #28, !inline_history !34
  br label %_ZN6duckdb13BoundCastInfoD2Ev.exit

_ZN6duckdb13BoundCastInfoD2Ev.exit:               ; preds = %_ZNSt10unique_ptrIN6duckdb18UnionBoundCastDataESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.g:                                             ; preds = %_ZNK6duckdb13BoundCastInfo4CopyEv.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !28 ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.af, null
  br i1 %.not.i.i5, label %_ZN6duckdb13BoundCastInfoD2Ev.exit7, label %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i6

_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i6: ; preds = %bb.g
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !30
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.af) #28, !inline_history !34
  br label %_ZN6duckdb13BoundCastInfoD2Ev.exit7

_ZN6duckdb13BoundCastInfoD2Ev.exit7:              ; preds = %bb.g, %_ZNKSt14default_deleteIN6duckdb13BoundCastDataEEclEPS1_.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9make_uniqINS_18UnionBoundCastDataEJRKhRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11LogicalTypeERKlNS_13BoundCastInfoEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.701") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"struct.duckdb::LogicalType", align 8 ; 3 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #29 ; 11 uses
  %i.c = load i8, ptr %1, align 1, !tbaa !100
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  store ptr %i.d, ptr %6, align 8, !tbaa !108
  %i.e = load ptr, ptr %2, align 8, !tbaa !105    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !109  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.g, ptr %i.a, align 8, !tbaa !13
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.i, ptr %6, align 8, !tbaa !105
  %i.j = load i64, ptr %i.a, align 8, !tbaa !13
  store i64 %i.j, ptr %i.d, align 8, !tbaa !100
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !100
  store i8 %i.l, ptr %i.k, align 1, !tbaa !100
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !109
  %i.o = load ptr, ptr %6, align 8, !tbaa !105
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.q = load i64, ptr %4, align 8, !tbaa !13
  %.sroa.0.sroa.0.0.copyload = load <2 x ptr>, ptr %5, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !28
  store ptr null, ptr %i.r, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb18UnionBoundCastDataE, i64 16), ptr %i.b, align 8, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.c, ptr %i.t, align 8, !tbaa !393
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !108
  %i.w = load ptr, ptr %6, align 8, !tbaa !105    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.d
  br i1 %i.x, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.y = load i64, ptr %i.n, align 8, !tbaa !109  ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.aa, i1 false)
  br label %_ZN6duckdb13BoundCastInfoD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  store ptr %i.w, ptr %i.u, align 8, !tbaa !105
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !100
  store i64 %i.ab, ptr %i.v, align 8, !tbaa !100
  %.pre = load i64, ptr %i.n, align 8, !tbaa !109
  br label %_ZN6duckdb13BoundCastInfoD2Ev.exit

_ZN6duckdb13BoundCastInfoD2Ev.exit:               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %i.ac = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.y, %bb.f ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !109
  store ptr %i.d, ptr %6, align 8, !tbaa !105
  store i64 0, ptr %i.n, align 8, !tbaa !109
  store i8 0, ptr %i.d, align 8, !tbaa !100
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %7) #28, !inline_history !1423
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 %i.q, ptr %i.af, align 8, !tbaa !384
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store <2 x ptr> %.sroa.0.sroa.0.0.copyload, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i64 %i.s, ptr %i.ah, align 8, !tbaa !28
  store ptr %i.b, ptr %0, align 8, !tbaa !375
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #28
  %i.ai = load ptr, ptr %6, align 8, !tbaa !105   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.d
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZN6duckdb13BoundCastInfoD2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ai) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6duckdb13BoundCastInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  ret void

bb.g:                                             ; preds = %.noexc.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

bb.h:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %6, align 8, !tbaa !105   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.d
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.am) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.g ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10 ], [ %i.al, %bb.h ]
  call void @_ZdlPv(ptr noundef nonnull %i.b) #30
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS7_S9_EEES7_S9_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES0_RKT_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ExceptionFormatValue") align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1095
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %6, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !108
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !105  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 4 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !109  ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8, !tbaa !105
  %i.o = load i64, ptr %i.i, align 8, !tbaa !100
  store i64 %i.o, ptr %i.g, align 8, !tbaa !100
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !109
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.p = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.p, ptr %i.r, align 8, !tbaa !109
  store ptr %i.i, ptr %i.f, align 8, !tbaa !105
  store i64 0, ptr %i.q, align 8, !tbaa !109
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !119
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %i.t, ptr %i.a, align 8, !tbaa !119
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert10 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.pre11 = load ptr, ptr %.phi.trans.insert10, align 8, !tbaa !105 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.v = icmp eq ptr %.pre11, %i.u
  br i1 %i.v, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre11) #30
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS7_EEES7_S9_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !105  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.y) #30
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit9

_ZN6duckdb20ExceptionFormatValueD2Ev.exit9:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %i.w
}

declare void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES0_RKT_(ptr dead_on_unwind writable sret(%"struct.duckdb::ExceptionFormatValue") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS7_EEES7_S9_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES0_RKT_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ExceptionFormatValue") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1095
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %5, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !108
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !105  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !109  ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8, !tbaa !105
  %i.o = load i64, ptr %i.i, align 8, !tbaa !100
  store i64 %i.o, ptr %i.g, align 8, !tbaa !100
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !109
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.p = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.p, ptr %i.r, align 8, !tbaa !109
  store ptr %i.i, ptr %i.f, align 8, !tbaa !105
  store i64 0, ptr %i.q, align 8, !tbaa !109
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !119
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %i.t, ptr %i.a, align 8, !tbaa !119
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.pre10 = load ptr, ptr %.phi.trans.insert9, align 8, !tbaa !105 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.v = icmp eq ptr %.pre10, %i.u
  br i1 %i.v, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre10) #30
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
end_hunk_0
