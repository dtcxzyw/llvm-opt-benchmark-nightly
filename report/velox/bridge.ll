inline.NumInlined: 6305
inline.NumDeleted: 2387
begin_hunk_0_@_ZN5arrow6ResultIaEC2ERKNS_6StatusE:bb.a

bb.n:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr %2, align 8, !tbaa !87    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !14
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.an = load ptr, ptr %5, align 8, !tbaa !87    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !14
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.as = load ptr, ptr %3, align 8, !tbaa !87    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.av = load i64, ptr %i.at, align 8, !tbaa !14
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %bb.i
  ret void

bb.p:                                             ; preds = %bb.b, %bb.m, %bb.l, %bb.k, %bb.j
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.h, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.ax, %bb.p ], [ %i.ae, %bb.h ]
  %i.ay = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.ay) #38
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN5arrow11IntegerTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow8internal31StringToSignedIntConverterMixinINS_8Int8TypeEE7ConvertERKS2_PKcmPa(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, label %bb.b, !prof !169

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %3, 2
  %i.c = load i8, ptr %2, align 1, !tbaa !14      ; 2 uses
  %i.d = icmp eq i8 %i.c, 48
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !14
  switch i8 %i.f, label %.thread [
    i8 120, label %bb.d
    i8 88, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.h = add i64 %3, -3                           ; 2 uses
  %i.i = icmp ult i64 %i.h, 2
  br i1 %i.i, label %.lr.ph.i, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, !prof !86

.lr.ph.i:                                         ; preds = %bb.d
  %i.j = load i8, ptr %i.g, align 1, !tbaa !14    ; 5 uses
  %i.k = add i8 %i.j, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.k, 10
  br i1 %or.cond.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.l = add i8 %i.j, -65
  %or.cond39.i = icmp ult i8 %i.l, 6
  br i1 %or.cond39.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = add nsw i8 %i.j, -55
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.n = add i8 %i.j, -97
  %or.cond40.i = icmp ult i8 %i.n, 6
  br i1 %or.cond40.i, label %bb.h, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, !prof !2620

bb.h:                                             ; preds = %bb.g
  %i.o = add nsw i8 %i.j, -87
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %.lr.ph.i
  %narrow.pn.i = phi i8 [ %i.o, %bb.h ], [ %i.m, %bb.f ], [ %i.k, %.lr.ph.i ] ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.h, 0
  br i1 %exitcond.not.i, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.sink.split, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.i
  %i.p = shl i8 %narrow.pn.i, 4
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.r = load i8, ptr %i.q, align 1, !tbaa !14    ; 5 uses
  %i.s = add i8 %i.r, -48                         ; 2 uses
  %or.cond.i.1 = icmp ult i8 %i.s, 10
  br i1 %or.cond.i.1, label %bb.n, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.1
  %i.t = add i8 %i.r, -65
  %or.cond39.i.1 = icmp ult i8 %i.t, 6
  br i1 %or.cond39.i.1, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = add i8 %i.r, -97
  %or.cond40.i.1 = icmp ult i8 %i.u, 6
  br i1 %or.cond40.i.1, label %bb.l, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, !prof !2620

bb.l:                                             ; preds = %bb.k
  %i.v = add nsw i8 %i.r, -87
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.w = add nsw i8 %i.r, -55
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.lr.ph.i.1
  %narrow.pn.i.1 = phi i8 [ %i.v, %bb.l ], [ %i.w, %bb.m ], [ %i.s, %.lr.ph.i.1 ]
  %.1.i.1 = or i8 %narrow.pn.i.1, %i.p
  br label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.sink.split

thread-pre-split:                                 ; preds = %bb.b
  %i.x = icmp eq i8 %i.c, 45
  br i1 %i.x, label %bb.o, label %.thread

bb.o:                                             ; preds = %thread-pre-split
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.z = add i64 %3, -1                           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, label %.thread

.thread:                                          ; preds = %bb.c, %bb.o, %thread-pre-split
  %i.ab = phi i1 [ true, %bb.o ], [ false, %thread-pre-split ], [ false, %bb.c ] ; 2 uses
  %.024 = phi ptr [ %i.y, %bb.o ], [ %2, %thread-pre-split ], [ %2, %bb.c ]
  %.023 = phi i64 [ %i.z, %bb.o ], [ %3, %thread-pre-split ], [ %3, %bb.c ]
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.q
  %.150 = phi i64 [ %.023, %.thread ], [ %i.ae, %bb.q ] ; 3 uses
  %.12549 = phi ptr [ %.024, %.thread ], [ %i.af, %bb.q ] ; 4 uses
  %i.ac = load i8, ptr %.12549, align 1, !tbaa !14 ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 48
  br i1 %i.ad, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.ae = add i64 %.150, -1                       ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.12549, i64 1
  %.not = icmp eq i64 %i.ae, 0
  br i1 %.not, label %.thread38, label %bb.p, !llvm.loop !2814

.critedge:                                        ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %.12549, i64 1
  %i.ah = add i8 %i.ac, -48                       ; 3 uses
  %i.ai = icmp ult i8 %i.ah, 10
  br i1 %i.ai, label %bb.r, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, !prof !2620

bb.r:                                             ; preds = %.critedge
  %.not43.i = icmp eq i64 %.150, 1
  br i1 %.not43.i, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = getelementptr inbounds nuw i8, ptr %.12549, i64 2
  %i.ak = load i8, ptr %i.ag, align 1, !tbaa !14
  %i.al = add i8 %i.ak, -48                       ; 2 uses
  %narrow.i = mul nuw nsw i8 %i.ah, 10
  %i.am = add i64 %.150, -2                       ; 2 uses
  %i.an = icmp ult i8 %i.al, 10
  %i.ao = add i8 %i.al, %narrow.i                 ; 3 uses
  br i1 %i.an, label %bb.t, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, !prof !2620

bb.t:                                             ; preds = %bb.s
  %.not44.i = icmp eq i64 %i.am, 0
  br i1 %.not44.i, label %bb.w, label %5

5:                                                ; preds = %bb.t
  %6 = icmp ugt i8 %i.ao, 25
  br i1 %6, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, label %bb.u, !prof !169

bb.u:                                             ; preds = %5
  %7 = load i8, ptr %i.aj, align 1, !tbaa !14
  %8 = add i8 %7, -48                             ; 2 uses
  %.not45.i = icmp ne i64 %i.am, 1
  %i.ap = icmp ugt i8 %8, 9
  %or.cond.i30 = or i1 %.not45.i, %i.ap
  br i1 %or.cond.i30, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, label %bb.v, !prof !2622

bb.v:                                             ; preds = %bb.u
  %i.aq = mul nuw i8 %i.ao, 10                    ; 3 uses
  %i.ar = add i8 %8, %i.aq                        ; 2 uses
  %i.as = icmp ult i8 %i.ar, %i.aq
  %.46.i = tail call i8 @llvm.umax.i8(i8 %i.ar, i8 %i.aq)
  br i1 %i.as, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, label %bb.w, !prof !2815

bb.w:                                             ; preds = %bb.v, %bb.t, %bb.r
  %.132.ph = phi i8 [ %i.ah, %bb.r ], [ %i.ao, %bb.t ], [ %.46.i, %bb.v ] ; 4 uses
  br i1 %i.ab, label %bb.x, label %bb.y

.thread38:                                        ; preds = %bb.q
  br i1 %i.ab, label %.thread42, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.sink.split

bb.x:                                             ; preds = %bb.w
  %i.at = icmp ugt i8 %.132.ph, -128
  br i1 %i.at, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, label %.thread42, !prof !2816

.thread42:                                        ; preds = %.thread38, %bb.x
  %.132.ph4144 = phi i8 [ %.132.ph, %bb.x ], [ 0, %.thread38 ]
  %i.au = sub i8 0, %.132.ph4144
  br label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.sink.split

bb.y:                                             ; preds = %bb.w
  %i.av = icmp slt i8 %.132.ph, 0
  br i1 %i.av, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit, label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.sink.split, !prof !2816

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.sink.split: ; preds = %bb.i, %bb.n, %.thread42, %bb.y, %.thread38
  %storemerge.sink = phi i8 [ 0, %.thread38 ], [ %i.au, %.thread42 ], [ %.132.ph, %bb.y ], [ %narrow.pn.i, %bb.i ], [ %.1.i.1, %bb.n ]
  store i8 %storemerge.sink, ptr %4, align 1, !tbaa !14
  br label %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit

_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit:    ; preds = %bb.g, %bb.k, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.sink.split, %5, %bb.s, %bb.v, %bb.u, %.critedge, %bb.d, %bb.y, %bb.x, %bb.o, %bb.a
  %.022 = phi i1 [ false, %bb.o ], [ false, %bb.s ], [ false, %bb.a ], [ false, %bb.y ], [ false, %5 ], [ true, %_ZN5arrow8internal13ParseUnsignedEPKcmPh.exit.sink.split ], [ false, %bb.x ], [ false, %bb.d ], [ false, %.critedge ], [ false, %bb.u ], [ false, %bb.v ], [ false, %bb.k ], [ false, %bb.g ]
  ret i1 %.022
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA111_KcRA2_S2_RPS2_S6_EEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(111) %2, ptr noundef nonnull align 1 dereferenceable(2) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(2) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !2817
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6), !noalias !2817
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !597, !noalias !2817, !nonnull !149, !align !607 ; 2 uses
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(111) %2) #31, !noalias !2817
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(111) %2, i64 noundef %i.c)
          to label %.noexc.i unwind label %bb.b, !noalias !2817 ; 0 uses

