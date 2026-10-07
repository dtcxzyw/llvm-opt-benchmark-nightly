Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-algorithms?download=true
inline.NumInlined: 3920
inline.NumDeleted: 1179
loop-unroll.NumCompletelyUnrolled: 209
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 211
begin_hunk_0_@_ZN8nlohmann16json_abi_v3_12_06detail11concat_intoINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA29_KcJS8_RA5_S9_S8_ETnNSt9enable_ifIXsr24detect_string_can_appendIT_T0_EE5valueEiE4typeELi0EEEvRSF_OSG_DpOT1_:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull ptr @_ZN8nlohmann16json_abi_v3_12_06detail8to_charsIdEEPcS3_PKcT_(ptr noundef nonnull %0, ptr noundef nonnull %1, double noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = bitcast double %2 to i64
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = fneg double %2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.013 = phi double [ %i.e, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.012 = phi ptr [ %i.f, %bb.b ], [ %0, %bb.a ]  ; 18 uses
  %i.g = fcmp oeq double %.013, 0.000000e+00
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.012, i64 1
  store i8 48, ptr %.012, align 1, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %.012, i64 2
  store i8 46, ptr %i.h, align 1, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %.012, i64 3
  store i8 48, ptr %i.i, align 1, !tbaa !22
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 0, ptr %i.b, align 4, !tbaa !58
  call void @_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl6grisu2IdEEvPcRiS5_T_(ptr noundef %.012, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, double noundef %.013)
  %i.k = load i32, ptr %i.a, align 4, !tbaa !58   ; 6 uses
  %i.l = load i32, ptr %i.b, align 4, !tbaa !58   ; 3 uses
  %i.m = add nsw i32 %i.l, %i.k                   ; 8 uses
  %.not.i = icmp slt i32 %i.l, 0
  %.not59.i = icmp sgt i32 %i.m, 15
  %or.cond61.i = select i1 %.not.i, i1 true, i1 %.not59.i
  br i1 %or.cond61.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = sext i32 %i.k to i64
  %i.o = getelementptr inbounds i8, ptr %.012, i64 %i.n
  %i.p = sext i32 %i.m to i64
  %i.q = zext nneg i32 %i.l to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.o, i8 48, i64 %i.q, i1 false)
  %i.r = getelementptr inbounds i8, ptr %.012, i64 %i.p ; 3 uses
  store i8 46, ptr %i.r, align 1, !tbaa !22
  %i.s = getelementptr i8, ptr %i.r, i64 1
  store i8 48, ptr %i.s, align 1, !tbaa !22
  %i.t = getelementptr i8, ptr %i.r, i64 2
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl13format_bufferEPciiii.exit

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
  store i8 46, ptr %i.x, align 1, !tbaa !22
  %i.ab = getelementptr i8, ptr %.012, i64 %i.z
  %i.ac = getelementptr i8, ptr %i.ab, i64 1
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl13format_bufferEPciiii.exit

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
  store i8 48, ptr %.012, align 1, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %.012, i64 1
  store i8 46, ptr %i.aj, align 1, !tbaa !22
  %i.ak = getelementptr inbounds nuw i8, ptr %.012, i64 2
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ak, i8 48, i64 %i.af, i1 false)
  %i.al = getelementptr i8, ptr %i.ah, i64 %i.ai
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl13format_bufferEPciiii.exit

bb.k:                                             ; preds = %bb.i
  %i.am = icmp eq i32 %i.k, 1
  br i1 %i.am, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %.012, i64 2
  %i.ao = getelementptr inbounds nuw i8, ptr %.012, i64 1 ; 2 uses
  %i.ap = sext i32 %i.k to i64                    ; 2 uses
  %i.aq = add nsw i64 %i.ap, -1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.an, ptr nonnull align 1 %i.ao, i64 %i.aq, i1 false)
  store i8 46, ptr %i.ao, align 1, !tbaa !22
  %i.ar = getelementptr i8, ptr %.012, i64 %i.ap
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i = phi ptr [ %i.ar, %bb.l ], [ %.012, %bb.k ] ; 9 uses
  %.056.i = getelementptr i8, ptr %.pn.i, i64 1
  %i.as = getelementptr i8, ptr %.pn.i, i64 2
  store i8 101, ptr %.056.i, align 1, !tbaa !22
  %i.at = add nsw i32 %i.m, -1
  %storemerge.i.i = select i1 %i.u, i8 45, i8 43
  %.0.i.i = call i32 @llvm.abs.i32(i32 %i.at, i1 true) ; 6 uses
  %.023.i.i = getelementptr i8, ptr %.pn.i, i64 3 ; 3 uses
  store i8 %storemerge.i.i, ptr %i.as, align 1, !tbaa !22
  %i.au = icmp samesign ult i32 %.0.i.i, 10
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr i8, ptr %.pn.i, i64 4
  store i8 48, ptr %.023.i.i, align 1, !tbaa !22
  %i.aw = trunc nuw nsw i32 %.0.i.i to i8
  %i.ax = or disjoint i8 %i.aw, 48
  %i.ay = getelementptr i8, ptr %.pn.i, i64 5
  store i8 %i.ax, ptr %i.av, align 1, !tbaa !22
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl13format_bufferEPciiii.exit

