Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_core-0a05b3f6bc14d2fb.ty_python_core.20b1ebb04e7d5127-cgu.09?download=true
inline.NumInlined: 1341
inline.NumDeleted: 292
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtB1k_9statement9StatementNtNtNtB1k_7ast_ids8node_key17ExpressionNodeKeyEEENCINvMB8_SB1f_16sort_unstable_byNCNvMs2_NtB1k_6frozenINtB4F_9FrozenMapB1g_B2c_E12from_entries0E0EB1k_:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val12.i.i = load i32, ptr %i.m, align 8, !range !7, !alias.scope !852, !noundef !5 ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 76
  %.val13.i.i = load i32, ptr %i.o, align 4, !alias.scope !852
  %.val14.i.i = load i32, ptr %i.n, align 8, !range !7, !alias.scope !852, !noundef !5 ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 52
  %.val15.i.i = load i32, ptr %i.p, align 4, !alias.scope !852
  %i.q = icmp eq i32 %.val12.i.i, %.val14.i.i
  %i.r = icmp ult i32 %.val13.i.i, %.val15.i.i
  %i.s = icmp ult i32 %.val12.i.i, %.val14.i.i
  %i.t = select i1 %i.q, i1 %i.r, i1 %i.s         ; 2 uses
  %i.u = zext i1 %i.l to i64
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.u ; 4 uses
  %i.w = xor i1 %i.l, true
  %i.x = zext i1 %i.w to i64
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.x ; 5 uses
  %i.z = select i1 %i.t, i64 3, i64 2
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.z ; 5 uses
  %i.ab = select i1 %i.t, i64 2, i64 3
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ab ; 4 uses
  %.val8.i.i = load i32, ptr %i.aa, align 8, !range !7, !alias.scope !852, !noundef !5 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.aa, i64 4
  %.val9.i.i = load i32, ptr %i.ad, align 4, !alias.scope !852
  %.val10.i.i = load i32, ptr %i.v, align 8, !range !7, !alias.scope !852, !noundef !5 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.v, i64 4
  %.val11.i.i = load i32, ptr %i.ae, align 4, !alias.scope !852
  %i.af = icmp eq i32 %.val8.i.i, %.val10.i.i
  %i.ag = icmp ult i32 %.val9.i.i, %.val11.i.i
  %i.ah = icmp ult i32 %.val8.i.i, %.val10.i.i
  %i.ai = select i1 %i.af, i1 %i.ag, i1 %i.ah     ; 3 uses
  %.val4.i.i = load i32, ptr %i.ac, align 8, !range !7, !alias.scope !852, !noundef !5 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ac, i64 4
  %.val5.i.i = load i32, ptr %i.aj, align 4, !alias.scope !852
  %.val6.i.i = load i32, ptr %i.y, align 8, !range !7, !alias.scope !852, !noundef !5 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.y, i64 4
  %.val7.i.i = load i32, ptr %i.ak, align 4, !alias.scope !852
  %i.al = icmp eq i32 %.val4.i.i, %.val6.i.i
  %i.am = icmp ult i32 %.val5.i.i, %.val7.i.i
  %i.an = icmp ult i32 %.val4.i.i, %.val6.i.i
  %i.ao = select i1 %i.al, i1 %i.am, i1 %i.an     ; 3 uses
  %i.ap = select i1 %i.ai, ptr %i.aa, ptr %i.v, !unpredictable !5
  %i.aq = select i1 %i.ao, ptr %i.y, ptr %i.ac, !unpredictable !5
  %i.ar = select i1 %i.ao, ptr %i.aa, ptr %i.y, !unpredictable !5
  %i.as = select i1 %i.ai, ptr %i.v, ptr %i.ar, !unpredictable !5 ; 4 uses
  %i.at = select i1 %i.ai, ptr %i.y, ptr %i.aa, !unpredictable !5
  %i.au = select i1 %i.ao, ptr %i.ac, ptr %i.at, !unpredictable !5 ; 4 uses
  %.val.i.i = load i32, ptr %i.au, align 8, !range !7, !alias.scope !852, !noundef !5 ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 4
  %.val1.i.i = load i32, ptr %i.av, align 4, !alias.scope !852
  %.val2.i.i = load i32, ptr %i.as, align 8, !range !7, !alias.scope !852, !noundef !5 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.as, i64 4
  %.val3.i.i = load i32, ptr %i.aw, align 4, !alias.scope !852
  %i.ax = icmp eq i32 %.val.i.i, %.val2.i.i
  %i.ay = icmp ult i32 %.val1.i.i, %.val3.i.i
  %i.az = icmp ult i32 %.val.i.i, %.val2.i.i
  %i.ba = select i1 %i.ax, i1 %i.ay, i1 %i.az     ; 2 uses
  %i.bb = select i1 %i.ba, ptr %i.au, ptr %i.as, !unpredictable !5
  %i.bc = select i1 %i.ba, ptr %i.as, ptr %i.au, !unpredictable !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !alias.scope !854
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i64 24, i1 false), !alias.scope !854
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false), !alias.scope !854
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !alias.scope !854
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d ; 12 uses
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.d ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %.val16.i30.i = load i32, ptr %i.bi, align 8, !range !7, !alias.scope !852, !noundef !5 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bg, i64 28
  %.val17.i31.i = load i32, ptr %i.bj, align 4, !alias.scope !852
  %.val18.i32.i = load i32, ptr %i.bg, align 8, !range !7, !alias.scope !852, !noundef !5 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bg, i64 4
  %.val19.i33.i = load i32, ptr %i.bk, align 4, !alias.scope !852
  %i.bl = icmp eq i32 %.val16.i30.i, %.val18.i32.i
  %i.bm = icmp ult i32 %.val17.i31.i, %.val19.i33.i
  %i.bn = icmp ult i32 %.val16.i30.i, %.val18.i32.i
  %i.bo = select i1 %i.bl, i1 %i.bm, i1 %i.bn     ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %.val12.i34.i = load i32, ptr %i.bp, align 8, !range !7, !alias.scope !852, !noundef !5 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bg, i64 76
  %.val13.i35.i = load i32, ptr %i.br, align 4, !alias.scope !852
  %.val14.i36.i = load i32, ptr %i.bq, align 8, !range !7, !alias.scope !852, !noundef !5 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bg, i64 52
  %.val15.i37.i = load i32, ptr %i.bs, align 4, !alias.scope !852
  %i.bt = icmp eq i32 %.val12.i34.i, %.val14.i36.i
  %i.bu = icmp ult i32 %.val13.i35.i, %.val15.i37.i
  %i.bv = icmp ult i32 %.val12.i34.i, %.val14.i36.i
  %i.bw = select i1 %i.bt, i1 %i.bu, i1 %i.bv     ; 2 uses
  %i.bx = zext i1 %i.bo to i64
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.bx ; 4 uses
  %i.bz = xor i1 %i.bo, true
  %i.ca = zext i1 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.ca ; 5 uses
  %i.cc = select i1 %i.bw, i64 3, i64 2
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.cc ; 5 uses
  %i.ce = select i1 %i.bw, i64 2, i64 3
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.ce ; 4 uses
  %.val8.i38.i = load i32, ptr %i.cd, align 8, !range !7, !alias.scope !852, !noundef !5 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cd, i64 4
  %.val9.i39.i = load i32, ptr %i.cg, align 4, !alias.scope !852
  %.val10.i40.i = load i32, ptr %i.by, align 8, !range !7, !alias.scope !852, !noundef !5 ; 2 uses
  %i.ch = getelementptr i8, ptr %i.by, i64 4
  %.val11.i41.i = load i32, ptr %i.ch, align 4, !alias.scope !852
  %i.ci = icmp eq i32 %.val8.i38.i, %.val10.i40.i
  %i.cj = icmp ult i32 %.val9.i39.i, %.val11.i41.i
  %i.ck = icmp ult i32 %.val8.i38.i, %.val10.i40.i
  %i.cl = select i1 %i.ci, i1 %i.cj, i1 %i.ck     ; 3 uses
  %.val4.i42.i = load i32, ptr %i.cf, align 8, !range !7, !alias.scope !852, !noundef !5 ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cf, i64 4
  %.val5.i43.i = load i32, ptr %i.cm, align 4, !alias.scope !852
  %.val6.i44.i = load i32, ptr %i.cb, align 8, !range !7, !alias.scope !852, !noundef !5 ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cb, i64 4
  %.val7.i45.i = load i32, ptr %i.cn, align 4, !alias.scope !852
  %i.co = icmp eq i32 %.val4.i42.i, %.val6.i44.i
  %i.cp = icmp ult i32 %.val5.i43.i, %.val7.i45.i
  %i.cq = icmp ult i32 %.val4.i42.i, %.val6.i44.i
  %i.cr = select i1 %i.co, i1 %i.cp, i1 %i.cq     ; 3 uses
  %i.cs = select i1 %i.cl, ptr %i.cd, ptr %i.by, !unpredictable !5
  %i.ct = select i1 %i.cr, ptr %i.cb, ptr %i.cf, !unpredictable !5
  %i.cu = select i1 %i.cr, ptr %i.cd, ptr %i.cb, !unpredictable !5
  %i.cv = select i1 %i.cl, ptr %i.by, ptr %i.cu, !unpredictable !5 ; 4 uses
  %i.cw = select i1 %i.cl, ptr %i.cb, ptr %i.cd, !unpredictable !5
  %i.cx = select i1 %i.cr, ptr %i.cf, ptr %i.cw, !unpredictable !5 ; 4 uses
  %.val.i46.i = load i32, ptr %i.cx, align 8, !range !7, !alias.scope !852, !noundef !5 ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 4
  %.val1.i47.i = load i32, ptr %i.cy, align 4, !alias.scope !852
  %.val2.i48.i = load i32, ptr %i.cv, align 8, !range !7, !alias.scope !852, !noundef !5 ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cv, i64 4
  %.val3.i49.i = load i32, ptr %i.cz, align 4, !alias.scope !852
  %i.da = icmp eq i32 %.val.i46.i, %.val2.i48.i
  %i.db = icmp ult i32 %.val1.i47.i, %.val3.i49.i
  %i.dc = icmp ult i32 %.val.i46.i, %.val2.i48.i
  %i.dd = select i1 %i.da, i1 %i.db, i1 %i.dc     ; 2 uses
  %i.de = select i1 %i.dd, ptr %i.cx, ptr %i.cv, !unpredictable !5
  %i.df = select i1 %i.dd, ptr %i.cv, ptr %i.cx, !unpredictable !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 24, i1 false), !alias.scope !854
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %i.de, i64 24, i1 false), !alias.scope !854
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 24, i1 false), !alias.scope !854
  %i.di = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.di, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i64 24, i1 false), !alias.scope !854
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !alias.scope !854
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i64 24, i1 false), !alias.scope !854
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.dl = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.dm = icmp samesign ult i64 %.sroa.0.0.i, %i.d
  br i1 %i.dm, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtB1d_9statement9StatementNtNtNtB1d_7ast_ids8node_key17ExpressionNodeKeyEEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB4y_9FrozenMapB19_B25_E12from_entries0E0EB1d_.exit.i, %bb.g
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d
  %i.do = getelementptr [24 x i8], ptr %i.a, i64 %i.d ; 6 uses
  %i.dp = icmp samesign ult i64 %.sroa.0.0.i, %i.dl
  br i1 %i.dp, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtB1d_9statement9StatementNtNtNtB1d_7ast_ids8node_key17ExpressionNodeKeyEEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB4y_9FrozenMapB19_B25_E12from_entries0E0EB1d_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.ei, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtB1d_9statement9StatementNtNtNtB1d_7ast_ids8node_key17ExpressionNodeKeyEEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB4y_9FrozenMapB19_B25_E12from_entries0E0EB1d_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %.sroa.05.08.1.i ; 2 uses
  %.idx37 = mul nuw nsw i64 %.sroa.05.08.1.i, 24
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx37 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i64 24, i1 false), !alias.scope !854
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -24 ; 3 uses
  %.val11.i50.1.i = load i32, ptr %i.dr, align 8, !range !7, !alias.scope !853, !noundef !5 ; 5 uses
  %i.dt = getelementptr i8, ptr %i.dr, i64 4
  %.val12.i51.1.i = load i32, ptr %i.dt, align 4, !alias.scope !853 ; 3 uses
  %.val13.i52.1.i = load i32, ptr %i.ds, align 8, !range !7, !alias.scope !853, !noundef !5 ; 2 uses
  %i.du = getelementptr i8, ptr %i.dr, i64 -20
  %.val14.i53.1.i = load i32, ptr %i.du, align 4, !alias.scope !853
  %i.dv = icmp eq i32 %.val11.i50.1.i, %.val13.i52.1.i
  %i.dw = icmp ult i32 %.val12.i51.1.i, %.val14.i53.1.i
  %i.dx = icmp ult i32 %.val11.i50.1.i, %.val13.i52.1.i
  %i.dy = select i1 %i.dv, i1 %i.dw, i1 %i.dx
  br i1 %i.dy, label %bb.h, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtB1d_9statement9StatementNtNtNtB1d_7ast_ids8node_key17ExpressionNodeKeyEEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB4y_9FrozenMapB19_B25_E12from_entries0E0EB1d_.exit.1.i

bb.h:                                             ; preds = %.lr.ph.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.dz, i64 16, i1 false), !noalias !853
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i64 24, i1 false), !alias.scope !853
  %i.ea = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.ea, label %._crit_edge33, label %.lr.ph32

bb.i:                                             ; preds = %.lr.ph32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i54.1.i30, ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i64 24, i1 false), !alias.scope !853
  %i.eb = icmp eq ptr %i.ec, %i.do
  br i1 %i.eb, label %._crit_edge33, label %.lr.ph32

.lr.ph32:                                         ; preds = %bb.h, %bb.i
  %.sroa.0.0.i54.1.i30 = phi ptr [ %i.ec, %bb.i ], [ %i.ds, %bb.h ] ; 4 uses
  %i.ec = getelementptr inbounds i8, ptr %.sroa.0.0.i54.1.i30, i64 -24 ; 4 uses
  %.val9.i55.1.i = load i32, ptr %i.ec, align 4, !range !7, !alias.scope !853, !noundef !5 ; 2 uses
  %i.ed = getelementptr i8, ptr %.sroa.0.0.i54.1.i30, i64 -20
  %.val10.i56.1.i = load i32, ptr %i.ed, align 4, !alias.scope !853
  %i.ee = icmp eq i32 %.val11.i50.1.i, %.val9.i55.1.i
  %i.ef = icmp ult i32 %.val12.i51.1.i, %.val10.i56.1.i
  %i.eg = icmp ult i32 %.val11.i50.1.i, %.val9.i55.1.i
  %i.eh = select i1 %i.ee, i1 %i.ef, i1 %i.eg
  br i1 %i.eh, label %bb.i, label %._crit_edge33

._crit_edge33:                                    ; preds = %bb.i, %.lr.ph32, %bb.h
  %.sroa.0.0.i54.lcssa.1.i = phi ptr [ %i.do, %bb.h ], [ %i.do, %bb.i ], [ %.sroa.0.0.i54.1.i30, %.lr.ph32 ] ; 3 uses
  store i32 %.val11.i50.1.i, ptr %.sroa.0.0.i54.lcssa.1.i, align 8, !alias.scope !853, !noalias !855
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i54.lcssa.1.i, i64 4
  store i32 %.val12.i51.1.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 4, !alias.scope !853, !noalias !855
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i54.lcssa.1.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false), !noalias !856
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtB1d_9statement9StatementNtNtNtB1d_7ast_ids8node_key17ExpressionNodeKeyEEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB4y_9FrozenMapB19_B25_E12from_entries0E0EB1d_.exit.1.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtB1d_9statement9StatementNtNtNtB1d_7ast_ids8node_key17ExpressionNodeKeyEEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB4y_9FrozenMapB19_B25_E12from_entries0E0EB1d_.exit.1.i: ; preds = %._crit_edge33, %.lr.ph.1.i
  %i.ei = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.ei, %i.dl
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtB1d_9statement9StatementNtNtNtB1d_7ast_ids8node_key17ExpressionNodeKeyEEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB4y_9FrozenMapB19_B25_E12from_entries0E0EB1d_.exit.1.i, %.loopexit.i
  %i.ej = add nsw i64 %1, -1                      ; 2 uses
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ej
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.ej
  %i.em = getelementptr i8, ptr %i.do, i64 -24
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.en = getelementptr i8, ptr %i.fh, i64 24     ; 2 uses
  %i.eo = getelementptr i8, ptr %i.fg, i64 24
  %i.ep = and i64 %1, 1
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %bb.k, label %bb.j

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.ey, %.lr.ph.i.i ], [ %0, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.er, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.a, %.loopexit.1.i ] ; 4 uses
  %.sroa.011.07.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.do, %.loopexit.1.i ] ; 4 uses
  %.sroa.015.06.i.i = phi ptr [ %i.fh, %.lr.ph.i.i ], [ %i.em, %.loopexit.1.i ] ; 4 uses
  %.sroa.017.05.i.i = phi ptr [ %i.fg, %.lr.ph.i.i ], [ %i.el, %.loopexit.1.i ] ; 4 uses
  %.sroa.019.04.i.i = phi ptr [ %i.fi, %.lr.ph.i.i ], [ %i.ek, %.loopexit.1.i ] ; 2 uses
  %i.er = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %.sroa.011.0.val.i.i = load i32, ptr %.sroa.011.07.i.i, align 4, !range !7, !alias.scope !857, !noundef !5 ; 2 uses
  %i.es = getelementptr i8, ptr %.sroa.011.07.i.i, i64 4
  %.sroa.011.0.val24.i.i = load i32, ptr %i.es, align 4, !alias.scope !857
  %.sroa.06.0.val.i.i = load i32, ptr %.sroa.06.08.i.i, align 4, !range !7, !alias.scope !857, !noundef !5 ; 2 uses
  %i.et = getelementptr i8, ptr %.sroa.06.08.i.i, i64 4
  %.sroa.06.0.val25.i.i = load i32, ptr %i.et, align 4, !alias.scope !857
  %i.eu = icmp eq i32 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i
  %i.ev = icmp ult i32 %.sroa.011.0.val24.i.i, %.sroa.06.0.val25.i.i
  %i.ew = icmp ult i32 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i
  %i.ex = select i1 %i.eu, i1 %i.ev, i1 %i.ew     ; 3 uses
  %..i23.i.i = select i1 %i.ex, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(24) %..i23.i.i, i64 24, i1 false), !alias.scope !854, !noalias !858
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.ex, i64 24, i64 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx = select i1 %i.ex, i64 0, i64 24
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 24 ; 2 uses
  %.sroa.017.0.val.i.i = load i32, ptr %.sroa.017.05.i.i, align 4, !range !7, !alias.scope !857, !noundef !5 ; 2 uses
  %i.ez = getelementptr i8, ptr %.sroa.017.05.i.i, i64 4
  %.sroa.017.0.val26.i.i = load i32, ptr %i.ez, align 4, !alias.scope !857
  %.sroa.015.0.val.i.i = load i32, ptr %.sroa.015.06.i.i, align 4, !range !7, !alias.scope !857, !noundef !5 ; 2 uses
  %i.fa = getelementptr i8, ptr %.sroa.015.06.i.i, i64 4
  %.sroa.015.0.val27.i.i = load i32, ptr %i.fa, align 4, !alias.scope !857
  %i.fb = icmp eq i32 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i
  %i.fc = icmp ult i32 %.sroa.017.0.val26.i.i, %.sroa.015.0.val27.i.i
  %i.fd = icmp ult i32 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i
  %i.fe = select i1 %i.fb, i1 %i.fc, i1 %i.fd     ; 3 uses
  %..i.i.i = select i1 %i.fe, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.ff = xor i1 %i.fe, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(24) %..i.i.i, i64 24, i1 false), !alias.scope !854, !noalias !859
  %.neg.i.i.i = sext i1 %i.ff to i64
  %i.fg = getelementptr [24 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.fe to i64
  %i.fh = getelementptr [24 x i8], ptr %.sroa.015.06.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.fi = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -24
  %exitcond.not.i.i = icmp eq i64 %i.er, %i.d
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %.not = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.en ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %.not, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ey, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.0..sroa.011.0.i.i, i64 24, i1 false), !alias.scope !854
  %.sroa.sel16.idx.sroa.sel.idx = select i1 %.not, i64 24, i64 0
  %.sroa.sel16.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel16.idx.sroa.sel.idx
  %.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 0, i64 24
  %.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel, %bb.j ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel16.idx.sroa.sel, %bb.j ]
  %i.fj = icmp ne ptr %.sroa.06.1.i.i, %i.en
  %i.fk = icmp ne ptr %.sroa.011.1.i.i, %i.eo
  %or.cond.i.i = select i1 %i.fj, i1 true, i1 %i.fk, !prof !10
  br i1 %or.cond.i.i, label %bb.l, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtB1x_9statement9StatementNtNtNtB1x_7ast_ids8node_key17ExpressionNodeKeyEEENCINvMB8_SB1s_16sort_unstable_byNCNvMs2_NtB1x_6frozenINtB4S_9FrozenMapB1t_B2p_E12from_entries0E0EB1x_.exit, !prof !10

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #31
          to label %.noexc.i unwind label %bb.m, !noalias !854

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.fl = landingpad { ptr, i32 }
          cleanup
  %i.fm = mul nuw nsw i64 %1, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.fm, i1 false), !alias.scope !854, !noalias !860
  resume { ptr, i32 } %i.fl

