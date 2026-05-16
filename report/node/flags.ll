inline.NumInlined: 1645
inline.NumDeleted: 394
begin_hunk_0_@_ZN2v88internal4Flag5ResetEv:bb.a
  %.not14.i = icmp eq ptr %i.ck, null
  br i1 %.not14.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.co = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0.i.i.i, ptr noundef nonnull dereferenceable(1) %i.ck) #29, !inline_history !22
  %i.cp = icmp ne i32 %i.co, 0
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  %i.cq = icmp ne ptr %i.ck, null
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %i.cr = phi i1 [ %i.cq, %bb.ag ], [ true, %bb.ae ], [ %i.cp, %bb.af ]
  %i.cs = tail call noundef zeroext i1 @_ZN2v88internal4Flag15CheckFlagChangeENS1_5SetByEbPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef 0, i1 noundef zeroext %i.cr, ptr noundef null), !inline_history !22
  br i1 %i.cs, label %bb.ai, label %_ZN2v88internal4Flag8SetValueILNS1_8FlagTypeE0EbEEvT0_NS1_5SetByE.exit

bb.ai:                                            ; preds = %bb.ah
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 8, !range !9, !noundef !10
  %i.cv = trunc nuw i8 %i.cu to i1
  %brmerge.not = and i1 %.not.i, %i.cv
  br i1 %brmerge.not, label %bb.aj, label %_ZN2v88internal11DeleteArrayIKcEEvPT_.exit.i

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZdaPv(ptr noundef nonnull %.0.i.i.i) #31, !inline_history !22
  br label %_ZN2v88internal11DeleteArrayIKcEEvPT_.exit.i

_ZN2v88internal11DeleteArrayIKcEEvPT_.exit.i:     ; preds = %bb.ai, %bb.aj
  %i.cw = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8
  %.not.i.i = icmp eq ptr %i.ck, %i.cx
  br i1 %.not.i.i, label %_ZN2v88internal9FlagValueIPKcEaSES3_.exit.i, label %bb.ak

bb.ak:                                            ; preds = %_ZN2v88internal11DeleteArrayIKcEEvPT_.exit.i
  %i.cy = load atomic i8, ptr @_ZN2v88internalL12flags_frozenE.0 monotonic, align 1, !range !9, !noundef !10
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.al, label %_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i, !prof !11

bb.al:                                            ; preds = %bb.ak
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1806, ptr noundef nonnull @.str.1840) #32, !inline_history !22
  unreachable

_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i: ; preds = %bb.ak
  store atomic i32 0, ptr @_ZN2v88internalL9flag_hashE.0 seq_cst, align 4
  store ptr %i.ck, ptr %i.cw, align 8
  br label %_ZN2v88internal9FlagValueIPKcEaSES3_.exit.i

_ZN2v88internal9FlagValueIPKcEaSES3_.exit.i:      ; preds = %_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i, %_ZN2v88internal11DeleteArrayIKcEEvPT_.exit.i
  store i8 0, ptr %i.ct, align 8
  br label %_ZN2v88internal4Flag8SetValueILNS1_8FlagTypeE0EbEEvT0_NS1_5SetByE.exit

_ZN2v88internal4Flag8SetValueILNS1_8FlagTypeE0EbEEvT0_NS1_5SetByE.exit: ; preds = %_ZN2v88internal9FlagValueIPKcEaSES3_.exit.i, %bb.ah, %bb.z, %_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i22, %bb.aa, %bb.v, %_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i18, %bb.w, %bb.r, %_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i15, %bb.s, %bb.n, %_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i11, %bb.o, %bb.j, %_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i7, %bb.k, %bb.f, %_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i3, %bb.g, %bb.b, %_ZN2v88internal8FlagList13ResetFlagHashEv.exit.i.i2, %bb.c, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZN2v84base2OS11ExitProcessEi(i32 noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(112) ptr @_ZStlsIZN2v88internal4Flag15CheckFlagChangeENS2_5SetByEbPKcE10FatalErrorNS1_8FlagNameEEOT_S9_RKT0_(ptr noundef nonnull returned align 8 dereferenceable(112) %0, ptr readonly captures(none) %.0.val, i8 %.8.val) unnamed_addr #9 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = trunc i8 %.8.val to i1                   ; 2 uses
  %i.c = select i1 %i.b, ptr @.str.11, ptr @.str.12
  %i.d = select i1 %i.b, i64 5, i64 2
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.c, i64 noundef %i.d) #30 ; 0 uses
  %i.f = load i8, ptr %.0.val, align 1            ; 2 uses
  %.not7.i = icmp eq i8 %i.f, 0
  br i1 %.not7.i, label %_ZN2v88internallsERSoNS0_8FlagNameE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i
  %i.g = phi i8 [ %i.s, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i ], [ %i.f, %bb.a ] ; 2 uses
  %.08.i = phi ptr [ %i.r, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i ], [ %.0.val, %bb.a ]
  %i.h = icmp eq i8 %i.g, 95
  %i.i = select i1 %i.h, i8 45, i8 %i.g           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.i, ptr %i.a, align 1
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i64, ptr %i.n, align 8
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) #30 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.i) #30 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i, i64 1 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1               ; 2 uses
  %.not.i = icmp eq i8 %i.s, 0
  br i1 %.not.i, label %_ZN2v88internallsERSoNS0_8FlagNameE.exit, label %.lr.ph.i, !llvm.loop !8

