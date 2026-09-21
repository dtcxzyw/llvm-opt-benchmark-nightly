Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/dictbe?download=true
inline.NumInlined: 278
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6icu_7815ThaiBreakEngineC2EPNS_17DictionaryMatcherER10UErrorCode:bb.a
bb.r:                                             ; preds = %bb.q
  %i.aa = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSetaSERKS0_(ptr noundef nonnull align 8 dereferenceable(200) %i.c, ptr noundef nonnull align 8 dereferenceable(200) %3)
          to label %bb.s unwind label %bb.o       ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.ab = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet6removeEi(ptr noundef nonnull align 8 dereferenceable(200) %i.c, i32 noundef 3633)
          to label %bb.t unwind label %bb.o       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.ac = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet6removeEii(ptr noundef nonnull align 8 dereferenceable(200) %i.c, i32 noundef 3648, i32 noundef 3652)
          to label %bb.u unwind label %bb.o       ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.ad = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %i.d, i32 noundef 3585, i32 noundef 3630)
          to label %bb.v unwind label %bb.o       ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ae = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %i.d, i32 noundef 3648, i32 noundef 3652)
          to label %bb.w unwind label %bb.o       ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.af = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %i.e, i32 noundef 3631)
          to label %bb.x unwind label %bb.o       ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.ag = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %i.e, i32 noundef 3654)
          to label %bb.y unwind label %bb.o       ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.ah = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet7compactEv(ptr noundef nonnull align 8 dereferenceable(200) %i.f)
          to label %bb.z unwind label %bb.o       ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.ai = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet7compactEv(ptr noundef nonnull align 8 dereferenceable(200) %i.c)
          to label %bb.aa unwind label %bb.o      ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.aj = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet7compactEv(ptr noundef nonnull align 8 dereferenceable(200) %i.d)
          to label %bb.ab unwind label %bb.o      ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.ak = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet7compactEv(ptr noundef nonnull align 8 dereferenceable(200) %i.e)
          to label %bb.ac unwind label %bb.o      ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void

bb.ad:                                            ; preds = %_ZN6icu_7813UnicodeStringC2IA34_DsvEERKT_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #12
  br label %.body25

.body25:                                          ; preds = %bb.p, %bb.ad
  %.pn15 = phi { ptr, i32 } [ %i.al, %bb.ad ], [ %i.x, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.ae

bb.ae:                                            ; preds = %.body25, %bb.o
  %.pn17 = phi { ptr, i32 } [ %i.u, %bb.o ], [ %.pn15, %.body25 ]
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %3) #12
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.body
  %.pn17.pn = phi { ptr, i32 } [ %.pn17, %bb.ae ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.f) #12
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.m
  %.pn17.pn.pn = phi { ptr, i32 } [ %.pn17.pn, %bb.af ], [ %i.s, %bb.m ]
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.e) #12
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.l
  %.pn17.pn.pn.pn = phi { ptr, i32 } [ %.pn17.pn.pn, %bb.ag ], [ %i.r, %bb.l ]
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.d) #12
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.k
  %.pn17.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn17.pn.pn.pn, %bb.ah ], [ %i.q, %bb.k ]
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.c) #12
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.j
  %.pn17.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn17.pn.pn.pn.pn, %bb.ai ], [ %i.p, %bb.j ]
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6icu_7821DictionaryBreakEngineE, i64 16), ptr %0, align 8, !tbaa !9
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.a) #12, !inline_history !36
  call void @_ZN6icu_7819LanguageBreakEngineD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(208) %0) #12, !inline_history !36
  br label %common.resume
}

declare void @_ZN6icu_7810UnicodeSetC1ERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet12applyPatternERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet6removeEi(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet6removeEii(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7815ThaiBreakEngineD2Ev(ptr noundef nonnull align 8 dead_on_return(1016) dereferenceable(1016) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6icu_7815ThaiBreakEngineE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 808
  tail call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.g) #12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 608
  tail call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.h) #12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 408
  tail call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.i) #12
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.j) #12
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6icu_7821DictionaryBreakEngineE, i64 16), ptr %0, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.k) #12, !inline_history !36
  tail call void @_ZN6icu_7819LanguageBreakEngineD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(208) %0) #12, !inline_history !36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7815ThaiBreakEngineD0Ev(ptr noundef nonnull align 8 dereferenceable(1016) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_7815ThaiBreakEngineD1Ev(ptr noundef nonnull align 8 dead_on_return(1016) dereferenceable(1016) %0) #12
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_7815ThaiBreakEngine23divideUpDictionaryRangeEP5UTextiiRNS_9UVector32EaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(1016) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i8 signext %5, ptr noundef nonnull align 4 dereferenceable(4) %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca [3 x %"class.icu_78::PossibleWord"], align 16 ; 14 uses
  %i.a = load i32, ptr %6, align 4, !tbaa !11
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.an

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %2 to i64                       ; 3 uses
  tail call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.c)
  %i.d = tail call signext i8 @utext_moveIndex32_78(ptr noundef %1, i32 noundef 4) ; 0 uses
  %i.e = tail call i64 @utext_getNativeIndex_78(ptr noundef %1)
  %i.f = sext i32 %3 to i64
  %.not166 = icmp slt i64 %i.e, %i.f
  br i1 %.not166, label %.preheader, label %bb.an

.preheader:                                       ; preds = %bb.b
  tail call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 0>, ptr %7, align 16, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.g, align 16, !tbaa !17
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %7, i64 180
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 0>, ptr %.ptr.1, align 4, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 196
  store i32 0, ptr %i.h, align 4, !tbaa !17
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %7, i64 360
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 0>, ptr %.ptr.2, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 376
  store i32 0, ptr %i.i, align 8, !tbaa !17
  tail call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.c)
  %i.j = load i32, ptr %6, align 4, !tbaa !11
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN6icu_789UVector324pushEiR10UErrorCode.exit
  %.0153297 = phi i32 [ 0, %.lr.ph ], [ %.3156, %_ZN6icu_789UVector324pushEiR10UErrorCode.exit ] ; 7 uses
  %i.t = call i64 @utext_getNativeIndex_78(ptr noundef %1)
  %i.u = trunc i64 %i.t to i32                    ; 5 uses
  %i.v = icmp sgt i32 %3, %i.u
  br i1 %i.v, label %.noexc, label %.critedge

.noexc:                                           ; preds = %bb.c
  %i.w = urem i32 %.0153297, 3
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [180 x i8], ptr %7, i64 %i.x ; 17 uses
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !34   ; 2 uses
  %i.aa = call i64 @utext_getNativeIndex_78(ptr noundef %1) ; 2 uses
  %i.ab = trunc i64 %i.aa to i32                  ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 5 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !14
  %.not.i = icmp eq i32 %i.ad, %i.ab
  br i1 %.not.i, label %.noexc189, label %.noexc188

.noexc188:                                        ; preds = %.noexc
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !14
  %i.ae = sub nsw i32 %3, %i.ab
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 100
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call noundef i32 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef %1, i32 noundef %i.ae, i32 noundef 20, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag, ptr noundef null, ptr noundef nonnull %i.ah), !inline_history !37 ; 3 uses
  store i32 %i.al, ptr %i.y, align 4, !tbaa !15
  %i.am = icmp slt i32 %i.al, 1
  br i1 %i.am, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %.noexc188
  %sext.i = shl i64 %i.aa, 32
  %i.an = ashr exact i64 %sext.i, 32
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.an)
  br label %.noexc189

.noexc189:                                        ; preds = %bb.d, %.noexc
  %.pr.i = load i32, ptr %i.y, align 4, !tbaa !15 ; 3 uses
  %i.ao = icmp sgt i32 %.pr.i, 0
  br i1 %i.ao, label %.thread.i, label %.thread250

.thread250:                                       ; preds = %.noexc189
  %i.ap = add nsw i32 %.pr.i, -1                  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !17
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 %i.ap, ptr %i.ar, align 4, !tbaa !18
  br label %bb.p

.thread.i:                                        ; preds = %.noexc189, %.noexc188
  %i.as = phi i32 [ %.pr.i, %.noexc189 ], [ %i.al, %.noexc188 ]
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr [4 x i8], ptr %i.y, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 16
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !16
  %i.ax = add nsw i32 %i.aw, %i.ab
  %i.ay = sext i32 %i.ax to i64
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.ay)
  %.pre.i = load i32, ptr %i.y, align 4, !tbaa !15 ; 3 uses
  %i.az = add nsw i32 %.pre.i, -1                 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 5 uses
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 12 ; 6 uses
  store i32 %i.az, ptr %i.bb, align 4, !tbaa !18
  %i.bc = icmp eq i32 %.pre.i, 1
  br i1 %i.bc, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread.i
  %i.bd = load i32, ptr %i.ac, align 4, !tbaa !14
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 20 ; 2 uses
  %i.bf = zext nneg i32 %i.az to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !16
  %i.bi = add nsw i32 %i.bh, %i.bd
  %i.bj = sext i32 %i.bi to i64
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.bj)
  %i.bk = load i32, ptr %i.bb, align 4, !tbaa !18
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.y, i64 100
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.bl
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !16
  %i.br = add i32 %.0153297, 1
  br label %bb.p

bb.f:                                             ; preds = %.thread.i
  %i.bs = icmp sgt i32 %.pre.i, 1
  br i1 %i.bs, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.bt = call i64 @utext_getNativeIndex_78(ptr noundef %1)
  %i.bu = trunc i64 %i.bt to i32
  %.not170 = icmp sgt i32 %3, %i.bu
  br i1 %.not170, label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit215.preheader, label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit215.thread

_ZN6icu_7812PossibleWord6backUpEP5UText.exit215.preheader: ; preds = %bb.g
  %8 = insertelement <2 x i32> poison, i32 %.0153297, i64 0
  %9 = shufflevector <2 x i32> %8, <2 x i32> poison, <2 x i32> zeroinitializer
  %10 = add <2 x i32> %9, <i32 1, i32 2>
  %11 = urem <2 x i32> %10, splat (i32 3)         ; 2 uses
  %12 = extractelement <2 x i32> %11, i64 0
  %i.bv = zext nneg i32 %12 to i64
  %i.bw = getelementptr inbounds nuw [180 x i8], ptr %7, i64 %i.bv ; 10 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 20 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 100
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 12 ; 2 uses
  %13 = extractelement <2 x i32> %11, i64 1
  %i.cd = zext nneg i32 %13 to i64
  %i.ce = getelementptr inbounds nuw [180 x i8], ptr %7, i64 %i.cd ; 10 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 20
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 100
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.cl = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  br label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit215

