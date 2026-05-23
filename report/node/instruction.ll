inline.NumInlined: 2270
inline.NumDeleted: 946
begin_hunk_0_@_ZNK2v88internal8compiler18InstructionOperand5PrintEv:bb.a
  store i8 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 313
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr @stdout, align 8
  call void @_ZN2v88internal8OFStreamC2EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTN2v88internal12StdoutStreamE, i64 8), ptr noundef %i.f) #31
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %1, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.h = call noundef ptr @_ZN2v88internal12StdoutStream14GetStdoutMutexEv() #31 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8
  call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #31
  %i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(8) %0) ; 0 uses
  %i.j = load ptr, ptr %1, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %1, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 240
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %.not.i.i.i1 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i1, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZSt16__throw_bad_castv() #30
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load i8, ptr %i.p, align 8
  %.not.i1.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 67
  %i.s = load i8, ptr %i.r, align 1
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.o) #31
  %i.t = load ptr, ptr %i.o, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef signext i8 %i.v(ptr noundef nonnull align 8 dereferenceable(570) %i.o, i8 noundef signext 10) #31, !inline_history !5
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.s, %bb.c ], [ %i.w, %bb.d ]
  %i.x = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %.0.i.i.i) #31
  %i.y = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #31 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %1, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.a, align 8
  %i.z = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZN2v88internal12StdoutStreamD1Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #31, !inline_history !6
  br label %_ZN2v88internal12StdoutStreamD1Ev.exit

_ZN2v88internal12StdoutStreamD1Ev.exit:           ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.e
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %1, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.a, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ab) #31, !inline_history !6
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #31, !inline_history !6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12StdoutStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 24), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN2v88internal12StdoutStreamE, i64 64), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN2v88internal12StdoutStreamD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #31
  br label %_ZN2v88internal12StdoutStreamD2Ev.exit

_ZN2v88internal12StdoutStreamD2Ev.exit:           ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 24), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCN2v88internal12StdoutStreamE0_NS0_8OFStreamE, i64 64), ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #31
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internal8compilerlsERSoRKNS1_18InstructionOperandE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 19 uses
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = and i32 %i.b, 7
  switch i32 %i.c, label %bb.bd [
    i32 1, label %bb.b
    i32 2, label %bb.l
    i32 3, label %bb.m
    i32 4, label %bb.r
    i32 5, label %bb.s
    i32 0, label %bb.bc
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 1) #31 ; 0 uses
  %i.e = load i64, ptr %1, align 8
  %i.f = lshr i64 %i.e, 3
  %i.g = trunc i64 %i.f to i32
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.g) #31 ; 0 uses
  %i.i = load i64, ptr %1, align 8                ; 2 uses
  %i.j = and i64 %i.i, 34359738368
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 2) #31 ; 0 uses
  %i.m = load i64, ptr %1, align 8
  %i.n = ashr i64 %i.m, 36
  %i.o = trunc nsw i64 %i.n to i32
  %i.p = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.o) #31 ; 2 uses
  %i.q = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull @.str.3, i64 noundef 2) #31 ; 0 uses
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.r = lshr i64 %i.i, 36
  %i.s = trunc nuw nsw i64 %i.r to i32
  %i.t = and i32 %i.s, 7
  switch i32 %i.t, label %default.unreachable105 [
    i32 0, label %.thread
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 1, label %bb.j
    i32 2, label %bb.k
  ]

bb.e:                                             ; preds = %bb.d
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 2) #31 ; 0 uses
  %i.v = load i64, ptr %1, align 8
  %i.w = lshr i64 %i.v, 41
  %i.x = trunc i64 %i.w to i8
  %i.y = and i8 %i.x, 63                          ; 2 uses
  %i.z = icmp samesign ult i8 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsINS0_8RegisterEPKcEERSoS5_T_(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 %i.y) ; 2 uses
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.4, i64 noundef 1) #31 ; 0 uses
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.2, i64 noundef 2) #31 ; 0 uses
  %i.ad = load i64, ptr %1, align 8               ; 2 uses
  %i.ae = and i64 %i.ad, 105553116266496
  %i.af = icmp eq i64 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  %.pn.in = lshr i64 %i.ad, 41
  %.pn = and i64 %.pn.in, 15
  %.in = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12RegisterNameENS0_11XMMRegisterEE5Names, i64 %.pn
  %i.ag = load ptr, ptr %.in, align 8
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ag) ; 2 uses
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull @.str.4, i64 noundef 1) #31 ; 0 uses
  br label %.thread

bb.g:                                             ; preds = %bb.d
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.5, i64 noundef 3) #31 ; 0 uses
  br label %.thread

bb.h:                                             ; preds = %bb.d
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.6, i64 noundef 3) #31 ; 0 uses
  br label %.thread

bb.i:                                             ; preds = %bb.d
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.7, i64 noundef 1) #31 ; 0 uses
  %i.am = load i64, ptr %1, align 8
  %i.an = lshr i64 %i.am, 50
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = and i32 %i.ao, 7
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ap) #31 ; 2 uses
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef nonnull @.str.4, i64 noundef 1) #31 ; 0 uses
  br label %.thread

bb.j:                                             ; preds = %bb.d
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.8, i64 noundef 3) #31 ; 0 uses
  br label %.thread

bb.k:                                             ; preds = %bb.d
  %i.at = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.9, i64 noundef 3) #31 ; 0 uses
  br label %.thread

default.unreachable105:                           ; preds = %bb.d
  unreachable

bb.l:                                             ; preds = %bb.a
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.10, i64 noundef 11) #31 ; 0 uses
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8
  %i.av = lshr i64 %.sroa.0.0.copyload.i, 3
  %i.aw = trunc i64 %i.av to i32
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.aw) #31 ; 2 uses
  %i.ay = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull @.str.11, i64 noundef 1) #31 ; 0 uses
  br label %.thread

