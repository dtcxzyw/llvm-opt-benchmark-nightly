Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/normalizer2impl?download=true
inline.NumInlined: 333
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6icu_7816ReorderingBufferD2Ev:bb.a
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #16
  unreachable
}

declare ptr @u_strchr_78(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

declare i32 @ucptrie_internalSmallIndex_78(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef signext i8 @_ZNK6icu_7815Normalizer2Impl9decomposeEitRNS_16ReorderingBufferER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [3 x i16], align 2                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !66
  %.not = icmp ult i16 %2, %i.c
  %.0.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %.0.i.sroa.gep47 = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.e = load i16, ptr %i.d, align 2, !tbaa !69
  %.not43 = icmp ult i16 %2, %i.e
  br i1 %.not43, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ugt i16 %2, -1025
  %i.g = lshr i16 %2, 1
  %i.h = trunc i16 %i.g to i8
  %i.i = select i1 %i.f, i8 %i.h, i8 0            ; 2 uses
  %i.j = icmp slt i32 %1, 65536
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = trunc i32 %1 to i16
  %i.l = tail call noundef signext i8 @_ZN6icu_7816ReorderingBuffer9appendBMPEDshR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %3, i16 noundef zeroext %i.k, i8 noundef zeroext %i.i, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit

bb.e:                                             ; preds = %bb.c
  %i.m = tail call noundef signext i8 @_ZN6icu_7816ReorderingBuffer19appendSupplementaryEihR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %1, i8 noundef zeroext %i.i, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.o = load i16, ptr %i.n, align 2, !tbaa !67
  %i.p = icmp ult i16 %2, %i.o
  br i1 %i.p, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.q = lshr i16 %2, 3
  %i.r = zext nneg i16 %i.q to i32
  %i.s = add nsw i32 %1, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.u = load i16, ptr %i.t, align 4, !tbaa !70
  %i.v = zext i16 %i.u to i32
  %i.w = sub i32 %i.s, %i.v                       ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !47   ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25
  %i.ab = icmp ult i32 %i.w, 65536
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.y, align 8, !tbaa !49
  %i.ad = lshr i32 %i.w, 6
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !50
  %i.ah = zext i16 %i.ag to i32
  %i.ai = and i32 %i.w, 63
  %i.aj = add nuw nsw i32 %i.ai, %i.ah
  br label %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit

bb.i:                                             ; preds = %bb.g
  %i.ak = icmp ult i32 %i.w, 1114112
  br i1 %i.ak, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.am = load i32, ptr %i.al, align 8, !tbaa !51
  %.not.i = icmp slt i32 %i.w, %i.am
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !52
  %i.ap = add nsw i32 %i.ao, -2
  br label %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit

bb.l:                                             ; preds = %bb.j
  %i.aq = tail call i32 @ucptrie_internalSmallIndex_78(ptr noundef nonnull %i.y, i32 noundef %i.w)
  br label %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit

bb.m:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !52
  %i.at = add nsw i32 %i.as, -1
  br label %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit

_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit: ; preds = %bb.h, %bb.k, %bb.l, %bb.m
  %i.au = phi i32 [ %i.aj, %bb.h ], [ %i.at, %bb.m ], [ %i.ap, %bb.k ], [ %i.aq, %bb.l ]
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !50
  br label %bb.n

bb.n:                                             ; preds = %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit, %bb.f, %bb.a
  %.034 = phi i16 [ %i.ax, %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit ], [ %2, %bb.f ], [ %2, %bb.a ] ; 6 uses
  %.033 = phi i32 [ %i.w, %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit ], [ %1, %bb.f ], [ %1, %bb.a ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !63 ; 2 uses
  %i.ba = icmp ult i16 %.034, %i.az
  br i1 %i.ba, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bb = icmp slt i32 %.033, 65536
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = trunc i32 %.033 to i16
  %i.bd = tail call noundef signext i8 @_ZN6icu_7816ReorderingBuffer9appendBMPEDshR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %3, i16 noundef zeroext %i.bc, i8 noundef zeroext 0, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit

bb.q:                                             ; preds = %bb.o
  %i.be = tail call noundef signext i8 @_ZN6icu_7816ReorderingBuffer19appendSupplementaryEihR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %.033, i8 noundef zeroext 0, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit

bb.r:                                             ; preds = %bb.n
  %.not44 = icmp eq i16 %.034, %i.az
  br i1 %.not44, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load i16, ptr %i.bf, align 8, !tbaa !64
  %i.bh = or i16 %i.bg, 1
  %.not45 = icmp eq i16 %.034, %i.bh
  br i1 %.not45, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.bi = add nsw i32 %.033, -44032               ; 3 uses
  %i.bj = srem i32 %i.bi, 28                      ; 2 uses
  %i.bk = sdiv i32 %i.bi, 28
  %i.bl = sdiv i32 %i.bi, 588
  %i.bm = trunc i32 %i.bl to i16
  %i.bn = add i16 %i.bm, 4352
  store i16 %i.bn, ptr %i.a, align 2, !tbaa !34
  %i.bo = srem i32 %i.bk, 21
  %i.bp = trunc nsw i32 %i.bo to i16
  %i.bq = add nsw i16 %i.bp, 4449
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 %i.bq, ptr %i.br, align 2, !tbaa !34
  %i.bs = icmp eq i32 %i.bj, 0
  br i1 %i.bs, label %_ZN6icu_786Hangul9decomposeEiPDs.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = trunc nsw i32 %i.bj to i16
  %i.bu = add nsw i16 %i.bt, 4519
  store i16 %i.bu, ptr %.0.i.sroa.gep47, align 2, !tbaa !34
  br label %_ZN6icu_786Hangul9decomposeEiPDs.exit

_ZN6icu_786Hangul9decomposeEiPDs.exit:            ; preds = %bb.t, %bb.u
  %.0.i.sroa.phi = phi ptr [ %.0.i.sroa.gep, %bb.u ], [ %.0.i.sroa.gep47, %bb.t ]
  %i.bv = call noundef signext i8 @_ZN6icu_7816ReorderingBuffer12appendZeroCCEPKDsS2_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull %i.a, ptr noundef nonnull %.0.i.sroa.phi, ptr noundef nonnull align 4 dereferenceable(4) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit

bb.v:                                             ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !67 ; 2 uses
  %.not.i41 = icmp ult i16 %.034, %i.bx
  %narrow.i = sub i16 %.034, %i.bx
  %i.by = load i16, ptr %i.b, align 2
  %i.bz = add i16 %narrow.i, %i.by
  %.0.i42 = select i1 %.not.i41, i16 %.034, i16 %i.bz
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !57
  %i.cc = lshr i16 %.0.i42, 1
  %i.cd = zext nneg i16 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.cd ; 3 uses
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !50 ; 2 uses
  %i.cg = zext i16 %i.cf to i32                   ; 2 uses
  %i.ch = and i32 %i.cg, 31
  %i.ci = lshr i16 %i.cf, 8
  %i.cj = trunc nuw i16 %i.ci to i8
  %i.ck = and i32 %i.cg, 128
  %.not39 = icmp eq i32 %i.ck, 0
  br i1 %.not39, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cl = getelementptr i8, ptr %i.ce, i64 -1
  %5 = load i8, ptr %i.cl, align 1, !tbaa !50
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %.0 = phi i8 [ %5, %bb.w ], [ 0, %bb.v ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.cn = tail call noundef signext i8 @_ZN6icu_7816ReorderingBuffer6appendEPKDsiahhR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull %i.cm, i32 noundef %i.ch, i8 noundef signext 1, i8 noundef zeroext %.0, i8 noundef zeroext %i.cj, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit

_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit: ; preds = %bb.q, %bb.p, %bb.e, %bb.d, %bb.x, %_ZN6icu_786Hangul9decomposeEiPDs.exit
  %.032 = phi i8 [ %i.cn, %bb.x ], [ %i.m, %bb.e ], [ %i.bv, %_ZN6icu_786Hangul9decomposeEiPDs.exit ], [ %i.l, %bb.d ], [ %i.bd, %bb.p ], [ %i.be, %bb.q ]
  ret i8 %.032
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6icu_7815Normalizer2Impl14decomposeShortEPKDsS2_aaRNS_16ReorderingBufferER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef readonly captures(address, ret: address, provenance) %1, ptr nofree noundef readnone captures(address) %2, i8 noundef signext %3, i8 noundef signext %4, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %6, align 4, !tbaa !29
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %.preheader, label %.thread61

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.d = icmp ult ptr %1, %2
  br i1 %i.d, label %.lr.ph, label %.thread61

.lr.ph:                                           ; preds = %.preheader
  %.not46 = icmp eq i8 %3, 0                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 2 uses
  %.not3.i = icmp eq i8 %4, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph
  %.04065 = phi ptr [ %1, %.lr.ph ], [ %.242, %.backedge.backedge ] ; 6 uses
  %.pre = load i16, ptr %.04065, align 2, !tbaa !34 ; 2 uses
  br i1 %.not46, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.backedge
  %i.j = load i16, ptr %i.e, align 2, !tbaa !46
  %i.k = icmp ult i16 %.pre, %i.j
  br i1 %i.k, label %.thread61, label %bb.c

bb.c:                                             ; preds = %bb.b, %.backedge
  %i.l = getelementptr inbounds nuw i8, ptr %.04065, i64 2 ; 4 uses
  %i.m = zext i16 %.pre to i32                    ; 7 uses
  %i.n = and i32 %i.m, 63488
  %i.o = icmp eq i32 %i.n, 55296
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !47   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !49
  %i.r = lshr i32 %i.m, 6
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !50
  %i.v = zext i16 %i.u to i32
  %i.w = and i32 %i.m, 63
  %i.x = add nuw nsw i32 %i.w, %i.v
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.y = and i32 %i.m, 1024
  %i.z = icmp ne i32 %i.y, 0
  %.not47 = icmp eq ptr %i.l, %2
  %or.cond = select i1 %i.z, i1 true, i1 %.not47
  br i1 %or.cond, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load i16, ptr %i.l, align 2, !tbaa !34
  %i.ab = zext i16 %i.aa to i32                   ; 2 uses
  %i.ac = and i32 %i.ab, 64512
  %i.ad = icmp eq i32 %i.ac, 56320
  br i1 %i.ad, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.04065, i64 4 ; 2 uses
  %i.af = shl nuw nsw i32 %i.m, 10
  %i.ag = add nsw i32 %i.af, -56613888
  %i.ah = add nuw nsw i32 %i.ag, %i.ab            ; 4 uses
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !47  ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !51
  %.not48 = icmp slt i32 %i.ah, %i.ak
  br i1 %.not48, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !52
  %i.an = add nsw i32 %i.am, -2
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ao = tail call i32 @ucptrie_internalSmallIndex_78(ptr noundef nonnull %i.ai, i32 noundef %i.ah)
  %.pre79 = load ptr, ptr %i.f, align 8, !tbaa !47
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.e
  %i.ap = load ptr, ptr %i.f, align 8, !tbaa !47  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !52
  %i.as = add nsw i32 %i.ar, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.d
  %i.at = phi ptr [ %i.p, %bb.d ], [ %i.ap, %bb.j ], [ %.pre79, %bb.i ], [ %i.ai, %bb.h ]
  %.242 = phi ptr [ %i.l, %bb.d ], [ %i.l, %bb.j ], [ %i.ae, %bb.i ], [ %i.ae, %bb.h ] ; 6 uses
  %.137 = phi i32 [ %i.m, %bb.d ], [ %i.m, %bb.j ], [ %i.ah, %bb.i ], [ %i.ah, %bb.h ] ; 2 uses
  %.1 = phi i32 [ %i.x, %bb.d ], [ %i.as, %bb.j ], [ %i.ao, %bb.i ], [ %i.an, %bb.h ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !25
  %i.aw = sext i32 %.1 to i64
  %i.ax = getelementptr inbounds [2 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !50 ; 11 uses
  br i1 %.not46, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = load i16, ptr %i.c, align 2, !tbaa !72
  %i.ba = icmp ult i16 %i.ay, %i.az
  br i1 %i.ba, label %.thread61, label %_ZNK6icu_7815Normalizer2Impl27norm16HasCompBoundaryBeforeEt.exit

_ZNK6icu_7815Normalizer2Impl27norm16HasCompBoundaryBeforeEt.exit: ; preds = %bb.l
  %i.bb = load i16, ptr %i.g, align 2, !tbaa !66
  %.not.i.i = icmp ugt i16 %i.bb, %i.ay
  %i.bc = load i16, ptr %i.h, align 2
  %i.bd = icmp uge i16 %i.ay, %i.bc
  %narrow.i.i.not = select i1 %.not.i.i, i1 true, i1 %i.bd
  br i1 %narrow.i.i.not, label %.thread, label %.thread61

bb.m:                                             ; preds = %bb.k
  %i.be = tail call noundef signext i8 @_ZNK6icu_7815Normalizer2Impl9decomposeEitRNS_16ReorderingBufferER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.137, i16 noundef zeroext %i.ay, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %.not50 = icmp eq i8 %i.be, 0
  br i1 %.not50, label %.thread61, label %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit.thread

.thread:                                          ; preds = %_ZNK6icu_7815Normalizer2Impl27norm16HasCompBoundaryBeforeEt.exit
  %i.bf = tail call noundef signext i8 @_ZNK6icu_7815Normalizer2Impl9decomposeEitRNS_16ReorderingBufferER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.137, i16 noundef zeroext %i.ay, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %.not5054 = icmp eq i8 %i.bf, 0
  br i1 %.not5054, label %.thread61, label %bb.n

bb.n:                                             ; preds = %.thread
  %i.bg = and i16 %i.ay, 1
  %.not.i = icmp eq i16 %i.bg, 0
  br i1 %.not.i, label %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i.i52 = icmp eq i16 %i.ay, 1
  %or.cond64 = select i1 %.not3.i, i1 true, i1 %.not.i.i52
  br i1 %or.cond64, label %.thread61, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = load i16, ptr %i.g, align 2, !tbaa !66
  %.not.i.i.i = icmp ugt i16 %i.bh, %i.ay
  %i.bi = load i16, ptr %i.h, align 2
  %i.bj = icmp uge i16 %i.ay, %i.bi
  %narrow.i.not.i.i = select i1 %.not.i.i.i, i1 true, i1 %i.bj
  br i1 %narrow.i.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = and i16 %i.ay, 6
  %i.bl = icmp samesign ult i16 %i.bk, 3
  br label %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit

bb.r:                                             ; preds = %bb.p
  %i.bm = load ptr, ptr %i.i, align 8, !tbaa !57
  %i.bn = lshr i16 %i.ay, 1
  %i.bo = zext nneg i16 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !50
  %i.br = icmp ult i16 %i.bq, 512
  br label %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit

_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit: ; preds = %bb.q, %bb.r
  %i.bs = phi i1 [ %i.br, %bb.r ], [ %i.bl, %bb.q ]
  %i.bt = icmp uge ptr %.242, %2
  %or.cond77.not = select i1 %i.bs, i1 true, i1 %i.bt
  br i1 %or.cond77.not, label %.thread61, label %.backedge.backedge

_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit.thread: ; preds = %bb.n, %bb.m
  %.old = icmp ult ptr %.242, %2
  br i1 %.old, label %.backedge.backedge, label %.thread61

.backedge.backedge:                               ; preds = %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit.thread, %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit
  br label %.backedge

.thread61:                                        ; preds = %bb.b, %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit.thread, %_ZNK6icu_7815Normalizer2Impl27norm16HasCompBoundaryBeforeEt.exit, %bb.m, %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit, %.thread, %bb.l, %bb.o, %.preheader, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ %1, %.preheader ], [ %.04065, %_ZNK6icu_7815Normalizer2Impl27norm16HasCompBoundaryBeforeEt.exit ], [ null, %bb.m ], [ %.242, %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit.thread ], [ %.242, %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit ], [ null, %.thread ], [ %.04065, %bb.l ], [ %.04065, %bb.b ], [ %.242, %bb.o ]
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6icu_7815Normalizer2Impl13decomposeUTF8EjPKhS2_PNS_8ByteSinkEPNS_5EditsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %8 = alloca %"class.icu_78::ReorderingBuffer", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %7, align 8, !tbaa !59
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 2, ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !73   ; 4 uses
  %i.d = icmp ult i16 %i.c, 128
end_hunk_0
begin_hunk_1_@_ZNK6icu_7815Normalizer2Impl14decomposeShortEPKhS2_NS0_6StopAtEaRNS_16ReorderingBufferER10UErrorCode:bb.a
  %i.hl = icmp ult i16 %.0117, %i.hk
  br i1 %i.hl, label %bb.ay, label %bb.bg

bb.ay:                                            ; preds = %bb.ax
  %i.hm = icmp slt i32 %.0111, 0
  br i1 %i.hm, label %bb.az, label %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit171

bb.az:                                            ; preds = %bb.ay
  %i.hn = load i8, ptr %.0122199, align 1, !tbaa !25 ; 3 uses
  %i.ho = ptrtoint ptr %.4126 to i64
  %i.hp = ptrtoint ptr %.0122199 to i64
  %i.hq = sub i64 %i.ho, %i.hp
  switch i64 %i.hq, label %bb.be [
    i64 1, label %bb.ba
    i64 2, label %bb.bb
    i64 3, label %bb.bc
    i64 4, label %bb.bd
  ]

bb.ba:                                            ; preds = %bb.az
  %i.hr = zext i8 %i.hn to i32
  br label %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit171.thread

bb.bb:                                            ; preds = %bb.az
  %i.hs = and i8 %i.hn, 31
  %i.ht = zext nneg i8 %i.hs to i32
  %i.hu = shl nuw nsw i32 %i.ht, 6
  %i.hv = load i8, ptr %i.q, align 1, !tbaa !25
  %i.hw = and i8 %i.hv, 63
  %i.hx = zext nneg i8 %i.hw to i32
  %i.hy = or disjoint i32 %i.hu, %i.hx
  br label %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit171.thread

bb.bc:                                            ; preds = %bb.az
  %i.hz = zext i8 %i.hn to i32
  %i.ia = shl nuw nsw i32 %i.hz, 12
  %i.ib = load i8, ptr %i.q, align 1, !tbaa !25
  %i.ic = and i8 %i.ib, 63
  %i.id = zext nneg i8 %i.ic to i32
  %i.ie = shl nuw nsw i32 %i.id, 6
  %i.if = getelementptr inbounds nuw i8, ptr %.0122199, i64 2
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !25
  %i.ih = and i8 %i.ig, 63
  %i.ii = zext nneg i8 %i.ih to i32
  %.masked13.i169 = and i32 %i.ia, 61440
  %.masked.i170 = or disjoint i32 %i.ie, %.masked13.i169
  %i.ij = or disjoint i32 %.masked.i170, %i.ii
  br label %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit171.thread

bb.bd:                                            ; preds = %bb.az
  %i.ik = load <4 x i8>, ptr %.0122199, align 1, !tbaa !25
  %i.il = and <4 x i8> %i.ik, <i8 7, i8 63, i8 63, i8 63>
  %i.im = zext nneg <4 x i8> %i.il to <4 x i32>
  %i.in = shl nuw nsw <4 x i32> %i.im, <i32 18, i32 12, i32 6, i32 0>
  %i.io = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.in)
  br label %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit171

bb.be:                                            ; preds = %bb.az
  call void @abort() #16
  unreachable

_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit171: ; preds = %bb.bd, %bb.ay
  %.1112 = phi i32 [ %.0111, %bb.ay ], [ %i.io, %bb.bd ] ; 3 uses
  %i.ip = icmp samesign ult i32 %.1112, 65536
  br i1 %i.ip, label %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit171.thread, label %bb.bf

_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit171.thread: ; preds = %bb.bc, %bb.bb, %bb.ba, %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit171
  %.1112184 = phi i32 [ %.1112, %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit171 ], [ %i.ij, %bb.bc ], [ %i.hy, %bb.bb ], [ %i.hr, %bb.ba ]
  %i.iq = trunc nuw i32 %.1112184 to i16
  %i.ir = call noundef signext i8 @_ZN6icu_7816ReorderingBuffer9appendBMPEDshR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %5, i16 noundef zeroext %i.iq, i8 noundef zeroext 0, ptr noundef nonnull align 4 dereferenceable(4) %6)
  br label %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit172

bb.bf:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit171
  %i.is = call noundef signext i8 @_ZN6icu_7816ReorderingBuffer19appendSupplementaryEihR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef %.1112, i8 noundef zeroext 0, ptr noundef nonnull align 4 dereferenceable(4) %6)
  br label %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit172

_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit172: ; preds = %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit171.thread, %bb.bf
  %i.it = phi i8 [ %i.ir, %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit171.thread ], [ %i.is, %bb.bf ]
  %.not160 = icmp eq i8 %i.it, 0
  br i1 %.not160, label %.thread192, label %bb.bu

bb.bg:                                            ; preds = %bb.ax
  %.not196 = icmp eq i16 %.0117, %i.hk
  br i1 %.not196, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.iu = load i16, ptr %i.n, align 8, !tbaa !64
  %i.iv = or i16 %i.iu, 1
  %.not197 = icmp eq i16 %.0117, %i.iv
  br i1 %.not197, label %bb.bi, label %bb.bq

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.iw = icmp slt i32 %.0111, 0
  br i1 %i.iw, label %bb.bj, label %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit176

bb.bj:                                            ; preds = %bb.bi
  %i.ix = load i8, ptr %.0122199, align 1, !tbaa !25 ; 3 uses
  %i.iy = ptrtoint ptr %.4126 to i64
  %i.iz = ptrtoint ptr %.0122199 to i64
  %i.ja = sub i64 %i.iy, %i.iz
  switch i64 %i.ja, label %bb.bo [
    i64 1, label %bb.bk
    i64 2, label %bb.bl
    i64 3, label %bb.bm
    i64 4, label %bb.bn
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.jb = zext i8 %i.ix to i32
  br label %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit176

bb.bl:                                            ; preds = %bb.bj
  %i.jc = and i8 %i.ix, 31
  %i.jd = zext nneg i8 %i.jc to i32
  %i.je = shl nuw nsw i32 %i.jd, 6
  %i.jf = load i8, ptr %i.q, align 1, !tbaa !25
  %i.jg = and i8 %i.jf, 63
  %i.jh = zext nneg i8 %i.jg to i32
  %i.ji = or disjoint i32 %i.je, %i.jh
  br label %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit176

bb.bm:                                            ; preds = %bb.bj
  %i.jj = zext i8 %i.ix to i32
  %i.jk = shl nuw nsw i32 %i.jj, 12
  %i.jl = load i8, ptr %i.q, align 1, !tbaa !25
  %i.jm = and i8 %i.jl, 63
  %i.jn = zext nneg i8 %i.jm to i32
  %i.jo = shl nuw nsw i32 %i.jn, 6
  %i.jp = getelementptr inbounds nuw i8, ptr %.0122199, i64 2
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !25
  %i.jr = and i8 %i.jq, 63
  %i.js = zext nneg i8 %i.jr to i32
  %.masked13.i174 = and i32 %i.jk, 61440
  %.masked.i175 = or disjoint i32 %i.jo, %.masked13.i174
  %i.jt = or disjoint i32 %.masked.i175, %i.js
  br label %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit176

bb.bn:                                            ; preds = %bb.bj
  %i.ju = load <4 x i8>, ptr %.0122199, align 1, !tbaa !25
  %i.jv = and <4 x i8> %i.ju, <i8 7, i8 63, i8 63, i8 63>
  %i.jw = zext nneg <4 x i8> %i.jv to <4 x i32>
  %i.jx = shl nuw nsw <4 x i32> %i.jw, <i32 18, i32 12, i32 6, i32 0>
  %i.jy = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.jx)
  br label %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit176

bb.bo:                                            ; preds = %bb.bj
  call void @abort() #16
  unreachable

_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit176: ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bi
  %.2113 = phi i32 [ %.0111, %bb.bi ], [ %i.jb, %bb.bk ], [ %i.ji, %bb.bl ], [ %i.jt, %bb.bm ], [ %i.jy, %bb.bn ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.jz = add nsw i32 %.2113, -44032              ; 3 uses
  %i.ka = srem i32 %i.jz, 28                      ; 2 uses
  %i.kb = sdiv i32 %i.jz, 28
  %i.kc = sdiv i32 %i.jz, 588
  %i.kd = trunc nsw i32 %i.kc to i16
  %i.ke = add nsw i16 %i.kd, 4352
  store i16 %i.ke, ptr %i.a, align 2, !tbaa !34
  %i.kf = srem i32 %i.kb, 21
  %i.kg = trunc nsw i32 %i.kf to i16
  %i.kh = add nsw i16 %i.kg, 4449
  store i16 %i.kh, ptr %i.p, align 2, !tbaa !34
  %i.ki = icmp eq i32 %i.ka, 0
  br i1 %i.ki, label %_ZN6icu_786Hangul9decomposeEiPDs.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit176
  %i.kj = trunc nsw i32 %i.ka to i16
  %i.kk = add nsw i16 %i.kj, 4519
  store i16 %i.kk, ptr %.0.i177.sroa.gep226, align 2, !tbaa !34
  br label %_ZN6icu_786Hangul9decomposeEiPDs.exit

_ZN6icu_786Hangul9decomposeEiPDs.exit:            ; preds = %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit176, %bb.bp
  %.0.i177.sroa.phi = phi ptr [ %.0.i177.sroa.gep, %bb.bp ], [ %.0.i177.sroa.gep226, %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit176 ]
  %i.kl = call noundef signext i8 @_ZN6icu_7816ReorderingBuffer12appendZeroCCEPKDsS2_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %i.a, ptr noundef nonnull %.0.i177.sroa.phi, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %.not159.not = icmp eq i8 %i.kl, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br i1 %.not159.not, label %.thread192, label %bb.bu

bb.bq:                                            ; preds = %bb.bh
  %i.km = load i16, ptr %i.j, align 2, !tbaa !67  ; 2 uses
  %.not.i178 = icmp ult i16 %.0117, %i.km
  %narrow.i = sub i16 %.0117, %i.km
  %i.kn = load i16, ptr %i.f, align 2
  %i.ko = add i16 %narrow.i, %i.kn
  %.0.i179 = select i1 %.not.i178, i16 %.0117, i16 %i.ko
  %i.kp = load ptr, ptr %i.o, align 8, !tbaa !57
  %i.kq = lshr i16 %.0.i179, 1
  %i.kr = zext nneg i16 %i.kq to i64
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr %i.kp, i64 %i.kr ; 3 uses
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !50 ; 2 uses
  %i.ku = zext i16 %i.kt to i32                   ; 2 uses
  %i.kv = and i32 %i.ku, 31
  %i.kw = lshr i16 %i.kt, 8
  %i.kx = trunc nuw i16 %i.kw to i8
  %i.ky = and i32 %i.ku, 128
  %.not157 = icmp eq i32 %i.ky, 0
  br i1 %.not157, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.kz = getelementptr i8, ptr %i.ks, i64 -1
  %7 = load i8, ptr %i.kz, align 1, !tbaa !50
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br
  %.0 = phi i8 [ %7, %bb.br ], [ 0, %bb.bq ]      ; 2 uses
  %i.la = icmp eq i8 %.0, 0
  %or.cond4 = and i1 %i.h, %i.la
  br i1 %or.cond4, label %.thread192, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ks, i64 2
  %i.lc = call noundef signext i8 @_ZN6icu_7816ReorderingBuffer6appendEPKDsiahhR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %i.lb, i32 noundef %i.kv, i8 noundef signext 1, i8 noundef zeroext %.0, i8 noundef zeroext %i.kx, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %.not158.not = icmp eq i8 %i.lc, 0
  br i1 %.not158.not, label %.thread192, label %bb.bu

bb.bu:                                            ; preds = %_ZN6icu_786Hangul9decomposeEiPDs.exit, %bb.bt, %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit172
  switch i32 %3, label %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit.thread [
    i32 2, label %bb.bv
    i32 1, label %bb.by
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.ld = and i16 %.0117, 1
  %.not.i180 = icmp eq i16 %i.ld, 0
  br i1 %.not.i180, label %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit.thread, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.not.i.i = icmp eq i16 %.0117, 1
  %or.cond195 = or i1 %.not3.i, %.not.i.i
  br i1 %or.cond195, label %.thread192, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.le = load i16, ptr %i.f, align 2, !tbaa !66
  %.not.i.i.i = icmp ugt i16 %i.le, %.0117
  %i.lf = load i16, ptr %i.j, align 2
  %i.lg = icmp uge i16 %.0117, %i.lf
  %narrow.i.not.i.i = select i1 %.not.i.i.i, i1 true, i1 %i.lg
  br i1 %narrow.i.not.i.i, label %.split, label %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit

.split:                                           ; preds = %bb.bx
  %i.lh = load ptr, ptr %i.o, align 8, !tbaa !57
  %i.li = lshr i16 %.0117, 1
  %i.lj = zext nneg i16 %i.li to i64
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr %i.lh, i64 %i.lj
  %i.ll = load i16, ptr %i.lk, align 2, !tbaa !50
  %i.lm = icmp ugt i16 %i.ll, 511
  %i.ln = icmp ult ptr %.4126, %2
  %or.cond253 = select i1 %i.lm, i1 %i.ln, i1 false
  br i1 %or.cond253, label %.backedge.backedge, label %.thread192

_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit: ; preds = %bb.bx
  %i.lo = and i16 %.0117, 6
  %i.lp = icmp samesign ugt i16 %i.lo, 2
  %.old.old = icmp ult ptr %.4126, %2
  %or.cond255 = select i1 %i.lp, i1 %.old.old, i1 false
  br i1 %or.cond255, label %.backedge.backedge, label %.thread192

bb.by:                                            ; preds = %bb.bu
  %i.lq = load i8, ptr %i.i, align 4, !tbaa !27
  %i.lr = icmp ugt i8 %i.lq, 1
  %.old = icmp ult ptr %.4126, %2
  %or.cond254 = select i1 %i.lr, i1 %.old, i1 false
  br i1 %or.cond254, label %.backedge.backedge, label %.thread192

_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit.thread: ; preds = %bb.bu, %bb.bv, %bb.af, %bb.ag
  %.old.old.old = icmp ult ptr %.4126, %2
  br i1 %.old.old.old, label %.backedge.backedge, label %.thread192

.backedge.backedge:                               ; preds = %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit.thread, %.split, %bb.by, %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit
  br label %.backedge

..thread192.loopexit_crit_edge203:                ; preds = %bb.ag
  br label %.thread192, !llvm.loop !115

.thread192:                                       ; preds = %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit.thread, %bb.ai, %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit172, %bb.aw, %_ZN6icu_786Hangul9decomposeEiPDs.exit, %bb.bt, %bb.y, %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit, %bb.by, %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit, %bb.bs, %bb.bw, %.split, %.preheader, %..thread192.loopexit_crit_edge203, %bb.a
  %.6 = phi ptr [ null, %bb.a ], [ %.4126, %..thread192.loopexit_crit_edge203 ], [ %1, %.preheader ], [ %.4126, %.split ], [ %.0122199, %bb.ai ], [ null, %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit172 ], [ %.0122199, %bb.aw ], [ null, %_ZN6icu_786Hangul9decomposeEiPDs.exit ], [ null, %bb.bt ], [ %.0122199, %bb.y ], [ null, %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit ], [ %.4126, %bb.by ], [ %.4126, %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit.thread ], [ %.4126, %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit ], [ %.0122199, %bb.bs ], [ %.4126, %bb.bw ]
  ret ptr %.6
}

declare noundef signext i8 @_ZN6icu_7812ByteSinkUtil12appendChangeEPKhS2_PKDsiRNS_8ByteSinkEPNS_5EditsER10UErrorCode(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6icu_7815Normalizer2Impl16getDecompositionEiPDsRi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 noundef %1, ptr nofree noundef writeonly captures(ret: address, provenance) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !73
  %i.c = zext i16 %i.b to i32
  %i.d = icmp slt i32 %1, %i.c
  br i1 %i.d, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %1, -1024
  %i.f = icmp eq i32 %i.e, 55296
  br i1 %i.f, label %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.k = icmp samesign ult i32 %1, 65536
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !49
  %i.m = lshr i32 %1, 6
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !50
  %i.q = zext i16 %i.p to i32
  %i.r = and i32 %1, 63
  %i.s = add nuw nsw i32 %i.r, %i.q
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.t = icmp samesign ult i32 %1, 1114112
  br i1 %i.t, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !51
  %.not.i = icmp slt i32 %1, %i.v
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !52
  %i.y = add nsw i32 %i.x, -2
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.z = tail call i32 @ucptrie_internalSmallIndex_78(ptr noundef nonnull %i.h, i32 noundef %1)
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !52
  %i.ac = add nsw i32 %i.ab, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.d
  %i.ad = phi i32 [ %i.s, %bb.d ], [ %i.ac, %bb.i ], [ %i.y, %bb.g ], [ %i.z, %bb.h ]
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !50
  br label %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit

_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit:    ; preds = %bb.b, %bb.j
  %i.ah = phi i16 [ %i.ag, %bb.j ], [ 1, %bb.b ]  ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !69
  %.not45 = icmp ult i16 %i.ah, %i.aj
  br i1 %.not45, label %bb.k, label %bb.y

bb.k:                                             ; preds = %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !66
  %.not.i40 = icmp ugt i16 %i.al, %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 2 uses
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = icmp uge i16 %i.ah, %i.an
  %narrow.i.not = select i1 %.not.i40, i1 true, i1 %i.ao
  br i1 %narrow.i.not, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = lshr i16 %i.ah, 3
  %i.aq = zext nneg i16 %i.ap to i32
  %i.ar = add nuw nsw i32 %1, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.at = load i16, ptr %i.as, align 4, !tbaa !70
  %i.au = zext i16 %i.at to i32
  %i.av = sub nsw i32 %i.ar, %i.au                ; 10 uses
  %i.aw = icmp ult i32 %i.av, 65536
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = trunc nuw i32 %i.av to i16
  store i32 1, ptr %3, align 4, !tbaa !61
  store i16 %i.ax, ptr %2, align 2, !tbaa !34
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !47 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !25
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !49
  %i.bd = lshr i32 %i.av, 6
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !50
  %i.bh = zext i16 %i.bg to i32
  %i.bi = and i32 %i.av, 63
  %i.bj = add nuw nsw i32 %i.bi, %i.bh
  br label %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit

bb.n:                                             ; preds = %bb.l
  %i.bk = lshr i32 %i.av, 10
  %i.bl = trunc i32 %i.bk to i16
  %i.bm = add i16 %i.bl, -10304
  store i16 %i.bm, ptr %2, align 2, !tbaa !34
  %i.bn = trunc i32 %i.av to i16
  %i.bo = and i16 %i.bn, 1023
  %i.bp = or disjoint i16 %i.bo, -9216
  store i32 2, ptr %3, align 4, !tbaa !61
end_hunk_1
