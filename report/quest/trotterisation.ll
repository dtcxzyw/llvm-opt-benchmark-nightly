Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/trotterisation?download=true
inline.NumInlined: 282
inline.NumDeleted: 157
begin_hunk_0_@_Z41internal_applyFirstOrderTrotterRepetition5QuregRSt6vectorIiSaIiEES3_S3_11PauliStrSumSt7complexIdEbb:bb.a
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ee, ptr align 4 %i.ed, i64 %i.eg, i1 false)
  br label %bb.ag

bb.ae:                                            ; preds = %.noexc64
  %i.ei = icmp eq i64 %i.eg, 4
  br i1 %i.ei, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ej = load i32, ptr %i.ed, align 4, !tbaa !26
  store i32 %i.ej, ptr %i.ee, align 4, !tbaa !26
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.ek = getelementptr inbounds i8, ptr %i.ee, i64 %i.eg
  store ptr %i.ek, ptr %i.t, align 8, !tbaa !20
  %i.el = extractvalue { i64, i64 } %i.dg, 1
  %i.em = extractvalue { i64, i64 } %i.dg, 0
  invoke void @_Z37localiser_statevec_anyCtrlPauliGadget5QuregSt6vectorIiSaIiEES2_8PauliStrSt7complexIdE(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %11, ptr nofree noundef nonnull align 8 dereferenceable(24) %12, i64 %i.em, i64 %i.el, double %i.de, double %i.df)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.en = load ptr, ptr %12, align 8, !tbaa !21   ; 3 uses
  %.not.i.i.i66 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i66, label %_ZNSt6vectorIiSaIiEED2Ev.exit67, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eo = load ptr, ptr %i.u, align 8, !tbaa !24
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.en to i64
  %i.er = sub i64 %i.ep, %i.eq
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.er) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit67

_ZNSt6vectorIiSaIiEED2Ev.exit67:                  ; preds = %bb.ah, %bb.ai
  %i.es = load ptr, ptr %11, align 8, !tbaa !21   ; 3 uses
  %.not.i.i.i68 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorIiSaIiEED2Ev.exit69, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit67
  %i.et = load ptr, ptr %i.s, align 8, !tbaa !24
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = ptrtoint ptr %i.es to i64
  %i.ew = sub i64 %i.eu, %i.ev
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef %i.ew) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit69

_ZNSt6vectorIiSaIiEED2Ev.exit69:                  ; preds = %bb.aj, %_ZNSt6vectorIiSaIiEED2Ev.exit67, %_ZNSt6vectorIiSaIiEED2Ev.exit47
  %i.ex = add nuw nsw i64 %.099, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ex, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !34

.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i61, %.noexc.i.i62
  %lpad.loopexit.split-lp167 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit71

bb.ak:                                            ; preds = %bb.ag
  %i.ey = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ez = load ptr, ptr %12, align 8, !tbaa !21   ; 3 uses
  %.not.i.i.i70 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i70, label %_ZNSt6vectorIiSaIiEED2Ev.exit71, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fa = load ptr, ptr %i.u, align 8, !tbaa !24
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = ptrtoint ptr %i.ez to i64
  %i.fd = sub i64 %i.fb, %i.fc
  call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.fd) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit71

