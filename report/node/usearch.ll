inline.NumInlined: 157
inline.NumDeleted: 35
begin_hunk_0_@_ZL25initializePatternPCETableP13UStringSearchP10UErrorCode:bb.a
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = tail call ptr @ucol_openElements_78(ptr noundef %i.i, ptr noundef %i.j, i32 noundef %i.d, ptr noundef %1) #14 ; 2 uses
  store ptr %i.k, ptr %i.e, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.a, align 8
  tail call void @ucol_setText_78(ptr noundef nonnull %i.f, ptr noundef %i.l, i32 noundef %i.d, ptr noundef %1) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.045 = phi ptr [ %i.k, %bb.b ], [ %i.f, %bb.c ] ; 2 uses
  %i.m = load i32, ptr %1, align 4
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not50 = icmp eq ptr %i.p, %i.b
  %.not51 = icmp eq ptr %i.p, null
  %or.cond = or i1 %.not50, %.not51
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @uprv_free_78(ptr noundef nonnull %i.p) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZN6icu_7813UCollationPCEC1EP18UCollationElements(ptr noundef nonnull align 8 dereferenceable(292) %2, ptr noundef %.045) #14
  %i.q = call noundef i64 @_ZN6icu_7813UCollationPCE13nextProcessedEPiS1_P10UErrorCode(ptr noundef nonnull align 8 dereferenceable(292) %2, ptr noundef null, ptr noundef null, ptr noundef nonnull %1) #14 ; 2 uses
  %.not5271 = icmp eq i64 %i.q, 9223372036854775807
  br i1 %.not5271, label %.critedgethread-pre-split.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.r = add i32 %i.d, 1
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZL18addTouint64_tArrayPlPjbjmjP10UErrorCode.exit
  %i.s = phi i64 [ %i.q, %.lr.ph ], [ %i.ai, %_ZL18addTouint64_tArrayPlPjbjmjP10UErrorCode.exit ]
  %.075 = phi ptr [ %i.b, %.lr.ph ], [ %.1.i, %_ZL18addTouint64_tArrayPlPjbjmjP10UErrorCode.exit ] ; 7 uses
  %.04473 = phi i32 [ 0, %.lr.ph ], [ %i.ah, %_ZL18addTouint64_tArrayPlPjbjmjP10UErrorCode.exit ] ; 6 uses
  %.06572 = phi i32 [ 256, %.lr.ph ], [ %.2, %_ZL18addTouint64_tArrayPlPjbjmjP10UErrorCode.exit ] ; 4 uses
  %i.t = load i32, ptr %1, align 4
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %_ZL18addTouint64_tArrayPlPjbjmjP10UErrorCode.exit63.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not = icmp eq ptr %.075, %i.b
  %i.v = call i32 @ucol_getOffset_78(ptr noundef %.045) #14
  %i.w = load i32, ptr %1, align 4
  %i.x = icmp slt i32 %i.w, 1
  br i1 %i.x, label %bb.j, label %_ZL18addTouint64_tArrayPlPjbjmjP10UErrorCode.exit

bb.j:                                             ; preds = %bb.i
  %.not28.i = icmp ult i32 %.04473, %.06572
  br i1 %.not28.i, label %._crit_edge.i, label %bb.k

._crit_edge.i:                                    ; preds = %bb.j
  %.pre.i = zext i32 %.04473 to i64
  br label %.thread.i

bb.k:                                             ; preds = %bb.j
  %i.y = add i32 %i.r, %.04473
  %i.z = sub i32 %i.y, %i.v                       ; 3 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = call noalias ptr @uprv_malloc_78(i64 noundef %i.ab) #15 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = zext i32 %.04473 to i64                 ; 3 uses
  %i.af = shl nuw nsw i64 %i.ae, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 8 %.075, i64 %i.af, i1 false)
  br i1 %.not, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @uprv_free_78(ptr noundef %.075) #14
  br label %.thread.i

bb.n:                                             ; preds = %bb.k
  store i32 7, ptr %1, align 4
  br label %_ZL18addTouint64_tArrayPlPjbjmjP10UErrorCode.exit

