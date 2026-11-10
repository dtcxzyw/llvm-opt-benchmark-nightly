Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.03?download=true
inline.NumInlined: 756
inline.NumDeleted: 183
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort18small_sort_generalTmjENvYB1f_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls:bb.a
  %i.p = icmp ult i64 %.val17.i.i, %.val19.i.i
  %.sroa.0.0.i.i.i.i = select i1 %i.n, i1 %i.p, i1 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val12.i.i = load i32, ptr %i.q, align 8, !alias.scope !240, !noundef !4 ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 56
  %.val13.i.i = load i64, ptr %i.s, align 8, !alias.scope !240
  %.val14.i.i = load i32, ptr %i.r, align 8, !alias.scope !240, !noundef !4 ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 40
  %.val15.i.i = load i64, ptr %i.t, align 8, !alias.scope !240
  %i.u = icmp eq i32 %.val12.i.i, %.val14.i.i
  %i.v = icmp ult i32 %.val12.i.i, %.val14.i.i
  %i.w = icmp ult i64 %.val13.i.i, %.val15.i.i
  %.sroa.0.0.i.i20.i.i = select i1 %i.u, i1 %i.w, i1 %i.v ; 2 uses
  %i.x = zext i1 %.sroa.0.0.i.i.i.i to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.x ; 4 uses
  %i.z = xor i1 %.sroa.0.0.i.i.i.i, true
  %i.aa = zext i1 %i.z to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.aa ; 5 uses
  %i.ac = select i1 %.sroa.0.0.i.i20.i.i, i64 3, i64 2
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ac ; 5 uses
  %i.ae = select i1 %.sroa.0.0.i.i20.i.i, i64 2, i64 3
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ae ; 4 uses
  %.val8.i.i = load i32, ptr %i.ad, align 8, !alias.scope !240, !noundef !4 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.ad, i64 8
  %.val9.i.i = load i64, ptr %i.ag, align 8, !alias.scope !240
  %.val10.i.i = load i32, ptr %i.y, align 8, !alias.scope !240, !noundef !4 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.y, i64 8
  %.val11.i.i = load i64, ptr %i.ah, align 8, !alias.scope !240
  %i.ai = icmp eq i32 %.val8.i.i, %.val10.i.i
  %i.aj = icmp ult i32 %.val8.i.i, %.val10.i.i
  %i.ak = icmp ult i64 %.val9.i.i, %.val11.i.i
  %.sroa.0.0.i.i21.i.i = select i1 %i.ai, i1 %i.ak, i1 %i.aj ; 3 uses
  %.val4.i.i = load i32, ptr %i.af, align 8, !alias.scope !240, !noundef !4 ; 2 uses
  %i.al = getelementptr i8, ptr %i.af, i64 8
  %.val5.i.i = load i64, ptr %i.al, align 8, !alias.scope !240
  %.val6.i.i = load i32, ptr %i.ab, align 8, !alias.scope !240, !noundef !4 ; 2 uses
  %i.am = getelementptr i8, ptr %i.ab, i64 8
  %.val7.i.i = load i64, ptr %i.am, align 8, !alias.scope !240
  %i.an = icmp eq i32 %.val4.i.i, %.val6.i.i
  %i.ao = icmp ult i32 %.val4.i.i, %.val6.i.i
  %i.ap = icmp ult i64 %.val5.i.i, %.val7.i.i
  %.sroa.0.0.i.i22.i.i = select i1 %i.an, i1 %i.ap, i1 %i.ao ; 3 uses
  %i.aq = select i1 %.sroa.0.0.i.i21.i.i, ptr %i.ad, ptr %i.y, !unpredictable !4
  %i.ar = select i1 %.sroa.0.0.i.i22.i.i, ptr %i.ab, ptr %i.af, !unpredictable !4
  %i.as = select i1 %.sroa.0.0.i.i22.i.i, ptr %i.ad, ptr %i.ab, !unpredictable !4
  %i.at = select i1 %.sroa.0.0.i.i21.i.i, ptr %i.y, ptr %i.as, !unpredictable !4 ; 4 uses
  %i.au = select i1 %.sroa.0.0.i.i21.i.i, ptr %i.ab, ptr %i.ad, !unpredictable !4
  %i.av = select i1 %.sroa.0.0.i.i22.i.i, ptr %i.af, ptr %i.au, !unpredictable !4 ; 4 uses
  %.val.i.i = load i32, ptr %i.av, align 8, !alias.scope !240, !noundef !4 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %.val1.i.i = load i64, ptr %i.aw, align 8, !alias.scope !240
  %.val2.i.i = load i32, ptr %i.at, align 8, !alias.scope !240, !noundef !4 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.at, i64 8
  %.val3.i.i = load i64, ptr %i.ax, align 8, !alias.scope !240
  %i.ay = icmp eq i32 %.val.i.i, %.val2.i.i
  %i.az = icmp ult i32 %.val.i.i, %.val2.i.i
  %i.ba = icmp ult i64 %.val1.i.i, %.val3.i.i
  %.sroa.0.0.i.i23.i.i = select i1 %i.ay, i1 %i.ba, i1 %i.az ; 2 uses
  %i.bb = select i1 %.sroa.0.0.i.i23.i.i, ptr %i.av, ptr %i.at, !unpredictable !4
  %i.bc = select i1 %.sroa.0.0.i.i23.i.i, ptr %i.at, ptr %i.av, !unpredictable !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !alias.scope !242
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false), !alias.scope !242
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !alias.scope !242
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !alias.scope !242
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d ; 12 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.d ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.val16.i30.i = load i32, ptr %i.bi, align 8, !alias.scope !240, !noundef !4 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bg, i64 24
  %.val17.i31.i = load i64, ptr %i.bj, align 8, !alias.scope !240
  %.val18.i32.i = load i32, ptr %i.bg, align 8, !alias.scope !240, !noundef !4 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bg, i64 8
  %.val19.i33.i = load i64, ptr %i.bk, align 8, !alias.scope !240
  %i.bl = icmp eq i32 %.val16.i30.i, %.val18.i32.i
  %i.bm = icmp ult i32 %.val16.i30.i, %.val18.i32.i
  %i.bn = icmp ult i64 %.val17.i31.i, %.val19.i33.i
  %.sroa.0.0.i.i.i34.i = select i1 %i.bl, i1 %i.bn, i1 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %.val12.i35.i = load i32, ptr %i.bo, align 8, !alias.scope !240, !noundef !4 ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bg, i64 56
  %.val13.i36.i = load i64, ptr %i.bq, align 8, !alias.scope !240
  %.val14.i37.i = load i32, ptr %i.bp, align 8, !alias.scope !240, !noundef !4 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bg, i64 40
  %.val15.i38.i = load i64, ptr %i.br, align 8, !alias.scope !240
  %i.bs = icmp eq i32 %.val12.i35.i, %.val14.i37.i
  %i.bt = icmp ult i32 %.val12.i35.i, %.val14.i37.i
  %i.bu = icmp ult i64 %.val13.i36.i, %.val15.i38.i
  %.sroa.0.0.i.i20.i39.i = select i1 %i.bs, i1 %i.bu, i1 %i.bt ; 2 uses
  %i.bv = zext i1 %.sroa.0.0.i.i.i34.i to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.bv ; 4 uses
  %i.bx = xor i1 %.sroa.0.0.i.i.i34.i, true
  %i.by = zext i1 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.by ; 5 uses
  %i.ca = select i1 %.sroa.0.0.i.i20.i39.i, i64 3, i64 2
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.ca ; 5 uses
  %i.cc = select i1 %.sroa.0.0.i.i20.i39.i, i64 2, i64 3
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %i.cc ; 4 uses
  %.val8.i40.i = load i32, ptr %i.cb, align 8, !alias.scope !240, !noundef !4 ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cb, i64 8
  %.val9.i41.i = load i64, ptr %i.ce, align 8, !alias.scope !240
  %.val10.i42.i = load i32, ptr %i.bw, align 8, !alias.scope !240, !noundef !4 ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bw, i64 8
  %.val11.i43.i = load i64, ptr %i.cf, align 8, !alias.scope !240
  %i.cg = icmp eq i32 %.val8.i40.i, %.val10.i42.i
  %i.ch = icmp ult i32 %.val8.i40.i, %.val10.i42.i
  %i.ci = icmp ult i64 %.val9.i41.i, %.val11.i43.i
  %.sroa.0.0.i.i21.i44.i = select i1 %i.cg, i1 %i.ci, i1 %i.ch ; 3 uses
  %.val4.i45.i = load i32, ptr %i.cd, align 8, !alias.scope !240, !noundef !4 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.cd, i64 8
  %.val5.i46.i = load i64, ptr %i.cj, align 8, !alias.scope !240
  %.val6.i47.i = load i32, ptr %i.bz, align 8, !alias.scope !240, !noundef !4 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.bz, i64 8
  %.val7.i48.i = load i64, ptr %i.ck, align 8, !alias.scope !240
  %i.cl = icmp eq i32 %.val4.i45.i, %.val6.i47.i
  %i.cm = icmp ult i32 %.val4.i45.i, %.val6.i47.i
  %i.cn = icmp ult i64 %.val5.i46.i, %.val7.i48.i
  %.sroa.0.0.i.i22.i49.i = select i1 %i.cl, i1 %i.cn, i1 %i.cm ; 3 uses
  %i.co = select i1 %.sroa.0.0.i.i21.i44.i, ptr %i.cb, ptr %i.bw, !unpredictable !4
  %i.cp = select i1 %.sroa.0.0.i.i22.i49.i, ptr %i.bz, ptr %i.cd, !unpredictable !4
  %i.cq = select i1 %.sroa.0.0.i.i22.i49.i, ptr %i.cb, ptr %i.bz, !unpredictable !4
  %i.cr = select i1 %.sroa.0.0.i.i21.i44.i, ptr %i.bw, ptr %i.cq, !unpredictable !4 ; 4 uses
  %i.cs = select i1 %.sroa.0.0.i.i21.i44.i, ptr %i.bz, ptr %i.cb, !unpredictable !4
  %i.ct = select i1 %.sroa.0.0.i.i22.i49.i, ptr %i.cd, ptr %i.cs, !unpredictable !4 ; 4 uses
  %.val.i50.i = load i32, ptr %i.ct, align 8, !alias.scope !240, !noundef !4 ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 8
  %.val1.i51.i = load i64, ptr %i.cu, align 8, !alias.scope !240
  %.val2.i52.i = load i32, ptr %i.cr, align 8, !alias.scope !240, !noundef !4 ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cr, i64 8
  %.val3.i53.i = load i64, ptr %i.cv, align 8, !alias.scope !240
  %i.cw = icmp eq i32 %.val.i50.i, %.val2.i52.i
  %i.cx = icmp ult i32 %.val.i50.i, %.val2.i52.i
  %i.cy = icmp ult i64 %.val1.i51.i, %.val3.i53.i
  %.sroa.0.0.i.i23.i54.i = select i1 %i.cw, i1 %i.cy, i1 %i.cx ; 2 uses
  %i.cz = select i1 %.sroa.0.0.i.i23.i54.i, ptr %i.ct, ptr %i.cr, !unpredictable !4
  %i.da = select i1 %.sroa.0.0.i.i23.i54.i, ptr %i.cr, ptr %i.ct, !unpredictable !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(16) %i.co, i64 16, i1 false), !alias.scope !242
  %i.db = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i64 16, i1 false), !alias.scope !242
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %i.da, i64 16, i1 false), !alias.scope !242
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i64 16, i1 false), !alias.scope !242
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !alias.scope !242
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !alias.scope !242
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 4 uses
  %i.dg = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.dh = icmp samesign ult i64 %.sroa.0.0.i, %i.d
  br i1 %i.dh, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i, %bb.i
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.d ; 4 uses
  %i.dk = icmp samesign ult i64 %.sroa.0.0.i, %i.dg
  br i1 %i.dk, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.1.i
  %.sroa.05.04.1.i = phi i64 [ %i.ea, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %.sroa.05.04.1.i
  %.idx14 = shl nuw nsw i64 %.sroa.05.04.1.i, 4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.idx14 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i64 16, i1 false), !alias.scope !242
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -16 ; 3 uses
  %.val11.i55.1.i = load i32, ptr %i.dm, align 8, !alias.scope !241, !noundef !4 ; 5 uses
  %i.do = getelementptr i8, ptr %i.dm, i64 8
  %.val12.i56.1.i = load i64, ptr %i.do, align 8, !alias.scope !241 ; 3 uses
  %.val13.i57.1.i = load i32, ptr %i.dn, align 8, !alias.scope !241, !noundef !4 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.dm, i64 -8
  %.val14.i58.1.i = load i64, ptr %i.dp, align 8, !alias.scope !241
  %i.dq = icmp eq i32 %.val11.i55.1.i, %.val13.i57.1.i
  %i.dr = icmp ult i32 %.val11.i55.1.i, %.val13.i57.1.i
  %i.ds = icmp ult i64 %.val12.i56.1.i, %.val14.i58.1.i
  %.sroa.0.0.i.i.i59.1.i = select i1 %i.dq, i1 %i.ds, i1 %i.dr
  br i1 %.sroa.0.0.i.i.i59.1.i, label %.preheader.1.i.preheader, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.1.i

