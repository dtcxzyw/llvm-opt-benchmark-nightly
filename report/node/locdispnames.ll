Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/locdispnames?download=true
inline.NumInlined: 110
inline.NumDeleted: 38
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK6icu_786Locale14getDisplayNameERKS0_RNS_13UnicodeStringE:bb.a
  %i.q = load i16, ptr %i.p, align 8
  %i.r = and i16 %i.q, 2
  %.not.i = icmp eq i16 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = select i1 %.not.i, i32 %i.t, i32 27
  %i.v = call i32 @uloc_getDisplayName_78(ptr noundef %i.n, ptr noundef %i.o, ptr noundef nonnull %i.b, i32 noundef %i.u, ptr noundef nonnull %i.a) ; 2 uses
  %i.w = load i32, ptr %i.a, align 4
  %i.x = icmp sgt i32 %i.w, 0
  %i.y = select i1 %i.x, i32 0, i32 %i.v
  call void @_ZN6icu_7813UnicodeString13releaseBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.y) #6
  %i.z = load i32, ptr %i.a, align 4
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
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
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
  %i.l = icmp eq ptr %2, null                     ; 2 uses
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
  %.not.i318 = icmp eq ptr %i.m, null
  br i1 %.not.i318, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit319, label %bb.h

bb.h:                                             ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit
  call void @ures_close_78(ptr noundef nonnull %i.m) #6
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit319

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit319: ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, %bb.h
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
  %or.cond317 = select i1 %or.cond4, i1 true, i1 %i.w
  br i1 %or.cond317, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit319
  store i32 1, ptr %4, align 4
  br label %bb.bs

bb.j:                                             ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit319
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
  %.not300 = icmp eq i32 %i.ae, 0
  br i1 %.not300, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.k
  store i32 9, ptr %i.d, align 4
  br label %.thread332

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
  %.0262 = call i32 @llvm.smin.i32(i32 %i.ar, i32 %i.an) ; 2 uses
  %.0259 = call i32 @llvm.smax.i32(i32 %i.ar, i32 %i.an) ; 2 uses
  %i.at = call ptr @u_strchr_78(ptr noundef %i.p, i16 noundef zeroext -248) #6
  %.not301 = icmp eq ptr %i.at, null
  br i1 %.not301, label %.thread332, label %bb.o

bb.o:                                             ; preds = %bb.n
  br label %.thread332

bb.p:                                             ; preds = %bb.m
  store i32 1, ptr %4, align 4
  br label %bb.bs

.thread332:                                       ; preds = %bb.o, %bb.n, %bb.l
  %.0269 = phi ptr [ @_ZZ22uloc_getDisplayName_78E14defaultPattern, %bb.l ], [ %i.p, %bb.n ], [ %i.p, %bb.o ] ; 15 uses
  %.2264 = phi i32 [ 0, %bb.l ], [ %.0262, %bb.n ], [ %.0262, %bb.o ]
  %.2261 = phi i32 [ 5, %bb.l ], [ %.0259, %bb.n ], [ %.0259, %bb.o ]
  %.2258 = phi i16 [ 40, %bb.l ], [ 40, %bb.n ], [ -248, %bb.o ] ; 3 uses
  %.2255 = phi i16 [ 91, %bb.l ], [ 91, %bb.n ], [ -197, %bb.o ] ; 3 uses
  %.2252 = phi i16 [ 41, %bb.l ], [ 41, %bb.n ], [ -247, %bb.o ] ; 3 uses
  %.2249 = phi i16 [ 93, %bb.l ], [ 93, %bb.n ], [ -195, %bb.o ] ; 3 uses
  %.2234.shrunk = phi i1 [ false, %bb.l ], [ %i.as, %bb.n ], [ %i.as, %bb.o ]
  %.0269423 = ptrtoaddr ptr %.0269 to i64         ; 2 uses
  %.2234 = zext i1 %.2234.shrunk to i32
  %i.au = icmp eq ptr %0, null
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ax = sub i64 %.0269423, %i.a
  %diff.check478 = icmp ugt i64 %i.ax, -32
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %.2258, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert440 = insertelement <8 x i16> poison, i16 %.2252, i64 0
  %broadcast.splat441 = shufflevector <8 x i16> %broadcast.splatinsert440, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert442 = insertelement <8 x i16> poison, i16 %.2255, i64 0
  %broadcast.splat443 = shufflevector <8 x i16> %broadcast.splatinsert442, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert444 = insertelement <8 x i16> poison, i16 %.2249, i64 0
  %broadcast.splat445 = shufflevector <8 x i16> %broadcast.splatinsert444, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert.a = insertelement <8 x i16> poison, i16 %.2258, i64 0
  %broadcast.splat.a = shufflevector <8 x i16> %broadcast.splatinsert.a, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert438 = insertelement <8 x i16> poison, i16 %.2252, i64 0
  %broadcast.splat439 = shufflevector <8 x i16> %broadcast.splatinsert438, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert440.a = insertelement <8 x i16> poison, i16 %.2255, i64 0
  %broadcast.splat441.a = shufflevector <8 x i16> %broadcast.splatinsert440.a, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert442.a = insertelement <8 x i16> poison, i16 %.2249, i64 0
  %broadcast.splat443.a = shufflevector <8 x i16> %broadcast.splatinsert442.a, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %bb.q

bb.q:                                             ; preds = %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit, %.thread332
  %.3265 = phi i32 [ %.2264, %.thread332 ], [ %.6268, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit ] ; 13 uses
  %.0243 = phi i8 [ 1, %.thread332 ], [ %.3246, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit ]
  %.0239 = phi i8 [ 1, %.thread332 ], [ %.3242, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit ]
  %.0235 = phi i8 [ 0, %.thread332 ], [ 1, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit ]
  %.not304 = icmp eq i32 %.3265, 0
  br i1 %.not304, label %.loopexit346.preheader, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not305 = icmp slt i32 %3, %.3265
  br i1 %.not305, label %.loopexit346.preheader, label %.preheader345

.loopexit346.preheader:                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block489, %vec.epilog.middle.block503, %.preheader345, %bb.q, %bb.r
  %.3217370.ph = phi i32 [ %.3265, %bb.r ], [ 0, %bb.q ], [ 0, %.preheader345 ], [ %.3265, %middle.block489 ], [ %.3265, %vec.epilog.middle.block503 ], [ %.3265, %.lr.ph ], [ %.3265, %.lr.ph.prol.loopexit ]
  %.3222369.ph = phi ptr [ %2, %bb.r ], [ %2, %bb.q ], [ %2, %.preheader345 ], [ %i.bb, %middle.block489 ], [ %i.bi, %vec.epilog.middle.block503 ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.cw, %.lr.ph ]
  br label %.loopexit346

.preheader345:                                    ; preds = %bb.r
  %i.ay = icmp sgt i32 %.3265, 0
  br i1 %i.ay, label %iter.check491, label %.loopexit346.preheader

iter.check491:                                    ; preds = %.preheader345
  %wide.trip.count = zext nneg i32 %.3265 to i64  ; 8 uses
  %min.iters.check476 = icmp ult i32 %.3265, 4
  %or.cond507 = select i1 %min.iters.check476, i1 true, i1 %diff.check478
  br i1 %or.cond507, label %.lr.ph.preheader, label %vector.main.loop.iter.check479

vector.main.loop.iter.check479:                   ; preds = %iter.check491
  %min.iters.check480 = icmp ult i32 %.3265, 16
  br i1 %min.iters.check480, label %vec.epilog.ph495, label %vector.ph481

vector.ph481:                                     ; preds = %vector.main.loop.iter.check479
  %i.az = and i64 %wide.trip.count, 12
  %n.vec482 = and i64 %wide.trip.count, 2147483632 ; 5 uses
  %i.ba = shl nuw nsw i64 %n.vec482, 1
  %i.bb = getelementptr i8, ptr %2, i64 %i.ba     ; 2 uses
  br label %vector.body483

