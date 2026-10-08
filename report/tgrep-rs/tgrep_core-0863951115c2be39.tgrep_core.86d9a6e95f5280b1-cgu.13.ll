Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.13?download=true
inline.NumInlined: 911
inline.NumDeleted: 194
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stablejNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val13 = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %.val14 = load i64, ptr %0, align 8, !noundef !4 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.val.i = load ptr, ptr %.0.val, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 20 uses
  %i.f = icmp ult i64 %.val13, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ult i64 %.val14, %i.e
  br i1 %i.g, label %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val13, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val14, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25
  unreachable

_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.val13 ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.val14 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.q)
  %i.r = tail call i32 @memcmp(ptr nonnull %i.k, ptr nonnull %i.o, i64 %spec.store.select.i.i) ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %i.u = sub i64 %i.m, %i.q
  %spec.select.i.i = select i1 %i.t, i64 %i.u, i64 %i.s ; 2 uses
  %i.v = icmp sgt i64 %spec.select.i.i, -1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val10 = load i64, ptr %i.w, align 8, !noundef !4 ; 3 uses
  %.val11 = load i64, ptr %i.x, align 8, !noundef !4 ; 3 uses
  %i.y = icmp ult i64 %.val10, %i.e
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit
  %i.z = icmp ult i64 %.val11, %i.e
  br i1 %i.z, label %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit18, label %bb.g

bb.f:                                             ; preds = %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val10, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val11, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25
  unreachable

_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit18: ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.val10 ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.val11 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i16 = tail call i64 @llvm.umin.i64(i64 %i.af, i64 %i.aj)
  %i.ak = tail call i32 @memcmp(ptr nonnull %i.ad, ptr nonnull %i.ah, i64 %spec.store.select.i.i16) ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = sub i64 %i.af, %i.aj
  %spec.select.i.i17 = select i1 %i.am, i64 %i.an, i64 %i.al
  %i.ao = icmp slt i64 %spec.select.i.i17, 0      ; 2 uses
  %spec.select.i.i.lobit = lshr i64 %spec.select.i.i, 63
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select.i.i.lobit ; 2 uses
  %i.aq = zext i1 %i.v to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aq ; 4 uses
  %i.as = select i1 %i.ao, i64 3, i64 2
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.as ; 3 uses
  %i.au = select i1 %i.ao, i64 2, i64 3
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.au ; 3 uses
  %.val7 = load i64, ptr %i.at, align 8, !noundef !4 ; 4 uses
  %.val8 = load i64, ptr %i.ap, align 8, !noundef !4 ; 4 uses
  %i.aw = icmp ult i64 %.val7, %i.e
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit18
  %i.ax = icmp ult i64 %.val8, %i.e
  br i1 %i.ax, label %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit22, label %bb.j

bb.i:                                             ; preds = %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit18
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val7, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val8, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25
  unreachable

_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit22: ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.val7 ; 2 uses
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.val8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !4, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !4, !noundef !4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i20 = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 %i.bh)
  %i.bi = tail call i32 @memcmp(ptr nonnull %i.bb, ptr nonnull %i.bf, i64 %spec.store.select.i.i20) ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp eq i32 %i.bi, 0
  %i.bl = sub i64 %i.bd, %i.bh
  %spec.select.i.i21 = select i1 %i.bk, i64 %i.bl, i64 %i.bj
  %i.bm = icmp slt i64 %spec.select.i.i21, 0      ; 3 uses
  %.val4 = load i64, ptr %i.av, align 8, !noundef !4 ; 3 uses
  %.val5 = load i64, ptr %i.ar, align 8, !noundef !4 ; 3 uses
  %i.bn = icmp ult i64 %.val4, %i.e
  br i1 %i.bn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit22
  %i.bo = icmp ult i64 %.val5, %i.e
  br i1 %i.bo, label %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit26, label %bb.m

bb.l:                                             ; preds = %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit22
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val4, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val5, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25
  unreachable

_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit26: ; preds = %bb.k
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.val4 ; 2 uses
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.val5 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !4, !noundef !4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !4, !noundef !4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i24 = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.by)
  %i.bz = tail call i32 @memcmp(ptr nonnull %i.bs, ptr nonnull %i.bw, i64 %spec.store.select.i.i24) ; 2 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = icmp eq i32 %i.bz, 0
  %i.cc = sub i64 %i.bu, %i.by
  %spec.select.i.i25 = select i1 %i.cb, i64 %i.cc, i64 %i.ca
  %i.cd = icmp slt i64 %spec.select.i.i25, 0      ; 3 uses
  %i.ce = select i1 %i.cd, ptr %i.at, ptr %i.ar, !unpredictable !4
  %i.cf = select i1 %i.bm, ptr %i.ap, ptr %i.ce, !unpredictable !4 ; 3 uses
  %i.cg = select i1 %i.bm, ptr %i.ar, ptr %i.at, !unpredictable !4
  %i.ch = select i1 %i.cd, ptr %i.av, ptr %i.cg, !unpredictable !4 ; 3 uses
  %.val1 = load i64, ptr %i.ch, align 8, !noundef !4 ; 3 uses
  %.val2 = load i64, ptr %i.cf, align 8, !noundef !4 ; 3 uses
  %i.ci = icmp ult i64 %.val1, %i.e
  br i1 %i.ci, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit26
  %i.cj = icmp ult i64 %.val2, %i.e
  br i1 %i.cj, label %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit30, label %bb.p

bb.o:                                             ; preds = %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit26
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val1, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val2, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25
  unreachable

_RNCINvMNtCsf3Ta7LF998c_4core5sliceSj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtBV_11IndexReader4opens0_0E0BX_.exit30: ; preds = %bb.n
  %i.ck = select i1 %i.cd, ptr %i.ar, ptr %i.av, !unpredictable !4
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.val1 ; 2 uses
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %.val2 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !4, !noundef !4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !noundef !4 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !4, !noundef !4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cu = load i64, ptr %i.ct, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i28 = tail call i64 @llvm.umin.i64(i64 %i.cq, i64 %i.cu)
  %i.cv = tail call i32 @memcmp(ptr nonnull %i.co, ptr nonnull %i.cs, i64 %spec.store.select.i.i28) ; 2 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = icmp eq i32 %i.cv, 0
  %i.cy = sub i64 %i.cq, %i.cu
  %spec.select.i.i29 = select i1 %i.cx, i64 %i.cy, i64 %i.cw
  %i.cz = icmp slt i64 %spec.select.i.i29, 0      ; 2 uses
  %i.da = select i1 %i.cz, ptr %i.ch, ptr %i.cf, !unpredictable !4
  %i.db = select i1 %i.cz, ptr %i.cf, ptr %i.ch, !unpredictable !4
  %i.dc = select i1 %i.bm, i64 %.val7, i64 %.val8
  store i64 %i.dc, ptr %1, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.de = load i64, ptr %i.da, align 8
  store i64 %i.de, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dg = load i64, ptr %i.db, align 8
  store i64 %i.dg, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.di = load i64, ptr %i.ck, align 8
  store i64 %i.di, ptr %i.dh, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort8_stableNtNtCsbzNSmZPCnTx_10tgrep_core5query12TrigramQueryNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB19_11sort_by_keymNCNvB1b_8simplify0E0EB1d_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 64)) %1, ptr nofree noundef nonnull captures(address) initializes((0, 64)) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8.i = load i32, ptr %i.a, align 4, !noundef !4
  %.val9.i = load i32, ptr %0, align 4, !noundef !4
  %i.b = icmp ult i32 %.val8.i, %.val9.i          ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6.i = load i32, ptr %i.c, align 4, !noundef !4
  %.val7.i = load i32, ptr %i.d, align 4, !noundef !4
  %i.e = icmp ult i32 %.val6.i, %.val7.i          ; 2 uses
  %i.f = zext i1 %i.b to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f ; 3 uses
  %i.h = xor i1 %i.b, true
  %i.i = zext i1 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.i ; 4 uses
  %i.k = select i1 %i.e, i64 3, i64 2
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 4 uses
  %i.m = select i1 %i.e, i64 2, i64 3
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m ; 3 uses
  %.val4.i = load i32, ptr %i.l, align 4, !noundef !4
  %.val5.i = load i32, ptr %i.g, align 4, !noundef !4
  %i.o = icmp ult i32 %.val4.i, %.val5.i          ; 3 uses
  %.val2.i = load i32, ptr %i.n, align 4, !noundef !4
  %.val3.i = load i32, ptr %i.j, align 4, !noundef !4
  %i.p = icmp ult i32 %.val2.i, %.val3.i          ; 3 uses
  %i.q = select i1 %i.o, ptr %i.l, ptr %i.g, !unpredictable !4
  %i.r = select i1 %i.p, ptr %i.j, ptr %i.n, !unpredictable !4
  %i.s = select i1 %i.p, ptr %i.l, ptr %i.j, !unpredictable !4
  %i.t = select i1 %i.o, ptr %i.g, ptr %i.s, !unpredictable !4 ; 3 uses
  %i.u = select i1 %i.o, ptr %i.j, ptr %i.l, !unpredictable !4
  %i.v = select i1 %i.p, ptr %i.n, ptr %i.u, !unpredictable !4 ; 3 uses
  %.val.i = load i32, ptr %i.v, align 4, !noundef !4
  %.val1.i = load i32, ptr %i.t, align 4, !noundef !4
  %i.w = icmp ult i32 %.val.i, %.val1.i           ; 2 uses
  %i.x = select i1 %i.w, ptr %i.v, ptr %i.t, !unpredictable !4
  %i.y = select i1 %i.w, ptr %i.t, ptr %i.v, !unpredictable !4
  %i.z = load i64, ptr %i.q, align 4              ; 3 uses
  store i64 %i.z, ptr %2, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i64, ptr %i.x, align 4
  store i64 %i.ab, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load i64, ptr %i.y, align 4
  store i64 %i.ad, ptr %i.ac, align 4
  %i.ae = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.af = load i64, ptr %i.r, align 4             ; 3 uses
  store i64 %i.af, ptr %i.ae, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.ah = getelementptr i8, ptr %2, i64 32        ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val8.i1 = load i32, ptr %i.ai, align 4, !noundef !4
  %.val9.i2 = load i32, ptr %i.ag, align 4, !noundef !4
  %i.aj = icmp ult i32 %.val8.i1, %.val9.i2       ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val6.i3 = load i32, ptr %i.ak, align 4, !noundef !4
  %.val7.i4 = load i32, ptr %i.al, align 4, !noundef !4
  %i.am = icmp ult i32 %.val6.i3, %.val7.i4       ; 2 uses
  %i.an = zext i1 %i.aj to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.an ; 3 uses
  %i.ap = xor i1 %i.aj, true
  %i.aq = zext i1 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.aq ; 4 uses
  %i.as = select i1 %i.am, i64 3, i64 2
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.as ; 4 uses
  %i.au = select i1 %i.am, i64 2, i64 3
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.au ; 3 uses
  %.val4.i5 = load i32, ptr %i.at, align 4, !noundef !4
  %.val5.i6 = load i32, ptr %i.ao, align 4, !noundef !4
  %i.aw = icmp ult i32 %.val4.i5, %.val5.i6       ; 3 uses
  %.val2.i7 = load i32, ptr %i.av, align 4, !noundef !4
  %.val3.i8 = load i32, ptr %i.ar, align 4, !noundef !4
  %i.ax = icmp ult i32 %.val2.i7, %.val3.i8       ; 3 uses
  %i.ay = select i1 %i.aw, ptr %i.at, ptr %i.ao, !unpredictable !4
  %i.az = select i1 %i.ax, ptr %i.ar, ptr %i.av, !unpredictable !4
  %i.ba = select i1 %i.ax, ptr %i.at, ptr %i.ar, !unpredictable !4
  %i.bb = select i1 %i.aw, ptr %i.ao, ptr %i.ba, !unpredictable !4 ; 3 uses
  %i.bc = select i1 %i.aw, ptr %i.ar, ptr %i.at, !unpredictable !4
  %i.bd = select i1 %i.ax, ptr %i.av, ptr %i.bc, !unpredictable !4 ; 3 uses
  %.val.i9 = load i32, ptr %i.bd, align 4, !noundef !4
  %.val1.i10 = load i32, ptr %i.bb, align 4, !noundef !4
  %i.be = icmp ult i32 %.val.i9, %.val1.i10       ; 2 uses
  %i.bf = select i1 %i.be, ptr %i.bd, ptr %i.bb, !unpredictable !4
  %i.bg = select i1 %i.be, ptr %i.bb, ptr %i.bd, !unpredictable !4
  %i.bh = load i64, ptr %i.ay, align 4            ; 3 uses
  store i64 %i.bh, ptr %i.ah, align 4
  %i.bi = getelementptr i8, ptr %2, i64 40
  %i.bj = load i64, ptr %i.bf, align 4
  store i64 %i.bj, ptr %i.bi, align 4
  %i.bk = getelementptr i8, ptr %2, i64 48
  %i.bl = load i64, ptr %i.bg, align 4
  store i64 %i.bl, ptr %i.bk, align 4
  %i.bm = getelementptr i8, ptr %2, i64 56        ; 2 uses
  %i.bn = load i64, ptr %i.az, align 4            ; 3 uses
  store i64 %i.bn, ptr %i.bm, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bp = trunc i64 %i.bh to i32
  %i.bq = trunc i64 %i.z to i32
  %i.br = icmp ult i32 %i.bp, %i.bq               ; 3 uses
  %i.bs = xor i1 %i.br, true
  %i.bt = select i1 %i.br, i64 %i.bh, i64 %i.z
  store i64 %i.bt, ptr %1, align 4, !noalias !75
  %i.bu = zext i1 %i.br to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.bu ; 3 uses
  %i.bw = zext i1 %i.bs to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bw ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = trunc i64 %i.bn to i32
  %i.ca = trunc i64 %i.af to i32
  %i.cb = icmp ult i32 %i.bz, %i.ca               ; 3 uses
  %i.cc = xor i1 %i.cb, true
  %i.cd = select i1 %i.cb, i64 %i.af, i64 %i.bn
  store i64 %i.cd, ptr %i.bo, align 4, !noalias !76
  %.neg.i.i = sext i1 %i.cc to i64
  %i.ce = getelementptr [8 x i8], ptr %i.bm, i64 %.neg.i.i ; 3 uses
  %.neg13.i.i = sext i1 %i.cb to i64
  %i.cf = getelementptr [8 x i8], ptr %i.ae, i64 %.neg13.i.i ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.011.0.val.i.1 = load i32, ptr %i.bv, align 4, !alias.scope !74, !noundef !4
  %.sroa.06.0.val.i.1 = load i32, ptr %i.bx, align 4, !alias.scope !74, !noundef !4
  %i.ch = icmp ult i32 %.sroa.011.0.val.i.1, %.sroa.06.0.val.i.1 ; 3 uses
  %..i21.i.1 = select i1 %i.ch, ptr %i.bv, ptr %i.bx
  %i.ci = xor i1 %i.ch, true
  %i.cj = load i64, ptr %..i21.i.1, align 4, !alias.scope !74, !noalias !77
  store i64 %i.cj, ptr %i.by, align 4, !noalias !75
  %i.ck = zext i1 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.ck ; 3 uses
  %i.cm = zext i1 %i.ci to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cm ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.017.0.val.i.1 = load i32, ptr %i.ce, align 4, !alias.scope !74, !noundef !4
  %.sroa.015.0.val.i.1 = load i32, ptr %i.cf, align 4, !alias.scope !74, !noundef !4
  %i.cp = icmp ult i32 %.sroa.017.0.val.i.1, %.sroa.015.0.val.i.1 ; 3 uses
  %..i.i.1 = select i1 %i.cp, ptr %i.cf, ptr %i.ce
  %i.cq = xor i1 %i.cp, true
  %i.cr = load i64, ptr %..i.i.1, align 4, !alias.scope !74, !noalias !78
  store i64 %i.cr, ptr %i.cg, align 4, !noalias !76
  %.neg.i.i.1 = sext i1 %i.cq to i64
  %i.cs = getelementptr [8 x i8], ptr %i.ce, i64 %.neg.i.i.1 ; 3 uses
  %.neg13.i.i.1 = sext i1 %i.cp to i64
  %i.ct = getelementptr [8 x i8], ptr %i.cf, i64 %.neg13.i.i.1 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.011.0.val.i.2 = load i32, ptr %i.cl, align 4, !alias.scope !74, !noundef !4
  %.sroa.06.0.val.i.2 = load i32, ptr %i.cn, align 4, !alias.scope !74, !noundef !4
  %i.cv = icmp ult i32 %.sroa.011.0.val.i.2, %.sroa.06.0.val.i.2 ; 3 uses
  %..i21.i.2 = select i1 %i.cv, ptr %i.cl, ptr %i.cn
  %i.cw = xor i1 %i.cv, true
  %i.cx = load i64, ptr %..i21.i.2, align 4, !alias.scope !74, !noalias !77
  store i64 %i.cx, ptr %i.co, align 4, !noalias !75
  %i.cy = zext i1 %i.cv to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cy ; 3 uses
  %i.da = zext i1 %i.cw to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.da ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.017.0.val.i.2 = load i32, ptr %i.cs, align 4, !alias.scope !74, !noundef !4
  %.sroa.015.0.val.i.2 = load i32, ptr %i.ct, align 4, !alias.scope !74, !noundef !4
  %i.dd = icmp ult i32 %.sroa.017.0.val.i.2, %.sroa.015.0.val.i.2 ; 3 uses
  %..i.i.2 = select i1 %i.dd, ptr %i.ct, ptr %i.cs
  %i.de = xor i1 %i.dd, true
  %i.df = load i64, ptr %..i.i.2, align 4, !alias.scope !74, !noalias !78
  store i64 %i.df, ptr %i.cu, align 4, !noalias !76
  %.neg.i.i.2 = sext i1 %i.de to i64
  %i.dg = getelementptr [8 x i8], ptr %i.cs, i64 %.neg.i.i.2 ; 3 uses
  %.neg13.i.i.2 = sext i1 %i.dd to i64
  %i.dh = getelementptr [8 x i8], ptr %i.ct, i64 %.neg13.i.i.2 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.011.0.val.i.3 = load i32, ptr %i.cz, align 4, !alias.scope !74, !noundef !4
  %.sroa.06.0.val.i.3 = load i32, ptr %i.db, align 4, !alias.scope !74, !noundef !4
  %i.dj = icmp ult i32 %.sroa.011.0.val.i.3, %.sroa.06.0.val.i.3 ; 3 uses
  %..i21.i.3 = select i1 %i.dj, ptr %i.cz, ptr %i.db
  %i.dk = xor i1 %i.dj, true
  %i.dl = load i64, ptr %..i21.i.3, align 4, !alias.scope !74, !noalias !77
  store i64 %i.dl, ptr %i.dc, align 4, !noalias !75
  %i.dm = zext i1 %i.dj to i64
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dm
  %i.do = zext i1 %i.dk to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.do
  %.sroa.017.0.val.i.3 = load i32, ptr %i.dg, align 4, !alias.scope !74, !noundef !4
  %.sroa.015.0.val.i.3 = load i32, ptr %i.dh, align 4, !alias.scope !74, !noundef !4
  %i.dq = icmp ult i32 %.sroa.017.0.val.i.3, %.sroa.015.0.val.i.3 ; 3 uses
  %..i.i.3 = select i1 %i.dq, ptr %i.dh, ptr %i.dg
  %i.dr = xor i1 %i.dq, true
  %i.ds = load i64, ptr %..i.i.3, align 4, !alias.scope !74, !noalias !78
  store i64 %i.ds, ptr %i.di, align 4, !noalias !76
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_networkNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB1f_16sort_unstable_byNCNvNtB1j_7builder28write_index_v2_from_postings0E0EB1j_:bb.a
  %.val3.i92.i109 = load i32, ptr %i.nl, align 4, !alias.scope !481, !noundef !4 ; 2 uses
  %i.tj = icmp eq i32 %.val1.i90.i107, %.val3.i92.i109
  %i.tk = icmp ult i32 %.val.i89.i106, %.val2.i91.i108
  %i.tl = icmp ult i32 %.val1.i90.i107, %.val3.i92.i109
  %i.tm = select i1 %i.tj, i1 %i.tk, i1 %i.tl     ; 2 uses
  %i.tn = select i1 %i.tm, ptr %i.on, ptr %i.nk, !unpredictable !4
  %i.to = select i1 %i.tm, ptr %i.nk, ptr %i.on, !unpredictable !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %i.to, i64 12, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.nk, ptr noundef nonnull align 4 dereferenceable(12) %i.tn, i64 12, i1 false), !alias.scope !481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.on, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val.i93.i110 = load i32, ptr %i.pp, align 4, !alias.scope !481
  %.val1.i94.i111 = load i32, ptr %i.pq, align 4, !alias.scope !481, !noundef !4 ; 2 uses
  %.val2.i95.i112 = load i32, ptr %i.oe, align 4, !alias.scope !481
  %.val3.i96.i113 = load i32, ptr %i.of, align 4, !alias.scope !481, !noundef !4 ; 2 uses
  %i.tp = icmp eq i32 %.val1.i94.i111, %.val3.i96.i113
  %i.tq = icmp ult i32 %.val.i93.i110, %.val2.i95.i112
  %i.tr = icmp ult i32 %.val1.i94.i111, %.val3.i96.i113
  %i.ts = select i1 %i.tp, i1 %i.tq, i1 %i.tr     ; 2 uses
  %i.tt = select i1 %i.ts, ptr %i.pp, ptr %i.oe, !unpredictable !4
  %i.tu = select i1 %i.ts, ptr %i.oe, ptr %i.pp, !unpredictable !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.tu, i64 12, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.oe, ptr noundef nonnull align 4 dereferenceable(12) %i.tt, i64 12, i1 false), !alias.scope !481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.pp, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g
  %.sroa.01.0 = phi i64 [ 13, %bb.g ], [ 9, %bb.h ], [ 1, %bb.f ] ; 3 uses
  %i.tv = add nsw i64 %.sroa.01.0, -1
  %or.cond.not.i = icmp ult i64 %i.tv, %.sroa.8.0
  br i1 %or.cond.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.tw = getelementptr inbounds nuw [12 x i8], ptr %.sroa.02.0, i64 %.sroa.8.0
  %.not4.i = icmp samesign eq i64 %.sroa.01.0, %.sroa.8.0
  br i1 %.not4.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB1m_16sort_unstable_byNCNvNtB1q_7builder28write_index_v2_from_postings0E0EB1q_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.k
  %i.tx = getelementptr inbounds nuw [12 x i8], ptr %.sroa.02.0, i64 %.sroa.01.0
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB18_16sort_unstable_byNCNvNtB1c_7builder28write_index_v2_from_postings0E0EB1c_.exit.i, %.lr.ph.preheader.i
  %.sroa.0.05.i = phi ptr [ %i.un, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB18_16sort_unstable_byNCNvNtB1c_7builder28write_index_v2_from_postings0E0EB1c_.exit.i ], [ %i.tx, %.lr.ph.preheader.i ] ; 7 uses
  %i.ty = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -12 ; 4 uses
  %.val11.i.i = load i32, ptr %.sroa.0.05.i, align 4, !alias.scope !482 ; 3 uses
  %i.tz = getelementptr i8, ptr %.sroa.0.05.i, i64 8
  %.val12.i.i = load i32, ptr %i.tz, align 4, !alias.scope !482, !noundef !4 ; 5 uses
  %.val13.i.i = load i32, ptr %i.ty, align 4, !alias.scope !482
  %i.ua = getelementptr i8, ptr %.sroa.0.05.i, i64 -4
  %.val14.i.i = load i32, ptr %i.ua, align 4, !alias.scope !482, !noundef !4 ; 2 uses
  %i.ub = icmp eq i32 %.val12.i.i, %.val14.i.i
  %i.uc = icmp ult i32 %.val11.i.i, %.val13.i.i
  %i.ud = icmp ult i32 %.val12.i.i, %.val14.i.i
  %i.ue = select i1 %i.ub, i1 %i.uc, i1 %i.ud
  br i1 %i.ue, label %bb.l, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB18_16sort_unstable_byNCNvNtB1c_7builder28write_index_v2_from_postings0E0EB1c_.exit.i