.preheader.1.i.preheader:                         ; preds = %.lr.ph.1.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i64 16, i1 false), !alias.scope !241
  %i.dt = icmp eq i64 %.sroa.05.04.1.i, 1
  br i1 %i.dt, label %._crit_edge11, label %.lr.ph10

.preheader.1.i:                                   ; preds = %.lr.ph10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i60.1.i9, ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i64 16, i1 false), !alias.scope !241
  %i.du = icmp eq ptr %i.dv, %i.dj
  br i1 %i.du, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %.preheader.1.i.preheader, %.preheader.1.i
  %.sroa.0.0.i60.1.i9 = phi ptr [ %i.dv, %.preheader.1.i ], [ %i.dn, %.preheader.1.i.preheader ] ; 4 uses
  %i.dv = getelementptr inbounds i8, ptr %.sroa.0.0.i60.1.i9, i64 -16 ; 4 uses
  %.val9.i61.1.i = load i32, ptr %i.dv, align 4, !alias.scope !241, !noundef !4 ; 2 uses
  %i.dw = getelementptr i8, ptr %.sroa.0.0.i60.1.i9, i64 -8
  %.val10.i62.1.i = load i64, ptr %i.dw, align 8, !alias.scope !241
  %i.dx = icmp eq i32 %.val11.i55.1.i, %.val9.i61.1.i
  %i.dy = icmp ult i32 %.val11.i55.1.i, %.val9.i61.1.i
  %i.dz = icmp ult i64 %.val12.i56.1.i, %.val10.i62.1.i
  %.sroa.0.0.i.i15.i.1.i = select i1 %i.dx, i1 %i.dz, i1 %i.dy
  br i1 %.sroa.0.0.i.i15.i.1.i, label %.preheader.1.i, label %._crit_edge11

._crit_edge11:                                    ; preds = %.preheader.1.i, %.lr.ph10, %.preheader.1.i.preheader
  %.sroa.0.0.i60.lcssa.1.i = phi ptr [ %i.dj, %.preheader.1.i.preheader ], [ %i.dj, %.preheader.1.i ], [ %.sroa.0.0.i60.1.i9, %.lr.ph10 ] ; 2 uses
  store i32 %.val11.i55.1.i, ptr %.sroa.0.0.i60.lcssa.1.i, align 8, !alias.scope !241, !noalias !243
  %.sroa.46.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i60.lcssa.1.i, i64 8
  store i64 %.val12.i56.1.i, ptr %.sroa.46.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !241, !noalias !243
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.1.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.1.i: ; preds = %._crit_edge11, %.lr.ph.1.i
  %i.ea = add nuw nsw i64 %.sroa.05.04.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.ea, %i.dg
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.1.i, %.loopexit.i
  invoke fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeTmjENvYB1g_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.a, i64 noundef range(i64 0, 576460752303423488) %1, ptr noundef nonnull align 8 %0)
          to label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmjENvYB1s_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit unwind label %bb.j

bb.j:                                             ; preds = %.loopexit.1.i
  %i.eb = landingpad { ptr, i32 }
          cleanup
  %i.ec = shl nuw nsw i64 %1, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.ec, i1 false), !alias.scope !242, !noalias !244
  resume { ptr, i32 } %i.eb

.lr.ph.i:                                         ; preds = %bb.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i
  %.sroa.05.04.i = phi i64 [ %i.es, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i ], [ %.sroa.0.0.i, %bb.i ] ; 4 uses
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.05.04.i
  %.idx = shl nuw nsw i64 %.sroa.05.04.i, 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 8 dereferenceable(16) %i.ed, i64 16, i1 false), !alias.scope !242
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 -16 ; 3 uses
  %.val11.i55.i = load i32, ptr %i.ee, align 8, !alias.scope !241, !noundef !4 ; 5 uses
  %i.eg = getelementptr i8, ptr %i.ee, i64 8
  %.val12.i56.i = load i64, ptr %i.eg, align 8, !alias.scope !241 ; 3 uses
  %.val13.i57.i = load i32, ptr %i.ef, align 8, !alias.scope !241, !noundef !4 ; 2 uses
  %i.eh = getelementptr i8, ptr %i.ee, i64 -8
  %.val14.i58.i = load i64, ptr %i.eh, align 8, !alias.scope !241
  %i.ei = icmp eq i32 %.val11.i55.i, %.val13.i57.i
  %i.ej = icmp ult i32 %.val11.i55.i, %.val13.i57.i
  %i.ek = icmp ult i64 %.val12.i56.i, %.val14.i58.i
  %.sroa.0.0.i.i.i59.i = select i1 %i.ei, i1 %i.ek, i1 %i.ej
  br i1 %.sroa.0.0.i.i.i59.i, label %.preheader.i.preheader, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i

