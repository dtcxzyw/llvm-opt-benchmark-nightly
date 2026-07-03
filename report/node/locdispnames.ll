inline.NumInlined: 110
inline.NumDeleted: 38
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK6icu_786Locale14getDisplayNameERKS0_RNS_13UnicodeStringE:bb.a
  %i.aa = icmp eq i32 %i.z, 15
  br i1 %i.aa, label %bb.g, label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = call noundef ptr @_ZN6icu_7813UnicodeString9getBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.v) #6 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ad = load i16, ptr %i.p, align 8             ; 4 uses
  %i.ae = trunc i16 %i.ad to i1
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %2) #6
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.j:                                             ; preds = %bb.h
  %i.af = icmp slt i16 %i.ad, 0
  %i.ag = ashr i16 %i.ad, 5
  %i.ah = sext i16 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = select i1 %i.af, i32 %i.aj, i32 %i.ah
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %_ZN6icu_7813UnicodeString8truncateEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = and i16 %i.ad, 30
  store i16 %i.al, ptr %i.p, align 8
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.l:                                             ; preds = %bb.g
  store i32 0, ptr %i.a, align 4
  %i.am = call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #6
  %i.an = call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #6
  %i.ao = load i16, ptr %i.p, align 8
  %i.ap = and i16 %i.ao, 2
  %.not.i25 = icmp eq i16 %i.ap, 0
  %i.aq = load i32, ptr %i.s, align 8
  %i.ar = select i1 %.not.i25, i32 %i.aq, i32 27
  %i.as = call i32 @uloc_getDisplayName_78(ptr noundef %i.am, ptr noundef %i.an, ptr noundef nonnull %i.ab, i32 noundef %i.ar, ptr noundef nonnull %i.a)
  %i.at = load i32, ptr %i.a, align 4
  %i.au = icmp sgt i32 %i.at, 0
  %i.av = select i1 %i.au, i32 0, i32 %i.as
  call void @_ZN6icu_7813UnicodeString13releaseBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.av) #6
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

