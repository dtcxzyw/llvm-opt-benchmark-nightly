inline.NumInlined: 219
inline.NumDeleted: 56
begin_hunk_0_@_ZN6icu_7813LocaleBuilder25addUnicodeLocaleAttributeENS_11StringPieceE:bb.a
bb.z:                                             ; preds = %.loopexit
  %i.dm = load ptr, ptr %15, align 8
  call void @uprv_free_78(ptr noundef %i.dm) #10
  br label %_ZN6icu_7810CharStringD2Ev.exit34

_ZN6icu_7810CharStringD2Ev.exit34:                ; preds = %.loopexit, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN6icu_7810CharStringD2Ev.exit34, %_ZN6icu_7810CharStringD2Ev.exit
  %i.dn = load i8, ptr %i.ao, align 4
  %.not.i.i.i35 = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i35, label %_ZN6icu_7810CharStringD2Ev.exit36, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.do = load ptr, ptr %11, align 8
  call void @uprv_free_78(ptr noundef %i.do) #10
  br label %_ZN6icu_7810CharStringD2Ev.exit36

_ZN6icu_7810CharStringD2Ev.exit36:                ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %_ZN6icu_7810CharStringD2Ev.exit36, %bb.i, %bb.h, %bb.e
  %i.dp = load i8, ptr %i.e, align 4
  %.not.i.i.i37 = icmp eq i8 %i.dp, 0
  br i1 %.not.i.i.i37, label %_ZN6icu_7810CharStringD2Ev.exit38, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dq = load ptr, ptr %10, align 8
  call void @uprv_free_78(ptr noundef %i.dq) #10
  br label %_ZN6icu_7810CharStringD2Ev.exit38

_ZN6icu_7810CharStringD2Ev.exit38:                ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  ret ptr %0
}

declare noundef zeroext i1 @_Z33ultag_isUnicodeLocaleAttribute_78PKci(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6icu_786Locale15setKeywordValueEPKcS2_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %5 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef %1) #10
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef %2) #10
  %i.a = load ptr, ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = load ptr, ptr %5, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i32, ptr %i.e, align 8
  call void @_ZN6icu_786Locale15setKeywordValueENS_11StringPieceES1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %i.a, i32 %i.c, ptr %i.d, i32 %i.f, ptr noundef nonnull align 4 dereferenceable(4) %3) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), i8 noundef signext, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZN6icu_7813LocaleBuilder28removeUnicodeLocaleAttributeENS_11StringPieceE(ptr noundef nonnull returned align 8 dereferenceable(48) %0, ptr %1, i32 %2) local_unnamed_addr #2 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::StringByteSink", align 8 ; 6 uses
  %4 = alloca %"class.icu_78::CharString", align 8 ; 12 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.icu_78::CharString", align 8 ; 11 uses
  %6 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %7 = alloca %"class.icu_78::CharString", align 8 ; 11 uses
  %8 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 13 ; 2 uses
  store ptr %i.c, ptr %4, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 40, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i8 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  store i32 0, ptr %i.f, align 8
  store i8 0, ptr %i.c, align 1
  %i.g = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #10 ; 0 uses
  %i.h = load i32, ptr %i.b, align 8
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %4, align 8                ; 2 uses
  %i.k = load i32, ptr %i.f, align 8              ; 3 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.i, label %_ZN6icu_7812_GLOBAL__N_19transformEPci.exit

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.09.i = phi i32 [ %i.p, %bb.d ], [ 0, %bb.b ]
  %.078.i = phi ptr [ %i.q, %bb.d ], [ %i.j, %bb.b ] ; 3 uses
  %i.m = load i8, ptr %.078.i, align 1            ; 2 uses
  %i.n = icmp eq i8 %i.m, 95
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.o = call signext i8 @uprv_asciitolower_78(i8 noundef signext %i.m) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %storemerge.i = phi i8 [ %i.o, %bb.c ], [ 45, %.lr.ph.i ]
  store i8 %storemerge.i, ptr %.078.i, align 1
  %i.p = add nuw nsw i32 %.09.i, 1                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.078.i, i64 1
  %exitcond.not.i = icmp eq i32 %i.p, %i.k
  br i1 %exitcond.not.i, label %_ZN6icu_7812_GLOBAL__N_19transformEPci.exit.loopexit, label %.lr.ph.i, !llvm.loop !10

