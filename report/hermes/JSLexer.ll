inline.NumInlined: 2539
inline.NumDeleted: 512
begin_hunk_0_@_ZN6hermes6parser7JSLexer24isLetFollowedByDeclStartEv:bb.a
  %i.i = icmp ult i32 %i.h, 26
  br i1 %i.i, label %_ZN6hermes22isASCIIIdentifierStartEj.exit.thread, label %bb.f

_ZN6hermes22isASCIIIdentifierStartEj.exit.thread: ; preds = %_ZN6hermes22isASCIIIdentifierStartEj.exit
  %i.j = icmp eq i8 %i.c, 105
  br i1 %i.j, label %bb.e, label %switch.edge

bb.e:                                             ; preds = %_ZN6hermes22isASCIIIdentifierStartEj.exit.thread
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !66
  %i.m = icmp eq i8 %i.l, 110
  br i1 %i.m, label %bb.f, label %switch.edge

bb.f:                                             ; preds = %bb.e, %_ZN6hermes22isASCIIIdentifierStartEj.exit
  %i.n = tail call i64 @_ZN6hermes6parser7JSLexer10lookahead1ILb0EEENS_8OptValueINS0_9TokenKindEEES5_(ptr noundef nonnull align 8 dereferenceable(1160) %0, i64 0) ; 3 uses
  %i.o = and i64 %i.n, 4294967296
  %.not = icmp ne i64 %i.o, 0
  %.sroa.08.0.extract.trunc = trunc i64 %i.n to i32
  %i.p = icmp ult i32 %.sroa.08.0.extract.trunc, 56
  %or.cond19 = and i1 %.not, %i.p
  br i1 %or.cond19, label %switch.lookup, label %switch.edge

switch.lookup:                                    ; preds = %bb.f
  %i.q = trunc i64 %i.n to i56
  %switch.cast = and i56 %i.q, 63
  %switch.downshift = lshr i56 -35465847065542654, %switch.cast
  %switch.masked = trunc i56 %switch.downshift to i1
  br label %switch.edge

