begin_hunk_0_@_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE13choose_strideCsfISxE4fmY1Y_14polars_parquet:bb.a
  %i.p = add i64 %i.o, %.val20, !dbg !34954
  %i.q = lshr i64 %i.p, 3, !dbg !34954
  %i.r = add nsw i64 %2, -1, !dbg !34954
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.q), !dbg !34954
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.r), !dbg !34954 ; 2 uses
  %i.u = add nuw nsw i64 %i.t, 1, !dbg !34954     ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.t, 8, !dbg !34954
  br i1 %min.iters.check, label %.lr.ph.preheader61, label %vector.scevcheck, !dbg !34954

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.v = lshr i64 %.val20, 3, !dbg !34954
  %i.w = sub i64 7, %.val20, !dbg !34954
  %i.x = tail call i64 @llvm.umax.i64(i64 %i.w, i64 -8), !dbg !34954
  %i.y = add i64 %i.x, %.val20, !dbg !34954
  %i.z = lshr i64 %i.y, 3, !dbg !34954
  %i.aa = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.z), !dbg !34954
  %i.ab = add nsw i64 %2, -1, !dbg !34954
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.ab), !dbg !34954
  %i.ad = icmp eq i64 %i.ac, 2305843009213693951, !dbg !34954
  br i1 %i.ad, label %.lr.ph.preheader61, label %vector.ph, !dbg !34958