vector.body483:                                   ; preds = %vector.ph481, %vector.body483
  %index484 = phi i64 [ 0, %vector.ph481 ], [ %index.next488, %vector.body483 ] ; 3 uses
  %i.bc = shl i64 %index484, 1
  %next.gep485 = getelementptr i8, ptr %2, i64 %i.bc ; 2 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %.0269, i64 %index484 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load486 = load <8 x i16>, ptr %i.bd, align 2
  %wide.load487 = load <8 x i16>, ptr %i.be, align 2
  %i.bf = getelementptr i8, ptr %next.gep485, i64 16
  store <8 x i16> %wide.load486, ptr %next.gep485, align 2
  store <8 x i16> %wide.load487, ptr %i.bf, align 2
  %index.next488 = add nuw i64 %index484, 16      ; 2 uses
  %i.bg = icmp eq i64 %index.next488, %n.vec482
  br i1 %i.bg, label %middle.block489, label %vector.body483, !llvm.loop !7

middle.block489:                                  ; preds = %vector.body483
  %cmp.n490 = icmp eq i64 %n.vec482, %wide.trip.count
  br i1 %cmp.n490, label %.loopexit346.preheader, label %vec.epilog.iter.check492

vec.epilog.iter.check492:                         ; preds = %middle.block489
  %min.epilog.iters.check494 = icmp eq i64 %i.az, 0
  br i1 %min.epilog.iters.check494, label %.lr.ph.preheader, label %vec.epilog.ph495, !prof !23

vec.epilog.ph495:                                 ; preds = %vector.main.loop.iter.check479, %vec.epilog.iter.check492
  %vec.epilog.resume.val496 = phi i64 [ %n.vec482, %vec.epilog.iter.check492 ], [ 0, %vector.main.loop.iter.check479 ]
  %n.vec497 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %i.bh = shl nuw nsw i64 %n.vec497, 1
  %i.bi = getelementptr i8, ptr %2, i64 %i.bh     ; 2 uses
  br label %vec.epilog.vector.body498

vec.epilog.vector.body498:                        ; preds = %vec.epilog.vector.body498, %vec.epilog.ph495
  %index499 = phi i64 [ %vec.epilog.resume.val496, %vec.epilog.ph495 ], [ %index.next502, %vec.epilog.vector.body498 ] ; 3 uses
  %i.bj = shl i64 %index499, 1
  %next.gep500 = getelementptr i8, ptr %2, i64 %i.bj
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.0269, i64 %index499
  %wide.load501 = load <4 x i16>, ptr %i.bk, align 2
  store <4 x i16> %wide.load501, ptr %next.gep500, align 2
  %index.next502 = add nuw i64 %index499, 4       ; 2 uses
  %i.bl = icmp eq i64 %index.next502, %n.vec497
  br i1 %i.bl, label %vec.epilog.middle.block503, label %vec.epilog.vector.body498, !llvm.loop !8

