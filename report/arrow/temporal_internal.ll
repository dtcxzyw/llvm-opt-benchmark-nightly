inline.NumInlined: 249
inline.NumDeleted: 133
begin_hunk_0_@_ZNK5arrow18TypedChunkLocationItEeqES1_
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationItEeqES1_(ptr noundef nonnull align 2 dereferenceable(4) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !20
  %i.b = trunc i32 %1 to i16
  %i.c = icmp eq i16 %i.a, %i.b
  %.sroa.2.0.extract.shift = lshr i32 %1, 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i16, ptr %i.d, align 2
  %i.f = zext i16 %i.e to i32
  %i.g = icmp eq i32 %.sroa.2.0.extract.shift, %i.f
  %i.h = select i1 %i.c, i1 %i.g, i1 false
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIjEC2Ejj(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIjEC5Ejj) align 2 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIjEeqES1_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %i.a = load i32, ptr %0, align 4, !tbaa !23
  %i.b = icmp eq i32 %i.a, %.sroa.0.0.extract.trunc
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, %.sroa.2.0.extract.trunc
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIlEC2Ell(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIlEC5Ell) align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIlEeqES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !26
  %i.b = icmp eq i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, %2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationImEC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationImEC5Emm) align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationImEeqES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !30
  %i.b = icmp eq i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, %2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal10LocateZoneESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.b, align 8
  %i.c = load i8, ptr %2, align 1, !tbaa !33      ; 2 uses
  switch i8 %i.c, label %bb.w [
    i8 43, label %bb.b
    i8 45, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i64 noundef 1, i64 noundef 0) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = add i64 %1, -1                           ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.g, ptr %5, align 8, !tbaa !34
  %i.h = icmp ugt i64 %i.e, 15
  br i1 %i.h, label %bb.e, label %._crit_edge.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.i = icmp slt i64 %i.e, 0
  br i1 %i.i, label %.noexc.i.i.i, label %bb.f

.noexc.i.i.i:                                     ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #18
          to label %.noexc13 unwind label %bb.j

.noexc13:                                         ; preds = %.noexc.i.i.i
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.j = icmp slt i64 %1, 0
  br i1 %i.j, label %.noexc9.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !38

.noexc9.i.i.i:                                    ; preds = %bb.f
  invoke void @_ZSt17__throw_bad_allocv() #18
          to label %.noexc14 unwind label %bb.j

.noexc14:                                         ; preds = %.noexc9.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.f
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %1) #19
          to label %.noexc15 unwind label %bb.j   ; 2 uses

.noexc15:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.k, ptr %5, align 8, !tbaa !39
  store i64 %i.e, ptr %i.g, align 8, !tbaa !33
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc15, %bb.d
  %i.l = phi ptr [ %i.k, %.noexc15 ], [ %i.g, %bb.d ] ; 3 uses
  switch i64 %i.e, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !33
  store i8 %i.m, ptr %i.l, align 1, !tbaa !33
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %i.f, i64 %i.e, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.e, ptr %i.n, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.e
  store i8 0, ptr %i.o, align 1, !tbaa !33
  switch i64 %1, label %_ZN5arrow8internal6detailL9ParseHHMMINSt6chrono8durationIlSt5ratioILl60ELl1EEEEEEbPKcPT_.exit.thread [
    i64 6, label %bb.k
    i64 5, label %._ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl60ELl1EEEEEEbPKcPT_.exit.thread_crit_edge
  ]

._ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl60ELl1EEEEEEbPKcPT_.exit.thread_crit_edge: ; preds = %bb.i
  %.pre = load ptr, ptr %5, align 8, !tbaa !39
  br label %_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl60ELl1EEEEEEbPKcPT_.exit.thread

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %.noexc9.i.i.i, %.noexc.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.k:                                             ; preds = %bb.i
  %i.q = load ptr, ptr %5, align 8, !tbaa !39     ; 12 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !33
  %.not.i = icmp eq i8 %i.s, 58
  br i1 %.not.i, label %bb.l, label %_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl60ELl1EEEEEEbPKcPT_.exit.thread, !prof !42

bb.l:                                             ; preds = %bb.k
  %i.t = load i8, ptr %i.q, align 1, !tbaa !33
  %i.u = add i8 %i.t, -48                         ; 2 uses
  %i.v = icmp ult i8 %i.u, 10
  br i1 %i.v, label %bb.m, label %_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl60ELl1EEEEEEbPKcPT_.exit.thread, !prof !43

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !33
  %i.y = add i8 %i.x, -48                         ; 2 uses
  %narrow.i.i = mul nuw nsw i8 %i.u, 10
  %i.z = icmp ult i8 %i.y, 10
  %i.aa = add nuw nsw i8 %i.y, %narrow.i.i        ; 2 uses
  br i1 %i.z, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i, label %_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl60ELl1EEEEEEbPKcPT_.exit.thread, !prof !43

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i:  ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !33
  %i.ad = add i8 %i.ac, -48                       ; 2 uses
  %i.ae = icmp ult i8 %i.ad, 10
  br i1 %i.ae, label %bb.n, label %_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl60ELl1EEEEEEbPKcPT_.exit.thread

