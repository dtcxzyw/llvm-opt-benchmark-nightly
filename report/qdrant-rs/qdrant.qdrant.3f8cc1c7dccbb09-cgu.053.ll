Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.053?download=true
inline.NumInlined: 1630
inline.NumDeleted: 843
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap11try_insert2NtNtB8_4name10HeaderNameECsl8OoimOLbh_6qdrant:bb.a
  %i.y = load ptr, ptr %2, align 8, !noalias !3046, !noundef !6 ; 3 uses
  %i.z = icmp ne ptr %i.y, null
  %i.aa = zext i1 %i.z to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3051
  store i64 %i.aa, ptr %i.d, align 8, !noalias !3051
  call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #20, !noalias !3043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3051
  %.not.i.i.i = icmp eq ptr %i.y, null
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val.i.i.i = load ptr, ptr %i.ab, align 8, !noalias !3046, !noundef !6 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i.i.i = load i64, ptr %i.ac, align 8, !noalias !3046, !noundef !6
  call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i) #20, !noalias !3043
  %i.ad = ptrtoint ptr %.val.i.i.i to i64
  %i.ae = trunc i64 %i.ad to i8
  br label %_RINvXsz_NtNtCs577yCKf7gy3_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit.i

bb.g:                                             ; preds = %bb.e
  %i.af = load i8, ptr %i.ab, align 8, !range !3056, !noalias !3046, !noundef !6 ; 2 uses
  %i.ag = zext nneg i8 %i.af to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3057
  store i64 %i.ag, ptr %i.c, align 8, !noalias !3057
  call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #20, !noalias !3043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3057
  br label %_RINvXsz_NtNtCs577yCKf7gy3_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit.i

_RINvXsz_NtNtCs577yCKf7gy3_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.g, %bb.f
  %i.ah = phi i8 [ %i.af, %bb.g ], [ %i.ae, %bb.f ]
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.e, align 16, !alias.scope !3062, !noalias !3043
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.412.0..sroa_idx.i, align 8, !alias.scope !3062, !noalias !3043
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.513.0..sroa_idx.i, align 16, !alias.scope !3062, !noalias !3043 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.614.0..sroa_idx.i, align 8, !alias.scope !3062, !noalias !3043
  %i.ai = load i64, ptr %.sroa.915.0..sroa_idx.i, align 16, !alias.scope !3062, !noalias !3043, !noundef !6
  %i.aj = shl i64 %i.ai, 56
  %i.ak = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !3062, !noalias !3043, !noundef !6
  %i.al = or i64 %i.aj, %i.ak                     ; 2 uses
  %i.am = xor i64 %i.al, %.sroa.22.0.copyload.i.i ; 3 uses
  %i.an = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.ao = add i64 %i.am, %.sroa.10.0.copyload.i.i ; 2 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.aq = xor i64 %i.ap, %i.an                    ; 3 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 16)
  %i.as = xor i64 %i.ar, %i.ao                    ; 3 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 32)
  %i.au = add i64 %i.ao, %i.aq                    ; 3 uses
  %i.av = add i64 %i.as, %i.at                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 17)
  %i.ax = xor i64 %i.au, %i.aw                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 21)
  %i.az = xor i64 %i.ay, %i.av                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 32)
  %i.bb = xor i64 %i.av, %i.al
  %i.bc = xor i64 %i.ba, 255
  %i.bd = add i64 %i.bb, %i.ax                    ; 3 uses
  %i.be = add i64 %i.az, %i.bc                    ; 2 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 13)
  %i.bg = xor i64 %i.bd, %i.bf                    ; 3 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 16)
  %i.bi = xor i64 %i.bh, %i.be                    ; 3 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 32)
  %i.bk = add i64 %i.bg, %i.be                    ; 3 uses
  %i.bl = add i64 %i.bi, %i.bj                    ; 2 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 17)
  %i.bn = xor i64 %i.bk, %i.bm                    ; 3 uses
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 21)
  %i.bp = xor i64 %i.bo, %i.bl                    ; 3 uses
  %i.bq = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 32)
  %i.br = add i64 %i.bn, %i.bl                    ; 3 uses
  %i.bs = add i64 %i.bp, %i.bq                    ; 2 uses
  %i.bt = tail call noundef i64 @llvm.fshl.i64(i64 %i.bn, i64 %i.bn, i64 13)
  %i.bu = xor i64 %i.bt, %i.br                    ; 3 uses
  %i.bv = tail call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 16)
  %i.bw = xor i64 %i.bv, %i.bs                    ; 3 uses
  %i.bx = tail call noundef i64 @llvm.fshl.i64(i64 %i.br, i64 %i.br, i64 32)
  %i.by = add i64 %i.bu, %i.bs                    ; 3 uses
  %i.bz = add i64 %i.bw, %i.bx                    ; 2 uses
  %i.ca = tail call noundef i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 17)
  %i.cb = xor i64 %i.ca, %i.by                    ; 3 uses
  %i.cc = tail call noundef i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 21)
  %i.cd = xor i64 %i.cc, %i.bz                    ; 2 uses
  %i.ce = tail call noundef i64 @llvm.fshl.i64(i64 %i.by, i64 %i.by, i64 32)
  %i.cf = add i64 %i.cb, %i.bz
  %i.cg = add i64 %i.cd, %i.ce                    ; 2 uses
  %i.ch = tail call noundef i64 @llvm.fshl.i64(i64 %i.cb, i64 %i.cb, i64 13)
  %i.ci = xor i64 %i.ch, %i.cf                    ; 2 uses
  %i.cj = shl i64 %i.cd, 16
  %i.ck = xor i64 %i.cj, %i.cg
  %i.cl = add i64 %i.ci, %i.cg                    ; 2 uses
  %i.cm = lshr i64 %i.ci, 47
  %i.cn = lshr i64 %i.ck, 43
  %i.co = lshr i64 %i.cl, 32
  %i.cp = xor i64 %i.cn, %i.cm
  %i.cq = xor i64 %i.cp, %i.co
  %i.cr = xor i64 %i.cq, %i.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3043
  br label %.loopexit

