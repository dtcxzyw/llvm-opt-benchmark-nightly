Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/measfmt?download=true
inline.NumInlined: 243
inline.NumDeleted: 109
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6icu_7813MeasureFormat20createCurrencyFormatERKNS_6LocaleER10UErrorCode:bb.a

_ZN6icu_7812LocalPointerINS_14CurrencyFormatEED2Ev.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.e ], [ null, %bb.d ], [ %i.c, %bb.c ]
  ret ptr %.0
}

declare void @_ZN6icu_7814CurrencyFormatC1ERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6icu_7813MeasureFormat20createCurrencyFormatER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !28
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7813MeasureFormat20createCurrencyFormatERKNS_6LocaleER10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786Locale10getDefaultEv()
  %i.d = load i32, ptr %0, align 4, !tbaa !28
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN6icu_7813MeasureFormat20createCurrencyFormatERKNS_6LocaleER10UErrorCode.exit

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 128) #17 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6icu_7814CurrencyFormatC1ERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %0)
          to label %_ZN6icu_7813MeasureFormat20createCurrencyFormatERKNS_6LocaleER10UErrorCode.exit unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.h = load i32, ptr %0, align 4
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %_ZN6icu_7813MeasureFormat20createCurrencyFormatERKNS_6LocaleER10UErrorCode.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 7, ptr %0, align 4, !tbaa !28
  br label %_ZN6icu_7813MeasureFormat20createCurrencyFormatERKNS_6LocaleER10UErrorCode.exit

bb.g:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.f) #17
  resume { ptr, i32 } %i.j

_ZN6icu_7813MeasureFormat20createCurrencyFormatERKNS_6LocaleER10UErrorCode.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.f ], [ null, %bb.e ], [ %i.f, %bb.d ]
  ret ptr %.0
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786Locale10getDefaultEv() local_unnamed_addr #7

declare noundef ptr @_ZNK6icu_787UObject17getDynamicClassIDEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Format6formatERKNS_11FormattableERNS_13UnicodeStringEPNS_21FieldPositionIteratorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6icu_78L31loadNumericDateFormatterPatternEPK15UResourceBundlePKcR10UErrorCode(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 10)) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %4 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 6 uses
  %5 = alloca %"class.icu_78::CharString", align 8 ; 12 uses
  %6 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %7 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %8 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %9 = alloca %"class.icu_78::internal::LocalOpenPointer", align 8 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i16 2, ptr %i.b, align 8, !tbaa !59
  %i.c = load i32, ptr %3, align 4, !tbaa !28
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.z

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 13 ; 2 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !94
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 40, ptr %i.f, align 8, !tbaa !116
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i8 0, ptr %i.g, align 4, !tbaa !95
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i32 0, ptr %i.h, align 8, !tbaa !118
  store i8 0, ptr %i.e, align 1, !tbaa !59
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull @.str.4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %6, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %5, ptr noundef %i.i, i32 noundef %i.k, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit unwind label %bb.h

_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit: ; preds = %bb.c
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull @.str.5)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit
  %i.m = load ptr, ptr %7, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = load i32, ptr %i.n, align 8
  %i.p = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.l, ptr noundef %i.m, i32 noundef %i.o, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit35 unwind label %bb.h

_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit35: ; preds = %bb.d
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef %2)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit35
  %i.q = load ptr, ptr %8, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.s = load i32, ptr %i.r, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.p, ptr noundef %i.q, i32 noundef %i.s, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.f unwind label %bb.h       ; 0 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.u = load ptr, ptr %5, align 8, !tbaa !94
  %i.v = invoke ptr @ures_getByKeyWithFallback_78(ptr noundef %1, ptr noundef %i.u, ptr noundef null, ptr noundef nonnull %3)
          to label %bb.g unwind label %bb.i       ; 3 uses

bb.g:                                             ; preds = %bb.f
  store ptr %i.v, ptr %9, align 8, !tbaa !26
  %i.w = load i32, ptr %3, align 4, !tbaa !28
  %i.x = icmp slt i32 %i.w, 1
  br i1 %i.x, label %bb.j, label %bb.s

bb.h:                                             ; preds = %bb.e, %bb.d, %bb.c, %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit35, %_ZN6icu_7810CharString6appendENS_11StringPieceER10UErrorCode.exit, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.i:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4, !tbaa !88
  %i.aa = invoke ptr @ures_getString_78(ptr noundef %i.v, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.j
  %i.ab = load i32, ptr %3, align 4, !tbaa !28
  %i.ac = icmp slt i32 %i.ab, 1
  br i1 %i.ac, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.noexc
  store ptr %i.aa, ptr %4, align 8, !tbaa !57
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !88
  %i.ae = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 noundef signext 1, ptr noundef nonnull align 8 %4, i32 noundef %i.ad)
          to label %bb.l unwind label %bb.m       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr %4, align 8, !tbaa !57
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.af) #17, !srcloc !58
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %4, align 8, !tbaa !57
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ah) #17, !srcloc !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %.body