switch.edge:                                      ; preds = %switch.lookup, %bb.d, %bb.d, %bb.f, %_ZN6hermes22isASCIIIdentifierStartEj.exit.thread, %bb.e, %"_ZZN6hermes6parser7JSLexer24isLetFollowedByDeclStartEvENK3$_0clEv.exit"
  %.0 = phi i1 [ true, %"_ZZN6hermes6parser7JSLexer24isLetFollowedByDeclStartEvENK3$_0clEv.exit" ], [ true, %_ZN6hermes22isASCIIIdentifierStartEj.exit.thread ], [ true, %bb.e ], [ false, %bb.f ], [ %switch.masked, %switch.lookup ], [ true, %bb.d ], [ true, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE(ptr noundef nonnull align 8 captures(none) dereferenceable(1160) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(18) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !50, !nonnull !51, !align !52
  tail call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.a, i32 noundef 0, ptr %1, ptr noundef nonnull align 8 dereferenceable(18) %2, i32 noundef 1) #18
  %i.b = load ptr, ptr %0, align 8, !tbaa !50, !nonnull !51, !align !52
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 316
  %i.d = load i8, ptr %i.c, align 4, !tbaa !72, !range !59, !noundef !51
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.g, ptr %i.h, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = xor i1 %i.e, true
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes6parser7JSLexer16getStringLiteralEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.b = load i8, ptr %i.a, align 1, !tbaa !171, !range !59, !noundef !51
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !62

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN6hermes6parser7JSLexer25convertSurrogatesInStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr %1, i64 %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !134, !nonnull !51, !align !52
  %i.g = tail call noundef ptr @_ZN6hermes11StringTable9getStringEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr %1, i64 %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes6parser7JSLexer15scanLineCommentEPKc(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %i.d = phi ptr [ %.pre.i, %bb.i ], [ %i.b, %bb.a ] ; 11 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !66    ; 2 uses
  switch i8 %i.e, label %bb.f [
    i8 0, label %bb.c
    i8 13, label %.loopexit.sink.split.i
    i8 10, label %.loopexit.sink.split.i
    i8 -30, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %_ZN6hermes6parser7JSLexer17lineCommentHelperEPKc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.h, ptr %i.a, align 8, !tbaa !18
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !66
  %i.k = icmp eq i8 %i.j, -128
  br i1 %i.k, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.i, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread.i

_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.i: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !66
  %i.n = and i8 %i.m, -2
  %spec.select.i.i = icmp eq i8 %i.n, -88
  br i1 %spec.select.i.i, label %.loopexit.sink.split.i, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread.i

_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread.i: ; preds = %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.i, %bb.e
  %i.o = call noundef i32 @_ZN6hermes19_decodeUTF8SlowPathILb0EZNS_6parser7JSLexer19_decodeUTF8SlowPathERPKcEUlRKN4llvh5TwineEE_EEjS5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull align 8 dereferenceable(1160) %0, ptr nonnull %i.d) ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.p = icmp slt i8 %i.e, 0
  br i1 %i.p, label %bb.g, label %bb.h, !prof !62

bb.g:                                             ; preds = %bb.f
  %i.q = call noundef i32 @_ZN6hermes19_decodeUTF8SlowPathILb0EZNS_6parser7JSLexer19_decodeUTF8SlowPathERPKcEUlRKN4llvh5TwineEE_EEjS5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull align 8 dereferenceable(1160) %0, ptr nonnull %i.d) ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.r, ptr %i.a, align 8, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread.i, %bb.d
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !18
  br label %bb.b, !llvm.loop !182

.loopexit.sink.split.i:                           ; preds = %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.i, %bb.b, %bb.b
  %.sink = phi i64 [ 1, %bb.b ], [ 1, %bb.b ], [ 3, %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 1, ptr %i.t, align 8, !tbaa !58
  br label %_ZN6hermes6parser7JSLexer17lineCommentHelperEPKc.exit

_ZN6hermes6parser7JSLexer17lineCommentHelperEPKc.exit: ; preds = %bb.c, %.loopexit.sink.split.i
  %i.u = phi ptr [ %i.s, %.loopexit.sink.split.i ], [ %i.d, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.u, ptr %i.v, align 8, !tbaa !19
  %i.w = ptrtoint ptr %i.d to i64
  %i.x = ptrtoint ptr %1 to i64
  %i.y = sub i64 %i.w, %i.x                       ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !64, !range !59, !noundef !51
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.j, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE12emplace_backIJNS2_4KindEN4llvh7SMRangeEEEERS2_DpOT_.exit

bb.j:                                             ; preds = %_ZN6hermes6parser7JSLexer17lineCommentHelperEPKc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.ad = load i8, ptr %1, align 1, !tbaa !66
  %i.ae = icmp eq i8 %i.ad, 47
  %i.af = select i1 %i.ae, i32 0, i32 2           ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.y ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !56 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !183
  %.not.i37 = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i37, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 %i.af, ptr %i.ai, align 8, !tbaa !184
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %1, ptr %i.al, align 8, !tbaa !18
  %.sroa.2.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.ag, ptr %.sroa.2.0..sroa_idx.i5.i, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !56
  br label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE12emplace_backIJNS2_4KindEN4llvh7SMRangeEEEERS2_DpOT_.exit

bb.l:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %i.ac, align 8, !tbaa !57 ; 5 uses
  %i.ao = ptrtoint ptr %i.ai to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 4 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.m, label %_ZNKSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.421) #20
  unreachable

_ZNKSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.as = sdiv exact i64 %i.aq, 24                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i, %i.as ; 2 uses
  %2 = icmp ult i64 %i.at, %i.as
  %i.au = call i64 @llvm.umin.i64(i64 %i.at, i64 384307168202282325)
  %3 = select i1 %2, i64 384307168202282325, i64 %i.au ; 3 uses
  %.not.i.i.i = icmp ne i64 %3, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.av = mul nuw nsw i64 %3, 24
  %i.aw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #19 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.aq ; 3 uses
  store i32 %i.af, ptr %i.ax, align 8, !tbaa !184
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %1, ptr %i.ay, align 8, !tbaa !18
  %.sroa.2.0..sroa_idx.i17.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr %i.ag, ptr %.sroa.2.0..sroa_idx.i17.i.i, align 8, !tbaa !18
  %.not10.i.i.i.i.i = icmp eq ptr %i.an, %i.ai
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i ], [ %i.aw, %_ZNKSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %i.an, %_ZNKSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !187, !alias.scope !189
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.az, %i.ai
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !193

_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aw, %_ZNKSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ba, %.lr.ph.i.i.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i25.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i25.i.i, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE17_M_realloc_insertIJNS2_4KindEN4llvh7SMRangeEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.aq) #21
  br label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE17_M_realloc_insertIJNS2_4KindEN4llvh7SMRangeEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE17_M_realloc_insertIJNS2_4KindEN4llvh7SMRangeEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24.i.i
  store ptr %i.aw, ptr %i.ac, align 8, !tbaa !57
  store ptr %i.bb, ptr %i.ah, align 8, !tbaa !56
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %3
  store ptr %i.bc, ptr %i.aj, align 8, !tbaa !183
  br label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE12emplace_backIJNS2_4KindEN4llvh7SMRangeEEEERS2_DpOT_.exit

_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE12emplace_backIJNS2_4KindEN4llvh7SMRangeEEEERS2_DpOT_.exit: ; preds = %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE17_M_realloc_insertIJNS2_4KindEN4llvh7SMRangeEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.k, %_ZN6hermes6parser7JSLexer17lineCommentHelperEPKc.exit
  %.not.i = icmp ult i64 %i.y, 4
  br i1 %.not.i, label %_ZN4llvh9StringRef13consume_frontES0_.exit16.thread, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit:         ; preds = %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE12emplace_backIJNS2_4KindEN4llvh7SMRangeEEEERS2_DpOT_.exit
  %i.bd = load i32, ptr %1, align 1
  %i.be = icmp ne i32 %i.bd, 539176751
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.o, label %_ZN4llvh9StringRef13consume_frontES0_.exit16.thread

bb.o:                                             ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.bi = add i64 %i.y, -4                        ; 2 uses
  %.not.i17 = icmp ult i64 %i.bi, 10
  br i1 %.not.i17, label %_ZN4llvh9StringRef13consume_frontES0_.exit16.thread, label %_ZNK4llvh9StringRef10startswithES0_.exit20

_ZNK4llvh9StringRef10startswithES0_.exit20:       ; preds = %bb.o
  %i.bj = load i64, ptr %i.bh, align 1
  %i.bk = xor i64 %i.bj, 5932759561926963059
  %i.bl = getelementptr i8, ptr %i.bh, i64 8
  %i.bm = load i16, ptr %i.bl, align 1
  %i.bn = zext i16 %i.bm to i64
  %i.bo = xor i64 %i.bn, 15692
  %i.bp = or i64 %i.bk, %i.bo
  %i.bq = icmp ne i64 %i.bp, 0
  %i.br = zext i1 %i.bq to i32
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit20
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 14 ; 2 uses
  %i.bu = add i64 %i.y, -14                       ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store ptr %i.bt, ptr %i.bv, align 8, !tbaa !18
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1088
  store i64 %i.bu, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !137
  %i.bw = load ptr, ptr %0, align 8, !tbaa !50, !nonnull !51, !align !52
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !176
  call void @_ZN6hermes18SourceErrorManager12setSourceUrlEjN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(464) %i.bw, i32 noundef %i.by, ptr nonnull %i.bt, i64 %i.bu)
  br label %_ZN4llvh9StringRef13consume_frontES0_.exit16.thread

