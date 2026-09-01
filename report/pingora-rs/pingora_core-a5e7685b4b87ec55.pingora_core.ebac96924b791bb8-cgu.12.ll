Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.12?download=true
inline.NumInlined: 1208
inline.NumDeleted: 641
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap11try_append2NtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core:bb.a
  %i.x = load ptr, ptr %1, align 8, !noalias !56, !noundef !18 ; 3 uses
  %i.y = icmp ne ptr %i.x, null
  %i.z = zext i1 %i.y to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !61
  store i64 %i.z, ptr %i.d, align 8, !noalias !61
  call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 8) #30, !noalias !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !61
  %.not.i.i.i = icmp eq ptr %i.x, null
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val.i.i.i = load ptr, ptr %i.aa, align 8, !noalias !56, !noundef !18 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i.i = load i64, ptr %i.ab, align 8, !noalias !56, !noundef !18
  call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i) #30, !noalias !53
  %i.ac = ptrtoint ptr %.val.i.i.i to i64
  %i.ad = trunc i64 %i.ac to i8
  br label %_RINvXsz_NtNtCs84JG9zk80ZV_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECskeugdADtBsi_12pingora_core.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ae = load i8, ptr %i.aa, align 8, !range !66, !noalias !56, !noundef !18 ; 2 uses
  %i.af = zext nneg i8 %i.ae to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !67
  store i64 %i.af, ptr %i.c, align 8, !noalias !67
  call fastcc void @_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef 8) #30, !noalias !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !67
  br label %_RINvXsz_NtNtCs84JG9zk80ZV_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECskeugdADtBsi_12pingora_core.exit.i

_RINvXsz_NtNtCs84JG9zk80ZV_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.g, %bb.f
  %i.ag = phi i8 [ %i.ae, %bb.g ], [ %i.ad, %bb.f ]
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.e, align 16, !alias.scope !72, !noalias !53
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.412.0..sroa_idx.i, align 8, !alias.scope !72, !noalias !53
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.513.0..sroa_idx.i, align 16, !alias.scope !72, !noalias !53 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.614.0..sroa_idx.i, align 8, !alias.scope !72, !noalias !53
  %i.ah = load i64, ptr %.sroa.915.0..sroa_idx.i, align 16, !alias.scope !72, !noalias !53, !noundef !18
  %i.ai = shl i64 %i.ah, 56
  %i.aj = load i64, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !72, !noalias !53, !noundef !18
  %i.ak = or i64 %i.ai, %i.aj                     ; 2 uses
  %i.al = xor i64 %i.ak, %.sroa.22.0.copyload.i.i ; 3 uses
  %i.am = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.an = add i64 %i.al, %.sroa.10.0.copyload.i.i ; 2 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.ap = xor i64 %i.ao, %i.am                    ; 3 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 16)
  %i.ar = xor i64 %i.aq, %i.an                    ; 3 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 32)
  %i.at = add i64 %i.an, %i.ap                    ; 3 uses
  %i.au = add i64 %i.ar, %i.as                    ; 2 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 17)
  %i.aw = xor i64 %i.at, %i.av                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 21)
  %i.ay = xor i64 %i.ax, %i.au                    ; 3 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 32)
  %i.ba = xor i64 %i.au, %i.ak
  %i.bb = xor i64 %i.az, 255
  %i.bc = add i64 %i.ba, %i.aw                    ; 3 uses
  %i.bd = add i64 %i.ay, %i.bb                    ; 2 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 13)
  %i.bf = xor i64 %i.bc, %i.be                    ; 3 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 16)
  %i.bh = xor i64 %i.bg, %i.bd                    ; 3 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 32)
  %i.bj = add i64 %i.bf, %i.bd                    ; 3 uses
  %i.bk = add i64 %i.bh, %i.bi                    ; 2 uses
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 17)
  %i.bm = xor i64 %i.bj, %i.bl                    ; 3 uses
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 21)
  %i.bo = xor i64 %i.bn, %i.bk                    ; 3 uses
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 32)
  %i.bq = add i64 %i.bm, %i.bk                    ; 3 uses
  %i.br = add i64 %i.bo, %i.bp                    ; 2 uses
  %i.bs = tail call noundef i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 13)
  %i.bt = xor i64 %i.bs, %i.bq                    ; 3 uses
  %i.bu = tail call noundef i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 16)
  %i.bv = xor i64 %i.bu, %i.br                    ; 3 uses
  %i.bw = tail call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 32)
  %i.bx = add i64 %i.bt, %i.br                    ; 3 uses
  %i.by = add i64 %i.bv, %i.bw                    ; 2 uses
  %i.bz = tail call noundef i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 17)
  %i.ca = xor i64 %i.bz, %i.bx                    ; 3 uses
  %i.cb = tail call noundef i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 21)
  %i.cc = xor i64 %i.cb, %i.by                    ; 2 uses
  %i.cd = tail call noundef i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 32)
  %i.ce = add i64 %i.ca, %i.by
  %i.cf = add i64 %i.cc, %i.cd                    ; 2 uses
  %i.cg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 13)
  %i.ch = xor i64 %i.cg, %i.ce                    ; 2 uses
  %i.ci = shl i64 %i.cc, 16
  %i.cj = xor i64 %i.ci, %i.cf
  %i.ck = add i64 %i.ch, %i.cf                    ; 2 uses
  %i.cl = lshr i64 %i.ch, 47
  %i.cm = lshr i64 %i.cj, 43
  %i.cn = lshr i64 %i.ck, 32
  %i.co = xor i64 %i.cm, %i.cl
  %i.cp = xor i64 %i.co, %i.cn
  %i.cq = xor i64 %i.cp, %i.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !53
  br label %.loopexit