.preheader.i.preheader:                           ; preds = %.lr.ph.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 8 dereferenceable(16) %i.ef, i64 16, i1 false), !alias.scope !241
  %i.el = icmp eq i64 %.sroa.05.04.i, 1
  br i1 %i.el, label %._crit_edge, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i60.i7, ptr noundef nonnull align 8 dereferenceable(16) %i.en, i64 16, i1 false), !alias.scope !241
  %i.em = icmp eq ptr %i.en, %i.a
  br i1 %i.em, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.0.0.i60.i7 = phi ptr [ %i.en, %.preheader.i ], [ %i.ef, %.preheader.i.preheader ] ; 4 uses
  %i.en = getelementptr inbounds i8, ptr %.sroa.0.0.i60.i7, i64 -16 ; 4 uses
  %.val9.i61.i = load i32, ptr %i.en, align 4, !alias.scope !241, !noundef !4 ; 2 uses
  %i.eo = getelementptr i8, ptr %.sroa.0.0.i60.i7, i64 -8
  %.val10.i62.i = load i64, ptr %i.eo, align 8, !alias.scope !241
  %i.ep = icmp eq i32 %.val11.i55.i, %.val9.i61.i
  %i.eq = icmp ult i32 %.val11.i55.i, %.val9.i61.i
  %i.er = icmp ult i64 %.val12.i56.i, %.val10.i62.i
  %.sroa.0.0.i.i15.i.i = select i1 %i.ep, i1 %i.er, i1 %i.eq
  br i1 %.sroa.0.0.i.i15.i.i, label %.preheader.i, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.i, %.lr.ph, %.preheader.i.preheader
  %.sroa.0.0.i60.lcssa.i = phi ptr [ %i.a, %.preheader.i.preheader ], [ %i.a, %.preheader.i ], [ %.sroa.0.0.i60.i7, %.lr.ph ] ; 2 uses
  store i32 %.val11.i55.i, ptr %.sroa.0.0.i60.lcssa.i, align 8, !alias.scope !241, !noalias !243
  %.sroa.46.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i60.lcssa.i, i64 8
  store i64 %.val12.i56.i, ptr %.sroa.46.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !241, !noalias !243
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.es = add nuw nsw i64 %.sroa.05.04.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.es, %i.d
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmjENvYB1s_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.a, %.loopexit.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort18small_sort_generalTmmENvYB1f_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 4 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [384 x i8], align 8               ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmmENvYB1s_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit, label %bb.b

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
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableTmmENvYB19_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls(ptr noundef nonnull align 4 %0, ptr noundef nonnull align 4 %i.a, ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableTmmENvYB19_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls(ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.j)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val16.i.i = load i32, ptr %i.k, align 4, !alias.scope !264, !noundef !4 ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 12
  %.val17.i.i = load i32, ptr %i.l, align 4, !alias.scope !264
  %.val18.i.i = load i32, ptr %0, align 4, !alias.scope !264, !noundef !4 ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 4
  %.val19.i.i = load i32, ptr %i.m, align 4, !alias.scope !264
  %i.n = icmp eq i32 %.val16.i.i, %.val18.i.i
  %i.o = icmp ult i32 %.val16.i.i, %.val18.i.i
  %i.p = icmp ult i32 %.val17.i.i, %.val19.i.i
  %.sroa.0.0.i.i.i.i = select i1 %i.n, i1 %i.p, i1 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val12.i.i = load i32, ptr %i.q, align 4, !alias.scope !264, !noundef !4 ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 28
  %.val13.i.i = load i32, ptr %i.s, align 4, !alias.scope !264
  %.val14.i.i = load i32, ptr %i.r, align 4, !alias.scope !264, !noundef !4 ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 20
  %.val15.i.i = load i32, ptr %i.t, align 4, !alias.scope !264
  %i.u = icmp eq i32 %.val12.i.i, %.val14.i.i
  %i.v = icmp ult i32 %.val12.i.i, %.val14.i.i
  %i.w = icmp ult i32 %.val13.i.i, %.val15.i.i
  %.sroa.0.0.i.i20.i.i = select i1 %i.u, i1 %i.w, i1 %i.v ; 2 uses
  %i.x = zext i1 %.sroa.0.0.i.i.i.i to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.x ; 4 uses
  %i.z = xor i1 %.sroa.0.0.i.i.i.i, true
  %i.aa = zext i1 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aa ; 5 uses
  %i.ac = select i1 %.sroa.0.0.i.i20.i.i, i64 3, i64 2
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ac ; 5 uses
  %i.ae = select i1 %.sroa.0.0.i.i20.i.i, i64 2, i64 3
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ae ; 4 uses
  %.val8.i.i = load i32, ptr %i.ad, align 4, !alias.scope !264, !noundef !4 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.ad, i64 4
  %.val9.i.i = load i32, ptr %i.ag, align 4, !alias.scope !264
  %.val10.i.i = load i32, ptr %i.y, align 4, !alias.scope !264, !noundef !4 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.y, i64 4
  %.val11.i.i = load i32, ptr %i.ah, align 4, !alias.scope !264
  %i.ai = icmp eq i32 %.val8.i.i, %.val10.i.i
  %i.aj = icmp ult i32 %.val8.i.i, %.val10.i.i
  %i.ak = icmp ult i32 %.val9.i.i, %.val11.i.i
  %.sroa.0.0.i.i21.i.i = select i1 %i.ai, i1 %i.ak, i1 %i.aj ; 3 uses
  %.val4.i.i = load i32, ptr %i.af, align 4, !alias.scope !264, !noundef !4 ; 2 uses
  %i.al = getelementptr i8, ptr %i.af, i64 4
  %.val5.i.i = load i32, ptr %i.al, align 4, !alias.scope !264
  %.val6.i.i = load i32, ptr %i.ab, align 4, !alias.scope !264, !noundef !4 ; 2 uses
  %i.am = getelementptr i8, ptr %i.ab, i64 4
  %.val7.i.i = load i32, ptr %i.am, align 4, !alias.scope !264
  %i.an = icmp eq i32 %.val4.i.i, %.val6.i.i
  %i.ao = icmp ult i32 %.val4.i.i, %.val6.i.i
  %i.ap = icmp ult i32 %.val5.i.i, %.val7.i.i
  %.sroa.0.0.i.i22.i.i = select i1 %i.an, i1 %i.ap, i1 %i.ao ; 3 uses
  %i.aq = select i1 %.sroa.0.0.i.i21.i.i, ptr %i.ad, ptr %i.y, !unpredictable !4
  %i.ar = select i1 %.sroa.0.0.i.i22.i.i, ptr %i.ab, ptr %i.af, !unpredictable !4
  %i.as = select i1 %.sroa.0.0.i.i22.i.i, ptr %i.ad, ptr %i.ab, !unpredictable !4
  %i.at = select i1 %.sroa.0.0.i.i21.i.i, ptr %i.y, ptr %i.as, !unpredictable !4 ; 4 uses
  %i.au = select i1 %.sroa.0.0.i.i21.i.i, ptr %i.ab, ptr %i.ad, !unpredictable !4
  %i.av = select i1 %.sroa.0.0.i.i22.i.i, ptr %i.af, ptr %i.au, !unpredictable !4 ; 4 uses
  %.val.i.i = load i32, ptr %i.av, align 4, !alias.scope !264, !noundef !4 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  %.val1.i.i = load i32, ptr %i.aw, align 4, !alias.scope !264
  %.val2.i.i = load i32, ptr %i.at, align 4, !alias.scope !264, !noundef !4 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.at, i64 4
  %.val3.i.i = load i32, ptr %i.ax, align 4, !alias.scope !264
  %i.ay = icmp eq i32 %.val.i.i, %.val2.i.i
  %i.az = icmp ult i32 %.val.i.i, %.val2.i.i
  %i.ba = icmp ult i32 %.val1.i.i, %.val3.i.i
  %.sroa.0.0.i.i23.i.i = select i1 %i.ay, i1 %i.ba, i1 %i.az ; 2 uses
  %i.bb = select i1 %.sroa.0.0.i.i23.i.i, ptr %i.av, ptr %i.at, !unpredictable !4
  %i.bc = select i1 %.sroa.0.0.i.i23.i.i, ptr %i.at, ptr %i.av, !unpredictable !4
  %i.bd = load i64, ptr %i.aq, align 4, !alias.scope !264
  store i64 %i.bd, ptr %i.a, align 8, !alias.scope !265
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bf = load i64, ptr %i.bb, align 4, !alias.scope !264
  store i64 %i.bf, ptr %i.be, align 8, !alias.scope !265
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bh = load i64, ptr %i.bc, align 4, !alias.scope !264
  store i64 %i.bh, ptr %i.bg, align 8, !alias.scope !265
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bj = load i64, ptr %i.ar, align 4, !alias.scope !264
  store i64 %i.bj, ptr %i.bi, align 8, !alias.scope !265
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d ; 12 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.val16.i30.i = load i32, ptr %i.bm, align 4, !alias.scope !264, !noundef !4 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bk, i64 12
  %.val17.i31.i = load i32, ptr %i.bn, align 4, !alias.scope !264
  %.val18.i32.i = load i32, ptr %i.bk, align 4, !alias.scope !264, !noundef !4 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bk, i64 4
  %.val19.i33.i = load i32, ptr %i.bo, align 4, !alias.scope !264
  %i.bp = icmp eq i32 %.val16.i30.i, %.val18.i32.i
  %i.bq = icmp ult i32 %.val16.i30.i, %.val18.i32.i
  %i.br = icmp ult i32 %.val17.i31.i, %.val19.i33.i
  %.sroa.0.0.i.i.i34.i = select i1 %i.bp, i1 %i.br, i1 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %.val12.i35.i = load i32, ptr %i.bs, align 4, !alias.scope !264, !noundef !4 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bk, i64 28
  %.val13.i36.i = load i32, ptr %i.bu, align 4, !alias.scope !264
  %.val14.i37.i = load i32, ptr %i.bt, align 4, !alias.scope !264, !noundef !4 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bk, i64 20
  %.val15.i38.i = load i32, ptr %i.bv, align 4, !alias.scope !264
  %i.bw = icmp eq i32 %.val12.i35.i, %.val14.i37.i
  %i.bx = icmp ult i32 %.val12.i35.i, %.val14.i37.i
  %i.by = icmp ult i32 %.val13.i36.i, %.val15.i38.i
  %.sroa.0.0.i.i20.i39.i = select i1 %i.bw, i1 %i.by, i1 %i.bx ; 2 uses
  %i.bz = zext i1 %.sroa.0.0.i.i.i34.i to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bz ; 4 uses
  %i.cb = xor i1 %.sroa.0.0.i.i.i34.i, true
  %i.cc = zext i1 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.cc ; 5 uses
  %i.ce = select i1 %.sroa.0.0.i.i20.i39.i, i64 3, i64 2
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.ce ; 5 uses
  %i.cg = select i1 %.sroa.0.0.i.i20.i39.i, i64 2, i64 3
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.cg ; 4 uses
  %.val8.i40.i = load i32, ptr %i.cf, align 4, !alias.scope !264, !noundef !4 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.cf, i64 4
  %.val9.i41.i = load i32, ptr %i.ci, align 4, !alias.scope !264
  %.val10.i42.i = load i32, ptr %i.ca, align 4, !alias.scope !264, !noundef !4 ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ca, i64 4
  %.val11.i43.i = load i32, ptr %i.cj, align 4, !alias.scope !264
  %i.ck = icmp eq i32 %.val8.i40.i, %.val10.i42.i
  %i.cl = icmp ult i32 %.val8.i40.i, %.val10.i42.i
  %i.cm = icmp ult i32 %.val9.i41.i, %.val11.i43.i
  %.sroa.0.0.i.i21.i44.i = select i1 %i.ck, i1 %i.cm, i1 %i.cl ; 3 uses
  %.val4.i45.i = load i32, ptr %i.ch, align 4, !alias.scope !264, !noundef !4 ; 2 uses
  %i.cn = getelementptr i8, ptr %i.ch, i64 4
  %.val5.i46.i = load i32, ptr %i.cn, align 4, !alias.scope !264
  %.val6.i47.i = load i32, ptr %i.cd, align 4, !alias.scope !264, !noundef !4 ; 2 uses
  %i.co = getelementptr i8, ptr %i.cd, i64 4
  %.val7.i48.i = load i32, ptr %i.co, align 4, !alias.scope !264
  %i.cp = icmp eq i32 %.val4.i45.i, %.val6.i47.i
  %i.cq = icmp ult i32 %.val4.i45.i, %.val6.i47.i
  %i.cr = icmp ult i32 %.val5.i46.i, %.val7.i48.i
  %.sroa.0.0.i.i22.i49.i = select i1 %i.cp, i1 %i.cr, i1 %i.cq ; 3 uses
  %i.cs = select i1 %.sroa.0.0.i.i21.i44.i, ptr %i.cf, ptr %i.ca, !unpredictable !4
  %i.ct = select i1 %.sroa.0.0.i.i22.i49.i, ptr %i.cd, ptr %i.ch, !unpredictable !4
  %i.cu = select i1 %.sroa.0.0.i.i22.i49.i, ptr %i.cf, ptr %i.cd, !unpredictable !4
  %i.cv = select i1 %.sroa.0.0.i.i21.i44.i, ptr %i.ca, ptr %i.cu, !unpredictable !4 ; 4 uses
  %i.cw = select i1 %.sroa.0.0.i.i21.i44.i, ptr %i.cd, ptr %i.cf, !unpredictable !4
  %i.cx = select i1 %.sroa.0.0.i.i22.i49.i, ptr %i.ch, ptr %i.cw, !unpredictable !4 ; 4 uses
  %.val.i50.i = load i32, ptr %i.cx, align 4, !alias.scope !264, !noundef !4 ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 4
  %.val1.i51.i = load i32, ptr %i.cy, align 4, !alias.scope !264
  %.val2.i52.i = load i32, ptr %i.cv, align 4, !alias.scope !264, !noundef !4 ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cv, i64 4
  %.val3.i53.i = load i32, ptr %i.cz, align 4, !alias.scope !264
  %i.da = icmp eq i32 %.val.i50.i, %.val2.i52.i
  %i.db = icmp ult i32 %.val.i50.i, %.val2.i52.i
  %i.dc = icmp ult i32 %.val1.i51.i, %.val3.i53.i
  %.sroa.0.0.i.i23.i54.i = select i1 %i.da, i1 %i.dc, i1 %i.db ; 2 uses
  %i.dd = select i1 %.sroa.0.0.i.i23.i54.i, ptr %i.cx, ptr %i.cv, !unpredictable !4
  %i.de = select i1 %.sroa.0.0.i.i23.i54.i, ptr %i.cv, ptr %i.cx, !unpredictable !4
  %i.df = load i64, ptr %i.cs, align 4, !alias.scope !264
  store i64 %i.df, ptr %i.bl, align 8, !alias.scope !265
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.dh = load i64, ptr %i.dd, align 4, !alias.scope !264
  store i64 %i.dh, ptr %i.dg, align 8, !alias.scope !265
  %i.di = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.dj = load i64, ptr %i.de, align 4, !alias.scope !264
  store i64 %i.dj, ptr %i.di, align 8, !alias.scope !265
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.dl = load i64, ptr %i.ct, align 4, !alias.scope !264
  store i64 %i.dl, ptr %i.dk, align 8, !alias.scope !265
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.dm = load i64, ptr %0, align 4, !alias.scope !264
  store i64 %i.dm, ptr %i.a, align 8, !alias.scope !265
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d
  %i.dp = load i64, ptr %i.dn, align 4, !alias.scope !264
  store i64 %i.dp, ptr %i.do, align 8, !alias.scope !265
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 4 uses
  %i.dq = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.dr = icmp samesign ult i64 %.sroa.0.0.i, %i.d
  br i1 %i.dr, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i, %bb.i
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.dt = getelementptr [8 x i8], ptr %i.a, i64 %i.d ; 6 uses
  %i.du = icmp samesign ult i64 %.sroa.0.0.i, %i.dq
  br i1 %i.du, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.ep, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.sroa.05.08.1.i
  %.idx34 = shl nuw nsw i64 %.sroa.05.08.1.i, 3
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.idx34 ; 4 uses
  %i.dx = load i64, ptr %i.dv, align 4, !alias.scope !264 ; 4 uses
  store i64 %i.dx, ptr %i.dw, align 8, !alias.scope !265
  %i.dy = getelementptr inbounds i8, ptr %i.dw, i64 -8 ; 3 uses
  %i.dz = trunc i64 %i.dx to i32                  ; 4 uses
  %i.ea = lshr i64 %i.dx, 32
  %i.eb = trunc nuw i64 %i.ea to i32              ; 2 uses
  %.val13.i58.1.i = load i32, ptr %i.dy, align 8, !alias.scope !265, !noundef !4 ; 2 uses
  %i.ec = getelementptr i8, ptr %i.dw, i64 -4
  %.val14.i59.1.i = load i32, ptr %i.ec, align 4, !alias.scope !265
  %i.ed = icmp eq i32 %.val13.i58.1.i, %i.dz
  %i.ee = icmp ugt i32 %.val13.i58.1.i, %i.dz
  %i.ef = icmp ugt i32 %.val14.i59.1.i, %i.eb
  %.sroa.0.0.i.i.i60.1.i = select i1 %i.ed, i1 %i.ef, i1 %i.ee
  br i1 %.sroa.0.0.i.i.i60.1.i, label %.preheader.1.i.preheader, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.1.i

.preheader.1.i.preheader:                         ; preds = %.lr.ph.1.i
  %i.eg = load i64, ptr %i.dy, align 8, !alias.scope !265
  store i64 %i.eg, ptr %i.dw, align 8, !alias.scope !265
  %i.eh = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.eh, label %._crit_edge31, label %.lr.ph30

.preheader.1.i:                                   ; preds = %.lr.ph30
  %i.ei = load i64, ptr %i.ek, align 4, !alias.scope !265
  store i64 %i.ei, ptr %.sroa.0.0.i61.1.i29, align 4, !alias.scope !265
  %i.ej = icmp eq ptr %i.ek, %i.dt
  br i1 %i.ej, label %._crit_edge31, label %.lr.ph30

.lr.ph30:                                         ; preds = %.preheader.1.i.preheader, %.preheader.1.i
  %.sroa.0.0.i61.1.i29 = phi ptr [ %i.ek, %.preheader.1.i ], [ %i.dy, %.preheader.1.i.preheader ] ; 4 uses
  %i.ek = getelementptr inbounds i8, ptr %.sroa.0.0.i61.1.i29, i64 -8 ; 4 uses
  %.val9.i62.1.i = load i32, ptr %i.ek, align 4, !alias.scope !265, !noundef !4 ; 2 uses
  %i.el = getelementptr i8, ptr %.sroa.0.0.i61.1.i29, i64 -4
  %.val10.i63.1.i = load i32, ptr %i.el, align 4, !alias.scope !265
  %i.em = icmp eq i32 %.val9.i62.1.i, %i.dz
  %i.en = icmp ugt i32 %.val9.i62.1.i, %i.dz
  %i.eo = icmp ugt i32 %.val10.i63.1.i, %i.eb
  %.sroa.0.0.i.i15.i.1.i = select i1 %i.em, i1 %i.eo, i1 %i.en
  br i1 %.sroa.0.0.i.i15.i.1.i, label %.preheader.1.i, label %._crit_edge31

._crit_edge31:                                    ; preds = %.preheader.1.i, %.lr.ph30, %.preheader.1.i.preheader
  %.sroa.0.0.i61.lcssa.1.i = phi ptr [ %i.dt, %.preheader.1.i.preheader ], [ %i.dt, %.preheader.1.i ], [ %.sroa.0.0.i61.1.i29, %.lr.ph30 ]
  store i64 %i.dx, ptr %.sroa.0.0.i61.lcssa.1.i, align 4, !alias.scope !265, !noalias !266
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.1.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.1.i: ; preds = %._crit_edge31, %.lr.ph.1.i
  %i.ep = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.ep, %i.dq
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  %i.eq = add nsw i64 %1, -1                      ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.eq
  %i.et = getelementptr i8, ptr %i.dt, i64 -8
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.eu = getelementptr i8, ptr %i.fo, i64 8      ; 2 uses
  %i.ev = getelementptr i8, ptr %i.fn, i64 8
  %i.ew = and i64 %1, 1
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %bb.k, label %bb.j

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.ff, %.lr.ph.i.i ], [ %0, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.ey, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.a, %.loopexit.1.i ] ; 4 uses
  %.sroa.011.07.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %.lr.ph.i.i ], [ %i.dt, %.loopexit.1.i ] ; 4 uses
  %.sroa.015.06.i.i = phi ptr [ %i.fo, %.lr.ph.i.i ], [ %i.et, %.loopexit.1.i ] ; 4 uses
  %.sroa.017.05.i.i = phi ptr [ %i.fn, %.lr.ph.i.i ], [ %i.es, %.loopexit.1.i ] ; 4 uses
  %.sroa.019.04.i.i = phi ptr [ %i.fp, %.lr.ph.i.i ], [ %i.er, %.loopexit.1.i ] ; 2 uses
  %i.ey = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %.sroa.011.0.val.i.i = load i32, ptr %.sroa.011.07.i.i, align 4, !alias.scope !268, !noundef !4 ; 2 uses
  %i.ez = getelementptr i8, ptr %.sroa.011.07.i.i, i64 4
  %.sroa.011.0.val22.i.i = load i32, ptr %i.ez, align 4, !alias.scope !268
  %.sroa.06.0.val.i.i = load i32, ptr %.sroa.06.08.i.i, align 4, !alias.scope !268, !noundef !4 ; 2 uses
  %i.fa = getelementptr i8, ptr %.sroa.06.08.i.i, i64 4
  %.sroa.06.0.val23.i.i = load i32, ptr %i.fa, align 4, !alias.scope !268
  %i.fb = icmp eq i32 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i
  %i.fc = icmp ult i32 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i
  %i.fd = icmp ult i32 %.sroa.011.0.val22.i.i, %.sroa.06.0.val23.i.i
  %.sroa.0.0.i.i.i55.i = select i1 %i.fb, i1 %i.fd, i1 %i.fc ; 3 uses
  %..i21.i.i = select i1 %.sroa.0.0.i.i.i55.i, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.fe = load i64, ptr %..i21.i.i, align 4, !alias.scope !268, !noalias !269
  store i64 %i.fe, ptr %.sroa.0.010.i.i, align 4, !alias.scope !264, !noalias !270
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.sroa.0.0.i.i.i55.i, i64 8, i64 0
  %.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 %.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 4 uses
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx = select i1 %.sroa.0.0.i.i.i55.i, i64 0, i64 8
  %.sroa.sel4.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.06.08.i.i, i64 %.sroa.sel4.idx.sroa.sel.idx.sroa.sel.idx ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 8 ; 2 uses
  %.sroa.017.0.val.i.i = load i32, ptr %.sroa.017.05.i.i, align 4, !alias.scope !268, !noundef !4 ; 2 uses
  %i.fg = getelementptr i8, ptr %.sroa.017.05.i.i, i64 4
  %.sroa.017.0.val24.i.i = load i32, ptr %i.fg, align 4, !alias.scope !268
  %.sroa.015.0.val.i.i = load i32, ptr %.sroa.015.06.i.i, align 4, !alias.scope !268, !noundef !4 ; 2 uses
  %i.fh = getelementptr i8, ptr %.sroa.015.06.i.i, i64 4
  %.sroa.015.0.val25.i.i = load i32, ptr %i.fh, align 4, !alias.scope !268
  %i.fi = icmp eq i32 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i
  %i.fj = icmp ult i32 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i
  %i.fk = icmp ult i32 %.sroa.017.0.val24.i.i, %.sroa.015.0.val25.i.i
  %.sroa.0.0.i.i26.i.i = select i1 %i.fi, i1 %i.fk, i1 %i.fj ; 3 uses
  %..i.i.i = select i1 %.sroa.0.0.i.i26.i.i, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.fl = xor i1 %.sroa.0.0.i.i26.i.i, true
  %i.fm = load i64, ptr %..i.i.i, align 4, !alias.scope !268, !noalias !271
  store i64 %i.fm, ptr %.sroa.019.04.i.i, align 4, !alias.scope !264, !noalias !272
  %.neg.i.i.i = sext i1 %i.fl to i64
  %i.fn = getelementptr [8 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg13.i.i.i = sext i1 %.sroa.0.0.i.i26.i.i to i64
  %i.fo = getelementptr [8 x i8], ptr %.sroa.015.06.i.i, i64 %.neg13.i.i.i ; 2 uses
  %i.fp = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -8
  %exitcond.not.i.i = icmp eq i64 %i.ey, %i.d
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %.not = icmp ult ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %i.eu ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %.not, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel
  %i.fq = load i64, ptr %.sroa.06.0..sroa.011.0.i.i, align 4, !alias.scope !268
  store i64 %i.fq, ptr %i.ff, align 4, !alias.scope !264, !noalias !267
  %.sroa.sel16.idx.sroa.sel.idx = select i1 %.not, i64 8, i64 0
  %.sroa.sel16.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel16.idx.sroa.sel.idx
  %.sroa.sel.idx.sroa.sel.idx = select i1 %.not, i64 0, i64 8
  %.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.idx.sroa.sel.idx.sroa.sel, i64 %.sroa.sel.idx.sroa.sel.idx
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel.idx.sroa.sel, %bb.j ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %._crit_edge.i.i ], [ %.sroa.sel16.idx.sroa.sel, %bb.j ]
  %i.fr = icmp ne ptr %.sroa.06.1.i.i, %i.eu
  %i.fs = icmp ne ptr %.sroa.011.1.i.i, %i.ev
  %or.cond.i.i = select i1 %i.fr, i1 true, i1 %i.fs, !prof !14
  br i1 %or.cond.i.i, label %bb.l, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmmENvYB1s_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit, !prof !14

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #23
          to label %.noexc.i unwind label %bb.m, !noalias !273

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ft = landingpad { ptr, i32 }
          cleanup
  %i.fu = shl nuw nsw i64 %1, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 8 %i.a, i64 %i.fu, i1 false), !alias.scope !273, !noalias !274
  resume { ptr, i32 } %i.ft