bb.n:                                             ; preds = %.noexc, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ai = load i16, ptr %i.b, align 8, !tbaa !59  ; 2 uses
  %i.aj = icmp slt i16 %i.ai, 0
  %i.ak = ashr i16 %i.ai, 5
  %i.al = sext i16 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = select i1 %i.aj, i32 %i.an, i32 %i.al   ; 6 uses
  %i.ap = invoke noundef ptr @_ZN6icu_7813UnicodeString9getBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.ao)
          to label %.preheader unwind label %bb.p ; 21 uses

.preheader:                                       ; preds = %bb.n
  %i.aq = icmp sgt i32 %i.ao, 0
  br i1 %i.aq, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.ao to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.ao, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check40 = icmp ult i32 %i.ao, 16
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ar = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue71
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue71 ] ; 17 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %index ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <8 x i16>, ptr %i.as, align 2, !tbaa !84
  %wide.load41 = load <8 x i16>, ptr %i.at, align 2, !tbaa !84
  %i.au = icmp eq <8 x i16> %wide.load, splat (i16 104) ; 8 uses
  %i.av = icmp eq <8 x i16> %wide.load41, splat (i16 104) ; 8 uses
  %i.aw = extractelement <8 x i1> %i.au, i64 0
  br i1 %i.aw, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i16 72, ptr %i.as, align 2, !tbaa !84
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ax = extractelement <8 x i1> %i.au, i64 1
  br i1 %i.ax, label %pred.store.if42, label %pred.store.continue43

pred.store.if42:                                  ; preds = %pred.store.continue
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %index
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  store i16 72, ptr %i.az, align 2, !tbaa !84
  br label %pred.store.continue43

pred.store.continue43:                            ; preds = %pred.store.if42, %pred.store.continue
  %i.ba = extractelement <8 x i1> %i.au, i64 2
  br i1 %i.ba, label %pred.store.if44, label %pred.store.continue45

pred.store.if44:                                  ; preds = %pred.store.continue43
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %index
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store i16 72, ptr %i.bc, align 2, !tbaa !84
  br label %pred.store.continue45

pred.store.continue45:                            ; preds = %pred.store.if44, %pred.store.continue43
  %i.bd = extractelement <8 x i1> %i.au, i64 3
  br i1 %i.bd, label %pred.store.if46, label %pred.store.continue47

pred.store.if46:                                  ; preds = %pred.store.continue45
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %index
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 6
  store i16 72, ptr %i.bf, align 2, !tbaa !84
  br label %pred.store.continue47

pred.store.continue47:                            ; preds = %pred.store.if46, %pred.store.continue45
  %i.bg = extractelement <8 x i1> %i.au, i64 4
  br i1 %i.bg, label %pred.store.if48, label %pred.store.continue49

pred.store.if48:                                  ; preds = %pred.store.continue47
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %index
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i16 72, ptr %i.bi, align 2, !tbaa !84
  br label %pred.store.continue49

pred.store.continue49:                            ; preds = %pred.store.if48, %pred.store.continue47
  %i.bj = extractelement <8 x i1> %i.au, i64 5
  br i1 %i.bj, label %pred.store.if50, label %pred.store.continue51

pred.store.if50:                                  ; preds = %pred.store.continue49
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %index
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 10
  store i16 72, ptr %i.bl, align 2, !tbaa !84
  br label %pred.store.continue51

pred.store.continue51:                            ; preds = %pred.store.if50, %pred.store.continue49
  %i.bm = extractelement <8 x i1> %i.au, i64 6
  br i1 %i.bm, label %pred.store.if52, label %pred.store.continue53

pred.store.if52:                                  ; preds = %pred.store.continue51
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %index
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i16 72, ptr %i.bo, align 2, !tbaa !84
  br label %pred.store.continue53

pred.store.continue53:                            ; preds = %pred.store.if52, %pred.store.continue51
  %i.bp = extractelement <8 x i1> %i.au, i64 7
  br i1 %i.bp, label %pred.store.if54, label %pred.store.continue55

pred.store.if54:                                  ; preds = %pred.store.continue53
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %index
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 14
  store i16 72, ptr %i.br, align 2, !tbaa !84
  br label %pred.store.continue55