_ZNSt6vectorIiSaIiEED2Ev.exit71:                  ; preds = %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp, %bb.al, %bb.ak
  %.pn36 = phi { ptr, i32 } [ %i.ey, %bb.al ], [ %i.ey, %bb.ak ], [ %lpad.loopexit.split-lp167, %.loopexit.split-lp80.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.fe = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %.not.i.i.i72 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i72, label %_ZNSt6vectorIiSaIiEED2Ev.exit51, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit71
  %i.ff = load ptr, ptr %i.s, align 8, !tbaa !24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit51.sink.split

_ZNSt6vectorIiSaIiEED2Ev.exit51.sink.split:       ; preds = %bb.t, %bb.am
  %.sink160 = phi ptr [ %i.ff, %bb.am ], [ %i.cp, %bb.t ]
  %.sink159 = phi ptr [ %i.fe, %bb.am ], [ %i.co, %bb.t ] ; 2 uses
  %.pn36.pn.ph = phi { ptr, i32 } [ %.pn36, %bb.am ], [ %.pn, %bb.t ]
  %i.fg = ptrtoint ptr %.sink160 to i64
  %i.fh = ptrtoint ptr %.sink159 to i64
  %i.fi = sub i64 %i.fg, %i.fh
  call void @_ZdlPvm(ptr noundef nonnull %.sink159, i64 noundef %i.fi) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit51

_ZNSt6vectorIiSaIiEED2Ev.exit51:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit51.sink.split, %_ZNSt6vectorIiSaIiEED2Ev.exit71, %_ZNSt6vectorIiSaIiEED2Ev.exit49
  %.pn36.pn = phi { ptr, i32 } [ %.pn36, %_ZNSt6vectorIiSaIiEED2Ev.exit71 ], [ %.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit49 ], [ %.pn36.pn.ph, %_ZNSt6vectorIiSaIiEED2Ev.exit51.sink.split ]
  resume { ptr, i32 } %.pn36.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_Z37localiser_statevec_anyCtrlPauliGadget5QuregSt6vectorIiSaIiEES2_8PauliStrSt7complexIdE(ptr noundef byval(%struct.Qureg) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr nofree noundef align 8 dereferenceable(24), i64, i64, double, double) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare noundef i32 @_Z28paulis_getSignOfPauliStrConj8PauliStr(i64, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare { i64, i64 } @_Z25paulis_getShiftedPauliStr8PauliStri(i64, i64, i32 noundef) local_unnamed_addr #2

declare { double, double } @__muldc3(double, double, double, double) local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #11 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_Z42internal_applyHigherOrderTrotterRepetition5QuregRSt6vectorIiSaIiEES3_S3_11PauliStrSumSt7complexIdEib(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %4, double %5, double %6, i32 noundef %7, i1 noundef zeroext %8) local_unnamed_addr #0 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.d, %bb.a
  %.tr72 = phi double [ %5, %bb.a ], [ %i.l, %bb.d ] ; 5 uses
  %.tr73 = phi double [ %6, %bb.a ], [ %i.m, %bb.d ] ; 5 uses
  %.tr74 = phi i32 [ %7, %bb.a ], [ %i.q, %bb.d ] ; 3 uses
  switch i32 %.tr74, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %tailrecurse
  tail call void @_Z41internal_applyFirstOrderTrotterRepetition5QuregRSt6vectorIiSaIiEES3_S3_11PauliStrSumSt7complexIdEbb(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %4, double %.tr72, double %.tr73, i1 noundef zeroext %8, i1 noundef zeroext false)
  br label %bb.e

bb.c:                                             ; preds = %tailrecurse
  %i.a = tail call noundef { double, double } @__divdc3(double noundef %.tr72, double noundef %.tr73, double noundef 2.000000e+00, double noundef 0.000000e+00) #11 ; 2 uses
  %i.b = extractvalue { double, double } %i.a, 0
  %i.c = extractvalue { double, double } %i.a, 1
  tail call void @_Z41internal_applyFirstOrderTrotterRepetition5QuregRSt6vectorIiSaIiEES3_S3_11PauliStrSumSt7complexIdEbb(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %4, double %i.b, double %i.c, i1 noundef zeroext %8, i1 noundef zeroext false)
  %i.d = tail call noundef { double, double } @__divdc3(double noundef %.tr72, double noundef %.tr73, double noundef 2.000000e+00, double noundef 0.000000e+00) #11 ; 2 uses
  %i.e = extractvalue { double, double } %i.d, 0
  %i.f = extractvalue { double, double } %i.d, 1
  tail call void @_Z41internal_applyFirstOrderTrotterRepetition5QuregRSt6vectorIiSaIiEES3_S3_11PauliStrSumSt7complexIdEbb(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %4, double %i.e, double %i.f, i1 noundef zeroext %8, i1 noundef zeroext true)
  br label %bb.e

bb.d:                                             ; preds = %tailrecurse
  %i.g = add nsw i32 %.tr74, -1
  %i.h = sitofp i32 %i.g to double
  %i.i = fdiv nnan double 1.000000e+00, %i.h
  %mul = fmul nnan double %i.i, 2.000000e+00
  %exp2 = tail call double @exp2(double %mul)
  %i.j = fsub double 4.000000e+00, %exp2
  %i.k = fdiv double 1.000000e+00, %i.j           ; 3 uses
  %i.l = fmul double %.tr72, %i.k                 ; 4 uses
  %i.m = fmul double %.tr73, %i.k                 ; 4 uses
  %i.n = tail call double @llvm.fmuladd.f64(double %i.k, double -4.000000e+00, double 1.000000e+00) ; 2 uses
  %i.o = fmul double %.tr72, %i.n
  %i.p = fmul double %.tr73, %i.n
  %i.q = add nsw i32 %.tr74, -2                   ; 5 uses
  tail call void @_Z42internal_applyHigherOrderTrotterRepetition5QuregRSt6vectorIiSaIiEES3_S3_11PauliStrSumSt7complexIdEib(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %4, double %i.l, double %i.m, i32 noundef %i.q, i1 noundef zeroext %8)
  tail call void @_Z42internal_applyHigherOrderTrotterRepetition5QuregRSt6vectorIiSaIiEES3_S3_11PauliStrSumSt7complexIdEib(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %4, double %i.l, double %i.m, i32 noundef %i.q, i1 noundef zeroext %8)
  tail call void @_Z42internal_applyHigherOrderTrotterRepetition5QuregRSt6vectorIiSaIiEES3_S3_11PauliStrSumSt7complexIdEib(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %4, double %i.o, double %i.p, i32 noundef %i.q, i1 noundef zeroext %8)
  tail call void @_Z42internal_applyHigherOrderTrotterRepetition5QuregRSt6vectorIiSaIiEES3_S3_11PauliStrSumSt7complexIdEib(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %4, double %i.l, double %i.m, i32 noundef %i.q, i1 noundef zeroext %8)
  br label %tailrecurse

bb.e:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

declare { double, double } @__divdc3(double, double, double, double) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_Z35internal_applyAllTrotterRepetitions5QuregPiS0_i11PauliStrSumSt7complexIdEiib(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %4, double %5, double %6, i32 noundef %7, i32 noundef %8, i1 noundef zeroext %9) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::vector", align 8      ; 12 uses
  %11 = alloca %"class.std::vector", align 8      ; 10 uses
  %12 = alloca %"class.std::vector", align 8      ; 8 uses
  %13 = alloca %"class.std::vector", align 8      ; 9 uses
  %i.a = fcmp oeq double %5, 0.000000e+00
  %i.b = fcmp oeq double %6, 0.000000e+00
  %i.c = select i1 %i.a, i1 %i.b, i1 false
  br i1 %i.c, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  call void @_Z14util_getVectorPii(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %10, ptr noundef %1, i32 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !36
  %.not.not = icmp eq i32 %i.e, 0                 ; 2 uses
  br i1 %.not.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %i.h = load ptr, ptr %10, align 8, !tbaa !21    ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i.i.i.i, label %.noexc22, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.k, 9223372036854775804
  br i1 %i.l, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !22

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #12
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #13
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc22_crit_edge unwind label %bb.o

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc22_crit_edge: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %10, align 8, !tbaa !23   ; 2 uses
  %.pre40 = load ptr, ptr %i.f, align 8, !tbaa !23
  %.pre41 = ptrtoint ptr %.pre40 to i64
  %.pre42 = ptrtoint ptr %.pre to i64
  br label %.noexc22

.noexc22:                                         ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc22_crit_edge, %bb.c
  %.pre-phi43 = phi i64 [ %.pre42, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc22_crit_edge ], [ %i.j, %bb.c ]
  %.pre-phi = phi i64 [ %.pre41, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc22_crit_edge ], [ %i.i, %bb.c ]
  %i.n = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc22_crit_edge ], [ %i.h, %bb.c ] ; 2 uses
  %i.o = phi ptr [ %i.m, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i..noexc22_crit_edge ], [ null, %bb.c ] ; 5 uses
  store ptr %i.o, ptr %12, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !24
  %i.s = sub i64 %.pre-phi, %.pre-phi43           ; 4 uses
  %i.t = icmp sgt i64 %i.s, 4
  br i1 %i.t, label %bb.e, label %bb.f, !prof !25

bb.e:                                             ; preds = %.noexc22
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.o, ptr align 4 %i.n, i64 %i.s, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %.noexc22
  %i.u = icmp eq i64 %i.s, 4
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %i.n, align 4, !tbaa !26
  store i32 %i.v, ptr %i.o, align 4, !tbaa !26
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.w = getelementptr inbounds i8, ptr %i.o, i64 %i.s
  store ptr %i.w, ptr %i.p, align 8, !tbaa !20
  invoke void @_Z17util_getBraQubitsSt6vectorIiSaIiEE5Qureg(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %11, ptr nofree noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
          to label %14 unwind label %bb.p

.thread:                                          ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  br label %14

14:                                               ; preds = %bb.h, %.thread
  br i1 %.not.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %14
  %i.x = load ptr, ptr %12, align 8, !tbaa !21    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %15 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.y = load ptr, ptr %15, align 8, !tbaa !24
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ab) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.j, %bb.i, %14
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  invoke void @_Z14util_getVectorPii(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %13, ptr noundef %2, i32 noundef %3)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ac = sitofp i32 %8 to double
  %i.ad = call noundef { double, double } @__divdc3(double noundef %5, double noundef %6, double noundef %i.ac, double noundef 0.000000e+00) #11 ; 2 uses
  %i.ae = extractvalue { double, double } %i.ad, 0
  %i.af = extractvalue { double, double } %i.ad, 1
  %i.ag = icmp sgt i32 %8, 0
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.s, %bb.k
  %i.ah = load ptr, ptr %13, align 8, !tbaa !21   ; 3 uses
  %.not.i.i.i23 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i23, label %_ZNSt6vectorIiSaIiEED2Ev.exit24, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !24
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit24

_ZNSt6vectorIiSaIiEED2Ev.exit24:                  ; preds = %._crit_edge, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  %i.an = load ptr, ptr %11, align 8, !tbaa !21   ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIiSaIiEED2Ev.exit26, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit24
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !24
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.as) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit26

_ZNSt6vectorIiSaIiEED2Ev.exit26:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit24, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  %i.at = load ptr, ptr %10, align 8, !tbaa !21   ; 3 uses
  %.not.i.i.i27 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIiSaIiEED2Ev.exit28, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit26
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !24
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit28

_ZNSt6vectorIiSaIiEED2Ev.exit28:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit26, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  br label %bb.v

bb.o:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit30

bb.p:                                             ; preds = %bb.h
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %12, align 8, !tbaa !21   ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIiSaIiEED2Ev.exit30, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = load ptr, ptr %i.r, align 8, !tbaa !24
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bf) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit30

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit32

