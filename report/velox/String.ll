inline.NumInlined: 733
inline.NumDeleted: 345
begin_hunk_0_@_ZN5folly7hexDumpB5cxx11EPKvm:bb.a
  store ptr @.str.73, ptr %i.a, align 8, !tbaa !68
  invoke void @_ZN5folly7hexDumpISt16ostream_iteratorINS_5RangeIPKcEEcSt11char_traitsIcEEEEvPKvmT_(ptr noundef %1, i64 noundef %2, ptr noundef nonnull dead_on_return %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !17, !alias.scope !75
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !24, !alias.scope !75
  store i8 0, ptr %i.b, align 8, !tbaa !11, !alias.scope !75
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76, !noalias !75 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !75 ; 2 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  %.08.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.g ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !80, !noalias !75 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !27, !alias.scope !75 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.b, align 8, !tbaa !11, !alias.scope !75
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #30
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.d

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.e, %bb.c
  %i.u = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !55
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %3, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.z, align 8, !tbaa !55
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !27 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !11
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #30
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.z, align 8, !tbaa !55
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #29
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ah) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.f ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.d ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly7hexDumpISt16ostream_iteratorINS_5RangeIPKcEEcSt11char_traitsIcEEEEvPKvmT_(ptr noundef %0, i64 noundef %1, ptr noundef dead_on_return %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !24
  store i8 0, ptr %i.a, align 8, !tbaa !11
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt16ostream_iteratorIN5folly5RangeIPKcEEcSt11char_traitsIcEEaSERKS4_.exit
  %.0815 = phi i64 [ 0, %.lr.ph ], [ %i.m, %_ZNSt16ostream_iteratorIN5folly5RangeIPKcEEcSt11char_traitsIcEEaSERKS4_.exit ] ; 2 uses
  %i.d = invoke noundef i64 @_ZN5folly6detail11hexDumpLineEPKvmmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, i64 noundef %.0815, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %3, align 8, !tbaa !27
  %i.f = load i64, ptr %i.b, align 8, !tbaa !24
  %i.g = load ptr, ptr %2, align 8, !tbaa !65
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef %i.e, i64 noundef %i.f)
          to label %.noexc unwind label %bb.e     ; 0 uses

.noexc:                                           ; preds = %bb.c
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !68   ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt16ostream_iteratorIN5folly5RangeIPKcEEcSt11char_traitsIcEEaSERKS4_.exit, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %.noexc
  %i.j = load ptr, ptr %2, align 8, !tbaa !65
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #29
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.i, i64 noundef %i.k)
          to label %_ZNSt16ostream_iteratorIN5folly5RangeIPKcEEcSt11char_traitsIcEEaSERKS4_.exit unwind label %bb.e ; 0 uses

