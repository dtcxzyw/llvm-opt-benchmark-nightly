Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-deserialization?download=true
inline.NumInlined: 24803
inline.NumDeleted: 2361
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN8nlohmann16json_abi_v3_12_06detail8to_charsIdEEPcS3_PKcT_:bb.a
  store i8 48, ptr %.023.i.i, align 1, !tbaa !46
  %i.aw = trunc nuw nsw i32 %.0.i.i to i8
  %i.ax = or disjoint i8 %i.aw, 48
  %i.ay = getelementptr i8, ptr %.pn.i, i64 5
  store i8 %i.ax, ptr %i.av, align 1, !tbaa !46
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl13format_bufferEPciiii.exit

bb.o:                                             ; preds = %bb.m
  %i.az = icmp samesign ult i32 %.0.i.i, 100
  %i.ba = getelementptr i8, ptr %.pn.i, i64 4     ; 2 uses
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.lhs.trunc.i.i = trunc nuw nsw i32 %.0.i.i to i8 ; 2 uses
  %i.bb = udiv i8 %.lhs.trunc.i.i, 10
  %i.bc = or disjoint i8 %i.bb, 48
  store i8 %i.bc, ptr %.023.i.i, align 1, !tbaa !46
  %i.bd = urem i8 %.lhs.trunc.i.i, 10
  %i.be = or disjoint i8 %i.bd, 48
  %i.bf = getelementptr i8, ptr %.pn.i, i64 5
  store i8 %i.be, ptr %i.ba, align 1, !tbaa !46
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl13format_bufferEPciiii.exit

bb.q:                                             ; preds = %bb.o
  %i.bg = udiv i32 %.0.i.i, 100
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = add i8 %i.bh, 48
  store i8 %i.bi, ptr %.023.i.i, align 1, !tbaa !46
  %i.bj = urem i32 %.0.i.i, 100
  %.lhs.trunc28.i.i = trunc nuw nsw i32 %i.bj to i8 ; 2 uses
  %i.bk = udiv i8 %.lhs.trunc28.i.i, 10
  %i.bl = or disjoint i8 %i.bk, 48
  %i.bm = getelementptr i8, ptr %.pn.i, i64 5
  store i8 %i.bl, ptr %i.ba, align 1, !tbaa !46
  %i.bn = urem i8 %.lhs.trunc28.i.i, 10
  %i.bo = or disjoint i8 %i.bn, 48
  %i.bp = getelementptr i8, ptr %.pn.i, i64 6
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !46
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl13format_bufferEPciiii.exit