_ZN6icu_7812PossibleWord6backUpEP5UText.exit215:  ; preds = %bb.o, %_ZN6icu_7812PossibleWord6backUpEP5UText.exit215.preheader
  %i.cm = load ptr, ptr %i.l, align 8, !tbaa !34  ; 2 uses
  %i.cn = call i64 @utext_getNativeIndex_78(ptr noundef %1) ; 2 uses
  %i.co = trunc i64 %i.cn to i32                  ; 4 uses
  %i.cp = load i32, ptr %i.bx, align 4, !tbaa !14
  %.not.i192 = icmp eq i32 %i.cp, %i.co
  br i1 %.not.i192, label %.noexc199, label %.noexc198

.noexc198:                                        ; preds = %_ZN6icu_7812PossibleWord6backUpEP5UText.exit215
  store i32 %i.co, ptr %i.bx, align 4, !tbaa !14
  %i.cq = sub nsw i32 %3, %i.co
  %i.cr = load ptr, ptr %i.cm, align 8, !tbaa !9
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = call noundef i32 %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef %1, i32 noundef %i.cq, i32 noundef 20, ptr noundef nonnull %i.by, ptr noundef nonnull %i.bz, ptr noundef null, ptr noundef nonnull %i.ca), !inline_history !37 ; 3 uses
  store i32 %i.cu, ptr %i.bw, align 4, !tbaa !15
  %i.cv = icmp slt i32 %i.cu, 1
  br i1 %i.cv, label %bb.h, label %.thread.i193

bb.h:                                             ; preds = %.noexc198
  %sext.i195 = shl i64 %i.cn, 32
  %i.cw = ashr exact i64 %sext.i195, 32
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.cw)
  br label %.noexc199

.noexc199:                                        ; preds = %bb.h, %_ZN6icu_7812PossibleWord6backUpEP5UText.exit215
  %.pr.i196 = load i32, ptr %i.bw, align 4, !tbaa !15 ; 3 uses
  %i.cx = icmp sgt i32 %.pr.i196, 0
  br i1 %i.cx, label %.thread.i193, label %.thread251

.thread251:                                       ; preds = %.noexc199
  %i.cy = add nsw i32 %.pr.i196, -1               ; 2 uses
  store i32 %i.cy, ptr %i.cb, align 4, !tbaa !17
  store i32 %i.cy, ptr %i.cc, align 4, !tbaa !18
  br label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit.thread

.thread.i193:                                     ; preds = %.noexc199, %.noexc198
  %i.cz = phi i32 [ %.pr.i196, %.noexc199 ], [ %i.cu, %.noexc198 ]
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr [4 x i8], ptr %i.bw, i64 %i.da
  %i.dc = getelementptr i8, ptr %i.db, i64 16
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !16
  %i.de = add nsw i32 %i.dd, %i.co
  %i.df = sext i32 %i.de to i64
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.df)
  %.pre.i194 = load i32, ptr %i.bw, align 4, !tbaa !15 ; 2 uses
  %i.dg = add nsw i32 %.pre.i194, -1              ; 2 uses
  store i32 %i.dg, ptr %i.cb, align 4, !tbaa !17
  store i32 %i.dg, ptr %i.cc, align 4, !tbaa !18
  %i.dh = icmp sgt i32 %.pre.i194, 0
  br i1 %i.dh, label %bb.i, label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit.thread

bb.i:                                             ; preds = %.thread.i193
  %i.di = load i32, ptr %i.ba, align 4, !tbaa !17
  store i32 %i.di, ptr %i.bb, align 4, !tbaa !18
  %i.dj = call i64 @utext_getNativeIndex_78(ptr noundef %1)
  %i.dk = trunc i64 %i.dj to i32
  %.not171 = icmp sgt i32 %3, %i.dk
  br i1 %.not171, label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit, label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit215.thread

_ZN6icu_7812PossibleWord6backUpEP5UText.exit:     ; preds = %bb.i, %bb.n
  %i.dl = load ptr, ptr %i.l, align 8, !tbaa !34  ; 2 uses
  %i.dm = call i64 @utext_getNativeIndex_78(ptr noundef %1) ; 2 uses
  %i.dn = trunc i64 %i.dm to i32                  ; 4 uses
  %i.do = load i32, ptr %i.cf, align 4, !tbaa !14
  %.not.i202 = icmp eq i32 %i.do, %i.dn
  br i1 %.not.i202, label %.noexc209, label %.noexc208

.noexc208:                                        ; preds = %_ZN6icu_7812PossibleWord6backUpEP5UText.exit
  store i32 %i.dn, ptr %i.cf, align 4, !tbaa !14
  %i.dp = sub nsw i32 %3, %i.dn
  %i.dq = load ptr, ptr %i.dl, align 8, !tbaa !9
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = call noundef i32 %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef %1, i32 noundef %i.dp, i32 noundef 20, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ch, ptr noundef null, ptr noundef nonnull %i.ci), !inline_history !37 ; 3 uses
  store i32 %i.dt, ptr %i.ce, align 4, !tbaa !15
  %i.du = icmp slt i32 %i.dt, 1
  br i1 %i.du, label %bb.j, label %.thread.i203

bb.j:                                             ; preds = %.noexc208
  %sext.i205 = shl i64 %i.dm, 32
  %i.dv = ashr exact i64 %sext.i205, 32
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.dv)
  br label %.noexc209

.noexc209:                                        ; preds = %bb.j, %_ZN6icu_7812PossibleWord6backUpEP5UText.exit
  %.pr.i206 = load i32, ptr %i.ce, align 4, !tbaa !15 ; 3 uses
  %i.dw = icmp sgt i32 %.pr.i206, 0
  br i1 %i.dw, label %.thread.i203, label %bb.k

.thread.i203:                                     ; preds = %.noexc209, %.noexc208
  %i.dx = phi i32 [ %.pr.i206, %.noexc209 ], [ %i.dt, %.noexc208 ]
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr [4 x i8], ptr %i.ce, i64 %i.dy
  %i.ea = getelementptr i8, ptr %i.dz, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !16
  %i.ec = add nsw i32 %i.eb, %i.dn
  %i.ed = sext i32 %i.ec to i64
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.ed)
  %.pre.i204 = load i32, ptr %i.ce, align 4, !tbaa !15
  br label %bb.k

bb.k:                                             ; preds = %.thread.i203, %.noexc209
  %i.ee = phi i32 [ %.pre.i204, %.thread.i203 ], [ %.pr.i206, %.noexc209 ] ; 2 uses
  %i.ef = add nsw i32 %i.ee, -1                   ; 2 uses
  store i32 %i.ef, ptr %i.cj, align 4, !tbaa !17
  store i32 %i.ef, ptr %i.ck, align 4, !tbaa !18
  %.not172 = icmp eq i32 %i.ee, 0
  br i1 %.not172, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eg = load i32, ptr %i.ba, align 4, !tbaa !17
  store i32 %i.eg, ptr %i.bb, align 4, !tbaa !18
  br label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit215.thread

bb.m:                                             ; preds = %bb.k
  %i.eh = load i32, ptr %i.cb, align 4, !tbaa !17 ; 2 uses
  %i.ei = icmp sgt i32 %i.eh, 0
  br i1 %i.ei, label %bb.n, label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ej = load i32, ptr %i.bx, align 4, !tbaa !14
  %i.ek = add nsw i32 %i.eh, -1                   ; 2 uses
  store i32 %i.ek, ptr %i.cb, align 4, !tbaa !17
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !16
  %i.eo = add nsw i32 %i.en, %i.ej
  %i.ep = sext i32 %i.eo to i64
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.ep), !llvm.loop !65
  br label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit

_ZN6icu_7812PossibleWord6backUpEP5UText.exit.thread: ; preds = %bb.m, %.thread251, %.thread.i193
  %i.eq = load i32, ptr %i.ba, align 4, !tbaa !17 ; 2 uses
  %i.er = icmp sgt i32 %i.eq, 0
  br i1 %i.er, label %bb.o, label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit215.thread

bb.o:                                             ; preds = %_ZN6icu_7812PossibleWord6backUpEP5UText.exit.thread
  %i.es = load i32, ptr %i.ac, align 4, !tbaa !14
  %i.et = add nsw i32 %i.eq, -1                   ; 2 uses
  store i32 %i.et, ptr %i.ba, align 4, !tbaa !17
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !16
  %i.ex = add nsw i32 %i.ew, %i.es
  %i.ey = sext i32 %i.ex to i64
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.ey), !llvm.loop !66
  br label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit215

_ZN6icu_7812PossibleWord6backUpEP5UText.exit215.thread: ; preds = %_ZN6icu_7812PossibleWord6backUpEP5UText.exit.thread, %bb.i, %bb.g, %bb.l
  %i.ez = load i32, ptr %i.ac, align 4, !tbaa !14
  %i.fa = getelementptr inbounds nuw i8, ptr %i.y, i64 20 ; 2 uses
  %i.fb = load i32, ptr %i.bb, align 4, !tbaa !18
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !16
  %i.ff = add nsw i32 %i.fe, %i.ez
  %i.fg = sext i32 %i.ff to i64
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.fg)
  %i.fh = load i32, ptr %i.bb, align 4, !tbaa !18
  %i.fi = sext i32 %i.fh to i64                   ; 2 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.y, i64 100
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.fi
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !16
  %i.fo = add i32 %.0153297, 1
  br label %bb.p

bb.p:                                             ; preds = %.thread250, %bb.f, %_ZN6icu_7812PossibleWord6backUpEP5UText.exit215.thread, %bb.e
  %.1154 = phi i32 [ %i.br, %bb.e ], [ %i.fo, %_ZN6icu_7812PossibleWord6backUpEP5UText.exit215.thread ], [ %.0153297, %bb.f ], [ %.0153297, %.thread250 ] ; 5 uses
  %.0152 = phi i32 [ %i.bq, %bb.e ], [ %i.fn, %_ZN6icu_7812PossibleWord6backUpEP5UText.exit215.thread ], [ 0, %bb.f ], [ 0, %.thread250 ]
  %.0147 = phi i32 [ %i.bn, %bb.e ], [ %i.fk, %_ZN6icu_7812PossibleWord6backUpEP5UText.exit215.thread ], [ 0, %bb.f ], [ 0, %.thread250 ] ; 7 uses
  %i.fp = call i64 @utext_getNativeIndex_78(ptr noundef %1)
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = icmp sgt i32 %3, %i.fq
  %i.fs = icmp slt i32 %.0152, 3
  %or.cond = and i1 %i.fs, %i.fr
  br i1 %or.cond, label %.noexc223, label %bb.z

.noexc223:                                        ; preds = %bb.p
  %i.ft = urem i32 %.1154, 3
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [180 x i8], ptr %7, i64 %i.fu ; 13 uses
  %i.fw = load ptr, ptr %i.l, align 8, !tbaa !34  ; 2 uses
  %i.fx = call i64 @utext_getNativeIndex_78(ptr noundef %1) ; 2 uses
  %i.fy = trunc i64 %i.fx to i32                  ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !14
  %.not.i218 = icmp eq i32 %i.ga, %i.fy