_ZNSt16ostream_iteratorIN5folly5RangeIPKcEEcSt11char_traitsIcEEaSERKS4_.exit: ; preds = %.noexc, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.m = add i64 %i.d, %.0815                     ; 2 uses
  %i.n = icmp ult i64 %i.m, %1
  br i1 %i.n, label %bb.b, label %._crit_edge, !llvm.loop !81

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt16ostream_iteratorIN5folly5RangeIPKcEEcSt11char_traitsIcEEaSERKS4_.exit
  %.pre = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.q = icmp eq ptr %.pre, %i.a
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge
  %i.r = load i64, ptr %i.a, align 8, !tbaa !11
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.s) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.o, %bb.d ]
  %i.t = load ptr, ptr %3, align 8, !tbaa !27     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.a
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.f
  %i.v = load i64, ptr %i.a, align 8, !tbaa !11
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #18 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef range(i64 0, 17) i64 @_ZN5folly6detail11hexDumpLineEPKvmmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) initializes((8, 16)) %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 38 uses
  store i64 0, ptr %i.a, align 8, !tbaa !24
  %i.b = load ptr, ptr %3, align 8, !tbaa !27
  store i8 0, ptr %i.b, align 1, !tbaa !11
  %i.c = load ptr, ptr %3, align 8, !tbaa !27     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 37 uses
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8              ; 4 uses
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %bb.a
  %.not.i = icmp ult i64 %i.f, 78
  br i1 %.not.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.g = phi i64 [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ], [ 15, %bb.a ]
  %i.h = shl nuw nsw i64 %i.g, 1
  %.0.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 78) ; 3 uses
  %i.i = or disjoint i64 %.0.i, 1
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #32 ; 4 uses
  %i.k = load i64, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.l = add i64 %i.k, 1                          ; 2 uses
  switch i64 %i.l, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
  ]

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.m = load i8, ptr %i.c, align 1, !tbaa !11
  store i8 %i.m, ptr %i.j, align 1, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.c, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.c, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  br i1 %i.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
  %i.n = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.n)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
  %i.o = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.o) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  store ptr %i.j, ptr %3, align 8, !tbaa !27
  store i64 %.0.i, ptr %i.d, align 8, !tbaa !11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i
  %i.p = phi i64 [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ], [ %.0.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i ]
  %i.q = phi ptr [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 2 uses
  %i.s = sub i64 %2, %1                           ; 4 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.s, i64 16) ; 4 uses
  %i.t = lshr i64 %1, 28
  %i.u = and i64 %i.t, 15
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN5folly6detail11hexDumpLineEPKvmmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9hexValues, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !11
  %i.x = load i64, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.y = add i64 %i.x, 1                          ; 3 uses
  %i.z = icmp ugt i64 %i.y, %i.p
  br i1 %i.z, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.x, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit, %bb.d
  %i.aa = phi ptr [ %.pre.i, %bb.d ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm.exit ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.x
  store i8 %i.w, ptr %i.ab, align 1, !tbaa !11
  store i64 %i.y, ptr %i.a, align 8, !tbaa !24
  %i.ac = load ptr, ptr %3, align 8, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.y
  store i8 0, ptr %i.ad, align 1, !tbaa !11
  %i.ae = lshr i64 %1, 24
  %i.af = and i64 %i.ae, 15
  %i.ag = getelementptr inbounds nuw i8, ptr @_ZZN5folly6detail11hexDumpLineEPKvmmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9hexValues, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !11
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !24  ; 4 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.d                 ; 2 uses
  br i1 %i.al, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i57

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %i.am = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.am)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i57: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit
  %i.an = load i64, ptr %i.d, align 8
  %i.ao = select i1 %i.al, i64 15, i64 %i.an
  %i.ap = icmp ugt i64 %i.aj, %i.ao
  br i1 %i.ap, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit59

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i57
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ai, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i58 = load ptr, ptr %3, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit59: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i57, %bb.f
  %i.aq = phi ptr [ %.pre.i58, %bb.f ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i57 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store i8 %i.ah, ptr %i.ar, align 1, !tbaa !11
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !24
  %i.as = load ptr, ptr %3, align 8, !tbaa !27
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aj
  store i8 0, ptr %i.at, align 1, !tbaa !11
  %i.au = lshr i64 %1, 20
  %i.av = and i64 %i.au, 15
  %i.aw = getelementptr inbounds nuw i8, ptr @_ZZN5folly6detail11hexDumpLineEPKvmmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9hexValues, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !11
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !24  ; 4 uses
  %i.az = add i64 %i.ay, 1                        ; 3 uses
  %i.ba = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.d                 ; 2 uses
  br i1 %i.bb, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i60

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit59
  %i.bc = icmp ult i64 %i.ay, 16
  tail call void @llvm.assume(i1 %i.bc)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i60: ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit59
  %i.bd = load i64, ptr %i.d, align 8
  %i.be = select i1 %i.bb, i64 15, i64 %i.bd
  %i.bf = icmp ugt i64 %i.az, %i.be
  br i1 %i.bf, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit62

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i60
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ay, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i61 = load ptr, ptr %3, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit62: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i60, %bb.h
  %i.bg = phi ptr [ %.pre.i61, %bb.h ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i60 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ay
  store i8 %i.ax, ptr %i.bh, align 1, !tbaa !11
  store i64 %i.az, ptr %i.a, align 8, !tbaa !24
  %i.bi = load ptr, ptr %3, align 8, !tbaa !27
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.az
  store i8 0, ptr %i.bj, align 1, !tbaa !11
  %i.bk = lshr i64 %1, 16
  %i.bl = and i64 %i.bk, 15
  %i.bm = getelementptr inbounds nuw i8, ptr @_ZZN5folly6detail11hexDumpLineEPKvmmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9hexValues, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !11
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !24  ; 4 uses
  %i.bp = add i64 %i.bo, 1                        ; 3 uses
  %i.bq = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.d                 ; 2 uses
  br i1 %i.br, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i63

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit62
  %i.bs = icmp ult i64 %i.bo, 16
  tail call void @llvm.assume(i1 %i.bs)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i63: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit62
  %i.bt = load i64, ptr %i.d, align 8
  %i.bu = select i1 %i.br, i64 15, i64 %i.bt
  %i.bv = icmp ugt i64 %i.bp, %i.bu
  br i1 %i.bv, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit65

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i63
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bo, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i64 = load ptr, ptr %3, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit65: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i63, %bb.j
  %i.bw = phi ptr [ %.pre.i64, %bb.j ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i63 ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bo
  store i8 %i.bn, ptr %i.bx, align 1, !tbaa !11
  store i64 %i.bp, ptr %i.a, align 8, !tbaa !24
  %i.by = load ptr, ptr %3, align 8, !tbaa !27
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bp
  store i8 0, ptr %i.bz, align 1, !tbaa !11
  %i.ca = lshr i64 %1, 12
  %i.cb = and i64 %i.ca, 15
  %i.cc = getelementptr inbounds nuw i8, ptr @_ZZN5folly6detail11hexDumpLineEPKvmmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9hexValues, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !11
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !24  ; 4 uses
  %i.cf = add i64 %i.ce, 1                        ; 3 uses
  %i.cg = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.d                 ; 2 uses
  br i1 %i.ch, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i66

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit65
  %i.ci = icmp ult i64 %i.ce, 16
  tail call void @llvm.assume(i1 %i.ci)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i66: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit65
  %i.cj = load i64, ptr %i.d, align 8
  %i.ck = select i1 %i.ch, i64 15, i64 %i.cj
  %i.cl = icmp ugt i64 %i.cf, %i.ck
  br i1 %i.cl, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit68

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i66
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ce, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i67 = load ptr, ptr %3, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit68: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i66, %bb.l
  %i.cm = phi ptr [ %.pre.i67, %bb.l ], [ %i.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i66 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ce
  store i8 %i.cd, ptr %i.cn, align 1, !tbaa !11
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !24
  %i.co = load ptr, ptr %3, align 8, !tbaa !27
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cf
  store i8 0, ptr %i.cp, align 1, !tbaa !11
  %i.cq = lshr i64 %1, 8
  %i.cr = and i64 %i.cq, 15
  %i.cs = getelementptr inbounds nuw i8, ptr @_ZZN5folly6detail11hexDumpLineEPKvmmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9hexValues, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !11
  %i.cu = load i64, ptr %i.a, align 8, !tbaa !24  ; 4 uses
  %i.cv = add i64 %i.cu, 1                        ; 3 uses
  %i.cw = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.d                 ; 2 uses
  br i1 %i.cx, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i69

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit68
  %i.cy = icmp ult i64 %i.cu, 16
  tail call void @llvm.assume(i1 %i.cy)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i69: ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit68
  %i.cz = load i64, ptr %i.d, align 8
  %i.da = select i1 %i.cx, i64 15, i64 %i.cz
  %i.db = icmp ugt i64 %i.cv, %i.da
  br i1 %i.db, label %bb.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit71

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i69
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.cu, i64 noundef 0, ptr noundef null, i64 noundef 1)
  %.pre.i70 = load ptr, ptr %3, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit71: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i69, %bb.n
  %i.dc = phi ptr [ %.pre.i70, %bb.n ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i69 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cu
  store i8 %i.ct, ptr %i.dd, align 1, !tbaa !11
  store i64 %i.cv, ptr %i.a, align 8, !tbaa !24
  %i.de = load ptr, ptr %3, align 8, !tbaa !27
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cv
  store i8 0, ptr %i.df, align 1, !tbaa !11
  %i.dg = lshr i64 %1, 4
  %i.dh = and i64 %i.dg, 15
  %i.di = getelementptr inbounds nuw i8, ptr @_ZZN5folly6detail11hexDumpLineEPKvmmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9hexValues, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !11
  %i.dk = load i64, ptr %i.a, align 8, !tbaa !24  ; 4 uses
  %i.dl = add i64 %i.dk, 1                        ; 3 uses
  %i.dm = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.d                 ; 2 uses
  br i1 %i.dn, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i72

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit71
  %i.do = icmp ult i64 %i.dk, 16
  tail call void @llvm.assume(i1 %i.do)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i72

end_hunk_0