.lr.ph:                                           ; preds = %bb.k, %bb.s
  %.01539 = phi i32 [ %i.bh, %bb.s ], [ 0, %bb.k ]
  invoke void @_Z42internal_applyHigherOrderTrotterRepetition5QuregRSt6vectorIiSaIiEES3_S3_11PauliStrSumSt7complexIdEib(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %4, double %i.ae, double %i.af, i32 noundef %7, i1 noundef zeroext %9)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.lr.ph
  %i.bh = add nuw nsw i32 %.01539, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bh, %8
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !35

bb.t:                                             ; preds = %.lr.ph
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load ptr, ptr %13, align 8, !tbaa !21   ; 3 uses
  %.not.i.i.i31 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIiSaIiEED2Ev.exit32, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !24
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bo) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit32

bb.v:                                             ; preds = %bb.a, %_ZNSt6vectorIiSaIiEED2Ev.exit28
  ret void

_ZNSt6vectorIiSaIiEED2Ev.exit32:                  ; preds = %bb.u, %bb.t, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.r ], [ %i.bi, %bb.t ], [ %i.bi, %bb.u ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  %i.bp = load ptr, ptr %11, align 8, !tbaa !21   ; 3 uses
  %.not.i.i.i33 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIiSaIiEED2Ev.exit30, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit32
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !24
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit30

_ZNSt6vectorIiSaIiEED2Ev.exit30:                  ; preds = %bb.w, %_ZNSt6vectorIiSaIiEED2Ev.exit32, %bb.q, %bb.p, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.q ], [ %i.az, %bb.o ], [ %i.ba, %bb.p ], [ %.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit32 ], [ %.pn.pn, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  %i.bv = load ptr, ptr %10, align 8, !tbaa !21   ; 3 uses
  %.not.i.i.i35 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i35, label %_ZNSt6vectorIiSaIiEED2Ev.exit36, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit30
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !24
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.ca) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit36