bb.l:                                             ; preds = %.lr.ph.i
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 4
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !alias.scope !482
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.05.i, ptr noundef nonnull align 4 dereferenceable(12) %i.ty, i64 12, i1 false), !alias.scope !482
  %i.uf = icmp eq ptr %i.ty, %.sroa.02.0
  br i1 %i.uf, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.i.i116, ptr noundef nonnull align 4 dereferenceable(12) %i.uh, i64 12, i1 false), !alias.scope !482
  %i.ug = icmp eq ptr %i.uh, %.sroa.02.0
  br i1 %i.ug, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %.sroa.0.0.i.i116 = phi ptr [ %i.uh, %bb.m ], [ %i.ty, %bb.l ] ; 4 uses
  %i.uh = getelementptr inbounds i8, ptr %.sroa.0.0.i.i116, i64 -12 ; 4 uses
  %.val9.i.i = load i32, ptr %i.uh, align 4, !alias.scope !482
  %i.ui = getelementptr i8, ptr %.sroa.0.0.i.i116, i64 -4
  %.val10.i.i = load i32, ptr %i.ui, align 4, !alias.scope !482, !noundef !4 ; 2 uses
  %i.uj = icmp eq i32 %.val12.i.i, %.val10.i.i
  %i.uk = icmp ult i32 %.val11.i.i, %.val9.i.i
  %i.ul = icmp ult i32 %.val12.i.i, %.val10.i.i
  %i.um = select i1 %i.uj, i1 %i.uk, i1 %i.ul
  br i1 %i.um, label %bb.m, label %._crit_edge

._crit_edge:                                      ; preds = %bb.m, %.lr.ph, %bb.l
  %.sroa.0.0.i.lcssa.i = phi ptr [ %.sroa.02.0, %bb.l ], [ %.sroa.02.0, %bb.m ], [ %.sroa.0.0.i.i116, %.lr.ph ] ; 3 uses
  store i32 %.val11.i.i, ptr %.sroa.0.0.i.lcssa.i, align 4, !alias.scope !482, !noalias !483
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa.i, i64 4
  store i32 %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, align 4, !alias.scope !482, !noalias !483
  %.sroa.57.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa.i, i64 8
  store i32 %.val12.i.i, ptr %.sroa.57.0..sroa.0.0.lcssa.sroa_idx.i.i, align 4, !alias.scope !482, !noalias !483
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB18_16sort_unstable_byNCNvNtB1c_7builder28write_index_v2_from_postings0E0EB1c_.exit.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB18_16sort_unstable_byNCNvNtB1c_7builder28write_index_v2_from_postings0E0EB1c_.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.un = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 12 ; 2 uses
  %.not.i = icmp eq ptr %i.un, %i.tw
  br i1 %.not.i, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB1m_16sort_unstable_byNCNvNtB1q_7builder28write_index_v2_from_postings0E0EB1q_.exit, label %.lr.ph.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB1m_16sort_unstable_byNCNvNtB1q_7builder28write_index_v2_from_postings0E0EB1q_.exit: ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB18_16sort_unstable_byNCNvNtB1c_7builder28write_index_v2_from_postings0E0EB1c_.exit.i, %bb.k
  br i1 %i.bw, label %.sink.split, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB1m_16sort_unstable_byNCNvNtB1q_7builder28write_index_v2_from_postings0E0EB1q_.exit
  %.not = icmp eq ptr %.sroa.02.0, %0
  br i1 %.not, label %bb.e, label %bb.o

bb.o:                                             ; preds = %bb.n
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB1g_16sort_unstable_byNCNvNtB1k_7builder28write_index_v2_from_postings0E0EB1k_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noundef nonnull %i.bs)
  %i.uo = mul nuw nsw i64 %1, 12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 4 %i.bs, i64 %i.uo, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsbzNSmZPCnTx_10tgrep_core8external14TrigramPostingNCINvMB8_SB1m_16sort_unstable_byNCNvNtB1q_7builder28write_index_v2_from_postings0E0EB1q_.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_networkjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1O_11IndexReader4opens0_0E0EB1Q_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 8               ; 4 uses
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %bb.hn, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %1, 32
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = lshr i64 %1, 1                           ; 3 uses
  %i.e = icmp samesign ult i64 %1, 18             ; 2 uses
  %. = select i1 %i.e, i64 %1, i64 %i.d
  %.val15 = load ptr, ptr %2, align 8             ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.g = sub nuw nsw i64 %1, %i.d
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.hl, %bb.c
  %.sroa.8.0 = phi i64 [ %., %bb.c ], [ %i.g, %bb.hl ] ; 3 uses
  %.sroa.02.0 = phi ptr [ %0, %bb.c ], [ %i.f, %bb.hl ] ; 32 uses
  %i.h = icmp ugt i64 %.sroa.8.0, 12
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp samesign ugt i64 %.sroa.8.0, 8
  br i1 %i.i, label %bb.em, label %bb.hk

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 96 ; 4 uses
  %.val1.i.i = load i64, ptr %i.j, align 8, !alias.scope !488, !noundef !4 ; 5 uses
  %.val2.i.i = load i64, ptr %.sroa.02.0, align 8, !alias.scope !488, !noundef !4 ; 5 uses
  %.val.i.i.i = load ptr, ptr %.val15, align 8, !noalias !488, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !488, !nonnull !4, !noundef !4 ; 90 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !488, !noundef !4 ; 180 uses
  %i.o = icmp ult i64 %.val1.i.i, %i.n
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = icmp ult i64 %.val2.i.i, %i.n
  br i1 %i.p, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit.i, label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val1.i.i, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val2.i.i, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit.i: ; preds = %bb.h
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.val1.i.i ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.val2.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.z)
  %i.aa = tail call i32 @memcmp(ptr nonnull %i.t, ptr nonnull %i.x, i64 %spec.store.select.i.i.i.i), !noalias !488 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp eq i32 %i.aa, 0
  %i.ad = sub i64 %i.v, %i.z
  %spec.select.i.i.i.i = select i1 %i.ac, i64 %i.ad, i64 %i.ab
  %i.ae = icmp slt i64 %spec.select.i.i.i.i, 0    ; 2 uses
  %i.af = select i1 %i.ae, i64 %.val2.i.i, i64 %.val1.i.i ; 6 uses
  %i.ag = select i1 %i.ae, i64 %.val1.i.i, i64 %.val2.i.i ; 6 uses
  store i64 %i.ag, ptr %.sroa.02.0, align 8, !alias.scope !488
  store i64 %i.af, ptr %i.j, align 8, !alias.scope !488
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 8 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 80 ; 8 uses
  %.val1.i45.i = load i64, ptr %i.ai, align 8, !alias.scope !488, !noundef !4 ; 5 uses
  %.val2.i46.i = load i64, ptr %i.ah, align 8, !alias.scope !488, !noundef !4 ; 5 uses
  %i.aj = icmp ult i64 %.val1.i45.i, %i.n
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit.i
  %i.ak = icmp ult i64 %.val2.i46.i, %i.n
  br i1 %i.ak, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit50.i, label %bb.m

bb.l:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val1.i45.i, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val2.i46.i, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit50.i: ; preds = %bb.k
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.val1.i45.i ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.val2.i46.i ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.au = load i64, ptr %i.at, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i48.i = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 %i.au)
  %i.av = tail call i32 @memcmp(ptr nonnull %i.ao, ptr nonnull %i.as, i64 %spec.store.select.i.i.i48.i), !noalias !488 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp eq i32 %i.av, 0
  %i.ay = sub i64 %i.aq, %i.au
  %spec.select.i.i.i49.i = select i1 %i.ax, i64 %i.ay, i64 %i.aw
  %i.az = icmp slt i64 %spec.select.i.i.i49.i, 0  ; 2 uses
  %i.ba = select i1 %i.az, i64 %.val2.i46.i, i64 %.val1.i45.i ; 6 uses
  %i.bb = select i1 %i.az, i64 %.val1.i45.i, i64 %.val2.i46.i ; 6 uses
  store i64 %i.bb, ptr %i.ah, align 8, !alias.scope !488
  store i64 %i.ba, ptr %i.ai, align 8, !alias.scope !488
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 16 ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 72 ; 9 uses
  %.val1.i51.i = load i64, ptr %i.bd, align 8, !alias.scope !488, !noundef !4 ; 5 uses
  %.val2.i52.i = load i64, ptr %i.bc, align 8, !alias.scope !488, !noundef !4 ; 5 uses
  %i.be = icmp ult i64 %.val1.i51.i, %i.n
  br i1 %i.be, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit50.i
  %i.bf = icmp ult i64 %.val2.i52.i, %i.n
  br i1 %i.bf, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit56.i, label %bb.p

bb.o:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit50.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val1.i51.i, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val2.i52.i, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit56.i: ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.val1.i51.i ; 2 uses
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.val2.i52.i ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i54.i = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 %i.bp)
  %i.bq = tail call i32 @memcmp(ptr nonnull %i.bj, ptr nonnull %i.bn, i64 %spec.store.select.i.i.i54.i), !noalias !488 ; 2 uses
  %i.br = sext i32 %i.bq to i64
  %i.bs = icmp eq i32 %i.bq, 0
  %i.bt = sub i64 %i.bl, %i.bp
  %spec.select.i.i.i55.i = select i1 %i.bs, i64 %i.bt, i64 %i.br
  %i.bu = icmp slt i64 %spec.select.i.i.i55.i, 0  ; 2 uses
  %i.bv = select i1 %i.bu, i64 %.val2.i52.i, i64 %.val1.i51.i ; 6 uses
  %i.bw = select i1 %i.bu, i64 %.val1.i51.i, i64 %.val2.i52.i ; 6 uses
  store i64 %i.bw, ptr %i.bc, align 8, !alias.scope !488
  store i64 %i.bv, ptr %i.bd, align 8, !alias.scope !488
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 24 ; 9 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 56 ; 8 uses
  %.val1.i57.i = load i64, ptr %i.by, align 8, !alias.scope !488, !noundef !4 ; 5 uses
  %.val2.i58.i = load i64, ptr %i.bx, align 8, !alias.scope !488, !noundef !4 ; 5 uses
  %i.bz = icmp ult i64 %.val1.i57.i, %i.n
  br i1 %i.bz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit56.i
  %i.ca = icmp ult i64 %.val2.i58.i, %i.n
  br i1 %i.ca, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit62.i, label %bb.s

bb.r:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit56.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val1.i57.i, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.s:                                             ; preds = %bb.q
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val2.i58.i, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit62.i: ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.val1.i57.i ; 2 uses
  %i.cc = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.val2.i58.i ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i60.i = tail call i64 @llvm.umin.i64(i64 %i.cg, i64 %i.ck)
  %i.cl = tail call i32 @memcmp(ptr nonnull %i.ce, ptr nonnull %i.ci, i64 %spec.store.select.i.i.i60.i), !noalias !488 ; 2 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp eq i32 %i.cl, 0
  %i.co = sub i64 %i.cg, %i.ck
  %spec.select.i.i.i61.i = select i1 %i.cn, i64 %i.co, i64 %i.cm
  %i.cp = icmp slt i64 %spec.select.i.i.i61.i, 0  ; 2 uses
  %i.cq = select i1 %i.cp, i64 %.val2.i58.i, i64 %.val1.i57.i ; 6 uses
  %i.cr = select i1 %i.cp, i64 %.val1.i57.i, i64 %.val2.i58.i ; 6 uses
  store i64 %i.cr, ptr %i.bx, align 8, !alias.scope !488
  store i64 %i.cq, ptr %i.by, align 8, !alias.scope !488
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 40 ; 9 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 88 ; 7 uses
  %.val1.i63.i = load i64, ptr %i.ct, align 8, !alias.scope !488, !noundef !4 ; 5 uses
  %.val2.i64.i = load i64, ptr %i.cs, align 8, !alias.scope !488, !noundef !4 ; 5 uses
  %i.cu = icmp ult i64 %.val1.i63.i, %i.n
  br i1 %i.cu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit62.i
  %i.cv = icmp ult i64 %.val2.i64.i, %i.n
  br i1 %i.cv, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit68.i, label %bb.v

bb.u:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit62.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val1.i63.i, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.v:                                             ; preds = %bb.t
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val2.i64.i, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit68.i: ; preds = %bb.t
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.val1.i63.i ; 2 uses
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.val2.i64.i ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.db = load i64, ptr %i.da, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.df = load i64, ptr %i.de, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i66.i = tail call i64 @llvm.umin.i64(i64 %i.db, i64 %i.df)
  %i.dg = tail call i32 @memcmp(ptr nonnull %i.cz, ptr nonnull %i.dd, i64 %spec.store.select.i.i.i66.i), !noalias !488 ; 2 uses
  %i.dh = sext i32 %i.dg to i64
  %i.di = icmp eq i32 %i.dg, 0
  %i.dj = sub i64 %i.db, %i.df
  %spec.select.i.i.i67.i = select i1 %i.di, i64 %i.dj, i64 %i.dh
  %i.dk = icmp slt i64 %spec.select.i.i.i67.i, 0  ; 2 uses
  %i.dl = select i1 %i.dk, i64 %.val2.i64.i, i64 %.val1.i63.i ; 6 uses
  %i.dm = select i1 %i.dk, i64 %.val1.i63.i, i64 %.val2.i64.i ; 6 uses
  store i64 %i.dm, ptr %i.cs, align 8, !alias.scope !488
  store i64 %i.dl, ptr %i.ct, align 8, !alias.scope !488
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 48 ; 11 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 64 ; 9 uses
  %.val1.i69.i = load i64, ptr %i.do, align 8, !alias.scope !488, !noundef !4 ; 5 uses
  %.val2.i70.i = load i64, ptr %i.dn, align 8, !alias.scope !488, !noundef !4 ; 5 uses
  %i.dp = icmp ult i64 %.val1.i69.i, %i.n
  br i1 %i.dp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit68.i
  %i.dq = icmp ult i64 %.val2.i70.i, %i.n
  br i1 %i.dq, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit74.i, label %bb.y

bb.x:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit68.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val1.i69.i, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.y:                                             ; preds = %bb.w
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val2.i70.i, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit74.i: ; preds = %bb.w
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.val1.i69.i ; 2 uses
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.val2.i70.i ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i72.i = tail call i64 @llvm.umin.i64(i64 %i.dw, i64 %i.ea)
  %i.eb = tail call i32 @memcmp(ptr nonnull %i.du, ptr nonnull %i.dy, i64 %spec.store.select.i.i.i72.i), !noalias !488 ; 2 uses
  %i.ec = sext i32 %i.eb to i64
  %i.ed = icmp eq i32 %i.eb, 0
  %i.ee = sub i64 %i.dw, %i.ea
  %spec.select.i.i.i73.i = select i1 %i.ed, i64 %i.ee, i64 %i.ec
  %i.ef = icmp slt i64 %spec.select.i.i.i73.i, 0  ; 2 uses
  %i.eg = select i1 %i.ef, i64 %.val2.i70.i, i64 %.val1.i69.i ; 6 uses
  %i.eh = select i1 %i.ef, i64 %.val1.i69.i, i64 %.val2.i70.i ; 6 uses
  store i64 %i.eh, ptr %i.dn, align 8, !alias.scope !488
  store i64 %i.eg, ptr %i.do, align 8, !alias.scope !488
  %i.ei = icmp ult i64 %i.eh, %i.n
  br i1 %i.ei, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit74.i
  %i.ej = icmp ult i64 %i.bb, %i.n
  br i1 %i.ej, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit80.i, label %bb.ab

bb.aa:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit74.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.eh, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.ab:                                            ; preds = %bb.z
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bb, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit80.i: ; preds = %bb.z
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.eh ; 2 uses
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.bb ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.et = load i64, ptr %i.es, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i78.i = tail call i64 @llvm.umin.i64(i64 %i.ep, i64 %i.et)
  %i.eu = tail call i32 @memcmp(ptr nonnull %i.en, ptr nonnull %i.er, i64 %spec.store.select.i.i.i78.i), !noalias !488 ; 2 uses
  %i.ev = sext i32 %i.eu to i64
  %i.ew = icmp eq i32 %i.eu, 0
  %i.ex = sub i64 %i.ep, %i.et
  %spec.select.i.i.i79.i = select i1 %i.ew, i64 %i.ex, i64 %i.ev
  %i.ey = icmp slt i64 %spec.select.i.i.i79.i, 0  ; 2 uses
  %i.ez = select i1 %i.ey, i64 %i.bb, i64 %i.eh   ; 6 uses
  %i.fa = select i1 %i.ey, i64 %i.eh, i64 %i.bb   ; 6 uses
  store i64 %i.fa, ptr %i.ah, align 8, !alias.scope !488
  store i64 %i.ez, ptr %i.dn, align 8, !alias.scope !488
  %i.fb = icmp ult i64 %i.cr, %i.n
  br i1 %i.fb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit80.i
  %i.fc = icmp ult i64 %i.bw, %i.n
  br i1 %i.fc, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit86.i, label %bb.ae

bb.ad:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit80.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.cr, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.ae:                                            ; preds = %bb.ac
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bw, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit86.i: ; preds = %bb.ac
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.cr ; 2 uses
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.bw ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fm = load i64, ptr %i.fl, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i84.i = tail call i64 @llvm.umin.i64(i64 %i.fi, i64 %i.fm)
  %i.fn = tail call i32 @memcmp(ptr nonnull %i.fg, ptr nonnull %i.fk, i64 %spec.store.select.i.i.i84.i), !noalias !488 ; 2 uses
  %i.fo = sext i32 %i.fn to i64
  %i.fp = icmp eq i32 %i.fn, 0
  %i.fq = sub i64 %i.fi, %i.fm
  %spec.select.i.i.i85.i = select i1 %i.fp, i64 %i.fq, i64 %i.fo
  %i.fr = icmp slt i64 %spec.select.i.i.i85.i, 0  ; 2 uses
  %i.fs = select i1 %i.fr, i64 %i.bw, i64 %i.cr   ; 6 uses
  %i.ft = select i1 %i.fr, i64 %i.cr, i64 %i.bw   ; 6 uses
  store i64 %i.ft, ptr %i.bc, align 8, !alias.scope !488
  store i64 %i.fs, ptr %i.bx, align 8, !alias.scope !488
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 32 ; 9 uses
  %.val2.i88.i = load i64, ptr %i.fu, align 8, !alias.scope !488, !noundef !4 ; 5 uses
  %i.fv = icmp ult i64 %i.dl, %i.n
  br i1 %i.fv, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit86.i
  %i.fw = icmp ult i64 %.val2.i88.i, %i.n
  br i1 %i.fw, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit92.i, label %bb.ah

bb.ag:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit86.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.dl, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.ah:                                            ; preds = %bb.af
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val2.i88.i, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit92.i: ; preds = %bb.af
  %i.fx = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.dl ; 2 uses
  %i.fy = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.val2.i88.i ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.gc = load i64, ptr %i.gb, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.gg = load i64, ptr %i.gf, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i90.i = tail call i64 @llvm.umin.i64(i64 %i.gc, i64 %i.gg)
  %i.gh = tail call i32 @memcmp(ptr nonnull %i.ga, ptr nonnull %i.ge, i64 %spec.store.select.i.i.i90.i), !noalias !488 ; 2 uses
  %i.gi = sext i32 %i.gh to i64
  %i.gj = icmp eq i32 %i.gh, 0
  %i.gk = sub i64 %i.gc, %i.gg
  %spec.select.i.i.i91.i = select i1 %i.gj, i64 %i.gk, i64 %i.gi
  %i.gl = icmp slt i64 %spec.select.i.i.i91.i, 0  ; 2 uses
  %i.gm = select i1 %i.gl, i64 %.val2.i88.i, i64 %i.dl ; 6 uses
  %i.gn = select i1 %i.gl, i64 %i.dl, i64 %.val2.i88.i ; 6 uses
  store i64 %i.gn, ptr %i.fu, align 8, !alias.scope !488
  store i64 %i.gm, ptr %i.ct, align 8, !alias.scope !488
  %i.go = icmp ult i64 %i.bv, %i.n
  br i1 %i.go, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit92.i
  %i.gp = icmp ult i64 %i.cq, %i.n
  br i1 %i.gp, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit98.i, label %bb.ak