bb.h:                                             ; preds = %bb.d
  %i.cr = load ptr, ptr %1, align 8, !noalias !75, !noundef !18 ; 5 uses
  %i.cs = icmp ne ptr %i.cr, null
  %i.ct = zext i1 %i.cs to i64
  %i.cu = xor i64 %i.ct, -3750763034362895579
  %i.cv = mul i64 %i.cu, 2232315406967589409      ; 4 uses
  %.not.i.i20.i = icmp eq ptr %i.cr, null
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not.i.i20.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val.i.i21.i = load ptr, ptr %i.cw, align 8, !noalias !75, !noundef !18 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i22.i = load i64, ptr %i.cx, align 8, !noalias !75, !noundef !18 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.val.i.i21.i, i64 %.val1.i.i22.i
  %i.cz = icmp samesign eq i64 %.val1.i.i22.i, 0
  %i.da = ptrtoint ptr %.val.i.i21.i to i64
  %i.db = trunc i64 %i.da to i8                   ; 3 uses
  br i1 %i.cz, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.i
  %xtraiter = and i64 %.val1.i.i22.i, 7           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.prol = phi i64 [ %i.dg, %.lr.ph.i.i.i.i.i.prol ], [ %i.cv, %.lr.ph.i.i.i.i.i.preheader ]
  %.sroa.03.05.i.i.i.i.i.prol = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.prol ], [ %.val.i.i21.i, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.prol, i64 1 ; 2 uses
  %i.dd = load i8, ptr %.sroa.03.05.i.i.i.i.i.prol, align 1, !alias.scope !80, !noalias !83, !noundef !18
  %i.de = zext i8 %i.dd to i64
  %i.df = xor i64 %.sroa.0.06.i.i.i.i.i.prol, %i.de
  %i.dg = mul i64 %i.df, 1099511628211            ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !87

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.lcssa223.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dg, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.0.06.i.i.i.i.i.unr = phi i64 [ %i.cv, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dg, %.lr.ph.i.i.i.i.i.prol ]
  %.sroa.03.05.i.i.i.i.i.unr = phi ptr [ %.val.i.i21.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.dc, %.lr.ph.i.i.i.i.i.prol ]
  %i.dh = icmp ult i64 %.val1.i.i22.i, 8
  br i1 %i.dh, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi i64 [ %i.ev, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.sroa.03.05.i.i.i.i.i = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i ], [ %.sroa.03.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i, i64 1
  %i.dj = load i8, ptr %.sroa.03.05.i.i.i.i.i, align 1, !alias.scope !80, !noalias !83, !noundef !18
  %i.dk = zext i8 %i.dj to i64
  %i.dl = xor i64 %.sroa.0.06.i.i.i.i.i, %i.dk
  %i.dm = mul i64 %i.dl, 1099511628211
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i, i64 2
  %i.do = load i8, ptr %i.di, align 1, !alias.scope !80, !noalias !83, !noundef !18
  %i.dp = zext i8 %i.do to i64
  %i.dq = xor i64 %i.dm, %i.dp
  %i.dr = mul i64 %i.dq, 1099511628211
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i, i64 3
  %i.dt = load i8, ptr %i.dn, align 1, !alias.scope !80, !noalias !83, !noundef !18
  %i.du = zext i8 %i.dt to i64
  %i.dv = xor i64 %i.dr, %i.du
  %i.dw = mul i64 %i.dv, 1099511628211
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i, i64 4
  %i.dy = load i8, ptr %i.ds, align 1, !alias.scope !80, !noalias !83, !noundef !18
  %i.dz = zext i8 %i.dy to i64
  %i.ea = xor i64 %i.dw, %i.dz
  %i.eb = mul i64 %i.ea, 1099511628211
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i, i64 5
  %i.ed = load i8, ptr %i.dx, align 1, !alias.scope !80, !noalias !83, !noundef !18
  %i.ee = zext i8 %i.ed to i64
  %i.ef = xor i64 %i.eb, %i.ee
  %i.eg = mul i64 %i.ef, 1099511628211
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i, i64 6
  %i.ei = load i8, ptr %i.ec, align 1, !alias.scope !80, !noalias !83, !noundef !18
  %i.ej = zext i8 %i.ei to i64
  %i.ek = xor i64 %i.eg, %i.ej
  %i.el = mul i64 %i.ek, 1099511628211
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i, i64 7
  %i.en = load i8, ptr %i.eh, align 1, !alias.scope !80, !noalias !83, !noundef !18
  %i.eo = zext i8 %i.en to i64
  %i.ep = xor i64 %i.el, %i.eo
  %i.eq = mul i64 %i.ep, 1099511628211
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i, i64 8 ; 2 uses
  %i.es = load i8, ptr %i.em, align 1, !alias.scope !80, !noalias !83, !noundef !18
  %i.et = zext i8 %i.es to i64
  %i.eu = xor i64 %i.eq, %i.et
  %i.ev = mul i64 %i.eu, 1099511628211            ; 2 uses
  %i.ew = icmp eq ptr %i.er, %i.cy
  br i1 %i.ew, label %.loopexit, label %.lr.ph.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ex = load i8, ptr %i.cw, align 8, !range !66, !noalias !75, !noundef !18 ; 2 uses
  %i.ey = zext nneg i8 %i.ex to i64
  %i.ez = xor i64 %i.cv, %i.ey
  %i.fa = mul i64 %i.ez, 2232315406967589409
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.j, %bb.i, %_RINvXsz_NtNtCs84JG9zk80ZV_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECskeugdADtBsi_12pingora_core.exit.i
  %i.fb = phi i8 [ %i.ag, %_RINvXsz_NtNtCs84JG9zk80ZV_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECskeugdADtBsi_12pingora_core.exit.i ], [ %i.ex, %bb.j ], [ %i.db, %bb.i ], [ %i.db, %.lr.ph.i.i.i.i.i ], [ %i.db, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.sroa.0102.0.copyload = phi ptr [ %i.x, %_RINvXsz_NtNtCs84JG9zk80ZV_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECskeugdADtBsi_12pingora_core.exit.i ], [ null, %bb.j ], [ %i.cr, %bb.i ], [ %i.cr, %.lr.ph.i.i.i.i.i ], [ %i.cr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 10 uses
  %.sroa.0.0.i = phi i64 [ %i.cq, %_RINvXsz_NtNtCs84JG9zk80ZV_4http6header4nameNtB6_10HeaderNameNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtNtCsG258MDvU3F_3std4hash6random13DefaultHasherECskeugdADtBsi_12pingora_core.exit.i ], [ %i.fa, %bb.j ], [ %i.cv, %bb.i ], [ %.lcssa223.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ev, %.lr.ph.i.i.i.i.i ]
  %i.fc = trunc i64 %.sroa.0.0.i to i16
  %i.fd = and i16 %i.fc, 32767                    ; 6 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ff = load i16, ptr %i.fe, align 8, !noundef !18 ; 3 uses
  %i.fg = and i16 %i.fd, %i.ff
  %i.fh = zext nneg i16 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.fk = load i64, ptr %i.fj, align 8, !noundef !18 ; 2 uses
  %i.fl = load ptr, ptr %i.fi, align 8, !nonnull !18
  %i.fm = zext i16 %i.ff to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.fo = load i64, ptr %i.fn, align 8            ; 14 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !nonnull !18 ; 3 uses
  %i.fr = icmp eq ptr %.sroa.0102.0.copyload, null ; 6 uses
  %not..i.i = icmp ne ptr %.sroa.0102.0.copyload, null
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fu = load i64, ptr %i.ft, align 8            ; 9 uses
  %i.fv = load ptr, ptr %i.fs, align 8            ; 8 uses
  %.not230 = icmp eq i64 %i.fk, 0
  br label %.outer212

.outer212:                                        ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, %.loopexit
  %.sroa.09.0.ph = phi i64 [ %i.hj, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread ], [ 0, %.loopexit ] ; 3 uses
  %.sroa.01.0.ph = phi i64 [ %i.hk, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread ], [ %i.fh, %.loopexit ] ; 2 uses
  %i.fw = icmp ult i64 %.sroa.01.0.ph, %i.fk      ; 2 uses
  %.not230.not = xor i1 %.not230, true
  %brmerge = or i1 %i.fw, %.not230.not
  %.sroa.01.0.ph.mux = select i1 %i.fw, i64 %.sroa.01.0.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit225, label %infloop

.loopexit225:                                     ; preds = %.outer212
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %.sroa.01.0.ph.mux ; 2 uses
  %i.fy = load i16, ptr %i.fx, align 2, !noundef !18 ; 2 uses
  %.not = icmp eq i16 %i.fy, -1
  br i1 %.not, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.ae
  unreachable

bb.l:                                             ; preds = %.loopexit225
  %i.fz = zext i16 %i.fy to i64                   ; 6 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 2
  %i.gb = load i16, ptr %i.ga, align 2, !noundef !18 ; 2 uses
  %i.gc = and i16 %i.gb, %i.ff
  %i.gd = zext i16 %i.gc to i64
  %i.ge = sub i64 %.sroa.01.0.ph.mux, %i.gd
  %i.gf = and i64 %i.ge, %i.fm
  %i.gg = icmp samesign ult i64 %i.gf, %.sroa.09.0.ph
  br i1 %i.gg, label %bb.ar, label %bb.z

bb.m:                                             ; preds = %.loopexit225
  %i.gh = icmp ult i64 %i.fo, 88686269585142076
  tail call void @llvm.assume(i1 %i.gh)
  %.sroa.6105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6105.0.copyload = load ptr, ptr %.sroa.6105.0..sroa_idx, align 8 ; 3 uses
  %.sroa.0106.0.copyload = load ptr, ptr %2, align 8 ; 3 uses
  %.sroa.5108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5108.0.copyload = load ptr, ptr %.sroa.5108.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6111.0.copyload = load i64, ptr %.sroa.6111.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.7114.0.copyload = load ptr, ptr %.sroa.7114.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.8117.0.copyload = load i64, ptr %.sroa.8117.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.gi = icmp samesign ugt i64 %i.fo, 32767
  br i1 %i.gi, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !92
  %i.gk = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i16 %i.fd, ptr %i.gk, align 8, !noalias !92
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %.sroa.0102.0.copyload, ptr %i.gl, align 8, !noalias !95
  %.sroa.690.0..sroa_idx91 = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %i.fv, ptr %.sroa.690.0..sroa_idx91, align 8, !noalias !95
  %.sroa.894.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 %i.fu, ptr %.sroa.894.0..sroa_idx95, align 8, !noalias !95
  %.sroa.1098.0..sroa_idx99 = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %.sroa.6105.0.copyload, ptr %.sroa.1098.0..sroa_idx99, align 8, !noalias !95
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.0106.0.copyload, ptr %i.gm, align 8, !noalias !96
  %.sroa.5108.0..sroa_idx109 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %.sroa.5108.0.copyload, ptr %.sroa.5108.0..sroa_idx109, align 8, !noalias !96
  %.sroa.6111.0..sroa_idx112 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sroa.6111.0.copyload, ptr %.sroa.6111.0..sroa_idx112, align 8, !noalias !96
  %.sroa.7114.0..sroa_idx115 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.7114.0.copyload, ptr %.sroa.7114.0..sroa_idx115, align 8, !noalias !96
  %.sroa.8117.0..sroa_idx118 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.8117.0.copyload, ptr %.sroa.8117.0..sroa_idx118, align 8, !noalias !96
  store i64 0, ptr %i.b, align 8, !noalias !92
  %i.gn = load i64, ptr %i.gj, align 8, !range !97, !alias.scope !98, !noalias !101, !noundef !18
  %i.go = icmp eq i64 %i.fo, %i.gn
  br i1 %i.go, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gj)
          to label %._crit_edge175 unwind label %bb.p, !noalias !101

._crit_edge175:                                   ; preds = %bb.o
  %.pre176 = load ptr, ptr %i.fp, align 8, !alias.scope !98, !noalias !101
  br label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.gp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBG_5value11HeaderValueEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.b) #31
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit47 unwind label %bb.q, !noalias !103

bb.q:                                             ; preds = %bb.p
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !noalias !101
  unreachable

bb.r:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0106.0.copyload) ]
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0106.0.copyload, i64 32
  %i.gs = load ptr, ptr %i.gr, align 8, !noalias !104, !nonnull !18, !noundef !18
  invoke void %i.gs(ptr noundef %.sroa.7114.0.copyload, ptr noundef %.sroa.5108.0.copyload, i64 noundef %.sroa.6111.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i unwind label %bb.t, !noalias !92, !inline_history !52

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.r
  br i1 %i.fr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit, label %bb.s

bb.s:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0102.0.copyload, i64 32
  %i.gu = load ptr, ptr %i.gt, align 8, !noalias !111, !nonnull !18, !noundef !18
  tail call void %i.gu(ptr noundef %.sroa.6105.0.copyload, ptr noundef %i.fv, i64 noundef %i.fu), !inline_history !124
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit

bb.t:                                             ; preds = %bb.r
  %i.gv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.fr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit47, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.0102.0.copyload, i64 32
  %i.gx = load ptr, ptr %i.gw, align 8, !noalias !125, !nonnull !18, !noundef !18
  invoke void %i.gx(ptr noundef %.sroa.6105.0.copyload, ptr noundef %i.fv, i64 noundef %i.fu)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit47 unwind label %bb.v, !noalias !92, !inline_history !138

bb.v:                                             ; preds = %bb.u
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !noalias !92
  unreachable

bb.w:                                             ; preds = %._crit_edge175, %bb.n
  %i.gz = phi ptr [ %.pre176, %._crit_edge175 ], [ %i.fq, %bb.n ]
  %i.ha = getelementptr inbounds nuw [104 x i8], ptr %i.gz, i64 %i.fo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.ha, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.b, i64 104, i1 false), !noalias !103
  %i.hb = add nuw nsw i64 %i.fo, 1
  store i64 %i.hb, ptr %i.fn, align 8, !alias.scope !98, !noalias !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !92
  %i.hc = load i64, ptr %i.fj, align 8, !noundef !18 ; 2 uses
  %i.hd = icmp ult i64 %.sroa.01.0.ph.mux, %i.hc
  br i1 %i.hd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.he = load ptr, ptr %i.fi, align 8, !nonnull !18, !noundef !18
  %i.hf = trunc nuw nsw i64 %i.fo to i16
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %.sroa.01.0.ph.mux ; 2 uses
  store i16 %i.hf, ptr %i.hg, align 2
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 2
  store i16 %i.fd, ptr %i.hh, align 2
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit

bb.y:                                             ; preds = %bb.w
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.01.0.ph.mux, i64 noundef %i.hc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #33
  unreachable

bb.z:                                             ; preds = %bb.l
  %i.hi = icmp eq i16 %i.gb, %i.fd
  br i1 %i.hi, label %bb.aa, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.ad, %bb.ab, %.split, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, %bb.z
  %i.hj = add nuw nsw i64 %.sroa.09.0.ph, 1
  %i.hk = add i64 %.sroa.01.0.ph.mux, 1
  br label %.outer212

bb.aa:                                            ; preds = %bb.z
  %i.hl = icmp ugt i64 %i.fo, %i.fz
  br i1 %i.hl, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.hm = getelementptr inbounds nuw [104 x i8], ptr %i.fq, i64 %i.fz ; 10 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 64
  %i.ho = load ptr, ptr %i.hn, align 8, !noundef !18
  %i.hp = icmp ne ptr %i.ho, null                 ; 2 uses
  %i.hq = xor i1 %i.hp, %not..i.i
  br i1 %i.hq, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.hp, label %bb.ad, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0102.0.copyload) ]
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 80
  %i.hs = load i64, ptr %i.hr, align 8, !noundef !18
  %i.ht = icmp eq i64 %i.hs, %i.fu
  br i1 %i.ht, label %.split, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

.split:                                           ; preds = %bb.ad
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hm, i64 72
  %i.hv = load ptr, ptr %i.hu, align 8, !noundef !18
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.hv, ptr %i.fv, i64 %i.fu)
  %i.hw = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.hw, label %bb.af, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.ae:                                            ; preds = %bb.aa
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.fz, i64 noundef %i.fo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #33
          to label %bb.k unwind label %bb.bh

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.ac
  tail call void @llvm.assume(i1 %i.fr)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hm, i64 72
  %i.hy = load i8, ptr %i.hx, align 8, !range !66, !noundef !18
  %i.hz = icmp eq i8 %i.hy, %i.fb
  br i1 %i.hz, label %bb.af, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread

bb.af:                                            ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, %.split
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %.sroa.083.0.copyload = load ptr, ptr %2, align 8 ; 6 uses
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.584.0.copyload = load ptr, ptr %.sroa.584.0..sroa_idx, align 8 ; 4 uses
  %.sroa.785.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.785.0.copyload = load i64, ptr %.sroa.785.0..sroa_idx, align 8 ; 4 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.ib = load i64, ptr %i.hm, align 8, !range !144, !alias.scope !139, !noalias !145, !noundef !18
  %i.ic = trunc nuw i64 %i.ib to i1
  br i1 %i.ic, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.id = getelementptr inbounds nuw i8, ptr %i.hm, i64 16 ; 2 uses
  %i.ie = load i64, ptr %i.id, align 8, !alias.scope !139, !noalias !145, !noundef !18 ; 4 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !alias.scope !142, !noalias !147, !noundef !18 ; 7 uses
  %i.ih = icmp ult i64 %i.ig, 128102389400760776
  tail call void @llvm.assume(i1 %i.ih)
  %i.ii = load i64, ptr %i.ia, align 8, !range !97, !alias.scope !148, !noalias !151, !noundef !18
  %i.ij = icmp eq i64 %i.ig, %i.ii
  br i1 %i.ij, label %bb.ah, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCskeugdADtBsi_12pingora_core.exit.i

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCskxN0Kp1MEon_2h2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ia)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCskeugdADtBsi_12pingora_core.exit.i unwind label %bb.ai, !noalias !151