_ZNSt6vectorIiSaIiEED2Ev.exit36:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit30, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_Z14util_getVectorPii(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_Z17util_getBraQubitsSt6vectorIiSaIiEE5Qureg(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr nofree noundef align 8 dereferenceable(24), ptr noundef byval(%struct.Qureg) align 8) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress uwtable
define noundef i64 @_Z40internal_getNumTotalSuperPropagatorTerms11PauliStrSumPS_i(ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.0", align 8     ; 6 uses
  %4 = alloca %"class.std::vector.0", align 8     ; 8 uses
  %5 = alloca %"class.std::vector.0", align 8     ; 8 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #13 ; 4 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.c, ptr %i.d, align 8, !tbaa !40
  store i64 2, ptr %i.b, align 8
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.a, ptr %.sroa.584.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.c, ptr %i.e, align 8, !tbaa !41
  %i.f = invoke noundef zeroext i1 @_Z21util_willProdOverflowSt6vectorIxSaIxEE(ptr nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %3, align 8, !tbaa !39     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIxSaIxEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = sub i64 %i.i, %i.j
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.k) #14
  br label %_ZNSt6vectorIxSaIxEED2Ev.exit

_ZNSt6vectorIxSaIxEED2Ev.exit:                    ; preds = %bb.b, %bb.c
  br i1 %i.f, label %.thread, label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %3, align 8, !tbaa !39     ; 2 uses
  %.not.i.i.i53 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i53, label %.body, label %bb.e
end_hunk_0