bb.n:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !33
  %i.ah = add i8 %i.ag, -48                       ; 2 uses
  %i.ai = icmp ult i8 %i.ah, 10
  br i1 %i.ai, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i, label %_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl60ELl1EEEEEEbPKcPT_.exit.thread

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i: ; preds = %bb.n
  %narrow.i10.i = mul nuw nsw i8 %i.ad, 10
  %i.aj = add nuw nsw i8 %i.ah, %narrow.i10.i     ; 2 uses
  %i.ak = icmp ugt i8 %i.aa, 23
  %i.al = icmp ugt i8 %i.aj, 59
  %or.cond8.i = select i1 %i.ak, i1 true, i1 %i.al, !prof !44
  br i1 %or.cond8.i, label %_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl60ELl1EEEEEEbPKcPT_.exit.thread, label %_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl60ELl1EEEEEEbPKcPT_.exit, !prof !45

_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl60ELl1EEEEEEbPKcPT_.exit.thread: ; preds = %._ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl60ELl1EEEEEEbPKcPT_.exit.thread_crit_edge, %bb.n, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i, %bb.l, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i, %bb.m, %bb.k
  %i.am = phi ptr [ %.pre, %._ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl60ELl1EEEEEEbPKcPT_.exit.thread_crit_edge ], [ %i.q, %bb.n ], [ %i.q, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i ], [ %i.q, %bb.l ], [ %i.q, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i ], [ %i.q, %bb.m ], [ %i.q, %bb.k ] ; 5 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !33
  %i.ao = add i8 %i.an, -48                       ; 2 uses
  %i.ap = icmp ult i8 %i.ao, 10
  br i1 %i.ap, label %bb.o, label %_ZN5arrow8internal6detailL9ParseHHMMINSt6chrono8durationIlSt5ratioILl60ELl1EEEEEEbPKcPT_.exit.thread, !prof !43

bb.o:                                             ; preds = %_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl60ELl1EEEEEEbPKcPT_.exit.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !33
  %i.as = add i8 %i.ar, -48                       ; 2 uses
  %narrow.i.i17 = mul nuw nsw i8 %i.ao, 10
  %i.at = icmp ult i8 %i.as, 10
  %i.au = add nuw nsw i8 %i.as, %narrow.i.i17     ; 2 uses
  br i1 %i.at, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i18, label %_ZN5arrow8internal6detailL9ParseHHMMINSt6chrono8durationIlSt5ratioILl60ELl1EEEEEEbPKcPT_.exit.thread, !prof !43

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i18: ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !33
  %i.ax = add i8 %i.aw, -48                       ; 2 uses
  %i.ay = icmp ult i8 %i.ax, 10
  br i1 %i.ay, label %bb.p, label %_ZN5arrow8internal6detailL9ParseHHMMINSt6chrono8durationIlSt5ratioILl60ELl1EEEEEEbPKcPT_.exit.thread

bb.p:                                             ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i18
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 3
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !33
  %i.bb = add i8 %i.ba, -48                       ; 2 uses
  %i.bc = icmp ult i8 %i.bb, 10
  br i1 %i.bc, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i, label %_ZN5arrow8internal6detailL9ParseHHMMINSt6chrono8durationIlSt5ratioILl60ELl1EEEEEEbPKcPT_.exit.thread

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i: ; preds = %bb.p
  %narrow.i8.i = mul nuw nsw i8 %i.ax, 10
  %i.bd = add nuw nsw i8 %i.bb, %narrow.i8.i      ; 2 uses
  %i.be = icmp ugt i8 %i.au, 23
  %i.bf = icmp ugt i8 %i.bd, 59
  %or.cond6.i = select i1 %i.be, i1 true, i1 %i.bf, !prof !44
  br i1 %or.cond6.i, label %_ZN5arrow8internal6detailL9ParseHHMMINSt6chrono8durationIlSt5ratioILl60ELl1EEEEEEbPKcPT_.exit.thread, label %_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl60ELl1EEEEEEbPKcPT_.exit, !prof !45

_ZN5arrow8internal6detailL9ParseHHMMINSt6chrono8durationIlSt5ratioILl60ELl1EEEEEEbPKcPT_.exit.thread: ; preds = %bb.p, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.i18, %_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl60ELl1EEEEEEbPKcPT_.exit.thread, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i, %bb.o, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !46
  invoke void @_ZN5arrow8internal12JoinToStringIJRA34_KcRKSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(34) @.str, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(2) @.str.1)
          to label %.noexc19 unwind label %bb.u

.noexc19:                                         ; preds = %_ZN5arrow8internal6detailL9ParseHHMMINSt6chrono8durationIlSt5ratioILl60ELl1EEEEEEbPKcPT_.exit.thread
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %6, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %.noexc19
  %i.bg = load ptr, ptr %3, align 8, !tbaa !39, !noalias !46 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.q
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !33, !noalias !46
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.r:                                             ; preds = %.noexc19
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %3, align 8, !tbaa !39, !noalias !46 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.r
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !33, !noalias !46
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !46
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !46
  call void @_ZN5arrow6ResultISt7variantIJPKN14arrow_vendored4date9time_zoneENS_8internal10OffsetZoneEEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  %i.br = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %.not.i20 = icmp eq ptr %i.br, null
  br i1 %.not.i20, label %_ZN5arrow6StatusD2Ev.exit, label %bb.s, !prof !42

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !54, !range !63, !noundef !64
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %_ZN5arrow6StatusD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #17
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.pre34 = load ptr, ptr %5, align 8, !tbaa !39
  br label %bb.v