vector.ph:                                        ; preds = %vector.scevcheck
  %n.mod.vf = and i64 %i.u, 3                     ; 2 uses
  %i.ae = icmp eq i64 %n.mod.vf, 0
  %i.af = select i1 %i.ae, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.u, %i.af                ; 3 uses
  %i.ag = getelementptr i8, ptr %1, i64 %n.vec
  br label %vector.body, !dbg !34958

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !34958 ; 6 uses
  %next.gep = getelementptr i8, ptr %1, i64 %index
  %.idx = shl nuw i64 %index, 5, !dbg !34961
  %i.ah = getelementptr inbounds nuw i8, ptr %.val19, i64 %.idx, !dbg !34961 ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32, !dbg !34961
  %.idx58 = shl i64 %index, 5, !dbg !34961
  %i.aj = getelementptr inbounds nuw i8, ptr %.val19, i64 %.idx58, !dbg !34961 ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64, !dbg !34961
  %.idx59 = shl i64 %index, 5, !dbg !34961
  %i.al = getelementptr inbounds nuw i8, ptr %.val19, i64 %.idx59, !dbg !34961 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 96, !dbg !34961
  %.idx60 = shl i64 %index, 5, !dbg !34961
  %i.an = getelementptr i8, ptr %.val19, i64 %.idx60, !dbg !34961 ; 8 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 128, !dbg !34961
  %i.ap = load float, ptr %i.ai, align 4, !dbg !34964, !noundef !14
  %i.aq = load float, ptr %i.ak, align 4, !dbg !34964, !noundef !14
  %i.ar = load float, ptr %i.am, align 4, !dbg !34964, !noundef !14
  %i.as = load float, ptr %i.ao, align 4, !dbg !34964, !noundef !14
  %i.at = insertelement <4 x float> poison, float %i.ap, i64 0
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 1
  %i.av = insertelement <4 x float> %i.au, float %i.ar, i64 2
  %i.aw = insertelement <4 x float> %i.av, float %i.as, i64 3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 36, !dbg !34967
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 68, !dbg !34967
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 100, !dbg !34967
  %i.ba = getelementptr i8, ptr %i.an, i64 132, !dbg !34967
  %i.bb = load float, ptr %i.ax, align 4, !dbg !34974, !noundef !14
  %i.bc = load float, ptr %i.ay, align 4, !dbg !34974, !noundef !14
  %i.bd = load float, ptr %i.az, align 4, !dbg !34974, !noundef !14
  %i.be = load float, ptr %i.ba, align 4, !dbg !34974, !noundef !14
  %i.bf = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 1
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 2
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 3 ; 2 uses
  %i.bj = fadd <4 x float> %i.bi, splat (float 2.000000e+00), !dbg !34974
  %i.bk = fcmp olt <4 x float> %i.bj, %i.aw, !dbg !34974 ; 2 uses
  %i.bl = zext <4 x i1> %i.bk to <4 x i8>, !dbg !34974
  %i.bm = select <4 x i1> %i.bk, <4 x float> %i.bi, <4 x float> %i.aw, !dbg !34974 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 40, !dbg !34967
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aj, i64 72, !dbg !34967
  %i.bp = getelementptr inbounds nuw i8, ptr %i.al, i64 104, !dbg !34967
  %i.bq = getelementptr i8, ptr %i.an, i64 136, !dbg !34967
  %i.br = load float, ptr %i.bn, align 4, !dbg !34974, !noundef !14
  %i.bs = load float, ptr %i.bo, align 4, !dbg !34974, !noundef !14
  %i.bt = load float, ptr %i.bp, align 4, !dbg !34974, !noundef !14
  %i.bu = load float, ptr %i.bq, align 4, !dbg !34974, !noundef !14
  %i.bv = insertelement <4 x float> poison, float %i.br, i64 0
  %i.bw = insertelement <4 x float> %i.bv, float %i.bs, i64 1
  %i.bx = insertelement <4 x float> %i.bw, float %i.bt, i64 2
  %i.by = insertelement <4 x float> %i.bx, float %i.bu, i64 3 ; 2 uses
  %i.bz = fadd <4 x float> %i.by, splat (float 2.000000e+00), !dbg !34974
  %i.ca = fcmp olt <4 x float> %i.bz, %i.bm, !dbg !34974 ; 2 uses
  %i.cb = select <4 x i1> %i.ca, <4 x i8> splat (i8 2), <4 x i8> %i.bl, !dbg !34974
  %i.cc = select <4 x i1> %i.ca, <4 x float> %i.by, <4 x float> %i.bm, !dbg !34974 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ah, i64 44, !dbg !34967
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aj, i64 76, !dbg !34967
  %i.cf = getelementptr inbounds nuw i8, ptr %i.al, i64 108, !dbg !34967
  %i.cg = getelementptr i8, ptr %i.an, i64 140, !dbg !34967
  %i.ch = load float, ptr %i.cd, align 4, !dbg !34974, !noundef !14
  %i.ci = load float, ptr %i.ce, align 4, !dbg !34974, !noundef !14
  %i.cj = load float, ptr %i.cf, align 4, !dbg !34974, !noundef !14
  %i.ck = load float, ptr %i.cg, align 4, !dbg !34974, !noundef !14
  %i.cl = insertelement <4 x float> poison, float %i.ch, i64 0
  %i.cm = insertelement <4 x float> %i.cl, float %i.ci, i64 1
  %i.cn = insertelement <4 x float> %i.cm, float %i.cj, i64 2
  %i.co = insertelement <4 x float> %i.cn, float %i.ck, i64 3 ; 2 uses
  %i.cp = fadd <4 x float> %i.co, splat (float 2.000000e+00), !dbg !34974
  %i.cq = fcmp olt <4 x float> %i.cp, %i.cc, !dbg !34974 ; 2 uses
  %i.cr = select <4 x i1> %i.cq, <4 x i8> splat (i8 3), <4 x i8> %i.cb, !dbg !34974
  %i.cs = select <4 x i1> %i.cq, <4 x float> %i.co, <4 x float> %i.cc, !dbg !34974 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ah, i64 48, !dbg !34967
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aj, i64 80, !dbg !34967
  %i.cv = getelementptr inbounds nuw i8, ptr %i.al, i64 112, !dbg !34967
  %i.cw = getelementptr i8, ptr %i.an, i64 144, !dbg !34967
  %i.cx = load float, ptr %i.ct, align 4, !dbg !34974, !noundef !14
  %i.cy = load float, ptr %i.cu, align 4, !dbg !34974, !noundef !14
  %i.cz = load float, ptr %i.cv, align 4, !dbg !34974, !noundef !14
  %i.da = load float, ptr %i.cw, align 4, !dbg !34974, !noundef !14
  %i.db = insertelement <4 x float> poison, float %i.cx, i64 0
  %i.dc = insertelement <4 x float> %i.db, float %i.cy, i64 1
  %i.dd = insertelement <4 x float> %i.dc, float %i.cz, i64 2
  %i.de = insertelement <4 x float> %i.dd, float %i.da, i64 3 ; 2 uses
  %i.df = fadd <4 x float> %i.de, splat (float 2.000000e+00), !dbg !34974
  %i.dg = fcmp olt <4 x float> %i.df, %i.cs, !dbg !34974 ; 2 uses
  %i.dh = select <4 x i1> %i.dg, <4 x i8> splat (i8 4), <4 x i8> %i.cr, !dbg !34974
  %i.di = select <4 x i1> %i.dg, <4 x float> %i.de, <4 x float> %i.cs, !dbg !34974 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ah, i64 52, !dbg !34967
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aj, i64 84, !dbg !34967
  %i.dl = getelementptr inbounds nuw i8, ptr %i.al, i64 116, !dbg !34967
  %i.dm = getelementptr i8, ptr %i.an, i64 148, !dbg !34967
  %i.dn = load float, ptr %i.dj, align 4, !dbg !34974, !noundef !14
  %i.do = load float, ptr %i.dk, align 4, !dbg !34974, !noundef !14
  %i.dp = load float, ptr %i.dl, align 4, !dbg !34974, !noundef !14
  %i.dq = load float, ptr %i.dm, align 4, !dbg !34974, !noundef !14
  %i.dr = insertelement <4 x float> poison, float %i.dn, i64 0
  %i.ds = insertelement <4 x float> %i.dr, float %i.do, i64 1
  %i.dt = insertelement <4 x float> %i.ds, float %i.dp, i64 2
  %i.du = insertelement <4 x float> %i.dt, float %i.dq, i64 3 ; 2 uses
  %i.dv = fadd <4 x float> %i.du, splat (float 2.000000e+00), !dbg !34974
  %i.dw = fcmp olt <4 x float> %i.dv, %i.di, !dbg !34974 ; 2 uses
  %i.dx = select <4 x i1> %i.dw, <4 x i8> splat (i8 5), <4 x i8> %i.dh, !dbg !34974
  %i.dy = select <4 x i1> %i.dw, <4 x float> %i.du, <4 x float> %i.di, !dbg !34974 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ah, i64 56, !dbg !34967
  %i.ea = getelementptr inbounds nuw i8, ptr %i.aj, i64 88, !dbg !34967
  %i.eb = getelementptr inbounds nuw i8, ptr %i.al, i64 120, !dbg !34967
  %i.ec = getelementptr i8, ptr %i.an, i64 152, !dbg !34967
  %i.ed = load float, ptr %i.dz, align 4, !dbg !34974, !noundef !14
  %i.ee = load float, ptr %i.ea, align 4, !dbg !34974, !noundef !14
  %i.ef = load float, ptr %i.eb, align 4, !dbg !34974, !noundef !14
  %i.eg = load float, ptr %i.ec, align 4, !dbg !34974, !noundef !14
  %i.eh = insertelement <4 x float> poison, float %i.ed, i64 0
  %i.ei = insertelement <4 x float> %i.eh, float %i.ee, i64 1
  %i.ej = insertelement <4 x float> %i.ei, float %i.ef, i64 2
  %i.ek = insertelement <4 x float> %i.ej, float %i.eg, i64 3 ; 2 uses
  %i.el = fadd <4 x float> %i.ek, splat (float 2.000000e+00), !dbg !34974
  %i.em = fcmp olt <4 x float> %i.el, %i.dy, !dbg !34974 ; 2 uses
  %i.en = select <4 x i1> %i.em, <4 x i8> splat (i8 6), <4 x i8> %i.dx, !dbg !34974
  %i.eo = select <4 x i1> %i.em, <4 x float> %i.ek, <4 x float> %i.dy, !dbg !34974
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ah, i64 60, !dbg !34967
  %i.eq = getelementptr inbounds nuw i8, ptr %i.aj, i64 92, !dbg !34967
  %i.er = getelementptr inbounds nuw i8, ptr %i.al, i64 124, !dbg !34967
  %i.es = getelementptr i8, ptr %i.an, i64 156, !dbg !34967
  %i.et = load float, ptr %i.ep, align 4, !dbg !34974, !noundef !14
  %i.eu = load float, ptr %i.eq, align 4, !dbg !34974, !noundef !14
  %i.ev = load float, ptr %i.er, align 4, !dbg !34974, !noundef !14
  %i.ew = load float, ptr %i.es, align 4, !dbg !34974, !noundef !14
  %i.ex = insertelement <4 x float> poison, float %i.et, i64 0
  %i.ey = insertelement <4 x float> %i.ex, float %i.eu, i64 1
  %i.ez = insertelement <4 x float> %i.ey, float %i.ev, i64 2
  %i.fa = insertelement <4 x float> %i.ez, float %i.ew, i64 3
  %i.fb = fadd <4 x float> %i.fa, splat (float 2.000000e+00), !dbg !34974
  %i.fc = fcmp olt <4 x float> %i.fb, %i.eo, !dbg !34974
  %i.fd = select <4 x i1> %i.fc, <4 x i8> splat (i8 7), <4 x i8> %i.en, !dbg !34974
  store <4 x i8> %i.fd, ptr %next.gep, align 1, !dbg !34976
  %index.next = add nuw i64 %index, 4, !dbg !34958 ; 2 uses
  %i.fe = icmp eq i64 %index.next, %n.vec, !dbg !34953
  br i1 %i.fe, label %.lr.ph.preheader61, label %vector.body, !dbg !34953, !llvm.loop !34977