.lr.ph.i:                                         ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtB1d_9statement9StatementNtNtNtB1d_7ast_ids8node_key17ExpressionNodeKeyEEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB4y_9FrozenMapB19_B25_E12from_entries0E0EB1d_.exit.i
  %.sroa.05.08.i = phi i64 [ %i.gf, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtB1d_9statement9StatementNtNtNtB1d_7ast_ids8node_key17ExpressionNodeKeyEEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB4y_9FrozenMapB19_B25_E12from_entries0E0EB1d_.exit.i ], [ %.sroa.0.0.i, %bb.g ] ; 4 uses
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.05.08.i ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.05.08.i, 24
  %i.fo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, ptr noundef nonnull align 8 dereferenceable(24) %i.fn, i64 24, i1 false), !alias.scope !854
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 -24 ; 3 uses
  %.val11.i50.i = load i32, ptr %i.fo, align 8, !range !7, !alias.scope !853, !noundef !5 ; 5 uses
  %i.fq = getelementptr i8, ptr %i.fo, i64 4
  %.val12.i51.i = load i32, ptr %i.fq, align 4, !alias.scope !853 ; 3 uses
  %.val13.i52.i = load i32, ptr %i.fp, align 8, !range !7, !alias.scope !853, !noundef !5 ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fo, i64 -20
  %.val14.i53.i = load i32, ptr %i.fr, align 4, !alias.scope !853
  %i.fs = icmp eq i32 %.val11.i50.i, %.val13.i52.i
  %i.ft = icmp ult i32 %.val12.i51.i, %.val14.i53.i
  %i.fu = icmp ult i32 %.val11.i50.i, %.val13.i52.i
  %i.fv = select i1 %i.fs, i1 %i.ft, i1 %i.fu
  br i1 %i.fv, label %bb.n, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtB1d_9statement9StatementNtNtNtB1d_7ast_ids8node_key17ExpressionNodeKeyEEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB4y_9FrozenMapB19_B25_E12from_entries0E0EB1d_.exit.i

bb.n:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.fw, i64 16, i1 false), !noalias !853
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, ptr noundef nonnull align 8 dereferenceable(24) %i.fp, i64 24, i1 false), !alias.scope !853
  %i.fx = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.fx, label %._crit_edge, label %.lr.ph

bb.o:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i54.i27, ptr noundef nonnull align 8 dereferenceable(24) %i.fz, i64 24, i1 false), !alias.scope !853
  %i.fy = icmp eq ptr %i.fz, %i.a
  br i1 %i.fy, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %bb.o
  %.sroa.0.0.i54.i27 = phi ptr [ %i.fz, %bb.o ], [ %i.fp, %bb.n ] ; 4 uses
  %i.fz = getelementptr inbounds i8, ptr %.sroa.0.0.i54.i27, i64 -24 ; 4 uses
  %.val9.i55.i = load i32, ptr %i.fz, align 4, !range !7, !alias.scope !853, !noundef !5 ; 2 uses
  %i.ga = getelementptr i8, ptr %.sroa.0.0.i54.i27, i64 -20
  %.val10.i56.i = load i32, ptr %i.ga, align 4, !alias.scope !853
  %i.gb = icmp eq i32 %.val11.i50.i, %.val9.i55.i
  %i.gc = icmp ult i32 %.val12.i51.i, %.val10.i56.i
  %i.gd = icmp ult i32 %.val11.i50.i, %.val9.i55.i
  %i.ge = select i1 %i.gb, i1 %i.gc, i1 %i.gd
  br i1 %i.ge, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o, %.lr.ph, %bb.n
  %.sroa.0.0.i54.lcssa.i = phi ptr [ %i.a, %bb.n ], [ %i.a, %bb.o ], [ %.sroa.0.0.i54.i27, %.lr.ph ] ; 3 uses
  store i32 %.val11.i50.i, ptr %.sroa.0.0.i54.lcssa.i, align 8, !alias.scope !853, !noalias !855
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i54.lcssa.i, i64 4
  store i32 %.val12.i51.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, align 4, !alias.scope !853, !noalias !855
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i54.lcssa.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false), !noalias !856
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtB1d_9statement9StatementNtNtNtB1d_7ast_ids8node_key17ExpressionNodeKeyEEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB4y_9FrozenMapB19_B25_E12from_entries0E0EB1d_.exit.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtB1d_9statement9StatementNtNtNtB1d_7ast_ids8node_key17ExpressionNodeKeyEEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB4y_9FrozenMapB19_B25_E12from_entries0E0EB1d_.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.gf = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gf, %i.d
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtB1x_9statement9StatementNtNtNtB1x_7ast_ids8node_key17ExpressionNodeKeyEEENCINvMB8_SB1s_16sort_unstable_byNCNvMs2_NtB1x_6frozenINtB4S_9FrozenMapB1t_B2p_E12from_entries0E0EB1x_.exit: ; preds = %bb.a, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1i_10DefinitionEENCINvMB8_SB1f_16sort_unstable_byNCNvMs2_NtB1k_6frozenINtB3Q_9FrozenMapB1g_B2j_E12from_entries0E0EB1k_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !880 {
bb.a:
  %.sroa.5.i.i = alloca [20 x i8], align 4        ; 8 uses
  %i.a = alloca [1152 x i8], align 8              ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1v_10DefinitionEENCINvMB8_SB1s_16sort_unstable_byNCNvMs2_NtB1x_6frozenINtB43_9FrozenMapB1t_B2w_E12from_entries0E0EB1x_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %1, 32
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 10 uses
  %i.e = icmp samesign ugt i64 %1, 7
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val8.i.i = load i32, ptr %i.f, align 8, !range !7, !alias.scope !881, !noundef !5
  %.val9.i.i = load i32, ptr %0, align 8, !range !7, !alias.scope !881, !noundef !5
  %i.g = icmp ult i32 %.val8.i.i, %.val9.i.i      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val6.i.i = load i32, ptr %i.h, align 8, !range !7, !alias.scope !881, !noundef !5
  %.val7.i.i = load i32, ptr %i.i, align 8, !range !7, !alias.scope !881, !noundef !5
  %i.j = icmp ult i32 %.val6.i.i, %.val7.i.i      ; 2 uses
  %i.k = zext i1 %i.g to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.k ; 3 uses
  %i.m = xor i1 %i.g, true
  %i.n = zext i1 %i.m to i64
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.n ; 4 uses
  %i.p = select i1 %i.j, i64 3, i64 2
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.p ; 4 uses
  %i.r = select i1 %i.j, i64 2, i64 3
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.r ; 3 uses
  %.val4.i.i = load i32, ptr %i.q, align 8, !range !7, !alias.scope !881, !noundef !5
  %.val5.i.i = load i32, ptr %i.l, align 8, !range !7, !alias.scope !881, !noundef !5
  %i.t = icmp ult i32 %.val4.i.i, %.val5.i.i      ; 3 uses
  %.val2.i.i = load i32, ptr %i.s, align 8, !range !7, !alias.scope !881, !noundef !5
  %.val3.i.i = load i32, ptr %i.o, align 8, !range !7, !alias.scope !881, !noundef !5
  %i.u = icmp ult i32 %.val2.i.i, %.val3.i.i      ; 3 uses
  %i.v = select i1 %i.t, ptr %i.q, ptr %i.l, !unpredictable !5
  %i.w = select i1 %i.u, ptr %i.o, ptr %i.s, !unpredictable !5
  %i.x = select i1 %i.u, ptr %i.q, ptr %i.o, !unpredictable !5
  %i.y = select i1 %i.t, ptr %i.l, ptr %i.x, !unpredictable !5 ; 3 uses
  %i.z = select i1 %i.t, ptr %i.o, ptr %i.q, !unpredictable !5
  %i.aa = select i1 %i.u, ptr %i.s, ptr %i.z, !unpredictable !5 ; 3 uses
  %.val.i.i = load i32, ptr %i.aa, align 8, !range !7, !alias.scope !881, !noundef !5
  %.val1.i.i = load i32, ptr %i.y, align 8, !range !7, !alias.scope !881, !noundef !5
  %i.ab = icmp ult i32 %.val.i.i, %.val1.i.i      ; 2 uses
  %i.ac = select i1 %i.ab, ptr %i.aa, ptr %i.y, !unpredictable !5
  %i.ad = select i1 %i.ab, ptr %i.y, ptr %i.aa, !unpredictable !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !alias.scope !883
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !alias.scope !883
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false), !alias.scope !883
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !alias.scope !883
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d ; 8 uses
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.d ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.val8.i30.i = load i32, ptr %i.aj, align 8, !range !7, !alias.scope !881, !noundef !5
  %.val9.i31.i = load i32, ptr %i.ah, align 8, !range !7, !alias.scope !881, !noundef !5
  %i.ak = icmp ult i32 %.val8.i30.i, %.val9.i31.i ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %.val6.i32.i = load i32, ptr %i.al, align 8, !range !7, !alias.scope !881, !noundef !5
  %.val7.i33.i = load i32, ptr %i.am, align 8, !range !7, !alias.scope !881, !noundef !5
  %i.an = icmp ult i32 %.val6.i32.i, %.val7.i33.i ; 2 uses
  %i.ao = zext i1 %i.ak to i64
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ao ; 3 uses
  %i.aq = xor i1 %i.ak, true
  %i.ar = zext i1 %i.aq to i64
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ar ; 4 uses
  %i.at = select i1 %i.an, i64 3, i64 2
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.at ; 4 uses
  %i.av = select i1 %i.an, i64 2, i64 3
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.av ; 3 uses
  %.val4.i34.i = load i32, ptr %i.au, align 8, !range !7, !alias.scope !881, !noundef !5
  %.val5.i35.i = load i32, ptr %i.ap, align 8, !range !7, !alias.scope !881, !noundef !5
  %i.ax = icmp ult i32 %.val4.i34.i, %.val5.i35.i ; 3 uses
  %.val2.i36.i = load i32, ptr %i.aw, align 8, !range !7, !alias.scope !881, !noundef !5
  %.val3.i37.i = load i32, ptr %i.as, align 8, !range !7, !alias.scope !881, !noundef !5
  %i.ay = icmp ult i32 %.val2.i36.i, %.val3.i37.i ; 3 uses
  %i.az = select i1 %i.ax, ptr %i.au, ptr %i.ap, !unpredictable !5
  %i.ba = select i1 %i.ay, ptr %i.as, ptr %i.aw, !unpredictable !5
  %i.bb = select i1 %i.ay, ptr %i.au, ptr %i.as, !unpredictable !5
  %i.bc = select i1 %i.ax, ptr %i.ap, ptr %i.bb, !unpredictable !5 ; 3 uses
  %i.bd = select i1 %i.ax, ptr %i.as, ptr %i.au, !unpredictable !5
  %i.be = select i1 %i.ay, ptr %i.aw, ptr %i.bd, !unpredictable !5 ; 3 uses
  %.val.i38.i = load i32, ptr %i.be, align 8, !range !7, !alias.scope !881, !noundef !5
  %.val1.i39.i = load i32, ptr %i.bc, align 8, !range !7, !alias.scope !881, !noundef !5
  %i.bf = icmp ult i32 %.val.i38.i, %.val1.i39.i  ; 2 uses
  %i.bg = select i1 %i.bf, ptr %i.be, ptr %i.bc, !unpredictable !5
  %i.bh = select i1 %i.bf, ptr %i.bc, ptr %i.be, !unpredictable !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false), !alias.scope !883
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !alias.scope !883
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !alias.scope !883
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false), !alias.scope !883
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !alias.scope !883
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false), !alias.scope !883
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.bn = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.bo = icmp samesign ult i64 %.sroa.0.0.i, %i.d
  br i1 %i.bo, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1b_10DefinitionEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3J_9FrozenMapB19_B2c_E12from_entries0E0EB1d_.exit.i, %bb.g
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d
  %i.bq = getelementptr [24 x i8], ptr %i.a, i64 %i.d ; 6 uses
  %i.br = icmp samesign ult i64 %.sroa.0.0.i, %i.bn
  br i1 %i.br, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1b_10DefinitionEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3J_9FrozenMapB19_B2c_E12from_entries0E0EB1d_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.cb, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1b_10DefinitionEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3J_9FrozenMapB19_B2c_E12from_entries0E0EB1d_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %.sroa.05.08.1.i ; 2 uses
  %.idx38 = mul nuw nsw i64 %.sroa.05.08.1.i, 24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx38 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !alias.scope !883
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -24 ; 3 uses
  %.val9.i40.1.i = load i32, ptr %i.bt, align 8, !range !7, !alias.scope !882, !noundef !5 ; 3 uses
  %.val10.i.1.i = load i32, ptr %i.bu, align 8, !range !7, !alias.scope !882, !noundef !5
  %i.bv = icmp ult i32 %.val9.i40.1.i, %.val10.i.1.i
  br i1 %i.bv, label %bb.h, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1b_10DefinitionEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3J_9FrozenMapB19_B2c_E12from_entries0E0EB1d_.exit.1.i

bb.h:                                             ; preds = %.lr.ph.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i.i, ptr noundef nonnull align 4 dereferenceable(20) %i.bw, i64 20, i1 false), !noalias !882
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false), !alias.scope !882
  %i.bx = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.bx, label %._crit_edge34, label %.lr.ph33

bb.i:                                             ; preds = %.lr.ph33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i41.1.i31, ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 24, i1 false), !alias.scope !882
  %i.by = icmp eq ptr %i.bz, %i.bq
  br i1 %i.by, label %._crit_edge34, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.h, %bb.i
  %.sroa.0.0.i41.1.i31 = phi ptr [ %i.bz, %bb.i ], [ %i.bu, %bb.h ] ; 3 uses
  %i.bz = getelementptr inbounds i8, ptr %.sroa.0.0.i41.1.i31, i64 -24 ; 4 uses
  %.val8.i42.1.i = load i32, ptr %i.bz, align 4, !range !7, !alias.scope !882, !noundef !5
  %i.ca = icmp ult i32 %.val9.i40.1.i, %.val8.i42.1.i
  br i1 %i.ca, label %bb.i, label %._crit_edge34