bb.h:                                             ; preds = %bb.d
  %i.cs = load ptr, ptr %2, align 8, !noalias !3065, !noundef !6 ; 5 uses
  %i.ct = icmp ne ptr %i.cs, null
  %i.cu = zext i1 %i.ct to i64
  %i.cv = xor i64 %i.cu, -3750763034362895579
  %i.cw = mul i64 %i.cv, 2232315406967589409      ; 4 uses
  %.not.i.i20.i = icmp eq ptr %i.cs, null
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %.not.i.i20.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val.i.i21.i = load ptr, ptr %i.cx, align 8, !noalias !3065, !noundef !6 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i.i22.i = load i64, ptr %i.cy, align 8, !noalias !3065, !noundef !6 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.val.i.i21.i, i64 %.val1.i.i22.i
  %i.da = icmp samesign eq i64 %.val1.i.i22.i, 0
  %i.db = ptrtoint ptr %.val.i.i21.i to i64
  %i.dc = trunc i64 %i.db to i8                   ; 3 uses
  br i1 %i.da, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.i
  %xtraiter = and i64 %.val1.i.i22.i, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.prol = phi i64 [ %i.dh, %.lr.ph.i.i.i.i.i.prol ], [ %i.cw, %.lr.ph.i.i.i.i.i.preheader ]
  %.sroa.03.05.i.i.i.i.i.prol = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.prol ], [ %.val.i.i21.i, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.prol, i64 1 ; 2 uses
  %i.de = load i8, ptr %.sroa.03.05.i.i.i.i.i.prol, align 1, !alias.scope !3070, !noalias !3073, !noundef !6
  %i.df = zext i8 %i.de to i64
  %i.dg = xor i64 %.sroa.0.06.i.i.i.i.i.prol, %i.df
  %i.dh = mul i64 %i.dg, 1099511628211            ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3077

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.lcssa239.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dh, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.06.i.i.i.i.i.unr = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dh, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.03.05.i.i.i.i.i.unr = phi ptr [ %.val.i.i21.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dd, %.lr.ph.i.i.i.i.i.prol ]
  %i.di = icmp ult i64 %.val1.i.i22.i, 8
  br i1 %i.di, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi i64 [ %i.ew, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.sroa.03.05.i.i.i.i.i = phi ptr [ %i.es, %.lr.ph.i.i.i.i.i ], [ %.sroa.03.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i, i64 1
  %i.dk = load i8, ptr %.sroa.03.05.i.i.i.i.i, align 1, !alias.scope !3070, !noalias !3073, !noundef !6
  %i.dl = zext i8 %i.dk to i64
  %i.dm = xor i64 %.sroa.0.06.i.i.i.i.i, %i.dl
  %i.dn = mul i64 %i.dm, 1099511628211
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i, i64 2
  %i.dp = load i8, ptr %i.dj, align 1, !alias.scope !3070, !noalias !3073, !noundef !6
  %i.dq = zext i8 %i.dp to i64
  %i.dr = xor i64 %i.dn, %i.dq
  %i.ds = mul i64 %i.dr, 1099511628211
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i, i64 3
  %i.du = load i8, ptr %i.do, align 1, !alias.scope !3070, !noalias !3073, !noundef !6
  %i.dv = zext i8 %i.du to i64
  %i.dw = xor i64 %i.ds, %i.dv
  %i.dx = mul i64 %i.dw, 1099511628211
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i, i64 4
  %i.dz = load i8, ptr %i.dt, align 1, !alias.scope !3070, !noalias !3073, !noundef !6
  %i.ea = zext i8 %i.dz to i64
  %i.eb = xor i64 %i.dx, %i.ea
  %i.ec = mul i64 %i.eb, 1099511628211
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i, i64 5
  %i.ee = load i8, ptr %i.dy, align 1, !alias.scope !3070, !noalias !3073, !noundef !6
  %i.ef = zext i8 %i.ee to i64
  %i.eg = xor i64 %i.ec, %i.ef
  %i.eh = mul i64 %i.eg, 1099511628211
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i, i64 6
  %i.ej = load i8, ptr %i.ed, align 1, !alias.scope !3070, !noalias !3073, !noundef !6
  %i.ek = zext i8 %i.ej to i64
  %i.el = xor i64 %i.eh, %i.ek
  %i.em = mul i64 %i.el, 1099511628211
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i, i64 7
  %i.eo = load i8, ptr %i.ei, align 1, !alias.scope !3070, !noalias !3073, !noundef !6
  %i.ep = zext i8 %i.eo to i64
  %i.eq = xor i64 %i.em, %i.ep
  %i.er = mul i64 %i.eq, 1099511628211
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i, i64 8 ; 2 uses
  %i.et = load i8, ptr %i.en, align 1, !alias.scope !3070, !noalias !3073, !noundef !6
  %i.eu = zext i8 %i.et to i64
  %i.ev = xor i64 %i.er, %i.eu
  %i.ew = mul i64 %i.ev, 1099511628211            ; 2 uses
  %i.ex = icmp eq ptr %i.es, %i.cz
  br i1 %i.ex, label %.loopexit, label %.lr.ph.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ey = load i8, ptr %i.cx, align 8, !range !3056, !noalias !3065, !noundef !6 ; 2 uses
  %i.ez = zext nneg i8 %i.ey to i64
  %i.fa = xor i64 %i.cw, %i.ez
  %i.fb = mul i64 %i.fa, 2232315406967589409
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.j, %bb.i, %_RINvXsz_NtNtCs577yCKf7gy3_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit.i
  %i.fc = phi i8 [ %i.ah, %_RINvXsz_NtNtCs577yCKf7gy3_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit.i ], [ %i.ey, %bb.j ], [ %i.dc, %bb.i ], [ %i.dc, %.lr.ph.i.i.i.i.i ], [ %i.dc, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.sroa.0115.0.copyload = phi ptr [ %i.y, %_RINvXsz_NtNtCs577yCKf7gy3_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit.i ], [ null, %bb.j ], [ %i.cs, %bb.i ], [ %i.cs, %.lr.ph.i.i.i.i.i ], [ %i.cs, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.sroa.0.0.i = phi i64 [ %i.cr, %_RINvXsz_NtNtCs577yCKf7gy3_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECsl8OoimOLbh_6qdrant.exit.i ], [ %i.fb, %bb.j ], [ %i.cw, %bb.i ], [ %.lcssa239.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ew, %.lr.ph.i.i.i.i.i ]
  %i.fd = trunc i64 %.sroa.0.0.i to i16
  %i.fe = and i16 %i.fd, 32767                    ; 6 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.fg = load i16, ptr %i.ff, align 8, !noundef !6 ; 3 uses
  %i.fh = and i16 %i.fe, %i.fg
  %i.fi = zext nneg i16 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.fl = load i64, ptr %i.fk, align 8, !noundef !6 ; 2 uses
  %i.fm = load ptr, ptr %i.fj, align 8, !nonnull !6
  %i.fn = zext i16 %i.fg to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.fp = load i64, ptr %i.fo, align 8            ; 15 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !nonnull !6 ; 3 uses
  %i.fs = icmp eq ptr %.sroa.0115.0.copyload, null ; 8 uses
  %not..i.i = xor i1 %i.fs, true
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fv = load i64, ptr %i.fu, align 8            ; 9 uses
  %i.fw = load ptr, ptr %i.ft, align 8            ; 8 uses
  %.not246 = icmp eq i64 %i.fl, 0
  br label %.outer228

.outer228:                                        ; preds = %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, %.loopexit
  %.sroa.08.0.ph = phi i64 [ %i.hl, %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread ], [ 0, %.loopexit ] ; 3 uses
  %.sroa.0.0.ph = phi i64 [ %i.hm, %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread ], [ %i.fi, %.loopexit ] ; 2 uses
  %i.fx = icmp ult i64 %.sroa.0.0.ph, %i.fl       ; 2 uses
  %.not246.not = xor i1 %.not246, true
  %brmerge = or i1 %i.fx, %.not246.not
  %.sroa.0.0.ph.mux = select i1 %i.fx, i64 %.sroa.0.0.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit241, label %infloop

.loopexit241:                                     ; preds = %.outer228
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %.sroa.0.0.ph.mux ; 2 uses
  %i.fz = load i16, ptr %i.fy, align 2, !noundef !6 ; 2 uses
  %.not = icmp eq i16 %i.fz, -1
  br i1 %.not, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.af
  unreachable

bb.l:                                             ; preds = %.loopexit241
  %i.ga = zext i16 %i.fz to i64                   ; 6 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 2
  %i.gc = load i16, ptr %i.gb, align 2, !noundef !6 ; 2 uses
  %i.gd = and i16 %i.gc, %i.fg
  %i.ge = zext i16 %i.gd to i64
  %i.gf = sub i64 %.sroa.0.0.ph.mux, %i.ge
  %i.gg = and i64 %i.gf, %i.fn
  %i.gh = icmp samesign ult i64 %i.gg, %.sroa.08.0.ph
  br i1 %i.gh, label %bb.an, label %bb.aa

bb.m:                                             ; preds = %.loopexit241
  %i.gi = icmp ult i64 %i.fp, 88686269585142076
  tail call void @llvm.assume(i1 %i.gi)
  %.sroa.6118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6118.0.copyload = load ptr, ptr %.sroa.6118.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0119.0.copyload = load ptr, ptr %3, align 8 ; 3 uses
  %.sroa.5121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5121.0.copyload = load ptr, ptr %.sroa.5121.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.6124.0.copyload = load i64, ptr %.sroa.6124.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.7127.0.copyload = load ptr, ptr %.sroa.7127.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.8130.0.copyload = load i64, ptr %.sroa.8130.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3079)
  %i.gj = icmp samesign ugt i64 %i.fp, 32767
  br i1 %i.gj, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3082
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i16 %i.fe, ptr %i.gl, align 8, !noalias !3082
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %.sroa.0115.0.copyload, ptr %i.gm, align 8, !noalias !3085
  %.sroa.6103.0..sroa_idx104 = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.fw, ptr %.sroa.6103.0..sroa_idx104, align 8, !noalias !3085
  %.sroa.8107.0..sroa_idx108 = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 %i.fv, ptr %.sroa.8107.0..sroa_idx108, align 8, !noalias !3085
  %.sroa.10111.0..sroa_idx112 = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %.sroa.6118.0.copyload, ptr %.sroa.10111.0..sroa_idx112, align 8, !noalias !3085
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.0119.0.copyload, ptr %i.gn, align 8, !noalias !3086
  %.sroa.5121.0..sroa_idx122 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.5121.0.copyload, ptr %.sroa.5121.0..sroa_idx122, align 8, !noalias !3086
  %.sroa.6124.0..sroa_idx125 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.6124.0.copyload, ptr %.sroa.6124.0..sroa_idx125, align 8, !noalias !3086
  %.sroa.7127.0..sroa_idx128 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.7127.0.copyload, ptr %.sroa.7127.0..sroa_idx128, align 8, !noalias !3086
  %.sroa.8130.0..sroa_idx131 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.8130.0.copyload, ptr %.sroa.8130.0..sroa_idx131, align 8, !noalias !3086
  store i64 0, ptr %i.b, align 8, !noalias !3082
  %i.go = load i64, ptr %i.gk, align 8, !range !3087, !alias.scope !3088, !noalias !3091, !noundef !6
  %i.gp = icmp eq i64 %i.fp, %i.go
  br i1 %i.gp, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs577yCKf7gy3_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCs77NLLyX6U31_9axum_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gk)
          to label %._crit_edge193 unwind label %bb.p, !noalias !3091

._crit_edge193:                                   ; preds = %bb.o
  %.pre194 = load ptr, ptr %i.fq, align 8, !alias.scope !3088, !noalias !3091
  br label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.gq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs577yCKf7gy3_4http6header3map6BucketNtNtBG_5value11HeaderValueEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.b) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit46 unwind label %bb.q, !noalias !3093

bb.q:                                             ; preds = %bb.p
  %i.gr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !3091
  unreachable

bb.r:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0119.0.copyload) ]
  %i.gs = getelementptr inbounds nuw i8, ptr %.sroa.0119.0.copyload, i64 32
  %i.gt = load ptr, ptr %i.gs, align 8, !noalias !3094, !nonnull !6, !noundef !6
  invoke void %i.gt(ptr noundef %.sroa.7127.0.copyload, ptr noundef %.sroa.5121.0.copyload, i64 noundef %.sroa.6124.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i unwind label %bb.t, !noalias !3082, !inline_history !3042

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i: ; preds = %bb.r
  br i1 %i.fs, label %bb.w, label %bb.s

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0115.0.copyload, i64 32
  %i.gv = load ptr, ptr %i.gu, align 8, !noalias !3101, !nonnull !6, !noundef !6
  tail call void %i.gv(ptr noundef %.sroa.6118.0.copyload, ptr noundef %i.fw, i64 noundef %i.fv), !inline_history !3114
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.gw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.fs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit46, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0115.0.copyload, i64 32
  %i.gy = load ptr, ptr %i.gx, align 8, !noalias !3115, !nonnull !6, !noundef !6
  invoke void %i.gy(ptr noundef %.sroa.6118.0.copyload, ptr noundef %i.fw, i64 noundef %i.fv)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit46 unwind label %bb.v, !noalias !3082, !inline_history !3128

bb.v:                                             ; preds = %bb.u
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !3082
  unreachable

bb.w:                                             ; preds = %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 -1, ptr %i.ha, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit

bb.x:                                             ; preds = %._crit_edge193, %bb.n
  %i.hb = phi ptr [ %.pre194, %._crit_edge193 ], [ %i.fr, %bb.n ]
  %i.hc = getelementptr inbounds nuw [104 x i8], ptr %i.hb, i64 %i.fp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.hc, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.b, i64 104, i1 false), !noalias !3093
  %i.hd = add nuw nsw i64 %i.fp, 1
  store i64 %i.hd, ptr %i.fo, align 8, !alias.scope !3088, !noalias !3091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3082
  %i.he = load i64, ptr %i.fk, align 8, !noundef !6 ; 2 uses
  %i.hf = icmp ult i64 %.sroa.0.0.ph.mux, %i.he
  br i1 %i.hf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.hg = load ptr, ptr %i.fj, align 8, !nonnull !6, !noundef !6
  %i.hh = trunc nuw nsw i64 %i.fp to i16
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %.sroa.0.0.ph.mux ; 2 uses
  store i16 %i.hh, ptr %i.hi, align 2
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 2
  store i16 %i.fe, ptr %i.hj, align 2
  br label %.thread

