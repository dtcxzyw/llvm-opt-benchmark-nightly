inline.NumInlined: 110
inline.NumDeleted: 38
begin_hunk_0_@_ZNK6icu_786Locale14getDisplayNameERKS0_RNS_13UnicodeStringE:bb.a
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
  %diff.check539 = icmp ult i64 %i.ay, 32
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

.loopexit345.preheader:                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block552, %vec.epilog.middle.block567, %.preheader344, %bb.q, %bb.r
  %.3228368.ph = phi i32 [ %.3244, %bb.r ], [ 0, %bb.q ], [ 0, %.preheader344 ], [ %.3244, %middle.block552 ], [ %.3244, %vec.epilog.middle.block567 ], [ %.3244, %.lr.ph ], [ %.3244, %.lr.ph.prol.loopexit ]
  %.3236367.ph = phi ptr [ %2, %bb.r ], [ %2, %bb.q ], [ %2, %.preheader344 ], [ %i.bb, %middle.block552 ], [ %i.bi, %vec.epilog.middle.block567 ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.cw, %.lr.ph ]
  br label %.loopexit345

.preheader344:                                    ; preds = %bb.r
  %i.az = icmp sgt i32 %.3244, 0
  br i1 %i.az, label %iter.check555, label %.loopexit345.preheader

iter.check555:                                    ; preds = %.preheader344
  %wide.trip.count = zext nneg i32 %.3244 to i64  ; 8 uses
  %min.iters.check540 = icmp ult i32 %.3244, 4
  %or.cond571 = select i1 %min.iters.check540, i1 true, i1 %diff.check539
  br i1 %or.cond571, label %.lr.ph.preheader, label %vector.main.loop.iter.check541

vector.main.loop.iter.check541:                   ; preds = %iter.check555
  %min.iters.check542 = icmp ult i32 %.3244, 16
  br i1 %min.iters.check542, label %vec.epilog.ph559, label %vector.ph543

vector.ph543:                                     ; preds = %vector.main.loop.iter.check541
  %n.mod.vf544 = and i64 %wide.trip.count, 12
  %n.vec545 = and i64 %wide.trip.count, 2147483632 ; 5 uses
  %i.ba = shl nuw nsw i64 %n.vec545, 1
  %i.bb = getelementptr i8, ptr %2, i64 %i.ba     ; 2 uses
  br label %vector.body546

vector.body546:                                   ; preds = %vector.body546, %vector.ph543
  %index547 = phi i64 [ 0, %vector.ph543 ], [ %index.next551, %vector.body546 ] ; 3 uses
  %i.bc = shl i64 %index547, 1
  %next.gep548 = getelementptr i8, ptr %2, i64 %i.bc ; 2 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %.0200, i64 %index547 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load549 = load <8 x i16>, ptr %i.bd, align 2
  %wide.load550 = load <8 x i16>, ptr %i.be, align 2
  %i.bf = getelementptr i8, ptr %next.gep548, i64 16
  store <8 x i16> %wide.load549, ptr %next.gep548, align 2
  store <8 x i16> %wide.load550, ptr %i.bf, align 2
  %index.next551 = add nuw i64 %index547, 16      ; 2 uses
  %i.bg = icmp eq i64 %index.next551, %n.vec545
  br i1 %i.bg, label %middle.block552, label %vector.body546, !llvm.loop !7

middle.block552:                                  ; preds = %vector.body546
  %cmp.n553 = icmp eq i64 %n.vec545, %wide.trip.count
  br i1 %cmp.n553, label %.loopexit345.preheader, label %vec.epilog.iter.check557

vec.epilog.iter.check557:                         ; preds = %middle.block552
  %min.epilog.iters.check558 = icmp eq i64 %n.mod.vf544, 0
  br i1 %min.epilog.iters.check558, label %.lr.ph.preheader, label %vec.epilog.ph559, !prof !11

vec.epilog.ph559:                                 ; preds = %vector.main.loop.iter.check541, %vec.epilog.iter.check557
  %vec.epilog.resume.val554 = phi i64 [ %n.vec545, %vec.epilog.iter.check557 ], [ 0, %vector.main.loop.iter.check541 ]
  %n.vec561 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %i.bh = shl nuw nsw i64 %n.vec561, 1
  %i.bi = getelementptr i8, ptr %2, i64 %i.bh     ; 2 uses
  br label %vec.epilog.vector.body562

vec.epilog.vector.body562:                        ; preds = %vec.epilog.vector.body562, %vec.epilog.ph559
  %index563 = phi i64 [ %vec.epilog.resume.val554, %vec.epilog.ph559 ], [ %index.next566, %vec.epilog.vector.body562 ] ; 3 uses
  %i.bj = shl i64 %index563, 1
  %next.gep564 = getelementptr i8, ptr %2, i64 %i.bj
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.0200, i64 %index563
  %wide.load565 = load <4 x i16>, ptr %i.bk, align 2
  store <4 x i16> %wide.load565, ptr %next.gep564, align 2
  %index.next566 = add nuw i64 %index563, 4       ; 2 uses
  %i.bl = icmp eq i64 %index.next566, %n.vec561
  br i1 %i.bl, label %vec.epilog.middle.block567, label %vec.epilog.vector.body562, !llvm.loop !12

vec.epilog.middle.block567:                       ; preds = %vec.epilog.vector.body562
  %cmp.n568 = icmp eq i64 %n.vec561, %wide.trip.count
  br i1 %cmp.n568, label %.loopexit345.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check555, %vec.epilog.iter.check557, %vec.epilog.middle.block567
  %indvars.iv.ph = phi i64 [ 0, %iter.check555 ], [ %n.vec545, %vec.epilog.iter.check557 ], [ %n.vec561, %vec.epilog.middle.block567 ] ; 4 uses
  %.0233346.ph = phi ptr [ %2, %iter.check555 ], [ %i.bb, %vec.epilog.iter.check557 ], [ %i.bi, %vec.epilog.middle.block567 ] ; 2 uses
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
  %.1270364 = phi i8 [ %.3272, %bb.bq ], [ %.0269, %.loopexit345.preheader ] ; 3 uses
  %.1274363 = phi i8 [ %.3276, %bb.bq ], [ %.0273, %.loopexit345.preheader ] ; 3 uses
  %.sroa.0.0362 = phi ptr [ %.sroa.0.3, %bb.bq ], [ null, %.loopexit345.preheader ] ; 10 uses
  %i.cx = sub nsw i32 %3, %.1196375               ; 2 uses
  %i.cy = icmp sgt i32 %i.cx, 0                   ; 4 uses
  %i.cz = sext i32 %.1196375 to i64
  %i.da = getelementptr inbounds [2 x i8], ptr %2, i64 %i.cz ; 2 uses
  %.4237 = select i1 %i.cy, ptr %i.da, ptr %.3236367 ; 21 uses
  %.0201 = call i32 @llvm.smax.i32(i32 %i.cx, i32 0) ; 16 uses
  %i.db = icmp eq i32 %.0211373, %.2264
  br i1 %i.db, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.loopexit345
  %.not312 = icmp eq i8 %.1274363, 0
  br i1 %.not312, label %bb.bf, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = call i32 @uloc_getDisplayLanguage_78(ptr noundef %0, ptr noundef %1, ptr noundef %.4237, i32 noundef %.0201, ptr noundef nonnull %4) ; 3 uses
  %i.dd = add nsw i32 %i.dc, %.1196375
  %i.de = icmp sgt i32 %i.dc, 0
  %i.df = zext i1 %i.de to i8
  br label %bb.bf

bb.w:                                             ; preds = %.loopexit345
  %.not306 = icmp eq i8 %.1270364, 0
  br i1 %.not306, label %bb.bf, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.dg = add nsw i32 %.0209374, 1
  switch i32 %.0209374, label %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit [
    i32 0, label %bb.y
    i32 1, label %bb.al
    i32 2, label %bb.am
    i32 3, label %bb.an
  ]

