Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/libcst_native-f6ddb4b5b15f8b82.libcst_native.799f4444683a0d30-cgu.08?download=true
inline.NumInlined: 824
inline.NumDeleted: 284
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalReNCINvMB8_SB1f_20sort_unstable_by_keyjNCNvNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer9operators11OPERATOR_RE27___rust_std_internal_init_fn0E0EB22_:bb.a
bb.p:                                             ; preds = %.lr.ph.i
  %i.dy = load ptr, ptr %i.du, align 8, !alias.scope !822, !noalias !821, !nonnull !4, !noundef !4
  %.sroa.0.0.i41.i28 = getelementptr inbounds i8, ptr %i.du, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.i28, i64 16, i1 false), !alias.scope !822, !noalias !821
  %i.dz = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.dz, label %._crit_edge, label %.lr.ph

bb.q:                                             ; preds = %.lr.ph
  %.sroa.0.0.i41.i = getelementptr inbounds i8, ptr %.sroa.0.0.i41.i30, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.i30, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.i, i64 16, i1 false), !alias.scope !822, !noalias !821
  %i.ea = icmp eq ptr %.sroa.0.0.i41.i, %i.a
  br i1 %i.ea, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %bb.q
  %.sroa.0.0.i41.i30 = phi ptr [ %.sroa.0.0.i41.i, %bb.q ], [ %.sroa.0.0.i41.i28, %bb.p ] ; 5 uses
  %.sroa.5.0.i.i29 = phi ptr [ %.sroa.0.0.i41.i30, %bb.q ], [ %i.du, %bb.p ] ; 2 uses
  %i.eb = getelementptr i8, ptr %.sroa.5.0.i.i29, i64 -24
  %.val8.i42.i = load i64, ptr %i.eb, align 8, !alias.scope !822, !noalias !821, !noundef !4
  %i.ec = icmp ugt i64 %.val9.i40.i, %.val8.i42.i
  br i1 %i.ec, label %bb.q, label %._crit_edge