bb.aj:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit92.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bv, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.ak:                                            ; preds = %bb.ai
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.cq, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit98.i: ; preds = %bb.ai
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.bv ; 2 uses
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.cq ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gv = load i64, ptr %i.gu, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gz = load i64, ptr %i.gy, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i96.i = tail call i64 @llvm.umin.i64(i64 %i.gv, i64 %i.gz)
  %i.ha = tail call i32 @memcmp(ptr nonnull %i.gt, ptr nonnull %i.gx, i64 %spec.store.select.i.i.i96.i), !noalias !488 ; 2 uses
  %i.hb = sext i32 %i.ha to i64
  %i.hc = icmp eq i32 %i.ha, 0
  %i.hd = sub i64 %i.gv, %i.gz
  %spec.select.i.i.i97.i = select i1 %i.hc, i64 %i.hd, i64 %i.hb
  %i.he = icmp slt i64 %spec.select.i.i.i97.i, 0  ; 2 uses
  %i.hf = select i1 %i.he, i64 %i.cq, i64 %i.bv   ; 6 uses
  %i.hg = select i1 %i.he, i64 %i.bv, i64 %i.cq   ; 6 uses
  store i64 %i.hg, ptr %i.by, align 8, !alias.scope !488
  store i64 %i.hf, ptr %i.bd, align 8, !alias.scope !488
  %i.hh = icmp ult i64 %i.ba, %i.n
  br i1 %i.hh, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit98.i
  %i.hi = icmp ult i64 %i.eg, %i.n
  br i1 %i.hi, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit104.i, label %bb.an

bb.am:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit98.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ba, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.an:                                            ; preds = %bb.al
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.eg, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit104.i: ; preds = %bb.al
  %i.hj = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.ba ; 2 uses
  %i.hk = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.eg ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.ho = load i64, ptr %i.hn, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hs = load i64, ptr %i.hr, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i102.i = tail call i64 @llvm.umin.i64(i64 %i.ho, i64 %i.hs)
  %i.ht = tail call i32 @memcmp(ptr nonnull %i.hm, ptr nonnull %i.hq, i64 %spec.store.select.i.i.i102.i), !noalias !488 ; 2 uses
  %i.hu = sext i32 %i.ht to i64
  %i.hv = icmp eq i32 %i.ht, 0
  %i.hw = sub i64 %i.ho, %i.hs
  %spec.select.i.i.i103.i = select i1 %i.hv, i64 %i.hw, i64 %i.hu
  %i.hx = icmp slt i64 %spec.select.i.i.i103.i, 0 ; 2 uses
  %i.hy = select i1 %i.hx, i64 %i.eg, i64 %i.ba   ; 6 uses
  %i.hz = select i1 %i.hx, i64 %i.ba, i64 %i.eg   ; 6 uses
  store i64 %i.hz, ptr %i.do, align 8, !alias.scope !488
  store i64 %i.hy, ptr %i.ai, align 8, !alias.scope !488
  %i.ia = icmp ult i64 %i.gn, %i.n
  br i1 %i.ia, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit104.i
  %i.ib = icmp ult i64 %i.ag, %i.n
  br i1 %i.ib, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit110.i, label %bb.aq

bb.ap:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit104.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.gn, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.aq:                                            ; preds = %bb.ao
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ag, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit110.i: ; preds = %bb.ao
  %i.ic = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.gn ; 2 uses
  %i.id = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.ag ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ih = load i64, ptr %i.ig, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.ik = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.il = load i64, ptr %i.ik, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i108.i = tail call i64 @llvm.umin.i64(i64 %i.ih, i64 %i.il)
  %i.im = tail call i32 @memcmp(ptr nonnull %i.if, ptr nonnull %i.ij, i64 %spec.store.select.i.i.i108.i), !noalias !488 ; 2 uses
  %i.in = sext i32 %i.im to i64
  %i.io = icmp eq i32 %i.im, 0
  %i.ip = sub i64 %i.ih, %i.il
  %spec.select.i.i.i109.i = select i1 %i.io, i64 %i.ip, i64 %i.in
  %i.iq = icmp slt i64 %spec.select.i.i.i109.i, 0 ; 2 uses
  %i.ir = select i1 %i.iq, i64 %i.ag, i64 %i.gn   ; 6 uses
  %i.is = select i1 %i.iq, i64 %i.gn, i64 %i.ag   ; 6 uses
  store i64 %i.is, ptr %.sroa.02.0, align 8, !alias.scope !488
  store i64 %i.ir, ptr %i.fu, align 8, !alias.scope !488
  %i.it = icmp ult i64 %i.ft, %i.n
  br i1 %i.it, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit110.i
  %i.iu = icmp ult i64 %i.fa, %i.n
  br i1 %i.iu, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit116.i, label %bb.at

bb.as:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit110.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ft, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.at:                                            ; preds = %bb.ar
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.fa, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit116.i: ; preds = %bb.ar
  %i.iv = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.ft ; 2 uses
  %i.iw = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.fa ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.ja = load i64, ptr %i.iz, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  %i.je = load i64, ptr %i.jd, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i114.i = tail call i64 @llvm.umin.i64(i64 %i.ja, i64 %i.je)
  %i.jf = tail call i32 @memcmp(ptr nonnull %i.iy, ptr nonnull %i.jc, i64 %spec.store.select.i.i.i114.i), !noalias !488 ; 2 uses
  %i.jg = sext i32 %i.jf to i64
  %i.jh = icmp eq i32 %i.jf, 0
  %i.ji = sub i64 %i.ja, %i.je
  %spec.select.i.i.i115.i = select i1 %i.jh, i64 %i.ji, i64 %i.jg
  %i.jj = icmp slt i64 %spec.select.i.i.i115.i, 0 ; 2 uses
  %i.jk = select i1 %i.jj, i64 %i.fa, i64 %i.ft   ; 6 uses
  %i.jl = select i1 %i.jj, i64 %i.ft, i64 %i.fa   ; 6 uses
  store i64 %i.jl, ptr %i.ah, align 8, !alias.scope !488
  store i64 %i.jk, ptr %i.bc, align 8, !alias.scope !488
  %i.jm = icmp ult i64 %i.ez, %i.n
  br i1 %i.jm, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit116.i
  %i.jn = icmp ult i64 %i.fs, %i.n
  br i1 %i.jn, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit122.i, label %bb.aw

bb.av:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit116.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ez, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.aw:                                            ; preds = %bb.au
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.fs, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit122.i: ; preds = %bb.au
  %i.jo = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.ez ; 2 uses
  %i.jp = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.fs ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jt = load i64, ptr %i.js, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.jx = load i64, ptr %i.jw, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i120.i = tail call i64 @llvm.umin.i64(i64 %i.jt, i64 %i.jx)
  %i.jy = tail call i32 @memcmp(ptr nonnull %i.jr, ptr nonnull %i.jv, i64 %spec.store.select.i.i.i120.i), !noalias !488 ; 2 uses
  %i.jz = sext i32 %i.jy to i64
  %i.ka = icmp eq i32 %i.jy, 0
  %i.kb = sub i64 %i.jt, %i.jx
  %spec.select.i.i.i121.i = select i1 %i.ka, i64 %i.kb, i64 %i.jz
  %i.kc = icmp slt i64 %spec.select.i.i.i121.i, 0 ; 2 uses
  %i.kd = select i1 %i.kc, i64 %i.fs, i64 %i.ez   ; 6 uses
  %i.ke = select i1 %i.kc, i64 %i.ez, i64 %i.fs   ; 6 uses
  store i64 %i.ke, ptr %i.bx, align 8, !alias.scope !488
  store i64 %i.kd, ptr %i.dn, align 8, !alias.scope !488
  %i.kf = icmp ult i64 %i.hz, %i.n
  br i1 %i.kf, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit122.i
  %i.kg = icmp ult i64 %i.hg, %i.n
  br i1 %i.kg, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit128.i, label %bb.az

bb.ay:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit122.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.hz, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.az:                                            ; preds = %bb.ax
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.hg, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit128.i: ; preds = %bb.ax
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.hz ; 2 uses
  %i.ki = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.hg ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.km = load i64, ptr %i.kl, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.kq = load i64, ptr %i.kp, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i126.i = tail call i64 @llvm.umin.i64(i64 %i.km, i64 %i.kq)
  %i.kr = tail call i32 @memcmp(ptr nonnull %i.kk, ptr nonnull %i.ko, i64 %spec.store.select.i.i.i126.i), !noalias !488 ; 2 uses
  %i.ks = sext i32 %i.kr to i64
  %i.kt = icmp eq i32 %i.kr, 0
  %i.ku = sub i64 %i.km, %i.kq
  %spec.select.i.i.i127.i = select i1 %i.kt, i64 %i.ku, i64 %i.ks
  %i.kv = icmp slt i64 %spec.select.i.i.i127.i, 0 ; 2 uses
  %i.kw = select i1 %i.kv, i64 %i.hg, i64 %i.hz   ; 6 uses
  %i.kx = select i1 %i.kv, i64 %i.hz, i64 %i.hg   ; 6 uses
  store i64 %i.kx, ptr %i.by, align 8, !alias.scope !488
  store i64 %i.kw, ptr %i.do, align 8, !alias.scope !488
  %i.ky = icmp ult i64 %i.hy, %i.n
  br i1 %i.ky, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit128.i
  %i.kz = icmp ult i64 %i.hf, %i.n
  br i1 %i.kz, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit134.i, label %bb.bc

bb.bb:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit128.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.hy, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.bc:                                            ; preds = %bb.ba
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.hf, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit134.i: ; preds = %bb.ba
  %i.la = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.hy ; 2 uses
  %i.lb = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.hf ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.le = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %i.lf = load i64, ptr %i.le, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.li = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.lj = load i64, ptr %i.li, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i132.i = tail call i64 @llvm.umin.i64(i64 %i.lf, i64 %i.lj)
  %i.lk = tail call i32 @memcmp(ptr nonnull %i.ld, ptr nonnull %i.lh, i64 %spec.store.select.i.i.i132.i), !noalias !488 ; 2 uses
  %i.ll = sext i32 %i.lk to i64
  %i.lm = icmp eq i32 %i.lk, 0
  %i.ln = sub i64 %i.lf, %i.lj
  %spec.select.i.i.i133.i = select i1 %i.lm, i64 %i.ln, i64 %i.ll
  %i.lo = icmp slt i64 %spec.select.i.i.i133.i, 0 ; 2 uses
  %i.lp = select i1 %i.lo, i64 %i.hf, i64 %i.hy   ; 6 uses
  %i.lq = select i1 %i.lo, i64 %i.hy, i64 %i.hf   ; 6 uses
  store i64 %i.lq, ptr %i.bd, align 8, !alias.scope !488
  store i64 %i.lp, ptr %i.ai, align 8, !alias.scope !488
  %i.lr = icmp ult i64 %i.af, %i.n
  br i1 %i.lr, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit134.i
  %i.ls = icmp ult i64 %i.gm, %i.n
  br i1 %i.ls, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit140.i, label %bb.bf

bb.be:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit134.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.af, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.bf:                                            ; preds = %bb.bd
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.gm, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit140.i: ; preds = %bb.bd
  %i.lt = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.af ; 2 uses
  %i.lu = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.gm ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.lw = load ptr, ptr %i.lv, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.ly = load i64, ptr %i.lx, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.mc = load i64, ptr %i.mb, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i138.i = tail call i64 @llvm.umin.i64(i64 %i.ly, i64 %i.mc)
  %i.md = tail call i32 @memcmp(ptr nonnull %i.lw, ptr nonnull %i.ma, i64 %spec.store.select.i.i.i138.i), !noalias !488 ; 2 uses
  %i.me = sext i32 %i.md to i64
  %i.mf = icmp eq i32 %i.md, 0
  %i.mg = sub i64 %i.ly, %i.mc
  %spec.select.i.i.i139.i = select i1 %i.mf, i64 %i.mg, i64 %i.me
  %i.mh = icmp slt i64 %spec.select.i.i.i139.i, 0 ; 2 uses
  %i.mi = select i1 %i.mh, i64 %i.gm, i64 %i.af   ; 6 uses
  %i.mj = select i1 %i.mh, i64 %i.af, i64 %i.gm   ; 6 uses
  store i64 %i.mj, ptr %i.ct, align 8, !alias.scope !488
  store i64 %i.mi, ptr %i.j, align 8, !alias.scope !488
  %i.mk = icmp ult i64 %i.kd, %i.n
  br i1 %i.mk, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit140.i
  %i.ml = icmp ult i64 %i.ir, %i.n
  br i1 %i.ml, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit146.i, label %bb.bi

bb.bh:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit140.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.kd, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.bi:                                            ; preds = %bb.bg
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ir, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit146.i: ; preds = %bb.bg
  %i.mm = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.kd ; 2 uses
  %i.mn = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.ir ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  %i.mr = load i64, ptr %i.mq, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mt = load ptr, ptr %i.ms, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %i.mv = load i64, ptr %i.mu, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i144.i = tail call i64 @llvm.umin.i64(i64 %i.mr, i64 %i.mv)
  %i.mw = tail call i32 @memcmp(ptr nonnull %i.mp, ptr nonnull %i.mt, i64 %spec.store.select.i.i.i144.i), !noalias !488 ; 2 uses
  %i.mx = sext i32 %i.mw to i64
  %i.my = icmp eq i32 %i.mw, 0
  %i.mz = sub i64 %i.mr, %i.mv
  %spec.select.i.i.i145.i = select i1 %i.my, i64 %i.mz, i64 %i.mx
  %i.na = icmp slt i64 %spec.select.i.i.i145.i, 0 ; 2 uses
  %i.nb = select i1 %i.na, i64 %i.ir, i64 %i.kd   ; 6 uses
  %i.nc = select i1 %i.na, i64 %i.kd, i64 %i.ir   ; 6 uses
  store i64 %i.nc, ptr %i.fu, align 8, !alias.scope !488
  store i64 %i.nb, ptr %i.dn, align 8, !alias.scope !488
  %i.nd = icmp ult i64 %i.lq, %i.n
  br i1 %i.nd, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit146.i
  %i.ne = icmp ult i64 %i.dm, %i.n
  br i1 %i.ne, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit152.i, label %bb.bl

bb.bk:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit146.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.lq, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.bl:                                            ; preds = %bb.bj
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.dm, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit152.i: ; preds = %bb.bj
  %i.nf = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.lq ; 2 uses
  %i.ng = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.dm ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.ni = load ptr, ptr %i.nh, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %i.nk = load i64, ptr %i.nj, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.nm = load ptr, ptr %i.nl, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %i.no = load i64, ptr %i.nn, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i150.i = tail call i64 @llvm.umin.i64(i64 %i.nk, i64 %i.no)
  %i.np = tail call i32 @memcmp(ptr nonnull %i.ni, ptr nonnull %i.nm, i64 %spec.store.select.i.i.i150.i), !noalias !488 ; 2 uses
  %i.nq = sext i32 %i.np to i64
  %i.nr = icmp eq i32 %i.np, 0
  %i.ns = sub i64 %i.nk, %i.no
  %spec.select.i.i.i151.i = select i1 %i.nr, i64 %i.ns, i64 %i.nq
  %i.nt = icmp slt i64 %spec.select.i.i.i151.i, 0 ; 2 uses
  %i.nu = select i1 %i.nt, i64 %i.dm, i64 %i.lq   ; 6 uses
  %i.nv = select i1 %i.nt, i64 %i.lq, i64 %i.dm   ; 6 uses
  store i64 %i.nv, ptr %i.cs, align 8, !alias.scope !488
  store i64 %i.nu, ptr %i.bd, align 8, !alias.scope !488
  %i.nw = icmp ult i64 %i.mj, %i.n
  br i1 %i.nw, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit152.i
  %i.nx = icmp ult i64 %i.kw, %i.n
  br i1 %i.nx, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit158.i, label %bb.bo

bb.bn:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit152.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.mj, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.bo:                                            ; preds = %bb.bm
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.kw, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit158.i: ; preds = %bb.bm
  %i.ny = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.mj ; 2 uses
  %i.nz = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.kw ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  %i.ob = load ptr, ptr %i.oa, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.od = load i64, ptr %i.oc, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.of = load ptr, ptr %i.oe, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.og = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.oh = load i64, ptr %i.og, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i156.i = tail call i64 @llvm.umin.i64(i64 %i.od, i64 %i.oh)
  %i.oi = tail call i32 @memcmp(ptr nonnull %i.ob, ptr nonnull %i.of, i64 %spec.store.select.i.i.i156.i), !noalias !488 ; 2 uses
  %i.oj = sext i32 %i.oi to i64
  %i.ok = icmp eq i32 %i.oi, 0
  %i.ol = sub i64 %i.od, %i.oh
  %spec.select.i.i.i157.i = select i1 %i.ok, i64 %i.ol, i64 %i.oj
  %i.om = icmp slt i64 %spec.select.i.i.i157.i, 0 ; 2 uses
  %i.on = select i1 %i.om, i64 %i.kw, i64 %i.mj   ; 6 uses
  %i.oo = select i1 %i.om, i64 %i.mj, i64 %i.kw   ; 6 uses
  store i64 %i.oo, ptr %i.do, align 8, !alias.scope !488
  store i64 %i.on, ptr %i.ct, align 8, !alias.scope !488
  %i.op = icmp ult i64 %i.mi, %i.n
  br i1 %i.op, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit158.i
  %i.oq = icmp ult i64 %i.lp, %i.n
  br i1 %i.oq, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit164.i, label %bb.br

bb.bq:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit158.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.mi, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.br:                                            ; preds = %bb.bp
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.lp, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit164.i: ; preds = %bb.bp
  %i.or = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.mi ; 2 uses
  %i.os = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.lp ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  %i.ou = load ptr, ptr %i.ot, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.ov = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  %i.ow = load i64, ptr %i.ov, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  %i.oy = load ptr, ptr %i.ox, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.oz = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  %i.pa = load i64, ptr %i.oz, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i162.i = tail call i64 @llvm.umin.i64(i64 %i.ow, i64 %i.pa)
  %i.pb = tail call i32 @memcmp(ptr nonnull %i.ou, ptr nonnull %i.oy, i64 %spec.store.select.i.i.i162.i), !noalias !488 ; 2 uses
  %i.pc = sext i32 %i.pb to i64
  %i.pd = icmp eq i32 %i.pb, 0
  %i.pe = sub i64 %i.ow, %i.pa
  %spec.select.i.i.i163.i = select i1 %i.pd, i64 %i.pe, i64 %i.pc
  %i.pf = icmp slt i64 %spec.select.i.i.i163.i, 0 ; 2 uses
  %i.pg = select i1 %i.pf, i64 %i.lp, i64 %i.mi
  %i.ph = select i1 %i.pf, i64 %i.mi, i64 %i.lp   ; 6 uses
  store i64 %i.ph, ptr %i.ai, align 8, !alias.scope !488
  store i64 %i.pg, ptr %i.j, align 8, !alias.scope !488
  %i.pi = icmp ult i64 %i.nv, %i.n
  br i1 %i.pi, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit164.i
  %i.pj = icmp ult i64 %i.is, %i.n
  br i1 %i.pj, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit170.i, label %bb.bu

bb.bt:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit164.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.nv, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.bu:                                            ; preds = %bb.bs
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.is, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit170.i: ; preds = %bb.bs
  %i.pk = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.nv ; 2 uses
  %i.pl = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.is ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pk, i64 8
  %i.pn = load ptr, ptr %i.pm, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.po = getelementptr inbounds nuw i8, ptr %i.pk, i64 16
  %i.pp = load i64, ptr %i.po, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %i.pr = load ptr, ptr %i.pq, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  %i.pt = load i64, ptr %i.ps, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i168.i = tail call i64 @llvm.umin.i64(i64 %i.pp, i64 %i.pt)
  %i.pu = tail call i32 @memcmp(ptr nonnull %i.pn, ptr nonnull %i.pr, i64 %spec.store.select.i.i.i168.i), !noalias !488 ; 2 uses
  %i.pv = sext i32 %i.pu to i64
  %i.pw = icmp eq i32 %i.pu, 0
  %i.px = sub i64 %i.pp, %i.pt
  %spec.select.i.i.i169.i = select i1 %i.pw, i64 %i.px, i64 %i.pv
  %i.py = icmp slt i64 %spec.select.i.i.i169.i, 0 ; 2 uses
  %i.pz = select i1 %i.py, i64 %i.is, i64 %i.nv   ; 6 uses
  %i.qa = select i1 %i.py, i64 %i.nv, i64 %i.is   ; 6 uses
  store i64 %i.qa, ptr %.sroa.02.0, align 8, !alias.scope !488
  store i64 %i.pz, ptr %i.cs, align 8, !alias.scope !488
  %i.qb = icmp ult i64 %i.oo, %i.n
  br i1 %i.qb, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit170.i
  %i.qc = icmp ult i64 %i.ke, %i.n
  br i1 %i.qc, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit176.i, label %bb.bx