bb.q:                                             ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit20
  %.not.i21 = icmp ult i64 %i.bi, 17
  br i1 %.not.i21, label %_ZN4llvh9StringRef13consume_frontES0_.exit16.thread, label %_ZNK4llvh9StringRef10startswithES0_.exit24

_ZNK4llvh9StringRef10startswithES0_.exit24:       ; preds = %bb.q
  %i.bz = load i128, ptr %i.bh, align 1
  %i.ca = xor i128 %i.bz, 101448828221541330836941927883174408051
  %i.cb = getelementptr i8, ptr %i.bh, i64 16
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = zext i8 %i.cc to i128
  %i.ce = xor i128 %i.cd, 61
  %i.cf = or i128 %i.ca, %i.ce
  %i.cg = icmp ne i128 %i.cf, 0
  %i.ch = zext i1 %i.cg to i32
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.r, label %_ZN4llvh9StringRef13consume_frontES0_.exit16.thread

bb.r:                                             ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit24
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 21 ; 2 uses
  %i.ck = add i64 %i.y, -21                       ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1096
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !18
  %.sroa.18.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store i64 %i.ck, ptr %.sroa.18.0..sroa_idx58, align 8, !tbaa !137
  %i.cm = load ptr, ptr %0, align 8, !tbaa !50, !nonnull !51, !align !52
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !176
  call void @_ZN6hermes18SourceErrorManager19setSourceMappingUrlEjN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(464) %i.cm, i32 noundef %i.co, ptr nonnull %i.cj, i64 %i.ck)
  br label %_ZN4llvh9StringRef13consume_frontES0_.exit16.thread

_ZN4llvh9StringRef13consume_frontES0_.exit16.thread: ; preds = %bb.o, %bb.q, %_ZNK4llvh9StringRef10startswithES0_.exit24, %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE12emplace_backIJNS2_4KindEN4llvh7SMRangeEEEERS2_DpOT_.exit, %_ZNK4llvh9StringRef10startswithES0_.exit, %bb.p, %bb.r
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN6hermes6parser7JSLexer16skipBlockCommentEPKc(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 14 uses
  %2 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %bb.a
  %i.e = phi ptr [ %.pre, %bb.o ], [ %i.b, %bb.a ] ; 13 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !66    ; 2 uses
  switch i8 %i.f, label %bb.l [
    i8 0, label %bb.c
    i8 13, label %bb.g
    i8 10, label %bb.g
    i8 -30, label %bb.h
    i8 42, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !67
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.j, align 1, !tbaa !68
  store ptr @.str.63, ptr %2, align 8, !tbaa !66
  store i8 3, ptr %i.i, align 8, !tbaa !71
  %i.k = load ptr, ptr %0, align 8, !tbaa !50, !nonnull !51, !align !52
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.k, i32 noundef 0, ptr nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(18) %2, i32 noundef 1) #18
  %i.l = load ptr, ptr %0, align 8, !tbaa !50, !nonnull !51, !align !52 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 316
  %i.n = load i8, ptr %i.m, align 4, !tbaa !72, !range !59, !noundef !51
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.e, label %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !67
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.p, ptr %i.q, align 8, !tbaa !19
  br label %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit

_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 17
  store i8 1, ptr %i.s, align 1, !tbaa !68
  store ptr @.str.64, ptr %3, align 8, !tbaa !66
  store i8 3, ptr %i.r, align 8, !tbaa !71
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.l, i32 noundef 3, ptr %1, ptr noundef nonnull align 8 dereferenceable(18) %3, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %.pre14.pre = load ptr, ptr %i.a, align 8, !tbaa !18
  br label %bb.p

bb.f:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.t, ptr %i.a, align 8, !tbaa !18
  br label %bb.o

bb.g:                                             ; preds = %bb.b, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.u, ptr %i.a, align 8, !tbaa !18
  store i8 1, ptr %i.c, align 8, !tbaa !58
  br label %bb.o

bb.h:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !66
  %i.x = icmp eq i8 %i.w, -128
  br i1 %i.x, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread

_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit: ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !66
  %i.aa = and i8 %i.z, -2
  %spec.select.i = icmp eq i8 %i.aa, -88
  br i1 %spec.select.i, label %bb.i, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread

bb.i:                                             ; preds = %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !18
  store i8 1, ptr %i.c, align 8, !tbaa !58
  br label %bb.o

_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread: ; preds = %bb.h, %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit
  %i.ac = call noundef i32 @_ZN6hermes19_decodeUTF8SlowPathILb0EZNS_6parser7JSLexer19_decodeUTF8SlowPathERPKcEUlRKN4llvh5TwineEE_EEjS5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull align 8 dereferenceable(1160) %0, ptr nonnull %i.e) ; 0 uses
  br label %bb.o

bb.j:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !18
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !66
  %i.af = icmp eq i8 %i.ae, 47
  br i1 %i.af, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !18
  br label %bb.p

bb.l:                                             ; preds = %bb.b
  %i.ah = icmp slt i8 %i.f, 0
  br i1 %i.ah, label %bb.m, label %bb.n, !prof !62

bb.m:                                             ; preds = %bb.l
  %i.ai = call noundef i32 @_ZN6hermes19_decodeUTF8SlowPathILb0EZNS_6parser7JSLexer19_decodeUTF8SlowPathERPKcEUlRKN4llvh5TwineEE_EEjS5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr nonnull align 8 dereferenceable(1160) %0, ptr nonnull %i.e) ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !18
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.j, %bb.i, %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread, %bb.g, %bb.f
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !18
  br label %bb.b, !llvm.loop !194