bb.ai:                                            ; preds = %bb.ah
  %i.ik = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.083.0.copyload) ]
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.083.0.copyload, i64 32
  %i.im = load ptr, ptr %i.il, align 8, !noalias !153, !nonnull !18, !noundef !18
  invoke void %i.im(ptr noundef %.sroa.9.0.copyload, ptr noundef %.sroa.584.0.copyload, i64 noundef %.sroa.785.0.copyload)
          to label %.thread unwind label %bb.aj, !noalias !151, !inline_history !162

bb.aj:                                            ; preds = %bb.ai
  %i.in = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !noalias !151
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCskeugdADtBsi_12pingora_core.exit.i: ; preds = %bb.ah, %bb.ag
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !alias.scope !148, !noalias !151, !nonnull !18, !noundef !18
  %i.iq = getelementptr inbounds nuw [72 x i8], ptr %i.ip, i64 %i.ig ; 9 uses
  store i64 1, ptr %i.iq, align 8, !noalias !147
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store i64 %i.ie, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !147
  %.sroa.5.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx10.i, align 8, !noalias !147
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  store i64 %i.fz, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !147
  %.sroa.7.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  store ptr %.sroa.083.0.copyload, ptr %.sroa.7.0..sroa_idx.i34, align 8, !noalias !147
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iq, i64 40
  store ptr %.sroa.584.0.copyload, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !147
  %.sroa.10.0..sroa_idx.i35 = getelementptr inbounds nuw i8, ptr %i.iq, i64 48
  store i64 %.sroa.785.0.copyload, ptr %.sroa.10.0..sroa_idx.i35, align 8, !noalias !147
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iq, i64 56
  store ptr %.sroa.9.0.copyload, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !147
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.iq, i64 64
  store i64 %.sroa.11.0.copyload, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !147
  %i.ir = add nuw nsw i64 %i.ig, 1                ; 2 uses
  store i64 %i.ir, ptr %i.if, align 8, !alias.scope !148, !noalias !151
  %.not.i = icmp ugt i64 %i.ie, %i.ig
  br i1 %.not.i, label %bb.ap, label %bb.ao

bb.ak:                                            ; preds = %bb.af
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.it = load i64, ptr %i.is, align 8, !alias.scope !142, !noalias !147, !noundef !18 ; 6 uses
  %i.iu = icmp ult i64 %i.it, 128102389400760776
  tail call void @llvm.assume(i1 %i.iu)
  %i.iv = load i64, ptr %i.ia, align 8, !range !97, !alias.scope !163, !noalias !166, !noundef !18
  %i.iw = icmp eq i64 %i.it, %i.iv
  br i1 %i.iw, label %bb.al, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCskeugdADtBsi_12pingora_core.exit9.i

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCskxN0Kp1MEon_2h2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ia)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCskeugdADtBsi_12pingora_core.exit9.i unwind label %bb.am, !noalias !166

bb.am:                                            ; preds = %bb.al
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.083.0.copyload) ]
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.083.0.copyload, i64 32
  %i.iz = load ptr, ptr %i.iy, align 8, !noalias !168, !nonnull !18, !noundef !18
  invoke void %i.iz(ptr noundef %.sroa.9.0.copyload, ptr noundef %.sroa.584.0.copyload, i64 noundef %.sroa.785.0.copyload)
          to label %.thread unwind label %bb.an, !noalias !166, !inline_history !162

bb.an:                                            ; preds = %bb.am
  %i.ja = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !noalias !166
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCskeugdADtBsi_12pingora_core.exit9.i: ; preds = %bb.al, %bb.ak
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jc = load ptr, ptr %i.jb, align 8, !alias.scope !163, !noalias !166, !nonnull !18, !noundef !18
  %i.jd = getelementptr inbounds nuw [72 x i8], ptr %i.jc, i64 %i.it ; 9 uses
  store i64 0, ptr %i.jd, align 8, !noalias !147
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  store i64 %i.fz, ptr %.sroa.417.0..sroa_idx.i, align 8, !noalias !147
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store i64 0, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !147
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  store i64 %i.fz, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !147
  %.sroa.720.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  store ptr %.sroa.083.0.copyload, ptr %.sroa.720.0..sroa_idx.i, align 8, !noalias !147
  %.sroa.921.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jd, i64 40
  store ptr %.sroa.584.0.copyload, ptr %.sroa.921.0..sroa_idx.i, align 8, !noalias !147
  %.sroa.1022.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jd, i64 48
  store i64 %.sroa.785.0.copyload, ptr %.sroa.1022.0..sroa_idx.i, align 8, !noalias !147
  %.sroa.1123.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jd, i64 56
  store ptr %.sroa.9.0.copyload, ptr %.sroa.1123.0..sroa_idx.i, align 8, !noalias !147
  %.sroa.1224.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jd, i64 64
  store i64 %.sroa.11.0.copyload, ptr %.sroa.1224.0..sroa_idx.i, align 8, !noalias !147
  %i.je = add nuw nsw i64 %i.it, 1
  store i64 %i.je, ptr %i.is, align 8, !alias.scope !163, !noalias !166
  store i64 1, ptr %i.hm, align 8, !alias.scope !139, !noalias !145
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store i64 %i.it, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !139, !noalias !145
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  store i64 %i.it, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !139, !noalias !145
  br label %_RINvNtNtCs84JG9zk80ZV_4http6header3map12append_valueNtNtB4_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit

bb.ao:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCskeugdADtBsi_12pingora_core.exit.i
  %i.jf = load ptr, ptr %i.io, align 8, !alias.scope !142, !noalias !147, !nonnull !18, !noundef !18
  %i.jg = getelementptr inbounds nuw [72 x i8], ptr %i.jf, i64 %i.ie ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  store i64 1, ptr %i.jh, align 8, !noalias !147
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  store i64 %i.ig, ptr %i.ji, align 8, !noalias !147
  store i64 1, ptr %i.hm, align 8, !alias.scope !139, !noalias !145
  store i64 %i.ig, ptr %i.id, align 8, !alias.scope !139, !noalias !145
  br label %_RINvNtNtCs84JG9zk80ZV_4http6header3map12append_valueNtNtB4_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit

bb.ap:                                            ; preds = %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCskeugdADtBsi_12pingora_core.exit.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ie, i64 noundef %i.ir, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #33
          to label %.noexc40 unwind label %.body.thread124

.noexc40:                                         ; preds = %bb.ap
  unreachable

_RINvNtNtCs84JG9zk80ZV_4http6header3map12append_valueNtNtB4_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.ao, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCskeugdADtBsi_12pingora_core.exit9.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  br i1 %i.fr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit, label %bb.aq