bb.o:                                             ; preds = %bb.m
  %i.az = icmp samesign ult i32 %.0.i.i, 100
  %i.ba = getelementptr i8, ptr %.pn.i, i64 4     ; 2 uses
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.lhs.trunc.i.i = trunc nuw nsw i32 %.0.i.i to i8 ; 2 uses
  %i.bb = udiv i8 %.lhs.trunc.i.i, 10
  %i.bc = or disjoint i8 %i.bb, 48
  store i8 %i.bc, ptr %.023.i.i, align 1, !tbaa !22
  %i.bd = urem i8 %.lhs.trunc.i.i, 10
  %i.be = or disjoint i8 %i.bd, 48
  %i.bf = getelementptr i8, ptr %.pn.i, i64 5
  store i8 %i.be, ptr %i.ba, align 1, !tbaa !22
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl13format_bufferEPciiii.exit

bb.q:                                             ; preds = %bb.o
  %i.bg = udiv i32 %.0.i.i, 100
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = add i8 %i.bh, 48
  store i8 %i.bi, ptr %.023.i.i, align 1, !tbaa !22
  %i.bj = urem i32 %.0.i.i, 100
  %.lhs.trunc28.i.i = trunc nuw nsw i32 %i.bj to i8 ; 2 uses
  %i.bk = udiv i8 %.lhs.trunc28.i.i, 10
  %i.bl = or disjoint i8 %i.bk, 48
  %i.bm = getelementptr i8, ptr %.pn.i, i64 5
  store i8 %i.bl, ptr %i.ba, align 1, !tbaa !22
  %i.bn = urem i8 %.lhs.trunc28.i.i, 10
  %i.bo = or disjoint i8 %i.bn, 48
  %i.bp = getelementptr i8, ptr %.pn.i, i64 6
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !22
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl13format_bufferEPciiii.exit