bb.m:                                             ; preds = %bb.a
  %2 = and i32 %i.b, 24
  %3 = sub i32 %2, 0                              ; 2 uses
  %4 = call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 29)
  switch i32 %4, label %default.unreachable104 [
    i32 0, label %bb.n
    i32 1, label %bb.o
    i32 2, label %bb.p
    i32 3, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.12, i64 noundef 1) #31 ; 0 uses
  %i.ba = lshr i64 %i.a, 32
  %i.bb = trunc nuw i64 %i.ba to i32
  %i.bc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.bb) #31
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.bd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.12, i64 noundef 1) #31 ; 0 uses
  %i.be = ashr i64 %i.a, 32
  %i.bf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.be) #31
  br label %.thread

bb.p:                                             ; preds = %bb.m
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.13, i64 noundef 15) #31 ; 0 uses
  %i.bh = lshr i64 %i.a, 32
  %i.bi = trunc nuw i64 %i.bh to i32
  %i.bj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.bi) #31 ; 2 uses
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull @.str.11, i64 noundef 1) #31 ; 0 uses
  br label %.thread

bb.q:                                             ; preds = %bb.m
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.14, i64 noundef 11) #31 ; 0 uses
  %i.bm = lshr i64 %i.a, 32
  %i.bn = trunc nuw i64 %i.bm to i32
  %i.bo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.bn) #31 ; 2 uses
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull @.str.11, i64 noundef 1) #31 ; 0 uses
  br label %.thread

default.unreachable104:                           ; preds = %bb.m
  unreachable

bb.r:                                             ; preds = %bb.a
  %i.bq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.15, i64 noundef 10) #31 ; 0 uses
  %.sroa.0.0.copyload.i79 = load i64, ptr %1, align 8
  %i.br = and i64 %.sroa.0.0.copyload.i79, -8
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.bs) #31 ; 2 uses
  %i.bu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull @.str.11, i64 noundef 1) #31 ; 0 uses
  br label %.thread

bb.s:                                             ; preds = %bb.a
  %i.bv = and i64 %i.a, 7
  %i.bw = icmp samesign ugt i64 %i.bv, 4          ; 6 uses
  %i.bx = and i64 %i.a, 3848                      ; 2 uses
  %i.by = icmp eq i64 %i.bx, 8
  %i.bz = and i1 %i.bw, %i.by
  br i1 %i.bz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ca = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.16, i64 noundef 7) #31 ; 0 uses
  %i.cb = lshr i64 %i.a, 32
  %i.cc = trunc nuw i64 %i.cb to i32
  %i.cd = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.cc) #31 ; 0 uses
  br label %bb.ag

bb.u:                                             ; preds = %bb.s
  %i.ce = and i64 %i.a, 8
  %i.cf = icmp ne i64 %i.ce, 0
  %i.cg = and i64 %i.a, 3840
  %i.ch = icmp ne i64 %i.cg, 0
  %i.ci = and i1 %i.cf, %i.ch
  %i.cj = and i1 %i.bw, %i.ci
  br i1 %i.cj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ck = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.17, i64 noundef 10) #31 ; 0 uses
  %i.cl = lshr i64 %i.a, 32
  %i.cm = trunc nuw i64 %i.cl to i32
  %i.cn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.cm) #31 ; 0 uses
  br label %bb.ag

bb.w:                                             ; preds = %bb.u
  %i.co = icmp eq i64 %i.bx, 0
  %i.cp = and i1 %i.bw, %i.co
  br i1 %i.cp, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.cq = lshr i64 %i.a, 32                       ; 2 uses
  %i.cr = trunc nuw i64 %i.cq to i32
  %i.cs = icmp slt i32 %i.cr, 16
  br i1 %i.cs, label %bb.y, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

bb.y:                                             ; preds = %bb.x
  %i.ct = and i64 %i.a, 1030792151040
  %i.cu = icmp eq i64 %i.ct, 0
  tail call void @llvm.assume(i1 %i.cu)
  %i.cv = and i64 %i.cq, 15
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2v88internal12RegisterNameENS0_8RegisterEE5Names, i64 %i.cv
  %i.cx = load ptr, ptr %i.cw, align 8
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.x, %bb.y
  %i.cy = phi ptr [ %i.cx, %bb.y ], [ @.str.684, %bb.x ] ; 2 uses
  %i.cz = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.18, i64 noundef 1) #31 ; 0 uses
  %i.da = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cy) #31
  %i.db = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.cy, i64 noundef %i.da) #31 ; 0 uses
  %i.dc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.19, i64 noundef 2) #31 ; 0 uses
  br label %bb.ag

bb.z:                                             ; preds = %bb.w
  %i.dd = and i64 %i.a, 4088                      ; 3 uses
  %i.de = icmp eq i64 %i.dd, 288
  %i.df = and i1 %i.bw, %i.de
  br i1 %i.df, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.18, i64 noundef 1) #31 ; 0 uses
  %i.dh = lshr i64 %i.a, 32
  %i.di = trunc i64 %i.dh to i8                   ; 2 uses
  %i.dj = icmp samesign ult i8 %i.di, 16
  tail call void @llvm.assume(i1 %i.dj)
  %i.dk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsINS0_11XMMRegisterEPKcEERSoS5_T_(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 %i.di)
  %i.dl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dk, ptr noundef nonnull @.str.19, i64 noundef 2) #31 ; 0 uses
  br label %bb.ag