bb.z:                                             ; preds = %bb.x
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.ph.mux, i64 noundef %i.he, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #21
  unreachable

.thread:                                          ; preds = %bb.ba, %bb.az, %bb.y
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %.sroa.3.0..sroa_idx, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit

bb.aa:                                            ; preds = %bb.l
  %i.hk = icmp eq i16 %i.gc, %i.fe
  br i1 %i.hk, label %bb.ab, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.ae, %bb.ac, %.split, %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, %bb.aa
  %i.hl = add nuw nsw i64 %.sroa.08.0.ph, 1
  %i.hm = add i64 %.sroa.0.0.ph.mux, 1
  br label %.outer228

bb.ab:                                            ; preds = %bb.aa
  %i.hn = icmp ugt i64 %i.fp, %i.ga
  br i1 %i.hn, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.ho = getelementptr inbounds nuw [104 x i8], ptr %i.fr, i64 %i.ga ; 6 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 64
  %i.hq = load ptr, ptr %i.hp, align 8, !noundef !6
  %i.hr = icmp ne ptr %i.hq, null                 ; 2 uses
  %i.hs = xor i1 %i.hr, %i.fs
  br i1 %i.hs, label %bb.ad, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.hr, label %bb.ae, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.assume(i1 %not..i.i)
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 80
  %i.hu = load i64, ptr %i.ht, align 8, !noundef !6
  %i.hv = icmp eq i64 %i.hu, %i.fv
  br i1 %i.hv, label %.split, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