._crit_edge34:                                    ; preds = %bb.i, %.lr.ph33, %bb.h
  %.sroa.0.0.i41.lcssa.1.i = phi ptr [ %i.bq, %bb.h ], [ %i.bq, %bb.i ], [ %.sroa.0.0.i41.1.i31, %.lr.ph33 ] ; 2 uses
  store i32 %.val9.i40.1.i, ptr %.sroa.0.0.i41.lcssa.1.i, align 8, !alias.scope !882, !noalias !884
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41.lcssa.1.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i.i, i64 20, i1 false), !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1b_10DefinitionEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3J_9FrozenMapB19_B2c_E12from_entries0E0EB1d_.exit.1.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1b_10DefinitionEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3J_9FrozenMapB19_B2c_E12from_entries0E0EB1d_.exit.1.i: ; preds = %._crit_edge34, %.lr.ph.1.i
  %i.cb = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.cb, %i.bn
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1b_10DefinitionEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3J_9FrozenMapB19_B2c_E12from_entries0E0EB1d_.exit.1.i, %.loopexit.i
  %i.cc = add nsw i64 %1, -1                      ; 2 uses
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.cc
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.cc
  %i.cf = getelementptr i8, ptr %i.bq, i64 -24
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.cg = getelementptr i8, ptr %i.cp, i64 24     ; 2 uses
  %i.ch = getelementptr i8, ptr %i.co, i64 24
  %i.ci = and i64 %1, 1
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.k, label %bb.j

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.cl, %.lr.ph.i.i ], [ %0, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.ck, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.a, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.bq, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.cp, %.lr.ph.i.i ], [ %i.cf, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.co, %.lr.ph.i.i ], [ %i.ce, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.cq, %.lr.ph.i.i ], [ %i.cd, %.loopexit.1.i ] ; 2 uses
  %i.ck = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %.sroa.011.0.val.i.i = load i32, ptr %.sroa.011.07.i.i, align 4, !range !7, !alias.scope !886, !noundef !5
  %.sroa.06.0.val.i.i = load i32, ptr %.sroa.06.08.i.i, align 4, !range !7, !alias.scope !886, !noundef !5
  %.not = icmp ult i32 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i ; 3 uses
  %..i23.i.i = select i1 %.not, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(24) %..i23.i.i, i64 24, i1 false), !alias.scope !883, !noalias !887
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 24, i64 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 0, i64 24
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 24 ; 2 uses
  %.sroa.017.0.val.i.i = load i32, ptr %.sroa.017.05.i.i, align 4, !range !7, !alias.scope !886, !noundef !5
  %.sroa.015.0.val.i.i = load i32, ptr %.sroa.015.06.i.i, align 4, !range !7, !alias.scope !886, !noundef !5
  %i.cm = icmp ult i32 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i ; 3 uses
  %..i.i.i = select i1 %i.cm, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.cn = xor i1 %i.cm, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(24) %..i.i.i, i64 24, i1 false), !alias.scope !883, !noalias !888
  %.neg.i.i.i = sext i1 %i.cn to i64
  %i.co = getelementptr [24 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.cm to i64
  %i.cp = getelementptr [24 x i8], ptr %.sroa.015.06.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -24
  %exitcond.not.i.i = icmp eq i64 %i.ck, %i.d
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %.not23 = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.cg ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %.not23, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.0..sroa.011.0.i.i, i64 24, i1 false), !alias.scope !883
  %.sroa.sel16.idx.sroa.sel.idx = select i1 %.not23, i64 24, i64 0
  %.sroa.sel16.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel16.idx.sroa.sel.idx
  %.sroa.sel.idx.sroa.sel.idx = select i1 %.not23, i64 0, i64 24
  %.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel, %bb.j ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel16.idx.sroa.sel, %bb.j ]
  %i.cr = icmp ne ptr %.sroa.06.1.i.i, %i.cg
  %i.cs = icmp ne ptr %.sroa.011.1.i.i, %i.ch
  %or.cond.i.i = select i1 %i.cr, i1 true, i1 %i.cs, !prof !10
  br i1 %or.cond.i.i, label %bb.l, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1v_10DefinitionEENCINvMB8_SB1s_16sort_unstable_byNCNvMs2_NtB1x_6frozenINtB43_9FrozenMapB1t_B2w_E12from_entries0E0EB1x_.exit, !prof !10

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #31
          to label %.noexc.i unwind label %bb.m, !noalias !883

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %i.cu = mul nuw nsw i64 %1, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.cu, i1 false), !alias.scope !883, !noalias !889
  resume { ptr, i32 } %i.ct

.lr.ph.i:                                         ; preds = %bb.g, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1b_10DefinitionEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3J_9FrozenMapB19_B2c_E12from_entries0E0EB1d_.exit.i
  %.sroa.05.08.i = phi i64 [ %i.de, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1b_10DefinitionEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3J_9FrozenMapB19_B2c_E12from_entries0E0EB1d_.exit.i ], [ %.sroa.0.0.i, %bb.g ] ; 4 uses
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.05.08.i ; 2 uses
  %.idx = mul nuw nsw i64 %.sroa.05.08.i, 24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 24, i1 false), !alias.scope !883
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -24 ; 3 uses
  %.val9.i40.i = load i32, ptr %i.cw, align 8, !range !7, !alias.scope !882, !noundef !5 ; 3 uses
  %.val10.i.i = load i32, ptr %i.cx, align 8, !range !7, !alias.scope !882, !noundef !5
  %i.cy = icmp ult i32 %.val9.i40.i, %.val10.i.i
  br i1 %i.cy, label %bb.n, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1b_10DefinitionEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3J_9FrozenMapB19_B2c_E12from_entries0E0EB1d_.exit.i

bb.n:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i.i, ptr noundef nonnull align 4 dereferenceable(20) %i.cz, i64 20, i1 false), !noalias !882
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %i.cx, i64 24, i1 false), !alias.scope !882
  %i.da = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.da, label %._crit_edge, label %.lr.ph

bb.o:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i41.i28, ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i64 24, i1 false), !alias.scope !882
  %i.db = icmp eq ptr %i.dc, %i.a
  br i1 %i.db, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %bb.o
  %.sroa.0.0.i41.i28 = phi ptr [ %i.dc, %bb.o ], [ %i.cx, %bb.n ] ; 3 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.0.0.i41.i28, i64 -24 ; 4 uses
  %.val8.i42.i = load i32, ptr %i.dc, align 4, !range !7, !alias.scope !882, !noundef !5
  %i.dd = icmp ult i32 %.val9.i40.i, %.val8.i42.i
  br i1 %i.dd, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o, %.lr.ph, %bb.n
  %.sroa.0.0.i41.lcssa.i = phi ptr [ %i.a, %bb.n ], [ %i.a, %bb.o ], [ %.sroa.0.0.i41.i28, %.lr.ph ] ; 2 uses
  store i32 %.val9.i40.i, ptr %.sroa.0.0.i41.lcssa.i, align 8, !alias.scope !882, !noalias !884
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41.lcssa.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i.i, i64 20, i1 false), !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1b_10DefinitionEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3J_9FrozenMapB19_B2c_E12from_entries0E0EB1d_.exit.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1b_10DefinitionEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3J_9FrozenMapB19_B2c_E12from_entries0E0EB1d_.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.de = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.de, %i.d
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1v_10DefinitionEENCINvMB8_SB1s_16sort_unstable_byNCNvMs2_NtB1x_6frozenINtB43_9FrozenMapB1t_B2w_E12from_entries0E0EB1x_.exit: ; preds = %bb.a, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1i_10DefinitionENCINvMB8_SB1f_16sort_unstable_byNCNvMs2_NtB1k_6frozenINtB3g_9FrozenMapB1g_B2j_E12from_entries0E0EB1k_(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 0, 768614336404564651) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !909 {
bb.a:
  %i.a = alloca [576 x i8], align 4               ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !911)
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1v_10DefinitionENCINvMB8_SB1s_16sort_unstable_byNCNvMs2_NtB1x_6frozenINtB3t_9FrozenMapB1t_B2w_E12from_entries0E0EB1x_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %1, 32
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 12 uses
  %i.e = icmp samesign ugt i64 %1, 15
  br i1 %i.e, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %1, 7
  br i1 %i.f, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %1 ; 2 uses
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1c_10DefinitionENCINvMB8_SB19_16sort_unstable_byNCNvMs2_NtB1e_6frozenINtB3a_9FrozenMapB1a_B2d_E12from_entries0E0EB1e_(ptr noundef nonnull align 4 %0, ptr noundef nonnull align 4 %i.a, ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.d
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1c_10DefinitionENCINvMB8_SB19_16sort_unstable_byNCNvMs2_NtB1e_6frozenINtB3a_9FrozenMapB1a_B2d_E12from_entries0E0EB1e_(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val8.i.i = load i32, ptr %i.k, align 4, !range !7, !alias.scope !910, !noundef !5
  %.val9.i.i = load i32, ptr %0, align 4, !range !7, !alias.scope !910, !noundef !5
  %i.l = icmp ult i32 %.val8.i.i, %.val9.i.i      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val6.i.i = load i32, ptr %i.m, align 4, !range !7, !alias.scope !910, !noundef !5
  %.val7.i.i = load i32, ptr %i.n, align 4, !range !7, !alias.scope !910, !noundef !5
  %i.o = icmp ult i32 %.val6.i.i, %.val7.i.i      ; 2 uses
  %i.p = zext i1 %i.l to i64
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.p ; 3 uses
  %i.r = xor i1 %i.l, true
  %i.s = zext i1 %i.r to i64
  %i.t = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.s ; 4 uses
  %i.u = select i1 %i.o, i64 3, i64 2
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.u ; 4 uses
  %i.w = select i1 %i.o, i64 2, i64 3
  %i.x = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.w ; 3 uses
  %.val4.i.i = load i32, ptr %i.v, align 4, !range !7, !alias.scope !910, !noundef !5
  %.val5.i.i = load i32, ptr %i.q, align 4, !range !7, !alias.scope !910, !noundef !5
  %i.y = icmp ult i32 %.val4.i.i, %.val5.i.i      ; 3 uses
  %.val2.i.i = load i32, ptr %i.x, align 4, !range !7, !alias.scope !910, !noundef !5
  %.val3.i.i = load i32, ptr %i.t, align 4, !range !7, !alias.scope !910, !noundef !5
  %i.z = icmp ult i32 %.val2.i.i, %.val3.i.i      ; 3 uses
  %i.aa = select i1 %i.y, ptr %i.v, ptr %i.q, !unpredictable !5
  %i.ab = select i1 %i.z, ptr %i.t, ptr %i.x, !unpredictable !5
  %i.ac = select i1 %i.z, ptr %i.v, ptr %i.t, !unpredictable !5
  %i.ad = select i1 %i.y, ptr %i.q, ptr %i.ac, !unpredictable !5 ; 3 uses
  %i.ae = select i1 %i.y, ptr %i.t, ptr %i.v, !unpredictable !5
  %i.af = select i1 %i.z, ptr %i.x, ptr %i.ae, !unpredictable !5 ; 3 uses
  %.val.i.i = load i32, ptr %i.af, align 4, !range !7, !alias.scope !910, !noundef !5
  %.val1.i.i = load i32, ptr %i.ad, align 4, !range !7, !alias.scope !910, !noundef !5
  %i.ag = icmp ult i32 %.val.i.i, %.val1.i.i      ; 2 uses
  %i.ah = select i1 %i.ag, ptr %i.af, ptr %i.ad, !unpredictable !5
  %i.ai = select i1 %i.ag, ptr %i.ad, ptr %i.af, !unpredictable !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.aa, i64 12, i1 false), !alias.scope !912
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aj, ptr noundef nonnull align 4 dereferenceable(12) %i.ah, i64 12, i1 false), !alias.scope !912
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 4 dereferenceable(12) %i.ai, i64 12, i1 false), !alias.scope !912
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.al, ptr noundef nonnull align 4 dereferenceable(12) %i.ab, i64 12, i1 false), !alias.scope !912
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.d ; 8 uses
  %i.an = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.d ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %.val8.i30.i = load i32, ptr %i.ao, align 4, !range !7, !alias.scope !910, !noundef !5
  %.val9.i31.i = load i32, ptr %i.am, align 4, !range !7, !alias.scope !910, !noundef !5
  %i.ap = icmp ult i32 %.val8.i30.i, %.val9.i31.i ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 36
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.val6.i32.i = load i32, ptr %i.aq, align 4, !range !7, !alias.scope !910, !noundef !5
  %.val7.i33.i = load i32, ptr %i.ar, align 4, !range !7, !alias.scope !910, !noundef !5
  %i.as = icmp ult i32 %.val6.i32.i, %.val7.i33.i ; 2 uses
  %i.at = zext i1 %i.ap to i64
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %i.at ; 3 uses
  %i.av = xor i1 %i.ap, true
  %i.aw = zext i1 %i.av to i64
  %i.ax = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %i.aw ; 4 uses
  %i.ay = select i1 %i.as, i64 3, i64 2
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %i.ay ; 4 uses
  %i.ba = select i1 %i.as, i64 2, i64 3
  %i.bb = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %i.ba ; 3 uses
  %.val4.i34.i = load i32, ptr %i.az, align 4, !range !7, !alias.scope !910, !noundef !5
  %.val5.i35.i = load i32, ptr %i.au, align 4, !range !7, !alias.scope !910, !noundef !5
  %i.bc = icmp ult i32 %.val4.i34.i, %.val5.i35.i ; 3 uses
  %.val2.i36.i = load i32, ptr %i.bb, align 4, !range !7, !alias.scope !910, !noundef !5
  %.val3.i37.i = load i32, ptr %i.ax, align 4, !range !7, !alias.scope !910, !noundef !5
  %i.bd = icmp ult i32 %.val2.i36.i, %.val3.i37.i ; 3 uses
  %i.be = select i1 %i.bc, ptr %i.az, ptr %i.au, !unpredictable !5
  %i.bf = select i1 %i.bd, ptr %i.ax, ptr %i.bb, !unpredictable !5
  %i.bg = select i1 %i.bd, ptr %i.az, ptr %i.ax, !unpredictable !5
  %i.bh = select i1 %i.bc, ptr %i.au, ptr %i.bg, !unpredictable !5 ; 3 uses
  %i.bi = select i1 %i.bc, ptr %i.ax, ptr %i.az, !unpredictable !5
  %i.bj = select i1 %i.bd, ptr %i.bb, ptr %i.bi, !unpredictable !5 ; 3 uses
  %.val.i38.i = load i32, ptr %i.bj, align 4, !range !7, !alias.scope !910, !noundef !5
  %.val1.i39.i = load i32, ptr %i.bh, align 4, !range !7, !alias.scope !910, !noundef !5
  %i.bk = icmp ult i32 %.val.i38.i, %.val1.i39.i  ; 2 uses
  %i.bl = select i1 %i.bk, ptr %i.bj, ptr %i.bh, !unpredictable !5
  %i.bm = select i1 %i.bk, ptr %i.bh, ptr %i.bj, !unpredictable !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.an, ptr noundef nonnull align 4 dereferenceable(12) %i.be, i64 12, i1 false), !alias.scope !912
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bn, ptr noundef nonnull align 4 dereferenceable(12) %i.bl, i64 12, i1 false), !alias.scope !912
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bo, ptr noundef nonnull align 4 dereferenceable(12) %i.bm, i64 12, i1 false), !alias.scope !912
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bp, ptr noundef nonnull align 4 dereferenceable(12) %i.bf, i64 12, i1 false), !alias.scope !912
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !alias.scope !912
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.d
  %i.br = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.br, ptr noundef nonnull align 4 dereferenceable(12) %i.bq, i64 12, i1 false), !alias.scope !912
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 4 uses
  %i.bs = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.bt = icmp samesign ult i64 %.sroa.0.0.i, %i.d
  br i1 %i.bt, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1b_10DefinitionENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB39_9FrozenMapB19_B2c_E12from_entries0E0EB1d_.exit.i, %bb.i
  %i.bu = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.d
  %i.bv = getelementptr [12 x i8], ptr %i.a, i64 %i.d ; 6 uses
  %i.bw = icmp samesign ult i64 %.sroa.0.0.i, %i.bs
  br i1 %i.bw, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1b_10DefinitionENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB39_9FrozenMapB19_B2c_E12from_entries0E0EB1d_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.cf, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1b_10DefinitionENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB39_9FrozenMapB19_B2c_E12from_entries0E0EB1d_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [12 x i8], ptr %i.bu, i64 %.sroa.05.08.1.i
  %.idx38 = mul nuw nsw i64 %.sroa.05.08.1.i, 12
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx38 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.by, ptr noundef nonnull align 4 dereferenceable(12) %i.bx, i64 12, i1 false), !alias.scope !912
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -12 ; 3 uses
  %.val9.i40.1.i = load i32, ptr %i.by, align 4, !range !7, !alias.scope !911, !noundef !5 ; 3 uses
  %.val10.i.1.i = load i32, ptr %i.bz, align 4, !range !7, !alias.scope !911, !noundef !5
  %i.ca = icmp ult i32 %.val9.i40.1.i, %.val10.i.1.i
  br i1 %i.ca, label %bb.j, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1b_10DefinitionENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB39_9FrozenMapB19_B2c_E12from_entries0E0EB1d_.exit.1.i

bb.j:                                             ; preds = %.lr.ph.1.i
  %.sroa.49.0..sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %.sroa.49.0.copyload.i.1.i = load i64, ptr %.sroa.49.0..sroa_idx.i.1.i, align 4, !alias.scope !911
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.by, ptr noundef nonnull align 4 dereferenceable(12) %i.bz, i64 12, i1 false), !alias.scope !911
  %i.cb = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.cb, label %._crit_edge34, label %.lr.ph33

bb.k:                                             ; preds = %.lr.ph33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.i41.1.i31, ptr noundef nonnull align 4 dereferenceable(12) %i.cd, i64 12, i1 false), !alias.scope !911
  %i.cc = icmp eq ptr %i.cd, %i.bv
  br i1 %i.cc, label %._crit_edge34, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.j, %bb.k
  %.sroa.0.0.i41.1.i31 = phi ptr [ %i.cd, %bb.k ], [ %i.bz, %bb.j ] ; 3 uses
  %i.cd = getelementptr inbounds i8, ptr %.sroa.0.0.i41.1.i31, i64 -12 ; 4 uses
  %.val8.i42.1.i = load i32, ptr %i.cd, align 4, !range !7, !alias.scope !911, !noundef !5
  %i.ce = icmp ult i32 %.val9.i40.1.i, %.val8.i42.1.i
  br i1 %i.ce, label %bb.k, label %._crit_edge34