_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl13format_bufferEPciiii.exit: ; preds = %bb.f, %bb.h, %bb.j, %bb.n, %bb.p, %bb.q
  %.0.i = phi ptr [ %i.t, %bb.f ], [ %i.ac, %bb.h ], [ %i.al, %bb.j ], [ %i.ay, %bb.n ], [ %i.bf, %bb.p ], [ %i.bp, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
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
  %6 = icmp slt i64 %i.k, 0
  br i1 %6, label %.lr.ph.i32.i, label %.lr.ph.i.i, !llvm.loop !884

.lr.ph.i32.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph.i32.i
  %.sroa.0.04.i33.i = phi i64 [ %i.m, %.lr.ph.i32.i ], [ %.sroa.037.0.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.5.03.i34.i = phi i32 [ %i.n, %.lr.ph.i32.i ], [ %.sroa.841.0.i, %.lr.ph.i.i ]
  %i.m = shl nuw i64 %.sroa.0.04.i33.i, 1         ; 3 uses
  %i.n = add nsw i32 %.sroa.5.03.i34.i, -1        ; 2 uses
  %7 = icmp slt i64 %i.m, 0
  br i1 %7, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18compute_boundariesIdEENS2_10boundariesET_.exit, label %.lr.ph.i32.i, !llvm.loop !884

_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18compute_boundariesIdEENS2_10boundariesET_.exit: ; preds = %.lr.ph.i32.i
  %i.o = icmp eq i64 %i.c, 0
  %i.p = icmp ugt i64 %i.a, 9007199254740991
  %i.q = and i1 %i.p, %i.o                        ; 2 uses
  %i.r = shl nuw nsw i64 %.sroa.037.0.i, 2
  %.sroa.0.0.v.i = select i1 %i.q, i64 %i.r, i64 %i.h
  %.sroa.0.0.i = add nsw i64 %.sroa.0.0.v.i, -1
  %i.s = add nsw i32 %.sroa.841.0.i, -2
  %.sroa.5.0.i = select i1 %i.q, i32 %i.s, i32 %i.j
  %i.t = sub nsw i32 %.sroa.5.0.i, %i.l
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl i64 %.sroa.0.0.i, %i.u               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.w = sub i32 -60, %.sroa.5.03.i.i             ; 2 uses
  %i.x = mul nsw i32 %i.w, 78913
  %i.y = sdiv i32 %i.x, 262144
  %i.z = icmp sgt i32 %i.w, 0
  %i.aa = zext i1 %i.z to i32
  %i.ab = add nsw i32 %i.y, %i.aa
  %i.ac = trunc nsw i32 %i.ab to i16
  %.lhs.trunc.i.i = add nsw i16 %i.ac, 307
  %i.ad = sdiv i16 %.lhs.trunc.i.i, 8
  %i.ae = sext i16 %i.ad to i64
  %i.af = getelementptr inbounds nuw [16 x i8], ptr @_ZZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl36get_cached_power_for_binary_exponentEiE13kCachedPowers, i64 %i.ae ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.af, align 8, !tbaa !44 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !58 ; 2 uses
  %.sroa.418.8.extract.trunc.i = trunc i64 %.sroa.2.0.copyload.i.i to i32
  %i.ag = and i64 %i.m, 4294967294                ; 2 uses
  %i.ah = lshr i64 %.sroa.0.04.i33.i, 31          ; 2 uses
  %i.ai = and i64 %.sroa.0.0.copyload.i.i, 4294967295 ; 6 uses
  %i.aj = lshr i64 %.sroa.0.0.copyload.i.i, 32    ; 6 uses
  %i.ak = mul nuw i64 %i.ai, %i.ag
  %i.al = mul nuw i64 %i.aj, %i.ag                ; 2 uses
  %i.am = mul nuw i64 %i.ai, %i.ah                ; 2 uses
  %i.an = mul nuw i64 %i.aj, %i.ah
  %i.ao = lshr i64 %i.ak, 32
  %i.ap = and i64 %i.al, 4294967294
  %i.aq = lshr i64 %i.al, 32
  %i.ar = and i64 %i.am, 4294967295
  %i.as = lshr i64 %i.am, 32
  %i.at = add nuw nsw i64 %i.ap, 2147483648
  %i.au = add nuw nsw i64 %i.at, %i.ao
  %i.av = add nuw nsw i64 %i.au, %i.ar
  %i.aw = add nuw i64 %i.as, %i.an
  %i.ax = add nuw i64 %i.aw, %i.aq
  %i.ay = lshr i64 %i.av, 32
  %i.az = add nuw i64 %i.ax, %i.ay
  %i.ba = add i32 %.sroa.418.8.extract.trunc.i, 64 ; 2 uses
  %i.bb = add i32 %i.ba, %i.n
  %i.bc = and i64 %i.v, 4294967295                ; 2 uses
  %i.bd = lshr i64 %i.v, 32                       ; 2 uses
  %i.be = mul nuw i64 %i.ai, %i.bc
  %i.bf = mul nuw i64 %i.aj, %i.bc                ; 2 uses
  %i.bg = mul nuw i64 %i.ai, %i.bd                ; 2 uses
  %i.bh = mul nuw i64 %i.aj, %i.bd
  %i.bi = lshr i64 %i.be, 32
  %i.bj = and i64 %i.bf, 4294967295
  %i.bk = lshr i64 %i.bf, 32
  %i.bl = and i64 %i.bg, 4294967295
  %i.bm = lshr i64 %i.bg, 32
  %i.bn = add nuw nsw i64 %i.bj, 2147483648
  %i.bo = add nuw nsw i64 %i.bn, %i.bi
  %i.bp = add nuw nsw i64 %i.bo, %i.bl
  %i.bq = lshr i64 %i.bp, 32
  %i.br = add i32 %i.ba, %i.l                     ; 2 uses
  %i.bs = and i64 %i.k, 4294967294                ; 2 uses
  %i.bt = lshr i64 %.sroa.0.04.i.i, 31            ; 2 uses
  %i.bu = mul nuw i64 %i.ai, %i.bs
  %i.bv = mul nuw i64 %i.aj, %i.bs                ; 2 uses
  %i.bw = mul nuw i64 %i.ai, %i.bt                ; 2 uses
  %i.bx = mul nuw i64 %i.aj, %i.bt
  %i.by = lshr i64 %i.bu, 32
  %i.bz = and i64 %i.bv, 4294967294
  %i.ca = lshr i64 %i.bv, 32
  %i.cb = and i64 %i.bw, 4294967295
  %i.cc = lshr i64 %i.bw, 32
  %i.cd = add nuw nsw i64 %i.bz, 2147483648
  %i.ce = add nuw nsw i64 %i.cd, %i.by
  %i.cf = add nuw nsw i64 %i.ce, %i.cb
  %i.cg = lshr i64 %i.cf, 32
  %i.ch = add nuw i64 %i.bh, 1
  %i.ci = add nuw i64 %i.ch, %i.bm
  %i.cj = add nuw i64 %i.ci, %i.bk
  %i.ck = add i64 %i.cj, %i.bq
  %i.cl = add i64 %i.bx, -1
  %i.cm = add i64 %i.cl, %i.cc
  %i.cn = add i64 %i.cm, %i.ca
  %i.co = add i64 %i.cn, %i.cg
  %.sroa.418.12.extract.shift.i = lshr i64 %.sroa.2.0.copyload.i.i, 32
  %.sroa.418.12.extract.trunc.i = trunc nuw i64 %.sroa.418.12.extract.shift.i to i32
  %i.cp = sub nsw i32 0, %.sroa.418.12.extract.trunc.i
  store i32 %i.cp, ptr %2, align 4, !tbaa !58
  store i64 %i.az, ptr %4, align 8, !tbaa !44
  %.sroa.416.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.bb, ptr %.sroa.416.0..sroa_idx.i4, align 8, !tbaa !58
  store i64 %i.co, ptr %5, align 8, !tbaa !44
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.br, ptr %.sroa.4.0..sroa_idx.i5, align 8, !tbaa !58
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl16grisu2_digit_genEPcRiS4_NS2_5diyfpES5_S5_(ptr noundef nonnull %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i64 %i.ck, i32 %i.br, ptr noundef nonnull byval(%"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::diyfp") align 8 %4, ptr noundef nonnull byval(%"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::diyfp") align 8 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl16grisu2_digit_genEPcRiS4_NS2_5diyfpES5_S5_(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i64 %3, i32 %4, ptr noundef byval(%"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::diyfp") align 8 %5, ptr noundef byval(%"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::diyfp") align 8 %6) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = load i64, ptr %6, align 8, !tbaa !888    ; 4 uses
  %i.b = sub i64 %i.a, %3                         ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !889
  %i.e = load i64, ptr %5, align 8, !tbaa !888
  %i.f = sub i64 %i.a, %i.e                       ; 5 uses
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
  %.054135.ph = phi i32 [ 10, %bb.a ], [ 9, %bb.b ], [ 8, %bb.c ], [ 7, %bb.d ], [ 6, %bb.e ], [ 5, %bb.f ], [ 4, %bb.g ], [ %.21.i, %bb.i ], [ 3, %bb.h ]
  %.078133.ph = phi i32 [ 1000000000, %bb.a ], [ 100000000, %bb.b ], [ 10000000, %bb.c ], [ 1000000, %bb.d ], [ 100000, %bb.e ], [ 10000, %bb.f ], [ 1000, %bb.g ], [ %..i, %bb.i ], [ 100, %bb.h ]
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit

bb.j:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl12grisu2_roundEPcimmmm.exit
  %i.w = icmp sgt i32 %.054135, 1
  br i1 %i.w, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit, label %.preheader, !llvm.loop !885

_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, %bb.j
  %.054135 = phi i32 [ %i.af, %bb.j ], [ %.054135.ph, %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader ] ; 2 uses
  %.056134 = phi i32 [ %i.y, %bb.j ], [ %i.k, %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader ] ; 2 uses
  %.078133 = phi i32 [ %.1, %bb.j ], [ %.078133.ph, %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader ] ; 7 uses
  %i.x = udiv i32 %.056134, %.078133
  %i.y = urem i32 %.056134, %.078133              ; 2 uses
  %i.z = trunc i32 %i.x to i8
  %i.aa = add i8 %i.z, 48
  %i.ab = load i32, ptr %1, align 4, !tbaa !58    ; 2 uses
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %1, align 4, !tbaa !58
  %i.ad = sext i32 %i.ab to i64
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad
  store i8 %i.aa, ptr %i.ae, align 1, !tbaa !22
  %i.af = add nsw i32 %.054135, -1                ; 2 uses
  %i.ag = zext i32 %i.y to i64
  %i.ah = shl i64 %i.ag, %i.h
  %i.ai = add i64 %i.ah, %i.m                     ; 4 uses
  %.not58 = icmp ugt i64 %i.ai, %i.b              ; 2 uses
  br i1 %.not58, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit
  %i.aj = load i32, ptr %2, align 4, !tbaa !58
  %i.ak = add nsw i32 %i.aj, %i.af
  store i32 %i.ak, ptr %2, align 4, !tbaa !58
  %i.al = zext i32 %.078133 to i64
  %i.am = shl i64 %i.al, %i.h                     ; 3 uses
  %i.an = icmp uge i64 %i.ai, %i.f
  %i.ao = sub nuw i64 %i.b, %i.ai
  %.not21.i = icmp ult i64 %i.ao, %i.am
  %or.cond22.i = or i1 %i.an, %.not21.i
end_hunk_0
begin_hunk_1_@_ZSt10__pop_heapIN8nlohmann16json_abi_v3_12_06detail9iter_implINS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEN9__gnu_cxx5__ops15_Iter_less_iterEEvT_SL_SL_RT0_:bb.a
  %i.e = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.j       ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.e, align 8, !tbaa !66    ; 2 uses
  %i.g = load i8, ptr %5, align 8, !tbaa !66
  store i8 %i.g, ptr %i.e, align 8, !tbaa !66
  store i8 %i.f, ptr %5, align 8, !tbaa !66
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = load i64, ptr %i.i, align 8, !tbaa !22
  store i64 %i.j, ptr %i.h, align 8, !tbaa !22
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.i, align 8, !tbaa !22
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i8 noundef zeroext %i.f)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.d, !inline_history !28

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #27, !inline_history !28
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !40
  store ptr %i.m, ptr %6, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !tbaa.struct !45
  %i.p = invoke noundef i64 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEmiERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !76
  store i8 0, ptr %4, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr null, ptr %i.q, align 8, !tbaa !22
  invoke void @_ZSt13__adjust_heapIN8nlohmann16json_abi_v3_12_06detail9iter_implINS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEElSG_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_SM_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(32) %6, i64 noundef 0, i64 noundef %i.p, ptr nofreeobj noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.s = load i8, ptr %7, align 8, !tbaa !27
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef zeroext %i.s)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit3 unwind label %bb.g, !inline_history !28

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #27, !inline_history !28
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit3: ; preds = %bb.f
  %i.v = load i8, ptr %4, align 8, !tbaa !27
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i8 noundef zeroext %i.v)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4 unwind label %bb.h, !inline_history !28