.split:                                           ; preds = %bb.ae
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 72
  %i.hx = load ptr, ptr %i.hw, align 8, !noundef !6
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.hx, ptr %i.fw, i64 %i.fv)
  %i.hy = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.hy, label %bb.ag, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.af:                                            ; preds = %bb.ab
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ga, i64 noundef %i.fp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #21
          to label %bb.k unwind label %bb.be

_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.ad
  tail call void @llvm.assume(i1 %i.fs)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ho, i64 72
  %i.ia = load i8, ptr %i.hz, align 8, !range !3056, !noundef !6
  %i.ib = icmp eq i8 %i.ia, %i.fc
  br i1 %i.ib, label %bb.ag, label %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.ag:                                            ; preds = %_RNvXsy_NtNtCs577yCKf7gy3_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, %.split
  %i.ic = load <2 x ptr>, ptr %3, align 8         ; 3 uses
  %.sroa.691.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.691.0.copyload = load i64, ptr %.sroa.691.0..sroa_idx, align 8 ; 2 uses
  %.sroa.794.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.794.0.copyload = load ptr, ptr %.sroa.794.0..sroa_idx, align 8 ; 2 uses
  %.sroa.897.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.897.0.copyload = load i64, ptr %.sroa.897.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3129)
  %i.id = load i64, ptr %i.ho, align 8, !range !48, !noalias !3132, !noundef !6
  %i.ie = trunc nuw i64 %i.id to i1
  br i1 %i.ie, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %.invoke.i, %bb.ai
  %i.if = landingpad { ptr, i32 }
          cleanup
  %i.ig = extractelement <2 x ptr> %i.ic, i64 0   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ig) ]
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  %i.ii = load ptr, ptr %i.ih, align 8, !noalias !3135, !nonnull !6, !noundef !6
  %i.ij = extractelement <2 x ptr> %i.ic, i64 1
  invoke void %i.ii(ptr noundef %.sroa.794.0.copyload, ptr noundef %i.ij, i64 noundef %.sroa.691.0.copyload)
          to label %.thread144 unwind label %bb.ak, !noalias !3142, !inline_history !3042