.lr.ph.i:                                         ; preds = %bb.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i
  %.sroa.05.08.i = phi i64 [ %i.gp, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i ], [ %.sroa.0.0.i, %bb.i ] ; 4 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.08.i
  %.idx = shl nuw nsw i64 %.sroa.05.08.i, 3
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 4 uses
  %i.fx = load i64, ptr %i.fv, align 4, !alias.scope !264 ; 4 uses
  store i64 %i.fx, ptr %i.fw, align 8, !alias.scope !265
  %i.fy = getelementptr inbounds i8, ptr %i.fw, i64 -8 ; 3 uses
  %i.fz = trunc i64 %i.fx to i32                  ; 4 uses
  %i.ga = lshr i64 %i.fx, 32
  %i.gb = trunc nuw i64 %i.ga to i32              ; 2 uses
  %.val13.i58.i = load i32, ptr %i.fy, align 8, !alias.scope !265, !noundef !4 ; 2 uses
  %i.gc = getelementptr i8, ptr %i.fw, i64 -4
  %.val14.i59.i = load i32, ptr %i.gc, align 4, !alias.scope !265
  %i.gd = icmp eq i32 %.val13.i58.i, %i.fz
  %i.ge = icmp ugt i32 %.val13.i58.i, %i.fz
  %i.gf = icmp ugt i32 %.val14.i59.i, %i.gb
  %.sroa.0.0.i.i.i60.i = select i1 %i.gd, i1 %i.gf, i1 %i.ge
  br i1 %.sroa.0.0.i.i.i60.i, label %.preheader.i.preheader, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i