bb.h:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit3
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #27, !inline_history !28
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.i:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit, %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.k ], [ %i.y, %bb.i ], [ %i.z, %bb.j ]
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIN8nlohmann16json_abi_v3_12_06detail9iter_implINS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEElSG_N9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_SM_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr nofreeobj noundef align 8 dereferenceable(16) %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 4 uses
  %5 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 4 uses
  %6 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 5 uses
  %7 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 7 uses
  %8 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 7 uses
  %9 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 5 uses
  %10 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 7 uses
  %11 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 7 uses
  %12 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_val", align 1 ; 4 uses
  %13 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 3 uses
  %14 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 5 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %.02232 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit ] ; 2 uses
  %i.j = shl i64 %.02232, 1                       ; 2 uses
  %i.k = add i64 %i.j, 2                          ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !941)
  %i.l = load ptr, ptr %0, align 8, !tbaa !40, !noalias !941
  store ptr %i.l, ptr %4, align 8, !tbaa !40, !alias.scope !941
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !45
  %i.m = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEpLEl(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.k) ; 0 uses
  %i.n = or disjoint i64 %i.j, 1                  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !942)
  %i.o = load ptr, ptr %0, align 8, !tbaa !40, !noalias !942
  store ptr %i.o, ptr %5, align 8, !tbaa !40, !alias.scope !942
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !45
  %i.p = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEpLEl(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.n) ; 0 uses
  %i.q = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.r = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
  %i.s = call noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_0ltERKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEESF_(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.r) #26
  %spec.select = select i1 %i.s, i64 %i.n, i64 %i.k ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !943)
  %i.t = load ptr, ptr %0, align 8, !tbaa !40, !noalias !943
  store ptr %i.t, ptr %7, align 8, !tbaa !40, !alias.scope !943
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !45
  %i.u = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEpLEl(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %spec.select) ; 0 uses
  %i.v = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %7) ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !76
  store i8 0, ptr %i.v, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr null, ptr %i.w, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !944)
  %i.x = load ptr, ptr %0, align 8, !tbaa !40, !noalias !944
  store ptr %i.x, ptr %8, align 8, !tbaa !40, !alias.scope !944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !45
  %i.y = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEpLEl(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %.02232)
          to label %_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEplEl.exit unwind label %bb.e ; 0 uses