bb.ai:                                            ; preds = %bb.ag
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.il = load i64, ptr %i.ik, align 8, !noalias !3132, !noundef !6
  invoke void @_RNvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %i.il)
          to label %._crit_edge.i unwind label %bb.ah, !noalias !3142

._crit_edge.i:                                    ; preds = %bb.ai
  %.pre.i = load i64, ptr %i.fo, align 8, !alias.scope !3129, !noalias !3142
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.i, %bb.ag
  %i.im = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.fp, %bb.ag ] ; 2 uses
  %i.in = icmp ugt i64 %i.im, %i.ga
  br i1 %i.in, label %bb.al, label %.invoke.i

.invoke.i:                                        ; preds = %bb.aj
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 65536) %i.ga, i64 noundef %i.im, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #21
          to label %.cont.i unwind label %bb.ah, !noalias !3142

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ak:                                            ; preds = %bb.ah
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !3142
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.ip = load ptr, ptr %i.fq, align 8, !alias.scope !3129, !noalias !3142, !nonnull !6, !noundef !6
  %i.iq = getelementptr inbounds nuw [104 x i8], ptr %i.ip, i64 %i.ga ; 5 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ir, i64 32, i1 false)
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iq, i64 56 ; 2 uses
  %.sroa.484.0.copyload = load i8, ptr %.sroa.484.0..sroa_idx, align 8, !noalias !3143
  %.sroa.585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iq, i64 57
  %.sroa.5.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %0, i64 33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx20, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.585.0..sroa_idx, i64 7, i1 false)
  store <2 x ptr> %i.ic, ptr %i.ir, align 8, !noalias !3144
  %.sroa.691.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.iq, i64 40
  store i64 %.sroa.691.0.copyload, ptr %.sroa.691.0..sroa_idx92, align 8, !noalias !3144
  %.sroa.794.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.iq, i64 48
  store ptr %.sroa.794.0.copyload, ptr %.sroa.794.0..sroa_idx95, align 8, !noalias !3144
  store i64 %.sroa.897.0.copyload, ptr %.sroa.484.0..sroa_idx, align 8, !noalias !3144
  %.sroa.3.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.484.0.copyload, ptr %.sroa.3.0..sroa_idx17, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3148)
  br i1 %i.fs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3160)
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.it = load ptr, ptr %i.is, align 8, !alias.scope !3163, !noundef !6
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0115.0.copyload, i64 32
  %i.iv = load ptr, ptr %i.iu, align 8, !noalias !3163, !nonnull !6, !noundef !6
  tail call void %i.iv(ptr noundef %i.it, ptr noundef %i.fw, i64 noundef %i.fv), !noalias !3163, !inline_history !3164
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.bd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit, %bb.am, %bb.al, %bb.w, %bb.bb, %.thread
  ret void