.lr.ph.preheader61:                               ; preds = %vector.body, %vector.scevcheck, %.lr.ph.preheader
  %.sroa.0.052.ph = phi ptr [ %1, %vector.scevcheck ], [ %1, %.lr.ph.preheader ], [ %i.ag, %vector.body ]
  %.sroa.7.051.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph, !dbg !34954

.lr.ph:                                           ; preds = %.lr.ph.preheader61, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit25
  %.sroa.0.052 = phi ptr [ %i.ff, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit25 ], [ %.sroa.0.052.ph, %.lr.ph.preheader61 ] ; 2 uses
  %.sroa.7.051 = phi i64 [ %i.fg, %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit25 ], [ %.sroa.7.051.ph, %.lr.ph.preheader61 ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.0.052, i64 1, !dbg !34978 ; 2 uses
  %i.fg = add nuw nsw i64 %.sroa.7.051, 1, !dbg !34958
  %i.fh = shl nuw i64 %.sroa.7.051, 3, !dbg !34981
  %i.fi = add i64 %i.fh, 8, !dbg !34981           ; 3 uses
  %.not.i = icmp ugt i64 %i.fi, %.val20, !dbg !34954
  br i1 %.not.i, label %bb.h, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !34954, !prof !168

bb.h:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @431) #18, !dbg !34982, !noalias !34983
  unreachable, !dbg !34982

