inline.NumInlined: 183
inline.NumDeleted: 88
begin_hunk_0_@_ZNK5boost6locale4util18gregorian_calendar11get_time_msEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27
  %i.c = sitofp i64 %i.b to double
  %i.d = fmul nnan double %i.c, 1.000000e+03
  ret double %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost6locale4util18gregorian_calendar10set_optionENS0_17abstract_calendar20calendar_option_typeEi(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 11 uses
  switch i32 %1, label %bb.h [
    i32 0, label %.noexc.i
    i32 1, label %.noexc.i18
  ]

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 49, ptr %i.b, align 8, !tbaa !32
  %i.e = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.e, ptr %3, align 8, !tbaa !18
  %i.f = load i64, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.e, ptr noundef nonnull align 1 dereferenceable(49) @.str.66, i64 49, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.noexc
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost6locale15date_time_errorE, i64 16), ptr %i.c, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN5boost6locale15date_time_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.l unwind label %bb.c

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.d

bb.c:                                             ; preds = %.noexc, %bb.b
  %.04 = phi i1 [ false, %bb.b ], [ true, %.noexc ] ; 2 uses
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.k = load ptr, ptr %3, align 8, !tbaa !18     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.d
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.d, align 8, !tbaa !17
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %.04, label %bb.d, label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %.04, label %bb.d, label %bb.k

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn1229 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #21
  br label %bb.k

.noexc.i18:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 43, ptr %i.a, align 8, !tbaa !32
  %i.p = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc19 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread ; 3 uses

.noexc19:                                         ; preds = %.noexc.i18
  store ptr %i.p, ptr %4, align 8, !tbaa !18
  %i.q = load i64, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  store i64 %i.q, ptr %i.o, align 8, !tbaa !17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(43) %i.p, ptr noundef nonnull align 1 dereferenceable(43) @.str.67, i64 43, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  store i8 0, ptr %i.s, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost6locale15date_time_errorE, i64 16), ptr %i.c, align 8, !tbaa !8
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN5boost6locale15date_time_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.l unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread: ; preds = %.noexc.i18
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.g

bb.f:                                             ; preds = %.noexc19, %bb.e
  %.0 = phi i1 [ false, %bb.e ], [ true, %.noexc19 ] ; 2 uses
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !18     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.o
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.f
  %i.x = load i64, ptr %i.o, align 8, !tbaa !17
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %.0, label %bb.g, label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %.0, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %.pn32 = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ]
  call void @__cxa_free_exception(ptr %i.c) #21
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.68)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #23
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #21
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d, %bb.j
  %.pn14 = phi { ptr, i32 } [ %i.z, %bb.j ], [ %.pn1229, %bb.d ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn32, %bb.g ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ]
  resume { ptr, i32 } %.pn14

bb.l:                                             ; preds = %bb.e, %bb.b
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK5boost6locale4util18gregorian_calendar10get_optionENS0_17abstract_calendar20calendar_option_typeE(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 0, label %bb.f
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !73
  %i.c = icmp eq i32 %i.b, 1
  %i.d = zext i1 %i.c to i32
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.68)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #21
  resume { ptr, i32 } %i.f

bb.f:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost6locale4util18gregorian_calendar12adjust_valueENS0_6period5marks11period_markENS0_17abstract_calendar11update_typeEi(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.p [
    i32 2, label %.sink.split
    i32 3, label %.sink.split
    i32 4, label %bb.c
    i32 5, label %bb.d
    i32 6, label %bb.d
    i32 7, label %bb.d
    i32 9, label %bb.d
    i32 10, label %bb.e
    i32 11, label %bb.e
    i32 12, label %bb.f
    i32 13, label %bb.g
    i32 14, label %bb.h
    i32 15, label %bb.i
    i32 16, label %bb.i
    i32 8, label %bb.i
    i32 1, label %bb.j
    i32 17, label %bb.m
    i32 0, label %bb.r
  ]

bb.c:                                             ; preds = %bb.b
  br label %.sink.split

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  br label %.sink.split

bb.e:                                             ; preds = %bb.b, %bb.b
  br label %.sink.split

bb.f:                                             ; preds = %bb.b
  %i.b = mul nsw i32 %3, 12
  br label %.sink.split

bb.g:                                             ; preds = %bb.b
  br label %.sink.split

bb.h:                                             ; preds = %bb.b
  br label %.sink.split

bb.i:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.c = mul nsw i32 %3, 7
  br label %.sink.split

bb.j:                                             ; preds = %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.69)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #23
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.m:                                             ; preds = %bb.b
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull @.str.61)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #23
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.sink.split:                                      ; preds = %bb.b, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.sink34 = phi i64 [ 92, %bb.i ], [ 80, %bb.h ], [ 84, %bb.g ], [ 88, %bb.f ], [ 88, %bb.e ], [ 92, %bb.d ], [ 96, %bb.c ], [ 100, %bb.b ], [ 100, %bb.b ]
  %.sink33 = phi i32 [ %i.c, %bb.i ], [ %3, %bb.h ], [ %3, %bb.g ], [ %i.b, %bb.f ], [ %3, %bb.e ], [ %3, %bb.d ], [ %3, %bb.c ], [ %3, %bb.b ], [ %3, %bb.b ]
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink34 ; 2 uses
  %5 = load i32, ptr %4, align 4, !tbaa !44
  %6 = add nsw i32 %5, %.sink33
  store i32 %6, ptr %4, align 4, !tbaa !44
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.h, align 8, !tbaa !45
  br label %.sink.split.a

