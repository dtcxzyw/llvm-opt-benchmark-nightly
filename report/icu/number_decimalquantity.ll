Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/number_decimalquantity?download=true
inline.NumInlined: 251
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6icu_786number4impl15DecimalQuantity9setToLongEl:bb.a

_ZN6icu_786number4impl15DecimalQuantity12setBcdToZeroEv.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.f, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.i, align 8, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.j, align 4, !tbaa !33
  %or.cond = icmp ugt i64 %1, -9223372036854775808
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.g, i8 0, i64 10, i1 false)
  br i1 %or.cond, label %.thread, label %bb.c

.thread:                                          ; preds = %_ZN6icu_786number4impl15DecimalQuantity12setBcdToZeroEv.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %i.k, align 4, !tbaa !36
  %i.l = sub nsw i64 0, %1
  br label %bb.d

bb.c:                                             ; preds = %_ZN6icu_786number4impl15DecimalQuantity12setBcdToZeroEv.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %.09 = phi i64 [ %i.l, %.thread ], [ %1, %bb.c ]
  tail call void @_ZN6icu_786number4impl15DecimalQuantity10_setToLongEl(ptr noundef nonnull align 8 dereferenceable(66) %0, i64 noundef %.09)
  tail call void @_ZN6icu_786number4impl15DecimalQuantity7compactEv(ptr noundef nonnull align 8 dereferenceable(66) %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6icu_786number4impl15DecimalQuantity15adjustMagnitudeEi(ptr noundef nonnull align 8 dereferenceable(66) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !29
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !28
  %i.f = tail call signext i8 @uprv_add32_overflow_78(i32 noundef %i.e, i32 noundef %1, ptr noundef nonnull %i.d)
  %i.g = icmp ne i8 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !32
  %i.j = tail call signext i8 @uprv_add32_overflow_78(i32 noundef %i.i, i32 noundef %1, ptr noundef nonnull %i.h)
  %i.k = icmp ne i8 %i.j, 0
  %i.l = select i1 %i.k, i1 true, i1 %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.d, align 4, !tbaa !28
  %i.n = load i32, ptr %i.b, align 8, !tbaa !29
  %i.o = call signext i8 @uprv_add32_overflow_78(i32 noundef %i.m, i32 noundef %i.n, ptr noundef nonnull %i.a)
  %i.p = icmp ne i8 %i.o, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = phi i1 [ true, %bb.b ], [ %i.p, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i1 [ %i.q, %bb.d ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN6icu_786number4impl6DecNumC1Ev(ptr noundef nonnull align 8 dereferenceable(92)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(92) ptr @_ZNK6icu_786number4impl15DecimalQuantity8toDecNumERNS1_6DecNumER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %0, ptr noundef nonnull returned align 8 dereferenceable(92) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::MaybeStackArray.2", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29   ; 4 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_786number4impl6DecNum5setToEPKcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull @.str.2, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.d = load i32, ptr %2, align 4, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 13
  store ptr %i.e, ptr %3, align 8, !tbaa !48
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 20, ptr %i.f, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 4 uses
  store i8 0, ptr %i.g, align 4, !tbaa !49
  %i.h = icmp slt i32 %i.d, 1
  %i.i = icmp sgt i32 %i.b, 20
  %or.cond.i = and i1 %i.i, %i.h
  br i1 %or.cond.i, label %bb.d, label %_ZN6icu_7815MaybeStackArrayIhLi20EEC2Ei10UErrorCode.exit

bb.d:                                             ; preds = %bb.c
  %i.j = zext nneg i32 %i.b to i64
  %i.k = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.j) #26
          to label %.noexc.i unwind label %bb.g   ; 2 uses

.noexc.i:                                         ; preds = %bb.d
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIhLi20EEC2Ei10UErrorCode.exit, label %bb.e

bb.e:                                             ; preds = %.noexc.i
  %i.l = load i8, ptr %i.g, align 4, !tbaa !49
  %.not.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7815MaybeStackArrayIhLi20EE12releaseArrayEv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %3, align 8, !tbaa !48
  invoke void @uprv_free_78(ptr noundef %i.m)
          to label %_ZN6icu_7815MaybeStackArrayIhLi20EE12releaseArrayEv.exit.i.i unwind label %bb.g

_ZN6icu_7815MaybeStackArrayIhLi20EE12releaseArrayEv.exit.i.i: ; preds = %bb.f, %bb.e
  store ptr %i.k, ptr %3, align 8, !tbaa !48
  store i32 %i.b, ptr %i.f, align 8, !tbaa !64
  store i8 1, ptr %i.g, align 4, !tbaa !49
  br label %_ZN6icu_7815MaybeStackArrayIhLi20EEC2Ei10UErrorCode.exit

common.resume:                                    ; preds = %bb.h, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.u, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7815MaybeStackArrayIhLi20EED2Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(33) %3) #25
  br label %common.resume

_ZN6icu_7815MaybeStackArrayIhLi20EEC2Ei10UErrorCode.exit: ; preds = %bb.c, %.noexc.i, %_ZN6icu_7815MaybeStackArrayIhLi20EE12releaseArrayEv.exit.i.i
  %i.o = load i32, ptr %2, align 4, !tbaa !40
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %.preheader, label %bb.m

.preheader:                                       ; preds = %_ZN6icu_7815MaybeStackArrayIhLi20EEC2Ei10UErrorCode.exit
  %i.q = load i32, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7815MaybeStackArrayIhLi20EED2Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(33) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %common.resume

._crit_edge:                                      ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit, %.preheader
  %.lcssa = phi i32 [ %i.q, %.preheader ], [ %i.as, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit ]
  %i.v = load ptr, ptr %3, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.z = load i8, ptr %i.y, align 4, !tbaa !36
  %i.aa = trunc i8 %i.z to i1
  invoke void @_ZN6icu_786number4impl6DecNum5setToEPKhiibR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef %i.v, i32 noundef %.lcssa, i32 noundef %i.x, i1 noundef zeroext %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.m unwind label %bb.h

bb.i:                                             ; preds = %.lr.ph, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit ] ; 5 uses
  %i.ab = phi i32 [ %i.q, %.lr.ph ], [ %i.as, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit ]
  %i.ac = load i8, ptr %i.s, align 8, !tbaa !23, !range !25, !noundef !26
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !27
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit

bb.k:                                             ; preds = %bb.i
  %or.cond.i17 = icmp samesign ugt i64 %indvars.iv, 15
  br i1 %or.cond.i17, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load i64, ptr %i.t, align 8, !tbaa !27
  %i.ai = shl nuw nsw i64 %indvars.iv, 2
  %i.aj = lshr i64 %i.ah, %i.ai
  %i.ak = trunc i64 %i.aj to i8
  %i.al = and i8 %i.ak, 15
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit: ; preds = %bb.j, %bb.k, %bb.l
  %.0.i = phi i8 [ %i.al, %bb.l ], [ %i.ag, %bb.j ], [ 0, %bb.k ]
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = xor i32 %i.am, -1
  %i.ao = add i32 %i.ab, %i.an
  %i.ap = sext i32 %i.ao to i64
  %i.aq = load ptr, ptr %3, align 8, !tbaa !48
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.ap
  store i8 %.0.i, ptr %i.ar, align 1, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = load i32, ptr %i.a, align 8, !tbaa !29  ; 3 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp slt i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %bb.i, label %._crit_edge, !llvm.loop !63

bb.m:                                             ; preds = %._crit_edge, %_ZN6icu_7815MaybeStackArrayIhLi20EEC2Ei10UErrorCode.exit
  %i.av = load i8, ptr %i.g, align 4, !tbaa !49
  %.not.i.i18 = icmp eq i8 %i.av, 0
  br i1 %.not.i.i18, label %_ZN6icu_7815MaybeStackArrayIhLi20EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = load ptr, ptr %3, align 8, !tbaa !48
  invoke void @uprv_free_78(ptr noundef %i.aw)
          to label %_ZN6icu_7815MaybeStackArrayIhLi20EED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #24
  unreachable

_ZN6icu_7815MaybeStackArrayIhLi20EED2Ev.exit:     ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.p

bb.p:                                             ; preds = %_ZN6icu_7815MaybeStackArrayIhLi20EED2Ev.exit, %bb.b
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_786number4impl15DecimalQuantity8divideByERKNS1_6DecNumER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(66) %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::number::impl::DecNum", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN6icu_786number4impl6DecNumC1Ev(ptr noundef nonnull align 8 dereferenceable(92) %3)
  %i.d = invoke noundef nonnull align 8 dereferenceable(92) ptr @_ZNK6icu_786number4impl15DecimalQuantity8toDecNumERNS1_6DecNumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef nonnull align 8 dereferenceable(92) %3, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %2, align 4, !tbaa !40
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.e, label %_ZN6icu_786number4impl15DecimalQuantity11setToDecNumERKNS1_6DecNumER10UErrorCode.exit

bb.d:                                             ; preds = %_ZN6icu_786number4impl15DecimalQuantity12setBcdToZeroEv.exit.i, %bb.h, %bb.e, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_786number4impl6DecNumD2Ev(ptr noundef nonnull align 8 dead_on_return(92) dereferenceable(92) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.g

bb.e:                                             ; preds = %bb.c
  invoke void @_ZN6icu_786number4impl6DecNum8divideByERKS2_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(92) %3, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.h = load i32, ptr %2, align 4, !tbaa !40
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.g, label %_ZN6icu_786number4impl15DecimalQuantity11setToDecNumERKNS1_6DecNumER10UErrorCode.exit

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !23, !range !25, !noundef !26
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.h, label %_ZN6icu_786number4impl15DecimalQuantity12setBcdToZeroEv.exit.i

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27
  invoke void @uprv_free_78(ptr noundef %i.n)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.h
  store i8 0, ptr %i.j, align 8, !tbaa !23
  br label %_ZN6icu_786number4impl15DecimalQuantity12setBcdToZeroEv.exit.i

_ZN6icu_786number4impl15DecimalQuantity12setBcdToZeroEv.exit.i: ; preds = %.noexc, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.o, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.r, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.s, align 4, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.p, i8 0, i64 10, i1 false)
  invoke void @_ZN6icu_786number4impl15DecimalQuantity12_setToDecNumERKNS1_6DecNumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef nonnull align 8 dereferenceable(92) %3, ptr noundef nonnull readonly align 4 dereferenceable(4) %2)
          to label %_ZN6icu_786number4impl15DecimalQuantity11setToDecNumERKNS1_6DecNumER10UErrorCode.exit unwind label %bb.d

_ZN6icu_786number4impl15DecimalQuantity11setToDecNumERKNS1_6DecNumER10UErrorCode.exit: ; preds = %_ZN6icu_786number4impl15DecimalQuantity12setBcdToZeroEv.exit.i, %bb.f, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.u = load i8, ptr %i.t, align 4, !tbaa !44
  %.not.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i, label %_ZN6icu_786number4impl6DecNumD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN6icu_786number4impl15DecimalQuantity11setToDecNumERKNS1_6DecNumER10UErrorCode.exit
  %i.v = load ptr, ptr %3, align 8, !tbaa !45
  invoke void @uprv_free_78(ptr noundef %i.v)
          to label %_ZN6icu_786number4impl6DecNumD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #24
  unreachable

_ZN6icu_786number4impl6DecNumD2Ev.exit:           ; preds = %_ZN6icu_786number4impl15DecimalQuantity11setToDecNumERKNS1_6DecNumER10UErrorCode.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZN6icu_786number4impl6DecNumD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_786number4impl15DecimalQuantity16roundToMagnitudeEi25UNumberFormatRoundingModeR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(66) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN6icu_786number4impl15DecimalQuantity16roundToMagnitudeEi25UNumberFormatRoundingModebR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(66) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext false, ptr noundef nonnull align 4 dereferenceable(4) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_786number4impl15DecimalQuantity10multiplyByERKNS1_6DecNumER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(66) %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::number::impl::DecNum", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZN6icu_786number4impl6DecNumC1Ev(ptr noundef nonnull align 8 dereferenceable(92) %3)
  %i.d = invoke noundef nonnull align 8 dereferenceable(92) ptr @_ZNK6icu_786number4impl15DecimalQuantity8toDecNumERNS1_6DecNumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef nonnull align 8 dereferenceable(92) %3, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %2, align 4, !tbaa !40
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.e, label %_ZN6icu_786number4impl15DecimalQuantity11setToDecNumERKNS1_6DecNumER10UErrorCode.exit

bb.d:                                             ; preds = %_ZN6icu_786number4impl15DecimalQuantity12setBcdToZeroEv.exit.i, %bb.h, %bb.e, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_786number4impl6DecNumD2Ev(ptr noundef nonnull align 8 dead_on_return(92) dereferenceable(92) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.g

bb.e:                                             ; preds = %bb.c
  invoke void @_ZN6icu_786number4impl6DecNum10multiplyByERKS2_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(92) %3, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.h = load i32, ptr %2, align 4, !tbaa !40
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.g, label %_ZN6icu_786number4impl15DecimalQuantity11setToDecNumERKNS1_6DecNumER10UErrorCode.exit

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !23, !range !25, !noundef !26
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.h, label %_ZN6icu_786number4impl15DecimalQuantity12setBcdToZeroEv.exit.i

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27
  invoke void @uprv_free_78(ptr noundef %i.n)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.h
  store i8 0, ptr %i.j, align 8, !tbaa !23
  br label %_ZN6icu_786number4impl15DecimalQuantity12setBcdToZeroEv.exit.i

_ZN6icu_786number4impl15DecimalQuantity12setBcdToZeroEv.exit.i: ; preds = %.noexc, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.o, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double 0.000000e+00, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.r, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.s, align 4, !tbaa !33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.p, i8 0, i64 10, i1 false)
  invoke void @_ZN6icu_786number4impl15DecimalQuantity12_setToDecNumERKNS1_6DecNumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef nonnull align 8 dereferenceable(92) %3, ptr noundef nonnull readonly align 4 dereferenceable(4) %2)
          to label %_ZN6icu_786number4impl15DecimalQuantity11setToDecNumERKNS1_6DecNumER10UErrorCode.exit unwind label %bb.d