bb.y:                                             ; preds = %bb.x
  %i.dh = load i32, ptr %4, align 4
  %i.di = icmp slt i32 %i.dh, 1
  br i1 %i.di, label %bb.z, label %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.dj = icmp eq ptr %.4237, null
  %or.cond.i.i = and i1 %i.cy, %i.dj
  br i1 %or.cond.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 1, ptr %4, align 4
  br label %bb.ak

bb.ab:                                            ; preds = %bb.z
  br i1 %i.au, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dk = call ptr @uloc_getDefault_78() #6
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.022.i.i = phi ptr [ %i.dk, %bb.ac ], [ %0, %bb.ab ] ; 2 uses
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  %i.dl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.022.i.i) #6
  call void @_Z20ulocimp_getScript_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %5, i64 %i.dl, ptr nonnull %.022.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #6, !callees !5, !inline_history !6
  %i.dm = load i32, ptr %i.b, align 4
  %i.dn = icmp slt i32 %i.dm, 1
  br i1 %i.dn, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i32 1, ptr %4, align 4
  br label %bb.ai

bb.af:                                            ; preds = %bb.ad
  %i.do = load i32, ptr %i.av, align 8
  %.not.i.i = icmp eq i32 %i.do, 0
  br i1 %.not.i.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dp = call i32 @u_terminateUChars_78(ptr noundef %.4237, i32 noundef range(i32 0, -2147483648) %.0201, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %4) #6
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.dq = load ptr, ptr %5, align 8               ; 2 uses
  %i.dr = call fastcc noundef i32 @_ZN12_GLOBAL__N_119_getStringOrCopyKeyEPKcS1_S1_S1_S1_S1_PDsiR10UErrorCode(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull @_ZN12_GLOBAL__N_19_kScriptsE, ptr noundef null, ptr noundef %i.dq, ptr noundef %i.dq, ptr noundef %.4237, i32 noundef range(i32 0, -2147483648) %.0201, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  %.0.i.i = phi i32 [ 0, %bb.ae ], [ %i.dr, %bb.ah ], [ %i.dp, %bb.ag ]
  %i.ds = load i8, ptr %i.aw, align 4
  %.not.i.i.i.i.i = icmp eq i8 %i.ds, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dt = load ptr, ptr %5, align 8
  call void @uprv_free_78(ptr noundef %i.dt) #6
  br label %_ZN6icu_7810CharStringD2Ev.exit.i.i

_ZN6icu_7810CharStringD2Ev.exit.i.i:              ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN6icu_7810CharStringD2Ev.exit.i.i, %bb.aa
  %.1.i.i = phi i32 [ 0, %bb.aa ], [ %.0.i.i, %_ZN6icu_7810CharStringD2Ev.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit

bb.al:                                            ; preds = %bb.x
  %i.du = call i32 @uloc_getDisplayCountry_78(ptr noundef %0, ptr noundef %1, ptr noundef %.4237, i32 noundef %.0201, ptr noundef nonnull %4)
  br label %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit

bb.am:                                            ; preds = %bb.x
  %i.dv = call i32 @uloc_getDisplayVariant_78(ptr noundef %0, ptr noundef %1, ptr noundef %.4237, i32 noundef %.0201, ptr noundef nonnull %4)
  br label %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit

bb.an:                                            ; preds = %bb.x
  %i.dw = call ptr @uloc_openKeywords_78(ptr noundef %0, ptr noundef nonnull %4) #6 ; 2 uses
  %.not.i320 = icmp eq ptr %.sroa.0.0362, null
  br i1 %.not.i320, label %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @uenum_close_78(ptr noundef nonnull %.sroa.0.0362) #6
  br label %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit

_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit: ; preds = %bb.ao, %bb.an, %bb.x
  %.sroa.0.1 = phi ptr [ %.sroa.0.0362, %bb.x ], [ %i.dw, %bb.an ], [ %i.dw, %bb.ao ] ; 3 uses
  %i.dx = call ptr @uenum_next_78(ptr noundef %.sroa.0.1, ptr noundef nonnull %i.f, ptr noundef nonnull %4) #6 ; 4 uses
  %.not = icmp eq ptr %i.dx, null
  br i1 %.not, label %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit
  %i.dy = load i32, ptr %4, align 4
  %i.dz = icmp slt i32 %i.dy, 1
  br i1 %i.dz, label %bb.aq, label %uloc_getDisplayKeyword_78.exit.thread

bb.aq:                                            ; preds = %bb.ap
  %i.ea = icmp eq ptr %.4237, null
  %or.cond.i = and i1 %i.cy, %i.ea
  br i1 %or.cond.i, label %bb.ar, label %uloc_getDisplayKeyword_78.exit

bb.ar:                                            ; preds = %bb.aq
  store i32 1, ptr %4, align 4
  br label %uloc_getDisplayKeyword_78.exit.thread

uloc_getDisplayKeyword_78.exit.thread:            ; preds = %bb.ar, %bb.ap
  store i32 0, ptr %i.f, align 4
  br label %bb.aw

uloc_getDisplayKeyword_78.exit:                   ; preds = %bb.aq
  %i.eb = call fastcc noundef i32 @_ZN12_GLOBAL__N_119_getStringOrCopyKeyEPKcS1_S1_S1_S1_S1_PDsiR10UErrorCode(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull @_ZN12_GLOBAL__N_16_kKeysE, ptr noundef null, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.dx, ptr noundef %.4237, i32 noundef %.0201, ptr noundef nonnull align 4 dereferenceable(4) %4) ; 5 uses
  store i32 %i.eb, ptr %i.f, align 4
  %.not307 = icmp eq i32 %i.eb, 0
  br i1 %.not307, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %uloc_getDisplayKeyword_78.exit
  %i.ec = icmp slt i32 %i.eb, %.0201
  br i1 %i.ec, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ed = sext i32 %i.eb to i64
  %i.ee = getelementptr inbounds [2 x i8], ptr %.4237, i64 %i.ed
  store i16 61, ptr %i.ee, align 2
  %.pre = load i32, ptr %i.f, align 4
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ef = phi i32 [ %.pre, %bb.at ], [ %i.eb, %bb.as ]
  %i.eg = add nsw i32 %i.ef, 1                    ; 3 uses
  store i32 %i.eg, ptr %i.f, align 4
  %i.eh = sub nsw i32 %.0201, %i.eg               ; 2 uses
  %i.ei = icmp slt i32 %i.eh, 1
  br i1 %i.ei, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ej = sext i32 %i.eg to i64
  %i.ek = getelementptr inbounds [2 x i8], ptr %.4237, i64 %i.ej
  br label %bb.aw

bb.aw:                                            ; preds = %uloc_getDisplayKeyword_78.exit.thread, %bb.au, %bb.av, %uloc_getDisplayKeyword_78.exit
  %.5238 = phi ptr [ %.4237, %uloc_getDisplayKeyword_78.exit ], [ %i.ek, %bb.av ], [ %.4237, %bb.au ], [ %.4237, %uloc_getDisplayKeyword_78.exit.thread ] ; 2 uses
  %.1202 = phi i32 [ %.0201, %uloc_getDisplayKeyword_78.exit ], [ %i.eh, %bb.av ], [ 0, %bb.au ], [ %.0201, %uloc_getDisplayKeyword_78.exit.thread ] ; 2 uses
  %i.el = load i32, ptr %4, align 4
  %i.em = icmp eq i32 %i.el, 15
  br i1 %i.em, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %4, align 4
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.en = call i32 @uloc_getDisplayKeywordValue_78(ptr noundef %0, ptr noundef nonnull %i.dx, ptr noundef %1, ptr noundef %.5238, i32 noundef %.1202, ptr noundef nonnull %4) ; 2 uses
  %i.eo = load i32, ptr %i.f, align 4             ; 2 uses
  %.not308 = icmp ne i32 %i.eo, 0                 ; 3 uses
  %i.ep = icmp eq i32 %i.en, 0
  %i.eq = sext i1 %i.ep to i32
  %spec.select414 = add nsw i32 %i.eo, %i.eq
  %i.er = select i1 %.not308, i32 %spec.select414, i32 0
  %.not415 = select i1 %.not308, i1 %i.cy, i1 false
  %.6239 = select i1 %.not415, ptr %i.da, ptr %.5238
  %.2203 = select i1 %.not308, i32 %.0201, i32 %.1202
  %i.es = add nsw i32 %i.er, %i.en
  br label %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit

_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit: ; preds = %bb.ay, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit, %bb.ak, %bb.y, %bb.am, %bb.al
  %storemerge.sink = phi i32 [ 0, %bb.y ], [ %i.dv, %bb.am ], [ %i.du, %bb.al ], [ %.1.i.i, %bb.ak ], [ %i.es, %bb.ay ], [ 0, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit ] ; 4 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0362, %bb.y ], [ %.sroa.0.0362, %bb.am ], [ %.sroa.0.0362, %bb.al ], [ %.sroa.0.0362, %bb.ak ], [ %.sroa.0.1, %bb.ay ], [ %.sroa.0.1, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit ]
  %.8 = phi ptr [ %.4237, %bb.y ], [ %.4237, %bb.am ], [ %.4237, %bb.al ], [ %.4237, %bb.ak ], [ %.6239, %bb.ay ], [ %.4237, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit ] ; 32 uses
  %.1214 = phi i32 [ %.1196375, %bb.y ], [ %.0213372, %bb.am ], [ %.0213372, %bb.al ], [ %.1196375, %bb.ak ], [ %.0213372, %bb.ay ], [ %.0213372, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit ] ; 3 uses
  %.1207 = phi i1 [ true, %bb.y ], [ true, %bb.am ], [ true, %bb.al ], [ true, %bb.ak ], [ true, %bb.ay ], [ false, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit ] ; 2 uses
  %.4205 = phi i32 [ %.0201, %bb.y ], [ %.0201, %bb.am ], [ %.0201, %bb.al ], [ %.0201, %bb.ak ], [ %.2203, %bb.ay ], [ %.0201, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit ]
  %.8435 = ptrtoint ptr %.8 to i64                ; 3 uses
  store i32 %storemerge.sink, ptr %i.f, align 4
  %i.et = icmp sgt i32 %storemerge.sink, 0
  br i1 %i.et, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit
  %i.eu = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ev = add nsw i32 %i.eu, %storemerge.sink
  %.not311 = icmp sgt i32 %i.ev, %.4205
  br i1 %.not311, label %.loopexit343, label %iter.check503

iter.check503:                                    ; preds = %bb.az
  %i.ew = shl nuw i32 %storemerge.sink, 1
  %.idx = zext i32 %i.ew to i64                   ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.8, i64 %.idx
  %i.ey = add i64 %.8435, %.idx
  %i.ez = add i64 %.8435, 2
  %umax = call i64 @llvm.umax.i64(i64 %i.ey, i64 %i.ez)
  %i.fa = xor i64 %.8435, -1
  %i.fb = add i64 %umax, %i.fa                    ; 3 uses
  %i.fc = lshr i64 %i.fb, 1
  %i.fd = add nuw i64 %i.fc, 1                    ; 5 uses
  %min.iters.check436 = icmp ult i64 %i.fb, 14
  br i1 %min.iters.check436, label %.lr.ph350.preheader, label %vector.main.loop.iter.check437

vector.main.loop.iter.check437:                   ; preds = %iter.check503
  %min.iters.check438 = icmp ult i64 %i.fb, 30
  br i1 %min.iters.check438, label %vec.epilog.ph507, label %vector.ph439

vector.ph439:                                     ; preds = %vector.main.loop.iter.check437
  %n.mod.vf440 = and i64 %i.fd, 8
  %n.vec441 = and i64 %i.fd, -16                  ; 4 uses
  %i.fe = shl i64 %n.vec441, 1
  %i.ff = getelementptr i8, ptr %.8, i64 %i.fe    ; 2 uses
  br label %vector.body448

vector.body448:                                   ; preds = %pred.store.continue498, %vector.ph439
  %index449 = phi i64 [ 0, %vector.ph439 ], [ %index.next499, %pred.store.continue498 ] ; 2 uses
  %i.fg = shl i64 %index449, 1                    ; 16 uses
  %next.gep450 = getelementptr i8, ptr %.8, i64 %i.fg ; 3 uses
  %i.fh = getelementptr i8, ptr %.8, i64 %i.fg
  %next.gep451 = getelementptr i8, ptr %i.fh, i64 2
  %i.fi = getelementptr i8, ptr %.8, i64 %i.fg
  %next.gep452 = getelementptr i8, ptr %i.fi, i64 4
  %i.fj = getelementptr i8, ptr %.8, i64 %i.fg
  %next.gep453 = getelementptr i8, ptr %i.fj, i64 6
  %i.fk = getelementptr i8, ptr %.8, i64 %i.fg
  %next.gep454 = getelementptr i8, ptr %i.fk, i64 8
  %i.fl = getelementptr i8, ptr %.8, i64 %i.fg
  %next.gep455 = getelementptr i8, ptr %i.fl, i64 10
  %i.fm = getelementptr i8, ptr %.8, i64 %i.fg
  %next.gep456 = getelementptr i8, ptr %i.fm, i64 12
  %i.fn = getelementptr i8, ptr %.8, i64 %i.fg
  %next.gep457 = getelementptr i8, ptr %i.fn, i64 14
  %i.fo = getelementptr i8, ptr %.8, i64 %i.fg
  %next.gep458 = getelementptr i8, ptr %i.fo, i64 16
  %i.fp = getelementptr i8, ptr %.8, i64 %i.fg
  %next.gep459 = getelementptr i8, ptr %i.fp, i64 18
  %i.fq = getelementptr i8, ptr %.8, i64 %i.fg
  %next.gep460 = getelementptr i8, ptr %i.fq, i64 20
  %i.fr = getelementptr i8, ptr %.8, i64 %i.fg
  %next.gep461 = getelementptr i8, ptr %i.fr, i64 22
  %i.fs = getelementptr i8, ptr %.8, i64 %i.fg
  %next.gep462 = getelementptr i8, ptr %i.fs, i64 24
  %i.ft = getelementptr i8, ptr %.8, i64 %i.fg
  %next.gep463 = getelementptr i8, ptr %i.ft, i64 26
  %i.fu = getelementptr i8, ptr %.8, i64 %i.fg
  %next.gep464 = getelementptr i8, ptr %i.fu, i64 28
  %i.fv = getelementptr i8, ptr %.8, i64 %i.fg
  %next.gep465 = getelementptr i8, ptr %i.fv, i64 30
  %i.fw = getelementptr i8, ptr %next.gep450, i64 16
  %wide.load466 = load <8 x i16>, ptr %next.gep450, align 2 ; 2 uses
  %wide.load467 = load <8 x i16>, ptr %i.fw, align 2 ; 2 uses
  %i.fx = icmp eq <8 x i16> %wide.load466, %broadcast.splat ; 2 uses
  %i.fy = icmp eq <8 x i16> %wide.load467, %broadcast.splat ; 2 uses
  %i.fz = icmp eq <8 x i16> %wide.load466, %broadcast.splat443
  %i.ga = icmp eq <8 x i16> %wide.load467, %broadcast.splat443
  %i.gb = or <8 x i1> %i.fz, %i.fx                ; 8 uses
  %i.gc = or <8 x i1> %i.ga, %i.fy                ; 8 uses
  %predphi = select <8 x i1> %i.fx, <8 x i16> %broadcast.splat445, <8 x i16> %broadcast.splat447 ; 8 uses
  %predphi468 = select <8 x i1> %i.fy, <8 x i16> %broadcast.splat445, <8 x i16> %broadcast.splat447 ; 8 uses
  %i.gd = extractelement <8 x i1> %i.gb, i64 0
  br i1 %i.gd, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body448
  %i.ge = extractelement <8 x i16> %predphi, i64 0
  store i16 %i.ge, ptr %next.gep450, align 2
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body448
  %i.gf = extractelement <8 x i1> %i.gb, i64 1
  br i1 %i.gf, label %pred.store.if469, label %pred.store.continue470

pred.store.if469:                                 ; preds = %pred.store.continue
  %i.gg = extractelement <8 x i16> %predphi, i64 1
  store i16 %i.gg, ptr %next.gep451, align 2
  br label %pred.store.continue470

pred.store.continue470:                           ; preds = %pred.store.if469, %pred.store.continue
  %i.gh = extractelement <8 x i1> %i.gb, i64 2
  br i1 %i.gh, label %pred.store.if471, label %pred.store.continue472

pred.store.if471:                                 ; preds = %pred.store.continue470
  %i.gi = extractelement <8 x i16> %predphi, i64 2
  store i16 %i.gi, ptr %next.gep452, align 2
  br label %pred.store.continue472

pred.store.continue472:                           ; preds = %pred.store.if471, %pred.store.continue470
  %i.gj = extractelement <8 x i1> %i.gb, i64 3
  br i1 %i.gj, label %pred.store.if473, label %pred.store.continue474

pred.store.if473:                                 ; preds = %pred.store.continue472
  %i.gk = extractelement <8 x i16> %predphi, i64 3
  store i16 %i.gk, ptr %next.gep453, align 2
  br label %pred.store.continue474

pred.store.continue474:                           ; preds = %pred.store.if473, %pred.store.continue472
  %i.gl = extractelement <8 x i1> %i.gb, i64 4
  br i1 %i.gl, label %pred.store.if475, label %pred.store.continue476

pred.store.if475:                                 ; preds = %pred.store.continue474
  %i.gm = extractelement <8 x i16> %predphi, i64 4
  store i16 %i.gm, ptr %next.gep454, align 2
  br label %pred.store.continue476

pred.store.continue476:                           ; preds = %pred.store.if475, %pred.store.continue474
  %i.gn = extractelement <8 x i1> %i.gb, i64 5
  br i1 %i.gn, label %pred.store.if477, label %pred.store.continue478

pred.store.if477:                                 ; preds = %pred.store.continue476
  %i.go = extractelement <8 x i16> %predphi, i64 5
  store i16 %i.go, ptr %next.gep455, align 2
  br label %pred.store.continue478

pred.store.continue478:                           ; preds = %pred.store.if477, %pred.store.continue476
  %i.gp = extractelement <8 x i1> %i.gb, i64 6
  br i1 %i.gp, label %pred.store.if479, label %pred.store.continue480

pred.store.if479:                                 ; preds = %pred.store.continue478
  %i.gq = extractelement <8 x i16> %predphi, i64 6
  store i16 %i.gq, ptr %next.gep456, align 2
  br label %pred.store.continue480

pred.store.continue480:                           ; preds = %pred.store.if479, %pred.store.continue478
  %i.gr = extractelement <8 x i1> %i.gb, i64 7
  br i1 %i.gr, label %pred.store.if481, label %pred.store.continue482

pred.store.if481:                                 ; preds = %pred.store.continue480
  %i.gs = extractelement <8 x i16> %predphi, i64 7
  store i16 %i.gs, ptr %next.gep457, align 2
  br label %pred.store.continue482

pred.store.continue482:                           ; preds = %pred.store.if481, %pred.store.continue480
  %i.gt = extractelement <8 x i1> %i.gc, i64 0
  br i1 %i.gt, label %pred.store.if483, label %pred.store.continue484

pred.store.if483:                                 ; preds = %pred.store.continue482
  %i.gu = extractelement <8 x i16> %predphi468, i64 0
  store i16 %i.gu, ptr %next.gep458, align 2
  br label %pred.store.continue484

pred.store.continue484:                           ; preds = %pred.store.if483, %pred.store.continue482
  %i.gv = extractelement <8 x i1> %i.gc, i64 1
  br i1 %i.gv, label %pred.store.if485, label %pred.store.continue486

pred.store.if485:                                 ; preds = %pred.store.continue484
  %i.gw = extractelement <8 x i16> %predphi468, i64 1
  store i16 %i.gw, ptr %next.gep459, align 2
  br label %pred.store.continue486

pred.store.continue486:                           ; preds = %pred.store.if485, %pred.store.continue484
  %i.gx = extractelement <8 x i1> %i.gc, i64 2
  br i1 %i.gx, label %pred.store.if487, label %pred.store.continue488

pred.store.if487:                                 ; preds = %pred.store.continue486
  %i.gy = extractelement <8 x i16> %predphi468, i64 2
  store i16 %i.gy, ptr %next.gep460, align 2
  br label %pred.store.continue488

pred.store.continue488:                           ; preds = %pred.store.if487, %pred.store.continue486
  %i.gz = extractelement <8 x i1> %i.gc, i64 3
  br i1 %i.gz, label %pred.store.if489, label %pred.store.continue490

pred.store.if489:                                 ; preds = %pred.store.continue488
  %i.ha = extractelement <8 x i16> %predphi468, i64 3
  store i16 %i.ha, ptr %next.gep461, align 2
  br label %pred.store.continue490

pred.store.continue490:                           ; preds = %pred.store.if489, %pred.store.continue488
  %i.hb = extractelement <8 x i1> %i.gc, i64 4
  br i1 %i.hb, label %pred.store.if491, label %pred.store.continue492

pred.store.if491:                                 ; preds = %pred.store.continue490
  %i.hc = extractelement <8 x i16> %predphi468, i64 4
  store i16 %i.hc, ptr %next.gep462, align 2
  br label %pred.store.continue492

pred.store.continue492:                           ; preds = %pred.store.if491, %pred.store.continue490
  %i.hd = extractelement <8 x i1> %i.gc, i64 5
  br i1 %i.hd, label %pred.store.if493, label %pred.store.continue494

pred.store.if493:                                 ; preds = %pred.store.continue492
  %i.he = extractelement <8 x i16> %predphi468, i64 5
  store i16 %i.he, ptr %next.gep463, align 2
  br label %pred.store.continue494

pred.store.continue494:                           ; preds = %pred.store.if493, %pred.store.continue492
  %i.hf = extractelement <8 x i1> %i.gc, i64 6
  br i1 %i.hf, label %pred.store.if495, label %pred.store.continue496

pred.store.if495:                                 ; preds = %pred.store.continue494
  %i.hg = extractelement <8 x i16> %predphi468, i64 6
  store i16 %i.hg, ptr %next.gep464, align 2
  br label %pred.store.continue496

pred.store.continue496:                           ; preds = %pred.store.if495, %pred.store.continue494
  %i.hh = extractelement <8 x i1> %i.gc, i64 7
  br i1 %i.hh, label %pred.store.if497, label %pred.store.continue498

pred.store.if497:                                 ; preds = %pred.store.continue496
  %i.hi = extractelement <8 x i16> %predphi468, i64 7
  store i16 %i.hi, ptr %next.gep465, align 2
  br label %pred.store.continue498

pred.store.continue498:                           ; preds = %pred.store.if497, %pred.store.continue496
  %index.next499 = add nuw i64 %index449, 16      ; 2 uses
  %i.hj = icmp eq i64 %index.next499, %n.vec441
  br i1 %i.hj, label %middle.block500, label %vector.body448, !llvm.loop !17

middle.block500:                                  ; preds = %pred.store.continue498
  %cmp.n501 = icmp eq i64 %i.fd, %n.vec441
  br i1 %cmp.n501, label %.preheader, label %vec.epilog.iter.check505

vec.epilog.iter.check505:                         ; preds = %middle.block500
  %min.epilog.iters.check506 = icmp eq i64 %n.mod.vf440, 0
  br i1 %min.epilog.iters.check506, label %.lr.ph350.preheader, label %vec.epilog.ph507, !prof !18

vec.epilog.ph507:                                 ; preds = %vector.main.loop.iter.check437, %vec.epilog.iter.check505
  %vec.epilog.resume.val502 = phi i64 [ %n.vec441, %vec.epilog.iter.check505 ], [ 0, %vector.main.loop.iter.check437 ]
  %n.vec509 = and i64 %i.fd, -8                   ; 3 uses
  %i.hk = shl i64 %n.vec509, 1
  %i.hl = getelementptr i8, ptr %.8, i64 %i.hk    ; 2 uses
  br label %vec.epilog.vector.body518

vec.epilog.vector.body518:                        ; preds = %pred.store.continue533.a, %vec.epilog.ph507
  %index519 = phi i64 [ %vec.epilog.resume.val502, %vec.epilog.ph507 ], [ %index.next534, %pred.store.continue533.a ] ; 2 uses
  %i.hm = shl i64 %index519, 1                    ; 8 uses
  %next.gep520 = getelementptr i8, ptr %.8, i64 %i.hm ; 2 uses
  %6 = getelementptr i8, ptr %.8, i64 %i.hm
  %next.gep521 = getelementptr i8, ptr %6, i64 2
  %7 = getelementptr i8, ptr %.8, i64 %i.hm
  %next.gep522 = getelementptr i8, ptr %7, i64 4
  %8 = getelementptr i8, ptr %.8, i64 %i.hm
  %next.gep523 = getelementptr i8, ptr %8, i64 6
  %9 = getelementptr i8, ptr %.8, i64 %i.hm
  %next.gep520.a = getelementptr i8, ptr %9, i64 8
  %i.hn = getelementptr i8, ptr %.8, i64 %i.hm
  %next.gep521.a = getelementptr i8, ptr %i.hn, i64 10
  %i.ho = getelementptr i8, ptr %.8, i64 %i.hm
  %next.gep522.a = getelementptr i8, ptr %i.ho, i64 12
  %i.hp = getelementptr i8, ptr %.8, i64 %i.hm
  %next.gep523.a = getelementptr i8, ptr %i.hp, i64 14
  %wide.load528 = load <8 x i16>, ptr %next.gep520, align 2 ; 2 uses
  %10 = icmp eq <8 x i16> %wide.load528, %broadcast.splat511 ; 2 uses
  %11 = icmp eq <8 x i16> %wide.load528, %broadcast.splat513
  %12 = or <8 x i1> %11, %10                      ; 8 uses
  %predphi529 = select <8 x i1> %10, <8 x i16> %broadcast.splat515, <8 x i16> %broadcast.splat517 ; 8 uses
  %i.hq = extractelement <8 x i1> %12, i64 0
  br i1 %i.hq, label %pred.store.if530, label %pred.store.continue531

pred.store.if530:                                 ; preds = %vec.epilog.vector.body518
  %13 = extractelement <8 x i16> %predphi529, i64 0
  store i16 %13, ptr %next.gep520, align 2
  br label %pred.store.continue531

pred.store.continue531:                           ; preds = %pred.store.if530, %vec.epilog.vector.body518
  %14 = extractelement <8 x i1> %12, i64 1
  br i1 %14, label %pred.store.if532, label %pred.store.continue533

pred.store.if532:                                 ; preds = %pred.store.continue531
  %15 = extractelement <8 x i16> %predphi529, i64 1
  store i16 %15, ptr %next.gep521, align 2
  br label %pred.store.continue533

pred.store.continue533:                           ; preds = %pred.store.if532, %pred.store.continue531
  %16 = extractelement <8 x i1> %12, i64 2
  br i1 %16, label %pred.store.if534, label %pred.store.continue535

pred.store.if534:                                 ; preds = %pred.store.continue533
  %17 = extractelement <8 x i16> %predphi529, i64 2
  store i16 %17, ptr %next.gep522, align 2
  br label %pred.store.continue535

pred.store.continue535:                           ; preds = %pred.store.if534, %pred.store.continue533
  %18 = extractelement <8 x i1> %12, i64 3
  br i1 %18, label %pred.store.if536, label %pred.store.continue537

pred.store.if536:                                 ; preds = %pred.store.continue535
  %19 = extractelement <8 x i16> %predphi529, i64 3
  store i16 %19, ptr %next.gep523, align 2
  br label %pred.store.continue537

pred.store.continue537:                           ; preds = %pred.store.if536, %pred.store.continue535
  %20 = extractelement <8 x i1> %12, i64 4
  br i1 %20, label %pred.store.if526, label %pred.store.continue527

pred.store.if526:                                 ; preds = %pred.store.continue537
  %i.hr = extractelement <8 x i16> %predphi529, i64 4
  store i16 %i.hr, ptr %next.gep520.a, align 2
  br label %pred.store.continue527

pred.store.continue527:                           ; preds = %pred.store.if526, %pred.store.continue537
  %i.hs = extractelement <8 x i1> %12, i64 5
  br i1 %i.hs, label %pred.store.if528, label %pred.store.continue529

pred.store.if528:                                 ; preds = %pred.store.continue527
  %i.ht = extractelement <8 x i16> %predphi529, i64 5
  store i16 %i.ht, ptr %next.gep521.a, align 2
  br label %pred.store.continue529

pred.store.continue529:                           ; preds = %pred.store.if528, %pred.store.continue527
  %i.hu = extractelement <8 x i1> %12, i64 6
  br i1 %i.hu, label %pred.store.if530.a, label %pred.store.continue531.a

pred.store.if530.a:                               ; preds = %pred.store.continue529
  %i.hv = extractelement <8 x i16> %predphi529, i64 6
  store i16 %i.hv, ptr %next.gep522.a, align 2
  br label %pred.store.continue531.a

pred.store.continue531.a:                         ; preds = %pred.store.if530.a, %pred.store.continue529
  %i.hw = extractelement <8 x i1> %12, i64 7
  br i1 %i.hw, label %pred.store.if532.a, label %pred.store.continue533.a

pred.store.if532.a:                               ; preds = %pred.store.continue531.a
  %i.hx = extractelement <8 x i16> %predphi529, i64 7
  store i16 %i.hx, ptr %next.gep523.a, align 2
  br label %pred.store.continue533.a

pred.store.continue533.a:                         ; preds = %pred.store.if532.a, %pred.store.continue531.a
  %index.next534 = add nuw i64 %index519, 8       ; 2 uses
  %i.hy = icmp eq i64 %index.next534, %n.vec509
  br i1 %i.hy, label %vec.epilog.middle.block535, label %vec.epilog.vector.body518, !llvm.loop !19

vec.epilog.middle.block535:                       ; preds = %pred.store.continue533.a
  %cmp.n536 = icmp eq i64 %i.fd, %n.vec509
  br i1 %cmp.n536, label %.preheader, label %.lr.ph350.preheader

.lr.ph350.preheader:                              ; preds = %iter.check503, %vec.epilog.iter.check505, %vec.epilog.middle.block535
  %.9349.ph = phi ptr [ %.8, %iter.check503 ], [ %i.ff, %vec.epilog.iter.check505 ], [ %i.hl, %vec.epilog.middle.block535 ]
  br label %.lr.ph350

.preheader:                                       ; preds = %bb.bb, %vec.epilog.middle.block535, %middle.block500
  %.lcssa416 = phi ptr [ %i.hl, %vec.epilog.middle.block535 ], [ %i.ff, %middle.block500 ], [ %i.id, %bb.bb ] ; 2 uses
  %.pre389 = load i32, ptr %i.c, align 4          ; 2 uses
  %i.hz = icmp sgt i32 %.pre389, 0
  br i1 %i.hz, label %.lr.ph354, label %.loopexit343

.lr.ph350:                                        ; preds = %.lr.ph350.preheader, %bb.bb
  %.9349 = phi ptr [ %i.id, %bb.bb ], [ %.9349.ph, %.lr.ph350.preheader ] ; 3 uses
  %i.ia = load i16, ptr %.9349, align 2           ; 2 uses
  %i.ib = icmp eq i16 %i.ia, %.2253
  br i1 %i.ib, label %.sink.split, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph350
  %i.ic = icmp eq i16 %i.ia, %.2259
  br i1 %i.ic, label %.sink.split, label %bb.bb

.sink.split:                                      ; preds = %bb.ba, %.lr.ph350
  %.2256.sink = phi i16 [ %.2256, %.lr.ph350 ], [ %.2279, %bb.ba ]
  store i16 %.2256.sink, ptr %.9349, align 2
  br label %bb.bb

bb.bb:                                            ; preds = %.sink.split, %bb.ba
  %i.id = getelementptr inbounds nuw i8, ptr %.9349, i64 2 ; 3 uses
  %i.ie = icmp ult ptr %i.id, %i.ex
  br i1 %i.ie, label %.lr.ph350, label %.preheader, !llvm.loop !20

.lr.ph354:                                        ; preds = %.preheader, %.lr.ph354
  %indvars.iv382 = phi i64 [ %indvars.iv.next383, %.lr.ph354 ], [ 0, %.preheader ] ; 2 uses
  %.10352 = phi ptr [ %i.ih, %.lr.ph354 ], [ %.lcssa416, %.preheader ] ; 2 uses
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv382
  %i.ig = load i16, ptr %i.if, align 2
  %i.ih = getelementptr inbounds nuw i8, ptr %.10352, i64 2 ; 2 uses
  store i16 %i.ig, ptr %.10352, align 2
  %indvars.iv.next383 = add nuw nsw i64 %indvars.iv382, 1 ; 2 uses
  %i.ii = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ij = sext i32 %i.ii to i64
  %i.ik = icmp slt i64 %indvars.iv.next383, %i.ij
  br i1 %i.ik, label %.lr.ph354, label %.loopexit343, !llvm.loop !21

.loopexit343:                                     ; preds = %.lr.ph354, %.preheader, %bb.az
  %i.il = phi i32 [ %i.eu, %bb.az ], [ %.pre389, %.preheader ], [ %i.ii, %.lr.ph354 ]
  %.11 = phi ptr [ %.8, %bb.az ], [ %.lcssa416, %.preheader ], [ %i.ih, %.lr.ph354 ]
  %i.im = load i32, ptr %i.f, align 4
  %i.in = add i32 %i.im, %.1196375
  %i.io = add i32 %i.in, %i.il
  br label %bb.be

bb.bc:                                            ; preds = %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit
  br i1 %.1207, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.not310 = icmp eq i32 %.1196375, %.1214
  %i.ip = load i32, ptr %i.c, align 4
  %i.iq = select i1 %.not310, i32 0, i32 %i.ip
  %.3 = sub nsw i32 %.1196375, %i.iq              ; 2 uses
  %i.ir = sub nsw i32 %.3, %.1214                 ; 2 uses
  %i.is = icmp sgt i32 %i.ir, 0
  %i.it = zext i1 %i.is to i8
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd, %.loopexit343
  %.2271 = phi i8 [ 1, %.loopexit343 ], [ %i.it, %bb.bd ], [ 1, %bb.bc ]
  %.12 = phi ptr [ %.11, %.loopexit343 ], [ %.8, %bb.bd ], [ %.8, %bb.bc ]
  %.1217 = phi i32 [ %.0216371, %.loopexit343 ], [ %i.ir, %bb.bd ], [ %.0216371, %bb.bc ]
  %.4 = phi i32 [ %i.io, %.loopexit343 ], [ %.3, %bb.bd ], [ %.1196375, %bb.bc ]
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
  %i.iu = load i32, ptr %4, align 4
  %i.iv = icmp eq i32 %i.iu, 15
  br i1 %i.iv, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %4, align 4
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  br i1 %.2208, label %bb.bq, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.iw = icmp ne i8 %.3276, 0                    ; 3 uses
  %i.ix = icmp ne i8 %.3272, 0
  %or.cond8 = select i1 %i.iw, i1 %i.ix, i1 false
  br i1 %or.cond8, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.iy = add nsw i32 %.3228368, 3                ; 3 uses
  %i.iz = icmp eq i32 %.0211373, 0
  %i.ja = load i32, ptr %i.d, align 4
  %i.jb = select i1 %i.iz, i32 %.2250, i32 %i.ja  ; 2 uses
  %i.jc = sub nsw i32 %i.jb, %i.iy                ; 6 uses
  %i.jd = add nsw i32 %i.jc, %.5                  ; 4 uses
  %.not315 = icmp sgt i32 %i.jd, %3
  br i1 %.not315, label %.loopexit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.je = sext i32 %.5 to i64                     ; 2 uses
  %i.jf = getelementptr inbounds [2 x i8], ptr %2, i64 %i.je ; 7 uses
  %i.jg = icmp sgt i32 %i.jc, 0
  br i1 %i.jg, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.bk
  %i.jh = sext i32 %i.iy to i64                   ; 7 uses
  %i.ji = zext nneg i32 %i.jc to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.jc, 4
  br i1 %min.iters.check, label %.lr.ph359.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.jj = shl nsw i64 %i.je, 1
  %i.jk = add i64 %i.ay, %i.jj
  %i.jl = shl nsw i64 %i.jh, 1
  %i.jm = sub i64 %i.jk, %i.jl
  %diff.check = icmp ult i64 %i.jm, 32
  br i1 %diff.check, label %.lr.ph359.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check421 = icmp ult i32 %i.jc, 16
  br i1 %min.iters.check421, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ji, 12
  %n.vec = and i64 %i.ji, 2147483632              ; 6 uses
  %i.jn = add nsw i64 %n.vec, %i.jh               ; 2 uses
  %i.jo = trunc nuw nsw i64 %n.vec to i32
  %i.jp = shl nuw nsw i64 %n.vec, 1
  %i.jq = getelementptr i8, ptr %i.jf, i64 %i.jp  ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %.0200, i64 %i.jh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.jr = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.jf, i64 %i.jr ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <8 x i16>, ptr %gep, align 2
  %wide.load422 = load <8 x i16>, ptr %i.js, align 2
  %i.jt = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2
  store <8 x i16> %wide.load422, ptr %i.jt, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ju = icmp eq i64 %index.next, %n.vec
  br i1 %i.ju, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ji
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph359.preheader, label %vec.epilog.ph, !prof !11

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec426 = and i64 %i.ji, 2147483644           ; 5 uses
  %i.jv = add nsw i64 %n.vec426, %i.jh            ; 2 uses
  %i.jw = trunc nuw nsw i64 %n.vec426 to i32
  %i.jx = shl nuw nsw i64 %n.vec426, 1
  %i.jy = getelementptr i8, ptr %i.jf, i64 %i.jx  ; 2 uses
  %invariant.gep584 = getelementptr [2 x i8], ptr %.0200, i64 %i.jh
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index427 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next430, %vec.epilog.vector.body ] ; 3 uses
  %i.jz = shl i64 %index427, 1
  %next.gep428 = getelementptr i8, ptr %i.jf, i64 %i.jz
  %gep585 = getelementptr [2 x i8], ptr %invariant.gep584, i64 %index427
  %wide.load429 = load <4 x i16>, ptr %gep585, align 2
  store <4 x i16> %wide.load429, ptr %next.gep428, align 2
  %index.next430 = add nuw i64 %index427, 4       ; 2 uses
  %i.ka = icmp eq i64 %index.next430, %n.vec426
  br i1 %i.ka, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n431 = icmp eq i64 %n.vec426, %i.ji
  br i1 %cmp.n431, label %.loopexit.loopexit, label %.lr.ph359.preheader