bb.q:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, i32 noundef 1) ; 3 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, i32 noundef 5)
  %i.q = sub nsw i32 %i.p, %i.l
  %i.r = add nsw i32 %i.q, 1                      ; 2 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef i32 %i.u(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, i32 noundef 3)
  %i.w = sub i32 %3, %i.l
  %i.x = add i32 %i.w, %i.v
  %i.y = srem i32 %i.x, %i.r                      ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  %i.aa = select i1 %i.z, i32 %i.r, i32 0
  %spec.select = add i32 %i.y, %i.l
  %i.ab = add i32 %spec.select, %i.aa
  %i.ac = load ptr, ptr %0, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, i32 noundef %i.ab)
  br label %.sink.split.a

.sink.split.a:                                    ; preds = %bb.p, %bb.q
  %i.af = load ptr, ptr %0, align 8, !tbaa !8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(176) %0)
  br label %bb.r

bb.r:                                             ; preds = %.sink.split.a, %bb.b
  ret void

bb.s:                                             ; preds = %bb.o, %bb.l
  %.sink = phi ptr [ %i.f, %bb.o ], [ %i.d, %bb.l ]
  %.pn = phi { ptr, i32 } [ %i.g, %bb.o ], [ %i.e, %bb.l ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK5boost6locale4util18gregorian_calendar10differenceERKNS0_17abstract_calendarENS0_6period5marks11period_markE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::locale::posix_time", align 8 ; 6 uses
  %i.a = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN5boost6locale17abstract_calendarE, ptr nonnull @_ZTIN5boost6locale4util18gregorian_calendarE, i64 0) #21 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN5boost6locale8hold_ptrINS0_4util18gregorian_calendarEE5resetEPS3_.exit, label %bb.e

