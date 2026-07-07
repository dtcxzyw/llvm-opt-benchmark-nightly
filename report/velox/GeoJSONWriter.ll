inline.NumInlined: 2522
inline.NumDeleted: 1218
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN13geos_nlohmann6detail8to_charsIdEEPcS2_PKcT_:bb.a
  %or.cond61.i = select i1 %.not.i, i1 true, i1 %.not59.i
  br i1 %or.cond61.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = sext i32 %i.k to i64
  %i.o = getelementptr inbounds i8, ptr %.012, i64 %i.n
  %i.p = sext i32 %i.m to i64
  %i.q = zext nneg i32 %i.l to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.o, i8 48, i64 %i.q, i1 false)
  %i.r = getelementptr inbounds i8, ptr %.012, i64 %i.p ; 3 uses
  store i8 46, ptr %i.r, align 1, !tbaa !10
  %i.s = getelementptr i8, ptr %i.r, i64 1
  store i8 48, ptr %i.s, align 1, !tbaa !10
  %i.t = getelementptr i8, ptr %i.r, i64 2
  br label %_ZN13geos_nlohmann6detail9dtoa_impl13format_bufferEPciiii.exit

bb.g:                                             ; preds = %bb.e
  %i.u = icmp slt i32 %i.m, 1
  %i.v = add i32 %i.m, -16
  %or.cond62.i = icmp ult i32 %i.v, -15
  br i1 %or.cond62.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = zext nneg i32 %i.m to i64                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.012, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = sext i32 %i.k to i64                     ; 2 uses
  %i.aa = sub nsw i64 %i.z, %i.w
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %i.x, i64 %i.aa, i1 false)
  store i8 46, ptr %i.x, align 1, !tbaa !10
  %i.ab = getelementptr i8, ptr %.012, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 1
  br label %_ZN13geos_nlohmann6detail9dtoa_impl13format_bufferEPciiii.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = add i32 %i.m, 3
  %or.cond.i = icmp ult i32 %i.ad, 4
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = sub nsw i32 0, %i.m
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = getelementptr i8, ptr %.012, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 2      ; 2 uses
  %i.ai = sext i32 %i.k to i64                    ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull align 1 %.012, i64 %i.ai, i1 false)
  store i8 48, ptr %.012, align 1, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %.012, i64 1
  store i8 46, ptr %i.aj, align 1, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %.012, i64 2
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ak, i8 48, i64 %i.af, i1 false)
  %i.al = getelementptr i8, ptr %i.ah, i64 %i.ai
  br label %_ZN13geos_nlohmann6detail9dtoa_impl13format_bufferEPciiii.exit

bb.k:                                             ; preds = %bb.i
  %i.am = icmp eq i32 %i.k, 1
  br i1 %i.am, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %.012, i64 2
  %i.ao = getelementptr inbounds nuw i8, ptr %.012, i64 1 ; 2 uses
  %i.ap = sext i32 %i.k to i64                    ; 2 uses
  %i.aq = add nsw i64 %i.ap, -1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull align 1 %i.ao, i64 %i.aq, i1 false)
  store i8 46, ptr %i.ao, align 1, !tbaa !10
  %i.ar = getelementptr i8, ptr %.012, i64 %i.ap
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i = phi ptr [ %i.ar, %bb.l ], [ %.012, %bb.k ] ; 9 uses
  %.056.i = getelementptr i8, ptr %.pn.i, i64 1
  %i.as = getelementptr i8, ptr %.pn.i, i64 2
  store i8 101, ptr %.056.i, align 1, !tbaa !10
  %i.at = add nsw i32 %i.m, -1
  %storemerge.i.i = select i1 %i.u, i8 45, i8 43
  %.0.i.i = call i32 @llvm.abs.i32(i32 %i.at, i1 true) ; 6 uses
  %.023.i.i = getelementptr i8, ptr %.pn.i, i64 3 ; 3 uses
  store i8 %storemerge.i.i, ptr %i.as, align 1, !tbaa !10
  %i.au = icmp samesign ult i32 %.0.i.i, 10
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr i8, ptr %.pn.i, i64 4
  store i8 48, ptr %.023.i.i, align 1, !tbaa !10
  %i.aw = trunc nuw nsw i32 %.0.i.i to i8
  %i.ax = or disjoint i8 %i.aw, 48
  %i.ay = getelementptr i8, ptr %.pn.i, i64 5
  store i8 %i.ax, ptr %i.av, align 1, !tbaa !10
  br label %_ZN13geos_nlohmann6detail9dtoa_impl13format_bufferEPciiii.exit

