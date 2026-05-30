inline.NumInlined: 2539
inline.NumDeleted: 512
begin_hunk_0_@_ZN6hermes6parser7JSLexer10scanRegExpEv:bb.a
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %i.ds = load i8, ptr %i.br, align 1, !tbaa !171, !range !59, !noundef !51
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %bb.af, label %bb.ag, !prof !62

bb.af:                                            ; preds = %bb.ae
  %i.du = call noundef ptr @_ZN6hermes6parser7JSLexer25convertSurrogatesInStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr %i.dp, i64 %i.dr)
  br label %_ZN6hermes6parser7JSLexer16getStringLiteralEN4llvh9StringRefE.exit26

bb.ag:                                            ; preds = %bb.ae
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !134, !nonnull !51, !align !52
  %i.dx = call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.dw, ptr %i.dp, i64 %i.dr)
  br label %_ZN6hermes6parser7JSLexer16getStringLiteralEN4llvh9StringRefE.exit26

_ZN6hermes6parser7JSLexer16getStringLiteralEN4llvh9StringRefE.exit26: ; preds = %bb.af, %bb.ag
  %.0.i25 = phi ptr [ %i.du, %bb.af ], [ %i.dx, %bb.ag ]
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !201, !nonnull !51, !align !52 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !202 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !210
  %i.ed = zext i32 %i.ec to i64
  %i.ee = load ptr, ptr %i.dz, align 8, !tbaa !216
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ed
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !217
  %i.eh = ptrtoint ptr %i.eg to i64               ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 3 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !219 ; 2 uses
  %i.ek = add i64 %i.eh, 7
  %i.el = add i64 %i.ek, %i.ej
  %i.em = and i64 %i.el, 7
  %.neg30 = add i64 %i.ej, 7
  %i.en = sub i64 %.neg30, %i.em                  ; 3 uses
  store i64 %i.en, ptr %i.ei, align 8, !tbaa !219
  %i.eo = add i64 %i.en, 16                       ; 2 uses
  %i.ep = icmp ugt i64 %i.eo, 262144
  br i1 %i.ep, label %.critedge.i.i, label %bb.ah, !prof !62

.critedge.i.i:                                    ; preds = %_ZN6hermes6parser7JSLexer16getStringLiteralEN4llvh9StringRefE.exit26
  %i.eq = call noundef ptr @_ZN6hermes28BacktrackingBumpPtrAllocator15allocateNewSlabEmm(ptr noundef nonnull align 8 dereferenceable(32) %i.dz, i64 noundef 16, i64 noundef 8) #18
  br label %_ZN6hermes28BacktrackingBumpPtrAllocator8AllocateINS_6parser13RegExpLiteralEEEPT_mm.exit

bb.ah:                                            ; preds = %_ZN6hermes6parser7JSLexer16getStringLiteralEN4llvh9StringRefE.exit26
  %i.er = add i64 %i.en, %i.eh
  %i.es = inttoptr i64 %i.er to ptr
  store i64 %i.eo, ptr %i.ei, align 8, !tbaa !219
  br label %_ZN6hermes28BacktrackingBumpPtrAllocator8AllocateINS_6parser13RegExpLiteralEEEPT_mm.exit