_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEplEl.exit: ; preds = %bb.b
  %i.z = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.c unwind label %bb.e       ; 3 uses

bb.c:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEplEl.exit
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !66   ; 2 uses
  %i.ab = load i8, ptr %6, align 8, !tbaa !66
  store i8 %i.ab, ptr %i.z, align 8, !tbaa !66
  store i8 %i.aa, ptr %6, align 8, !tbaa !66
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ac, align 8, !tbaa !22
  %i.ad = load i64, ptr %i.i, align 8, !tbaa !22
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !22
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.i, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i8 noundef zeroext %i.aa)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.d, !inline_history !28

bb.d:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #27, !inline_history !28
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.ag = icmp slt i64 %spec.select, %i.b
  br i1 %i.ag, label %bb.b, label %._crit_edge, !llvm.loop !936

bb.e:                                             ; preds = %bb.b, %_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEplEl.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.o

._crit_edge:                                      ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit, %bb.a
  %.022.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit ] ; 5 uses
  %15 = trunc i64 %2 to i1
  br i1 %15, label %bb.k, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ai = add nsw i64 %2, -2
  %i.aj = ashr exact i64 %i.ai, 1
  %i.ak = icmp eq i64 %.022.lcssa, %i.aj
  br i1 %i.ak, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.al = shl nsw i64 %.022.lcssa, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !945)
  %i.an = load ptr, ptr %0, align 8, !tbaa !40, !noalias !945
  store ptr %i.an, ptr %10, align 8, !tbaa !40, !alias.scope !945
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !tbaa.struct !45
  %i.aq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEpLEl(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.am) ; 0 uses
  %i.ar = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %10) ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !tbaa.struct !76
  store i8 0, ptr %i.ar, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr null, ptr %i.as, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !946)
  %i.at = load ptr, ptr %0, align 8, !tbaa !40, !noalias !946
  store ptr %i.at, ptr %11, align 8, !tbaa !40, !alias.scope !946
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !tbaa.struct !45
  %i.av = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEpLEl(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %.022.lcssa)
          to label %_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEplEl.exit26 unwind label %bb.j ; 0 uses

_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEplEl.exit26: ; preds = %bb.g
  %i.aw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.h unwind label %bb.j       ; 3 uses

bb.h:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEplEl.exit26
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !66  ; 2 uses
  %i.ay = load i8, ptr %9, align 8, !tbaa !66
  store i8 %i.ay, ptr %i.aw, align 8, !tbaa !66
  store i8 %i.ax, ptr %9, align 8, !tbaa !66
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i27 = load ptr, ptr %i.az, align 8, !tbaa !22
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !22
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !22
  store ptr %.sroa.0.0.copyload.i.i27, ptr %i.ba, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, i8 noundef zeroext %i.ax)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit28 unwind label %bb.i, !inline_history !28

bb.i:                                             ; preds = %bb.h
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #27, !inline_history !28
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit28: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.k

bb.j:                                             ; preds = %bb.g, %_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEplEl.exit26
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.o

bb.k:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit28, %bb.f, %._crit_edge
  %.124 = phi i64 [ %i.am, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit28 ], [ %.022.lcssa, %bb.f ], [ %.022.lcssa, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.bf = load ptr, ptr %0, align 8, !tbaa !40
  store ptr %i.bf, ptr %13, align 8, !tbaa !40
  %i.bg = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !tbaa.struct !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !76
  store i8 0, ptr %3, align 8, !tbaa !21
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !22
  invoke void @_ZSt11__push_heapIN8nlohmann16json_abi_v3_12_06detail9iter_implINS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEElSG_N9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_SM_T1_RT2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(32) %13, i64 noundef %.124, i64 noundef %1, ptr nofreeobj noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bk = load i8, ptr %14, align 8, !tbaa !27
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, i8 noundef zeroext %i.bk)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit29 unwind label %bb.m, !inline_history !28

bb.m:                                             ; preds = %bb.l
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #27, !inline_history !28
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit29: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  ret void

bb.n:                                             ; preds = %bb.k
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.e ], [ %i.bn, %bb.n ], [ %i.be, %bb.j ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIN8nlohmann16json_abi_v3_12_06detail9iter_implINS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEElSG_N9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_SM_T1_RT2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr nofreeobj noundef align 8 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 4 uses
  %6 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 5 uses
  %7 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 7 uses
  %8 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 7 uses
  %9 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 5 uses
  %10 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 7 uses
  %i.a = icmp sgt i64 %1, %2
  br i1 %i.a, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %.01322 = phi i64 [ %1, %.lr.ph ], [ %.01223, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit ] ; 3 uses
  %.01223.in = add nsw i64 %.01322, -1
  %.01223 = sdiv i64 %.01223.in, 2                ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !956)
  %i.g = load ptr, ptr %0, align 8, !tbaa !40, !noalias !956
  store ptr %i.g, ptr %5, align 8, !tbaa !40, !alias.scope !956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !45
  %i.h = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEpLEl(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %.01223) ; 0 uses
  %i.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %5)
  %i.j = call noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_0ltERKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEESF_(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %3) #26
  br i1 %i.j, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !957)
  %i.k = load ptr, ptr %0, align 8, !tbaa !40, !noalias !957
  store ptr %i.k, ptr %7, align 8, !tbaa !40, !alias.scope !957
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !45
  %i.l = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEpLEl(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %.01223) ; 0 uses
  %i.m = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %7) ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !76
  store i8 0, ptr %i.m, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr null, ptr %i.n, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !958)
  %i.o = load ptr, ptr %0, align 8, !tbaa !40, !noalias !958
  store ptr %i.o, ptr %8, align 8, !tbaa !40, !alias.scope !958
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !45
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEpLEl(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %.01322)
          to label %_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEplEl.exit unwind label %bb.f ; 0 uses

