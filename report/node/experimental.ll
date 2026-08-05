inline.NumInlined: 430
inline.NumDeleted: 265
begin_hunk_0_@_ZN2v88internal18ExperimentalRegExp4ExecEPNS0_7IsolateENS0_12DirectHandleINS0_12IrRegExpDataEEENS4_INS0_6StringEEEiPij:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load i64, ptr %i.ag, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.012.2.i = phi i64 [ %i.ah, %bb.h ], [ %.sroa.012.1.i, %bb.g ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %bb.j, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !9

bb.j:                                             ; preds = %bb.i
  %i.an = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #11
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.i, %bb.j
  %.0.i = phi ptr [ %i.an, %bb.j ], [ %i.aj, %bb.i ] ; 3 uses
  %i.ao = ptrtoint ptr %.0.i to i64
  %i.ap = add i64 %i.ao, 8
  %i.aq = inttoptr i64 %i.ap to ptr
  store ptr %i.aq, ptr %i.ai, align 8
  store i64 %.sroa.012.2.i, ptr %.0.i, align 8
  br label %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit

_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit: ; preds = %bb.c, %bb.f, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %.sroa.026.1 = phi ptr [ %i.ab, %bb.f ], [ %.0.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ %2, %bb.c ]
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %_ZN2v88internal6String7FlattenIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS1_EEEEES4_IS1_EPNS0_7IsolateES6_NS0_14AllocationTypeE.exit
  %i.ar = load i64, ptr %1, align 8
  %i.as = load i64, ptr %.sroa.026.1, align 8
  %i.at = tail call noundef i32 @_ZN2v88internal18ExperimentalRegExp7ExecRawEPNS0_7IsolateENS0_6RegExp10CallOriginENS0_6TaggedINS0_12IrRegExpDataEEENS6_INS0_6StringEEEPiii(ptr noundef %0, i32 noundef 0, i64 %i.ar, i64 %i.as, ptr noundef %4, i32 noundef %5, i32 noundef %3) ; 3 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.thread45.loopexit50, label %bb.l

bb.l:                                             ; preds = %bb.k
  switch i32 %i.at, label %.thread45.loopexit50 [
    i32 0, label %.thread45
    i32 -2, label %bb.k
  ]

.thread45.loopexit50:                             ; preds = %bb.l, %bb.k
  %.sroa.3.2.ph = phi i64 [ 4294967296, %bb.k ], [ 0, %bb.l ]
  %i.av = zext i32 %i.at to i64
  %i.aw = or disjoint i64 %.sroa.3.2.ph, %i.av
  br label %.thread45

.thread45:                                        ; preds = %bb.l, %.thread45.loopexit50, %bb.b
  %.sroa.3.2 = phi i64 [ 0, %bb.b ], [ %i.aw, %.thread45.loopexit50 ], [ 4294967296, %bb.l ]
  ret i64 %.sroa.3.2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal18ExperimentalRegExp14OneshotExecRawEPNS0_7IsolateENS0_12DirectHandleINS0_12IrRegExpDataEEENS4_INS0_6StringEEEPiii(ptr noundef %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.v8::internal::Zone", align 8 ; 5 uses
  %7 = alloca %"class.v8::internal::StdoutStream", align 8 ; 19 uses
  %8 = alloca %"class.std::optional.462", align 8 ; 5 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1625), align 1, !range !5, !noundef !8
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1624), align 8, !range !5, !noundef !8
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 6 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #11
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 304
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 312
  store i8 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 313
  store i8 0, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  %i.j = load ptr, ptr @stdout, align 8
  call void @_ZN2v88internal8OFStreamC2EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(88) %7, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN2v88internal12StdoutStreamE, i64 8), ptr noundef %i.j) #11
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %7, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.l = call noundef ptr @_ZN2v88internal12StdoutStream14GetStdoutMutexEv() #11 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8
  call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #11
  %i.m = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(88) %7, ptr noundef nonnull @.str.8, i64 noundef 43) #11 ; 0 uses
  %i.n = load i64, ptr %1, align 8
  %i.o = add i64 %i.n, 15
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i64, ptr %i.p, align 8
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsERSoNS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(88) %7, i64 %i.q) #11 ; 0 uses
  %i.s = load ptr, ptr %7, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 -24
  %i.u = load i64, ptr %i.t, align 8
  %i.v = getelementptr inbounds i8, ptr %7, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 240
  %i.x = load ptr, ptr %i.w, align 8              ; 6 uses
  %.not.i.i.i10 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i10, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt16__throw_bad_castv() #12
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load i8, ptr %i.y, align 8
  %.not.i1.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 67
  %i.ab = load i8, ptr %i.aa, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.x) #11
  %i.ac = load ptr, ptr %i.x, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef signext i8 %i.ae(ptr noundef nonnull align 8 dereferenceable(570) %i.x, i8 noundef signext 10) #11, !inline_history !6
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi i8 [ %i.ab, %bb.f ], [ %i.af, %bb.g ]
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %7, i8 noundef signext %.0.i.i.i) #11
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #11 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %7, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.e, align 8
  %i.ai = load ptr, ptr %i.k, align 8             ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %_ZN2v88internal12StdoutStreamD1Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #11, !inline_history !7
  br label %_ZN2v88internal12StdoutStreamD1Ev.exit