_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %.lr.ph
  %i.fj = sub nuw nsw i64 %.val20, %i.fi, !dbg !34987
  %.not.i21 = icmp ult i64 %i.fj, 8, !dbg !34988
  br i1 %.not.i21, label %bb.i, label %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit25, !dbg !34988, !prof !168

bb.i:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @409, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @432) #18, !dbg !34991, !noalias !34992
  unreachable, !dbg !34991

._crit_edge:                                      ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit25, %bb.g
  ret void, !dbg !34996

_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit25: ; preds = %_RNvMNtCscgRAwXFJnXP_4core5sliceSf8split_atCsfISxE4fmY1Y_14polars_parquet.exit
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.val19, i64 %i.fi, !dbg !34961 ; 8 uses
  %i.fl = load float, ptr %i.fk, align 4, !dbg !34964, !noundef !14 ; 2 uses
  %.sroa.033.0.ptr50.1 = getelementptr inbounds nuw i8, ptr %i.fk, i64 4, !dbg !34967
  %3 = load float, ptr %.sroa.033.0.ptr50.1, align 4, !dbg !34974, !noundef !14 ; 2 uses
  %4 = fadd float %3, 2.000000e+00, !dbg !34974
  %5 = fcmp olt float %4, %i.fl, !dbg !34974      ; 2 uses
  %.sroa.04.1.1 = zext i1 %5 to i8, !dbg !34974
  %.sroa.05.1.1 = select i1 %5, float %3, float %i.fl, !dbg !34974 ; 2 uses
  %.sroa.033.0.ptr50.2 = getelementptr inbounds nuw i8, ptr %i.fk, i64 8, !dbg !34967
  %6 = load float, ptr %.sroa.033.0.ptr50.2, align 4, !dbg !34974, !noundef !14 ; 2 uses
  %7 = fadd float %6, 2.000000e+00, !dbg !34974
  %i.fm = fcmp olt float %7, %.sroa.05.1.1, !dbg !34974 ; 2 uses
  %.sroa.04.1.2 = select i1 %i.fm, i8 2, i8 %.sroa.04.1.1, !dbg !34974
  %.sroa.05.1.2 = select i1 %i.fm, float %6, float %.sroa.05.1.1, !dbg !34974 ; 2 uses
  %.sroa.033.0.ptr50.3 = getelementptr inbounds nuw i8, ptr %i.fk, i64 12, !dbg !34967
  %8 = load float, ptr %.sroa.033.0.ptr50.3, align 4, !dbg !34974, !noundef !14 ; 2 uses
  %9 = fadd float %8, 2.000000e+00, !dbg !34974
  %i.fn = fcmp olt float %9, %.sroa.05.1.2, !dbg !34974 ; 2 uses
  %.sroa.04.1.3 = select i1 %i.fn, i8 3, i8 %.sroa.04.1.2, !dbg !34974
  %.sroa.05.1.3 = select i1 %i.fn, float %8, float %.sroa.05.1.2, !dbg !34974 ; 2 uses
  %.sroa.033.0.ptr50.4 = getelementptr inbounds nuw i8, ptr %i.fk, i64 16, !dbg !34967
  %10 = load float, ptr %.sroa.033.0.ptr50.4, align 4, !dbg !34974, !noundef !14 ; 2 uses
  %11 = fadd float %10, 2.000000e+00, !dbg !34974
  %12 = fcmp olt float %11, %.sroa.05.1.3, !dbg !34974 ; 2 uses
  %.sroa.04.1.4 = select i1 %12, i8 4, i8 %.sroa.04.1.3, !dbg !34974
  %.sroa.05.1.4 = select i1 %12, float %10, float %.sroa.05.1.3, !dbg !34974 ; 2 uses
  %.sroa.033.0.ptr50.5 = getelementptr inbounds nuw i8, ptr %i.fk, i64 20, !dbg !34967
  %i.fo = load float, ptr %.sroa.033.0.ptr50.5, align 4, !dbg !34974, !noundef !14 ; 2 uses
  %i.fp = fadd float %i.fo, 2.000000e+00, !dbg !34974
  %i.fq = fcmp olt float %i.fp, %.sroa.05.1.4, !dbg !34974 ; 2 uses
  %.sroa.04.1.5 = select i1 %i.fq, i8 5, i8 %.sroa.04.1.4, !dbg !34974
  %.sroa.05.1.5 = select i1 %i.fq, float %i.fo, float %.sroa.05.1.4, !dbg !34974 ; 2 uses
  %.sroa.033.0.ptr50.6 = getelementptr inbounds nuw i8, ptr %i.fk, i64 24, !dbg !34967
  %13 = load float, ptr %.sroa.033.0.ptr50.6, align 4, !dbg !34974, !noundef !14 ; 2 uses
  %14 = fadd float %13, 2.000000e+00, !dbg !34974
  %15 = fcmp olt float %14, %.sroa.05.1.5, !dbg !34974 ; 2 uses
  %.sroa.04.1.6 = select i1 %15, i8 6, i8 %.sroa.04.1.5, !dbg !34974
  %.sroa.05.1.6 = select i1 %15, float %13, float %.sroa.05.1.5, !dbg !34974
  %.sroa.033.0.ptr50.7 = getelementptr inbounds nuw i8, ptr %i.fk, i64 28, !dbg !34967
  %16 = load float, ptr %.sroa.033.0.ptr50.7, align 4, !dbg !34974, !noundef !14
  %17 = fadd float %16, 2.000000e+00, !dbg !34974
  %i.fr = fcmp olt float %17, %.sroa.05.1.6, !dbg !34974
  %.sroa.04.1.7 = select i1 %i.fr, i8 7, i8 %.sroa.04.1.6, !dbg !34974
  store i8 %.sroa.04.1.7, ptr %.sroa.0.052, align 1, !dbg !34976
  %i.fs = icmp eq ptr %i.ff, %i.k, !dbg !34943
  br i1 %i.fs, label %._crit_edge, label %.lr.ph, !dbg !34953, !llvm.loop !34997
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtCsk4ZPsEfLtLH_6brotli3enc11stride_evalINtB5_10StrideEvalNtNtCsbA1n9drshSs_12alloc_stdlib9std_alloc13StandardAllocE3newCsfISxE4fmY1Y_14polars_parquet(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(240) %0, ptr noalias noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(112) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !34998 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [240 x i8], align 8               ; 49 uses
  %i.t = tail call noundef i64 @_RNvMs2_NtNtCsk4ZPsEfLtLH_6brotli3enc9interfaceINtB5_24PredictionModeContextMapNtNtB7_10input_pair17InputReferenceMutE20stride_context_speedCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !dbg !34999 ; 5 uses
  %.sroa.037.0.extract.trunc = trunc i64 %i.t to i16, !dbg !34999
  %.sroa.438.0.extract.shift = lshr i64 %i.t, 16, !dbg !34999 ; 2 uses
  %.sroa.438.0.extract.trunc = trunc i64 %.sroa.438.0.extract.shift to i16, !dbg !34999
  %.sroa.539.0.extract.shift = lshr i64 %i.t, 32, !dbg !34999
  %.sroa.539.0.extract.trunc = trunc i64 %.sroa.539.0.extract.shift to i16, !dbg !34999 ; 2 uses
  %.sroa.640.0.extract.shift = lshr i64 %i.t, 48, !dbg !34999 ; 2 uses
  %.sroa.640.0.extract.trunc = trunc nuw i64 %.sroa.640.0.extract.shift to i16, !dbg !34999
  %i.u = or i64 %.sroa.438.0.extract.shift, %i.t, !dbg !35001
  %i.v = and i64 %i.u, 65535, !dbg !35001
  %or.cond = icmp eq i64 %i.v, 0, !dbg !35001     ; 2 uses
  %i.w = load i16, ptr %4, align 8, !dbg !35001
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 2, !dbg !35001
  %i.y = load i16, ptr %i.x, align 2, !dbg !35001
  %.sroa.9.0 = select i1 %or.cond, i16 %i.y, i16 %.sroa.438.0.extract.trunc, !dbg !35001 ; 2 uses
  %.sroa.0.0 = select i1 %or.cond, i16 %i.w, i16 %.sroa.037.0.extract.trunc, !dbg !35001 ; 2 uses
  %i.z = or i16 %.sroa.0.0, %.sroa.9.0, !dbg !35008
  %or.cond5 = icmp eq i16 %i.z, 0, !dbg !35008    ; 2 uses
  %.sroa.9.1 = select i1 %or.cond5, i16 8192, i16 %.sroa.9.0, !dbg !35008 ; 2 uses
  %.sroa.0.1 = select i1 %or.cond5, i16 8, i16 %.sroa.0.0, !dbg !35008 ; 2 uses
  %i.aa = icmp eq i16 %.sroa.539.0.extract.trunc, 0, !dbg !35010
  %i.ab = icmp eq i64 %.sroa.640.0.extract.shift, 0
  %or.cond8 = and i1 %i.ab, %i.aa, !dbg !35010    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 4, !dbg !35010
  %i.ad = load i16, ptr %i.ac, align 4, !dbg !35010
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 6, !dbg !35010
  %i.af = load i16, ptr %i.ae, align 2, !dbg !35010
  %.sroa.18.0 = select i1 %or.cond8, i16 %i.af, i16 %.sroa.640.0.extract.trunc, !dbg !35010 ; 2 uses
  %.sroa.14.0 = select i1 %or.cond8, i16 %i.ad, i16 %.sroa.539.0.extract.trunc, !dbg !35010 ; 2 uses
  %i.ag = icmp eq i16 %.sroa.14.0, 0, !dbg !35012
  %i.ah = icmp eq i16 %.sroa.18.0, 0
  %or.cond11 = select i1 %i.ag, i1 %i.ah, i1 false, !dbg !35012 ; 2 uses
  %.sroa.18.1 = select i1 %or.cond11, i16 %.sroa.9.1, i16 %.sroa.18.0, !dbg !35012
  %.sroa.14.1 = select i1 %or.cond11, i16 %.sroa.0.1, i16 %.sroa.14.0, !dbg !35012
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !35014
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35018), !dbg !35021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !35023, !noalias !35018
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, i64 noundef 32, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4), !dbg !35023, !noalias !35018
  %i.ai = load i64, ptr %i.q, align 8, !dbg !35023, !range !5797, !noalias !35018, !noundef !14
  %i.aj = trunc nuw i64 %i.ai to i1, !dbg !35027
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !35028
  %i.al = load i64, ptr %i.ak, align 8, !dbg !35028, !range !5800, !noalias !35018, !noundef !14 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !35028 ; 2 uses
  br i1 %i.aj, label %bb.b, label %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorfE10alloc_cellCsfISxE4fmY1Y_14polars_parquet.exit, !dbg !35027, !prof !168