bb.bw:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit170.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.oo, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.bx:                                            ; preds = %bb.bv
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ke, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit176.i: ; preds = %bb.bv
  %i.qd = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.oo ; 2 uses
  %i.qe = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.ke ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %i.qg = load ptr, ptr %i.qf, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %i.qi = load i64, ptr %i.qh, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %i.qk = load ptr, ptr %i.qj, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qe, i64 16
  %i.qm = load i64, ptr %i.ql, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i174.i = tail call i64 @llvm.umin.i64(i64 %i.qi, i64 %i.qm)
  %i.qn = tail call i32 @memcmp(ptr nonnull %i.qg, ptr nonnull %i.qk, i64 %spec.store.select.i.i.i174.i), !noalias !488 ; 2 uses
  %i.qo = sext i32 %i.qn to i64
  %i.qp = icmp eq i32 %i.qn, 0
  %i.qq = sub i64 %i.qi, %i.qm
  %spec.select.i.i.i175.i = select i1 %i.qp, i64 %i.qq, i64 %i.qo
  %i.qr = icmp slt i64 %spec.select.i.i.i175.i, 0 ; 2 uses
  %i.qs = select i1 %i.qr, i64 %i.ke, i64 %i.oo   ; 6 uses
  %i.qt = select i1 %i.qr, i64 %i.oo, i64 %i.ke   ; 6 uses
  store i64 %i.qt, ptr %i.bx, align 8, !alias.scope !488
  store i64 %i.qs, ptr %i.do, align 8, !alias.scope !488
  %i.qu = icmp ult i64 %i.kx, %i.n
  br i1 %i.qu, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit176.i
  %i.qv = icmp ult i64 %i.nc, %i.n
  br i1 %i.qv, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit182.i, label %bb.ca

bb.bz:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit176.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.kx, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.ca:                                            ; preds = %bb.by
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.nc, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit182.i: ; preds = %bb.by
  %i.qw = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.kx ; 2 uses
  %i.qx = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.nc ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.qz = load ptr, ptr %i.qy, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  %i.rb = load i64, ptr %i.ra, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  %i.rd = load ptr, ptr %i.rc, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.re = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  %i.rf = load i64, ptr %i.re, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i180.i = tail call i64 @llvm.umin.i64(i64 %i.rb, i64 %i.rf)
  %i.rg = tail call i32 @memcmp(ptr nonnull %i.qz, ptr nonnull %i.rd, i64 %spec.store.select.i.i.i180.i), !noalias !488 ; 2 uses
  %i.rh = sext i32 %i.rg to i64
  %i.ri = icmp eq i32 %i.rg, 0
  %i.rj = sub i64 %i.rb, %i.rf
  %spec.select.i.i.i181.i = select i1 %i.ri, i64 %i.rj, i64 %i.rh
  %i.rk = icmp slt i64 %spec.select.i.i.i181.i, 0 ; 2 uses
  %i.rl = select i1 %i.rk, i64 %i.nc, i64 %i.kx   ; 6 uses
  %i.rm = select i1 %i.rk, i64 %i.kx, i64 %i.nc   ; 6 uses
  store i64 %i.rm, ptr %i.fu, align 8, !alias.scope !488
  store i64 %i.rl, ptr %i.by, align 8, !alias.scope !488
  %i.rn = icmp ult i64 %i.on, %i.n
  br i1 %i.rn, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit182.i
  %i.ro = icmp ult i64 %i.nb, %i.n
  br i1 %i.ro, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit188.i, label %bb.cd

bb.cc:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit182.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.on, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.cd:                                            ; preds = %bb.cb
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.nb, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit188.i: ; preds = %bb.cb
  %i.rp = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.on ; 2 uses
  %i.rq = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.nb ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.rs = load ptr, ptr %i.rr, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  %i.ru = load i64, ptr %i.rt, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.rw = load ptr, ptr %i.rv, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  %i.ry = load i64, ptr %i.rx, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i186.i = tail call i64 @llvm.umin.i64(i64 %i.ru, i64 %i.ry)
  %i.rz = tail call i32 @memcmp(ptr nonnull %i.rs, ptr nonnull %i.rw, i64 %spec.store.select.i.i.i186.i), !noalias !488 ; 2 uses
  %i.sa = sext i32 %i.rz to i64
  %i.sb = icmp eq i32 %i.rz, 0
  %i.sc = sub i64 %i.ru, %i.ry
  %spec.select.i.i.i187.i = select i1 %i.sb, i64 %i.sc, i64 %i.sa
  %i.sd = icmp slt i64 %spec.select.i.i.i187.i, 0 ; 2 uses
  %i.se = select i1 %i.sd, i64 %i.nb, i64 %i.on   ; 6 uses
  %i.sf = select i1 %i.sd, i64 %i.on, i64 %i.nb   ; 6 uses
  store i64 %i.sf, ptr %i.dn, align 8, !alias.scope !488
  store i64 %i.se, ptr %i.ct, align 8, !alias.scope !488
  %i.sg = icmp ult i64 %i.ph, %i.n
  br i1 %i.sg, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit188.i
  %i.sh = icmp ult i64 %i.nu, %i.n
  br i1 %i.sh, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit194.i, label %bb.cg

bb.cf:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit188.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ph, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.cg:                                            ; preds = %bb.ce
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.nu, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit194.i: ; preds = %bb.ce
  %i.si = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.ph ; 2 uses
  %i.sj = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.nu ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  %i.sl = load ptr, ptr %i.sk, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.sm = getelementptr inbounds nuw i8, ptr %i.si, i64 16
  %i.sn = load i64, ptr %i.sm, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sp = load ptr, ptr %i.so, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  %i.sr = load i64, ptr %i.sq, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i192.i = tail call i64 @llvm.umin.i64(i64 %i.sn, i64 %i.sr)
  %i.ss = tail call i32 @memcmp(ptr nonnull %i.sl, ptr nonnull %i.sp, i64 %spec.store.select.i.i.i192.i), !noalias !488 ; 2 uses
  %i.st = sext i32 %i.ss to i64
  %i.su = icmp eq i32 %i.ss, 0
  %i.sv = sub i64 %i.sn, %i.sr
  %spec.select.i.i.i193.i = select i1 %i.su, i64 %i.sv, i64 %i.st
  %i.sw = icmp slt i64 %spec.select.i.i.i193.i, 0 ; 2 uses
  %i.sx = select i1 %i.sw, i64 %i.nu, i64 %i.ph   ; 6 uses
  %i.sy = select i1 %i.sw, i64 %i.ph, i64 %i.nu   ; 6 uses
  store i64 %i.sy, ptr %i.bd, align 8, !alias.scope !488
  store i64 %i.sx, ptr %i.ai, align 8, !alias.scope !488
  %i.sz = icmp ult i64 %i.jl, %i.n
  br i1 %i.sz, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit194.i
  %i.ta = icmp ult i64 %i.qa, %i.n
  br i1 %i.ta, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit200.i, label %bb.cj

bb.ci:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit194.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.jl, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.cj:                                            ; preds = %bb.ch
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.qa, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit200.i: ; preds = %bb.ch
  %i.tb = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.jl ; 2 uses
  %i.tc = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.qa ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %i.te = load ptr, ptr %i.td, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tb, i64 16
  %i.tg = load i64, ptr %i.tf, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  %i.ti = load ptr, ptr %i.th, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tc, i64 16
  %i.tk = load i64, ptr %i.tj, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i198.i = tail call i64 @llvm.umin.i64(i64 %i.tg, i64 %i.tk)
  %i.tl = tail call i32 @memcmp(ptr nonnull %i.te, ptr nonnull %i.ti, i64 %spec.store.select.i.i.i198.i), !noalias !488 ; 2 uses
  %i.tm = sext i32 %i.tl to i64
  %i.tn = icmp eq i32 %i.tl, 0
  %i.to = sub i64 %i.tg, %i.tk
  %spec.select.i.i.i199.i = select i1 %i.tn, i64 %i.to, i64 %i.tm
  %i.tp = icmp slt i64 %spec.select.i.i.i199.i, 0 ; 2 uses
  %i.tq = select i1 %i.tp, i64 %i.qa, i64 %i.jl   ; 6 uses
  %i.tr = select i1 %i.tp, i64 %i.jl, i64 %i.qa
  store i64 %i.tr, ptr %.sroa.02.0, align 8, !alias.scope !488
  store i64 %i.tq, ptr %i.ah, align 8, !alias.scope !488
  %i.ts = icmp ult i64 %i.pz, %i.n
  br i1 %i.ts, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit200.i
  %i.tt = icmp ult i64 %i.jk, %i.n
  br i1 %i.tt, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit206.i, label %bb.cm

bb.cl:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit200.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.pz, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.cm:                                            ; preds = %bb.ck
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.jk, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit206.i: ; preds = %bb.ck
  %i.tu = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.pz ; 2 uses
  %i.tv = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.jk ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  %i.tx = load ptr, ptr %i.tw, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  %i.tz = load i64, ptr %i.ty, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  %i.ub = load ptr, ptr %i.ua, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  %i.ud = load i64, ptr %i.uc, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i204.i = tail call i64 @llvm.umin.i64(i64 %i.tz, i64 %i.ud)
  %i.ue = tail call i32 @memcmp(ptr nonnull %i.tx, ptr nonnull %i.ub, i64 %spec.store.select.i.i.i204.i), !noalias !488 ; 2 uses
  %i.uf = sext i32 %i.ue to i64
  %i.ug = icmp eq i32 %i.ue, 0
  %i.uh = sub i64 %i.tz, %i.ud
  %spec.select.i.i.i205.i = select i1 %i.ug, i64 %i.uh, i64 %i.uf
  %i.ui = icmp slt i64 %spec.select.i.i.i205.i, 0 ; 2 uses
  %i.uj = select i1 %i.ui, i64 %i.jk, i64 %i.pz   ; 6 uses
  %i.uk = select i1 %i.ui, i64 %i.pz, i64 %i.jk   ; 6 uses
  store i64 %i.uk, ptr %i.bc, align 8, !alias.scope !488
  store i64 %i.uj, ptr %i.cs, align 8, !alias.scope !488
  %i.ul = icmp ult i64 %i.sy, %i.n
  br i1 %i.ul, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit206.i
  %i.um = icmp ult i64 %i.sf, %i.n
  br i1 %i.um, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit212.i, label %bb.cp

bb.co:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit206.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.sy, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.cp:                                            ; preds = %bb.cn
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.sf, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit212.i: ; preds = %bb.cn
  %i.un = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.sy ; 2 uses
  %i.uo = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.sf ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  %i.uq = load ptr, ptr %i.up, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.ur = getelementptr inbounds nuw i8, ptr %i.un, i64 16
  %i.us = load i64, ptr %i.ur, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  %i.uu = load ptr, ptr %i.ut, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  %i.uw = load i64, ptr %i.uv, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i210.i = tail call i64 @llvm.umin.i64(i64 %i.us, i64 %i.uw)
  %i.ux = tail call i32 @memcmp(ptr nonnull %i.uq, ptr nonnull %i.uu, i64 %spec.store.select.i.i.i210.i), !noalias !488 ; 2 uses
  %i.uy = sext i32 %i.ux to i64
  %i.uz = icmp eq i32 %i.ux, 0
  %i.va = sub i64 %i.us, %i.uw
  %spec.select.i.i.i211.i = select i1 %i.uz, i64 %i.va, i64 %i.uy
  %i.vb = icmp slt i64 %spec.select.i.i.i211.i, 0 ; 2 uses
  %i.vc = select i1 %i.vb, i64 %i.sf, i64 %i.sy   ; 6 uses
  %i.vd = select i1 %i.vb, i64 %i.sy, i64 %i.sf   ; 6 uses
  store i64 %i.vd, ptr %i.dn, align 8, !alias.scope !488
  store i64 %i.vc, ptr %i.bd, align 8, !alias.scope !488
  %i.ve = icmp ult i64 %i.qs, %i.n
  br i1 %i.ve, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit212.i
  %i.vf = icmp ult i64 %i.rl, %i.n
  br i1 %i.vf, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit218.i, label %bb.cs

bb.cr:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit212.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.qs, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.cs:                                            ; preds = %bb.cq
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.rl, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit218.i: ; preds = %bb.cq
  %i.vg = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.qs ; 2 uses
  %i.vh = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.rl ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  %i.vj = load ptr, ptr %i.vi, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  %i.vl = load i64, ptr %i.vk, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vh, i64 8
  %i.vn = load ptr, ptr %i.vm, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vh, i64 16
  %i.vp = load i64, ptr %i.vo, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i216.i = tail call i64 @llvm.umin.i64(i64 %i.vl, i64 %i.vp)
  %i.vq = tail call i32 @memcmp(ptr nonnull %i.vj, ptr nonnull %i.vn, i64 %spec.store.select.i.i.i216.i), !noalias !488 ; 2 uses
  %i.vr = sext i32 %i.vq to i64
  %i.vs = icmp eq i32 %i.vq, 0
  %i.vt = sub i64 %i.vl, %i.vp
  %spec.select.i.i.i217.i = select i1 %i.vs, i64 %i.vt, i64 %i.vr
  %i.vu = icmp slt i64 %spec.select.i.i.i217.i, 0 ; 2 uses
  %i.vv = select i1 %i.vu, i64 %i.rl, i64 %i.qs   ; 6 uses
  %i.vw = select i1 %i.vu, i64 %i.qs, i64 %i.rl   ; 6 uses
  store i64 %i.vw, ptr %i.by, align 8, !alias.scope !488
  store i64 %i.vv, ptr %i.do, align 8, !alias.scope !488
  %i.vx = icmp ult i64 %i.se, %i.n
  br i1 %i.vx, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit218.i
  %i.vy = icmp ult i64 %i.sx, %i.n
  br i1 %i.vy, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit224.i, label %bb.cv

bb.cu:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit218.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.se, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.cv:                                            ; preds = %bb.ct
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.sx, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit224.i: ; preds = %bb.ct
  %i.vz = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.se ; 2 uses
  %i.wa = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.sx ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vz, i64 8
  %i.wc = load ptr, ptr %i.wb, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vz, i64 16
  %i.we = load i64, ptr %i.wd, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  %i.wg = load ptr, ptr %i.wf, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  %i.wi = load i64, ptr %i.wh, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i222.i = tail call i64 @llvm.umin.i64(i64 %i.we, i64 %i.wi)
  %i.wj = tail call i32 @memcmp(ptr nonnull %i.wc, ptr nonnull %i.wg, i64 %spec.store.select.i.i.i222.i), !noalias !488 ; 2 uses
  %i.wk = sext i32 %i.wj to i64
  %i.wl = icmp eq i32 %i.wj, 0
  %i.wm = sub i64 %i.we, %i.wi
  %spec.select.i.i.i223.i = select i1 %i.wl, i64 %i.wm, i64 %i.wk
  %i.wn = icmp slt i64 %spec.select.i.i.i223.i, 0 ; 2 uses
  %i.wo = select i1 %i.wn, i64 %i.sx, i64 %i.se
  %i.wp = select i1 %i.wn, i64 %i.se, i64 %i.sx   ; 6 uses
  store i64 %i.wp, ptr %i.ai, align 8, !alias.scope !488
  store i64 %i.wo, ptr %i.ct, align 8, !alias.scope !488
  %i.wq = icmp ult i64 %i.qt, %i.n
  br i1 %i.wq, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit224.i
  %i.wr = icmp ult i64 %i.tq, %i.n
  br i1 %i.wr, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit230.i, label %bb.cy

bb.cx:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit224.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.qt, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.cy:                                            ; preds = %bb.cw
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.tq, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit230.i: ; preds = %bb.cw
  %i.ws = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.qt ; 2 uses
  %i.wt = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.tq ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  %i.wv = load ptr, ptr %i.wu, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.ww = getelementptr inbounds nuw i8, ptr %i.ws, i64 16
  %i.wx = load i64, ptr %i.ww, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  %i.wz = load ptr, ptr %i.wy, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wt, i64 16
  %i.xb = load i64, ptr %i.xa, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i228.i = tail call i64 @llvm.umin.i64(i64 %i.wx, i64 %i.xb)
  %i.xc = tail call i32 @memcmp(ptr nonnull %i.wv, ptr nonnull %i.wz, i64 %spec.store.select.i.i.i228.i), !noalias !488 ; 2 uses
  %i.xd = sext i32 %i.xc to i64
  %i.xe = icmp eq i32 %i.xc, 0
  %i.xf = sub i64 %i.wx, %i.xb
  %spec.select.i.i.i229.i = select i1 %i.xe, i64 %i.xf, i64 %i.xd
  %i.xg = icmp slt i64 %spec.select.i.i.i229.i, 0 ; 2 uses
  %i.xh = select i1 %i.xg, i64 %i.tq, i64 %i.qt   ; 6 uses
  %i.xi = select i1 %i.xg, i64 %i.qt, i64 %i.tq   ; 6 uses
  store i64 %i.xi, ptr %i.ah, align 8, !alias.scope !488
  store i64 %i.xh, ptr %i.bx, align 8, !alias.scope !488
  %i.xj = icmp ult i64 %i.rm, %i.n
  br i1 %i.xj, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit230.i
  %i.xk = icmp ult i64 %i.uk, %i.n
  br i1 %i.xk, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit236.i, label %bb.db

bb.da:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit230.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.rm, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.db:                                            ; preds = %bb.cz
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.uk, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit236.i: ; preds = %bb.cz
  %i.xl = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.rm ; 2 uses
  %i.xm = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.uk ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xl, i64 8
  %i.xo = load ptr, ptr %i.xn, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xl, i64 16
  %i.xq = load i64, ptr %i.xp, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xm, i64 8
  %i.xs = load ptr, ptr %i.xr, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xm, i64 16
  %i.xu = load i64, ptr %i.xt, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i234.i = tail call i64 @llvm.umin.i64(i64 %i.xq, i64 %i.xu)
  %i.xv = tail call i32 @memcmp(ptr nonnull %i.xo, ptr nonnull %i.xs, i64 %spec.store.select.i.i.i234.i), !noalias !488 ; 2 uses
  %i.xw = sext i32 %i.xv to i64
  %i.xx = icmp eq i32 %i.xv, 0
  %i.xy = sub i64 %i.xq, %i.xu
  %spec.select.i.i.i235.i = select i1 %i.xx, i64 %i.xy, i64 %i.xw
  %i.xz = icmp slt i64 %spec.select.i.i.i235.i, 0 ; 2 uses
  %i.ya = select i1 %i.xz, i64 %i.uk, i64 %i.rm   ; 6 uses
  %i.yb = select i1 %i.xz, i64 %i.rm, i64 %i.uk   ; 6 uses
  store i64 %i.yb, ptr %i.bc, align 8, !alias.scope !488
  store i64 %i.ya, ptr %i.fu, align 8, !alias.scope !488
  %i.yc = icmp ult i64 %i.vd, %i.n
  br i1 %i.yc, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit236.i
  %i.yd = icmp ult i64 %i.uj, %i.n
  br i1 %i.yd, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit242.i, label %bb.de

bb.dd:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit236.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.vd, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.de:                                            ; preds = %bb.dc
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.uj, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit242.i: ; preds = %bb.dc
  %i.ye = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.vd ; 2 uses
  %i.yf = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.uj ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  %i.yh = load ptr, ptr %i.yg, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.yi = getelementptr inbounds nuw i8, ptr %i.ye, i64 16
  %i.yj = load i64, ptr %i.yi, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yf, i64 8
  %i.yl = load ptr, ptr %i.yk, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yf, i64 16
  %i.yn = load i64, ptr %i.ym, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i240.i = tail call i64 @llvm.umin.i64(i64 %i.yj, i64 %i.yn)
  %i.yo = tail call i32 @memcmp(ptr nonnull %i.yh, ptr nonnull %i.yl, i64 %spec.store.select.i.i.i240.i), !noalias !488 ; 2 uses
  %i.yp = sext i32 %i.yo to i64
  %i.yq = icmp eq i32 %i.yo, 0
  %i.yr = sub i64 %i.yj, %i.yn
  %spec.select.i.i.i241.i = select i1 %i.yq, i64 %i.yr, i64 %i.yp
  %i.ys = icmp slt i64 %spec.select.i.i.i241.i, 0 ; 2 uses
  %i.yt = select i1 %i.ys, i64 %i.uj, i64 %i.vd   ; 6 uses
  %i.yu = select i1 %i.ys, i64 %i.vd, i64 %i.uj   ; 6 uses
  store i64 %i.yu, ptr %i.cs, align 8, !alias.scope !488
  store i64 %i.yt, ptr %i.dn, align 8, !alias.scope !488
  %i.yv = icmp ult i64 %i.wp, %i.n
  br i1 %i.yv, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit242.i
  %i.yw = icmp ult i64 %i.vc, %i.n
  br i1 %i.yw, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit248.i, label %bb.dh

bb.dg:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit242.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.wp, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.dh:                                            ; preds = %bb.df
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.vc, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit248.i: ; preds = %bb.df
  %i.yx = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.wp ; 2 uses
  %i.yy = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.vc ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yx, i64 8
  %i.za = load ptr, ptr %i.yz, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yx, i64 16
  %i.zc = load i64, ptr %i.zb, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yy, i64 8
  %i.ze = load ptr, ptr %i.zd, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yy, i64 16
  %i.zg = load i64, ptr %i.zf, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i246.i = tail call i64 @llvm.umin.i64(i64 %i.zc, i64 %i.zg)
  %i.zh = tail call i32 @memcmp(ptr nonnull %i.za, ptr nonnull %i.ze, i64 %spec.store.select.i.i.i246.i), !noalias !488 ; 2 uses
  %i.zi = sext i32 %i.zh to i64
  %i.zj = icmp eq i32 %i.zh, 0
  %i.zk = sub i64 %i.zc, %i.zg
  %spec.select.i.i.i247.i = select i1 %i.zj, i64 %i.zk, i64 %i.zi
  %i.zl = icmp slt i64 %spec.select.i.i.i247.i, 0 ; 2 uses
  %i.zm = select i1 %i.zl, i64 %i.vc, i64 %i.wp
  %i.zn = select i1 %i.zl, i64 %i.wp, i64 %i.vc   ; 6 uses
  store i64 %i.zn, ptr %i.bd, align 8, !alias.scope !488
  store i64 %i.zm, ptr %i.ai, align 8, !alias.scope !488
  %i.zo = icmp ult i64 %i.yb, %i.n
  br i1 %i.zo, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit248.i
  %i.zp = icmp ult i64 %i.xi, %i.n
  br i1 %i.zp, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit254.i, label %bb.dk