_ZN5boost6locale8hold_ptrINS0_4util18gregorian_calendarEE5resetEPS3_.exit: ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(176) %0) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.e = load ptr, ptr %1, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke { i64, i32 } %i.g(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %_ZN5boost6locale8hold_ptrINS0_4util18gregorian_calendarEE5resetEPS3_.exit
  %i.i = extractvalue { i64, i32 } %i.h, 0
  store i64 %i.i, ptr %3, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = extractvalue { i64, i32 } %i.h, 1
  store i32 %i.k, ptr %i.j, align 8
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  invoke void %i.n(ptr noundef nonnull align 8 dereferenceable(176) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %_ZN5boost6locale8hold_ptrINS0_4util18gregorian_calendarEE5resetEPS3_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.body

bb.e:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi ptr [ %i.d, %bb.c ], [ null, %bb.a ] ; 11 uses
  %.026 = phi ptr [ %i.d, %bb.c ], [ %i.a, %bb.a ] ; 12 uses
  switch i32 %2, label %bb.v [
    i32 1, label %_ZNK5boost6locale4util18gregorian_calendar8get_diffENS0_6period5marks11period_markEiPKS2_.exit
    i32 2, label %bb.f
    i32 3, label %bb.f
    i32 4, label %bb.i
    i32 8, label %bb.l
    i32 16, label %bb.l
    i32 15, label %bb.l
    i32 5, label %bb.m
    i32 6, label %bb.m
    i32 7, label %bb.m
    i32 9, label %bb.m
    i32 12, label %bb.r
    i32 10, label %bb.s
    i32 11, label %bb.s
    i32 13, label %bb.t
    i32 14, label %bb.u
    i32 0, label %_ZNK5boost6locale4util18gregorian_calendar8get_diffENS0_6period5marks11period_markEiPKS2_.exit
    i32 17, label %_ZNK5boost6locale4util18gregorian_calendar8get_diffENS0_6period5marks11period_markEiPKS2_.exit
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.026, i64 44
  %i.q = load i32, ptr %i.p, align 4, !tbaa !63   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !63   ; 2 uses
  %i.t = sub nsw i32 %i.q, %i.s                   ; 3 uses
  %i.u = icmp eq i32 %i.q, %i.s
  br i1 %i.u, label %_ZNK5boost6locale4util18gregorian_calendar8get_diffENS0_6period5marks11period_markEiPKS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %0, align 8, !tbaa !8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef ptr %i.w(ptr noundef nonnull align 8 dereferenceable(176) %0)
          to label %.noexc unwind label %bb.h, !inline_history !74 ; 7 uses

.noexc:                                           ; preds = %bb.g
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(176) %i.x, i32 noundef 2, i32 noundef 0, i32 noundef %i.t)
          to label %_ZN5boost6locale8hold_ptrINS0_4util18gregorian_calendarEED2Ev.exit15.i unwind label %_ZN5boost6locale8hold_ptrINS0_4util18gregorian_calendarEED2Ev.exit.i

_ZN5boost6locale8hold_ptrINS0_4util18gregorian_calendarEED2Ev.exit15.i: ; preds = %.noexc
  %i.ab = icmp sgt i32 %i.t, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !27 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.026, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !27 ; 2 uses
  %i.ag = icmp sgt i64 %i.ad, %i.af
  %i.ah = sext i1 %i.ag to i32
  %i.ai = icmp slt i64 %i.ad, %i.af
  %i.aj = zext i1 %i.ai to i32
  %.pn.i = select i1 %i.ab, i32 %i.ah, i32 %i.aj
  %.0.i = add nsw i32 %.pn.i, %i.t
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 120
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(176) %i.x) #21, !inline_history !75
  br label %_ZNK5boost6locale4util18gregorian_calendar8get_diffENS0_6period5marks11period_markEiPKS2_.exit

_ZN5boost6locale8hold_ptrINS0_4util18gregorian_calendarEED2Ev.exit.i: ; preds = %.noexc
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(176) %i.x) #21, !inline_history !75
  br label %.body

bb.h:                                             ; preds = %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %.026, i64 44
  %i.at = load i32, ptr %i.as, align 4, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.av = load i32, ptr %i.au, align 4, !tbaa !63
  %i.aw = sub nsw i32 %i.at, %i.av
  %i.ax = mul nsw i32 %i.aw, 12
  %i.ay = getelementptr inbounds nuw i8, ptr %.026, i64 40
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !64
  %i.ba = add nsw i32 %i.ax, %i.az                ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !64 ; 2 uses
  %i.bd = sub nsw i32 %i.ba, %i.bc                ; 3 uses
  %i.be = icmp eq i32 %i.ba, %i.bc
  br i1 %i.be, label %_ZNK5boost6locale4util18gregorian_calendar8get_diffENS0_6period5marks11period_markEiPKS2_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = load ptr, ptr %0, align 8, !tbaa !8
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = invoke noundef ptr %i.bg(ptr noundef nonnull align 8 dereferenceable(176) %0)
          to label %.noexc41 unwind label %bb.k, !inline_history !74 ; 7 uses

.noexc41:                                         ; preds = %bb.j
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr noundef nonnull align 8 dereferenceable(176) %i.bh, i32 noundef 4, i32 noundef 0, i32 noundef %i.bd)
          to label %_ZN5boost6locale8hold_ptrINS0_4util18gregorian_calendarEED2Ev.exit15.i37 unwind label %_ZN5boost6locale8hold_ptrINS0_4util18gregorian_calendarEED2Ev.exit.i36

_ZN5boost6locale8hold_ptrINS0_4util18gregorian_calendarEED2Ev.exit15.i37: ; preds = %.noexc41
  %i.bl = icmp sgt i32 %i.bd, 0
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
end_hunk_0