._crit_edge34:                                    ; preds = %bb.k, %.lr.ph33, %bb.j
  %.sroa.0.0.i41.lcssa.1.i = phi ptr [ %i.bv, %bb.j ], [ %i.bv, %bb.k ], [ %.sroa.0.0.i41.1.i31, %.lr.ph33 ] ; 2 uses
  store i32 %.val9.i40.1.i, ptr %.sroa.0.0.i41.lcssa.1.i, align 4, !alias.scope !911, !noalias !913
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41.lcssa.1.i, i64 4
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtB1i_25ScopedEnclosingSnapshotIdENCINvMB8_SB1f_16sort_unstable_byNCNvMs2_NtB1k_6frozenINtB3u_9FrozenMapB1g_B2i_E12from_entries0E0EB1k_:bb.a
.thread.i.i._crit_edge:                           ; preds = %bb.x, %.thread.i.i, %bb.w
  %.sroa.0.0.i30.lcssa.i = phi ptr [ %i.a, %bb.w ], [ %i.a, %bb.x ], [ %.sroa.0.0.i30.i11, %.thread.i.i ] ; 6 uses
  store i32 %.sroa.016.0.copyload.i.i, ptr %.sroa.0.0.i30.lcssa.i, align 4, !alias.scope !984, !noalias !995
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i30.lcssa.i, i64 4
  store i32 %.sroa.417.0.copyload.i.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.i, align 4, !alias.scope !984, !noalias !995
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i30.lcssa.i, i64 8
  store i32 %i.bx, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.i, align 4, !alias.scope !984, !noalias !995
  %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i30.lcssa.i, i64 12
  store i32 %.sroa.619.0.copyload.i.i, ptr %.sroa.7.0..sroa.0.0.lcssa.sroa_idx.i.i, align 4, !alias.scope !984, !noalias !995
  %.sroa.8.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i30.lcssa.i, i64 16
  store i8 %.sroa.720.0.copyload.i.i, ptr %.sroa.8.0..sroa.0.0.lcssa.sroa_idx.i.i, align 4, !alias.scope !984, !noalias !995
  %.sroa.9.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i30.lcssa.i, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.0..sroa.0.0.lcssa.sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i.i, i64 7, i1 false), !noalias !996
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtB1b_25ScopedEnclosingSnapshotIdENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3n_9FrozenMapB19_B2b_E12from_entries0E0EB1d_.exit.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtB1b_25ScopedEnclosingSnapshotIdENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3n_9FrozenMapB19_B2b_E12from_entries0E0EB1d_.exit.i: ; preds = %.thread.i.i._crit_edge, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_.exit.i.i
  %i.dz = add nuw nsw i64 %.sroa.05.04.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dz, %i.d
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtB1v_25ScopedEnclosingSnapshotIdENCINvMB8_SB1s_16sort_unstable_byNCNvMs2_NtB1x_6frozenINtB3H_9FrozenMapB1t_B2v_E12from_entries0E0EB1x_.exit: ; preds = %bb.a, %.loopexit.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB8_SB1f_20sort_unstable_by_keyB1g_NCNvMs8_NtB2f_7builderNtB3P_26ExpressionsScopeMapBuilder5build0E0EB2f_(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1025 {
bb.a:
  %i.a = alloca [384 x i8], align 8               ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB8_SB1s_20sort_unstable_by_keyB1t_NCNvMs8_NtB2s_7builderNtB42_26ExpressionsScopeMapBuilder5build0E0EB2s_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %1, 32
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 12 uses
  %i.e = icmp samesign ugt i64 %1, 15
  br i1 %i.e, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %1, 7
  br i1 %i.f, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %1 ; 2 uses
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB8_SB19_20sort_unstable_by_keyB1a_NCNvMs8_NtB29_7builderNtB3J_26ExpressionsScopeMapBuilder5build0E0EB29_(ptr noundef nonnull align 4 %0, ptr noundef nonnull align 4 %i.a, ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB8_SB19_20sort_unstable_by_keyB1a_NCNvMs8_NtB29_7builderNtB3J_26ExpressionsScopeMapBuilder5build0E0EB29_(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8.i.i = load i32, ptr %i.k, align 4, !range !7, !alias.scope !1026, !noundef !5
  %.val9.i.i = load i32, ptr %0, align 4, !range !7, !alias.scope !1026, !noundef !5
  %i.l = icmp ult i32 %.val8.i.i, %.val9.i.i      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6.i.i = load i32, ptr %i.m, align 4, !range !7, !alias.scope !1026, !noundef !5
  %.val7.i.i = load i32, ptr %i.n, align 4, !range !7, !alias.scope !1026, !noundef !5
  %i.o = icmp ult i32 %.val6.i.i, %.val7.i.i      ; 2 uses
  %i.p = zext i1 %i.l to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.p ; 3 uses
  %i.r = xor i1 %i.l, true
  %i.s = zext i1 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.s ; 4 uses
  %i.u = select i1 %i.o, i64 3, i64 2
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.u ; 4 uses
  %i.w = select i1 %i.o, i64 2, i64 3
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 3 uses
  %.val4.i.i = load i32, ptr %i.v, align 4, !range !7, !alias.scope !1026, !noundef !5
  %.val5.i.i = load i32, ptr %i.q, align 4, !range !7, !alias.scope !1026, !noundef !5
  %i.y = icmp ult i32 %.val4.i.i, %.val5.i.i      ; 3 uses
  %.val2.i.i = load i32, ptr %i.x, align 4, !range !7, !alias.scope !1026, !noundef !5
  %.val3.i.i = load i32, ptr %i.t, align 4, !range !7, !alias.scope !1026, !noundef !5
  %i.z = icmp ult i32 %.val2.i.i, %.val3.i.i      ; 3 uses
  %i.aa = select i1 %i.y, ptr %i.v, ptr %i.q, !unpredictable !5
  %i.ab = select i1 %i.z, ptr %i.t, ptr %i.x, !unpredictable !5
  %i.ac = select i1 %i.z, ptr %i.v, ptr %i.t, !unpredictable !5
  %i.ad = select i1 %i.y, ptr %i.q, ptr %i.ac, !unpredictable !5 ; 3 uses
  %i.ae = select i1 %i.y, ptr %i.t, ptr %i.v, !unpredictable !5
  %i.af = select i1 %i.z, ptr %i.x, ptr %i.ae, !unpredictable !5 ; 3 uses
  %.val.i.i = load i32, ptr %i.af, align 4, !range !7, !alias.scope !1026, !noundef !5
  %.val1.i.i = load i32, ptr %i.ad, align 4, !range !7, !alias.scope !1026, !noundef !5
  %i.ag = icmp ult i32 %.val.i.i, %.val1.i.i      ; 2 uses
  %i.ah = select i1 %i.ag, ptr %i.af, ptr %i.ad, !unpredictable !5
  %i.ai = select i1 %i.ag, ptr %i.ad, ptr %i.af, !unpredictable !5
  %i.aj = load i64, ptr %i.aa, align 4, !alias.scope !1026
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !1027
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = load i64, ptr %i.ah, align 4, !alias.scope !1026
  store i64 %i.al, ptr %i.ak, align 8, !alias.scope !1027
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.an = load i64, ptr %i.ai, align 4, !alias.scope !1026
  store i64 %i.an, ptr %i.am, align 8, !alias.scope !1027
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ap = load i64, ptr %i.ab, align 4, !alias.scope !1026
  store i64 %i.ap, ptr %i.ao, align 8, !alias.scope !1027
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d ; 8 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.val8.i30.i = load i32, ptr %i.as, align 4, !range !7, !alias.scope !1026, !noundef !5
  %.val9.i31.i = load i32, ptr %i.aq, align 4, !range !7, !alias.scope !1026, !noundef !5
  %i.at = icmp ult i32 %.val8.i30.i, %.val9.i31.i ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.val6.i32.i = load i32, ptr %i.au, align 4, !range !7, !alias.scope !1026, !noundef !5
  %.val7.i33.i = load i32, ptr %i.av, align 4, !range !7, !alias.scope !1026, !noundef !5
  %i.aw = icmp ult i32 %.val6.i32.i, %.val7.i33.i ; 2 uses
  %i.ax = zext i1 %i.at to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ax ; 3 uses
  %i.az = xor i1 %i.at, true
  %i.ba = zext i1 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ba ; 4 uses
  %i.bc = select i1 %i.aw, i64 3, i64 2
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.bc ; 4 uses
  %i.be = select i1 %i.aw, i64 2, i64 3
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.be ; 3 uses
  %.val4.i34.i = load i32, ptr %i.bd, align 4, !range !7, !alias.scope !1026, !noundef !5
  %.val5.i35.i = load i32, ptr %i.ay, align 4, !range !7, !alias.scope !1026, !noundef !5
  %i.bg = icmp ult i32 %.val4.i34.i, %.val5.i35.i ; 3 uses
  %.val2.i36.i = load i32, ptr %i.bf, align 4, !range !7, !alias.scope !1026, !noundef !5
  %.val3.i37.i = load i32, ptr %i.bb, align 4, !range !7, !alias.scope !1026, !noundef !5
  %i.bh = icmp ult i32 %.val2.i36.i, %.val3.i37.i ; 3 uses
  %i.bi = select i1 %i.bg, ptr %i.bd, ptr %i.ay, !unpredictable !5
  %i.bj = select i1 %i.bh, ptr %i.bb, ptr %i.bf, !unpredictable !5
  %i.bk = select i1 %i.bh, ptr %i.bd, ptr %i.bb, !unpredictable !5
  %i.bl = select i1 %i.bg, ptr %i.ay, ptr %i.bk, !unpredictable !5 ; 3 uses
  %i.bm = select i1 %i.bg, ptr %i.bb, ptr %i.bd, !unpredictable !5
  %i.bn = select i1 %i.bh, ptr %i.bf, ptr %i.bm, !unpredictable !5 ; 3 uses
  %.val.i38.i = load i32, ptr %i.bn, align 4, !range !7, !alias.scope !1026, !noundef !5
  %.val1.i39.i = load i32, ptr %i.bl, align 4, !range !7, !alias.scope !1026, !noundef !5
  %i.bo = icmp ult i32 %.val.i38.i, %.val1.i39.i  ; 2 uses
  %i.bp = select i1 %i.bo, ptr %i.bn, ptr %i.bl, !unpredictable !5
  %i.bq = select i1 %i.bo, ptr %i.bl, ptr %i.bn, !unpredictable !5
  %i.br = load i64, ptr %i.bi, align 4, !alias.scope !1026
  store i64 %i.br, ptr %i.ar, align 8, !alias.scope !1027
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bt = load i64, ptr %i.bp, align 4, !alias.scope !1026
  store i64 %i.bt, ptr %i.bs, align 8, !alias.scope !1027
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bv = load i64, ptr %i.bq, align 4, !alias.scope !1026
  store i64 %i.bv, ptr %i.bu, align 8, !alias.scope !1027
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bx = load i64, ptr %i.bj, align 4, !alias.scope !1026
  store i64 %i.bx, ptr %i.bw, align 8, !alias.scope !1027
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.by = load i64, ptr %0, align 4, !alias.scope !1026
  store i64 %i.by, ptr %i.a, align 8, !alias.scope !1027
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d
  %i.cb = load i64, ptr %i.bz, align 4, !alias.scope !1026
  store i64 %i.cb, ptr %i.ca, align 8, !alias.scope !1027
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 4 uses
  %i.cc = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.cd = icmp samesign ult i64 %.sroa.0.0.i, %i.d
  br i1 %i.cd, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB8_SB18_20sort_unstable_by_keyB19_NCNvMs8_NtB28_7builderNtB3I_26ExpressionsScopeMapBuilder5build0E0EB28_.exit.i, %bb.i
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.cf = getelementptr [8 x i8], ptr %i.a, i64 %i.d ; 6 uses
  %i.cg = icmp samesign ult i64 %.sroa.0.0.i, %i.cc
  br i1 %i.cg, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB8_SB18_20sort_unstable_by_keyB19_NCNvMs8_NtB28_7builderNtB3I_26ExpressionsScopeMapBuilder5build0E0EB28_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.ct, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB8_SB18_20sort_unstable_by_keyB19_NCNvMs8_NtB28_7builderNtB3I_26ExpressionsScopeMapBuilder5build0E0EB28_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.sroa.05.08.1.i
  %.idx38 = shl nuw nsw i64 %.sroa.05.08.1.i, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx38 ; 3 uses
  %i.cj = load i64, ptr %i.ch, align 4, !alias.scope !1026 ; 3 uses
  store i64 %i.cj, ptr %i.ci, align 8, !alias.scope !1027
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -8 ; 3 uses
  %i.cl = trunc i64 %i.cj to i32                  ; 2 uses
  %.val10.i.1.i = load i32, ptr %i.ck, align 8, !range !7, !alias.scope !1027, !noundef !5
  %i.cm = icmp ugt i32 %.val10.i.1.i, %i.cl
  br i1 %i.cm, label %.preheader.preheader, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB8_SB18_20sort_unstable_by_keyB19_NCNvMs8_NtB28_7builderNtB3I_26ExpressionsScopeMapBuilder5build0E0EB28_.exit.1.i

.preheader.preheader:                             ; preds = %.lr.ph.1.i
  %i.cn = load i64, ptr %i.ck, align 8, !alias.scope !1027
  store i64 %i.cn, ptr %i.ci, align 8, !alias.scope !1027
  %i.co = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.co, label %._crit_edge35, label %.lr.ph34

.preheader:                                       ; preds = %.lr.ph34
  %i.cp = load i64, ptr %i.cr, align 4, !alias.scope !1027
  store i64 %i.cp, ptr %.sroa.0.0.i41.1.i33, align 4, !alias.scope !1027
  %i.cq = icmp eq ptr %i.cr, %i.cf
  br i1 %i.cq, label %._crit_edge35, label %.lr.ph34

.lr.ph34:                                         ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i41.1.i33 = phi ptr [ %i.cr, %.preheader ], [ %i.ck, %.preheader.preheader ] ; 3 uses
  %i.cr = getelementptr inbounds i8, ptr %.sroa.0.0.i41.1.i33, i64 -8 ; 4 uses
  %.val8.i42.1.i = load i32, ptr %i.cr, align 4, !range !7, !alias.scope !1027, !noundef !5
  %i.cs = icmp ugt i32 %.val8.i42.1.i, %i.cl
  br i1 %i.cs, label %.preheader, label %._crit_edge35

._crit_edge35:                                    ; preds = %.preheader, %.lr.ph34, %.preheader.preheader
  %.sroa.0.0.i41.lcssa.1.i = phi ptr [ %i.cf, %.preheader.preheader ], [ %i.cf, %.preheader ], [ %.sroa.0.0.i41.1.i33, %.lr.ph34 ]
  store i64 %i.cj, ptr %.sroa.0.0.i41.lcssa.1.i, align 4, !alias.scope !1027, !noalias !1028
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB8_SB18_20sort_unstable_by_keyB19_NCNvMs8_NtB28_7builderNtB3I_26ExpressionsScopeMapBuilder5build0E0EB28_.exit.1.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB8_SB18_20sort_unstable_by_keyB19_NCNvMs8_NtB28_7builderNtB3I_26ExpressionsScopeMapBuilder5build0E0EB28_.exit.1.i: ; preds = %._crit_edge35, %.lr.ph.1.i
  %i.ct = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.ct, %i.cc
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB8_SB18_20sort_unstable_by_keyB19_NCNvMs8_NtB28_7builderNtB3I_26ExpressionsScopeMapBuilder5build0E0EB28_.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  %i.cu = add nsw i64 %1, -1                      ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cu
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cu
  %i.cx = getelementptr i8, ptr %i.cf, i64 -8
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.cy = getelementptr i8, ptr %i.dj, i64 8      ; 2 uses
  %i.cz = getelementptr i8, ptr %i.di, i64 8
  %i.da = and i64 %1, 1
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.k, label %bb.j

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.de, %.lr.ph.i.i ], [ %0, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.dc, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.a, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.cf, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.dj, %.lr.ph.i.i ], [ %i.cx, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.di, %.lr.ph.i.i ], [ %i.cw, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.dk, %.lr.ph.i.i ], [ %i.cv, %.loopexit.1.i ] ; 2 uses
  %i.dc = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %.sroa.011.0.val.i.i = load i32, ptr %.sroa.011.07.i.i, align 4, !range !7, !alias.scope !1030, !noundef !5
  %.sroa.06.0.val.i.i = load i32, ptr %.sroa.06.08.i.i, align 4, !range !7, !alias.scope !1030, !noundef !5
  %.not = icmp ult i32 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i ; 3 uses
  %..i23.i.i = select i1 %.not, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.dd = load i64, ptr %..i23.i.i, align 4, !alias.scope !1030, !noalias !1031
  store i64 %i.dd, ptr %.sroa.0.010.i.i, align 4, !alias.scope !1026, !noalias !1032
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 8, i64 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 0, i64 8
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 8 ; 2 uses
  %.sroa.017.0.val.i.i = load i32, ptr %.sroa.017.05.i.i, align 4, !range !7, !alias.scope !1030, !noundef !5
  %.sroa.015.0.val.i.i = load i32, ptr %.sroa.015.06.i.i, align 4, !range !7, !alias.scope !1030, !noundef !5
  %i.df = icmp ult i32 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i ; 3 uses
  %..i.i.i = select i1 %i.df, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.dg = xor i1 %i.df, true
  %i.dh = load i64, ptr %..i.i.i, align 4, !alias.scope !1030, !noalias !1033
  store i64 %i.dh, ptr %.sroa.019.04.i.i, align 4, !alias.scope !1026, !noalias !1034
  %.neg.i.i.i = sext i1 %i.dg to i64
  %i.di = getelementptr [8 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.df to i64
  %i.dj = getelementptr [8 x i8], ptr %.sroa.015.06.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -8
  %exitcond.not.i.i = icmp eq i64 %i.dc, %i.d
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %.not26 = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.cy ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %.not26, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel
  %i.dl = load i64, ptr %.sroa.06.0..sroa.011.0.i.i, align 4, !alias.scope !1030
  store i64 %i.dl, ptr %i.de, align 4, !alias.scope !1026, !noalias !1029
  %.sroa.sel17.idx.sroa.sel.idx = select i1 %.not26, i64 8, i64 0
  %.sroa.sel17.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel17.idx.sroa.sel.idx
  %.sroa.sel.idx.sroa.sel.idx = select i1 %.not26, i64 0, i64 8
  %.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel, %bb.j ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel17.idx.sroa.sel, %bb.j ]
  %i.dm = icmp ne ptr %.sroa.06.1.i.i, %i.cy
  %i.dn = icmp ne ptr %.sroa.011.1.i.i, %i.cz
  %or.cond.i.i = select i1 %i.dm, i1 true, i1 %i.dn, !prof !10
  br i1 %or.cond.i.i, label %bb.l, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB8_SB1s_20sort_unstable_by_keyB1t_NCNvMs8_NtB2s_7builderNtB42_26ExpressionsScopeMapBuilder5build0E0EB2s_.exit, !prof !10

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #31
          to label %.noexc.i unwind label %bb.m, !noalias !1035

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = shl nuw nsw i64 %1, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 8 %i.a, i64 %i.dp, i1 false), !alias.scope !1035, !noalias !1036
  resume { ptr, i32 } %i.do

.lr.ph.i:                                         ; preds = %bb.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB8_SB18_20sort_unstable_by_keyB19_NCNvMs8_NtB28_7builderNtB3I_26ExpressionsScopeMapBuilder5build0E0EB28_.exit.i
  %.sroa.05.08.i = phi i64 [ %i.ec, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB8_SB18_20sort_unstable_by_keyB19_NCNvMs8_NtB28_7builderNtB3I_26ExpressionsScopeMapBuilder5build0E0EB28_.exit.i ], [ %.sroa.0.0.i, %bb.i ] ; 4 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.08.i
  %.idx = shl nuw nsw i64 %.sroa.05.08.i, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 3 uses
  %i.ds = load i64, ptr %i.dq, align 4, !alias.scope !1026 ; 3 uses
  store i64 %i.ds, ptr %i.dr, align 8, !alias.scope !1027
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 -8 ; 3 uses
  %i.du = trunc i64 %i.ds to i32                  ; 2 uses
  %.val10.i.i = load i32, ptr %i.dt, align 8, !range !7, !alias.scope !1027, !noundef !5
  %i.dv = icmp ugt i32 %.val10.i.i, %i.du
  br i1 %i.dv, label %.preheader5.preheader, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB8_SB18_20sort_unstable_by_keyB19_NCNvMs8_NtB28_7builderNtB3I_26ExpressionsScopeMapBuilder5build0E0EB28_.exit.i

.preheader5.preheader:                            ; preds = %.lr.ph.i
  %i.dw = load i64, ptr %i.dt, align 8, !alias.scope !1027
  store i64 %i.dw, ptr %i.dr, align 8, !alias.scope !1027
  %i.dx = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.dx, label %._crit_edge, label %.lr.ph

.preheader5:                                      ; preds = %.lr.ph
  %i.dy = load i64, ptr %i.ea, align 4, !alias.scope !1027
  store i64 %i.dy, ptr %.sroa.0.0.i41.i31, align 4, !alias.scope !1027
  %i.dz = icmp eq ptr %i.ea, %i.a
  br i1 %i.dz, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader5.preheader, %.preheader5
  %.sroa.0.0.i41.i31 = phi ptr [ %i.ea, %.preheader5 ], [ %i.dt, %.preheader5.preheader ] ; 3 uses
  %i.ea = getelementptr inbounds i8, ptr %.sroa.0.0.i41.i31, i64 -8 ; 4 uses
  %.val8.i42.i = load i32, ptr %i.ea, align 4, !range !7, !alias.scope !1027, !noundef !5
  %i.eb = icmp ugt i32 %.val8.i42.i, %i.du
  br i1 %i.eb, label %.preheader5, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader5, %.lr.ph, %.preheader5.preheader
  %.sroa.0.0.i41.lcssa.i = phi ptr [ %i.a, %.preheader5.preheader ], [ %i.a, %.preheader5 ], [ %.sroa.0.0.i41.i31, %.lr.ph ]
  store i64 %i.ds, ptr %.sroa.0.0.i41.lcssa.i, align 4, !alias.scope !1027, !noalias !1028
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB8_SB18_20sort_unstable_by_keyB19_NCNvMs8_NtB28_7builderNtB3I_26ExpressionsScopeMapBuilder5build0E0EB28_.exit.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB8_SB18_20sort_unstable_by_keyB19_NCNvMs8_NtB28_7builderNtB3I_26ExpressionsScopeMapBuilder5build0E0EB28_.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.ec = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ec, %i.d
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCskLngH8kgpZI_15ruff_python_ast10node_index9NodeIndexNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENCINvMB8_SB1s_20sort_unstable_by_keyB1t_NCNvMs8_NtB2s_7builderNtB42_26ExpressionsScopeMapBuilder5build0E0EB2s_.exit: ; preds = %bb.a, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB8_SB1f_16sort_unstable_byNCNvMs2_B2B_NtB2B_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0EB2D_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1122 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 12 uses
  %i.b = alloca [1920 x i8], align 8              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB8_SB1s_16sort_unstable_byNCNvMs2_B2O_NtB2O_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0EB2Q_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ugt i64 %1, 32
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = lshr i64 %1, 1                           ; 6 uses
  %i.f = icmp samesign ugt i64 %1, 7
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.e ; 3 uses
  %i.h = getelementptr [40 x i8], ptr %i.b, i64 %i.e ; 7 uses
  br i1 %i.f, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB8_SB19_16sort_unstable_byNCNvMs2_B2v_NtB2v_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0EB2x_(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b)
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB8_SB19_16sort_unstable_byNCNvMs2_B2v_NtB2v_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0EB2x_(ptr noundef %i.g, ptr noundef %i.h)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !alias.scope !1125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !alias.scope !1125
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.i = sub nuw nsw i64 %1, %i.e                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 15 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.l = icmp samesign ult i64 %.sroa.0.0.i, %i.e
  br i1 %i.l, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB8_SB18_16sort_unstable_byNCNvMs2_B2u_NtB2u_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0EB2w_.exit.i, %bb.g
  %i.m = icmp samesign ult i64 %.sroa.0.0.i, %i.i
  br i1 %i.m, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB8_SB18_16sort_unstable_byNCNvMs2_B2u_NtB2u_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0EB2w_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.bt, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB8_SB18_16sort_unstable_byNCNvMs2_B2u_NtB2u_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0EB2w_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %.sroa.05.08.1.i ; 3 uses
  %.idx.1.i = mul nuw nsw i64 %.sroa.05.08.1.i, 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.1.i ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false), !alias.scope !1125
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -40 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 15
  %i.r = load i8, ptr %i.q, align 1, !range !6, !alias.scope !1132, !noundef !5 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !1132, !noundef !5
  %i.u = and i64 %i.t, 72057594037927935
  %i.v = icmp ult i8 %i.r, -48
  %i.w = zext i8 %i.r to i64
  %i.x = add nsw i64 %i.w, -192
  %spec.store.select.i.i.i.i.i30.1.i = call i64 @llvm.umin.i64(i64 %i.x, i64 16)
  %.sroa.0.0.i.i.i.i.i31.1.i = select i1 %i.v, i64 %spec.store.select.i.i.i.i.i30.1.i, i64 %i.u ; 3 uses
  %i.y = icmp ugt i8 %i.r, -49
  %i.z = load ptr, ptr %i.o, align 8, !alias.scope !1132
  %.sroa.01.0.i.i.i.i.i32.1.i = select i1 %i.y, ptr %i.z, ptr %i.o ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.o, i64 -25
  %i.ab = load i8, ptr %i.aa, align 1, !range !6, !alias.scope !1133, !noundef !5 ; 3 uses
  %i.ac = getelementptr inbounds i8, ptr %i.o, i64 -32
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !1133, !noundef !5
  %i.ae = and i64 %i.ad, 72057594037927935
  %i.af = icmp ult i8 %i.ab, -48
  %i.ag = zext i8 %i.ab to i64
  %i.ah = add nsw i64 %i.ag, -192
  %spec.store.select.i9.i.i.i.i33.1.i = call i64 @llvm.umin.i64(i64 %i.ah, i64 16)
  %.sroa.0.0.i10.i.i.i.i34.1.i = select i1 %i.af, i64 %spec.store.select.i9.i.i.i.i33.1.i, i64 %i.ae ; 3 uses
  %i.ai = icmp ugt i8 %i.ab, -49
  %i.aj = load ptr, ptr %i.p, align 8, !alias.scope !1133
  %.sroa.01.0.i11.i.i.i.i35.1.i = select i1 %i.ai, ptr %i.aj, ptr %i.p ; 2 uses
  %i.ak = icmp eq ptr %.sroa.01.0.i.i.i.i.i32.1.i, %.sroa.01.0.i11.i.i.i.i35.1.i
  br i1 %i.ak, label %.split.i.1.i, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_.exit.i36.1.i

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_.exit.i36.1.i: ; preds = %.lr.ph.1.i
  %spec.store.select.i.i.i.i37.1.i = call i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i.i.i.i31.1.i, i64 %.sroa.0.0.i10.i.i.i.i34.1.i)
  %i.al = call i32 @memcmp(ptr %.sroa.01.0.i.i.i.i.i32.1.i, ptr %.sroa.01.0.i11.i.i.i.i35.1.i, i64 %spec.store.select.i.i.i.i37.1.i), !noalias !1123 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %i.ao = sub nsw i64 %.sroa.0.0.i.i.i.i.i31.1.i, %.sroa.0.0.i10.i.i.i.i34.1.i
  %spec.select.i.i.i.i38.1.i = select i1 %i.an, i64 %i.ao, i64 %i.am
  %i.ap = icmp slt i64 %spec.select.i.i.i.i38.1.i, 0
  br i1 %i.ap, label %bb.h, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB8_SB18_16sort_unstable_byNCNvMs2_B2u_NtB2u_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0EB2w_.exit.1.i