bb.dj:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit248.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.yb, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.dk:                                            ; preds = %bb.di
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.xi, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit254.i: ; preds = %bb.di
  %i.zq = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.yb ; 2 uses
  %i.zr = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.xi ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zq, i64 8
  %i.zt = load ptr, ptr %i.zs, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zq, i64 16
  %i.zv = load i64, ptr %i.zu, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zr, i64 8
  %i.zx = load ptr, ptr %i.zw, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zr, i64 16
  %i.zz = load i64, ptr %i.zy, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i252.i = tail call i64 @llvm.umin.i64(i64 %i.zv, i64 %i.zz)
  %i.aaa = tail call i32 @memcmp(ptr nonnull %i.zt, ptr nonnull %i.zx, i64 %spec.store.select.i.i.i252.i), !noalias !488 ; 2 uses
  %i.aab = sext i32 %i.aaa to i64
  %i.aac = icmp eq i32 %i.aaa, 0
  %i.aad = sub i64 %i.zv, %i.zz
  %spec.select.i.i.i253.i = select i1 %i.aac, i64 %i.aad, i64 %i.aab
  %i.aae = icmp slt i64 %spec.select.i.i.i253.i, 0 ; 2 uses
  %i.aaf = select i1 %i.aae, i64 %i.xi, i64 %i.yb ; 6 uses
  %i.aag = select i1 %i.aae, i64 %i.yb, i64 %i.xi
  store i64 %i.aag, ptr %i.ah, align 8, !alias.scope !488
  store i64 %i.aaf, ptr %i.bc, align 8, !alias.scope !488
  %i.aah = icmp ult i64 %i.ya, %i.n
  br i1 %i.aah, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit254.i
  %i.aai = icmp ult i64 %i.xh, %i.n
  br i1 %i.aai, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit260.i, label %bb.dn

bb.dm:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit254.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ya, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.dn:                                            ; preds = %bb.dl
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.xh, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit260.i: ; preds = %bb.dl
  %i.aaj = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.ya ; 2 uses
  %i.aak = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.xh ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aaj, i64 8
  %i.aam = load ptr, ptr %i.aal, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aaj, i64 16
  %i.aao = load i64, ptr %i.aan, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aak, i64 8
  %i.aaq = load ptr, ptr %i.aap, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aak, i64 16
  %i.aas = load i64, ptr %i.aar, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i258.i = tail call i64 @llvm.umin.i64(i64 %i.aao, i64 %i.aas)
  %i.aat = tail call i32 @memcmp(ptr nonnull %i.aam, ptr nonnull %i.aaq, i64 %spec.store.select.i.i.i258.i), !noalias !488 ; 2 uses
  %i.aau = sext i32 %i.aat to i64
  %i.aav = icmp eq i32 %i.aat, 0
  %i.aaw = sub i64 %i.aao, %i.aas
  %spec.select.i.i.i259.i = select i1 %i.aav, i64 %i.aaw, i64 %i.aau
  %i.aax = icmp slt i64 %spec.select.i.i.i259.i, 0 ; 2 uses
  %i.aay = select i1 %i.aax, i64 %i.xh, i64 %i.ya ; 6 uses
  %i.aaz = select i1 %i.aax, i64 %i.ya, i64 %i.xh ; 6 uses
  store i64 %i.aaz, ptr %i.bx, align 8, !alias.scope !488
  store i64 %i.aay, ptr %i.fu, align 8, !alias.scope !488
  %i.aba = icmp ult i64 %i.vw, %i.n
  br i1 %i.aba, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit260.i
  %i.abb = icmp ult i64 %i.yu, %i.n
  br i1 %i.abb, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit266.i, label %bb.dq

bb.dp:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit260.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.vw, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.dq:                                            ; preds = %bb.do
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.yu, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit266.i: ; preds = %bb.do
  %i.abc = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.vw ; 2 uses
  %i.abd = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.yu ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abc, i64 8
  %i.abf = load ptr, ptr %i.abe, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abc, i64 16
  %i.abh = load i64, ptr %i.abg, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abd, i64 8
  %i.abj = load ptr, ptr %i.abi, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abd, i64 16
  %i.abl = load i64, ptr %i.abk, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i264.i = tail call i64 @llvm.umin.i64(i64 %i.abh, i64 %i.abl)
  %i.abm = tail call i32 @memcmp(ptr nonnull %i.abf, ptr nonnull %i.abj, i64 %spec.store.select.i.i.i264.i), !noalias !488 ; 2 uses
  %i.abn = sext i32 %i.abm to i64
  %i.abo = icmp eq i32 %i.abm, 0
  %i.abp = sub i64 %i.abh, %i.abl
  %spec.select.i.i.i265.i = select i1 %i.abo, i64 %i.abp, i64 %i.abn
  %i.abq = icmp slt i64 %spec.select.i.i.i265.i, 0 ; 2 uses
  %i.abr = select i1 %i.abq, i64 %i.yu, i64 %i.vw ; 6 uses
  %i.abs = select i1 %i.abq, i64 %i.vw, i64 %i.yu ; 6 uses
  store i64 %i.abs, ptr %i.cs, align 8, !alias.scope !488
  store i64 %i.abr, ptr %i.by, align 8, !alias.scope !488
  %i.abt = icmp ult i64 %i.vv, %i.n
  br i1 %i.abt, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit266.i
  %i.abu = icmp ult i64 %i.yt, %i.n
  br i1 %i.abu, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit272.i, label %bb.dt

bb.ds:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit266.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.vv, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.dt:                                            ; preds = %bb.dr
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.yt, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit272.i: ; preds = %bb.dr
  %i.abv = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.vv ; 2 uses
  %i.abw = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.yt ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abv, i64 8
  %i.aby = load ptr, ptr %i.abx, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abv, i64 16
  %i.aca = load i64, ptr %i.abz, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abw, i64 8
  %i.acc = load ptr, ptr %i.acb, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abw, i64 16
  %i.ace = load i64, ptr %i.acd, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i270.i = tail call i64 @llvm.umin.i64(i64 %i.aca, i64 %i.ace)
  %i.acf = tail call i32 @memcmp(ptr nonnull %i.aby, ptr nonnull %i.acc, i64 %spec.store.select.i.i.i270.i), !noalias !488 ; 2 uses
  %i.acg = sext i32 %i.acf to i64
  %i.ach = icmp eq i32 %i.acf, 0
  %i.aci = sub i64 %i.aca, %i.ace
  %spec.select.i.i.i271.i = select i1 %i.ach, i64 %i.aci, i64 %i.acg
  %i.acj = icmp slt i64 %spec.select.i.i.i271.i, 0 ; 2 uses
  %i.ack = select i1 %i.acj, i64 %i.yt, i64 %i.vv ; 6 uses
  %i.acl = select i1 %i.acj, i64 %i.vv, i64 %i.yt ; 6 uses
  store i64 %i.acl, ptr %i.dn, align 8, !alias.scope !488
  store i64 %i.ack, ptr %i.do, align 8, !alias.scope !488
  %i.acm = icmp ult i64 %i.aaz, %i.n
  br i1 %i.acm, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit272.i
  %i.acn = icmp ult i64 %i.aaf, %i.n
  br i1 %i.acn, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit278.i, label %bb.dw

bb.dv:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit272.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.aaz, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.dw:                                            ; preds = %bb.du
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.aaf, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit278.i: ; preds = %bb.du
  %i.aco = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.aaz ; 2 uses
  %i.acp = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.aaf ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.aco, i64 8
  %i.acr = load ptr, ptr %i.acq, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.acs = getelementptr inbounds nuw i8, ptr %i.aco, i64 16
  %i.act = load i64, ptr %i.acs, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  %i.acv = load ptr, ptr %i.acu, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acp, i64 16
  %i.acx = load i64, ptr %i.acw, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i276.i = tail call i64 @llvm.umin.i64(i64 %i.act, i64 %i.acx)
  %i.acy = tail call i32 @memcmp(ptr nonnull %i.acr, ptr nonnull %i.acv, i64 %spec.store.select.i.i.i276.i), !noalias !488 ; 2 uses
  %i.acz = sext i32 %i.acy to i64
  %i.ada = icmp eq i32 %i.acy, 0
  %i.adb = sub i64 %i.act, %i.acx
  %spec.select.i.i.i277.i = select i1 %i.ada, i64 %i.adb, i64 %i.acz
  %i.adc = icmp slt i64 %spec.select.i.i.i277.i, 0 ; 2 uses
  %i.add = select i1 %i.adc, i64 %i.aaf, i64 %i.aaz ; 6 uses
  %i.ade = select i1 %i.adc, i64 %i.aaz, i64 %i.aaf
  store i64 %i.ade, ptr %i.bc, align 8, !alias.scope !488
  store i64 %i.add, ptr %i.bx, align 8, !alias.scope !488
  %i.adf = icmp ult i64 %i.abs, %i.n
  br i1 %i.adf, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit278.i
  %i.adg = icmp ult i64 %i.aay, %i.n
  br i1 %i.adg, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit284.i, label %bb.dz

bb.dy:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit278.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.abs, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.dz:                                            ; preds = %bb.dx
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.aay, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit284.i: ; preds = %bb.dx
  %i.adh = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.abs ; 2 uses
  %i.adi = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.aay ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adh, i64 8
  %i.adk = load ptr, ptr %i.adj, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adh, i64 16
  %i.adm = load i64, ptr %i.adl, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adi, i64 8
  %i.ado = load ptr, ptr %i.adn, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adi, i64 16
  %i.adq = load i64, ptr %i.adp, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i282.i = tail call i64 @llvm.umin.i64(i64 %i.adm, i64 %i.adq)
  %i.adr = tail call i32 @memcmp(ptr nonnull %i.adk, ptr nonnull %i.ado, i64 %spec.store.select.i.i.i282.i), !noalias !488 ; 2 uses
  %i.ads = sext i32 %i.adr to i64
  %i.adt = icmp eq i32 %i.adr, 0
  %i.adu = sub i64 %i.adm, %i.adq
  %spec.select.i.i.i283.i = select i1 %i.adt, i64 %i.adu, i64 %i.ads
  %i.adv = icmp slt i64 %spec.select.i.i.i283.i, 0 ; 2 uses
  %i.adw = select i1 %i.adv, i64 %i.aay, i64 %i.abs ; 6 uses
  %i.adx = select i1 %i.adv, i64 %i.abs, i64 %i.aay ; 6 uses
  store i64 %i.adx, ptr %i.fu, align 8, !alias.scope !488
  store i64 %i.adw, ptr %i.cs, align 8, !alias.scope !488
  %i.ady = icmp ult i64 %i.abr, %i.n
  br i1 %i.ady, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit284.i
  %i.adz = icmp ult i64 %i.acl, %i.n
  br i1 %i.adz, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit290.i, label %bb.ec

bb.eb:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit284.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.abr, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.ec:                                            ; preds = %bb.ea
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.acl, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit290.i: ; preds = %bb.ea
  %i.aea = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.abr ; 2 uses
  %i.aeb = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.acl ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aea, i64 8
  %i.aed = load ptr, ptr %i.aec, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aea, i64 16
  %i.aef = load i64, ptr %i.aee, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8
  %i.aeh = load ptr, ptr %i.aeg, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeb, i64 16
  %i.aej = load i64, ptr %i.aei, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i288.i = tail call i64 @llvm.umin.i64(i64 %i.aef, i64 %i.aej)
  %i.aek = tail call i32 @memcmp(ptr nonnull %i.aed, ptr nonnull %i.aeh, i64 %spec.store.select.i.i.i288.i), !noalias !488 ; 2 uses
  %i.ael = sext i32 %i.aek to i64
  %i.aem = icmp eq i32 %i.aek, 0
  %i.aen = sub i64 %i.aef, %i.aej
  %spec.select.i.i.i289.i = select i1 %i.aem, i64 %i.aen, i64 %i.ael
  %i.aeo = icmp slt i64 %spec.select.i.i.i289.i, 0 ; 2 uses
  %i.aep = select i1 %i.aeo, i64 %i.acl, i64 %i.abr
  %i.aeq = select i1 %i.aeo, i64 %i.abr, i64 %i.acl ; 6 uses
  store i64 %i.aeq, ptr %i.dn, align 8, !alias.scope !488
  store i64 %i.aep, ptr %i.by, align 8, !alias.scope !488
  %i.aer = icmp ult i64 %i.zn, %i.n
  br i1 %i.aer, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit290.i
  %i.aes = icmp ult i64 %i.ack, %i.n
  br i1 %i.aes, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit296.i, label %bb.ef

bb.ee:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit290.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.zn, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.ef:                                            ; preds = %bb.ed
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ack, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit296.i: ; preds = %bb.ed
  %i.aet = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.zn ; 2 uses
  %i.aeu = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.ack ; 2 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aet, i64 8
  %i.aew = load ptr, ptr %i.aev, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aet, i64 16
  %i.aey = load i64, ptr %i.aex, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aeu, i64 8
  %i.afa = load ptr, ptr %i.aez, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aeu, i64 16
  %i.afc = load i64, ptr %i.afb, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i294.i = tail call i64 @llvm.umin.i64(i64 %i.aey, i64 %i.afc)
  %i.afd = tail call i32 @memcmp(ptr nonnull %i.aew, ptr nonnull %i.afa, i64 %spec.store.select.i.i.i294.i), !noalias !488 ; 2 uses
  %i.afe = sext i32 %i.afd to i64
  %i.aff = icmp eq i32 %i.afd, 0
  %i.afg = sub i64 %i.aey, %i.afc
  %spec.select.i.i.i295.i = select i1 %i.aff, i64 %i.afg, i64 %i.afe
  %i.afh = icmp slt i64 %spec.select.i.i.i295.i, 0 ; 2 uses
  %i.afi = select i1 %i.afh, i64 %i.ack, i64 %i.zn
  %i.afj = select i1 %i.afh, i64 %i.zn, i64 %i.ack
  store i64 %i.afj, ptr %i.do, align 8, !alias.scope !488
  store i64 %i.afi, ptr %i.bd, align 8, !alias.scope !488
  %i.afk = icmp ult i64 %i.adx, %i.n
  br i1 %i.afk, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit296.i
  %i.afl = icmp ult i64 %i.add, %i.n
  br i1 %i.afl, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit302.i, label %bb.ei

bb.eh:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit296.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.adx, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.ei:                                            ; preds = %bb.eg
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.add, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit302.i: ; preds = %bb.eg
  %i.afm = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.adx ; 2 uses
  %i.afn = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.add ; 2 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afm, i64 8
  %i.afp = load ptr, ptr %i.afo, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afm, i64 16
  %i.afr = load i64, ptr %i.afq, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afn, i64 8
  %i.aft = load ptr, ptr %i.afs, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afn, i64 16
  %i.afv = load i64, ptr %i.afu, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i300.i = tail call i64 @llvm.umin.i64(i64 %i.afr, i64 %i.afv)
  %i.afw = tail call i32 @memcmp(ptr nonnull %i.afp, ptr nonnull %i.aft, i64 %spec.store.select.i.i.i300.i), !noalias !488 ; 2 uses
  %i.afx = sext i32 %i.afw to i64
  %i.afy = icmp eq i32 %i.afw, 0
  %i.afz = sub i64 %i.afr, %i.afv
  %spec.select.i.i.i301.i = select i1 %i.afy, i64 %i.afz, i64 %i.afx
  %i.aga = icmp slt i64 %spec.select.i.i.i301.i, 0 ; 2 uses
  %i.agb = select i1 %i.aga, i64 %i.add, i64 %i.adx
  %i.agc = select i1 %i.aga, i64 %i.adx, i64 %i.add
  store i64 %i.agc, ptr %i.bx, align 8, !alias.scope !488
  store i64 %i.agb, ptr %i.fu, align 8, !alias.scope !488
  %i.agd = icmp ult i64 %i.aeq, %i.n
  br i1 %i.agd, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit302.i
  %i.age = icmp ult i64 %i.adw, %i.n
  br i1 %i.age, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort14sort13_optimaljNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1K_11IndexReader4opens0_0E0EB1M_.exit, label %bb.el

bb.ek:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit302.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.aeq, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !488
  unreachable

bb.el:                                            ; preds = %bb.ej
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.adw, i64 noundef %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !488
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort14sort13_optimaljNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1K_11IndexReader4opens0_0E0EB1M_.exit: ; preds = %bb.ej
  %i.agf = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.aeq ; 2 uses
  %i.agg = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.adw ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agf, i64 8
  %i.agi = load ptr, ptr %i.agh, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agf, i64 16
  %i.agk = load i64, ptr %i.agj, align 8, !noalias !488, !noundef !4 ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agg, i64 8
  %i.agm = load ptr, ptr %i.agl, align 8, !noalias !488, !nonnull !4, !noundef !4
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agg, i64 16
  %i.ago = load i64, ptr %i.agn, align 8, !noalias !488, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i306.i = tail call i64 @llvm.umin.i64(i64 %i.agk, i64 %i.ago)
  %i.agp = tail call i32 @memcmp(ptr nonnull %i.agi, ptr nonnull %i.agm, i64 %spec.store.select.i.i.i306.i), !noalias !488 ; 2 uses
  %i.agq = sext i32 %i.agp to i64
  %i.agr = icmp eq i32 %i.agp, 0
  %i.ags = sub i64 %i.agk, %i.ago
  %spec.select.i.i.i307.i = select i1 %i.agr, i64 %i.ags, i64 %i.agq
  %i.agt = icmp slt i64 %spec.select.i.i.i307.i, 0 ; 2 uses
  %i.agu = select i1 %i.agt, i64 %i.adw, i64 %i.aeq
  %i.agv = select i1 %i.agt, i64 %i.aeq, i64 %i.adw
  store i64 %i.agv, ptr %i.cs, align 8, !alias.scope !488
  store i64 %i.agu, ptr %i.dn, align 8, !alias.scope !488
  br label %bb.hk

bb.em:                                            ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !489)
  %i.agw = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 24 ; 8 uses
  %.val1.i.i16 = load i64, ptr %i.agw, align 8, !alias.scope !489, !noundef !4 ; 5 uses
  %.val2.i.i17 = load i64, ptr %.sroa.02.0, align 8, !alias.scope !489, !noundef !4 ; 5 uses
  %.val.i.i.i18 = load ptr, ptr %.val15, align 8, !noalias !489, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %.val.i.i.i18, i64 8
  %i.agy = load ptr, ptr %i.agx, align 8, !noalias !489, !nonnull !4, !noundef !4 ; 50 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %.val.i.i.i18, i64 16
  %i.aha = load i64, ptr %i.agz, align 8, !noalias !489, !noundef !4 ; 100 uses
  %i.ahb = icmp ult i64 %.val1.i.i16, %i.aha
  br i1 %i.ahb, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.ahc = icmp ult i64 %.val2.i.i17, %i.aha
  br i1 %i.ahc, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit.i19, label %bb.ep

bb.eo:                                            ; preds = %bb.em
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val1.i.i16, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !489
  unreachable

bb.ep:                                            ; preds = %bb.en
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val2.i.i17, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !489
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit.i19: ; preds = %bb.en
  %i.ahd = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %.val1.i.i16 ; 2 uses
  %i.ahe = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %.val2.i.i17 ; 2 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahd, i64 8
  %i.ahg = load ptr, ptr %i.ahf, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahd, i64 16
  %i.ahi = load i64, ptr %i.ahh, align 8, !noalias !489, !noundef !4 ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahe, i64 8
  %i.ahk = load ptr, ptr %i.ahj, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahe, i64 16
  %i.ahm = load i64, ptr %i.ahl, align 8, !noalias !489, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i20 = tail call i64 @llvm.umin.i64(i64 %i.ahi, i64 %i.ahm)
  %i.ahn = tail call i32 @memcmp(ptr nonnull %i.ahg, ptr nonnull %i.ahk, i64 %spec.store.select.i.i.i.i20), !noalias !489 ; 2 uses
  %i.aho = sext i32 %i.ahn to i64
  %i.ahp = icmp eq i32 %i.ahn, 0
  %i.ahq = sub i64 %i.ahi, %i.ahm
  %spec.select.i.i.i.i21 = select i1 %i.ahp, i64 %i.ahq, i64 %i.aho
  %i.ahr = icmp slt i64 %spec.select.i.i.i.i21, 0 ; 2 uses
  %i.ahs = select i1 %i.ahr, i64 %.val2.i.i17, i64 %.val1.i.i16 ; 6 uses
  %i.aht = select i1 %i.ahr, i64 %.val1.i.i16, i64 %.val2.i.i17 ; 6 uses
  store i64 %i.aht, ptr %.sroa.02.0, align 8, !alias.scope !489
  store i64 %i.ahs, ptr %i.agw, align 8, !alias.scope !489
  %i.ahu = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 8 ; 6 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 56 ; 6 uses
  %.val1.i25.i = load i64, ptr %i.ahv, align 8, !alias.scope !489, !noundef !4 ; 5 uses
  %.val2.i26.i = load i64, ptr %i.ahu, align 8, !alias.scope !489, !noundef !4 ; 5 uses
  %i.ahw = icmp ult i64 %.val1.i25.i, %i.aha
  br i1 %i.ahw, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit.i19
  %i.ahx = icmp ult i64 %.val2.i26.i, %i.aha
  br i1 %i.ahx, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit30.i, label %bb.es

bb.er:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit.i19
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val1.i25.i, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !489
  unreachable