_ZN2v88internal12StdoutStreamD1Ev.exit:           ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.h
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %7, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.e, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ak) #11, !inline_history !7
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #11, !inline_history !7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal12StdoutStreamD1Ev.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call fastcc void @_ZN2v88internal12_GLOBAL__N_111CompileImplEPNS0_7IsolateENS0_12DirectHandleINS0_12IrRegExpDataEEE(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef %0, ptr %1)
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.val = load i8, ptr %i.al, align 8, !range !5, !noundef !8
  %i.am = trunc nuw i8 %.val to i1
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %8, align 8
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = load i64, ptr %2, align 8
  %i.aq = load i64, ptr %1, align 8
  %i.ar = add i64 %i.aq, 87
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load i64, ptr %i.as, align 8
  %sh.diff = lshr i64 %i.at, 31
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %i.au = and i32 %tr.sh.diff, -2
  %i.av = add i32 %i.au, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 58832
  %i.ax = load ptr, ptr %i.aw, align 8
  call void @_ZN2v88internal4ZoneC1EPNS0_19AccountingAllocatorEPKc(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef %i.ax, ptr noundef nonnull @__func__._ZN2v88internal12_GLOBAL__N_111ExecRawImplEPNS0_7IsolateENS0_6RegExp10CallOriginENS0_6TaggedINS0_16TrustedByteArrayEEENS6_INS0_6StringEEEiPiii) #11
  %i.ay = call noundef i32 @_ZN2v88internal29ExperimentalRegExpInterpreter11FindMatchesEPNS0_7IsolateENS0_6RegExp10CallOriginENS0_6TaggedINS0_16TrustedByteArrayEEEiNS6_INS0_6StringEEEiPiiPNS0_4ZoneE(ptr noundef nonnull %0, i32 noundef 0, i64 %i.ao, i32 noundef %i.av, i64 %i.ap, i32 noundef %5, ptr noundef %3, i32 noundef %4, ptr noundef nonnull %6) #11
  call void @_ZN2v88internal4ZoneD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(64) %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.0 = phi i32 [ %i.ay, %bb.j ], [ -1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 0, 8589934592) i64 @_ZN2v88internal18ExperimentalRegExp11OneshotExecEPNS0_7IsolateENS0_12DirectHandleINS0_12IrRegExpDataEEENS4_INS0_6StringEEEiPij(ptr noundef %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.a = tail call noundef i32 @_ZN2v88internal18ExperimentalRegExp14OneshotExecRawEPNS0_7IsolateENS0_12DirectHandleINS0_12IrRegExpDataEEENS4_INS0_6StringEEEPiii(ptr noundef %0, ptr %1, ptr %2, ptr noundef %4, i32 noundef %5, i32 noundef %3) ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.loopexit14, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %i.a, label %.loopexit14 [
    i32 0, label %.loopexit
    i32 -2, label %bb.b
  ]

.loopexit14:                                      ; preds = %bb.c, %bb.b
  %.sroa.3.1.ph.ph = phi i64 [ 4294967296, %bb.b ], [ 0, %bb.c ]
  %i.c = zext i32 %i.a to i64
  %i.d = or disjoint i64 %.sroa.3.1.ph.ph, %i.c
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.loopexit14
  %.sroa.0.0.insert.insert = phi i64 [ %i.d, %.loopexit14 ], [ 4294967296, %bb.c ]
  ret i64 %.sroa.0.0.insert.insert
}