_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEplEl.exit: ; preds = %bb.c
  %i.q = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.d unwind label %bb.f       ; 3 uses

bb.d:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEplEl.exit
  %i.r = load i8, ptr %i.q, align 8, !tbaa !66    ; 2 uses
  %i.s = load i8, ptr %6, align 8, !tbaa !66
  store i8 %i.s, ptr %i.q, align 8, !tbaa !66
  store i8 %i.r, ptr %6, align 8, !tbaa !66
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.t, align 8, !tbaa !22
  %i.u = load i64, ptr %i.f, align 8, !tbaa !22
  store i64 %i.u, ptr %i.t, align 8, !tbaa !22
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.f, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i8 noundef zeroext %i.r)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.e, !inline_history !28

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #27, !inline_history !28
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.x = icmp sgt i64 %.01223, %2
  br i1 %i.x, label %bb.b, label %.critedge, !llvm.loop !953

bb.f:                                             ; preds = %bb.c, %_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEplEl.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@"_ZSt10__pop_heapIN8nlohmann16json_abi_v3_12_06detail9iter_implINS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZL19DOCTEST_ANON_FUNC_2vE4$_15EEEvT_SN_SN_RT0_":bb.a
  call void @__clang_call_terminate(ptr %i.x) #27, !inline_history !28
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit5: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret void

bb.i:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit, %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #26
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.k ], [ %i.y, %bb.i ], [ %i.z, %bb.j ]
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN8nlohmann16json_abi_v3_12_06detail9iter_implINS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEElSG_N9__gnu_cxx5__ops15_Iter_comp_iterIZL19DOCTEST_ANON_FUNC_2vE4$_15EEEvT_T0_SO_T1_T2_"(ptr nofreeobj noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr nofreeobj noundef nonnull align 8 captures(none) dereferenceable(16) %3) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 6 uses
  %5 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 7 uses
  %6 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 7 uses
  %7 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 7 uses
  %8 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 7 uses
  %9 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 7 uses
  %10 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 4 uses
  %11 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 4 uses
  %12 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 5 uses
  %13 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 7 uses
  %14 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 7 uses
  %15 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 5 uses
  %16 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 7 uses
  %17 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 7 uses
  %.sroa.5 = alloca %"struct.nlohmann::json_abi_v3_12_0::detail::internal_iterator", align 8 ; 5 uses
  %18 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 8 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %.02239 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit ] ; 2 uses
  %i.j = shl i64 %.02239, 1                       ; 2 uses
  %i.k = add i64 %i.j, 2                          ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  %i.l = load ptr, ptr %0, align 8, !tbaa !40, !noalias !1032
  store ptr %i.l, ptr %10, align 8, !tbaa !40, !alias.scope !1032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !45
  %i.m = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEpLEl(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.k) ; 0 uses
  %i.n = or disjoint i64 %i.j, 1                  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1033)
  %i.o = load ptr, ptr %0, align 8, !tbaa !40, !noalias !1033
  store ptr %i.o, ptr %11, align 8, !tbaa !40, !alias.scope !1033
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !45
  %i.p = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEpLEl(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.n) ; 0 uses
  %i.q = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %10) ; 2 uses
  %i.r = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %11) ; 2 uses
  %.val.i = load i8, ptr %i.q, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val1.i = load ptr, ptr %i.s, align 8          ; 3 uses
  %.val2.i = load i8, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val3.i = load ptr, ptr %i.t, align 8          ; 3 uses
  switch i8 %.val.i, label %bb.e [
    i8 0, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i
    i8 2, label %bb.c
    i8 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !62
  %i.w = load ptr, ptr %.val1.i, align 8, !tbaa !63
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 4
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !46
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i

bb.e:                                             ; preds = %bb.b
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.0.i.i.i = phi i64 [ 1, %bb.e ], [ %i.ac, %bb.d ], [ %i.aa, %bb.c ], [ 0, %bb.b ]
  switch i8 %.val2.i, label %bb.h [
    i8 0, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL19DOCTEST_ANON_FUNC_2vE4$_15EclIN8nlohmann16json_abi_v3_12_06detail9iter_implINS6_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS6_14adl_serializerESB_IhSaIhEEvEEEESM_EEbT_T0_.exit"
    i8 2, label %bb.f
    i8 1, label %bb.g
  ]

bb.f:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.val3.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !62
  %i.af = load ptr, ptr %.val3.i, align 8, !tbaa !63
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 4
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL19DOCTEST_ANON_FUNC_2vE4$_15EclIN8nlohmann16json_abi_v3_12_06detail9iter_implINS6_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS6_14adl_serializerESB_IhSaIhEEvEEEESM_EEbT_T0_.exit"

bb.g:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.val3.i, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !46
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL19DOCTEST_ANON_FUNC_2vE4$_15EclIN8nlohmann16json_abi_v3_12_06detail9iter_implINS6_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS6_14adl_serializerESB_IhSaIhEEvEEEESM_EEbT_T0_.exit"

bb.h:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL19DOCTEST_ANON_FUNC_2vE4$_15EclIN8nlohmann16json_abi_v3_12_06detail9iter_implINS6_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS6_14adl_serializerESB_IhSaIhEEvEEEESM_EEbT_T0_.exit"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL19DOCTEST_ANON_FUNC_2vE4$_15EclIN8nlohmann16json_abi_v3_12_06detail9iter_implINS6_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS6_14adl_serializerESB_IhSaIhEEvEEEESM_EEbT_T0_.exit": ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i, %bb.f, %bb.g, %bb.h
  %.0.i2.i.i = phi i64 [ 1, %bb.h ], [ %i.al, %bb.g ], [ %i.aj, %bb.f ], [ 0, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i ]
  %i.am = icmp ult i64 %.0.i.i.i, %.0.i2.i.i
  %spec.select = select i1 %i.am, i64 %i.n, i64 %i.k ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  %i.an = load ptr, ptr %0, align 8, !tbaa !40, !noalias !1034
  store ptr %i.an, ptr %13, align 8, !tbaa !40, !alias.scope !1034
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !45
  %i.ao = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEpLEl(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %spec.select) ; 0 uses
  %i.ap = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %13) ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !tbaa.struct !76
  store i8 0, ptr %i.ap, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr null, ptr %i.aq, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  %i.ar = load ptr, ptr %0, align 8, !tbaa !40, !noalias !1035
  store ptr %i.ar, ptr %14, align 8, !tbaa !40, !alias.scope !1035
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !45
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEpLEl(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %.02239)
          to label %_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEplEl.exit unwind label %bb.k ; 0 uses