.thread.i:                                        ; preds = %bb.l, %bb.m, %._crit_edge.i
  %.1 = phi i32 [ %.06572, %._crit_edge.i ], [ %i.z, %bb.m ], [ %i.z, %bb.l ]
  %.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.ae, %bb.m ], [ %i.ae, %bb.l ]
  %.125.i = phi ptr [ %.075, %._crit_edge.i ], [ %i.ac, %bb.m ], [ %i.ac, %bb.l ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.125.i, i64 %.pre-phi.i
  store i64 %i.s, ptr %i.ag, align 8
  br label %_ZL18addTouint64_tArrayPlPjbjmjP10UErrorCode.exit

_ZL18addTouint64_tArrayPlPjbjmjP10UErrorCode.exit: ; preds = %bb.i, %bb.n, %.thread.i
  %.2 = phi i32 [ %.1, %.thread.i ], [ %.06572, %bb.n ], [ %.06572, %bb.i ] ; 2 uses
  %.1.i = phi ptr [ %.125.i, %.thread.i ], [ %.075, %bb.n ], [ %.075, %bb.i ] ; 7 uses
  %i.ah = add i32 %.04473, 1                      ; 6 uses
  %i.ai = call noundef i64 @_ZN6icu_7813UCollationPCE13nextProcessedEPiS1_P10UErrorCode(ptr noundef nonnull align 8 dereferenceable(292) %2, ptr noundef null, ptr noundef null, ptr noundef nonnull %1) #14 ; 2 uses
  %.not52 = icmp eq i64 %i.ai, 9223372036854775807
  br i1 %.not52, label %.critedgethread-pre-split, label %bb.h, !llvm.loop !12

.critedgethread-pre-split:                        ; preds = %_ZL18addTouint64_tArrayPlPjbjmjP10UErrorCode.exit
  %.pr = load i32, ptr %1, align 4
  %i.aj = icmp slt i32 %.pr, 1
  %.not66 = icmp eq ptr %.1.i, %i.b
  br i1 %i.aj, label %bb.o, label %_ZL18addTouint64_tArrayPlPjbjmjP10UErrorCode.exit63.thread

.critedgethread-pre-split.thread:                 ; preds = %bb.g
  %.pr89 = load i32, ptr %1, align 4
  %i.ak = icmp slt i32 %.pr89, 1
  br i1 %i.ak, label %._crit_edge.i61, label %_ZL18addTouint64_tArrayPlPjbjmjP10UErrorCode.exit63.thread.thread

bb.o:                                             ; preds = %.critedgethread-pre-split
  %i.al = icmp ult i32 %i.ah, %.2
  br i1 %i.al, label %._crit_edge.i61, label %bb.p

._crit_edge.i61:                                  ; preds = %.critedgethread-pre-split.thread, %bb.o
  %.044.lcssa92100 = phi i32 [ %i.ah, %bb.o ], [ 0, %.critedgethread-pre-split.thread ] ; 2 uses
  %.0.lcssa9399 = phi ptr [ %.1.i, %bb.o ], [ %i.b, %.critedgethread-pre-split.thread ]
  %.pre.i62 = zext i32 %.044.lcssa92100 to i64
  br label %_ZL18addTouint64_tArrayPlPjbjmjP10UErrorCode.exit63

bb.p:                                             ; preds = %bb.o
  %i.am = add i32 %.04473, 2
  %i.an = zext i32 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 3
  %i.ap = call noalias ptr @uprv_malloc_78(i64 noundef %i.ao) #15 ; 4 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = zext i32 %i.ah to i64                   ; 3 uses
  %i.as = shl nuw nsw i64 %i.ar, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr align 8 %.1.i, i64 %i.as, i1 false)
  br i1 %.not66, label %_ZL18addTouint64_tArrayPlPjbjmjP10UErrorCode.exit63, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @uprv_free_78(ptr noundef %.1.i) #14
  br label %_ZL18addTouint64_tArrayPlPjbjmjP10UErrorCode.exit63

bb.s:                                             ; preds = %bb.p
  store i32 7, ptr %1, align 4
  br label %_ZL18addTouint64_tArrayPlPjbjmjP10UErrorCode.exit63.thread