.noexc.i:                                         ; preds = %bb.a
  invoke void @_ZN5arrow4util22StringBuilderRecursiveIRA2_KcJRPS2_S4_EEEvRSoOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(2) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(2) %5)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA111_KcJRA2_S2_RPS2_S6_EEEvRSoOT_DpOT0_.exit.i unwind label %bb.b, !noalias !2817

_ZN5arrow4util22StringBuilderRecursiveIRA111_KcJRA2_S2_RPS2_S6_EEEvRSoOT_DpOT0_.exit.i: ; preds = %.noexc.i
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZN5arrow4util13StringBuilderIJRA111_KcRA2_S2_RPS2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.b

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA111_KcJRA2_S2_RPS2_S6_EEEvRSoOT_DpOT0_.exit.i, %.noexc.i, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !2817
  br label %common.resume

_ZN5arrow4util13StringBuilderIJRA111_KcRA2_S2_RPS2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA111_KcJRA2_S2_RPS2_S6_EEEvRSoOT_DpOT0_.exit.i
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !2817
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA111_KcRA2_S2_RPS2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.f = load ptr, ptr %7, align 8, !tbaa !87     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !tbaa !14
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  ret void

bb.d:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA111_KcRA2_S2_RPS2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %7, align 8, !tbaa !87     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !14
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util22StringBuilderRecursiveIRA2_KcJRPS2_S4_EEEvRSoOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %1) #31
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(2) %1, i64 noundef %i.a) ; 0 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !89     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !80
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !2771
  %i.j = or i32 %i.i, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
  br label %_ZN5arrow4util22StringBuilderRecursiveIRPKcJRA2_S2_EEEvRSoOT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #31
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef %i.k) ; 0 uses
  br label %_ZN5arrow4util22StringBuilderRecursiveIRPKcJRA2_S2_EEEvRSoOT_DpOT0_.exit

_ZN5arrow4util22StringBuilderRecursiveIRPKcJRA2_S2_EEEvRSoOT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %i.m = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(2) %3) #31
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(2) %3, i64 noundef %i.m) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA45_KcRPS2_RA2_S2_EEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(45) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(2) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31, !noalias !2820
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5), !noalias !2820
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !597, !noalias !2820, !nonnull !149, !align !607
  invoke void @_ZN5arrow4util22StringBuilderRecursiveIRA45_KcJRPS2_RA2_S2_EEEvRSoOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(45) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(2) %4)
          to label %bb.b unwind label %bb.c, !noalias !2820

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN5arrow4util13StringBuilderIJRA45_KcRPS2_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7 ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !2820
  br label %common.resume

_ZN5arrow4util13StringBuilderIJRA45_KcRPS2_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %bb.b
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !2820
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA45_KcRPS2_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.d = load ptr, ptr %6, align 8, !tbaa !87     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !14
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  ret void

bb.e:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA45_KcRPS2_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %6, align 8, !tbaa !87     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.e
  %i.m = load i64, ptr %i.k, align 8, !tbaa !14
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util22StringBuilderRecursiveIRA45_KcJRPS2_RA2_S2_EEEvRSoOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(45) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(2) %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(45) %1) #31
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(45) %1, i64 noundef %i.a) ; 0 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !89     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !80
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !2771
  %i.j = or i32 %i.i, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
  br label %_ZN5arrow4util22StringBuilderRecursiveIRPKcJRA2_S2_EEEvRSoOT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #31
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef %i.k) ; 0 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow12_GLOBAL__N_114ImportedBufferD2Ev:bb.a
  br label %_ZNSt12__shared_ptrIN5arrow12_GLOBAL__N_117ImportedArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, -1
  store i32 %i.n, ptr %i.b, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.p, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow12_GLOBAL__N_117ImportedArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !169

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val) #31
  br label %_ZNSt12__shared_ptrIN5arrow12_GLOBAL__N_117ImportedArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12_GLOBAL__N_117ImportedArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  tail call void @_ZN5arrow6BufferD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5arrow12_GLOBAL__N_114ImportedBufferD0Ev(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5arrow12_GLOBAL__N_114ImportedBufferE, i64 16), ptr %0, align 8, !tbaa !80
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !161 ; 8 uses
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %_ZN5arrow12_GLOBAL__N_114ImportedBufferD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 4 uses
  %i.c = load atomic i64, ptr %i.b acquire, align 8 ; 2 uses
  %i.d = icmp eq i64 %i.c, 4294967297
  %i.e = trunc i64 %i.c to i32                    ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !165
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 12
  store i32 0, ptr %i.f, align 4, !tbaa !167
  %i.g = load ptr, ptr %.val.i, align 8, !tbaa !80
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #31, !inline_history !3590
  %i.j = load ptr, ptr %.val.i, align 8, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #31, !inline_history !3590
  br label %_ZN5arrow12_GLOBAL__N_114ImportedBufferD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add nsw i32 %i.e, -1
  store i32 %i.n, ptr %i.b, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.o = atomicrmw volatile add ptr %i.b, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.e, %bb.e ], [ %i.o, %bb.f ]
  %i.p = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.p, label %bb.g, label %_ZN5arrow12_GLOBAL__N_114ImportedBufferD2Ev.exit, !prof !169

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #31, !inline_history !3591
  br label %_ZN5arrow12_GLOBAL__N_114ImportedBufferD2Ev.exit

_ZN5arrow12_GLOBAL__N_114ImportedBufferD2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN5arrow6BufferD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(96) %0) #31, !inline_history !3591
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal void @_ZNK5arrow12_GLOBAL__N_114ImportedBuffer17device_sync_eventEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::shared_ptr.52") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) unnamed_addr #22 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val = load ptr, ptr %i.a, align 8, !tbaa !643 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !161  ; 2 uses
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !tbaa !263
  store <2 x ptr> %i.e, ptr %0, align 8, !tbaa !263
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.f, align 4, !tbaa !3
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = atomicrmw volatile add ptr %i.f, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit

_ZNSt10shared_ptrIN5arrow6Device9SyncEventEEC2ERKS3_.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA85_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(85) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !3592
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !3592
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !597, !noalias !3592, !nonnull !149, !align !607
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(85) %2) #31, !noalias !3592
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(85) %2, i64 noundef %i.c)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA85_KcEEvRSoOT_.exit.i unwind label %bb.b, !noalias !3592 ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA85_KcEEvRSoOT_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow4util13StringBuilderIJRA85_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.b

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA85_KcEEvRSoOT_.exit.i, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !3592
  br label %common.resume

_ZN5arrow4util13StringBuilderIJRA85_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA85_KcEEvRSoOT_.exit.i
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !3592
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA85_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.f = load ptr, ptr %4, align 8, !tbaa !87     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !tbaa !14
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