bb.aq:                                            ; preds = %_RINvNtNtCs84JG9zk80ZV_4http6header3map12append_valueNtNtB4_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.jk = load ptr, ptr %i.jj, align 8, !alias.scope !195, !noundef !18
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0102.0.copyload, i64 32
  %i.jm = load ptr, ptr %i.jl, align 8, !noalias !195, !nonnull !18, !noundef !18
  tail call void %i.jm(ptr noundef %i.jk, ptr noundef %i.fv, i64 noundef %i.fu), !noalias !195, !inline_history !196
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.bd, %bb.be, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i50, %bb.ax, %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i, %bb.bg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit, %bb.aq, %_RINvNtNtCs84JG9zk80ZV_4http6header3map12append_valueNtNtB4_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit, %bb.x
  %.sroa.0.1 = phi i8 [ 1, %bb.aq ], [ 0, %bb.x ], [ 2, %bb.bg ], [ 2, %bb.s ], [ 1, %_RINvNtNtCs84JG9zk80ZV_4http6header3map12append_valueNtNtB4_5value11HeaderValueECskeugdADtBsi_12pingora_core.exit ], [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit ], [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i ], [ 0, %bb.be ], [ 0, %bb.bd ], [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskeugdADtBsi_12pingora_core.exit.i50 ], [ 2, %bb.ax ]
  ret i8 %.sroa.0.1

bb.ar:                                            ; preds = %bb.l
  %i.jn = icmp samesign ugt i64 %.sroa.09.0.ph, 511
  %i.jo = icmp ne i64 %i.p, 2
  %.sroa.016.0 = and i1 %i.jo, %i.jn
  %.sroa.669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.669.0.copyload = load ptr, ptr %.sroa.669.0..sroa_idx, align 8 ; 3 uses
  %.sroa.070.0.copyload = load ptr, ptr %2, align 8 ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession16buffer_body_data:bb.a
; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession16get_retry_buffer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.b = load i8, ptr %i.a, align 8, !range !376, !noundef !18
  switch i8 %i.b, label %bb.e [
    i8 2, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 288
  tail call void @_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11body_bufferNtB2_11FixedBuffer10get_buffer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c)
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession16ignore_info_resp(ptr nofree noundef nonnull readonly align 8 captures(none) %0, i16 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 458
  %i.b = load i8, ptr %i.a, align 2, !range !847, !noundef !18
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = icmp ne i16 %1, 101
  %or.cond.not = and i1 %i.d, %i.c
  br i1 %or.cond.not, label %bb.b, label %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession22is_expect_continue_req.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i16 %1, 100
  br i1 %i.e, label %bb.c, label %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession22is_expect_continue_req.exit

_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession22is_expect_continue_req.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.h, %bb.d ], [ true, %bb.c ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 448
  %.val = load ptr, ptr %i.f, align 8, !align !51, !noundef !18 ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession22is_expect_continue_req.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef zeroext i1 @_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common22is_expect_continue_req(ptr noundef nonnull readonly align 8 %.val)
  %i.h = xor i1 %i.g, true
  br label %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession22is_expect_continue_req.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession16init_body_reader(ptr noalias nofree noundef align 8 dereferenceable(464) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 5 uses
  %i.d = load i8, ptr %i.c, align 8, !range !1488, !noundef !18
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.q, %bb.r, %bb.j, %bb.m, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !range !376, !noundef !18
  %.not = icmp eq i8 %i.g, 2
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 0, ptr %i.h, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !range !144, !noundef !18
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.f, label %bb.g, !prof !929

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.n = load ptr, ptr %i.m, align 8, !noundef !18
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.p = load i64, ptr %i.o, align 8, !noundef !18
  %i.q = tail call { ptr, i64 } @_RNvMNtCskeugdADtBsi_12pingora_core5utilsNtB2_6BufRef3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.p) ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0        ; 4 uses
  %i.s = extractvalue { ptr, i64 } %i.q, 1        ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 457
  %i.u = load i8, ptr %i.t, align 1, !range !847, !noundef !18
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.j, label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @70) #35
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %.val5 = load ptr, ptr %i.w, align 8, !align !51, !noundef !18 ; 2 uses
  %.not.i.i = icmp eq ptr %.val5, null
  br i1 %.not.i.i, label %bb.i, label %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession19is_chunked_encoding.exit, !prof !301

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #35
  unreachable

_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession19is_chunked_encoding.exit: ; preds = %bb.h
  %i.x = tail call fastcc noundef zeroext i1 @_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common32is_chunked_encoding_from_headers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %.val5)
  br i1 %i.x, label %bb.m, label %bb.k

bb.j:                                             ; preds = %bb.f
  tail call void @_RNvMs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v14bodyNtB4_10BodyReader20init_close_delimited(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.s)
  br label %bb.b

bb.k:                                             ; preds = %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession19is_chunked_encoding.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val6 = load ptr, ptr %i.w, align 8, !align !51, !noundef !18 ; 2 uses
  %.not.i.i7 = icmp eq ptr %.val6, null
  br i1 %.not.i.i7, label %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession18get_content_length.exit, label %_RINvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB3_11HttpSession10get_headerNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameEBb_.exit.i

_RINvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB3_11HttpSession10get_headerNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameEBb_.exit.i: ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1620
  store ptr null, ptr %i.a, align 8, !noalias !1620
  %.sroa.7.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 24 to ptr), ptr %.sroa.7.0..sroa_idx3.i.i, align 8, !noalias !1620
  %.sroa.8.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx7.i.i, i8 0, i64 16, i1 false), !noalias !1625
  %i.y = call noundef align 8 ptr @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %.val6, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !1620 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1620
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession18get_content_length.exit, label %bb.l

bb.l:                                             ; preds = %_RINvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB3_11HttpSession10get_headerNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameEBb_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !1625, !noundef !18
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !1625, !noundef !18
  br label %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession18get_content_length.exit

_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession18get_content_length.exit: ; preds = %bb.k, %_RINvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB3_11HttpSession10get_headerNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameEBb_.exit.i, %bb.l
  %.sroa.5.0.i = phi i64 [ %i.ac, %bb.l ], [ undef, %_RINvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB3_11HttpSession10get_headerNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameEBb_.exit.i ], [ undef, %bb.k ]
  %.sroa.0.0.i = phi ptr [ %i.aa, %bb.l ], [ null, %_RINvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB3_11HttpSession10get_headerNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameEBb_.exit.i ], [ null, %bb.k ]
  call fastcc void @_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common21buf_to_content_length(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef readonly captures(address, read_provenance) %.sroa.0.0.i, i64 %.sroa.5.0.i) #30
  %i.ad = load i64, ptr %i.b, align 8, !range !40, !noundef !18 ; 2 uses
  %.not9 = icmp eq i64 %i.ad, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = inttoptr i64 %i.af to ptr               ; 3 uses
  br i1 %.not9, label %bb.n, label %bb.p

bb.m:                                             ; preds = %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession19is_chunked_encoding.exit
  tail call void @_RNvMs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v14bodyNtB4_10BodyReader12init_chunked(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.s)
  br label %bb.b

bb.n:                                             ; preds = %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession18get_content_length.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ag)
          to label %.thread unwind label %bb.o, !noalias !1626

bb.o:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef 72, i64 noundef 8) #24, !noalias !1626
  resume { ptr, i32 } %i.ah

.thread:                                          ; preds = %bb.n
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef 72, i64 noundef 8) #24, !noalias !1626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.r

bb.p:                                             ; preds = %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession18get_content_length.exit
  %.sroa.02.0.not = icmp eq i64 %i.ad, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %.sroa.02.0.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_RNvMs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v14bodyNtB4_10BodyReader19init_content_length(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.s)
  br label %bb.b

bb.r:                                             ; preds = %.thread, %bb.p
  call void @_RNvMs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v14bodyNtB4_10BodyReader19init_content_length(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %i.c, i64 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.s)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession16init_body_writer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(464) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.e = load i16, ptr %i.d, align 8, !range !1487, !noundef !18 ; 6 uses
  switch i16 %i.e, label %bb.c [
    i16 204, label %bb.b
    i16 304, label %bb.b
  ]

bb.b:                                             ; preds = %bb.d, %bb.a, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 1, ptr %i.f, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.h = load ptr, ptr %i.g, align 8, !align !51, !noundef !18 ; 4 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  %.val = load i8, ptr %i.i, align 8, !range !572, !noundef !18
  %i.j = icmp eq i8 %.val, 5
  br i1 %i.j, label %bb.b, label %.critedge.thread