bb.ab:                                            ; preds = %bb.z
  %i.dm = icmp eq i64 %i.dd, 272
  %i.dn = and i1 %i.bw, %i.dm
  br i1 %i.dn, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.do = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.18, i64 noundef 1) #31 ; 0 uses
  %i.dp = lshr i64 %i.a, 32
  %i.dq = trunc i64 %i.dp to i8                   ; 2 uses
  %i.dr = icmp samesign ult i8 %i.dq, 16
  tail call void @llvm.assume(i1 %i.dr)
  %i.ds = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsINS0_11XMMRegisterEPKcEERSoS5_T_(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 %i.dq)
  %i.dt = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, ptr noundef nonnull @.str.19, i64 noundef 2) #31 ; 0 uses
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.du = icmp eq i64 %i.dd, 320
  %i.dv = and i1 %i.bw, %i.du
  %i.dw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.18, i64 noundef 1) #31 ; 0 uses
  %i.dx = lshr i64 %i.a, 32                       ; 2 uses
  br i1 %i.dv, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dy = icmp ult i64 %i.a, 68719476736
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = trunc nuw nsw i64 %i.dx to i8
  %i.ea = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsINS0_11YMMRegisterEPKcEERSoS5_T_(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 %i.dz)
  %i.eb = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef nonnull @.str.19, i64 noundef 2) #31 ; 0 uses
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.ec = trunc i64 %i.dx to i8                   ; 2 uses
  %i.ed = icmp samesign ult i8 %i.ec, 16
  tail call void @llvm.assume(i1 %i.ed)
  %i.ee = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN2v88internallsINS0_11XMMRegisterEPKcEERSoS5_T_(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 %i.ec)
  %i.ef = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ee, ptr noundef nonnull @.str.19, i64 noundef 2) #31 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.v, %bb.aa, %bb.ae, %bb.af, %bb.ac, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.t
  %i.eg = lshr i64 %i.a, 4
  %i.eh = trunc i64 %i.eg to i8
  switch i8 %i.eh, label %bb.bb [
    i8 0, label %bb.ah
    i8 1, label %bb.ai
    i8 2, label %bb.aj
    i8 3, label %bb.ak
    i8 4, label %bb.al
    i8 5, label %bb.am
    i8 16, label %bb.an
    i8 17, label %bb.ao
    i8 18, label %bb.ap
    i8 19, label %bb.aq
    i8 20, label %bb.ar
    i8 7, label %bb.as
    i8 8, label %bb.at
    i8 9, label %bb.au
    i8 10, label %bb.av
    i8 11, label %bb.aw
    i8 12, label %bb.ax
    i8 13, label %bb.ay
    i8 14, label %bb.az
    i8 6, label %bb.ba
    i8 15, label %bb.ba
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.ei = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.20, i64 noundef 2) #31 ; 0 uses
  br label %bb.bb

bb.ai:                                            ; preds = %bb.ag
  %i.ej = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.21, i64 noundef 2) #31 ; 0 uses
  br label %bb.bb

bb.aj:                                            ; preds = %bb.ag
  %i.ek = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.22, i64 noundef 3) #31 ; 0 uses
  br label %bb.bb

bb.ak:                                            ; preds = %bb.ag
  %i.el = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.23, i64 noundef 4) #31 ; 0 uses
  br label %bb.bb

bb.al:                                            ; preds = %bb.ag
  %i.em = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.24, i64 noundef 4) #31 ; 0 uses
  br label %bb.bb

bb.am:                                            ; preds = %bb.ag
  %i.en = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.25, i64 noundef 4) #31 ; 0 uses
  br label %bb.bb

bb.an:                                            ; preds = %bb.ag
  %i.eo = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.26, i64 noundef 4) #31 ; 0 uses
  br label %bb.bb

bb.ao:                                            ; preds = %bb.ag
  %i.ep = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.27, i64 noundef 4) #31 ; 0 uses
  br label %bb.bb

bb.ap:                                            ; preds = %bb.ag
  %i.eq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.28, i64 noundef 4) #31 ; 0 uses
  br label %bb.bb

bb.aq:                                            ; preds = %bb.ag
  %i.er = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.29, i64 noundef 5) #31 ; 0 uses
  br label %bb.bb

bb.ar:                                            ; preds = %bb.ag
  %i.es = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.30, i64 noundef 5) #31 ; 0 uses
  br label %bb.bb

bb.as:                                            ; preds = %bb.ag
  %i.et = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.31, i64 noundef 3) #31 ; 0 uses
  br label %bb.bb

bb.at:                                            ; preds = %bb.ag
  %i.eu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.32, i64 noundef 3) #31 ; 0 uses
  br label %bb.bb
end_hunk_0
begin_hunk_1_@_ZNK2v88internal8compiler19InstructionSequence17GetRepresentationEi:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %.not = icmp slt i32 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ %i.k, %bb.b ], [ 5, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSequence20MarkAsRepresentationENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(352) %0, i8 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = trunc i64 %i.h to i32
  %.not = icmp slt i32 %2, %i.i
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.k = load i32, ptr %i.j, align 8
  %i.l = sext i32 %i.k to i64                     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.o, %i.g
  %.not.i.i = icmp ult i64 %i.p, %i.l
  br i1 %.not.i.i, label %bb.c, label %_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE14EnsureCapacityEm.exit.i, !prof !26

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.l)
  %.pre.i = load ptr, ptr %i.d, align 8           ; 2 uses
  %.pre15.i = ptrtoint ptr %.pre.i to i64
  %.pre = load ptr, ptr %i.b, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE14EnsureCapacityEm.exit.i: ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.c, %bb.b ], [ %.pre, %bb.c ] ; 3 uses
  %.pre-phi.i = phi i64 [ %i.g, %bb.b ], [ %.pre15.i, %bb.c ]
  %i.r = phi ptr [ %i.e, %bb.b ], [ %.pre.i, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.l ; 2 uses
  %i.t = icmp ult ptr %i.q, %i.s
  br i1 %i.t, label %.lr.ph.preheader.i, label %_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE6resizeEmRKS2_.exit

.lr.ph.preheader.i:                               ; preds = %_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE14EnsureCapacityEm.exit.i
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = add i64 %.pre-phi.i, %i.l
  %i.w = sub i64 %i.v, %i.u
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.q, i8 5, i64 %i.w, i1 false)
  br label %_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE6resizeEmRKS2_.exit