bb.d:                                             ; preds = %_ZN5arrow4util13StringBuilderIJRA85_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !87     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !14
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter24ImportStringValuesBufferIiEENS_6StatusEiil(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(113) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !644    ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !432  ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !435
  %i.g = add nsw i64 %i.f, %i.c
  %i.h = shl i64 %i.g, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !191
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !233
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 noundef %i.h, i64 noundef 4, ptr noundef nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !3595)
  %i.n = load ptr, ptr %2, align 8, !tbaa !53, !noalias !3595 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !53, !alias.scope !3595
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.critedge.thread, label %bb.b

.critedge.thread:                                 ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.p = load i32, ptr %i.a, align 4, !tbaa !3
  %i.q = sext i32 %i.p to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %.critedge

.critedge:                                        ; preds = %.critedge.thread, %bb.a
  %.111 = phi i64 [ %i.q, %.critedge.thread ], [ 0, %bb.a ]
  call fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter12ImportBufferEilb(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(113) %1, i32 noundef 2, i64 noundef %.111, i1 noundef zeroext false)
  br label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.critedge
  ret void
}

declare void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter16ImportBinaryViewERKNS_14BinaryViewTypeE(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(113) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %2 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 7 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter16CheckNumChildrenEl(ptr dead_on_unwind noalias nonnull writable align 8 %4, ptr noundef nonnull readonly align 8 dereferenceable(113) %1, i64 noundef 0)
  call void @llvm.experimental.noalias.scope.decl(metadata !3598)
  %i.a = load ptr, ptr %4, align 8, !tbaa !53, !noalias !3598 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !53, !alias.scope !3598
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.a, label %.critedge

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.c = load ptr, ptr %1, align 8, !tbaa !644
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !436
  %i.f = icmp slt i64 %i.e, 3
  br i1 %i.f, label %bb.b, label %_ZN5arrow6StatusD2Ev.exit35

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2840, !nonnull !149, !align !607
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !150  ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i1 noundef zeroext false)
  %i.m = load ptr, ptr %1, align 8, !tbaa !644
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !3601
  invoke void @_ZN5arrow4util13StringBuilderIJRA47_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA25_S2_RlEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(47) @.str.115, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(25) @.str.84, ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.o = load ptr, ptr %3, align 8, !tbaa !87, !noalias !3601 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.p, align 8, !tbaa !14, !noalias !3601
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.d:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %3, align 8, !tbaa !87, !noalias !3601 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.d
  %i.x = load i64, ptr %i.v, align 8, !tbaa !14, !noalias !3601
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !3601
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !3601
  %i.z = load ptr, ptr %5, align 8, !tbaa !87     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !14
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %.critedge

bb.e:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i ]
  %i.af = load ptr, ptr %5, align 8, !tbaa !87    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %.body
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !14
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  resume { ptr, i32 } %eh.lpad-body

_ZN5arrow6StatusD2Ev.exit35:                      ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter17AllocateArrayDataEv(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(113) %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !3606)
  %i.ak = load ptr, ptr %6, align 8, !tbaa !53, !noalias !3606 ; 2 uses
  store ptr %i.ak, ptr %0, align 8, !tbaa !53, !alias.scope !3606
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !3609)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31, !noalias !3609
  %i.am = load ptr, ptr %1, align 8, !tbaa !644, !noalias !3612 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !432, !noalias !3612 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %bb.g, label %_ZN5arrow6StatusD2Ev.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !435, !noalias !3612
  %i.ar = add nsw i64 %i.aq, %i.an                ; 2 uses
  %i.as = ashr i64 %i.ar, 3
  %i.at = and i64 %i.ar, 7
  %i.au = icmp ne i64 %i.at, 0
  %i.av = zext i1 %i.au to i64
  %i.aw = add nsw i64 %i.as, %i.av
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.g, %bb.f
  %i.ax = phi i64 [ %i.aw, %bb.g ], [ 0, %bb.f ]
  call fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter12ImportBufferEilb(ptr dead_on_unwind noalias nonnull writable align 8 %2, ptr noundef nonnull readonly align 8 dereferenceable(113) %1, i32 noundef 0, i64 noundef %i.ax, i1 noundef zeroext true), !noalias !3609
  call void @llvm.experimental.noalias.scope.decl(metadata !3615)
  %i.ay = load ptr, ptr %2, align 8, !tbaa !53, !noalias !3618 ; 3 uses
  store ptr %i.ay, ptr %7, align 8, !tbaa !53, !alias.scope !3618
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !3609
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.h, label %_ZN5arrow6StatusD2Ev.exit41.thread4

_ZN5arrow6StatusD2Ev.exit41.thread4:              ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  store ptr %i.ay, ptr %0, align 8, !tbaa !53, !alias.scope !3619
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %.critedge

bb.h:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !191, !noalias !3609
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load atomic i64, ptr %i.bc seq_cst, align 8, !noalias !3609
  %i.be = icmp sgt i64 %i.bd, 0
  br i1 %i.be, label %bb.i, label %_ZN5arrow6StatusD2Ev.exit41.thread

bb.i:                                             ; preds = %bb.h
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !191, !noalias !3609 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !233, !noalias !3609
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !265, !noalias !3609
  %.not.i7.i = icmp eq ptr %i.bi, null
  br i1 %.not.i7.i, label %_ZN5arrow6StatusD2Ev.exit39, label %_ZN5arrow6StatusD2Ev.exit41.thread

_ZN5arrow6StatusD2Ev.exit41.thread:               ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.j

_ZN5arrow6StatusD2Ev.exit39:                      ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  call void @_ZN5arrow6Status8FromArgsIJRA66_KcRSt6atomicIlEEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(66) @.str.113, ptr noundef nonnull align 8 dereferenceable(8) %i.bj)
  %.pr = load ptr, ptr %7, align 8, !tbaa !53, !noalias !3622 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3622)
  store ptr %.pr, ptr %0, align 8, !tbaa !53, !alias.scope !3622
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.bk = icmp eq ptr %.pr, null
  br i1 %i.bk, label %bb.j, label %.critedge

bb.j:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit41.thread, %_ZN5arrow6StatusD2Ev.exit39
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.bl = load ptr, ptr %1, align 8, !tbaa !644, !noalias !3624 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !432, !noalias !3624 ; 2 uses
  %i.bn = icmp sgt i64 %i.bm, 0
  br i1 %i.bn, label %bb.k, label %_ZN5arrow6StatusD2Ev.exit43

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !435, !noalias !3624
  %i.bq = add nsw i64 %i.bp, %i.bm
  %i.br = shl nsw i64 %i.bq, 4
  br label %_ZN5arrow6StatusD2Ev.exit43

_ZN5arrow6StatusD2Ev.exit43:                      ; preds = %bb.k, %bb.j
  %i.bs = phi i64 [ %i.br, %bb.k ], [ 0, %bb.j ]
  call fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter12ImportBufferEilb(ptr dead_on_unwind noalias nonnull writable align 8 %8, ptr noundef nonnull readonly align 8 dereferenceable(113) %1, i32 noundef 1, i64 noundef %i.bs, i1 noundef zeroext false)
  call void @llvm.experimental.noalias.scope.decl(metadata !3627)
  %i.bt = load ptr, ptr %8, align 8, !tbaa !53, !noalias !3627 ; 2 uses
  store ptr %i.bt, ptr %0, align 8, !tbaa !53, !alias.scope !3627
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.l, label %.critedge

bb.l:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit43
  %i.bv = load ptr, ptr %1, align 8, !tbaa !644   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !438
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !436 ; 2 uses
  %i.ca = getelementptr [8 x i8], ptr %i.bx, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 -8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !263
  %.not5 = icmp sgt i64 %i.bz, 3
  br i1 %.not5, label %_ZN5arrow6StatusD2Ev.exit47, label %.critedge28

bb.m:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cd = load ptr, ptr %1, align 8, !tbaa !644
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !436
  %i.cg = add nsw i64 %i.cf, -1
  %.not = icmp sgt i64 %i.cg, %indvars.iv.next
  br i1 %.not, label %_ZN5arrow6StatusD2Ev.exit47, label %.critedge28, !llvm.loop !3630