_ZN6icu_7812_GLOBAL__N_19transformEPci.exit.loopexit: ; preds = %bb.d
  %.pre = load ptr, ptr %4, align 8
  %.pre40 = load i32, ptr %i.f, align 8
  br label %_ZN6icu_7812_GLOBAL__N_19transformEPci.exit

_ZN6icu_7812_GLOBAL__N_19transformEPci.exit:      ; preds = %_ZN6icu_7812_GLOBAL__N_19transformEPci.exit.loopexit, %bb.b
  %i.r = phi i32 [ %.pre40, %_ZN6icu_7812_GLOBAL__N_19transformEPci.exit.loopexit ], [ %i.k, %bb.b ]
  %i.s = phi ptr [ %.pre, %_ZN6icu_7812_GLOBAL__N_19transformEPci.exit.loopexit ], [ %i.j, %bb.b ]
  %i.t = call noundef zeroext i1 @_Z33ultag_isUnicodeLocaleAttribute_78PKci(ptr noundef %i.s, i32 noundef %i.r) #10
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_19transformEPci.exit
  store i32 1, ptr %i.b, align 8
  br label %bb.q

bb.f:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_19transformEPci.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.q, label %_ZNK6icu_786Locale15getKeywordValueINS_10CharStringEEET_NS_11StringPieceER10UErrorCode.exit

_ZNK6icu_786Locale15getKeywordValueINS_10CharStringEEET_NS_11StringPieceER10UErrorCode.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull @.str) #10
  %i.x = load ptr, ptr %6, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = load i32, ptr %i.y, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 13 ; 2 uses
  store ptr %i.aa, ptr %5, align 8, !alias.scope !19
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 40, ptr %i.ab, align 8, !alias.scope !19
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i8 0, ptr %i.ac, align 4, !alias.scope !19
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  store i32 0, ptr %i.ad, align 8, !alias.scope !19
  store i8 0, ptr %i.aa, align 1, !alias.scope !19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10, !noalias !19
  call void @_ZN6icu_7818CharStringByteSinkC2EPNS_10CharStringE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 %5) #10
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6icu_7814StringByteSinkINS_10CharStringEEE, i64 16), ptr %3, align 8, !noalias !19
  call void @_ZNK6icu_786Locale15getKeywordValueENS_11StringPieceERNS_8ByteSinkER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr %i.x, i32 %i.z, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #10
  call void @_ZN6icu_7818CharStringByteSinkD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10, !noalias !19
  %.pre42 = load i32, ptr %i.ad, align 8          ; 3 uses
  %.pre41 = load i32, ptr %i.a, align 4
  %i.ae = icmp sgt i32 %.pre41, 0
  %.not = icmp eq i32 %.pre42, 0
  %or.cond = select i1 %i.ae, i1 true, i1 %.not
  br i1 %or.cond, label %bb.o, label %bb.g

bb.g:                                             ; preds = %_ZNK6icu_786Locale15getKeywordValueINS_10CharStringEEET_NS_11StringPieceER10UErrorCode.exit
  %i.af = load ptr, ptr %5, align 8               ; 2 uses
  %i.ag = icmp sgt i32 %.pre42, 0
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %bb.i
  %.pre43 = load ptr, ptr %5, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %i.ah = phi ptr [ %i.af, %bb.g ], [ %.pre43, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa = phi i32 [ %.pre42, %bb.g ], [ %i.av, %._crit_edge.loopexit ] ; 2 uses
  %i.ai = sext i32 %.lcssa to i64
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 13 ; 2 uses
  store ptr %i.ak, ptr %7, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 40, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  store i8 0, ptr %i.am, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  store i32 0, ptr %i.an, align 8
  store i8 0, ptr %i.ak, align 1
  %i.ao = icmp sgt i32 %.lcssa, 0
  br i1 %i.ao, label %.lr.ph36, label %_ZN6icu_7810CharStringD2Ev.exit

.lr.ph36:                                         ; preds = %._crit_edge
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %.outer

.lr.ph:                                           ; preds = %bb.g, %bb.i
  %.02032 = phi i32 [ %i.at, %bb.i ], [ 0, %bb.g ]
  %.02131 = phi ptr [ %i.au, %bb.i ], [ %i.af, %bb.g ] ; 3 uses
  %i.aq = load i8, ptr %.02131, align 1           ; 2 uses
  switch i8 %i.aq, label %bb.h [
    i8 95, label %bb.i
    i8 45, label %bb.i
  ]

bb.h:                                             ; preds = %.lr.ph
  %i.ar = call signext i8 @uprv_asciitolower_78(i8 noundef signext %i.aq) #10
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %.lr.ph, %bb.h
  %i.as = phi i8 [ %i.ar, %bb.h ], [ 0, %.lr.ph ], [ 0, %.lr.ph ]
  store i8 %i.as, ptr %.02131, align 1
  %i.at = add nuw nsw i32 %.02032, 1              ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.02131, i64 1
  %i.av = load i32, ptr %i.ad, align 8            ; 2 uses
  %i.aw = icmp slt i32 %i.at, %i.av
  br i1 %i.aw, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !22

bb.j:                                             ; preds = %.thread
  %i.ax = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bk, ptr noundef nonnull dereferenceable(1) %.ph) #11
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.thread, label %bb.k, !llvm.loop !23