pred.store.continue55:                            ; preds = %pred.store.if54, %pred.store.continue53
  %i.bs = extractelement <8 x i1> %i.av, i64 0
  br i1 %i.bs, label %pred.store.if56, label %pred.store.continue57

pred.store.if56:                                  ; preds = %pred.store.continue55
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %index
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i16 72, ptr %i.bu, align 2, !tbaa !84
  br label %pred.store.continue57

pred.store.continue57:                            ; preds = %pred.store.if56, %pred.store.continue55
  %i.bv = extractelement <8 x i1> %i.av, i64 1
  br i1 %i.bv, label %pred.store.if58, label %pred.store.continue59

pred.store.if58:                                  ; preds = %pred.store.continue57
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %index
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 18
  store i16 72, ptr %i.bx, align 2, !tbaa !84
  br label %pred.store.continue59

pred.store.continue59:                            ; preds = %pred.store.if58, %pred.store.continue57
  %i.by = extractelement <8 x i1> %i.av, i64 2
  br i1 %i.by, label %pred.store.if60, label %pred.store.continue61

pred.store.if60:                                  ; preds = %pred.store.continue59
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %index
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 20
  store i16 72, ptr %i.ca, align 2, !tbaa !84
  br label %pred.store.continue61

pred.store.continue61:                            ; preds = %pred.store.if60, %pred.store.continue59
  %i.cb = extractelement <8 x i1> %i.av, i64 3
  br i1 %i.cb, label %pred.store.if62, label %pred.store.continue63

pred.store.if62:                                  ; preds = %pred.store.continue61
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %index
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 22
  store i16 72, ptr %i.cd, align 2, !tbaa !84
  br label %pred.store.continue63

pred.store.continue63:                            ; preds = %pred.store.if62, %pred.store.continue61
  %i.ce = extractelement <8 x i1> %i.av, i64 4
  br i1 %i.ce, label %pred.store.if64, label %pred.store.continue65

pred.store.if64:                                  ; preds = %pred.store.continue63
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %index
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store i16 72, ptr %i.cg, align 2, !tbaa !84
  br label %pred.store.continue65

pred.store.continue65:                            ; preds = %pred.store.if64, %pred.store.continue63
  %i.ch = extractelement <8 x i1> %i.av, i64 5
  br i1 %i.ch, label %pred.store.if66, label %pred.store.continue67

pred.store.if66:                                  ; preds = %pred.store.continue65
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %index
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 26
  store i16 72, ptr %i.cj, align 2, !tbaa !84
  br label %pred.store.continue67

pred.store.continue67:                            ; preds = %pred.store.if66, %pred.store.continue65
  %i.ck = extractelement <8 x i1> %i.av, i64 6
  br i1 %i.ck, label %pred.store.if68, label %pred.store.continue69

pred.store.if68:                                  ; preds = %pred.store.continue67
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %index
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 28
  store i16 72, ptr %i.cm, align 2, !tbaa !84
  br label %pred.store.continue69

pred.store.continue69:                            ; preds = %pred.store.if68, %pred.store.continue67
  %i.cn = extractelement <8 x i1> %i.av, i64 7
  br i1 %i.cn, label %pred.store.if70, label %pred.store.continue71

pred.store.if70:                                  ; preds = %pred.store.continue69
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %index
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 30
  store i16 72, ptr %i.cp, align 2, !tbaa !84
  br label %pred.store.continue71

pred.store.continue71:                            ; preds = %pred.store.if70, %pred.store.continue69
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %pred.store.continue71
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ar, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !121

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec72 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue82, %vec.epilog.ph
  %index73 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next83, %pred.store.continue82 ] ; 5 uses
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %index73 ; 2 uses
  %wide.load74 = load <4 x i16>, ptr %i.cr, align 2, !tbaa !84
  %i.cs = icmp eq <4 x i16> %wide.load74, splat (i16 104) ; 4 uses
  %i.ct = extractelement <4 x i1> %i.cs, i64 0
  br i1 %i.ct, label %pred.store.if75, label %pred.store.continue76

pred.store.if75:                                  ; preds = %vec.epilog.vector.body
  store i16 72, ptr %i.cr, align 2, !tbaa !84
  br label %pred.store.continue76

pred.store.continue76:                            ; preds = %pred.store.if75, %vec.epilog.vector.body
  %i.cu = extractelement <4 x i1> %i.cs, i64 1
  br i1 %i.cu, label %pred.store.if77, label %pred.store.continue78

pred.store.if77:                                  ; preds = %pred.store.continue76
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %index73
end_hunk_0