_ZN6hermes28BacktrackingBumpPtrAllocator8AllocateINS_6parser13RegExpLiteralEEEPT_mm.exit: ; preds = %.critedge.i.i, %bb.ah
  %.0.i.i = phi ptr [ %i.eq, %.critedge.i.i ], [ %i.es, %bb.ah ] ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.0.i17, ptr %.0.i.i, align 8, !tbaa !220
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store ptr %.0.i25, ptr %i.eu, align 8, !tbaa !222
  store i32 113, ptr %i.et, align 8, !tbaa !7
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.0.i.i, ptr %i.ev, align 8, !tbaa !223
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes6parser7JSLexer21scanPrivateIdentifierEv(ptr noundef nonnull align 8 dereferenceable(1160) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !19
  %i.d = load i8, ptr %i.c, align 1, !tbaa !66    ; 2 uses
  switch i8 %i.d, label %_ZN6hermes22isASCIIIdentifierStartEj.exit [
    i8 95, label %_ZN6hermes22isASCIIIdentifierStartEj.exit.thread
    i8 36, label %_ZN6hermes22isASCIIIdentifierStartEj.exit.thread
  ]

_ZN6hermes22isASCIIIdentifierStartEj.exit:        ; preds = %bb.a
  %i.e = or i8 %i.d, 32
  %i.f = sext i8 %i.e to i32
  %i.g = add nsw i32 %i.f, -97
  %i.h = icmp ult i32 %i.g, 26
  br i1 %i.h, label %_ZN6hermes22isASCIIIdentifierStartEj.exit.thread, label %bb.b, !prof !130

_ZN6hermes22isASCIIIdentifierStartEj.exit.thread: ; preds = %bb.a, %bb.a, %_ZN6hermes22isASCIIIdentifierStartEj.exit
  tail call void @_ZN6hermes6parser7JSLexer22scanIdentifierFastPathILNS1_14IdentifierModeE0EEEvPKc(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr noundef nonnull %i.c)
  br label %bb.e

bb.b:                                             ; preds = %_ZN6hermes22isASCIIIdentifierStartEj.exit
  %i.i = tail call noundef zeroext i1 @_ZN6hermes6parser7JSLexer22consumeIdentifierStartEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6hermes6parser7JSLexer19scanIdentifierPartsILNS1_14IdentifierModeE0EEEvv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 1, ptr %i.k, align 1, !tbaa !68
  store ptr @.str.76, ptr %1, align 8, !tbaa !66
  store i8 3, ptr %i.j, align 8, !tbaa !71
  %i.l = call noundef zeroext i1 @_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(18) %1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %_ZN6hermes22isASCIIIdentifierStartEj.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 2, ptr %i.m, align 8, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ true, %bb.e ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes6parser7JSLexer10scanNumberENS1_14GrammarContextE(ptr noundef nonnull align 8 dereferenceable(1160) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 7 uses
  %7 = alloca %"class.llvh::SmallString.64", align 8 ; 15 uses
  %8 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %9 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %10 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %11 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %12 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %13 = alloca %"class.llvh::StringRef", align 8  ; 5 uses
  %14 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %15 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 29 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 16 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !66
  %i.e = icmp ne i8 %i.d, 48                      ; 2 uses
  br i1 %i.e, label %.split.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !66    ; 2 uses
  %i.h = or i8 %i.g, 32                           ; 2 uses
  switch i8 %i.h, label %bb.e [
    i8 120, label %.split.us.preheader
    i8 111, label %bb.c
    i8 98, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  br label %.split.preheader.sink.split

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  br label %.split.preheader.sink.split

bb.e:                                             ; preds = %bb.b
  %i.k = icmp eq i8 %i.g, 46
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.m = icmp eq i8 %i.h, 101
  br i1 %i.m, label %bb.h, label %.split.preheader.sink.split

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  br label %bb.p

.split.preheader.sink.split:                      ; preds = %bb.g, %bb.d, %bb.c
  %.sink = phi ptr [ %i.j, %bb.d ], [ %i.i, %bb.c ], [ %i.f, %bb.g ] ; 2 uses
  %.0211.ph.ph = phi i32 [ 2, %bb.d ], [ 8, %bb.c ], [ 8, %bb.g ]
  %.0207.ph.ph = phi i8 [ 0, %bb.d ], [ 0, %bb.c ], [ 1, %bb.g ]
  %.087.ph.ph = phi ptr [ %i.j, %bb.d ], [ %i.i, %bb.c ], [ %i.c, %bb.g ]
  store ptr %.sink, ptr %i.b, align 8, !tbaa !19
  br label %.split.preheader

.split.preheader:                                 ; preds = %.split.preheader.sink.split, %bb.a
  %.promoted.ph = phi ptr [ %i.c, %bb.a ], [ %.sink, %.split.preheader.sink.split ] ; 3 uses
  %.0211.ph = phi i32 [ 10, %bb.a ], [ %.0211.ph.ph, %.split.preheader.sink.split ] ; 2 uses
  %.0207.ph = phi i8 [ 0, %bb.a ], [ %.0207.ph.ph, %.split.preheader.sink.split ] ; 2 uses
  %.087.ph = phi ptr [ %i.c, %bb.a ], [ %.087.ph.ph, %.split.preheader.sink.split ] ; 2 uses
  %i.o = load i8, ptr %.promoted.ph, align 1, !tbaa !66 ; 3 uses
  %i.p = sext i8 %i.o to i32
  %isdigittmp365 = add nsw i32 %i.p, -48
  %isdigit366 = icmp ult i32 %isdigittmp365, 10
  %.old367 = icmp eq i8 %i.o, 95                  ; 2 uses
  %or.cond265368 = or i1 %isdigit366, %.old367
  br i1 %or.cond265368, label %.critedge, label %.split244.us

.split.us.preheader:                              ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.critedge.us
  %.sink346 = phi ptr [ %i.q, %.split.us.preheader ], [ %i.x, %.critedge.us ] ; 4 uses
  %.090.us = phi i8 [ 0, %.split.us.preheader ], [ %17, %.critedge.us ] ; 2 uses
  store ptr %.sink346, ptr %i.b, align 8, !tbaa !19
  %i.r = load i8, ptr %.sink346, align 1, !tbaa !66 ; 4 uses
  %i.s = sext i8 %i.r to i32                      ; 2 uses
  %isdigittmp.us = add nsw i32 %i.s, -48
  %isdigit.us = icmp ult i32 %isdigittmp.us, 10
  br i1 %isdigit.us, label %.critedge.us, label %bb.i

bb.i:                                             ; preds = %.split.us
  %i.t = or i32 %i.s, 32
  %i.u = add nsw i32 %i.t, -97
  %or.cond128.us = icmp ult i32 %i.u, 6
  %i.v = icmp eq i8 %i.r, 95
  %or.cond238.us = or i1 %i.v, %or.cond128.us
  br i1 %or.cond238.us, label %.critedge.us, label %.split244.us

.critedge.us:                                     ; preds = %bb.i, %.split.us
  %i.w = icmp eq i8 %i.r, 95
  %16 = zext i1 %i.w to i8
  %17 = or i8 %.090.us, %16
  %i.x = getelementptr inbounds nuw i8, ptr %.sink346, i64 1
  br label %.split.us, !llvm.loop !224

.critedge:                                        ; preds = %.split.preheader, %.critedge
  %.old370 = phi i1 [ %.old, %.critedge ], [ %.old367, %.split.preheader ]
  %.090369 = phi i8 [ %19, %.critedge ], [ 0, %.split.preheader ]
  %i.y = phi ptr [ %i.z, %.critedge ], [ %.promoted.ph, %.split.preheader ]
  %18 = zext i1 %.old370 to i8
  %19 = or i8 %.090369, %18                       ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 4 uses
  store ptr %i.z, ptr %i.b, align 8, !tbaa !19
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !66   ; 3 uses
  %i.ab = sext i8 %i.aa to i32
  %isdigittmp = add nsw i32 %i.ab, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  %.old = icmp eq i8 %i.aa, 95                    ; 2 uses
  %or.cond265 = or i1 %isdigit, %.old
  br i1 %or.cond265, label %.critedge, label %.split244.us, !llvm.loop !224

.split244.us:                                     ; preds = %bb.i, %.critedge, %.split.preheader
  %.087311 = phi ptr [ %.087.ph, %.split.preheader ], [ %.087.ph, %.critedge ], [ %i.q, %bb.i ] ; 4 uses
  %.0207309 = phi i8 [ %.0207.ph, %.split.preheader ], [ %.0207.ph, %.critedge ], [ 0, %bb.i ] ; 4 uses
  %.0211307 = phi i32 [ %.0211.ph, %.split.preheader ], [ %.0211.ph, %.critedge ], [ 16, %bb.i ] ; 4 uses
  %.us-phi = phi i8 [ 0, %.split.preheader ], [ %19, %.critedge ], [ %.090.us, %bb.i ] ; 4 uses
  %.us-phi245 = phi ptr [ %.promoted.ph, %.split.preheader ], [ %i.z, %.critedge ], [ %.sink346, %bb.i ] ; 2 uses
  %.us-phi246 = phi i8 [ %i.o, %.split.preheader ], [ %i.aa, %.critedge ], [ %i.r, %bb.i ] ; 2 uses
  %i.ac = trunc nuw i8 %.0207309 to i1
  %or.cond = or i1 %i.e, %i.ac
  br i1 %or.cond, label %bb.j, label %.loopexit239

bb.j:                                             ; preds = %.split244.us
  %i.ad = icmp eq i8 %.us-phi246, 46
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %.us-phi245, i64 1
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.af = and i8 %.us-phi246, -33
  %i.ag = icmp eq i8 %i.af, 69
  br i1 %i.ag, label %bb.m, label %.loopexit239

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %.us-phi245, i64 1
  br label %bb.p

bb.n:                                             ; preds = %bb.k, %bb.f
  %.1212 = phi i32 [ 10, %bb.f ], [ %.0211307, %bb.k ] ; 2 uses
  %.1208 = phi i8 [ 0, %bb.f ], [ %.0207309, %bb.k ] ; 2 uses
  %storemerge = phi ptr [ %i.l, %bb.f ], [ %i.ae, %bb.k ] ; 4 uses
  %.191 = phi i8 [ 0, %bb.f ], [ %.us-phi, %bb.k ] ; 2 uses
  %.188 = phi ptr [ %i.c, %bb.f ], [ %.087311, %bb.k ] ; 2 uses
  store ptr %storemerge, ptr %i.b, align 8, !tbaa !19
  %i.ai = load i8, ptr %storemerge, align 1, !tbaa !66 ; 3 uses
  %i.aj = sext i8 %i.ai to i32
  %isdigittmp111249 = add nsw i32 %i.aj, -48
  %isdigit112250 = icmp ult i32 %isdigittmp111249, 10
  %i.ak = icmp eq i8 %i.ai, 95                    ; 2 uses
  %or.cond129251 = or i1 %i.ak, %isdigit112250
  br i1 %or.cond129251, label %.critedge4, label %._crit_edge

.critedge4:                                       ; preds = %bb.n, %.critedge4
  %i.al = phi i1 [ %i.ap, %.critedge4 ], [ %i.ak, %bb.n ]
  %.292253 = phi i8 [ %21, %.critedge4 ], [ %.191, %bb.n ]
  %storemerge110252 = phi ptr [ %i.am, %.critedge4 ], [ %storemerge, %bb.n ]
  %20 = zext i1 %i.al to i8
  %21 = or i8 %.292253, %20                       ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %storemerge110252, i64 1 ; 4 uses
  store ptr %i.am, ptr %i.b, align 8, !tbaa !19
  %i.an = load i8, ptr %i.am, align 1, !tbaa !66  ; 3 uses
  %i.ao = sext i8 %i.an to i32
  %isdigittmp111 = add nsw i32 %i.ao, -48
  %isdigit112 = icmp ult i32 %isdigittmp111, 10
  %i.ap = icmp eq i8 %i.an, 95                    ; 2 uses
  %or.cond129 = or i1 %i.ap, %isdigit112
  br i1 %or.cond129, label %.critedge4, label %._crit_edge, !llvm.loop !225

._crit_edge:                                      ; preds = %.critedge4, %bb.n
  %storemerge110.lcssa = phi ptr [ %storemerge, %bb.n ], [ %i.am, %.critedge4 ]
  %.292.lcssa = phi i8 [ %.191, %bb.n ], [ %21, %.critedge4 ] ; 2 uses
  %.lcssa240 = phi i8 [ %i.ai, %bb.n ], [ %i.an, %.critedge4 ]
  %i.aq = and i8 %.lcssa240, -33
  %i.ar = icmp eq i8 %i.aq, 69
  br i1 %i.ar, label %bb.o, label %.loopexit239

bb.o:                                             ; preds = %._crit_edge
  %i.as = getelementptr inbounds nuw i8, ptr %storemerge110.lcssa, i64 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.h
  %.sink347 = phi ptr [ %i.as, %bb.o ], [ %i.ah, %bb.m ], [ %i.n, %bb.h ] ; 4 uses
  %.2213 = phi i32 [ %.1212, %bb.o ], [ %.0211307, %bb.m ], [ 10, %bb.h ] ; 2 uses
  %.2209 = phi i8 [ %.1208, %bb.o ], [ %.0207309, %bb.m ], [ 0, %bb.h ] ; 2 uses
  %.393 = phi i8 [ %.292.lcssa, %bb.o ], [ %.us-phi, %bb.m ], [ 0, %bb.h ]
  %.289 = phi ptr [ %.188, %bb.o ], [ %.087311, %bb.m ], [ %i.c, %bb.h ] ; 2 uses
  store ptr %.sink347, ptr %i.b, align 8, !tbaa !19
  %i.at = load i8, ptr %.sink347, align 1, !tbaa !66 ; 2 uses
  switch i8 %i.at, label %bb.r [
    i8 43, label %bb.q
    i8 45, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %.sink347, i64 1 ; 3 uses
  store ptr %i.au, ptr %i.b, align 8, !tbaa !19
  %.pre = load i8, ptr %i.au, align 1, !tbaa !66
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.av = phi i8 [ %i.at, %bb.p ], [ %.pre, %bb.q ] ; 2 uses
  %.promoted256 = phi ptr [ %.sink347, %bb.p ], [ %i.au, %bb.q ]
  %i.aw = sext i8 %i.av to i32
  %isdigittmp113 = add nsw i32 %i.aw, -48
  %isdigit114 = icmp ult i32 %isdigittmp113, 10
  br i1 %isdigit114, label %.critedge6, label %.loopexit239.thread

.critedge6:                                       ; preds = %bb.r, %.critedge6
  %i.ax = phi i8 [ %i.bb, %.critedge6 ], [ %i.av, %bb.r ]
  %i.ay = phi ptr [ %i.ba, %.critedge6 ], [ %.promoted256, %bb.r ]
  %.494 = phi i8 [ %23, %.critedge6 ], [ %.393, %bb.r ]
  %i.az = icmp eq i8 %i.ax, 95
  %22 = zext i1 %i.az to i8
  %23 = or i8 %.494, %22                          ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 3 uses
  store ptr %i.ba, ptr %i.b, align 8, !tbaa !19
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !66  ; 3 uses
  %i.bc = sext i8 %i.bb to i32
  %isdigittmp115 = add nsw i32 %i.bc, -48
  %isdigit116 = icmp ult i32 %isdigittmp115, 10
  %i.bd = icmp eq i8 %i.bb, 95
  %or.cond130 = or i1 %i.bd, %isdigit116
  br i1 %or.cond130, label %.critedge6, label %.loopexit239, !llvm.loop !226

.loopexit239:                                     ; preds = %.critedge6, %._crit_edge, %.split244.us, %bb.l
  %.3214 = phi i32 [ %.0211307, %.split244.us ], [ %.0211307, %bb.l ], [ %.1212, %._crit_edge ], [ %.2213, %.critedge6 ] ; 11 uses
  %.3210 = phi i8 [ 0, %.split244.us ], [ %.0207309, %bb.l ], [ %.1208, %._crit_edge ], [ %.2209, %.critedge6 ] ; 3 uses
  %.5 = phi i8 [ %.us-phi, %.split244.us ], [ %.us-phi, %bb.l ], [ %.292.lcssa, %._crit_edge ], [ %23, %.critedge6 ] ; 3 uses
  %.3 = phi ptr [ %.087311, %.split244.us ], [ %.087311, %bb.l ], [ %.188, %._crit_edge ], [ %.289, %.critedge6 ] ; 18 uses
  %.0 = phi i1 [ false, %.split244.us ], [ false, %bb.l ], [ true, %._crit_edge ], [ true, %.critedge6 ] ; 3 uses
  %i.be = tail call noundef zeroext i1 @_ZN6hermes6parser7JSLexer22consumeIdentifierStartEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  br i1 %i.be, label %bb.s, label %bb.ag

.loopexit239.thread:                              ; preds = %bb.r
  %i.bf = tail call noundef zeroext i1 @_ZN6hermes6parser7JSLexer22consumeIdentifierStartEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  br i1 %i.bf, label %bb.s, label %..thread224_crit_edge

bb.s:                                             ; preds = %.loopexit239.thread, %.loopexit239
  %.0328 = phi i1 [ true, %.loopexit239.thread ], [ %.0, %.loopexit239 ]
  %.3325 = phi ptr [ %.289, %.loopexit239.thread ], [ %.3, %.loopexit239 ] ; 5 uses
  %.3210322 = phi i8 [ %.2209, %.loopexit239.thread ], [ %.3210, %.loopexit239 ]
  %.3214320 = phi i32 [ %.2213, %.loopexit239.thread ], [ %.3214, %.loopexit239 ] ; 2 uses
  tail call void @_ZN6hermes6parser7JSLexer22consumeIdentifierPartsILNS1_14IdentifierModeE0EEEvv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !19  ; 12 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.c to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 5 uses
  br i1 %.0328, label %.thread224, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = trunc nuw i8 %.3210322 to i1
  br i1 %i.bk, label %bb.u, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread217

bb.u:                                             ; preds = %bb.t
  %i.bl = icmp eq i64 %i.bj, 2
  br i1 %i.bl, label %_ZNK4llvh9StringRef6equalsES0_.exit, label %.thread224

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.u
  %i.bm = load i16, ptr %i.c, align 1
  %i.bn = icmp ne i16 %i.bm, 28208
  %i.bo = zext i1 %i.bn to i32
  %i.bp = icmp eq i32 %i.bo, 0
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = icmp eq i32 %i.br, 1
  %or.cond351 = select i1 %i.bp, i1 %i.bs, i1 false
  br i1 %or.cond351, label %_ZNK4llvh9StringRef6equalsES0_.exit136, label %.thread224

_ZNK4llvh9StringRef6equalsES0_.exit.thread217:    ; preds = %bb.t
  %.old348 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.old349 = load i32, ptr %.old348, align 8, !tbaa !132
  %.old350 = icmp eq i32 %.old349, 1
  br i1 %.old350, label %_ZNK4llvh9StringRef6equalsES0_.exit136, label %.thread224

_ZNK4llvh9StringRef6equalsES0_.exit136:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit, %_ZNK4llvh9StringRef6equalsES0_.exit.thread217
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !131
  %lhsc = load i8, ptr %i.bu, align 1
  %i.bv = icmp eq i8 %lhsc, 110
  br i1 %i.bv, label %_ZNK4llvh9StringRef6equalsES0_.exit136.thread219, label %.thread224

_ZNK4llvh9StringRef6equalsES0_.exit136.thread219: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit136
  %i.bw = getelementptr inbounds i8, ptr %i.bg, i64 -1 ; 3 uses
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %.3325 to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 2 uses
  %.not117 = icmp eq ptr %i.bw, %.3325
  br i1 %.not117, label %.thread224, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit136.thread219
  %i.ca = getelementptr inbounds nuw i8, ptr %.3325, i64 %i.bz
  %i.cb = add nuw nsw i32 %.3214320, 48           ; 2 uses
  %i.cc = add nuw nsw i32 %.3214320, 87           ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.ca, i64 -1
  %i.ce = load i8, ptr %.3325, align 1, !tbaa !66 ; 3 uses
  %i.cf = add i8 %i.ce, -48
  %or.cond.peel.i = icmp ult i8 %i.cf, 10
  %i.cg = zext nneg i8 %i.ce to i32
  %i.ch = icmp sgt i32 %i.cb, %i.cg
  %or.cond33.peel.i = select i1 %or.cond.peel.i, i1 %i.ch, i1 false
  br i1 %or.cond33.peel.i, label %.critedge.peel.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  %i.ci = or i8 %i.ce, 32                         ; 2 uses
  %i.cj = icmp sgt i8 %i.ci, 96
  %i.ck = zext nneg i8 %i.ci to i32
  %i.cl = icmp sgt i32 %i.cc, %i.ck
  %or.cond50.peel.i = select i1 %i.cj, i1 %i.cl, i1 false
  br i1 %or.cond50.peel.i, label %.critedge.peel.i, label %.thread224

.critedge.peel.i:                                 ; preds = %bb.v, %.lr.ph.i
  %.not.peel.i = icmp samesign eq i64 %i.bz, 1
  br i1 %.not.peel.i, label %.critedge132, label %.peel.next.i

.peel.next.i:                                     ; preds = %.critedge.peel.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.3325, i64 1
  br label %bb.w

bb.w:                                             ; preds = %.critedge.i, %.peel.next.i
  %.02441.i = phi ptr [ %i.cm, %.peel.next.i ], [ %i.cz, %.critedge.i ] ; 4 uses
  %i.cn = load i8, ptr %.02441.i, align 1, !tbaa !66 ; 4 uses
  %i.co = add i8 %i.cn, -48
  %or.cond.i = icmp ult i8 %i.co, 10
  %i.cp = zext nneg i8 %i.cn to i32
  %i.cq = icmp sgt i32 %i.cb, %i.cp
  %or.cond33.i = select i1 %or.cond.i, i1 %i.cq, i1 false
  br i1 %or.cond33.i, label %.critedge.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = or i8 %i.cn, 32                         ; 2 uses
  %i.cs = icmp sgt i8 %i.cr, 96
  %i.ct = zext nneg i8 %i.cr to i32
  %i.cu = icmp sgt i32 %i.cc, %i.ct
  %or.cond50.i = select i1 %i.cs, i1 %i.cu, i1 false
  br i1 %or.cond50.i, label %.critedge.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = icmp ne i8 %i.cn, 95
  %i.cw = icmp eq ptr %.02441.i, %i.cd
  %or.cond54.i = select i1 %i.cv, i1 true, i1 %i.cw, !prof !227
  br i1 %or.cond54.i, label %.thread224, label %bb.z, !prof !227

bb.z:                                             ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw i8, ptr %.02441.i, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !66
  %.not30.i = icmp eq i8 %i.cy, 95
  br i1 %.not30.i, label %.thread224, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z, %bb.x, %bb.w
  %i.cz = getelementptr inbounds nuw i8, ptr %.02441.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.cz, %i.bw
  br i1 %.not.i, label %.critedge132, label %bb.w, !llvm.loop !228

.critedge132:                                     ; preds = %.critedge.i, %.critedge.peel.i
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  store i32 0, ptr %i.db, align 8, !tbaa !132
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !148
  %i.de = zext i32 %i.dd to i64
  %i.df = icmp ugt i64 %i.bj, %i.de
  br i1 %i.df, label %.thread.i, label %bb.aa

.thread.i:                                        ; preds = %.critedge132
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 456
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %i.da, ptr noundef nonnull %i.dg, i64 noundef %i.bj, i64 noundef 1) #18
  %.pre7.pre.i.i = load i32, ptr %i.db, align 8, !tbaa !132
  %i.dh = zext i32 %.pre7.pre.i.i to i64
  br label %bb.ab

bb.aa:                                            ; preds = %.critedge132
  %.not.i.i.i = icmp eq ptr %i.bg, %i.c
  br i1 %.not.i.i.i, label %_ZN4llvh11SmallStringILj256EE6appendENS_9StringRefE.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.thread.i
  %.pre7.i4.i = phi i64 [ %i.dh, %.thread.i ], [ 0, %bb.aa ]
  %i.di = load ptr, ptr %i.da, align 8, !tbaa !131
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %.pre7.i4.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dj, ptr nonnull align 1 %i.c, i64 %i.bj, i1 false)
  %.pre.i.i = load i32, ptr %i.db, align 8, !tbaa !132
  br label %_ZN4llvh11SmallStringILj256EE6appendENS_9StringRefE.exit

_ZN4llvh11SmallStringILj256EE6appendENS_9StringRefE.exit: ; preds = %bb.aa, %bb.ab
  %i.dk = phi i32 [ 0, %bb.aa ], [ %.pre.i.i, %bb.ab ]
  %i.dl = trunc i64 %i.bj to i32
  %i.dm = add i32 %i.dk, %i.dl                    ; 2 uses
  store i32 %i.dm, ptr %i.db, align 8, !tbaa !132
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.do = load ptr, ptr %i.da, align 8, !tbaa !131 ; 2 uses
  %i.dp = zext i32 %i.dm to i64                   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !171, !range !59, !noundef !51
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.ac, label %bb.ad, !prof !62

bb.ac:                                            ; preds = %_ZN4llvh11SmallStringILj256EE6appendENS_9StringRefE.exit
  %i.dt = tail call noundef ptr @_ZN6hermes6parser7JSLexer25convertSurrogatesInStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr %i.do, i64 %i.dp)
  br label %bb.ae

bb.ad:                                            ; preds = %_ZN4llvh11SmallStringILj256EE6appendENS_9StringRefE.exit
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !134, !nonnull !51, !align !52
  %i.dw = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.dv, ptr %i.do, i64 %i.dp)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.0.i141 = phi ptr [ %i.dt, %bb.ac ], [ %i.dw, %bb.ad ]
  store i32 115, ptr %i.dn, align 8, !tbaa !7
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.0.i141, ptr %i.dx, align 8, !tbaa !230
  br label %bb.cb