.critedge:                                        ; preds = %bb.c
  %i.k = add i16 %i.e, -200
  %spec.select.i = icmp ult i16 %i.k, -100
  %.not13 = icmp eq i16 %i.e, 101
  %or.cond = or i1 %.not13, %spec.select.i
  br i1 %or.cond, label %bb.e, label %bb.n

.critedge.thread:                                 ; preds = %bb.d
  %i.l = add i16 %i.e, -200
  %spec.select.i17 = icmp ult i16 %i.l, -100
  %.not1319 = icmp eq i16 %i.e, 101
  %or.cond20 = or i1 %.not1319, %spec.select.i17
  br i1 %or.cond20, label %bb.f, label %bb.n

bb.e:                                             ; preds = %.critedge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1629)
  br label %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession10is_upgrade.exit.thread

bb.f:                                             ; preds = %.critedge.thread
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  %i.n = load i8, ptr %i.m, align 8, !range !1486, !noalias !1629, !noundef !18
  %i.o = icmp eq i8 %i.n, 2
  br i1 %i.o, label %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession14is_upgrade_req.exit.i, label %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession10is_upgrade.exit.thread

_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession14is_upgrade_req.exit.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1629
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @113, i64 32, i1 false), !noalias !1629
  %i.p = call noundef align 8 ptr @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c), !noalias !1629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1629
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession10is_upgrade.exit.thread, label %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession10is_upgrade.exit

_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession10is_upgrade.exit: ; preds = %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession14is_upgrade_req.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 106
  %i.r = load i8, ptr %i.q, align 2, !range !1486, !alias.scope !1629
  %2 = icmp ne i8 %i.r, 2
  %not..not1319 = icmp ne i16 %i.e, 101
  %narrow.i.not = select i1 %not..not1319, i1 true, i1 %2
  br i1 %narrow.i.not, label %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession10is_upgrade.exit.thread, label %bb.m

_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession10is_upgrade.exit.thread: ; preds = %bb.f, %bb.e, %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession14is_upgrade_req.exit.i, %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession10is_upgrade.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1632)
  %i.t = call fastcc noundef zeroext i1 @_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common32is_chunked_encoding_from_headers(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1), !noalias !1632
  br i1 %i.t, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession10is_upgrade.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1635
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @57, i64 32, i1 false), !noalias !1635
  %i.u = call noundef align 8 ptr @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !noalias !1632 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1635
  %.not.i.i16 = icmp eq ptr %i.u, null
  br i1 %.not.i.i16, label %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1635
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !1632, !nonnull !18, !noundef !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noalias !1632, !noundef !18
  call fastcc void @_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common21buf_to_content_length(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.w, i64 %i.y) #30, !noalias !1632
  %i.z = load i64, ptr %i.a, align 8, !range !40, !noalias !1635, !noundef !18 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !1635 ; 2 uses
  %i.ad = inttoptr i64 %i.ac to ptr               ; 3 uses
  br i1 %i.aa, label %bb.i, label %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ad)
          to label %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.thread12.i unwind label %bb.j, !noalias !1637

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef 72, i64 noundef 8) #24, !noalias !1637
  resume { ptr, i32 } %i.ae

_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.thread12.i: ; preds = %bb.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef 72, i64 noundef 8) #24, !noalias !1637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1635
  br label %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.thread.i

_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1635
  %i.af = trunc nuw i64 %i.z to i1
  br i1 %i.af, label %bb.l, label %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.thread.i

bb.k:                                             ; preds = %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession10is_upgrade.exit.thread
  store i64 2, ptr %i.s, align 8, !alias.scope !1632, !noalias !1640
  br label %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common21init_body_writer_comm.exit

bb.l:                                             ; preds = %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.i
  store i64 1, ptr %i.s, align 8, !alias.scope !1632, !noalias !1640
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.ac, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !1632, !noalias !1640
  br label %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common21init_body_writer_comm.exit

_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.thread.i: ; preds = %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.i, %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.thread12.i, %bb.g
  store i64 3, ptr %i.s, align 8, !alias.scope !1632, !noalias !1640
  br label %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common21init_body_writer_comm.exit

_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common21init_body_writer_comm.exit: ; preds = %bb.k, %bb.l, %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.thread.i
  %.sink.i = phi i64 [ 16, %bb.l ], [ 8, %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.thread.i ], [ 8, %bb.k ]
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sink.i
  store i64 0, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !1632, !noalias !1640
  br label %bb.n

bb.m:                                             ; preds = %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession10is_upgrade.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 3, ptr %i.ag, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %.sroa.411.0..sroa_idx, align 8
  br label %bb.n

bb.n:                                             ; preds = %.critedge.thread, %.critedge, %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common21init_body_writer_comm.exit, %bb.m, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession16validate_request(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 11 uses
  %i.b = alloca [72 x i8], align 8                ; 11 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !align !51, !noundef !18 ; 4 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.b, label %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession10req_header.exit, !prof !301

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #35
  unreachable

_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession10req_header.exit: ; preds = %bb.a
  %i.h = tail call fastcc noundef align 8 ptr @_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common24check_dup_content_length(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.g) ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.s

bb.c:                                             ; preds = %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession10req_header.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) @54, i64 32, i1 false)
  %i.i = call noundef zeroext i1 @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap12contains_keyNtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  %i.k = load i8, ptr %i.j, align 8, !range !1486, !noundef !18
  %i.l = icmp eq i8 %i.k, 1
  br i1 %i.l, label %bb.i, label %bb.g

bb.e:                                             ; preds = %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession19is_chunked_encoding.exit, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.val9 = load ptr, ptr %i.f, align 8, !align !51, !noundef !18 ; 2 uses
  %.not.i.i = icmp eq ptr %.val9, null
  br i1 %.not.i.i, label %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession18get_content_length.exit, label %_RINvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB3_11HttpSession10get_headerNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameEBb_.exit.i

_RINvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB3_11HttpSession10get_headerNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameEBb_.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1641
  store ptr null, ptr %i.c, align 8, !noalias !1641
  %.sroa.7.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 24 to ptr), ptr %.sroa.7.0..sroa_idx3.i.i, align 8, !noalias !1641
  %.sroa.8.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx7.i.i, i8 0, i64 16, i1 false), !noalias !1646
  %i.m = call noundef align 8 ptr @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %.val9, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c), !noalias !1641 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1641
  %.not.i10 = icmp eq ptr %i.m, null
  br i1 %.not.i10, label %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession18get_content_length.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB3_11HttpSession10get_headerNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameEBb_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !1646, !noundef !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noalias !1646, !noundef !18
  br label %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession18get_content_length.exit

_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession18get_content_length.exit: ; preds = %bb.e, %_RINvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB3_11HttpSession10get_headerNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameEBb_.exit.i, %bb.f
  %.sroa.5.0.i = phi i64 [ %i.q, %bb.f ], [ undef, %_RINvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB3_11HttpSession10get_headerNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameEBb_.exit.i ], [ undef, %bb.e ]
  %.sroa.0.0.i = phi ptr [ %i.o, %bb.f ], [ null, %_RINvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB3_11HttpSession10get_headerNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameEBb_.exit.i ], [ null, %bb.e ]
  call fastcc void @_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common21buf_to_content_length(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef readonly captures(address, read_provenance) %.sroa.0.0.i, i64 %.sroa.5.0.i) #30
  %i.r = load i64, ptr %i.e, align 8, !range !40, !noundef !18
  %i.s = icmp eq i64 %i.r, 2
  br i1 %i.s, label %bb.q, label %bb.r