bb.b:                                             ; preds = %bb.a
  %i.an = load i64, ptr %i.am, align 8, !dbg !35029, !noalias !35018
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.al, i64 %i.an) #20, !dbg !35030, !noalias !35018
  unreachable

_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorfE10alloc_cellCsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.a
  %i.ao = load ptr, ptr %i.am, align 8, !dbg !35031, !noalias !35018, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !35032, !noalias !35018
  store i64 %i.al, ptr %i.r, align 8, !dbg !35033, !alias.scope !35018
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !35033
  store ptr %i.ao, ptr %i.ap, align 8, !dbg !35033, !alias.scope !35018
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !35033
  store i64 32, ptr %i.aq, align 8, !dbg !35033, !alias.scope !35018
  %i.ar = call { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecfE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.r), !dbg !35034 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !35037
  %i.as = extractvalue { ptr, i64 } %i.ar, 0, !dbg !35038 ; 4 uses
  %i.at = extractvalue { ptr, i64 } %i.ar, 1, !dbg !35038 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !35039
  call void @llvm.experimental.noalias.scope.decl(metadata !35044), !dbg !35047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !35049, !noalias !35044
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, i64 noundef 2097152, i1 noundef zeroext true, i64 noundef 2, i64 noundef 2)
          to label %.noexc unwind label %bb.d, !dbg !35049