.preheader.i.preheader:                           ; preds = %.lr.ph.i
  %i.gg = load i64, ptr %i.fy, align 8, !alias.scope !265
  store i64 %i.gg, ptr %i.fw, align 8, !alias.scope !265
  %i.gh = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.gh, label %._crit_edge, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %i.gi = load i64, ptr %i.gk, align 4, !alias.scope !265
  store i64 %i.gi, ptr %.sroa.0.0.i61.i27, align 4, !alias.scope !265
  %i.gj = icmp eq ptr %i.gk, %i.a
  br i1 %i.gj, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.0.0.i61.i27 = phi ptr [ %i.gk, %.preheader.i ], [ %i.fy, %.preheader.i.preheader ] ; 4 uses
  %i.gk = getelementptr inbounds i8, ptr %.sroa.0.0.i61.i27, i64 -8 ; 4 uses
  %.val9.i62.i = load i32, ptr %i.gk, align 4, !alias.scope !265, !noundef !4 ; 2 uses
  %i.gl = getelementptr i8, ptr %.sroa.0.0.i61.i27, i64 -4
  %.val10.i63.i = load i32, ptr %i.gl, align 4, !alias.scope !265
  %i.gm = icmp eq i32 %.val9.i62.i, %i.fz
  %i.gn = icmp ugt i32 %.val9.i62.i, %i.fz
  %i.go = icmp ugt i32 %.val10.i63.i, %i.gb
  %.sroa.0.0.i.i15.i.i = select i1 %i.gm, i1 %i.go, i1 %i.gn
  br i1 %.sroa.0.0.i.i15.i.i, label %.preheader.i, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.i, %.lr.ph, %.preheader.i.preheader
  %.sroa.0.0.i61.lcssa.i = phi ptr [ %i.a, %.preheader.i.preheader ], [ %i.a, %.preheader.i ], [ %.sroa.0.0.i61.i27, %.lr.ph ]
  store i64 %i.fx, ptr %.sroa.0.0.i61.lcssa.i, align 4, !alias.scope !265, !noalias !266
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.gp = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gp, %i.d
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmmENvYB1s_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.a, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort18small_sort_networkTmjENvYB1f_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [512 x i8], align 8               ; 4 uses
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %1, 32
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = lshr i64 %1, 1                           ; 3 uses
  %i.e = icmp samesign ult i64 %1, 18             ; 2 uses
  %. = select i1 %i.e, i64 %1, i64 %i.d
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.d
  %i.g = sub nuw nsw i64 %1, %i.d
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.l, %bb.c
  %.sroa.8.0 = phi i64 [ %., %bb.c ], [ %i.g, %bb.l ] ; 5 uses
  %.sroa.02.0 = phi ptr [ %0, %bb.c ], [ %i.f, %bb.l ] ; 81 uses
  %i.h = icmp ugt i64 %.sroa.8.0, 12
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp samesign ugt i64 %.sroa.8.0, 8
  br i1 %i.i, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 192 ; 10 uses
  %.val.i.i = load i32, ptr %i.j, align 4, !alias.scope !285, !noundef !4 ; 3 uses
  %i.k = getelementptr i8, ptr %.sroa.02.0, i64 200 ; 4 uses
  %.val2.i.i = load i64, ptr %i.k, align 8, !alias.scope !285
  %.val3.i.i = load i32, ptr %.sroa.02.0, align 8, !alias.scope !285, !noundef !4 ; 3 uses
  %i.l = getelementptr i8, ptr %.sroa.02.0, i64 8 ; 4 uses
  %.val4.i.i = load i64, ptr %i.l, align 8, !alias.scope !285
  %i.m = icmp eq i32 %.val.i.i, %.val3.i.i
  %i.n = icmp ult i32 %.val.i.i, %.val3.i.i
  %i.o = icmp ult i64 %.val2.i.i, %.val4.i.i
  %.sroa.0.0.i.i.i.i = select i1 %i.m, i1 %i.o, i1 %i.n ; 3 uses
  %i.p = select i1 %.sroa.0.0.i.i.i.i, ptr %i.j, ptr %.sroa.02.0, !unpredictable !4
  %i.q = select i1 %.sroa.0.0.i.i.i.i, ptr %.sroa.02.0, ptr %i.j, !unpredictable !4
  %i.r = select i1 %.sroa.0.0.i.i.i.i, i32 %.val3.i.i, i32 %.val.i.i, !unpredictable !4 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !285, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.0, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !alias.scope !285
  store i32 %i.r, ptr %i.j, align 8, !alias.scope !285
  store i64 %i.t, ptr %i.k, align 8, !alias.scope !285
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 16 ; 23 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 160 ; 24 uses
  %.val.i1.i = load i32, ptr %i.v, align 8, !alias.scope !285, !noundef !4 ; 3 uses
  %i.w = getelementptr i8, ptr %.sroa.02.0, i64 168 ; 8 uses
  %.val2.i2.i = load i64, ptr %i.w, align 8, !alias.scope !285
  %.val3.i3.i = load i32, ptr %i.u, align 8, !alias.scope !285, !noundef !4 ; 3 uses
  %i.x = getelementptr i8, ptr %.sroa.02.0, i64 24 ; 6 uses
  %.val4.i4.i = load i64, ptr %i.x, align 8, !alias.scope !285
  %i.y = icmp eq i32 %.val.i1.i, %.val3.i3.i
  %i.z = icmp ult i32 %.val.i1.i, %.val3.i3.i
  %i.aa = icmp ult i64 %.val2.i2.i, %.val4.i4.i
  %.sroa.0.0.i.i.i5.i = select i1 %i.y, i1 %i.aa, i1 %i.z ; 3 uses
  %i.ab = select i1 %.sroa.0.0.i.i.i5.i, ptr %i.v, ptr %i.u, !unpredictable !4
  %i.ac = select i1 %.sroa.0.0.i.i.i5.i, ptr %i.u, ptr %i.v, !unpredictable !4
  %i.ad = select i1 %.sroa.0.0.i.i.i5.i, i32 %.val3.i3.i, i32 %.val.i1.i, !unpredictable !4 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !285, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !alias.scope !285
  store i32 %i.ad, ptr %i.v, align 8, !alias.scope !285
  store i64 %i.af, ptr %i.w, align 8, !alias.scope !285
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 32 ; 26 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 144 ; 28 uses
  %.val.i6.i = load i32, ptr %i.ah, align 8, !alias.scope !285, !noundef !4 ; 3 uses
  %i.ai = getelementptr i8, ptr %.sroa.02.0, i64 152 ; 9 uses
  %.val2.i7.i = load i64, ptr %i.ai, align 8, !alias.scope !285
  %.val3.i8.i = load i32, ptr %i.ag, align 8, !alias.scope !285, !noundef !4 ; 3 uses
  %i.aj = getelementptr i8, ptr %.sroa.02.0, i64 40 ; 7 uses
  %.val4.i9.i = load i64, ptr %i.aj, align 8, !alias.scope !285
  %i.ak = icmp eq i32 %.val.i6.i, %.val3.i8.i
  %i.al = icmp ult i32 %.val.i6.i, %.val3.i8.i
  %i.am = icmp ult i64 %.val2.i7.i, %.val4.i9.i
  %.sroa.0.0.i.i.i10.i = select i1 %i.ak, i1 %i.am, i1 %i.al ; 3 uses
  %i.an = select i1 %.sroa.0.0.i.i.i10.i, ptr %i.ah, ptr %i.ag, !unpredictable !4
  %i.ao = select i1 %.sroa.0.0.i.i.i10.i, ptr %i.ag, ptr %i.ah, !unpredictable !4
  %i.ap = select i1 %.sroa.0.0.i.i.i10.i, i32 %.val3.i8.i, i32 %.val.i6.i, !unpredictable !4 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !285, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !alias.scope !285
  store i32 %i.ap, ptr %i.ah, align 8, !alias.scope !285
  store i64 %i.ar, ptr %i.ai, align 8, !alias.scope !285
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 48 ; 29 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 112 ; 25 uses
  %.val.i11.i = load i32, ptr %i.at, align 8, !alias.scope !285, !noundef !4 ; 3 uses
  %i.au = getelementptr i8, ptr %.sroa.02.0, i64 120 ; 8 uses
  %.val2.i12.i = load i64, ptr %i.au, align 8, !alias.scope !285
  %.val3.i13.i = load i32, ptr %i.as, align 8, !alias.scope !285, !noundef !4 ; 3 uses
  %i.av = getelementptr i8, ptr %.sroa.02.0, i64 56 ; 8 uses
  %.val4.i14.i = load i64, ptr %i.av, align 8, !alias.scope !285
  %i.aw = icmp eq i32 %.val.i11.i, %.val3.i13.i
  %i.ax = icmp ult i32 %.val.i11.i, %.val3.i13.i
  %i.ay = icmp ult i64 %.val2.i12.i, %.val4.i14.i
  %.sroa.0.0.i.i.i15.i = select i1 %i.aw, i1 %i.ay, i1 %i.ax ; 3 uses
  %i.az = select i1 %.sroa.0.0.i.i.i15.i, ptr %i.at, ptr %i.as, !unpredictable !4
  %i.ba = select i1 %.sroa.0.0.i.i.i15.i, ptr %i.as, ptr %i.at, !unpredictable !4
  %i.bb = select i1 %.sroa.0.0.i.i.i15.i, i32 %.val3.i13.i, i32 %.val.i11.i, !unpredictable !4 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !285, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !alias.scope !285
  store i32 %i.bb, ptr %i.at, align 8, !alias.scope !285
  store i64 %i.bd, ptr %i.au, align 8, !alias.scope !285
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 80 ; 29 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 176 ; 20 uses
  %.val.i16.i = load i32, ptr %i.bf, align 8, !alias.scope !285, !noundef !4 ; 3 uses
  %i.bg = getelementptr i8, ptr %.sroa.02.0, i64 184 ; 7 uses
  %.val2.i17.i = load i64, ptr %i.bg, align 8, !alias.scope !285
  %.val3.i18.i = load i32, ptr %i.be, align 8, !alias.scope !285, !noundef !4 ; 3 uses
  %i.bh = getelementptr i8, ptr %.sroa.02.0, i64 88 ; 8 uses
  %.val4.i19.i = load i64, ptr %i.bh, align 8, !alias.scope !285
  %i.bi = icmp eq i32 %.val.i16.i, %.val3.i18.i
  %i.bj = icmp ult i32 %.val.i16.i, %.val3.i18.i
  %i.bk = icmp ult i64 %.val2.i17.i, %.val4.i19.i
  %.sroa.0.0.i.i.i20.i = select i1 %i.bi, i1 %i.bk, i1 %i.bj ; 3 uses
  %i.bl = select i1 %.sroa.0.0.i.i.i20.i, ptr %i.bf, ptr %i.be, !unpredictable !4
  %i.bm = select i1 %.sroa.0.0.i.i.i20.i, ptr %i.be, ptr %i.bf, !unpredictable !4
  %i.bn = select i1 %.sroa.0.0.i.i.i20.i, i32 %.val3.i18.i, i32 %.val.i16.i, !unpredictable !4 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !285, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i64 16, i1 false), !alias.scope !285
  store i32 %i.bn, ptr %i.bf, align 8, !alias.scope !285
  store i64 %i.bp, ptr %i.bg, align 8, !alias.scope !285
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 96 ; 36 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 128 ; 27 uses
  %.val.i21.i = load i32, ptr %i.br, align 8, !alias.scope !285, !noundef !4 ; 3 uses
  %i.bs = getelementptr i8, ptr %.sroa.02.0, i64 136 ; 8 uses
  %.val2.i22.i = load i64, ptr %i.bs, align 8, !alias.scope !285
  %.val3.i23.i = load i32, ptr %i.bq, align 8, !alias.scope !285, !noundef !4 ; 3 uses
  %i.bt = getelementptr i8, ptr %.sroa.02.0, i64 104 ; 11 uses
  %.val4.i24.i = load i64, ptr %i.bt, align 8, !alias.scope !285
  %i.bu = icmp eq i32 %.val.i21.i, %.val3.i23.i
  %i.bv = icmp ult i32 %.val.i21.i, %.val3.i23.i
  %i.bw = icmp ult i64 %.val2.i22.i, %.val4.i24.i
  %.sroa.0.0.i.i.i25.i = select i1 %i.bu, i1 %i.bw, i1 %i.bv ; 3 uses
  %i.bx = select i1 %.sroa.0.0.i.i.i25.i, ptr %i.br, ptr %i.bq, !unpredictable !4
  %i.by = select i1 %.sroa.0.0.i.i.i25.i, ptr %i.bq, ptr %i.br, !unpredictable !4
  %i.bz = select i1 %.sroa.0.0.i.i.i25.i, i32 %.val3.i23.i, i32 %.val.i21.i, !unpredictable !4 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !285, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false), !alias.scope !285
  store i32 %i.bz, ptr %i.br, align 8, !alias.scope !285
  store i64 %i.cb, ptr %i.bs, align 8, !alias.scope !285
  %.val.i26.i = load i32, ptr %i.bq, align 8, !alias.scope !285, !noundef !4 ; 3 uses
  %.val2.i27.i = load i64, ptr %i.bt, align 8, !alias.scope !285
  %.val3.i28.i = load i32, ptr %i.u, align 8, !alias.scope !285, !noundef !4 ; 3 uses
  %.val4.i29.i = load i64, ptr %i.x, align 8, !alias.scope !285
  %i.cc = icmp eq i32 %.val.i26.i, %.val3.i28.i
  %i.cd = icmp ult i32 %.val.i26.i, %.val3.i28.i
  %i.ce = icmp ult i64 %.val2.i27.i, %.val4.i29.i
  %.sroa.0.0.i.i.i30.i = select i1 %i.cc, i1 %i.ce, i1 %i.cd ; 3 uses
  %i.cf = select i1 %.sroa.0.0.i.i.i30.i, ptr %i.bq, ptr %i.u, !unpredictable !4
  %i.cg = select i1 %.sroa.0.0.i.i.i30.i, ptr %i.u, ptr %i.bq, !unpredictable !4
  %i.ch = select i1 %.sroa.0.0.i.i.i30.i, i32 %.val3.i28.i, i32 %.val.i26.i, !unpredictable !4 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !285, !noundef !4 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i64 16, i1 false), !alias.scope !285
  store i32 %i.ch, ptr %i.bq, align 8, !alias.scope !285
  store i64 %i.cj, ptr %i.bt, align 8, !alias.scope !285
  %.val.i31.i = load i32, ptr %i.as, align 8, !alias.scope !285, !noundef !4 ; 3 uses
  %.val2.i32.i = load i64, ptr %i.av, align 8, !alias.scope !285
  %.val3.i33.i = load i32, ptr %i.ag, align 8, !alias.scope !285, !noundef !4 ; 3 uses
  %.val4.i34.i = load i64, ptr %i.aj, align 8, !alias.scope !285
  %i.ck = icmp eq i32 %.val.i31.i, %.val3.i33.i
  %i.cl = icmp ult i32 %.val.i31.i, %.val3.i33.i
  %i.cm = icmp ult i64 %.val2.i32.i, %.val4.i34.i
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort18small_sort_networkTmmENvYB1f_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls:bb.a

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.acd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.02.0, i64 %.sroa.8.0
  %.not4.i = icmp samesign eq i64 %.sroa.01.0, %.sroa.8.0
  br i1 %.not4.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTmmENvYB1m_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.k
  %i.ace = getelementptr inbounds nuw [8 x i8], ptr %.sroa.02.0, i64 %.sroa.01.0
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i, %.lr.ph.preheader.i
  %.sroa.0.05.i = phi ptr [ %i.acw, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i ], [ %i.ace, %.lr.ph.preheader.i ] ; 5 uses
  %i.acf = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -8 ; 4 uses
  %.val11.i.i = load i64, ptr %.sroa.0.05.i, align 4, !alias.scope !309 ; 3 uses
  %i.acg = trunc i64 %.val11.i.i to i32           ; 4 uses
  %i.ach = lshr i64 %.val11.i.i, 32
  %i.aci = trunc nuw i64 %i.ach to i32            ; 2 uses
  %.val13.i.i = load i32, ptr %i.acf, align 4, !alias.scope !309, !noundef !4 ; 2 uses
  %i.acj = getelementptr i8, ptr %.sroa.0.05.i, i64 -4
  %.val14.i.i = load i32, ptr %i.acj, align 4, !alias.scope !309
  %i.ack = icmp eq i32 %.val13.i.i, %i.acg
  %i.acl = icmp ugt i32 %.val13.i.i, %i.acg
  %i.acm = icmp ugt i32 %.val14.i.i, %i.aci
  %.sroa.0.0.i.i.i.i62 = select i1 %i.ack, i1 %i.acm, i1 %i.acl
  br i1 %.sroa.0.0.i.i.i.i62, label %.preheader.i.preheader, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i