_ZL18addTouint64_tArrayPlPjbjmjP10UErrorCode.exit63: ; preds = %._crit_edge.i61, %bb.r, %bb.q
  %.044.lcssa92101 = phi i32 [ %.044.lcssa92100, %._crit_edge.i61 ], [ %i.ah, %bb.r ], [ %i.ah, %bb.q ]
  %.pre-phi.i59 = phi i64 [ %.pre.i62, %._crit_edge.i61 ], [ %i.ar, %bb.r ], [ %i.ar, %bb.q ]
  %.125.i60 = phi ptr [ %.0.lcssa9399, %._crit_edge.i61 ], [ %i.ap, %bb.r ], [ %i.ap, %bb.q ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.125.i60, i64 %.pre-phi.i59
  store i64 0, ptr %i.at, align 8
  %.pre = load i32, ptr %1, align 4
  %i.au = icmp slt i32 %.pre, 1
  br i1 %i.au, label %bb.u, label %_ZL18addTouint64_tArrayPlPjbjmjP10UErrorCode.exit63.thread

_ZL18addTouint64_tArrayPlPjbjmjP10UErrorCode.exit63.thread: ; preds = %bb.h, %.critedgethread-pre-split, %bb.s, %_ZL18addTouint64_tArrayPlPjbjmjP10UErrorCode.exit63
  %.1.i56104 = phi ptr [ %.125.i60, %_ZL18addTouint64_tArrayPlPjbjmjP10UErrorCode.exit63 ], [ %.1.i, %.critedgethread-pre-split ], [ %.1.i, %bb.s ], [ %.075, %bb.h ] ; 2 uses
  %.not55 = icmp eq ptr %.1.i56104, %i.b
  br i1 %.not55, label %_ZL18addTouint64_tArrayPlPjbjmjP10UErrorCode.exit63.thread.thread, label %bb.t

bb.t:                                             ; preds = %_ZL18addTouint64_tArrayPlPjbjmjP10UErrorCode.exit63.thread
  call void @uprv_free_78(ptr noundef %.1.i56104) #14
  br label %_ZL18addTouint64_tArrayPlPjbjmjP10UErrorCode.exit63.thread.thread

bb.u:                                             ; preds = %_ZL18addTouint64_tArrayPlPjbjmjP10UErrorCode.exit63
  store ptr %.125.i60, ptr %i.o, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1056
  store i32 %.044.lcssa92101, ptr %i.av, align 8
  br label %_ZL18addTouint64_tArrayPlPjbjmjP10UErrorCode.exit63.thread.thread

_ZL18addTouint64_tArrayPlPjbjmjP10UErrorCode.exit63.thread.thread: ; preds = %.critedgethread-pre-split.thread, %_ZL18addTouint64_tArrayPlPjbjmjP10UErrorCode.exit63.thread, %bb.t, %bb.u
  call void @_ZN6icu_7813UCollationPCED1Ev(ptr noundef nonnull align 8 dereferenceable(292) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.v

bb.v:                                             ; preds = %bb.d, %_ZL18addTouint64_tArrayPlPjbjmjP10UErrorCode.exit63.thread.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6icu_7812_GLOBAL__N_19CEIBufferC2EP13UStringSearchP10UErrorCode(ptr noundef nonnull align 8 dereferenceable(1576) %0, ptr noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1536 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1568
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1056
  %i.d = load i32, ptr %i.c, align 8
  %i.e = add nsw i32 %i.d, 32                     ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1544 ; 5 uses
  store i32 %i.e, ptr %i.f, align 8
  %i.g = load ptr, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  %i.i = load i16, ptr %i.h, align 2
  %.not = icmp eq i16 %i.i, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 9 uses
  %3 = ptrtoaddr ptr %i.k to i64                  ; 6 uses
  %.not30 = icmp eq ptr %i.k, null
  br i1 %.not30, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i32, ptr %i.l, align 8              ; 2 uses
  %i.n = sext i32 %i.m to i64
  %.idx = shl nsw i64 %i.n, 1                     ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %.idx
  %i.p = icmp sgt i32 %i.m, 0
  br i1 %i.p, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.q = add i64 %.idx, %3
  %i.r = add i64 %3, 2
  %i.s = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %i.r)
  %i.t = xor i64 %3, -1
  %i.u = add i64 %i.s, %i.t                       ; 2 uses
  %i.v = lshr i64 %i.u, 1
  %i.w = add nuw i64 %i.v, 1                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 22
  br i1 %min.iters.check, label %.lr.ph.preheader45, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 1548
  %i.x = add i64 %.idx, %3
  %i.y = add i64 %3, 2
  %umax = tail call i64 @llvm.umax.i64(i64 %i.x, i64 %i.y)
  %i.z = xor i64 %3, -1
  %i.aa = add i64 %umax, %i.z
  %i.ab = and i64 %i.aa, -2
  %i.ac = getelementptr i8, ptr %i.k, i64 %i.ab
  %scevgep42 = getelementptr i8, ptr %i.ac, i64 2
  %bound0 = icmp ult ptr %i.f, %scevgep42
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader45, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.w, -8                       ; 3 uses
  %i.ad = shl i64 %n.vec, 1
  %i.ae = getelementptr i8, ptr %i.k, i64 %i.ad
  %i.af = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.e, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.af, %vector.ph ], [ %i.ba, %vector.body ]
  %vec.phi43 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %i.ag = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.ag ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !alias.scope !13 ; 3 uses
  %wide.load44 = load <4 x i16>, ptr %i.ah, align 2, !alias.scope !13 ; 3 uses
  %i.ai = add <4 x i16> %wide.load, splat (i16 -4352)
  %i.aj = add <4 x i16> %wide.load44, splat (i16 -4352)
  %i.ak = icmp ult <4 x i16> %i.ai, splat (i16 95)
  %i.al = icmp ult <4 x i16> %i.aj, splat (i16 95)
  %i.am = add <4 x i16> %wide.load, splat (i16 -12593)
  %i.an = add <4 x i16> %wide.load44, splat (i16 -12593)
  %i.ao = icmp ult <4 x i16> %i.am, splat (i16 30)
  %i.ap = icmp ult <4 x i16> %i.an, splat (i16 30)
  %i.aq = or <4 x i1> %i.ak, %i.ao
  %i.ar = or <4 x i1> %i.al, %i.ap
  %i.as = add <4 x i16> %wide.load, splat (i16 -12645)
  %i.at = add <4 x i16> %wide.load44, splat (i16 -12645)
  %i.au = icmp ult <4 x i16> %i.as, splat (i16 34)
  %i.av = icmp ult <4 x i16> %i.at, splat (i16 34)
  %i.aw = or <4 x i1> %i.au, %i.aq
  %i.ax = or <4 x i1> %i.av, %i.ar
  %i.ay = select <4 x i1> %i.aw, <4 x i32> splat (i32 8), <4 x i32> splat (i32 3)
  %i.az = select <4 x i1> %i.ax, <4 x i32> splat (i32 8), <4 x i32> splat (i32 3)
  %i.ba = add <4 x i32> %vec.phi, %i.ay           ; 2 uses
  %i.bb = add <4 x i32> %vec.phi43, %i.az         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bb, %i.ba
  %i.bd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.bd, ptr %i.f, align 8, !alias.scope !19, !noalias !13
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader45

.lr.ph.preheader45:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.038.ph = phi ptr [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph.preheader ], [ %i.ae, %middle.block ]
  %storemerge3637.ph = phi i32 [ %i.e, %vector.memcheck ], [ %i.e, %.lr.ph.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader45, %.lr.ph
  %.038 = phi ptr [ %i.be, %.lr.ph ], [ %.038.ph, %.lr.ph.preheader45 ] ; 2 uses
  %storemerge3637 = phi i32 [ %storemerge, %.lr.ph ], [ %storemerge3637.ph, %.lr.ph.preheader45 ]
  %i.be = getelementptr inbounds nuw i8, ptr %.038, i64 2 ; 2 uses
  %i.bf = load i16, ptr %.038, align 2            ; 3 uses
  %i.bg = add i16 %i.bf, -4352
  %or.cond = icmp ult i16 %i.bg, 95
  %i.bh = add i16 %i.bf, -12593
  %or.cond5 = icmp ult i16 %i.bh, 30
  %or.cond32 = or i1 %or.cond, %or.cond5
  %i.bi = add i16 %i.bf, -12645
  %or.cond8 = icmp ult i16 %i.bi, 34
  %or.cond33 = or i1 %or.cond8, %or.cond32
  %storemerge.v = select i1 %or.cond33, i32 8, i32 3
  %storemerge = add nsw i32 %storemerge3637, %storemerge.v ; 2 uses
  store i32 %storemerge, ptr %i.f, align 8
  %i.bj = icmp ult ptr %i.be, %i.o
  br i1 %i.bj, label %.lr.ph, label %.loopexit, !llvm.loop !21

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %bb.c, %bb.b, %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 3144 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1560
  store ptr %i.bl, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1548
  store i32 0, ptr %i.bn, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1552
  store i32 0, ptr %i.bo, align 8
  %i.bp = load i32, ptr %2, align 4
  %i.bq = icmp slt i32 %i.bp, 1
  br i1 %i.bq, label %bb.d, label %_ZN12_GLOBAL__N_121initTextProcessedIterEP13UStringSearchP10UErrorCode.exit.thread

bb.d:                                             ; preds = %.loopexit
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 3152 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.bu = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 296) #14 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bw = load ptr, ptr %i.bk, align 8
  tail call void @_ZN6icu_7813UCollationPCEC1EP18UCollationElements(ptr noundef nonnull align 8 dereferenceable(292) %i.bu, ptr noundef %i.bw) #14
  store ptr %i.bu, ptr %i.br, align 8
  br label %_ZN12_GLOBAL__N_121initTextProcessedIterEP13UStringSearchP10UErrorCode.exit

bb.g:                                             ; preds = %bb.e
  store ptr null, ptr %i.br, align 8
  br label %_ZN12_GLOBAL__N_121initTextProcessedIterEP13UStringSearchP10UErrorCode.exit.thread.sink.split

bb.h:                                             ; preds = %bb.d
  %i.bx = load ptr, ptr %i.bk, align 8
  tail call void @_ZN6icu_7813UCollationPCE4initEP18UCollationElements(ptr noundef nonnull align 8 dereferenceable(292) %i.bs, ptr noundef %i.bx) #14
  br label %_ZN12_GLOBAL__N_121initTextProcessedIterEP13UStringSearchP10UErrorCode.exit

_ZN12_GLOBAL__N_121initTextProcessedIterEP13UStringSearchP10UErrorCode.exit: ; preds = %bb.h, %bb.f
  %i.by = load i32, ptr %i.f, align 8             ; 2 uses
  %i.bz = icmp sgt i32 %i.by, 96
  br i1 %i.bz, label %bb.i, label %_ZN12_GLOBAL__N_121initTextProcessedIterEP13UStringSearchP10UErrorCode.exit.thread

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_121initTextProcessedIterEP13UStringSearchP10UErrorCode.exit
  %i.ca = zext nneg i32 %i.by to i64
  %i.cb = shl nuw nsw i64 %i.ca, 4
  %i.cc = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.cb) #15 ; 2 uses
  store ptr %i.cc, ptr %i.a, align 8
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_ZN12_GLOBAL__N_121initTextProcessedIterEP13UStringSearchP10UErrorCode.exit.thread.sink.split, label %_ZN12_GLOBAL__N_121initTextProcessedIterEP13UStringSearchP10UErrorCode.exit.thread