_ZN2v88internallsERSoNS0_8FlagNameE.exit:         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit.i, %bb.a
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZZN2v88internal4Flag15CheckFlagChangeENS1_5SetByEbPKcEN10FatalErrorC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  tail call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i8 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 337
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCZN2v88internal4Flag15CheckFlagChangeENS1_5SetByEbPKcE10FatalError0_So, i64 24), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCZN2v88internal4Flag15CheckFlagChangeENS1_5SetByEbPKcE10FatalError0_So, i64 64), ptr %i.a, align 8
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.a, ptr noundef null) #30
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCZN2v88internal4Flag15CheckFlagChangeENS1_5SetByEbPKcE10FatalError0_NSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTCZN2v88internal4Flag15CheckFlagChangeENS1_5SetByEbPKcE10FatalError0_NSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  tail call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #30
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 16, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.k, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.l, align 8
  store i8 0, ptr %i.k, align 8
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.p, ptr noundef nonnull %i.f) #30
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVZN2v88internal4Flag15CheckFlagChangeENS1_5SetByEbPKcE10FatalError, i64 24), ptr %0, align 8
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVZN2v88internal4Flag15CheckFlagChangeENS1_5SetByEbPKcE10FatalError, i64 64), ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal void @_ZZN2v88internal4Flag15CheckFlagChangeENS1_5SetByEbPKcEN10FatalErrorD1Ev(ptr noundef nonnull align 8 dereferenceable(112) initializes((0, 8), (112, 120)) %0) unnamed_addr #11 align 2 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVZN2v88internal4Flag15CheckFlagChangeENS1_5SetByEbPKcE10FatalError, i64 24), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVZN2v88internal4Flag15CheckFlagChangeENS1_5SetByEbPKcE10FatalError, i64 64), ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(112) %0), !inline_history !23
  %i.b = load ptr, ptr %1, align 8
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1841, ptr noundef %i.b, ptr noundef nonnull @_ZZN2v88internal4Flag15CheckFlagChangeENS1_5SetByEbPKcE5kHint) #32, !inline_history !23
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal4Flag9IsDefaultEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  switch i32 %i.a, label %bb.k [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.0.in.in.i.i = select i1 %i.d, ptr %i.f, ptr %i.c
  %.0.in.i.i = load i8, ptr %.0.in.in.i.i, align 1, !range !9, !noundef !10
  %i.g = load i8, ptr %i.f, align 1, !range !9, !noundef !10
  %.not22 = icmp eq i8 %.0.in.i.i, %i.g
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %.sroa.0.0.in.i.i = select i1 %i.j, ptr %i.l, ptr %i.i
  %.sroa.0.0.i.i = load i16, ptr %.sroa.0.0.in.i.i, align 1
  %1 = and i16 %.sroa.0.0.i.i, 256
  %.not = icmp eq i16 %1, 0
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.0.in.i.i10 = select i1 %i.o, ptr %i.q, ptr %i.n
  %.0.i.i11 = load i32, ptr %.0.in.i.i10, align 4
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp eq i32 %.0.i.i11, %i.r
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.0.in.i.i12 = select i1 %i.v, ptr %i.x, ptr %i.u
  %.0.i.i13 = load i32, ptr %.0.in.i.i12, align 4
  %i.y = load i32, ptr %i.x, align 4
  %i.z = icmp eq i32 %.0.i.i13, %i.y
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.0.in.i.i14 = select i1 %i.ac, ptr %i.ae, ptr %i.ab
  %.0.i.i15 = load i64, ptr %.0.in.i.i14, align 8
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = icmp eq i64 %.0.i.i15, %i.af
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.0.in.i.i16 = select i1 %i.aj, ptr %i.al, ptr %i.ai
  %.0.i.i17 = load double, ptr %.0.in.i.i16, align 8
  %i.am = load double, ptr %i.al, align 8
  %i.an = fcmp oeq double %.0.i.i17, %i.am
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.0.in.i.i18 = select i1 %i.aq, ptr %i.as, ptr %i.ap
  %.0.i.i19 = load i64, ptr %.0.in.i.i18, align 8
  %i.at = load i64, ptr %i.as, align 8
  %i.au = icmp eq i64 %.0.i.i19, %i.at
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.0.in.i.i20 = select i1 %i.ax, ptr %i.az, ptr %i.aw
  %.0.i.i21 = load ptr, ptr %.0.in.i.i20, align 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null                 ; 2 uses
  %i.bc = icmp eq ptr %.0.i.i21, null             ; 2 uses
  %brmerge = select i1 %i.bb, i1 true, i1 %i.bc
  %.mux = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %brmerge, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0.i.i21, ptr noundef nonnull dereferenceable(1) %i.ba) #29
  %i.be = icmp eq i32 %i.bd, 0
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.27) #32
  unreachable

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.1 = phi i1 [ %.not22, %bb.b ], [ %.not, %bb.c ], [ %i.s, %bb.d ], [ %i.z, %bb.e ], [ %i.ag, %bb.f ], [ %i.an, %bb.g ], [ %i.au, %bb.h ], [ %.mux, %bb.i ], [ %i.be, %bb.j ]
  ret i1 %.1
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4Flag25ReleaseDynamicAllocationsEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %.not = icmp eq i32 %i.a, 7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i8, ptr %i.b, align 8, !range !9
  %i.d = trunc nuw i8 %i.c to i1
  %or.cond = select i1 %.not, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN2v88internal11DeleteArrayIKcEEvPT_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %.0.in.i.i = select i1 %i.g, ptr %i.i, ptr %i.f
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 2 uses
  %i.j = icmp eq ptr %.0.i.i, null
  br i1 %i.j, label %_ZN2v88internal11DeleteArrayIKcEEvPT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %.0.i.i) #31
  br label %_ZN2v88internal11DeleteArrayIKcEEvPT_.exit