vec.epilog.middle.block503:                       ; preds = %vec.epilog.vector.body498
  %cmp.n504 = icmp eq i64 %n.vec497, %wide.trip.count
  br i1 %cmp.n504, label %.loopexit346.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check491, %vec.epilog.iter.check492, %vec.epilog.middle.block503
  %indvars.iv.ph = phi i64 [ 0, %iter.check491 ], [ %n.vec482, %vec.epilog.iter.check492 ], [ %n.vec497, %vec.epilog.middle.block503 ] ; 4 uses
  %.0219347.ph = phi ptr [ %2, %iter.check491 ], [ %i.bb, %vec.epilog.iter.check492 ], [ %i.bi, %vec.epilog.middle.block503 ] ; 2 uses
  %i.bm = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.bm, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.0219347.prol = phi ptr [ %i.bp, %.lr.ph.prol ], [ %.0219347.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %.0269, i64 %indvars.iv.prol
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = getelementptr inbounds nuw i8, ptr %.0219347.prol, i64 2 ; 3 uses
  store i16 %i.bo, ptr %.0219347.prol, align 2
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !9

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.bp, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.0219347.unr = phi ptr [ %.0219347.ph, %.lr.ph.preheader ], [ %i.bp, %.lr.ph.prol ]
  %i.bq = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.br = icmp ugt i64 %i.bq, -8
  br i1 %i.br, label %.loopexit346.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.0219347 = phi ptr [ %i.cw, %.lr.ph ], [ %.0219347.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.0269, i64 %indvars.iv
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = getelementptr inbounds nuw i8, ptr %.0219347, i64 2
  store i16 %i.bt, ptr %.0219347, align 2
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %.0269, i64 %indvars.iv
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.bx = load i16, ptr %i.bw, align 2
  %i.by = getelementptr inbounds nuw i8, ptr %.0219347, i64 4
  store i16 %i.bx, ptr %i.bu, align 2
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %.0269, i64 %indvars.iv
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load i16, ptr %i.ca, align 2
  %i.cc = getelementptr inbounds nuw i8, ptr %.0219347, i64 6
  store i16 %i.cb, ptr %i.by, align 2
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %.0269, i64 %indvars.iv
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 6
  %i.cf = load i16, ptr %i.ce, align 2
  %i.cg = getelementptr inbounds nuw i8, ptr %.0219347, i64 8
  store i16 %i.cf, ptr %i.cc, align 2
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %.0269, i64 %indvars.iv
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load i16, ptr %i.ci, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %.0219347, i64 10
  store i16 %i.cj, ptr %i.cg, align 2
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %.0269, i64 %indvars.iv
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 10
  %i.cn = load i16, ptr %i.cm, align 2
  %i.co = getelementptr inbounds nuw i8, ptr %.0219347, i64 12
  store i16 %i.cn, ptr %i.ck, align 2
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %.0269, i64 %indvars.iv
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.cr = load i16, ptr %i.cq, align 2
  %i.cs = getelementptr inbounds nuw i8, ptr %.0219347, i64 14
  store i16 %i.cr, ptr %i.co, align 2
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %.0269, i64 %indvars.iv
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 14
  %i.cv = load i16, ptr %i.cu, align 2
  %i.cw = getelementptr inbounds nuw i8, ptr %.0219347, i64 16 ; 2 uses
  store i16 %i.cv, ptr %i.cs, align 2
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %.loopexit346.preheader, label %.lr.ph, !llvm.loop !10

bb.s:                                             ; preds = %bb.bq
  %.not.i320 = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i320, label %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @uenum_close_78(ptr noundef nonnull %.sroa.0.3) #6
  br label %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit

_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit: ; preds = %bb.s, %bb.t
  %.not306 = icmp eq i8 %.3238, 0
  br i1 %.not306, label %bb.br, label %bb.q, !llvm.loop !11

.loopexit346:                                     ; preds = %.loopexit346.preheader, %bb.bq
  %.0198376 = phi i32 [ %.1199, %bb.bq ], [ 0, %.loopexit346.preheader ] ; 5 uses
  %.0200375 = phi i32 [ %.1201, %bb.bq ], [ 0, %.loopexit346.preheader ] ; 5 uses
  %.0202374 = phi i32 [ %.2204, %bb.bq ], [ 0, %.loopexit346.preheader ] ; 7 uses
  %.0205373 = phi i32 [ %.2207, %bb.bq ], [ 0, %.loopexit346.preheader ] ; 5 uses
  %.0208372 = phi i32 [ %.2210, %bb.bq ], [ 0, %.loopexit346.preheader ] ; 3 uses
  %.0211371 = phi i32 [ %.2213, %bb.bq ], [ 0, %.loopexit346.preheader ] ; 3 uses
  %.3217370 = phi i32 [ %.7, %bb.bq ], [ %.3217370.ph, %.loopexit346.preheader ] ; 7 uses
  %.3222369 = phi ptr [ %.17, %bb.bq ], [ %.3222369.ph, %.loopexit346.preheader ]
  %.1236368 = phi i8 [ %.3238, %bb.bq ], [ %.0235, %.loopexit346.preheader ] ; 8 uses
  %.1240367 = phi i8 [ %.3242, %bb.bq ], [ %.0239, %.loopexit346.preheader ] ; 3 uses
  %.1244366 = phi i8 [ %.3246, %bb.bq ], [ %.0243, %.loopexit346.preheader ] ; 3 uses
  %.4266365 = phi i32 [ %.6268, %bb.bq ], [ %.3265, %.loopexit346.preheader ] ; 9 uses
  %.1273364 = phi i32 [ %.7279, %bb.bq ], [ %.3265, %.loopexit346.preheader ] ; 12 uses
  %.sroa.0.0363 = phi ptr [ %.sroa.0.3, %bb.bq ], [ null, %.loopexit346.preheader ] ; 10 uses
  %i.cx = sub nsw i32 %3, %.1273364               ; 2 uses
  %i.cy = icmp sgt i32 %i.cx, 0                   ; 4 uses
  %i.cz = sext i32 %.1273364 to i64
  %i.da = getelementptr inbounds [2 x i8], ptr %2, i64 %i.cz ; 2 uses
  %.4223 = select i1 %i.cy, ptr %i.da, ptr %.3222369 ; 21 uses
  %.0194 = call i32 @llvm.smax.i32(i32 %i.cx, i32 0) ; 16 uses
  %i.db = icmp eq i32 %.0200375, %.2234
  br i1 %i.db, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.loopexit346
  %.not313 = icmp eq i8 %.1244366, 0
  br i1 %.not313, label %bb.bf, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = call i32 @uloc_getDisplayLanguage_78(ptr noundef %0, ptr noundef %1, ptr noundef %.4223, i32 noundef %.0194, ptr noundef nonnull %4) ; 3 uses
  %i.dd = add nsw i32 %i.dc, %.1273364
  %i.de = icmp sgt i32 %i.dc, 0
  %i.df = zext i1 %i.de to i8
  br label %bb.bf

bb.w:                                             ; preds = %.loopexit346
  %.not307 = icmp eq i8 %.1240367, 0
  br i1 %.not307, label %bb.bf, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.dg = add nsw i32 %.0198376, 1
  switch i32 %.0198376, label %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit [
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
  %i.dj = icmp eq ptr %.4223, null
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
  call void @_Z20ulocimp_getScript_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %5, i64 %i.dl, ptr nonnull %.022.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.b) #6, !callees !6, !inline_history !0
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
  %i.dp = call i32 @u_terminateUChars_78(ptr noundef %.4223, i32 noundef range(i32 0, -2147483648) %.0194, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %4) #6
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.dq = load ptr, ptr %5, align 8               ; 2 uses
  %i.dr = call fastcc noundef i32 @_ZN12_GLOBAL__N_119_getStringOrCopyKeyEPKcS1_S1_S1_S1_S1_PDsiR10UErrorCode(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull @_ZN12_GLOBAL__N_19_kScriptsE, ptr noundef null, ptr noundef %i.dq, ptr noundef %i.dq, ptr noundef %.4223, i32 noundef range(i32 0, -2147483648) %.0194, ptr noundef nonnull align 4 dereferenceable(4) %4)
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
  %i.du = call i32 @uloc_getDisplayCountry_78(ptr noundef %0, ptr noundef %1, ptr noundef %.4223, i32 noundef %.0194, ptr noundef nonnull %4)
  br label %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit

bb.am:                                            ; preds = %bb.x
  %i.dv = call i32 @uloc_getDisplayVariant_78(ptr noundef %0, ptr noundef %1, ptr noundef %.4223, i32 noundef %.0194, ptr noundef nonnull %4)
  br label %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit

bb.an:                                            ; preds = %bb.x
  %i.dw = call ptr @uloc_openKeywords_78(ptr noundef %0, ptr noundef nonnull %4) #6 ; 2 uses
  %.not.i321 = icmp eq ptr %.sroa.0.0363, null
  br i1 %.not.i321, label %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @uenum_close_78(ptr noundef nonnull %.sroa.0.0363) #6
  br label %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit

_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit: ; preds = %bb.ao, %bb.an, %bb.x
  %.sroa.0.1 = phi ptr [ %.sroa.0.0363, %bb.x ], [ %i.dw, %bb.an ], [ %i.dw, %bb.ao ] ; 3 uses
  %i.dx = call ptr @uenum_next_78(ptr noundef %.sroa.0.1, ptr noundef nonnull %i.f, ptr noundef nonnull %4) #6 ; 4 uses
  %.not = icmp eq ptr %i.dx, null
  br i1 %.not, label %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit
  %i.dy = load i32, ptr %4, align 4
  %i.dz = icmp slt i32 %i.dy, 1
  br i1 %i.dz, label %bb.aq, label %uloc_getDisplayKeyword_78.exit.thread

bb.aq:                                            ; preds = %bb.ap
  %i.ea = icmp eq ptr %.4223, null
  %or.cond.i = and i1 %i.cy, %i.ea
  br i1 %or.cond.i, label %bb.ar, label %uloc_getDisplayKeyword_78.exit

bb.ar:                                            ; preds = %bb.aq
  store i32 1, ptr %4, align 4
  br label %uloc_getDisplayKeyword_78.exit.thread

uloc_getDisplayKeyword_78.exit.thread:            ; preds = %bb.ar, %bb.ap
  store i32 0, ptr %i.f, align 4
  br label %bb.aw

uloc_getDisplayKeyword_78.exit:                   ; preds = %bb.aq
  %i.eb = call fastcc noundef i32 @_ZN12_GLOBAL__N_119_getStringOrCopyKeyEPKcS1_S1_S1_S1_S1_PDsiR10UErrorCode(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull @_ZN12_GLOBAL__N_16_kKeysE, ptr noundef null, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.dx, ptr noundef %.4223, i32 noundef %.0194, ptr noundef nonnull align 4 dereferenceable(4) %4) ; 5 uses
  store i32 %i.eb, ptr %i.f, align 4
  %.not308 = icmp eq i32 %i.eb, 0
  br i1 %.not308, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %uloc_getDisplayKeyword_78.exit
  %i.ec = icmp slt i32 %i.eb, %.0194
  br i1 %i.ec, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ed = sext i32 %i.eb to i64
  %i.ee = getelementptr inbounds [2 x i8], ptr %.4223, i64 %i.ed
  store i16 61, ptr %i.ee, align 2
  %.pre = load i32, ptr %i.f, align 4
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.ef = phi i32 [ %.pre, %bb.at ], [ %i.eb, %bb.as ]
  %i.eg = add nsw i32 %i.ef, 1                    ; 3 uses
  store i32 %i.eg, ptr %i.f, align 4
  %i.eh = sub nsw i32 %.0194, %i.eg               ; 2 uses
  %i.ei = icmp slt i32 %i.eh, 1
  br i1 %i.ei, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ej = sext i32 %i.eg to i64
  %i.ek = getelementptr inbounds [2 x i8], ptr %.4223, i64 %i.ej
  br label %bb.aw

bb.aw:                                            ; preds = %uloc_getDisplayKeyword_78.exit.thread, %bb.au, %bb.av, %uloc_getDisplayKeyword_78.exit
  %.5224 = phi ptr [ %.4223, %uloc_getDisplayKeyword_78.exit ], [ %i.ek, %bb.av ], [ %.4223, %bb.au ], [ %.4223, %uloc_getDisplayKeyword_78.exit.thread ] ; 2 uses
  %.1 = phi i32 [ %.0194, %uloc_getDisplayKeyword_78.exit ], [ %i.eh, %bb.av ], [ 0, %bb.au ], [ %.0194, %uloc_getDisplayKeyword_78.exit.thread ] ; 2 uses
  %i.el = load i32, ptr %4, align 4
  %i.em = icmp eq i32 %i.el, 15
  br i1 %i.em, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %4, align 4
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.en = call i32 @uloc_getDisplayKeywordValue_78(ptr noundef %0, ptr noundef nonnull %i.dx, ptr noundef %1, ptr noundef %.5224, i32 noundef %.1, ptr noundef nonnull %4) ; 2 uses
  %i.eo = load i32, ptr %i.f, align 4             ; 2 uses
  %.not309 = icmp ne i32 %i.eo, 0                 ; 3 uses
  %i.ep = icmp eq i32 %i.en, 0
  %i.eq = sext i1 %i.ep to i32
  %spec.select416 = add nsw i32 %i.eo, %i.eq
  %i.er = select i1 %.not309, i32 %spec.select416, i32 0
  %.not417 = select i1 %.not309, i1 %i.cy, i1 false
  %.6225 = select i1 %.not417, ptr %i.da, ptr %.5224
  %.2 = select i1 %.not309, i32 %.0194, i32 %.1
  %i.es = add nsw i32 %i.er, %i.en
  br label %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit

_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit: ; preds = %bb.ay, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit, %bb.ak, %bb.y, %bb.am, %bb.al
  %storemerge.sink = phi i32 [ 0, %bb.y ], [ %i.dv, %bb.am ], [ %i.du, %bb.al ], [ %.1.i.i, %bb.ak ], [ %i.es, %bb.ay ], [ 0, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit ] ; 4 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0363, %bb.y ], [ %.sroa.0.0363, %bb.am ], [ %.sroa.0.0363, %bb.al ], [ %.sroa.0.0363, %bb.ak ], [ %.sroa.0.1, %bb.ay ], [ %.sroa.0.1, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit ]
  %.8 = phi ptr [ %.4223, %bb.y ], [ %.4223, %bb.am ], [ %.4223, %bb.al ], [ %.4223, %bb.ak ], [ %.6225, %bb.ay ], [ %.4223, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit ] ; 32 uses
  %.1203 = phi i32 [ %.1273364, %bb.y ], [ %.0202374, %bb.am ], [ %.0202374, %bb.al ], [ %.1273364, %bb.ak ], [ %.0202374, %bb.ay ], [ %.0202374, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit ] ; 3 uses
  %.1196 = phi i1 [ true, %bb.y ], [ true, %bb.am ], [ true, %bb.al ], [ true, %bb.ak ], [ true, %bb.ay ], [ false, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit ] ; 2 uses
  %.4 = phi i32 [ %.0194, %bb.y ], [ %.0194, %bb.am ], [ %.0194, %bb.al ], [ %.0194, %bb.ak ], [ %.2, %bb.ay ], [ %.0194, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit ]
  %.8434 = ptrtoaddr ptr %.8 to i64               ; 3 uses
  store i32 %storemerge.sink, ptr %i.f, align 4
  %i.et = icmp sgt i32 %storemerge.sink, 0
  br i1 %i.et, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit
  %i.eu = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ev = add nsw i32 %i.eu, %storemerge.sink
  %.not312 = icmp sgt i32 %i.ev, %.4
  br i1 %.not312, label %.loopexit344, label %.lr.ph351.preheader.a

.lr.ph351.preheader.a:                            ; preds = %bb.az
  %i.ew = shl nuw i32 %storemerge.sink, 1
  %.idx = zext i32 %i.ew to i64                   ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.8, i64 %.idx
  %i.ey = add i64 %.8434, %.idx
  %i.ez = add i64 %.8434, 2
  %i.fa = call i64 @llvm.umax.i64(i64 %i.ey, i64 %i.ez)
  %i.fb = xor i64 %.8434, -1
  %i.fc = add i64 %i.fa, %i.fb                    ; 3 uses
  %i.fd = lshr i64 %i.fc, 1
  %i.fe = add nuw i64 %i.fd, 1                    ; 5 uses
  %min.iters.check435 = icmp ult i64 %i.fc, 14
  br i1 %min.iters.check435, label %.lr.ph351.preheader508, label %vector.main.loop.iter.check436

vector.main.loop.iter.check436:                   ; preds = %.lr.ph351.preheader.a
  %min.iters.check437 = icmp ult i64 %i.fc, 30
  br i1 %min.iters.check437, label %vector.ph436, label %vector.ph438

vector.ph438:                                     ; preds = %vector.main.loop.iter.check436
  %6 = and i64 %i.fe, 8
  %n.vec439 = and i64 %i.fe, -16                  ; 4 uses
  %7 = shl i64 %n.vec439, 1
  %8 = getelementptr i8, ptr %.8, i64 %7          ; 2 uses
  br label %vector.body446

vector.body446:                                   ; preds = %vector.ph438, %pred.store.continue496
  %index447 = phi i64 [ 0, %vector.ph438 ], [ %index.next497, %pred.store.continue496 ] ; 2 uses
  %9 = shl i64 %index447, 1                       ; 16 uses
  %next.gep448 = getelementptr i8, ptr %.8, i64 %9 ; 3 uses
  %10 = getelementptr i8, ptr %.8, i64 %9
  %next.gep449 = getelementptr i8, ptr %10, i64 2
  %11 = getelementptr i8, ptr %.8, i64 %9
  %next.gep450 = getelementptr i8, ptr %11, i64 4
  %12 = getelementptr i8, ptr %.8, i64 %9
  %next.gep451 = getelementptr i8, ptr %12, i64 6
  %13 = getelementptr i8, ptr %.8, i64 %9
  %next.gep452 = getelementptr i8, ptr %13, i64 8
  %14 = getelementptr i8, ptr %.8, i64 %9
  %next.gep453 = getelementptr i8, ptr %14, i64 10
  %15 = getelementptr i8, ptr %.8, i64 %9
  %next.gep454 = getelementptr i8, ptr %15, i64 12
  %16 = getelementptr i8, ptr %.8, i64 %9
  %next.gep455 = getelementptr i8, ptr %16, i64 14
  %17 = getelementptr i8, ptr %.8, i64 %9
  %next.gep456 = getelementptr i8, ptr %17, i64 16
  %18 = getelementptr i8, ptr %.8, i64 %9
  %next.gep457 = getelementptr i8, ptr %18, i64 18
  %19 = getelementptr i8, ptr %.8, i64 %9
  %next.gep458 = getelementptr i8, ptr %19, i64 20
  %20 = getelementptr i8, ptr %.8, i64 %9
  %next.gep459 = getelementptr i8, ptr %20, i64 22
  %21 = getelementptr i8, ptr %.8, i64 %9
  %next.gep460 = getelementptr i8, ptr %21, i64 24
  %22 = getelementptr i8, ptr %.8, i64 %9
  %next.gep461 = getelementptr i8, ptr %22, i64 26
  %23 = getelementptr i8, ptr %.8, i64 %9
  %next.gep462 = getelementptr i8, ptr %23, i64 28
  %24 = getelementptr i8, ptr %.8, i64 %9
  %next.gep463 = getelementptr i8, ptr %24, i64 30
  %25 = getelementptr i8, ptr %next.gep448, i64 16
  %wide.load464 = load <8 x i16>, ptr %next.gep448, align 2 ; 2 uses
  %wide.load465 = load <8 x i16>, ptr %25, align 2 ; 2 uses
  %26 = icmp eq <8 x i16> %wide.load464, %broadcast.splat ; 2 uses
  %27 = icmp eq <8 x i16> %wide.load465, %broadcast.splat ; 2 uses
  %28 = icmp eq <8 x i16> %wide.load464, %broadcast.splat441
  %29 = icmp eq <8 x i16> %wide.load465, %broadcast.splat441
  %30 = or <8 x i1> %28, %26                      ; 8 uses
  %31 = or <8 x i1> %29, %27                      ; 8 uses
  %predphi = select <8 x i1> %26, <8 x i16> %broadcast.splat443, <8 x i16> %broadcast.splat445 ; 8 uses
  %predphi466 = select <8 x i1> %27, <8 x i16> %broadcast.splat443, <8 x i16> %broadcast.splat445 ; 8 uses
  %32 = extractelement <8 x i1> %30, i64 0
  br i1 %32, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body446
  %33 = extractelement <8 x i16> %predphi, i64 0
  store i16 %33, ptr %next.gep448, align 2
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body446
  %34 = extractelement <8 x i1> %30, i64 1
  br i1 %34, label %pred.store.if467, label %pred.store.continue468

pred.store.if467:                                 ; preds = %pred.store.continue
  %35 = extractelement <8 x i16> %predphi, i64 1
  store i16 %35, ptr %next.gep449, align 2
  br label %pred.store.continue468

pred.store.continue468:                           ; preds = %pred.store.if467, %pred.store.continue
  %36 = extractelement <8 x i1> %30, i64 2
  br i1 %36, label %pred.store.if469, label %pred.store.continue470

pred.store.if469:                                 ; preds = %pred.store.continue468
  %37 = extractelement <8 x i16> %predphi, i64 2
  store i16 %37, ptr %next.gep450, align 2
  br label %pred.store.continue470

pred.store.continue470:                           ; preds = %pred.store.if469, %pred.store.continue468
  %38 = extractelement <8 x i1> %30, i64 3
  br i1 %38, label %pred.store.if471, label %pred.store.continue472

pred.store.if471:                                 ; preds = %pred.store.continue470
  %39 = extractelement <8 x i16> %predphi, i64 3
  store i16 %39, ptr %next.gep451, align 2
  br label %pred.store.continue472

pred.store.continue472:                           ; preds = %pred.store.if471, %pred.store.continue470
  %40 = extractelement <8 x i1> %30, i64 4
  br i1 %40, label %pred.store.if473, label %pred.store.continue474

pred.store.if473:                                 ; preds = %pred.store.continue472
  %41 = extractelement <8 x i16> %predphi, i64 4
  store i16 %41, ptr %next.gep452, align 2
  br label %pred.store.continue474

pred.store.continue474:                           ; preds = %pred.store.if473, %pred.store.continue472
  %42 = extractelement <8 x i1> %30, i64 5
  br i1 %42, label %pred.store.if475, label %pred.store.continue476

pred.store.if475:                                 ; preds = %pred.store.continue474
  %43 = extractelement <8 x i16> %predphi, i64 5
  store i16 %43, ptr %next.gep453, align 2
  br label %pred.store.continue476

pred.store.continue476:                           ; preds = %pred.store.if475, %pred.store.continue474
  %44 = extractelement <8 x i1> %30, i64 6
  br i1 %44, label %pred.store.if477, label %pred.store.continue478

pred.store.if477:                                 ; preds = %pred.store.continue476
  %45 = extractelement <8 x i16> %predphi, i64 6
  store i16 %45, ptr %next.gep454, align 2
  br label %pred.store.continue478

pred.store.continue478:                           ; preds = %pred.store.if477, %pred.store.continue476
  %46 = extractelement <8 x i1> %30, i64 7
  br i1 %46, label %pred.store.if479, label %pred.store.continue480

pred.store.if479:                                 ; preds = %pred.store.continue478
  %47 = extractelement <8 x i16> %predphi, i64 7
  store i16 %47, ptr %next.gep455, align 2
  br label %pred.store.continue480

pred.store.continue480:                           ; preds = %pred.store.if479, %pred.store.continue478
  %48 = extractelement <8 x i1> %31, i64 0
  br i1 %48, label %pred.store.if481, label %pred.store.continue482

pred.store.if481:                                 ; preds = %pred.store.continue480
  %49 = extractelement <8 x i16> %predphi466, i64 0
  store i16 %49, ptr %next.gep456, align 2
  br label %pred.store.continue482

pred.store.continue482:                           ; preds = %pred.store.if481, %pred.store.continue480
  %50 = extractelement <8 x i1> %31, i64 1
  br i1 %50, label %pred.store.if483, label %pred.store.continue484

pred.store.if483:                                 ; preds = %pred.store.continue482
  %51 = extractelement <8 x i16> %predphi466, i64 1
  store i16 %51, ptr %next.gep457, align 2
  br label %pred.store.continue484

pred.store.continue484:                           ; preds = %pred.store.if483, %pred.store.continue482
  %52 = extractelement <8 x i1> %31, i64 2
  br i1 %52, label %pred.store.if485, label %pred.store.continue486

pred.store.if485:                                 ; preds = %pred.store.continue484
  %53 = extractelement <8 x i16> %predphi466, i64 2
  store i16 %53, ptr %next.gep458, align 2
  br label %pred.store.continue486

pred.store.continue486:                           ; preds = %pred.store.if485, %pred.store.continue484
  %54 = extractelement <8 x i1> %31, i64 3
  br i1 %54, label %pred.store.if487, label %pred.store.continue488

pred.store.if487:                                 ; preds = %pred.store.continue486
  %55 = extractelement <8 x i16> %predphi466, i64 3
  store i16 %55, ptr %next.gep459, align 2
  br label %pred.store.continue488

pred.store.continue488:                           ; preds = %pred.store.if487, %pred.store.continue486
  %56 = extractelement <8 x i1> %31, i64 4
  br i1 %56, label %pred.store.if489, label %pred.store.continue490

pred.store.if489:                                 ; preds = %pred.store.continue488
  %57 = extractelement <8 x i16> %predphi466, i64 4
  store i16 %57, ptr %next.gep460, align 2
  br label %pred.store.continue490

pred.store.continue490:                           ; preds = %pred.store.if489, %pred.store.continue488
  %58 = extractelement <8 x i1> %31, i64 5
  br i1 %58, label %pred.store.if491, label %pred.store.continue492

pred.store.if491:                                 ; preds = %pred.store.continue490
  %59 = extractelement <8 x i16> %predphi466, i64 5
  store i16 %59, ptr %next.gep461, align 2
  br label %pred.store.continue492

pred.store.continue492:                           ; preds = %pred.store.if491, %pred.store.continue490
  %60 = extractelement <8 x i1> %31, i64 6
  br i1 %60, label %pred.store.if493, label %pred.store.continue494

pred.store.if493:                                 ; preds = %pred.store.continue492
  %61 = extractelement <8 x i16> %predphi466, i64 6
  store i16 %61, ptr %next.gep462, align 2
  br label %pred.store.continue494

pred.store.continue494:                           ; preds = %pred.store.if493, %pred.store.continue492
  %62 = extractelement <8 x i1> %31, i64 7
  br i1 %62, label %pred.store.if495, label %pred.store.continue496

pred.store.if495:                                 ; preds = %pred.store.continue494
  %63 = extractelement <8 x i16> %predphi466, i64 7
  store i16 %63, ptr %next.gep463, align 2
  br label %pred.store.continue496

pred.store.continue496:                           ; preds = %pred.store.if495, %pred.store.continue494
  %index.next497 = add nuw i64 %index447, 16      ; 2 uses
  %64 = icmp eq i64 %index.next497, %n.vec439
  br i1 %64, label %middle.block498, label %vector.body446, !llvm.loop !12

middle.block498:                                  ; preds = %pred.store.continue496
  %cmp.n499 = icmp eq i64 %i.fe, %n.vec439
  br i1 %cmp.n499, label %.preheader, label %vec.epilog.iter.check501

vec.epilog.iter.check501:                         ; preds = %middle.block498
  %min.epilog.iters.check503.not.not = icmp eq i64 %6, 0
  br i1 %min.epilog.iters.check503.not.not, label %.lr.ph351.preheader508, label %vector.ph436, !prof !25

vector.ph436:                                     ; preds = %vector.main.loop.iter.check436, %vec.epilog.iter.check501
  %vec.epilog.resume.val505 = phi i64 [ %n.vec439, %vec.epilog.iter.check501 ], [ 0, %vector.main.loop.iter.check436 ]
  %n.vec437 = and i64 %i.fe, -8                   ; 3 uses
  %i.ff = shl i64 %n.vec437, 1
  %i.fg = getelementptr i8, ptr %.8, i64 %i.ff    ; 2 uses
  br label %vector.body444

vector.body444:                                   ; preds = %pred.store.continue468.a, %vector.ph436
  %index445 = phi i64 [ %vec.epilog.resume.val505, %vector.ph436 ], [ %index.next469, %pred.store.continue468.a ] ; 2 uses
  %i.fh = shl i64 %index445, 1                    ; 8 uses
  %next.gep446 = getelementptr i8, ptr %.8, i64 %i.fh ; 2 uses
  %i.fi = getelementptr i8, ptr %.8, i64 %i.fh
  %next.gep447 = getelementptr i8, ptr %i.fi, i64 2
  %i.fj = getelementptr i8, ptr %.8, i64 %i.fh
  %next.gep448.a = getelementptr i8, ptr %i.fj, i64 4
  %i.fk = getelementptr i8, ptr %.8, i64 %i.fh
  %next.gep449.a = getelementptr i8, ptr %i.fk, i64 6
  %i.fl = getelementptr i8, ptr %.8, i64 %i.fh
  %next.gep450.a = getelementptr i8, ptr %i.fl, i64 8
  %i.fm = getelementptr i8, ptr %.8, i64 %i.fh
  %next.gep451.a = getelementptr i8, ptr %i.fm, i64 10
  %i.fn = getelementptr i8, ptr %.8, i64 %i.fh
  %next.gep452.a = getelementptr i8, ptr %i.fn, i64 12
  %i.fo = getelementptr i8, ptr %.8, i64 %i.fh
  %next.gep453.a = getelementptr i8, ptr %i.fo, i64 14
  %wide.load454 = load <8 x i16>, ptr %next.gep446, align 2 ; 2 uses
  %i.fp = icmp eq <8 x i16> %wide.load454, %broadcast.splat.a ; 2 uses
  %i.fq = icmp eq <8 x i16> %wide.load454, %broadcast.splat439
  %i.fr = or <8 x i1> %i.fq, %i.fp                ; 8 uses
  %predphi.a = select <8 x i1> %i.fp, <8 x i16> %broadcast.splat441.a, <8 x i16> %broadcast.splat443.a ; 8 uses
  %i.fs = extractelement <8 x i1> %i.fr, i64 0
  br i1 %i.fs, label %pred.store.if.a, label %pred.store.continue.a

pred.store.if.a:                                  ; preds = %vector.body444
  %i.ft = extractelement <8 x i16> %predphi.a, i64 0
  store i16 %i.ft, ptr %next.gep446, align 2
  br label %pred.store.continue.a

pred.store.continue.a:                            ; preds = %pred.store.if.a, %vector.body444
  %i.fu = extractelement <8 x i1> %i.fr, i64 1
  br i1 %i.fu, label %pred.store.if455, label %pred.store.continue456

pred.store.if455:                                 ; preds = %pred.store.continue.a
  %i.fv = extractelement <8 x i16> %predphi.a, i64 1
  store i16 %i.fv, ptr %next.gep447, align 2
  br label %pred.store.continue456

pred.store.continue456:                           ; preds = %pred.store.if455, %pred.store.continue.a
  %i.fw = extractelement <8 x i1> %i.fr, i64 2
  br i1 %i.fw, label %pred.store.if457, label %pred.store.continue458

pred.store.if457:                                 ; preds = %pred.store.continue456
  %i.fx = extractelement <8 x i16> %predphi.a, i64 2
  store i16 %i.fx, ptr %next.gep448.a, align 2
  br label %pred.store.continue458

pred.store.continue458:                           ; preds = %pred.store.if457, %pred.store.continue456
  %i.fy = extractelement <8 x i1> %i.fr, i64 3
  br i1 %i.fy, label %pred.store.if459, label %pred.store.continue460

pred.store.if459:                                 ; preds = %pred.store.continue458
  %i.fz = extractelement <8 x i16> %predphi.a, i64 3
  store i16 %i.fz, ptr %next.gep449.a, align 2
  br label %pred.store.continue460

pred.store.continue460:                           ; preds = %pred.store.if459, %pred.store.continue458
  %i.ga = extractelement <8 x i1> %i.fr, i64 4
  br i1 %i.ga, label %pred.store.if461, label %pred.store.continue462

pred.store.if461:                                 ; preds = %pred.store.continue460
  %i.gb = extractelement <8 x i16> %predphi.a, i64 4
  store i16 %i.gb, ptr %next.gep450.a, align 2
  br label %pred.store.continue462

pred.store.continue462:                           ; preds = %pred.store.if461, %pred.store.continue460
  %i.gc = extractelement <8 x i1> %i.fr, i64 5
  br i1 %i.gc, label %pred.store.if463, label %pred.store.continue464

pred.store.if463:                                 ; preds = %pred.store.continue462
  %i.gd = extractelement <8 x i16> %predphi.a, i64 5
  store i16 %i.gd, ptr %next.gep451.a, align 2
  br label %pred.store.continue464

pred.store.continue464:                           ; preds = %pred.store.if463, %pred.store.continue462
  %i.ge = extractelement <8 x i1> %i.fr, i64 6
  br i1 %i.ge, label %pred.store.if465, label %pred.store.continue466

pred.store.if465:                                 ; preds = %pred.store.continue464
  %i.gf = extractelement <8 x i16> %predphi.a, i64 6
  store i16 %i.gf, ptr %next.gep452.a, align 2
  br label %pred.store.continue466

pred.store.continue466:                           ; preds = %pred.store.if465, %pred.store.continue464
  %i.gg = extractelement <8 x i1> %i.fr, i64 7
  br i1 %i.gg, label %pred.store.if467.a, label %pred.store.continue468.a

pred.store.if467.a:                               ; preds = %pred.store.continue466
  %i.gh = extractelement <8 x i16> %predphi.a, i64 7
  store i16 %i.gh, ptr %next.gep453.a, align 2
  br label %pred.store.continue468.a

pred.store.continue468.a:                         ; preds = %pred.store.if467.a, %pred.store.continue466
  %index.next469 = add nuw i64 %index445, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next469, %n.vec437
  br i1 %i.gi, label %middle.block470, label %vector.body444, !llvm.loop !13

middle.block470:                                  ; preds = %pred.store.continue468.a
  %cmp.n471 = icmp eq i64 %i.fe, %n.vec437
  br i1 %cmp.n471, label %.preheader, label %.lr.ph351.preheader508

.lr.ph351.preheader508:                           ; preds = %.lr.ph351.preheader.a, %vec.epilog.iter.check501, %middle.block470
  %.9350.ph = phi ptr [ %.8, %.lr.ph351.preheader.a ], [ %8, %vec.epilog.iter.check501 ], [ %i.fg, %middle.block470 ]
  br label %.lr.ph351

.preheader:                                       ; preds = %bb.bb, %middle.block470, %middle.block498
  %.lcssa418 = phi ptr [ %i.fg, %middle.block470 ], [ %8, %middle.block498 ], [ %i.gn, %bb.bb ] ; 2 uses
  %.pre390 = load i32, ptr %i.c, align 4          ; 2 uses
  %i.gj = icmp sgt i32 %.pre390, 0
  br i1 %i.gj, label %.lr.ph355, label %.loopexit344

.lr.ph351:                                        ; preds = %.lr.ph351.preheader508, %bb.bb
  %.9350 = phi ptr [ %i.gn, %bb.bb ], [ %.9350.ph, %.lr.ph351.preheader508 ] ; 3 uses
  %i.gk = load i16, ptr %.9350, align 2           ; 2 uses
  %i.gl = icmp eq i16 %i.gk, %.2258
  br i1 %i.gl, label %.sink.split, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph351
  %i.gm = icmp eq i16 %i.gk, %.2252
  br i1 %i.gm, label %.sink.split, label %bb.bb

.sink.split:                                      ; preds = %bb.ba, %.lr.ph351
  %.2255.sink = phi i16 [ %.2255, %.lr.ph351 ], [ %.2249, %bb.ba ]
  store i16 %.2255.sink, ptr %.9350, align 2
  br label %bb.bb

bb.bb:                                            ; preds = %.sink.split, %bb.ba
  %i.gn = getelementptr inbounds nuw i8, ptr %.9350, i64 2 ; 3 uses
  %i.go = icmp ult ptr %i.gn, %i.ex
  br i1 %i.go, label %.lr.ph351, label %.preheader, !llvm.loop !14

.lr.ph355:                                        ; preds = %.preheader, %.lr.ph355
  %indvars.iv383 = phi i64 [ %indvars.iv.next384, %.lr.ph355 ], [ 0, %.preheader ] ; 2 uses
  %.10353 = phi ptr [ %i.gr, %.lr.ph355 ], [ %.lcssa418, %.preheader ] ; 2 uses
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv383
  %i.gq = load i16, ptr %i.gp, align 2
  %i.gr = getelementptr inbounds nuw i8, ptr %.10353, i64 2 ; 2 uses
  store i16 %i.gq, ptr %.10353, align 2
  %indvars.iv.next384 = add nuw nsw i64 %indvars.iv383, 1 ; 2 uses
  %i.gs = load i32, ptr %i.c, align 4             ; 2 uses
  %i.gt = sext i32 %i.gs to i64
  %i.gu = icmp slt i64 %indvars.iv.next384, %i.gt
  br i1 %i.gu, label %.lr.ph355, label %.loopexit344, !llvm.loop !15

.loopexit344:                                     ; preds = %.lr.ph355, %.preheader, %bb.az
  %i.gv = phi i32 [ %i.eu, %bb.az ], [ %.pre390, %.preheader ], [ %i.gs, %.lr.ph355 ]
  %.11 = phi ptr [ %.8, %bb.az ], [ %.lcssa418, %.preheader ], [ %i.gr, %.lr.ph355 ]
  %i.gw = load i32, ptr %i.f, align 4
  %i.gx = add i32 %i.gw, %.1273364
  %i.gy = add i32 %i.gx, %i.gv
  br label %bb.be

bb.bc:                                            ; preds = %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit
  br i1 %.1196, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.not311 = icmp eq i32 %.1273364, %.1203
  %i.gz = load i32, ptr %i.c, align 4
  %i.ha = select i1 %.not311, i32 0, i32 %i.gz
  %.3275 = sub nsw i32 %.1273364, %i.ha           ; 2 uses
  %i.hb = sub nsw i32 %.3275, %.1203              ; 2 uses
  %i.hc = icmp sgt i32 %i.hb, 0
  %i.hd = zext i1 %i.hc to i8
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd, %.loopexit344
  %.4276 = phi i32 [ %i.gy, %.loopexit344 ], [ %.3275, %bb.bd ], [ %.1273364, %bb.bc ]
  %.2241 = phi i8 [ 1, %.loopexit344 ], [ %i.hd, %bb.bd ], [ 1, %bb.bc ]
  %.12 = phi ptr [ %.11, %.loopexit344 ], [ %.8, %bb.bd ], [ %.8, %bb.bc ]
  %.1206 = phi i32 [ %.0205373, %.loopexit344 ], [ %i.hb, %bb.bd ], [ %.0205373, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  br label %bb.bf

bb.bf:                                            ; preds = %bb.w, %bb.u, %bb.v, %bb.be
  %.sroa.0.3 = phi ptr [ %.sroa.0.0363, %bb.u ], [ %.sroa.0.0363, %bb.v ], [ %.sroa.0.0363, %bb.w ], [ %.sroa.0.2, %bb.be ] ; 3 uses
  %.5277 = phi i32 [ %.1273364, %bb.u ], [ %i.dd, %bb.v ], [ %.1273364, %bb.w ], [ %.4276, %bb.be ] ; 5 uses
  %.3246 = phi i8 [ 0, %bb.u ], [ %i.df, %bb.v ], [ %.1244366, %bb.w ], [ %.1244366, %bb.be ] ; 3 uses
  %.3242 = phi i8 [ %.1240367, %bb.u ], [ %.1240367, %bb.v ], [ 0, %bb.w ], [ %.2241, %bb.be ] ; 3 uses
  %.13 = phi ptr [ %.4223, %bb.u ], [ %.4223, %bb.v ], [ %.4223, %bb.w ], [ %.12, %bb.be ] ; 7 uses
  %.2213 = phi i32 [ %.0211371, %bb.u ], [ %i.dc, %bb.v ], [ %.0211371, %bb.w ], [ %.0211371, %bb.be ] ; 2 uses
  %.2210 = phi i32 [ %.0208372, %bb.u ], [ %.1273364, %bb.v ], [ %.0208372, %bb.w ], [ %.0208372, %bb.be ] ; 2 uses
  %.2207 = phi i32 [ %.0205373, %bb.u ], [ %.0205373, %bb.v ], [ %.0205373, %bb.w ], [ %.1206, %bb.be ] ; 2 uses
  %.2204 = phi i32 [ %.0202374, %bb.u ], [ %.0202374, %bb.v ], [ %.0202374, %bb.w ], [ %.1203, %bb.be ] ; 2 uses
  %.1199 = phi i32 [ %.0198376, %bb.u ], [ %.0198376, %bb.v ], [ %.0198376, %bb.w ], [ %i.dg, %bb.be ]
  %.2197 = phi i1 [ false, %bb.u ], [ false, %bb.v ], [ false, %bb.w ], [ %.1196, %bb.be ]
  %i.he = load i32, ptr %4, align 4
  %i.hf = icmp eq i32 %i.he, 15
  br i1 %i.hf, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %4, align 4
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  br i1 %.2197, label %bb.bq, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hg = icmp ne i8 %.3246, 0                    ; 3 uses
  %i.hh = icmp ne i8 %.3242, 0
  %or.cond8 = select i1 %i.hg, i1 %i.hh, i1 false
  br i1 %or.cond8, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.hi = add nsw i32 %.3217370, 3                ; 3 uses
  %i.hj = icmp eq i32 %.0200375, 0
  %i.hk = load i32, ptr %i.d, align 4
  %i.hl = select i1 %i.hj, i32 %.2261, i32 %i.hk  ; 2 uses
  %i.hm = sub nsw i32 %i.hl, %i.hi                ; 6 uses
  %i.hn = add nsw i32 %i.hm, %.5277               ; 4 uses
  %.not316 = icmp sgt i32 %i.hn, %3
  br i1 %.not316, label %.loopexit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ho = sext i32 %.5277 to i64                  ; 2 uses
  %i.hp = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ho ; 7 uses
  %i.hq = icmp sgt i32 %i.hm, 0
  br i1 %i.hq, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.bk
  %i.hr = sext i32 %i.hi to i64                   ; 7 uses
  %i.hs = zext nneg i32 %i.hm to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.hm, 4
  br i1 %min.iters.check, label %.lr.ph360.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ht = shl nsw i64 %i.ho, 1
  %i.hu = shl nsw i64 %i.hr, 1
  %i.hv = add i64 %i.ht, %i.a
  %i.hw = add i64 %i.hu, %.0269423
  %i.hx = sub i64 %i.hw, %i.hv
  %diff.check = icmp ugt i64 %i.hx, -32
  br i1 %diff.check, label %.lr.ph360.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check424 = icmp ult i32 %i.hm, 16
  br i1 %min.iters.check424, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hy = and i64 %i.hs, 12
  %n.vec = and i64 %i.hs, 2147483632              ; 6 uses
  %i.hz = add nsw i64 %n.vec, %i.hr               ; 2 uses
  %i.ia = trunc nuw nsw i64 %n.vec to i32
  %i.ib = shl nuw nsw i64 %n.vec, 1
  %i.ic = getelementptr i8, ptr %i.hp, i64 %i.ib  ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %.0269, i64 %i.hr
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.id = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.hp, i64 %i.id ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <8 x i16>, ptr %gep, align 2
  %wide.load425 = load <8 x i16>, ptr %i.ie, align 2
  %i.if = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2
  store <8 x i16> %wide.load425, ptr %i.if, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ig = icmp eq i64 %index.next, %n.vec
  br i1 %i.ig, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.hs
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hy, 0
  br i1 %min.epilog.iters.check, label %.lr.ph360.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec426 = and i64 %i.hs, 2147483644           ; 5 uses
  %i.ih = add nsw i64 %n.vec426, %i.hr            ; 2 uses
  %i.ii = trunc nuw nsw i64 %n.vec426 to i32
  %i.ij = shl nuw nsw i64 %n.vec426, 1
  %i.ik = getelementptr i8, ptr %i.hp, i64 %i.ij  ; 2 uses
  %invariant.gep521 = getelementptr [2 x i8], ptr %.0269, i64 %i.hr
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index427 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next430, %vec.epilog.vector.body ] ; 3 uses
  %i.il = shl i64 %index427, 1
  %next.gep428 = getelementptr i8, ptr %i.hp, i64 %i.il
  %gep522 = getelementptr [2 x i8], ptr %invariant.gep521, i64 %index427
  %wide.load429 = load <4 x i16>, ptr %gep522, align 2
  store <4 x i16> %wide.load429, ptr %next.gep428, align 2
  %index.next430 = add nuw i64 %index427, 4       ; 2 uses
  %i.im = icmp eq i64 %index.next430, %n.vec426
  br i1 %i.im, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !17

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n431 = icmp eq i64 %n.vec426, %i.hs
  br i1 %cmp.n431, label %.loopexit.loopexit, label %.lr.ph360.preheader

.lr.ph360.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv386.ph = phi i64 [ %i.hr, %iter.check ], [ %i.hr, %vector.memcheck ], [ %i.hz, %vec.epilog.iter.check ], [ %i.ih, %vec.epilog.middle.block ]
  %.0359.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.ia, %vec.epilog.iter.check ], [ %i.ii, %vec.epilog.middle.block ]
  %.14357.ph = phi ptr [ %i.hp, %iter.check ], [ %i.hp, %vector.memcheck ], [ %i.ic, %vec.epilog.iter.check ], [ %i.ik, %vec.epilog.middle.block ]
  br label %.lr.ph360