.lr.ph359.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv385.ph = phi i64 [ %i.jh, %iter.check ], [ %i.jh, %vector.memcheck ], [ %i.jn, %vec.epilog.iter.check ], [ %i.jv, %vec.epilog.middle.block ]
  %.0358.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.jo, %vec.epilog.iter.check ], [ %i.jw, %vec.epilog.middle.block ]
  %.14356.ph = phi ptr [ %i.jf, %iter.check ], [ %i.jf, %vector.memcheck ], [ %i.jq, %vec.epilog.iter.check ], [ %i.jy, %vec.epilog.middle.block ]
  br label %.lr.ph359

.lr.ph359:                                        ; preds = %.lr.ph359.preheader, %.lr.ph359
  %indvars.iv385 = phi i64 [ %indvars.iv.next386, %.lr.ph359 ], [ %indvars.iv385.ph, %.lr.ph359.preheader ] ; 2 uses
  %.0358 = phi i32 [ %i.ke, %.lr.ph359 ], [ %.0358.ph, %.lr.ph359.preheader ]
  %.14356 = phi ptr [ %i.kd, %.lr.ph359 ], [ %.14356.ph, %.lr.ph359.preheader ] ; 2 uses
  %indvars.iv.next386 = add nsw i64 %indvars.iv385, 1 ; 2 uses
  %i.kb = getelementptr inbounds [2 x i8], ptr %.0200, i64 %indvars.iv385
  %i.kc = load i16, ptr %i.kb, align 2
  %i.kd = getelementptr inbounds nuw i8, ptr %.14356, i64 2 ; 2 uses
  store i16 %i.kc, ptr %.14356, align 2
  %i.ke = add nuw nsw i32 %.0358, 1               ; 2 uses
  %exitcond388.not = icmp eq i32 %i.ke, %i.jc
  br i1 %exitcond388.not, label %.loopexit.loopexit, label %.lr.ph359, !llvm.loop !24