bb.o:                                             ; preds = %bb.m
  %i.az = icmp samesign ult i32 %.0.i.i, 100
  %i.ba = getelementptr i8, ptr %.pn.i, i64 4     ; 2 uses
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.lhs.trunc.i.i = trunc nuw nsw i32 %.0.i.i to i8 ; 2 uses
  %i.bb = udiv i8 %.lhs.trunc.i.i, 10
  %i.bc = or disjoint i8 %i.bb, 48
  store i8 %i.bc, ptr %.023.i.i, align 1, !tbaa !10
  %i.bd = urem i8 %.lhs.trunc.i.i, 10
  %i.be = or disjoint i8 %i.bd, 48
  %i.bf = getelementptr i8, ptr %.pn.i, i64 5
  store i8 %i.be, ptr %i.ba, align 1, !tbaa !10
  br label %_ZN13geos_nlohmann6detail9dtoa_impl13format_bufferEPciiii.exit

bb.q:                                             ; preds = %bb.o
  %i.bg = udiv i32 %.0.i.i, 100
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = add i8 %i.bh, 48
  store i8 %i.bi, ptr %.023.i.i, align 1, !tbaa !10
  %i.bj = urem i32 %.0.i.i, 100
  %.lhs.trunc28.i.i = trunc nuw nsw i32 %i.bj to i8 ; 2 uses
  %i.bk = udiv i8 %.lhs.trunc28.i.i, 10
  %i.bl = or disjoint i8 %i.bk, 48
  %i.bm = getelementptr i8, ptr %.pn.i, i64 5
  store i8 %i.bl, ptr %i.ba, align 1, !tbaa !10
  %i.bn = urem i8 %.lhs.trunc28.i.i, 10
  %i.bo = or disjoint i8 %i.bn, 48
  %i.bp = getelementptr i8, ptr %.pn.i, i64 6
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !10
  br label %_ZN13geos_nlohmann6detail9dtoa_impl13format_bufferEPciiii.exit