.lr.ph360:                                        ; preds = %.lr.ph360.preheader, %.lr.ph360
  %indvars.iv386 = phi i64 [ %indvars.iv.next387, %.lr.ph360 ], [ %indvars.iv386.ph, %.lr.ph360.preheader ] ; 2 uses
  %.0359 = phi i32 [ %i.iq, %.lr.ph360 ], [ %.0359.ph, %.lr.ph360.preheader ]
  %.14357 = phi ptr [ %i.ip, %.lr.ph360 ], [ %.14357.ph, %.lr.ph360.preheader ] ; 2 uses
  %indvars.iv.next387 = add nsw i64 %indvars.iv386, 1 ; 2 uses
  %i.in = getelementptr inbounds [2 x i8], ptr %.0269, i64 %indvars.iv386
  %i.io = load i16, ptr %i.in, align 2
  %i.ip = getelementptr inbounds nuw i8, ptr %.14357, i64 2 ; 2 uses
  store i16 %i.io, ptr %.14357, align 2
  %i.iq = add nuw nsw i32 %.0359, 1               ; 2 uses
  %exitcond389.not = icmp eq i32 %i.iq, %i.hm
  br i1 %exitcond389.not, label %.loopexit.loopexit, label %.lr.ph360, !llvm.loop !18