end_hunk_0
begin_hunk_1_@_ZNK6icu_786number4impl15DecimalQuantityeqERKS2_:bb.a
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !32
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load i32, ptr %i.am, align 8, !tbaa !32
  %i.ao = icmp eq i32 %i.al, %i.an
  br label %.critedge

bb.k:                                             ; preds = %bb.h
  %i.ap = add nsw i32 %i.g, %i.b
  %..i = tail call i32 @llvm.smax.i32(i32 %i.q, i32 %i.ap) ; 2 uses
  %..i20 = tail call noundef i32 @llvm.smin.i32(i32 %i.v, i32 %i.b) ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.not18.not.not33 = icmp sgt i32 %..i, %..i20
  br i1 %.not18.not.not33, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.au = load i8, ptr %i.aq, align 8, !tbaa !23, !range !25, !noundef !26
  %i.av = trunc nuw i8 %i.au to i1
  %i.aw = load i64, ptr %i.ar, align 8
  %i.ax = load ptr, ptr %i.ar, align 8
  %i.ay = load i8, ptr %i.as, align 8, !tbaa !23, !range !25, !noundef !26
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = load i64, ptr %i.at, align 8
  %i.bb = load ptr, ptr %i.at, align 8
  br label %.lr.ph

bb.l:                                             ; preds = %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25
  %.not18.not.not = icmp sgt i32 %.034, %..i20
  br i1 %.not18.not.not, label %.lr.ph, label %.critedge, !llvm.loop !107

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %.034.in = phi i32 [ %.034, %bb.l ], [ %..i, %.lr.ph.preheader ]
  %.034 = add nsw i32 %.034.in, -1                ; 3 uses
  %i.bc = sub nsw i32 %.034, %i.b                 ; 10 uses
  br i1 %i.av, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph
  %i.bd = icmp sgt i32 %i.bc, -1
  %.not.i.i = icmp slt i32 %i.bc, %i.g
  %or.cond10.i.i = and i1 %i.bd, %.not.i.i
  br i1 %or.cond10.i.i, label %bb.n, label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit

bb.n:                                             ; preds = %bb.m
  %i.be = zext nneg i32 %i.bc to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !27
  br label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit

bb.o:                                             ; preds = %.lr.ph
  %or.cond.i.i = icmp ugt i32 %i.bc, 15
  br i1 %or.cond.i.i, label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = shl nuw nsw i32 %i.bc, 2
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = lshr i64 %i.aw, %i.bi
  %i.bk = trunc i64 %i.bj to i8
  %i.bl = and i8 %i.bk, 15
  br label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit

_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit: ; preds = %bb.m, %bb.n, %bb.o, %bb.p
  %.0.i.i = phi i8 [ %i.bl, %bb.p ], [ %i.bg, %bb.n ], [ 0, %bb.m ], [ 0, %bb.o ]
  br i1 %i.az, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit
  %i.bm = icmp sgt i32 %i.bc, -1
  %.not.i.i23 = icmp slt i32 %i.bc, %i.g
  %or.cond10.i.i24 = and i1 %i.bm, %.not.i.i23
  br i1 %or.cond10.i.i24, label %bb.r, label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25

bb.r:                                             ; preds = %bb.q
  %i.bn = zext nneg i32 %i.bc to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !27
  br label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25

bb.s:                                             ; preds = %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit
  %or.cond.i.i21 = icmp ugt i32 %i.bc, 15
  br i1 %or.cond.i.i21, label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = shl nuw nsw i32 %i.bc, 2
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = lshr i64 %i.ba, %i.br
  %i.bt = trunc i64 %i.bs to i8
  %i.bu = and i8 %i.bt, 15
  br label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25