bb.es:                                            ; preds = %bb.eq
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val2.i26.i, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !489
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit30.i: ; preds = %bb.eq
  %i.ahy = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %.val1.i25.i ; 2 uses
  %i.ahz = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %.val2.i26.i ; 2 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahy, i64 8
  %i.aib = load ptr, ptr %i.aia, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ahy, i64 16
  %i.aid = load i64, ptr %i.aic, align 8, !noalias !489, !noundef !4 ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.ahz, i64 8
  %i.aif = load ptr, ptr %i.aie, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.aig = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16
  %i.aih = load i64, ptr %i.aig, align 8, !noalias !489, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i28.i = tail call i64 @llvm.umin.i64(i64 %i.aid, i64 %i.aih)
  %i.aii = tail call i32 @memcmp(ptr nonnull %i.aib, ptr nonnull %i.aif, i64 %spec.store.select.i.i.i28.i), !noalias !489 ; 2 uses
  %i.aij = sext i32 %i.aii to i64
  %i.aik = icmp eq i32 %i.aii, 0
  %i.ail = sub i64 %i.aid, %i.aih
  %spec.select.i.i.i29.i = select i1 %i.aik, i64 %i.ail, i64 %i.aij
  %i.aim = icmp slt i64 %spec.select.i.i.i29.i, 0 ; 2 uses
  %i.ain = select i1 %i.aim, i64 %.val2.i26.i, i64 %.val1.i25.i ; 6 uses
  %i.aio = select i1 %i.aim, i64 %.val1.i25.i, i64 %.val2.i26.i ; 6 uses
  store i64 %i.aio, ptr %i.ahu, align 8, !alias.scope !489
  store i64 %i.ain, ptr %i.ahv, align 8, !alias.scope !489
  %i.aip = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 16 ; 7 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 40 ; 8 uses
  %.val1.i31.i = load i64, ptr %i.aiq, align 8, !alias.scope !489, !noundef !4 ; 5 uses
  %.val2.i32.i = load i64, ptr %i.aip, align 8, !alias.scope !489, !noundef !4 ; 5 uses
  %i.air = icmp ult i64 %.val1.i31.i, %i.aha
  br i1 %i.air, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit30.i
  %i.ais = icmp ult i64 %.val2.i32.i, %i.aha
  br i1 %i.ais, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit36.i, label %bb.ev

bb.eu:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit30.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val1.i31.i, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !489
  unreachable

bb.ev:                                            ; preds = %bb.et
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val2.i32.i, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !489
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit36.i: ; preds = %bb.et
  %i.ait = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %.val1.i31.i ; 2 uses
  %i.aiu = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %.val2.i32.i ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.ait, i64 8
  %i.aiw = load ptr, ptr %i.aiv, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.aix = getelementptr inbounds nuw i8, ptr %i.ait, i64 16
  %i.aiy = load i64, ptr %i.aix, align 8, !noalias !489, !noundef !4 ; 2 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiu, i64 8
  %i.aja = load ptr, ptr %i.aiz, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aiu, i64 16
  %i.ajc = load i64, ptr %i.ajb, align 8, !noalias !489, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i34.i = tail call i64 @llvm.umin.i64(i64 %i.aiy, i64 %i.ajc)
  %i.ajd = tail call i32 @memcmp(ptr nonnull %i.aiw, ptr nonnull %i.aja, i64 %spec.store.select.i.i.i34.i), !noalias !489 ; 2 uses
  %i.aje = sext i32 %i.ajd to i64
  %i.ajf = icmp eq i32 %i.ajd, 0
  %i.ajg = sub i64 %i.aiy, %i.ajc
  %spec.select.i.i.i35.i = select i1 %i.ajf, i64 %i.ajg, i64 %i.aje
  %i.ajh = icmp slt i64 %spec.select.i.i.i35.i, 0 ; 2 uses
  %i.aji = select i1 %i.ajh, i64 %.val2.i32.i, i64 %.val1.i31.i ; 6 uses
  %i.ajj = select i1 %i.ajh, i64 %.val1.i31.i, i64 %.val2.i32.i ; 6 uses
  store i64 %i.ajj, ptr %i.aip, align 8, !alias.scope !489
  store i64 %i.aji, ptr %i.aiq, align 8, !alias.scope !489
  %i.ajk = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 32 ; 8 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 64 ; 5 uses
  %.val1.i37.i = load i64, ptr %i.ajl, align 8, !alias.scope !489, !noundef !4 ; 5 uses
  %.val2.i38.i = load i64, ptr %i.ajk, align 8, !alias.scope !489, !noundef !4 ; 5 uses
  %i.ajm = icmp ult i64 %.val1.i37.i, %i.aha
  br i1 %i.ajm, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit36.i
  %i.ajn = icmp ult i64 %.val2.i38.i, %i.aha
  br i1 %i.ajn, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit42.i, label %bb.ey

bb.ex:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit36.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val1.i37.i, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !489
  unreachable

bb.ey:                                            ; preds = %bb.ew
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val2.i38.i, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !489
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit42.i: ; preds = %bb.ew
  %i.ajo = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %.val1.i37.i ; 2 uses
  %i.ajp = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %.val2.i38.i ; 2 uses
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajo, i64 8
  %i.ajr = load ptr, ptr %i.ajq, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajo, i64 16
  %i.ajt = load i64, ptr %i.ajs, align 8, !noalias !489, !noundef !4 ; 2 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajp, i64 8
  %i.ajv = load ptr, ptr %i.aju, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajp, i64 16
  %i.ajx = load i64, ptr %i.ajw, align 8, !noalias !489, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i40.i = tail call i64 @llvm.umin.i64(i64 %i.ajt, i64 %i.ajx)
  %i.ajy = tail call i32 @memcmp(ptr nonnull %i.ajr, ptr nonnull %i.ajv, i64 %spec.store.select.i.i.i40.i), !noalias !489 ; 2 uses
  %i.ajz = sext i32 %i.ajy to i64
  %i.aka = icmp eq i32 %i.ajy, 0
  %i.akb = sub i64 %i.ajt, %i.ajx
  %spec.select.i.i.i41.i = select i1 %i.aka, i64 %i.akb, i64 %i.ajz
  %i.akc = icmp slt i64 %spec.select.i.i.i41.i, 0 ; 2 uses
  %i.akd = select i1 %i.akc, i64 %.val2.i38.i, i64 %.val1.i37.i ; 6 uses
  %i.ake = select i1 %i.akc, i64 %.val1.i37.i, i64 %.val2.i38.i ; 6 uses
  store i64 %i.ake, ptr %i.ajk, align 8, !alias.scope !489
  store i64 %i.akd, ptr %i.ajl, align 8, !alias.scope !489
  %i.akf = icmp ult i64 %i.ain, %i.aha
  br i1 %i.akf, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit42.i
  %i.akg = icmp ult i64 %i.aht, %i.aha
  br i1 %i.akg, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit48.i, label %bb.fb

bb.fa:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit42.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ain, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !489
  unreachable

bb.fb:                                            ; preds = %bb.ez
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.aht, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !489
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit48.i: ; preds = %bb.ez
  %i.akh = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.ain ; 2 uses
  %i.aki = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.aht ; 2 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %i.akh, i64 8
  %i.akk = load ptr, ptr %i.akj, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akh, i64 16
  %i.akm = load i64, ptr %i.akl, align 8, !noalias !489, !noundef !4 ; 2 uses
  %i.akn = getelementptr inbounds nuw i8, ptr %i.aki, i64 8
  %i.ako = load ptr, ptr %i.akn, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.akp = getelementptr inbounds nuw i8, ptr %i.aki, i64 16
  %i.akq = load i64, ptr %i.akp, align 8, !noalias !489, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i46.i = tail call i64 @llvm.umin.i64(i64 %i.akm, i64 %i.akq)
  %i.akr = tail call i32 @memcmp(ptr nonnull %i.akk, ptr nonnull %i.ako, i64 %spec.store.select.i.i.i46.i), !noalias !489 ; 2 uses
  %i.aks = sext i32 %i.akr to i64
  %i.akt = icmp eq i32 %i.akr, 0
  %i.aku = sub i64 %i.akm, %i.akq
  %spec.select.i.i.i47.i = select i1 %i.akt, i64 %i.aku, i64 %i.aks
  %i.akv = icmp slt i64 %spec.select.i.i.i47.i, 0 ; 2 uses
  %i.akw = select i1 %i.akv, i64 %i.aht, i64 %i.ain ; 6 uses
  %i.akx = select i1 %i.akv, i64 %i.ain, i64 %i.aht ; 6 uses
  store i64 %i.akx, ptr %.sroa.02.0, align 8, !alias.scope !489
  store i64 %i.akw, ptr %i.ahv, align 8, !alias.scope !489
  %i.aky = icmp ult i64 %i.ake, %i.aha
  br i1 %i.aky, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit48.i
  %i.akz = icmp ult i64 %i.ajj, %i.aha
  br i1 %i.akz, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit54.i, label %bb.fe

bb.fd:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit48.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ake, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !489
  unreachable

bb.fe:                                            ; preds = %bb.fc
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ajj, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !489
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit54.i: ; preds = %bb.fc
  %i.ala = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.ake ; 2 uses
  %i.alb = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.ajj ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %i.ala, i64 8
  %i.ald = load ptr, ptr %i.alc, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ala, i64 16
  %i.alf = load i64, ptr %i.ale, align 8, !noalias !489, !noundef !4 ; 2 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alb, i64 8
  %i.alh = load ptr, ptr %i.alg, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alb, i64 16
  %i.alj = load i64, ptr %i.ali, align 8, !noalias !489, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i52.i = tail call i64 @llvm.umin.i64(i64 %i.alf, i64 %i.alj)
  %i.alk = tail call i32 @memcmp(ptr nonnull %i.ald, ptr nonnull %i.alh, i64 %spec.store.select.i.i.i52.i), !noalias !489 ; 2 uses
  %i.all = sext i32 %i.alk to i64
  %i.alm = icmp eq i32 %i.alk, 0
  %i.aln = sub i64 %i.alf, %i.alj
  %spec.select.i.i.i53.i = select i1 %i.alm, i64 %i.aln, i64 %i.all
  %i.alo = icmp slt i64 %spec.select.i.i.i53.i, 0 ; 2 uses
  %i.alp = select i1 %i.alo, i64 %i.ajj, i64 %i.ake ; 6 uses
  %i.alq = select i1 %i.alo, i64 %i.ake, i64 %i.ajj ; 6 uses
  store i64 %i.alq, ptr %i.aip, align 8, !alias.scope !489
  store i64 %i.alp, ptr %i.ajk, align 8, !alias.scope !489
  %i.alr = icmp ult i64 %i.akd, %i.aha
  br i1 %i.alr, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit54.i
  %i.als = icmp ult i64 %i.ahs, %i.aha
  br i1 %i.als, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit60.i, label %bb.fh

bb.fg:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit54.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.akd, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !489
  unreachable

bb.fh:                                            ; preds = %bb.ff
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ahs, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !489
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit60.i: ; preds = %bb.ff
  %i.alt = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.akd ; 2 uses
  %i.alu = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.ahs ; 2 uses
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alt, i64 8
  %i.alw = load ptr, ptr %i.alv, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alt, i64 16
  %i.aly = load i64, ptr %i.alx, align 8, !noalias !489, !noundef !4 ; 2 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alu, i64 8
  %i.ama = load ptr, ptr %i.alz, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.amb = getelementptr inbounds nuw i8, ptr %i.alu, i64 16
  %i.amc = load i64, ptr %i.amb, align 8, !noalias !489, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i58.i = tail call i64 @llvm.umin.i64(i64 %i.aly, i64 %i.amc)
  %i.amd = tail call i32 @memcmp(ptr nonnull %i.alw, ptr nonnull %i.ama, i64 %spec.store.select.i.i.i58.i), !noalias !489 ; 2 uses
  %i.ame = sext i32 %i.amd to i64
  %i.amf = icmp eq i32 %i.amd, 0
  %i.amg = sub i64 %i.aly, %i.amc
  %spec.select.i.i.i59.i = select i1 %i.amf, i64 %i.amg, i64 %i.ame
  %i.amh = icmp slt i64 %spec.select.i.i.i59.i, 0 ; 2 uses
  %i.ami = select i1 %i.amh, i64 %i.ahs, i64 %i.akd ; 6 uses
  %i.amj = select i1 %i.amh, i64 %i.akd, i64 %i.ahs ; 6 uses
  store i64 %i.amj, ptr %i.agw, align 8, !alias.scope !489
  store i64 %i.ami, ptr %i.ajl, align 8, !alias.scope !489
  %i.amk = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 48 ; 6 uses
  %.val1.i61.i = load i64, ptr %i.amk, align 8, !alias.scope !489, !noundef !4 ; 5 uses
  %i.aml = icmp ult i64 %.val1.i61.i, %i.aha
  br i1 %i.aml, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit60.i
  %i.amm = icmp ult i64 %i.aji, %i.aha
  br i1 %i.amm, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit66.i, label %bb.fk

bb.fj:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit60.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.val1.i61.i, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !489
  unreachable

bb.fk:                                            ; preds = %bb.fi
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.aji, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !489
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit66.i: ; preds = %bb.fi
  %i.amn = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %.val1.i61.i ; 2 uses
  %i.amo = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.aji ; 2 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amn, i64 8
  %i.amq = load ptr, ptr %i.amp, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amn, i64 16
  %i.ams = load i64, ptr %i.amr, align 8, !noalias !489, !noundef !4 ; 2 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amo, i64 8
  %i.amu = load ptr, ptr %i.amt, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amo, i64 16
  %i.amw = load i64, ptr %i.amv, align 8, !noalias !489, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i64.i = tail call i64 @llvm.umin.i64(i64 %i.ams, i64 %i.amw)
  %i.amx = tail call i32 @memcmp(ptr nonnull %i.amq, ptr nonnull %i.amu, i64 %spec.store.select.i.i.i64.i), !noalias !489 ; 2 uses
  %i.amy = sext i32 %i.amx to i64
  %i.amz = icmp eq i32 %i.amx, 0
  %i.ana = sub i64 %i.ams, %i.amw
  %spec.select.i.i.i65.i = select i1 %i.amz, i64 %i.ana, i64 %i.amy
  %i.anb = icmp slt i64 %spec.select.i.i.i65.i, 0 ; 2 uses
  %i.anc = select i1 %i.anb, i64 %i.aji, i64 %.val1.i61.i ; 6 uses
  %i.and = select i1 %i.anb, i64 %.val1.i61.i, i64 %i.aji ; 6 uses
  store i64 %i.and, ptr %i.aiq, align 8, !alias.scope !489
  store i64 %i.anc, ptr %i.amk, align 8, !alias.scope !489
  %i.ane = icmp ult i64 %i.alq, %i.aha
  br i1 %i.ane, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit66.i
  %i.anf = icmp ult i64 %i.akx, %i.aha
  br i1 %i.anf, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit72.i, label %bb.fn

bb.fm:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit66.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.alq, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !489
  unreachable

bb.fn:                                            ; preds = %bb.fl
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.akx, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !489
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit72.i: ; preds = %bb.fl
  %i.ang = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.alq ; 2 uses
  %i.anh = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.akx ; 2 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %i.ang, i64 8
  %i.anj = load ptr, ptr %i.ani, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.ank = getelementptr inbounds nuw i8, ptr %i.ang, i64 16
  %i.anl = load i64, ptr %i.ank, align 8, !noalias !489, !noundef !4 ; 2 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anh, i64 8
  %i.ann = load ptr, ptr %i.anm, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.ano = getelementptr inbounds nuw i8, ptr %i.anh, i64 16
  %i.anp = load i64, ptr %i.ano, align 8, !noalias !489, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i70.i = tail call i64 @llvm.umin.i64(i64 %i.anl, i64 %i.anp)
  %i.anq = tail call i32 @memcmp(ptr nonnull %i.anj, ptr nonnull %i.ann, i64 %spec.store.select.i.i.i70.i), !noalias !489 ; 2 uses
  %i.anr = sext i32 %i.anq to i64
  %i.ans = icmp eq i32 %i.anq, 0
  %i.ant = sub i64 %i.anl, %i.anp
  %spec.select.i.i.i71.i = select i1 %i.ans, i64 %i.ant, i64 %i.anr
  %i.anu = icmp slt i64 %spec.select.i.i.i71.i, 0 ; 2 uses
  %i.anv = select i1 %i.anu, i64 %i.akx, i64 %i.alq ; 6 uses
  %i.anw = select i1 %i.anu, i64 %i.alq, i64 %i.akx ; 6 uses
  store i64 %i.anw, ptr %.sroa.02.0, align 8, !alias.scope !489
  store i64 %i.anv, ptr %i.aip, align 8, !alias.scope !489
  %i.anx = icmp ult i64 %i.amj, %i.aha
  br i1 %i.anx, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit72.i
  %i.any = icmp ult i64 %i.aio, %i.aha
  br i1 %i.any, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit78.i, label %bb.fq

bb.fp:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit72.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.amj, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !489
  unreachable

bb.fq:                                            ; preds = %bb.fo
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.aio, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !489
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit78.i: ; preds = %bb.fo
  %i.anz = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.amj ; 2 uses
  %i.aoa = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.aio ; 2 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anz, i64 8
  %i.aoc = load ptr, ptr %i.aob, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.aod = getelementptr inbounds nuw i8, ptr %i.anz, i64 16
  %i.aoe = load i64, ptr %i.aod, align 8, !noalias !489, !noundef !4 ; 2 uses
  %i.aof = getelementptr inbounds nuw i8, ptr %i.aoa, i64 8
  %i.aog = load ptr, ptr %i.aof, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aoa, i64 16
  %i.aoi = load i64, ptr %i.aoh, align 8, !noalias !489, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i76.i = tail call i64 @llvm.umin.i64(i64 %i.aoe, i64 %i.aoi)
  %i.aoj = tail call i32 @memcmp(ptr nonnull %i.aoc, ptr nonnull %i.aog, i64 %spec.store.select.i.i.i76.i), !noalias !489 ; 2 uses
  %i.aok = sext i32 %i.aoj to i64
  %i.aol = icmp eq i32 %i.aoj, 0
  %i.aom = sub i64 %i.aoe, %i.aoi
  %spec.select.i.i.i77.i = select i1 %i.aol, i64 %i.aom, i64 %i.aok
  %i.aon = icmp slt i64 %spec.select.i.i.i77.i, 0 ; 2 uses
  %i.aoo = select i1 %i.aon, i64 %i.aio, i64 %i.amj ; 6 uses
  %i.aop = select i1 %i.aon, i64 %i.amj, i64 %i.aio ; 6 uses
  store i64 %i.aop, ptr %i.ahu, align 8, !alias.scope !489
  store i64 %i.aoo, ptr %i.agw, align 8, !alias.scope !489
  %i.aoq = icmp ult i64 %i.and, %i.aha
  br i1 %i.aoq, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit78.i
  %i.aor = icmp ult i64 %i.alp, %i.aha
  br i1 %i.aor, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit84.i, label %bb.ft

bb.fs:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit78.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.and, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !489
  unreachable

bb.ft:                                            ; preds = %bb.fr
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.alp, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !489
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit84.i: ; preds = %bb.fr
  %i.aos = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.and ; 2 uses
  %i.aot = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.alp ; 2 uses
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aos, i64 8
  %i.aov = load ptr, ptr %i.aou, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aos, i64 16
  %i.aox = load i64, ptr %i.aow, align 8, !noalias !489, !noundef !4 ; 2 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aot, i64 8
  %i.aoz = load ptr, ptr %i.aoy, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aot, i64 16
  %i.apb = load i64, ptr %i.apa, align 8, !noalias !489, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i82.i = tail call i64 @llvm.umin.i64(i64 %i.aox, i64 %i.apb)
  %i.apc = tail call i32 @memcmp(ptr nonnull %i.aov, ptr nonnull %i.aoz, i64 %spec.store.select.i.i.i82.i), !noalias !489 ; 2 uses
  %i.apd = sext i32 %i.apc to i64
  %i.ape = icmp eq i32 %i.apc, 0
  %i.apf = sub i64 %i.aox, %i.apb
  %spec.select.i.i.i83.i = select i1 %i.ape, i64 %i.apf, i64 %i.apd
  %i.apg = icmp slt i64 %spec.select.i.i.i83.i, 0 ; 2 uses
  %i.aph = select i1 %i.apg, i64 %i.alp, i64 %i.and ; 6 uses
  %i.api = select i1 %i.apg, i64 %i.and, i64 %i.alp ; 6 uses
  store i64 %i.api, ptr %i.ajk, align 8, !alias.scope !489
  store i64 %i.aph, ptr %i.aiq, align 8, !alias.scope !489
  %i.apj = icmp ult i64 %i.ami, %i.aha
  br i1 %i.apj, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit84.i
  %i.apk = icmp ult i64 %i.akw, %i.aha
  br i1 %i.apk, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit90.i, label %bb.fw

bb.fv:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit84.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ami, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !489
  unreachable