bb.bl:                                            ; preds = %bb.bi
  %i.ir = icmp eq i32 %.0200375, 0
  br i1 %i.ir, label %.loopexit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.is = icmp sgt i32 %.5277, 0
  br i1 %i.is, label %bb.bn, label %.loopexit

bb.bn:                                            ; preds = %bb.bm
  %i.it = select i1 %i.hg, i32 %.2213, i32 %.2207 ; 5 uses
  %i.iu = icmp eq i32 %.4266365, 0
  %or.cond10.not = select i1 %i.l, i1 true, i1 %i.iu
  br i1 %or.cond10.not, label %.loopexit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.iv = add nsw i32 %i.it, %.4266365
  %.not315 = icmp sgt i32 %i.iv, %3
  br i1 %.not315, label %.loopexit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.iw = select i1 %i.hg, i32 %.2210, i32 %.2204
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ix
  %i.iz = call ptr @u_memmove_78(ptr noundef nonnull %2, ptr noundef nonnull %i.iy, i32 noundef %i.it) #6 ; 0 uses
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.lr.ph360, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next387.lcssa = phi i64 [ %i.ih, %vec.epilog.middle.block ], [ %i.hz, %middle.block ], [ %indvars.iv.next387, %.lr.ph360 ]
  %.lcssa421 = phi ptr [ %i.ik, %vec.epilog.middle.block ], [ %i.ic, %middle.block ], [ %i.ip, %.lr.ph360 ]
  %i.ja = trunc nsw i64 %indvars.iv.next387.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.bk, %bb.bo, %bb.bl, %bb.bj, %bb.bn, %bb.bp, %bb.bm
  %.6278 = phi i32 [ %.5277, %bb.bm ], [ %i.it, %bb.bo ], [ %i.it, %bb.bp ], [ 0, %bb.bl ], [ %i.it, %bb.bn ], [ %i.hn, %bb.bj ], [ %i.hn, %bb.bk ], [ %i.hn, %.loopexit.loopexit ]
  %.5267 = phi i32 [ %.4266365, %bb.bm ], [ 0, %bb.bo ], [ %.4266365, %bb.bp ], [ 0, %bb.bl ], [ %.4266365, %bb.bn ], [ %.4266365, %bb.bj ], [ %.4266365, %bb.bk ], [ %.4266365, %.loopexit.loopexit ]
  %.2237 = phi i8 [ %.1236368, %bb.bm ], [ 1, %bb.bo ], [ %.1236368, %bb.bp ], [ %.1236368, %bb.bl ], [ %.1236368, %bb.bn ], [ %.1236368, %bb.bj ], [ %.1236368, %bb.bk ], [ %.1236368, %.loopexit.loopexit ]
  %.16 = phi ptr [ %.13, %bb.bm ], [ %.13, %bb.bo ], [ %.13, %bb.bp ], [ %.13, %bb.bl ], [ %.13, %bb.bn ], [ %.13, %bb.bj ], [ %i.hp, %bb.bk ], [ %.lcssa421, %.loopexit.loopexit ]
  %.6 = phi i32 [ %.3217370, %bb.bm ], [ %.3217370, %bb.bo ], [ %.3217370, %bb.bp ], [ %.3217370, %bb.bl ], [ %.3217370, %bb.bn ], [ %i.hl, %bb.bj ], [ %i.hi, %bb.bk ], [ %i.ja, %.loopexit.loopexit ]
  %i.jb = add nuw nsw i32 %.0200375, 1
  br label %bb.bq