bb.k:                                             ; preds = %bb.j, %.outer
  %.034.lcssa = phi i1 [ %.034.ph, %.outer ], [ true, %bb.j ] ; 2 uses
  %.01933.lcssa = phi ptr [ %.01933.ph, %.outer ], [ %i.bk, %bb.j ] ; 3 uses
  %i.az = load i32, ptr %i.an, align 8
  %.not30 = icmp eq i32 %i.az, 0
  br i1 %.not30, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %7, i8 noundef signext 95, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #10 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull %.01933.lcssa) #10
  %i.bb = load ptr, ptr %8, align 8
  %i.bc = load i32, ptr %i.ap, align 8
  %i.bd = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %7, ptr noundef %i.bb, i32 noundef %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #10 ; 0 uses
  %i.be = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.01933.lcssa) #11
  %i.bf = getelementptr i8, ptr %.01933.lcssa, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 1      ; 2 uses
  %i.bh = icmp ult ptr %i.bg, %i.aj
  br i1 %i.bh, label %.outer, label %._crit_edge37, !llvm.loop !23

.outer:                                           ; preds = %bb.m, %.lr.ph36
  %.034.ph = phi i1 [ %.034.lcssa, %bb.m ], [ false, %.lr.ph36 ]
  %.01933.ph = phi ptr [ %i.bg, %bb.m ], [ %i.ah, %.lr.ph36 ] ; 3 uses
  %.ph = load ptr, ptr %4, align 8                ; 2 uses
  %9 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.01933.ph, ptr noundef nonnull dereferenceable(1) %.ph) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %.thread, label %bb.k

.thread:                                          ; preds = %.outer, %bb.j
  %.0193364 = phi ptr [ %i.bk, %bb.j ], [ %.01933.ph, %.outer ] ; 2 uses
  %i.bi = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0193364) #11
  %i.bj = getelementptr i8, ptr %.0193364, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 1      ; 4 uses
  %i.bl = icmp ult ptr %i.bk, %i.aj
  br i1 %i.bl, label %bb.j, label %._crit_edge37.thread, !llvm.loop !23

._crit_edge37:                                    ; preds = %bb.m
  br i1 %.034.lcssa, label %._crit_edge37.thread, label %.critedge

._crit_edge37.thread:                             ; preds = %.thread, %._crit_edge37
  %i.bm = load ptr, ptr %i.u, align 8
  %i.bn = load ptr, ptr %7, align 8
  call void @_ZN6icu_786Locale15setKeywordValueEPKcS2_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.bm, ptr noundef nonnull @.str, ptr noundef %i.bn, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %.critedge

.critedge:                                        ; preds = %._crit_edge37.thread, %._crit_edge37
  %.pr = load i8, ptr %i.am, align 4
  %.not.i.i.i = icmp eq i8 %.pr, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.bo = load ptr, ptr %7, align 8
  call void @uprv_free_78(ptr noundef %i.bo) #10
  br label %_ZN6icu_7810CharStringD2Ev.exit

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %._crit_edge, %.critedge, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %bb.o

bb.o:                                             ; preds = %_ZNK6icu_786Locale15getKeywordValueINS_10CharStringEEET_NS_11StringPieceER10UErrorCode.exit, %_ZN6icu_7810CharStringD2Ev.exit
  %i.bp = load i8, ptr %i.ac, align 4
  %.not.i.i.i26 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i.i26, label %_ZN6icu_7810CharStringD2Ev.exit27, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = load ptr, ptr %5, align 8
  call void @uprv_free_78(ptr noundef %i.bq) #10
  br label %_ZN6icu_7810CharStringD2Ev.exit27

_ZN6icu_7810CharStringD2Ev.exit27:                ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.q