bb.bl:                                            ; preds = %bb.bi
  %i.kf = icmp eq i32 %.0211373, 0
  br i1 %i.kf, label %.loopexit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kg = icmp sgt i32 %.5, 0
  br i1 %i.kg, label %bb.bn, label %.loopexit

bb.bn:                                            ; preds = %bb.bm
  %i.kh = select i1 %i.iw, i32 %.2224, i32 %.2218 ; 5 uses
  %i.ki = icmp ne i32 %.4245366, 0
  %or.cond10 = select i1 %i.ax, i1 %i.ki, i1 false
  br i1 %or.cond10, label %bb.bo, label %.loopexit

bb.bo:                                            ; preds = %bb.bn
  %i.kj = add nsw i32 %i.kh, %.4245366
  %.not314 = icmp sgt i32 %i.kj, %3
  br i1 %.not314, label %.loopexit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kk = select i1 %i.iw, i32 %.2221, i32 %.2215
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds [2 x i8], ptr %2, i64 %i.kl
  %i.kn = call ptr @u_memmove_78(ptr noundef nonnull %2, ptr noundef nonnull %i.km, i32 noundef %i.kh) #6 ; 0 uses
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.lr.ph359, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next386.lcssa = phi i64 [ %i.jv, %vec.epilog.middle.block ], [ %i.jn, %middle.block ], [ %indvars.iv.next386, %.lr.ph359 ]
  %.lcssa419 = phi ptr [ %i.jy, %vec.epilog.middle.block ], [ %i.jq, %middle.block ], [ %i.kd, %.lr.ph359 ]
  %i.ko = trunc nsw i64 %indvars.iv.next386.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.bk, %bb.bo, %bb.bl, %bb.bj, %bb.bn, %bb.bp, %bb.bm
  %.2267 = phi i8 [ %.1266365, %bb.bm ], [ 1, %bb.bo ], [ %.1266365, %bb.bp ], [ %.1266365, %bb.bl ], [ %.1266365, %bb.bn ], [ %.1266365, %bb.bj ], [ %.1266365, %bb.bk ], [ %.1266365, %.loopexit.loopexit ]
  %.5246 = phi i32 [ %.4245366, %bb.bm ], [ 0, %bb.bo ], [ %.4245366, %bb.bp ], [ 0, %bb.bl ], [ %.4245366, %bb.bn ], [ %.4245366, %bb.bj ], [ %.4245366, %bb.bk ], [ %.4245366, %.loopexit.loopexit ]
  %.16 = phi ptr [ %.13, %bb.bm ], [ %.13, %bb.bo ], [ %.13, %bb.bp ], [ %.13, %bb.bl ], [ %.13, %bb.bn ], [ %.13, %bb.bj ], [ %i.jf, %bb.bk ], [ %.lcssa419, %.loopexit.loopexit ]
  %.6231 = phi i32 [ %.3228368, %bb.bm ], [ %.3228368, %bb.bo ], [ %.3228368, %bb.bp ], [ %.3228368, %bb.bl ], [ %.3228368, %bb.bn ], [ %i.jb, %bb.bj ], [ %i.iy, %bb.bk ], [ %i.ko, %.loopexit.loopexit ]
  %.6 = phi i32 [ %.5, %bb.bm ], [ %i.kh, %bb.bo ], [ %i.kh, %bb.bp ], [ 0, %bb.bl ], [ %i.kh, %bb.bn ], [ %i.jd, %bb.bj ], [ %i.jd, %bb.bk ], [ %i.jd, %.loopexit.loopexit ]
  %i.kp = add nuw nsw i32 %.0211373, 1
  br label %bb.bq