bb.fw:                                            ; preds = %bb.fu
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.akw, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !489
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit90.i: ; preds = %bb.fu
  %i.apl = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.ami ; 2 uses
  %i.apm = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.akw ; 2 uses
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apl, i64 8
  %i.apo = load ptr, ptr %i.apn, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.app = getelementptr inbounds nuw i8, ptr %i.apl, i64 16
  %i.apq = load i64, ptr %i.app, align 8, !noalias !489, !noundef !4 ; 2 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apm, i64 8
  %i.aps = load ptr, ptr %i.apr, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apm, i64 16
  %i.apu = load i64, ptr %i.apt, align 8, !noalias !489, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i88.i = tail call i64 @llvm.umin.i64(i64 %i.apq, i64 %i.apu)
  %i.apv = tail call i32 @memcmp(ptr nonnull %i.apo, ptr nonnull %i.aps, i64 %spec.store.select.i.i.i88.i), !noalias !489 ; 2 uses
  %i.apw = sext i32 %i.apv to i64
  %i.apx = icmp eq i32 %i.apv, 0
  %i.apy = sub i64 %i.apq, %i.apu
  %spec.select.i.i.i89.i = select i1 %i.apx, i64 %i.apy, i64 %i.apw
  %i.apz = icmp slt i64 %spec.select.i.i.i89.i, 0 ; 2 uses
  %i.aqa = select i1 %i.apz, i64 %i.akw, i64 %i.ami ; 6 uses
  %i.aqb = select i1 %i.apz, i64 %i.ami, i64 %i.akw ; 6 uses
  store i64 %i.aqb, ptr %i.ahv, align 8, !alias.scope !489
  store i64 %i.aqa, ptr %i.ajl, align 8, !alias.scope !489
  %i.aqc = icmp ult i64 %i.api, %i.aha
  br i1 %i.aqc, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit90.i
  %i.aqd = icmp ult i64 %i.aop, %i.aha
  br i1 %i.aqd, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit96.i, label %bb.fz

bb.fy:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit90.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.api, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !489
  unreachable

bb.fz:                                            ; preds = %bb.fx
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.aop, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !489
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit96.i: ; preds = %bb.fx
  %i.aqe = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.api ; 2 uses
  %i.aqf = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.aop ; 2 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqe, i64 8
  %i.aqh = load ptr, ptr %i.aqg, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqe, i64 16
  %i.aqj = load i64, ptr %i.aqi, align 8, !noalias !489, !noundef !4 ; 2 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqf, i64 8
  %i.aql = load ptr, ptr %i.aqk, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqf, i64 16
  %i.aqn = load i64, ptr %i.aqm, align 8, !noalias !489, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i94.i = tail call i64 @llvm.umin.i64(i64 %i.aqj, i64 %i.aqn)
  %i.aqo = tail call i32 @memcmp(ptr nonnull %i.aqh, ptr nonnull %i.aql, i64 %spec.store.select.i.i.i94.i), !noalias !489 ; 2 uses
  %i.aqp = sext i32 %i.aqo to i64
  %i.aqq = icmp eq i32 %i.aqo, 0
  %i.aqr = sub i64 %i.aqj, %i.aqn
  %spec.select.i.i.i95.i = select i1 %i.aqq, i64 %i.aqr, i64 %i.aqp
  %i.aqs = icmp slt i64 %spec.select.i.i.i95.i, 0 ; 2 uses
  %i.aqt = select i1 %i.aqs, i64 %i.aop, i64 %i.api ; 6 uses
  %i.aqu = select i1 %i.aqs, i64 %i.api, i64 %i.aop ; 6 uses
  store i64 %i.aqu, ptr %i.ahu, align 8, !alias.scope !489
  store i64 %i.aqt, ptr %i.ajk, align 8, !alias.scope !489
  %i.aqv = icmp ult i64 %i.anc, %i.aha
  br i1 %i.aqv, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit96.i
  %i.aqw = icmp ult i64 %i.aoo, %i.aha
  br i1 %i.aqw, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit102.i, label %bb.gc

bb.gb:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit96.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.anc, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !489
  unreachable

bb.gc:                                            ; preds = %bb.ga
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.aoo, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !489
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit102.i: ; preds = %bb.ga
  %i.aqx = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.anc ; 2 uses
  %i.aqy = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.aoo ; 2 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqx, i64 8
  %i.ara = load ptr, ptr %i.aqz, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.arb = getelementptr inbounds nuw i8, ptr %i.aqx, i64 16
  %i.arc = load i64, ptr %i.arb, align 8, !noalias !489, !noundef !4 ; 2 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %i.aqy, i64 8
  %i.are = load ptr, ptr %i.ard, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.arf = getelementptr inbounds nuw i8, ptr %i.aqy, i64 16
  %i.arg = load i64, ptr %i.arf, align 8, !noalias !489, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i100.i = tail call i64 @llvm.umin.i64(i64 %i.arc, i64 %i.arg)
  %i.arh = tail call i32 @memcmp(ptr nonnull %i.ara, ptr nonnull %i.are, i64 %spec.store.select.i.i.i100.i), !noalias !489 ; 2 uses
  %i.ari = sext i32 %i.arh to i64
  %i.arj = icmp eq i32 %i.arh, 0
  %i.ark = sub i64 %i.arc, %i.arg
  %spec.select.i.i.i101.i = select i1 %i.arj, i64 %i.ark, i64 %i.ari
  %i.arl = icmp slt i64 %spec.select.i.i.i101.i, 0 ; 2 uses
  %i.arm = select i1 %i.arl, i64 %i.aoo, i64 %i.anc ; 6 uses
  %i.arn = select i1 %i.arl, i64 %i.anc, i64 %i.aoo ; 6 uses
  store i64 %i.arn, ptr %i.agw, align 8, !alias.scope !489
  store i64 %i.arm, ptr %i.amk, align 8, !alias.scope !489
  %i.aro = icmp ult i64 %i.aqb, %i.aha
  br i1 %i.aro, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit102.i
  %i.arp = icmp ult i64 %i.aph, %i.aha
  br i1 %i.arp, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit108.i, label %bb.gf

bb.ge:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit102.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.aqb, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !489
  unreachable

bb.gf:                                            ; preds = %bb.gd
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.aph, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !489
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit108.i: ; preds = %bb.gd
  %i.arq = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.aqb ; 2 uses
  %i.arr = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.aph ; 2 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arq, i64 8
  %i.art = load ptr, ptr %i.ars, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arq, i64 16
  %i.arv = load i64, ptr %i.aru, align 8, !noalias !489, !noundef !4 ; 2 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arr, i64 8
  %i.arx = load ptr, ptr %i.arw, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arr, i64 16
  %i.arz = load i64, ptr %i.ary, align 8, !noalias !489, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i106.i = tail call i64 @llvm.umin.i64(i64 %i.arv, i64 %i.arz)
  %i.asa = tail call i32 @memcmp(ptr nonnull %i.art, ptr nonnull %i.arx, i64 %spec.store.select.i.i.i106.i), !noalias !489 ; 2 uses
  %i.asb = sext i32 %i.asa to i64
  %i.asc = icmp eq i32 %i.asa, 0
  %i.asd = sub i64 %i.arv, %i.arz
  %spec.select.i.i.i107.i = select i1 %i.asc, i64 %i.asd, i64 %i.asb
  %i.ase = icmp slt i64 %spec.select.i.i.i107.i, 0 ; 2 uses
  %i.asf = select i1 %i.ase, i64 %i.aph, i64 %i.aqb ; 6 uses
  %i.asg = select i1 %i.ase, i64 %i.aqb, i64 %i.aph ; 6 uses
  store i64 %i.asg, ptr %i.aiq, align 8, !alias.scope !489
  store i64 %i.asf, ptr %i.ahv, align 8, !alias.scope !489
  %i.ash = icmp ult i64 %i.aqu, %i.aha
  br i1 %i.ash, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit108.i
  %i.asi = icmp ult i64 %i.anw, %i.aha
  br i1 %i.asi, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit114.i, label %bb.gi

bb.gh:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit108.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.aqu, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !489
  unreachable

bb.gi:                                            ; preds = %bb.gg
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.anw, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !489
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit114.i: ; preds = %bb.gg
  %i.asj = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.aqu ; 2 uses
  %i.ask = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.anw ; 2 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %i.asj, i64 8
  %i.asm = load ptr, ptr %i.asl, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asj, i64 16
  %i.aso = load i64, ptr %i.asn, align 8, !noalias !489, !noundef !4 ; 2 uses
  %i.asp = getelementptr inbounds nuw i8, ptr %i.ask, i64 8
  %i.asq = load ptr, ptr %i.asp, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.asr = getelementptr inbounds nuw i8, ptr %i.ask, i64 16
  %i.ass = load i64, ptr %i.asr, align 8, !noalias !489, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i112.i = tail call i64 @llvm.umin.i64(i64 %i.aso, i64 %i.ass)
  %i.ast = tail call i32 @memcmp(ptr nonnull %i.asm, ptr nonnull %i.asq, i64 %spec.store.select.i.i.i112.i), !noalias !489 ; 2 uses
  %i.asu = sext i32 %i.ast to i64
  %i.asv = icmp eq i32 %i.ast, 0
  %i.asw = sub i64 %i.aso, %i.ass
  %spec.select.i.i.i113.i = select i1 %i.asv, i64 %i.asw, i64 %i.asu
  %i.asx = icmp slt i64 %spec.select.i.i.i113.i, 0 ; 2 uses
  %i.asy = select i1 %i.asx, i64 %i.anw, i64 %i.aqu ; 6 uses
  %i.asz = select i1 %i.asx, i64 %i.aqu, i64 %i.anw
  store i64 %i.asz, ptr %.sroa.02.0, align 8, !alias.scope !489
  store i64 %i.asy, ptr %i.ahu, align 8, !alias.scope !489
  %i.ata = icmp ult i64 %i.aqt, %i.aha
  br i1 %i.ata, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit114.i
  %i.atb = icmp ult i64 %i.anv, %i.aha
  br i1 %i.atb, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit120.i, label %bb.gl

bb.gk:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit114.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.aqt, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !489
  unreachable

bb.gl:                                            ; preds = %bb.gj
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.anv, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !489
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit120.i: ; preds = %bb.gj
  %i.atc = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.aqt ; 2 uses
  %i.atd = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.anv ; 2 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %i.atc, i64 8
  %i.atf = load ptr, ptr %i.ate, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atc, i64 16
  %i.ath = load i64, ptr %i.atg, align 8, !noalias !489, !noundef !4 ; 2 uses
  %i.ati = getelementptr inbounds nuw i8, ptr %i.atd, i64 8
  %i.atj = load ptr, ptr %i.ati, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atd, i64 16
  %i.atl = load i64, ptr %i.atk, align 8, !noalias !489, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i118.i = tail call i64 @llvm.umin.i64(i64 %i.ath, i64 %i.atl)
  %i.atm = tail call i32 @memcmp(ptr nonnull %i.atf, ptr nonnull %i.atj, i64 %spec.store.select.i.i.i118.i), !noalias !489 ; 2 uses
  %i.atn = sext i32 %i.atm to i64
  %i.ato = icmp eq i32 %i.atm, 0
  %i.atp = sub i64 %i.ath, %i.atl
  %spec.select.i.i.i119.i = select i1 %i.ato, i64 %i.atp, i64 %i.atn
  %i.atq = icmp slt i64 %spec.select.i.i.i119.i, 0 ; 2 uses
  %i.atr = select i1 %i.atq, i64 %i.anv, i64 %i.aqt ; 6 uses
  %i.ats = select i1 %i.atq, i64 %i.aqt, i64 %i.anv ; 6 uses
  store i64 %i.ats, ptr %i.aip, align 8, !alias.scope !489
  store i64 %i.atr, ptr %i.ajk, align 8, !alias.scope !489
  %i.att = icmp ult i64 %i.asg, %i.aha
  br i1 %i.att, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit120.i
  %i.atu = icmp ult i64 %i.arn, %i.aha
  br i1 %i.atu, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit126.i, label %bb.go

bb.gn:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit120.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.asg, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !489
  unreachable

bb.go:                                            ; preds = %bb.gm
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.arn, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !489
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit126.i: ; preds = %bb.gm
  %i.atv = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.asg ; 2 uses
  %i.atw = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.arn ; 2 uses
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atv, i64 8
  %i.aty = load ptr, ptr %i.atx, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.atz = getelementptr inbounds nuw i8, ptr %i.atv, i64 16
  %i.aua = load i64, ptr %i.atz, align 8, !noalias !489, !noundef !4 ; 2 uses
  %i.aub = getelementptr inbounds nuw i8, ptr %i.atw, i64 8
  %i.auc = load ptr, ptr %i.aub, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.aud = getelementptr inbounds nuw i8, ptr %i.atw, i64 16
  %i.aue = load i64, ptr %i.aud, align 8, !noalias !489, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i124.i = tail call i64 @llvm.umin.i64(i64 %i.aua, i64 %i.aue)
  %i.auf = tail call i32 @memcmp(ptr nonnull %i.aty, ptr nonnull %i.auc, i64 %spec.store.select.i.i.i124.i), !noalias !489 ; 2 uses
  %i.aug = sext i32 %i.auf to i64
  %i.auh = icmp eq i32 %i.auf, 0
  %i.aui = sub i64 %i.aua, %i.aue
  %spec.select.i.i.i125.i = select i1 %i.auh, i64 %i.aui, i64 %i.aug
  %i.auj = icmp slt i64 %spec.select.i.i.i125.i, 0 ; 2 uses
  %i.auk = select i1 %i.auj, i64 %i.arn, i64 %i.asg ; 6 uses
  %i.aul = select i1 %i.auj, i64 %i.asg, i64 %i.arn ; 6 uses
  store i64 %i.aul, ptr %i.agw, align 8, !alias.scope !489
  store i64 %i.auk, ptr %i.aiq, align 8, !alias.scope !489
  %i.aum = icmp ult i64 %i.aqa, %i.aha
  br i1 %i.aum, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit126.i
  %i.aun = icmp ult i64 %i.arm, %i.aha
  br i1 %i.aun, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit132.i, label %bb.gr

bb.gq:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit126.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.aqa, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !489
  unreachable

bb.gr:                                            ; preds = %bb.gp
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.arm, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !489
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit132.i: ; preds = %bb.gp
  %i.auo = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.aqa ; 2 uses
  %i.aup = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.arm ; 2 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %i.auo, i64 8
  %i.aur = load ptr, ptr %i.auq, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.aus = getelementptr inbounds nuw i8, ptr %i.auo, i64 16
  %i.aut = load i64, ptr %i.aus, align 8, !noalias !489, !noundef !4 ; 2 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aup, i64 8
  %i.auv = load ptr, ptr %i.auu, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.auw = getelementptr inbounds nuw i8, ptr %i.aup, i64 16
  %i.aux = load i64, ptr %i.auw, align 8, !noalias !489, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i130.i = tail call i64 @llvm.umin.i64(i64 %i.aut, i64 %i.aux)
  %i.auy = tail call i32 @memcmp(ptr nonnull %i.aur, ptr nonnull %i.auv, i64 %spec.store.select.i.i.i130.i), !noalias !489 ; 2 uses
  %i.auz = sext i32 %i.auy to i64
  %i.ava = icmp eq i32 %i.auy, 0
  %i.avb = sub i64 %i.aut, %i.aux
  %spec.select.i.i.i131.i = select i1 %i.ava, i64 %i.avb, i64 %i.auz
  %i.avc = icmp slt i64 %spec.select.i.i.i131.i, 0 ; 2 uses
  %i.avd = select i1 %i.avc, i64 %i.arm, i64 %i.aqa
  %i.ave = select i1 %i.avc, i64 %i.aqa, i64 %i.arm ; 6 uses
  store i64 %i.ave, ptr %i.amk, align 8, !alias.scope !489
  store i64 %i.avd, ptr %i.ajl, align 8, !alias.scope !489
  %i.avf = icmp ult i64 %i.aul, %i.aha
  br i1 %i.avf, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit132.i
  %i.avg = icmp ult i64 %i.ats, %i.aha
  br i1 %i.avg, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit138.i, label %bb.gu

bb.gt:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit132.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.aul, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !489
  unreachable

bb.gu:                                            ; preds = %bb.gs
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ats, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !489
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit138.i: ; preds = %bb.gs
  %i.avh = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.aul ; 2 uses
  %i.avi = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.ats ; 2 uses
  %i.avj = getelementptr inbounds nuw i8, ptr %i.avh, i64 8
  %i.avk = load ptr, ptr %i.avj, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avh, i64 16
  %i.avm = load i64, ptr %i.avl, align 8, !noalias !489, !noundef !4 ; 2 uses
  %i.avn = getelementptr inbounds nuw i8, ptr %i.avi, i64 8
  %i.avo = load ptr, ptr %i.avn, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avi, i64 16
  %i.avq = load i64, ptr %i.avp, align 8, !noalias !489, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i136.i = tail call i64 @llvm.umin.i64(i64 %i.avm, i64 %i.avq)
  %i.avr = tail call i32 @memcmp(ptr nonnull %i.avk, ptr nonnull %i.avo, i64 %spec.store.select.i.i.i136.i), !noalias !489 ; 2 uses
  %i.avs = sext i32 %i.avr to i64
  %i.avt = icmp eq i32 %i.avr, 0
  %i.avu = sub i64 %i.avm, %i.avq
  %spec.select.i.i.i137.i = select i1 %i.avt, i64 %i.avu, i64 %i.avs
  %i.avv = icmp slt i64 %spec.select.i.i.i137.i, 0 ; 2 uses
  %i.avw = select i1 %i.avv, i64 %i.ats, i64 %i.aul ; 6 uses
  %i.avx = select i1 %i.avv, i64 %i.aul, i64 %i.ats ; 6 uses
  store i64 %i.avx, ptr %i.aip, align 8, !alias.scope !489
  store i64 %i.avw, ptr %i.agw, align 8, !alias.scope !489
  %i.avy = icmp ult i64 %i.auk, %i.aha
  br i1 %i.avy, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit138.i
  %i.avz = icmp ult i64 %i.atr, %i.aha
  br i1 %i.avz, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit144.i, label %bb.gx

bb.gw:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit138.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.auk, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !489
  unreachable

bb.gx:                                            ; preds = %bb.gv
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.atr, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !489
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit144.i: ; preds = %bb.gv
  %i.awa = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.auk ; 2 uses
  %i.awb = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.atr ; 2 uses
  %i.awc = getelementptr inbounds nuw i8, ptr %i.awa, i64 8
  %i.awd = load ptr, ptr %i.awc, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awa, i64 16
  %i.awf = load i64, ptr %i.awe, align 8, !noalias !489, !noundef !4 ; 2 uses
  %i.awg = getelementptr inbounds nuw i8, ptr %i.awb, i64 8
  %i.awh = load ptr, ptr %i.awg, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.awi = getelementptr inbounds nuw i8, ptr %i.awb, i64 16
  %i.awj = load i64, ptr %i.awi, align 8, !noalias !489, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i142.i = tail call i64 @llvm.umin.i64(i64 %i.awf, i64 %i.awj)
  %i.awk = tail call i32 @memcmp(ptr nonnull %i.awd, ptr nonnull %i.awh, i64 %spec.store.select.i.i.i142.i), !noalias !489 ; 2 uses
  %i.awl = sext i32 %i.awk to i64
  %i.awm = icmp eq i32 %i.awk, 0
  %i.awn = sub i64 %i.awf, %i.awj
  %spec.select.i.i.i143.i = select i1 %i.awm, i64 %i.awn, i64 %i.awl
  %i.awo = icmp slt i64 %spec.select.i.i.i143.i, 0 ; 2 uses
  %i.awp = select i1 %i.awo, i64 %i.atr, i64 %i.auk ; 6 uses
  %i.awq = select i1 %i.awo, i64 %i.auk, i64 %i.atr ; 6 uses
  store i64 %i.awq, ptr %i.ajk, align 8, !alias.scope !489
  store i64 %i.awp, ptr %i.aiq, align 8, !alias.scope !489
  %i.awr = icmp ult i64 %i.asf, %i.aha
  br i1 %i.awr, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit144.i
  %i.aws = icmp ult i64 %i.ave, %i.aha
  br i1 %i.aws, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit150.i, label %bb.ha

bb.gz:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit144.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.asf, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !489
  unreachable

bb.ha:                                            ; preds = %bb.gy
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ave, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !489
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit150.i: ; preds = %bb.gy
  %i.awt = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.asf ; 2 uses
  %i.awu = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.ave ; 2 uses
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awt, i64 8
  %i.aww = load ptr, ptr %i.awv, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.awx = getelementptr inbounds nuw i8, ptr %i.awt, i64 16
  %i.awy = load i64, ptr %i.awx, align 8, !noalias !489, !noundef !4 ; 2 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awu, i64 8
  %i.axa = load ptr, ptr %i.awz, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.axb = getelementptr inbounds nuw i8, ptr %i.awu, i64 16
  %i.axc = load i64, ptr %i.axb, align 8, !noalias !489, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i148.i = tail call i64 @llvm.umin.i64(i64 %i.awy, i64 %i.axc)
  %i.axd = tail call i32 @memcmp(ptr nonnull %i.aww, ptr nonnull %i.axa, i64 %spec.store.select.i.i.i148.i), !noalias !489 ; 2 uses
  %i.axe = sext i32 %i.axd to i64
  %i.axf = icmp eq i32 %i.axd, 0
  %i.axg = sub i64 %i.awy, %i.axc
  %spec.select.i.i.i149.i = select i1 %i.axf, i64 %i.axg, i64 %i.axe
  %i.axh = icmp slt i64 %spec.select.i.i.i149.i, 0 ; 2 uses
  %i.axi = select i1 %i.axh, i64 %i.ave, i64 %i.asf
  %i.axj = select i1 %i.axh, i64 %i.asf, i64 %i.ave ; 6 uses
  store i64 %i.axj, ptr %i.amk, align 8, !alias.scope !489
  store i64 %i.axi, ptr %i.ahv, align 8, !alias.scope !489
  %i.axk = icmp ult i64 %i.avx, %i.aha
  br i1 %i.axk, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit150.i
  %i.axl = icmp ult i64 %i.asy, %i.aha
  br i1 %i.axl, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit156.i, label %bb.hd

bb.hc:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit150.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.avx, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !489
  unreachable