end_hunk_0
begin_hunk_1_@_ZN6icu_7814LaoBreakEngineC2EPNS_17DictionaryMatcherER10UErrorCode:bb.a
          cleanup
  br label %bb.ab

bb.l:                                             ; preds = %_ZN6icu_7813UnicodeStringC2IA28_DsvEERKT_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #12
  br label %.body

.body:                                            ; preds = %bb.f, %bb.l
  %.pn = phi { ptr, i32 } [ %i.r, %bb.l ], [ %i.i, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.aa

bb.m:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

_ZN6icu_788internal23toU16StringViewNullableIA34_DsvEESt17basic_string_viewIDsSt11char_traitsIDsEERKT_.exit.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 2, ptr %i.t, align 8, !tbaa !35
  %i.u = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %5, i64 33, ptr nonnull @.str.3)
          to label %_ZN6icu_7813UnicodeStringC2IA34_DsvEERKT_.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %_ZN6icu_788internal23toU16StringViewNullableIA34_DsvEESt17basic_string_viewIDsSt11char_traitsIDsEERKT_.exit.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7811ReplaceableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %5) #12
  br label %.body23

_ZN6icu_7813UnicodeStringC2IA34_DsvEERKT_.exit:   ; preds = %_ZN6icu_788internal23toU16StringViewNullableIA34_DsvEESt17basic_string_viewIDsSt11char_traitsIDsEERKT_.exit.i
  %i.w = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet12applyPatternERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.o unwind label %bb.y       ; 0 uses

bb.o:                                             ; preds = %_ZN6icu_7813UnicodeStringC2IA34_DsvEERKT_.exit
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.x = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %i.e, i32 noundef 32)
          to label %bb.p unwind label %bb.m       ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.y = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSetaSERKS0_(ptr noundef nonnull align 8 dereferenceable(200) %i.c, ptr noundef nonnull align 8 dereferenceable(200) %3)
          to label %bb.q unwind label %bb.m       ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.z = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet6removeEii(ptr noundef nonnull align 8 dereferenceable(200) %i.c, i32 noundef 3776, i32 noundef 3780)
          to label %bb.r unwind label %bb.m       ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.aa = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %i.d, i32 noundef 3713, i32 noundef 3758)
          to label %bb.s unwind label %bb.m       ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.ab = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %i.d, i32 noundef 3804, i32 noundef 3805)
          to label %bb.t unwind label %bb.m       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.ac = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %i.d, i32 noundef 3776, i32 noundef 3780)
          to label %bb.u unwind label %bb.m       ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.ad = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet7compactEv(ptr noundef nonnull align 8 dereferenceable(200) %i.e)
          to label %bb.v unwind label %bb.m       ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.ae = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet7compactEv(ptr noundef nonnull align 8 dereferenceable(200) %i.c)
          to label %bb.w unwind label %bb.m       ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.af = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet7compactEv(ptr noundef nonnull align 8 dereferenceable(200) %i.d)
          to label %bb.x unwind label %bb.m       ; 0 uses

bb.x:                                             ; preds = %bb.w
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void

bb.y:                                             ; preds = %_ZN6icu_7813UnicodeStringC2IA34_DsvEERKT_.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #12
  br label %.body23

.body23:                                          ; preds = %bb.n, %bb.y
  %.pn14 = phi { ptr, i32 } [ %i.ag, %bb.y ], [ %i.v, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.z

bb.z:                                             ; preds = %.body23, %bb.m
  %.pn16 = phi { ptr, i32 } [ %i.s, %bb.m ], [ %.pn14, %.body23 ]
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %3) #12
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.body
  %.pn16.pn = phi { ptr, i32 } [ %.pn16, %bb.z ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.e) #12
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.k
  %.pn16.pn.pn = phi { ptr, i32 } [ %.pn16.pn, %bb.aa ], [ %i.q, %bb.k ]
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.d) #12
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.j
  %.pn16.pn.pn.pn = phi { ptr, i32 } [ %.pn16.pn.pn, %bb.ab ], [ %i.p, %bb.j ]
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.c) #12
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.i
  %.pn16.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn16.pn.pn.pn, %bb.ac ], [ %i.o, %bb.i ]
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6icu_7821DictionaryBreakEngineE, i64 16), ptr %0, align 8, !tbaa !9
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.a) #12, !inline_history !36
  call void @_ZN6icu_7819LanguageBreakEngineD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(208) %0) #12, !inline_history !36
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7814LaoBreakEngineD2Ev(ptr noundef nonnull align 8 dead_on_return(816) dereferenceable(816) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6icu_7814LaoBreakEngineE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 608
  tail call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.g) #12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 408
  tail call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.h) #12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.i) #12
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6icu_7821DictionaryBreakEngineE, i64 16), ptr %0, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.j) #12, !inline_history !36
  tail call void @_ZN6icu_7819LanguageBreakEngineD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(208) %0) #12, !inline_history !36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7814LaoBreakEngineD0Ev(ptr noundef nonnull align 8 dereferenceable(816) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_7814LaoBreakEngineD1Ev(ptr noundef nonnull align 8 dead_on_return(816) dereferenceable(816) %0) #12
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_7814LaoBreakEngine23divideUpDictionaryRangeEP5UTextiiRNS_9UVector32EaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(816) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i8 signext %5, ptr noundef nonnull align 4 dereferenceable(4) %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca [3 x %"class.icu_78::PossibleWord"], align 16 ; 13 uses
  %i.a = load i32, ptr %6, align 4, !tbaa !11
  %i.b = icmp sgt i32 %i.a, 0
  %i.c = sub nsw i32 %3, %2
  %i.d = icmp slt i32 %i.c, 4
  %or.cond139 = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond139, label %bb.ad, label %.preheader

.preheader:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 0>, ptr %7, align 16, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.e, align 16, !tbaa !17
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %7, i64 180
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 0>, ptr %.ptr.1, align 4, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 196
  store i32 0, ptr %i.f, align 4, !tbaa !17
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %7, i64 360
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 0>, ptr %.ptr.2, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 376
  store i32 0, ptr %i.g, align 8, !tbaa !17
  %i.h = sext i32 %2 to i64
  tail call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.h)
  %i.i = load i32, ptr %6, align 4, !tbaa !11
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 5 uses
  %i.l = sext i32 %3 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN6icu_789UVector324pushEiR10UErrorCode.exit
  %.0112227 = phi i32 [ 0, %.lr.ph ], [ %.3115, %_ZN6icu_789UVector324pushEiR10UErrorCode.exit ] ; 7 uses
  %i.s = call i64 @utext_getNativeIndex_78(ptr noundef %1)
  %i.t = trunc i64 %i.s to i32                    ; 4 uses
  %i.u = icmp sgt i32 %3, %i.t
  br i1 %i.u, label %.noexc, label %.critedge

.noexc:                                           ; preds = %bb.b
  %i.v = urem i32 %.0112227, 3
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [180 x i8], ptr %7, i64 %i.w ; 17 uses
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !43   ; 2 uses
  %i.z = call i64 @utext_getNativeIndex_78(ptr noundef %1) ; 2 uses
  %i.aa = trunc i64 %i.z to i32                   ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 5 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !14
  %.not.i = icmp eq i32 %i.ac, %i.aa
  br i1 %.not.i, label %.noexc141, label %.noexc140

.noexc140:                                        ; preds = %.noexc
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !14
  %i.ad = sub nsw i32 %3, %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 100
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call noundef i32 %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef %1, i32 noundef %i.ad, i32 noundef 20, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.af, ptr noundef null, ptr noundef nonnull %i.ag), !inline_history !37 ; 3 uses
  store i32 %i.ak, ptr %i.x, align 4, !tbaa !15
  %i.al = icmp slt i32 %i.ak, 1
  br i1 %i.al, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %.noexc140
  %sext.i = shl i64 %i.z, 32
  %i.am = ashr exact i64 %sext.i, 32
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.am)
  br label %.noexc141

.noexc141:                                        ; preds = %bb.c, %.noexc
  %.pr.i = load i32, ptr %i.x, align 4, !tbaa !15 ; 3 uses
  %i.an = icmp sgt i32 %.pr.i, 0
  br i1 %i.an, label %.thread.i, label %.thread192

.thread192:                                       ; preds = %.noexc141
  %i.ao = add nsw i32 %.pr.i, -1                  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !17
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 %i.ao, ptr %i.aq, align 4, !tbaa !18
  br label %bb.o

.thread.i:                                        ; preds = %.noexc141, %.noexc140
  %i.ar = phi i32 [ %.pr.i, %.noexc141 ], [ %i.ak, %.noexc140 ]
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr [4 x i8], ptr %i.x, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 16
  %i.av = load i32, ptr %i.au, align 4, !tbaa !16
  %i.aw = add nsw i32 %i.av, %i.aa
  %i.ax = sext i32 %i.aw to i64
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.ax)
  %.pre.i = load i32, ptr %i.x, align 4, !tbaa !15 ; 3 uses
  %i.ay = add nsw i32 %.pre.i, -1                 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !17
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 12 ; 6 uses
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !18
  %i.bb = icmp eq i32 %.pre.i, 1
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread.i
  %i.bc = load i32, ptr %i.ab, align 4, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 20 ; 2 uses
  %i.be = zext nneg i32 %i.ay to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !16
  %i.bh = add nsw i32 %i.bg, %i.bc
  %i.bi = sext i32 %i.bh to i64
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.bi)
  %i.bj = load i32, ptr %i.ba, align 4, !tbaa !18
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 100
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bk
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !16
  %i.bq = add i32 %.0112227, 1
  br label %bb.o

bb.e:                                             ; preds = %.thread.i
  %i.br = icmp sgt i32 %.pre.i, 1
  br i1 %i.br, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.bs = call i64 @utext_getNativeIndex_78(ptr noundef %1)
  %.not125 = icmp slt i64 %i.bs, %i.l
  br i1 %.not125, label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.preheader, label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.thread

_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.preheader: ; preds = %bb.f
  %8 = insertelement <2 x i32> poison, i32 %.0112227, i64 0
  %9 = shufflevector <2 x i32> %8, <2 x i32> poison, <2 x i32> zeroinitializer
  %10 = add <2 x i32> %9, <i32 1, i32 2>
  %11 = urem <2 x i32> %10, splat (i32 3)         ; 2 uses
  %12 = extractelement <2 x i32> %11, i64 0
  %i.bt = zext nneg i32 %12 to i64
  %i.bu = getelementptr inbounds nuw [180 x i8], ptr %7, i64 %i.bt ; 10 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 20 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 100
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 12 ; 2 uses
  %13 = extractelement <2 x i32> %11, i64 1
  %i.cb = zext nneg i32 %13 to i64
  %i.cc = getelementptr inbounds nuw [180 x i8], ptr %7, i64 %i.cb ; 10 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 20
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 100
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.cj = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  br label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167