._crit_edge:                                      ; preds = %bb.q, %.lr.ph, %bb.p
  %.sroa.5.0.i.i.lcssa = phi ptr [ %i.du, %bb.p ], [ %.sroa.0.0.i41.i30, %bb.q ], [ %.sroa.5.0.i.i29, %.lr.ph ]
  %.sroa.0.0.i41.lcssa.i = phi ptr [ %i.a, %bb.p ], [ %i.a, %bb.q ], [ %.sroa.0.0.i41.i30, %.lr.ph ]
  store ptr %i.dy, ptr %.sroa.0.0.i41.lcssa.i, align 8, !alias.scope !822, !noalias !824
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -8
  store i64 %.val9.i40.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !822, !noalias !824
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailReNCINvMB8_SB18_20sort_unstable_by_keyjNCNvNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer9operators11OPERATOR_RE27___rust_std_internal_init_fn0E0EB1V_.exit.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailReNCINvMB8_SB18_20sort_unstable_by_keyjNCNvNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer9operators11OPERATOR_RE27___rust_std_internal_init_fn0E0EB1V_.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.ed = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ed, %i.d
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchReNCINvMB8_SB1s_20sort_unstable_by_keyjNCNvNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer9operators11OPERATOR_RE27___rust_std_internal_init_fn0E0EB2f_.exit: ; preds = %bb.a, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_networkReNCINvMB8_SB1f_20sort_unstable_by_keyjNCNvNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer9operators11OPERATOR_RE27___rust_std_internal_init_fn0E0EB22_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [512 x i8], align 8               ; 5 uses
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %1, 32
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = lshr i64 %1, 1                           ; 4 uses
  %i.e = icmp samesign ult i64 %1, 18             ; 2 uses
  %. = select i1 %i.e, i64 %1, i64 %i.d
  %i.f = getelementptr [16 x i8], ptr %0, i64 %i.d ; 3 uses
  %i.g = sub nuw nsw i64 %1, %i.d
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.n, %bb.c
  %.sroa.8.0 = phi i64 [ %., %bb.c ], [ %i.g, %bb.n ] ; 5 uses
  %.sroa.02.0 = phi ptr [ %0, %bb.c ], [ %i.f, %bb.n ] ; 73 uses
  %i.h = icmp ugt i64 %.sroa.8.0, 12
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp samesign ugt i64 %.sroa.8.0, 8
  br i1 %i.i, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 192 ; 9 uses
  %i.k = getelementptr i8, ptr %.sroa.02.0, i64 200 ; 4 uses
  %.val.i.i = load i64, ptr %i.k, align 8, !alias.scope !847, !noundef !4
  %i.l = getelementptr i8, ptr %.sroa.02.0, i64 8 ; 4 uses
  %.val1.i.i = load i64, ptr %i.l, align 8, !alias.scope !847, !noundef !4
  %i.m = icmp ugt i64 %.val.i.i, %.val1.i.i       ; 2 uses
  %i.n = select i1 %i.m, ptr %i.j, ptr %.sroa.02.0, !unpredictable !4
  %i.o = select i1 %i.m, ptr %.sroa.02.0, ptr %i.j, !unpredictable !4 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !847, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.0, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !alias.scope !847
  store ptr %i.p, ptr %i.j, align 8, !alias.scope !847
  store i64 %i.r, ptr %i.k, align 8, !alias.scope !847
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 16 ; 18 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 160 ; 21 uses
  %i.u = getelementptr i8, ptr %.sroa.02.0, i64 168 ; 8 uses
  %.val.i1.i = load i64, ptr %i.u, align 8, !alias.scope !847, !noundef !4
  %i.v = getelementptr i8, ptr %.sroa.02.0, i64 24 ; 6 uses
  %.val1.i2.i = load i64, ptr %i.v, align 8, !alias.scope !847, !noundef !4
  %i.w = icmp ugt i64 %.val.i1.i, %.val1.i2.i     ; 2 uses
  %i.x = select i1 %i.w, ptr %i.t, ptr %i.s, !unpredictable !4
  %i.y = select i1 %i.w, ptr %i.s, ptr %i.t, !unpredictable !4 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !847, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !alias.scope !847
  store ptr %i.z, ptr %i.t, align 8, !alias.scope !847
  store i64 %i.ab, ptr %i.u, align 8, !alias.scope !847
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 32 ; 21 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 144 ; 24 uses
  %i.ae = getelementptr i8, ptr %.sroa.02.0, i64 152 ; 9 uses
  %.val.i3.i = load i64, ptr %i.ae, align 8, !alias.scope !847, !noundef !4
  %i.af = getelementptr i8, ptr %.sroa.02.0, i64 40 ; 7 uses
  %.val1.i4.i = load i64, ptr %i.af, align 8, !alias.scope !847, !noundef !4
  %i.ag = icmp ugt i64 %.val.i3.i, %.val1.i4.i    ; 2 uses
  %i.ah = select i1 %i.ag, ptr %i.ad, ptr %i.ac, !unpredictable !4
  %i.ai = select i1 %i.ag, ptr %i.ac, ptr %i.ad, !unpredictable !4 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !847, !nonnull !4, !noundef !4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !alias.scope !847
  store ptr %i.aj, ptr %i.ad, align 8, !alias.scope !847
  store i64 %i.al, ptr %i.ae, align 8, !alias.scope !847
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 48 ; 24 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 112 ; 21 uses
  %i.ao = getelementptr i8, ptr %.sroa.02.0, i64 120 ; 8 uses
  %.val.i5.i = load i64, ptr %i.ao, align 8, !alias.scope !847, !noundef !4
  %i.ap = getelementptr i8, ptr %.sroa.02.0, i64 56 ; 8 uses
  %.val1.i6.i = load i64, ptr %i.ap, align 8, !alias.scope !847, !noundef !4
  %i.aq = icmp ugt i64 %.val.i5.i, %.val1.i6.i    ; 2 uses
  %i.ar = select i1 %i.aq, ptr %i.an, ptr %i.am, !unpredictable !4
  %i.as = select i1 %i.aq, ptr %i.am, ptr %i.an, !unpredictable !4 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !847, !nonnull !4, !noundef !4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !alias.scope !847
  store ptr %i.at, ptr %i.an, align 8, !alias.scope !847
  store i64 %i.av, ptr %i.ao, align 8, !alias.scope !847
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 80 ; 24 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 176 ; 18 uses
  %i.ay = getelementptr i8, ptr %.sroa.02.0, i64 184 ; 7 uses
  %.val.i7.i = load i64, ptr %i.ay, align 8, !alias.scope !847, !noundef !4
  %i.az = getelementptr i8, ptr %.sroa.02.0, i64 88 ; 8 uses
  %.val1.i8.i = load i64, ptr %i.az, align 8, !alias.scope !847, !noundef !4
  %i.ba = icmp ugt i64 %.val.i7.i, %.val1.i8.i    ; 2 uses
  %i.bb = select i1 %i.ba, ptr %i.ax, ptr %i.aw, !unpredictable !4
  %i.bc = select i1 %i.ba, ptr %i.aw, ptr %i.ax, !unpredictable !4 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !847, !nonnull !4, !noundef !4
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !alias.scope !847
  store ptr %i.bd, ptr %i.ax, align 8, !alias.scope !847
  store i64 %i.bf, ptr %i.ay, align 8, !alias.scope !847
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 96 ; 30 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 128 ; 24 uses
  %i.bi = getelementptr i8, ptr %.sroa.02.0, i64 136 ; 8 uses
  %.val.i9.i = load i64, ptr %i.bi, align 8, !alias.scope !847, !noundef !4
  %i.bj = getelementptr i8, ptr %.sroa.02.0, i64 104 ; 11 uses
  %.val1.i10.i = load i64, ptr %i.bj, align 8, !alias.scope !847, !noundef !4
  %i.bk = icmp ugt i64 %.val.i9.i, %.val1.i10.i   ; 2 uses
  %i.bl = select i1 %i.bk, ptr %i.bh, ptr %i.bg, !unpredictable !4
  %i.bm = select i1 %i.bk, ptr %i.bg, ptr %i.bh, !unpredictable !4 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !847, !nonnull !4, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false), !alias.scope !847
  store ptr %i.bn, ptr %i.bh, align 8, !alias.scope !847
  store i64 %i.bp, ptr %i.bi, align 8, !alias.scope !847
  %.val.i11.i = load i64, ptr %i.bj, align 8, !alias.scope !847, !noundef !4
  %.val1.i12.i = load i64, ptr %i.v, align 8, !alias.scope !847, !noundef !4
  %i.bq = icmp ugt i64 %.val.i11.i, %.val1.i12.i  ; 2 uses
  %i.br = select i1 %i.bq, ptr %i.bg, ptr %i.s, !unpredictable !4
  %i.bs = select i1 %i.bq, ptr %i.s, ptr %i.bg, !unpredictable !4 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !847, !nonnull !4, !noundef !4 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !alias.scope !847
  store ptr %i.bt, ptr %i.bg, align 8, !alias.scope !847
  store i64 %i.bv, ptr %i.bj, align 8, !alias.scope !847
  %.val.i13.i = load i64, ptr %i.ap, align 8, !alias.scope !847, !noundef !4
  %.val1.i14.i = load i64, ptr %i.af, align 8, !alias.scope !847, !noundef !4
  %i.bw = icmp ugt i64 %.val.i13.i, %.val1.i14.i  ; 2 uses
  %i.bx = select i1 %i.bw, ptr %i.am, ptr %i.ac, !unpredictable !4
  %i.by = select i1 %i.bw, ptr %i.ac, ptr %i.am, !unpredictable !4 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !847, !nonnull !4, !noundef !4 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false), !alias.scope !847
  store ptr %i.bz, ptr %i.am, align 8, !alias.scope !847
  store i64 %i.cb, ptr %i.ap, align 8, !alias.scope !847
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 64 ; 24 uses
  %i.cd = getelementptr i8, ptr %.sroa.02.0, i64 72 ; 9 uses
  %.val1.i16.i = load i64, ptr %i.cd, align 8, !alias.scope !847, !noundef !4
  %i.ce = icmp ugt i64 %i.bf, %.val1.i16.i        ; 2 uses
  %i.cf = select i1 %i.ce, ptr %i.ax, ptr %i.cc, !unpredictable !4
  %i.cg = select i1 %i.ce, ptr %i.cc, ptr %i.ax, !unpredictable !4 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !847, !nonnull !4, !noundef !4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i64 16, i1 false), !alias.scope !847
  store ptr %i.ch, ptr %i.ax, align 8, !alias.scope !847
  store i64 %i.cj, ptr %i.ay, align 8, !alias.scope !847
  %i.ck = icmp ugt i64 %i.al, %i.av               ; 3 uses
  %i.cl = select i1 %i.ck, ptr %i.ad, ptr %i.an, !unpredictable !4
  %i.cm = select i1 %i.ck, ptr %i.an, ptr %i.ad, !unpredictable !4
  %i.cn = select i1 %i.ck, ptr %i.at, ptr %i.aj, !unpredictable !4 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i64 16, i1 false), !alias.scope !847
  store ptr %i.cn, ptr %i.ad, align 8, !alias.scope !847
  store i64 %i.cp, ptr %i.ae, align 8, !alias.scope !847
  %i.cq = icmp ugt i64 %i.ab, %i.bp               ; 2 uses
  %i.cr = select i1 %i.cq, ptr %i.t, ptr %i.bh, !unpredictable !4
  %i.cs = select i1 %i.cq, ptr %i.bh, ptr %i.t, !unpredictable !4 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !847, !nonnull !4, !noundef !4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i64 16, i1 false), !alias.scope !847
  store ptr %i.ct, ptr %i.t, align 8, !alias.scope !847
  store i64 %i.cv, ptr %i.u, align 8, !alias.scope !847
  %.val.i21.i = load i64, ptr %i.cd, align 8, !alias.scope !847, !noundef !4
  %.val1.i22.i = load i64, ptr %i.l, align 8, !alias.scope !847, !noundef !4
  %i.cw = icmp ugt i64 %.val.i21.i, %.val1.i22.i  ; 2 uses
  %i.cx = select i1 %i.cw, ptr %i.cc, ptr %.sroa.02.0, !unpredictable !4
  %i.cy = select i1 %i.cw, ptr %.sroa.02.0, ptr %i.cc, !unpredictable !4 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !847, !nonnull !4, !noundef !4 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.0, ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i64 16, i1 false), !alias.scope !847
  store ptr %i.cz, ptr %i.cc, align 8, !alias.scope !847
  store i64 %i.db, ptr %i.cd, align 8, !alias.scope !847
  %.val.i23.i = load i64, ptr %i.af, align 8, !alias.scope !847, !noundef !4
  %.val1.i24.i = load i64, ptr %i.v, align 8, !alias.scope !847, !noundef !4
  %i.dc = icmp ugt i64 %.val.i23.i, %.val1.i24.i  ; 2 uses
  %i.dd = select i1 %i.dc, ptr %i.ac, ptr %i.s, !unpredictable !4
  %i.de = select i1 %i.dc, ptr %i.s, ptr %i.ac, !unpredictable !4 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !alias.scope !847, !nonnull !4, !noundef !4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.dd, i64 16, i1 false), !alias.scope !847
  store ptr %i.df, ptr %i.ac, align 8, !alias.scope !847
  store i64 %i.dh, ptr %i.af, align 8, !alias.scope !847
  %i.di = icmp ugt i64 %i.bv, %i.cb               ; 3 uses
  %i.dj = select i1 %i.di, ptr %i.bg, ptr %i.am, !unpredictable !4
  %i.dk = select i1 %i.di, ptr %i.am, ptr %i.bg, !unpredictable !4
  %i.dl = select i1 %i.di, ptr %i.bz, ptr %i.bt, !unpredictable !4 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i64 16, i1 false), !alias.scope !847
  store ptr %i.dl, ptr %i.bg, align 8, !alias.scope !847
  store i64 %i.dn, ptr %i.bj, align 8, !alias.scope !847
  %.val.i27.i = load i64, ptr %i.bi, align 8, !alias.scope !847, !noundef !4
  %.val1.i28.i = load i64, ptr %i.ao, align 8, !alias.scope !847, !noundef !4
  %i.do = icmp ugt i64 %.val.i27.i, %.val1.i28.i  ; 2 uses
  %i.dp = select i1 %i.do, ptr %i.bh, ptr %i.an, !unpredictable !4
  %i.dq = select i1 %i.do, ptr %i.an, ptr %i.bh, !unpredictable !4 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !alias.scope !847, !nonnull !4, !noundef !4
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.dp, i64 16, i1 false), !alias.scope !847
  store ptr %i.dr, ptr %i.bh, align 8, !alias.scope !847
  store i64 %i.dt, ptr %i.bi, align 8, !alias.scope !847
  %i.du = icmp ugt i64 %i.cv, %i.cp               ; 3 uses
  %i.dv = select i1 %i.du, ptr %i.t, ptr %i.ad, !unpredictable !4
  %i.dw = select i1 %i.du, ptr %i.ad, ptr %i.t, !unpredictable !4
  %i.dx = select i1 %i.du, ptr %i.cn, ptr %i.ct, !unpredictable !4 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i64 16, i1 false), !alias.scope !847
  store ptr %i.dx, ptr %i.t, align 8, !alias.scope !847
  store i64 %i.dz, ptr %i.u, align 8, !alias.scope !847
  %i.ea = icmp ugt i64 %i.r, %i.cj                ; 2 uses
  %i.eb = select i1 %i.ea, ptr %i.j, ptr %i.ax, !unpredictable !4
  %i.ec = select i1 %i.ea, ptr %i.ax, ptr %i.j, !unpredictable !4 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !847, !nonnull !4, !noundef !4 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.eb, i64 16, i1 false), !alias.scope !847
  store ptr %i.ed, ptr %i.j, align 8, !alias.scope !847
  store i64 %i.ef, ptr %i.k, align 8, !alias.scope !847
  %i.eg = icmp ugt i64 %i.dn, %i.db               ; 3 uses
  %i.eh = select i1 %i.eg, ptr %i.bg, ptr %i.cc, !unpredictable !4
  %i.ei = select i1 %i.eg, ptr %i.cc, ptr %i.bg, !unpredictable !4
  %i.ej = select i1 %i.eg, ptr %i.cz, ptr %i.dl, !unpredictable !4 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.eh, i64 16, i1 false), !alias.scope !847
  store ptr %i.ej, ptr %i.bg, align 8, !alias.scope !847
  store i64 %i.el, ptr %i.bj, align 8, !alias.scope !847
  %.val.i35.i = load i64, ptr %i.ae, align 8, !alias.scope !847, !noundef !4
  %.val1.i36.i = load i64, ptr %i.az, align 8, !alias.scope !847, !noundef !4
  %i.em = icmp ugt i64 %.val.i35.i, %.val1.i36.i  ; 2 uses
  %i.en = select i1 %i.em, ptr %i.ad, ptr %i.aw, !unpredictable !4
  %i.eo = select i1 %i.em, ptr %i.aw, ptr %i.ad, !unpredictable !4 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !alias.scope !847, !nonnull !4, !noundef !4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.en, i64 16, i1 false), !alias.scope !847
  store ptr %i.ep, ptr %i.ad, align 8, !alias.scope !847
  store i64 %i.er, ptr %i.ae, align 8, !alias.scope !847
  %.val.i37.i = load i64, ptr %i.ay, align 8, !alias.scope !847, !noundef !4
  %i.es = icmp ugt i64 %.val.i37.i, %i.dt         ; 2 uses
  %i.et = select i1 %i.es, ptr %i.ax, ptr %i.bh, !unpredictable !4
  %i.eu = select i1 %i.es, ptr %i.bh, ptr %i.ax, !unpredictable !4 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !alias.scope !847, !nonnull !4, !noundef !4 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.et, i64 16, i1 false), !alias.scope !847
  store ptr %i.ev, ptr %i.ax, align 8, !alias.scope !847
  store i64 %i.ex, ptr %i.ay, align 8, !alias.scope !847
  %i.ey = icmp ugt i64 %i.ef, %i.dz               ; 3 uses
  %i.ez = select i1 %i.ey, ptr %i.j, ptr %i.t, !unpredictable !4
  %i.fa = select i1 %i.ey, ptr %i.t, ptr %i.j, !unpredictable !4
  %i.fb = select i1 %i.ey, ptr %i.dx, ptr %i.ed, !unpredictable !4
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fd = load i64, ptr %i.fc, align 8, !alias.scope !847, !noundef !4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.ez, i64 16, i1 false), !alias.scope !847
  store ptr %i.fb, ptr %i.j, align 8, !alias.scope !847
  store i64 %i.fd, ptr %i.k, align 8, !alias.scope !847
  %.val.i41.i = load i64, ptr %i.az, align 8, !alias.scope !847, !noundef !4
  %.val1.i42.i = load i64, ptr %i.l, align 8, !alias.scope !847, !noundef !4
  %i.fe = icmp ugt i64 %.val.i41.i, %.val1.i42.i  ; 2 uses
  %i.ff = select i1 %i.fe, ptr %i.aw, ptr %.sroa.02.0, !unpredictable !4
  %i.fg = select i1 %i.fe, ptr %.sroa.02.0, ptr %i.aw, !unpredictable !4 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !847, !nonnull !4, !noundef !4
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.0, ptr noundef nonnull align 8 dereferenceable(16) %i.ff, i64 16, i1 false), !alias.scope !847
  store ptr %i.fh, ptr %i.aw, align 8, !alias.scope !847
  store i64 %i.fj, ptr %i.az, align 8, !alias.scope !847
  %.val.i43.i = load i64, ptr %i.bi, align 8, !alias.scope !847, !noundef !4
  %.val1.i44.i = load i64, ptr %i.ap, align 8, !alias.scope !847, !noundef !4
  %i.fk = icmp ugt i64 %.val.i43.i, %.val1.i44.i  ; 2 uses
  %i.fl = select i1 %i.fk, ptr %i.bh, ptr %i.am, !unpredictable !4
  %i.fm = select i1 %i.fk, ptr %i.am, ptr %i.bh, !unpredictable !4 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !alias.scope !847, !nonnull !4, !noundef !4 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.fl, i64 16, i1 false), !alias.scope !847
  store ptr %i.fn, ptr %i.bh, align 8, !alias.scope !847
  store i64 %i.fp, ptr %i.bi, align 8, !alias.scope !847
  %.val.i45.i = load i64, ptr %i.ao, align 8, !alias.scope !847, !noundef !4
  %.val1.i46.i = load i64, ptr %i.cd, align 8, !alias.scope !847, !noundef !4
  %i.fq = icmp ugt i64 %.val.i45.i, %.val1.i46.i  ; 2 uses
  %i.fr = select i1 %i.fq, ptr %i.an, ptr %i.cc, !unpredictable !4
  %i.fs = select i1 %i.fq, ptr %i.cc, ptr %i.an, !unpredictable !4 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !alias.scope !847, !nonnull !4, !noundef !4 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fv = load i64, ptr %i.fu, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.fr, i64 16, i1 false), !alias.scope !847
  store ptr %i.ft, ptr %i.an, align 8, !alias.scope !847
  store i64 %i.fv, ptr %i.ao, align 8, !alias.scope !847
  %i.fw = icmp ugt i64 %i.ex, %i.el               ; 3 uses
  %i.fx = select i1 %i.fw, ptr %i.ax, ptr %i.bg, !unpredictable !4
  %i.fy = select i1 %i.fw, ptr %i.bg, ptr %i.ax, !unpredictable !4
  %i.fz = select i1 %i.fw, ptr %i.ej, ptr %i.ev, !unpredictable !4 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.fx, i64 16, i1 false), !alias.scope !847
  store ptr %i.fz, ptr %i.ax, align 8, !alias.scope !847
  store i64 %i.gb, ptr %i.ay, align 8, !alias.scope !847
  %.val.i49.i = load i64, ptr %i.u, align 8, !alias.scope !847, !noundef !4
  %i.gc = icmp ugt i64 %.val.i49.i, %i.er         ; 2 uses
  %i.gd = select i1 %i.gc, ptr %i.t, ptr %i.ad, !unpredictable !4
  %i.ge = select i1 %i.gc, ptr %i.ad, ptr %i.t, !unpredictable !4 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !alias.scope !847, !nonnull !4, !noundef !4 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gh = load i64, ptr %i.gg, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.gd, i64 16, i1 false), !alias.scope !847
  store ptr %i.gf, ptr %i.t, align 8, !alias.scope !847
  store i64 %i.gh, ptr %i.u, align 8, !alias.scope !847
  %.val.i51.i = load i64, ptr %i.v, align 8, !alias.scope !847, !noundef !4
  %.val1.i52.i = load i64, ptr %i.l, align 8, !alias.scope !847, !noundef !4
  %i.gi = icmp ugt i64 %.val.i51.i, %.val1.i52.i  ; 2 uses
  %i.gj = select i1 %i.gi, ptr %i.s, ptr %.sroa.02.0, !unpredictable !4
  %i.gk = select i1 %i.gi, ptr %.sroa.02.0, ptr %i.s, !unpredictable !4 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !alias.scope !847, !nonnull !4, !noundef !4
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.0, ptr noundef nonnull align 8 dereferenceable(16) %i.gj, i64 16, i1 false), !alias.scope !847
  store ptr %i.gl, ptr %i.s, align 8, !alias.scope !847
  store i64 %i.gn, ptr %i.v, align 8, !alias.scope !847
  %i.go = icmp ugt i64 %i.fj, %i.dh               ; 2 uses
  %i.gp = select i1 %i.go, ptr %i.aw, ptr %i.ac, !unpredictable !4
  %i.gq = select i1 %i.go, ptr %i.ac, ptr %i.aw, !unpredictable !4 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !alias.scope !847, !nonnull !4, !noundef !4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.gp, i64 16, i1 false), !alias.scope !847
  store ptr %i.gr, ptr %i.aw, align 8, !alias.scope !847
  store i64 %i.gt, ptr %i.az, align 8, !alias.scope !847
  %.val.i55.i = load i64, ptr %i.ae, align 8, !alias.scope !847, !noundef !4
  %.val1.i56.i = load i64, ptr %i.bj, align 8, !alias.scope !847, !noundef !4
  %i.gu = icmp ugt i64 %.val.i55.i, %.val1.i56.i  ; 2 uses
  %i.gv = select i1 %i.gu, ptr %i.ad, ptr %i.bg, !unpredictable !4
  %i.gw = select i1 %i.gu, ptr %i.bg, ptr %i.ad, !unpredictable !4 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !alias.scope !847, !nonnull !4, !noundef !4
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gz = load i64, ptr %i.gy, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.gv, i64 16, i1 false), !alias.scope !847
  store ptr %i.gx, ptr %i.ad, align 8, !alias.scope !847
  store i64 %i.gz, ptr %i.ae, align 8, !alias.scope !847
  %i.ha = icmp ugt i64 %i.fp, %i.fv               ; 3 uses
  %i.hb = select i1 %i.ha, ptr %i.bh, ptr %i.an, !unpredictable !4
  %i.hc = select i1 %i.ha, ptr %i.an, ptr %i.bh, !unpredictable !4
  %i.hd = select i1 %i.ha, ptr %i.ft, ptr %i.fn, !unpredictable !4 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.hf = load i64, ptr %i.he, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.hb, i64 16, i1 false), !alias.scope !847
  store ptr %i.hd, ptr %i.bh, align 8, !alias.scope !847
  store i64 %i.hf, ptr %i.bi, align 8, !alias.scope !847
  %i.hg = icmp ugt i64 %i.gb, %i.gh               ; 3 uses
  %i.hh = select i1 %i.hg, ptr %i.ax, ptr %i.t, !unpredictable !4
  %i.hi = select i1 %i.hg, ptr %i.t, ptr %i.ax, !unpredictable !4
  %i.hj = select i1 %i.hg, ptr %i.gf, ptr %i.fz, !unpredictable !4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hl = load i64, ptr %i.hk, align 8, !alias.scope !847, !noundef !4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.hh, i64 16, i1 false), !alias.scope !847
  store ptr %i.hj, ptr %i.ax, align 8, !alias.scope !847
  store i64 %i.hl, ptr %i.ay, align 8, !alias.scope !847
  %.val.i61.i = load i64, ptr %i.ap, align 8, !alias.scope !847, !noundef !4
  %i.hm = icmp ugt i64 %.val.i61.i, %i.gn         ; 2 uses
  %i.hn = select i1 %i.hm, ptr %i.am, ptr %i.s, !unpredictable !4
  %i.ho = select i1 %i.hm, ptr %i.s, ptr %i.am, !unpredictable !4 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !alias.scope !847, !nonnull !4, !noundef !4 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hr = load i64, ptr %i.hq, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.hn, i64 16, i1 false), !alias.scope !847
  store ptr %i.hp, ptr %i.am, align 8, !alias.scope !847
  store i64 %i.hr, ptr %i.ap, align 8, !alias.scope !847
  %.val.i63.i = load i64, ptr %i.cd, align 8, !alias.scope !847, !noundef !4
  %.val1.i64.i = load i64, ptr %i.af, align 8, !alias.scope !847, !noundef !4
  %i.hs = icmp ugt i64 %.val.i63.i, %.val1.i64.i  ; 2 uses
  %i.ht = select i1 %i.hs, ptr %i.cc, ptr %i.ac, !unpredictable !4
  %i.hu = select i1 %i.hs, ptr %i.ac, ptr %i.cc, !unpredictable !4 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !alias.scope !847, !nonnull !4, !noundef !4 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %i.hx = load i64, ptr %i.hw, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ht, i64 16, i1 false), !alias.scope !847
  store ptr %i.hv, ptr %i.cc, align 8, !alias.scope !847
  store i64 %i.hx, ptr %i.cd, align 8, !alias.scope !847
  %.val.i65.i = load i64, ptr %i.bj, align 8, !alias.scope !847, !noundef !4
  %i.hy = icmp ugt i64 %.val.i65.i, %i.gt         ; 2 uses
  %i.hz = select i1 %i.hy, ptr %i.bg, ptr %i.aw, !unpredictable !4
  %i.ia = select i1 %i.hy, ptr %i.aw, ptr %i.bg, !unpredictable !4 ; 2 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !alias.scope !847, !nonnull !4, !noundef !4 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.id = load i64, ptr %i.ic, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.hz, i64 16, i1 false), !alias.scope !847
  store ptr %i.ib, ptr %i.bg, align 8, !alias.scope !847
  store i64 %i.id, ptr %i.bj, align 8, !alias.scope !847
  %.val.i67.i = load i64, ptr %i.u, align 8, !alias.scope !847, !noundef !4
  %i.ie = icmp ugt i64 %.val.i67.i, %i.gz         ; 2 uses
  %i.if = select i1 %i.ie, ptr %i.t, ptr %i.ad, !unpredictable !4
  %i.ig = select i1 %i.ie, ptr %i.ad, ptr %i.t, !unpredictable !4 ; 2 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !alias.scope !847, !nonnull !4, !noundef !4
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.ij = load i64, ptr %i.ii, align 8, !alias.scope !847, !noundef !4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.if, i64 16, i1 false), !alias.scope !847
  store ptr %i.ih, ptr %i.t, align 8, !alias.scope !847
  store i64 %i.ij, ptr %i.u, align 8, !alias.scope !847
  %.val.i69.i = load i64, ptr %i.af, align 8, !alias.scope !847, !noundef !4
  %.val1.i70.i = load i64, ptr %i.v, align 8, !alias.scope !847, !noundef !4
  %i.ik = icmp ugt i64 %.val.i69.i, %.val1.i70.i  ; 2 uses
  %i.il = select i1 %i.ik, ptr %i.ac, ptr %i.s, !unpredictable !4
  %i.im = select i1 %i.ik, ptr %i.s, ptr %i.ac, !unpredictable !4 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !alias.scope !847, !nonnull !4, !noundef !4
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.ip = load i64, ptr %i.io, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.il, i64 16, i1 false), !alias.scope !847
  store ptr %i.in, ptr %i.ac, align 8, !alias.scope !847
  store i64 %i.ip, ptr %i.af, align 8, !alias.scope !847
  %i.iq = icmp ugt i64 %i.hx, %i.hr               ; 3 uses
  %i.ir = select i1 %i.iq, ptr %i.cc, ptr %i.am, !unpredictable !4
  %i.is = select i1 %i.iq, ptr %i.am, ptr %i.cc, !unpredictable !4
  %i.it = select i1 %i.iq, ptr %i.hp, ptr %i.hv, !unpredictable !4
  %i.iu = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iv = load i64, ptr %i.iu, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.ir, i64 16, i1 false), !alias.scope !847
  store ptr %i.it, ptr %i.cc, align 8, !alias.scope !847
  store i64 %i.iv, ptr %i.cd, align 8, !alias.scope !847
  %.val.i73.i = load i64, ptr %i.ao, align 8, !alias.scope !847, !noundef !4
  %.val1.i74.i = load i64, ptr %i.az, align 8, !alias.scope !847, !noundef !4
  %i.iw = icmp ugt i64 %.val.i73.i, %.val1.i74.i  ; 2 uses
  %i.ix = select i1 %i.iw, ptr %i.an, ptr %i.aw, !unpredictable !4
  %i.iy = select i1 %i.iw, ptr %i.aw, ptr %i.an, !unpredictable !4 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !alias.scope !847, !nonnull !4, !noundef !4
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.jb = load i64, ptr %i.ja, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.ix, i64 16, i1 false), !alias.scope !847
  store ptr %i.iz, ptr %i.an, align 8, !alias.scope !847
  store i64 %i.jb, ptr %i.ao, align 8, !alias.scope !847
  %i.jc = icmp ugt i64 %i.hf, %i.id               ; 3 uses
  %i.jd = select i1 %i.jc, ptr %i.bh, ptr %i.bg, !unpredictable !4
  %i.je = select i1 %i.jc, ptr %i.bg, ptr %i.bh, !unpredictable !4
  %i.jf = select i1 %i.jc, ptr %i.ib, ptr %i.hd, !unpredictable !4
  %i.jg = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jh = load i64, ptr %i.jg, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.jd, i64 16, i1 false), !alias.scope !847
  store ptr %i.jf, ptr %i.bh, align 8, !alias.scope !847
  store i64 %i.jh, ptr %i.bi, align 8, !alias.scope !847
  %.val.i77.i = load i64, ptr %i.ap, align 8, !alias.scope !847, !noundef !4
  %i.ji = icmp ugt i64 %.val.i77.i, %i.ip         ; 2 uses
  %i.jj = select i1 %i.ji, ptr %i.am, ptr %i.ac, !unpredictable !4
  %i.jk = select i1 %i.ji, ptr %i.ac, ptr %i.am, !unpredictable !4 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !alias.scope !847, !nonnull !4, !noundef !4
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jn = load i64, ptr %i.jm, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.jj, i64 16, i1 false), !alias.scope !847
  store ptr %i.jl, ptr %i.am, align 8, !alias.scope !847
  store i64 %i.jn, ptr %i.ap, align 8, !alias.scope !847
  %.val.i79.i = load i64, ptr %i.az, align 8, !alias.scope !847, !noundef !4
  %i.jo = icmp ugt i64 %.val.i79.i, %i.iv         ; 2 uses
  %i.jp = select i1 %i.jo, ptr %i.aw, ptr %i.cc, !unpredictable !4
  %i.jq = select i1 %i.jo, ptr %i.cc, ptr %i.aw, !unpredictable !4 ; 2 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !alias.scope !847, !nonnull !4, !noundef !4
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.jt = load i64, ptr %i.js, align 8, !alias.scope !847, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 8 dereferenceable(16) %i.jp, i64 16, i1 false), !alias.scope !847
  store ptr %i.jr, ptr %i.aw, align 8, !alias.scope !847
  store i64 %i.jt, ptr %i.az, align 8, !alias.scope !847
  %.val1.i82.i = load i64, ptr %i.bj, align 8, !alias.scope !847, !noundef !4
  %i.ju = icmp ugt i64 %i.jb, %.val1.i82.i        ; 2 uses
  %i.jv = select i1 %i.ju, ptr %i.an, ptr %i.bg, !unpredictable !4
  %i.jw = select i1 %i.ju, ptr %i.bg, ptr %i.an, !unpredictable !4 ; 2 uses
  %i.jx = load ptr, ptr %i.jw, align 8, !alias.scope !847, !nonnull !4, !noundef !4
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jz = load i64, ptr %i.jy, align 8, !alias.scope !847, !noundef !4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %i.jv, i64 16, i1 false), !alias.scope !847
  store ptr %i.jx, ptr %i.an, align 8, !alias.scope !847
  store i64 %i.jz, ptr %i.ao, align 8, !alias.scope !847
  %.val.i83.i = load i64, ptr %i.ae, align 8, !alias.scope !847, !noundef !4
  %i.ka = icmp ugt i64 %.val.i83.i, %i.jh         ; 2 uses
  %i.kb = select i1 %i.ka, ptr %i.ad, ptr %i.bh, !unpredictable !4
  %i.kc = select i1 %i.ka, ptr %i.bh, ptr %i.ad, !unpredictable !4 ; 2 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !alias.scope !847, !nonnull !4, !noundef !4
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.kf = load i64, ptr %i.ke, align 8, !alias.scope !847, !noundef !4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.kb, i64 16, i1 false), !alias.scope !847
  store ptr %i.kd, ptr %i.ad, align 8, !alias.scope !847
  store i64 %i.kf, ptr %i.ae, align 8, !alias.scope !847
  %.val.i85.i = load i64, ptr %i.cd, align 8, !alias.scope !847, !noundef !4
  %i.kg = icmp ugt i64 %.val.i85.i, %i.jn         ; 2 uses
  %i.kh = select i1 %i.kg, ptr %i.cc, ptr %i.am, !unpredictable !4
  %i.ki = select i1 %i.kg, ptr %i.am, ptr %i.cc, !unpredictable !4 ; 2 uses
  %i.kj = load ptr, ptr %i.ki, align 8, !alias.scope !847, !nonnull !4, !noundef !4
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kl = load i64, ptr %i.kk, align 8, !alias.scope !847, !noundef !4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.kh, i64 16, i1 false), !alias.scope !847
  store ptr %i.kj, ptr %i.cc, align 8, !alias.scope !847
  store i64 %i.kl, ptr %i.cd, align 8, !alias.scope !847
  %.val.i87.i = load i64, ptr %i.bj, align 8, !alias.scope !847, !noundef !4
  %i.km = icmp ugt i64 %.val.i87.i, %i.jt         ; 2 uses
  %i.kn = select i1 %i.km, ptr %i.bg, ptr %i.aw, !unpredictable !4
  %i.ko = select i1 %i.km, ptr %i.aw, ptr %i.bg, !unpredictable !4 ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !alias.scope !847, !nonnull !4, !noundef !4
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kr = load i64, ptr %i.kq, align 8, !alias.scope !847, !noundef !4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.kn, i64 16, i1 false), !alias.scope !847
  store ptr %i.kp, ptr %i.bg, align 8, !alias.scope !847
  store i64 %i.kr, ptr %i.bj, align 8, !alias.scope !847
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 48 ; 21 uses
  %i.kt = getelementptr i8, ptr %.sroa.02.0, i64 56 ; 7 uses
  %.val.i.i14 = load i64, ptr %i.kt, align 8, !alias.scope !848, !noundef !4
  %i.ku = getelementptr i8, ptr %.sroa.02.0, i64 8 ; 4 uses
  %.val1.i.i15 = load i64, ptr %i.ku, align 8, !alias.scope !848, !noundef !4
  %i.kv = icmp ugt i64 %.val.i.i14, %.val1.i.i15  ; 2 uses
  %i.kw = select i1 %i.kv, ptr %i.ks, ptr %.sroa.02.0, !unpredictable !4
  %i.kx = select i1 %i.kv, ptr %.sroa.02.0, ptr %i.ks, !unpredictable !4 ; 2 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !alias.scope !848, !nonnull !4, !noundef !4 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.la = load i64, ptr %i.kz, align 8, !alias.scope !848, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.0, ptr noundef nonnull align 8 dereferenceable(16) %i.kw, i64 16, i1 false), !alias.scope !848
  store ptr %i.ky, ptr %i.ks, align 8, !alias.scope !848
  store i64 %i.la, ptr %i.kt, align 8, !alias.scope !848
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 16 ; 15 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 112 ; 15 uses
  %i.ld = getelementptr i8, ptr %.sroa.02.0, i64 120 ; 6 uses
  %.val.i1.i16 = load i64, ptr %i.ld, align 8, !alias.scope !848, !noundef !4
  %i.le = getelementptr i8, ptr %.sroa.02.0, i64 24 ; 5 uses
  %.val1.i2.i17 = load i64, ptr %i.le, align 8, !alias.scope !848, !noundef !4
  %i.lf = icmp ugt i64 %.val.i1.i16, %.val1.i2.i17 ; 2 uses
  %i.lg = select i1 %i.lf, ptr %i.lc, ptr %i.lb, !unpredictable !4
  %i.lh = select i1 %i.lf, ptr %i.lb, ptr %i.lc, !unpredictable !4 ; 2 uses
  %i.li = load ptr, ptr %i.lh, align 8, !alias.scope !848, !nonnull !4, !noundef !4
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lk = load i64, ptr %i.lj, align 8, !alias.scope !848, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lb, ptr noundef nonnull align 8 dereferenceable(16) %i.lg, i64 16, i1 false), !alias.scope !848
  store ptr %i.li, ptr %i.lc, align 8, !alias.scope !848
  store i64 %i.lk, ptr %i.ld, align 8, !alias.scope !848
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 32 ; 18 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 80 ; 21 uses
  %i.ln = getelementptr i8, ptr %.sroa.02.0, i64 88 ; 7 uses
  %.val.i3.i18 = load i64, ptr %i.ln, align 8, !alias.scope !848, !noundef !4
  %i.lo = getelementptr i8, ptr %.sroa.02.0, i64 40 ; 7 uses
  %.val1.i4.i19 = load i64, ptr %i.lo, align 8, !alias.scope !848, !noundef !4
  %i.lp = icmp ugt i64 %.val.i3.i18, %.val1.i4.i19 ; 2 uses
  %i.lq = select i1 %i.lp, ptr %i.lm, ptr %i.ll, !unpredictable !4
  %i.lr = select i1 %i.lp, ptr %i.ll, ptr %i.lm, !unpredictable !4 ; 2 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !alias.scope !848, !nonnull !4, !noundef !4
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lu = load i64, ptr %i.lt, align 8, !alias.scope !848, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ll, ptr noundef nonnull align 8 dereferenceable(16) %i.lq, i64 16, i1 false), !alias.scope !848
  store ptr %i.ls, ptr %i.lm, align 8, !alias.scope !848
  store i64 %i.lu, ptr %i.ln, align 8, !alias.scope !848
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 64 ; 21 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 128 ; 12 uses
  %i.lx = getelementptr i8, ptr %.sroa.02.0, i64 136 ; 5 uses
  %.val.i5.i20 = load i64, ptr %i.lx, align 8, !alias.scope !848, !noundef !4
  %i.ly = getelementptr i8, ptr %.sroa.02.0, i64 72 ; 8 uses
  %.val1.i6.i21 = load i64, ptr %i.ly, align 8, !alias.scope !848, !noundef !4
  %i.lz = icmp ugt i64 %.val.i5.i20, %.val1.i6.i21 ; 2 uses
  %i.ma = select i1 %i.lz, ptr %i.lw, ptr %i.lv, !unpredictable !4
  %i.mb = select i1 %i.lz, ptr %i.lv, ptr %i.lw, !unpredictable !4 ; 2 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !alias.scope !848, !nonnull !4, !noundef !4 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.me = load i64, ptr %i.md, align 8, !alias.scope !848, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lv, ptr noundef nonnull align 8 dereferenceable(16) %i.ma, i64 16, i1 false), !alias.scope !848
  store ptr %i.mc, ptr %i.lw, align 8, !alias.scope !848
  store i64 %i.me, ptr %i.lx, align 8, !alias.scope !848
  %.val1.i8.i22 = load i64, ptr %i.ku, align 8, !alias.scope !848, !noundef !4
  %i.mf = icmp ugt i64 %i.lk, %.val1.i8.i22       ; 2 uses
  %i.mg = select i1 %i.mf, ptr %i.lc, ptr %.sroa.02.0, !unpredictable !4
  %i.mh = select i1 %i.mf, ptr %.sroa.02.0, ptr %i.lc, !unpredictable !4 ; 2 uses
  %i.mi = load ptr, ptr %i.mh, align 8, !alias.scope !848, !nonnull !4, !noundef !4 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %i.mk = load i64, ptr %i.mj, align 8, !alias.scope !848, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.0, ptr noundef nonnull align 8 dereferenceable(16) %i.mg, i64 16, i1 false), !alias.scope !848
  store ptr %i.mi, ptr %i.lc, align 8, !alias.scope !848
  store i64 %i.mk, ptr %i.ld, align 8, !alias.scope !848
  %.val.i9.i23 = load i64, ptr %i.ly, align 8, !alias.scope !848, !noundef !4
  %.val1.i10.i24 = load i64, ptr %i.lo, align 8, !alias.scope !848, !noundef !4
  %i.ml = icmp ugt i64 %.val.i9.i23, %.val1.i10.i24 ; 2 uses
  %i.mm = select i1 %i.ml, ptr %i.lv, ptr %i.ll, !unpredictable !4
  %i.mn = select i1 %i.ml, ptr %i.ll, ptr %i.lv, !unpredictable !4 ; 2 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !alias.scope !848, !nonnull !4, !noundef !4
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mq = load i64, ptr %i.mp, align 8, !alias.scope !848, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ll, ptr noundef nonnull align 8 dereferenceable(16) %i.mm, i64 16, i1 false), !alias.scope !848
  store ptr %i.mo, ptr %i.lv, align 8, !alias.scope !848
  store i64 %i.mq, ptr %i.ly, align 8, !alias.scope !848
  %i.mr = icmp ugt i64 %i.me, %i.la               ; 3 uses
  %i.ms = select i1 %i.mr, ptr %i.lw, ptr %i.ks, !unpredictable !4
  %i.mt = select i1 %i.mr, ptr %i.ks, ptr %i.lw, !unpredictable !4
  %i.mu = select i1 %i.mr, ptr %i.ky, ptr %i.mc, !unpredictable !4 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mw = load i64, ptr %i.mv, align 8, !alias.scope !848, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ks, ptr noundef nonnull align 8 dereferenceable(16) %i.ms, i64 16, i1 false), !alias.scope !848
  store ptr %i.mu, ptr %i.lw, align 8, !alias.scope !848
  store i64 %i.mw, ptr %i.lx, align 8, !alias.scope !848
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 96 ; 15 uses
  %i.my = getelementptr i8, ptr %.sroa.02.0, i64 104 ; 6 uses
  %.val.i13.i25 = load i64, ptr %i.my, align 8, !alias.scope !848, !noundef !4
  %i.mz = icmp ugt i64 %.val.i13.i25, %i.lu       ; 2 uses
  %i.na = select i1 %i.mz, ptr %i.mx, ptr %i.lm, !unpredictable !4
  %i.nb = select i1 %i.mz, ptr %i.lm, ptr %i.mx, !unpredictable !4 ; 2 uses
  %i.nc = load ptr, ptr %i.nb, align 8, !alias.scope !848, !nonnull !4, !noundef !4 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.ne = load i64, ptr %i.nd, align 8, !alias.scope !848, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lm, ptr noundef nonnull align 8 dereferenceable(16) %i.na, i64 16, i1 false), !alias.scope !848
  store ptr %i.nc, ptr %i.mx, align 8, !alias.scope !848
  store i64 %i.ne, ptr %i.my, align 8, !alias.scope !848
  %.val.i15.i = load i64, ptr %i.lo, align 8, !alias.scope !848, !noundef !4
  %.val1.i16.i26 = load i64, ptr %i.ku, align 8, !alias.scope !848, !noundef !4
  %i.nf = icmp ugt i64 %.val.i15.i, %.val1.i16.i26 ; 2 uses
  %i.ng = select i1 %i.nf, ptr %i.ll, ptr %.sroa.02.0, !unpredictable !4
  %i.nh = select i1 %i.nf, ptr %.sroa.02.0, ptr %i.ll, !unpredictable !4 ; 2 uses
  %i.ni = load ptr, ptr %i.nh, align 8, !alias.scope !848, !nonnull !4, !noundef !4 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nk = load i64, ptr %i.nj, align 8, !alias.scope !848, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.0, ptr noundef nonnull align 8 dereferenceable(16) %i.ng, i64 16, i1 false), !alias.scope !848
  store ptr %i.ni, ptr %i.ll, align 8, !alias.scope !848
  store i64 %i.nk, ptr %i.lo, align 8, !alias.scope !848
  %.val.i17.i = load i64, ptr %i.kt, align 8, !alias.scope !848, !noundef !4
  %.val1.i18.i = load i64, ptr %i.le, align 8, !alias.scope !848, !noundef !4
  %i.nl = icmp ugt i64 %.val.i17.i, %.val1.i18.i  ; 2 uses
  %i.nm = select i1 %i.nl, ptr %i.ks, ptr %i.lb, !unpredictable !4
  %i.nn = select i1 %i.nl, ptr %i.lb, ptr %i.ks, !unpredictable !4 ; 2 uses
  %i.no = load ptr, ptr %i.nn, align 8, !alias.scope !848, !nonnull !4, !noundef !4 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.nq = load i64, ptr %i.np, align 8, !alias.scope !848, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lb, ptr noundef nonnull align 8 dereferenceable(16) %i.nm, i64 16, i1 false), !alias.scope !848
  store ptr %i.no, ptr %i.ks, align 8, !alias.scope !848
  store i64 %i.nq, ptr %i.kt, align 8, !alias.scope !848
  %.val.i19.i = load i64, ptr %i.ln, align 8, !alias.scope !848, !noundef !4
  %i.nr = icmp ugt i64 %.val.i19.i, %i.mq         ; 2 uses
  %i.ns = select i1 %i.nr, ptr %i.lm, ptr %i.lv, !unpredictable !4
  %i.nt = select i1 %i.nr, ptr %i.lv, ptr %i.lm, !unpredictable !4 ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !alias.scope !848, !nonnull !4, !noundef !4
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.nw = load i64, ptr %i.nv, align 8, !alias.scope !848, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lv, ptr noundef nonnull align 8 dereferenceable(16) %i.ns, i64 16, i1 false), !alias.scope !848
  store ptr %i.nu, ptr %i.lm, align 8, !alias.scope !848
  store i64 %i.nw, ptr %i.ln, align 8, !alias.scope !848
  %i.nx = icmp ugt i64 %i.mw, %i.mk               ; 3 uses
  %i.ny = select i1 %i.nx, ptr %i.lw, ptr %i.lc, !unpredictable !4
  %i.nz = select i1 %i.nx, ptr %i.lc, ptr %i.lw, !unpredictable !4
  %i.oa = select i1 %i.nx, ptr %i.mi, ptr %i.mu, !unpredictable !4 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.oc = load i64, ptr %i.ob, align 8, !alias.scope !848, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lc, ptr noundef nonnull align 8 dereferenceable(16) %i.ny, i64 16, i1 false), !alias.scope !848
  store ptr %i.oa, ptr %i.lw, align 8, !alias.scope !848
  store i64 %i.oc, ptr %i.lx, align 8, !alias.scope !848
  %.val.i23.i27 = load i64, ptr %i.ly, align 8, !alias.scope !848, !noundef !4
  %.val1.i24.i28 = load i64, ptr %i.le, align 8, !alias.scope !848, !noundef !4
  %i.od = icmp ugt i64 %.val.i23.i27, %.val1.i24.i28 ; 2 uses
  %i.oe = select i1 %i.od, ptr %i.lv, ptr %i.lb, !unpredictable !4
  %i.of = select i1 %i.od, ptr %i.lb, ptr %i.lv, !unpredictable !4 ; 2 uses
  %i.og = load ptr, ptr %i.of, align 8, !alias.scope !848, !nonnull !4, !noundef !4 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.oi = load i64, ptr %i.oh, align 8, !alias.scope !848, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lb, ptr noundef nonnull align 8 dereferenceable(16) %i.oe, i64 16, i1 false), !alias.scope !848
  store ptr %i.og, ptr %i.lv, align 8, !alias.scope !848
  store i64 %i.oi, ptr %i.ly, align 8, !alias.scope !848
  %i.oj = icmp ugt i64 %i.ne, %i.nq               ; 3 uses
  %i.ok = select i1 %i.oj, ptr %i.mx, ptr %i.ks, !unpredictable !4
  %i.ol = select i1 %i.oj, ptr %i.ks, ptr %i.mx, !unpredictable !4
  %i.om = select i1 %i.oj, ptr %i.no, ptr %i.nc, !unpredictable !4 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %i.oo = load i64, ptr %i.on, align 8, !alias.scope !848, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ks, ptr noundef nonnull align 8 dereferenceable(16) %i.ok, i64 16, i1 false), !alias.scope !848
  store ptr %i.om, ptr %i.mx, align 8, !alias.scope !848
  store i64 %i.oo, ptr %i.my, align 8, !alias.scope !848
  %.val.i27.i29 = load i64, ptr %i.ld, align 8, !alias.scope !848, !noundef !4
  %i.op = icmp ugt i64 %.val.i27.i29, %i.nw       ; 2 uses
  %i.oq = select i1 %i.op, ptr %i.lc, ptr %i.lm, !unpredictable !4
  %i.or = select i1 %i.op, ptr %i.lm, ptr %i.lc, !unpredictable !4 ; 2 uses
  %i.os = load ptr, ptr %i.or, align 8, !alias.scope !848, !nonnull !4, !noundef !4
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  %i.ou = load i64, ptr %i.ot, align 8, !alias.scope !848, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lm, ptr noundef nonnull align 8 dereferenceable(16) %i.oq, i64 16, i1 false), !alias.scope !848
  store ptr %i.os, ptr %i.lc, align 8, !alias.scope !848
  store i64 %i.ou, ptr %i.ld, align 8, !alias.scope !848
  %.val.i29.i = load i64, ptr %i.le, align 8, !alias.scope !848, !noundef !4
  %.val1.i30.i = load i64, ptr %i.ku, align 8, !alias.scope !848, !noundef !4
  %i.ov = icmp ugt i64 %.val.i29.i, %.val1.i30.i  ; 2 uses
  %i.ow = select i1 %i.ov, ptr %i.lb, ptr %.sroa.02.0, !unpredictable !4
  %i.ox = select i1 %i.ov, ptr %.sroa.02.0, ptr %i.lb, !unpredictable !4 ; 2 uses
  %i.oy = load ptr, ptr %i.ox, align 8, !alias.scope !848, !nonnull !4, !noundef !4
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.pa = load i64, ptr %i.oz, align 8, !alias.scope !848, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.0, ptr noundef nonnull align 8 dereferenceable(16) %i.ow, i64 16, i1 false), !alias.scope !848
  store ptr %i.oy, ptr %i.lb, align 8, !alias.scope !848
  store i64 %i.pa, ptr %i.le, align 8, !alias.scope !848
  %i.pb = icmp ugt i64 %i.oi, %i.nk               ; 3 uses
  %i.pc = select i1 %i.pb, ptr %i.lv, ptr %i.ll, !unpredictable !4
  %i.pd = select i1 %i.pb, ptr %i.ll, ptr %i.lv, !unpredictable !4
  %i.pe = select i1 %i.pb, ptr %i.ni, ptr %i.og, !unpredictable !4 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %i.pg = load i64, ptr %i.pf, align 8, !alias.scope !848, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ll, ptr noundef nonnull align 8 dereferenceable(16) %i.pc, i64 16, i1 false), !alias.scope !848
  store ptr %i.pe, ptr %i.lv, align 8, !alias.scope !848
  store i64 %i.pg, ptr %i.ly, align 8, !alias.scope !848
  %.val.i33.i = load i64, ptr %i.ln, align 8, !alias.scope !848, !noundef !4
  %.val1.i34.i = load i64, ptr %i.kt, align 8, !alias.scope !848, !noundef !4
  %i.ph = icmp ugt i64 %.val.i33.i, %.val1.i34.i  ; 2 uses
  %i.pi = select i1 %i.ph, ptr %i.lm, ptr %i.ks, !unpredictable !4
  %i.pj = select i1 %i.ph, ptr %i.ks, ptr %i.lm, !unpredictable !4 ; 2 uses
  %i.pk = load ptr, ptr %i.pj, align 8, !alias.scope !848, !nonnull !4, !noundef !4 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  %i.pm = load i64, ptr %i.pl, align 8, !alias.scope !848, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ks, ptr noundef nonnull align 8 dereferenceable(16) %i.pi, i64 16, i1 false), !alias.scope !848
  store ptr %i.pk, ptr %i.lm, align 8, !alias.scope !848
  store i64 %i.pm, ptr %i.ln, align 8, !alias.scope !848
  %i.pn = icmp ugt i64 %i.oc, %i.oo               ; 3 uses
  %i.po = select i1 %i.pn, ptr %i.lw, ptr %i.mx, !unpredictable !4
  %i.pp = select i1 %i.pn, ptr %i.mx, ptr %i.lw, !unpredictable !4
  %i.pq = select i1 %i.pn, ptr %i.om, ptr %i.oa, !unpredictable !4
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.ps = load i64, ptr %i.pr, align 8, !alias.scope !848, !noundef !4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mx, ptr noundef nonnull align 8 dereferenceable(16) %i.po, i64 16, i1 false), !alias.scope !848
  store ptr %i.pq, ptr %i.lw, align 8, !alias.scope !848
  store i64 %i.ps, ptr %i.lx, align 8, !alias.scope !848
  %.val.i37.i30 = load i64, ptr %i.kt, align 8, !alias.scope !848, !noundef !4
  %.val1.i38.i = load i64, ptr %i.lo, align 8, !alias.scope !848, !noundef !4
  %i.pt = icmp ugt i64 %.val.i37.i30, %.val1.i38.i ; 2 uses
  %i.pu = select i1 %i.pt, ptr %i.ks, ptr %i.ll, !unpredictable !4
  %i.pv = select i1 %i.pt, ptr %i.ll, ptr %i.ks, !unpredictable !4 ; 2 uses
  %i.pw = load ptr, ptr %i.pv, align 8, !alias.scope !848, !nonnull !4, !noundef !4
  %i.px = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.py = load i64, ptr %i.px, align 8, !alias.scope !848, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ll, ptr noundef nonnull align 8 dereferenceable(16) %i.pu, i64 16, i1 false), !alias.scope !848
  store ptr %i.pw, ptr %i.ks, align 8, !alias.scope !848
  store i64 %i.py, ptr %i.kt, align 8, !alias.scope !848
  %i.pz = icmp ugt i64 %i.pm, %i.pg               ; 3 uses
  %i.qa = select i1 %i.pz, ptr %i.lm, ptr %i.lv, !unpredictable !4
  %i.qb = select i1 %i.pz, ptr %i.lv, ptr %i.lm, !unpredictable !4
  %i.qc = select i1 %i.pz, ptr %i.pe, ptr %i.pk, !unpredictable !4
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %i.qe = load i64, ptr %i.qd, align 8, !alias.scope !848, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lv, ptr noundef nonnull align 8 dereferenceable(16) %i.qa, i64 16, i1 false), !alias.scope !848
  store ptr %i.qc, ptr %i.lm, align 8, !alias.scope !848
  store i64 %i.qe, ptr %i.ln, align 8, !alias.scope !848
  %.val1.i42.i31 = load i64, ptr %i.my, align 8, !alias.scope !848, !noundef !4
  %i.qf = icmp ugt i64 %i.ou, %.val1.i42.i31      ; 2 uses
  %i.qg = select i1 %i.qf, ptr %i.lc, ptr %i.mx, !unpredictable !4
  %i.qh = select i1 %i.qf, ptr %i.mx, ptr %i.lc, !unpredictable !4 ; 2 uses
  %i.qi = load ptr, ptr %i.qh, align 8, !alias.scope !848, !nonnull !4, !noundef !4
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  %i.qk = load i64, ptr %i.qj, align 8, !alias.scope !848, !noundef !4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mx, ptr noundef nonnull align 8 dereferenceable(16) %i.qg, i64 16, i1 false), !alias.scope !848
  store ptr %i.qi, ptr %i.lc, align 8, !alias.scope !848
  store i64 %i.qk, ptr %i.ld, align 8, !alias.scope !848
  %.val.i43.i32 = load i64, ptr %i.lo, align 8, !alias.scope !848, !noundef !4
  %i.ql = icmp ugt i64 %.val.i43.i32, %i.pa       ; 2 uses
  %i.qm = select i1 %i.ql, ptr %i.ll, ptr %i.lb, !unpredictable !4
  %i.qn = select i1 %i.ql, ptr %i.lb, ptr %i.ll, !unpredictable !4 ; 2 uses
  %i.qo = load ptr, ptr %i.qn, align 8, !alias.scope !848, !nonnull !4, !noundef !4
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.qq = load i64, ptr %i.qp, align 8, !alias.scope !848, !noundef !4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lb, ptr noundef nonnull align 8 dereferenceable(16) %i.qm, i64 16, i1 false), !alias.scope !848
  store ptr %i.qo, ptr %i.ll, align 8, !alias.scope !848
  store i64 %i.qq, ptr %i.lo, align 8, !alias.scope !848
  %.val.i45.i33 = load i64, ptr %i.ly, align 8, !alias.scope !848, !noundef !4
  %i.qr = icmp ugt i64 %.val.i45.i33, %i.py       ; 2 uses
  %i.qs = select i1 %i.qr, ptr %i.lv, ptr %i.ks, !unpredictable !4
  %i.qt = select i1 %i.qr, ptr %i.ks, ptr %i.lv, !unpredictable !4 ; 2 uses
  %i.qu = load ptr, ptr %i.qt, align 8, !alias.scope !848, !nonnull !4, !noundef !4
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %i.qw = load i64, ptr %i.qv, align 8, !alias.scope !848, !noundef !4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ks, ptr noundef nonnull align 8 dereferenceable(16) %i.qs, i64 16, i1 false), !alias.scope !848
  store ptr %i.qu, ptr %i.lv, align 8, !alias.scope !848
  store i64 %i.qw, ptr %i.ly, align 8, !alias.scope !848
  %.val.i47.i = load i64, ptr %i.my, align 8, !alias.scope !848, !noundef !4
  %i.qx = icmp ugt i64 %.val.i47.i, %i.qe         ; 2 uses
  %i.qy = select i1 %i.qx, ptr %i.mx, ptr %i.lm, !unpredictable !4
  %i.qz = select i1 %i.qx, ptr %i.lm, ptr %i.mx, !unpredictable !4 ; 2 uses
  %i.ra = load ptr, ptr %i.qz, align 8, !alias.scope !848, !nonnull !4, !noundef !4
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qz, i64 8
  %i.rc = load i64, ptr %i.rb, align 8, !alias.scope !848, !noundef !4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lm, ptr noundef nonnull align 8 dereferenceable(16) %i.qy, i64 16, i1 false), !alias.scope !848
  store ptr %i.ra, ptr %i.mx, align 8, !alias.scope !848
  store i64 %i.rc, ptr %i.my, align 8, !alias.scope !848
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g
  %.sroa.01.0 = phi i64 [ 13, %bb.g ], [ 9, %bb.h ], [ 1, %bb.f ] ; 3 uses
  %i.rd = add nsw i64 %.sroa.01.0, -1
  %or.cond.not.i = icmp ult i64 %i.rd, %.sroa.8.0
  br i1 %or.cond.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.re = getelementptr inbounds nuw [16 x i8], ptr %.sroa.02.0, i64 %.sroa.8.0
  %.not4.i = icmp samesign eq i64 %.sroa.01.0, %.sroa.8.0
  br i1 %.not4.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftReNCINvMB8_SB1m_20sort_unstable_by_keyjNCNvNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer9operators11OPERATOR_RE27___rust_std_internal_init_fn0E0EB29_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.k
  %i.rf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.02.0, i64 %.sroa.01.0
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailReNCINvMB8_SB18_20sort_unstable_by_keyjNCNvNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer9operators11OPERATOR_RE27___rust_std_internal_init_fn0E0EB1V_.exit.i, %.lr.ph.preheader.i
  %.sroa.0.05.i = phi ptr [ %i.ro, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailReNCINvMB8_SB18_20sort_unstable_by_keyjNCNvNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer9operators11OPERATOR_RE27___rust_std_internal_init_fn0E0EB1V_.exit.i ], [ %i.rf, %.lr.ph.preheader.i ] ; 8 uses
  %i.rg = getelementptr i8, ptr %.sroa.0.05.i, i64 8
  %.val9.i.i = load i64, ptr %i.rg, align 8, !alias.scope !849, !noundef !4 ; 3 uses
  %i.rh = getelementptr i8, ptr %.sroa.0.05.i, i64 -8
  %.val10.i.i = load i64, ptr %i.rh, align 8, !alias.scope !849, !noundef !4
  %i.ri = icmp ugt i64 %.val9.i.i, %.val10.i.i
  br i1 %i.ri, label %bb.l, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailReNCINvMB8_SB18_20sort_unstable_by_keyjNCNvNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer9operators11OPERATOR_RE27___rust_std_internal_init_fn0E0EB1V_.exit.i