_ZN5arrow6StatusD2Ev.exit47:                      ; preds = %bb.l, %bb.m
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ 2, %bb.l ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  %i.ch = getelementptr [8 x i8], ptr %i.cc, i64 %indvars.iv
  %i.ci = getelementptr i8, ptr %i.ch, i64 -16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !296
  %i.ck = trunc nuw nsw i64 %indvars.iv to i32
  call fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter12ImportBufferEilb(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(113) %1, i32 noundef %i.ck, i64 noundef %i.cj, i1 noundef zeroext false)
  call void @llvm.experimental.noalias.scope.decl(metadata !3631)
  %i.cl = load ptr, ptr %9, align 8, !tbaa !53, !noalias !3631 ; 2 uses
  store ptr %i.cl, ptr %0, align 8, !tbaa !53, !alias.scope !3631
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.m, label %.critedge

.critedge28:                                      ; preds = %bb.m, %bb.l
  %i.cn = load ptr, ptr %i.ba, align 8, !tbaa !191
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(24) %i.co) #31
  store ptr null, ptr %0, align 8, !tbaa !53, !alias.scope !3634
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit47, %_ZN5arrow6StatusD2Ev.exit41.thread4, %.critedge28, %_ZN5arrow6StatusD2Ev.exit43, %_ZN5arrow6StatusD2Ev.exit39, %_ZN5arrow6StatusD2Ev.exit35, %_ZN5arrow6StatusD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !230  ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16
  store ptr %i.c, ptr %i.a, align 8, !tbaa !230
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !161  ; 8 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !165
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !167
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !80
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #31, !inline_history !648
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !80
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #31, !inline_history !648
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !169

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #31
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util13StringBuilderIJRA47_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA25_S2_RlEEESA_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(47) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(25) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !597, !nonnull !149, !align !607 ; 4 uses
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(47) %1) #31
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(47) %1, i64 noundef %i.c)
          to label %.noexc unwind label %bb.c     ; 0 uses

.noexc:                                           ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !87
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.e, i64 noundef %i.g)
          to label %.noexc5 unwind label %bb.c    ; 0 uses

.noexc5:                                          ; preds = %.noexc
  %i.i = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(25) %3) #31
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(25) %3, i64 noundef %i.i)
          to label %.noexc6 unwind label %bb.c    ; 0 uses

.noexc6:                                          ; preds = %.noexc5
  %i.k = load i64, ptr %4, align 8, !tbaa !296
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.k)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA47_KcJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA25_S2_RlEEEvRSoOT_DpOT0_.exit unwind label %bb.c ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA47_KcJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA25_S2_RlEEEvRSoOT_DpOT0_.exit: ; preds = %.noexc6
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA47_KcJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA25_S2_RlEEEvRSoOT_DpOT0_.exit
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  ret void

bb.c:                                             ; preds = %.noexc6, %.noexc5, %.noexc, %bb.a, %_ZN5arrow4util22StringBuilderRecursiveIRA47_KcJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA25_S2_RlEEEvRSoOT_DpOT0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter24ImportStringValuesBufferIlEENS_6StatusEiil(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(113) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !644    ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !432  ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %_ZN5arrow6StatusD2Ev.exit, label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !435
  %i.g = add nsw i64 %i.f, %i.c
  %i.h = shl i64 %i.g, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !191
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !233
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @_ZN5arrow13MemoryManager20CopyBufferSliceToCPUERKSt10shared_ptrINS_6BufferEEllPh(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 noundef %i.h, i64 noundef 8, ptr noundef nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !3637)
  %i.n = load ptr, ptr %2, align 8, !tbaa !53, !noalias !3637 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !53, !alias.scope !3637
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5arrow6StatusD2Ev.exit14, label %.critedge

_ZN5arrow6StatusD2Ev.exit14:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  %3 = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.b

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit14, %bb.a
  %.111 = phi i64 [ %3, %_ZN5arrow6StatusD2Ev.exit14 ], [ 0, %bb.a ]
  call fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter12ImportBufferEilb(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(113) %1, i32 noundef 2, i64 noundef %.111, i1 noundef zeroext false)
  br label %bb.c

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_113ArrayImporter12CheckNoNullsEv(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %.0.val.8.val, ptr readonly captures(none) %.16.val) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.arrow::util::detail::StringStreamWrapper", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.not = icmp eq i64 %.0.val.8.val, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.a = load ptr, ptr %.16.val, align 8, !tbaa !150 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31, !noalias !3640
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31, !noalias !3645
  invoke void @_ZN5arrow4util6detail19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc5 unwind label %bb.f

.noexc5:                                          ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !597, !noalias !3645, !nonnull !149, !align !607 ; 2 uses
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 1 dereferenceable(50) @.str.116, i64 noundef 49)
          to label %.noexc.i unwind label %bb.c, !noalias !3645 ; 0 uses

.noexc.i:                                         ; preds = %.noexc5
  %i.h = load ptr, ptr %3, align 8, !tbaa !87, !noalias !3645
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11, !noalias !3645
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.h, i64 noundef %i.j)
          to label %_ZN5arrow4util22StringBuilderRecursiveIRA50_KcJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoOT_DpOT0_.exit.i unwind label %bb.c, !noalias !3645 ; 0 uses

_ZN5arrow4util22StringBuilderRecursiveIRA50_KcJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoOT_DpOT0_.exit.i: ; preds = %.noexc.i
  invoke void @_ZN5arrow4util6detail19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %.noexc unwind label %bb.c

bb.c:                                             ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA50_KcJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoOT_DpOT0_.exit.i, %.noexc.i, %.noexc5
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31, !noalias !3645
  br label %.body

.noexc:                                           ; preds = %_ZN5arrow4util22StringBuilderRecursiveIRA50_KcJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoOT_DpOT0_.exit.i
  call void @_ZN5arrow4util6detail19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31, !noalias !3645
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.m = load ptr, ptr %2, align 8, !tbaa !87, !noalias !3640 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !14, !noalias !3640
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.e:                                             ; preds = %.noexc
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %2, align 8, !tbaa !87, !noalias !3640 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.e
  %i.v = load i64, ptr %i.t, align 8, !tbaa !14, !noalias !3640
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !3640
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31, !noalias !3640
  %i.x = load ptr, ptr %3, align 8, !tbaa !87     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !14
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ], [ %i.ac, %bb.f ], [ %i.l, %bb.c ]
  %i.ad = load ptr, ptr %3, align 8, !tbaa !87    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %.body
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !14
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %eh.lpad-body