.noexc:                                           ; preds = %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorfE10alloc_cellCsfISxE4fmY1Y_14polars_parquet.exit
  %i.au = load i64, ptr %i.o, align 8, !dbg !35049, !range !5797, !noalias !35044, !noundef !14
  %i.av = trunc nuw i64 %i.au to i1, !dbg !35053
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !35054
  %i.ax = load i64, ptr %i.aw, align 8, !dbg !35054, !range !5800, !noalias !35044, !noundef !14 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !35054 ; 2 uses
  br i1 %i.av, label %bb.c, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i, !dbg !35053, !prof !168

bb.c:                                             ; preds = %.noexc
  %i.az = load i64, ptr %i.ay, align 8, !dbg !35055, !noalias !35044
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.ax, i64 %i.az) #20
          to label %.noexc67 unwind label %bb.d, !dbg !35056

.noexc67:                                         ; preds = %bb.c
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i: ; preds = %.noexc
  %i.ba = load ptr, ptr %i.ay, align 8, !dbg !35057, !noalias !35044, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !35058, !noalias !35044
  store i64 %i.ax, ptr %i.p, align 8, !dbg !35059, !alias.scope !35044
  %i.bb = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !35059
  store ptr %i.ba, ptr %i.bb, align 8, !dbg !35059, !alias.scope !35044
  %i.bc = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !35059
  store i64 2097152, ptr %i.bc, align 8, !dbg !35059, !alias.scope !35044
  %i.bd = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VectE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
          to label %bb.e unwind label %bb.d, !dbg !35060 ; 2 uses