bb.an:                                            ; preds = %bb.l
  %i.iw = icmp samesign ugt i64 %.sroa.08.0.ph, 511
  %i.ix = icmp ne i64 %i.q, 2
  %.sroa.013.0 = and i1 %i.ix, %i.iw
  %.sroa.669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.669.0.copyload = load ptr, ptr %.sroa.669.0..sroa_idx, align 8 ; 3 uses
  %.sroa.070.0.copyload = load ptr, ptr %3, align 8 ; 3 uses
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.572.0.copyload = load ptr, ptr %.sroa.572.0..sroa_idx, align 8 ; 2 uses
  %.sroa.675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.675.0.copyload = load i64, ptr %.sroa.675.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.880.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.880.0.copyload = load i64, ptr %.sroa.880.0..sroa_idx, align 8
  %i.iy = icmp ult i64 %i.fp, 88686269585142076
  tail call void @llvm.assume(i1 %i.iy)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3165)
  %i.iz = icmp samesign ugt i64 %i.fp, 32767
  br i1 %i.iz, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3168
  %i.jb = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i16 %i.fe, ptr %i.jb, align 8, !noalias !3168
  %i.jc = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %.sroa.0115.0.copyload, ptr %i.jc, align 8, !noalias !3171
  %.sroa.6.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.fw, ptr %.sroa.6.0..sroa_idx58, align 8, !noalias !3171
  %.sroa.8.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %i.fv, ptr %.sroa.8.0..sroa_idx61, align 8, !noalias !3171
  %.sroa.10.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %.sroa.669.0.copyload, ptr %.sroa.10.0..sroa_idx64, align 8, !noalias !3171
  %i.jd = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.070.0.copyload, ptr %i.jd, align 8, !noalias !3172
  %.sroa.572.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.572.0.copyload, ptr %.sroa.572.0..sroa_idx73, align 8, !noalias !3172
  %.sroa.675.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.675.0.copyload, ptr %.sroa.675.0..sroa_idx76, align 8, !noalias !3172
  %.sroa.7.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx78, align 8, !noalias !3172
  %.sroa.880.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.880.0.copyload, ptr %.sroa.880.0..sroa_idx81, align 8, !noalias !3172
  store i64 0, ptr %i.a, align 8, !noalias !3168
  %i.je = load i64, ptr %i.ja, align 8, !range !3087, !alias.scope !3173, !noalias !3176, !noundef !6
  %i.jf = icmp eq i64 %i.fp, %i.je
  br i1 %i.jf, label %bb.ap, label %bb.ax

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs577yCKf7gy3_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCs77NLLyX6U31_9axum_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ja)
          to label %._crit_edge unwind label %bb.aq, !noalias !3176