.preheader.i.preheader:                           ; preds = %.lr.ph.i
  %i.acn = load i64, ptr %i.acf, align 4, !alias.scope !309
  store i64 %i.acn, ptr %.sroa.0.05.i, align 4, !alias.scope !309
  %i.aco = icmp eq ptr %i.acf, %.sroa.02.0
  br i1 %i.aco, label %._crit_edge, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %i.acp = load i64, ptr %i.acr, align 4, !alias.scope !309
  store i64 %i.acp, ptr %.sroa.0.0.i.i83, align 4, !alias.scope !309
  %i.acq = icmp eq ptr %i.acr, %.sroa.02.0
  br i1 %i.acq, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.0.0.i.i83 = phi ptr [ %i.acr, %.preheader.i ], [ %i.acf, %.preheader.i.preheader ] ; 4 uses
  %i.acr = getelementptr inbounds i8, ptr %.sroa.0.0.i.i83, i64 -8 ; 4 uses
  %.val9.i.i = load i32, ptr %i.acr, align 4, !alias.scope !309, !noundef !4 ; 2 uses
  %i.acs = getelementptr i8, ptr %.sroa.0.0.i.i83, i64 -4
  %.val10.i.i = load i32, ptr %i.acs, align 4, !alias.scope !309
  %i.act = icmp eq i32 %.val9.i.i, %i.acg
  %i.acu = icmp ugt i32 %.val9.i.i, %i.acg
  %i.acv = icmp ugt i32 %.val10.i.i, %i.aci
  %.sroa.0.0.i.i15.i.i = select i1 %i.act, i1 %i.acv, i1 %i.acu
  br i1 %.sroa.0.0.i.i15.i.i, label %.preheader.i, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.i, %.lr.ph, %.preheader.i.preheader
  %.sroa.0.0.i.lcssa.i = phi ptr [ %.sroa.02.0, %.preheader.i.preheader ], [ %.sroa.02.0, %.preheader.i ], [ %.sroa.0.0.i.i83, %.lr.ph ]
  store i64 %.val11.i.i, ptr %.sroa.0.0.i.lcssa.i, align 4, !alias.scope !309, !noalias !310
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i: ; preds = %._crit_edge, %.lr.ph.i
  %i.acw = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.acw, %i.acd
  br i1 %.not.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTmmENvYB1m_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit, label %.lr.ph.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTmmENvYB1m_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit: ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit.i, %bb.k
  br i1 %i.e, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTmmENvYB1m_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit
  %.not = icmp eq ptr %.sroa.02.0, %0
  br i1 %.not, label %bb.e, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  %i.acx = add nsw i64 %1, -1                     ; 2 uses
  %i.acy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.acx
  %i.acz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.acx
  %i.ada = getelementptr i8, ptr %i.f, i64 -8
  br label %.lr.ph.i64