bb.g:                                             ; preds = %bb.d
  %.val = load ptr, ptr %i.f, align 8, !align !51, !noundef !18 ; 2 uses
  %.not.i.i11 = icmp eq ptr %.val, null
  br i1 %.not.i.i11, label %bb.h, label %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession19is_chunked_encoding.exit, !prof !301

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #35
  unreachable

_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession19is_chunked_encoding.exit: ; preds = %bb.g
  %i.t = call fastcc noundef zeroext i1 @_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common32is_chunked_encoding_from_headers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %.val)
  br i1 %i.t, label %bb.e, label %bb.m

bb.i:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1647
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i16 13, ptr %i.u, align 8, !noalias !1651
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i8 3, ptr %i.v, align 1, !noalias !1647
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 0, ptr %i.w, align 8, !noalias !1647
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr null, ptr %i.x, align 8, !noalias !1647
  store i64 0, ptr %i.b, align 8, !noalias !1652
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @72, ptr %.sroa.418.0..sroa_idx, align 8, !noalias !1652
  %.sroa.5.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 57, ptr %.sroa.5.0..sroa_idx19, align 8, !noalias !1652
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !1653
  %i.y = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 465) 72, i64 noundef 8) #24, !noalias !1653 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RNvMs2_CsfsXztIhCltD_13pingora_errorNtB5_5Error6create.exit, !prof !301

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #33
          to label %.noexc.i unwind label %bb.k, !noalias !1647

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b) #31
          to label %common.resume unwind label %bb.l, !noalias !1647

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !noalias !1647
  unreachable

end_hunk_1
begin_hunk_2_@_RNvMs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest6serverNtB4_11HttpSession15request_summary:bb.a
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i24 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

common.resume:                                    ; preds = %.body, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %i.an, %bb.x ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i24: ; preds = %bb.w
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECskeugdADtBsi_12pingora_core.exit25

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECskeugdADtBsi_12pingora_core.exit25: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECskeugdADtBsi_12pingora_core.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core.exit.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.z:                                             ; preds = %bb.s, %.body
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest6serverNtB4_11HttpSession16get_retry_buffer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(464) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.b = load i8, ptr %i.a, align 8, !range !376, !noundef !18
  switch i8 %i.b, label %bb.e [
    i8 2, label %bb.b
    i8 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 360
  tail call void @_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http11body_bufferNtB2_11FixedBuffer10get_buffer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c)
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest6serverNtB4_11HttpSession16init_body_reader(ptr noalias nofree noundef align 8 captures(none) dereferenceable(464) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.d = load i64, ptr %i.c, align 8, !range !1602, !noundef !18
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

.sink.split:                                      ; preds = %bb.m, %bb.h, %bb.o, %bb.p, %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.thread
  %.sink29 = phi i64 [ 40, %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.thread ], [ 48, %bb.p ], [ 40, %bb.o ], [ 40, %bb.h ], [ 40, %bb.m ]
  %.sink = phi i64 [ 0, %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.thread ], [ %i.x, %bb.p ], [ 0, %bb.o ], [ 0, %bb.h ], [ 0, %bb.m ]
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink29
  store i64 %.sink, ptr %.sroa.49.0..sroa_idx, align 8
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !range !376, !noundef !18
  %.not = icmp eq i8 %i.g, 2
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 0, ptr %i.h, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 457
  %i.j = load i8, ptr %i.i, align 1, !range !847, !noundef !18
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 408
  %.val17 = load ptr, ptr %i.l, align 8, !alias.scope !1856, !nonnull !18, !noundef !18
  %i.m = getelementptr inbounds nuw i8, ptr %.val17, i64 448 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !noalias !1859, !align !51, !noundef !18 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.g, label %_RNvMs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest6serverNtB4_11HttpSession19is_chunked_encoding.exit, !prof !301

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @61, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #35, !noalias !1859
  unreachable

_RNvMs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest6serverNtB4_11HttpSession19is_chunked_encoding.exit: ; preds = %bb.f
  %i.o = tail call fastcc noundef zeroext i1 @_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common32is_chunked_encoding_from_headers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.n)
  br i1 %i.o, label %bb.m, label %bb.i

bb.h:                                             ; preds = %bb.e
  store i64 4, ptr %i.c, align 8
  br label %.sink.split

bb.i:                                             ; preds = %_RNvMs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest6serverNtB4_11HttpSession19is_chunked_encoding.exit
  %.val = load ptr, ptr %i.m, align 8, !align !51, !noundef !18 ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.thread, label %_RINvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB3_11HttpSession10get_headerNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameEBb_.exit

_RINvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB3_11HttpSession10get_headerNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameEBb_.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1862
  store ptr null, ptr %i.b, align 8, !noalias !1862
  %.sroa.7.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 24 to ptr), ptr %.sroa.7.0..sroa_idx3.i, align 8, !noalias !1862
  %.sroa.8.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx7.i, i8 0, i64 16, i1 false)
  %i.p = call noundef align 8 ptr @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !noalias !1862 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1862
  %.not.i18 = icmp eq ptr %i.p, null
  br i1 %.not.i18, label %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RINvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB3_11HttpSession10get_headerNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameEBb_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !18, !noundef !18
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !18
  call fastcc void @_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common21buf_to_content_length(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 %i.t) #30
  %i.u = load i64, ptr %i.a, align 8, !range !40, !noundef !18 ; 2 uses
  %i.v = icmp eq i64 %i.u, 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = inttoptr i64 %i.x to ptr                 ; 3 uses
  br i1 %i.v, label %bb.k, label %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(72) %i.y)
          to label %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.thread23 unwind label %bb.l, !noalias !1865

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef 72, i64 noundef 8) #24, !noalias !1865
  resume { ptr, i32 } %i.z

_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.thread23: ; preds = %bb.k
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef 72, i64 noundef 8) #24, !noalias !1865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.thread

_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = trunc nuw i64 %i.u to i1
  br i1 %i.aa, label %bb.n, label %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.thread

bb.m:                                             ; preds = %_RNvMs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest6serverNtB4_11HttpSession19is_chunked_encoding.exit
  store i64 4, ptr %i.c, align 8
  br label %.sink.split

bb.n:                                             ; preds = %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit
  %i.ab = icmp eq i64 %i.x, 0
  br i1 %i.ab, label %bb.o, label %bb.p

_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.thread: ; preds = %bb.i, %_RINvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB3_11HttpSession10get_headerNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameEBb_.exit, %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.thread23, %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit
  store i64 1, ptr %i.c, align 8
  br label %.sink.split

bb.o:                                             ; preds = %bb.n
  store i64 1, ptr %i.c, align 8
  br label %.sink.split

bb.p:                                             ; preds = %bb.n
  store i64 2, ptr %i.c, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %.sroa.415.0..sroa_idx, align 8
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest6serverNtB4_11HttpSession16init_body_writer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(464) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.e = load i16, ptr %i.d, align 8, !range !1487, !noundef !18 ; 6 uses
  switch i16 %i.e, label %bb.c [
    i16 204, label %bb.b
    i16 304, label %bb.b
  ]

bb.b:                                             ; preds = %bb.d, %bb.a, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 1, ptr %i.f, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.412.0..sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !18, !noundef !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  %i.j = load ptr, ptr %i.i, align 8, !align !51, !noundef !18 ; 4 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 184
  %.val = load i8, ptr %i.k, align 8, !range !572, !noundef !18
  %i.l = icmp eq i8 %.val, 5
  br i1 %i.l, label %bb.b, label %.critedge.thread

.critedge:                                        ; preds = %bb.c
  %i.m = add i16 %i.e, -200
  %spec.select.i = icmp ult i16 %i.m, -100
  %.not25 = icmp eq i16 %i.e, 101
  %or.cond = or i1 %.not25, %spec.select.i
  br i1 %or.cond, label %bb.e, label %bb.n