_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE6resizeEmRKS2_.exit: ; preds = %.lr.ph.preheader.i, %_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE14EnsureCapacityEm.exit.i
  store ptr %i.s, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE6resizeEmRKS2_.exit, %bb.a
  switch i8 %1, label %bb.h [
    i8 1, label %bb.e
    i8 2, label %bb.e
    i8 3, label %bb.e
    i8 16, label %_ZN2v88internal8compilerL20FilterRepresentationENS0_21MachineRepresentationE.exit
    i8 4, label %bb.f
    i8 5, label %bb.f
    i8 7, label %bb.f
    i8 8, label %bb.f
    i8 9, label %bb.f
    i8 17, label %bb.f
    i8 18, label %bb.f
    i8 19, label %bb.f
    i8 20, label %bb.f
    i8 10, label %bb.f
    i8 11, label %bb.f
    i8 12, label %bb.f
    i8 14, label %bb.f
    i8 0, label %bb.g
    i8 6, label %bb.g
    i8 13, label %bb.g
    i8 15, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  br label %_ZN2v88internal8compilerL20FilterRepresentationENS0_21MachineRepresentationE.exit

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  br label %_ZN2v88internal8compilerL20FilterRepresentationENS0_21MachineRepresentationE.exit

bb.g:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #30
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN2v88internal8compilerL20FilterRepresentationENS0_21MachineRepresentationE.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.0.i = phi i8 [ 5, %bb.e ], [ %1, %bb.f ], [ 17, %bb.d ] ; 2 uses
  %i.x = sext i32 %2 to i64
  %i.y = load ptr, ptr %i.d, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 %.0.i, ptr %i.z, align 1
  %i.aa = zext nneg i8 %.0.i to i32
  %i.ab = shl nuw nsw i32 1, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = or i32 %i.ad, %i.ab
  store i32 %i.ae, ptr %i.ac, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal8compiler19InstructionSequence22AddDeoptimizationEntryEPNS1_20FrameStateDescriptorENS0_14DeoptimizeKindENS0_16DeoptimizeReasonEjRKNS1_14FeedbackSourceE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(12) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.6 = alloca { [6 x i8], %"struct.v8::internal::compiler::FeedbackSource" }, align 2 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.sroa.6.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.6.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp ult ptr %i.b, %i.g
  br i1 %i.h, label %_ZN2v88internal10ZoneVectorINS0_8compiler19DeoptimizationEntryEE9push_backEOS3_.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = sub i64 %i.j, %i.e
  %i.l = ashr exact i64 %i.k, 5
  %i.m = add nsw i64 %i.l, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler19DeoptimizationEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.m)
  %.pre.i.i = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler19DeoptimizationEntryEE9push_backEOS3_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler19DeoptimizationEntryEE9push_backEOS3_.exit: ; preds = %bb.a, %bb.b
  %i.n = phi ptr [ %i.b, %bb.a ], [ %.pre.i.i, %bb.b ] ; 5 uses
  %i.o = ptrtoint ptr %i.b to i64
  %i.p = sub i64 %i.o, %i.e
  %i.q = lshr exact i64 %i.p, 5
  %i.r = trunc i64 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.s, ptr %i.a, align 8
  store ptr %1, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i8 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  store i8 %3, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.6, i64 22, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret i32 %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN2v88internal8compiler19InstructionSequence22GetDeoptimizationEntryEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.a
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden i32 @_ZN2v88internal8compiler19InstructionSequence8InputRpoEPNS1_11InstructionEm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 255
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr [8 x i8], ptr %i.a, i64 %i.e
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %2
  %i.h = load i64, ptr %i.g, align 8              ; 4 uses
  %i.i = and i64 %i.h, 7
  %i.j = icmp eq i64 %i.i, 3
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = trunc i64 %i.h to i32
  %3 = ashr i64 %i.h, 32                          ; 4 uses
  %i.l = and i32 %i.k, 24
  %4 = sub i32 %i.l, 0                            ; 2 uses
  %5 = call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 29)
  switch i32 %5, label %default.unreachable [
    i32 0, label %_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit
    i32 1, label %_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %3
  %.sroa.0.0.copyload.i = load i32, ptr %i.o, align 4
  %i.p = zext i32 %.sroa.0.0.copyload.i to i64
  br label %_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %3
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8
  br label %_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.t = lshr i64 %i.h, 3
  %i.u = trunc i64 %i.t to i32                    ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.w = load i64, ptr %i.v, align 8
  %.not.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.not.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.x, %bb.f ], [ %.sroa.06.0.i.i.i, %bb.g ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !nonnull !29, !noundef !29 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp eq i32 %i.z, %i.u
  br i1 %i.aa, label %_ZNK2v88internal8compiler19InstructionSequence11GetConstantEi.exit, label %bb.g, !llvm.loop !48

bb.h:                                             ; preds = %bb.e
  %i.ab = xor i32 %i.u, -1
  %i.ac = shl i32 %i.u, 15
  %i.ad = add i32 %i.ac, %i.ab                    ; 2 uses
  %i.ae = lshr i32 %i.ad, 12
  %i.af = xor i32 %i.ae, %i.ad
  %i.ag = mul i32 %i.af, 5                        ; 2 uses
  %i.ah = lshr i32 %i.ag, 4
  %i.ai = xor i32 %i.ah, %i.ag
  %i.aj = mul i32 %i.ai, 2057                     ; 2 uses
  %i.ak = lshr i32 %i.aj, 16
  %i.al = xor i32 %i.ak, %i.aj
  %i.am = zext i32 %i.al to i64                   ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = urem i64 %i.am, %i.ao                   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !29, !noundef !29
  %i.au = load ptr, ptr %i.at, align 8            ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = icmp eq i64 %i.ax, %i.am
  %i.az = load i32, ptr %i.av, align 8
  %i.ba = icmp eq i32 %i.az, %i.u
  %i.bb = select i1 %i.ay, i1 %i.ba, i1 false
  br i1 %i.bb, label %_ZNK2v88internal8compiler19InstructionSequence11GetConstantEi.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %i.au, %bb.h ]
  %i.bc = load ptr, ptr %.020.i.i.i.i.i, align 8, !nonnull !29, !noundef !29 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %i.bf = urem i64 %i.be, %i.ao
  %.not19.i.i.i.i.i = icmp eq i64 %i.bf, %i.ap
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bh = icmp eq i64 %i.be, %i.am
  %i.bi = load i32, ptr %i.bg, align 8
  %i.bj = icmp eq i32 %i.bi, %i.u
  %i.bk = select i1 %i.bh, i1 %i.bj, i1 false
  br i1 %i.bk, label %_ZNK2v88internal8compiler19InstructionSequence11GetConstantEi.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !49