_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25: ; preds = %bb.q, %bb.r, %bb.s, %bb.t
  %.0.i.i22 = phi i8 [ %i.bu, %bb.t ], [ %i.bp, %bb.r ], [ 0, %bb.q ], [ 0, %bb.s ]
  %.not19 = icmp eq i8 %.0.i.i, %.0.i.i22
  br i1 %.not19, label %bb.l, label %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25..critedge.loopexit_crit_edge, !llvm.loop !107

_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25..critedge.loopexit_crit_edge: ; preds = %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25
  br label %.critedge, !llvm.loop !107

.critedge:                                        ; preds = %bb.l, %bb.k, %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25..critedge.loopexit_crit_edge, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.i, %bb.j, %bb.g, %bb.f
  %.1 = phi i1 [ false, %bb.f ], [ true, %bb.g ], [ %i.ao, %bb.j ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.i ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %_ZNK6icu_786number4impl15DecimalQuantity8getDigitEi.exit25..critedge.loopexit_crit_edge ], [ true, %bb.k ], [ true, %bb.l ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_786number4impl15DecimalQuantity8toStringEv(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(66) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::MaybeStackArray.4", align 8 ; 15 uses
  %i.a = alloca [100 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %i.d = add nuw nsw i32 %i.c, 1                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 13
  store ptr %i.e, ptr %2, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 30, ptr %i.f, align 8, !tbaa !109
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  store i8 0, ptr %i.g, align 4, !tbaa !58
  %i.h = icmp sgt i32 %i.c, 29
  br i1 %i.h, label %bb.b, label %_ZN6icu_7815MaybeStackArrayIcLi30EEC2Ei10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.i = zext nneg i32 %i.d to i64
  %i.j = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.i) #26
          to label %.noexc.i unwind label %bb.e   ; 2 uses

.noexc.i:                                         ; preds = %bb.b
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIcLi30EEC2Ei10UErrorCode.exit, label %bb.c

bb.c:                                             ; preds = %.noexc.i
  %i.k = load i8, ptr %i.g, align 4, !tbaa !58
  %.not.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7815MaybeStackArrayIcLi30EE12releaseArrayEv.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %2, align 8, !tbaa !57
  invoke void @uprv_free_78(ptr noundef %i.l)
          to label %_ZN6icu_7815MaybeStackArrayIcLi30EE12releaseArrayEv.exit.i.i unwind label %bb.e

_ZN6icu_7815MaybeStackArrayIcLi30EE12releaseArrayEv.exit.i.i: ; preds = %bb.d, %bb.c
  store ptr %i.j, ptr %2, align 8, !tbaa !57
  store i32 %i.d, ptr %i.f, align 8, !tbaa !109
  store i8 1, ptr %i.g, align 4, !tbaa !58
  br label %_ZN6icu_7815MaybeStackArrayIcLi30EEC2Ei10UErrorCode.exit

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.bh, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7815MaybeStackArrayIcLi30EED2Ev(ptr noundef nonnull align 8 dead_on_return(43) dereferenceable(43) %2) #25
  br label %common.resume

_ZN6icu_7815MaybeStackArrayIcLi30EEC2Ei10UErrorCode.exit: ; preds = %bb.a, %.noexc.i, %_ZN6icu_7815MaybeStackArrayIcLi30EE12releaseArrayEv.exit.i.i
  %i.n = load i32, ptr %i.b, align 8, !tbaa !29   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %_ZN6icu_7815MaybeStackArrayIcLi30EEC2Ei10UErrorCode.exit.._crit_edge_crit_edge

_ZN6icu_7815MaybeStackArrayIcLi30EEC2Ei10UErrorCode.exit.._crit_edge_crit_edge: ; preds = %_ZN6icu_7815MaybeStackArrayIcLi30EEC2Ei10UErrorCode.exit
  %.pre = sext i32 %i.n to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6icu_7815MaybeStackArrayIcLi30EEC2Ei10UErrorCode.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit, %_ZN6icu_7815MaybeStackArrayIcLi30EEC2Ei10UErrorCode.exit.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %_ZN6icu_7815MaybeStackArrayIcLi30EEC2Ei10UErrorCode.exit.._crit_edge_crit_edge ], [ %i.bf, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit ]
  %i.r = load ptr, ptr %2, align 8, !tbaa !57
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %.pre-phi
  store i8 0, ptr %i.s, align 1, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.u = load i32, ptr %i.t, align 4, !tbaa !34
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = load i8, ptr %i.x, align 8, !tbaa !23, !range !25, !noundef !26
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = select i1 %i.z, ptr @.str.19, ptr @.str.20
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !36
  %i.ad = trunc i8 %i.ac to i1
  %i.ae = select i1 %i.ad, ptr @.str.21, ptr @.str.1
  %i.af = load i32, ptr %i.b, align 8, !tbaa !29
  %i.ag = icmp eq i32 %i.af, 0
  %i.ah = load ptr, ptr %2, align 8
  %spec.select = select i1 %i.ag, ptr @.str.2, ptr %i.ah
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !28
  %i.ak = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 100, ptr noundef nonnull @.str.18, i32 noundef %i.u, i32 noundef %i.w, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ae, ptr noundef %spec.select, ptr noundef nonnull @.str.22, i32 noundef %i.aj) #25 ; 0 uses
  invoke void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %i.a, i32 noundef -1, i32 noundef 0)
          to label %bb.j unwind label %.body