_ZN6icu_7813UnicodeString8truncateEi.exit:        ; preds = %bb.k, %bb.j, %bb.i, %bb.e, %bb.d, %bb.c, %bb.f, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @uloc_getDisplayName_78(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.icu_78::CharString", align 8 ; 7 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4
  %i.g = icmp eq ptr %4, null
  br i1 %i.g, label %bb.bs, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %4, align 4
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.bs

bb.c:                                             ; preds = %bb.b
  %i.j = icmp slt i32 %3, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ne i32 %3, 0
  %i.l = icmp eq ptr %2, null
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %4, align 4
  br label %bb.bs

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  store i32 0, ptr %i.e, align 4
  %i.m = call ptr @ures_open_78(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull %i.e) #6 ; 3 uses
  %i.n = call ptr @ures_getByKeyWithFallback_78(ptr noundef %i.m, ptr noundef nonnull @_ZN12_GLOBAL__N_122_kLocaleDisplayPatternE, ptr noundef null, ptr noundef nonnull %i.e) #6 ; 4 uses
  %i.o = call ptr @ures_getStringByKeyWithFallback_78(ptr noundef %i.n, ptr noundef nonnull @_ZN12_GLOBAL__N_111_kSeparatorE, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e) #6
  %i.p = call ptr @ures_getStringByKeyWithFallback_78(ptr noundef %i.n, ptr noundef nonnull @_ZN12_GLOBAL__N_19_kPatternE, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #6 ; 7 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @ures_close_78(ptr noundef nonnull %i.n) #6
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit: ; preds = %bb.f, %bb.g
  %.not.i317 = icmp eq ptr %i.m, null
  br i1 %.not.i317, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit318, label %bb.h

bb.h:                                             ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit
  call void @ures_close_78(ptr noundef nonnull %i.m) #6
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit318

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit318: ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  %i.q = load i32, ptr %i.c, align 4
  %i.r = icmp eq i32 %i.q, 0
  %spec.select = select i1 %i.r, ptr @_ZZ22uloc_getDisplayName_78E16defaultSeparator, ptr %i.o ; 2 uses
  %i.s = call ptr @u_strstr_78(ptr noundef %spec.select, ptr noundef nonnull @_ZZ22uloc_getDisplayName_78E4sub0) #6 ; 3 uses
  %i.t = call ptr @u_strstr_78(ptr noundef %spec.select, ptr noundef nonnull @_ZZ22uloc_getDisplayName_78E4sub1) #6 ; 3 uses
  %i.u = icmp eq ptr %i.s, null
  %i.v = icmp eq ptr %i.t, null
  %or.cond4 = select i1 %i.u, i1 true, i1 %i.v
  %i.w = icmp ult ptr %i.t, %i.s
  %or.cond316 = select i1 %or.cond4, i1 true, i1 %i.w
  br i1 %or.cond316, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit318
  store i32 1, ptr %4, align 4
  br label %bb.bs

bb.j:                                             ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit318
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 6 ; 2 uses
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 1
  %i.ac = trunc i64 %i.ab to i32
  store i32 %i.ac, ptr %i.c, align 4
  %i.ad = load i32, ptr %i.d, align 4
  switch i32 %i.ad, label %bb.m [
    i32 0, label %bb.l
    i32 9, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.ae = call i32 @u_strncmp_78(ptr noundef %i.p, ptr noundef nonnull @_ZZ22uloc_getDisplayName_78E14defaultPattern, i32 noundef 9) #6
  %.not299 = icmp eq i32 %i.ae, 0
  br i1 %.not299, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.k
  store i32 9, ptr %i.d, align 4
  br label %.thread331

bb.m:                                             ; preds = %bb.j, %bb.k
  %i.af = call ptr @u_strstr_78(ptr noundef %i.p, ptr noundef nonnull @_ZZ22uloc_getDisplayName_78E4sub0) #6 ; 2 uses
  %i.ag = call ptr @u_strstr_78(ptr noundef %i.p, ptr noundef nonnull @_ZZ22uloc_getDisplayName_78E4sub1) #6 ; 2 uses
  %i.ah = icmp ne ptr %i.af, null
  %i.ai = icmp ne ptr %i.ag, null
  %or.cond6.not = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %or.cond6.not, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = ptrtoint ptr %i.p to i64                ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = lshr exact i64 %i.al, 1
  %i.an = trunc i64 %i.am to i32                  ; 3 uses
  %i.ao = ptrtoint ptr %i.ag to i64
  %i.ap = sub i64 %i.ao, %i.ak
  %i.aq = lshr exact i64 %i.ap, 1
  %i.ar = trunc i64 %i.aq to i32                  ; 3 uses
  %i.as = icmp slt i32 %i.ar, %i.an               ; 2 uses
  %.0248 = call i32 @llvm.smax.i32(i32 %i.ar, i32 %i.an) ; 2 uses
  %.0241 = call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.an) ; 2 uses
  %i.at = call ptr @u_strchr_78(ptr noundef %i.p, i16 noundef zeroext -248) #6
  %.not300 = icmp eq ptr %i.at, null
  br i1 %.not300, label %.thread331, label %bb.o

bb.o:                                             ; preds = %bb.n
  br label %.thread331

bb.p:                                             ; preds = %bb.m
  store i32 1, ptr %4, align 4
  br label %bb.bs

.thread331:                                       ; preds = %bb.o, %bb.n, %bb.l
  %.2279 = phi i16 [ 93, %bb.l ], [ 93, %bb.n ], [ -195, %bb.o ] ; 3 uses
  %.2264.shrunk = phi i1 [ false, %bb.l ], [ %i.as, %bb.n ], [ %i.as, %bb.o ]
  %.2259 = phi i16 [ 41, %bb.l ], [ 41, %bb.n ], [ -247, %bb.o ] ; 3 uses
  %.2256 = phi i16 [ 91, %bb.l ], [ 91, %bb.n ], [ -197, %bb.o ] ; 3 uses
  %.2253 = phi i16 [ 40, %bb.l ], [ 40, %bb.n ], [ -248, %bb.o ] ; 3 uses
  %.2250 = phi i32 [ 5, %bb.l ], [ %.0248, %bb.n ], [ %.0248, %bb.o ]
  %.2243 = phi i32 [ 0, %bb.l ], [ %.0241, %bb.n ], [ %.0241, %bb.o ]
  %.0200 = phi ptr [ @_ZZ22uloc_getDisplayName_78E14defaultPattern, %bb.l ], [ %i.p, %bb.n ], [ %i.p, %bb.o ] ; 15 uses
  %.0200420 = ptrtoaddr ptr %.0200 to i64
  %.2264 = zext i1 %.2264.shrunk to i32
  %i.au = icmp eq ptr %0, null
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ax = icmp ne ptr %2, null
  %i.ay = sub i64 %i.a, %.0200420                 ; 2 uses
  %diff.check551 = icmp ult i64 %i.ay, 32
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.2253, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert442 = insertelement <8 x i16> poison, i16 %.2259, i64 0
  %broadcast.splat443 = shufflevector <8 x i16> %broadcast.splatinsert442, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert444 = insertelement <8 x i16> poison, i16 %.2256, i64 0
  %broadcast.splat445 = shufflevector <8 x i16> %broadcast.splatinsert444, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert446 = insertelement <8 x i16> poison, i16 %.2279, i64 0
  %broadcast.splat447 = shufflevector <8 x i16> %broadcast.splatinsert446, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert510 = insertelement <8 x i16> poison, i16 %.2253, i64 0
  %broadcast.splat511 = shufflevector <8 x i16> %broadcast.splatinsert510, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert512 = insertelement <8 x i16> poison, i16 %.2259, i64 0
  %broadcast.splat513 = shufflevector <8 x i16> %broadcast.splatinsert512, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert514 = insertelement <8 x i16> poison, i16 %.2256, i64 0
  %broadcast.splat515 = shufflevector <8 x i16> %broadcast.splatinsert514, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert516 = insertelement <8 x i16> poison, i16 %.2279, i64 0
  %broadcast.splat517 = shufflevector <8 x i16> %broadcast.splatinsert516, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %bb.q

bb.q:                                             ; preds = %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit, %.thread331
  %.0273 = phi i8 [ 1, %.thread331 ], [ %.3276, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit ]
  %.0269 = phi i8 [ 1, %.thread331 ], [ %.3272, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit ]
  %.0265 = phi i8 [ 0, %.thread331 ], [ 1, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit ]
  %.3244 = phi i32 [ %.2243, %.thread331 ], [ %.6247, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit ] ; 13 uses
  %.not303 = icmp eq i32 %.3244, 0
  br i1 %.not303, label %.loopexit345.preheader, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not304 = icmp slt i32 %3, %.3244
  br i1 %.not304, label %.loopexit345.preheader, label %.preheader344

.loopexit345.preheader:                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block564, %vec.epilog.middle.block579, %.preheader344, %bb.q, %bb.r
  %.3228368.ph = phi i32 [ %.3244, %bb.r ], [ 0, %bb.q ], [ 0, %.preheader344 ], [ %.3244, %middle.block564 ], [ %.3244, %vec.epilog.middle.block579 ], [ %.3244, %.lr.ph ], [ %.3244, %.lr.ph.prol.loopexit ]
  %.3236367.ph = phi ptr [ %2, %bb.r ], [ %2, %bb.q ], [ %2, %.preheader344 ], [ %i.bb, %middle.block564 ], [ %i.bi, %vec.epilog.middle.block579 ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.cw, %.lr.ph ]
  br label %.loopexit345

.preheader344:                                    ; preds = %bb.r
  %i.az = icmp sgt i32 %.3244, 0
  br i1 %i.az, label %iter.check567, label %.loopexit345.preheader

iter.check567:                                    ; preds = %.preheader344
  %wide.trip.count = zext nneg i32 %.3244 to i64  ; 8 uses
  %min.iters.check552 = icmp ult i32 %.3244, 4
  %or.cond583 = select i1 %min.iters.check552, i1 true, i1 %diff.check551
  br i1 %or.cond583, label %.lr.ph.preheader, label %vector.main.loop.iter.check553

vector.main.loop.iter.check553:                   ; preds = %iter.check567
  %min.iters.check554 = icmp ult i32 %.3244, 16
  br i1 %min.iters.check554, label %vec.epilog.ph571, label %vector.ph555

vector.ph555:                                     ; preds = %vector.main.loop.iter.check553
  %n.mod.vf556 = and i64 %wide.trip.count, 12
  %n.vec557 = and i64 %wide.trip.count, 2147483632 ; 5 uses
  %i.ba = shl nuw nsw i64 %n.vec557, 1
  %i.bb = getelementptr i8, ptr %2, i64 %i.ba     ; 2 uses
  br label %vector.body558

vector.body558:                                   ; preds = %vector.body558, %vector.ph555
  %index559 = phi i64 [ 0, %vector.ph555 ], [ %index.next563, %vector.body558 ] ; 3 uses
  %i.bc = shl i64 %index559, 1
  %next.gep560 = getelementptr i8, ptr %2, i64 %i.bc ; 2 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %.0200, i64 %index559 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load561 = load <8 x i16>, ptr %i.bd, align 2
  %wide.load562 = load <8 x i16>, ptr %i.be, align 2
  %i.bf = getelementptr i8, ptr %next.gep560, i64 16
  store <8 x i16> %wide.load561, ptr %next.gep560, align 2
  store <8 x i16> %wide.load562, ptr %i.bf, align 2
  %index.next563 = add nuw i64 %index559, 16      ; 2 uses
  %i.bg = icmp eq i64 %index.next563, %n.vec557
  br i1 %i.bg, label %middle.block564, label %vector.body558, !llvm.loop !7

middle.block564:                                  ; preds = %vector.body558
  %cmp.n565 = icmp eq i64 %n.vec557, %wide.trip.count
  br i1 %cmp.n565, label %.loopexit345.preheader, label %vec.epilog.iter.check569

vec.epilog.iter.check569:                         ; preds = %middle.block564
  %min.epilog.iters.check570 = icmp eq i64 %n.mod.vf556, 0
  br i1 %min.epilog.iters.check570, label %.lr.ph.preheader, label %vec.epilog.ph571, !prof !11

vec.epilog.ph571:                                 ; preds = %vector.main.loop.iter.check553, %vec.epilog.iter.check569
  %vec.epilog.resume.val566 = phi i64 [ %n.vec557, %vec.epilog.iter.check569 ], [ 0, %vector.main.loop.iter.check553 ]
  %n.vec573 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %i.bh = shl nuw nsw i64 %n.vec573, 1
  %i.bi = getelementptr i8, ptr %2, i64 %i.bh     ; 2 uses
  br label %vec.epilog.vector.body574

vec.epilog.vector.body574:                        ; preds = %vec.epilog.vector.body574, %vec.epilog.ph571
  %index575 = phi i64 [ %vec.epilog.resume.val566, %vec.epilog.ph571 ], [ %index.next578, %vec.epilog.vector.body574 ] ; 3 uses
  %i.bj = shl i64 %index575, 1
  %next.gep576 = getelementptr i8, ptr %2, i64 %i.bj
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.0200, i64 %index575
  %wide.load577 = load <4 x i16>, ptr %i.bk, align 2
  store <4 x i16> %wide.load577, ptr %next.gep576, align 2
  %index.next578 = add nuw i64 %index575, 4       ; 2 uses
  %i.bl = icmp eq i64 %index.next578, %n.vec573
  br i1 %i.bl, label %vec.epilog.middle.block579, label %vec.epilog.vector.body574, !llvm.loop !12

vec.epilog.middle.block579:                       ; preds = %vec.epilog.vector.body574
  %cmp.n580 = icmp eq i64 %n.vec573, %wide.trip.count
  br i1 %cmp.n580, label %.loopexit345.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check567, %vec.epilog.iter.check569, %vec.epilog.middle.block579
  %indvars.iv.ph = phi i64 [ 0, %iter.check567 ], [ %n.vec557, %vec.epilog.iter.check569 ], [ %n.vec573, %vec.epilog.middle.block579 ] ; 4 uses
  %.0233346.ph = phi ptr [ %2, %iter.check567 ], [ %i.bb, %vec.epilog.iter.check569 ], [ %i.bi, %vec.epilog.middle.block579 ] ; 2 uses
  %i.bm = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.bm, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.0233346.prol = phi ptr [ %i.bp, %.lr.ph.prol ], [ %.0233346.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %.0200, i64 %indvars.iv.prol
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = getelementptr inbounds nuw i8, ptr %.0233346.prol, i64 2 ; 3 uses
  store i16 %i.bo, ptr %.0233346.prol, align 2
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !13

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.bp, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.0233346.unr = phi ptr [ %.0233346.ph, %.lr.ph.preheader ], [ %i.bp, %.lr.ph.prol ]
  %i.bq = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.br = icmp ugt i64 %i.bq, -8
  br i1 %i.br, label %.loopexit345.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.0233346 = phi ptr [ %i.cw, %.lr.ph ], [ %.0233346.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.0200, i64 %indvars.iv
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = getelementptr inbounds nuw i8, ptr %.0233346, i64 2
  store i16 %i.bt, ptr %.0233346, align 2
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %.0200, i64 %indvars.iv
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.bx = load i16, ptr %i.bw, align 2
  %i.by = getelementptr inbounds nuw i8, ptr %.0233346, i64 4
  store i16 %i.bx, ptr %i.bu, align 2
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %.0200, i64 %indvars.iv
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load i16, ptr %i.ca, align 2
  %i.cc = getelementptr inbounds nuw i8, ptr %.0233346, i64 6
  store i16 %i.cb, ptr %i.by, align 2
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %.0200, i64 %indvars.iv
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 6
  %i.cf = load i16, ptr %i.ce, align 2
  %i.cg = getelementptr inbounds nuw i8, ptr %.0233346, i64 8
  store i16 %i.cf, ptr %i.cc, align 2
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %.0200, i64 %indvars.iv
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i16, ptr %i.ci, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %.0233346, i64 10
  store i16 %i.cj, ptr %i.cg, align 2
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %.0200, i64 %indvars.iv
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 10
  %i.cn = load i16, ptr %i.cm, align 2
  %i.co = getelementptr inbounds nuw i8, ptr %.0233346, i64 12
  store i16 %i.cn, ptr %i.ck, align 2
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %.0200, i64 %indvars.iv
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.cr = load i16, ptr %i.cq, align 2
  %i.cs = getelementptr inbounds nuw i8, ptr %.0233346, i64 14
  store i16 %i.cr, ptr %i.co, align 2
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %.0200, i64 %indvars.iv
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 14
  %i.cv = load i16, ptr %i.cu, align 2
  %i.cw = getelementptr inbounds nuw i8, ptr %.0233346, i64 16 ; 2 uses
  store i16 %i.cv, ptr %i.cs, align 2
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %.loopexit345.preheader, label %.lr.ph, !llvm.loop !15

bb.s:                                             ; preds = %bb.bq
  %.not.i319 = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i319, label %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @uenum_close_78(ptr noundef nonnull %.sroa.0.3) #6
  br label %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit

_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit: ; preds = %bb.s, %bb.t
  %.not305 = icmp eq i8 %.3268, 0
  br i1 %.not305, label %bb.br, label %bb.q, !llvm.loop !16

.loopexit345:                                     ; preds = %.loopexit345.preheader, %bb.bq
  %.1196375 = phi i32 [ %.7, %bb.bq ], [ %.3244, %.loopexit345.preheader ] ; 12 uses
  %.0209374 = phi i32 [ %.1210, %bb.bq ], [ 0, %.loopexit345.preheader ] ; 5 uses
  %.0211373 = phi i32 [ %.1212, %bb.bq ], [ 0, %.loopexit345.preheader ] ; 5 uses
  %.0213372 = phi i32 [ %.2215, %bb.bq ], [ 0, %.loopexit345.preheader ] ; 7 uses
  %.0216371 = phi i32 [ %.2218, %bb.bq ], [ 0, %.loopexit345.preheader ] ; 5 uses
  %.0219370 = phi i32 [ %.2221, %bb.bq ], [ 0, %.loopexit345.preheader ] ; 3 uses
  %.0222369 = phi i32 [ %.2224, %bb.bq ], [ 0, %.loopexit345.preheader ] ; 3 uses
  %.3228368 = phi i32 [ %.7232, %bb.bq ], [ %.3228368.ph, %.loopexit345.preheader ] ; 7 uses
  %.3236367 = phi ptr [ %.17, %bb.bq ], [ %.3236367.ph, %.loopexit345.preheader ]
  %.4245366 = phi i32 [ %.6247, %bb.bq ], [ %.3244, %.loopexit345.preheader ] ; 9 uses
  %.1266365 = phi i8 [ %.3268, %bb.bq ], [ %.0265, %.loopexit345.preheader ] ; 8 uses
end_hunk_0
begin_hunk_1_@uloc_getDisplayName_78:bb.a

pred.store.continue531:                           ; preds = %pred.store.if530, %vec.epilog.vector.body518
  %i.hz = extractelement <8 x i1> %i.hw, i64 1
  br i1 %i.hz, label %pred.store.if532, label %pred.store.continue533

pred.store.if532:                                 ; preds = %pred.store.continue531
  %i.ia = extractelement <8 x i16> %predphi529, i64 1
  store i16 %i.ia, ptr %next.gep521, align 2
  br label %pred.store.continue533

pred.store.continue533:                           ; preds = %pred.store.if532, %pred.store.continue531
  %i.ib = extractelement <8 x i1> %i.hw, i64 2
  br i1 %i.ib, label %pred.store.if534, label %pred.store.continue535

pred.store.if534:                                 ; preds = %pred.store.continue533
  %i.ic = extractelement <8 x i16> %predphi529, i64 2
  store i16 %i.ic, ptr %next.gep522, align 2
  br label %pred.store.continue535

pred.store.continue535:                           ; preds = %pred.store.if534, %pred.store.continue533
  %i.id = extractelement <8 x i1> %i.hw, i64 3
  br i1 %i.id, label %pred.store.if536, label %pred.store.continue537

pred.store.if536:                                 ; preds = %pred.store.continue535
  %i.ie = extractelement <8 x i16> %predphi529, i64 3
  store i16 %i.ie, ptr %next.gep523, align 2
  br label %pred.store.continue537

pred.store.continue537:                           ; preds = %pred.store.if536, %pred.store.continue535
  %i.if = extractelement <8 x i1> %i.hw, i64 4
  br i1 %i.if, label %pred.store.if538, label %pred.store.continue539

pred.store.if538:                                 ; preds = %pred.store.continue537
  %i.ig = extractelement <8 x i16> %predphi529, i64 4
  store i16 %i.ig, ptr %next.gep524, align 2
  br label %pred.store.continue539

pred.store.continue539:                           ; preds = %pred.store.if538, %pred.store.continue537
  %i.ih = extractelement <8 x i1> %i.hw, i64 5
  br i1 %i.ih, label %pred.store.if540, label %pred.store.continue541

pred.store.if540:                                 ; preds = %pred.store.continue539
  %i.ii = extractelement <8 x i16> %predphi529, i64 5
  store i16 %i.ii, ptr %next.gep525, align 2
  br label %pred.store.continue541

pred.store.continue541:                           ; preds = %pred.store.if540, %pred.store.continue539
  %i.ij = extractelement <8 x i1> %i.hw, i64 6
  br i1 %i.ij, label %pred.store.if542, label %pred.store.continue543

pred.store.if542:                                 ; preds = %pred.store.continue541
  %i.ik = extractelement <8 x i16> %predphi529, i64 6
  store i16 %i.ik, ptr %next.gep526, align 2
  br label %pred.store.continue543

pred.store.continue543:                           ; preds = %pred.store.if542, %pred.store.continue541
  %i.il = extractelement <8 x i1> %i.hw, i64 7
  br i1 %i.il, label %pred.store.if544, label %pred.store.continue545

pred.store.if544:                                 ; preds = %pred.store.continue543
  %i.im = extractelement <8 x i16> %predphi529, i64 7
  store i16 %i.im, ptr %next.gep527, align 2
  br label %pred.store.continue545

pred.store.continue545:                           ; preds = %pred.store.if544, %pred.store.continue543
  %index.next546 = add nuw i64 %index519, 8       ; 2 uses
  %i.in = icmp eq i64 %index.next546, %n.vec509
  br i1 %i.in, label %vec.epilog.middle.block547, label %vec.epilog.vector.body518, !llvm.loop !19

vec.epilog.middle.block547:                       ; preds = %pred.store.continue545
  %cmp.n548 = icmp eq i64 %i.fd, %n.vec509
  br i1 %cmp.n548, label %.preheader, label %.lr.ph350.preheader

.lr.ph350.preheader:                              ; preds = %iter.check503, %vec.epilog.iter.check505, %vec.epilog.middle.block547
  %.9349.ph = phi ptr [ %.8, %iter.check503 ], [ %i.ff, %vec.epilog.iter.check505 ], [ %i.hl, %vec.epilog.middle.block547 ]
  br label %.lr.ph350

.preheader:                                       ; preds = %bb.bb, %vec.epilog.middle.block547, %middle.block500
  %.lcssa416 = phi ptr [ %i.hl, %vec.epilog.middle.block547 ], [ %i.ff, %middle.block500 ], [ %i.is, %bb.bb ] ; 2 uses
  %.pre389 = load i32, ptr %i.c, align 4          ; 2 uses
  %i.io = icmp sgt i32 %.pre389, 0
  br i1 %i.io, label %.lr.ph354, label %.loopexit343

.lr.ph350:                                        ; preds = %.lr.ph350.preheader, %bb.bb
  %.9349 = phi ptr [ %i.is, %bb.bb ], [ %.9349.ph, %.lr.ph350.preheader ] ; 3 uses
  %i.ip = load i16, ptr %.9349, align 2           ; 2 uses
  %i.iq = icmp eq i16 %i.ip, %.2253
  br i1 %i.iq, label %.sink.split, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph350
  %i.ir = icmp eq i16 %i.ip, %.2259
  br i1 %i.ir, label %.sink.split, label %bb.bb

.sink.split:                                      ; preds = %bb.ba, %.lr.ph350
  %.2256.sink = phi i16 [ %.2256, %.lr.ph350 ], [ %.2279, %bb.ba ]
  store i16 %.2256.sink, ptr %.9349, align 2
  br label %bb.bb

bb.bb:                                            ; preds = %.sink.split, %bb.ba
  %i.is = getelementptr inbounds nuw i8, ptr %.9349, i64 2 ; 3 uses
  %i.it = icmp ult ptr %i.is, %i.ex
  br i1 %i.it, label %.lr.ph350, label %.preheader, !llvm.loop !20

.lr.ph354:                                        ; preds = %.preheader, %.lr.ph354
  %indvars.iv382 = phi i64 [ %indvars.iv.next383, %.lr.ph354 ], [ 0, %.preheader ] ; 2 uses
  %.10352 = phi ptr [ %i.iw, %.lr.ph354 ], [ %.lcssa416, %.preheader ] ; 2 uses
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv382
  %i.iv = load i16, ptr %i.iu, align 2
  %i.iw = getelementptr inbounds nuw i8, ptr %.10352, i64 2 ; 2 uses
  store i16 %i.iv, ptr %.10352, align 2
  %indvars.iv.next383 = add nuw nsw i64 %indvars.iv382, 1 ; 2 uses
  %i.ix = load i32, ptr %i.c, align 4             ; 2 uses
  %i.iy = sext i32 %i.ix to i64
  %i.iz = icmp slt i64 %indvars.iv.next383, %i.iy
  br i1 %i.iz, label %.lr.ph354, label %.loopexit343, !llvm.loop !21

.loopexit343:                                     ; preds = %.lr.ph354, %.preheader, %bb.az
  %i.ja = phi i32 [ %i.eu, %bb.az ], [ %.pre389, %.preheader ], [ %i.ix, %.lr.ph354 ]
  %.11 = phi ptr [ %.8, %bb.az ], [ %.lcssa416, %.preheader ], [ %i.iw, %.lr.ph354 ]
  %i.jb = load i32, ptr %i.f, align 4
  %i.jc = add i32 %i.jb, %.1196375
  %i.jd = add i32 %i.jc, %i.ja
  br label %bb.be

bb.bc:                                            ; preds = %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit
  br i1 %.1207, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.not310 = icmp eq i32 %.1196375, %.1214
  %i.je = load i32, ptr %i.c, align 4
  %i.jf = select i1 %.not310, i32 0, i32 %i.je
  %.3 = sub nsw i32 %.1196375, %i.jf              ; 2 uses
  %i.jg = sub nsw i32 %.3, %.1214                 ; 2 uses
  %i.jh = icmp sgt i32 %i.jg, 0
  %i.ji = zext i1 %i.jh to i8
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd, %.loopexit343
  %.2271 = phi i8 [ 1, %.loopexit343 ], [ %i.ji, %bb.bd ], [ 1, %bb.bc ]
  %.12 = phi ptr [ %.11, %.loopexit343 ], [ %.8, %bb.bd ], [ %.8, %bb.bc ]
  %.1217 = phi i32 [ %.0216371, %.loopexit343 ], [ %i.jg, %bb.bd ], [ %.0216371, %bb.bc ]
  %.4 = phi i32 [ %i.jd, %.loopexit343 ], [ %.3, %bb.bd ], [ %.1196375, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  br label %bb.bf

bb.bf:                                            ; preds = %bb.w, %bb.u, %bb.v, %bb.be
  %.sroa.0.3 = phi ptr [ %.sroa.0.0362, %bb.u ], [ %.sroa.0.0362, %bb.v ], [ %.sroa.0.0362, %bb.w ], [ %.sroa.0.2, %bb.be ] ; 3 uses
  %.3276 = phi i8 [ 0, %bb.u ], [ %i.df, %bb.v ], [ %.1274363, %bb.w ], [ %.1274363, %bb.be ] ; 3 uses
  %.3272 = phi i8 [ %.1270364, %bb.u ], [ %.1270364, %bb.v ], [ 0, %bb.w ], [ %.2271, %bb.be ] ; 3 uses
  %.13 = phi ptr [ %.4237, %bb.u ], [ %.4237, %bb.v ], [ %.4237, %bb.w ], [ %.12, %bb.be ] ; 7 uses
  %.2224 = phi i32 [ %.0222369, %bb.u ], [ %i.dc, %bb.v ], [ %.0222369, %bb.w ], [ %.0222369, %bb.be ] ; 2 uses
  %.2221 = phi i32 [ %.0219370, %bb.u ], [ %.1196375, %bb.v ], [ %.0219370, %bb.w ], [ %.0219370, %bb.be ] ; 2 uses
  %.2218 = phi i32 [ %.0216371, %bb.u ], [ %.0216371, %bb.v ], [ %.0216371, %bb.w ], [ %.1217, %bb.be ] ; 2 uses
  %.2215 = phi i32 [ %.0213372, %bb.u ], [ %.0213372, %bb.v ], [ %.0213372, %bb.w ], [ %.1214, %bb.be ] ; 2 uses
  %.1210 = phi i32 [ %.0209374, %bb.u ], [ %.0209374, %bb.v ], [ %.0209374, %bb.w ], [ %i.dg, %bb.be ]
  %.2208 = phi i1 [ false, %bb.u ], [ false, %bb.v ], [ false, %bb.w ], [ %.1207, %bb.be ]
  %.5 = phi i32 [ %.1196375, %bb.u ], [ %i.dd, %bb.v ], [ %.1196375, %bb.w ], [ %.4, %bb.be ] ; 5 uses
  %i.jj = load i32, ptr %4, align 4
  %i.jk = icmp eq i32 %i.jj, 15
  br i1 %i.jk, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %4, align 4
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  br i1 %.2208, label %bb.bq, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jl = icmp ne i8 %.3276, 0                    ; 3 uses
  %i.jm = icmp ne i8 %.3272, 0
  %or.cond8 = select i1 %i.jl, i1 %i.jm, i1 false
  br i1 %or.cond8, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.jn = add nsw i32 %.3228368, 3                ; 3 uses
  %i.jo = icmp eq i32 %.0211373, 0
  %i.jp = load i32, ptr %i.d, align 4
  %i.jq = select i1 %i.jo, i32 %.2250, i32 %i.jp  ; 2 uses
  %i.jr = sub nsw i32 %i.jq, %i.jn                ; 6 uses
  %i.js = add nsw i32 %i.jr, %.5                  ; 4 uses
  %.not315 = icmp sgt i32 %i.js, %3
  br i1 %.not315, label %.loopexit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.jt = sext i32 %.5 to i64                     ; 2 uses
  %i.ju = getelementptr inbounds [2 x i8], ptr %2, i64 %i.jt ; 7 uses
  %i.jv = icmp sgt i32 %i.jr, 0
  br i1 %i.jv, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.bk
  %i.jw = sext i32 %i.jn to i64                   ; 7 uses
  %i.jx = zext nneg i32 %i.jr to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.jr, 4
  br i1 %min.iters.check, label %.lr.ph359.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.jy = shl nsw i64 %i.jt, 1
  %i.jz = add i64 %i.ay, %i.jy
  %i.ka = shl nsw i64 %i.jw, 1
  %i.kb = sub i64 %i.jz, %i.ka
  %diff.check = icmp ult i64 %i.kb, 32
  br i1 %diff.check, label %.lr.ph359.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check421 = icmp ult i32 %i.jr, 16
  br i1 %min.iters.check421, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.jx, 12
  %n.vec = and i64 %i.jx, 2147483632              ; 6 uses
  %i.kc = add nsw i64 %n.vec, %i.jw               ; 2 uses
  %i.kd = trunc nuw nsw i64 %n.vec to i32
  %i.ke = shl nuw nsw i64 %n.vec, 1
  %i.kf = getelementptr i8, ptr %i.ju, i64 %i.ke  ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %.0200, i64 %i.jw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.kg = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.ju, i64 %i.kg ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <8 x i16>, ptr %gep, align 2
  %wide.load422 = load <8 x i16>, ptr %i.kh, align 2
  %i.ki = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2
  store <8 x i16> %wide.load422, ptr %i.ki, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.kj = icmp eq i64 %index.next, %n.vec
  br i1 %i.kj, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.jx
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph359.preheader, label %vec.epilog.ph, !prof !11

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec426 = and i64 %i.jx, 2147483644           ; 5 uses
  %i.kk = add nsw i64 %n.vec426, %i.jw            ; 2 uses
  %i.kl = trunc nuw nsw i64 %n.vec426 to i32
  %i.km = shl nuw nsw i64 %n.vec426, 1
  %i.kn = getelementptr i8, ptr %i.ju, i64 %i.km  ; 2 uses
  %invariant.gep596 = getelementptr [2 x i8], ptr %.0200, i64 %i.jw
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index427 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next430, %vec.epilog.vector.body ] ; 3 uses
  %i.ko = shl i64 %index427, 1
  %next.gep428 = getelementptr i8, ptr %i.ju, i64 %i.ko
  %gep597 = getelementptr [2 x i8], ptr %invariant.gep596, i64 %index427
  %wide.load429 = load <4 x i16>, ptr %gep597, align 2
  store <4 x i16> %wide.load429, ptr %next.gep428, align 2
  %index.next430 = add nuw i64 %index427, 4       ; 2 uses
  %i.kp = icmp eq i64 %index.next430, %n.vec426
  br i1 %i.kp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n431 = icmp eq i64 %n.vec426, %i.jx
  br i1 %cmp.n431, label %.loopexit.loopexit, label %.lr.ph359.preheader

.lr.ph359.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv385.ph = phi i64 [ %i.jw, %iter.check ], [ %i.jw, %vector.memcheck ], [ %i.kc, %vec.epilog.iter.check ], [ %i.kk, %vec.epilog.middle.block ]
  %.0358.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.kd, %vec.epilog.iter.check ], [ %i.kl, %vec.epilog.middle.block ]
  %.14356.ph = phi ptr [ %i.ju, %iter.check ], [ %i.ju, %vector.memcheck ], [ %i.kf, %vec.epilog.iter.check ], [ %i.kn, %vec.epilog.middle.block ]
  br label %.lr.ph359

.lr.ph359:                                        ; preds = %.lr.ph359.preheader, %.lr.ph359
  %indvars.iv385 = phi i64 [ %indvars.iv.next386, %.lr.ph359 ], [ %indvars.iv385.ph, %.lr.ph359.preheader ] ; 2 uses
  %.0358 = phi i32 [ %i.kt, %.lr.ph359 ], [ %.0358.ph, %.lr.ph359.preheader ]
  %.14356 = phi ptr [ %i.ks, %.lr.ph359 ], [ %.14356.ph, %.lr.ph359.preheader ] ; 2 uses
  %indvars.iv.next386 = add nsw i64 %indvars.iv385, 1 ; 2 uses
  %i.kq = getelementptr inbounds [2 x i8], ptr %.0200, i64 %indvars.iv385
  %i.kr = load i16, ptr %i.kq, align 2
  %i.ks = getelementptr inbounds nuw i8, ptr %.14356, i64 2 ; 2 uses
  store i16 %i.kr, ptr %.14356, align 2
  %i.kt = add nuw nsw i32 %.0358, 1               ; 2 uses
  %exitcond388.not = icmp eq i32 %i.kt, %i.jr
  br i1 %exitcond388.not, label %.loopexit.loopexit, label %.lr.ph359, !llvm.loop !24

bb.bl:                                            ; preds = %bb.bi
  %i.ku = icmp eq i32 %.0211373, 0
  br i1 %i.ku, label %.loopexit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kv = icmp sgt i32 %.5, 0
  br i1 %i.kv, label %bb.bn, label %.loopexit

bb.bn:                                            ; preds = %bb.bm
  %i.kw = select i1 %i.jl, i32 %.2224, i32 %.2218 ; 5 uses
  %i.kx = icmp ne i32 %.4245366, 0
  %or.cond10 = select i1 %i.ax, i1 %i.kx, i1 false
  br i1 %or.cond10, label %bb.bo, label %.loopexit

bb.bo:                                            ; preds = %bb.bn
  %i.ky = add nsw i32 %i.kw, %.4245366
  %.not314 = icmp sgt i32 %i.ky, %3
  br i1 %.not314, label %.loopexit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kz = select i1 %i.jl, i32 %.2221, i32 %.2215
  %i.la = sext i32 %i.kz to i64
  %i.lb = getelementptr inbounds [2 x i8], ptr %2, i64 %i.la
  %i.lc = call ptr @u_memmove_78(ptr noundef nonnull %2, ptr noundef nonnull %i.lb, i32 noundef %i.kw) #6 ; 0 uses
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.lr.ph359, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next386.lcssa = phi i64 [ %i.kk, %vec.epilog.middle.block ], [ %i.kc, %middle.block ], [ %indvars.iv.next386, %.lr.ph359 ]
  %.lcssa419 = phi ptr [ %i.kn, %vec.epilog.middle.block ], [ %i.kf, %middle.block ], [ %i.ks, %.lr.ph359 ]
  %i.ld = trunc nsw i64 %indvars.iv.next386.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.bk, %bb.bo, %bb.bl, %bb.bj, %bb.bn, %bb.bp, %bb.bm
  %.2267 = phi i8 [ %.1266365, %bb.bm ], [ 1, %bb.bo ], [ %.1266365, %bb.bp ], [ %.1266365, %bb.bl ], [ %.1266365, %bb.bn ], [ %.1266365, %bb.bj ], [ %.1266365, %bb.bk ], [ %.1266365, %.loopexit.loopexit ]
  %.5246 = phi i32 [ %.4245366, %bb.bm ], [ 0, %bb.bo ], [ %.4245366, %bb.bp ], [ 0, %bb.bl ], [ %.4245366, %bb.bn ], [ %.4245366, %bb.bj ], [ %.4245366, %bb.bk ], [ %.4245366, %.loopexit.loopexit ]
  %.16 = phi ptr [ %.13, %bb.bm ], [ %.13, %bb.bo ], [ %.13, %bb.bp ], [ %.13, %bb.bl ], [ %.13, %bb.bn ], [ %.13, %bb.bj ], [ %i.ju, %bb.bk ], [ %.lcssa419, %.loopexit.loopexit ]
  %.6231 = phi i32 [ %.3228368, %bb.bm ], [ %.3228368, %bb.bo ], [ %.3228368, %bb.bp ], [ %.3228368, %bb.bl ], [ %.3228368, %bb.bn ], [ %i.jq, %bb.bj ], [ %i.jn, %bb.bk ], [ %i.ld, %.loopexit.loopexit ]
  %.6 = phi i32 [ %.5, %bb.bm ], [ %i.kw, %bb.bo ], [ %i.kw, %bb.bp ], [ 0, %bb.bl ], [ %i.kw, %bb.bn ], [ %i.js, %bb.bj ], [ %i.js, %bb.bk ], [ %i.js, %.loopexit.loopexit ]
  %i.le = add nuw nsw i32 %.0211373, 1
  br label %bb.bq

bb.bq:                                            ; preds = %.loopexit, %bb.bh
  %.3268 = phi i8 [ %.2267, %.loopexit ], [ %.1266365, %bb.bh ] ; 2 uses
  %.6247 = phi i32 [ %.5246, %.loopexit ], [ %.4245366, %bb.bh ] ; 2 uses
  %.17 = phi ptr [ %.16, %.loopexit ], [ %.13, %bb.bh ]
  %.7232 = phi i32 [ %.6231, %.loopexit ], [ %.3228368, %bb.bh ]
  %.1212 = phi i32 [ %i.le, %.loopexit ], [ %.0211373, %bb.bh ] ; 2 uses
  %.7 = phi i32 [ %.6, %.loopexit ], [ %.5, %bb.bh ] ; 2 uses
  %i.lf = icmp slt i32 %.1212, 2
  br i1 %i.lf, label %.loopexit345, label %bb.s, !llvm.loop !25

bb.br:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit
  %i.lg = call i32 @u_terminateUChars_78(ptr noundef %2, i32 noundef %3, i32 noundef %.7, ptr noundef nonnull %4) #6
  br label %bb.bs

bb.bs:                                            ; preds = %bb.p, %bb.i, %bb.a, %bb.b, %bb.br, %bb.e
  %.2 = phi i32 [ 0, %bb.i ], [ 0, %bb.e ], [ %i.lg, %bb.br ], [ 0, %bb.p ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813BreakIterator14getDisplayNameERKNS_6LocaleERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull returned align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786Locale10getDefaultEv() #6
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale14getDisplayNameERKS0_RNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813BreakIterator14getDisplayNameERKNS_6LocaleES3_RNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull returned align 8 dereferenceable(64) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale14getDisplayNameERKS0_RNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) ; 0 uses
  ret ptr %2
}

declare void @_Z22ulocimp_getLanguage_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::CharString") align 8, i64, ptr, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare void @_Z20ulocimp_getScript_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::CharString") align 8, i64, ptr, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare void @_Z20ulocimp_getRegion_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::CharString") align 8, i64, ptr, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare void @_Z21ulocimp_getVariant_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::CharString") align 8, i64, ptr, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare ptr @ures_open_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ures_getByKeyWithFallback_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ures_getStringByKeyWithFallback_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @u_strstr_78(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @u_strncmp_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @u_strchr_78(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

declare ptr @uloc_openKeywords_78(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @uenum_next_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @uloc_getDisplayKeyword_78(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %4, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = icmp slt i32 %3, 0
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
end_hunk_1