bb.bq:                                            ; preds = %.loopexit, %bb.bh
  %.7279 = phi i32 [ %.6278, %.loopexit ], [ %.5277, %bb.bh ] ; 2 uses
  %.6268 = phi i32 [ %.5267, %.loopexit ], [ %.4266365, %bb.bh ] ; 2 uses
  %.3238 = phi i8 [ %.2237, %.loopexit ], [ %.1236368, %bb.bh ] ; 2 uses
  %.17 = phi ptr [ %.16, %.loopexit ], [ %.13, %bb.bh ]
  %.7 = phi i32 [ %.6, %.loopexit ], [ %.3217370, %bb.bh ]
  %.1201 = phi i32 [ %i.jb, %.loopexit ], [ %.0200375, %bb.bh ] ; 2 uses
  %i.jc = icmp slt i32 %.1201, 2
  br i1 %i.jc, label %.loopexit346, label %bb.s, !llvm.loop !19

bb.br:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit
  %i.jd = call i32 @u_terminateUChars_78(ptr noundef %2, i32 noundef %3, i32 noundef %.7279, ptr noundef nonnull %4) #6
  br label %bb.bs

bb.bs:                                            ; preds = %bb.p, %bb.i, %bb.a, %bb.b, %bb.br, %bb.e
  %.2229 = phi i32 [ 0, %bb.i ], [ 0, %bb.e ], [ %i.jd, %bb.br ], [ 0, %bb.p ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  ret i32 %.2229
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
begin_hunk_1_@uloc_getDisplayKeywordValue_78:bb.a
  br label %_ZN6icu_7810CharStringD2Ev.exit56

_ZN6icu_7810CharStringD2Ev.exit56:                ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %bb.b, %_ZN6icu_7810CharStringD2Ev.exit56, %bb.e
  %.2 = phi i32 [ %.1, %_ZN6icu_7810CharStringD2Ev.exit56 ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.2
}

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
  %.0 = phi ptr [ %i.h, %bb.d ], [ null, %bb.c ]  ; 2 uses
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
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exitthread-pre-split

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exitthread-pre-split: ; preds = %bb.j, %bb.e, %bb.f
  %.2.ph = phi ptr [ %.0, %bb.f ], [ %.0, %bb.e ], [ %i.p, %bb.j ]
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
  %.048 = phi i32 [ %i.ab, %bb.n ], [ 0, %bb.a ]
  ret i32 %.048
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
declare void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #3

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

!llvm.module.flags = !{!1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!6 = !{ptr @_Z20ulocimp_getRegion_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode, ptr @_Z20ulocimp_getScript_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode, ptr @_Z21ulocimp_getVariant_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode, ptr @_Z22ulocimp_getLanguage_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode}
!7 = distinct !{!7, !20, !21, !22}
!8 = distinct !{!8, !20, !21, !22}
!9 = distinct !{!9, !24}
!10 = distinct !{!10, !20, !21}
!11 = distinct !{!11, !20}
!12 = distinct !{!12, !20, !21, !22}
!13 = distinct !{!13, !20, !21, !22}
!14 = distinct !{!14, !20, !22, !21}
!15 = distinct !{!15, !20}
!16 = distinct !{!16, !20, !21, !22}
!17 = distinct !{!17, !20, !21, !22}
!18 = distinct !{!18, !20, !21}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = !{!"branch_weights", i32 4, i32 12}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = !{!"branch_weights", i32 8, i32 8}
end_hunk_1