_ZN2v88internal11DeleteArrayIKcEEvPT_.exit:       ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { ptr, i64 } @_ZN2v88internal5FlagsEv() local_unnamed_addr #0 {
bb.a:
  ret { ptr, i64 } { ptr @_ZN2v88internal5flagsE, i64 900 }
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN2v88internal10GetFlagMapEv() local_unnamed_addr #5 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN2v88internal10GetFlagMapEvE6object acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2v88internal10GetFlagMapEvE6object) #30
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v84base11LeakyObjectINS_8internal13FlagMapByNameEEC2IJEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(7200) @_ZZN2v88internal10GetFlagMapEvE6object)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN2v88internal10GetFlagMapEvE6object) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN2v88internal10GetFlagMapEvE6object
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v84base11LeakyObjectINS_8internal13FlagMapByNameEEC2IJEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(7200) %0) unnamed_addr #5 comdat align 2 {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.2, %vector.body ] ; 4 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next.2, %vector.body ] ; 7 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.a = getelementptr inbounds nuw [56 x i8], ptr @_ZN2v88internal5flagsE, <2 x i64> %vec.ind
  %i.b = getelementptr inbounds nuw [56 x i8], ptr @_ZN2v88internal5flagsE, <2 x i64> %step.add
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <2 x ptr> %i.a, ptr %i.c, align 8
  store <2 x ptr> %i.b, ptr %i.d, align 8
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %step.add.1 = add nuw <2 x i64> %vec.ind, splat (i64 6)
  %i.e = getelementptr inbounds nuw [56 x i8], ptr @_ZN2v88internal5flagsE, <2 x i64> %vec.ind.next
  %i.f = getelementptr inbounds nuw [56 x i8], ptr @_ZN2v88internal5flagsE, <2 x i64> %step.add.1
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store <2 x ptr> %i.e, ptr %i.h, align 8
  store <2 x ptr> %i.f, ptr %i.i, align 8
  %vec.ind.next.1 = add nuw <2 x i64> %vec.ind, splat (i64 8)
  %step.add.2 = add nuw <2 x i64> %vec.ind, splat (i64 10)
  %i.j = getelementptr inbounds nuw [56 x i8], ptr @_ZN2v88internal5flagsE, <2 x i64> %vec.ind.next.1
  %i.k = getelementptr inbounds nuw [56 x i8], ptr @_ZN2v88internal5flagsE, <2 x i64> %step.add.2
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  store <2 x ptr> %i.j, ptr %i.m, align 8
  store <2 x ptr> %i.k, ptr %i.n, align 8
  %index.next.2 = add nuw nsw i64 %index, 12      ; 2 uses
  %vec.ind.next.2 = add nuw <2 x i64> %vec.ind, splat (i64 12)
  %i.o = icmp eq i64 %index.next.2, 900
  br i1 %i.o, label %_ZN2v88internal13FlagMapByNameC2Ev.exit, label %vector.body, !llvm.loop !25

