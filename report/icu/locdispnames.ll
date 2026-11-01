Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/locdispnames?download=true
inline.NumInlined: 110
inline.NumDeleted: 35
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK6icu_786Locale14getDisplayNameERKS0_RNS_13UnicodeStringE:bb.a
  %i.ar = select i1 %.not.i25, i32 %i.aq, i32 27
  %i.as = call i32 @uloc_getDisplayName_78(ptr noundef %i.am, ptr noundef %i.an, ptr noundef nonnull %i.ab, i32 noundef %i.ar, ptr noundef nonnull %i.a)
  %i.at = load i32, ptr %i.a, align 4, !tbaa !10
  %i.au = icmp sgt i32 %i.at, 0
  %i.av = select i1 %i.au, i32 0, i32 %i.as
  call void @_ZN6icu_7813UnicodeString13releaseBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.av)
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

_ZN6icu_7813UnicodeString8truncateEi.exit:        ; preds = %bb.k, %bb.j, %bb.i, %bb.e, %bb.d, %bb.c, %bb.f, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define i32 @uloc_getDisplayName_78(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"class.icu_78::CharString", align 8 ; 9 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %6 = alloca %"class.icu_78::internal::LocalOpenPointer", align 8 ; 5 uses
  %7 = alloca %"class.icu_78::internal::LocalOpenPointer", align 8 ; 5 uses
  %8 = alloca %"class.icu_78::internal::LocalOpenPointer.1", align 8 ; 9 uses
  %i.f = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 0, ptr %i.c, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !20
  %i.g = icmp eq ptr %4, null
  br i1 %i.g, label %bb.cp, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %4, align 4, !tbaa !10
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %bb.cp

bb.c:                                             ; preds = %bb.b
  %i.j = icmp slt i32 %3, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ne i32 %3, 0
  %i.l = icmp eq ptr %2, null                     ; 2 uses
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %4, align 4, !tbaa !10
  br label %bb.cp

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  store i32 0, ptr %i.e, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.m = call ptr @ures_open_78(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull %i.e) ; 4 uses
  store ptr %i.m, ptr %6, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.n = invoke ptr @ures_getByKeyWithFallback_78(ptr noundef %i.m, ptr noundef nonnull @_ZN12_GLOBAL__N_122_kLocaleDisplayPatternE, ptr noundef null, ptr noundef nonnull %i.e)
          to label %bb.g unwind label %bb.n       ; 5 uses

bb.g:                                             ; preds = %bb.f
  store ptr %i.n, ptr %7, align 8, !tbaa !23
  %i.o = invoke ptr @ures_getStringByKeyWithFallback_78(ptr noundef %i.n, ptr noundef nonnull @_ZN12_GLOBAL__N_111_kSeparatorE, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.p = invoke ptr @ures_getStringByKeyWithFallback_78(ptr noundef %i.n, ptr noundef nonnull @_ZN12_GLOBAL__N_19_kPatternE, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e)
          to label %bb.i unwind label %bb.o       ; 7 uses

bb.i:                                             ; preds = %bb.h
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @ures_close_78(ptr noundef nonnull %i.n)
          to label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #10
  unreachable

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %.not.i337 = icmp eq ptr %i.m, null
  br i1 %.not.i337, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit338, label %bb.l

bb.l:                                             ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit
  invoke void @ures_close_78(ptr noundef nonnull %i.m)
          to label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit338 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #10
  unreachable

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit338: ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  %i.u = load i32, ptr %i.c, align 4, !tbaa !20
  %i.v = icmp eq i32 %i.u, 0
  %spec.select = select i1 %i.v, ptr @_ZZ22uloc_getDisplayName_78E16defaultSeparator, ptr %i.o ; 2 uses
  %i.w = call ptr @u_strstr_78(ptr noundef %spec.select, ptr noundef nonnull @_ZZ22uloc_getDisplayName_78E4sub0) ; 4 uses
  %i.x = ptrtoaddr ptr %i.w to i64
  %i.y = call ptr @u_strstr_78(ptr noundef %spec.select, ptr noundef nonnull @_ZZ22uloc_getDisplayName_78E4sub1) ; 3 uses
  %i.z = icmp eq ptr %i.w, null
  %i.aa = icmp eq ptr %i.y, null
  %or.cond4 = select i1 %i.z, i1 true, i1 %i.aa
  %i.ab = icmp ult ptr %i.y, %i.w
  %or.cond336 = select i1 %or.cond4, i1 true, i1 %i.ab
  br i1 %or.cond336, label %bb.q, label %bb.r

bb.n:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.h, %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #9
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.o ], [ %i.ac, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  br label %bb.cq

bb.q:                                             ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit338
  store i32 1, ptr %4, align 4, !tbaa !10
  br label %bb.cp

bb.r:                                             ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit338
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 6 ; 12 uses
  %i.af = ptrtoint ptr %i.y to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = lshr exact i64 %i.ah, 1
  %i.aj = trunc i64 %i.ai to i32
  store i32 %i.aj, ptr %i.c, align 4, !tbaa !20
  %i.ak = load i32, ptr %i.d, align 4, !tbaa !20
  switch i32 %i.ak, label %bb.u [
    i32 0, label %bb.t
    i32 9, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.al = call i32 @u_strncmp_78(ptr noundef %i.p, ptr noundef nonnull @_ZZ22uloc_getDisplayName_78E14defaultPattern, i32 noundef 9)
  %.not313 = icmp eq i32 %i.al, 0
  br i1 %.not313, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.s
  store i32 9, ptr %i.d, align 4, !tbaa !20
  br label %.thread347

bb.u:                                             ; preds = %bb.r, %bb.s
  %i.am = call ptr @u_strstr_78(ptr noundef %i.p, ptr noundef nonnull @_ZZ22uloc_getDisplayName_78E4sub0) ; 2 uses
  %i.an = call ptr @u_strstr_78(ptr noundef %i.p, ptr noundef nonnull @_ZZ22uloc_getDisplayName_78E4sub1) ; 2 uses
  %i.ao = icmp ne ptr %i.am, null
  %i.ap = icmp ne ptr %i.an, null
  %or.cond6.not = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond6.not, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = ptrtoint ptr %i.p to i64                ; 2 uses
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = lshr exact i64 %i.as, 1
  %i.au = trunc i64 %i.at to i32                  ; 3 uses
  %i.av = ptrtoint ptr %i.an to i64
  %i.aw = sub i64 %i.av, %i.ar
  %i.ax = lshr exact i64 %i.aw, 1
  %i.ay = trunc i64 %i.ax to i32                  ; 3 uses
  %i.az = icmp slt i32 %i.ay, %i.au               ; 2 uses
  %.0274 = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.au) ; 2 uses
  %.0271 = call i32 @llvm.smax.i32(i32 %i.ay, i32 %i.au) ; 2 uses
  %i.ba = call ptr @u_strchr_78(ptr noundef %i.p, i16 noundef zeroext -248)
  %.not314 = icmp eq ptr %i.ba, null
  br i1 %.not314, label %.thread347, label %bb.w

bb.w:                                             ; preds = %bb.v
  br label %.thread347

bb.x:                                             ; preds = %bb.u
  store i32 1, ptr %4, align 4, !tbaa !10
  br label %bb.cp

.thread347:                                       ; preds = %bb.w, %bb.v, %bb.t
  %.0281 = phi ptr [ @_ZZ22uloc_getDisplayName_78E14defaultPattern, %bb.t ], [ %i.p, %bb.v ], [ %i.p, %bb.w ] ; 15 uses
  %.2276 = phi i32 [ 0, %bb.t ], [ %.0274, %bb.v ], [ %.0274, %bb.w ]
  %.2273 = phi i32 [ 5, %bb.t ], [ %.0271, %bb.v ], [ %.0271, %bb.w ]
  %.2270 = phi i16 [ 40, %bb.t ], [ 40, %bb.v ], [ -248, %bb.w ] ; 2 uses
  %.2267 = phi i16 [ 91, %bb.t ], [ 91, %bb.v ], [ -197, %bb.w ] ; 2 uses
  %.2264 = phi i16 [ 41, %bb.t ], [ 41, %bb.v ], [ -247, %bb.w ] ; 2 uses
  %.2261 = phi i16 [ 93, %bb.t ], [ 93, %bb.v ], [ -195, %bb.w ] ; 2 uses
  %.2246.shrunk = phi i1 [ false, %bb.t ], [ %i.az, %bb.v ], [ %i.az, %bb.w ]
  %.0281460 = ptrtoaddr ptr %.0281 to i64         ; 2 uses
  %.2246 = zext i1 %.2246.shrunk to i32
  %i.bb = icmp eq ptr %0, null
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.be = sub i64 %.0281460, %i.a
  %diff.check548 = icmp ugt i64 %i.be, -32
  %broadcast.splatinsert.a = insertelement <8 x i16> poison, i16 %.2270, i64 0
  %broadcast.splat.a = shufflevector <8 x i16> %broadcast.splatinsert.a, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert508 = insertelement <8 x i16> poison, i16 %.2264, i64 0
  %broadcast.splat509 = shufflevector <8 x i16> %broadcast.splatinsert508, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert510.a = insertelement <8 x i16> poison, i16 %.2267, i64 0
  %broadcast.splat511.a = shufflevector <8 x i16> %broadcast.splatinsert510.a, <8 x i16> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert512.a = insertelement <8 x i16> poison, i16 %.2261, i64 0
  %broadcast.splat513.a = shufflevector <8 x i16> %broadcast.splatinsert512.a, <8 x i16> poison, <8 x i32> zeroinitializer
  %invariant.op = sub i64 -7, %i.x
  br label %bb.y

bb.y:                                             ; preds = %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit, %.thread347
  %.3277 = phi i32 [ %.2276, %.thread347 ], [ %.6280, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit ] ; 13 uses
  %.0255 = phi i8 [ 1, %.thread347 ], [ %.3258, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit ]
  %.0251 = phi i8 [ 1, %.thread347 ], [ %.3254, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit ]
  %.0247 = phi i8 [ 0, %.thread347 ], [ 1, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  store ptr null, ptr %8, align 8, !tbaa !26
  %.not317 = icmp eq i32 %.3277, 0
  br i1 %.not317, label %.loopexit361.preheader, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not318 = icmp slt i32 %3, %.3277
  br i1 %.not318, label %.loopexit361.preheader, label %.preheader360

.loopexit361.preheader:                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block559, %vec.epilog.middle.block573, %.preheader360, %bb.y, %bb.z
  %.3219405.ph = phi i32 [ %.3277, %bb.z ], [ 0, %bb.y ], [ 0, %.preheader360 ], [ %.3277, %middle.block559 ], [ %.3277, %vec.epilog.middle.block573 ], [ %.3277, %.lr.ph ], [ %.3277, %.lr.ph.prol.loopexit ]
  %.3224404.ph = phi ptr [ %2, %bb.z ], [ %2, %bb.y ], [ %2, %.preheader360 ], [ %i.bi, %middle.block559 ], [ %i.bp, %vec.epilog.middle.block573 ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.dd, %.lr.ph ]
  br label %.loopexit361

.preheader360:                                    ; preds = %bb.z
  %i.bf = icmp sgt i32 %.3277, 0
  br i1 %i.bf, label %iter.check561, label %.loopexit361.preheader

iter.check561:                                    ; preds = %.preheader360
  %wide.trip.count = zext nneg i32 %.3277 to i64  ; 8 uses
  %min.iters.check546 = icmp ult i32 %.3277, 4
  %or.cond577 = select i1 %min.iters.check546, i1 true, i1 %diff.check548
  br i1 %or.cond577, label %.lr.ph.preheader, label %vector.main.loop.iter.check549

vector.main.loop.iter.check549:                   ; preds = %iter.check561
  %min.iters.check550 = icmp ult i32 %.3277, 16
  br i1 %min.iters.check550, label %vec.epilog.ph565, label %vector.ph551

vector.ph551:                                     ; preds = %vector.main.loop.iter.check549
  %i.bg = and i64 %wide.trip.count, 12
  %n.vec552 = and i64 %wide.trip.count, 2147483632 ; 5 uses
  %i.bh = shl nuw nsw i64 %n.vec552, 1
  %i.bi = getelementptr i8, ptr %2, i64 %i.bh     ; 2 uses
  br label %vector.body553

vector.body553:                                   ; preds = %vector.ph551, %vector.body553
  %index554 = phi i64 [ 0, %vector.ph551 ], [ %index.next558, %vector.body553 ] ; 3 uses
  %i.bj = shl i64 %index554, 1
  %next.gep555 = getelementptr i8, ptr %2, i64 %i.bj ; 2 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %index554 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load556 = load <8 x i16>, ptr %i.bk, align 2, !tbaa !43
  %wide.load557 = load <8 x i16>, ptr %i.bl, align 2, !tbaa !43
  %i.bm = getelementptr i8, ptr %next.gep555, i64 16
  store <8 x i16> %wide.load556, ptr %next.gep555, align 2, !tbaa !43
  store <8 x i16> %wide.load557, ptr %i.bm, align 2, !tbaa !43
  %index.next558 = add nuw i64 %index554, 16      ; 2 uses
  %i.bn = icmp eq i64 %index.next558, %n.vec552
  br i1 %i.bn, label %middle.block559, label %vector.body553, !llvm.loop !27

middle.block559:                                  ; preds = %vector.body553
  %cmp.n560 = icmp eq i64 %n.vec552, %wide.trip.count
  br i1 %cmp.n560, label %.loopexit361.preheader, label %vec.epilog.iter.check562

vec.epilog.iter.check562:                         ; preds = %middle.block559
  %min.epilog.iters.check564 = icmp eq i64 %i.bg, 0
  br i1 %min.epilog.iters.check564, label %.lr.ph.preheader, label %vec.epilog.ph565, !prof !47

vec.epilog.ph565:                                 ; preds = %vector.main.loop.iter.check549, %vec.epilog.iter.check562
  %vec.epilog.resume.val566 = phi i64 [ %n.vec552, %vec.epilog.iter.check562 ], [ 0, %vector.main.loop.iter.check549 ]
  %n.vec567 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %i.bo = shl nuw nsw i64 %n.vec567, 1
  %i.bp = getelementptr i8, ptr %2, i64 %i.bo     ; 2 uses
  br label %vec.epilog.vector.body568

vec.epilog.vector.body568:                        ; preds = %vec.epilog.vector.body568, %vec.epilog.ph565
  %index569 = phi i64 [ %vec.epilog.resume.val566, %vec.epilog.ph565 ], [ %index.next572, %vec.epilog.vector.body568 ] ; 3 uses
  %i.bq = shl i64 %index569, 1
  %next.gep570 = getelementptr i8, ptr %2, i64 %i.bq
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %index569
  %wide.load571 = load <4 x i16>, ptr %i.br, align 2, !tbaa !43
  store <4 x i16> %wide.load571, ptr %next.gep570, align 2, !tbaa !43
  %index.next572 = add nuw i64 %index569, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next572, %n.vec567
  br i1 %i.bs, label %vec.epilog.middle.block573, label %vec.epilog.vector.body568, !llvm.loop !28

vec.epilog.middle.block573:                       ; preds = %vec.epilog.vector.body568
  %cmp.n574 = icmp eq i64 %n.vec567, %wide.trip.count
  br i1 %cmp.n574, label %.loopexit361.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check561, %vec.epilog.iter.check562, %vec.epilog.middle.block573
  %indvars.iv.ph = phi i64 [ 0, %iter.check561 ], [ %n.vec552, %vec.epilog.iter.check562 ], [ %n.vec567, %vec.epilog.middle.block573 ] ; 4 uses
  %.0221383.ph = phi ptr [ %2, %iter.check561 ], [ %i.bi, %vec.epilog.iter.check562 ], [ %i.bp, %vec.epilog.middle.block573 ] ; 2 uses
  %i.bt = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.bt, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.0221383.prol = phi ptr [ %i.bw, %.lr.ph.prol ], [ %.0221383.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %indvars.iv.prol
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !43
  %i.bw = getelementptr inbounds nuw i8, ptr %.0221383.prol, i64 2 ; 3 uses
  store i16 %i.bv, ptr %.0221383.prol, align 2, !tbaa !43
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !29

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.bw, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.0221383.unr = phi ptr [ %.0221383.ph, %.lr.ph.preheader ], [ %i.bw, %.lr.ph.prol ]
  %i.bx = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.by = icmp ugt i64 %i.bx, -8
  br i1 %i.by, label %.loopexit361.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.0221383 = phi ptr [ %i.dd, %.lr.ph ], [ %.0221383.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %indvars.iv
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !43
  %i.cb = getelementptr inbounds nuw i8, ptr %.0221383, i64 2
  store i16 %i.ca, ptr %.0221383, align 2, !tbaa !43
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %indvars.iv
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !43
  %i.cf = getelementptr inbounds nuw i8, ptr %.0221383, i64 4
  store i16 %i.ce, ptr %i.cb, align 2, !tbaa !43
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %indvars.iv
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !43
  %i.cj = getelementptr inbounds nuw i8, ptr %.0221383, i64 6
  store i16 %i.ci, ptr %i.cf, align 2, !tbaa !43
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %indvars.iv
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 6
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !43
  %i.cn = getelementptr inbounds nuw i8, ptr %.0221383, i64 8
  store i16 %i.cm, ptr %i.cj, align 2, !tbaa !43
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %indvars.iv
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !43
  %i.cr = getelementptr inbounds nuw i8, ptr %.0221383, i64 10
  store i16 %i.cq, ptr %i.cn, align 2, !tbaa !43
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %indvars.iv
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 10
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !43
  %i.cv = getelementptr inbounds nuw i8, ptr %.0221383, i64 12
  store i16 %i.cu, ptr %i.cr, align 2, !tbaa !43
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %indvars.iv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !43
  %i.cz = getelementptr inbounds nuw i8, ptr %.0221383, i64 14
  store i16 %i.cy, ptr %i.cv, align 2, !tbaa !43
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %.0281, i64 %indvars.iv
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 14
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !43
  %i.dd = getelementptr inbounds nuw i8, ptr %.0221383, i64 16 ; 2 uses
  store i16 %i.dc, ptr %i.cz, align 2, !tbaa !43
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %.loopexit361.preheader, label %.lr.ph, !llvm.loop !30

bb.aa:                                            ; preds = %bb.cm
  %i.de = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %.not.i339 = icmp eq ptr %i.de, null
  br i1 %.not.i339, label %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @uenum_close_78(ptr noundef nonnull %i.de)
          to label %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #10
  unreachable

_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %.not319 = icmp eq i8 %.3250, 0
  br i1 %.not319, label %bb.co, label %bb.y, !llvm.loop !31

.loopexit361:                                     ; preds = %.loopexit361.preheader, %bb.cm
  %.0200411 = phi i32 [ %.1201, %bb.cm ], [ 0, %.loopexit361.preheader ] ; 5 uses
  %.0202410 = phi i32 [ %.1203, %bb.cm ], [ 0, %.loopexit361.preheader ] ; 5 uses
  %.0204409 = phi i32 [ %.2206, %bb.cm ], [ 0, %.loopexit361.preheader ] ; 7 uses
  %.0207408 = phi i32 [ %.2209, %bb.cm ], [ 0, %.loopexit361.preheader ] ; 5 uses
  %.0210407 = phi i32 [ %.2212, %bb.cm ], [ 0, %.loopexit361.preheader ] ; 3 uses
  %.0213406 = phi i32 [ %.2215, %bb.cm ], [ 0, %.loopexit361.preheader ] ; 3 uses
  %.3219405 = phi i32 [ %.7, %bb.cm ], [ %.3219405.ph, %.loopexit361.preheader ] ; 7 uses
  %.3224404 = phi ptr [ %.17, %bb.cm ], [ %.3224404.ph, %.loopexit361.preheader ]
  %.1248403 = phi i8 [ %.3250, %bb.cm ], [ %.0247, %.loopexit361.preheader ] ; 8 uses
  %.1252402 = phi i8 [ %.3254, %bb.cm ], [ %.0251, %.loopexit361.preheader ] ; 3 uses
  %.1256401 = phi i8 [ %.3258, %bb.cm ], [ %.0255, %.loopexit361.preheader ] ; 3 uses
  %.4278400 = phi i32 [ %.6280, %bb.cm ], [ %.3277, %.loopexit361.preheader ] ; 9 uses
  %.1285399 = phi i32 [ %.7291, %bb.cm ], [ %.3277, %.loopexit361.preheader ] ; 12 uses
  %i.dh = sub nsw i32 %3, %.1285399               ; 2 uses
  %i.di = icmp sgt i32 %i.dh, 0                   ; 4 uses
  %i.dj = sext i32 %.1285399 to i64
  %i.dk = getelementptr inbounds [2 x i8], ptr %2, i64 %i.dj ; 2 uses
  %.4225 = select i1 %i.di, ptr %i.dk, ptr %.3224404 ; 21 uses
  %.0196 = call i32 @llvm.smax.i32(i32 %i.dh, i32 0) ; 16 uses
  %i.dl = icmp eq i32 %.0202410, %.2246
  br i1 %i.dl, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %.loopexit361
  %.not329 = icmp eq i8 %.1256401, 0
  br i1 %.not329, label %bb.cb, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dm = invoke i32 @uloc_getDisplayLanguage_78(ptr noundef %0, ptr noundef %1, ptr noundef %.4225, i32 noundef %.0196, ptr noundef nonnull %4)
          to label %bb.af unwind label %bb.ag     ; 3 uses

bb.af:                                            ; preds = %bb.ae
  %i.dn = add nsw i32 %i.dm, %.1285399
  %i.do = icmp sgt i32 %i.dm, 0
  %i.dp = zext i1 %i.do to i8
  br label %bb.cb

bb.ag:                                            ; preds = %bb.cl, %bb.ae
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.ah:                                            ; preds = %.loopexit361
  %.not320 = icmp eq i8 %.1252402, 0
  br i1 %.not320, label %bb.cb, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  %i.dr = add nsw i32 %.0200411, 1
  switch i32 %.0200411, label %._crit_edge [
    i32 0, label %bb.aj
    i32 1, label %bb.ax
    i32 2, label %bb.ay
    i32 3, label %bb.az
  ]

._crit_edge:                                      ; preds = %bb.ai
  %.pre = load ptr, ptr %8, align 8, !tbaa !26
  br label %bb.bc

bb.aj:                                            ; preds = %bb.ai
  %i.ds = load i32, ptr %4, align 4, !tbaa !10
  %i.dt = icmp slt i32 %i.ds, 1
  br i1 %i.dt, label %bb.ak, label %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.du = icmp eq ptr %.4225, null
  %or.cond.i.i = and i1 %i.di, %i.du
  br i1 %or.cond.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 1, ptr %4, align 4, !tbaa !10
  br label %bb.aw

bb.am:                                            ; preds = %bb.ak
  br i1 %i.bb, label %bb.an, label %.noexc

bb.an:                                            ; preds = %bb.am
  %i.dv = invoke ptr @uloc_getDefault_78()
          to label %.noexc unwind label %bb.bs

.noexc:                                           ; preds = %bb.an, %bb.am
  %.024.i.i = phi ptr [ %0, %bb.am ], [ %i.dv, %bb.an ] ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.dw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.024.i.i) #9
  invoke void @_Z20ulocimp_getScript_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %5, i64 %i.dw, ptr nonnull %.024.i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc340 unwind label %bb.bs

.noexc340:                                        ; preds = %.noexc
  %i.dx = load i32, ptr %i.b, align 4, !tbaa !10
  %i.dy = icmp slt i32 %i.dx, 1
  br i1 %i.dy, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %.noexc340
  store i32 1, ptr %4, align 4, !tbaa !10
  br label %bb.at

bb.ap:                                            ; preds = %bb.as, %bb.ar
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %.body

bb.aq:                                            ; preds = %.noexc340
  %i.ea = load i32, ptr %i.bc, align 8, !tbaa !17
  %.not.i.i = icmp eq i32 %i.ea, 0
  br i1 %.not.i.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.eb = invoke i32 @u_terminateUChars_78(ptr noundef %.4225, i32 noundef range(i32 0, -2147483648) %.0196, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.at unwind label %bb.ap

bb.as:                                            ; preds = %bb.aq
  %i.ec = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.ed = invoke fastcc noundef i32 @_ZN12_GLOBAL__N_119_getStringOrCopyKeyEPKcS1_S1_S1_S1_S1_PDsiR10UErrorCode(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull @_ZN12_GLOBAL__N_19_kScriptsE, ptr noundef null, ptr noundef %i.ec, ptr noundef %i.ec, ptr noundef %.4225, i32 noundef range(i32 0, -2147483648) %.0196, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.at unwind label %bb.ap

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.ao
  %.0.i.i = phi i32 [ 0, %bb.ao ], [ %i.eb, %bb.ar ], [ %i.ed, %bb.as ]
  %i.ee = load i8, ptr %i.bd, align 4, !tbaa !19
  %.not.i.i.i.i.i = icmp eq i8 %i.ee, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ef = load ptr, ptr %5, align 8, !tbaa !18
  invoke void @uprv_free_78(ptr noundef %i.ef)
          to label %_ZN6icu_7810CharStringD2Ev.exit.i.i unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eg = landingpad { ptr, i32 }
          catch ptr null
  %i.eh = extractvalue { ptr, i32 } %i.eg, 0
  call void @__clang_call_terminate(ptr %i.eh) #10
  unreachable

_ZN6icu_7810CharStringD2Ev.exit.i.i:              ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN6icu_7810CharStringD2Ev.exit.i.i, %bb.al
  %.1.i.i = phi i32 [ 0, %bb.al ], [ %.0.i.i, %_ZN6icu_7810CharStringD2Ev.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit

bb.ax:                                            ; preds = %bb.ai
  %i.ei = invoke i32 @uloc_getDisplayCountry_78(ptr noundef %0, ptr noundef %1, ptr noundef %.4225, i32 noundef %.0196, ptr noundef nonnull %4)
          to label %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit unwind label %bb.bs

bb.ay:                                            ; preds = %bb.ai
  %i.ej = invoke i32 @uloc_getDisplayVariant_78(ptr noundef %0, ptr noundef %1, ptr noundef %.4225, i32 noundef %.0196, ptr noundef nonnull %4)
          to label %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit unwind label %bb.bs

bb.az:                                            ; preds = %bb.ai
  %i.ek = invoke ptr @uloc_openKeywords_78(ptr noundef %0, ptr noundef nonnull %4)
          to label %bb.ba unwind label %bb.bs     ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %i.el = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %.not.i341 = icmp eq ptr %i.el, null
  br i1 %.not.i341, label %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void @uenum_close_78(ptr noundef nonnull %i.el)
          to label %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit unwind label %bb.bs

_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit: ; preds = %bb.bb, %bb.ba
  store ptr %i.ek, ptr %8, align 8, !tbaa !26
  br label %bb.bc

bb.bc:                                            ; preds = %._crit_edge, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit
  %i.em = phi ptr [ %.pre, %._crit_edge ], [ %i.ek, %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEE12adoptInsteadEPS2_.exit ]
  %i.en = invoke ptr @uenum_next_78(ptr noundef %i.em, ptr noundef nonnull %i.f, ptr noundef nonnull %4)
          to label %bb.bd unwind label %bb.bs     ; 4 uses

bb.bd:                                            ; preds = %bb.bc
  %.not = icmp eq ptr %i.en, null
  br i1 %.not, label %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.eo = load i32, ptr %4, align 4, !tbaa !10
  %i.ep = icmp slt i32 %i.eo, 1
  br i1 %i.ep, label %bb.bf, label %uloc_getDisplayKeyword_78.exit.thread

bb.bf:                                            ; preds = %bb.be
  %i.eq = icmp eq ptr %.4225, null
  %or.cond.i = and i1 %i.di, %i.eq
  br i1 %or.cond.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 1, ptr %4, align 4, !tbaa !10
  br label %uloc_getDisplayKeyword_78.exit.thread

bb.bh:                                            ; preds = %bb.bf
  %i.er = invoke fastcc noundef i32 @_ZN12_GLOBAL__N_119_getStringOrCopyKeyEPKcS1_S1_S1_S1_S1_PDsiR10UErrorCode(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull @_ZN12_GLOBAL__N_16_kKeysE, ptr noundef null, ptr noundef nonnull %i.en, ptr noundef nonnull %i.en, ptr noundef %.4225, i32 noundef %.0196, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %uloc_getDisplayKeyword_78.exit unwind label %bb.bs ; 5 uses

uloc_getDisplayKeyword_78.exit.thread:            ; preds = %bb.be, %bb.bg
  store i32 0, ptr %i.f, align 4, !tbaa !20
  br label %bb.bm

uloc_getDisplayKeyword_78.exit:                   ; preds = %bb.bh
  store i32 %i.er, ptr %i.f, align 4, !tbaa !20
  %.not321 = icmp eq i32 %i.er, 0
  br i1 %.not321, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %uloc_getDisplayKeyword_78.exit
  %i.es = icmp slt i32 %i.er, %.0196
  br i1 %i.es, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.et = sext i32 %i.er to i64
  %i.eu = getelementptr inbounds [2 x i8], ptr %.4225, i64 %i.et
  store i16 61, ptr %i.eu, align 2, !tbaa !43
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.ev = add nsw i32 %i.er, 1                    ; 3 uses
  store i32 %i.ev, ptr %i.f, align 4, !tbaa !20
  %i.ew = sub nsw i32 %.0196, %i.ev               ; 2 uses
  %i.ex = icmp slt i32 %i.ew, 1
  br i1 %i.ex, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ey = sext i32 %i.ev to i64
  %i.ez = getelementptr inbounds [2 x i8], ptr %.4225, i64 %i.ey
  br label %bb.bm

bb.bm:                                            ; preds = %uloc_getDisplayKeyword_78.exit.thread, %bb.bk, %bb.bl, %uloc_getDisplayKeyword_78.exit
  %.5226 = phi ptr [ %.4225, %uloc_getDisplayKeyword_78.exit ], [ %i.ez, %bb.bl ], [ %.4225, %bb.bk ], [ %.4225, %uloc_getDisplayKeyword_78.exit.thread ] ; 3 uses
  %.1 = phi i32 [ %.0196, %uloc_getDisplayKeyword_78.exit ], [ %i.ew, %bb.bl ], [ 0, %bb.bk ], [ %.0196, %uloc_getDisplayKeyword_78.exit.thread ] ; 2 uses
  %i.fa = load i32, ptr %4, align 4, !tbaa !10
  %i.fb = icmp eq i32 %i.fa, 15
  br i1 %i.fb, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %4, align 4, !tbaa !10
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.fc = invoke i32 @uloc_getDisplayKeywordValue_78(ptr noundef %0, ptr noundef nonnull %i.en, ptr noundef %1, ptr noundef %.5226, i32 noundef %.1, ptr noundef nonnull %4)
          to label %bb.bp unwind label %bb.bs     ; 2 uses

bb.bp:                                            ; preds = %bb.bo
  %i.fd = load i32, ptr %i.f, align 4, !tbaa !20  ; 3 uses
  %.not325 = icmp eq i32 %i.fd, 0
  br i1 %.not325, label %bb.bu, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fe = icmp eq i32 %i.fc, 0
  br i1 %i.fe, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.ff = add nsw i32 %i.fd, -1                   ; 2 uses
  store i32 %i.ff, ptr %i.f, align 4, !tbaa !20
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bh, %bb.bb, %.noexc, %bb.an, %bb.ax, %bb.ay, %bb.az, %bb.bc, %bb.bo
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ap, %bb.bs
  %eh.lpad-body = phi { ptr, i32 } [ %i.fg, %bb.bs ], [ %i.dz, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  br label %bb.cn

bb.bt:                                            ; preds = %bb.br, %bb.bq
  %i.fh = phi i32 [ %i.ff, %bb.br ], [ %i.fd, %bb.bq ]
  %spec.select357 = select i1 %i.di, ptr %i.dk, ptr %.5226
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bp
  %i.fi = phi i32 [ 0, %bb.bp ], [ %i.fh, %bb.bt ]
  %.6227 = phi ptr [ %.5226, %bb.bp ], [ %spec.select357, %bb.bt ]
  %.2 = phi i32 [ %.1, %bb.bp ], [ %.0196, %bb.bt ]
  %i.fj = add nsw i32 %i.fi, %i.fc
  br label %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit

_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit: ; preds = %bb.bu, %bb.bd, %bb.ay, %bb.ax, %bb.aj, %bb.aw
  %i.fk = phi i32 [ %i.ej, %bb.ay ], [ %i.ei, %bb.ax ], [ 0, %bb.aj ], [ %.1.i.i, %bb.aw ], [ %i.fj, %bb.bu ], [ 0, %bb.bd ] ; 3 uses
  %.8 = phi ptr [ %.4225, %bb.ay ], [ %.4225, %bb.ax ], [ %.4225, %bb.aj ], [ %.4225, %bb.aw ], [ %.6227, %bb.bu ], [ %.4225, %bb.bd ] ; 15 uses
  %.1205 = phi i32 [ %.0204409, %bb.ay ], [ %.0204409, %bb.ax ], [ %.1285399, %bb.aj ], [ %.1285399, %bb.aw ], [ %.0204409, %bb.bu ], [ %.0204409, %bb.bd ] ; 3 uses
  %.1198 = phi i1 [ true, %bb.ay ], [ true, %bb.ax ], [ true, %bb.aj ], [ true, %bb.aw ], [ true, %bb.bu ], [ false, %bb.bd ] ; 2 uses
  %.4 = phi i32 [ %.0196, %bb.ay ], [ %.0196, %bb.ax ], [ %.0196, %bb.aj ], [ %.0196, %bb.aw ], [ %.2, %bb.bu ], [ %.0196, %bb.bd ]
  %.8504 = ptrtoaddr ptr %.8 to i64               ; 3 uses
  %i.fl = icmp sgt i32 %i.fk, 0
  br i1 %i.fl, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit
  %i.fm = load i32, ptr %i.c, align 4, !tbaa !20  ; 5 uses
  %i.fn = add nsw i32 %i.fm, %i.fk                ; 2 uses
  %.not328 = icmp sgt i32 %i.fn, %.4
  br i1 %.not328, label %.loopexit359, label %.lr.ph387.preheader.a

.lr.ph387.preheader.a:                            ; preds = %bb.bv
  %i.fo = shl nuw i32 %i.fk, 1
  %.idx = zext i32 %i.fo to i64                   ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.8, i64 %.idx
  %i.fq = add i64 %.8504, %.idx
  %i.fr = add i64 %.8504, 2
  %i.fs = call i64 @llvm.umax.i64(i64 %i.fq, i64 %i.fr)
  %i.ft = xor i64 %.8504, -1
  %i.fu = add i64 %i.fs, %i.ft                    ; 2 uses
  %i.fv = lshr i64 %i.fu, 1
  %i.fw = add nuw i64 %i.fv, 1                    ; 2 uses
  %min.iters.check505 = icmp ult i64 %i.fu, 14
  br i1 %min.iters.check505, label %.lr.ph387.preheader578, label %vector.ph506

vector.ph506:                                     ; preds = %.lr.ph387.preheader.a
  %n.vec507 = and i64 %i.fw, -8                   ; 3 uses
  %i.fx = shl i64 %n.vec507, 1
  %i.fy = getelementptr i8, ptr %.8, i64 %i.fx    ; 2 uses
  br label %vector.body514

vector.body514:                                   ; preds = %pred.store.continue538.a, %vector.ph506
  %index515 = phi i64 [ 0, %vector.ph506 ], [ %index.next539, %pred.store.continue538.a ] ; 2 uses
  %i.fz = shl i64 %index515, 1                    ; 8 uses
  %next.gep516 = getelementptr i8, ptr %.8, i64 %i.fz ; 2 uses
  %i.ga = getelementptr i8, ptr %.8, i64 %i.fz
  %next.gep517 = getelementptr i8, ptr %i.ga, i64 2
  %i.gb = getelementptr i8, ptr %.8, i64 %i.fz
  %next.gep518.a = getelementptr i8, ptr %i.gb, i64 4
  %i.gc = getelementptr i8, ptr %.8, i64 %i.fz
  %next.gep519.a = getelementptr i8, ptr %i.gc, i64 6
  %i.gd = getelementptr i8, ptr %.8, i64 %i.fz
  %next.gep520.a = getelementptr i8, ptr %i.gd, i64 8
  %i.ge = getelementptr i8, ptr %.8, i64 %i.fz
  %next.gep521.a = getelementptr i8, ptr %i.ge, i64 10
  %i.gf = getelementptr i8, ptr %.8, i64 %i.fz
  %next.gep522.a = getelementptr i8, ptr %i.gf, i64 12
  %i.gg = getelementptr i8, ptr %.8, i64 %i.fz
  %next.gep523.a = getelementptr i8, ptr %i.gg, i64 14
  %wide.load524 = load <8 x i16>, ptr %next.gep516, align 2, !tbaa !43 ; 2 uses
  %i.gh = icmp eq <8 x i16> %wide.load524, %broadcast.splat.a ; 2 uses
  %i.gi = icmp eq <8 x i16> %wide.load524, %broadcast.splat509
  %i.gj = or <8 x i1> %i.gi, %i.gh                ; 8 uses
  %predphi.a = select <8 x i1> %i.gh, <8 x i16> %broadcast.splat511.a, <8 x i16> %broadcast.splat513.a ; 8 uses
  %i.gk = extractelement <8 x i1> %i.gj, i64 0
  br i1 %i.gk, label %pred.store.if.a, label %pred.store.continue.a

pred.store.if.a:                                  ; preds = %vector.body514
  %i.gl = extractelement <8 x i16> %predphi.a, i64 0
  store i16 %i.gl, ptr %next.gep516, align 2, !tbaa !43
  br label %pred.store.continue.a

pred.store.continue.a:                            ; preds = %pred.store.if.a, %vector.body514
  %i.gm = extractelement <8 x i1> %i.gj, i64 1
  br i1 %i.gm, label %pred.store.if525, label %pred.store.continue526

pred.store.if525:                                 ; preds = %pred.store.continue.a
  %i.gn = extractelement <8 x i16> %predphi.a, i64 1
  store i16 %i.gn, ptr %next.gep517, align 2, !tbaa !43
  br label %pred.store.continue526

pred.store.continue526:                           ; preds = %pred.store.if525, %pred.store.continue.a
  %i.go = extractelement <8 x i1> %i.gj, i64 2
  br i1 %i.go, label %pred.store.if527, label %pred.store.continue528

pred.store.if527:                                 ; preds = %pred.store.continue526
  %i.gp = extractelement <8 x i16> %predphi.a, i64 2
  store i16 %i.gp, ptr %next.gep518.a, align 2, !tbaa !43
  br label %pred.store.continue528

pred.store.continue528:                           ; preds = %pred.store.if527, %pred.store.continue526
  %i.gq = extractelement <8 x i1> %i.gj, i64 3
  br i1 %i.gq, label %pred.store.if529, label %pred.store.continue530

pred.store.if529:                                 ; preds = %pred.store.continue528
  %i.gr = extractelement <8 x i16> %predphi.a, i64 3
  store i16 %i.gr, ptr %next.gep519.a, align 2, !tbaa !43
  br label %pred.store.continue530

pred.store.continue530:                           ; preds = %pred.store.if529, %pred.store.continue528
  %i.gs = extractelement <8 x i1> %i.gj, i64 4
  br i1 %i.gs, label %pred.store.if531, label %pred.store.continue532

pred.store.if531:                                 ; preds = %pred.store.continue530
  %i.gt = extractelement <8 x i16> %predphi.a, i64 4
  store i16 %i.gt, ptr %next.gep520.a, align 2, !tbaa !43
  br label %pred.store.continue532

pred.store.continue532:                           ; preds = %pred.store.if531, %pred.store.continue530
  %i.gu = extractelement <8 x i1> %i.gj, i64 5
  br i1 %i.gu, label %pred.store.if533, label %pred.store.continue534

pred.store.if533:                                 ; preds = %pred.store.continue532
  %i.gv = extractelement <8 x i16> %predphi.a, i64 5
  store i16 %i.gv, ptr %next.gep521.a, align 2, !tbaa !43
  br label %pred.store.continue534

pred.store.continue534:                           ; preds = %pred.store.if533, %pred.store.continue532
  %i.gw = extractelement <8 x i1> %i.gj, i64 6
  br i1 %i.gw, label %pred.store.if535, label %pred.store.continue536

pred.store.if535:                                 ; preds = %pred.store.continue534
  %i.gx = extractelement <8 x i16> %predphi.a, i64 6
  store i16 %i.gx, ptr %next.gep522.a, align 2, !tbaa !43
  br label %pred.store.continue536

pred.store.continue536:                           ; preds = %pred.store.if535, %pred.store.continue534
  %i.gy = extractelement <8 x i1> %i.gj, i64 7
  br i1 %i.gy, label %pred.store.if537.a, label %pred.store.continue538.a

pred.store.if537.a:                               ; preds = %pred.store.continue536
  %i.gz = extractelement <8 x i16> %predphi.a, i64 7
  store i16 %i.gz, ptr %next.gep523.a, align 2, !tbaa !43
  br label %pred.store.continue538.a

pred.store.continue538.a:                         ; preds = %pred.store.if537.a, %pred.store.continue536
  %index.next539 = add nuw i64 %index515, 8       ; 2 uses
  %i.ha = icmp eq i64 %index.next539, %n.vec507
  br i1 %i.ha, label %middle.block540, label %vector.body514, !llvm.loop !32

middle.block540:                                  ; preds = %pred.store.continue538.a
  %cmp.n541 = icmp eq i64 %i.fw, %n.vec507
  br i1 %cmp.n541, label %.preheader, label %.lr.ph387.preheader578

.lr.ph387.preheader578:                           ; preds = %.lr.ph387.preheader.a, %middle.block540
  %.9386.ph = phi ptr [ %.8, %.lr.ph387.preheader.a ], [ %i.fy, %middle.block540 ]
  br label %.lr.ph387

.preheader:                                       ; preds = %bb.bx, %middle.block540
  %.lcssa455 = phi ptr [ %i.fy, %middle.block540 ], [ %i.hz, %bb.bx ] ; 7 uses
  %i.hb = icmp sgt i32 %i.fm, 0
  br i1 %i.hb, label %iter.check488, label %.loopexit359

iter.check488:                                    ; preds = %.preheader
  %wide.trip.count422 = zext nneg i32 %i.fm to i64 ; 8 uses
  %min.iters.check473 = icmp ult i32 %i.fm, 4
  %i.hc = ptrtoaddr ptr %.lcssa455 to i64
  %.reass = add i64 %i.hc, %invariant.op
  %diff.check475 = icmp ult i64 %.reass, 31
  %or.cond597 = select i1 %min.iters.check473, i1 true, i1 %diff.check475
  br i1 %or.cond597, label %.lr.ph391.preheader, label %vector.main.loop.iter.check476

vector.main.loop.iter.check476:                   ; preds = %iter.check488
  %min.iters.check477 = icmp ult i32 %i.fm, 16
  br i1 %min.iters.check477, label %vec.epilog.ph492, label %vector.ph478

vector.ph478:                                     ; preds = %vector.main.loop.iter.check476
  %i.hd = and i64 %wide.trip.count422, 12
  %n.vec479 = and i64 %wide.trip.count422, 2147483632 ; 5 uses
  %i.he = shl nuw nsw i64 %n.vec479, 1
  %i.hf = getelementptr i8, ptr %.lcssa455, i64 %i.he ; 2 uses
  br label %vector.body480

vector.body480:                                   ; preds = %vector.ph478, %vector.body480
  %index481 = phi i64 [ 0, %vector.ph478 ], [ %index.next485, %vector.body480 ] ; 3 uses
  %i.hg = shl i64 %index481, 1
  %next.gep482 = getelementptr i8, ptr %.lcssa455, i64 %i.hg ; 2 uses
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %index481 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %wide.load483 = load <8 x i16>, ptr %i.hh, align 2, !tbaa !43
  %wide.load484 = load <8 x i16>, ptr %i.hi, align 2, !tbaa !43
  %i.hj = getelementptr i8, ptr %next.gep482, i64 16
  store <8 x i16> %wide.load483, ptr %next.gep482, align 2, !tbaa !43
  store <8 x i16> %wide.load484, ptr %i.hj, align 2, !tbaa !43
  %index.next485 = add nuw i64 %index481, 16      ; 2 uses
  %i.hk = icmp eq i64 %index.next485, %n.vec479
  br i1 %i.hk, label %middle.block486, label %vector.body480, !llvm.loop !33

middle.block486:                                  ; preds = %vector.body480
  %cmp.n487 = icmp eq i64 %n.vec479, %wide.trip.count422
  br i1 %cmp.n487, label %.loopexit359, label %vec.epilog.iter.check489

vec.epilog.iter.check489:                         ; preds = %middle.block486
  %min.epilog.iters.check491 = icmp eq i64 %i.hd, 0
  br i1 %min.epilog.iters.check491, label %.lr.ph391.preheader, label %vec.epilog.ph492, !prof !47

vec.epilog.ph492:                                 ; preds = %vector.main.loop.iter.check476, %vec.epilog.iter.check489
  %vec.epilog.resume.val493 = phi i64 [ %n.vec479, %vec.epilog.iter.check489 ], [ 0, %vector.main.loop.iter.check476 ]
  %n.vec494 = and i64 %wide.trip.count422, 2147483644 ; 4 uses
  %i.hl = shl nuw nsw i64 %n.vec494, 1
  %i.hm = getelementptr i8, ptr %.lcssa455, i64 %i.hl ; 2 uses
  br label %vec.epilog.vector.body495

vec.epilog.vector.body495:                        ; preds = %vec.epilog.vector.body495, %vec.epilog.ph492
  %index496 = phi i64 [ %vec.epilog.resume.val493, %vec.epilog.ph492 ], [ %index.next499, %vec.epilog.vector.body495 ] ; 3 uses
  %i.hn = shl i64 %index496, 1
  %next.gep497 = getelementptr i8, ptr %.lcssa455, i64 %i.hn
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %index496
  %wide.load498 = load <4 x i16>, ptr %i.ho, align 2, !tbaa !43
  store <4 x i16> %wide.load498, ptr %next.gep497, align 2, !tbaa !43
  %index.next499 = add nuw i64 %index496, 4       ; 2 uses
  %i.hp = icmp eq i64 %index.next499, %n.vec494
  br i1 %i.hp, label %vec.epilog.middle.block500, label %vec.epilog.vector.body495, !llvm.loop !34

vec.epilog.middle.block500:                       ; preds = %vec.epilog.vector.body495
  %cmp.n501 = icmp eq i64 %n.vec494, %wide.trip.count422
  br i1 %cmp.n501, label %.loopexit359, label %.lr.ph391.preheader

.lr.ph391.preheader:                              ; preds = %iter.check488, %vec.epilog.iter.check489, %vec.epilog.middle.block500
  %indvars.iv419.ph = phi i64 [ 0, %iter.check488 ], [ %n.vec494, %vec.epilog.middle.block500 ], [ %n.vec479, %vec.epilog.iter.check489 ] ; 4 uses
  %.10389.ph = phi ptr [ %.lcssa455, %iter.check488 ], [ %i.hm, %vec.epilog.middle.block500 ], [ %i.hf, %vec.epilog.iter.check489 ] ; 2 uses
  %i.hq = sub nsw i64 %wide.trip.count422, %indvars.iv419.ph
  %xtraiter584 = and i64 %i.hq, 7                 ; 2 uses
  %lcmp.mod585.not = icmp eq i64 %xtraiter584, 0
  br i1 %lcmp.mod585.not, label %.lr.ph391.prol.loopexit, label %.lr.ph391.prol

.lr.ph391.prol:                                   ; preds = %.lr.ph391.preheader, %.lr.ph391.prol
  %indvars.iv419.prol = phi i64 [ %indvars.iv.next420.prol, %.lr.ph391.prol ], [ %indvars.iv419.ph, %.lr.ph391.preheader ] ; 2 uses
  %.10389.prol = phi ptr [ %i.ht, %.lr.ph391.prol ], [ %.10389.ph, %.lr.ph391.preheader ] ; 2 uses
  %prol.iter586 = phi i64 [ %prol.iter586.next, %.lr.ph391.prol ], [ 0, %.lr.ph391.preheader ]
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %indvars.iv419.prol
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !43
  %i.ht = getelementptr inbounds nuw i8, ptr %.10389.prol, i64 2 ; 3 uses
  store i16 %i.hs, ptr %.10389.prol, align 2, !tbaa !43
  %indvars.iv.next420.prol = add nuw nsw i64 %indvars.iv419.prol, 1 ; 2 uses
  %prol.iter586.next = add i64 %prol.iter586, 1   ; 2 uses
  %prol.iter586.cmp.not = icmp eq i64 %prol.iter586.next, %xtraiter584
  br i1 %prol.iter586.cmp.not, label %.lr.ph391.prol.loopexit, label %.lr.ph391.prol, !llvm.loop !35

.lr.ph391.prol.loopexit:                          ; preds = %.lr.ph391.prol, %.lr.ph391.preheader
  %.lcssa580.unr = phi ptr [ poison, %.lr.ph391.preheader ], [ %i.ht, %.lr.ph391.prol ]
  %indvars.iv419.unr = phi i64 [ %indvars.iv419.ph, %.lr.ph391.preheader ], [ %indvars.iv.next420.prol, %.lr.ph391.prol ]
  %.10389.unr = phi ptr [ %.10389.ph, %.lr.ph391.preheader ], [ %i.ht, %.lr.ph391.prol ]
  %i.hu = sub nsw i64 %indvars.iv419.ph, %wide.trip.count422
  %i.hv = icmp ugt i64 %i.hu, -8
  br i1 %i.hv, label %.loopexit359, label %.lr.ph391

.lr.ph387:                                        ; preds = %.lr.ph387.preheader578, %bb.bx
  %.9386 = phi ptr [ %i.hz, %bb.bx ], [ %.9386.ph, %.lr.ph387.preheader578 ] ; 3 uses
  %i.hw = load i16, ptr %.9386, align 2, !tbaa !43 ; 2 uses
  %i.hx = icmp eq i16 %i.hw, %.2270
  br i1 %i.hx, label %.sink.split, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph387
  %i.hy = icmp eq i16 %i.hw, %.2264
  br i1 %i.hy, label %.sink.split, label %bb.bx

.sink.split:                                      ; preds = %bb.bw, %.lr.ph387
  %.2267.sink = phi i16 [ %.2267, %.lr.ph387 ], [ %.2261, %bb.bw ]
  store i16 %.2267.sink, ptr %.9386, align 2, !tbaa !43
  br label %bb.bx

bb.bx:                                            ; preds = %.sink.split, %bb.bw
  %i.hz = getelementptr inbounds nuw i8, ptr %.9386, i64 2 ; 3 uses
  %i.ia = icmp ult ptr %i.hz, %i.fp
  br i1 %i.ia, label %.lr.ph387, label %.preheader, !llvm.loop !36

.lr.ph391:                                        ; preds = %.lr.ph391.prol.loopexit, %.lr.ph391
  %indvars.iv419 = phi i64 [ %indvars.iv.next420.7, %.lr.ph391 ], [ %indvars.iv419.unr, %.lr.ph391.prol.loopexit ] ; 9 uses
  %.10389 = phi ptr [ %i.jf, %.lr.ph391 ], [ %.10389.unr, %.lr.ph391.prol.loopexit ] ; 9 uses
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %indvars.iv419
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !43
  %i.id = getelementptr inbounds nuw i8, ptr %.10389, i64 2
  store i16 %i.ic, ptr %.10389, align 2, !tbaa !43
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %indvars.iv419
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 2
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !43
  %i.ih = getelementptr inbounds nuw i8, ptr %.10389, i64 4
  store i16 %i.ig, ptr %i.id, align 2, !tbaa !43
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %indvars.iv419
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !43
  %i.il = getelementptr inbounds nuw i8, ptr %.10389, i64 6
  store i16 %i.ik, ptr %i.ih, align 2, !tbaa !43
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %indvars.iv419
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 6
  %i.io = load i16, ptr %i.in, align 2, !tbaa !43
  %i.ip = getelementptr inbounds nuw i8, ptr %.10389, i64 8
  store i16 %i.io, ptr %i.il, align 2, !tbaa !43
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %indvars.iv419
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !43
  %i.it = getelementptr inbounds nuw i8, ptr %.10389, i64 10
  store i16 %i.is, ptr %i.ip, align 2, !tbaa !43
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %indvars.iv419
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 10
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !43
  %i.ix = getelementptr inbounds nuw i8, ptr %.10389, i64 12
  store i16 %i.iw, ptr %i.it, align 2, !tbaa !43
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %indvars.iv419
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 12
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !43
  %i.jb = getelementptr inbounds nuw i8, ptr %.10389, i64 14
  store i16 %i.ja, ptr %i.ix, align 2, !tbaa !43
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %indvars.iv419
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 14
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !43
  %i.jf = getelementptr inbounds nuw i8, ptr %.10389, i64 16 ; 2 uses
  store i16 %i.je, ptr %i.jb, align 2, !tbaa !43
  %indvars.iv.next420.7 = add nuw nsw i64 %indvars.iv419, 8 ; 2 uses
  %exitcond423.not.7 = icmp eq i64 %indvars.iv.next420.7, %wide.trip.count422
  br i1 %exitcond423.not.7, label %.loopexit359, label %.lr.ph391, !llvm.loop !37

.loopexit359:                                     ; preds = %.lr.ph391.prol.loopexit, %.lr.ph391, %middle.block486, %vec.epilog.middle.block500, %.preheader, %bb.bv
  %.11 = phi ptr [ %.8, %bb.bv ], [ %.lcssa455, %.preheader ], [ %i.hm, %vec.epilog.middle.block500 ], [ %i.hf, %middle.block486 ], [ %.lcssa580.unr, %.lr.ph391.prol.loopexit ], [ %i.jf, %.lr.ph391 ]
  %i.jg = add nsw i32 %i.fn, %.1285399
  br label %bb.ca

bb.by:                                            ; preds = %_ZL30uloc_getDisplayScriptInContextPKcS0_PDsiP10UErrorCode.exit
  br i1 %.1198, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %.not327 = icmp eq i32 %.1285399, %.1205
  %i.jh = load i32, ptr %i.c, align 4
  %i.ji = select i1 %.not327, i32 0, i32 %i.jh
  %.3287 = sub nsw i32 %.1285399, %i.ji           ; 2 uses
  %i.jj = sub nsw i32 %.3287, %.1205              ; 2 uses
  %i.jk = icmp sgt i32 %i.jj, 0
  %i.jl = zext i1 %i.jk to i8
  br label %bb.ca

bb.ca:                                            ; preds = %bb.by, %bb.bz, %.loopexit359
  %.4288 = phi i32 [ %i.jg, %.loopexit359 ], [ %.3287, %bb.bz ], [ %.1285399, %bb.by ]
  %.2253 = phi i8 [ 1, %.loopexit359 ], [ %i.jl, %bb.bz ], [ 1, %bb.by ]
  %.12 = phi ptr [ %.11, %.loopexit359 ], [ %.8, %bb.bz ], [ %.8, %bb.by ]
  %.1208 = phi i32 [ %.0207408, %.loopexit359 ], [ %i.jj, %bb.bz ], [ %.0207408, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ah, %bb.ad, %bb.af, %bb.ca
  %.5289 = phi i32 [ %.1285399, %bb.ad ], [ %.4288, %bb.ca ], [ %i.dn, %bb.af ], [ %.1285399, %bb.ah ] ; 5 uses
  %.3258 = phi i8 [ 0, %bb.ad ], [ %.1256401, %bb.ca ], [ %i.dp, %bb.af ], [ %.1256401, %bb.ah ] ; 3 uses
  %.3254 = phi i8 [ %.1252402, %bb.ad ], [ %.2253, %bb.ca ], [ %.1252402, %bb.af ], [ 0, %bb.ah ] ; 3 uses
  %.13 = phi ptr [ %.4225, %bb.ad ], [ %.12, %bb.ca ], [ %.4225, %bb.af ], [ %.4225, %bb.ah ] ; 7 uses
  %.2215 = phi i32 [ %.0213406, %bb.ad ], [ %.0213406, %bb.ca ], [ %i.dm, %bb.af ], [ %.0213406, %bb.ah ] ; 2 uses
  %.2212 = phi i32 [ %.0210407, %bb.ad ], [ %.0210407, %bb.ca ], [ %.1285399, %bb.af ], [ %.0210407, %bb.ah ] ; 2 uses
  %.2209 = phi i32 [ %.0207408, %bb.ad ], [ %.1208, %bb.ca ], [ %.0207408, %bb.af ], [ %.0207408, %bb.ah ] ; 2 uses
  %.2206 = phi i32 [ %.0204409, %bb.ad ], [ %.1205, %bb.ca ], [ %.0204409, %bb.af ], [ %.0204409, %bb.ah ] ; 2 uses
  %.1201 = phi i32 [ %.0200411, %bb.ad ], [ %i.dr, %bb.ca ], [ %.0200411, %bb.af ], [ %.0200411, %bb.ah ]
  %.2199 = phi i1 [ false, %bb.ad ], [ %.1198, %bb.ca ], [ false, %bb.af ], [ false, %bb.ah ]
  %i.jm = load i32, ptr %4, align 4, !tbaa !10
  %i.jn = icmp eq i32 %i.jm, 15
  br i1 %i.jn, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %4, align 4, !tbaa !10
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  br i1 %.2199, label %bb.cm, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jo = icmp ne i8 %.3258, 0                    ; 3 uses
  %i.jp = icmp ne i8 %.3254, 0
  %or.cond8 = select i1 %i.jo, i1 %i.jp, i1 false
  br i1 %or.cond8, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.jq = add nsw i32 %.3219405, 3                ; 3 uses
  %i.jr = icmp eq i32 %.0202410, 0
  %i.js = load i32, ptr %i.d, align 4
  %i.jt = select i1 %i.jr, i32 %.2273, i32 %i.js  ; 2 uses
  %i.ju = sub nsw i32 %i.jt, %i.jq                ; 6 uses
  %i.jv = add nsw i32 %i.ju, %.5289               ; 4 uses
  %.not335 = icmp sgt i32 %i.jv, %3
  br i1 %.not335, label %.loopexit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jw = sext i32 %.5289 to i64                  ; 2 uses
  %i.jx = getelementptr inbounds [2 x i8], ptr %2, i64 %i.jw ; 7 uses
  %i.jy = icmp sgt i32 %i.ju, 0
  br i1 %i.jy, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.cg
  %i.jz = sext i32 %i.jq to i64                   ; 7 uses
  %i.ka = zext nneg i32 %i.ju to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.ju, 4
  br i1 %min.iters.check, label %.lr.ph396.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.kb = shl nsw i64 %i.jw, 1
  %i.kc = shl nsw i64 %i.jz, 1
  %i.kd = add i64 %i.kb, %i.a
  %i.ke = add i64 %i.kc, %.0281460
  %i.kf = sub i64 %i.ke, %i.kd
  %diff.check = icmp ugt i64 %i.kf, -32
  br i1 %diff.check, label %.lr.ph396.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check461 = icmp ult i32 %i.ju, 16
  br i1 %min.iters.check461, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kg = and i64 %i.ka, 12
  %n.vec = and i64 %i.ka, 2147483632              ; 6 uses
  %i.kh = add nsw i64 %n.vec, %i.jz               ; 2 uses
  %i.ki = trunc nuw nsw i64 %n.vec to i32
  %i.kj = shl nuw nsw i64 %n.vec, 1
  %i.kk = getelementptr i8, ptr %i.jx, i64 %i.kj  ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %.0281, i64 %i.jz
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.kl = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.jx, i64 %i.kl ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <8 x i16>, ptr %gep, align 2, !tbaa !43
  %wide.load462 = load <8 x i16>, ptr %i.km, align 2, !tbaa !43
  %i.kn = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !43
  store <8 x i16> %wide.load462, ptr %i.kn, align 2, !tbaa !43
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ko = icmp eq i64 %index.next, %n.vec
  br i1 %i.ko, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ka
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.kg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph396.preheader, label %vec.epilog.ph, !prof !47

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec463 = and i64 %i.ka, 2147483644           ; 5 uses
  %i.kp = add nsw i64 %n.vec463, %i.jz            ; 2 uses
  %i.kq = trunc nuw nsw i64 %n.vec463 to i32
  %i.kr = shl nuw nsw i64 %n.vec463, 1
  %i.ks = getelementptr i8, ptr %i.jx, i64 %i.kr  ; 2 uses
  %invariant.gep595 = getelementptr [2 x i8], ptr %.0281, i64 %i.jz
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index464 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next467, %vec.epilog.vector.body ] ; 3 uses
  %i.kt = shl i64 %index464, 1
  %next.gep465 = getelementptr i8, ptr %i.jx, i64 %i.kt
  %gep596 = getelementptr [2 x i8], ptr %invariant.gep595, i64 %index464
  %wide.load466 = load <4 x i16>, ptr %gep596, align 2, !tbaa !43
  store <4 x i16> %wide.load466, ptr %next.gep465, align 2, !tbaa !43
  %index.next467 = add nuw i64 %index464, 4       ; 2 uses
  %i.ku = icmp eq i64 %index.next467, %n.vec463
  br i1 %i.ku, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !39

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n468 = icmp eq i64 %n.vec463, %i.ka
  br i1 %cmp.n468, label %.loopexit.loopexit, label %.lr.ph396.preheader

.lr.ph396.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv424.ph = phi i64 [ %i.jz, %iter.check ], [ %i.jz, %vector.memcheck ], [ %i.kh, %vec.epilog.iter.check ], [ %i.kp, %vec.epilog.middle.block ]
  %.0395.ph = phi i32 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.ki, %vec.epilog.iter.check ], [ %i.kq, %vec.epilog.middle.block ]
  %.14393.ph = phi ptr [ %i.jx, %iter.check ], [ %i.jx, %vector.memcheck ], [ %i.kk, %vec.epilog.iter.check ], [ %i.ks, %vec.epilog.middle.block ]
  br label %.lr.ph396

.lr.ph396:                                        ; preds = %.lr.ph396.preheader, %.lr.ph396
  %indvars.iv424 = phi i64 [ %indvars.iv.next425, %.lr.ph396 ], [ %indvars.iv424.ph, %.lr.ph396.preheader ] ; 2 uses
  %.0395 = phi i32 [ %i.ky, %.lr.ph396 ], [ %.0395.ph, %.lr.ph396.preheader ]
  %.14393 = phi ptr [ %i.kx, %.lr.ph396 ], [ %.14393.ph, %.lr.ph396.preheader ] ; 2 uses
  %indvars.iv.next425 = add nsw i64 %indvars.iv424, 1 ; 2 uses
  %i.kv = getelementptr inbounds [2 x i8], ptr %.0281, i64 %indvars.iv424
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !43
  %i.kx = getelementptr inbounds nuw i8, ptr %.14393, i64 2 ; 2 uses
  store i16 %i.kw, ptr %.14393, align 2, !tbaa !43
  %i.ky = add nuw nsw i32 %.0395, 1               ; 2 uses
  %exitcond427.not = icmp eq i32 %i.ky, %i.ju
  br i1 %exitcond427.not, label %.loopexit.loopexit, label %.lr.ph396, !llvm.loop !40

bb.ch:                                            ; preds = %bb.ce
  %i.kz = icmp eq i32 %.0202410, 0
  br i1 %i.kz, label %.loopexit, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.la = icmp sgt i32 %.5289, 0
  br i1 %i.la, label %bb.cj, label %.loopexit

bb.cj:                                            ; preds = %bb.ci
  %i.lb = select i1 %i.jo, i32 %.2215, i32 %.2209 ; 5 uses
  %i.lc = icmp eq i32 %.4278400, 0
  %or.cond10.not = select i1 %i.l, i1 true, i1 %i.lc
  br i1 %or.cond10.not, label %.loopexit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ld = add nsw i32 %i.lb, %.4278400
  %.not331 = icmp sgt i32 %i.ld, %3
  br i1 %.not331, label %.loopexit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.le = select i1 %i.jo, i32 %.2212, i32 %.2206
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds [2 x i8], ptr %2, i64 %i.lf
  %i.lh = invoke ptr @u_memmove_78(ptr noundef nonnull %2, ptr noundef nonnull %i.lg, i32 noundef %i.lb)
          to label %.loopexit unwind label %bb.ag ; 0 uses

.loopexit.loopexit:                               ; preds = %.lr.ph396, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next425.lcssa = phi i64 [ %i.kp, %vec.epilog.middle.block ], [ %i.kh, %middle.block ], [ %indvars.iv.next425, %.lr.ph396 ]
  %.lcssa457 = phi ptr [ %i.ks, %vec.epilog.middle.block ], [ %i.kk, %middle.block ], [ %i.kx, %.lr.ph396 ]
  %i.li = trunc nsw i64 %indvars.iv.next425.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.cg, %bb.ck, %bb.ch, %bb.cf, %bb.cj, %bb.cl, %bb.ci
  %.6290 = phi i32 [ %.5289, %bb.ci ], [ %i.lb, %bb.ck ], [ %i.lb, %bb.cl ], [ 0, %bb.ch ], [ %i.lb, %bb.cj ], [ %i.jv, %bb.cf ], [ %i.jv, %bb.cg ], [ %i.jv, %.loopexit.loopexit ]
  %.5279 = phi i32 [ %.4278400, %bb.ci ], [ 0, %bb.ck ], [ %.4278400, %bb.cl ], [ 0, %bb.ch ], [ %.4278400, %bb.cj ], [ %.4278400, %bb.cf ], [ %.4278400, %bb.cg ], [ %.4278400, %.loopexit.loopexit ]
  %.2249 = phi i8 [ %.1248403, %bb.ci ], [ 1, %bb.ck ], [ %.1248403, %bb.cl ], [ %.1248403, %bb.ch ], [ %.1248403, %bb.cj ], [ %.1248403, %bb.cf ], [ %.1248403, %bb.cg ], [ %.1248403, %.loopexit.loopexit ]
  %.16 = phi ptr [ %.13, %bb.ci ], [ %.13, %bb.ck ], [ %.13, %bb.cl ], [ %.13, %bb.ch ], [ %.13, %bb.cj ], [ %.13, %bb.cf ], [ %i.jx, %bb.cg ], [ %.lcssa457, %.loopexit.loopexit ]
  %.6 = phi i32 [ %.3219405, %bb.ci ], [ %.3219405, %bb.ck ], [ %.3219405, %bb.cl ], [ %.3219405, %bb.ch ], [ %.3219405, %bb.cj ], [ %i.jt, %bb.cf ], [ %i.jq, %bb.cg ], [ %i.li, %.loopexit.loopexit ]
  %i.lj = add nuw nsw i32 %.0202410, 1
  br label %bb.cm

bb.cm:                                            ; preds = %.loopexit, %bb.cd
  %.7291 = phi i32 [ %.6290, %.loopexit ], [ %.5289, %bb.cd ] ; 2 uses
  %.6280 = phi i32 [ %.5279, %.loopexit ], [ %.4278400, %bb.cd ] ; 2 uses
  %.3250 = phi i8 [ %.2249, %.loopexit ], [ %.1248403, %bb.cd ] ; 2 uses
  %.17 = phi ptr [ %.16, %.loopexit ], [ %.13, %bb.cd ]
  %.7 = phi i32 [ %.6, %.loopexit ], [ %.3219405, %bb.cd ]
  %.1203 = phi i32 [ %i.lj, %.loopexit ], [ %.0202410, %bb.cd ] ; 2 uses
  %i.lk = icmp slt i32 %.1203, 2
  br i1 %i.lk, label %.loopexit361, label %bb.aa, !llvm.loop !41

bb.cn:                                            ; preds = %.body, %bb.ag
  %.pn332 = phi { ptr, i32 } [ %i.dq, %bb.ag ], [ %eh.lpad-body, %.body ]
  call void @_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.cq

bb.co:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI12UEnumerationXadL_Z14uenum_close_78EEED2Ev.exit
  %i.ll = call i32 @u_terminateUChars_78(ptr noundef %2, i32 noundef %3, i32 noundef %.7291, ptr noundef nonnull %4)
  br label %bb.cp

bb.cp:                                            ; preds = %bb.x, %bb.q, %bb.a, %bb.b, %bb.co, %bb.e
  %.2231 = phi i32 [ 0, %bb.q ], [ 0, %bb.e ], [ %i.ll, %bb.co ], [ 0, %bb.x ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  ret i32 %.2231

bb.cq:                                            ; preds = %bb.cn, %bb.p
  %.pn332.pn = phi { ptr, i32 } [ %.pn332, %bb.cn ], [ %.pn, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  resume { ptr, i32 } %.pn332.pn
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813BreakIterator14getDisplayNameERKNS_6LocaleERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull returned align 8 dereferenceable(64) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786Locale10getDefaultEv()
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_786Locale14getDisplayNameERKS0_RNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813BreakIterator14getDisplayNameERKNS_6LocaleES3_RNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull returned align 8 dereferenceable(64) %2) local_unnamed_addr #0 align 2 {
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

declare i32 @__gxx_personality_v0(...)

declare ptr @ures_getStringByKeyWithFallback_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @ures_close_78(ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #10
  unreachable
}

declare ptr @u_strstr_78(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @u_strncmp_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @u_strchr_78(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

declare ptr @uloc_openKeywords_78(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @uenum_next_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i32 @uloc_getDisplayKeyword_78(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %4, align 4, !tbaa !10
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
  store i32 1, ptr %4, align 4, !tbaa !10
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = tail call fastcc noundef i32 @_ZN12_GLOBAL__N_119_getStringOrCopyKeyEPKcS1_S1_S1_S1_S1_PDsiR10UErrorCode(ptr noundef nonnull @.str, ptr noundef %1, ptr noundef nonnull @_ZN12_GLOBAL__N_16_kKeysE, ptr noundef null, ptr noundef %0, ptr noundef %0, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.f, %bb.e
  %.0 = phi i32 [ %i.g, %bb.f ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define i32 @uloc_getDisplayKeywordValue_78(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.icu_78::CharString", align 8 ; 14 uses
  %7 = alloca %"class.icu_78::CharString", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %8 = alloca %"class.icu_78::internal::LocalOpenPointer", align 8 ; 5 uses
  %9 = alloca %"class.icu_78::internal::LocalOpenPointer", align 8 ; 5 uses
  %10 = alloca %"class.icu_78::internal::LocalOpenPointer", align 8 ; 5 uses
  %i.b = icmp eq ptr %5, null
  br i1 %i.b, label %bb.aw, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %5, align 4, !tbaa !10
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.aw

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i32 %4, 0
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp ne i32 %4, 0
  %i.g = icmp eq ptr %3, null
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %5, align 4, !tbaa !10
  br label %bb.aw

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 13 ; 2 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 40, ptr %i.i, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i8 0, ptr %i.j, align 4, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !17
  store i8 0, ptr %i.h, align 1, !tbaa !11
  %.not54 = icmp eq ptr %1, null
  br i1 %.not54, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load i8, ptr %1, align 1, !tbaa !11
  %.not55 = icmp eq i8 %i.l, 0
  br i1 %.not55, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.m = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9
  invoke void @_Z26ulocimp_getKeywordValue_78PKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %7, ptr noundef %0, i64 %i.m, ptr nonnull %1, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.n = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(60) %6, ptr noundef nonnull align 8 dereferenceable(60) %7) #9 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.p = load i8, ptr %i.o, align 4, !tbaa !19
  %.not.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = load ptr, ptr %7, align 8, !tbaa !18
  invoke void @uprv_free_78(ptr noundef %i.q)
          to label %_ZN6icu_7810CharStringD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #10
  unreachable

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.av

bb.m:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %bb.g, %bb.f
  %i.u = invoke i32 @uprv_stricmp_78(ptr noundef %1, ptr noundef nonnull @_ZN12_GLOBAL__N_110_kCurrencyE)
          to label %bb.n unwind label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.o, label %bb.ar

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.w = invoke ptr @ures_open_78(ptr noundef nonnull @.str.1, ptr noundef %2, ptr noundef nonnull %5)
          to label %bb.p unwind label %bb.w       ; 4 uses

bb.p:                                             ; preds = %bb.o
  store ptr %i.w, ptr %8, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %i.x = invoke ptr @ures_getByKey_78(ptr noundef %i.w, ptr noundef nonnull @_ZN12_GLOBAL__N_112_kCurrenciesE, ptr noundef null, ptr noundef nonnull %5)
          to label %bb.q unwind label %bb.x       ; 4 uses

bb.q:                                             ; preds = %bb.p
  store ptr %i.x, ptr %9, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.y = load ptr, ptr %6, align 8, !tbaa !18
  %i.z = invoke ptr @ures_getByKeyWithFallback_78(ptr noundef %i.x, ptr noundef %i.y, ptr noundef null, ptr noundef nonnull %5)
          to label %bb.r unwind label %bb.y       ; 4 uses

bb.r:                                             ; preds = %bb.q
  store ptr %i.z, ptr %10, align 8, !tbaa !23
  %i.aa = invoke ptr @ures_getStringByIndex_78(ptr noundef %i.z, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %5)
          to label %bb.s unwind label %bb.z       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.ab = load i32, ptr %5, align 4, !tbaa !10    ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 1
  br i1 %i.ac, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ad = icmp eq i32 %i.ab, 2
  br i1 %i.ad, label %bb.u, label %bb.ah

bb.u:                                             ; preds = %bb.t
  store i32 -127, ptr %5, align 4, !tbaa !10
  br label %bb.aa

bb.v:                                             ; preds = %bb.ar, %bb.m
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.w:                                             ; preds = %bb.o
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.x:                                             ; preds = %bb.p
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.y:                                             ; preds = %bb.q
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.z:                                             ; preds = %.invoke, %bb.af, %bb.ac, %bb.r
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #9
  br label %bb.ao

bb.aa:                                            ; preds = %bb.u, %bb.s
  %.not57 = icmp eq ptr %i.aa, null
  br i1 %.not57, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !20  ; 3 uses
  %.not59 = icmp sgt i32 %i.aj, %4
  br i1 %.not59, label %.sink.split, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ak = invoke ptr @u_memcpy_78(ptr noundef %3, ptr noundef nonnull %i.aa, i32 noundef %i.aj)
          to label %bb.ad unwind label %bb.z      ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.al = load i32, ptr %i.a, align 4, !tbaa !20
  br label %.invoke

bb.ae:                                            ; preds = %bb.aa
  %i.am = load i32, ptr %i.k, align 8, !tbaa !17  ; 3 uses
  %.not58 = icmp sgt i32 %i.am, %4
  br i1 %.not58, label %.sink.split, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.an = load ptr, ptr %6, align 8, !tbaa !18
  invoke void @u_charsToUChars_78(ptr noundef %i.an, ptr noundef %3, i32 noundef %i.am)
          to label %bb.ag unwind label %bb.z

bb.ag:                                            ; preds = %bb.af
  %i.ao = load i32, ptr %i.k, align 8, !tbaa !17
  br label %.invoke

.invoke:                                          ; preds = %bb.ad, %bb.ag
  %i.ap = phi i32 [ %i.ao, %bb.ag ], [ %i.al, %bb.ad ]
  %i.aq = invoke i32 @u_terminateUChars_78(ptr noundef %3, i32 noundef %4, i32 noundef %i.ap, ptr noundef nonnull %5)
          to label %bb.ah unwind label %bb.z

.sink.split:                                      ; preds = %bb.ae, %bb.ab
  %.046.ph = phi i32 [ %i.aj, %bb.ab ], [ %i.am, %bb.ae ]
  store i32 15, ptr %5, align 4, !tbaa !10
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split, %.invoke, %bb.t
  %.046 = phi i32 [ 0, %bb.t ], [ %i.aq, %.invoke ], [ %.046.ph, %.sink.split ]
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @ures_close_78(ptr noundef nonnull %i.z)
          to label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  call void @__clang_call_terminate(ptr %i.as) #10
  unreachable

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit: ; preds = %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  %.not.i64 = icmp eq ptr %i.x, null
  br i1 %.not.i64, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit65, label %bb.ak

bb.ak:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit
  invoke void @ures_close_78(ptr noundef nonnull %i.x)
          to label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit65 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #10
  unreachable

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit65: ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  %.not.i66 = icmp eq ptr %i.w, null
  br i1 %.not.i66, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit67, label %bb.am

bb.am:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit65
  invoke void @ures_close_78(ptr noundef nonnull %i.w)
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_119_getStringOrCopyKeyEPKcS1_S1_S1_S1_S1_PDsiR10UErrorCode:bb.a

bb.m:                                             ; preds = %bb.l
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %thread-pre-split61

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %bb.t

thread-pre-split61:                               ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, %bb.m
  %.2.ph = phi ptr [ %i.s, %bb.m ], [ %.051, %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit ]
  %.pr = load i32, ptr %8, align 4, !tbaa !10
  br label %bb.o

bb.o:                                             ; preds = %thread-pre-split61, %bb.j
  %i.u = phi i32 [ %.pr, %thread-pre-split61 ], [ %i.p, %bb.j ]
  %.2 = phi ptr [ %.2.ph, %thread-pre-split61 ], [ %i.o, %bb.j ] ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.w = load i32, ptr %i.a, align 4, !tbaa !20
  %i.x = call i32 @uprv_min_78(i32 noundef %i.w, i32 noundef %7) ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  %i.z = icmp ne ptr %.2, null
  %or.cond5 = select i1 %i.y, i1 %i.z, i1 false
  br i1 %or.cond5, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.aa = call ptr @u_memcpy_78(ptr noundef %6, ptr noundef nonnull %.2, i32 noundef %i.x) ; 0 uses
  br label %bb.s

bb.r:                                             ; preds = %.thread, %bb.o
  %i.ab = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #11
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  store i32 %i.ac, ptr %i.a, align 4, !tbaa !20
  %i.ad = call i32 @uprv_min_78(i32 noundef %i.ac, i32 noundef %7)
  call void @u_charsToUChars_78(ptr noundef nonnull %5, ptr noundef %6, i32 noundef %i.ad)
  store i32 -127, ptr %8, align 4, !tbaa !10
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.r
  %i.ae = load i32, ptr %i.a, align 4, !tbaa !20
  %i.af = call i32 @u_terminateUChars_78(ptr noundef %6, i32 noundef %7, i32 noundef %i.ae, ptr noundef nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.u

bb.t:                                             ; preds = %bb.n, %bb.e
  %.pn = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.t, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  resume { ptr, i32 } %.pn

bb.u:                                             ; preds = %bb.a, %bb.s
  %.052 = phi i32 [ %i.af, %bb.s ], [ 0, %bb.a ]
  ret i32 %.052
}

declare void @_Z26ulocimp_getKeywordValue_78PKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::CharString") align 8, ptr noundef, i64, ptr, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(60)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !19
  %.not.i.i = icmp eq i8 %i.b, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !18
  invoke void @uprv_free_78(ptr noundef %i.c)
          to label %_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #10
  unreachable

_ZN6icu_7815MaybeStackArrayIcLi40EED2Ev.exit:     ; preds = %bb.a, %bb.b
  ret void
}

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
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @uloc_getTableStringWithFallback_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN6icu_786Locale15createCanonicalEPKc(ptr dead_on_unwind writable sret(%"class.icu_78::Locale") align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #4

declare i32 @uprv_min_78(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #9 ; 0 uses
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #1

declare void @ures_close_78(ptr noundef) local_unnamed_addr #1

declare void @uenum_close_78(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"_ZTS10UErrorCode", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{ptr @_Z20ulocimp_getRegion_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode, ptr @_Z20ulocimp_getScript_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode, ptr @_Z21ulocimp_getVariant_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode, ptr @_Z22ulocimp_getLanguage_78St17basic_string_viewIcSt11char_traitsIcEER10UErrorCode}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"_ZTSN6icu_7815MaybeStackArrayIcLi40EEE", !14, i64 0, !6, i64 8, !5, i64 12, !5, i64 13}
!16 = !{!"_ZTSN6icu_7810CharStringE", !15, i64 0, !6, i64 56}
!17 = !{!16, !6, i64 56}
!18 = !{!15, !14, i64 0}
!19 = !{!15, !5, i64 12}
!20 = !{!6, !6, i64 0}
!21 = !{!"p1 _ZTS15UResourceBundle", !13, i64 0}
!22 = !{!"_ZTSN6icu_7816LocalPointerBaseI15UResourceBundleEE", !21, i64 0}
!23 = !{!22, !21, i64 0}
!24 = !{!"p1 _ZTS12UEnumeration", !13, i64 0}
!25 = !{!"_ZTSN6icu_7816LocalPointerBaseI12UEnumerationEE", !24, i64 0}
!26 = !{!25, !24, i64 0}
!27 = distinct !{!27, !44, !45, !46}
!28 = distinct !{!28, !44, !45, !46}
!29 = distinct !{!29, !48}
!30 = distinct !{!30, !44, !45}
!31 = distinct !{!31, !44}
!32 = distinct !{!32, !44, !45, !46}
!33 = distinct !{!33, !44, !45, !46}
!34 = distinct !{!34, !44, !45, !46}
!35 = distinct !{!35, !48}
!36 = distinct !{!36, !44, !46, !45}
!37 = distinct !{!37, !44, !45}
!38 = distinct !{!38, !44, !45, !46}
!39 = distinct !{!39, !44, !45, !46}
!40 = distinct !{!40, !44, !45}
!41 = distinct !{!41, !44}
!42 = !{!"char16_t", !5, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = !{!"branch_weights", i32 4, i32 12}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!15, !6, i64 8}
end_hunk_1