_ZNK2v88internal8compiler19InstructionSequence11GetConstantEi.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.g, %bb.h
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.g ], [ %i.au, %bb.h ], [ %i.bc, %.lr.ph.i.i.i.i.i ]
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8
  br label %_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit

_ZNK2v88internal8compiler19InstructionSequence12GetImmediateEPKNS1_16ImmediateOperandE.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.b, %_ZNK2v88internal8compiler19InstructionSequence11GetConstantEi.exit
  %.sroa.4.0 = phi i64 [ %.sroa.2.0.copyload.i, %_ZNK2v88internal8compiler19InstructionSequence11GetConstantEi.exit ], [ %.sroa.8.0.copyload.i, %bb.d ], [ %3, %bb.b ], [ %i.p, %bb.c ], [ %3, %bb.b ]
  %i.bl = trunc i64 %.sroa.4.0 to i32
  ret i32 %i.bl
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal8compiler19InstructionSequence17GetSourcePositionEPKNS1_11InstructionEPNS0_14SourcePositionE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp ult i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8
  %.not.i.i.i.i = icmp ult i64 %i.e, 131072
  br i1 %.not.i.i.i.i, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE4findIS8_EENSK_14const_iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.g, %1
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl18container_internal11kSooControlE, ptr poison }, ptr %i.f, 1
  %spec.select.i.i.i = select i1 %i.h, { ptr, ptr } %.fca.1.insert.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE4findIS8_EENSK_14const_iteratorERKT_.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.i, align 8 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i32 0, i32 1, i32 1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8
  %sext.i.i = shl i64 %i.k, 48
  %i.l = ashr exact i64 %sext.i.i, 48
  %i.m = ptrtoint ptr %1 to i64
  %i.n = xor i64 %i.m, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.o = zext i64 %i.n to i128
  %i.p = mul nuw nsw i128 %i.o, 8779197792823184629 ; 2 uses
  %i.q = lshr i128 %i.p, 64
  %i.r = xor i128 %i.q, %i.p
  %i.s = trunc i128 %i.r to i64
  %i.t = xor i64 %i.l, %i.s                       ; 2 uses
  %i.u = lshr i64 %i.t, 57
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload.i.i.i14.i.i.i = load ptr, ptr %i.w, align 8 ; 2 uses
  %i.x = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i7.i.i = phi i64 [ %i.t, %bb.d ], [ %i.ar, %bb.g ]
  %.sroa.13.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.aq, %bb.g ]
  %.sroa.6.0.i.i.i = and i64 %.pn.i7.i.i, %i.b    ; 4 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %.sroa.6.0.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.z, i32 0, i32 3, i32 1)
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i
  %i.ab = load <16 x i8>, ptr %i.aa, align 1      ; 2 uses
  %i.ac = icmp eq <16 x i8> %i.y, %i.ab
  %i.ad = bitcast <16 x i1> %i.ac to i16          ; 2 uses
  %.not46.i.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not46.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %bb.f
  %.sroa.017.047.i.i.i = phi i16 [ %i.an, %bb.f ], [ %i.ad, %bb.e ] ; 3 uses
  %i.ae = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.047.i.i.i, i1 true)
  %i.af = zext nneg i16 %i.ae to i64
  %i.ag = add i64 %.sroa.6.0.i.i.i, %i.af
  %i.ah = and i64 %i.ag, %i.b                     ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i.i.i, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = icmp eq ptr %i.aj, %1
  br i1 %i.ak, label %.thread33.i.i.i, label %bb.f, !prof !7

.thread33.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.ah ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE10find_largeIS8_EENSK_8iteratorERKT_m.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.am = add i16 %.sroa.017.047.i.i.i, -1
  %i.an = and i16 %i.am, %.sroa.017.047.i.i.i     ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.an, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.ao = icmp eq <16 x i8> %i.ab, splat (i8 -128)
  %i.ap = bitcast <16 x i1> %i.ao to i16
  %.not44.i.i.i = icmp eq i16 %i.ap, 0
  br i1 %.not44.i.i.i, label %bb.g, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE10find_largeIS8_EENSK_8iteratorERKT_m.exit.i.i, !prof !26

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.aq = add i64 %.sroa.13.0.i.i.i, 16           ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.6.0.i.i.i
  br label %bb.e, !llvm.loop !50

_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE10find_largeIS8_EENSK_8iteratorERKT_m.exit.i.i: ; preds = %._crit_edge.i.i.i, %.thread33.i.i.i
  %.sroa.0.4.ph.i.i.i = phi ptr [ %i.al, %.thread33.i.i.i ], [ null, %._crit_edge.i.i.i ]
  %.sroa.3.4.ph.i.i.i = phi ptr [ %i.ai, %.thread33.i.i.i ], [ undef, %._crit_edge.i.i.i ]
  %.fca.0.insert.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i, 0
  %.fca.1.insert.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i, ptr %.sroa.3.4.ph.i.i.i, 1
  br label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE4findIS8_EENSK_14const_iteratorERKT_.exit

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE4findIS8_EENSK_14const_iteratorERKT_.exit: ; preds = %bb.b, %bb.c, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE10find_largeIS8_EENSK_8iteratorERKT_m.exit.i.i
  %.pn.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i, %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE10find_largeIS8_EENSK_8iteratorERKT_m.exit.i.i ], [ { ptr null, ptr undef }, %bb.b ], [ %spec.select.i.i.i, %bb.c ] ; 2 uses
  %i.as = extractvalue { ptr, ptr } %.pn.i.i, 0   ; 4 uses
  %i.at = extractvalue { ptr, ptr } %.pn.i.i, 1
  %i.au = icmp eq ptr %i.as, null                 ; 3 uses
  %i.av = icmp eq ptr %i.as, @_ZN4absl18container_internal19kDefaultIterControlE ; 2 uses
  %or.cond.i.i.i = or i1 %i.au, %i.av
  br i1 %or.cond.i.i.i, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE4findIS8_EENSK_14const_iteratorERKT_.exit
  %i.aw = load i8, ptr %i.as, align 1
  %i.ax = icmp sgt i8 %i.aw, -1
  br i1 %i.ax, label %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i: ; preds = %bb.h, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE4findIS8_EENSK_14const_iteratorERKT_.exit
  br i1 %i.av, label %bb.j, label %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE14const_iteratorESN_.exit, !prof !26