bb.l:                                             ; preds = %.lr.ph.i
  %i.rj = load ptr, ptr %.sroa.0.05.i, align 8, !alias.scope !849, !nonnull !4, !noundef !4
  %.sroa.0.0.i.i54 = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.05.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i54, i64 16, i1 false), !alias.scope !849
  %i.rk = icmp eq ptr %.sroa.0.0.i.i54, %.sroa.02.0
  br i1 %i.rk, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.i.i56, i64 -16 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i56, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i, i64 16, i1 false), !alias.scope !849
  %i.rl = icmp eq ptr %.sroa.0.0.i.i, %.sroa.02.0
  br i1 %i.rl, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %.sroa.0.0.i.i56 = phi ptr [ %.sroa.0.0.i.i, %bb.m ], [ %.sroa.0.0.i.i54, %bb.l ] ; 5 uses
  %.sroa.5.0.i.i55 = phi ptr [ %.sroa.0.0.i.i56, %bb.m ], [ %.sroa.0.05.i, %bb.l ] ; 2 uses
  %i.rm = getelementptr i8, ptr %.sroa.5.0.i.i55, i64 -24
  %.val8.i.i = load i64, ptr %i.rm, align 8, !alias.scope !849, !noundef !4
  %i.rn = icmp ugt i64 %.val9.i.i, %.val8.i.i
  br i1 %i.rn, label %bb.m, label %._crit_edge