_ZN13geos_nlohmann6detail9dtoa_impl13format_bufferEPciiii.exit: ; preds = %bb.f, %bb.h, %bb.j, %bb.n, %bb.p, %bb.q
  %.0.i = phi ptr [ %i.t, %bb.f ], [ %i.ac, %bb.h ], [ %i.al, %bb.j ], [ %i.ay, %bb.n ], [ %i.bf, %bb.p ], [ %i.bp, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.r

bb.r:                                             ; preds = %_ZN13geos_nlohmann6detail9dtoa_impl13format_bufferEPciiii.exit, %bb.d
  %.0 = phi ptr [ %i.j, %bb.d ], [ %.0.i, %_ZN13geos_nlohmann6detail9dtoa_impl13format_bufferEPciiii.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN13geos_nlohmann6detail9dtoa_impl6grisu2IdEEvPcRiS4_T_(ptr noundef nonnull %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, double noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"struct.geos_nlohmann::detail::dtoa_impl::diyfp", align 8 ; 5 uses
  %5 = alloca %"struct.geos_nlohmann::detail::dtoa_impl::diyfp", align 8 ; 5 uses
  %i.a = bitcast double %3 to i64                 ; 3 uses
  %i.b = lshr i64 %i.a, 52                        ; 2 uses
  %i.c = and i64 %i.a, 4503599627370495           ; 3 uses
  %i.d = icmp eq i64 %i.b, 0                      ; 2 uses
  %i.e = or disjoint i64 %i.c, 4503599627370496
  %i.f = trunc nuw nsw i64 %i.b to i32
  %i.g = add nsw i32 %i.f, -1075
  %.sroa.037.0.i = select i1 %i.d, i64 %i.c, i64 %i.e ; 3 uses
  %.sroa.841.0.i = select i1 %i.d, i32 -1074, i32 %i.g ; 3 uses
  %i.h = shl nuw nsw i64 %.sroa.037.0.i, 1        ; 2 uses
  %i.i = or disjoint i64 %i.h, 1
  %i.j = add nsw i32 %.sroa.841.0.i, -1           ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.0.04.i.i = phi i64 [ %i.k, %.lr.ph.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %.sroa.5.03.i.i = phi i32 [ %i.l, %.lr.ph.i.i ], [ %i.j, %bb.a ] ; 2 uses
  %i.k = shl nuw i64 %.sroa.0.04.i.i, 1           ; 3 uses
  %i.l = add nsw i32 %.sroa.5.03.i.i, -1          ; 3 uses
  %i.m = icmp sgt i64 %i.k, -1
  br i1 %i.m, label %.lr.ph.i.i, label %.lr.ph.i32.i, !llvm.loop !275

.lr.ph.i32.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph.i32.i
  %.sroa.0.04.i33.i = phi i64 [ %i.n, %.lr.ph.i32.i ], [ %.sroa.037.0.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.5.03.i34.i = phi i32 [ %i.o, %.lr.ph.i32.i ], [ %.sroa.841.0.i, %.lr.ph.i.i ]
  %i.n = shl nuw i64 %.sroa.0.04.i33.i, 1         ; 3 uses
  %i.o = add nsw i32 %.sroa.5.03.i34.i, -1        ; 2 uses
  %i.p = icmp sgt i64 %i.n, -1
  br i1 %i.p, label %.lr.ph.i32.i, label %_ZN13geos_nlohmann6detail9dtoa_impl18compute_boundariesIdEENS1_10boundariesET_.exit, !llvm.loop !275

_ZN13geos_nlohmann6detail9dtoa_impl18compute_boundariesIdEENS1_10boundariesET_.exit: ; preds = %.lr.ph.i32.i
  %i.q = icmp eq i64 %i.c, 0
  %i.r = icmp ugt i64 %i.a, 9007199254740991
  %i.s = and i1 %i.r, %i.q                        ; 2 uses
  %i.t = shl nuw nsw i64 %.sroa.037.0.i, 2
  %.sroa.0.0.v.i = select i1 %i.s, i64 %i.t, i64 %i.h
  %.sroa.0.0.i = add nsw i64 %.sroa.0.0.v.i, -1
  %i.u = add nsw i32 %.sroa.841.0.i, -2
  %.sroa.5.0.i = select i1 %i.s, i32 %i.u, i32 %i.j
  %i.v = sub nsw i32 %.sroa.5.0.i, %i.l
  %i.w = zext nneg i32 %i.v to i64
  %i.x = shl i64 %.sroa.0.0.i, %i.w               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.y = sub i32 -60, %.sroa.5.03.i.i             ; 2 uses
  %i.z = mul nsw i32 %i.y, 78913
  %i.aa = sdiv i32 %i.z, 262144
  %i.ab = icmp sgt i32 %i.y, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = add nsw i32 %i.aa, %i.ac
  %i.ae = trunc nsw i32 %i.ad to i16
  %.lhs.trunc.i.i = add nsw i16 %i.ae, 307
  %i.af = sdiv i16 %.lhs.trunc.i.i, 8
  %i.ag = sext i16 %i.af to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr @_ZZN13geos_nlohmann6detail9dtoa_impl36get_cached_power_for_binary_exponentEiE13kCachedPowers, i64 %i.ag ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ah, align 8, !tbaa !62 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 2 uses
  %.sroa.418.8.extract.trunc.i = trunc i64 %.sroa.2.0.copyload.i.i to i32
  %i.ai = and i64 %i.n, 4294967294                ; 2 uses
  %i.aj = lshr i64 %.sroa.0.04.i33.i, 31          ; 2 uses
  %6 = and i64 %.sroa.0.0.copyload.i.i, 4294967295 ; 6 uses
  %7 = lshr i64 %.sroa.0.0.copyload.i.i, 32       ; 6 uses
  %8 = add i32 %.sroa.418.8.extract.trunc.i, 64   ; 2 uses
  %9 = add i32 %8, %i.o
  %i.ak = and i64 %i.x, 4294967295                ; 2 uses
  %i.al = lshr i64 %i.x, 32                       ; 2 uses
  %i.am = mul nuw i64 %6, %i.ak
  %i.an = mul nuw i64 %7, %i.ak                   ; 2 uses
  %i.ao = mul nuw i64 %6, %i.al                   ; 2 uses
  %i.ap = mul nuw i64 %7, %i.al
  %i.aq = lshr i64 %i.am, 32
  %i.ar = and i64 %i.an, 4294967295
  %i.as = lshr i64 %i.an, 32
  %i.at = and i64 %i.ao, 4294967295
  %i.au = lshr i64 %i.ao, 32
  %i.av = add nuw nsw i64 %i.ar, 2147483648
  %i.aw = add nuw nsw i64 %i.av, %i.aq
  %i.ax = add nuw nsw i64 %i.aw, %i.at
  %10 = lshr i64 %i.ax, 32
  %11 = add i32 %8, %i.l                          ; 2 uses
  %12 = and i64 %i.k, 4294967294                  ; 2 uses
  %13 = lshr i64 %.sroa.0.04.i.i, 31              ; 2 uses
  %14 = add nuw i64 %i.ap, 1
  %15 = add nuw i64 %14, %i.au
  %16 = add nuw i64 %15, %i.as
  %17 = add i64 %16, %10
  %i.ay = mul nuw i64 %6, %12
  %i.az = mul nuw i64 %6, %i.ai
  %i.ba = mul nuw i64 %7, %12                     ; 2 uses
  %i.bb = mul nuw i64 %7, %i.ai                   ; 2 uses
  %18 = mul nuw i64 %6, %13                       ; 2 uses
  %19 = mul nuw i64 %6, %i.aj                     ; 2 uses
  %20 = mul nuw i64 %7, %13
  %21 = mul nuw i64 %7, %i.aj
  %22 = insertelement <2 x i64> poison, i64 %i.az, i64 0
  %23 = insertelement <2 x i64> %22, i64 %i.ay, i64 1
  %24 = lshr <2 x i64> %23, splat (i64 32)
  %25 = insertelement <2 x i64> poison, i64 %i.bb, i64 0
  %26 = insertelement <2 x i64> %25, i64 %i.ba, i64 1
  %27 = and <2 x i64> %26, splat (i64 4294967294)
  %i.bc = lshr i64 %i.ba, 32
  %28 = lshr i64 %i.bb, 32
  %29 = insertelement <2 x i64> poison, i64 %19, i64 0
  %30 = insertelement <2 x i64> %29, i64 %18, i64 1
  %31 = and <2 x i64> %30, splat (i64 4294967295)
  %i.bd = lshr i64 %18, 32
  %i.be = lshr i64 %19, 32
  %32 = add nuw nsw <2 x i64> %27, splat (i64 2147483648)
  %33 = add nuw nsw <2 x i64> %32, %24
  %34 = add nuw nsw <2 x i64> %33, %31
  %35 = lshr <2 x i64> %34, splat (i64 32)
  %i.bf = add i64 %20, -1
  %i.bg = add i64 %i.bf, %i.bd
  %i.bh = add nuw i64 %i.be, %21
  %i.bi = add i64 %i.bg, %i.bc
  %i.bj = add nuw i64 %i.bh, %28
  %36 = insertelement <2 x i64> poison, i64 %i.bj, i64 0
  %37 = insertelement <2 x i64> %36, i64 %i.bi, i64 1
  %38 = add <2 x i64> %37, %35                    ; 2 uses
  %.sroa.418.12.extract.shift.i = lshr i64 %.sroa.2.0.copyload.i.i, 32
  %.sroa.418.12.extract.trunc.i = trunc nuw i64 %.sroa.418.12.extract.shift.i to i32
  %i.bk = sub nsw i32 0, %.sroa.418.12.extract.trunc.i
  store i32 %i.bk, ptr %2, align 4, !tbaa !3
  %39 = extractelement <2 x i64> %38, i64 0
  store i64 %39, ptr %4, align 8, !tbaa !62
  %.sroa.416.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %9, ptr %.sroa.416.0..sroa_idx.i4, align 8, !tbaa !3
  %40 = extractelement <2 x i64> %38, i64 1
  store i64 %40, ptr %5, align 8, !tbaa !62
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %11, ptr %.sroa.4.0..sroa_idx.i5, align 8, !tbaa !3
  tail call void @_ZN13geos_nlohmann6detail9dtoa_impl16grisu2_digit_genEPcRiS3_NS1_5diyfpES4_S4_(ptr noundef nonnull %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i64 %17, i32 %11, ptr noundef nonnull byval(%"struct.geos_nlohmann::detail::dtoa_impl::diyfp") align 8 %4, ptr noundef nonnull byval(%"struct.geos_nlohmann::detail::dtoa_impl::diyfp") align 8 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN13geos_nlohmann6detail9dtoa_impl16grisu2_digit_genEPcRiS3_NS1_5diyfpES4_S4_(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i64 %3, i32 %4, ptr noundef byval(%"struct.geos_nlohmann::detail::dtoa_impl::diyfp") align 8 %5, ptr noundef byval(%"struct.geos_nlohmann::detail::dtoa_impl::diyfp") align 8 %6) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = load i64, ptr %6, align 8, !tbaa !276    ; 4 uses
  %i.b = sub i64 %i.a, %3                         ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !278
  %i.e = load i64, ptr %5, align 8, !tbaa !276
  %i.f = sub i64 %i.a, %i.e                       ; 6 uses
  %i.g = sub nsw i32 0, %i.d
  %i.h = zext nneg i32 %i.g to i64                ; 5 uses
  %i.i = shl nuw i64 1, %i.h                      ; 4 uses
  %i.j = lshr i64 %i.a, %i.h
  %i.k = trunc i64 %i.j to i32                    ; 10 uses
  %i.l = add i64 %i.i, -1                         ; 2 uses
  %i.m = and i64 %i.l, %i.a                       ; 2 uses
  %i.n = icmp ugt i32 %i.k, 999999999
  br i1 %i.n, label %_ZN13geos_nlohmann6detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp samesign ugt i32 %i.k, 99999999
  br i1 %i.o, label %_ZN13geos_nlohmann6detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ugt i32 %i.k, 9999999
  br i1 %i.p, label %_ZN13geos_nlohmann6detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = icmp samesign ugt i32 %i.k, 999999
  br i1 %i.q, label %_ZN13geos_nlohmann6detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp samesign ugt i32 %i.k, 99999
  br i1 %i.r, label %_ZN13geos_nlohmann6detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = icmp samesign ugt i32 %i.k, 9999
  br i1 %i.s, label %_ZN13geos_nlohmann6detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = icmp samesign ugt i32 %i.k, 999
  br i1 %i.t, label %_ZN13geos_nlohmann6detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = icmp samesign ugt i32 %i.k, 99
  br i1 %i.u, label %_ZN13geos_nlohmann6detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = icmp samesign ugt i32 %i.k, 9            ; 2 uses
  %..i = select i1 %i.v, i32 10, i32 1
  %.21.i = select i1 %i.v, i32 2, i32 1
  br label %_ZN13geos_nlohmann6detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader

_ZN13geos_nlohmann6detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.056109.ph = phi i32 [ %.21.i, %bb.i ], [ 3, %bb.h ], [ 4, %bb.g ], [ 5, %bb.f ], [ 6, %bb.e ], [ 7, %bb.d ], [ 8, %bb.c ], [ 9, %bb.b ], [ 10, %bb.a ]
  %.077108.ph = phi i32 [ %..i, %bb.i ], [ 100, %bb.h ], [ 1000, %bb.g ], [ 10000, %bb.f ], [ 100000, %bb.e ], [ 1000000, %bb.d ], [ 10000000, %bb.c ], [ 100000000, %bb.b ], [ 1000000000, %bb.a ]
  br label %_ZN13geos_nlohmann6detail9dtoa_impl18find_largest_pow10EjRj.exit

bb.j:                                             ; preds = %_ZN13geos_nlohmann6detail9dtoa_impl12grisu2_roundEPcimmmm.exit
  %i.w = icmp sgt i32 %.056109, 1
  br i1 %i.w, label %_ZN13geos_nlohmann6detail9dtoa_impl18find_largest_pow10EjRj.exit, label %.preheader, !llvm.loop !279

_ZN13geos_nlohmann6detail9dtoa_impl18find_largest_pow10EjRj.exit: ; preds = %_ZN13geos_nlohmann6detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, %bb.j
  %.052110 = phi i32 [ %i.y, %bb.j ], [ %i.k, %_ZN13geos_nlohmann6detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader ] ; 2 uses
  %.056109 = phi i32 [ %i.af, %bb.j ], [ %.056109.ph, %_ZN13geos_nlohmann6detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader ] ; 2 uses
  %.077108 = phi i32 [ %.1, %bb.j ], [ %.077108.ph, %_ZN13geos_nlohmann6detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader ] ; 6 uses
  %i.x = udiv i32 %.052110, %.077108
  %i.y = urem i32 %.052110, %.077108              ; 2 uses
  %i.z = trunc i32 %i.x to i8
  %i.aa = add i8 %i.z, 48
  %i.ab = load i32, ptr %1, align 4, !tbaa !3     ; 2 uses
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %1, align 4, !tbaa !3
  %i.ad = sext i32 %i.ab to i64
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad
  store i8 %i.aa, ptr %i.ae, align 1, !tbaa !10
  %i.af = add nsw i32 %.056109, -1                ; 2 uses
  %i.ag = zext i32 %i.y to i64
  %i.ah = shl i64 %i.ag, %i.h
  %i.ai = add i64 %i.ah, %i.m                     ; 4 uses
  %.not58 = icmp ugt i64 %i.ai, %i.b              ; 2 uses
  br i1 %.not58, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN13geos_nlohmann6detail9dtoa_impl18find_largest_pow10EjRj.exit
  %i.aj = load i32, ptr %2, align 4, !tbaa !3
  %i.ak = add nsw i32 %i.aj, %i.af
  store i32 %i.ak, ptr %2, align 4, !tbaa !3
  %i.al = zext i32 %.077108 to i64
  %i.am = shl i64 %i.al, %i.h                     ; 3 uses
  %i.an = icmp uge i64 %i.ai, %i.f
  %i.ao = sub nuw i64 %i.b, %i.ai
  %.not21.i = icmp ult i64 %i.ao, %i.am
  %or.cond22.i = or i1 %i.an, %.not21.i
  br i1 %or.cond22.i, label %_ZN13geos_nlohmann6detail9dtoa_impl12grisu2_roundEPcimmmm.exit68, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.ap = load i32, ptr %1, align 4, !tbaa !3
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr i8, ptr %0, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 -1     ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.critedge2.i, %.lr.ph.i
  %.023.i = phi i64 [ %i.ai, %.lr.ph.i ], [ %i.at, %.critedge2.i ] ; 2 uses
  %i.at = add i64 %.023.i, %i.am                  ; 5 uses
  %i.au = icmp ult i64 %i.at, %i.f
  br i1 %i.au, label %.critedge2.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = sub i64 %i.f, %.023.i
  %i.aw = sub nuw i64 %i.at, %i.f
  %i.ax = icmp ugt i64 %i.av, %i.aw
  br i1 %i.ax, label %.critedge2.i, label %_ZN13geos_nlohmann6detail9dtoa_impl12grisu2_roundEPcimmmm.exit

.critedge2.i:                                     ; preds = %bb.m, %bb.l
  %i.ay = load i8, ptr %i.as, align 1, !tbaa !10
  %i.az = add i8 %i.ay, -1
  store i8 %i.az, ptr %i.as, align 1, !tbaa !10
  %i.ba = icmp uge i64 %i.at, %i.f
  %i.bb = sub i64 %i.b, %i.at
  %.not.i = icmp ult i64 %i.bb, %i.am
  %or.cond.i = or i1 %i.ba, %.not.i
  br i1 %or.cond.i, label %_ZN13geos_nlohmann6detail9dtoa_impl12grisu2_roundEPcimmmm.exit, label %bb.l, !llvm.loop !280

bb.n:                                             ; preds = %_ZN13geos_nlohmann6detail9dtoa_impl18find_largest_pow10EjRj.exit
  %i.bc = udiv i32 %.077108, 10
  br label %_ZN13geos_nlohmann6detail9dtoa_impl12grisu2_roundEPcimmmm.exit

_ZN13geos_nlohmann6detail9dtoa_impl12grisu2_roundEPcimmmm.exit: ; preds = %.critedge2.i, %bb.m, %bb.n
  %.1 = phi i32 [ %i.bc, %bb.n ], [ %.077108, %bb.m ], [ %.077108, %.critedge2.i ]
  br i1 %.not58, label %bb.j, label %_ZN13geos_nlohmann6detail9dtoa_impl12grisu2_roundEPcimmmm.exit68, !llvm.loop !279

.preheader:                                       ; preds = %bb.j, %.preheader
  %.055 = phi i64 [ %i.bf, %.preheader ], [ %i.m, %bb.j ]
  %.053 = phi i32 [ %i.bm, %.preheader ], [ 0, %bb.j ]
  %.051 = phi i64 [ %i.bo, %.preheader ], [ %i.f, %bb.j ]
  %.0 = phi i64 [ %i.bn, %.preheader ], [ %i.b, %bb.j ]
  %i.bd = mul i64 %.055, 10                       ; 2 uses
  %i.be = lshr i64 %i.bd, %i.h
  %i.bf = and i64 %i.bd, %i.l                     ; 5 uses
  %i.bg = trunc i64 %i.be to i8
  %i.bh = add i8 %i.bg, 48
  %i.bi = load i32, ptr %1, align 4, !tbaa !3     ; 2 uses
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %1, align 4, !tbaa !3
  %i.bk = sext i32 %i.bi to i64
  %i.bl = getelementptr inbounds i8, ptr %0, i64 %i.bk
  store i8 %i.bh, ptr %i.bl, align 1, !tbaa !10
  %i.bm = add nuw nsw i32 %.053, 1                ; 2 uses
  %i.bn = mul i64 %.0, 10                         ; 4 uses
  %i.bo = mul i64 %.051, 10                       ; 6 uses
  %.not = icmp ugt i64 %i.bf, %i.bn
  br i1 %.not, label %.preheader, label %bb.o

bb.o:                                             ; preds = %.preheader
  %i.bp = load i32, ptr %2, align 4, !tbaa !3
  %i.bq = sub nsw i32 %i.bp, %i.bm
  store i32 %i.bq, ptr %2, align 4, !tbaa !3
  %i.br = icmp uge i64 %i.bf, %i.bo
  %i.bs = sub nuw i64 %i.bn, %i.bf
  %.not21.i61 = icmp ult i64 %i.bs, %i.i
  %or.cond22.i62 = or i1 %i.br, %.not21.i61
  br i1 %or.cond22.i62, label %_ZN13geos_nlohmann6detail9dtoa_impl12grisu2_roundEPcimmmm.exit68, label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %bb.o
  %i.bt = load i32, ptr %1, align 4, !tbaa !3
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr i8, ptr %0, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 -1     ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.critedge2.i65, %.lr.ph.i63
  %.023.i64 = phi i64 [ %i.bf, %.lr.ph.i63 ], [ %i.bx, %.critedge2.i65 ] ; 2 uses
  %i.bx = add i64 %.023.i64, %i.i                 ; 5 uses
  %i.by = icmp ult i64 %i.bx, %i.bo
  br i1 %i.by, label %.critedge2.i65, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = sub i64 %i.bo, %.023.i64
  %i.ca = sub nuw i64 %i.bx, %i.bo
  %i.cb = icmp ugt i64 %i.bz, %i.ca
  br i1 %i.cb, label %.critedge2.i65, label %_ZN13geos_nlohmann6detail9dtoa_impl12grisu2_roundEPcimmmm.exit68

.critedge2.i65:                                   ; preds = %bb.q, %bb.p
  %i.cc = load i8, ptr %i.bw, align 1, !tbaa !10
  %i.cd = add i8 %i.cc, -1
  store i8 %i.cd, ptr %i.bw, align 1, !tbaa !10
  %i.ce = icmp uge i64 %i.bx, %i.bo
  %i.cf = sub i64 %i.bn, %i.bx
  %.not.i66 = icmp ult i64 %i.cf, %i.i
  %or.cond.i67 = or i1 %i.ce, %.not.i66
  br i1 %or.cond.i67, label %_ZN13geos_nlohmann6detail9dtoa_impl12grisu2_roundEPcimmmm.exit68, label %bb.p, !llvm.loop !280

_ZN13geos_nlohmann6detail9dtoa_impl12grisu2_roundEPcimmmm.exit68: ; preds = %bb.k, %_ZN13geos_nlohmann6detail9dtoa_impl12grisu2_roundEPcimmmm.exit, %.critedge2.i65, %bb.q, %bb.o
  ret void
end_hunk_0