.split.i.1.i:                                     ; preds = %.lr.ph.1.i
  %i.aq = icmp samesign ult i64 %.sroa.0.0.i.i.i.i.i31.1.i, %.sroa.0.0.i10.i.i.i.i34.1.i
  br i1 %i.aq, label %bb.h, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB8_SB18_16sort_unstable_byNCNvMs2_B2u_NtB2u_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0EB2w_.exit.1.i

bb.h:                                             ; preds = %.split.i.1.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_.exit.i36.1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false), !noalias !1124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !alias.scope !1124
  %i.ar = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.ar, label %.split5._crit_edge.i.1.i, label %.lr.ph.i39.1.i

.lr.ph.i39.1.i:                                   ; preds = %bb.h
  %i.as = load i8, ptr %i.j, align 1, !range !6, !alias.scope !1134, !noalias !1125, !noundef !5 ; 3 uses
  %i.at = load i64, ptr %i.k, align 8, !alias.scope !1134, !noalias !1125, !noundef !5
  %i.au = and i64 %i.at, 72057594037927935
  %i.av = icmp ult i8 %i.as, -48
  %i.aw = zext i8 %i.as to i64
  %i.ax = add nsw i64 %i.aw, -192
  %spec.store.select.i.i.i.i8.i.1.i = call i64 @llvm.umin.i64(i64 %i.ax, i64 16)
  %.sroa.0.0.i.i.i.i9.i.1.i = select i1 %i.av, i64 %spec.store.select.i.i.i.i8.i.1.i, i64 %i.au ; 3 uses
  %i.ay = icmp ugt i8 %i.as, -49
  %i.az = load ptr, ptr %i.a, align 8, !alias.scope !1134, !noalias !1125
  %.sroa.01.0.i.i.i.i10.i.1.i = select i1 %i.ay, ptr %i.az, ptr %i.a ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.backedge.i.1.i, %.lr.ph.i39.1.i
  %.sroa.0.06.i.1.i = phi ptr [ %i.p, %.lr.ph.i39.1.i ], [ %i.ba, %.backedge.i.1.i ] ; 6 uses
  %i.ba = getelementptr inbounds i8, ptr %.sroa.0.06.i.1.i, i64 -40 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  %i.bb = getelementptr inbounds i8, ptr %.sroa.0.06.i.1.i, i64 -25
  %i.bc = load i8, ptr %i.bb, align 1, !range !6, !alias.scope !1141, !noundef !5 ; 3 uses
  %i.bd = getelementptr inbounds i8, ptr %.sroa.0.06.i.1.i, i64 -32
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !1141, !noundef !5
  %i.bf = and i64 %i.be, 72057594037927935
  %i.bg = icmp ult i8 %i.bc, -48
  %i.bh = zext i8 %i.bc to i64
  %i.bi = add nsw i64 %i.bh, -192
  %spec.store.select.i9.i.i.i11.i.1.i = call i64 @llvm.umin.i64(i64 %i.bi, i64 16)
  %.sroa.0.0.i10.i.i.i12.i.1.i = select i1 %i.bg, i64 %spec.store.select.i9.i.i.i11.i.1.i, i64 %i.bf ; 3 uses
  %i.bj = icmp ugt i8 %i.bc, -49
  %i.bk = load ptr, ptr %i.ba, align 8, !alias.scope !1141
  %.sroa.01.0.i11.i.i.i13.i.1.i = select i1 %i.bj, ptr %i.bk, ptr %i.ba ; 2 uses
  %i.bl = icmp eq ptr %.sroa.01.0.i.i.i.i10.i.1.i, %.sroa.01.0.i11.i.i.i13.i.1.i
  br i1 %i.bl, label %.split5.i.1.i, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_.exit17.i.1.i

_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_.exit17.i.1.i: ; preds = %bb.i
  %spec.store.select.i.i.i14.i.1.i = call i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i.i.i9.i.1.i, i64 %.sroa.0.0.i10.i.i.i12.i.1.i)
  %i.bm = call i32 @memcmp(ptr %.sroa.01.0.i.i.i.i10.i.1.i, ptr %.sroa.01.0.i11.i.i.i13.i.1.i, i64 %spec.store.select.i.i.i14.i.1.i), !noalias !1123 ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp eq i32 %i.bm, 0
  %i.bp = sub nsw i64 %.sroa.0.0.i.i.i.i9.i.1.i, %.sroa.0.0.i10.i.i.i12.i.1.i
  %spec.select.i.i.i15.i.1.i = select i1 %i.bo, i64 %i.bp, i64 %i.bn
  %i.bq = icmp slt i64 %spec.select.i.i.i15.i.1.i, 0
  br i1 %i.bq, label %.backedge.i.1.i, label %.split5._crit_edge.i.1.i

.split5.i.1.i:                                    ; preds = %bb.i
  %i.br = icmp samesign ult i64 %.sroa.0.0.i.i.i.i9.i.1.i, %.sroa.0.0.i10.i.i.i12.i.1.i
  br i1 %i.br, label %.backedge.i.1.i, label %.split5._crit_edge.i.1.i

.backedge.i.1.i:                                  ; preds = %.split5.i.1.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_.exit17.i.1.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.06.i.1.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ba, i64 40, i1 false), !alias.scope !1124
  %i.bs = icmp eq ptr %i.ba, %i.h
  br i1 %i.bs, label %.split5._crit_edge.i.1.i, label %bb.i

.split5._crit_edge.i.1.i:                         ; preds = %.backedge.i.1.i, %.split5.i.1.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_.exit17.i.1.i, %bb.h
  %.sroa.0.0.lcssa.i.1.i = phi ptr [ %i.p, %bb.h ], [ %.sroa.0.06.i.1.i, %.split5.i.1.i ], [ %.sroa.0.06.i.1.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_.exit17.i.1.i ], [ %i.h, %.backedge.i.1.i ]
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.lcssa.i.1.i, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false), !alias.scope !1125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1125
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB8_SB18_16sort_unstable_byNCNvMs2_B2u_NtB2u_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0EB2w_.exit.1.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB8_SB18_16sort_unstable_byNCNvMs2_B2u_NtB2u_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0EB2w_.exit.1.i: ; preds = %.split5._crit_edge.i.1.i, %.split.i.1.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0B1V_.exit.i36.1.i
  %i.bt = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.bt, %i.i
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB8_SB18_16sort_unstable_byNCNvMs2_B2u_NtB2u_20SemanticIndexBuilder37synthesize_nested_binding_definitions0E0EB2w_.exit.1.i, %.loopexit.i
  %i.bu = add nsw i64 %1, -1                      ; 2 uses
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB8_SB1f_16sort_unstable_byNCNvMs2_B2B_NtB2B_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0E0EB2D_:bb.a
  %i.gr = sub nsw i64 %.sroa.0.0.i.i.i.i9.i.i, %.sroa.0.0.i10.i.i.i12.i.i
  %spec.select.i.i.i15.i.i = select i1 %i.gq, i64 %i.gr, i64 %i.gp
  %i.gs = icmp slt i64 %spec.select.i.i.i15.i.i, 0
  br i1 %i.gs, label %.backedge.i.i, label %.split5._crit_edge.i.i

.backedge.i.i:                                    ; preds = %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0E0B1V_.exit17.i.i, %.split5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.06.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.gb, i64 40, i1 false), !alias.scope !1264
  %i.gt = icmp eq ptr %i.gb, %i.b
  br i1 %i.gt, label %.split5._crit_edge.i.i, label %bb.s