bb.hd:                                            ; preds = %bb.hb
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.asy, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !489
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit156.i: ; preds = %bb.hb
  %i.axm = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.avx ; 2 uses
  %i.axn = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.asy ; 2 uses
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axm, i64 8
  %i.axp = load ptr, ptr %i.axo, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axm, i64 16
  %i.axr = load i64, ptr %i.axq, align 8, !noalias !489, !noundef !4 ; 2 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axn, i64 8
  %i.axt = load ptr, ptr %i.axs, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axn, i64 16
  %i.axv = load i64, ptr %i.axu, align 8, !noalias !489, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i154.i = tail call i64 @llvm.umin.i64(i64 %i.axr, i64 %i.axv)
  %i.axw = tail call i32 @memcmp(ptr nonnull %i.axp, ptr nonnull %i.axt, i64 %spec.store.select.i.i.i154.i), !noalias !489 ; 2 uses
  %i.axx = sext i32 %i.axw to i64
  %i.axy = icmp eq i32 %i.axw, 0
  %i.axz = sub i64 %i.axr, %i.axv
  %spec.select.i.i.i155.i = select i1 %i.axy, i64 %i.axz, i64 %i.axx
  %i.aya = icmp slt i64 %spec.select.i.i.i155.i, 0 ; 2 uses
  %i.ayb = select i1 %i.aya, i64 %i.asy, i64 %i.avx
  %i.ayc = select i1 %i.aya, i64 %i.avx, i64 %i.asy
  store i64 %i.ayc, ptr %i.ahu, align 8, !alias.scope !489
  store i64 %i.ayb, ptr %i.aip, align 8, !alias.scope !489
  %i.ayd = icmp ult i64 %i.awq, %i.aha
  br i1 %i.ayd, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit156.i
  %i.aye = icmp ult i64 %i.avw, %i.aha
  br i1 %i.aye, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit162.i, label %bb.hg

bb.hf:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit156.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.awq, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !489
  unreachable

bb.hg:                                            ; preds = %bb.he
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.avw, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !489
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit162.i: ; preds = %bb.he
  %i.ayf = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.awq ; 2 uses
  %i.ayg = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.avw ; 2 uses
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ayf, i64 8
  %i.ayi = load ptr, ptr %i.ayh, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayf, i64 16
  %i.ayk = load i64, ptr %i.ayj, align 8, !noalias !489, !noundef !4 ; 2 uses
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayg, i64 8
  %i.aym = load ptr, ptr %i.ayl, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.ayg, i64 16
  %i.ayo = load i64, ptr %i.ayn, align 8, !noalias !489, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i160.i = tail call i64 @llvm.umin.i64(i64 %i.ayk, i64 %i.ayo)
  %i.ayp = tail call i32 @memcmp(ptr nonnull %i.ayi, ptr nonnull %i.aym, i64 %spec.store.select.i.i.i160.i), !noalias !489 ; 2 uses
  %i.ayq = sext i32 %i.ayp to i64
  %i.ayr = icmp eq i32 %i.ayp, 0
  %i.ays = sub i64 %i.ayk, %i.ayo
  %spec.select.i.i.i161.i = select i1 %i.ayr, i64 %i.ays, i64 %i.ayq
  %i.ayt = icmp slt i64 %spec.select.i.i.i161.i, 0 ; 2 uses
  %i.ayu = select i1 %i.ayt, i64 %i.avw, i64 %i.awq
  %i.ayv = select i1 %i.ayt, i64 %i.awq, i64 %i.avw
  store i64 %i.ayv, ptr %i.agw, align 8, !alias.scope !489
  store i64 %i.ayu, ptr %i.ajk, align 8, !alias.scope !489
  %i.ayw = icmp ult i64 %i.axj, %i.aha
  br i1 %i.ayw, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit162.i
  %i.ayx = icmp ult i64 %i.awp, %i.aha
  br i1 %i.ayx, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort13sort9_optimaljNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1J_11IndexReader4opens0_0E0EB1L_.exit, label %bb.hj

bb.hi:                                            ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12swap_if_lessjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1I_11IndexReader4opens0_0E0EB1K_.exit162.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.axj, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25, !noalias !489
  unreachable

bb.hj:                                            ; preds = %bb.hh
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.awp, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #25, !noalias !489
  unreachable

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort13sort9_optimaljNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1J_11IndexReader4opens0_0E0EB1L_.exit: ; preds = %bb.hh
  %i.ayy = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.axj ; 2 uses
  %i.ayz = getelementptr inbounds nuw [24 x i8], ptr %i.agy, i64 %i.awp ; 2 uses
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayy, i64 8
  %i.azb = load ptr, ptr %i.aza, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.azc = getelementptr inbounds nuw i8, ptr %i.ayy, i64 16
  %i.azd = load i64, ptr %i.azc, align 8, !noalias !489, !noundef !4 ; 2 uses
  %i.aze = getelementptr inbounds nuw i8, ptr %i.ayz, i64 8
  %i.azf = load ptr, ptr %i.aze, align 8, !noalias !489, !nonnull !4, !noundef !4
  %i.azg = getelementptr inbounds nuw i8, ptr %i.ayz, i64 16
  %i.azh = load i64, ptr %i.azg, align 8, !noalias !489, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i166.i = tail call i64 @llvm.umin.i64(i64 %i.azd, i64 %i.azh)
  %i.azi = tail call i32 @memcmp(ptr nonnull %i.azb, ptr nonnull %i.azf, i64 %spec.store.select.i.i.i166.i), !noalias !489 ; 2 uses
  %i.azj = sext i32 %i.azi to i64
  %i.azk = icmp eq i32 %i.azi, 0
  %i.azl = sub i64 %i.azd, %i.azh
  %spec.select.i.i.i167.i = select i1 %i.azk, i64 %i.azl, i64 %i.azj
  %i.azm = icmp slt i64 %spec.select.i.i.i167.i, 0 ; 2 uses
  %i.azn = select i1 %i.azm, i64 %i.awp, i64 %i.axj
  %i.azo = select i1 %i.azm, i64 %i.axj, i64 %i.awp
  store i64 %i.azo, ptr %i.aiq, align 8, !alias.scope !489
  store i64 %i.azn, ptr %i.amk, align 8, !alias.scope !489
  br label %bb.hk

bb.hk:                                            ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort13sort9_optimaljNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1J_11IndexReader4opens0_0E0EB1L_.exit, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort14sort13_optimaljNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1K_11IndexReader4opens0_0E0EB1M_.exit
  %.sroa.01.0 = phi i64 [ 13, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort14sort13_optimaljNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1K_11IndexReader4opens0_0E0EB1M_.exit ], [ 9, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort13sort9_optimaljNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1J_11IndexReader4opens0_0E0EB1L_.exit ], [ 1, %bb.f ]
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1V_11IndexReader4opens0_0E0EB1X_(ptr noalias nofree noundef nonnull align 8 %.sroa.02.0, i64 noundef %.sroa.8.0, i64 noundef %.sroa.01.0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.e, label %.sink.split, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %.not = icmp eq ptr %.sroa.02.0, %0
  br i1 %.not, label %bb.e, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergejNCINvMB8_Sj16sort_unstable_byNCNvMNtCsbzNSmZPCnTx_10tgrep_core6readerNtB1P_11IndexReader4opens0_0E0EB1R_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noundef nonnull %i.a, ptr %.val15)
  %i.azp = shl nuw nsw i64 %1, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.azp, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.hk, %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.hn

bb.hn:                                            ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_networkmNvYmNtNtBa_3cmp10PartialOrd2ltECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 4               ; 5 uses
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %1, 32
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = lshr i64 %1, 1                           ; 4 uses
  %i.e = icmp samesign ult i64 %1, 18             ; 2 uses
  %. = select i1 %i.e, i64 %1, i64 %i.d
  %i.f = getelementptr [4 x i8], ptr %0, i64 %i.d ; 3 uses
  %i.g = sub nuw nsw i64 %1, %i.d
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.l, %bb.c
  %.sroa.8.0 = phi i64 [ %., %bb.c ], [ %i.g, %bb.l ] ; 5 uses
  %.sroa.02.0 = phi ptr [ %0, %bb.c ], [ %i.f, %bb.l ] ; 31 uses
  %i.h = icmp ugt i64 %.sroa.8.0, 12
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp samesign ugt i64 %.sroa.8.0, 8
  br i1 %i.i, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 48 ; 2 uses
  %.val.i.i = load i32, ptr %i.j, align 4, !alias.scope !550, !noalias !551, !noundef !4 ; 2 uses
  %.val1.i.i = load i32, ptr %.sroa.02.0, align 4, !alias.scope !552, !noalias !553, !noundef !4 ; 2 uses
  %i.k = tail call i32 @llvm.umax.i32(i32 %.val.i.i, i32 %.val1.i.i) ; 2 uses
  %i.l = tail call i32 @llvm.umin.i32(i32 %.val.i.i, i32 %.val1.i.i) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 40 ; 2 uses
  %.val.i1.i = load i32, ptr %i.n, align 4, !alias.scope !554, !noalias !555, !noundef !4 ; 2 uses
  %.val1.i2.i = load i32, ptr %i.m, align 4, !alias.scope !556, !noalias !557, !noundef !4 ; 2 uses
  %i.o = tail call i32 @llvm.umax.i32(i32 %.val.i1.i, i32 %.val1.i2.i) ; 2 uses
  %i.p = tail call i32 @llvm.umin.i32(i32 %.val.i1.i, i32 %.val1.i2.i) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 36 ; 2 uses
  %.val.i3.i = load i32, ptr %i.r, align 4, !alias.scope !558, !noalias !559, !noundef !4 ; 2 uses
  %.val1.i4.i = load i32, ptr %i.q, align 4, !alias.scope !560, !noalias !561, !noundef !4 ; 2 uses
  %i.s = tail call i32 @llvm.umax.i32(i32 %.val.i3.i, i32 %.val1.i4.i) ; 2 uses
  %i.t = tail call i32 @llvm.umin.i32(i32 %.val.i3.i, i32 %.val1.i4.i) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 12 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 28 ; 2 uses
  %.val.i5.i = load i32, ptr %i.v, align 4, !alias.scope !562, !noalias !563, !noundef !4 ; 2 uses
  %.val1.i6.i = load i32, ptr %i.u, align 4, !alias.scope !564, !noalias !565, !noundef !4 ; 2 uses
  %i.w = tail call i32 @llvm.umax.i32(i32 %.val.i5.i, i32 %.val1.i6.i) ; 2 uses
  %i.x = tail call i32 @llvm.umin.i32(i32 %.val.i5.i, i32 %.val1.i6.i) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 20 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 44 ; 2 uses
  %.val.i7.i = load i32, ptr %i.z, align 4, !alias.scope !566, !noalias !567, !noundef !4 ; 2 uses
  %.val1.i8.i = load i32, ptr %i.y, align 4, !alias.scope !568, !noalias !569, !noundef !4 ; 2 uses
  %i.aa = tail call i32 @llvm.umax.i32(i32 %.val.i7.i, i32 %.val1.i8.i) ; 2 uses
  %i.ab = tail call i32 @llvm.umin.i32(i32 %.val.i7.i, i32 %.val1.i8.i) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 32 ; 2 uses
  %.val.i9.i = load i32, ptr %i.ad, align 4, !alias.scope !570, !noalias !571, !noundef !4 ; 2 uses
  %.val1.i10.i = load i32, ptr %i.ac, align 4, !alias.scope !572, !noalias !573, !noundef !4 ; 2 uses
  %i.ae = tail call i32 @llvm.umax.i32(i32 %.val.i9.i, i32 %.val1.i10.i) ; 2 uses
  %i.af = tail call i32 @llvm.umin.i32(i32 %.val.i9.i, i32 %.val1.i10.i) ; 2 uses
  %i.ag = tail call i32 @llvm.umax.i32(i32 %i.af, i32 %i.p) ; 2 uses
  %i.ah = tail call i32 @llvm.umin.i32(i32 %i.af, i32 %i.p) ; 2 uses
  %i.ai = tail call i32 @llvm.umax.i32(i32 %i.x, i32 %i.t) ; 2 uses
  %i.aj = tail call i32 @llvm.umin.i32(i32 %i.x, i32 %i.t) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 16 ; 2 uses
  %.val1.i16.i = load i32, ptr %i.ak, align 4, !alias.scope !574, !noalias !575, !noundef !4 ; 2 uses
  %i.al = tail call i32 @llvm.umax.i32(i32 %i.aa, i32 %.val1.i16.i) ; 2 uses
  %i.am = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 %.val1.i16.i) ; 2 uses
  %i.an = tail call i32 @llvm.umax.i32(i32 %i.s, i32 %i.w) ; 2 uses
  %i.ao = tail call i32 @llvm.umin.i32(i32 %i.s, i32 %i.w) ; 2 uses
  %i.ap = tail call i32 @llvm.umax.i32(i32 %i.o, i32 %i.ae) ; 2 uses
  %i.aq = tail call i32 @llvm.umin.i32(i32 %i.o, i32 %i.ae) ; 2 uses
  %i.ar = tail call i32 @llvm.umax.i32(i32 %i.am, i32 %i.l) ; 2 uses
  %i.as = tail call i32 @llvm.umin.i32(i32 %i.am, i32 %i.l) ; 2 uses
  %i.at = tail call i32 @llvm.umax.i32(i32 %i.aj, i32 %i.ah) ; 2 uses
  %i.au = tail call i32 @llvm.umin.i32(i32 %i.aj, i32 %i.ah) ; 2 uses
  %i.av = tail call i32 @llvm.umax.i32(i32 %i.ag, i32 %i.ai) ; 2 uses
  %i.aw = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 %i.ai) ; 2 uses
  %i.ax = tail call i32 @llvm.umax.i32(i32 %i.aq, i32 %i.ao) ; 2 uses
  %i.ay = tail call i32 @llvm.umin.i32(i32 %i.aq, i32 %i.ao) ; 2 uses
  %i.az = tail call i32 @llvm.umax.i32(i32 %i.ap, i32 %i.an) ; 2 uses
  %i.ba = tail call i32 @llvm.umin.i32(i32 %i.ap, i32 %i.an) ; 2 uses
  %i.bb = tail call i32 @llvm.umax.i32(i32 %i.k, i32 %i.al) ; 2 uses
  %i.bc = tail call i32 @llvm.umin.i32(i32 %i.k, i32 %i.al) ; 2 uses
  %i.bd = tail call i32 @llvm.umax.i32(i32 %i.av, i32 %i.ar) ; 2 uses
  %i.be = tail call i32 @llvm.umin.i32(i32 %i.av, i32 %i.ar) ; 2 uses
  %i.bf = tail call i32 @llvm.umax.i32(i32 %i.ba, i32 %i.ab) ; 2 uses
  %i.bg = tail call i32 @llvm.umin.i32(i32 %i.ba, i32 %i.ab) ; 2 uses
  %i.bh = tail call i32 @llvm.umax.i32(i32 %i.bc, i32 %i.ax) ; 2 uses
  %i.bi = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 %i.ax) ; 2 uses
  %i.bj = tail call i32 @llvm.umax.i32(i32 %i.bb, i32 %i.az)
  %i.bk = tail call i32 @llvm.umin.i32(i32 %i.bb, i32 %i.az) ; 2 uses
  store i32 %i.bj, ptr %i.j, align 4, !alias.scope !576
  %i.bl = tail call i32 @llvm.umax.i32(i32 %i.bg, i32 %i.as) ; 2 uses
  %i.bm = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 %i.as) ; 2 uses
  %i.bn = tail call i32 @llvm.umax.i32(i32 %i.bi, i32 %i.aw) ; 2 uses
  %i.bo = tail call i32 @llvm.umin.i32(i32 %i.bi, i32 %i.aw) ; 2 uses
  %i.bp = tail call i32 @llvm.umax.i32(i32 %i.ay, i32 %i.be) ; 2 uses
  %i.bq = tail call i32 @llvm.umin.i32(i32 %i.ay, i32 %i.be) ; 2 uses
  %i.br = tail call i32 @llvm.umax.i32(i32 %i.bh, i32 %i.bd) ; 2 uses
  %i.bs = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 %i.bd) ; 2 uses
  %i.bt = tail call i32 @llvm.umax.i32(i32 %i.bk, i32 %i.bf) ; 2 uses
  %i.bu = tail call i32 @llvm.umin.i32(i32 %i.bk, i32 %i.bf) ; 2 uses
  %i.bv = tail call i32 @llvm.umax.i32(i32 %i.au, i32 %i.bm) ; 2 uses
  %i.bw = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %i.bm)
  store i32 %i.bw, ptr %.sroa.02.0, align 4, !alias.scope !576
  %i.bx = tail call i32 @llvm.umax.i32(i32 %i.bl, i32 %i.at) ; 2 uses
  %i.by = tail call i32 @llvm.umin.i32(i32 %i.bl, i32 %i.at) ; 2 uses
  %i.bz = tail call i32 @llvm.umax.i32(i32 %i.bu, i32 %i.bs) ; 2 uses
  %i.ca = tail call i32 @llvm.umin.i32(i32 %i.bu, i32 %i.bs) ; 2 uses
  %i.cb = tail call i32 @llvm.umax.i32(i32 %i.bn, i32 %i.bp) ; 2 uses
  %i.cc = tail call i32 @llvm.umin.i32(i32 %i.bn, i32 %i.bp) ; 2 uses
  %i.cd = tail call i32 @llvm.umax.i32(i32 %i.br, i32 %i.bt)
  %i.ce = tail call i32 @llvm.umin.i32(i32 %i.br, i32 %i.bt) ; 2 uses
  store i32 %i.cd, ptr %i.z, align 4, !alias.scope !576
  %i.cf = tail call i32 @llvm.umax.i32(i32 %i.bo, i32 %i.bv) ; 2 uses
  %i.cg = tail call i32 @llvm.umin.i32(i32 %i.bo, i32 %i.bv) ; 2 uses
  %i.ch = tail call i32 @llvm.umax.i32(i32 %i.bq, i32 %i.by) ; 2 uses
  %i.ci = tail call i32 @llvm.umin.i32(i32 %i.bq, i32 %i.by) ; 2 uses
  %i.cj = tail call i32 @llvm.umax.i32(i32 %i.ca, i32 %i.bx) ; 2 uses
  %i.ck = tail call i32 @llvm.umin.i32(i32 %i.ca, i32 %i.bx) ; 2 uses
  %i.cl = tail call i32 @llvm.umax.i32(i32 %i.ce, i32 %i.bz)
  %i.cm = tail call i32 @llvm.umin.i32(i32 %i.ce, i32 %i.bz) ; 2 uses
  store i32 %i.cl, ptr %i.n, align 4, !alias.scope !576
  %i.cn = tail call i32 @llvm.umax.i32(i32 %i.ci, i32 %i.cg) ; 2 uses
  %i.co = tail call i32 @llvm.umin.i32(i32 %i.ci, i32 %i.cg)
  store i32 %i.co, ptr %i.m, align 4, !alias.scope !576
  %i.cp = tail call i32 @llvm.umax.i32(i32 %i.ch, i32 %i.cf) ; 2 uses
  %i.cq = tail call i32 @llvm.umin.i32(i32 %i.ch, i32 %i.cf) ; 2 uses
  %i.cr = tail call i32 @llvm.umax.i32(i32 %i.cc, i32 %i.ck) ; 2 uses
  %i.cs = tail call i32 @llvm.umin.i32(i32 %i.cc, i32 %i.ck) ; 2 uses
  %i.ct = tail call i32 @llvm.umax.i32(i32 %i.cb, i32 %i.cj) ; 2 uses
  %i.cu = tail call i32 @llvm.umin.i32(i32 %i.cb, i32 %i.cj) ; 2 uses
  %i.cv = tail call i32 @llvm.umax.i32(i32 %i.cq, i32 %i.cn) ; 2 uses
  %i.cw = tail call i32 @llvm.umin.i32(i32 %i.cq, i32 %i.cn)
  store i32 %i.cw, ptr %i.q, align 4, !alias.scope !576
  %i.cx = tail call i32 @llvm.umax.i32(i32 %i.cs, i32 %i.cp) ; 2 uses
  %i.cy = tail call i32 @llvm.umin.i32(i32 %i.cs, i32 %i.cp) ; 2 uses
  %i.cz = tail call i32 @llvm.umax.i32(i32 %i.cr, i32 %i.cu)
  %i.da = tail call i32 @llvm.umin.i32(i32 %i.cr, i32 %i.cu) ; 2 uses
  store i32 %i.cz, ptr %i.v, align 4, !alias.scope !576
  %i.db = tail call i32 @llvm.umax.i32(i32 %i.cm, i32 %i.ct)
  %i.dc = tail call i32 @llvm.umin.i32(i32 %i.cm, i32 %i.ct)
  store i32 %i.dc, ptr %i.ad, align 4, !alias.scope !576
  store i32 %i.db, ptr %i.r, align 4, !alias.scope !576
  %i.dd = tail call i32 @llvm.umax.i32(i32 %i.cy, i32 %i.cv)
  %i.de = tail call i32 @llvm.umin.i32(i32 %i.cy, i32 %i.cv)
  store i32 %i.de, ptr %i.u, align 4, !alias.scope !576
  store i32 %i.dd, ptr %i.ak, align 4, !alias.scope !576
  %i.df = tail call i32 @llvm.umax.i32(i32 %i.da, i32 %i.cx)
  %i.dg = tail call i32 @llvm.umin.i32(i32 %i.da, i32 %i.cx)
  store i32 %i.dg, ptr %i.y, align 4, !alias.scope !576
  store i32 %i.df, ptr %i.ac, align 4, !alias.scope !576
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 12 ; 2 uses
  %.val.i.i14 = load i32, ptr %i.dh, align 4, !alias.scope !577, !noalias !578, !noundef !4 ; 2 uses
  %.val1.i.i15 = load i32, ptr %.sroa.02.0, align 4, !alias.scope !579, !noalias !580, !noundef !4 ; 2 uses
  %i.di = tail call i32 @llvm.umax.i32(i32 %.val.i.i14, i32 %.val1.i.i15) ; 2 uses
  %i.dj = tail call i32 @llvm.umin.i32(i32 %.val.i.i14, i32 %.val1.i.i15) ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 4 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 28 ; 2 uses
end_hunk_1