declare void @_ZN2v88internal8OFStreamC2EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN2v88internal12StdoutStream14GetStdoutMutexEv() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8OFStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 24), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 64), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #11
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8OFStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 24), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 64), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #11, !inline_history !13
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #11, !inline_history !13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 344) #13
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N2v88internal8OFStreamD1Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 24), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 64), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #11, !inline_history !13
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #11, !inline_history !13
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N2v88internal8OFStreamD0Ev(ptr noundef %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 24), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal8OFStreamE, i64 64), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #11, !inline_history !14
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #11, !inline_history !14
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef 344) #13, !inline_history !15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSoD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSoD0Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0 align 2

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n24_NSoD1Ev(ptr noundef) unnamed_addr #7 align 2

; Function Attrs: nounwind uwtable
declare void @_ZTv0_n24_NSoD0Ev(ptr noundef) unnamed_addr #7 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12StdoutStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN2v88internal12StdoutStreamD1Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #11, !inline_history !7
  br label %_ZN2v88internal12StdoutStreamD1Ev.exit

_ZN2v88internal12StdoutStreamD1Ev.exit:           ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #11, !inline_history !7
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #11, !inline_history !7
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 352) #13
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N2v88internal12StdoutStreamD1Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZN2v88internal12StdoutStreamD1Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #11, !inline_history !7
  br label %_ZN2v88internal12StdoutStreamD1Ev.exit

_ZN2v88internal12StdoutStreamD1Ev.exit:           ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %i.d, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.i) #11, !inline_history !7
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #11, !inline_history !7
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr hidden void @_ZTv0_n24_N2v88internal12StdoutStreamD0Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal12StdoutStreamD0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #11, !inline_history !16
  br label %_ZN2v88internal12StdoutStreamD0Ev.exit

_ZN2v88internal12StdoutStreamD0Ev.exit:           ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %i.d, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.i) #11, !inline_history !16
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.e) #11, !inline_history !16
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 noundef 352) #13, !inline_history !17
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #6

declare void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN2v88internal4ZoneC1EPNS0_19AccountingAllocatorEPKc(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef) unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal12RegExpParser25ParseRegExpFromHeapStringEPNS0_7IsolateEPNS0_4ZoneENS0_12DirectHandleINS0_6StringEEENS_4base5FlagsINS0_10RegExpFlagEiiEEPNS0_17RegExpCompileDataE(ptr noundef, ptr noundef, ptr, i32, ptr noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal6RegExp20ThrowRegExpExceptionEPNS0_7IsolateENS_4base5FlagsINS0_10RegExpFlagEiiEENS0_12DirectHandleINS0_6StringEEENS0_11RegExpErrorE(ptr noundef, i32, ptr, i32 noundef) local_unnamed_addr #2

declare void @_ZN2v88internal26ExperimentalRegExpCompiler7CompileEPNS0_10RegExpTreeENS_4base5FlagsINS0_10RegExpFlagEiiEEPNS0_4ZoneE(ptr dead_on_unwind writable sret(%"class.v8::internal::ZoneList") align 8, ptr noundef, i32, ptr noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal6RegExp20CreateCaptureNameMapEPNS0_7IsolateEPNS0_10ZoneVectorIPNS0_13RegExpCaptureEEE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2v88internal4ZoneD1Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(64)) unnamed_addr #6
end_hunk_0