bb.d:                                             ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i, %bb.c, %_RNvXNtCsbA1n9drshSs_12alloc_stdlib9std_allocNtB2_13StandardAllocINtNtCs2FBUFPee3ib_15alloc_no_stdlib15stack_allocator9AllocatorfE10alloc_cellCsfISxE4fmY1Y_14polars_parquet.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.e:                                             ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !35063
  %i.bf = extractvalue { ptr, i64 } %i.bd, 0, !dbg !35064 ; 4 uses
  %i.bg = extractvalue { ptr, i64 } %i.bd, 1, !dbg !35064 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !35065
  call void @llvm.experimental.noalias.scope.decl(metadata !35068), !dbg !35071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !35073, !noalias !35068
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef 2097152, i1 noundef zeroext true, i64 noundef 2, i64 noundef 2)
          to label %.noexc70 unwind label %bb.h, !dbg !35073

.noexc70:                                         ; preds = %bb.e
  %i.bh = load i64, ptr %i.m, align 8, !dbg !35073, !range !5797, !noalias !35068, !noundef !14
  %i.bi = trunc nuw i64 %i.bh to i1, !dbg !35077
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !35078
  %i.bk = load i64, ptr %i.bj, align 8, !dbg !35078, !range !5800, !noalias !35068, !noundef !14 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !35078 ; 2 uses
  br i1 %i.bi, label %bb.f, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i69, !dbg !35077, !prof !168