bb.g:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !53, !alias.scope !3648
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJDnEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !230  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !233    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #41
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #34 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3654)
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.s = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !263, !alias.scope !3654, !noalias !3651
  store ptr null, ptr %i.r, align 8, !tbaa !161, !alias.scope !3654, !noalias !3651
  store <2 x ptr> %i.s, ptr %.012.i.i.i, align 8, !tbaa !263, !alias.scope !3651, !noalias !3654
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !265, !alias.scope !3654, !noalias !3651
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !3550

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.u, %.lr.ph.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.z, %.lr.ph.i.i.i17 ], [ %i.v, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.y, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3659)
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !263, !alias.scope !3659, !noalias !3656
  store ptr null, ptr %i.w, align 8, !tbaa !161, !alias.scope !3659, !noalias !3656
  store <2 x ptr> %i.x, ptr %.012.i.i.i18, align 8, !tbaa !263, !alias.scope !3656, !noalias !3659
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !265, !alias.scope !3659, !noalias !3656
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !3550
end_hunk_1
begin_hunk_2_@bcmp
!2615 = !{!2616, !2618, !2613, !2610}
!2616 = distinct !{!2616, !2617, !"_ZN5arrow6Status8FromArgsIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!2617 = distinct !{!2617, !"_ZN5arrow6Status8FromArgsIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_NS_10StatusCodeEDpOT_"}
!2618 = distinct !{!2618, !2619, !"_ZN5arrow6Status7InvalidIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_DpOT_: argument 0"}
!2619 = distinct !{!2619, !"_ZN5arrow6Status7InvalidIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_DpOT_"}
!2620 = !{!"branch_weights", i32 2146410443, i32 1073205}
!2621 = distinct !{!2621, !113}
!2622 = !{!"branch_weights", i32 4001, i32 4000000}
!2623 = !{!1777, !13, i64 32}
!2624 = !{!2625, !2627, !2628, !2630}
!2625 = distinct !{!2625, !2626, !"_ZN5arrow8internal14AlignedStorageISt17basic_string_viewIcSt11char_traitsIcEEE41move_construct_several_and_destroy_sourceILb0EEENSt9enable_ifIXntT_EvE4typeEPS6_SB_mm: argument 0"}
!2626 = distinct !{!2626, !"_ZN5arrow8internal14AlignedStorageISt17basic_string_viewIcSt11char_traitsIcEEE41move_construct_several_and_destroy_sourceILb0EEENSt9enable_ifIXntT_EvE4typeEPS6_SB_mm"}
!2627 = distinct !{!2627, !2626, !"_ZN5arrow8internal14AlignedStorageISt17basic_string_viewIcSt11char_traitsIcEEE41move_construct_several_and_destroy_sourceILb0EEENSt9enable_ifIXntT_EvE4typeEPS6_SB_mm: argument 1"}
!2628 = distinct !{!2628, !2629, !"_ZN5arrow8internal14AlignedStorageISt17basic_string_viewIcSt11char_traitsIcEEE41move_construct_several_and_destroy_sourceEPS6_S7_m: argument 0"}
!2629 = distinct !{!2629, !"_ZN5arrow8internal14AlignedStorageISt17basic_string_viewIcSt11char_traitsIcEEE41move_construct_several_and_destroy_sourceEPS6_S7_m"}
!2630 = distinct !{!2630, !2629, !"_ZN5arrow8internal14AlignedStorageISt17basic_string_viewIcSt11char_traitsIcEEE41move_construct_several_and_destroy_sourceEPS6_S7_m: argument 1"}
!2631 = !{!2632, !2634, !2635, !2637}
!2632 = distinct !{!2632, !2633, !"_ZN5arrow8internal14AlignedStorageISt17basic_string_viewIcSt11char_traitsIcEEE41move_construct_several_and_destroy_sourceILb0EEENSt9enable_ifIXntT_EvE4typeEPS6_SB_mm: argument 0"}
!2633 = distinct !{!2633, !"_ZN5arrow8internal14AlignedStorageISt17basic_string_viewIcSt11char_traitsIcEEE41move_construct_several_and_destroy_sourceILb0EEENSt9enable_ifIXntT_EvE4typeEPS6_SB_mm"}
!2634 = distinct !{!2634, !2633, !"_ZN5arrow8internal14AlignedStorageISt17basic_string_viewIcSt11char_traitsIcEEE41move_construct_several_and_destroy_sourceILb0EEENSt9enable_ifIXntT_EvE4typeEPS6_SB_mm: argument 1"}
!2635 = distinct !{!2635, !2636, !"_ZN5arrow8internal14AlignedStorageISt17basic_string_viewIcSt11char_traitsIcEEE41move_construct_several_and_destroy_sourceEPS6_S7_m: argument 0"}
!2636 = distinct !{!2636, !"_ZN5arrow8internal14AlignedStorageISt17basic_string_viewIcSt11char_traitsIcEEE41move_construct_several_and_destroy_sourceEPS6_S7_m"}
!2637 = distinct !{!2637, !2636, !"_ZN5arrow8internal14AlignedStorageISt17basic_string_viewIcSt11char_traitsIcEEE41move_construct_several_and_destroy_sourceEPS6_S7_m: argument 1"}
!2638 = distinct !{!2638, !113}
!2639 = !{!2640}
!2640 = distinct !{!2640, !2641, !"_ZN5arrow12_GLOBAL__N_118FormatStringParser12CheckHasNextEv: argument 0"}
!2641 = distinct !{!2641, !"_ZN5arrow12_GLOBAL__N_118FormatStringParser12CheckHasNextEv"}
!2642 = !{!2643, !2640}
!2643 = distinct !{!2643, !2644, !"_ZN5arrow12_GLOBAL__N_118FormatStringParser7InvalidEv: argument 0"}
!2644 = distinct !{!2644, !"_ZN5arrow12_GLOBAL__N_118FormatStringParser7InvalidEv"}
!2645 = !{!2646, !2643, !2640}
!2646 = distinct !{!2646, !2647, !"_ZN5arrow12_GLOBAL__N_119InvalidFormatStringESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!2647 = distinct !{!2647, !"_ZN5arrow12_GLOBAL__N_119InvalidFormatStringESt17basic_string_viewIcSt11char_traitsIcEE"}
!2648 = !{!2649, !2651, !2646, !2643, !2640}
!2649 = distinct !{!2649, !2650, !"_ZN5arrow6Status8FromArgsIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!2650 = distinct !{!2650, !"_ZN5arrow6Status8FromArgsIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_NS_10StatusCodeEDpOT_"}
!2651 = distinct !{!2651, !2652, !"_ZN5arrow6Status7InvalidIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_DpOT_: argument 0"}
!2652 = distinct !{!2652, !"_ZN5arrow6Status7InvalidIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_DpOT_"}
!2653 = !{!2654}
!2654 = distinct !{!2654, !2655, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!2655 = distinct !{!2655, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!2656 = !{!"branch_weights", !"expected", i32 2145337237, i32 2146411}
!2657 = !{!2658}
!2658 = distinct !{!2658, !2659, !"_ZN5arrow12_GLOBAL__N_118FormatStringParser7InvalidEv: argument 0"}
!2659 = distinct !{!2659, !"_ZN5arrow12_GLOBAL__N_118FormatStringParser7InvalidEv"}
!2660 = !{!2661, !2658}
!2661 = distinct !{!2661, !2662, !"_ZN5arrow12_GLOBAL__N_119InvalidFormatStringESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!2662 = distinct !{!2662, !"_ZN5arrow12_GLOBAL__N_119InvalidFormatStringESt17basic_string_viewIcSt11char_traitsIcEE"}
!2663 = !{!2664, !2666, !2661, !2658}
!2664 = distinct !{!2664, !2665, !"_ZN5arrow6Status8FromArgsIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!2665 = distinct !{!2665, !"_ZN5arrow6Status8FromArgsIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_NS_10StatusCodeEDpOT_"}
!2666 = distinct !{!2666, !2667, !"_ZN5arrow6Status7InvalidIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_DpOT_: argument 0"}
!2667 = distinct !{!2667, !"_ZN5arrow6Status7InvalidIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_DpOT_"}
!2668 = !{!2669}
!2669 = distinct !{!2669, !2670, !"_ZN5arrow12_GLOBAL__N_118FormatStringParser10CheckAtEndEv: argument 0"}
!2670 = distinct !{!2670, !"_ZN5arrow12_GLOBAL__N_118FormatStringParser10CheckAtEndEv"}
!2671 = !{!2672, !2669}
!2672 = distinct !{!2672, !2673, !"_ZN5arrow12_GLOBAL__N_118FormatStringParser7InvalidEv: argument 0"}
!2673 = distinct !{!2673, !"_ZN5arrow12_GLOBAL__N_118FormatStringParser7InvalidEv"}
!2674 = !{!2675, !2672, !2669}
!2675 = distinct !{!2675, !2676, !"_ZN5arrow12_GLOBAL__N_119InvalidFormatStringESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!2676 = distinct !{!2676, !"_ZN5arrow12_GLOBAL__N_119InvalidFormatStringESt17basic_string_viewIcSt11char_traitsIcEE"}
!2677 = !{!2678, !2680, !2675, !2672, !2669}
!2678 = distinct !{!2678, !2679, !"_ZN5arrow6Status8FromArgsIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!2679 = distinct !{!2679, !"_ZN5arrow6Status8FromArgsIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_NS_10StatusCodeEDpOT_"}
!2680 = distinct !{!2680, !2681, !"_ZN5arrow6Status7InvalidIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_DpOT_: argument 0"}
!2681 = distinct !{!2681, !"_ZN5arrow6Status7InvalidIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_DpOT_"}
!2682 = !{!2683}
!2683 = distinct !{!2683, !2684, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0:thread"}
!2684 = distinct !{!2684, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!2685 = !{!2686}
!2686 = distinct !{!2686, !2684, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!2687 = !{!2688}
!2688 = distinct !{!2688, !2689, !"_ZN5arrow12_GLOBAL__N_114SchemaImporter16CheckNumChildrenEl: argument 0"}
!2689 = distinct !{!2689, !"_ZN5arrow12_GLOBAL__N_114SchemaImporter16CheckNumChildrenEl"}
!2690 = !{!2691, !2693, !2688}
!2691 = distinct !{!2691, !2692, !"_ZN5arrow6Status8FromArgsIJRA10_KcRlRA32_S2_RPS2_RA26_S2_S5_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!2692 = distinct !{!2692, !"_ZN5arrow6Status8FromArgsIJRA10_KcRlRA32_S2_RPS2_RA26_S2_S5_EEES0_NS_10StatusCodeEDpOT_"}
!2693 = distinct !{!2693, !2694, !"_ZN5arrow6Status7InvalidIJRA10_KcRlRA32_S2_RPS2_RA26_S2_S5_EEES0_DpOT_: argument 0"}
!2694 = distinct !{!2694, !"_ZN5arrow6Status7InvalidIJRA10_KcRlRA32_S2_RPS2_RA26_S2_S5_EEES0_DpOT_"}
!2695 = !{!2696}
!2696 = distinct !{!2696, !2697, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0:thread"}
!2697 = distinct !{!2697, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!2698 = !{!2699}
!2699 = distinct !{!2699, !2697, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!2700 = !{!2701}
!2701 = distinct !{!2701, !2702, !"_ZN5arrow12_GLOBAL__N_114SchemaImporter14MakeChildFieldEl: argument 0"}
!2702 = distinct !{!2702, !"_ZN5arrow12_GLOBAL__N_114SchemaImporter14MakeChildFieldEl"}
!2703 = !{!2704}
!2704 = distinct !{!2704, !2705, !"_ZNO5arrow6ResultISt10shared_ptrINS_5FieldEEE11ValueUnsafeEv: argument 0"}
!2705 = distinct !{!2705, !"_ZNO5arrow6ResultISt10shared_ptrINS_5FieldEEE11ValueUnsafeEv"}
!2706 = !{!2707}
!2707 = distinct !{!2707, !2708, !"_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE15MoveValueUnsafeEv: argument 0"}
!2708 = distinct !{!2708, !"_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE15MoveValueUnsafeEv"}
!2709 = !{!2707, !2704}
!2710 = !{!2711}
!2711 = distinct !{!2711, !2712, !"_ZSt11make_sharedIN5arrow12ListViewTypeEJSt10shared_ptrINS0_5FieldEEEES2_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_: argument 0"}
!2712 = distinct !{!2712, !"_ZSt11make_sharedIN5arrow12ListViewTypeEJSt10shared_ptrINS0_5FieldEEEES2_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_"}
!2713 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2714 = distinct !{null, null, null}
!2715 = !{!2716}
!2716 = distinct !{!2716, !2717, !"_ZN5arrow6Status2OKEv: argument 0"}
!2717 = distinct !{!2717, !"_ZN5arrow6Status2OKEv"}
!2718 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2719 = distinct !{ptr @_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEED2Ev, null, null, ptr @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2720 = !{!2721}
!2721 = distinct !{!2721, !2722, !"_ZN5arrow12_GLOBAL__N_118FormatStringParser10CheckAtEndEv: argument 0"}
!2722 = distinct !{!2722, !"_ZN5arrow12_GLOBAL__N_118FormatStringParser10CheckAtEndEv"}
!2723 = !{!2724, !2721}
!2724 = distinct !{!2724, !2725, !"_ZN5arrow12_GLOBAL__N_118FormatStringParser7InvalidEv: argument 0"}
!2725 = distinct !{!2725, !"_ZN5arrow12_GLOBAL__N_118FormatStringParser7InvalidEv"}
!2726 = !{!2727, !2724, !2721}
!2727 = distinct !{!2727, !2728, !"_ZN5arrow12_GLOBAL__N_119InvalidFormatStringESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!2728 = distinct !{!2728, !"_ZN5arrow12_GLOBAL__N_119InvalidFormatStringESt17basic_string_viewIcSt11char_traitsIcEE"}
!2729 = !{!2730, !2732, !2727, !2724, !2721}
!2730 = distinct !{!2730, !2731, !"_ZN5arrow6Status8FromArgsIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!2731 = distinct !{!2731, !"_ZN5arrow6Status8FromArgsIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_NS_10StatusCodeEDpOT_"}
!2732 = distinct !{!2732, !2733, !"_ZN5arrow6Status7InvalidIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_DpOT_: argument 0"}
!2733 = distinct !{!2733, !"_ZN5arrow6Status7InvalidIJRA40_KcRSt17basic_string_viewIcSt11char_traitsIcEERA2_S2_EEES0_DpOT_"}
!2734 = !{!2735}
!2735 = distinct !{!2735, !2736, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0:thread"}
!2736 = distinct !{!2736, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!2737 = !{!2738}
!2738 = distinct !{!2738, !2736, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!2739 = !{!2740}
!2740 = distinct !{!2740, !2741, !"_ZN5arrow12_GLOBAL__N_114SchemaImporter16CheckNumChildrenEl: argument 0"}
!2741 = distinct !{!2741, !"_ZN5arrow12_GLOBAL__N_114SchemaImporter16CheckNumChildrenEl"}
!2742 = !{!2743, !2745, !2740}
!2743 = distinct !{!2743, !2744, !"_ZN5arrow6Status8FromArgsIJRA10_KcRlRA32_S2_RPS2_RA26_S2_S5_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!2744 = distinct !{!2744, !"_ZN5arrow6Status8FromArgsIJRA10_KcRlRA32_S2_RPS2_RA26_S2_S5_EEES0_NS_10StatusCodeEDpOT_"}
!2745 = distinct !{!2745, !2746, !"_ZN5arrow6Status7InvalidIJRA10_KcRlRA32_S2_RPS2_RA26_S2_S5_EEES0_DpOT_: argument 0"}
!2746 = distinct !{!2746, !"_ZN5arrow6Status7InvalidIJRA10_KcRlRA32_S2_RPS2_RA26_S2_S5_EEES0_DpOT_"}
!2747 = !{!2748}
!2748 = distinct !{!2748, !2749, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0:thread"}
!2749 = distinct !{!2749, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!2750 = !{!2751}
!2751 = distinct !{!2751, !2749, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!2752 = !{!2753}
!2753 = distinct !{!2753, !2754, !"_ZN5arrow12_GLOBAL__N_114SchemaImporter14MakeChildFieldEl: argument 0"}
!2754 = distinct !{!2754, !"_ZN5arrow12_GLOBAL__N_114SchemaImporter14MakeChildFieldEl"}
!2755 = !{!2756}
!2756 = distinct !{!2756, !2757, !"_ZNO5arrow6ResultISt10shared_ptrINS_5FieldEEE11ValueUnsafeEv: argument 0"}
!2757 = distinct !{!2757, !"_ZNO5arrow6ResultISt10shared_ptrINS_5FieldEEE11ValueUnsafeEv"}
!2758 = !{!2759}
!2759 = distinct !{!2759, !2760, !"_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE15MoveValueUnsafeEv: argument 0"}
!2760 = distinct !{!2760, !"_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE15MoveValueUnsafeEv"}
!2761 = !{!2759, !2756}
!2762 = !{!2763}
!2763 = distinct !{!2763, !2764, !"_ZSt11make_sharedIN5arrow17LargeListViewTypeEJSt10shared_ptrINS0_5FieldEEEES2_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_: argument 0"}
!2764 = distinct !{!2764, !"_ZSt11make_sharedIN5arrow17LargeListViewTypeEJSt10shared_ptrINS0_5FieldEEEES2_INSt9enable_ifIXntsr8is_arrayIT_EE5valueES6_E4typeEEDpOT0_"}
!2765 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2766 = distinct !{null, null, null}
!2767 = !{!2768}
!2768 = distinct !{!2768, !2769, !"_ZN5arrow6Status2OKEv: argument 0"}
!2769 = distinct !{!2769, !"_ZN5arrow6Status2OKEv"}
!2770 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2771 = !{!2772, !2774, i64 32}
!2772 = !{!"_ZTSSt8ios_base", !13, i64 8, !13, i64 16, !2773, i64 24, !2774, i64 28, !2774, i64 32, !2775, i64 40, !2776, i64 48, !5, i64 64, !4, i64 192, !2777, i64 200, !2778, i64 208}
!2773 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!2774 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!2775 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !10, i64 0}
!2776 = !{!"_ZTSNSt8ios_base6_WordsE", !10, i64 0, !13, i64 8}
!2777 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !10, i64 0}
!2778 = !{!"_ZTSSt6locale", !2779, i64 0}
!2779 = !{!"p1 _ZTSNSt6locale5_ImplE", !10, i64 0}
!2780 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2781 = distinct !{null}
!2782 = !{!2783, !9, i64 8}
!2783 = !{!"_ZTSSt9type_info", !9, i64 8}
!2784 = distinct !{!2784, !113}
!2785 = distinct !{null, null, null, null, null, null, null, null, null}
!2786 = distinct !{!2786, !113}
!2787 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2788 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2789 = distinct !{null}
!2790 = !{!2791, !2792, i64 0}
!2791 = !{!"_ZTSSt12__shared_ptrIN5arrow12ListViewTypeELN9__gnu_cxx12_Lock_policyE2EE", !2792, i64 0, !142, i64 8}
!2792 = !{!"p1 _ZTSN5arrow12ListViewTypeE", !10, i64 0}
!2793 = !{!2792, !2792, i64 0}
!2794 = distinct !{null, null, null, null, null}
!2795 = distinct !{null}
!2796 = !{!2797, !2798, i64 0}
!2797 = !{!"_ZTSSt12__shared_ptrIN5arrow17LargeListViewTypeELN9__gnu_cxx12_Lock_policyE2EE", !2798, i64 0, !142, i64 8}
!2798 = !{!"p1 _ZTSN5arrow17LargeListViewTypeE", !10, i64 0}
!2799 = !{!2798, !2798, i64 0}
!2800 = distinct !{null, null, null, null, null}
!2801 = distinct !{null}
!2802 = distinct !{!2802, !113}
!2803 = !{!2804}
!2804 = distinct !{!2804, !2805, !"_ZN5arrow12_GLOBAL__N_114SchemaImporter14MakeChildFieldEl: argument 0"}
!2805 = distinct !{!2805, !"_ZN5arrow12_GLOBAL__N_114SchemaImporter14MakeChildFieldEl"}
!2806 = !{!2807, !2809}
!2807 = distinct !{!2807, !2808, !"_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE15MoveValueUnsafeEv: argument 0"}
!2808 = distinct !{!2808, !"_ZN5arrow6ResultISt10shared_ptrINS_5FieldEEE15MoveValueUnsafeEv"}
!2809 = distinct !{!2809, !2810, !"_ZNO5arrow6ResultISt10shared_ptrINS_5FieldEEE11ValueUnsafeEv: argument 0"}
!2810 = distinct !{!2810, !"_ZNO5arrow6ResultISt10shared_ptrINS_5FieldEEE11ValueUnsafeEv"}
!2811 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2812 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2813 = distinct !{null, null, ptr @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2814 = distinct !{!2814, !113}
!2815 = !{!"branch_weights", i32 1073205, i32 2146410443}
!2816 = !{!"branch_weights", !"expected", i32 2182155, i32 2145301493}
!2817 = !{!2818}
!2818 = distinct !{!2818, !2819, !"_ZN5arrow4util13StringBuilderIJRA111_KcRA2_S2_RPS2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!2819 = distinct !{!2819, !"_ZN5arrow4util13StringBuilderIJRA111_KcRA2_S2_RPS2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!2820 = !{!2821}
!2821 = distinct !{!2821, !2822, !"_ZN5arrow4util13StringBuilderIJRA45_KcRPS2_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!2822 = distinct !{!2822, !"_ZN5arrow4util13StringBuilderIJRA45_KcRPS2_RA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!2823 = !{!2824}
!2824 = distinct !{!2824, !2825, !"_ZN5arrow4util13StringBuilderIJRA58_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!2825 = distinct !{!2825, !"_ZN5arrow4util13StringBuilderIJRA58_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!2826 = !{!2827}
!2827 = distinct !{!2827, !2828, !"_ZN5arrow4util13StringBuilderIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!2828 = distinct !{!2828, !"_ZN5arrow4util13StringBuilderIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!2829 = distinct !{null, null, null}
!2830 = distinct !{null}
!2831 = !{!269, !144, i64 8}
!2832 = !{!269, !13, i64 32}
!2833 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2834 = !{!2835, !144, i64 24}
!2835 = !{!"_ZTSN5arrow6DeviceE", !2836, i64 8, !144, i64 24}
!2836 = !{!"_ZTSSt23enable_shared_from_thisIN5arrow6DeviceEE", !2837, i64 0}
!2837 = !{!"_ZTSSt8weak_ptrIN5arrow6DeviceEE", !2838, i64 0}
!2838 = !{!"_ZTSSt10__weak_ptrIN5arrow6DeviceELN9__gnu_cxx12_Lock_policyE2EE", !484, i64 0, !239, i64 8}
!2839 = distinct !{null}
!2840 = !{!628, !622, i64 16}
!2841 = !{!2842, !2844}
!2842 = distinct !{!2842, !2843, !"_ZN5arrow6Status8FromArgsIJRA23_KcRlRA21_S2_mRA11_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_NS_10StatusCodeEDpOT_: argument 0"}
!2843 = distinct !{!2843, !"_ZN5arrow6Status8FromArgsIJRA23_KcRlRA21_S2_mRA11_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_NS_10StatusCodeEDpOT_"}
!2844 = distinct !{!2844, !2845, !"_ZN5arrow6Status7InvalidIJRA23_KcRlRA21_S2_mRA11_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_: argument 0"}
!2845 = distinct !{!2845, !"_ZN5arrow6Status7InvalidIJRA23_KcRlRA21_S2_mRA11_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_"}
!2846 = !{!2847}
!2847 = distinct !{!2847, !2848, !"_ZSt19__relocate_object_aIN5arrow12_GLOBAL__N_113ArrayImporterES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!2848 = distinct !{!2848, !"_ZSt19__relocate_object_aIN5arrow12_GLOBAL__N_113ArrayImporterES2_SaIS2_EEvPT_PT0_RT1_"}
!2849 = !{!2850}
!2850 = distinct !{!2850, !2848, !"_ZSt19__relocate_object_aIN5arrow12_GLOBAL__N_113ArrayImporterES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!2851 = !{!2847, !2850}
!2852 = !{!636, !636, i64 0}
!2853 = distinct !{!2853, !113}
!2854 = distinct !{!2854, !113}
!2855 = !{!2856}
!2856 = distinct !{!2856, !2857, !"_ZSt19__relocate_object_aIN5arrow12_GLOBAL__N_113ArrayImporterES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!2857 = distinct !{!2857, !"_ZSt19__relocate_object_aIN5arrow12_GLOBAL__N_113ArrayImporterES2_SaIS2_EEvPT_PT0_RT1_"}
!2858 = !{!2859}
!2859 = distinct !{!2859, !2857, !"_ZSt19__relocate_object_aIN5arrow12_GLOBAL__N_113ArrayImporterES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!2860 = !{!2856, !2859}
!2861 = !{!2862}
!2862 = distinct !{!2862, !2863, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!2863 = distinct !{!2863, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!2864 = !{!2865}
!2865 = distinct !{!2865, !2866, !"_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_113ArrayImporterEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_: argument 0"}
!2866 = distinct !{!2866, !"_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_113ArrayImporterEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_"}
!2867 = !{!2868}
!2868 = distinct !{!2868, !2869, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_8NullTypeE: argument 0"}
!2869 = distinct !{!2869, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_8NullTypeE"}
!2870 = !{!2868, !2865}
!2871 = !{!2872, !2868, !2865}
!2872 = distinct !{!2872, !2873, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!2873 = distinct !{!2873, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!2874 = !{!2875}
!2875 = distinct !{!2875, !2876, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!2876 = distinct !{!2876, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!2877 = !{!2875, !2868, !2865}
!2878 = !{!2879, !2868, !2865}
!2879 = distinct !{!2879, !2880, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!2880 = distinct !{!2880, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!2881 = !{!2882}
!2882 = distinct !{!2882, !2883, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!2883 = distinct !{!2883, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!2884 = !{!2882, !2868, !2865}
!2885 = !{!231, !232, i64 16}
!2886 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!2887 = !{!2888}
!2888 = distinct !{!2888, !2889, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_10StringTypeE: argument 0"}
!2889 = distinct !{!2889, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_10StringTypeE"}
!2890 = !{!2891}
!2891 = distinct !{!2891, !2892, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter16ImportStringLikeINS_10StringTypeEEENS_6StatusERKT_: argument 0"}
!2892 = distinct !{!2892, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter16ImportStringLikeINS_10StringTypeEEENS_6StatusERKT_"}
!2893 = !{!2891, !2888, !2865}
!2894 = !{!2891, !2888}
!2895 = !{!2896, !2891, !2888, !2865}
!2896 = distinct !{!2896, !2897, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!2897 = distinct !{!2897, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!2898 = !{!2899, !2891, !2888, !2865}
!2899 = distinct !{!2899, !2900, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!2900 = distinct !{!2900, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!2901 = !{!2902}
!2902 = distinct !{!2902, !2903, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!2903 = distinct !{!2903, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!2904 = !{!2902, !2891, !2888, !2865}
!2905 = !{!2906}
!2906 = distinct !{!2906, !2907, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter16ImportNullBitmapEi: argument 0"}
!2907 = distinct !{!2907, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter16ImportNullBitmapEi"}
!2908 = !{!2906, !2891, !2888, !2865}
!2909 = !{!2910, !2906, !2891, !2888, !2865}
!2910 = distinct !{!2910, !2911, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter16ImportBitsBufferEib: argument 0"}
!2911 = distinct !{!2911, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter16ImportBitsBufferEib"}
!2912 = !{!2910, !2906, !2891, !2888}
!2913 = !{!2906, !2891, !2888}
!2914 = !{!2915}
!2915 = distinct !{!2915, !2916, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!2916 = distinct !{!2916, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!2917 = !{!2915, !2906, !2891, !2888, !2865}
!2918 = !{!2915, !2906}
!2919 = !{!2920, !2891, !2888, !2865}
!2920 = distinct !{!2920, !2921, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!2921 = distinct !{!2921, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!2922 = !{!2923, !2891, !2888, !2865}
!2923 = distinct !{!2923, !2924, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter19ImportOffsetsBufferIiLb1EEENS_6StatusEi: argument 0"}
!2924 = distinct !{!2924, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter19ImportOffsetsBufferIiLb1EEENS_6StatusEi"}
!2925 = !{!2923, !2891, !2888}
!2926 = !{!2927, !2891, !2888, !2865}
!2927 = distinct !{!2927, !2928, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!2928 = distinct !{!2928, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!2929 = !{!2930, !2891, !2888, !2865}
!2930 = distinct !{!2930, !2931, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!2931 = distinct !{!2931, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!2932 = !{!2933}
!2933 = distinct !{!2933, !2934, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_10BinaryTypeE: argument 0"}
!2934 = distinct !{!2934, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_10BinaryTypeE"}
!2935 = !{!2936}
!2936 = distinct !{!2936, !2937, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter16ImportStringLikeINS_10BinaryTypeEEENS_6StatusERKT_: argument 0"}
!2937 = distinct !{!2937, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter16ImportStringLikeINS_10BinaryTypeEEENS_6StatusERKT_"}
!2938 = !{!2936, !2933, !2865}
!2939 = !{!2936, !2933}
!2940 = !{!2941, !2936, !2933, !2865}
!2941 = distinct !{!2941, !2942, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!2942 = distinct !{!2942, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!2943 = !{!2944, !2936, !2933, !2865}
!2944 = distinct !{!2944, !2945, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!2945 = distinct !{!2945, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!2946 = !{!2947}
!2947 = distinct !{!2947, !2948, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!2948 = distinct !{!2948, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!2949 = !{!2947, !2936, !2933, !2865}
!2950 = !{!2951}
!2951 = distinct !{!2951, !2952, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter16ImportNullBitmapEi: argument 0"}
!2952 = distinct !{!2952, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter16ImportNullBitmapEi"}
!2953 = !{!2951, !2936, !2933, !2865}
!2954 = !{!2955, !2951, !2936, !2933, !2865}
!2955 = distinct !{!2955, !2956, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter16ImportBitsBufferEib: argument 0"}
!2956 = distinct !{!2956, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter16ImportBitsBufferEib"}
!2957 = !{!2955, !2951, !2936, !2933}
!2958 = !{!2951, !2936, !2933}
!2959 = !{!2960}
!2960 = distinct !{!2960, !2961, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!2961 = distinct !{!2961, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!2962 = !{!2960, !2951, !2936, !2933, !2865}
!2963 = !{!2960, !2951}
!2964 = !{!2965, !2936, !2933, !2865}
!2965 = distinct !{!2965, !2966, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!2966 = distinct !{!2966, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!2967 = !{!2968, !2936, !2933, !2865}
!2968 = distinct !{!2968, !2969, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter19ImportOffsetsBufferIiLb1EEENS_6StatusEi: argument 0"}
!2969 = distinct !{!2969, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter19ImportOffsetsBufferIiLb1EEENS_6StatusEi"}
!2970 = !{!2968, !2936, !2933}
!2971 = !{!2972}
!2972 = distinct !{!2972, !2973, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!2973 = distinct !{!2973, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!2974 = !{!2972, !2936, !2933, !2865}
!2975 = !{!2976, !2936, !2933, !2865}
!2976 = distinct !{!2976, !2977, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!2977 = distinct !{!2977, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!2978 = !{!2979}
!2979 = distinct !{!2979, !2980, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_15LargeStringTypeE: argument 0"}
!2980 = distinct !{!2980, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter5VisitERKNS_15LargeStringTypeE"}
!2981 = !{!2982}
!2982 = distinct !{!2982, !2983, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter16ImportStringLikeINS_15LargeStringTypeEEENS_6StatusERKT_: argument 0"}
!2983 = distinct !{!2983, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter16ImportStringLikeINS_15LargeStringTypeEEENS_6StatusERKT_"}
!2984 = !{!2982, !2979, !2865}
!2985 = !{!2982, !2979}
!2986 = !{!2987, !2982, !2979, !2865}
!2987 = distinct !{!2987, !2988, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!2988 = distinct !{!2988, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!2989 = !{!2990, !2982, !2979, !2865}
!2990 = distinct !{!2990, !2991, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!2991 = distinct !{!2991, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!2992 = !{!2993}
!2993 = distinct !{!2993, !2994, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!2994 = distinct !{!2994, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!2995 = !{!2993, !2982, !2979, !2865}
!2996 = !{!2997}
!2997 = distinct !{!2997, !2998, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter16ImportNullBitmapEi: argument 0"}
!2998 = distinct !{!2998, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter16ImportNullBitmapEi"}
!2999 = !{!2997, !2982, !2979, !2865}
!3000 = !{!3001, !2997, !2982, !2979, !2865}
!3001 = distinct !{!3001, !3002, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter16ImportBitsBufferEib: argument 0"}
!3002 = distinct !{!3002, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter16ImportBitsBufferEib"}
!3003 = !{!3001, !2997, !2982, !2979}
!3004 = !{!2997, !2982, !2979}
!3005 = !{!3006}
!3006 = distinct !{!3006, !3007, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!3007 = distinct !{!3007, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!3008 = !{!3006, !2997, !2982, !2979, !2865}
!3009 = !{!3006, !2997}
!3010 = !{!3011, !2982, !2979, !2865}
!3011 = distinct !{!3011, !3012, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE: argument 0"}
!3012 = distinct !{!3012, !"_ZN5arrow8internal15GenericToStatusEONS_6StatusE"}
!3013 = !{!3014, !2982, !2979, !2865}
!3014 = distinct !{!3014, !3015, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter19ImportOffsetsBufferIlLb1EEENS_6StatusEi: argument 0"}
!3015 = distinct !{!3015, !"_ZN5arrow12_GLOBAL__N_113ArrayImporter19ImportOffsetsBufferIlLb1EEENS_6StatusEi"}
end_hunk_2