bb.q:                                             ; preds = %bb.f, %bb.a, %_ZN6icu_7810CharStringD2Ev.exit27, %bb.e
  %i.br = load i8, ptr %i.e, align 4
  %.not.i.i.i28 = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i28, label %_ZN6icu_7810CharStringD2Ev.exit29, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = load ptr, ptr %4, align 8
  call void @uprv_free_78(ptr noundef %i.bs) #10
  br label %_ZN6icu_7810CharStringD2Ev.exit29

_ZN6icu_7810CharStringD2Ev.exit29:                ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZN6icu_7813LocaleBuilder15clearExtensionsEv(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(48) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %i.a, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7815makeBogusLocaleEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.icu_78::Locale") align 8 %0) local_unnamed_addr #2 {
bb.a:
  tail call void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #10
  tail call void @_ZN6icu_786Locale10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #10
  ret void
}

declare void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

declare void @_ZN6icu_786Locale10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7813LocaleBuilder18copyExtensionsFromERKNS_6LocaleER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZNK6icu_786Locale14createKeywordsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #10 ; 6 uses
  %i.d = load i32, ptr %2, align 4
  %i.e = icmp sgt i32 %i.d, 0
  %.not = icmp eq ptr %i.c, null                  ; 2 uses
  %or.cond = or i1 %.not, %i.e
  br i1 %or.cond, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(116) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %2) #10
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.n = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786Locale7getRootEv() #10
  %i.o = tail call noundef ptr @_ZNK6icu_786Locale5cloneEv(ptr noundef nonnull align 8 dereferenceable(40) %i.n) #10 ; 3 uses
  store ptr %i.o, ptr %i.k, align 8
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 7, ptr %i.q, align 8
  br label %.thread

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.r = phi ptr [ %i.o, %bb.e ], [ %i.l, %bb.d ]
  tail call fastcc void @_ZN6icu_7812_GLOBAL__N_115_copyExtensionsERKNS_6LocaleEPNS_17StringEnumerationERS1_bR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i1 noundef zeroext false, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %.thread

bb.h:                                             ; preds = %bb.b
  br i1 %.not, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit, label %.thread

.thread:                                          ; preds = %bb.f, %bb.g, %bb.c, %bb.h
  %i.s = load ptr, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(116) %i.c) #10, !inline_history !24
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit: ; preds = %.thread, %bb.h, %bb.a
  ret void
}

declare noundef ptr @_ZNK6icu_786Locale14createKeywordsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6icu_7812_GLOBAL__N_115_copyExtensionsERKNS_6LocaleEPNS_17StringEnumerationERS1_bR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i1 noundef zeroext %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #2 {
bb.a:
  %5 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %6 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %7 = alloca %"class.std::optional", align 8     ; 7 uses
  %8 = alloca %"class.std::optional", align 8     ; 7 uses
  %9 = alloca %"class.icu_78::StringByteSink", align 8 ; 6 uses
  %10 = alloca %"class.icu_78::CharString", align 8 ; 14 uses
  %11 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %i.a = load i32, ptr %4, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEE12adoptInsteadEPS1_.exit, label %bb.c

_ZN6icu_7812LocalPointerINS_17StringEnumerationEE12adoptInsteadEPS1_.exit: ; preds = %bb.b
  %i.d = tail call noundef ptr @_ZNK6icu_786Locale14createKeywordsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(4) %4) #10 ; 4 uses
  %i.e = load i32, ptr %4, align 4
  %i.f = icmp sgt i32 %i.e, 0
  %.not = icmp eq ptr %i.d, null
  %or.cond = or i1 %.not, %i.f
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN6icu_7812LocalPointerINS_17StringEnumerationEE12adoptInsteadEPS1_.exit, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.b ], [ %i.d, %_ZN6icu_7812LocalPointerINS_17StringEnumerationEE12adoptInsteadEPS1_.exit ] ; 3 uses
  %.0 = phi ptr [ %1, %bb.b ], [ %i.d, %_ZN6icu_7812LocalPointerINS_17StringEnumerationEE12adoptInsteadEPS1_.exit ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 13 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 12 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %bb.c
  %i.r = load ptr, ptr %.0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef ptr %i.t(ptr noundef nonnull align 8 dereferenceable(116) %.0, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %4) #10 ; 12 uses
  %.not24 = icmp eq ptr %i.u, null
  br i1 %.not24, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull %i.u) #10
  %i.v = load ptr, ptr %11, align 8
  %i.w = load i32, ptr %i.g, align 8
end_hunk_0