_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEplEl.exit: ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL19DOCTEST_ANON_FUNC_2vE4$_15EclIN8nlohmann16json_abi_v3_12_06detail9iter_implINS6_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS6_14adl_serializerESB_IhSaIhEEvEEEESM_EEbT_T0_.exit"
  %i.at = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.i unwind label %bb.k       ; 3 uses

bb.i:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEplEl.exit
  %i.au = load i8, ptr %i.at, align 8, !tbaa !66  ; 2 uses
  %i.av = load i8, ptr %12, align 8, !tbaa !66
  store i8 %i.av, ptr %i.at, align 8, !tbaa !66
  store i8 %i.au, ptr %12, align 8, !tbaa !66
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.aw, align 8, !tbaa !22
  %i.ax = load i64, ptr %i.i, align 8, !tbaa !22
  store i64 %i.ax, ptr %i.aw, align 8, !tbaa !22
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.i, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i8 noundef zeroext %i.au)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.j, !inline_history !28

bb.j:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #27, !inline_history !28
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.ba = icmp slt i64 %spec.select, %i.b
  br i1 %i.ba, label %bb.b, label %._crit_edge, !llvm.loop !1018

bb.k:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL19DOCTEST_ANON_FUNC_2vE4$_15EclIN8nlohmann16json_abi_v3_12_06detail9iter_implINS6_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS6_14adl_serializerESB_IhSaIhEEvEEEESM_EEbT_T0_.exit", %_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEplEl.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %bb.ai

._crit_edge:                                      ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit, %bb.a
  %.022.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit ] ; 5 uses
  %19 = trunc i64 %2 to i1
  br i1 %19, label %bb.q, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.bc = add nsw i64 %2, -2
  %i.bd = ashr exact i64 %i.bc, 1
  %i.be = icmp eq i64 %.022.lcssa, %i.bd
  br i1 %i.be, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bf = shl nsw i64 %.022.lcssa, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  %i.bg = or disjoint i64 %i.bf, 1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  %i.bh = load ptr, ptr %0, align 8, !tbaa !40, !noalias !1036
  store ptr %i.bh, ptr %16, align 8, !tbaa !40, !alias.scope !1036
  %i.bi = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false), !tbaa.struct !45
  %i.bk = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEpLEl(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %i.bg) ; 0 uses
  %i.bl = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %16) ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false), !tbaa.struct !76
  store i8 0, ptr %i.bl, align 8, !tbaa !21
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr null, ptr %i.bm, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  %i.bn = load ptr, ptr %0, align 8, !tbaa !40, !noalias !1037
  store ptr %i.bn, ptr %17, align 8, !tbaa !40, !alias.scope !1037
  %i.bo = getelementptr inbounds nuw i8, ptr %17, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i64 24, i1 false), !tbaa.struct !45
  %i.bp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEpLEl(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef %.022.lcssa)
          to label %_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEplEl.exit26 unwind label %bb.p ; 0 uses

_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEplEl.exit26: ; preds = %bb.m
  %i.bq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.n unwind label %bb.p       ; 3 uses

bb.n:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEplEl.exit26
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !66  ; 2 uses
  %i.bs = load i8, ptr %15, align 8, !tbaa !66
  store i8 %i.bs, ptr %i.bq, align 8, !tbaa !66
  store i8 %i.br, ptr %15, align 8, !tbaa !66
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i27 = load ptr, ptr %i.bt, align 8, !tbaa !22
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !22
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !22
  store ptr %.sroa.0.0.copyload.i.i27, ptr %i.bu, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, i8 noundef zeroext %i.br)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit28 unwind label %bb.o, !inline_history !28

bb.o:                                             ; preds = %bb.n
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #27, !inline_history !28
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit28: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.q

bb.p:                                             ; preds = %bb.m, %_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEplEl.exit26
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.ai

bb.q:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit28, %bb.l, %._crit_edge
  %.124 = phi i64 [ %i.bg, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit28 ], [ %.022.lcssa, %bb.l ], [ %.022.lcssa, %._crit_edge ] ; 3 uses
  %i.bz = load ptr, ptr %0, align 8, !tbaa !40    ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 24, i1 false), !tbaa.struct !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !76
  store i8 0, ptr %3, align 8, !tbaa !21
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.cb, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.cc = icmp sgt i64 %.124, %1
  br i1 %i.cc, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  br label %bb.r