_ZN6icu_7812PossibleWord6backUpEP5UText.exit167:  ; preds = %bb.n, %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.preheader
  %i.ck = load ptr, ptr %i.k, align 8, !tbaa !43  ; 2 uses
  %i.cl = call i64 @utext_getNativeIndex_78(ptr noundef %1) ; 2 uses
  %i.cm = trunc i64 %i.cl to i32                  ; 4 uses
  %i.cn = load i32, ptr %i.bv, align 4, !tbaa !14
  %.not.i144 = icmp eq i32 %i.cn, %i.cm
  br i1 %.not.i144, label %.noexc151, label %.noexc150

.noexc150:                                        ; preds = %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167
  store i32 %i.cm, ptr %i.bv, align 4, !tbaa !14
  %i.co = sub nsw i32 %3, %i.cm
  %i.cp = load ptr, ptr %i.ck, align 8, !tbaa !9
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = call noundef i32 %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef %1, i32 noundef %i.co, i32 noundef 20, ptr noundef nonnull %i.bw, ptr noundef nonnull %i.bx, ptr noundef null, ptr noundef nonnull %i.by), !inline_history !37 ; 3 uses
  store i32 %i.cs, ptr %i.bu, align 4, !tbaa !15
  %i.ct = icmp slt i32 %i.cs, 1
  br i1 %i.ct, label %bb.g, label %.thread.i145

bb.g:                                             ; preds = %.noexc150
  %sext.i147 = shl i64 %i.cl, 32
  %i.cu = ashr exact i64 %sext.i147, 32
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.cu)
  br label %.noexc151

.noexc151:                                        ; preds = %bb.g, %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167
  %.pr.i148 = load i32, ptr %i.bu, align 4, !tbaa !15 ; 3 uses
  %i.cv = icmp sgt i32 %.pr.i148, 0
  br i1 %i.cv, label %.thread.i145, label %.thread193

.thread193:                                       ; preds = %.noexc151
  %i.cw = add nsw i32 %.pr.i148, -1               ; 2 uses
  store i32 %i.cw, ptr %i.bz, align 4, !tbaa !17
  store i32 %i.cw, ptr %i.ca, align 4, !tbaa !18
  br label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit.thread

.thread.i145:                                     ; preds = %.noexc151, %.noexc150
  %i.cx = phi i32 [ %.pr.i148, %.noexc151 ], [ %i.cs, %.noexc150 ]
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr [4 x i8], ptr %i.bu, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.cz, i64 16
  %i.db = load i32, ptr %i.da, align 4, !tbaa !16
  %i.dc = add nsw i32 %i.db, %i.cm
  %i.dd = sext i32 %i.dc to i64
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.dd)
  %.pre.i146 = load i32, ptr %i.bu, align 4, !tbaa !15 ; 2 uses
  %i.de = add nsw i32 %.pre.i146, -1              ; 2 uses
  store i32 %i.de, ptr %i.bz, align 4, !tbaa !17
  store i32 %i.de, ptr %i.ca, align 4, !tbaa !18
  %i.df = icmp sgt i32 %.pre.i146, 0
  br i1 %i.df, label %bb.h, label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit.thread

bb.h:                                             ; preds = %.thread.i145
  %i.dg = load i32, ptr %i.az, align 4, !tbaa !17
  store i32 %i.dg, ptr %i.ba, align 4, !tbaa !18
  %i.dh = call i64 @utext_getNativeIndex_78(ptr noundef %1)
  %i.di = trunc i64 %i.dh to i32
  %.not126 = icmp sgt i32 %3, %i.di
  br i1 %.not126, label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit, label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.thread

_ZN6icu_7812PossibleWord6backUpEP5UText.exit:     ; preds = %bb.h, %bb.m
  %i.dj = load ptr, ptr %i.k, align 8, !tbaa !43  ; 2 uses
  %i.dk = call i64 @utext_getNativeIndex_78(ptr noundef %1) ; 2 uses
  %i.dl = trunc i64 %i.dk to i32                  ; 4 uses
  %i.dm = load i32, ptr %i.cd, align 4, !tbaa !14
  %.not.i154 = icmp eq i32 %i.dm, %i.dl
  br i1 %.not.i154, label %.noexc161, label %.noexc160

.noexc160:                                        ; preds = %_ZN6icu_7812PossibleWord6backUpEP5UText.exit
  store i32 %i.dl, ptr %i.cd, align 4, !tbaa !14
  %i.dn = sub nsw i32 %3, %i.dl
  %i.do = load ptr, ptr %i.dj, align 8, !tbaa !9
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = call noundef i32 %i.dq(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef %1, i32 noundef %i.dn, i32 noundef 20, ptr noundef nonnull %i.ce, ptr noundef nonnull %i.cf, ptr noundef null, ptr noundef nonnull %i.cg), !inline_history !37 ; 3 uses
  store i32 %i.dr, ptr %i.cc, align 4, !tbaa !15
  %i.ds = icmp slt i32 %i.dr, 1
  br i1 %i.ds, label %bb.i, label %.thread.i155

bb.i:                                             ; preds = %.noexc160
  %sext.i157 = shl i64 %i.dk, 32
  %i.dt = ashr exact i64 %sext.i157, 32
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.dt)
  br label %.noexc161

.noexc161:                                        ; preds = %bb.i, %_ZN6icu_7812PossibleWord6backUpEP5UText.exit
  %.pr.i158 = load i32, ptr %i.cc, align 4, !tbaa !15 ; 3 uses
  %i.du = icmp sgt i32 %.pr.i158, 0
  br i1 %i.du, label %.thread.i155, label %bb.j

.thread.i155:                                     ; preds = %.noexc161, %.noexc160
  %i.dv = phi i32 [ %.pr.i158, %.noexc161 ], [ %i.dr, %.noexc160 ]
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr [4 x i8], ptr %i.cc, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dx, i64 16
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !16
  %i.ea = add nsw i32 %i.dz, %i.dl
  %i.eb = sext i32 %i.ea to i64
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.eb)
  %.pre.i156 = load i32, ptr %i.cc, align 4, !tbaa !15
  br label %bb.j

bb.j:                                             ; preds = %.thread.i155, %.noexc161
  %i.ec = phi i32 [ %.pre.i156, %.thread.i155 ], [ %.pr.i158, %.noexc161 ] ; 2 uses
  %i.ed = add nsw i32 %i.ec, -1                   ; 2 uses
  store i32 %i.ed, ptr %i.ch, align 4, !tbaa !17
  store i32 %i.ed, ptr %i.ci, align 4, !tbaa !18
  %.not127 = icmp eq i32 %i.ec, 0
  br i1 %.not127, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ee = load i32, ptr %i.az, align 4, !tbaa !17
  store i32 %i.ee, ptr %i.ba, align 4, !tbaa !18
  br label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.thread

bb.l:                                             ; preds = %bb.j
  %i.ef = load i32, ptr %i.bz, align 4, !tbaa !17 ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %bb.m, label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.eh = load i32, ptr %i.bv, align 4, !tbaa !14
  %i.ei = add nsw i32 %i.ef, -1                   ; 2 uses
  store i32 %i.ei, ptr %i.bz, align 4, !tbaa !17
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !16
  %i.em = add nsw i32 %i.el, %i.eh
  %i.en = sext i32 %i.em to i64
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.en), !llvm.loop !69
  br label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit

_ZN6icu_7812PossibleWord6backUpEP5UText.exit.thread: ; preds = %bb.l, %.thread193, %.thread.i145
  %i.eo = load i32, ptr %i.az, align 4, !tbaa !17 ; 2 uses
  %i.ep = icmp sgt i32 %i.eo, 0
  br i1 %i.ep, label %bb.n, label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.thread

bb.n:                                             ; preds = %_ZN6icu_7812PossibleWord6backUpEP5UText.exit.thread
  %i.eq = load i32, ptr %i.ab, align 4, !tbaa !14
  %i.er = add nsw i32 %i.eo, -1                   ; 2 uses
  store i32 %i.er, ptr %i.az, align 4, !tbaa !17
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !16
  %i.ev = add nsw i32 %i.eu, %i.eq
  %i.ew = sext i32 %i.ev to i64
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.ew), !llvm.loop !70
  br label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167

_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.thread: ; preds = %_ZN6icu_7812PossibleWord6backUpEP5UText.exit.thread, %bb.h, %bb.f, %bb.k
  %i.ex = load i32, ptr %i.ab, align 4, !tbaa !14
  %i.ey = getelementptr inbounds nuw i8, ptr %i.x, i64 20 ; 2 uses
  %i.ez = load i32, ptr %i.ba, align 4, !tbaa !18
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !16
  %i.fd = add nsw i32 %i.fc, %i.ex
  %i.fe = sext i32 %i.fd to i64
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.fe)
  %i.ff = load i32, ptr %i.ba, align 4, !tbaa !18
  %i.fg = sext i32 %i.ff to i64                   ; 2 uses
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.x, i64 100
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.fg
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !16
  %i.fm = add i32 %.0112227, 1
  br label %bb.o

bb.o:                                             ; preds = %.thread192, %bb.e, %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.thread, %bb.d
  %.1113 = phi i32 [ %i.bq, %bb.d ], [ %i.fm, %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.thread ], [ %.0112227, %bb.e ], [ %.0112227, %.thread192 ] ; 5 uses
  %.0111 = phi i32 [ %i.bp, %bb.d ], [ %i.fl, %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.thread ], [ 0, %bb.e ], [ 0, %.thread192 ]
  %.0108 = phi i32 [ %i.bm, %bb.d ], [ %i.fi, %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.thread ], [ 0, %bb.e ], [ 0, %.thread192 ] ; 7 uses
  %i.fn = call i64 @utext_getNativeIndex_78(ptr noundef %1)
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = icmp sgt i32 %3, %i.fo
  %i.fq = icmp slt i32 %.0111, 3
  %or.cond = and i1 %i.fq, %i.fp
  br i1 %or.cond, label %.noexc175, label %bb.y

.noexc175:                                        ; preds = %bb.o
  %i.fr = urem i32 %.1113, 3
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [180 x i8], ptr %7, i64 %i.fs ; 13 uses
  %i.fu = load ptr, ptr %i.k, align 8, !tbaa !43  ; 2 uses
  %i.fv = call i64 @utext_getNativeIndex_78(ptr noundef %1) ; 2 uses
  %i.fw = trunc i64 %i.fv to i32                  ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !14
  %.not.i170 = icmp eq i32 %i.fy, %i.fw