.split5._crit_edge.i.i:                           ; preds = %.backedge.i.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0E0B1V_.exit17.i.i, %.split5.i.i, %bb.r
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.eq, %bb.r ], [ %.sroa.0.06.i.i, %.split5.i.i ], [ %.sroa.0.06.i.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0E0B1V_.exit17.i.i ], [ %i.b, %.backedge.i.i ]
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.eo, i64 40, i1 false), !alias.scope !1265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1265
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB8_SB18_16sort_unstable_byNCNvMs2_B2u_NtB2u_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0E0EB2w_.exit.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB8_SB18_16sort_unstable_byNCNvMs2_B2u_NtB2u_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0E0EB2w_.exit.i: ; preds = %.split5._crit_edge.i.i, %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EE16sort_unstable_byNCNvMs2_B1T_NtB1T_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0E0B1V_.exit.i36.i, %.split.i.i
  %i.gu = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gu, %i.e
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtCs2O29vuvTAEJ_14ty_python_core7builder17NestedDeclarationj1_EENCINvMB8_SB1s_16sort_unstable_byNCNvMs2_B2O_NtB2O_20SemanticIndexBuilder44synthesize_comprehension_binding_definitions0E0EB2Q_.exit: ; preds = %bb.a, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB1k_11ScopedUseIdENCINvMB8_SB1f_16sort_unstable_byNCNvMs2_NtB1m_6frozenINtB3o_9FrozenMapB1g_B2q_E12from_entries0E0EB1m_(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1336 {
bb.a:
  %i.a = alloca [384 x i8], align 8               ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB1x_11ScopedUseIdENCINvMB8_SB1s_16sort_unstable_byNCNvMs2_NtB1z_6frozenINtB3B_9FrozenMapB1t_B2D_E12from_entries0E0EB1z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %1, 32
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 12 uses
  %i.e = icmp samesign ugt i64 %1, 15
  br i1 %i.e, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %1, 7
  br i1 %i.f, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %1 ; 2 uses
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB1e_11ScopedUseIdENCINvMB8_SB19_16sort_unstable_byNCNvMs2_NtB1g_6frozenINtB3i_9FrozenMapB1a_B2k_E12from_entries0E0EB1g_(ptr noundef nonnull align 4 %0, ptr noundef nonnull align 4 %i.a, ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB1e_11ScopedUseIdENCINvMB8_SB19_16sort_unstable_byNCNvMs2_NtB1g_6frozenINtB3i_9FrozenMapB1a_B2k_E12from_entries0E0EB1g_(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8.i.i = load i32, ptr %i.k, align 4, !range !7, !alias.scope !1337, !noundef !5
  %.val9.i.i = load i32, ptr %0, align 4, !range !7, !alias.scope !1337, !noundef !5
  %i.l = icmp ult i32 %.val8.i.i, %.val9.i.i      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6.i.i = load i32, ptr %i.m, align 4, !range !7, !alias.scope !1337, !noundef !5
  %.val7.i.i = load i32, ptr %i.n, align 4, !range !7, !alias.scope !1337, !noundef !5
  %i.o = icmp ult i32 %.val6.i.i, %.val7.i.i      ; 2 uses
  %i.p = zext i1 %i.l to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.p ; 3 uses
  %i.r = xor i1 %i.l, true
  %i.s = zext i1 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.s ; 4 uses
  %i.u = select i1 %i.o, i64 3, i64 2
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.u ; 4 uses
  %i.w = select i1 %i.o, i64 2, i64 3
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 3 uses
  %.val4.i.i = load i32, ptr %i.v, align 4, !range !7, !alias.scope !1337, !noundef !5
  %.val5.i.i = load i32, ptr %i.q, align 4, !range !7, !alias.scope !1337, !noundef !5
  %i.y = icmp ult i32 %.val4.i.i, %.val5.i.i      ; 3 uses
  %.val2.i.i = load i32, ptr %i.x, align 4, !range !7, !alias.scope !1337, !noundef !5
  %.val3.i.i = load i32, ptr %i.t, align 4, !range !7, !alias.scope !1337, !noundef !5
  %i.z = icmp ult i32 %.val2.i.i, %.val3.i.i      ; 3 uses
  %i.aa = select i1 %i.y, ptr %i.v, ptr %i.q, !unpredictable !5
  %i.ab = select i1 %i.z, ptr %i.t, ptr %i.x, !unpredictable !5
  %i.ac = select i1 %i.z, ptr %i.v, ptr %i.t, !unpredictable !5
  %i.ad = select i1 %i.y, ptr %i.q, ptr %i.ac, !unpredictable !5 ; 3 uses
  %i.ae = select i1 %i.y, ptr %i.t, ptr %i.v, !unpredictable !5
  %i.af = select i1 %i.z, ptr %i.x, ptr %i.ae, !unpredictable !5 ; 3 uses
  %.val.i.i = load i32, ptr %i.af, align 4, !range !7, !alias.scope !1337, !noundef !5
  %.val1.i.i = load i32, ptr %i.ad, align 4, !range !7, !alias.scope !1337, !noundef !5
  %i.ag = icmp ult i32 %.val.i.i, %.val1.i.i      ; 2 uses
  %i.ah = select i1 %i.ag, ptr %i.af, ptr %i.ad, !unpredictable !5
  %i.ai = select i1 %i.ag, ptr %i.ad, ptr %i.af, !unpredictable !5
  %i.aj = load i64, ptr %i.aa, align 4, !alias.scope !1337
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !1338
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = load i64, ptr %i.ah, align 4, !alias.scope !1337
  store i64 %i.al, ptr %i.ak, align 8, !alias.scope !1338
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.an = load i64, ptr %i.ai, align 4, !alias.scope !1337
  store i64 %i.an, ptr %i.am, align 8, !alias.scope !1338
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ap = load i64, ptr %i.ab, align 4, !alias.scope !1337
  store i64 %i.ap, ptr %i.ao, align 8, !alias.scope !1338
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d ; 8 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.val8.i30.i = load i32, ptr %i.as, align 4, !range !7, !alias.scope !1337, !noundef !5
  %.val9.i31.i = load i32, ptr %i.aq, align 4, !range !7, !alias.scope !1337, !noundef !5
  %i.at = icmp ult i32 %.val8.i30.i, %.val9.i31.i ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.val6.i32.i = load i32, ptr %i.au, align 4, !range !7, !alias.scope !1337, !noundef !5
  %.val7.i33.i = load i32, ptr %i.av, align 4, !range !7, !alias.scope !1337, !noundef !5
  %i.aw = icmp ult i32 %.val6.i32.i, %.val7.i33.i ; 2 uses
  %i.ax = zext i1 %i.at to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ax ; 3 uses
  %i.az = xor i1 %i.at, true
  %i.ba = zext i1 %i.az to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ba ; 4 uses
  %i.bc = select i1 %i.aw, i64 3, i64 2
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.bc ; 4 uses
  %i.be = select i1 %i.aw, i64 2, i64 3
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.be ; 3 uses
  %.val4.i34.i = load i32, ptr %i.bd, align 4, !range !7, !alias.scope !1337, !noundef !5
  %.val5.i35.i = load i32, ptr %i.ay, align 4, !range !7, !alias.scope !1337, !noundef !5
  %i.bg = icmp ult i32 %.val4.i34.i, %.val5.i35.i ; 3 uses
  %.val2.i36.i = load i32, ptr %i.bf, align 4, !range !7, !alias.scope !1337, !noundef !5
  %.val3.i37.i = load i32, ptr %i.bb, align 4, !range !7, !alias.scope !1337, !noundef !5
  %i.bh = icmp ult i32 %.val2.i36.i, %.val3.i37.i ; 3 uses
  %i.bi = select i1 %i.bg, ptr %i.bd, ptr %i.ay, !unpredictable !5
  %i.bj = select i1 %i.bh, ptr %i.bb, ptr %i.bf, !unpredictable !5
  %i.bk = select i1 %i.bh, ptr %i.bd, ptr %i.bb, !unpredictable !5
  %i.bl = select i1 %i.bg, ptr %i.ay, ptr %i.bk, !unpredictable !5 ; 3 uses
  %i.bm = select i1 %i.bg, ptr %i.bb, ptr %i.bd, !unpredictable !5
  %i.bn = select i1 %i.bh, ptr %i.bf, ptr %i.bm, !unpredictable !5 ; 3 uses
  %.val.i38.i = load i32, ptr %i.bn, align 4, !range !7, !alias.scope !1337, !noundef !5
  %.val1.i39.i = load i32, ptr %i.bl, align 4, !range !7, !alias.scope !1337, !noundef !5
  %i.bo = icmp ult i32 %.val.i38.i, %.val1.i39.i  ; 2 uses
  %i.bp = select i1 %i.bo, ptr %i.bn, ptr %i.bl, !unpredictable !5
  %i.bq = select i1 %i.bo, ptr %i.bl, ptr %i.bn, !unpredictable !5
  %i.br = load i64, ptr %i.bi, align 4, !alias.scope !1337
  store i64 %i.br, ptr %i.ar, align 8, !alias.scope !1338
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bt = load i64, ptr %i.bp, align 4, !alias.scope !1337
  store i64 %i.bt, ptr %i.bs, align 8, !alias.scope !1338
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bv = load i64, ptr %i.bq, align 4, !alias.scope !1337
  store i64 %i.bv, ptr %i.bu, align 8, !alias.scope !1338
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bx = load i64, ptr %i.bj, align 4, !alias.scope !1337
  store i64 %i.bx, ptr %i.bw, align 8, !alias.scope !1338
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.by = load i64, ptr %0, align 4, !alias.scope !1337
  store i64 %i.by, ptr %i.a, align 8, !alias.scope !1338
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d
  %i.cb = load i64, ptr %i.bz, align 4, !alias.scope !1337
  store i64 %i.cb, ptr %i.ca, align 8, !alias.scope !1338
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 4 uses
  %i.cc = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.cd = icmp samesign ult i64 %.sroa.0.0.i, %i.d
  br i1 %i.cd, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB1d_11ScopedUseIdENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1f_6frozenINtB3h_9FrozenMapB19_B2j_E12from_entries0E0EB1f_.exit.i, %bb.i
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.cf = getelementptr [8 x i8], ptr %i.a, i64 %i.d ; 6 uses
  %i.cg = icmp samesign ult i64 %.sroa.0.0.i, %i.cc
  br i1 %i.cg, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB1d_11ScopedUseIdENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1f_6frozenINtB3h_9FrozenMapB19_B2j_E12from_entries0E0EB1f_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.ct, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB1d_11ScopedUseIdENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1f_6frozenINtB3h_9FrozenMapB19_B2j_E12from_entries0E0EB1f_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.sroa.05.08.1.i
  %.idx38 = shl nuw nsw i64 %.sroa.05.08.1.i, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx38 ; 3 uses
  %i.cj = load i64, ptr %i.ch, align 4, !alias.scope !1337 ; 3 uses
  store i64 %i.cj, ptr %i.ci, align 8, !alias.scope !1338
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 -8 ; 3 uses
  %i.cl = trunc i64 %i.cj to i32                  ; 2 uses
  %.val10.i.1.i = load i32, ptr %i.ck, align 8, !range !7, !alias.scope !1338, !noundef !5
  %i.cm = icmp ugt i32 %.val10.i.1.i, %i.cl
  br i1 %i.cm, label %.preheader.preheader, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB1d_11ScopedUseIdENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1f_6frozenINtB3h_9FrozenMapB19_B2j_E12from_entries0E0EB1f_.exit.1.i

.preheader.preheader:                             ; preds = %.lr.ph.1.i
  %i.cn = load i64, ptr %i.ck, align 8, !alias.scope !1338
  store i64 %i.cn, ptr %i.ci, align 8, !alias.scope !1338
  %i.co = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.co, label %._crit_edge35, label %.lr.ph34

.preheader:                                       ; preds = %.lr.ph34
  %i.cp = load i64, ptr %i.cr, align 4, !alias.scope !1338
  store i64 %i.cp, ptr %.sroa.0.0.i41.1.i33, align 4, !alias.scope !1338
  %i.cq = icmp eq ptr %i.cr, %i.cf
  br i1 %i.cq, label %._crit_edge35, label %.lr.ph34

.lr.ph34:                                         ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i41.1.i33 = phi ptr [ %i.cr, %.preheader ], [ %i.ck, %.preheader.preheader ] ; 3 uses
  %i.cr = getelementptr inbounds i8, ptr %.sroa.0.0.i41.1.i33, i64 -8 ; 4 uses
  %.val8.i42.1.i = load i32, ptr %i.cr, align 4, !range !7, !alias.scope !1338, !noundef !5
  %i.cs = icmp ugt i32 %.val8.i42.1.i, %i.cl
  br i1 %i.cs, label %.preheader, label %._crit_edge35

._crit_edge35:                                    ; preds = %.preheader, %.lr.ph34, %.preheader.preheader
  %.sroa.0.0.i41.lcssa.1.i = phi ptr [ %i.cf, %.preheader.preheader ], [ %i.cf, %.preheader ], [ %.sroa.0.0.i41.1.i33, %.lr.ph34 ]
  store i64 %i.cj, ptr %.sroa.0.0.i41.lcssa.1.i, align 4, !alias.scope !1338, !noalias !1339
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB1d_11ScopedUseIdENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1f_6frozenINtB3h_9FrozenMapB19_B2j_E12from_entries0E0EB1f_.exit.1.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB1d_11ScopedUseIdENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1f_6frozenINtB3h_9FrozenMapB19_B2j_E12from_entries0E0EB1f_.exit.1.i: ; preds = %._crit_edge35, %.lr.ph.1.i
  %i.ct = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.ct, %i.cc
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB1d_11ScopedUseIdENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1f_6frozenINtB3h_9FrozenMapB19_B2j_E12from_entries0E0EB1f_.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  %i.cu = add nsw i64 %1, -1                      ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cu
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cu
  %i.cx = getelementptr i8, ptr %i.cf, i64 -8
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.cy = getelementptr i8, ptr %i.dj, i64 8      ; 2 uses
  %i.cz = getelementptr i8, ptr %i.di, i64 8
  %i.da = and i64 %1, 1
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.k, label %bb.j

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.de, %.lr.ph.i.i ], [ %0, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.dc, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.a, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.cf, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.dj, %.lr.ph.i.i ], [ %i.cx, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.di, %.lr.ph.i.i ], [ %i.cw, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.dk, %.lr.ph.i.i ], [ %i.cv, %.loopexit.1.i ] ; 2 uses
  %i.dc = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %.sroa.011.0.val.i.i = load i32, ptr %.sroa.011.07.i.i, align 4, !range !7, !alias.scope !1341, !noundef !5
  %.sroa.06.0.val.i.i = load i32, ptr %.sroa.06.08.i.i, align 4, !range !7, !alias.scope !1341, !noundef !5
  %.not = icmp ult i32 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i ; 3 uses
  %..i23.i.i = select i1 %.not, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.dd = load i64, ptr %..i23.i.i, align 4, !alias.scope !1341, !noalias !1342
  store i64 %i.dd, ptr %.sroa.0.010.i.i, align 4, !alias.scope !1337, !noalias !1343
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 8, i64 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 0, i64 8
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 8 ; 2 uses
  %.sroa.017.0.val.i.i = load i32, ptr %.sroa.017.05.i.i, align 4, !range !7, !alias.scope !1341, !noundef !5
  %.sroa.015.0.val.i.i = load i32, ptr %.sroa.015.06.i.i, align 4, !range !7, !alias.scope !1341, !noundef !5
  %i.df = icmp ult i32 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i ; 3 uses
  %..i.i.i = select i1 %i.df, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.dg = xor i1 %i.df, true
  %i.dh = load i64, ptr %..i.i.i, align 4, !alias.scope !1341, !noalias !1344
  store i64 %i.dh, ptr %.sroa.019.04.i.i, align 4, !alias.scope !1337, !noalias !1345
  %.neg.i.i.i = sext i1 %i.dg to i64
  %i.di = getelementptr [8 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.df to i64
  %i.dj = getelementptr [8 x i8], ptr %.sroa.015.06.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -8
  %exitcond.not.i.i = icmp eq i64 %i.dc, %i.d
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %.not26 = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.cy ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %.not26, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel
  %i.dl = load i64, ptr %.sroa.06.0..sroa.011.0.i.i, align 4, !alias.scope !1341
  store i64 %i.dl, ptr %i.de, align 4, !alias.scope !1337, !noalias !1340
  %.sroa.sel17.idx.sroa.sel.idx = select i1 %.not26, i64 8, i64 0
  %.sroa.sel17.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel17.idx.sroa.sel.idx
  %.sroa.sel.idx.sroa.sel.idx = select i1 %.not26, i64 0, i64 8
  %.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel, %bb.j ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel17.idx.sroa.sel, %bb.j ]
  %i.dm = icmp ne ptr %.sroa.06.1.i.i, %i.cy
  %i.dn = icmp ne ptr %.sroa.011.1.i.i, %i.cz
  %or.cond.i.i = select i1 %i.dm, i1 true, i1 %i.dn, !prof !10
  br i1 %or.cond.i.i, label %bb.l, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB1x_11ScopedUseIdENCINvMB8_SB1s_16sort_unstable_byNCNvMs2_NtB1z_6frozenINtB3B_9FrozenMapB1t_B2D_E12from_entries0E0EB1z_.exit, !prof !10

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #31
          to label %.noexc.i unwind label %bb.m, !noalias !1346

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = shl nuw nsw i64 %1, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 8 %i.a, i64 %i.dp, i1 false), !alias.scope !1346, !noalias !1347
  resume { ptr, i32 } %i.do

.lr.ph.i:                                         ; preds = %bb.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB1d_11ScopedUseIdENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1f_6frozenINtB3h_9FrozenMapB19_B2j_E12from_entries0E0EB1f_.exit.i
  %.sroa.05.08.i = phi i64 [ %i.ec, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB1d_11ScopedUseIdENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1f_6frozenINtB3h_9FrozenMapB19_B2j_E12from_entries0E0EB1f_.exit.i ], [ %.sroa.0.0.i, %bb.i ] ; 4 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.08.i
  %.idx = shl nuw nsw i64 %.sroa.05.08.i, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 3 uses
  %i.ds = load i64, ptr %i.dq, align 4, !alias.scope !1337 ; 3 uses
  store i64 %i.ds, ptr %i.dr, align 8, !alias.scope !1338
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 -8 ; 3 uses
  %i.du = trunc i64 %i.ds to i32                  ; 2 uses
  %.val10.i.i = load i32, ptr %i.dt, align 8, !range !7, !alias.scope !1338, !noundef !5
  %i.dv = icmp ugt i32 %.val10.i.i, %i.du
  br i1 %i.dv, label %.preheader5.preheader, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB1d_11ScopedUseIdENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1f_6frozenINtB3h_9FrozenMapB19_B2j_E12from_entries0E0EB1f_.exit.i

.preheader5.preheader:                            ; preds = %.lr.ph.i
  %i.dw = load i64, ptr %i.dt, align 8, !alias.scope !1338
  store i64 %i.dw, ptr %i.dr, align 8, !alias.scope !1338
  %i.dx = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.dx, label %._crit_edge, label %.lr.ph

.preheader5:                                      ; preds = %.lr.ph
  %i.dy = load i64, ptr %i.ea, align 4, !alias.scope !1338
  store i64 %i.dy, ptr %.sroa.0.0.i41.i31, align 4, !alias.scope !1338
  %i.dz = icmp eq ptr %i.ea, %i.a
  br i1 %i.dz, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader5.preheader, %.preheader5
  %.sroa.0.0.i41.i31 = phi ptr [ %i.ea, %.preheader5 ], [ %i.dt, %.preheader5.preheader ] ; 3 uses
  %i.ea = getelementptr inbounds i8, ptr %.sroa.0.0.i41.i31, i64 -8 ; 4 uses
  %.val8.i42.i = load i32, ptr %i.ea, align 4, !range !7, !alias.scope !1338, !noundef !5
  %i.eb = icmp ugt i32 %.val8.i42.i, %i.du
  br i1 %i.eb, label %.preheader5, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader5, %.lr.ph, %.preheader5.preheader
  %.sroa.0.0.i41.lcssa.i = phi ptr [ %i.a, %.preheader5.preheader ], [ %i.a, %.preheader5 ], [ %.sroa.0.0.i41.i31, %.lr.ph ]
  store i64 %i.ds, ptr %.sroa.0.0.i41.lcssa.i, align 4, !alias.scope !1338, !noalias !1339
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB1d_11ScopedUseIdENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1f_6frozenINtB3h_9FrozenMapB19_B2j_E12from_entries0E0EB1f_.exit.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB1d_11ScopedUseIdENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1f_6frozenINtB3h_9FrozenMapB19_B2j_E12from_entries0E0EB1f_.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.ec = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ec, %i.d
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB1x_11ScopedUseIdENCINvMB8_SB1s_16sort_unstable_byNCNvMs2_NtB1z_6frozenINtB3B_9FrozenMapB1t_B2D_E12from_entries0E0EB1z_.exit: ; preds = %bb.a, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB1m_23NarrowingAliasPredicateENCINvMB8_SB1f_16sort_unstable_byNCNvMs2_NtB1m_6frozenINtB3A_9FrozenMapB1g_B2q_E12from_entries0E0EB1m_(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 0, 768614336404564651) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1367 {
bb.a:
  %i.a = alloca [576 x i8], align 4               ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1369)
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB1z_23NarrowingAliasPredicateENCINvMB8_SB1s_16sort_unstable_byNCNvMs2_NtB1z_6frozenINtB3N_9FrozenMapB1t_B2D_E12from_entries0E0EB1z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %1, 32
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 12 uses
  %i.e = icmp samesign ugt i64 %1, 15
  br i1 %i.e, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %1, 7
  br i1 %i.f, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %1 ; 2 uses
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB1g_23NarrowingAliasPredicateENCINvMB8_SB19_16sort_unstable_byNCNvMs2_NtB1g_6frozenINtB3u_9FrozenMapB1a_B2k_E12from_entries0E0EB1g_(ptr noundef nonnull align 4 %0, ptr noundef nonnull align 4 %i.a, ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.d
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB1g_23NarrowingAliasPredicateENCINvMB8_SB19_16sort_unstable_byNCNvMs2_NtB1g_6frozenINtB3u_9FrozenMapB1a_B2k_E12from_entries0E0EB1g_(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val8.i.i = load i32, ptr %i.k, align 4, !range !7, !alias.scope !1368, !noundef !5
  %.val9.i.i = load i32, ptr %0, align 4, !range !7, !alias.scope !1368, !noundef !5
  %i.l = icmp ult i32 %.val8.i.i, %.val9.i.i      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val6.i.i = load i32, ptr %i.m, align 4, !range !7, !alias.scope !1368, !noundef !5
  %.val7.i.i = load i32, ptr %i.n, align 4, !range !7, !alias.scope !1368, !noundef !5
  %i.o = icmp ult i32 %.val6.i.i, %.val7.i.i      ; 2 uses
  %i.p = zext i1 %i.l to i64
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.p ; 3 uses
  %i.r = xor i1 %i.l, true
  %i.s = zext i1 %i.r to i64
  %i.t = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.s ; 4 uses
  %i.u = select i1 %i.o, i64 3, i64 2
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.u ; 4 uses
  %i.w = select i1 %i.o, i64 2, i64 3
  %i.x = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.w ; 3 uses
  %.val4.i.i = load i32, ptr %i.v, align 4, !range !7, !alias.scope !1368, !noundef !5
  %.val5.i.i = load i32, ptr %i.q, align 4, !range !7, !alias.scope !1368, !noundef !5
  %i.y = icmp ult i32 %.val4.i.i, %.val5.i.i      ; 3 uses
  %.val2.i.i = load i32, ptr %i.x, align 4, !range !7, !alias.scope !1368, !noundef !5
  %.val3.i.i = load i32, ptr %i.t, align 4, !range !7, !alias.scope !1368, !noundef !5
  %i.z = icmp ult i32 %.val2.i.i, %.val3.i.i      ; 3 uses
  %i.aa = select i1 %i.y, ptr %i.v, ptr %i.q, !unpredictable !5
  %i.ab = select i1 %i.z, ptr %i.t, ptr %i.x, !unpredictable !5
  %i.ac = select i1 %i.z, ptr %i.v, ptr %i.t, !unpredictable !5
  %i.ad = select i1 %i.y, ptr %i.q, ptr %i.ac, !unpredictable !5 ; 3 uses
  %i.ae = select i1 %i.y, ptr %i.t, ptr %i.v, !unpredictable !5
  %i.af = select i1 %i.z, ptr %i.x, ptr %i.ae, !unpredictable !5 ; 3 uses
  %.val.i.i = load i32, ptr %i.af, align 4, !range !7, !alias.scope !1368, !noundef !5
  %.val1.i.i = load i32, ptr %i.ad, align 4, !range !7, !alias.scope !1368, !noundef !5
  %i.ag = icmp ult i32 %.val.i.i, %.val1.i.i      ; 2 uses
  %i.ah = select i1 %i.ag, ptr %i.af, ptr %i.ad, !unpredictable !5
  %i.ai = select i1 %i.ag, ptr %i.ad, ptr %i.af, !unpredictable !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.aa, i64 12, i1 false), !alias.scope !1370
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aj, ptr noundef nonnull align 4 dereferenceable(12) %i.ah, i64 12, i1 false), !alias.scope !1370
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ak, ptr noundef nonnull align 4 dereferenceable(12) %i.ai, i64 12, i1 false), !alias.scope !1370
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.al, ptr noundef nonnull align 4 dereferenceable(12) %i.ab, i64 12, i1 false), !alias.scope !1370
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.d ; 8 uses
  %i.an = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.d ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %.val8.i30.i = load i32, ptr %i.ao, align 4, !range !7, !alias.scope !1368, !noundef !5
  %.val9.i31.i = load i32, ptr %i.am, align 4, !range !7, !alias.scope !1368, !noundef !5
  %i.ap = icmp ult i32 %.val8.i30.i, %.val9.i31.i ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 36
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.val6.i32.i = load i32, ptr %i.aq, align 4, !range !7, !alias.scope !1368, !noundef !5
  %.val7.i33.i = load i32, ptr %i.ar, align 4, !range !7, !alias.scope !1368, !noundef !5
  %i.as = icmp ult i32 %.val6.i32.i, %.val7.i33.i ; 2 uses
  %i.at = zext i1 %i.ap to i64
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %i.at ; 3 uses
  %i.av = xor i1 %i.ap, true
  %i.aw = zext i1 %i.av to i64
  %i.ax = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %i.aw ; 4 uses
  %i.ay = select i1 %i.as, i64 3, i64 2
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %i.ay ; 4 uses
  %i.ba = select i1 %i.as, i64 2, i64 3
  %i.bb = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %i.ba ; 3 uses
  %.val4.i34.i = load i32, ptr %i.az, align 4, !range !7, !alias.scope !1368, !noundef !5
  %.val5.i35.i = load i32, ptr %i.au, align 4, !range !7, !alias.scope !1368, !noundef !5
  %i.bc = icmp ult i32 %.val4.i34.i, %.val5.i35.i ; 3 uses
  %.val2.i36.i = load i32, ptr %i.bb, align 4, !range !7, !alias.scope !1368, !noundef !5
  %.val3.i37.i = load i32, ptr %i.ax, align 4, !range !7, !alias.scope !1368, !noundef !5
  %i.bd = icmp ult i32 %.val2.i36.i, %.val3.i37.i ; 3 uses
  %i.be = select i1 %i.bc, ptr %i.az, ptr %i.au, !unpredictable !5
  %i.bf = select i1 %i.bd, ptr %i.ax, ptr %i.bb, !unpredictable !5
  %i.bg = select i1 %i.bd, ptr %i.az, ptr %i.ax, !unpredictable !5
  %i.bh = select i1 %i.bc, ptr %i.au, ptr %i.bg, !unpredictable !5 ; 3 uses
  %i.bi = select i1 %i.bc, ptr %i.ax, ptr %i.az, !unpredictable !5
  %i.bj = select i1 %i.bd, ptr %i.bb, ptr %i.bi, !unpredictable !5 ; 3 uses
  %.val.i38.i = load i32, ptr %i.bj, align 4, !range !7, !alias.scope !1368, !noundef !5
  %.val1.i39.i = load i32, ptr %i.bh, align 4, !range !7, !alias.scope !1368, !noundef !5
  %i.bk = icmp ult i32 %.val.i38.i, %.val1.i39.i  ; 2 uses
  %i.bl = select i1 %i.bk, ptr %i.bj, ptr %i.bh, !unpredictable !5
  %i.bm = select i1 %i.bk, ptr %i.bh, ptr %i.bj, !unpredictable !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.an, ptr noundef nonnull align 4 dereferenceable(12) %i.be, i64 12, i1 false), !alias.scope !1370
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bn, ptr noundef nonnull align 4 dereferenceable(12) %i.bl, i64 12, i1 false), !alias.scope !1370
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bo, ptr noundef nonnull align 4 dereferenceable(12) %i.bm, i64 12, i1 false), !alias.scope !1370
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bp, ptr noundef nonnull align 4 dereferenceable(12) %i.bf, i64 12, i1 false), !alias.scope !1370
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !alias.scope !1370
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.d
  %i.br = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.br, ptr noundef nonnull align 4 dereferenceable(12) %i.bq, i64 12, i1 false), !alias.scope !1370
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 4 uses
  %i.bs = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.bt = icmp samesign ult i64 %.sroa.0.0.i, %i.d
  br i1 %i.bt, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB1f_23NarrowingAliasPredicateENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1f_6frozenINtB3t_9FrozenMapB19_B2j_E12from_entries0E0EB1f_.exit.i, %bb.i
  %i.bu = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %i.d
  %i.bv = getelementptr [12 x i8], ptr %i.a, i64 %i.d ; 6 uses
  %i.bw = icmp samesign ult i64 %.sroa.0.0.i, %i.bs
  br i1 %i.bw, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB1f_23NarrowingAliasPredicateENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1f_6frozenINtB3t_9FrozenMapB19_B2j_E12from_entries0E0EB1f_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.cf, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB1f_23NarrowingAliasPredicateENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1f_6frozenINtB3t_9FrozenMapB19_B2j_E12from_entries0E0EB1f_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [12 x i8], ptr %i.bu, i64 %.sroa.05.08.1.i
  %.idx38 = mul nuw nsw i64 %.sroa.05.08.1.i, 12
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx38 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.by, ptr noundef nonnull align 4 dereferenceable(12) %i.bx, i64 12, i1 false), !alias.scope !1370
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -12 ; 3 uses
  %.val9.i40.1.i = load i32, ptr %i.by, align 4, !range !7, !alias.scope !1369, !noundef !5 ; 3 uses
  %.val10.i.1.i = load i32, ptr %i.bz, align 4, !range !7, !alias.scope !1369, !noundef !5
  %i.ca = icmp ult i32 %.val9.i40.1.i, %.val10.i.1.i
  br i1 %i.ca, label %bb.j, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB1f_23NarrowingAliasPredicateENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1f_6frozenINtB3t_9FrozenMapB19_B2j_E12from_entries0E0EB1f_.exit.1.i