..thread224_crit_edge:                            ; preds = %.loopexit239.thread
  %.pre280 = load ptr, ptr %i.b, align 8, !tbaa !19
  br label %.thread224

.thread224:                                       ; preds = %bb.z, %bb.y, %..thread224_crit_edge, %_ZNK4llvh9StringRef6equalsES0_.exit136, %_ZNK4llvh9StringRef6equalsES0_.exit, %bb.s, %_ZNK4llvh9StringRef6equalsES0_.exit136.thread219, %bb.u, %_ZNK4llvh9StringRef6equalsES0_.exit.thread217, %bb.v
  %i.dy = phi ptr [ %.pre280, %..thread224_crit_edge ], [ %i.bg, %bb.v ], [ %i.bg, %_ZNK4llvh9StringRef6equalsES0_.exit136 ], [ %i.bg, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ %i.bg, %bb.s ], [ %i.bg, %_ZNK4llvh9StringRef6equalsES0_.exit136.thread219 ], [ %i.bg, %bb.u ], [ %i.bg, %_ZNK4llvh9StringRef6equalsES0_.exit.thread217 ], [ %i.bg, %bb.y ], [ %i.bg, %bb.z ]
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i = load ptr, ptr %i.dz, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 1, ptr %i.eb, align 1, !tbaa !68
  store ptr @.str.67, ptr %4, align 8, !tbaa !66
  store i8 3, ptr %i.ea, align 8, !tbaa !71
  %i.ec = load ptr, ptr %0, align 8, !tbaa !50, !nonnull !51, !align !52
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh7SMRangeERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ec, i32 noundef 0, ptr %.sroa.0.0.copyload.i, ptr %i.dy, ptr noundef nonnull align 8 dereferenceable(18) %4, i32 noundef 1) #18
  %i.ed = load ptr, ptr %0, align 8, !tbaa !50, !nonnull !51, !align !52
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 316
end_hunk_0