end_hunk_1
begin_hunk_2_@_ZN6icu_7818BurmeseBreakEngineC2EPNS_17DictionaryMatcherER10UErrorCode:bb.a
          to label %_ZN6icu_788internal23toU16StringViewNullableIA34_DsvEESt17basic_string_viewIDsSt11char_traitsIDsEERKT_.exit.i unwind label %bb.p ; 0 uses

_ZN6icu_788internal23toU16StringViewNullableIA34_DsvEESt17basic_string_viewIDsSt11char_traitsIDsEERKT_.exit.i: ; preds = %_ZN6icu_7813UnicodeStringC2IA28_DsvEERKT_.exit
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %4, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 2, ptr %i.l, align 8, !tbaa !35
  %i.m = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 33, ptr nonnull @.str.5)
          to label %_ZN6icu_7813UnicodeStringC2IA34_DsvEERKT_.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %_ZN6icu_788internal23toU16StringViewNullableIA34_DsvEESt17basic_string_viewIDsSt11char_traitsIDsEERKT_.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7811ReplaceableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %4) #12
  br label %.body21

_ZN6icu_7813UnicodeStringC2IA34_DsvEERKT_.exit:   ; preds = %_ZN6icu_788internal23toU16StringViewNullableIA34_DsvEESt17basic_string_viewIDsSt11char_traitsIDsEERKT_.exit.i
  %i.o = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet12applyPatternERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.i unwind label %bb.q       ; 0 uses

bb.i:                                             ; preds = %_ZN6icu_7813UnicodeStringC2IA34_DsvEERKT_.exit
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.p = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %i.e, i32 noundef 32)
          to label %bb.j unwind label %bb.o       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.q = load i32, ptr %2, align 4, !tbaa !11
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = load ptr, ptr %0, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(200) %i.c)
          to label %bb.r unwind label %bb.o

bb.l:                                             ; preds = %_ZN6icu_7821DictionaryBreakEngineC2Ev.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.m:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.n:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.o:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.k, %bb.i, %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.p:                                             ; preds = %_ZN6icu_7813UnicodeStringC2IA28_DsvEERKT_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #12
  br label %.body

.body:                                            ; preds = %bb.g, %bb.p
  %.pn = phi { ptr, i32 } [ %i.z, %bb.p ], [ %i.j, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.v

bb.q:                                             ; preds = %_ZN6icu_7813UnicodeStringC2IA34_DsvEERKT_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #12
  br label %.body21

.body21:                                          ; preds = %bb.h, %bb.q
  %.pn13 = phi { ptr, i32 } [ %i.aa, %bb.q ], [ %i.n, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.v

bb.r:                                             ; preds = %bb.k, %bb.j
  %i.ab = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet7compactEv(ptr noundef nonnull align 8 dereferenceable(200) %i.e)
          to label %bb.s unwind label %bb.o       ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.ac = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet7compactEv(ptr noundef nonnull align 8 dereferenceable(200) %i.c)
          to label %bb.t unwind label %bb.o       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.ad = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet7compactEv(ptr noundef nonnull align 8 dereferenceable(200) %i.d)
          to label %bb.u unwind label %bb.o       ; 0 uses

bb.u:                                             ; preds = %bb.t
  ret void

bb.v:                                             ; preds = %.body21, %.body, %bb.o
  %.pn15 = phi { ptr, i32 } [ %i.y, %bb.o ], [ %.pn13, %.body21 ], [ %.pn, %.body ]
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.e) #12
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.n
  %.pn15.pn = phi { ptr, i32 } [ %.pn15, %bb.v ], [ %i.x, %bb.n ]
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.d) #12
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.m
  %.pn15.pn.pn = phi { ptr, i32 } [ %.pn15.pn, %bb.w ], [ %i.w, %bb.m ]
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.c) #12
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.l
  %.pn15.pn.pn.pn = phi { ptr, i32 } [ %.pn15.pn.pn, %bb.x ], [ %i.v, %bb.l ]
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6icu_7821DictionaryBreakEngineE, i64 16), ptr %0, align 8, !tbaa !9
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.a) #12, !inline_history !36
  call void @_ZN6icu_7819LanguageBreakEngineD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(208) %0) #12, !inline_history !36
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7818BurmeseBreakEngineD2Ev(ptr noundef nonnull align 8 dead_on_return(816) dereferenceable(816) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6icu_7818BurmeseBreakEngineE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 608
  tail call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.g) #12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 408
  tail call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.h) #12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.i) #12
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6icu_7821DictionaryBreakEngineE, i64 16), ptr %0, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.j) #12, !inline_history !36
  tail call void @_ZN6icu_7819LanguageBreakEngineD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(208) %0) #12, !inline_history !36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7818BurmeseBreakEngineD0Ev(ptr noundef nonnull align 8 dereferenceable(816) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_7818BurmeseBreakEngineD1Ev(ptr noundef nonnull align 8 dead_on_return(816) dereferenceable(816) %0) #12
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_7818BurmeseBreakEngine23divideUpDictionaryRangeEP5UTextiiRNS_9UVector32EaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(816) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i8 signext %5, ptr noundef nonnull align 4 dereferenceable(4) %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca [3 x %"class.icu_78::PossibleWord"], align 16 ; 13 uses
  %i.a = load i32, ptr %6, align 4, !tbaa !11
  %i.b = icmp sgt i32 %i.a, 0
  %i.c = sub nsw i32 %3, %2
  %i.d = icmp slt i32 %i.c, 4
  %or.cond139 = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond139, label %bb.ad, label %.preheader

.preheader:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 0>, ptr %7, align 16, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.e, align 16, !tbaa !17
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %7, i64 180
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 0>, ptr %.ptr.1, align 4, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 196
  store i32 0, ptr %i.f, align 4, !tbaa !17
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %7, i64 360
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 0>, ptr %.ptr.2, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 376
  store i32 0, ptr %i.g, align 8, !tbaa !17
  %i.h = sext i32 %2 to i64
  tail call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.h)
  %i.i = load i32, ptr %6, align 4, !tbaa !11
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 5 uses
  %i.l = sext i32 %3 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN6icu_789UVector324pushEiR10UErrorCode.exit
  %.0112227 = phi i32 [ 0, %.lr.ph ], [ %.3115, %_ZN6icu_789UVector324pushEiR10UErrorCode.exit ] ; 7 uses
  %i.s = call i64 @utext_getNativeIndex_78(ptr noundef %1)
  %i.t = trunc i64 %i.s to i32                    ; 4 uses
  %i.u = icmp sgt i32 %3, %i.t
  br i1 %i.u, label %.noexc, label %.critedge

.noexc:                                           ; preds = %bb.b
  %i.v = urem i32 %.0112227, 3
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [180 x i8], ptr %7, i64 %i.w ; 17 uses
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !45   ; 2 uses
  %i.z = call i64 @utext_getNativeIndex_78(ptr noundef %1) ; 2 uses
  %i.aa = trunc i64 %i.z to i32                   ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 5 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !14
  %.not.i = icmp eq i32 %i.ac, %i.aa
  br i1 %.not.i, label %.noexc141, label %.noexc140

.noexc140:                                        ; preds = %.noexc
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !14
  %i.ad = sub nsw i32 %3, %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 100
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call noundef i32 %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef %1, i32 noundef %i.ad, i32 noundef 20, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.af, ptr noundef null, ptr noundef nonnull %i.ag), !inline_history !37 ; 3 uses
  store i32 %i.ak, ptr %i.x, align 4, !tbaa !15
  %i.al = icmp slt i32 %i.ak, 1
  br i1 %i.al, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %.noexc140
  %sext.i = shl i64 %i.z, 32
  %i.am = ashr exact i64 %sext.i, 32
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.am)
  br label %.noexc141

.noexc141:                                        ; preds = %bb.c, %.noexc
  %.pr.i = load i32, ptr %i.x, align 4, !tbaa !15 ; 3 uses
  %i.an = icmp sgt i32 %.pr.i, 0
  br i1 %i.an, label %.thread.i, label %.thread192

.thread192:                                       ; preds = %.noexc141
  %i.ao = add nsw i32 %.pr.i, -1                  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !17
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 %i.ao, ptr %i.aq, align 4, !tbaa !18
  br label %bb.o

.thread.i:                                        ; preds = %.noexc141, %.noexc140
  %i.ar = phi i32 [ %.pr.i, %.noexc141 ], [ %i.ak, %.noexc140 ]
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr [4 x i8], ptr %i.x, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 16
  %i.av = load i32, ptr %i.au, align 4, !tbaa !16
  %i.aw = add nsw i32 %i.av, %i.aa
  %i.ax = sext i32 %i.aw to i64
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.ax)
  %.pre.i = load i32, ptr %i.x, align 4, !tbaa !15 ; 3 uses
  %i.ay = add nsw i32 %.pre.i, -1                 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !17
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 12 ; 6 uses
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !18
  %i.bb = icmp eq i32 %.pre.i, 1
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread.i
  %i.bc = load i32, ptr %i.ab, align 4, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 20 ; 2 uses
  %i.be = zext nneg i32 %i.ay to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !16
  %i.bh = add nsw i32 %i.bg, %i.bc
  %i.bi = sext i32 %i.bh to i64
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.bi)
  %i.bj = load i32, ptr %i.ba, align 4, !tbaa !18
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 100
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bk
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !16
  %i.bq = add i32 %.0112227, 1
  br label %bb.o

bb.e:                                             ; preds = %.thread.i
  %i.br = icmp sgt i32 %.pre.i, 1
  br i1 %i.br, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.bs = call i64 @utext_getNativeIndex_78(ptr noundef %1)
  %.not125 = icmp slt i64 %i.bs, %i.l
  br i1 %.not125, label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.preheader, label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.thread

_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.preheader: ; preds = %bb.f
  %8 = insertelement <2 x i32> poison, i32 %.0112227, i64 0
  %9 = shufflevector <2 x i32> %8, <2 x i32> poison, <2 x i32> zeroinitializer
  %10 = add <2 x i32> %9, <i32 1, i32 2>
  %11 = urem <2 x i32> %10, splat (i32 3)         ; 2 uses
  %12 = extractelement <2 x i32> %11, i64 0
  %i.bt = zext nneg i32 %12 to i64
  %i.bu = getelementptr inbounds nuw [180 x i8], ptr %7, i64 %i.bt ; 10 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 20 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 100
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 12 ; 2 uses
  %13 = extractelement <2 x i32> %11, i64 1
  %i.cb = zext nneg i32 %13 to i64
  %i.cc = getelementptr inbounds nuw [180 x i8], ptr %7, i64 %i.cb ; 10 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 20
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 100
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.cj = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  br label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167