._crit_edge.i:                                    ; preds = %.lr.ph.i64
  %i.adb = getelementptr i8, ptr %i.aea, i64 8    ; 2 uses
  %i.adc = getelementptr i8, ptr %i.adz, i64 8
  %i.add = and i64 %1, 1
  %i.ade = icmp eq i64 %i.add, 0
  br i1 %i.ade, label %bb.o, label %bb.n

.lr.ph.i64:                                       ; preds = %.lr.ph.i64, %bb.m
  %.sroa.0.010.i = phi ptr [ %i.adr, %.lr.ph.i64 ], [ %i.a, %bb.m ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.adf, %.lr.ph.i64 ], [ 0, %bb.m ]
  %.sroa.06.08.i = phi ptr [ %i.adq, %.lr.ph.i64 ], [ %0, %bb.m ] ; 4 uses
  %.sroa.011.07.i = phi ptr [ %i.ado, %.lr.ph.i64 ], [ %i.f, %bb.m ] ; 4 uses
  %.sroa.015.06.i = phi ptr [ %i.aea, %.lr.ph.i64 ], [ %i.ada, %bb.m ] ; 4 uses
  %.sroa.017.05.i = phi ptr [ %i.adz, %.lr.ph.i64 ], [ %i.acz, %bb.m ] ; 4 uses
  %.sroa.019.04.i = phi ptr [ %i.aeb, %.lr.ph.i64 ], [ %i.acy, %bb.m ] ; 2 uses
  %i.adf = add nuw nsw i64 %.sroa.04.09.i, 1      ; 2 uses
  %.sroa.011.0.val.i = load i32, ptr %.sroa.011.07.i, align 4, !alias.scope !311, !noundef !4 ; 2 uses
  %i.adg = getelementptr i8, ptr %.sroa.011.07.i, i64 4
  %.sroa.011.0.val22.i = load i32, ptr %i.adg, align 4, !alias.scope !311
  %.sroa.06.0.val.i = load i32, ptr %.sroa.06.08.i, align 4, !alias.scope !311, !noundef !4 ; 2 uses
  %i.adh = getelementptr i8, ptr %.sroa.06.08.i, i64 4
  %.sroa.06.0.val23.i = load i32, ptr %i.adh, align 4, !alias.scope !311
  %i.adi = icmp eq i32 %.sroa.011.0.val.i, %.sroa.06.0.val.i
  %i.adj = icmp ult i32 %.sroa.011.0.val.i, %.sroa.06.0.val.i
  %i.adk = icmp ult i32 %.sroa.011.0.val22.i, %.sroa.06.0.val23.i
  %.sroa.0.0.i.i.i = select i1 %i.adi, i1 %i.adk, i1 %i.adj ; 3 uses
  %..i21.i = select i1 %.sroa.0.0.i.i.i, ptr %.sroa.011.07.i, ptr %.sroa.06.08.i
  %i.adl = xor i1 %.sroa.0.0.i.i.i, true
  %i.adm = load i64, ptr %..i21.i, align 4, !alias.scope !311, !noalias !312
  store i64 %i.adm, ptr %.sroa.0.010.i, align 4, !noalias !313
  %i.adn = zext i1 %.sroa.0.0.i.i.i to i64
  %i.ado = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.07.i, i64 %i.adn ; 4 uses
  %i.adp = zext i1 %i.adl to i64
  %i.adq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.08.i, i64 %i.adp ; 5 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 8 ; 2 uses
  %.sroa.017.0.val.i = load i32, ptr %.sroa.017.05.i, align 4, !alias.scope !311, !noundef !4 ; 2 uses
  %i.ads = getelementptr i8, ptr %.sroa.017.05.i, i64 4
  %.sroa.017.0.val24.i = load i32, ptr %i.ads, align 4, !alias.scope !311
  %.sroa.015.0.val.i = load i32, ptr %.sroa.015.06.i, align 4, !alias.scope !311, !noundef !4 ; 2 uses
  %i.adt = getelementptr i8, ptr %.sroa.015.06.i, i64 4
  %.sroa.015.0.val25.i = load i32, ptr %i.adt, align 4, !alias.scope !311
  %i.adu = icmp eq i32 %.sroa.017.0.val.i, %.sroa.015.0.val.i
  %i.adv = icmp ult i32 %.sroa.017.0.val.i, %.sroa.015.0.val.i
  %i.adw = icmp ult i32 %.sroa.017.0.val24.i, %.sroa.015.0.val25.i
  %.sroa.0.0.i.i26.i = select i1 %i.adu, i1 %i.adw, i1 %i.adv ; 3 uses
  %..i.i = select i1 %.sroa.0.0.i.i26.i, ptr %.sroa.015.06.i, ptr %.sroa.017.05.i
  %i.adx = xor i1 %.sroa.0.0.i.i26.i, true
  %i.ady = load i64, ptr %..i.i, align 4, !alias.scope !311, !noalias !314
  store i64 %i.ady, ptr %.sroa.019.04.i, align 4, !noalias !315
  %.neg.i.i = sext i1 %i.adx to i64
  %i.adz = getelementptr [8 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %.sroa.0.0.i.i26.i to i64
  %i.aea = getelementptr [8 x i8], ptr %.sroa.015.06.i, i64 %.neg13.i.i ; 2 uses
  %i.aeb = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -8
  %exitcond.not.i = icmp eq i64 %i.adf, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i64

bb.n:                                             ; preds = %._crit_edge.i
  %i.aec = icmp ult ptr %i.adq, %i.adb            ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.aec, ptr %i.adq, ptr %i.ado
  %i.aed = load i64, ptr %.sroa.06.0..sroa.011.0.i, align 4, !alias.scope !311
  store i64 %i.aed, ptr %i.adr, align 4, !noalias !311
  %i.aee = zext i1 %i.aec to i64
  %i.aef = getelementptr inbounds nuw [8 x i8], ptr %i.adq, i64 %i.aee
  %i.aeg = xor i1 %i.aec, true
  %i.aeh = zext i1 %i.aeg to i64
  %i.aei = getelementptr inbounds nuw [8 x i8], ptr %i.ado, i64 %i.aeh
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.ado, %._crit_edge.i ], [ %i.aei, %bb.n ]
  %.sroa.06.1.i = phi ptr [ %i.adq, %._crit_edge.i ], [ %i.aef, %bb.n ]
  %i.aej = icmp ne ptr %.sroa.06.1.i, %i.adb
  %i.aek = icmp ne ptr %.sroa.011.1.i, %i.adc
  %or.cond.i = select i1 %i.aej, i1 true, i1 %i.aek, !prof !14
  br i1 %or.cond.i, label %bb.p, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeTmmENvYB1g_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit, !prof !14

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #23, !noalias !311
  unreachable

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeTmmENvYB1g_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit: ; preds = %bb.o
  %i.ael = shl nuw nsw i64 %1, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 4 %i.a, i64 %i.ael, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTmmENvYB1m_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeTmmENvYB1g_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeTmjENvYB1g_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 2, 576460752303423488) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #1 {
