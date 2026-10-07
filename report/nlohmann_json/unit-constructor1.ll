Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-constructor1?download=true
inline.NumInlined: 8559
inline.NumDeleted: 3050
loop-unroll.NumCompletelyUnrolled: 323
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 326
begin_hunk_0_@_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base

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
  store i8 45, ptr %0, align 1, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.013 = phi double [ %i.e, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.012 = phi ptr [ %i.f, %bb.b ], [ %0, %bb.a ]  ; 18 uses
  %i.g = fcmp oeq double %.013, 0.000000e+00
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.012, i64 1
  store i8 48, ptr %.012, align 1, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %.012, i64 2
  store i8 46, ptr %i.h, align 1, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %.012, i64 3
  store i8 48, ptr %i.i, align 1, !tbaa !40
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 0, ptr %i.b, align 4, !tbaa !61
  call void @_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl6grisu2IdEEvPcRiS5_T_(ptr noundef %.012, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, double noundef %.013)
  %i.k = load i32, ptr %i.a, align 4, !tbaa !61   ; 6 uses
  %i.l = load i32, ptr %i.b, align 4, !tbaa !61   ; 3 uses
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
  store i8 46, ptr %i.r, align 1, !tbaa !40
  %i.s = getelementptr i8, ptr %i.r, i64 1
  store i8 48, ptr %i.s, align 1, !tbaa !40
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
  store i8 46, ptr %i.x, align 1, !tbaa !40
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
  store i8 48, ptr %.012, align 1, !tbaa !40
  %i.aj = getelementptr inbounds nuw i8, ptr %.012, i64 1
  store i8 46, ptr %i.aj, align 1, !tbaa !40
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
  store i8 46, ptr %i.ao, align 1, !tbaa !40
  %i.ar = getelementptr i8, ptr %.012, i64 %i.ap
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn.i = phi ptr [ %i.ar, %bb.l ], [ %.012, %bb.k ] ; 9 uses
  %.056.i = getelementptr i8, ptr %.pn.i, i64 1
  %i.as = getelementptr i8, ptr %.pn.i, i64 2
  store i8 101, ptr %.056.i, align 1, !tbaa !40
  %i.at = add nsw i32 %i.m, -1
  %storemerge.i.i = select i1 %i.u, i8 45, i8 43
  %.0.i.i = call i32 @llvm.abs.i32(i32 %i.at, i1 true) ; 6 uses
  %.023.i.i = getelementptr i8, ptr %.pn.i, i64 3 ; 3 uses
  store i8 %storemerge.i.i, ptr %i.as, align 1, !tbaa !40
  %i.au = icmp samesign ult i32 %.0.i.i, 10
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr i8, ptr %.pn.i, i64 4
  store i8 48, ptr %.023.i.i, align 1, !tbaa !40
  %i.aw = trunc nuw nsw i32 %.0.i.i to i8
  %i.ax = or disjoint i8 %i.aw, 48
  %i.ay = getelementptr i8, ptr %.pn.i, i64 5
  store i8 %i.ax, ptr %i.av, align 1, !tbaa !40
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl13format_bufferEPciiii.exit

bb.o:                                             ; preds = %bb.m
  %i.az = icmp samesign ult i32 %.0.i.i, 100
  %i.ba = getelementptr i8, ptr %.pn.i, i64 4     ; 2 uses
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.lhs.trunc.i.i = trunc nuw nsw i32 %.0.i.i to i8 ; 2 uses
  %i.bb = udiv i8 %.lhs.trunc.i.i, 10
  %i.bc = or disjoint i8 %i.bb, 48
  store i8 %i.bc, ptr %.023.i.i, align 1, !tbaa !40
  %i.bd = urem i8 %.lhs.trunc.i.i, 10
  %i.be = or disjoint i8 %i.bd, 48
  %i.bf = getelementptr i8, ptr %.pn.i, i64 5
  store i8 %i.be, ptr %i.ba, align 1, !tbaa !40
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl13format_bufferEPciiii.exit

bb.q:                                             ; preds = %bb.o
  %i.bg = udiv i32 %.0.i.i, 100
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = add i8 %i.bh, 48
  store i8 %i.bi, ptr %.023.i.i, align 1, !tbaa !40
  %i.bj = urem i32 %.0.i.i, 100
  %.lhs.trunc28.i.i = trunc nuw nsw i32 %i.bj to i8 ; 2 uses
  %i.bk = udiv i8 %.lhs.trunc28.i.i, 10
  %i.bl = or disjoint i8 %i.bk, 48
  %i.bm = getelementptr i8, ptr %.pn.i, i64 5
  store i8 %i.bl, ptr %i.ba, align 1, !tbaa !40
  %i.bn = urem i8 %.lhs.trunc28.i.i, 10
  %i.bo = or disjoint i8 %i.bn, 48
  %i.bp = getelementptr i8, ptr %.pn.i, i64 6
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !40
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
  %6 = icmp sgt i64 %i.k, -1
  br i1 %6, label %.lr.ph.i.i, label %.lr.ph.i32.i, !llvm.loop !1123

.lr.ph.i32.i:                                     ; preds = %.lr.ph.i.i, %.lr.ph.i32.i
  %.sroa.0.04.i33.i = phi i64 [ %i.m, %.lr.ph.i32.i ], [ %.sroa.037.0.i, %.lr.ph.i.i ] ; 2 uses
  %.sroa.5.03.i34.i = phi i32 [ %i.n, %.lr.ph.i32.i ], [ %.sroa.841.0.i, %.lr.ph.i.i ]
  %i.m = shl nuw i64 %.sroa.0.04.i33.i, 1         ; 3 uses
  %i.n = add nsw i32 %.sroa.5.03.i34.i, -1        ; 2 uses
  %7 = icmp sgt i64 %i.m, -1
  br i1 %7, label %.lr.ph.i32.i, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18compute_boundariesIdEENS2_10boundariesET_.exit, !llvm.loop !1123

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
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.af, align 8, !tbaa !142 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !61 ; 2 uses
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
  store i32 %i.cp, ptr %2, align 4, !tbaa !61
  store i64 %i.az, ptr %4, align 8, !tbaa !142
  %.sroa.416.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.bb, ptr %.sroa.416.0..sroa_idx.i4, align 8, !tbaa !61
  store i64 %i.co, ptr %5, align 8, !tbaa !142
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.br, ptr %.sroa.4.0..sroa_idx.i5, align 8, !tbaa !61
  tail call void @_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl16grisu2_digit_genEPcRiS4_NS2_5diyfpES5_S5_(ptr noundef nonnull %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i64 %i.ck, i32 %i.br, ptr noundef nonnull byval(%"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::diyfp") align 8 %4, ptr noundef nonnull byval(%"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::diyfp") align 8 %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl16grisu2_digit_genEPcRiS4_NS2_5diyfpES5_S5_(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i64 %3, i32 %4, ptr noundef byval(%"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::diyfp") align 8 %5, ptr noundef byval(%"struct.nlohmann::json_abi_v3_12_0::detail::dtoa_impl::diyfp") align 8 %6) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = load i64, ptr %6, align 8, !tbaa !1127   ; 4 uses
  %i.b = sub i64 %i.a, %3                         ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1128
  %i.e = load i64, ptr %5, align 8, !tbaa !1127
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
  br i1 %i.w, label %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit, label %.preheader, !llvm.loop !1124

_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader, %bb.j
  %.054135 = phi i32 [ %i.af, %bb.j ], [ %.054135.ph, %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader ] ; 2 uses
  %.056134 = phi i32 [ %i.y, %bb.j ], [ %i.k, %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader ] ; 2 uses
  %.078133 = phi i32 [ %.1, %bb.j ], [ %.078133.ph, %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit.preheader ] ; 7 uses
  %i.x = udiv i32 %.056134, %.078133
  %i.y = urem i32 %.056134, %.078133              ; 2 uses
  %i.z = trunc i32 %i.x to i8
  %i.aa = add i8 %i.z, 48
  %i.ab = load i32, ptr %1, align 4, !tbaa !61    ; 2 uses
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %1, align 4, !tbaa !61
  %i.ad = sext i32 %i.ab to i64
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad
  store i8 %i.aa, ptr %i.ae, align 1, !tbaa !40
  %i.af = add nsw i32 %.054135, -1                ; 2 uses
  %i.ag = zext i32 %i.y to i64
  %i.ah = shl i64 %i.ag, %i.h
  %i.ai = add i64 %i.ah, %i.m                     ; 4 uses
  %.not58 = icmp ugt i64 %i.ai, %i.b              ; 2 uses
  br i1 %.not58, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9dtoa_impl18find_largest_pow10EjRj.exit
  %i.aj = load i32, ptr %2, align 4, !tbaa !61
  %i.ak = add nsw i32 %i.aj, %i.af
  store i32 %i.ak, ptr %2, align 4, !tbaa !61
  %i.al = zext i32 %.078133 to i64
  %i.am = shl i64 %i.al, %i.h                     ; 3 uses
  %i.an = icmp uge i64 %i.ai, %i.f
  %i.ao = sub nuw i64 %i.b, %i.ai
  %.not21.i = icmp ult i64 %i.ao, %i.am
  %or.cond22.i = or i1 %i.an, %.not21.i
end_hunk_0
begin_hunk_1_@_ZN8nlohmann16json_abi_v3_12_06detail4hashINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEEmRKT_:bb.a
  store i64 0, ptr %i.dd, align 8
  store i64 -9223372036854775808, ptr %i.de, align 8, !tbaa !167, !alias.scope !1424
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.co, ptr %i.df, align 8, !tbaa !147, !alias.scope !1424
  %i.dg = call noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
  br i1 %i.dg, label %._crit_edge, label %.lr.ph100

._crit_edge:                                      ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit
  %.057.lcssa = phi i64 [ %i.cz, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit ], [ %i.do, %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.loopexit

.lr.ph100:                                        ; preds = %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit
  %.05799 = phi i64 [ %i.do, %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit ], [ %i.cz, %_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit ] ; 3 uses
  %i.dh = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEdeEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.di = call noundef i64 @_ZN8nlohmann16json_abi_v3_12_06detail4hashINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEEmRKT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dh)
  %i.dj = shl i64 %.05799, 6
  %i.dk = lshr i64 %.05799, 2
  %i.dl = add i64 %i.dj, 2654435769
  %i.dm = add i64 %i.dl, %i.dk
  %i.dn = add i64 %i.dm, %i.di
  %i.do = xor i64 %i.dn, %.05799                  ; 2 uses
  %i.dp = load ptr, ptr %3, align 8, !tbaa !166
  %i.dq = load i8, ptr %i.dp, align 8, !tbaa !42
  switch i8 %i.dq, label %bb.s [
    i8 1, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i
    i8 2, label %bb.r
  ]

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i: ; preds = %.lr.ph100
  %.promoted11.i.i = load ptr, ptr %i.da, align 8, !tbaa !168
  %i.dr = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.promoted11.i.i) #31
  store ptr %i.dr, ptr %i.da, align 8, !tbaa !168
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit

bb.r:                                             ; preds = %.lr.ph100
  %i.ds = load ptr, ptr %i.dc, align 8, !tbaa !169
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store ptr %i.dt, ptr %i.dc, align 8, !tbaa !169
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit

bb.s:                                             ; preds = %.lr.ph100
  %i.du = load i64, ptr %i.db, align 8, !tbaa !167
  %i.dv = add nsw i64 %i.du, 1
  store i64 %i.dv, ptr %i.db, align 8, !tbaa !167
  br label %_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit

_ZN8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEppEv.exit: ; preds = %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS7_blmdSaNSA_14adl_serializerESD_IhSaIhEEvEEEElEvRT_T0_St26bidirectional_iterator_tag.exit.loopexit.i, %bb.r, %bb.s
  %i.dw = call noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISH_TnNSt9enable_ifIXoosr3std7is_sameIT_SH_EE5valuesr3std7is_sameISK_NS2_ISF_EEEE5valueEDnE4typeELDn0EEEbRKSK_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
  br i1 %i.dw, label %._crit_edge, label %.lr.ph100

bb.t:                                             ; preds = %bb.a
  %i.dx = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE12get_ref_implIRKS9_KSD_EET_RT0_(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !70
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !60
  %i.eb = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.dy, i64 noundef %i.ea, i64 noundef 3339675911)
          to label %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit78 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  tail call void @__clang_call_terminate(ptr %i.ed) #28
  unreachable

_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit78: ; preds = %bb.t
  %i.ee = shl nuw nsw i64 %i.g, 6
  %i.ef = lshr i64 %i.g, 2
  %i.eg = add nuw nsw i64 %i.ee, 2654435769
  %i.eh = add nuw nsw i64 %i.eg, %i.ef
  %i.ei = add i64 %i.eh, %i.eb
  %i.ej = xor i64 %i.ei, %i.g
  br label %.loopexit

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i8 0, ptr %i.e, align 1, !tbaa !55
  call void @_ZNK8nlohmann16json_abi_v3_12_06detail12from_json_fnclINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEERbEEDTcl9from_jsonfp_clsr3stdE7forwardIT0_Efp0_EEERKT_OSI_(ptr noundef nonnull align 1 dereferenceable(1) @_ZN8nlohmann16json_abi_v3_12_06detail12static_constINS1_12from_json_fnEE5valueE, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
  %i.ek = load i8, ptr %i.e, align 1, !tbaa !55, !range !134, !noundef !135
  %i.el = zext nneg i8 %i.ek to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  %i.em = shl nuw nsw i64 %i.g, 6
  %i.en = lshr i64 %i.g, 2
  %i.eo = add nuw nsw i64 %i.em, 2654435769
  %i.ep = add nuw nsw i64 %i.eo, %i.en
  %i.eq = add nuw nsw i64 %i.ep, %i.el
  %i.er = xor i64 %i.eq, %i.g
  br label %.loopexit

bb.w:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i64 0, ptr %i.d, align 8, !tbaa !142
  call void @_ZN8nlohmann16json_abi_v3_12_06detail20get_arithmetic_valueINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEElTnNSt9enable_ifIXaasr3std13is_arithmeticIT0_EE5valuentsr3std7is_sameISH_NT_9boolean_tEEE5valueEiE4typeELi0EEEvRKSI_RSH_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.es = load i64, ptr %i.d, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  %i.et = shl nuw nsw i64 %i.g, 6
  %i.eu = lshr i64 %i.g, 2
  %i.ev = add nuw nsw i64 %i.et, 2654435769
  %i.ew = add nuw nsw i64 %i.ev, %i.eu
  %i.ex = add i64 %i.ew, %i.es
  %i.ey = xor i64 %i.ex, %i.g
  br label %.loopexit

bb.x:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i64 0, ptr %i.c, align 8, !tbaa !142
  call void @_ZN8nlohmann16json_abi_v3_12_06detail20get_arithmetic_valueINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEmTnNSt9enable_ifIXaasr3std13is_arithmeticIT0_EE5valuentsr3std7is_sameISH_NT_9boolean_tEEE5valueEiE4typeELi0EEEvRKSI_RSH_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.ez = load i64, ptr %i.c, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  %i.fa = shl nuw nsw i64 %i.g, 6
  %i.fb = lshr i64 %i.g, 2
  %i.fc = add nuw nsw i64 %i.fa, 2654435769
  %i.fd = add nuw nsw i64 %i.fc, %i.fb
  %i.fe = add i64 %i.fd, %i.ez
  %i.ff = xor i64 %i.fe, %i.g
  br label %.loopexit

bb.y:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !63
  call void @_ZN8nlohmann16json_abi_v3_12_06detail20get_arithmetic_valueINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEdTnNSt9enable_ifIXaasr3std13is_arithmeticIT0_EE5valuentsr3std7is_sameISH_NT_9boolean_tEEE5valueEiE4typeELi0EEEvRKSI_RSH_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.fg = load double, ptr %i.b, align 8, !tbaa !63 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %i.fg, ptr %i.a, align 8, !tbaa !63
  %i.fh = fcmp une double %i.fg, 0.000000e+00
  br i1 %i.fh, label %bb.z, label %_ZNKSt4hashIdEclEd.exit

bb.z:                                             ; preds = %bb.y
  %i.fi = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNKSt4hashIdEclEd.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fj = landingpad { ptr, i32 }
          catch ptr null
  %i.fk = extractvalue { ptr, i32 } %i.fj, 0
  call void @__clang_call_terminate(ptr %i.fk) #28
  unreachable

_ZNKSt4hashIdEclEd.exit:                          ; preds = %bb.y, %bb.z
  %i.fl = phi i64 [ 0, %bb.y ], [ %i.fi, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fm = shl nuw nsw i64 %i.g, 6
  %i.fn = lshr i64 %i.g, 2
  %i.fo = add nuw nsw i64 %i.fm, 2654435769
  %i.fp = add nuw nsw i64 %i.fo, %i.fn
  %i.fq = add i64 %i.fp, %i.fl
  %i.fr = xor i64 %i.fq, %i.g
  br label %.loopexit

bb.ab:                                            ; preds = %bb.a
  %i.fs = tail call noundef nonnull align 8 dereferenceable(33) ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10get_binaryEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !156
  %i.fv = load ptr, ptr %i.fs, align 8, !tbaa !155
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = shl nuw nsw i64 %i.g, 6
  %i.fz = lshr i64 %i.g, 2
  %i.ga = add nuw nsw i64 %i.fy, 2654435769
  %i.gb = add nuw nsw i64 %i.ga, %i.fz
  %i.gc = add i64 %i.gb, %i.fw
  %i.gd = sub i64 %i.gc, %i.fx
  %i.ge = xor i64 %i.gd, %i.g                     ; 3 uses
  %i.gf = tail call noundef nonnull align 8 dereferenceable(33) ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10get_binaryEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.gh = load i8, ptr %i.gg, align 8, !tbaa !176, !range !134, !noundef !135
  %i.gi = zext nneg i8 %i.gh to i64
  %i.gj = add nuw nsw i64 %i.gi, 2654435769
  %i.gk = shl i64 %i.ge, 6
  %i.gl = add i64 %i.gj, %i.gk
  %i.gm = lshr i64 %i.ge, 2
  %i.gn = add i64 %i.gl, %i.gm
  %i.go = xor i64 %i.gn, %i.ge                    ; 3 uses
  %i.gp = tail call noundef nonnull align 8 dereferenceable(33) ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10get_binaryEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.gr = load i8, ptr %i.gq, align 8, !tbaa !176, !range !134, !noundef !135
  %i.gs = trunc nuw i8 %i.gr to i1
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.gu = load i64, ptr %i.gt, align 8
  %i.gv = add i64 %i.gu, 2654435769
  %i.gw = select i1 %i.gs, i64 %i.gv, i64 2654435768
  %i.gx = shl i64 %i.go, 6
  %i.gy = add i64 %i.gx, %i.gw
  %i.gz = lshr i64 %i.go, 2
  %i.ha = add i64 %i.gy, %i.gz
  %i.hb = xor i64 %i.ha, %i.go                    ; 5 uses
  %i.hc = tail call noundef nonnull align 8 dereferenceable(33) ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10get_binaryEv(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !153 ; 5 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !153 ; 3 uses
  %.not96 = icmp eq ptr %i.hd, %i.hf
  br i1 %.not96, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ab
  %i.hg = ptrtoaddr ptr %i.hf to i64              ; 2 uses
  %i.hh = ptrtoaddr ptr %i.hd to i64              ; 2 uses
  %i.hi = sub i64 %i.hg, %i.hh
  %xtraiter = and i64 %i.hi, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.hj = load i8, ptr %i.hd, align 1, !tbaa !40
  %i.hk = zext i8 %i.hj to i64
  %i.hl = shl i64 %i.hb, 6
  %i.hm = lshr i64 %i.hb, 2
  %i.hn = add i64 %i.hl, 2654435769
  %i.ho = add i64 %i.hn, %i.hm
  %i.hp = add i64 %i.ho, %i.hk
  %i.hq = xor i64 %i.hp, %i.hb                    ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hd, i64 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa128.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.hq, %.lr.ph.prol ]
  %.05298.unr = phi i64 [ %i.hb, %.lr.ph.preheader ], [ %i.hq, %.lr.ph.prol ]
  %.sroa.080.097.unr = phi ptr [ %i.hd, %.lr.ph.preheader ], [ %i.hr, %.lr.ph.prol ]
  %i.hs = add i64 %i.hg, -1
  %i.ht = icmp eq i64 %i.hs, %i.hh
  br i1 %i.ht, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.05298 = phi i64 [ %i.ik, %.lr.ph ], [ %.05298.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.sroa.080.097 = phi ptr [ %i.il, %.lr.ph ], [ %.sroa.080.097.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.hu = load i8, ptr %.sroa.080.097, align 1, !tbaa !40
  %i.hv = zext i8 %i.hu to i64
  %i.hw = shl i64 %.05298, 6
  %i.hx = lshr i64 %.05298, 2
  %i.hy = add i64 %i.hw, 2654435769
  %i.hz = add i64 %i.hy, %i.hx
  %i.ia = add i64 %i.hz, %i.hv
  %i.ib = xor i64 %i.ia, %.05298                  ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.080.097, i64 1
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !40
  %i.ie = zext i8 %i.id to i64
  %i.if = shl i64 %i.ib, 6
  %i.ig = lshr i64 %i.ib, 2
  %i.ih = add i64 %i.if, 2654435769
  %i.ii = add i64 %i.ih, %i.ig
  %i.ij = add i64 %i.ii, %i.ie
  %i.ik = xor i64 %i.ij, %i.ib                    ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.080.097, i64 2 ; 2 uses
  %.not.1 = icmp eq ptr %i.il, %i.hf
  br i1 %.not.1, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.ab, %bb.a, %_ZNKSt4hashIdEclEd.exit, %bb.x, %bb.w, %bb.v, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit78, %._crit_edge, %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit72, %bb.b
  %.0 = phi i64 [ 0, %bb.a ], [ %i.l, %bb.b ], [ %.053, %_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev.exit72 ], [ %.057.lcssa, %._crit_edge ], [ %i.ej, %_ZNKSt15__str_hash_baseIcSaIcENSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEclERKS5_.exit78 ], [ %i.er, %bb.v ], [ %i.ey, %bb.w ], [ %i.ff, %bb.x ], [ %i.fr, %_ZNKSt4hashIdEclEd.exit ], [ %i.hb, %bb.ab ], [ %.lcssa128.unr, %.lr.ph.prol.loopexit ], [ %i.ik, %.lr.ph ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail21iteration_proxy_valueINS1_9iter_implIKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef %i.b) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.f) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(33) ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10get_binaryEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !42
  %i.c = icmp eq i8 %i.b, 8
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 32) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.e = tail call noundef nonnull ptr @_ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9type_nameEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #26
  store ptr %i.e, ptr %i.a, align 8, !tbaa !153
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail6concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRA29_KcPS9_EEET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 1 dereferenceable(29) @.str.313, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail10type_error6createIPKNS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES6_IhSaIhEEvEETnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_iRKSC_SK_(ptr dead_on_unwind writable sret(%"class.nlohmann::json_abi_v3_12_0::detail::type_error") align 8 %i.d, i32 noundef 302, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %0)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr %i.d, ptr nonnull @_ZTIN8nlohmann16json_abi_v3_12_06detail10type_errorE, ptr nonnull @_ZN8nlohmann16json_abi_v3_12_06detail9exceptionD2Ev) #32
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #26
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  ret ptr %i.l

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_06detail13int_to_stringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRT_m(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  %i.a = icmp ult i64 %1, 10
  br i1 %i.a, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.g
  %.029.i.i = phi i32 [ %i.i, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.h, %bb.g ], [ %1, %bb.a ] ; 5 uses
  %i.b = icmp ult i64 %.02328.i.i, 100
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.c = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.d = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.e:                                             ; preds = %bb.c
  %i.f = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %i.h = udiv i64 %.02328.i.i, 10000
  %i.i = add i32 %.029.i.i, 4                     ; 2 uses
  %i.j = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.j, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !18

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.g, %bb.f, %bb.d, %bb.b, %bb.a
  %.022.i.i = phi i32 [ %i.g, %bb.f ], [ %i.c, %bb.b ], [ %i.e, %bb.d ], [ 1, %bb.a ], [ %i.i, %bb.g ]
  %i.k = zext i32 %.022.i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !58, !alias.scope !1427
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.k, i8 noundef signext 0)
  %i.m = load ptr, ptr %2, align 8, !tbaa !70, !alias.scope !1427 ; 4 uses
  %i.n = icmp ugt i64 %1, 99
  br i1 %i.n, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

end_hunk_1