_ZN6icu_7812PossibleWord6backUpEP5UText.exit167:  ; preds = %bb.n, %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.preheader
  %i.ck = load ptr, ptr %i.k, align 8, !tbaa !45  ; 2 uses
  %i.cl = call i64 @utext_getNativeIndex_78(ptr noundef %1) ; 2 uses
  %i.cm = trunc i64 %i.cl to i32                  ; 4 uses
  %i.cn = load i32, ptr %i.bv, align 4, !tbaa !14
  %.not.i144 = icmp eq i32 %i.cn, %i.cm
  br i1 %.not.i144, label %.noexc151, label %.noexc150

.noexc150:                                        ; preds = %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167
  store i32 %i.cm, ptr %i.bv, align 4, !tbaa !14
  %i.co = sub nsw i32 %3, %i.cm
  %i.cp = load ptr, ptr %i.ck, align 8, !tbaa !9
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = call noundef i32 %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef %1, i32 noundef %i.co, i32 noundef 20, ptr noundef nonnull %i.bw, ptr noundef nonnull %i.bx, ptr noundef null, ptr noundef nonnull %i.by), !inline_history !37 ; 3 uses
  store i32 %i.cs, ptr %i.bu, align 4, !tbaa !15
  %i.ct = icmp slt i32 %i.cs, 1
  br i1 %i.ct, label %bb.g, label %.thread.i145

bb.g:                                             ; preds = %.noexc150
  %sext.i147 = shl i64 %i.cl, 32
  %i.cu = ashr exact i64 %sext.i147, 32
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.cu)
  br label %.noexc151

.noexc151:                                        ; preds = %bb.g, %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167
  %.pr.i148 = load i32, ptr %i.bu, align 4, !tbaa !15 ; 3 uses
  %i.cv = icmp sgt i32 %.pr.i148, 0
  br i1 %i.cv, label %.thread.i145, label %.thread193

.thread193:                                       ; preds = %.noexc151
  %i.cw = add nsw i32 %.pr.i148, -1               ; 2 uses
  store i32 %i.cw, ptr %i.bz, align 4, !tbaa !17
  store i32 %i.cw, ptr %i.ca, align 4, !tbaa !18
  br label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit.thread

.thread.i145:                                     ; preds = %.noexc151, %.noexc150
  %i.cx = phi i32 [ %.pr.i148, %.noexc151 ], [ %i.cs, %.noexc150 ]
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr [4 x i8], ptr %i.bu, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.cz, i64 16
  %i.db = load i32, ptr %i.da, align 4, !tbaa !16
  %i.dc = add nsw i32 %i.db, %i.cm
  %i.dd = sext i32 %i.dc to i64
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.dd)
  %.pre.i146 = load i32, ptr %i.bu, align 4, !tbaa !15 ; 2 uses
  %i.de = add nsw i32 %.pre.i146, -1              ; 2 uses
  store i32 %i.de, ptr %i.bz, align 4, !tbaa !17
  store i32 %i.de, ptr %i.ca, align 4, !tbaa !18
  %i.df = icmp sgt i32 %.pre.i146, 0
  br i1 %i.df, label %bb.h, label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit.thread

bb.h:                                             ; preds = %.thread.i145
  %i.dg = load i32, ptr %i.az, align 4, !tbaa !17
  store i32 %i.dg, ptr %i.ba, align 4, !tbaa !18
  %i.dh = call i64 @utext_getNativeIndex_78(ptr noundef %1)
  %i.di = trunc i64 %i.dh to i32
  %.not126 = icmp sgt i32 %3, %i.di
  br i1 %.not126, label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit, label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.thread

_ZN6icu_7812PossibleWord6backUpEP5UText.exit:     ; preds = %bb.h, %bb.m
  %i.dj = load ptr, ptr %i.k, align 8, !tbaa !45  ; 2 uses
  %i.dk = call i64 @utext_getNativeIndex_78(ptr noundef %1) ; 2 uses
  %i.dl = trunc i64 %i.dk to i32                  ; 4 uses
  %i.dm = load i32, ptr %i.cd, align 4, !tbaa !14
  %.not.i154 = icmp eq i32 %i.dm, %i.dl
  br i1 %.not.i154, label %.noexc161, label %.noexc160

.noexc160:                                        ; preds = %_ZN6icu_7812PossibleWord6backUpEP5UText.exit
  store i32 %i.dl, ptr %i.cd, align 4, !tbaa !14
  %i.dn = sub nsw i32 %3, %i.dl
  %i.do = load ptr, ptr %i.dj, align 8, !tbaa !9
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = call noundef i32 %i.dq(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef %1, i32 noundef %i.dn, i32 noundef 20, ptr noundef nonnull %i.ce, ptr noundef nonnull %i.cf, ptr noundef null, ptr noundef nonnull %i.cg), !inline_history !37 ; 3 uses
  store i32 %i.dr, ptr %i.cc, align 4, !tbaa !15
  %i.ds = icmp slt i32 %i.dr, 1
  br i1 %i.ds, label %bb.i, label %.thread.i155

bb.i:                                             ; preds = %.noexc160
  %sext.i157 = shl i64 %i.dk, 32
  %i.dt = ashr exact i64 %sext.i157, 32
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.dt)
  br label %.noexc161

.noexc161:                                        ; preds = %bb.i, %_ZN6icu_7812PossibleWord6backUpEP5UText.exit
  %.pr.i158 = load i32, ptr %i.cc, align 4, !tbaa !15 ; 3 uses
  %i.du = icmp sgt i32 %.pr.i158, 0
  br i1 %i.du, label %.thread.i155, label %bb.j

.thread.i155:                                     ; preds = %.noexc161, %.noexc160
  %i.dv = phi i32 [ %.pr.i158, %.noexc161 ], [ %i.dr, %.noexc160 ]
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr [4 x i8], ptr %i.cc, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dx, i64 16
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !16
  %i.ea = add nsw i32 %i.dz, %i.dl
  %i.eb = sext i32 %i.ea to i64
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.eb)
  %.pre.i156 = load i32, ptr %i.cc, align 4, !tbaa !15
  br label %bb.j

bb.j:                                             ; preds = %.thread.i155, %.noexc161
  %i.ec = phi i32 [ %.pre.i156, %.thread.i155 ], [ %.pr.i158, %.noexc161 ] ; 2 uses
  %i.ed = add nsw i32 %i.ec, -1                   ; 2 uses
  store i32 %i.ed, ptr %i.ch, align 4, !tbaa !17
  store i32 %i.ed, ptr %i.ci, align 4, !tbaa !18
  %.not127 = icmp eq i32 %i.ec, 0
  br i1 %.not127, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ee = load i32, ptr %i.az, align 4, !tbaa !17
  store i32 %i.ee, ptr %i.ba, align 4, !tbaa !18
  br label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.thread

bb.l:                                             ; preds = %bb.j
  %i.ef = load i32, ptr %i.bz, align 4, !tbaa !17 ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %bb.m, label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.eh = load i32, ptr %i.bv, align 4, !tbaa !14
  %i.ei = add nsw i32 %i.ef, -1                   ; 2 uses
  store i32 %i.ei, ptr %i.bz, align 4, !tbaa !17
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !16
  %i.em = add nsw i32 %i.el, %i.eh
  %i.en = sext i32 %i.em to i64
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.en), !llvm.loop !73
  br label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit

_ZN6icu_7812PossibleWord6backUpEP5UText.exit.thread: ; preds = %bb.l, %.thread193, %.thread.i145
  %i.eo = load i32, ptr %i.az, align 4, !tbaa !17 ; 2 uses
  %i.ep = icmp sgt i32 %i.eo, 0
  br i1 %i.ep, label %bb.n, label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.thread

bb.n:                                             ; preds = %_ZN6icu_7812PossibleWord6backUpEP5UText.exit.thread
  %i.eq = load i32, ptr %i.ab, align 4, !tbaa !14
  %i.er = add nsw i32 %i.eo, -1                   ; 2 uses
  store i32 %i.er, ptr %i.az, align 4, !tbaa !17
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !16
  %i.ev = add nsw i32 %i.eu, %i.eq
  %i.ew = sext i32 %i.ev to i64
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.ew), !llvm.loop !74
  br label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167

_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.thread: ; preds = %_ZN6icu_7812PossibleWord6backUpEP5UText.exit.thread, %bb.h, %bb.f, %bb.k
  %i.ex = load i32, ptr %i.ab, align 4, !tbaa !14
  %i.ey = getelementptr inbounds nuw i8, ptr %i.x, i64 20 ; 2 uses
  %i.ez = load i32, ptr %i.ba, align 4, !tbaa !18
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !16
  %i.fd = add nsw i32 %i.fc, %i.ex
  %i.fe = sext i32 %i.fd to i64
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.fe)
  %i.ff = load i32, ptr %i.ba, align 4, !tbaa !18
  %i.fg = sext i32 %i.ff to i64                   ; 2 uses
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.x, i64 100
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.fg
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !16
  %i.fm = add i32 %.0112227, 1
  br label %bb.o

bb.o:                                             ; preds = %.thread192, %bb.e, %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.thread, %bb.d
  %.1113 = phi i32 [ %i.bq, %bb.d ], [ %i.fm, %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.thread ], [ %.0112227, %bb.e ], [ %.0112227, %.thread192 ] ; 5 uses
  %.0111 = phi i32 [ %i.bp, %bb.d ], [ %i.fl, %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.thread ], [ 0, %bb.e ], [ 0, %.thread192 ]
  %.0108 = phi i32 [ %i.bm, %bb.d ], [ %i.fi, %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.thread ], [ 0, %bb.e ], [ 0, %.thread192 ] ; 7 uses
  %i.fn = call i64 @utext_getNativeIndex_78(ptr noundef %1)
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = icmp sgt i32 %3, %i.fo
  %i.fq = icmp slt i32 %.0111, 3
  %or.cond = and i1 %i.fq, %i.fp
  br i1 %or.cond, label %.noexc175, label %bb.y

.noexc175:                                        ; preds = %bb.o
  %i.fr = urem i32 %.1113, 3
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [180 x i8], ptr %7, i64 %i.fs ; 13 uses
  %i.fu = load ptr, ptr %i.k, align 8, !tbaa !45  ; 2 uses
  %i.fv = call i64 @utext_getNativeIndex_78(ptr noundef %1) ; 2 uses
  %i.fw = trunc i64 %i.fv to i32                  ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !14
  %.not.i170 = icmp eq i32 %i.fy, %i.fw
end_hunk_2
begin_hunk_3_@_ZN6icu_7816KhmerBreakEngineC2EPNS_17DictionaryMatcherER10UErrorCode:bb.a
  br label %bb.ab