.lr.ph.preheader:
  %i.a = lshr i64 %1, 1                           ; 2 uses
  %i.b = add nsw i64 %1, -1                       ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.b
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.b
  %i.e = getelementptr [16 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -16
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.g = getelementptr i8, ptr %i.ad, i64 16      ; 2 uses
  %i.h = getelementptr i8, ptr %i.ac, i64 16
  %i.i = and i64 %1, 1
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.010 = phi ptr [ %i.v, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.sroa.04.09 = phi i64 [ %i.k, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.sroa.06.08 = phi ptr [ %i.u, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 4 uses
  %.sroa.011.07 = phi ptr [ %i.s, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 4 uses
  %.sroa.015.06 = phi ptr [ %i.ad, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 4 uses
  %.sroa.017.05 = phi ptr [ %i.ac, %.lr.ph ], [ %i.d, %.lr.ph.preheader ] ; 4 uses
  %.sroa.019.04 = phi ptr [ %i.ae, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.04.09, 1          ; 2 uses
  %.sroa.011.0.val = load i32, ptr %.sroa.011.07, align 4, !noundef !4 ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.011.07, i64 8
  %.sroa.011.0.val22 = load i64, ptr %i.l, align 8
  %.sroa.06.0.val = load i32, ptr %.sroa.06.08, align 4, !noundef !4 ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.06.08, i64 8
  %.sroa.06.0.val23 = load i64, ptr %i.m, align 8
  %i.n = icmp eq i32 %.sroa.011.0.val, %.sroa.06.0.val
  %i.o = icmp ult i32 %.sroa.011.0.val, %.sroa.06.0.val
  %i.p = icmp ult i64 %.sroa.011.0.val22, %.sroa.06.0.val23
  %.sroa.0.0.i.i = select i1 %i.n, i1 %i.p, i1 %i.o ; 3 uses
  %..i21 = select i1 %.sroa.0.0.i.i, ptr %.sroa.011.07, ptr %.sroa.06.08
  %i.q = xor i1 %.sroa.0.0.i.i, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010, ptr noundef nonnull align 8 dereferenceable(16) %..i21, i64 16, i1 false), !noalias !322
  %i.r = zext i1 %.sroa.0.0.i.i to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.07, i64 %i.r ; 4 uses
  %i.t = zext i1 %i.q to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.sroa.06.08, i64 %i.t ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 16 ; 2 uses
  %.sroa.017.0.val = load i32, ptr %.sroa.017.05, align 4, !noundef !4 ; 2 uses
  %i.w = getelementptr i8, ptr %.sroa.017.05, i64 8
  %.sroa.017.0.val24 = load i64, ptr %i.w, align 8
  %.sroa.015.0.val = load i32, ptr %.sroa.015.06, align 4, !noundef !4 ; 2 uses
  %i.x = getelementptr i8, ptr %.sroa.015.06, i64 8
  %.sroa.015.0.val25 = load i64, ptr %i.x, align 8
  %i.y = icmp eq i32 %.sroa.017.0.val, %.sroa.015.0.val
  %i.z = icmp ult i32 %.sroa.017.0.val, %.sroa.015.0.val
  %i.aa = icmp ult i64 %.sroa.017.0.val24, %.sroa.015.0.val25
  %.sroa.0.0.i.i26 = select i1 %i.y, i1 %i.aa, i1 %i.z ; 3 uses
  %..i = select i1 %.sroa.0.0.i.i26, ptr %.sroa.015.06, ptr %.sroa.017.05
  %i.ab = xor i1 %.sroa.0.0.i.i26, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.04, ptr noundef nonnull align 8 dereferenceable(16) %..i, i64 16, i1 false), !noalias !323
  %.neg.i = sext i1 %i.ab to i64
  %i.ac = getelementptr [16 x i8], ptr %.sroa.017.05, i64 %.neg.i ; 2 uses
  %.neg13.i = sext i1 %.sroa.0.0.i.i26 to i64
  %i.ad = getelementptr [16 x i8], ptr %.sroa.015.06, i64 %.neg13.i ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.sroa.019.04, i64 -16
  %exitcond.not = icmp eq i64 %i.k, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.a:                                             ; preds = %._crit_edge
  %i.af = icmp ult ptr %i.u, %i.g                 ; 3 uses
  %.sroa.06.0..sroa.011.0 = select i1 %i.af, ptr %i.u, ptr %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0..sroa.011.0, i64 16, i1 false)
  %i.ag = zext i1 %i.af to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.ag
  %i.ai = xor i1 %i.af, true
  %i.aj = zext i1 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.aj
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.011.1 = phi ptr [ %i.s, %._crit_edge ], [ %i.ak, %bb.a ]
  %.sroa.06.1 = phi ptr [ %i.u, %._crit_edge ], [ %i.ah, %bb.a ]
  %i.al = icmp ne ptr %.sroa.06.1, %i.g
  %i.am = icmp ne ptr %.sroa.011.1, %i.h
  %or.cond = select i1 %i.al, i1 true, i1 %i.am, !prof !14
  br i1 %or.cond, label %bb.d, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #23
  unreachable
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTmjENvYB1m_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 576460752303423488) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
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

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit
  %.sroa.0.05 = phi ptr [ %i.q, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit ], [ %i.c, %.lr.ph.preheader ] ; 6 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16 ; 4 uses
  %.val11.i = load i32, ptr %.sroa.0.05, align 4, !noundef !4 ; 5 uses
  %i.e = getelementptr i8, ptr %.sroa.0.05, i64 8
  %.val12.i = load i64, ptr %i.e, align 8         ; 3 uses
  %.val13.i = load i32, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = getelementptr i8, ptr %.sroa.0.05, i64 -8
  %.val14.i = load i64, ptr %i.f, align 8
  %i.g = icmp eq i32 %.val11.i, %.val13.i
  %i.h = icmp ult i32 %.val11.i, %.val13.i
  %i.i = icmp ult i64 %.val12.i, %.val14.i
  %.sroa.0.0.i.i.i = select i1 %i.g, i1 %i.i, i1 %i.h
  br i1 %.sroa.0.0.i.i.i, label %.preheader.preheader, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit

.preheader.preheader:                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.j = icmp eq ptr %i.d, %0
  br i1 %i.j, label %._crit_edge10, label %.lr.ph9

.preheader:                                       ; preds = %.lr.ph9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i8, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false)
  %i.k = icmp eq ptr %i.l, %0
  br i1 %i.k, label %._crit_edge10, label %.lr.ph9

.lr.ph9:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i8 = phi ptr [ %i.l, %.preheader ], [ %i.d, %.preheader.preheader ] ; 4 uses
  %i.l = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -16 ; 4 uses
  %.val9.i = load i32, ptr %i.l, align 4, !noundef !4 ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.0.0.i8, i64 -8
  %.val10.i = load i64, ptr %i.m, align 8
  %i.n = icmp eq i32 %.val11.i, %.val9.i
  %i.o = icmp ult i32 %.val11.i, %.val9.i
  %i.p = icmp ult i64 %.val12.i, %.val10.i
  %.sroa.0.0.i.i15.i = select i1 %i.n, i1 %i.p, i1 %i.o
  br i1 %.sroa.0.0.i.i15.i, label %.preheader, label %._crit_edge10

._crit_edge10:                                    ; preds = %.preheader, %.lr.ph9, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i8, %.lr.ph9 ] ; 2 uses
  store i32 %.val11.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !328
  %.sroa.46.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 8
  store i64 %.val12.i, ptr %.sroa.46.0..sroa.0.0.lcssa.sroa_idx.i, align 8, !noalias !328
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmjENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit: ; preds = %.lr.ph, %._crit_edge10
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.q, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTmmENvYB1m_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit
  %.sroa.0.05 = phi ptr [ %i.u, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 4 uses
  %.val11.i = load i64, ptr %.sroa.0.05, align 4  ; 3 uses
  %i.e = trunc i64 %.val11.i to i32               ; 4 uses
  %i.f = lshr i64 %.val11.i, 32
  %i.g = trunc nuw i64 %i.f to i32                ; 2 uses
  %.val13.i = load i32, ptr %i.d, align 4, !noundef !4 ; 2 uses
  %i.h = getelementptr i8, ptr %.sroa.0.05, i64 -4
  %.val14.i = load i32, ptr %i.h, align 4
  %i.i = icmp eq i32 %.val13.i, %i.e
  %i.j = icmp ugt i32 %.val13.i, %i.e
  %i.k = icmp ugt i32 %.val14.i, %i.g
  %.sroa.0.0.i.i.i = select i1 %i.i, i1 %i.k, i1 %i.j
  br i1 %.sroa.0.0.i.i.i, label %.preheader.preheader, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit

.preheader.preheader:                             ; preds = %.lr.ph
  %i.l = load i64, ptr %i.d, align 4
  store i64 %i.l, ptr %.sroa.0.05, align 4
  %i.m = icmp eq ptr %i.d, %0
  br i1 %i.m, label %._crit_edge10, label %.lr.ph9

.preheader:                                       ; preds = %.lr.ph9
  %i.n = load i64, ptr %i.p, align 4
  store i64 %i.n, ptr %.sroa.0.0.i8, align 4
  %i.o = icmp eq ptr %i.p, %0
  br i1 %i.o, label %._crit_edge10, label %.lr.ph9

.lr.ph9:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i8 = phi ptr [ %i.p, %.preheader ], [ %i.d, %.preheader.preheader ] ; 4 uses
  %i.p = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -8 ; 4 uses
  %.val9.i = load i32, ptr %i.p, align 4, !noundef !4 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.0.0.i8, i64 -4
  %.val10.i = load i32, ptr %i.q, align 4
  %i.r = icmp eq i32 %.val9.i, %i.e
  %i.s = icmp ugt i32 %.val9.i, %i.e
  %i.t = icmp ugt i32 %.val10.i, %i.g
  %.sroa.0.0.i.i15.i = select i1 %i.r, i1 %i.t, i1 %i.s
  br i1 %.sroa.0.0.i.i15.i, label %.preheader, label %._crit_edge10

._crit_edge10:                                    ; preds = %.preheader, %.lr.ph9, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i8, %.lr.ph9 ]
  store i64 %.val11.i, ptr %.sroa.0.0.i.lcssa, align 4, !noalias !333
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTmmENvYB18_NtNtBa_3cmp10PartialOrd2ltECs7ZUl82OSlxp_6rustls.exit: ; preds = %.lr.ph, %._crit_edge10
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.u, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpke23DH_KEM_P256_HKDF_SHA2560B9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpke25generate_p_curve_key_pair(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @5)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpke23DH_KEM_P384_HKDF_SHA3840B9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpke25generate_p_curve_key_pair(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @6)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpke23DH_KEM_P521_HKDF_SHA5120B9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpke25generate_p_curve_key_pair(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @7)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpke23DH_KEM_P256_HKDF_SHA2560INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceuE9call_once6vtableBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr nofree readnone captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpke25generate_p_curve_key_pair(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @5)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpke23DH_KEM_P384_HKDF_SHA3840INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceuE9call_once6vtableBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr nofree readnone captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpke25generate_p_curve_key_pair(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @6)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpke23DH_KEM_P521_HKDF_SHA5120INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceuE9call_once6vtableBe_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr nofree readnone captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpke25generate_p_curve_key_pair(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @7)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpke24generate_x25519_key_pairINtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceuE9call_once6vtableBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr nofree readnone captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpke24generate_x25519_key_pair(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpkeINtB2_11HpkeAwsLcRsKj10_Kj20_E12key_scheduleB8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 1 captures(address) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [12 x i8], align 1                ; 4 uses
  %i.e = alloca [16 x i8], align 1                ; 4 uses
  %i.f = alloca [16 x i8], align 1                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !align !5, !noundef !4 ; 4 uses
  invoke void @_RNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpke23labeled_extract_for_prk(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.o, ptr noalias nofree noundef nonnull readonly align 2 captures(address) dereferenceable(12) %i.k, ptr noalias nofree noundef readonly captures(address, read_provenance) null, i64 undef, i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %bb.c unwind label %bb.b

.body21:                                          ; preds = %bb.q, %bb.b, %.body16
  %.pn7 = phi { ptr, i32 } [ %.pn5, %.body16 ], [ %i.r, %bb.b ], [ %i.be, %bb.q ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !346
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %2, ptr %i.c, align 8, !noalias !346
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !346
  invoke void @_RNvXs4_CshEiLVZluVSb_7zeroizeINtNtNtCsj6eKBz9Db1c_4core5slice4iter7IterMuthENtB5_7Zeroize7zeroizeCs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.u unwind label %bb.t

bb.b:                                             ; preds = %bb.r, %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body21

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvNtNtNtCs7ZUl82OSlxp_6rustls6crypto9aws_lc_rs4hpke23labeled_extract_for_prk(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.o, ptr noalias nofree noundef nonnull readonly align 2 captures(address) dereferenceable(12) %i.k, ptr noalias nofree noundef readonly captures(address, read_provenance) null, i64 undef, i8 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %bb.e unwind label %bb.d

.body16:                                          ; preds = %bb.n, %bb.d, %.body
  %.pn5 = phi { ptr, i32 } [ %.pn3, %.body ], [ %i.s, %bb.d ], [ %i.bc, %bb.n ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #24
          to label %.body21 unwind label %bb.t

bb.d:                                             ; preds = %bb.o, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body16

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8
end_hunk_1