bb.f:                                             ; preds = %.noexc70
  %i.bm = load i64, ptr %i.bl, align 8, !dbg !35079, !noalias !35068
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bk, i64 %i.bm) #20
          to label %.noexc71 unwind label %bb.h, !dbg !35080

.noexc71:                                         ; preds = %bb.f
  unreachable

_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i69: ; preds = %.noexc70
  %i.bn = load ptr, ptr %i.bl, align 8, !dbg !35081, !noalias !35068, !nonnull !14, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !35082, !noalias !35068
  store i64 %i.bk, ptr %i.n, align 8, !dbg !35083, !alias.scope !35068
  %i.bo = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !35083
  store ptr %i.bn, ptr %i.bo, align 8, !dbg !35083, !alias.scope !35068
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !35083
  store i64 2097152, ptr %i.bp, align 8, !dbg !35083, !alias.scope !35068
  %i.bq = invoke { ptr, i64 } @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VectE16into_boxed_sliceCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
          to label %bb.i unwind label %bb.h, !dbg !35084 ; 2 uses

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxtEECsfISxE4fmY1Y_14polars_parquet.exit79: ; preds = %bb.k, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxtEECsfISxE4fmY1Y_14polars_parquet.exit85, %bb.h
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bt, %bb.h ], [ %.pn.pn.pn.pn.pn, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxtEECsfISxE4fmY1Y_14polars_parquet.exit85 ], [ %.pn.pn.pn.pn.pn, %bb.k ] ; 2 uses
  %i.br = icmp eq i64 %i.bg, 0, !dbg !35087
  br i1 %i.br, label %bb.ar, label %bb.g, !dbg !35087

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxtEECsfISxE4fmY1Y_14polars_parquet.exit79
  %i.bs = shl nuw nsw i64 %i.bg, 1, !dbg !35091
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bf) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef range(i64 1, 0) %i.bs, i64 noundef 2) #19, !dbg !35094
  br label %bb.ar, !dbg !35099

bb.h:                                             ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i69, %bb.f, %bb.e
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsbA1n9drshSs_12alloc_stdlib10heap_alloc7WrapBoxtEECsfISxE4fmY1Y_14polars_parquet.exit79

bb.i:                                             ; preds = %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !35100
  %i.bu = extractvalue { ptr, i64 } %i.bq, 0, !dbg !35101 ; 4 uses
  %i.bv = extractvalue { ptr, i64 } %i.bq, 1, !dbg !35101 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !35102
  call void @llvm.experimental.noalias.scope.decl(metadata !35105), !dbg !35108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !35110, !noalias !35105
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef 2097152, i1 noundef zeroext true, i64 noundef 2, i64 noundef 2)
          to label %.noexc75 unwind label %bb.l, !dbg !35110

.noexc75:                                         ; preds = %bb.i
  %i.bw = load i64, ptr %i.k, align 8, !dbg !35110, !range !5797, !noalias !35105, !noundef !14
  %i.bx = trunc nuw i64 %i.bw to i1, !dbg !35114
  %i.by = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !35115
  %i.bz = load i64, ptr %i.by, align 8, !dbg !35115, !range !5800, !noalias !35105, !noundef !14 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !35115 ; 2 uses
  br i1 %i.bx, label %bb.j, label %_RINvXs_NtNtCsgZ49sUHp3tW_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsfISxE4fmY1Y_14polars_parquet.exit.i74, !dbg !35114, !prof !168

bb.j:                                             ; preds = %.noexc75
end_hunk_0