bb.r:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i, %.lr.ph.i
  %.0135.i = phi i64 [ %.124, %.lr.ph.i ], [ %.0126.i, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit.i ] ; 3 uses
  %.0126.in.i = add nsw i64 %.0135.i, -1
  %.0126.i = sdiv i64 %.0126.in.i, 2              ; 5 uses
  store ptr %i.bz, ptr %4, align 8, !tbaa !40, !alias.scope !1038
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !tbaa.struct !45
  %i.ci = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEpLEl(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.0126.i)
          to label %.noexc unwind label %bb.ah    ; 0 uses

.noexc:                                           ; preds = %bb.r
  %i.cj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc29 unwind label %bb.ah  ; 2 uses

.noexc29:                                         ; preds = %.noexc
  %.val.i.i = load i8, ptr %i.cj, align 8, !tbaa !21
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.val2.i.i = load ptr, ptr %i.ck, align 8       ; 3 uses
  %.val3.i.i = load i8, ptr %18, align 8
  %.val4.i.i = load ptr, ptr %i.ce, align 8       ; 3 uses
  switch i8 %.val.i.i, label %bb.u [
    i8 0, label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i.i
    i8 2, label %bb.s
    i8 1, label %bb.t
  ]

bb.s:                                             ; preds = %.noexc29
  %i.cl = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !62
  %i.cn = load ptr, ptr %.val2.i.i, align 8, !tbaa !63
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 4
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i.i

bb.t:                                             ; preds = %.noexc29
  %i.cs = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 40
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !46
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i.i

bb.u:                                             ; preds = %.noexc29
  br label %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i.i

_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i.i: ; preds = %bb.u, %bb.t, %bb.s, %.noexc29
  %.0.i.i.i.i = phi i64 [ 1, %bb.u ], [ %i.ct, %bb.t ], [ %i.cr, %bb.s ], [ 0, %.noexc29 ]
  switch i8 %.val3.i.i, label %bb.x [
    i8 0, label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL19DOCTEST_ANON_FUNC_2vE4$_15EclIN8nlohmann16json_abi_v3_12_06detail9iter_implINS6_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS6_14adl_serializerESB_IhSaIhEEvEEEESL_EEbT_RT0_.exit.i"
    i8 2, label %bb.v
    i8 1, label %bb.w
  ]

bb.v:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !62
  %i.cw = load ptr, ptr %.val4.i.i, align 8, !tbaa !63
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = ashr exact i64 %i.cz, 4
  br label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL19DOCTEST_ANON_FUNC_2vE4$_15EclIN8nlohmann16json_abi_v3_12_06detail9iter_implINS6_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS6_14adl_serializerESB_IhSaIhEEvEEEESL_EEbT_RT0_.exit.i"

bb.w:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %.val4.i.i, i64 40
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !46
  br label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL19DOCTEST_ANON_FUNC_2vE4$_15EclIN8nlohmann16json_abi_v3_12_06detail9iter_implINS6_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS6_14adl_serializerESB_IhSaIhEEvEEEESL_EEbT_RT0_.exit.i"

bb.x:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i.i
  br label %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL19DOCTEST_ANON_FUNC_2vE4$_15EclIN8nlohmann16json_abi_v3_12_06detail9iter_implINS6_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS6_14adl_serializerESB_IhSaIhEEvEEEESL_EEbT_RT0_.exit.i"

"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL19DOCTEST_ANON_FUNC_2vE4$_15EclIN8nlohmann16json_abi_v3_12_06detail9iter_implINS6_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS6_14adl_serializerESB_IhSaIhEEvEEEESL_EEbT_RT0_.exit.i": ; preds = %bb.x, %bb.w, %bb.v, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i.i
  %.0.i2.i.i.i = phi i64 [ 1, %bb.x ], [ %i.dc, %bb.w ], [ %i.da, %bb.v ], [ 0, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4sizeEv.exit.i.i.i ]
  %i.dd = icmp ult i64 %.0.i.i.i.i, %.0.i2.i.i.i
  br i1 %i.dd, label %bb.y, label %.critedge.i

bb.y:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZL19DOCTEST_ANON_FUNC_2vE4$_15EclIN8nlohmann16json_abi_v3_12_06detail9iter_implINS6_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS6_14adl_serializerESB_IhSaIhEEvEEEESL_EEbT_RT0_.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr %i.bz, ptr %6, align 8, !tbaa !40, !alias.scope !1039
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !tbaa.struct !45
  %i.de = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEpLEl(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %.0126.i)
          to label %.noexc30 unwind label %bb.ah  ; 0 uses

.noexc30:                                         ; preds = %bb.y
  %i.df = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc31 unwind label %bb.ah  ; 3 uses

.noexc31:                                         ; preds = %.noexc30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false), !tbaa.struct !76
  store i8 0, ptr %i.df, align 8, !tbaa !21
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store ptr null, ptr %i.dg, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %i.bz, ptr %7, align 8, !tbaa !40, !alias.scope !1040
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !tbaa.struct !45
  %i.dh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEpLEl(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %.0135.i)
          to label %_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEplEl.exit.i unwind label %bb.ab ; 0 uses

_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEplEl.exit.i: ; preds = %.noexc31
  %i.di = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.z unwind label %bb.ab      ; 3 uses

bb.z:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEplEl.exit.i
  %i.dj = load i8, ptr %i.di, align 8, !tbaa !66  ; 2 uses
  %i.dk = load i8, ptr %5, align 8, !tbaa !66
  store i8 %i.dk, ptr %i.di, align 8, !tbaa !66
  store i8 %i.dj, ptr %5, align 8, !tbaa !66
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.dl, align 8, !tbaa !22
end_hunk_2