._crit_edge:                                      ; preds = %bb.ap
  %.pre = load ptr, ptr %i.fq, align 8, !alias.scope !3173, !noalias !3176
  br label %bb.ax

bb.aq:                                            ; preds = %bb.ap
  %i.jg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs577yCKf7gy3_4http6header3map6BucketNtNtBG_5value11HeaderValueEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.a) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header4name10HeaderNameECsl8OoimOLbh_6qdrant.exit46 unwind label %bb.ar, !noalias !3178

bb.ar:                                            ; preds = %bb.aq
  %i.jh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !3176
  unreachable

bb.as:                                            ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.070.0.copyload) ]
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.070.0.copyload, i64 32
  %i.jj = load ptr, ptr %i.ji, align 8, !noalias !3179, !nonnull !6, !noundef !6
  invoke void %i.jj(ptr noundef %.sroa.7.0.copyload, ptr noundef %.sroa.572.0.copyload, i64 noundef %.sroa.675.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i49 unwind label %bb.au, !noalias !3168, !inline_history !3042

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i49: ; preds = %bb.as
  br i1 %i.fs, label %bb.bb, label %bb.at

bb.at:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs577yCKf7gy3_4http6header5value11HeaderValueECsl8OoimOLbh_6qdrant.exit.i49
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0115.0.copyload, i64 32
  %i.jl = load ptr, ptr %i.jk, align 8, !noalias !3186, !nonnull !6, !noundef !6
  tail call void %i.jl(ptr noundef %.sroa.669.0.copyload, ptr noundef %i.fw, i64 noundef %i.fv), !inline_history !3114
  br label %bb.bb

bb.au:                                            ; preds = %bb.as
  %i.jm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_0