._crit_edge:                                      ; preds = %bb.m, %.lr.ph, %bb.l
  %.sroa.5.0.i.i.lcssa = phi ptr [ %.sroa.0.05.i, %bb.l ], [ %.sroa.0.0.i.i56, %bb.m ], [ %.sroa.5.0.i.i55, %.lr.ph ]
  %.sroa.0.0.i.lcssa.i = phi ptr [ %.sroa.02.0, %bb.l ], [ %.sroa.02.0, %bb.m ], [ %.sroa.0.0.i.i56, %.lr.ph ]
  store ptr %i.rj, ptr %.sroa.0.0.i.lcssa.i, align 8, !alias.scope !849, !noalias !850
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -8
  store i64 %.val9.i.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !849, !noalias !850
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailReNCINvMB8_SB18_20sort_unstable_by_keyjNCNvNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer9operators11OPERATOR_RE27___rust_std_internal_init_fn0E0EB1V_.exit.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailReNCINvMB8_SB18_20sort_unstable_by_keyjNCNvNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer9operators11OPERATOR_RE27___rust_std_internal_init_fn0E0EB1V_.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.ro = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.ro, %i.re
  br i1 %.not.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftReNCINvMB8_SB1m_20sort_unstable_by_keyjNCNvNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer9operators11OPERATOR_RE27___rust_std_internal_init_fn0E0EB29_.exit, label %.lr.ph.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftReNCINvMB8_SB1m_20sort_unstable_by_keyjNCNvNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer9operators11OPERATOR_RE27___rust_std_internal_init_fn0E0EB29_.exit: ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailReNCINvMB8_SB18_20sort_unstable_by_keyjNCNvNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer9operators11OPERATOR_RE27___rust_std_internal_init_fn0E0EB1V_.exit.i, %bb.k
  br i1 %i.e, label %.sink.split, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftReNCINvMB8_SB1m_20sort_unstable_by_keyjNCNvNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer9operators11OPERATOR_RE27___rust_std_internal_init_fn0E0EB29_.exit
  %.not = icmp eq ptr %.sroa.02.0, %0
  br i1 %.not, label %bb.e, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !851)
  %i.rp = add nsw i64 %1, -1                      ; 2 uses
  %i.rq = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.rp
  %i.rr = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.rp
  %i.rs = getelementptr i8, ptr %i.f, i64 -16
  br label %.lr.ph.i35