_ZN2v88internal13FlagMapByNameC2Ev.exit:          ; preds = %vector.body
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 7200 ; 2 uses
  tail call void @_ZSt16__introsort_loopIPPN2v88internal4FlagElN9__gnu_cxx5__ops15_Iter_comp_iterINS1_8FlagLessEEEEvT_SA_T0_T1_(ptr noundef nonnull align 8 dereferenceable(7200) %0, ptr noundef nonnull %i.p, i64 noundef 18)
  tail call void @_ZSt22__final_insertion_sortIPPN2v88internal4FlagEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_8FlagLessEEEEvT_SA_T0_(ptr noundef nonnull align 8 dereferenceable(7200) %0, ptr noundef nonnull %i.p)
  ret void
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN2v88internal25FindImplicationFlagByNameEPKc(ptr noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN2v88internal10GetFlagMapEvE6object acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZSt9__advanceISt16reverse_iteratorIPPN2v88internal4FlagEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader, !prof !24

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2v88internal10GetFlagMapEvE6object) #30
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZSt9__advanceISt16reverse_iteratorIPPN2v88internal4FlagEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v84base11LeakyObjectINS_8internal13FlagMapByNameEEC2IJEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(7200) @_ZZN2v88internal10GetFlagMapEvE6object)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN2v88internal10GetFlagMapEvE6object) #30
  br label %_ZSt9__advanceISt16reverse_iteratorIPPN2v88internal4FlagEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader

_ZSt9__advanceISt16reverse_iteratorIPPN2v88internal4FlagEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader: ; preds = %bb.a, %bb.b, %bb.c
  br label %_ZSt9__advanceISt16reverse_iteratorIPPN2v88internal4FlagEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceISt16reverse_iteratorIPPN2v88internal4FlagEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %_ZSt9__advanceISt16reverse_iteratorIPPN2v88internal4FlagEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN2v88internal15FlagNameGreaterEEclISt16reverse_iteratorIPPNS3_4FlagEEKPKcEEbT_RT0_.exit.thread.i.i.i
  %i.d = phi ptr [ %i.x, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN2v88internal15FlagNameGreaterEEclISt16reverse_iteratorIPPNS3_4FlagEEKPKcEEbT_RT0_.exit.thread.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal10GetFlagMapEvE6object, i64 7200), %_ZSt9__advanceISt16reverse_iteratorIPPN2v88internal4FlagEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader ] ; 3 uses
  %.013.i.i.i = phi i64 [ %.1.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN2v88internal15FlagNameGreaterEEclISt16reverse_iteratorIPPNS3_4FlagEEKPKcEEbT_RT0_.exit.thread.i.i.i ], [ 900, %_ZSt9__advanceISt16reverse_iteratorIPPN2v88internal4FlagEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.preheader ] ; 2 uses
  %i.e = lshr i64 %.013.i.i.i, 1                  ; 4 uses
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !noalias !28
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !28
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %_ZSt9__advanceISt16reverse_iteratorIPPN2v88internal4FlagEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %bb.f ], [ 0, %_ZSt9__advanceISt16reverse_iteratorIPPN2v88internal4FlagEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.i.i.i.i.i.i
  %i.m = load i8, ptr %i.l, align 1, !noalias !28 ; 2 uses
  %i.n = icmp eq i8 %i.m, 95
  %i.o = select i1 %i.n, i8 45, i8 %i.m           ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i.i.i.i.i.i
  %i.q = load i8, ptr %i.p, align 1, !noalias !28 ; 2 uses
  %i.r = icmp eq i8 %i.q, 95
  %i.s = select i1 %i.r, i8 45, i8 %i.q           ; 2 uses
  %i.t = icmp slt i8 %i.o, %i.s
  br i1 %i.t, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN2v88internal15FlagNameGreaterEEclISt16reverse_iteratorIPPNS3_4FlagEEKPKcEEbT_RT0_.exit.thread.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp sgt i8 %i.o, %i.s
  br i1 %i.u, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN2v88internal15FlagNameGreaterEEclISt16reverse_iteratorIPPNS3_4FlagEEKPKcEEbT_RT0_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1
  %.not.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN2v88internal15FlagNameGreaterEEclISt16reverse_iteratorIPPNS3_4FlagEEKPKcEEbT_RT0_.exit.thread.i.i.i, label %bb.d, !llvm.loop !5

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN2v88internal15FlagNameGreaterEEclISt16reverse_iteratorIPPNS3_4FlagEEKPKcEEbT_RT0_.exit.i.i.i: ; preds = %bb.e
  %i.v = xor i64 %i.e, -1
  %i.w = add nsw i64 %.013.i.i.i, %i.v
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN2v88internal15FlagNameGreaterEEclISt16reverse_iteratorIPPNS3_4FlagEEKPKcEEbT_RT0_.exit.thread.i.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN2v88internal15FlagNameGreaterEEclISt16reverse_iteratorIPPNS3_4FlagEEKPKcEEbT_RT0_.exit.thread.i.i.i: ; preds = %bb.f, %bb.d, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN2v88internal15FlagNameGreaterEEclISt16reverse_iteratorIPPNS3_4FlagEEKPKcEEbT_RT0_.exit.i.i.i
  %i.x = phi ptr [ %i.h, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN2v88internal15FlagNameGreaterEEclISt16reverse_iteratorIPPNS3_4FlagEEKPKcEEbT_RT0_.exit.i.i.i ], [ %i.d, %bb.d ], [ %i.d, %bb.f ] ; 3 uses
  %.1.i.i.i = phi i64 [ %i.w, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN2v88internal15FlagNameGreaterEEclISt16reverse_iteratorIPPNS3_4FlagEEKPKcEEbT_RT0_.exit.i.i.i ], [ %i.e, %bb.d ], [ %i.e, %bb.f ] ; 2 uses
  %i.y = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.y, label %_ZSt9__advanceISt16reverse_iteratorIPPN2v88internal4FlagEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundISt16reverse_iteratorIPPN2v88internal4FlagEEPKcNS2_15FlagNameGreaterEET_SA_SA_RKT0_T1_.exit.i, !llvm.loop !33

_ZSt11lower_boundISt16reverse_iteratorIPPN2v88internal4FlagEEPKcNS2_15FlagNameGreaterEET_SA_SA_RKT0_T1_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN2v88internal15FlagNameGreaterEEclISt16reverse_iteratorIPPNS3_4FlagEEKPKcEEbT_RT0_.exit.thread.i.i.i
  %i.z = icmp eq ptr %i.x, @_ZZN2v88internal10GetFlagMapEvE6object
  br i1 %i.z, label %_ZN2v88internal13FlagMapByName7GetFlagEPKc.exit.thread, label %_ZN2v88internal13FlagMapByName7GetFlagEPKc.exit

_ZN2v88internal13FlagMapByName7GetFlagEPKc.exit:  ; preds = %_ZSt11lower_boundISt16reverse_iteratorIPPN2v88internal4FlagEEPKcNS2_15FlagNameGreaterEET_SA_SA_RKT0_T1_.exit.i
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 -8
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %_ZN2v88internal13FlagMapByName7GetFlagEPKc.exit.thread, label %bb.g, !prof !34

_ZN2v88internal13FlagMapByName7GetFlagEPKc.exit.thread: ; preds = %_ZSt11lower_boundISt16reverse_iteratorIPPN2v88internal4FlagEEPKcNS2_15FlagNameGreaterEET_SA_SA_RKT0_T1_.exit.i, %_ZN2v88internal13FlagMapByName7GetFlagEPKc.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1806, ptr noundef nonnull @.str.1807) #32
  unreachable

bb.g:                                             ; preds = %_ZN2v88internal13FlagMapByName7GetFlagEPKc.exit
  ret ptr %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal14FindFlagByNameEPKc(ptr noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
end_hunk_0