_ZN12_GLOBAL__N_121initTextProcessedIterEP13UStringSearchP10UErrorCode.exit.thread.sink.split: ; preds = %bb.i, %bb.g
  store i32 7, ptr %2, align 4
  br label %_ZN12_GLOBAL__N_121initTextProcessedIterEP13UStringSearchP10UErrorCode.exit.thread

_ZN12_GLOBAL__N_121initTextProcessedIterEP13UStringSearchP10UErrorCode.exit.thread: ; preds = %_ZN12_GLOBAL__N_121initTextProcessedIterEP13UStringSearchP10UErrorCode.exit.thread.sink.split, %.loopexit, %bb.i, %_ZN12_GLOBAL__N_121initTextProcessedIterEP13UStringSearchP10UErrorCode.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef range(i32 -1, 10559488) i32 @_ZN12_GLOBAL__N_111codePointAtERK7USearchi(ptr nofree readonly captures(none) %.0.val, i32 %.8.val, i32 noundef %0) unnamed_addr #9 {
bb.a:
  %i.a = icmp slt i32 %0, %.8.val
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %0, 1                        ; 2 uses
  %i.c = sext i32 %0 to i64
  %i.d = getelementptr inbounds [2 x i8], ptr %.0.val, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2
  %i.f = zext i16 %i.e to i32                     ; 4 uses
  %i.g = and i32 %i.f, 64512
  %i.h = icmp ne i32 %i.g, 55296
  %.not = icmp eq i32 %i.b, %.8.val
  %or.cond = select i1 %i.h, i1 true, i1 %.not
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [2 x i8], ptr %.0.val, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2
  %i.l = zext i16 %i.k to i32                     ; 2 uses
  %i.m = and i32 %i.l, 64512
  %i.n = icmp eq i32 %i.m, 56320
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw nsw i32 %i.f, 10
  %i.p = add nsw i32 %i.o, -56613888
  %i.q = add nuw nsw i32 %i.p, %i.l
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.d, %bb.c
  %.0 = phi i32 [ -1, %bb.a ], [ %i.f, %bb.b ], [ %i.q, %bb.d ], [ %i.f, %bb.c ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef signext range(i8 0, 2) i8 @_ZL14checkIdenticalPK13UStringSearchii(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %6 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %8 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
end_hunk_0