bb.j:                                             ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.704, i64 61), i32 noundef 1350, ptr noundef nonnull @.str.705, ptr noundef nonnull @.str.702) #31
  tail call void @llvm.trap()
  unreachable

_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE14const_iteratorESN_.exit: ; preds = %_ZN4absl18container_internal26AssertIsValidForComparisonEPKNS0_6ctrl_tEhPKh.exit15.i.i
  br i1 %i.au, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE14const_iteratorESN_.exit
  %i.ay = load i8, ptr %i.as, align 1
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE14const_iteratorptEv.exit, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.704, i64 61), i32 noundef 1277, ptr noundef nonnull @.str.709, ptr noundef nonnull @.str.706) #31
  tail call void @llvm.trap()
  unreachable

_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE14const_iteratorptEv.exit: ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bb = load i64, ptr %i.ba, align 8
  store i64 %i.bb, ptr %2, align 8
  br label %bb.m

bb.m:                                             ; preds = %_ZN4absl18container_internaleqERKNS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE14const_iteratorESN_.exit, %_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE14const_iteratorptEv.exit
  %.0 = xor i1 %i.au, true
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19InstructionSequence17SetSourcePositionEPKNS1_11InstructionENS0_14SourcePositionE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef %1, i64 %2) local_unnamed_addr #15 align 2 {
bb.a:
  %3 = alloca %"struct.absl::container_internal::HashKey", align 8 ; 5 uses
  %4 = alloca %"struct.std::pair.68", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %1, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %2, ptr %i.b, align 8
  %i.c = load i64, ptr %i.a, align 8, !noalias !51 ; 4 uses
  %i.d = icmp ult i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !68
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.f, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 131072, ptr %i.e, align 8, !noalias !68
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE22find_or_prepare_insertIS8_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !noalias !68
  %i.j = icmp eq ptr %i.i, %1
  br i1 %i.j, label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE6insertEOSG_IS8_S9_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !68
  store ptr %i.a, ptr %3, align 8, !noalias !68
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %4, ptr %i.k, align 8, !noalias !68
  %i.l = call noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPKN2v88internal8compiler11InstructionEvE4HashESA_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE, i1 noundef zeroext false) #31, !noalias !68
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !68
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !noalias !68
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i, i64 %i.l
  %.pre = load ptr, ptr %4, align 8, !noalias !73
  br label %_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE22find_or_prepare_insertIS8_EESG_INSK_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.thread

bb.f:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.o, align 8, !noalias !74 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2v88internal10ZoneVectorIPNS0_8compiler12ReferenceMapEE4GrowEm:bb.a
_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler12ReferenceMapEA_S5_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler12ReferenceMapEA_S5_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.z, ptr nonnull align 8 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler12ReferenceMapEA_S5_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayIPNS0_8compiler12ReferenceMapEA_S5_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_21MachineRepresentationEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = shl i64 %i.l, 1
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 2 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq i64 %1, -1
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.622, ptr noundef nonnull @.str.679) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = add i64 %i.o, 7
  %i.r = and i64 %i.q, -8                         ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_21MachineRepresentationEA_S3_EEPT_m.exit, !prof !26

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #31
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_21MachineRepresentationEA_S3_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_21MachineRepresentationEA_S3_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_21MachineRepresentationEA_S3_EEPT_m.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr nonnull align 1 %i.b, i64 %i.g, i1 false)
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal4Zone13AllocateArrayINS0_21MachineRepresentationEA_S3_EEPT_m.exit
  %i.ac = phi ptr [ %.pre, %bb.e ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_21MachineRepresentationEA_S3_EEPT_m.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.o
  store ptr %i.ad, ptr %i.h, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_8compiler19DeoptimizationEntryEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.b, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = ashr exact i64 %i.l, 4
  %i.n = select i1 %i.j, i64 2, i64 %i.m
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.n, i64 %1) ; 3 uses
  %i.p = load ptr, ptr %0, align 8                ; 3 uses
  %i.q = icmp ult i64 %i.o, 576460752303423487
  br i1 %i.q, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.622, ptr noundef nonnull @.str.679) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = shl nuw i64 %i.o, 5                      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = sub i64 %i.t, %i.v
  %i.x = icmp ugt i64 %i.r, %i.w
  br i1 %i.x, label %bb.d, label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler19DeoptimizationEntryEA_S4_EEPT_m.exit, !prof !26

bb.d:                                             ; preds = %bb.c
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 noundef %i.r) #31
  %.pre.i.i = load i64, ptr %i.u, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler19DeoptimizationEntryEA_S4_EEPT_m.exit