.critedge.thread:                                 ; preds = %bb.d
  %i.n = add i16 %i.e, -200
  %spec.select.i28 = icmp ult i16 %i.n, -100
  %.not2530 = icmp eq i16 %i.e, 101
  %or.cond31 = or i1 %.not2530, %spec.select.i28
  br i1 %or.cond31, label %bb.f, label %bb.n

bb.e:                                             ; preds = %.critedge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1871)
  br label %_RNvMs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest6serverNtB4_11HttpSession10is_upgrade.exit.thread

bb.f:                                             ; preds = %.critedge.thread
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 216
  %i.p = load i8, ptr %i.o, align 8, !range !1486, !noalias !1874, !noundef !18
  %i.q = icmp eq i8 %i.p, 2
  br i1 %i.q, label %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession14is_upgrade_req.exit.i.i, label %_RNvMs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest6serverNtB4_11HttpSession10is_upgrade.exit.thread

_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession14is_upgrade_req.exit.i.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1874
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @113, i64 32, i1 false), !noalias !1874
  %i.r = call noundef align 8 ptr @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !noalias !1874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1874
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_RNvMs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest6serverNtB4_11HttpSession10is_upgrade.exit.thread, label %_RNvMs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest6serverNtB4_11HttpSession10is_upgrade.exit

_RNvMs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest6serverNtB4_11HttpSession10is_upgrade.exit: ; preds = %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession14is_upgrade_req.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 106
  %i.t = load i8, ptr %i.s, align 2, !range !1486, !alias.scope !1876, !noalias !1877
  %2 = icmp ne i8 %i.t, 2
  %not..not2530 = icmp ne i16 %i.e, 101
  %narrow.i.i.not = select i1 %not..not2530, i1 true, i1 %2
  br i1 %narrow.i.i.not, label %_RNvMs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest6serverNtB4_11HttpSession10is_upgrade.exit.thread, label %bb.g

_RNvMs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest6serverNtB4_11HttpSession10is_upgrade.exit.thread: ; preds = %bb.f, %bb.e, %_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession14is_upgrade_req.exit.i.i, %_RNvMs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest6serverNtB4_11HttpSession10is_upgrade.exit
  %i.u = call fastcc noundef zeroext i1 @_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common32is_chunked_encoding_from_headers(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1)
  br i1 %i.u, label %bb.l, label %bb.h

bb.g:                                             ; preds = %_RNvMs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest6serverNtB4_11HttpSession10is_upgrade.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 2, ptr %i.v, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 0, ptr %.sroa.414.0..sroa_idx, align 8
  br label %bb.n

bb.h:                                             ; preds = %_RNvMs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest6serverNtB4_11HttpSession10is_upgrade.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @57, i64 32, i1 false)
  %i.w = call noundef align 8 ptr @_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !18, !noundef !18
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !18
  call fastcc void @_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common21buf_to_content_length(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 %i.aa) #30
  %i.ab = load i64, ptr %i.a, align 8, !range !40, !noundef !18 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = inttoptr i64 %i.ae to ptr               ; 3 uses
  br i1 %i.ac, label %bb.j, label %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(72) %i.af)
          to label %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.thread39 unwind label %bb.k, !noalias !1878

bb.k:                                             ; preds = %bb.j
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef 72, i64 noundef 8) #24, !noalias !1878
  resume { ptr, i32 } %i.ag

_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.thread39: ; preds = %bb.j
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef 72, i64 noundef 8) #24, !noalias !1878
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.thread

_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = trunc nuw i64 %i.ab to i1
  br i1 %i.ah, label %bb.m, label %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.thread

bb.l:                                             ; preds = %_RNvMs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest6serverNtB4_11HttpSession10is_upgrade.exit.thread
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 2, ptr %i.ai, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 0, ptr %.sroa.417.0..sroa_idx, align 8
  br label %bb.n

bb.m:                                             ; preds = %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 1, ptr %i.aj, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 %i.ae, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i64 0, ptr %.sroa.524.0..sroa_idx, align 8
  br label %bb.n

_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.thread: ; preds = %bb.h, %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.thread39, %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 2, ptr %i.ak, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 0, ptr %.sroa.420.0..sroa_idx, align 8
  br label %bb.n

bb.n:                                             ; preds = %.critedge.thread, %bb.m, %_RNvNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16common27header_value_content_length.exit.thread, %.critedge, %bb.g, %bb.l, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest6serverNtB4_11HttpSession16new_from_session(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([496 x i8]) align 8 captures(none) dereferenceable(496) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [464 x i8], align 8               ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [48 x i8], align 8                ; 11 uses
  %i.r = alloca [32 x i8], align 8                ; 9 uses
  %i.s = alloca [32 x i8], align 8                ; 5 uses
  %i.t = alloca [464 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http6serverNtB2_7Session9to_h1_raw(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.r, ptr noundef nonnull align 8 %1)
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noundef !18 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noundef !18 ; 3 uses
  invoke void @_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummyNtB2_7DummyIO3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %i.x)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body36

.body36:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body37 = phi { ptr, i32 } [ %i.y, %bb.b ], [ %i.ag, %bb.e ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1881)
  call void @llvm.experimental.noalias.scope.decl(metadata !1884)
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !1887, !noundef !18
  %i.ab = load ptr, ptr %i.r, align 8, !alias.scope !1887, !nonnull !18, !align !51, !noundef !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !1887, !nonnull !18, !noundef !18
  invoke void %i.ad(ptr noundef %i.aa, ptr noundef nonnull %i.v, i64 noundef %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskeugdADtBsi_12pingora_core.exit unwind label %bb.aw, !inline_history !1091

bb.c:                                             ; preds = %bb.a
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !1888
  %i.ae = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 465) 32, i64 noundef 8) #24, !noalias !1888 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.d, label %bb.g, !prof !301

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #33
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http10subrequest5dummy7DummyIOEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.s) #31
          to label %.body36 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  invoke void @_RNvMNtNtNtNtCskeugdADtBsi_12pingora_core9protocols4http2v16serverNtB2_11HttpSession3new(ptr noalias nofree noundef nonnull sret([464 x i8]) align 8 captures(none) dereferenceable(464) %i.t, ptr noundef nonnull %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(200) @105)
          to label %bb.h unwind label %bb.b

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !1891)
  call void @llvm.experimental.noalias.scope.decl(metadata !1894)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !1897, !noundef !18
  %i.ak = load ptr, ptr %i.r, align 8, !alias.scope !1897, !nonnull !18, !align !51, !noundef !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !noalias !1897, !nonnull !18, !noundef !18
  invoke void %i.am(ptr noundef %i.aj, ptr noundef nonnull %i.v, i64 noundef %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskeugdADtBsi_12pingora_core.exit41 unwind label %bb.j, !inline_history !1091

bb.i:                                             ; preds = %bb.ac
  br i1 %.sroa.019.268, label %.thread, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskeugdADtBsi_12pingora_core.exit

bb.j:                                             ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskeugdADtBsi_12pingora_core.exit41
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskeugdADtBsi_12pingora_core.exit41: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ao = invoke noundef align 8 ptr @_RNvMNtNtNtCskeugdADtBsi_12pingora_core9protocols4http6serverNtB2_7Session6digest(ptr noundef nonnull align 8 %1)
          to label %bb.k unwind label %bb.j       ; 5 uses

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs1eA6bChxBZF_5bytes5bytes5BytesECskeugdADtBsi_12pingora_core.exit41
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.z, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !1898)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1901
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !1898, !noalias !1903, !noundef !18 ; 5 uses
  %.not.i = icmp eq ptr %i.aq, null               ; 2 uses
  br i1 %.not.i, label %bb.n, label %bb.m

end_hunk_2