_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl13format_bufferEPciiii.exit: ; preds = %bb.f, %bb.h, %bb.j, %bb.n, %bb.p, %bb.q
  %.0.i = phi ptr [ %i.t, %bb.f ], [ %i.ac, %bb.h ], [ %i.al, %bb.j ], [ %i.ay, %bb.n ], [ %i.bf, %bb.p ], [ %i.bp, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.r

bb.r:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl13format_bufferEPciiii.exit, %bb.d
  %.0 = phi ptr [ %i.j, %bb.d ], [ %.0.i, %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl13format_bufferEPciiii.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl6grisu2IdEEvPcRiS5_T_(ptr noundef nonnull %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, double noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %4 = alloca %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::diyfp", align 8 ; 5 uses
  %5 = alloca %"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::diyfp", align 8 ; 5 uses
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
  br i1 %i.m, label %.lr.ph.i.i, label %.lr.ph.i32.i, !llvm.loop !1415

.lr.ph.i32.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph.i32.i
  %.sroa.0.04.i33.i = phi i64 [ %i.n, %.lr.ph.i32.i ], [ %.sroa.037.0.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.5.03.i34.i = phi i32 [ %i.o, %.lr.ph.i32.i ], [ %.sroa.841.0.i, %.lr.ph.i.i ]
  %i.n = shl nuw i64 %.sroa.0.04.i33.i, 1         ; 3 uses
  %i.o = add nsw i32 %.sroa.5.03.i34.i, -1        ; 2 uses
  %i.p = icmp sgt i64 %i.n, -1
  br i1 %i.p, label %.lr.ph.i32.i, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18compute_boundariesIdEENS2_10boundariesET_.exit, !llvm.loop !1415

_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18compute_boundariesIdEENS2_10boundariesET_.exit: ; preds = %.lr.ph.i32.i
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
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr @_ZZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl36get_cached_power_for_binary_exponentEiE13kCachedPowers, i64 %i.ag ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ah, align 8, !tbaa !90 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 2 uses
  %.sroa.418.8.extract.trunc.i = trunc i64 %.sroa.2.0.copyload.i.i to i32
  %i.ai = and i64 %i.n, 4294967294                ; 2 uses
  %i.aj = lshr i64 %.sroa.0.04.i33.i, 31          ; 2 uses
  %i.ak = and i64 %.sroa.0.0.copyload.i.i, 4294967295 ; 6 uses
  %i.al = lshr i64 %.sroa.0.0.copyload.i.i, 32    ; 6 uses
  %i.am = mul nuw i64 %i.ak, %i.ai
  %i.an = mul nuw i64 %i.al, %i.ai                ; 2 uses
  %i.ao = mul nuw i64 %i.ak, %i.aj                ; 2 uses
  %i.ap = mul nuw i64 %i.al, %i.aj
  %i.aq = lshr i64 %i.am, 32
  %i.ar = and i64 %i.an, 4294967294
  %i.as = lshr i64 %i.an, 32
  %i.at = and i64 %i.ao, 4294967295
  %i.au = lshr i64 %i.ao, 32
  %i.av = add nuw nsw i64 %i.ar, 2147483648
  %i.aw = add nuw nsw i64 %i.av, %i.aq
  %i.ax = add nuw nsw i64 %i.aw, %i.at
  %i.ay = add nuw i64 %i.au, %i.ap
  %i.az = add nuw i64 %i.ay, %i.as
  %i.ba = lshr i64 %i.ax, 32
  %i.bb = add nuw i64 %i.az, %i.ba
  %i.bc = add i32 %.sroa.418.8.extract.trunc.i, 64 ; 2 uses
  %i.bd = add i32 %i.bc, %i.o
  %i.be = and i64 %i.x, 4294967295                ; 2 uses
  %i.bf = lshr i64 %i.x, 32                       ; 2 uses
  %i.bg = mul nuw i64 %i.ak, %i.be
  %i.bh = mul nuw i64 %i.al, %i.be                ; 2 uses
  %i.bi = mul nuw i64 %i.ak, %i.bf                ; 2 uses
  %i.bj = mul nuw i64 %i.al, %i.bf
  %i.bk = lshr i64 %i.bg, 32
  %i.bl = and i64 %i.bh, 4294967295
  %i.bm = lshr i64 %i.bh, 32
  %i.bn = and i64 %i.bi, 4294967295
  %i.bo = lshr i64 %i.bi, 32
  %i.bp = add nuw nsw i64 %i.bl, 2147483648
  %i.bq = add nuw nsw i64 %i.bp, %i.bk
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  %i.bs = lshr i64 %i.br, 32
  %i.bt = add i32 %i.bc, %i.l                     ; 2 uses
  %i.bu = and i64 %i.k, 4294967294                ; 2 uses
  %i.bv = lshr i64 %.sroa.0.04.i.i, 31            ; 2 uses
  %i.bw = mul nuw i64 %i.ak, %i.bu
  %i.bx = mul nuw i64 %i.al, %i.bu                ; 2 uses
  %i.by = mul nuw i64 %i.ak, %i.bv                ; 2 uses
  %i.bz = mul nuw i64 %i.al, %i.bv
  %i.ca = lshr i64 %i.bw, 32
  %i.cb = and i64 %i.bx, 4294967294
  %i.cc = lshr i64 %i.bx, 32
  %i.cd = and i64 %i.by, 4294967295
  %i.ce = lshr i64 %i.by, 32
  %i.cf = add nuw nsw i64 %i.cb, 2147483648
  %i.cg = add nuw nsw i64 %i.cf, %i.ca
  %i.ch = add nuw nsw i64 %i.cg, %i.cd
  %i.ci = lshr i64 %i.ch, 32
  %i.cj = add nuw i64 %i.bj, 1
  %i.ck = add nuw i64 %i.cj, %i.bo
  %i.cl = add nuw i64 %i.ck, %i.bm
  %i.cm = add i64 %i.cl, %i.bs
  %i.cn = add i64 %i.bz, -1
  %i.co = add i64 %i.cn, %i.ce
  %i.cp = add i64 %i.co, %i.cc
  %i.cq = add i64 %i.cp, %i.ci
  %.sroa.418.12.extract.shift.i = lshr i64 %.sroa.2.0.copyload.i.i, 32
  %.sroa.418.12.extract.trunc.i = trunc nuw i64 %.sroa.418.12.extract.shift.i to i32
  %i.cr = sub nsw i32 0, %.sroa.418.12.extract.trunc.i
  store i32 %i.cr, ptr %2, align 4, !tbaa !58
  store i64 %i.bb, ptr %4, align 8, !tbaa !90
  %.sroa.416.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.bd, ptr %.sroa.416.0..sroa_idx.i4, align 8, !tbaa !58
  store i64 %i.cq, ptr %5, align 8, !tbaa !90
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.bt, ptr %.sroa.4.0..sroa_idx.i5, align 8, !tbaa !58
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl16grisu2_digit_genEPcRiS4_NS2_5diyfpES5_S5_(ptr noundef nonnull %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i64 %i.cm, i32 %i.bt, ptr noundef nonnull byval(%"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::diyfp") align 8 %4, ptr noundef nonnull byval(%"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::diyfp") align 8 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl16grisu2_digit_genEPcRiS4_NS2_5diyfpES5_S5_(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i64 %3, i32 %4, ptr noundef byval(%"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::diyfp") align 8 %5, ptr noundef byval(%"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::diyfp") align 8 %6) local_unnamed_addr #17 comdat {
bb.a:
  %i.a = load i64, ptr %6, align 8, !tbaa !1419   ; 4 uses
  %i.b = sub i64 %i.a, %3                         ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1420
  %i.e = load i64, ptr %5, align 8, !tbaa !1419
  %i.f = sub i64 %i.a, %i.e                       ; 6 uses
  %i.g = sub nsw i32 0, %i.d
  %i.h = zext nneg i32 %i.g to i64                ; 5 uses
  %i.i = shl nuw i64 1, %i.h                      ; 4 uses
  %i.j = lshr i64 %i.a, %i.h
  %i.k = trunc i64 %i.j to i32                    ; 10 uses
  %i.l = add i64 %i.i, -1                         ; 2 uses
  %i.m = and i64 %i.l, %i.a                       ; 2 uses
  %i.n = icmp ugt i32 %i.k, 999999999
  br i1 %i.n, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp samesign ugt i32 %i.k, 99999999
  br i1 %i.o, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ugt i32 %i.k, 9999999
  br i1 %i.p, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = icmp samesign ugt i32 %i.k, 999999
  br i1 %i.q, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp samesign ugt i32 %i.k, 99999
  br i1 %i.r, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = icmp samesign ugt i32 %i.k, 9999
  br i1 %i.s, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = icmp samesign ugt i32 %i.k, 999
  br i1 %i.t, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = icmp samesign ugt i32 %i.k, 99
  br i1 %i.u, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = icmp samesign ugt i32 %i.k, 9            ; 2 uses
  %..i = select i1 %i.v, i32 10, i32 1
  %.21.i = select i1 %i.v, i32 2, i32 1
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader

_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.054110.ph = phi i32 [ 10, %bb.a ], [ 9, %bb.b ], [ 8, %bb.c ], [ 7, %bb.d ], [ 6, %bb.e ], [ 5, %bb.f ], [ 4, %bb.g ], [ %.21.i, %bb.i ], [ 3, %bb.h ]
  %.077108.ph = phi i32 [ 1000000000, %bb.a ], [ 100000000, %bb.b ], [ 10000000, %bb.c ], [ 1000000, %bb.d ], [ 100000, %bb.e ], [ 10000, %bb.f ], [ 1000, %bb.g ], [ %..i, %bb.i ], [ 100, %bb.h ]
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit

bb.j:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl12grisu2_roundEPcimmmm.exit
  %i.w = icmp sgt i32 %.054110, 1
  br i1 %i.w, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit, label %.preheader, !llvm.loop !1416

_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, %bb.j
  %.054110 = phi i32 [ %i.af, %bb.j ], [ %.054110.ph, %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader ] ; 2 uses
  %.056109 = phi i32 [ %i.y, %bb.j ], [ %i.k, %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader ] ; 2 uses
  %.077108 = phi i32 [ %.1, %bb.j ], [ %.077108.ph, %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader ] ; 6 uses
  %i.x = udiv i32 %.056109, %.077108
  %i.y = urem i32 %.056109, %.077108              ; 2 uses
  %i.z = trunc i32 %i.x to i8
  %i.aa = add i8 %i.z, 48
  %i.ab = load i32, ptr %1, align 4, !tbaa !58    ; 2 uses
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %1, align 4, !tbaa !58
  %i.ad = sext i32 %i.ab to i64
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad
  store i8 %i.aa, ptr %i.ae, align 1, !tbaa !46
  %i.af = add nsw i32 %.054110, -1                ; 2 uses
  %i.ag = zext i32 %i.y to i64
  %i.ah = shl i64 %i.ag, %i.h
  %i.ai = add i64 %i.ah, %i.m                     ; 4 uses
  %.not58 = icmp ugt i64 %i.ai, %i.b              ; 2 uses
  br i1 %.not58, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit
  %i.aj = load i32, ptr %2, align 4, !tbaa !58
  %i.ak = add nsw i32 %i.aj, %i.af
  store i32 %i.ak, ptr %2, align 4, !tbaa !58
  %i.al = zext i32 %.077108 to i64
  %i.am = shl i64 %i.al, %i.h                     ; 3 uses
  %i.an = icmp uge i64 %i.ai, %i.f
  %i.ao = sub nuw i64 %i.b, %i.ai
  %.not21.i = icmp ult i64 %i.ao, %i.am
  %or.cond22.i = or i1 %i.an, %.not21.i
  br i1 %or.cond22.i, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl12grisu2_roundEPcimmmm.exit68, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.ap = load i32, ptr %1, align 4, !tbaa !58
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
  %i.av = sub nuw i64 %i.f, %.023.i
  %i.aw = sub nuw i64 %i.at, %i.f
  %i.ax = icmp ugt i64 %i.av, %i.aw
  br i1 %i.ax, label %.critedge2.i, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl12grisu2_roundEPcimmmm.exit

.critedge2.i:                                     ; preds = %bb.m, %bb.l
  %i.ay = load i8, ptr %i.as, align 1, !tbaa !46
  %i.az = add i8 %i.ay, -1
  store i8 %i.az, ptr %i.as, align 1, !tbaa !46
  %7 = icmp uge i64 %i.at, %i.f
  %i.ba = sub i64 %i.b, %i.at
  %.not.i = icmp ult i64 %i.ba, %i.am
  %or.cond.i = or i1 %7, %.not.i
  br i1 %or.cond.i, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl12grisu2_roundEPcimmmm.exit, label %bb.l, !llvm.loop !1417

bb.n:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit
  %i.bb = udiv i32 %.077108, 10
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl12grisu2_roundEPcimmmm.exit

_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl12grisu2_roundEPcimmmm.exit: ; preds = %.critedge2.i, %bb.m, %bb.n
  %.1 = phi i32 [ %i.bb, %bb.n ], [ %.077108, %bb.m ], [ %.077108, %.critedge2.i ]
  br i1 %.not58, label %bb.j, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl12grisu2_roundEPcimmmm.exit68, !llvm.loop !1416

.preheader:                                       ; preds = %bb.j, %.preheader
  %.055 = phi i64 [ %i.be, %.preheader ], [ %i.m, %bb.j ]
  %.053 = phi i64 [ %i.bn, %.preheader ], [ %i.f, %bb.j ]
  %.051 = phi i32 [ %i.bl, %.preheader ], [ 0, %bb.j ]
  %.0 = phi i64 [ %i.bm, %.preheader ], [ %i.b, %bb.j ]
  %i.bc = mul i64 %.055, 10                       ; 2 uses
  %i.bd = lshr i64 %i.bc, %i.h
  %i.be = and i64 %i.bc, %i.l                     ; 5 uses
  %i.bf = trunc i64 %i.bd to i8
  %i.bg = add i8 %i.bf, 48
  %i.bh = load i32, ptr %1, align 4, !tbaa !58    ; 2 uses
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %1, align 4, !tbaa !58
  %i.bj = sext i32 %i.bh to i64
  %i.bk = getelementptr inbounds i8, ptr %0, i64 %i.bj
  store i8 %i.bg, ptr %i.bk, align 1, !tbaa !46
  %i.bl = add nuw nsw i32 %.051, 1                ; 2 uses
  %i.bm = mul i64 %.0, 10                         ; 4 uses
  %i.bn = mul i64 %.053, 10                       ; 6 uses
  %.not = icmp ugt i64 %i.be, %i.bm
  br i1 %.not, label %.preheader, label %bb.o

bb.o:                                             ; preds = %.preheader
  %i.bo = load i32, ptr %2, align 4, !tbaa !58
  %i.bp = sub nsw i32 %i.bo, %i.bl
  store i32 %i.bp, ptr %2, align 4, !tbaa !58
  %i.bq = icmp uge i64 %i.be, %i.bn
  %i.br = sub nuw i64 %i.bm, %i.be
  %.not21.i61 = icmp ult i64 %i.br, %i.i
  %or.cond22.i62 = or i1 %i.bq, %.not21.i61
  br i1 %or.cond22.i62, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl12grisu2_roundEPcimmmm.exit68, label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %bb.o
  %i.bs = load i32, ptr %1, align 4, !tbaa !58
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr i8, ptr %0, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 -1     ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.critedge2.i65, %.lr.ph.i63
  %.023.i64 = phi i64 [ %i.be, %.lr.ph.i63 ], [ %i.bw, %.critedge2.i65 ] ; 2 uses
  %i.bw = add i64 %.023.i64, %i.i                 ; 5 uses
  %i.bx = icmp ult i64 %i.bw, %i.bn
  br i1 %i.bx, label %.critedge2.i65, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = sub nuw i64 %i.bn, %.023.i64
  %i.bz = sub nuw i64 %i.bw, %i.bn
  %i.ca = icmp ugt i64 %i.by, %i.bz
  br i1 %i.ca, label %.critedge2.i65, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl12grisu2_roundEPcimmmm.exit68

.critedge2.i65:                                   ; preds = %bb.q, %bb.p
  %i.cb = load i8, ptr %i.bv, align 1, !tbaa !46
  %i.cc = add i8 %i.cb, -1
  store i8 %i.cc, ptr %i.bv, align 1, !tbaa !46
  %8 = icmp uge i64 %i.bw, %i.bn
  %i.cd = sub i64 %i.bm, %i.bw
  %.not.i66 = icmp ult i64 %i.cd, %i.i
  %or.cond.i67 = or i1 %8, %.not.i66
  br i1 %or.cond.i67, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl12grisu2_roundEPcimmmm.exit68, label %bb.p, !llvm.loop !1417

_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl12grisu2_roundEPcimmmm.exit68: ; preds = %bb.k, %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl12grisu2_roundEPcimmmm.exit, %.critedge2.i65, %bb.q, %bb.o
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE6createIS9_JRA4_KcEEEPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(4) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !61
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(4) %0) #29 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc.i.i, label %bb.c

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.278) #35
          to label %.noexc unwind label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS7_14adl_serializerESA_IhSaIhEEvE6createIS5_JRA4_KcEEEPT_DpOT0_EUlPS5_E_ED2Ev.exit5

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !117

.noexc11.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt17__throw_bad_allocv() #35
          to label %.noexc2 unwind label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS7_14adl_serializerESA_IhSaIhEEvE6createIS5_JRA4_KcEEEPT_DpOT0_EUlPS5_E_ED2Ev.exit5

.noexc2:                                          ; preds = %.noexc11.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.c
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #32
          to label %.noexc3 unwind label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS7_14adl_serializerESA_IhSaIhEEvE6createIS5_JRA4_KcEEEPT_DpOT0_EUlPS5_E_ED2Ev.exit5 ; 2 uses

.noexc3:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.h, ptr %i.a, align 8, !tbaa !65
  store i64 %i.c, ptr %i.b, align 8, !tbaa !46
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc3, %bb.a
  %i.i = phi ptr [ %i.h, %.noexc3 ], [ %i.b, %bb.a ] ; 3 uses
  switch i64 %i.c, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS7_14adl_serializerESA_IhSaIhEEvE6createIS5_JRA4_KcEEEPT_DpOT0_EUlPS5_E_ED2Ev.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %0, align 1, !tbaa !46
  store i8 %i.j, ptr %i.i, align 1, !tbaa !46
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS7_14adl_serializerESA_IhSaIhEEvE6createIS5_JRA4_KcEEEPT_DpOT0_EUlPS5_E_ED2Ev.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 dereferenceable(4) %0, i64 %i.c, i1 false)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS7_14adl_serializerESA_IhSaIhEEvE6createIS5_JRA4_KcEEEPT_DpOT0_EUlPS5_E_ED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS7_14adl_serializerESA_IhSaIhEEvE6createIS5_JRA4_KcEEEPT_DpOT0_EUlPS5_E_ED2Ev.exit: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !64
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !46
  ret ptr %i.a

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS7_14adl_serializerESA_IhSaIhEEvE6createIS5_JRA4_KcEEEPT_DpOT0_EUlPS5_E_ED2Ev.exit5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc11.i.i, %.noexc.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #33
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS5_blmdSaNS7_14adl_serializerES9_IhSaIhEEvEESt4lessIvESaISt4pairIKS5_SD_EEE7emplaceIJS5_SD_EEESG_ISt17_Rb_tree_iteratorISI_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !322  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !64   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !65
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i

_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i.i, 0        ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !315 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS5_blmdSaNS7_14adl_serializerES9_IhSaIhEEvEESt4lessIvESaISt4pairIKS5_SD_EEE11lower_boundERSH_.exit, label %bb.b, !llvm.loop !15

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS5_blmdSaNS7_14adl_serializerES9_IhSaIhEEvEESt4lessIvESaISt4pairIKS5_SD_EEE11lower_boundERSH_.exit: ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS5_blmdSaNS7_14adl_serializerES9_IhSaIhEEvEESt4lessIvESaISt4pairIKS5_SD_EEE11lower_boundERSH_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !64   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !65
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i.i) #29 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit

_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS5_blmdSaNS7_14adl_serializerES9_IhSaIhEEvEESt4lessIvESaISt4pairIKS5_SD_EEE11lower_boundERSH_.exit, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit
  %.08.lcssa.i.i.i20 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS5_blmdSaNS7_14adl_serializerES9_IhSaIhEEvEESt4lessIvESaISt4pairIKS5_SD_EEE11lower_boundERSH_.exit ], [ %i.c, %bb.a ]
  %i.x = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIvESaISH_EE22_M_emplace_hint_uniqueIJS5_SG_EEESt17_Rb_tree_iteratorISH_ESt23_Rb_tree_const_iteratorISH_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit, %.critedge
  %.sroa.018.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit ]
  %.sroa.3.0 = phi i8 [ 1, %.critedge ], [ 0, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.018.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPKN8nlohmann16json_abi_v3_12_06detail8json_refINS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEN9__gnu_cxx5__ops12_Iter_negateIZNSG_C1ESt16initializer_listISH_EbNS2_7value_tEEUlRSI_E_EEET_ST_ST_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 24
  %i.e = ashr i64 %i.d, 2                         ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.062 = phi i64 [ %i.bs, %bb.e ], [ %i.e, %bb.a ] ; 2 uses
  %.02961 = phi ptr [ %i.br, %bb.e ], [ %0, %bb.a ] ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.02961, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  %..i.i.i.i = select i1 %.not.i.i.i.i, ptr %.02961, ptr %i.h ; 3 uses
  %i.i = load i8, ptr %..i.i.i.i, align 8, !tbaa !45
  %i.j = icmp eq i8 %i.i, 2
  br i1 %i.j, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISG_EEEbNSI_7value_tEEUlRKSK_E_EclIPSN_EEbT_.exit.thread

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i: ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %..i.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !320
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !224
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp eq i64 %i.r, 32
  br i1 %i.s, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISG_EEEbNSI_7value_tEEUlRKSK_E_EclIPSN_EEbT_.exit, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES6_IhSaIhEEvEC1ESt16initializer_listINS3_6detail8json_refISG_EEEbNSI_7value_tEEUlRKSK_E_EclIPSN_EEbT_.exit.thread

end_hunk_0