._crit_edge.i:                                    ; preds = %.lr.ph.i35
  %i.rt = getelementptr i8, ptr %i.sm, i64 16     ; 2 uses
  %i.ru = getelementptr i8, ptr %i.sl, i64 16
  %i.rv = and i64 %1, 1
  %i.rw = icmp eq i64 %i.rv, 0
  br i1 %i.rw, label %bb.q, label %bb.p

.lr.ph.i35:                                       ; preds = %.lr.ph.i35, %bb.o
  %.sroa.0.010.i = phi ptr [ %i.sg, %.lr.ph.i35 ], [ %i.a, %bb.o ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.rx, %.lr.ph.i35 ], [ 0, %bb.o ]
  %.sroa.06.08.i = phi ptr [ %i.sf, %.lr.ph.i35 ], [ %0, %bb.o ] ; 3 uses
  %.sroa.011.07.i = phi ptr [ %i.sd, %.lr.ph.i35 ], [ %i.f, %bb.o ] ; 3 uses
  %.sroa.015.06.i = phi ptr [ %i.sm, %.lr.ph.i35 ], [ %i.rs, %bb.o ] ; 3 uses
  %.sroa.017.05.i = phi ptr [ %i.sl, %.lr.ph.i35 ], [ %i.rr, %bb.o ] ; 3 uses
  %.sroa.019.04.i = phi ptr [ %i.sn, %.lr.ph.i35 ], [ %i.rq, %bb.o ] ; 2 uses
  %i.rx = add nuw nsw i64 %.sroa.04.09.i, 1       ; 2 uses
  %i.ry = getelementptr i8, ptr %.sroa.011.07.i, i64 8
  %.sroa.011.0.val.i = load i64, ptr %i.ry, align 8, !alias.scope !851, !noundef !4
  %i.rz = getelementptr i8, ptr %.sroa.06.08.i, i64 8
  %.sroa.06.0.val.i = load i64, ptr %i.rz, align 8, !alias.scope !851, !noundef !4
  %i.sa = icmp ugt i64 %.sroa.011.0.val.i, %.sroa.06.0.val.i ; 3 uses
  %..i23.i = select i1 %i.sa, ptr %.sroa.011.07.i, ptr %.sroa.06.08.i
  %i.sb = xor i1 %i.sa, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i, ptr noundef nonnull align 8 dereferenceable(16) %..i23.i, i64 16, i1 false), !noalias !852
  %i.sc = zext i1 %i.sa to i64
  %i.sd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.07.i, i64 %i.sc ; 4 uses
  %i.se = zext i1 %i.sb to i64
  %i.sf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.06.08.i, i64 %i.se ; 5 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 16 ; 2 uses
  %i.sh = getelementptr i8, ptr %.sroa.017.05.i, i64 8
  %.sroa.017.0.val.i = load i64, ptr %i.sh, align 8, !alias.scope !851, !noundef !4
  %i.si = getelementptr i8, ptr %.sroa.015.06.i, i64 8
  %.sroa.015.0.val.i = load i64, ptr %i.si, align 8, !alias.scope !851, !noundef !4
  %i.sj = icmp ugt i64 %.sroa.017.0.val.i, %.sroa.015.0.val.i ; 3 uses
  %..i.i = select i1 %i.sj, ptr %.sroa.015.06.i, ptr %.sroa.017.05.i
  %i.sk = xor i1 %i.sj, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.04.i, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !noalias !853
  %.neg.i.i = sext i1 %i.sk to i64
  %i.sl = getelementptr [16 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i ; 2 uses
  %.neg15.i.i = sext i1 %i.sj to i64
  %i.sm = getelementptr [16 x i8], ptr %.sroa.015.06.i, i64 %.neg15.i.i ; 2 uses
  %i.sn = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -16
  %exitcond.not.i = icmp eq i64 %i.rx, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i35

bb.p:                                             ; preds = %._crit_edge.i
  %i.so = icmp ult ptr %i.sf, %i.rt               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.so, ptr %i.sf, ptr %i.sd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sg, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0..sroa.011.0.i, i64 16, i1 false)
  %i.sp = zext i1 %i.so to i64
  %i.sq = getelementptr inbounds nuw [16 x i8], ptr %i.sf, i64 %i.sp
  %i.sr = xor i1 %i.so, true
  %i.ss = zext i1 %i.sr to i64
  %i.st = getelementptr inbounds nuw [16 x i8], ptr %i.sd, i64 %i.ss
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.sd, %._crit_edge.i ], [ %i.st, %bb.p ]
  %.sroa.06.1.i = phi ptr [ %i.sf, %._crit_edge.i ], [ %i.sq, %bb.p ]
  %i.su = icmp ne ptr %.sroa.06.1.i, %i.rt
  %i.sv = icmp ne ptr %.sroa.011.1.i, %i.ru
  %or.cond.i = select i1 %i.su, i1 true, i1 %i.sv, !prof !16
  br i1 %or.cond.i, label %bb.r, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeReNCINvMB8_SB1g_20sort_unstable_by_keyjNCNvNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer9operators11OPERATOR_RE27___rust_std_internal_init_fn0E0EB23_.exit, !prof !16

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #23, !noalias !851
  unreachable

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeReNCINvMB8_SB1g_20sort_unstable_by_keyjNCNvNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer9operators11OPERATOR_RE27___rust_std_internal_init_fn0E0EB23_.exit: ; preds = %bb.q
  %i.sw = shl nuw nsw i64 %1, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.sw, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftReNCINvMB8_SB1m_20sort_unstable_by_keyjNCNvNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer9operators11OPERATOR_RE27___rust_std_internal_init_fn0E0EB29_.exit, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeReNCINvMB8_SB1g_20sort_unstable_by_keyjNCNvNvNtNtCsarohYtwVpE2_13libcst_native9tokenizer9operators11OPERATOR_RE27___rust_std_internal_init_fn0E0EB23_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.s
end_hunk_0