bb.j:                                             ; preds = %.lr.ph.1.i
  %.sroa.49.0..sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %.sroa.49.0.copyload.i.1.i = load i64, ptr %.sroa.49.0..sroa_idx.i.1.i, align 4, !alias.scope !1369
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.by, ptr noundef nonnull align 4 dereferenceable(12) %i.bz, i64 12, i1 false), !alias.scope !1369
  %i.cb = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.cb, label %._crit_edge34, label %.lr.ph33

bb.k:                                             ; preds = %.lr.ph33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.i41.1.i31, ptr noundef nonnull align 4 dereferenceable(12) %i.cd, i64 12, i1 false), !alias.scope !1369
  %i.cc = icmp eq ptr %i.cd, %i.bv
  br i1 %i.cc, label %._crit_edge34, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.j, %bb.k
  %.sroa.0.0.i41.1.i31 = phi ptr [ %i.cd, %bb.k ], [ %i.bz, %bb.j ] ; 3 uses
  %i.cd = getelementptr inbounds i8, ptr %.sroa.0.0.i41.1.i31, i64 -12 ; 4 uses
  %.val8.i42.1.i = load i32, ptr %i.cd, align 4, !range !7, !alias.scope !1369, !noundef !5
  %i.ce = icmp ult i32 %.val9.i40.1.i, %.val8.i42.1.i
  br i1 %i.ce, label %bb.k, label %._crit_edge34

._crit_edge34:                                    ; preds = %bb.k, %.lr.ph33, %bb.j
  %.sroa.0.0.i41.lcssa.1.i = phi ptr [ %i.bv, %bb.j ], [ %i.bv, %bb.k ], [ %.sroa.0.0.i41.1.i31, %.lr.ph33 ] ; 2 uses
  store i32 %.val9.i40.1.i, ptr %.sroa.0.0.i41.lcssa.1.i, align 4, !alias.scope !1369, !noalias !1371
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41.lcssa.1.i, i64 4
  store i64 %.sroa.49.0.copyload.i.1.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 4, !alias.scope !1369, !noalias !1371
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtB1f_23NarrowingAliasPredicateENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1f_6frozenINtB3t_9FrozenMapB19_B2j_E12from_entries0E0EB1f_.exit.1.i

end_hunk_2
begin_hunk_3_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNvYB1m_NtNtBa_3cmp10PartialOrd2ltECs2O29vuvTAEJ_14ty_python_core:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.06.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false)
  %i.bj = icmp eq ptr %i.ar, %0
  br i1 %i.bj, label %.split5._crit_edge.i, label %bb.f

.split5._crit_edge.i:                             ; preds = %.backedge.i, %_RNvYNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutCs2O29vuvTAEJ_14ty_python_core.exit17.i, %.split5.i, %bb.e
  %.sroa.0.0.lcssa.i = phi ptr [ %0, %bb.e ], [ %0, %.backedge.i ], [ %.sroa.0.06.i, %_RNvYNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutCs2O29vuvTAEJ_14ty_python_core.exit17.i ], [ %.sroa.0.06.i, %.split5.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.lcssa.i, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !3022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNvYB18_NtNtBa_3cmp10PartialOrd2ltECs2O29vuvTAEJ_14ty_python_core.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNvYB18_NtNtBa_3cmp10PartialOrd2ltECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %.split.i, %_RNvYNvYNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtBS_3ops8function5FnMutTRB5_B1Y_EE8call_mutCs2O29vuvTAEJ_14ty_python_core.exit.i, %.split5._crit_edge.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bk, %i.c
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtB1r_7use_def23DefinitionsAtDefinitionNtB2m_18InternedBindingsIdNtB2m_22InternedDeclarationsIdEENCINvMB8_SB1m_16sort_unstable_byNCNvMs2_NtB1r_6frozenINtB4z_9FrozenMapB1n_B2j_E12from_entries0E0EB1r_(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 576460752303423488) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #6 personality ptr @rust_eh_personality !guid !3027 {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtB1d_7use_def23DefinitionsAtDefinitionNtB28_18InternedBindingsIdNtB28_22InternedDeclarationsIdEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB4l_9FrozenMapB19_B25_E12from_entries0E0EB1d_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtB1d_7use_def23DefinitionsAtDefinitionNtB28_18InternedBindingsIdNtB28_22InternedDeclarationsIdEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB4l_9FrozenMapB19_B25_E12from_entries0E0EB1d_.exit
  %.sroa.0.05 = phi ptr [ %i.s, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtB1d_7use_def23DefinitionsAtDefinitionNtB28_18InternedBindingsIdNtB28_22InternedDeclarationsIdEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB4l_9FrozenMapB19_B25_E12from_entries0E0EB1d_.exit ], [ %i.c, %.lr.ph.preheader ] ; 7 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16 ; 4 uses
  %.val11.i = load i32, ptr %.sroa.0.05, align 4, !range !7, !noundef !5 ; 5 uses
  %i.e = getelementptr i8, ptr %.sroa.0.05, i64 4
  %.val12.i = load i32, ptr %i.e, align 4         ; 3 uses
  %.val13.i = load i32, ptr %i.d, align 4, !range !7, !noundef !5 ; 2 uses
  %i.f = getelementptr i8, ptr %.sroa.0.05, i64 -12
  %.val14.i = load i32, ptr %i.f, align 4
  %i.g = icmp eq i32 %.val11.i, %.val13.i
  %i.h = icmp ult i32 %.val12.i, %.val14.i
  %i.i = icmp ult i32 %.val11.i, %.val13.i
  %i.j = select i1 %i.g, i1 %i.h, i1 %i.i
  br i1 %i.j, label %bb.d, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtB1d_7use_def23DefinitionsAtDefinitionNtB28_18InternedBindingsIdNtB28_22InternedDeclarationsIdEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB4l_9FrozenMapB19_B25_E12from_entries0E0EB1d_.exit

bb.d:                                             ; preds = %.lr.ph
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8
  %.sroa.512.0.copyload.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.05, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.k = icmp eq ptr %i.d, %0
  br i1 %i.k, label %._crit_edge11, label %.lr.ph10

bb.e:                                             ; preds = %.lr.ph10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.0.i8, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false)
  %i.l = icmp eq ptr %i.m, %0
  br i1 %i.l, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i8 = phi ptr [ %i.m, %bb.e ], [ %i.d, %bb.d ] ; 4 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -16 ; 4 uses
  %.val9.i = load i32, ptr %i.m, align 4, !range !7, !noundef !5 ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0.i8, i64 -12
  %.val10.i = load i32, ptr %i.n, align 4
  %i.o = icmp eq i32 %.val11.i, %.val9.i
  %i.p = icmp ult i32 %.val12.i, %.val10.i
  %i.q = icmp ult i32 %.val11.i, %.val9.i
  %i.r = select i1 %i.o, i1 %i.p, i1 %i.q
  br i1 %i.r, label %bb.e, label %._crit_edge11

._crit_edge11:                                    ; preds = %bb.e, %.lr.ph10, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i8, %.lr.ph10 ] ; 3 uses
  store i32 %.val11.i, ptr %.sroa.0.0.i.lcssa, align 4, !noalias !3028
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 4
  store i32 %.val12.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 4, !noalias !3028
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  store i64 %.sroa.512.0.copyload.i, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, align 4, !noalias !3028
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtB1d_7use_def23DefinitionsAtDefinitionNtB28_18InternedBindingsIdNtB28_22InternedDeclarationsIdEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB4l_9FrozenMapB19_B25_E12from_entries0E0EB1d_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtB1d_7use_def23DefinitionsAtDefinitionNtB28_18InternedBindingsIdNtB28_22InternedDeclarationsIdEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB4l_9FrozenMapB19_B25_E12from_entries0E0EB1d_.exit: ; preds = %.lr.ph, %._crit_edge11
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtB1r_7use_def23DefinitionsAtDefinitionNtNtB2m_11place_state8BindingsNtB31_12DeclarationsEENCINvMB8_SB1m_20sort_unstable_by_keyB1n_NCNvMsl_B2m_NtB2m_16UseDefMapBuilder32intern_definitions_by_definition0E0EB1r_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 115292150460684698) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #6 personality ptr @rust_eh_personality !guid !3033 {
bb.a:
  %.sroa.6.i = alloca [72 x i8], align 8          ; 4 uses
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtB1d_7use_def23DefinitionsAtDefinitionNtNtB28_11place_state8BindingsNtB2N_12DeclarationsEENCINvMB8_SB18_20sort_unstable_by_keyB19_NCNvMsl_B28_NtB28_16UseDefMapBuilder32intern_definitions_by_definition0E0EB1d_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtB1d_7use_def23DefinitionsAtDefinitionNtNtB28_11place_state8BindingsNtB2N_12DeclarationsEENCINvMB8_SB18_20sort_unstable_by_keyB19_NCNvMsl_B28_NtB28_16UseDefMapBuilder32intern_definitions_by_definition0E0EB1d_.exit
  %.sroa.0.05 = phi ptr [ %i.s, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtB1d_7use_def23DefinitionsAtDefinitionNtNtB28_11place_state8BindingsNtB2N_12DeclarationsEENCINvMB8_SB18_20sort_unstable_by_keyB19_NCNvMsl_B28_NtB28_16UseDefMapBuilder32intern_definitions_by_definition0E0EB1d_.exit ], [ %i.c, %.lr.ph.preheader ] ; 7 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -80 ; 4 uses
  %.val11.i = load i32, ptr %.sroa.0.05, align 8, !range !7, !noundef !5 ; 5 uses
  %i.e = getelementptr i8, ptr %.sroa.0.05, i64 4
  %.val12.i = load i32, ptr %i.e, align 4, !noundef !5 ; 3 uses
  %.val13.i = load i32, ptr %i.d, align 8, !range !7, !noundef !5 ; 2 uses
  %i.f = getelementptr i8, ptr %.sroa.0.05, i64 -76
  %.val14.i = load i32, ptr %i.f, align 4, !noundef !5
  %i.g = icmp eq i32 %.val11.i, %.val13.i
  %i.h = icmp ult i32 %.val12.i, %.val14.i
  %i.i = icmp ult i32 %.val11.i, %.val13.i
  %i.j = select i1 %i.g, i1 %i.h, i1 %i.i
  br i1 %i.j, label %bb.d, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtB1d_7use_def23DefinitionsAtDefinitionNtNtB28_11place_state8BindingsNtB2N_12DeclarationsEENCINvMB8_SB18_20sort_unstable_by_keyB19_NCNvMsl_B28_NtB28_16UseDefMapBuilder32intern_definitions_by_definition0E0EB1d_.exit

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.511.0..sroa_idx.i, i64 72, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 80, i1 false)
  %i.k = icmp eq ptr %i.d, %0
  br i1 %i.k, label %._crit_edge11, label %.lr.ph10