bb.p:                                             ; preds = %bb.k, %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit
  %.pre14 = phi ptr [ %i.ag, %bb.k ], [ %.pre14.pre, %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !64, !range !59, !noundef !51
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.q, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE12emplace_backIJNS2_4KindEN4llvh7SMRangeEEEERS2_DpOT_.exit

bb.q:                                             ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !56 ; 8 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !183
  %.not.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 1, ptr %i.ap, align 8, !tbaa !184
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %1, ptr %i.as, align 8, !tbaa !18
  %.sroa.2.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %.pre14, ptr %.sroa.2.0..sroa_idx.i5.i, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.at, ptr %i.ao, align 8, !tbaa !56
  br label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE12emplace_backIJNS2_4KindEN4llvh7SMRangeEEEERS2_DpOT_.exit

bb.s:                                             ; preds = %bb.q
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !57 ; 5 uses
  %i.av = ptrtoint ptr %i.ap to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 4 uses
  %i.ay = icmp eq i64 %i.ax, 9223372036854775800
  br i1 %i.ay, label %bb.t, label %_ZNKSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.421) #20
  unreachable

_ZNKSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.az = sdiv exact i64 %i.ax, 24                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.ba = add nsw i64 %.sroa.speculated.i.i.i, %i.az ; 2 uses
  %4 = icmp ult i64 %i.ba, %i.az
  %i.bb = call i64 @llvm.umin.i64(i64 %i.ba, i64 384307168202282325)
  %5 = select i1 %4, i64 384307168202282325, i64 %i.bb ; 3 uses
  %.not.i.i.i = icmp ne i64 %5, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bc = mul nuw nsw i64 %5, 24
  %i.bd = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #19 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ax ; 3 uses
  store i32 1, ptr %i.be, align 8, !tbaa !184
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %1, ptr %i.bf, align 8, !tbaa !18
  %.sroa.2.0..sroa_idx.i17.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %.pre14, ptr %.sroa.2.0..sroa_idx.i17.i.i, align 8, !tbaa !18
  %.not10.i.i.i.i.i = icmp eq ptr %i.au, %i.ap
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i ], [ %i.bd, %_ZNKSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %i.au, %_ZNKSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !187, !alias.scope !195
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, %i.ap
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !193

_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bd, %_ZNKSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bh, %.lr.ph.i.i.i.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i25.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i25.i.i, label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE17_M_realloc_insertIJNS2_4KindEN4llvh7SMRangeEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ax) #21
  %.pre13.pre = load ptr, ptr %i.a, align 8, !tbaa !18
  br label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE17_M_realloc_insertIJNS2_4KindEN4llvh7SMRangeEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE17_M_realloc_insertIJNS2_4KindEN4llvh7SMRangeEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.u, %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24.i.i
  %.pre13 = phi ptr [ %.pre13.pre, %bb.u ], [ %.pre14, %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24.i.i ]
  store ptr %i.bd, ptr %i.an, align 8, !tbaa !57
  store ptr %i.bi, ptr %i.ao, align 8, !tbaa !56
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %5
  store ptr %i.bj, ptr %i.aq, align 8, !tbaa !183
  br label %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE12emplace_backIJNS2_4KindEN4llvh7SMRangeEEEERS2_DpOT_.exit