bb.f:                                             ; preds = %.lr.ph, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit ] ; 3 uses
  %i.al = phi i32 [ %i.n, %.lr.ph ], [ %i.be, %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit ] ; 2 uses
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  %i.an = xor i32 %i.am, -1
  %i.ao = add i32 %i.al, %i.an                    ; 5 uses
  %i.ap = load i8, ptr %i.p, align 8, !tbaa !23, !range !25, !noundef !26
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %3, label %bb.h

3:                                                ; preds = %bb.f
  %4 = icmp sgt i32 %i.ao, -1
  %.not.i = icmp slt i32 %i.ao, %i.al
  %or.cond10.i = and i1 %4, %.not.i
  br i1 %or.cond10.i, label %bb.g, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit

bb.g:                                             ; preds = %3
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.as = zext nneg i32 %i.ao to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !27
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit

bb.h:                                             ; preds = %bb.f
  %or.cond.i = icmp ugt i32 %i.ao, 15
  br i1 %or.cond.i, label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = load i64, ptr %i.q, align 8, !tbaa !27
  %i.aw = shl nuw nsw i32 %i.ao, 2
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = lshr i64 %i.av, %i.ax
  %i.az = trunc i64 %i.ay to i8
  %i.ba = and i8 %i.az, 15
  br label %_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit

_ZNK6icu_786number4impl15DecimalQuantity11getDigitPosEi.exit: ; preds = %3, %bb.g, %bb.h, %bb.i
  %.0.i = phi i8 [ %i.ba, %bb.i ], [ %i.au, %bb.g ], [ 0, %3 ], [ 0, %bb.h ]
  %i.bb = add i8 %.0.i, 48
  %i.bc = load ptr, ptr %2, align 8, !tbaa !57
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %indvars.iv
  store i8 %i.bb, ptr %i.bd, align 1, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = load i32, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = icmp slt i64 %indvars.iv.next, %i.bf
  br i1 %i.bg, label %bb.f, label %._crit_edge, !llvm.loop !108

.body:                                            ; preds = %._crit_edge
  %i.bh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @_ZN6icu_7815MaybeStackArrayIcLi30EED2Ev(ptr noundef nonnull align 8 dead_on_return(43) dereferenceable(43) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %common.resume

bb.j:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.bi = load i8, ptr %i.g, align 4, !tbaa !58
  %.not.i.i12 = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i12, label %_ZN6icu_7815MaybeStackArrayIcLi30EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = load ptr, ptr %2, align 8, !tbaa !57
  invoke void @uprv_free_78(ptr noundef %i.bj)
          to label %_ZN6icu_7815MaybeStackArrayIcLi30EED2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #24
  unreachable

_ZN6icu_7815MaybeStackArrayIcLi30EED2Ev.exit:     ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #21

declare void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_7815MaybeStackArrayIcLi30EED2Ev(ptr noundef nonnull align 8 dead_on_return(43) dereferenceable(43) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !58
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %_ZN6icu_7815MaybeStackArrayIcLi30EE12releaseArrayEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !57
  invoke void @uprv_free_78(ptr noundef %i.c)
          to label %_ZN6icu_7815MaybeStackArrayIcLi30EE12releaseArrayEv.exit unwind label %bb.c

_ZN6icu_7815MaybeStackArrayIcLi30EE12releaseArrayEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #24
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #22

declare noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64), i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #6

declare noundef i32 @_ZNK6icu_7813UnicodeString13doLastIndexOfEiii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEiii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString7replaceEiii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64), i64, ptr) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.sadd.sat.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { noreturn nounwind }
attributes #25 = { nounwind }
attributes #26 = { allocsize(0) }
attributes #27 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !38}
!1 = distinct !{!1, !38}
!2 = distinct !{!2, !38}
!3 = distinct !{!3, !38}
!4 = distinct !{!4, !38}
!5 = distinct !{!5, !38}
!6 = distinct !{!6, !38}
!7 = distinct !{!7, !38}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"vtable pointer", !11, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"_ZTSN6icu_7813IFixedDecimalE"}
!19 = !{!"bool", !12, i64 0}
!20 = !{!"double", !12, i64 0}
!21 = !{!"_ZTSN6icu_786number4impl15DecimalQuantityE", !18, i64 0, !19, i64 8, !13, i64 12, !13, i64 16, !12, i64 20, !12, i64 21, !20, i64 24, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !12, i64 48, !19, i64 64, !19, i64 65}
!22 = !{!21, !19, i64 8}
!23 = !{!21, !19, i64 64}
!24 = !{!21, !19, i64 65}
!25 = !{i8 0, i8 2}
!26 = !{}
!27 = !{!12, !12, i64 0}
!28 = !{!21, !13, i64 12}
!29 = !{!21, !13, i64 16}
!30 = !{!21, !12, i64 21}
!31 = !{!21, !20, i64 24}
!32 = !{!21, !13, i64 32}
!33 = !{!21, !13, i64 44}
!34 = !{!21, !13, i64 36}
!35 = !{!21, !13, i64 40}
!36 = !{!21, !12, i64 20}
!37 = !{!13, !13, i64 0}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"_ZTS10UErrorCode", !12, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"any pointer", !12, i64 0}
!42 = !{!"_ZTS9decNumber", !13, i64 0, !13, i64 4, !12, i64 8, !12, i64 9}
!43 = !{!"_ZTSN6icu_7824MaybeStackHeaderAndArrayI9decNumbercLi34EEE", !41, i64 0, !13, i64 8, !12, i64 12, !42, i64 16, !12, i64 28}
!44 = !{!43, !12, i64 12}
!45 = !{!43, !41, i64 0}
!46 = !{!"p1 omnipotent char", !41, i64 0}
!47 = !{!"_ZTSN6icu_7815MaybeStackArrayIhLi20EEE", !46, i64 0, !13, i64 8, !12, i64 12, !12, i64 13}
!48 = !{!47, !46, i64 0}
!49 = !{!47, !12, i64 12}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!"char16_t", !12, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!"_ZTSN6icu_7815MaybeStackArrayIcLi40EEE", !46, i64 0, !13, i64 8, !12, i64 12, !12, i64 13}
!54 = !{!53, !46, i64 0}
!55 = !{!53, !12, i64 12}
!56 = !{!"_ZTSN6icu_7815MaybeStackArrayIcLi30EEE", !46, i64 0, !13, i64 8, !12, i64 12, !12, i64 13}
!57 = !{!56, !46, i64 0}
!58 = !{!56, !12, i64 12}
!59 = distinct !{!59, !38}
!60 = distinct !{!60, !38}
!61 = distinct !{!61, !38}
end_hunk_1