bb.e:                                             ; preds = %.lr.ph10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.0.i8, ptr noundef nonnull align 8 dereferenceable(80) %i.m, i64 80, i1 false)
  %i.l = icmp eq ptr %i.m, %0
  br i1 %i.l, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i8 = phi ptr [ %i.m, %bb.e ], [ %i.d, %bb.d ] ; 4 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -80 ; 4 uses
  %.val9.i = load i32, ptr %i.m, align 8, !range !7, !noundef !5 ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0.i8, i64 -76
  %.val10.i = load i32, ptr %i.n, align 4, !noundef !5
  %i.o = icmp eq i32 %.val11.i, %.val9.i
  %i.p = icmp ult i32 %.val12.i, %.val10.i
  %i.q = icmp ult i32 %.val11.i, %.val9.i
  %i.r = select i1 %i.o, i1 %i.p, i1 %i.q
  br i1 %i.r, label %bb.e, label %._crit_edge11

._crit_edge11:                                    ; preds = %bb.e, %.lr.ph10, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i8, %.lr.ph10 ] ; 3 uses
  store i32 %.val11.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !3034
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 4
  store i32 %.val12.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 4, !noalias !3034
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.6.i, i64 72, i1 false), !noalias !3034
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtB1d_7use_def23DefinitionsAtDefinitionNtNtB28_11place_state8BindingsNtB2N_12DeclarationsEENCINvMB8_SB18_20sort_unstable_by_keyB19_NCNvMsl_B28_NtB28_16UseDefMapBuilder32intern_definitions_by_definition0E0EB1d_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtB1d_7use_def23DefinitionsAtDefinitionNtNtB28_11place_state8BindingsNtB2N_12DeclarationsEENCINvMB8_SB18_20sort_unstable_by_keyB19_NCNvMsl_B28_NtB28_16UseDefMapBuilder32intern_definitions_by_definition0E0EB1d_.exit: ; preds = %.lr.ph, %._crit_edge11
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 80 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtB1r_9statement9StatementNtNtNtB1r_7ast_ids8node_key17ExpressionNodeKeyEEENCINvMB8_SB1m_16sort_unstable_byNCNvMs2_NtB1r_6frozenINtB4M_9FrozenMapB1n_B2j_E12from_entries0E0EB1r_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #6 personality ptr @rust_eh_personality !guid !3039 {
bb.a:
  %.sroa.6.i = alloca [16 x i8], align 8          ; 4 uses
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtB1d_9statement9StatementNtNtNtB1d_7ast_ids8node_key17ExpressionNodeKeyEEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB4y_9FrozenMapB19_B25_E12from_entries0E0EB1d_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtB1d_9statement9StatementNtNtNtB1d_7ast_ids8node_key17ExpressionNodeKeyEEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB4y_9FrozenMapB19_B25_E12from_entries0E0EB1d_.exit
  %.sroa.0.05 = phi ptr [ %i.s, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtB1d_9statement9StatementNtNtNtB1d_7ast_ids8node_key17ExpressionNodeKeyEEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB4y_9FrozenMapB19_B25_E12from_entries0E0EB1d_.exit ], [ %i.c, %.lr.ph.preheader ] ; 7 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -24 ; 4 uses
  %.val11.i = load i32, ptr %.sroa.0.05, align 4, !range !7, !noundef !5 ; 5 uses
  %i.e = getelementptr i8, ptr %.sroa.0.05, i64 4
  %.val12.i = load i32, ptr %i.e, align 4         ; 3 uses
  %.val13.i = load i32, ptr %i.d, align 4, !range !7, !noundef !5 ; 2 uses
  %i.f = getelementptr i8, ptr %.sroa.0.05, i64 -20
  %.val14.i = load i32, ptr %i.f, align 4
  %i.g = icmp eq i32 %.val11.i, %.val13.i
  %i.h = icmp ult i32 %.val12.i, %.val14.i
  %i.i = icmp ult i32 %.val11.i, %.val13.i
  %i.j = select i1 %i.g, i1 %i.h, i1 %i.i
  br i1 %i.j, label %bb.d, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtB1d_9statement9StatementNtNtNtB1d_7ast_ids8node_key17ExpressionNodeKeyEEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB4y_9FrozenMapB19_B25_E12from_entries0E0EB1d_.exit

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.511.0..sroa_idx.i, i64 16, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.k = icmp eq ptr %i.d, %0
  br i1 %i.k, label %._crit_edge11, label %.lr.ph10

bb.e:                                             ; preds = %.lr.ph10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i8, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.l = icmp eq ptr %i.m, %0
  br i1 %i.l, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i8 = phi ptr [ %i.m, %bb.e ], [ %i.d, %bb.d ] ; 4 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -24 ; 4 uses
  %.val9.i = load i32, ptr %i.m, align 4, !range !7, !noundef !5 ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0.i8, i64 -20
  %.val10.i = load i32, ptr %i.n, align 4
  %i.o = icmp eq i32 %.val11.i, %.val9.i
  %i.p = icmp ult i32 %.val12.i, %.val10.i
  %i.q = icmp ult i32 %.val11.i, %.val9.i
  %i.r = select i1 %i.o, i1 %i.p, i1 %i.q
  br i1 %i.r, label %bb.e, label %._crit_edge11

._crit_edge11:                                    ; preds = %bb.e, %.lr.ph10, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i8, %.lr.ph10 ] ; 3 uses
  store i32 %.val11.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !3040
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 4
  store i32 %.val12.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 4, !noalias !3040
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !noalias !3040
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtB1d_9statement9StatementNtNtNtB1d_7ast_ids8node_key17ExpressionNodeKeyEEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB4y_9FrozenMapB19_B25_E12from_entries0E0EB1d_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtB1d_9statement9StatementNtNtNtB1d_7ast_ids8node_key17ExpressionNodeKeyEEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB4y_9FrozenMapB19_B25_E12from_entries0E0EB1d_.exit: ; preds = %.lr.ph, %._crit_edge11
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1p_10DefinitionEENCINvMB8_SB1m_16sort_unstable_byNCNvMs2_NtB1r_6frozenINtB3X_9FrozenMapB1n_B2q_E12from_entries0E0EB1r_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #6 personality ptr @rust_eh_personality !guid !3045 {
bb.a:
  %.sroa.5.i = alloca [20 x i8], align 4          ; 4 uses
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1b_10DefinitionEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3J_9FrozenMapB19_B2c_E12from_entries0E0EB1d_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1b_10DefinitionEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3J_9FrozenMapB19_B2c_E12from_entries0E0EB1d_.exit
  %.sroa.0.05 = phi ptr [ %i.j, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1b_10DefinitionEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3J_9FrozenMapB19_B2c_E12from_entries0E0EB1d_.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -24 ; 4 uses
  %.val9.i = load i32, ptr %.sroa.0.05, align 4, !range !7, !noundef !5 ; 3 uses
  %.val10.i = load i32, ptr %i.d, align 4, !range !7, !noundef !5
  %i.e = icmp ult i32 %.val9.i, %.val10.i
  br i1 %i.e, label %bb.d, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1b_10DefinitionEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3J_9FrozenMapB19_B2c_E12from_entries0E0EB1d_.exit

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.48.0..sroa_idx.i, i64 20, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %._crit_edge11, label %.lr.ph10

bb.e:                                             ; preds = %.lr.ph10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i8, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.g = icmp eq ptr %i.h, %0
  br i1 %i.g, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i8 = phi ptr [ %i.h, %bb.e ], [ %i.d, %bb.d ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -24 ; 4 uses
  %.val8.i = load i32, ptr %i.h, align 4, !range !7, !noundef !5
  %i.i = icmp ult i32 %.val9.i, %.val8.i
  br i1 %i.i, label %bb.e, label %._crit_edge11

._crit_edge11:                                    ; preds = %bb.e, %.lr.ph10, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i8, %.lr.ph10 ] ; 2 uses
  store i32 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !3046
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i, i64 20, i1 false), !noalias !3046
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1b_10DefinitionEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3J_9FrozenMapB19_B2c_E12from_entries0E0EB1d_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtB1b_10DefinitionEENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3J_9FrozenMapB19_B2c_E12from_entries0E0EB1d_.exit: ; preds = %.lr.ph, %._crit_edge11
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1p_10DefinitionENCINvMB8_SB1m_16sort_unstable_byNCNvMs2_NtB1r_6frozenINtB3n_9FrozenMapB1n_B2q_E12from_entries0E0EB1r_(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 768614336404564651) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #6 personality ptr @rust_eh_personality !guid !3051 {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1b_10DefinitionENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB39_9FrozenMapB19_B2c_E12from_entries0E0EB1d_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1b_10DefinitionENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB39_9FrozenMapB19_B2c_E12from_entries0E0EB1d_.exit
  %.sroa.0.05 = phi ptr [ %i.j, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1b_10DefinitionENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB39_9FrozenMapB19_B2c_E12from_entries0E0EB1d_.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -12 ; 4 uses
  %.val9.i = load i32, ptr %.sroa.0.05, align 4, !range !7, !noundef !5 ; 3 uses
  %.val10.i = load i32, ptr %i.d, align 4, !range !7, !noundef !5
  %i.e = icmp ult i32 %.val9.i, %.val10.i
  br i1 %i.e, label %bb.d, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1b_10DefinitionENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB39_9FrozenMapB19_B2c_E12from_entries0E0EB1d_.exit

bb.d:                                             ; preds = %.lr.ph
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 4
  %.sroa.49.0.copyload.i = load i64, ptr %.sroa.49.0..sroa_idx.i, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.05, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false)
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %._crit_edge11, label %.lr.ph10

bb.e:                                             ; preds = %.lr.ph10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.0.i8, ptr noundef nonnull align 4 dereferenceable(12) %i.h, i64 12, i1 false)
  %i.g = icmp eq ptr %i.h, %0
  br i1 %i.g, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i8 = phi ptr [ %i.h, %bb.e ], [ %i.d, %bb.d ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -12 ; 4 uses
  %.val8.i = load i32, ptr %i.h, align 4, !range !7, !noundef !5
  %i.i = icmp ult i32 %.val9.i, %.val8.i
  br i1 %i.i, label %bb.e, label %._crit_edge11

._crit_edge11:                                    ; preds = %bb.e, %.lr.ph10, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i8, %.lr.ph10 ] ; 2 uses
  store i32 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 4, !noalias !3052
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 4
  store i64 %.sroa.49.0.copyload.i, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, align 4, !noalias !3052
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1b_10DefinitionENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB39_9FrozenMapB19_B2c_E12from_entries0E0EB1d_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1b_10DefinitionENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB39_9FrozenMapB19_B2c_E12from_entries0E0EB1d_.exit: ; preds = %.lr.ph, %._crit_edge11
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 12 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids11ScopedUseIdINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtB1r_7use_def11place_state8BindingsEENCINvMB8_SB1m_20sort_unstable_by_keyB1n_NCNvMs7_B2T_NtB2T_18MultiBindingsByUse8from_maps_0E0EB1r_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #6 personality ptr @rust_eh_personality !guid !3057 {
bb.a:
  %.sroa.5.i = alloca [20 x i8], align 4          ; 4 uses
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids11ScopedUseIdINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtB1d_7use_def11place_state8BindingsEENCINvMB8_SB18_20sort_unstable_by_keyB19_NCNvMs7_B2F_NtB2F_18MultiBindingsByUse8from_maps_0E0EB1d_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids11ScopedUseIdINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtB1d_7use_def11place_state8BindingsEENCINvMB8_SB18_20sort_unstable_by_keyB19_NCNvMs7_B2F_NtB2F_18MultiBindingsByUse8from_maps_0E0EB1d_.exit
  %.sroa.0.05 = phi ptr [ %i.j, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids11ScopedUseIdINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtB1d_7use_def11place_state8BindingsEENCINvMB8_SB18_20sort_unstable_by_keyB19_NCNvMs7_B2F_NtB2F_18MultiBindingsByUse8from_maps_0E0EB1d_.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -24 ; 4 uses
  %.val9.i = load i32, ptr %.sroa.0.05, align 8, !range !7, !noundef !5 ; 3 uses
  %.val10.i = load i32, ptr %i.d, align 8, !range !7, !noundef !5
  %i.e = icmp ult i32 %.val9.i, %.val10.i
  br i1 %i.e, label %bb.d, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids11ScopedUseIdINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtB1d_7use_def11place_state8BindingsEENCINvMB8_SB18_20sort_unstable_by_keyB19_NCNvMs7_B2F_NtB2F_18MultiBindingsByUse8from_maps_0E0EB1d_.exit

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.48.0..sroa_idx.i, i64 20, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %._crit_edge11, label %.lr.ph10

bb.e:                                             ; preds = %.lr.ph10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i8, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.g = icmp eq ptr %i.h, %0
  br i1 %i.g, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i8 = phi ptr [ %i.h, %bb.e ], [ %i.d, %bb.d ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -24 ; 4 uses
  %.val8.i = load i32, ptr %i.h, align 8, !range !7, !noundef !5
  %i.i = icmp ult i32 %.val9.i, %.val8.i
  br i1 %i.i, label %bb.e, label %._crit_edge11

._crit_edge11:                                    ; preds = %bb.e, %.lr.ph10, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i8, %.lr.ph10 ] ; 2 uses
  store i32 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !3058
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.i, i64 20, i1 false), !noalias !3058
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids11ScopedUseIdINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtB1d_7use_def11place_state8BindingsEENCINvMB8_SB18_20sort_unstable_by_keyB19_NCNvMs7_B2F_NtB2F_18MultiBindingsByUse8from_maps_0E0EB1d_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids11ScopedUseIdINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtNtB1d_7use_def11place_state8BindingsEENCINvMB8_SB18_20sort_unstable_by_keyB19_NCNvMs7_B2F_NtB2F_18MultiBindingsByUse8from_maps_0E0EB1d_.exit: ; preds = %.lr.ph, %._crit_edge11
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtB1p_25ScopedEnclosingSnapshotIdENCINvMB8_SB1m_16sort_unstable_byNCNvMs2_NtB1r_6frozenINtB3B_9FrozenMapB1n_B2p_E12from_entries0E0EB1r_(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 384307168202282326) %1, i64 noundef %2, ptr noalias nofree readnone align 8 captures(none) %3) unnamed_addr #8 personality ptr @rust_eh_personality !guid !3078 {
bb.a:
  %.sroa.9.i = alloca [7 x i8], align 1           ; 4 uses
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtB1b_25ScopedEnclosingSnapshotIdENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3n_9FrozenMapB19_B2b_E12from_entries0E0EB1d_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtB1b_25ScopedEnclosingSnapshotIdENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3n_9FrozenMapB19_B2b_E12from_entries0E0EB1d_.exit
  %.sroa.0.05 = phi ptr [ %i.bg, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtB1b_25ScopedEnclosingSnapshotIdENCINvMB8_SB18_16sort_unstable_byNCNvMs2_NtB1d_6frozenINtB3n_9FrozenMapB19_B2b_E12from_entries0E0EB1d_.exit ], [ %i.c, %.lr.ph.preheader ] ; 17 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -24 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3084)
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8
  %i.f = load i32, ptr %i.e, align 4, !range !7, !alias.scope !3085, !noundef !5 ; 5 uses
  %i.g = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16
  %i.h = load i32, ptr %i.g, align 4, !range !7, !alias.scope !3086, !noundef !5 ; 2 uses
  %i.i = tail call i8 @llvm.ucmp.i8.i32(i32 %i.f, i32 %i.h)
  %i.j = icmp eq i32 %i.f, %i.h
  br i1 %i.j, label %bb.d, label %_RNCINvMNtCs4NRVxsYgnAr_4core5sliceSTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBA_25ScopedEnclosingSnapshotIdE16sort_unstable_byNCNvMs2_NtBC_6frozenINtB2x_9FrozenMapBy_B1A_E12from_entries0E0BC_.exit.i

bb.d:                                             ; preds = %.lr.ph
  %i.k = load i32, ptr %.sroa.0.05, align 4, !range !8, !alias.scope !3085, !noundef !5
  %i.l = trunc nuw nsw i32 %i.k to i8
  %i.m = load i32, ptr %i.d, align 4, !range !8, !alias.scope !3086, !noundef !5
  %i.n = trunc nuw nsw i32 %i.m to i8
  %i.o = sub nsw i8 %i.l, %i.n                    ; 2 uses
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %.sink.split.i.i.i.i, label %bb.e

.sink.split.i.i.i.i:                              ; preds = %bb.d
  %i.q = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -20
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 4
  %i.s = load i32, ptr %i.r, align 4, !range !7, !alias.scope !3085, !noundef !5
end_hunk_3