bb.j:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.k:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.l:                                             ; preds = %_ZN6icu_7813UnicodeStringC2IA28_DsvEERKT_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #12
  br label %.body

.body:                                            ; preds = %bb.f, %bb.l
  %.pn = phi { ptr, i32 } [ %i.r, %bb.l ], [ %i.i, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.y

bb.m:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

_ZN6icu_788internal23toU16StringViewNullableIA34_DsvEESt17basic_string_viewIDsSt11char_traitsIDsEERKT_.exit.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 2, ptr %i.t, align 8, !tbaa !35
  %i.u = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %5, i64 33, ptr nonnull @.str.7)
          to label %_ZN6icu_7813UnicodeStringC2IA34_DsvEERKT_.exit unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %_ZN6icu_788internal23toU16StringViewNullableIA34_DsvEESt17basic_string_viewIDsSt11char_traitsIDsEERKT_.exit.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7811ReplaceableD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(64) %5) #12
  br label %.body23

_ZN6icu_7813UnicodeStringC2IA34_DsvEERKT_.exit:   ; preds = %_ZN6icu_788internal23toU16StringViewNullableIA34_DsvEESt17basic_string_viewIDsSt11char_traitsIDsEERKT_.exit.i
  %i.w = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet12applyPatternERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.o unwind label %bb.w       ; 0 uses

bb.o:                                             ; preds = %_ZN6icu_7813UnicodeStringC2IA34_DsvEERKT_.exit
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.x = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %i.e, i32 noundef 32)
          to label %bb.p unwind label %bb.m       ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.y = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSetaSERKS0_(ptr noundef nonnull align 8 dereferenceable(200) %i.c, ptr noundef nonnull align 8 dereferenceable(200) %3)
          to label %bb.q unwind label %bb.m       ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.z = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %i.d, i32 noundef 6016, i32 noundef 6067)
          to label %bb.r unwind label %bb.m       ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.aa = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet6removeEi(ptr noundef nonnull align 8 dereferenceable(200) %i.c, i32 noundef 6098)
          to label %bb.s unwind label %bb.m       ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.ab = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet7compactEv(ptr noundef nonnull align 8 dereferenceable(200) %i.e)
          to label %bb.t unwind label %bb.m       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.ac = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet7compactEv(ptr noundef nonnull align 8 dereferenceable(200) %i.c)
          to label %bb.u unwind label %bb.m       ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.ad = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet7compactEv(ptr noundef nonnull align 8 dereferenceable(200) %i.d)
          to label %bb.v unwind label %bb.m       ; 0 uses

bb.v:                                             ; preds = %bb.u
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void

bb.w:                                             ; preds = %_ZN6icu_7813UnicodeStringC2IA34_DsvEERKT_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #12
  br label %.body23

.body23:                                          ; preds = %bb.n, %bb.w
  %.pn14 = phi { ptr, i32 } [ %i.ae, %bb.w ], [ %i.v, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.x

bb.x:                                             ; preds = %.body23, %bb.m
  %.pn16 = phi { ptr, i32 } [ %i.s, %bb.m ], [ %.pn14, %.body23 ]
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %3) #12
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.body
  %.pn16.pn = phi { ptr, i32 } [ %.pn16, %bb.x ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.e) #12
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.k
  %.pn16.pn.pn = phi { ptr, i32 } [ %.pn16.pn, %bb.y ], [ %i.q, %bb.k ]
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.d) #12
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.j
  %.pn16.pn.pn.pn = phi { ptr, i32 } [ %.pn16.pn.pn, %bb.z ], [ %i.p, %bb.j ]
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.c) #12
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.i
  %.pn16.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn16.pn.pn.pn, %bb.aa ], [ %i.o, %bb.i ]
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6icu_7821DictionaryBreakEngineE, i64 16), ptr %0, align 8, !tbaa !9
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.a) #12, !inline_history !36
  call void @_ZN6icu_7819LanguageBreakEngineD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(208) %0) #12, !inline_history !36
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7816KhmerBreakEngineD2Ev(ptr noundef nonnull align 8 dead_on_return(816) dereferenceable(816) initializes((0, 8)) %0) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6icu_7816KhmerBreakEngineE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 608
  tail call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.g) #12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 408
  tail call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.h) #12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.i) #12
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN6icu_7821DictionaryBreakEngineE, i64 16), ptr %0, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dead_on_return(196) dereferenceable(200) %i.j) #12, !inline_history !36
  tail call void @_ZN6icu_7819LanguageBreakEngineD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(208) %0) #12, !inline_history !36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7816KhmerBreakEngineD0Ev(ptr noundef nonnull align 8 dereferenceable(816) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN6icu_7816KhmerBreakEngineD1Ev(ptr noundef nonnull align 8 dead_on_return(816) dereferenceable(816) %0) #12
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_7816KhmerBreakEngine23divideUpDictionaryRangeEP5UTextiiRNS_9UVector32EaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(816) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i8 signext %5, ptr noundef nonnull align 4 dereferenceable(4) %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca [3 x %"class.icu_78::PossibleWord"], align 16 ; 13 uses
  %i.a = load i32, ptr %6, align 4, !tbaa !11
  %i.b = icmp sgt i32 %i.a, 0
  %i.c = sub nsw i32 %3, %2
  %i.d = icmp slt i32 %i.c, 4
  %or.cond139 = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond139, label %bb.ad, label %.preheader

.preheader:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 0>, ptr %7, align 16, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.e, align 16, !tbaa !17
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %7, i64 180
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 0>, ptr %.ptr.1, align 4, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 196
  store i32 0, ptr %i.f, align 4, !tbaa !17
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %7, i64 360
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 0>, ptr %.ptr.2, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 376
  store i32 0, ptr %i.g, align 8, !tbaa !17
  %i.h = sext i32 %2 to i64
  tail call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.h)
  %i.i = load i32, ptr %6, align 4, !tbaa !11
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN6icu_789UVector324pushEiR10UErrorCode.exit
  %.0112227 = phi i32 [ 0, %.lr.ph ], [ %.3115, %_ZN6icu_789UVector324pushEiR10UErrorCode.exit ] ; 7 uses
  %i.r = call i64 @utext_getNativeIndex_78(ptr noundef %1)
  %i.s = trunc i64 %i.r to i32                    ; 4 uses
  %i.t = icmp sgt i32 %3, %i.s
  br i1 %i.t, label %.noexc, label %.critedge

.noexc:                                           ; preds = %bb.b
  %i.u = urem i32 %.0112227, 3
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [180 x i8], ptr %7, i64 %i.v ; 17 uses
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !47   ; 2 uses
  %i.y = call i64 @utext_getNativeIndex_78(ptr noundef %1) ; 2 uses
  %i.z = trunc i64 %i.y to i32                    ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 5 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !14
  %.not.i = icmp eq i32 %i.ab, %i.z
  br i1 %.not.i, label %.noexc141, label %.noexc140

.noexc140:                                        ; preds = %.noexc
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !14
  %i.ac = sub nsw i32 %3, %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 100
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call noundef i32 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef %1, i32 noundef %i.ac, i32 noundef 20, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae, ptr noundef null, ptr noundef nonnull %i.af), !inline_history !37 ; 3 uses
  store i32 %i.aj, ptr %i.w, align 4, !tbaa !15
  %i.ak = icmp slt i32 %i.aj, 1
  br i1 %i.ak, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %.noexc140
  %sext.i = shl i64 %i.y, 32
  %i.al = ashr exact i64 %sext.i, 32
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.al)
  br label %.noexc141

.noexc141:                                        ; preds = %bb.c, %.noexc
  %.pr.i = load i32, ptr %i.w, align 4, !tbaa !15 ; 3 uses
  %i.am = icmp sgt i32 %.pr.i, 0
  br i1 %i.am, label %.thread.i, label %.thread192

.thread192:                                       ; preds = %.noexc141
  %i.an = add nsw i32 %.pr.i, -1                  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 %i.an, ptr %i.ap, align 4, !tbaa !18
  br label %bb.o

.thread.i:                                        ; preds = %.noexc141, %.noexc140
  %i.aq = phi i32 [ %.pr.i, %.noexc141 ], [ %i.aj, %.noexc140 ]
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr [4 x i8], ptr %i.w, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 16
  %i.au = load i32, ptr %i.at, align 4, !tbaa !16
  %i.av = add nsw i32 %i.au, %i.z
  %i.aw = sext i32 %i.av to i64
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.aw)
  %.pre.i = load i32, ptr %i.w, align 4, !tbaa !15 ; 3 uses
  %i.ax = add nsw i32 %.pre.i, -1                 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 5 uses
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %i.w, i64 12 ; 6 uses
  store i32 %i.ax, ptr %i.az, align 4, !tbaa !18
  %i.ba = icmp eq i32 %.pre.i, 1
  br i1 %i.ba, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread.i
  %i.bb = load i32, ptr %i.aa, align 4, !tbaa !14
  %i.bc = getelementptr inbounds nuw i8, ptr %i.w, i64 20 ; 2 uses
  %i.bd = zext nneg i32 %i.ax to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !16
  %i.bg = add nsw i32 %i.bf, %i.bb
  %i.bh = sext i32 %i.bg to i64
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.bh)
  %i.bi = load i32, ptr %i.az, align 4, !tbaa !18
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.w, i64 100
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bj
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !16
  %i.bp = add i32 %.0112227, 1
  br label %bb.o

bb.e:                                             ; preds = %.thread.i
  %i.bq = icmp sgt i32 %.pre.i, 1
  br i1 %i.bq, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.br = call i64 @utext_getNativeIndex_78(ptr noundef %1)
  %i.bs = trunc i64 %i.br to i32
  %.not125 = icmp sgt i32 %3, %i.bs
  br i1 %.not125, label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.preheader, label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.thread

_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.preheader: ; preds = %bb.f
  %8 = insertelement <2 x i32> poison, i32 %.0112227, i64 0
  %9 = shufflevector <2 x i32> %8, <2 x i32> poison, <2 x i32> zeroinitializer
  %10 = add <2 x i32> %9, <i32 1, i32 2>
  %11 = urem <2 x i32> %10, splat (i32 3)         ; 2 uses
  %12 = extractelement <2 x i32> %11, i64 0
  %i.bt = zext nneg i32 %12 to i64
  %i.bu = getelementptr inbounds nuw [180 x i8], ptr %7, i64 %i.bt ; 10 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 20 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 100
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 12 ; 2 uses
  %13 = extractelement <2 x i32> %11, i64 1
  %i.cb = zext nneg i32 %13 to i64
  %i.cc = getelementptr inbounds nuw [180 x i8], ptr %7, i64 %i.cb ; 10 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 20
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 100
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.cj = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  br label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167