_ZN2v88internal4Zone13AllocateArrayINS0_8compiler19DeoptimizationEntryEA_S4_EEPT_m.exit: ; preds = %bb.c, %bb.d
  %i.y = phi i64 [ %.pre.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 4 uses
  %i.aa = add i64 %i.y, %i.r
  store i64 %i.aa, ptr %i.u, align 8
  store ptr %i.z, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.g
  store ptr %i.ab, ptr %i.c, align 8
  %.not = icmp ne ptr %i.b, null
  %i.ac = icmp ult ptr %i.b, %i.d
  %or.cond = select i1 %.not, i1 %i.ac, i1 false
  br i1 %or.cond, label %.lr.ph, label %_ZN2v88internal10ZoneVectorINS0_8compiler19DeoptimizationEntryEE16MoveToNewStorageEPS3_S5_PKS3_.exit

.lr.ph:                                           ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler19DeoptimizationEntryEA_S4_EEPT_m.exit, %.lr.ph
  %.0.i10 = phi ptr [ %i.ad, %.lr.ph ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler19DeoptimizationEntryEA_S4_EEPT_m.exit ] ; 2 uses
  %.07.i9 = phi ptr [ %i.ae, %.lr.ph ], [ %i.b, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler19DeoptimizationEntryEA_S4_EEPT_m.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0.i10, ptr noundef nonnull align 8 dereferenceable(32) %.07.i9, i64 32, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i10, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i9, i64 32 ; 2 uses
  %i.af = icmp ult ptr %i.ae, %i.d
  br i1 %i.af, label %.lr.ph, label %_ZN2v88internal10ZoneVectorINS0_8compiler19DeoptimizationEntryEE16MoveToNewStorageEPS3_S5_PKS3_.exit.loopexit, !llvm.loop !90

_ZN2v88internal10ZoneVectorINS0_8compiler19DeoptimizationEntryEE16MoveToNewStorageEPS3_S5_PKS3_.exit.loopexit: ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_8compiler19DeoptimizationEntryEE16MoveToNewStorageEPS3_S5_PKS3_.exit

_ZN2v88internal10ZoneVectorINS0_8compiler19DeoptimizationEntryEE16MoveToNewStorageEPS3_S5_PKS3_.exit: ; preds = %_ZN2v88internal10ZoneVectorINS0_8compiler19DeoptimizationEntryEE16MoveToNewStorageEPS3_S5_PKS3_.exit.loopexit, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler19DeoptimizationEntryEA_S4_EEPT_m.exit
  %i.ag = phi ptr [ %.pre, %_ZN2v88internal10ZoneVectorINS0_8compiler19DeoptimizationEntryEE16MoveToNewStorageEPS3_S5_PKS3_.exit.loopexit ], [ %i.z, %_ZN2v88internal4Zone13AllocateArrayINS0_8compiler19DeoptimizationEntryEA_S4_EEPT_m.exit ]
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %i.o
  store ptr %i.ah, ptr %i.h, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #27

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #28

declare void @_ZN4absl16raw_log_internal6RawLogENS_11LogSeverityEPKciS3_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

declare noundef i64 @_ZN4absl18container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS0_12CommonFieldsERKNS0_15PolicyFunctionsENS_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl19functional_internal12InvokeObjectINS_18container_internal7HashKeyINS2_6HashEqIPKN2v88internal8compiler11InstructionEvE4HashESA_Lb0EEEmJmEEET0_NS0_7VoidPtrEDpNS0_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !29, !align !91
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = xor i64 %i.d, ptrtoint (ptr @_ZN4absl13hash_internal15MixingHashState5kSeedE to i64)
  %i.f = zext i64 %i.e to i128
  %i.g = mul nuw nsw i128 %i.f, 8779197792823184629 ; 2 uses
  %i.h = lshr i128 %i.g, 64
  %i.i = xor i128 %i.h, %i.g
  %i.j = trunc i128 %i.i to i64
  %i.k = xor i64 %1, %i.j
  ret i64 %i.k
}

declare noundef i64 @_ZN4absl18container_internal18PrepareInsertLargeERNS0_12CommonFieldsERKNS0_15PolicyFunctionsEmNS0_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64, i64) local_unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #29