bb.bq:                                            ; preds = %.loopexit, %bb.bh
  %.3268 = phi i8 [ %.2267, %.loopexit ], [ %.1266365, %bb.bh ] ; 2 uses
  %.6247 = phi i32 [ %.5246, %.loopexit ], [ %.4245366, %bb.bh ] ; 2 uses
  %.17 = phi ptr [ %.16, %.loopexit ], [ %.13, %bb.bh ]
  %.7232 = phi i32 [ %.6231, %.loopexit ], [ %.3228368, %bb.bh ]
  %.1212 = phi i32 [ %i.kp, %.loopexit ], [ %.0211373, %bb.bh ] ; 2 uses
  %.7 = phi i32 [ %.6, %.loopexit ], [ %.5, %bb.bh ] ; 2 uses
  %i.kq = icmp slt i32 %.1212, 2
  br i1 %i.kq, label %.loopexit345, label %bb.s, !llvm.loop !25

bb.br:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit
  %i.kr = call i32 @u_terminateUChars_78(ptr noundef %2, i32 noundef %3, i32 noundef %.7, ptr noundef nonnull %4) #6
  br label %bb.bs

bb.bs:                                            ; preds = %bb.p, %bb.i, %bb.a, %bb.b, %bb.br, %bb.e
  %.2 = phi i32 [ 0, %bb.i ], [ 0, %bb.e ], [ %i.kr, %bb.br ], [ 0, %bb.p ], [ 0, %bb.b ], [ 0, %bb.a ]
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
  %i.e = icmp ne i32 %3, 0
  %i.f = icmp eq ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %4, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = tail call fastcc noundef i32 @_ZN12_GLOBAL__N_119_getStringOrCopyKeyEPKcS1_S1_S1_S1_S1_PDsiR10UErrorCode(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull @_ZN12_GLOBAL__N_16_kKeysE, ptr noundef null, ptr noundef %0, ptr noundef %0, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.f, %bb.e
  %.0 = phi i32 [ %i.g, %bb.f ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @uloc_getDisplayKeywordValue_78(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %"class.icu_78::CharString", align 8 ; 12 uses
  %7 = alloca %"class.icu_78::CharString", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = icmp eq ptr %5, null
  br i1 %i.b, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %5, align 4
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i32 %4, 0
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp ne i32 %4, 0
  %i.g = icmp eq ptr %3, null
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %5, align 4
  br label %bb.ab

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 13 ; 2 uses
  store ptr %i.h, ptr %6, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 40, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i8 0, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  store i32 0, ptr %i.k, align 8
  store i8 0, ptr %i.h, align 1
  %.not45 = icmp eq ptr %1, null
  br i1 %.not45, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load i8, ptr %1, align 1
  %.not46 = icmp eq i8 %i.l, 0
  br i1 %.not46, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #6
  %i.m = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #6
  call void @_Z26ulocimp_getKeywordValue_78PKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %7, ptr noundef %0, i64 %i.m, ptr nonnull %1, ptr noundef nonnull align 4 dereferenceable(4) %5) #6
  %i.n = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(60) %6, ptr noundef nonnull align 8 dereferenceable(60) %7) #6 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.p = load i8, ptr %i.o, align 4
  %.not.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = load ptr, ptr %7, align 8
  call void @uprv_free_78(ptr noundef %i.q) #6
  br label %_ZN6icu_7810CharStringD2Ev.exit

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  br label %bb.j

bb.j:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %bb.g, %bb.f
  %i.r = call i32 @uprv_stricmp_78(ptr noundef %1, ptr noundef nonnull @_ZN12_GLOBAL__N_110_kCurrencyE) #6
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.k, label %bb.y

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4
  %i.t = call ptr @ures_open_78(ptr noundef nonnull @.str.1, ptr noundef %2, ptr noundef nonnull %5) #6 ; 3 uses
  %i.u = call ptr @ures_getByKey_78(ptr noundef %i.t, ptr noundef nonnull @_ZN12_GLOBAL__N_112_kCurrenciesE, ptr noundef null, ptr noundef nonnull %5) #6 ; 3 uses
  %i.v = load ptr, ptr %6, align 8
  %i.w = call ptr @ures_getByKeyWithFallback_78(ptr noundef %i.u, ptr noundef %i.v, ptr noundef null, ptr noundef nonnull %5) #6 ; 3 uses
  %i.x = call ptr @ures_getStringByIndex_78(ptr noundef %i.w, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %5) #6 ; 2 uses
  %i.y = load i32, ptr %5, align 4                ; 2 uses
  %i.z = icmp slt i32 %i.y, 1
  br i1 %i.z, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = icmp eq i32 %i.y, 2
  br i1 %i.aa, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  store i32 -127, ptr %5, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.not48 = icmp eq ptr %i.x, null
  br i1 %.not48, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = load i32, ptr %i.a, align 4             ; 3 uses
  %.not50 = icmp sgt i32 %i.ab, %4
  br i1 %.not50, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = call ptr @u_memcpy_78(ptr noundef %3, ptr noundef nonnull %i.x, i32 noundef %i.ab) #6 ; 0 uses
  %i.ad = load i32, ptr %i.a, align 4
  %i.ae = call i32 @u_terminateUChars_78(ptr noundef %3, i32 noundef %4, i32 noundef %i.ad, ptr noundef nonnull %5) #6
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  store i32 15, ptr %5, align 4
  br label %bb.u

bb.r:                                             ; preds = %bb.n
  %i.af = load i32, ptr %i.k, align 8             ; 3 uses
  %.not49 = icmp sgt i32 %i.af, %4
  br i1 %.not49, label %bb.t, label %bb.s

end_hunk_0
begin_hunk_1_@u_memmove_78
declare ptr @u_memmove_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @u_terminateUChars_78(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN12_GLOBAL__N_119_getStringOrCopyKeyEPKcS1_S1_S1_S1_S1_PDsiR10UErrorCode(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef range(i32 0, -2147483648) %7, ptr noundef nonnull align 4 dereferenceable(4) %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %9 = alloca %"class.icu_78::Locale", align 8    ; 5 uses
  %i.b = load i32, ptr %8, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4
  %i.d = icmp eq ptr %4, null
  br i1 %i.d, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @ures_open_78(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8) #6 ; 3 uses
  %i.f = load i32, ptr %8, align 4
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call ptr @ures_getStringByKey_78(ptr noundef %i.e, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %8) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.048 = phi ptr [ %i.h, %bb.d ], [ null, %bb.c ] ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exitthread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @ures_close_78(ptr noundef nonnull %i.e) #6
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exitthread-pre-split

bb.g:                                             ; preds = %bb.b
  %i.i = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(10) @_ZN12_GLOBAL__N_111_kLanguagesE, i64 noundef 9) #7
  %i.j = icmp eq i32 %i.i, 0                      ; 2 uses
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = tail call i64 @__isoc23_strtol(ptr noundef nonnull %4, ptr noundef null, i32 noundef 10) #6
  %.not51 = icmp eq i64 %i.k, 0
  br i1 %.not51, label %bb.i, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit.thread

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit.thread: ; preds = %bb.h
  store i32 2, ptr %8, align 4
  br label %bb.m

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.l = call ptr @uloc_getTableStringWithFallback_78(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %i.a, ptr noundef nonnull %8) #6
  %i.m = load i32, ptr %8, align 4                ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  %or.cond = and i1 %i.j, %i.n
  br i1 %or.cond, label %bb.j, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %8, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  call void @_ZN6icu_786Locale15createCanonicalEPKc(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::Locale") align 8 %9, ptr noundef nonnull %4) #6
  %i.o = call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %9) #6
  %i.p = call ptr @uloc_getTableStringWithFallback_78(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %i.o, ptr noundef nonnull %i.a, ptr noundef nonnull %8) #6
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %9) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exitthread-pre-split

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exitthread-pre-split: ; preds = %bb.j, %bb.e, %bb.f
  %.2.ph = phi ptr [ %.048, %bb.f ], [ %.048, %bb.e ], [ %i.p, %bb.j ]
  %.pr = load i32, ptr %8, align 4
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit: ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exitthread-pre-split, %bb.i
  %i.q = phi i32 [ %.pr, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exitthread-pre-split ], [ %i.m, %bb.i ]
  %.2 = phi ptr [ %.2.ph, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exitthread-pre-split ], [ %i.l, %bb.i ] ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit
  %i.s = load i32, ptr %i.a, align 4
  %i.t = call i32 @uprv_min_78(i32 noundef %i.s, i32 noundef %7) #6 ; 2 uses
  %i.u = icmp sgt i32 %i.t, 0
  %i.v = icmp ne ptr %.2, null
  %or.cond5 = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond5, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.w = call ptr @u_memcpy_78(ptr noundef %6, ptr noundef nonnull %.2, i32 noundef %i.t) #6 ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit.thread, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit
  %i.x = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #7
  %i.y = trunc i64 %i.x to i32                    ; 2 uses
  store i32 %i.y, ptr %i.a, align 4
  %i.z = call i32 @uprv_min_78(i32 noundef %i.y, i32 noundef %7) #6
  call void @u_charsToUChars_78(ptr noundef nonnull %5, ptr noundef %6, i32 noundef %i.z) #6
  store i32 -127, ptr %8, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  %i.aa = load i32, ptr %i.a, align 4
  %i.ab = call i32 @u_terminateUChars_78(ptr noundef %6, i32 noundef %7, i32 noundef %i.aa, ptr noundef nonnull %8) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n
  %.0 = phi i32 [ %i.ab, %bb.n ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @_Z26ulocimp_getKeywordValue_78PKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::CharString") align 8, ptr noundef, i64, ptr, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(60)) local_unnamed_addr #3

declare i32 @uprv_stricmp_78(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ures_getByKey_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @ures_getStringByIndex_78(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @u_memcpy_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @u_charsToUChars_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare ptr @uloc_getDefault_78() local_unnamed_addr #1

declare void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare ptr @ures_getStringByKey_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @uloc_getTableStringWithFallback_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN6icu_786Locale15createCanonicalEPKc(ptr dead_on_unwind writable sret(%"class.icu_78::Locale") align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

declare i32 @uprv_min_78(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #1

declare void @ures_close_78(ptr noundef) local_unnamed_addr #1

declare void @uenum_close_78(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{ptr @_Z20ulocimp_getRegion_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode, ptr @_Z20ulocimp_getScript_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode, ptr @_Z21ulocimp_getVariant_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode, ptr @_Z22ulocimp_getLanguage_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode}
!6 = distinct !{null}
!7 = distinct !{!7, !8, !9, !10}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{!"llvm.loop.unroll.runtime.disable"}
!11 = !{!"branch_weights", i32 4, i32 12}
!12 = distinct !{!12, !8, !9, !10}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !8, !9}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8, !9, !10}
!18 = !{!"branch_weights", i32 8, i32 8}
!19 = distinct !{!19, !8, !9, !10}
!20 = distinct !{!20, !8, !10, !9}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8, !9, !10}
!23 = distinct !{!23, !8, !9, !10}
!24 = distinct !{!24, !8, !9}
!25 = distinct !{!25, !8}
end_hunk_1