_ZN6icu_7812PossibleWord6backUpEP5UText.exit167:  ; preds = %bb.n, %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.preheader
  %i.ck = load ptr, ptr %i.k, align 8, !tbaa !47  ; 2 uses
  %i.cl = call i64 @utext_getNativeIndex_78(ptr noundef %1) ; 2 uses
  %i.cm = trunc i64 %i.cl to i32                  ; 4 uses
  %i.cn = load i32, ptr %i.bv, align 4, !tbaa !14
  %.not.i144 = icmp eq i32 %i.cn, %i.cm
  br i1 %.not.i144, label %.noexc151, label %.noexc150

.noexc150:                                        ; preds = %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167
  store i32 %i.cm, ptr %i.bv, align 4, !tbaa !14
  %i.co = sub nsw i32 %3, %i.cm
  %i.cp = load ptr, ptr %i.ck, align 8, !tbaa !9
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = call noundef i32 %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef %1, i32 noundef %i.co, i32 noundef 20, ptr noundef nonnull %i.bw, ptr noundef nonnull %i.bx, ptr noundef null, ptr noundef nonnull %i.by), !inline_history !37 ; 3 uses
  store i32 %i.cs, ptr %i.bu, align 4, !tbaa !15
  %i.ct = icmp slt i32 %i.cs, 1
  br i1 %i.ct, label %bb.g, label %.thread.i145

bb.g:                                             ; preds = %.noexc150
  %sext.i147 = shl i64 %i.cl, 32
  %i.cu = ashr exact i64 %sext.i147, 32
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.cu)
  br label %.noexc151

.noexc151:                                        ; preds = %bb.g, %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167
  %.pr.i148 = load i32, ptr %i.bu, align 4, !tbaa !15 ; 3 uses
  %i.cv = icmp sgt i32 %.pr.i148, 0
  br i1 %i.cv, label %.thread.i145, label %.thread193

.thread193:                                       ; preds = %.noexc151
  %i.cw = add nsw i32 %.pr.i148, -1               ; 2 uses
  store i32 %i.cw, ptr %i.bz, align 4, !tbaa !17
  store i32 %i.cw, ptr %i.ca, align 4, !tbaa !18
  br label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit.thread

.thread.i145:                                     ; preds = %.noexc151, %.noexc150
  %i.cx = phi i32 [ %.pr.i148, %.noexc151 ], [ %i.cs, %.noexc150 ]
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr [4 x i8], ptr %i.bu, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.cz, i64 16
  %i.db = load i32, ptr %i.da, align 4, !tbaa !16
  %i.dc = add nsw i32 %i.db, %i.cm
  %i.dd = sext i32 %i.dc to i64
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.dd)
  %.pre.i146 = load i32, ptr %i.bu, align 4, !tbaa !15 ; 2 uses
  %i.de = add nsw i32 %.pre.i146, -1              ; 2 uses
  store i32 %i.de, ptr %i.bz, align 4, !tbaa !17
  store i32 %i.de, ptr %i.ca, align 4, !tbaa !18
  %i.df = icmp sgt i32 %.pre.i146, 0
  br i1 %i.df, label %bb.h, label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit.thread

bb.h:                                             ; preds = %.thread.i145
  %i.dg = load i32, ptr %i.ay, align 4, !tbaa !17
  store i32 %i.dg, ptr %i.az, align 4, !tbaa !18
  %i.dh = call i64 @utext_getNativeIndex_78(ptr noundef %1)
  %i.di = trunc i64 %i.dh to i32
  %.not126 = icmp sgt i32 %3, %i.di
  br i1 %.not126, label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit, label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.thread

_ZN6icu_7812PossibleWord6backUpEP5UText.exit:     ; preds = %bb.h, %bb.m
  %i.dj = load ptr, ptr %i.k, align 8, !tbaa !47  ; 2 uses
  %i.dk = call i64 @utext_getNativeIndex_78(ptr noundef %1) ; 2 uses
  %i.dl = trunc i64 %i.dk to i32                  ; 4 uses
  %i.dm = load i32, ptr %i.cd, align 4, !tbaa !14
  %.not.i154 = icmp eq i32 %i.dm, %i.dl
  br i1 %.not.i154, label %.noexc161, label %.noexc160

.noexc160:                                        ; preds = %_ZN6icu_7812PossibleWord6backUpEP5UText.exit
  store i32 %i.dl, ptr %i.cd, align 4, !tbaa !14
  %i.dn = sub nsw i32 %3, %i.dl
  %i.do = load ptr, ptr %i.dj, align 8, !tbaa !9
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = call noundef i32 %i.dq(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef %1, i32 noundef %i.dn, i32 noundef 20, ptr noundef nonnull %i.ce, ptr noundef nonnull %i.cf, ptr noundef null, ptr noundef nonnull %i.cg), !inline_history !37 ; 3 uses
  store i32 %i.dr, ptr %i.cc, align 4, !tbaa !15
  %i.ds = icmp slt i32 %i.dr, 1
  br i1 %i.ds, label %bb.i, label %.thread.i155

bb.i:                                             ; preds = %.noexc160
  %sext.i157 = shl i64 %i.dk, 32
  %i.dt = ashr exact i64 %sext.i157, 32
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.dt)
  br label %.noexc161

.noexc161:                                        ; preds = %bb.i, %_ZN6icu_7812PossibleWord6backUpEP5UText.exit
  %.pr.i158 = load i32, ptr %i.cc, align 4, !tbaa !15 ; 3 uses
  %i.du = icmp sgt i32 %.pr.i158, 0
  br i1 %i.du, label %.thread.i155, label %bb.j

.thread.i155:                                     ; preds = %.noexc161, %.noexc160
  %i.dv = phi i32 [ %.pr.i158, %.noexc161 ], [ %i.dr, %.noexc160 ]
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr [4 x i8], ptr %i.cc, i64 %i.dw
  %i.dy = getelementptr i8, ptr %i.dx, i64 16
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !16
  %i.ea = add nsw i32 %i.dz, %i.dl
  %i.eb = sext i32 %i.ea to i64
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.eb)
  %.pre.i156 = load i32, ptr %i.cc, align 4, !tbaa !15
  br label %bb.j

bb.j:                                             ; preds = %.thread.i155, %.noexc161
  %i.ec = phi i32 [ %.pre.i156, %.thread.i155 ], [ %.pr.i158, %.noexc161 ] ; 2 uses
  %i.ed = add nsw i32 %i.ec, -1                   ; 2 uses
  store i32 %i.ed, ptr %i.ch, align 4, !tbaa !17
  store i32 %i.ed, ptr %i.ci, align 4, !tbaa !18
  %.not127 = icmp eq i32 %i.ec, 0
  br i1 %.not127, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ee = load i32, ptr %i.ay, align 4, !tbaa !17
  store i32 %i.ee, ptr %i.az, align 4, !tbaa !18
  br label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.thread

bb.l:                                             ; preds = %bb.j
  %i.ef = load i32, ptr %i.bz, align 4, !tbaa !17 ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %bb.m, label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.eh = load i32, ptr %i.bv, align 4, !tbaa !14
  %i.ei = add nsw i32 %i.ef, -1                   ; 2 uses
  store i32 %i.ei, ptr %i.bz, align 4, !tbaa !17
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !16
  %i.em = add nsw i32 %i.el, %i.eh
  %i.en = sext i32 %i.em to i64
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.en), !llvm.loop !77
  br label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit

_ZN6icu_7812PossibleWord6backUpEP5UText.exit.thread: ; preds = %bb.l, %.thread193, %.thread.i145
  %i.eo = load i32, ptr %i.ay, align 4, !tbaa !17 ; 2 uses
  %i.ep = icmp sgt i32 %i.eo, 0
  br i1 %i.ep, label %bb.n, label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.thread

bb.n:                                             ; preds = %_ZN6icu_7812PossibleWord6backUpEP5UText.exit.thread
  %i.eq = load i32, ptr %i.aa, align 4, !tbaa !14
  %i.er = add nsw i32 %i.eo, -1                   ; 2 uses
  store i32 %i.er, ptr %i.ay, align 4, !tbaa !17
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !16
  %i.ev = add nsw i32 %i.eu, %i.eq
  %i.ew = sext i32 %i.ev to i64
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.ew), !llvm.loop !78
  br label %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167

_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.thread: ; preds = %_ZN6icu_7812PossibleWord6backUpEP5UText.exit.thread, %bb.h, %bb.f, %bb.k
  %i.ex = load i32, ptr %i.aa, align 4, !tbaa !14
  %i.ey = getelementptr inbounds nuw i8, ptr %i.w, i64 20 ; 2 uses
  %i.ez = load i32, ptr %i.az, align 4, !tbaa !18
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !16
  %i.fd = add nsw i32 %i.fc, %i.ex
  %i.fe = sext i32 %i.fd to i64
  call void @utext_setNativeIndex_78(ptr noundef %1, i64 noundef %i.fe)
  %i.ff = load i32, ptr %i.az, align 4, !tbaa !18
  %i.fg = sext i32 %i.ff to i64                   ; 2 uses
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.w, i64 100
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %i.fg
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !16
  %i.fm = add i32 %.0112227, 1
  br label %bb.o

bb.o:                                             ; preds = %.thread192, %bb.e, %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.thread, %bb.d
  %.1113 = phi i32 [ %i.bp, %bb.d ], [ %i.fm, %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.thread ], [ %.0112227, %bb.e ], [ %.0112227, %.thread192 ] ; 5 uses
  %.0111 = phi i32 [ %i.bo, %bb.d ], [ %i.fl, %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.thread ], [ 0, %bb.e ], [ 0, %.thread192 ]
  %.0108 = phi i32 [ %i.bl, %bb.d ], [ %i.fi, %_ZN6icu_7812PossibleWord6backUpEP5UText.exit167.thread ], [ 0, %bb.e ], [ 0, %.thread192 ] ; 7 uses
  %i.fn = call i64 @utext_getNativeIndex_78(ptr noundef %1)
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = icmp sgt i32 %3, %i.fo
  %i.fq = icmp slt i32 %.0111, 3
  %or.cond = and i1 %i.fq, %i.fp
  br i1 %or.cond, label %.noexc175, label %bb.y

.noexc175:                                        ; preds = %bb.o
  %i.fr = urem i32 %.1113, 3
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [180 x i8], ptr %7, i64 %i.fs ; 13 uses
  %i.fu = load ptr, ptr %i.k, align 8, !tbaa !47  ; 2 uses
  %i.fv = call i64 @utext_getNativeIndex_78(ptr noundef %1) ; 2 uses
  %i.fw = trunc i64 %i.fv to i32                  ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !14
  %.not.i170 = icmp eq i32 %i.fy, %i.fw
end_hunk_3