bb.u:                                             ; preds = %_ZN5arrow8internal6detailL9ParseHHMMINSt6chrono8durationIlSt5ratioILl60ELl1EEEEEEbPKcPT_.exit.thread
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, %bb.u
  %eh.lpad-body = phi { ptr, i32 } [ %i.bv, %bb.u ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.bw = load ptr, ptr %5, align 8, !tbaa !39    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.g
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl60ELl1EEEEEEbPKcPT_.exit: ; preds = %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i
  %.sink55 = phi i8 [ %i.aa, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i ], [ %i.au, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i ]
  %.sink = phi i8 [ %i.aj, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i ], [ %i.bd, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i ]
  %i.by = phi ptr [ %i.q, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit11.i ], [ %i.am, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit9.i ]
  %i.bz = zext nneg i8 %.sink55 to i64
  %i.ca = zext nneg i8 %.sink to i64
  %i.cb = mul nuw nsw i64 %i.bz, 60
  %i.cc = add nuw nsw i64 %i.cb, %i.ca            ; 2 uses
  %i.cd = icmp eq i8 %i.c, 45
  %i.ce = sub nsw i64 0, %i.cc
  %spec.select = select i1 %i.cd, i64 %i.ce, i64 %i.cc
  store ptr null, ptr %0, align 8, !tbaa !51
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select, ptr %i.cf, align 8, !tbaa !65
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.cg, align 8, !tbaa !66
  br label %bb.v

bb.v:                                             ; preds = %_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl60ELl1EEEEEEbPKcPT_.exit, %_ZN5arrow6StatusD2Ev.exit
  %i.ch = phi ptr [ %i.by, %_ZN5arrow8internal6detailL10ParseHH_MMINSt6chrono8durationIlSt5ratioILl60ELl1EEEEEEbPKcPT_.exit ], [ %.pre34, %_ZN5arrow6StatusD2Ev.exit ] ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.g
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.v
  %i.cj = load i64, ptr %i.g, align 8, !tbaa !33
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.ae

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %.body
  %i.cl = load i64, ptr %i.g, align 8, !tbaa !33
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.cm) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.p, %bb.j ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.af

bb.w:                                             ; preds = %bb.a
  %i.cn = invoke noundef ptr @_ZN14arrow_vendored4date11locate_zoneESt17basic_string_viewIcSt11char_traitsIcEE(i64 %1, ptr nonnull %2)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  store ptr null, ptr %0, align 8, !tbaa !51
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !68
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.cp, align 8, !tbaa !66
  br label %bb.ae

bb.y:                                             ; preds = %bb.w
  %i.cq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt13runtime_error        ; 3 uses
  %i.cr = extractvalue { ptr, i32 } %i.cq, 1
  %i.cs = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt13runtime_error) #17
  %i.ct = icmp eq i32 %i.cr, %i.cs
  br i1 %i.ct, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.cu = extractvalue { ptr, i32 } %i.cq, 0
  %i.cv = tail call ptr @__cxa_begin_catch(ptr %i.cu) #17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !71
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = tail call noundef ptr %i.cy(ptr noundef nonnull align 8 dereferenceable(16) %i.cv) #17
  store ptr %i.cz, ptr %i.a, align 8, !tbaa !73
  invoke void @_ZN5arrow6Status7InvalidIJRA34_KcRKSt17basic_string_viewIcSt11char_traitsIcEERA4_S2_PS2_EEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 1 dereferenceable(34) @.str, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(4) @.str.2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %bb.z
  call void @_ZN5arrow6ResultISt7variantIJPKN14arrow_vendored4date9time_zoneENS_8internal10OffsetZoneEEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  %i.da = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %.not.i24 = icmp eq ptr %i.da, null
  br i1 %.not.i24, label %_ZN5arrow6StatusD2Ev.exit25, label %bb.ab, !prof !42

bb.ab:                                            ; preds = %bb.aa
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !54, !range !63, !noundef !64
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %_ZN5arrow6StatusD2Ev.exit25, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  br label %_ZN5arrow6StatusD2Ev.exit25

_ZN5arrow6StatusD2Ev.exit25:                      ; preds = %bb.aa, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @__cxa_end_catch()
  br label %bb.ae

bb.ad:                                            ; preds = %bb.z
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  invoke void @__cxa_end_catch()
          to label %bb.af unwind label %bb.ag

bb.ae:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit25, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.af:                                            ; preds = %bb.ad, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %.merged = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ %i.cq, %bb.y ], [ %i.de, %bb.ad ]
  resume { ptr, i32 } %.merged

bb.ag:                                            ; preds = %bb.ad
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #21
  unreachable
end_hunk_0