_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE12emplace_backIJNS2_4KindEN4llvh7SMRangeEEEERS2_DpOT_.exit: ; preds = %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE17_M_realloc_insertIJNS2_4KindEN4llvh7SMRangeEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.r, %bb.p
  %i.bk = phi ptr [ %.pre13, %_ZNSt6vectorIN6hermes6parser13StoredCommentESaIS2_EE17_M_realloc_insertIJNS2_4KindEN4llvh7SMRangeEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.pre14, %bb.r ], [ %.pre14, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %i.bk
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes6parser7JSLexer10scanRegExpEv(ptr noundef nonnull align 8 dereferenceable(1160) initializes((176, 180)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %2 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %3 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 16 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 20 uses
  store i32 0, ptr %i.f, align 8, !tbaa !132
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.o, %bb.a
  %i.j = phi ptr [ %i.d, %bb.a ], [ %.pre, %bb.o ] ; 16 uses
  %.0 = phi i1 [ false, %bb.a ], [ %.147, %bb.o ] ; 5 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !66    ; 2 uses
  switch i8 %i.k, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread [
    i8 47, label %bb.c
    i8 91, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread.thread
    i8 93, label %bb.e
    i8 92, label %bb.f
    i8 0, label %bb.j
    i8 -30, label %bb.k
    i8 10, label %bb.l
    i8 13, label %bb.l
  ]

bb.c:                                             ; preds = %bb.b
  br i1 %.0, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.l, ptr %i.b, align 8, !tbaa !19
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  br label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread.thread

bb.f:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.f, align 8, !tbaa !132  ; 2 uses
  %i.n = load i32, ptr %i.h, align 4, !tbaa !148
  %.not.i = icmp ult i32 %i.m, %i.n
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, label %bb.g, !prof !149

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull %i.i, i64 noundef 0, i64 noundef 1) #18
  %.pre.i = load i32, ptr %i.f, align 8, !tbaa !132
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit: ; preds = %bb.f, %bb.g
  %i.o = phi i32 [ %.pre.i, %bb.g ], [ %i.m, %bb.f ]
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !131
  %i.q = zext i32 %i.o to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  store i8 92, ptr %i.r, align 1
  %i.s = load i32, ptr %i.f, align 8, !tbaa !132
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.f, align 8, !tbaa !132
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !19   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 11 uses
  store ptr %i.v, ptr %i.b, align 8, !tbaa !19
  %i.w = load i8, ptr %i.v, align 1, !tbaa !66    ; 2 uses
  switch i8 %i.w, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread [
    i8 0, label %bb.h
    i8 -30, label %bb.i
    i8 10, label %bb.l
    i8 13, label %bb.l
  ]

bb.h:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %bb.l, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread.thread

bb.i:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !66
  %i.ab = icmp eq i8 %i.aa, -128
  br i1 %i.ab, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread.thread50

_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit: ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !66
  %i.ae = and i8 %i.ad, -2
  %spec.select.i = icmp eq i8 %i.ae, -88
  br i1 %spec.select.i, label %bb.l, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread.thread50

bb.j:                                             ; preds = %bb.b
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.ag = icmp eq ptr %i.j, %i.af
  br i1 %i.ag, label %bb.l, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread.thread

bb.k:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !66
  %i.aj = icmp eq i8 %i.ai, -128
  br i1 %i.aj, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit13, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread.thread50

_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit13: ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !66
  %i.am = and i8 %i.al, -2
  %spec.select.i12 = icmp eq i8 %i.am, -88
  br i1 %spec.select.i12, label %bb.l, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread.thread50

bb.l:                                             ; preds = %bb.b, %bb.b, %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit13, %bb.j, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit, %bb.h
  %i.an = phi ptr [ %i.j, %bb.b ], [ %i.j, %bb.b ], [ %i.j, %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit13 ], [ %i.j, %bb.j ], [ %i.v, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit ], [ %i.v, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit ], [ %i.v, %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit ], [ %i.v, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 1, ptr %i.ap, align 1, !tbaa !68
  store ptr @.str.79, ptr %1, align 8, !tbaa !66
  store i8 3, ptr %i.ao, align 8, !tbaa !71
  %i.aq = load ptr, ptr %0, align 8, !tbaa !50, !nonnull !51, !align !52
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.aq, i32 noundef 0, ptr nonnull %i.an, ptr noundef nonnull align 8 dereferenceable(18) %1, i32 noundef 1) #18
  %i.ar = load ptr, ptr %0, align 8, !tbaa !50, !nonnull !51, !align !52 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 316
  %i.at = load i8, ptr %i.as, align 4, !tbaa !72, !range !59, !noundef !51
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.m, label %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit

bb.m:                                             ; preds = %bb.l
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !67
  store ptr %i.av, ptr %i.b, align 8, !tbaa !19
  br label %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit

_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 17
  store i8 1, ptr %i.ax, align 1, !tbaa !68
  store ptr @.str.80, ptr %2, align 8, !tbaa !66
  store i8 3, ptr %i.aw, align 8, !tbaa !71
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.ar, i32 noundef 3, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(18) %2, i32 noundef 0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.p

_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, %bb.b
  %i.ay = phi i8 [ %i.k, %bb.b ], [ %i.w, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit ]
  %i.az = phi ptr [ %i.j, %bb.b ], [ %i.v, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit ] ; 2 uses
  %i.ba = icmp slt i8 %i.ay, 0
  br i1 %i.ba, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread.thread50, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread.thread, !prof !130

_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread.thread50: ; preds = %bb.i, %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit13, %bb.k, %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit, %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread
  %i.bb = phi ptr [ %i.az, %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread ], [ %i.v, %bb.i ], [ %i.j, %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit13 ], [ %i.j, %bb.k ], [ %i.v, %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit ]
  %i.bc = tail call noundef i32 @_ZN6hermes19_decodeUTF8SlowPathILb0EZNS_6parser7JSLexer19_decodeUTF8SlowPathERPKcEUlRKN4llvh5TwineEE_EEjS5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr nonnull align 8 dereferenceable(1160) %0, ptr nonnull %i.bb)
  tail call void @_ZN6hermes6parser7JSLexer22appendUnicodeToStorageEj(ptr noundef nonnull align 8 dereferenceable(1160) %0, i32 noundef %i.bc)
  br label %bb.o

_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread.thread: ; preds = %bb.b, %bb.j, %bb.h, %bb.e, %bb.c, %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread
  %.148 = phi i1 [ %.0, %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread ], [ %.0, %bb.j ], [ %.0, %bb.h ], [ false, %bb.e ], [ true, %bb.c ], [ true, %bb.b ]
  %i.bd = phi ptr [ %i.az, %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread ], [ %i.j, %bb.j ], [ %i.v, %bb.h ], [ %i.j, %bb.e ], [ %i.j, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store ptr %i.be, ptr %i.b, align 8, !tbaa !19
  %i.bf = load i8, ptr %i.bd, align 1, !tbaa !66
  %i.bg = load i32, ptr %i.f, align 8, !tbaa !132 ; 2 uses
  %i.bh = load i32, ptr %i.h, align 4, !tbaa !148
  %.not.i14 = icmp ult i32 %i.bg, %i.bh
  br i1 %.not.i14, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit16, label %bb.n, !prof !149

bb.n:                                             ; preds = %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread.thread
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull %i.i, i64 noundef 0, i64 noundef 1) #18
  %.pre.i15 = load i32, ptr %i.f, align 8, !tbaa !132
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit16

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit16: ; preds = %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread.thread, %bb.n
  %i.bi = phi i32 [ %.pre.i15, %bb.n ], [ %i.bg, %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread.thread ]
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !131
  %i.bk = zext i32 %i.bi to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bk
  store i8 %i.bf, ptr %i.bl, align 1
  %i.bm = load i32, ptr %i.f, align 8, !tbaa !132
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.f, align 8, !tbaa !132
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit16, %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread.thread50
  %.147 = phi i1 [ %.148, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit16 ], [ %.0, %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.thread.thread50 ]
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !19
  br label %bb.b, !llvm.loop !199

bb.p:                                             ; preds = %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit, %bb.d
  %i.bo = load ptr, ptr %i.e, align 8, !tbaa !131 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes19_decodeUTF8SlowPathILb0EZNS_6parser7JSLexer10decodeUTF8EvEUlRKN4llvh5TwineEE_EEjRPKcT0_:bb.a
  store i8 3, ptr %i.bg, align 8, !tbaa !71
  call void @_ZZN6hermes6parser7JSLexer10decodeUTF8EvENKUlRKN4llvh5TwineEE_clES5_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(18) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %.critedge

bb.r:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !66  ; 2 uses
  %.not73 = icmp slt i8 %i.bj, -64
  br i1 %.not73, label %bb.t, label %bb.s, !prof !149

bb.s:                                             ; preds = %bb.r
  store ptr %i.bi, ptr %0, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.bk = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %13, i64 17
  store i8 1, ptr %i.bl, align 1, !tbaa !68
  store ptr @.str.417, ptr %13, align 8, !tbaa !66
  store i8 3, ptr %i.bk, align 8, !tbaa !71
  call void @_ZZN6hermes6parser7JSLexer10decodeUTF8EvENKUlRKN4llvh5TwineEE_clES5_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(18) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %.critedge

bb.t:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 3 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !66  ; 2 uses
  %.not74 = icmp slt i8 %i.bn, -64
  br i1 %.not74, label %bb.v, label %bb.u, !prof !149

bb.u:                                             ; preds = %bb.t
  store ptr %i.bm, ptr %0, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.bo = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %14, i64 17
  store i8 1, ptr %i.bp, align 1, !tbaa !68
  store ptr @.str.417, ptr %14, align 8, !tbaa !66
  store i8 3, ptr %i.bo, align 8, !tbaa !71
  call void @_ZZN6hermes6parser7JSLexer10decodeUTF8EvENKUlRKN4llvh5TwineEE_clES5_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(18) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %.critedge

bb.v:                                             ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store ptr %i.bq, ptr %0, align 8, !tbaa !18
  %i.br = shl nsw i32 %i.g, 18
  %i.bs = and i32 %i.br, 1835008
  %i.bt = and i8 %i.bf, 63
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 12
  %i.bw = or disjoint i32 %i.bv, %i.bs            ; 3 uses
  %i.bx = and i8 %i.bj, 63
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 6
  %i.ca = and i8 %i.bn, 63
  %i.cb = zext nneg i8 %i.ca to i32
  %i.cc = or disjoint i32 %i.bz, %i.cb
  %i.cd = or disjoint i32 %i.cc, %i.bw            ; 2 uses
  %i.ce = icmp samesign ult i32 %i.bw, 65536
  br i1 %i.ce, label %bb.w, label %bb.x, !prof !62

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %15, i64 17
  store i8 1, ptr %i.cg, align 1, !tbaa !68
  store ptr @.str.418, ptr %15, align 8, !tbaa !66
  store i8 3, ptr %i.cf, align 8, !tbaa !71
  call void @_ZZN6hermes6parser7JSLexer10decodeUTF8EvENKUlRKN4llvh5TwineEE_clES5_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(18) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %.critedge

bb.x:                                             ; preds = %bb.v
  %i.ch = icmp samesign ugt i32 %i.bw, 1114111
  br i1 %i.ch, label %bb.y, label %.critedge, !prof !62

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  %i.ci = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %17, i64 17
  store i8 1, ptr %i.cj, align 1, !tbaa !68
  store ptr @.str.419, ptr %17, align 8, !tbaa !66
  store i8 3, ptr %i.ci, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.ck = zext nneg i32 %i.cd to i64
  store i64 %i.ck, ptr %i.b, align 8, !tbaa !137
  store ptr %i.b, ptr %18, align 8, !tbaa !66, !alias.scope !1634
  %i.cl = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr null, ptr %i.cl, align 8, !tbaa !66, !alias.scope !1634
  %i.cm = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i8 15, ptr %i.cm, align 8, !tbaa !71, !alias.scope !1634
  %i.cn = getelementptr inbounds nuw i8, ptr %18, i64 17
  store i8 1, ptr %i.cn, align 1, !tbaa !68, !alias.scope !1634
  call void @_ZN4llvhplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Twine") align 8 %16, ptr noundef nonnull align 8 dereferenceable(18) %17, ptr noundef nonnull align 8 dereferenceable(18) %18)
  call void @_ZZN6hermes6parser7JSLexer10decodeUTF8EvENKUlRKN4llvh5TwineEE_clES5_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(18) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %.critedge

bb.z:                                             ; preds = %bb.o
  store ptr %i.be, ptr %0, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  %i.co = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %20, i64 17
  store i8 1, ptr %i.cp, align 1, !tbaa !68
  store ptr @.str.420, ptr %20, align 8, !tbaa !66
  store i8 3, ptr %i.co, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.cq = zext i8 %i.f to i64
  store i64 %i.cq, ptr %i.c, align 8, !tbaa !137
  store ptr %i.c, ptr %21, align 8, !tbaa !66, !alias.scope !1637
  %i.cr = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr null, ptr %i.cr, align 8, !tbaa !66, !alias.scope !1637
  %i.cs = getelementptr inbounds nuw i8, ptr %21, i64 16
  store i8 15, ptr %i.cs, align 8, !tbaa !71, !alias.scope !1637
  %i.ct = getelementptr inbounds nuw i8, ptr %21, i64 17
  store i8 1, ptr %i.ct, align 1, !tbaa !68, !alias.scope !1637
  call void @_ZN4llvhplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Twine") align 8 %19, ptr noundef nonnull align 8 dereferenceable(18) %20, ptr noundef nonnull align 8 dereferenceable(18) %21)
  call void @_ZZN6hermes6parser7JSLexer10decodeUTF8EvENKUlRKN4llvh5TwineEE_clES5_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(18) %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.c, %bb.d, %bb.q, %bb.s, %bb.u, %bb.w, %bb.y, %bb.h, %bb.j, %bb.l, %bb.n, %bb.m, %bb.x, %bb.z
  %.6 = phi i32 [ 65533, %bb.z ], [ 65533, %bb.s ], [ 65533, %bb.q ], [ 65533, %bb.h ], [ %i.aq, %bb.m ], [ %i.cd, %bb.x ], [ 65533, %bb.n ], [ 65533, %bb.l ], [ 65533, %bb.j ], [ 65533, %bb.y ], [ 65533, %bb.w ], [ 65533, %bb.u ], [ %i.t, %bb.d ], [ 65533, %bb.c ], [ 65533, %bb.e ]
  ret i32 %.6
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN6hermes6parser7JSLexer10decodeUTF8EvENKUlRKN4llvh5TwineEE_clES5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(18) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1640   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1643
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !50, !nonnull !51, !align !52
  tail call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %i.d, i32 noundef 0, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(18) %1, i32 noundef 1) #18
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !50, !nonnull !51, !align !52
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 316
  %i.g = load i8, ptr %i.f, align 4, !tbaa !72, !range !59, !noundef !51
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !67
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr %i.j, ptr %i.k, align 8, !tbaa !19
  br label %_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit

_ZN6hermes6parser7JSLexer5errorEN4llvh5SMLocERKNS2_5TwineE.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes6parser7JSLexer17storeCurrentTokenEv(ptr noundef nonnull align 8 dereferenceable(1160) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i32, ptr %i.b, align 8, !tbaa !7    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !18 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63   ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1644
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.c, ptr %i.f, align 8, !tbaa !1645
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.0.0.copyload.i, ptr %i.i, align 8, !tbaa !18
  %.sroa.2.0..sroa_idx.i5.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.2.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i5.i, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.j, ptr %i.e, align 8, !tbaa !63
  br label %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EE12emplace_backIJNS1_9TokenKindEN4llvh7SMRangeEEEERS2_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !1647 ; 5 uses
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorIN6hermes6parser11StoredTokenESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.421) #20
  unreachable

_ZNKSt6vectorIN6hermes6parser11StoredTokenESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.p = sdiv exact i64 %i.n, 24                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i.i, %i.p ; 2 uses
  %1 = icmp ult i64 %i.q, %i.p
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.q, i64 384307168202282325)
  %2 = select i1 %1, i64 384307168202282325, i64 %i.r ; 3 uses
  %.not.i.i.i = icmp ne i64 %2, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.s = mul nuw nsw i64 %2, 24
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #19 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.n ; 3 uses
  store i32 %i.c, ptr %i.u, align 8, !tbaa !1645
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.sroa.0.0.copyload.i, ptr %i.v, align 8, !tbaa !18
  %.sroa.2.0..sroa_idx.i17.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %.sroa.2.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i17.i.i, align 8, !tbaa !18
  %.not10.i.i.i.i.i = icmp eq ptr %i.k, %i.f
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN6hermes6parser11StoredTokenESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %i.t, %_ZNKSt6vectorIN6hermes6parser11StoredTokenESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i ], [ %i.k, %_ZNKSt6vectorIN6hermes6parser11StoredTokenESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !1648, !alias.scope !1650
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1654

_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN6hermes6parser11StoredTokenESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.t, %_ZNKSt6vectorIN6hermes6parser11StoredTokenESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.x, %.lr.ph.i.i.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i25.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i25.i.i, label %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EE17_M_realloc_insertIJNS1_9TokenKindEN4llvh7SMRangeEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #21
  br label %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EE17_M_realloc_insertIJNS1_9TokenKindEN4llvh7SMRangeEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EE17_M_realloc_insertIJNS1_9TokenKindEN4llvh7SMRangeEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24.i.i
  store ptr %i.t, ptr %i.a, align 8, !tbaa !1647
  store ptr %i.y, ptr %i.e, align 8, !tbaa !63
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %2
  store ptr %i.z, ptr %i.g, align 8, !tbaa !1644
  br label %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EE12emplace_backIJNS1_9TokenKindEN4llvh7SMRangeEEEERS2_DpOT_.exit

_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EE12emplace_backIJNS1_9TokenKindEN4llvh7SMRangeEEEERS2_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorIN6hermes6parser11StoredTokenESaIS2_EE17_M_realloc_insertIJNS1_9TokenKindEN4llvh7SMRangeEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6hermes19_decodeUTF8SlowPathILb0EZNS_6parser7JSLexer19_decodeUTF8SlowPathERPKcEUlRKN4llvh5TwineEE_EEjS5_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %class.anon.82, align 8             ; 14 uses
  %4 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %5 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %8 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %9 = alloca %"class.llvh::Twine", align 8       ; 4 uses
  %10 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %11 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %12 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %13 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %14 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %15 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %16 = alloca %"class.llvh::Twine", align 8      ; 4 uses
  %17 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %18 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %19 = alloca %"class.llvh::Twine", align 8      ; 4 uses
  %20 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %21 = alloca %"class.llvh::Twine", align 8      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  store ptr %1, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.d, align 8
  %i.e = load ptr, ptr %0, align 8, !tbaa !18     ; 10 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !66    ; 2 uses
  %i.g = sext i8 %i.f to i32                      ; 6 uses
  %i.h = and i32 %i.g, 224
  %i.i = icmp eq i32 %i.h, 192
  br i1 %i.i, label %bb.b, label %bb.f, !prof !149

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !66
  %i.l = zext i8 %i.k to i32                      ; 2 uses
  %i.m = and i32 %i.l, 192
  %.not77 = icmp eq i32 %i.m, 128
  br i1 %.not77, label %bb.d, label %bb.c, !prof !149

bb.c:                                             ; preds = %bb.b
  store ptr %i.j, ptr %0, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 1, ptr %i.o, align 1, !tbaa !68
  store ptr @.str.417, ptr %4, align 8, !tbaa !66
  store i8 3, ptr %i.n, align 8, !tbaa !71
  call void @_ZZN6hermes6parser7JSLexer19_decodeUTF8SlowPathERPKcENKUlRKN4llvh5TwineEE_clES8_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(18) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  store ptr %i.p, ptr %0, align 8, !tbaa !18
  %i.q = shl nsw i32 %i.g, 6
  %i.r = and i32 %i.q, 1984                       ; 2 uses
  %i.s = and i32 %i.l, 63
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = icmp samesign ult i32 %i.r, 128
  br i1 %i.u, label %bb.e, label %.critedge, !prof !62

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 1, ptr %i.w, align 1, !tbaa !68
  store ptr @.str.418, ptr %5, align 8, !tbaa !66
  store i8 3, ptr %i.v, align 8, !tbaa !71
  call void @_ZZN6hermes6parser7JSLexer19_decodeUTF8SlowPathERPKcENKUlRKN4llvh5TwineEE_clES8_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(18) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.critedge

bb.f:                                             ; preds = %bb.a
  %i.x = and i32 %i.g, 240
  %i.y = icmp eq i32 %i.x, 224
  br i1 %i.y, label %bb.g, label %bb.o, !prof !149

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !66   ; 2 uses
  %.not75 = icmp slt i8 %i.aa, -64
  br i1 %.not75, label %bb.i, label %bb.h, !prof !149

bb.h:                                             ; preds = %bb.g
  store ptr %i.z, ptr %0, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 1, ptr %i.ac, align 1, !tbaa !68
  store ptr @.str.417, ptr %6, align 8, !tbaa !66
  store i8 3, ptr %i.ab, align 8, !tbaa !71
  call void @_ZZN6hermes6parser7JSLexer19_decodeUTF8SlowPathERPKcENKUlRKN4llvh5TwineEE_clES8_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(18) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !66  ; 2 uses
  %.not76 = icmp slt i8 %i.ae, -64
  br i1 %.not76, label %bb.k, label %bb.j, !prof !149

bb.j:                                             ; preds = %bb.i
  store ptr %i.ad, ptr %0, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 1, ptr %i.ag, align 1, !tbaa !68
  store ptr @.str.417, ptr %7, align 8, !tbaa !66
  store i8 3, ptr %i.af, align 8, !tbaa !71
  call void @_ZZN6hermes6parser7JSLexer19_decodeUTF8SlowPathERPKcENKUlRKN4llvh5TwineEE_clES8_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(18) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  store ptr %i.ah, ptr %0, align 8, !tbaa !18
  %i.ai = shl nsw i32 %i.g, 12
  %i.aj = and i32 %i.ai, 61440                    ; 2 uses
  %i.ak = and i8 %i.aa, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 6
  %i.an = or disjoint i32 %i.am, %i.aj            ; 3 uses
  %i.ao = and i8 %i.ae, 63
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = or disjoint i32 %i.an, %i.ap            ; 2 uses
  %i.ar = icmp samesign ult i32 %i.an, 2048
  br i1 %i.ar, label %bb.l, label %bb.m, !prof !62

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 1, ptr %i.at, align 1, !tbaa !68
  store ptr @.str.418, ptr %8, align 8, !tbaa !66
  store i8 3, ptr %i.as, align 8, !tbaa !71
  call void @_ZZN6hermes6parser7JSLexer19_decodeUTF8SlowPathERPKcENKUlRKN4llvh5TwineEE_clES8_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(18) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  %i.au = icmp samesign ugt i32 %i.an, 55295
  %i.av = icmp samesign ult i32 %i.aj, 57344
  %or.cond = select i1 %i.au, i1 %i.av, i1 false, !prof !1630
  br i1 %or.cond, label %bb.n, label %.critedge, !prof !62

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 17
  store i8 1, ptr %i.ax, align 1, !tbaa !68
  store ptr @.str.419, ptr %10, align 8, !tbaa !66
  store i8 3, ptr %i.aw, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ay = zext nneg i32 %i.aq to i64
  store i64 %i.ay, ptr %i.a, align 8, !tbaa !137
  store ptr %i.a, ptr %11, align 8, !tbaa !66, !alias.scope !1655
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr null, ptr %i.az, align 8, !tbaa !66, !alias.scope !1655
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i8 15, ptr %i.ba, align 8, !tbaa !71, !alias.scope !1655
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 1, ptr %i.bb, align 1, !tbaa !68, !alias.scope !1655
  call void @_ZN4llvhplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvh::Twine") align 8 %9, ptr noundef nonnull align 8 dereferenceable(18) %10, ptr noundef nonnull align 8 dereferenceable(18) %11)
  call void @_ZZN6hermes6parser7JSLexer19_decodeUTF8SlowPathERPKcENKUlRKN4llvh5TwineEE_clES8_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(18) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.critedge

bb.o:                                             ; preds = %bb.f
  %i.bc = and i32 %i.g, 248
  %i.bd = icmp eq i32 %i.bc, 240
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 3 uses
  br i1 %i.bd, label %bb.p, label %bb.z

bb.p:                                             ; preds = %bb.o
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !66  ; 2 uses
  %.not = icmp slt i8 %i.bf, -64
  br i1 %.not, label %bb.r, label %bb.q, !prof !149

end_hunk_1