attributes #0 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: write, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #28 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { noreturn nounwind }
attributes #31 = { nounwind }
attributes #32 = { builtin nounwind }
attributes #33 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{null, null, null, null}
!6 = !{ptr @_ZN2v88internal12StdoutStreamD1Ev}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9, !11, !12}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !9, !11, !12}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !9, !11}
!18 = distinct !{!18, !9, !11, !12}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !9, !11}
!21 = distinct !{!21, !9, !11}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.peeled.count", i32 1}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
!26 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!27 = distinct !{!27, !9}
!28 = !{i8 0, i8 2}
!29 = !{}
!30 = distinct !{!30, !9}
!31 = distinct !{!31, !9}
!32 = distinct !{!32, !9}
!33 = distinct !{!33, !9}
!34 = !{!35}
!35 = distinct !{!35, !36}
!36 = distinct !{!36, !"LVerDomain"}
!37 = !{!38}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !9, !11, !12}
!40 = distinct !{!40, !9, !11}
!41 = distinct !{!41, !9}
!42 = distinct !{!42, !9}
!43 = distinct !{!43, !23}
!44 = distinct !{!44, !9}
!45 = distinct !{!45, !9}
!46 = distinct !{!46, !9}
!47 = !{!"branch_weights", i32 4001, i32 4000000}
!48 = distinct !{!48, !9}
!49 = distinct !{!49, !9}
!50 = distinct !{!50, !9}
!51 = !{!52, !54, !56, !58, !60, !62, !64, !66}
!52 = distinct !{!52, !53, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE22find_or_prepare_insertIS8_EESG_INSK_8iteratorEbERKT_: argument 0"}
!53 = distinct !{!53, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE22find_or_prepare_insertIS8_EESG_INSK_8iteratorEbERKT_"}
!54 = distinct !{!54, !55, !"_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE19EmplaceDecomposableclIS8_JRKSt21piecewise_construct_tSt5tupleIJOS8_EESQ_IJOS9_EEEEESG_INSK_8iteratorEbERKT_DpOT0_: argument 0"}
!55 = distinct !{!55, !"_ZNK4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE19EmplaceDecomposableclIS8_JRKSt21piecewise_construct_tSt5tupleIJOS8_EESQ_IJOS9_EEEEESG_INSK_8iteratorEbERKT_DpOT0_"}
!56 = distinct !{!56, !57, !"_ZN4absl18container_internal15memory_internal17DecomposePairImplINS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS6_14SourcePositionEEENS0_6HashEqISA_vE4HashENSE_2EqENS6_13ZoneAllocatorISt4pairIKSA_SB_EEEE19EmplaceDecomposableEOSA_St5tupleIJOSB_EEEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEL_ZSt19piecewise_constructEclsr3stdE7declvalISP_IJST_EEEEclsr3stdE7declvalIT1_EEEEOSS_SI_ISW_SX_E: argument 0"}
!57 = distinct !{!57, !"_ZN4absl18container_internal15memory_internal17DecomposePairImplINS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS6_14SourcePositionEEENS0_6HashEqISA_vE4HashENSE_2EqENS6_13ZoneAllocatorISt4pairIKSA_SB_EEEE19EmplaceDecomposableEOSA_St5tupleIJOSB_EEEEDTclclsr3stdE7declvalIT_EEclsr3stdE7declvalIRKT0_EEL_ZSt19piecewise_constructEclsr3stdE7declvalISP_IJST_EEEEclsr3stdE7declvalIT1_EEEEOSS_SI_ISW_SX_E"}
!58 = distinct !{!58, !59, !"_ZN4absl18container_internal13DecomposePairINS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS5_14SourcePositionEEENS0_6HashEqIS9_vE4HashENSD_2EqENS5_13ZoneAllocatorISt4pairIKS9_SA_EEEE19EmplaceDecomposableEJSH_IS9_SA_EEEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOSO_DpOSP_: argument 0"}
!59 = distinct !{!59, !"_ZN4absl18container_internal13DecomposePairINS0_12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS5_14SourcePositionEEENS0_6HashEqIS9_vE4HashENSD_2EqENS5_13ZoneAllocatorISt4pairIKS9_SA_EEEE19EmplaceDecomposableEJSH_IS9_SA_EEEEDTclsr15memory_internalE17DecomposePairImplclsr3stdE7forwardIT_Efp_Ecl8PairArgsspclsr3stdE7forwardIT0_Efp0_EEEEOSO_DpOSP_"}
!60 = distinct !{!60, !61, !"_ZN4absl18container_internal17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS3_14SourcePositionEE5applyINS0_12raw_hash_setIS9_NS0_6HashEqIS7_vE4HashENSD_2EqENS3_13ZoneAllocatorISt4pairIKS7_S8_EEEE19EmplaceDecomposableEJSH_IS7_S8_EEEEDTclsr4absl18container_internalE13DecomposePairclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSO_DpOSP_: argument 0"}
!61 = distinct !{!61, !"_ZN4absl18container_internal17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS3_14SourcePositionEE5applyINS0_12raw_hash_setIS9_NS0_6HashEqIS7_vE4HashENSD_2EqENS3_13ZoneAllocatorISt4pairIKS7_S8_EEEE19EmplaceDecomposableEJSH_IS7_S8_EEEEDTclsr4absl18container_internalE13DecomposePairclsr3stdE7declvalIT_EEspclsr3stdE7declvalIT0_EEEEOSO_DpOSP_"}
!62 = distinct !{!62, !63, !"_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEEvE5applyINS0_12raw_hash_setISA_NS0_6HashEqIS8_vE4HashENSF_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE19EmplaceDecomposableEJSJ_IS8_S9_EESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_: argument 0"}
!63 = distinct !{!63, !"_ZN4absl18container_internal18hash_policy_traitsINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEEvE5applyINS0_12raw_hash_setISA_NS0_6HashEqIS8_vE4HashENSF_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE19EmplaceDecomposableEJSJ_IS8_S9_EESA_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSR_DpOSS_"}
!64 = distinct !{!64, !65, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE7emplaceIJSG_IS8_S9_EETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESG_INSK_8iteratorEbEDpOSO_: argument 0"}
!65 = distinct !{!65, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE7emplaceIJSG_IS8_S9_EETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESG_INSK_8iteratorEbEDpOSO_"}
!66 = distinct !{!66, !67, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE6insertEOSG_IS8_S9_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value: argument 0"}
!67 = distinct !{!67, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE6insertEOSG_IS8_S9_EQntsr29IsLifetimeBoundAssignmentFromINS0_18hash_policy_traitsIT_vE9init_typeEEE5value"}
!68 = !{!69, !71, !52, !54, !56, !58, !60, !62, !64, !66}
!69 = distinct !{!69, !70, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE26find_or_prepare_insert_sooIS8_EESG_INSK_8iteratorEbERKT_: argument 0"}
!70 = distinct !{!70, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE26find_or_prepare_insert_sooIS8_EESG_INSK_8iteratorEbERKT_"}
!71 = distinct !{!71, !72, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE28find_or_prepare_insert_smallIS8_EESG_INSK_8iteratorEbERKT_: argument 0"}
!72 = distinct !{!72, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE28find_or_prepare_insert_smallIS8_EESG_INSK_8iteratorEbERKT_"}
!73 = !{!58, !60, !62, !64, !66}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE28find_or_prepare_insert_largeIS8_EESG_INSK_8iteratorEbERKT_: argument 0"}
!76 = distinct !{!76, !"_ZN4absl18container_internal12raw_hash_setINS0_17FlatHashMapPolicyIPKN2v88internal8compiler11InstructionENS4_14SourcePositionEEENS0_6HashEqIS8_vE4HashENSC_2EqENS4_13ZoneAllocatorISt4pairIKS8_S9_EEEE28find_or_prepare_insert_largeIS8_EESG_INSK_8iteratorEbERKT_"}
!77 = distinct !{!77, !9}
!78 = distinct !{!78, !9}
!79 = distinct !{!79, !9}
!80 = distinct !{!80, !9}
!81 = distinct !{!81, !9}
!82 = distinct !{!82, !9}
!83 = !{ptr @_ZN2v88internal8OFStreamD1Ev}
!84 = !{ptr @_ZN2v88internal8OFStreamD0Ev, ptr @_ZN2v88internal8OFStreamD1Ev}
!85 = !{ptr @_ZN2v88internal8OFStreamD0Ev}
!86 = !{ptr @_ZN2v88internal12StdoutStreamD0Ev, ptr @_ZN2v88internal12StdoutStreamD1Ev}
!87 = !{ptr @_ZN2v88internal12StdoutStreamD0Ev}
!88 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!89 = distinct !{!89, !9}
!90 = distinct !{!90, !9}
!91 = !{i64 8}
end_hunk_2
