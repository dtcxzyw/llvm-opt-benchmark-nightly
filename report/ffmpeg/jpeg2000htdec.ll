Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/jpeg2000htdec?download=true
inline.NumInlined: 26
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
begin_hunk_0_@ff_jpeg2000_decode_htj2k:bb.a
  %i.po = icmp ne i64 %i.pg, 4
  %i.pp = and i64 %i.pf, 3
  %.not518 = icmp eq i64 %i.pp, 0
  br i1 %.not518, label %bb.az, label %jpeg2000_bitbuf_get_bits_lsb.exit211

bb.az:                                            ; preds = %vlc_decode_u_suffix.exit177
  %i.pq = icmp ult i8 %i.pl, 5
  br i1 %i.pq, label %bb.ba, label %jpeg2000_bitbuf_get_bits_lsb.exit209

bb.ba:                                            ; preds = %bb.az
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre912 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre913 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit209

jpeg2000_bitbuf_get_bits_lsb.exit209:             ; preds = %bb.az, %bb.ba
  %i.pr = phi i8 [ %.pre913, %bb.ba ], [ %i.pl, %bb.az ]
  %i.ps = phi i64 [ %.pre912, %bb.ba ], [ %i.pk, %bb.az ] ; 2 uses
  %i.pt = trunc i64 %i.ps to i32
  %i.pu = and i32 %i.pt, 31
  %i.pv = zext i1 %i.po to i64                    ; 2 uses
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.pv
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !12 ; 2 uses
  %i.py = trunc i32 %i.px to i8
  %.mask519 = and i32 %i.px, 255
  %i.pz = zext nneg i32 %.mask519 to i64
  %i.qa = lshr i64 %i.ps, %i.pz                   ; 3 uses
  store i64 %i.qa, ptr %i.eo, align 8, !tbaa !16
  %i.qb = sub i8 %i.pr, %i.py                     ; 4 uses
  store i8 %i.qb, ptr %i.ep, align 8, !tbaa !23
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.pv
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !12
  %i.qe = and i32 %i.pu, %i.qd
  %.fr1250 = freeze i32 %i.qe                     ; 4 uses
  %i.qf = icmp ugt i32 %.fr1250, 27
  br i1 %i.qf, label %bb.bb, label %jpeg2000_bitbuf_get_bits_lsb.exit211

bb.bb:                                            ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit209
  %i.qg = icmp ult i8 %i.qb, 4
  br i1 %i.qg, label %bb.bc, label %jpeg2000_bitbuf_get_bits_lsb.exit211

bb.bc:                                            ; preds = %bb.bb
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre914 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre915 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit211

jpeg2000_bitbuf_get_bits_lsb.exit211:             ; preds = %vlc_decode_u_suffix.exit177, %jpeg2000_bitbuf_get_bits_lsb.exit209, %bb.bb, %bb.bc
  %i.qh = phi i8 [ 4, %bb.bb ], [ 4, %bb.bc ], [ 0, %jpeg2000_bitbuf_get_bits_lsb.exit209 ], [ 0, %vlc_decode_u_suffix.exit177 ] ; 2 uses
  %.0.i17411311134 = phi i32 [ %.fr1250, %bb.bb ], [ %.fr1250, %bb.bc ], [ %.fr1250, %jpeg2000_bitbuf_get_bits_lsb.exit209 ], [ 0, %vlc_decode_u_suffix.exit177 ]
  %i.qi = phi i8 [ %i.qb, %bb.bb ], [ %.pre915, %bb.bc ], [ %i.qb, %jpeg2000_bitbuf_get_bits_lsb.exit209 ], [ %i.pl, %vlc_decode_u_suffix.exit177 ]
  %i.qj = phi i64 [ %i.qa, %bb.bb ], [ %.pre914, %bb.bc ], [ %i.qa, %jpeg2000_bitbuf_get_bits_lsb.exit209 ], [ %i.pk, %vlc_decode_u_suffix.exit177 ] ; 2 uses
  %i.qk = zext nneg i8 %i.qh to i64               ; 2 uses
  %notmask.i210 = shl nsw i64 -1, %i.qk
  %i.ql = xor i64 %notmask.i210, -1
  %i.qm = and i64 %i.qj, %i.ql
  %i.qn = lshr i64 %i.qj, %i.qk
  store i64 %i.qn, ptr %i.eo, align 8, !tbaa !16
  %i.qo = sub i8 %i.qi, %i.qh
  store i8 %i.qo, ptr %i.ep, align 8, !tbaa !23
  %i.qp = trunc nuw nsw i64 %i.qm to i32
  %i.qq = zext i8 %i.pn to i32
  %i.qr = add nuw nsw i32 %.0.i17411311134, %i.qq
  %i.qs = shl nuw nsw i32 %i.qp, 2
  %i.qt = and i32 %i.qs, 252
  %i.qu = add nuw nsw i32 %i.qr, %i.qt
  br label %bb.bd

bb.bd:                                            ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit211, %jpeg2000_bitbuf_get_bits_lsb.exit213
  %.sroa.0416.0 = phi i32 [ %i.oq, %jpeg2000_bitbuf_get_bits_lsb.exit213 ], [ 0, %jpeg2000_bitbuf_get_bits_lsb.exit211 ]
  %.sroa.0399.0 = phi i32 [ %i.pc, %jpeg2000_bitbuf_get_bits_lsb.exit213 ], [ 0, %jpeg2000_bitbuf_get_bits_lsb.exit211 ]
  %.sroa.18.2 = phi i32 [ %i.oa, %jpeg2000_bitbuf_get_bits_lsb.exit213 ], [ %i.qu, %jpeg2000_bitbuf_get_bits_lsb.exit211 ]
  %i.qv = zext i8 %i.nq to i32
  %i.qw = add nuw nsw i32 %.sroa.0416.0, %i.qv
  %i.qx = add nuw nsw i32 %i.qw, %.sroa.0399.0
  br label %jpeg2000_bitbuf_get_bits_lsb.exit203.cont

bb.be:                                            ; preds = %jpeg2000_decode_sig_emb.exit283
  %or.cond11.i = select i1 %i.jl, i1 true, i1 %i.jm
  br i1 %or.cond11.i, label %bb.bf, label %jpeg2000_bitbuf_get_bits_lsb.exit203.cont

bb.bf:                                            ; preds = %bb.be
  %i.qy = load i8, ptr %i.ep, align 8, !tbaa !23  ; 2 uses
  %i.qz = icmp ult i8 %i.qy, 3
  br i1 %i.qz, label %bb.bg, label %vlc_decode_u_prefix.exit167

bb.bg:                                            ; preds = %bb.bf
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit167

vlc_decode_u_prefix.exit167:                      ; preds = %bb.bf, %bb.bg
  %i.ra = phi i8 [ %i.qy, %bb.bf ], [ %.pre, %bb.bg ]
  %i.rb = load i64, ptr %i.eo, align 8, !tbaa !16 ; 3 uses
  %i.rc = and i64 %i.rb, 7                        ; 3 uses
  %i.rd = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.rc
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !13  ; 2 uses
  %i.rf = zext nneg i8 %i.re to i64
  %i.rg = lshr i64 %i.rb, %i.rf                   ; 3 uses
  store i64 %i.rg, ptr %i.eo, align 8, !tbaa !16
  %i.rh = sub i8 %i.ra, %i.re                     ; 4 uses
  store i8 %i.rh, ptr %i.ep, align 8, !tbaa !23
  %i.ri = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.rc
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !13
  %i.rk = icmp ne i64 %i.rc, 4
  %i.rl = and i64 %i.rb, 3
  %.not512 = icmp eq i64 %i.rl, 0
  br i1 %.not512, label %bb.bh, label %jpeg2000_bitbuf_get_bits_lsb.exit203

bb.bh:                                            ; preds = %vlc_decode_u_prefix.exit167
  %i.rm = icmp ult i8 %i.rh, 5
  br i1 %i.rm, label %bb.bi, label %vlc_decode_u_suffix.exit183.cont

bb.bi:                                            ; preds = %bb.bh
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre894 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre895 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %vlc_decode_u_suffix.exit183.cont

vlc_decode_u_suffix.exit183.cont:                 ; preds = %bb.bh, %bb.bi
  %i.rn = phi i8 [ %.pre895, %bb.bi ], [ %i.rh, %bb.bh ]
  %i.ro = phi i64 [ %.pre894, %bb.bi ], [ %i.rg, %bb.bh ] ; 2 uses
  %i.rp = trunc i64 %i.ro to i32
  %i.rq = and i32 %i.rp, 31
  %i.rr = zext i1 %i.rk to i64                    ; 2 uses
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.rr
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !12 ; 2 uses
  %i.ru = trunc i32 %i.rt to i8
  %.mask513 = and i32 %i.rt, 255
  %i.rv = zext nneg i32 %.mask513 to i64
  %i.rw = lshr i64 %i.ro, %i.rv                   ; 3 uses
  store i64 %i.rw, ptr %i.eo, align 8, !tbaa !16
  %i.rx = sub i8 %i.rn, %i.ru                     ; 4 uses
  store i8 %i.rx, ptr %i.ep, align 8, !tbaa !23
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.rr
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !12
  %i.sa = and i32 %i.rq, %i.rz
  %.fr1249 = freeze i32 %i.sa                     ; 4 uses
  %i.sb = icmp ugt i32 %.fr1249, 27
  br i1 %i.sb, label %bb.bj, label %jpeg2000_bitbuf_get_bits_lsb.exit203

bb.bj:                                            ; preds = %vlc_decode_u_suffix.exit183.cont
  %i.sc = icmp ult i8 %i.rx, 4
  br i1 %i.sc, label %bb.bk, label %jpeg2000_bitbuf_get_bits_lsb.exit203

bb.bk:                                            ; preds = %bb.bj
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre896 = load i64, ptr %i.eo, align 8, !tbaa !16
  %.pre897 = load i8, ptr %i.ep, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit203

jpeg2000_bitbuf_get_bits_lsb.exit203:             ; preds = %vlc_decode_u_prefix.exit167, %vlc_decode_u_suffix.exit183.cont, %bb.bj, %bb.bk
  %i.sd = phi i8 [ 4, %bb.bj ], [ 4, %bb.bk ], [ 0, %vlc_decode_u_suffix.exit183.cont ], [ 0, %vlc_decode_u_prefix.exit167 ] ; 2 uses
  %.0.i18211381144 = phi i32 [ %.fr1249, %bb.bj ], [ %.fr1249, %bb.bk ], [ %.fr1249, %vlc_decode_u_suffix.exit183.cont ], [ 0, %vlc_decode_u_prefix.exit167 ]
  %i.se = phi i8 [ %i.rx, %bb.bj ], [ %.pre897, %bb.bk ], [ %i.rx, %vlc_decode_u_suffix.exit183.cont ], [ %i.rh, %vlc_decode_u_prefix.exit167 ]
  %i.sf = phi i64 [ %i.rw, %bb.bj ], [ %.pre896, %bb.bk ], [ %i.rw, %vlc_decode_u_suffix.exit183.cont ], [ %i.rg, %vlc_decode_u_prefix.exit167 ] ; 2 uses
  %i.sg = zext nneg i8 %i.sd to i64               ; 2 uses
  %notmask.i202 = shl nsw i64 -1, %i.sg
  %i.sh = xor i64 %notmask.i202, -1
  %i.si = and i64 %i.sf, %i.sh
  %i.sj = lshr i64 %i.sf, %i.sg
  store i64 %i.sj, ptr %i.eo, align 8, !tbaa !16
  %i.sk = sub i8 %i.se, %i.sd
  store i8 %i.sk, ptr %i.ep, align 8, !tbaa !23
  %i.sl = trunc nuw nsw i64 %i.si to i32
  %i.sm = zext i8 %i.rj to i32
  %i.sn = add nuw nsw i32 %.0.i18211381144, %i.sm
  %i.so = shl nuw nsw i32 %i.sl, 2
  %i.sp = and i32 %i.so, 252
  %i.sq = add nuw nsw i32 %i.sn, %i.sp            ; 2 uses
  %spec.select490 = select i1 %i.jl, i32 %i.sq, i32 0
  %spec.select491 = select i1 %i.jl, i32 0, i32 %i.sq
  br label %jpeg2000_bitbuf_get_bits_lsb.exit203.cont

jpeg2000_bitbuf_get_bits_lsb.exit203.cont:        ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit203, %bb.be, %bb.bd, %jpeg2000_bitbuf_get_bits_lsb.exit207
  %.sroa.0386.3 = phi i32 [ %i.qx, %bb.bd ], [ %i.na, %jpeg2000_bitbuf_get_bits_lsb.exit207 ], [ 0, %bb.be ], [ %spec.select490, %jpeg2000_bitbuf_get_bits_lsb.exit203 ] ; 2 uses
  %.sroa.18.1 = phi i32 [ %.sroa.18.2, %bb.bd ], [ %i.ng, %jpeg2000_bitbuf_get_bits_lsb.exit207 ], [ 0, %bb.be ], [ %spec.select491, %jpeg2000_bitbuf_get_bits_lsb.exit203 ] ; 2 uses
  %.not749.i = icmp slt i32 %.sroa.0386.3, %i.du
  %.not750.i = icmp slt i32 %.sroa.18.1, %i.du
  %or.cond751.i = select i1 %.not749.i, i1 %.not750.i, i1 false
  br i1 %or.cond751.i, label %.preheader531, label %jpeg2000_decode_ht_cleanup_segment.exit

.preheader531:                                    ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit203.cont
  %i.sr = add nuw nsw i32 %.sroa.18.1, 1          ; 4 uses
  %i.ss = add nuw nsw i32 %.sroa.0386.3, 1        ; 4 uses
  %i.st = zext nneg i8 %i.fy to i32               ; 4 uses
  %i.su = zext nneg i8 %i.ie to i32               ; 4 uses
  %i.sv = load i8, ptr %i.ge, align 1, !tbaa !13
  %i.sw = zext i8 %i.sv to i32
  %i.sx = mul nuw nsw i32 %i.ss, %i.sw            ; 2 uses
  %i.sy = and i32 %i.st, 1                        ; 2 uses
  %i.sz = sub nsw i32 %i.sx, %i.sy                ; 4 uses
  %i.ta = zext i8 %i.iw to i32
  %i.tb = mul nuw nsw i32 %i.sr, %i.ta            ; 2 uses
  %i.tc = and i32 %i.su, 1                        ; 2 uses
  %i.td = sub nsw i32 %i.tb, %i.tc                ; 4 uses
  %i.te = or disjoint i64 %i.gc, 1                ; 3 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.te
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !13
  %i.th = zext i8 %i.tg to i32
  %i.ti = mul nuw nsw i32 %i.ss, %i.th
  %11 = shl i32 %i.st, 30
  %12 = ashr i32 %11, 31
  %13 = add nsw i32 %12, %i.ti                    ; 5 uses
  %i.tj = or disjoint i64 %i.ii, 1                ; 3 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.tj
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !13
  %i.tm = zext i8 %i.tl to i32
  %i.tn = mul nuw nsw i32 %i.sr, %i.tm
  %14 = shl i32 %i.su, 30
  %15 = ashr i32 %14, 31
  %16 = add nsw i32 %15, %i.tn                    ; 5 uses
  %i.to = or disjoint i64 %i.gc, 2                ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.to
  %i.tq = load i8, ptr %i.tp, align 1, !tbaa !13
  %i.tr = zext i8 %i.tq to i32
  %i.ts = mul nuw nsw i32 %i.ss, %i.tr
  %17 = shl i32 %i.st, 29
  %18 = ashr i32 %17, 31
  %19 = add nsw i32 %18, %i.ts                    ; 5 uses
  %i.tt = or disjoint i64 %i.ii, 2                ; 3 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.tt
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !13
  %i.tw = zext i8 %i.tv to i32
  %i.tx = mul nuw nsw i32 %i.sr, %i.tw
  %20 = shl i32 %i.su, 29
  %21 = ashr i32 %20, 31
  %22 = add nsw i32 %21, %i.tx                    ; 5 uses
  %i.ty = or disjoint i64 %i.gc, 3                ; 3 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ty
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !13
  %i.ub = zext i8 %i.ua to i32
  %i.uc = mul nuw nsw i32 %i.ss, %i.ub            ; 2 uses
  %i.ud = lshr i32 %i.st, 3                       ; 2 uses
  %i.ue = sub nsw i32 %i.uc, %i.ud                ; 4 uses
  %i.uf = or disjoint i64 %i.ii, 3                ; 3 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.uf
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !13
  %i.ui = zext i8 %i.uh to i32
  %i.uj = mul nuw nsw i32 %i.sr, %i.ui            ; 2 uses
  %i.uk = lshr i32 %i.su, 3                       ; 2 uses
  %i.ul = sub nsw i32 %i.uj, %i.uk                ; 4 uses
  %i.um = zext nneg i8 %i.fx to i32               ; 4 uses
  %i.un = and i32 %i.um, 1
  %i.uo = icmp sgt i32 %i.sz, 0
  br i1 %i.uo, label %bb.bl, label %jpeg2000_decode_mag_sgn.exit260

bb.bl:                                            ; preds = %.preheader531
  %i.up = trunc i32 %i.sz to i8                   ; 2 uses
  %.not.i265 = icmp ule i8 %.sroa.52.0629, %i.up
  %i.uq = icmp ult i8 %.sroa.52.0629, 32
  %or.cond482 = and i1 %i.uq, %.not.i265
  br i1 %or.cond482, label %.lr.ph.i285, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit267

.lr.ph.i285:                                      ; preds = %bb.bl, %bb.bn
  %.sroa.0320.26 = phi i32 [ %.sroa.0320.27, %bb.bn ], [ %.sroa.0320.0625, %bb.bl ]
  %.sroa.38.26 = phi i32 [ %.sroa.38.27, %bb.bn ], [ %.sroa.38.0626, %bb.bl ]
  %i.ur = phi i64 [ %i.vi, %bb.bn ], [ %.sroa.84339.0627, %bb.bl ]
  %i.us = phi i32 [ %i.vd, %bb.bn ], [ %.sroa.0320.0625, %bb.bl ] ; 4 uses
  %i.ut = phi i32 [ %i.ve, %bb.bn ], [ %.sroa.38.0626, %bb.bl ] ; 2 uses
  %i.uu = phi i8 [ %i.vk, %bb.bn ], [ %.sroa.52.0629, %bb.bl ] ; 2 uses
  %i.uv = icmp eq i32 %i.ut, 255
  %i.uw = icmp ult i32 %i.us, %i.cl
  br i1 %i.uw, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph.i285
  %i.ux = sext i32 %i.us to i64
  %i.uy = getelementptr inbounds i8, ptr %i.bc, i64 %i.ux
  %i.uz = load i8, ptr %i.uy, align 1, !tbaa !13  ; 2 uses
  %i.va = zext i8 %i.uz to i32                    ; 2 uses
  %i.vb = add nuw nsw i32 %i.us, 1                ; 2 uses
  %i.vc = zext i8 %i.uz to i64
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.lr.ph.i285
  %.sroa.0320.27 = phi i32 [ %i.vb, %bb.bm ], [ %.sroa.0320.26, %.lr.ph.i285 ] ; 2 uses
  %.sroa.38.27 = phi i32 [ %i.va, %bb.bm ], [ %.sroa.38.26, %.lr.ph.i285 ] ; 2 uses
  %i.vd = phi i32 [ %i.vb, %bb.bm ], [ %i.us, %.lr.ph.i285 ]
  %i.ve = phi i32 [ %i.va, %bb.bm ], [ %i.ut, %.lr.ph.i285 ]
  %i.vf = phi i64 [ %i.vc, %bb.bm ], [ 255, %.lr.ph.i285 ]
  %i.vg = zext nneg i8 %i.uu to i64
  %i.vh = shl nuw nsw i64 %i.vf, %i.vg
  %i.vi = or i64 %i.vh, %i.ur                     ; 2 uses
  %i.vj = select i1 %i.uv, i8 7, i8 8
  %i.vk = add nuw nsw i8 %i.vj, %i.uu             ; 3 uses
  %i.vl = icmp samesign ult i8 %i.vk, 32
  br i1 %i.vl, label %.lr.ph.i285, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit267, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit267:     ; preds = %bb.bn, %bb.bl
  %.sroa.0320.18 = phi i32 [ %.sroa.0320.0625, %bb.bl ], [ %.sroa.0320.27, %bb.bn ]
  %.sroa.38.18 = phi i32 [ %.sroa.38.0626, %bb.bl ], [ %.sroa.38.27, %bb.bn ]
  %.sroa.84339.18 = phi i64 [ %.sroa.84339.0627, %bb.bl ], [ %i.vi, %bb.bn ] ; 2 uses
  %.sroa.52.18 = phi i8 [ %.sroa.52.0629, %bb.bl ], [ %i.vk, %bb.bn ]
  %.mask522 = and i32 %i.sz, 255
  %i.vm = zext nneg i32 %.mask522 to i64          ; 2 uses
  %notmask.i266 = shl nsw i64 -1, %i.vm
  %i.vn = xor i64 %notmask.i266, -1
  %i.vo = and i64 %.sroa.84339.18, %i.vn
  %i.vp = lshr i64 %.sroa.84339.18, %i.vm
  %i.vq = sub i8 %.sroa.52.18, %i.up
  %i.vr = trunc i64 %i.vo to i32
  %i.vs = shl nuw i32 %i.un, %i.sz
  %i.vt = add nsw i32 %i.vs, %i.vr
  br label %jpeg2000_decode_mag_sgn.exit260

jpeg2000_decode_mag_sgn.exit260:                  ; preds = %.preheader531, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267
  %.sroa.0320.15 = phi i32 [ %.sroa.0320.18, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267 ], [ %.sroa.0320.0625, %.preheader531 ] ; 4 uses
  %.sroa.38.15 = phi i32 [ %.sroa.38.18, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267 ], [ %.sroa.38.0626, %.preheader531 ] ; 4 uses
  %.sroa.84339.15 = phi i64 [ %i.vp, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267 ], [ %.sroa.84339.0627, %.preheader531 ] ; 3 uses
  %.sroa.52.15 = phi i8 [ %i.vq, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267 ], [ %.sroa.52.0629, %.preheader531 ] ; 5 uses
  %.0.i259 = phi i32 [ %i.vt, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267 ], [ 0, %.preheader531 ] ; 3 uses
  %.not.i218 = icmp eq i32 %i.sx, %i.sy
  br i1 %.not.i218, label %bb.bo, label %ff_clz_c.exit.i222

ff_clz_c.exit.i222:                               ; preds = %jpeg2000_decode_mag_sgn.exit260
  %i.vu = lshr i32 %.0.i259, 1
  %i.vv = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.vu, i1 false)
  %i.vw = trunc nuw nsw i32 %i.vv to i8
  %i.vx = sub nuw nsw i8 33, %i.vw
  %i.vy = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.gc
  store i8 %i.vx, ptr %i.vy, align 1, !tbaa !13
  %i.vz = ashr i32 %.0.i259, 1
  %i.wa = add nsw i32 %i.vz, 1
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.gc
  %i.wc = shl i32 %i.wa, %i.eu
  %i.wd = shl i32 %.0.i259, 31
  %i.we = or i32 %i.wd, %i.wc
  %i.wf = or i32 %i.we, %i.ew
  store i32 %i.wf, ptr %i.wb, align 4, !tbaa !12
  br label %bb.bo

bb.bo:                                            ; preds = %ff_clz_c.exit.i222, %jpeg2000_decode_mag_sgn.exit260
  %i.wg = lshr i32 %i.um, 1
  %i.wh = and i32 %i.wg, 1
  %i.wi = icmp sgt i32 %13, 0
  br i1 %i.wi, label %bb.bp, label %jpeg2000_decode_mag_sgn.exit260.1

bb.bp:                                            ; preds = %bb.bo
  %i.wj = trunc i32 %13 to i8                     ; 2 uses
  %.not.i265.1 = icmp ule i8 %.sroa.52.15, %i.wj
  %i.wk = icmp ult i8 %.sroa.52.15, 32
  %or.cond482.1 = and i1 %i.wk, %.not.i265.1
  br i1 %or.cond482.1, label %.lr.ph.i285.1, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.1

.lr.ph.i285.1:                                    ; preds = %bb.bp, %bb.br
  %.sroa.0320.26.1 = phi i32 [ %.sroa.0320.27.1, %bb.br ], [ %.sroa.0320.15, %bb.bp ]
  %.sroa.38.26.1 = phi i32 [ %.sroa.38.27.1, %bb.br ], [ %.sroa.38.15, %bb.bp ]
  %i.wl = phi i64 [ %i.xc, %bb.br ], [ %.sroa.84339.15, %bb.bp ]
  %i.wm = phi i32 [ %i.wx, %bb.br ], [ %.sroa.0320.15, %bb.bp ] ; 4 uses
  %i.wn = phi i32 [ %i.wy, %bb.br ], [ %.sroa.38.15, %bb.bp ] ; 2 uses
  %i.wo = phi i8 [ %i.xe, %bb.br ], [ %.sroa.52.15, %bb.bp ] ; 2 uses
  %i.wp = icmp eq i32 %i.wn, 255
  %i.wq = icmp ult i32 %i.wm, %i.cl
  br i1 %i.wq, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %.lr.ph.i285.1
  %i.wr = sext i32 %i.wm to i64
  %i.ws = getelementptr inbounds i8, ptr %i.bc, i64 %i.wr
  %i.wt = load i8, ptr %i.ws, align 1, !tbaa !13  ; 2 uses
  %i.wu = zext i8 %i.wt to i32                    ; 2 uses
  %i.wv = add nuw nsw i32 %i.wm, 1                ; 2 uses
  %i.ww = zext i8 %i.wt to i64
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %.lr.ph.i285.1
  %.sroa.0320.27.1 = phi i32 [ %i.wv, %bb.bq ], [ %.sroa.0320.26.1, %.lr.ph.i285.1 ] ; 2 uses
  %.sroa.38.27.1 = phi i32 [ %i.wu, %bb.bq ], [ %.sroa.38.26.1, %.lr.ph.i285.1 ] ; 2 uses
  %i.wx = phi i32 [ %i.wv, %bb.bq ], [ %i.wm, %.lr.ph.i285.1 ]
  %i.wy = phi i32 [ %i.wu, %bb.bq ], [ %i.wn, %.lr.ph.i285.1 ]
  %i.wz = phi i64 [ %i.ww, %bb.bq ], [ 255, %.lr.ph.i285.1 ]
  %i.xa = zext nneg i8 %i.wo to i64
  %i.xb = shl nuw nsw i64 %i.wz, %i.xa
  %i.xc = or i64 %i.xb, %i.wl                     ; 2 uses
  %i.xd = select i1 %i.wp, i8 7, i8 8
  %i.xe = add nuw nsw i8 %i.xd, %i.wo             ; 3 uses
  %i.xf = icmp samesign ult i8 %i.xe, 32
  br i1 %i.xf, label %.lr.ph.i285.1, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.1, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit267.1:   ; preds = %bb.br, %bb.bp
  %.sroa.0320.18.1 = phi i32 [ %.sroa.0320.15, %bb.bp ], [ %.sroa.0320.27.1, %bb.br ]
  %.sroa.38.18.1 = phi i32 [ %.sroa.38.15, %bb.bp ], [ %.sroa.38.27.1, %bb.br ]
  %.sroa.84339.18.1 = phi i64 [ %.sroa.84339.15, %bb.bp ], [ %i.xc, %bb.br ] ; 2 uses
  %.sroa.52.18.1 = phi i8 [ %.sroa.52.15, %bb.bp ], [ %i.xe, %bb.br ]
  %.mask522.1 = and i32 %13, 255
  %i.xg = zext nneg i32 %.mask522.1 to i64        ; 2 uses
  %notmask.i266.1 = shl nsw i64 -1, %i.xg
  %i.xh = xor i64 %notmask.i266.1, -1
  %i.xi = and i64 %.sroa.84339.18.1, %i.xh
  %i.xj = lshr i64 %.sroa.84339.18.1, %i.xg
  %i.xk = sub i8 %.sroa.52.18.1, %i.wj
  %i.xl = trunc i64 %i.xi to i32
  %i.xm = shl nuw i32 %i.wh, %13
  %i.xn = add nsw i32 %i.xm, %i.xl
  br label %jpeg2000_decode_mag_sgn.exit260.1

jpeg2000_decode_mag_sgn.exit260.1:                ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.1, %bb.bo
  %.sroa.0320.15.1 = phi i32 [ %.sroa.0320.18.1, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.1 ], [ %.sroa.0320.15, %bb.bo ] ; 4 uses
  %.sroa.38.15.1 = phi i32 [ %.sroa.38.18.1, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.1 ], [ %.sroa.38.15, %bb.bo ] ; 4 uses
  %.sroa.84339.15.1 = phi i64 [ %i.xj, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.1 ], [ %.sroa.84339.15, %bb.bo ] ; 3 uses
  %.sroa.52.15.1 = phi i8 [ %i.xk, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.1 ], [ %.sroa.52.15, %bb.bo ] ; 5 uses
  %.0.i259.1 = phi i32 [ %i.xn, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.1 ], [ 0, %bb.bo ] ; 3 uses
  %.not.i218.1 = icmp eq i32 %13, 0
  br i1 %.not.i218.1, label %bb.bs, label %ff_clz_c.exit.i222.1

ff_clz_c.exit.i222.1:                             ; preds = %jpeg2000_decode_mag_sgn.exit260.1
  %i.xo = lshr i32 %.0.i259.1, 1
  %i.xp = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.xo, i1 false)
  %i.xq = trunc nuw nsw i32 %i.xp to i8
  %i.xr = sub nuw nsw i8 33, %i.xq
  %i.xs = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.te
  store i8 %i.xr, ptr %i.xs, align 1, !tbaa !13
  %i.xt = ashr i32 %.0.i259.1, 1
  %i.xu = add nsw i32 %i.xt, 1
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.te
  %i.xw = shl i32 %i.xu, %i.eu
  %i.xx = shl i32 %.0.i259.1, 31
  %i.xy = or i32 %i.xx, %i.xw
  %i.xz = or i32 %i.xy, %i.ew
  store i32 %i.xz, ptr %i.xv, align 4, !tbaa !12
  br label %bb.bs

bb.bs:                                            ; preds = %ff_clz_c.exit.i222.1, %jpeg2000_decode_mag_sgn.exit260.1
  %i.ya = lshr i32 %i.um, 2
  %i.yb = and i32 %i.ya, 1
  %i.yc = icmp sgt i32 %19, 0
  br i1 %i.yc, label %bb.bt, label %jpeg2000_decode_mag_sgn.exit260.2

bb.bt:                                            ; preds = %bb.bs
  %i.yd = trunc i32 %19 to i8                     ; 2 uses
  %.not.i265.2 = icmp ule i8 %.sroa.52.15.1, %i.yd
  %i.ye = icmp ult i8 %.sroa.52.15.1, 32
  %or.cond482.2 = and i1 %i.ye, %.not.i265.2
  br i1 %or.cond482.2, label %.lr.ph.i285.2, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.2

.lr.ph.i285.2:                                    ; preds = %bb.bt, %bb.bv
  %.sroa.0320.26.2 = phi i32 [ %.sroa.0320.27.2, %bb.bv ], [ %.sroa.0320.15.1, %bb.bt ]
  %.sroa.38.26.2 = phi i32 [ %.sroa.38.27.2, %bb.bv ], [ %.sroa.38.15.1, %bb.bt ]
  %i.yf = phi i64 [ %i.yw, %bb.bv ], [ %.sroa.84339.15.1, %bb.bt ]
  %i.yg = phi i32 [ %i.yr, %bb.bv ], [ %.sroa.0320.15.1, %bb.bt ] ; 4 uses
  %i.yh = phi i32 [ %i.ys, %bb.bv ], [ %.sroa.38.15.1, %bb.bt ] ; 2 uses
  %i.yi = phi i8 [ %i.yy, %bb.bv ], [ %.sroa.52.15.1, %bb.bt ] ; 2 uses
  %i.yj = icmp eq i32 %i.yh, 255
  %i.yk = icmp ult i32 %i.yg, %i.cl
  br i1 %i.yk, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.lr.ph.i285.2
  %i.yl = sext i32 %i.yg to i64
  %i.ym = getelementptr inbounds i8, ptr %i.bc, i64 %i.yl
  %i.yn = load i8, ptr %i.ym, align 1, !tbaa !13  ; 2 uses
  %i.yo = zext i8 %i.yn to i32                    ; 2 uses
  %i.yp = add nuw nsw i32 %i.yg, 1                ; 2 uses
  %i.yq = zext i8 %i.yn to i64
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.lr.ph.i285.2
  %.sroa.0320.27.2 = phi i32 [ %i.yp, %bb.bu ], [ %.sroa.0320.26.2, %.lr.ph.i285.2 ] ; 2 uses
  %.sroa.38.27.2 = phi i32 [ %i.yo, %bb.bu ], [ %.sroa.38.26.2, %.lr.ph.i285.2 ] ; 2 uses
  %i.yr = phi i32 [ %i.yp, %bb.bu ], [ %i.yg, %.lr.ph.i285.2 ]
  %i.ys = phi i32 [ %i.yo, %bb.bu ], [ %i.yh, %.lr.ph.i285.2 ]
  %i.yt = phi i64 [ %i.yq, %bb.bu ], [ 255, %.lr.ph.i285.2 ]
  %i.yu = zext nneg i8 %i.yi to i64
  %i.yv = shl nuw nsw i64 %i.yt, %i.yu
  %i.yw = or i64 %i.yv, %i.yf                     ; 2 uses
  %i.yx = select i1 %i.yj, i8 7, i8 8
  %i.yy = add nuw nsw i8 %i.yx, %i.yi             ; 3 uses
  %i.yz = icmp samesign ult i8 %i.yy, 32
  br i1 %i.yz, label %.lr.ph.i285.2, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.2, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit267.2:   ; preds = %bb.bv, %bb.bt
  %.sroa.0320.18.2 = phi i32 [ %.sroa.0320.15.1, %bb.bt ], [ %.sroa.0320.27.2, %bb.bv ]
  %.sroa.38.18.2 = phi i32 [ %.sroa.38.15.1, %bb.bt ], [ %.sroa.38.27.2, %bb.bv ]
  %.sroa.84339.18.2 = phi i64 [ %.sroa.84339.15.1, %bb.bt ], [ %i.yw, %bb.bv ] ; 2 uses
  %.sroa.52.18.2 = phi i8 [ %.sroa.52.15.1, %bb.bt ], [ %i.yy, %bb.bv ]
  %.mask522.2 = and i32 %19, 255
  %i.za = zext nneg i32 %.mask522.2 to i64        ; 2 uses
  %notmask.i266.2 = shl nsw i64 -1, %i.za
  %i.zb = xor i64 %notmask.i266.2, -1
  %i.zc = and i64 %.sroa.84339.18.2, %i.zb
  %i.zd = lshr i64 %.sroa.84339.18.2, %i.za
  %i.ze = sub i8 %.sroa.52.18.2, %i.yd
  %i.zf = trunc i64 %i.zc to i32
  %i.zg = shl nuw i32 %i.yb, %19
  %i.zh = add nsw i32 %i.zg, %i.zf
  br label %jpeg2000_decode_mag_sgn.exit260.2

jpeg2000_decode_mag_sgn.exit260.2:                ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.2, %bb.bs
  %.sroa.0320.15.2 = phi i32 [ %.sroa.0320.18.2, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.2 ], [ %.sroa.0320.15.1, %bb.bs ] ; 4 uses
  %.sroa.38.15.2 = phi i32 [ %.sroa.38.18.2, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.2 ], [ %.sroa.38.15.1, %bb.bs ] ; 4 uses
  %.sroa.84339.15.2 = phi i64 [ %i.zd, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.2 ], [ %.sroa.84339.15.1, %bb.bs ] ; 3 uses
  %.sroa.52.15.2 = phi i8 [ %i.ze, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.2 ], [ %.sroa.52.15.1, %bb.bs ] ; 5 uses
  %.0.i259.2 = phi i32 [ %i.zh, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.2 ], [ 0, %bb.bs ] ; 3 uses
  %.not.i218.2 = icmp eq i32 %19, 0
  br i1 %.not.i218.2, label %bb.bw, label %ff_clz_c.exit.i222.2

ff_clz_c.exit.i222.2:                             ; preds = %jpeg2000_decode_mag_sgn.exit260.2
  %i.zi = lshr i32 %.0.i259.2, 1
  %i.zj = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.zi, i1 false)
  %i.zk = trunc nuw nsw i32 %i.zj to i8
  %i.zl = sub nuw nsw i8 33, %i.zk
  %i.zm = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.to
  store i8 %i.zl, ptr %i.zm, align 1, !tbaa !13
  %i.zn = ashr i32 %.0.i259.2, 1
  %i.zo = add nsw i32 %i.zn, 1
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.to
  %i.zq = shl i32 %i.zo, %i.eu
  %i.zr = shl i32 %.0.i259.2, 31
  %i.zs = or i32 %i.zr, %i.zq
  %i.zt = or i32 %i.zs, %i.ew
  store i32 %i.zt, ptr %i.zp, align 4, !tbaa !12
  br label %bb.bw

bb.bw:                                            ; preds = %ff_clz_c.exit.i222.2, %jpeg2000_decode_mag_sgn.exit260.2
  %i.zu = lshr i32 %i.um, 3
  %i.zv = icmp sgt i32 %i.ue, 0
  br i1 %i.zv, label %bb.bx, label %jpeg2000_decode_mag_sgn.exit260.3

bb.bx:                                            ; preds = %bb.bw
  %i.zw = trunc i32 %i.ue to i8                   ; 2 uses
  %.not.i265.3 = icmp ule i8 %.sroa.52.15.2, %i.zw
  %i.zx = icmp ult i8 %.sroa.52.15.2, 32
  %or.cond482.3 = and i1 %i.zx, %.not.i265.3
  br i1 %or.cond482.3, label %.lr.ph.i285.3, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.3

.lr.ph.i285.3:                                    ; preds = %bb.bx, %bb.bz
  %.sroa.0320.26.3 = phi i32 [ %.sroa.0320.27.3, %bb.bz ], [ %.sroa.0320.15.2, %bb.bx ]
  %.sroa.38.26.3 = phi i32 [ %.sroa.38.27.3, %bb.bz ], [ %.sroa.38.15.2, %bb.bx ]
  %i.zy = phi i64 [ %i.aap, %bb.bz ], [ %.sroa.84339.15.2, %bb.bx ]
  %i.zz = phi i32 [ %i.aak, %bb.bz ], [ %.sroa.0320.15.2, %bb.bx ] ; 4 uses
  %i.aaa = phi i32 [ %i.aal, %bb.bz ], [ %.sroa.38.15.2, %bb.bx ] ; 2 uses
  %i.aab = phi i8 [ %i.aar, %bb.bz ], [ %.sroa.52.15.2, %bb.bx ] ; 2 uses
  %i.aac = icmp eq i32 %i.aaa, 255
  %i.aad = icmp ult i32 %i.zz, %i.cl
  br i1 %i.aad, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.lr.ph.i285.3
  %i.aae = sext i32 %i.zz to i64
  %i.aaf = getelementptr inbounds i8, ptr %i.bc, i64 %i.aae
  %i.aag = load i8, ptr %i.aaf, align 1, !tbaa !13 ; 2 uses
  %i.aah = zext i8 %i.aag to i32                  ; 2 uses
  %i.aai = add nuw nsw i32 %i.zz, 1               ; 2 uses
  %i.aaj = zext i8 %i.aag to i64
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.lr.ph.i285.3
  %.sroa.0320.27.3 = phi i32 [ %i.aai, %bb.by ], [ %.sroa.0320.26.3, %.lr.ph.i285.3 ] ; 2 uses
  %.sroa.38.27.3 = phi i32 [ %i.aah, %bb.by ], [ %.sroa.38.26.3, %.lr.ph.i285.3 ] ; 2 uses
  %i.aak = phi i32 [ %i.aai, %bb.by ], [ %i.zz, %.lr.ph.i285.3 ]
  %i.aal = phi i32 [ %i.aah, %bb.by ], [ %i.aaa, %.lr.ph.i285.3 ]
  %i.aam = phi i64 [ %i.aaj, %bb.by ], [ 255, %.lr.ph.i285.3 ]
  %i.aan = zext nneg i8 %i.aab to i64
  %i.aao = shl nuw nsw i64 %i.aam, %i.aan
  %i.aap = or i64 %i.aao, %i.zy                   ; 2 uses
  %i.aaq = select i1 %i.aac, i8 7, i8 8
  %i.aar = add nuw nsw i8 %i.aaq, %i.aab          ; 3 uses
  %i.aas = icmp samesign ult i8 %i.aar, 32
  br i1 %i.aas, label %.lr.ph.i285.3, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.3, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit267.3:   ; preds = %bb.bz, %bb.bx
  %.sroa.0320.18.3 = phi i32 [ %.sroa.0320.15.2, %bb.bx ], [ %.sroa.0320.27.3, %bb.bz ]
  %.sroa.38.18.3 = phi i32 [ %.sroa.38.15.2, %bb.bx ], [ %.sroa.38.27.3, %bb.bz ]
  %.sroa.84339.18.3 = phi i64 [ %.sroa.84339.15.2, %bb.bx ], [ %i.aap, %bb.bz ] ; 2 uses
  %.sroa.52.18.3 = phi i8 [ %.sroa.52.15.2, %bb.bx ], [ %i.aar, %bb.bz ]
  %.mask522.3 = and i32 %i.ue, 255
  %i.aat = zext nneg i32 %.mask522.3 to i64       ; 2 uses
  %notmask.i266.3 = shl nsw i64 -1, %i.aat
  %i.aau = xor i64 %notmask.i266.3, -1
  %i.aav = and i64 %.sroa.84339.18.3, %i.aau
  %i.aaw = lshr i64 %.sroa.84339.18.3, %i.aat
  %i.aax = sub i8 %.sroa.52.18.3, %i.zw
  %i.aay = trunc i64 %i.aav to i32
  %i.aaz = shl nuw i32 %i.zu, %i.ue
  %i.aba = add nsw i32 %i.aaz, %i.aay
  br label %jpeg2000_decode_mag_sgn.exit260.3

jpeg2000_decode_mag_sgn.exit260.3:                ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.3, %bb.bw
  %.sroa.0320.15.3 = phi i32 [ %.sroa.0320.18.3, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.3 ], [ %.sroa.0320.15.2, %bb.bw ] ; 4 uses
  %.sroa.38.15.3 = phi i32 [ %.sroa.38.18.3, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.3 ], [ %.sroa.38.15.2, %bb.bw ] ; 4 uses
  %.sroa.84339.15.3 = phi i64 [ %i.aaw, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.3 ], [ %.sroa.84339.15.2, %bb.bw ] ; 3 uses
  %.sroa.52.15.3 = phi i8 [ %i.aax, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.3 ], [ %.sroa.52.15.2, %bb.bw ] ; 5 uses
  %.0.i259.3 = phi i32 [ %i.aba, %jpeg2000_bitbuf_get_bits_lsb_forward.exit267.3 ], [ 0, %bb.bw ] ; 3 uses
  %.not.i218.3 = icmp eq i32 %i.uc, %i.ud
  br i1 %.not.i218.3, label %recover_mag_sgn.exit223, label %ff_clz_c.exit.i222.3

ff_clz_c.exit.i222.3:                             ; preds = %jpeg2000_decode_mag_sgn.exit260.3
  %i.abb = lshr i32 %.0.i259.3, 1
  %i.abc = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.abb, i1 false)
  %i.abd = trunc nuw nsw i32 %i.abc to i8
  %i.abe = sub nuw nsw i8 33, %i.abd
  %i.abf = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ty
  store i8 %i.abe, ptr %i.abf, align 1, !tbaa !13
  %i.abg = ashr i32 %.0.i259.3, 1
  %i.abh = add nsw i32 %i.abg, 1
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ty
  %i.abj = shl i32 %i.abh, %i.eu
  %i.abk = shl i32 %.0.i259.3, 31
  %i.abl = or i32 %i.abk, %i.abj
  %i.abm = or i32 %i.abl, %i.ew
  store i32 %i.abm, ptr %i.abi, align 4, !tbaa !12
  br label %recover_mag_sgn.exit223

recover_mag_sgn.exit223:                          ; preds = %ff_clz_c.exit.i222.3, %jpeg2000_decode_mag_sgn.exit260.3
  %i.abn = zext nneg i8 %i.id to i32              ; 4 uses
  %i.abo = and i32 %i.abn, 1
  %i.abp = icmp sgt i32 %i.td, 0
  br i1 %i.abp, label %bb.ca, label %jpeg2000_decode_mag_sgn.exit262

bb.ca:                                            ; preds = %recover_mag_sgn.exit223
  %i.abq = trunc i32 %i.td to i8                  ; 2 uses
  %.not.i263 = icmp ule i8 %.sroa.52.15.3, %i.abq
  %i.abr = icmp ult i8 %.sroa.52.15.3, 32
  %or.cond483 = and i1 %i.abr, %.not.i263
  br i1 %or.cond483, label %.lr.ph.i291, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit

.lr.ph.i291:                                      ; preds = %bb.ca, %bb.cc
  %.sroa.0320.29 = phi i32 [ %.sroa.0320.30, %bb.cc ], [ %.sroa.0320.15.3, %bb.ca ]
  %.sroa.38.29 = phi i32 [ %.sroa.38.30, %bb.cc ], [ %.sroa.38.15.3, %bb.ca ]
  %i.abs = phi i64 [ %i.acj, %bb.cc ], [ %.sroa.84339.15.3, %bb.ca ]
  %i.abt = phi i32 [ %i.ace, %bb.cc ], [ %.sroa.0320.15.3, %bb.ca ] ; 4 uses
  %i.abu = phi i32 [ %i.acf, %bb.cc ], [ %.sroa.38.15.3, %bb.ca ] ; 2 uses
  %i.abv = phi i8 [ %i.acl, %bb.cc ], [ %.sroa.52.15.3, %bb.ca ] ; 2 uses
  %i.abw = icmp eq i32 %i.abu, 255
  %i.abx = icmp ult i32 %i.abt, %i.cl
  br i1 %i.abx, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %.lr.ph.i291
  %i.aby = sext i32 %i.abt to i64
  %i.abz = getelementptr inbounds i8, ptr %i.bc, i64 %i.aby
  %i.aca = load i8, ptr %i.abz, align 1, !tbaa !13 ; 2 uses
  %i.acb = zext i8 %i.aca to i32                  ; 2 uses
  %i.acc = add nuw nsw i32 %i.abt, 1              ; 2 uses
  %i.acd = zext i8 %i.aca to i64
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.lr.ph.i291
  %.sroa.0320.30 = phi i32 [ %i.acc, %bb.cb ], [ %.sroa.0320.29, %.lr.ph.i291 ] ; 2 uses
  %.sroa.38.30 = phi i32 [ %i.acb, %bb.cb ], [ %.sroa.38.29, %.lr.ph.i291 ] ; 2 uses
  %i.ace = phi i32 [ %i.acc, %bb.cb ], [ %i.abt, %.lr.ph.i291 ]
  %i.acf = phi i32 [ %i.acb, %bb.cb ], [ %i.abu, %.lr.ph.i291 ]
  %i.acg = phi i64 [ %i.acd, %bb.cb ], [ 255, %.lr.ph.i291 ]
  %i.ach = zext nneg i8 %i.abv to i64
  %i.aci = shl nuw nsw i64 %i.acg, %i.ach
  %i.acj = or i64 %i.aci, %i.abs                  ; 2 uses
  %i.ack = select i1 %i.abw, i8 7, i8 8
  %i.acl = add nuw nsw i8 %i.ack, %i.abv          ; 3 uses
  %i.acm = icmp samesign ult i8 %i.acl, 32
  br i1 %i.acm, label %.lr.ph.i291, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit:        ; preds = %bb.cc, %bb.ca
  %.sroa.0320.17 = phi i32 [ %.sroa.0320.15.3, %bb.ca ], [ %.sroa.0320.30, %bb.cc ]
  %.sroa.38.17 = phi i32 [ %.sroa.38.15.3, %bb.ca ], [ %.sroa.38.30, %bb.cc ]
  %.sroa.84339.17 = phi i64 [ %.sroa.84339.15.3, %bb.ca ], [ %i.acj, %bb.cc ] ; 2 uses
  %.sroa.52.17 = phi i8 [ %.sroa.52.15.3, %bb.ca ], [ %i.acl, %bb.cc ]
  %.mask521 = and i32 %i.td, 255
  %i.acn = zext nneg i32 %.mask521 to i64         ; 2 uses
  %notmask.i264 = shl nsw i64 -1, %i.acn
  %i.aco = xor i64 %notmask.i264, -1
  %i.acp = and i64 %.sroa.84339.17, %i.aco
  %i.acq = lshr i64 %.sroa.84339.17, %i.acn
  %i.acr = sub i8 %.sroa.52.17, %i.abq
  %i.acs = trunc i64 %i.acp to i32
  %i.act = shl nuw i32 %i.abo, %i.td
  %i.acu = add nsw i32 %i.act, %i.acs
  br label %jpeg2000_decode_mag_sgn.exit262

jpeg2000_decode_mag_sgn.exit262:                  ; preds = %recover_mag_sgn.exit223, %jpeg2000_bitbuf_get_bits_lsb_forward.exit
  %.sroa.0320.16 = phi i32 [ %.sroa.0320.17, %jpeg2000_bitbuf_get_bits_lsb_forward.exit ], [ %.sroa.0320.15.3, %recover_mag_sgn.exit223 ] ; 4 uses
  %.sroa.38.16 = phi i32 [ %.sroa.38.17, %jpeg2000_bitbuf_get_bits_lsb_forward.exit ], [ %.sroa.38.15.3, %recover_mag_sgn.exit223 ] ; 4 uses
  %.sroa.84339.16 = phi i64 [ %i.acq, %jpeg2000_bitbuf_get_bits_lsb_forward.exit ], [ %.sroa.84339.15.3, %recover_mag_sgn.exit223 ] ; 3 uses
  %.sroa.52.16 = phi i8 [ %i.acr, %jpeg2000_bitbuf_get_bits_lsb_forward.exit ], [ %.sroa.52.15.3, %recover_mag_sgn.exit223 ] ; 5 uses
  %.0.i261 = phi i32 [ %i.acu, %jpeg2000_bitbuf_get_bits_lsb_forward.exit ], [ 0, %recover_mag_sgn.exit223 ] ; 3 uses
  %.not.i216 = icmp eq i32 %i.tb, %i.tc
  br i1 %.not.i216, label %bb.cd, label %ff_clz_c.exit.i

ff_clz_c.exit.i:                                  ; preds = %jpeg2000_decode_mag_sgn.exit262
  %i.acv = lshr i32 %.0.i261, 1
  %i.acw = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.acv, i1 false)
  %i.acx = trunc nuw nsw i32 %i.acw to i8
  %i.acy = sub nuw nsw i8 33, %i.acx
  %i.acz = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ii
  store i8 %i.acy, ptr %i.acz, align 1, !tbaa !13
  %i.ada = ashr i32 %.0.i261, 1
  %i.adb = add nsw i32 %i.ada, 1
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ii
  %i.add = shl i32 %i.adb, %i.eu
  %i.ade = shl i32 %.0.i261, 31
  %i.adf = or i32 %i.ade, %i.add
  %i.adg = or i32 %i.adf, %i.ew
  store i32 %i.adg, ptr %i.adc, align 4, !tbaa !12
  br label %bb.cd

bb.cd:                                            ; preds = %ff_clz_c.exit.i, %jpeg2000_decode_mag_sgn.exit262
  %i.adh = lshr i32 %i.abn, 1
  %i.adi = and i32 %i.adh, 1
  %i.adj = icmp sgt i32 %16, 0
  br i1 %i.adj, label %bb.ce, label %jpeg2000_decode_mag_sgn.exit262.1

bb.ce:                                            ; preds = %bb.cd
  %i.adk = trunc i32 %16 to i8                    ; 2 uses
  %.not.i263.1 = icmp ule i8 %.sroa.52.16, %i.adk
  %i.adl = icmp ult i8 %.sroa.52.16, 32
  %or.cond483.1 = and i1 %i.adl, %.not.i263.1
  br i1 %or.cond483.1, label %.lr.ph.i291.1, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit.1

.lr.ph.i291.1:                                    ; preds = %bb.ce, %bb.cg
  %.sroa.0320.29.1 = phi i32 [ %.sroa.0320.30.1, %bb.cg ], [ %.sroa.0320.16, %bb.ce ]
  %.sroa.38.29.1 = phi i32 [ %.sroa.38.30.1, %bb.cg ], [ %.sroa.38.16, %bb.ce ]
  %i.adm = phi i64 [ %i.aed, %bb.cg ], [ %.sroa.84339.16, %bb.ce ]
  %i.adn = phi i32 [ %i.ady, %bb.cg ], [ %.sroa.0320.16, %bb.ce ] ; 4 uses
  %i.ado = phi i32 [ %i.adz, %bb.cg ], [ %.sroa.38.16, %bb.ce ] ; 2 uses
  %i.adp = phi i8 [ %i.aef, %bb.cg ], [ %.sroa.52.16, %bb.ce ] ; 2 uses
  %i.adq = icmp eq i32 %i.ado, 255
  %i.adr = icmp ult i32 %i.adn, %i.cl
  br i1 %i.adr, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %.lr.ph.i291.1
  %i.ads = sext i32 %i.adn to i64
  %i.adt = getelementptr inbounds i8, ptr %i.bc, i64 %i.ads
  %i.adu = load i8, ptr %i.adt, align 1, !tbaa !13 ; 2 uses
  %i.adv = zext i8 %i.adu to i32                  ; 2 uses
  %i.adw = add nuw nsw i32 %i.adn, 1              ; 2 uses
  %i.adx = zext i8 %i.adu to i64
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %.lr.ph.i291.1
  %.sroa.0320.30.1 = phi i32 [ %i.adw, %bb.cf ], [ %.sroa.0320.29.1, %.lr.ph.i291.1 ] ; 2 uses
  %.sroa.38.30.1 = phi i32 [ %i.adv, %bb.cf ], [ %.sroa.38.29.1, %.lr.ph.i291.1 ] ; 2 uses
  %i.ady = phi i32 [ %i.adw, %bb.cf ], [ %i.adn, %.lr.ph.i291.1 ]
  %i.adz = phi i32 [ %i.adv, %bb.cf ], [ %i.ado, %.lr.ph.i291.1 ]
  %i.aea = phi i64 [ %i.adx, %bb.cf ], [ 255, %.lr.ph.i291.1 ]
  %i.aeb = zext nneg i8 %i.adp to i64
  %i.aec = shl nuw nsw i64 %i.aea, %i.aeb
  %i.aed = or i64 %i.aec, %i.adm                  ; 2 uses
  %i.aee = select i1 %i.adq, i8 7, i8 8
  %i.aef = add nuw nsw i8 %i.aee, %i.adp          ; 3 uses
  %i.aeg = icmp samesign ult i8 %i.aef, 32
  br i1 %i.aeg, label %.lr.ph.i291.1, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit.1, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit.1:      ; preds = %bb.cg, %bb.ce
  %.sroa.0320.17.1 = phi i32 [ %.sroa.0320.16, %bb.ce ], [ %.sroa.0320.30.1, %bb.cg ]
  %.sroa.38.17.1 = phi i32 [ %.sroa.38.16, %bb.ce ], [ %.sroa.38.30.1, %bb.cg ]
  %.sroa.84339.17.1 = phi i64 [ %.sroa.84339.16, %bb.ce ], [ %i.aed, %bb.cg ] ; 2 uses
  %.sroa.52.17.1 = phi i8 [ %.sroa.52.16, %bb.ce ], [ %i.aef, %bb.cg ]
  %.mask521.1 = and i32 %16, 255
  %i.aeh = zext nneg i32 %.mask521.1 to i64       ; 2 uses
  %notmask.i264.1 = shl nsw i64 -1, %i.aeh
  %i.aei = xor i64 %notmask.i264.1, -1
  %i.aej = and i64 %.sroa.84339.17.1, %i.aei
  %i.aek = lshr i64 %.sroa.84339.17.1, %i.aeh
  %i.ael = sub i8 %.sroa.52.17.1, %i.adk
  %i.aem = trunc i64 %i.aej to i32
  %i.aen = shl nuw i32 %i.adi, %16
  %i.aeo = add nsw i32 %i.aen, %i.aem
  br label %jpeg2000_decode_mag_sgn.exit262.1

jpeg2000_decode_mag_sgn.exit262.1:                ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit.1, %bb.cd
  %.sroa.0320.16.1 = phi i32 [ %.sroa.0320.17.1, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.1 ], [ %.sroa.0320.16, %bb.cd ] ; 4 uses
  %.sroa.38.16.1 = phi i32 [ %.sroa.38.17.1, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.1 ], [ %.sroa.38.16, %bb.cd ] ; 4 uses
  %.sroa.84339.16.1 = phi i64 [ %i.aek, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.1 ], [ %.sroa.84339.16, %bb.cd ] ; 3 uses
  %.sroa.52.16.1 = phi i8 [ %i.ael, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.1 ], [ %.sroa.52.16, %bb.cd ] ; 5 uses
  %.0.i261.1 = phi i32 [ %i.aeo, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.1 ], [ 0, %bb.cd ] ; 3 uses
  %.not.i216.1 = icmp eq i32 %16, 0
  br i1 %.not.i216.1, label %bb.ch, label %ff_clz_c.exit.i.1

ff_clz_c.exit.i.1:                                ; preds = %jpeg2000_decode_mag_sgn.exit262.1
  %i.aep = lshr i32 %.0.i261.1, 1
  %i.aeq = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.aep, i1 false)
  %i.aer = trunc nuw nsw i32 %i.aeq to i8
  %i.aes = sub nuw nsw i8 33, %i.aer
  %i.aet = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.tj
  store i8 %i.aes, ptr %i.aet, align 1, !tbaa !13
  %i.aeu = ashr i32 %.0.i261.1, 1
  %i.aev = add nsw i32 %i.aeu, 1
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.tj
  %i.aex = shl i32 %i.aev, %i.eu
  %i.aey = shl i32 %.0.i261.1, 31
  %i.aez = or i32 %i.aey, %i.aex
  %i.afa = or i32 %i.aez, %i.ew
  store i32 %i.afa, ptr %i.aew, align 4, !tbaa !12
  br label %bb.ch

bb.ch:                                            ; preds = %ff_clz_c.exit.i.1, %jpeg2000_decode_mag_sgn.exit262.1
  %i.afb = lshr i32 %i.abn, 2
  %i.afc = and i32 %i.afb, 1
  %i.afd = icmp sgt i32 %22, 0
  br i1 %i.afd, label %bb.ci, label %jpeg2000_decode_mag_sgn.exit262.2

bb.ci:                                            ; preds = %bb.ch
  %i.afe = trunc i32 %22 to i8                    ; 2 uses
  %.not.i263.2 = icmp ule i8 %.sroa.52.16.1, %i.afe
  %i.aff = icmp ult i8 %.sroa.52.16.1, 32
  %or.cond483.2 = and i1 %i.aff, %.not.i263.2
  br i1 %or.cond483.2, label %.lr.ph.i291.2, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit.2

.lr.ph.i291.2:                                    ; preds = %bb.ci, %bb.ck
  %.sroa.0320.29.2 = phi i32 [ %.sroa.0320.30.2, %bb.ck ], [ %.sroa.0320.16.1, %bb.ci ]
  %.sroa.38.29.2 = phi i32 [ %.sroa.38.30.2, %bb.ck ], [ %.sroa.38.16.1, %bb.ci ]
  %i.afg = phi i64 [ %i.afx, %bb.ck ], [ %.sroa.84339.16.1, %bb.ci ]
  %i.afh = phi i32 [ %i.afs, %bb.ck ], [ %.sroa.0320.16.1, %bb.ci ] ; 4 uses
  %i.afi = phi i32 [ %i.aft, %bb.ck ], [ %.sroa.38.16.1, %bb.ci ] ; 2 uses
  %i.afj = phi i8 [ %i.afz, %bb.ck ], [ %.sroa.52.16.1, %bb.ci ] ; 2 uses
  %i.afk = icmp eq i32 %i.afi, 255
  %i.afl = icmp ult i32 %i.afh, %i.cl
  br i1 %i.afl, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.lr.ph.i291.2
  %i.afm = sext i32 %i.afh to i64
  %i.afn = getelementptr inbounds i8, ptr %i.bc, i64 %i.afm
  %i.afo = load i8, ptr %i.afn, align 1, !tbaa !13 ; 2 uses
  %i.afp = zext i8 %i.afo to i32                  ; 2 uses
  %i.afq = add nuw nsw i32 %i.afh, 1              ; 2 uses
  %i.afr = zext i8 %i.afo to i64
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %.lr.ph.i291.2
  %.sroa.0320.30.2 = phi i32 [ %i.afq, %bb.cj ], [ %.sroa.0320.29.2, %.lr.ph.i291.2 ] ; 2 uses
  %.sroa.38.30.2 = phi i32 [ %i.afp, %bb.cj ], [ %.sroa.38.29.2, %.lr.ph.i291.2 ] ; 2 uses
  %i.afs = phi i32 [ %i.afq, %bb.cj ], [ %i.afh, %.lr.ph.i291.2 ]
  %i.aft = phi i32 [ %i.afp, %bb.cj ], [ %i.afi, %.lr.ph.i291.2 ]
  %i.afu = phi i64 [ %i.afr, %bb.cj ], [ 255, %.lr.ph.i291.2 ]
  %i.afv = zext nneg i8 %i.afj to i64
  %i.afw = shl nuw nsw i64 %i.afu, %i.afv
  %i.afx = or i64 %i.afw, %i.afg                  ; 2 uses
  %i.afy = select i1 %i.afk, i8 7, i8 8
  %i.afz = add nuw nsw i8 %i.afy, %i.afj          ; 3 uses
  %i.aga = icmp samesign ult i8 %i.afz, 32
  br i1 %i.aga, label %.lr.ph.i291.2, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit.2, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit.2:      ; preds = %bb.ck, %bb.ci
  %.sroa.0320.17.2 = phi i32 [ %.sroa.0320.16.1, %bb.ci ], [ %.sroa.0320.30.2, %bb.ck ]
  %.sroa.38.17.2 = phi i32 [ %.sroa.38.16.1, %bb.ci ], [ %.sroa.38.30.2, %bb.ck ]
  %.sroa.84339.17.2 = phi i64 [ %.sroa.84339.16.1, %bb.ci ], [ %i.afx, %bb.ck ] ; 2 uses
  %.sroa.52.17.2 = phi i8 [ %.sroa.52.16.1, %bb.ci ], [ %i.afz, %bb.ck ]
  %.mask521.2 = and i32 %22, 255
  %i.agb = zext nneg i32 %.mask521.2 to i64       ; 2 uses
  %notmask.i264.2 = shl nsw i64 -1, %i.agb
  %i.agc = xor i64 %notmask.i264.2, -1
  %i.agd = and i64 %.sroa.84339.17.2, %i.agc
  %i.age = lshr i64 %.sroa.84339.17.2, %i.agb
  %i.agf = sub i8 %.sroa.52.17.2, %i.afe
  %i.agg = trunc i64 %i.agd to i32
  %i.agh = shl nuw i32 %i.afc, %22
  %i.agi = add nsw i32 %i.agh, %i.agg
  br label %jpeg2000_decode_mag_sgn.exit262.2

jpeg2000_decode_mag_sgn.exit262.2:                ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit.2, %bb.ch
  %.sroa.0320.16.2 = phi i32 [ %.sroa.0320.17.2, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.2 ], [ %.sroa.0320.16.1, %bb.ch ] ; 4 uses
  %.sroa.38.16.2 = phi i32 [ %.sroa.38.17.2, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.2 ], [ %.sroa.38.16.1, %bb.ch ] ; 4 uses
  %.sroa.84339.16.2 = phi i64 [ %i.age, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.2 ], [ %.sroa.84339.16.1, %bb.ch ] ; 3 uses
  %.sroa.52.16.2 = phi i8 [ %i.agf, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.2 ], [ %.sroa.52.16.1, %bb.ch ] ; 5 uses
  %.0.i261.2 = phi i32 [ %i.agi, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.2 ], [ 0, %bb.ch ] ; 3 uses
  %.not.i216.2 = icmp eq i32 %22, 0
  br i1 %.not.i216.2, label %bb.cl, label %ff_clz_c.exit.i.2

ff_clz_c.exit.i.2:                                ; preds = %jpeg2000_decode_mag_sgn.exit262.2
  %i.agj = lshr i32 %.0.i261.2, 1
  %i.agk = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.agj, i1 false)
  %i.agl = trunc nuw nsw i32 %i.agk to i8
  %i.agm = sub nuw nsw i8 33, %i.agl
  %i.agn = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.tt
  store i8 %i.agm, ptr %i.agn, align 1, !tbaa !13
  %i.ago = ashr i32 %.0.i261.2, 1
  %i.agp = add nsw i32 %i.ago, 1
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.tt
  %i.agr = shl i32 %i.agp, %i.eu
  %i.ags = shl i32 %.0.i261.2, 31
  %i.agt = or i32 %i.ags, %i.agr
  %i.agu = or i32 %i.agt, %i.ew
  store i32 %i.agu, ptr %i.agq, align 4, !tbaa !12
  br label %bb.cl

bb.cl:                                            ; preds = %ff_clz_c.exit.i.2, %jpeg2000_decode_mag_sgn.exit262.2
  %i.agv = lshr i32 %i.abn, 3
  %i.agw = icmp sgt i32 %i.ul, 0
  br i1 %i.agw, label %bb.cm, label %jpeg2000_decode_mag_sgn.exit262.3

bb.cm:                                            ; preds = %bb.cl
  %i.agx = trunc i32 %i.ul to i8                  ; 2 uses
  %.not.i263.3 = icmp ule i8 %.sroa.52.16.2, %i.agx
  %i.agy = icmp ult i8 %.sroa.52.16.2, 32
  %or.cond483.3 = and i1 %i.agy, %.not.i263.3
  br i1 %or.cond483.3, label %.lr.ph.i291.3, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3

.lr.ph.i291.3:                                    ; preds = %bb.cm, %bb.co
  %.sroa.0320.29.3 = phi i32 [ %.sroa.0320.30.3, %bb.co ], [ %.sroa.0320.16.2, %bb.cm ]
  %.sroa.38.29.3 = phi i32 [ %.sroa.38.30.3, %bb.co ], [ %.sroa.38.16.2, %bb.cm ]
  %i.agz = phi i64 [ %i.ahq, %bb.co ], [ %.sroa.84339.16.2, %bb.cm ]
  %i.aha = phi i32 [ %i.ahl, %bb.co ], [ %.sroa.0320.16.2, %bb.cm ] ; 4 uses
  %i.ahb = phi i32 [ %i.ahm, %bb.co ], [ %.sroa.38.16.2, %bb.cm ] ; 2 uses
  %i.ahc = phi i8 [ %i.ahs, %bb.co ], [ %.sroa.52.16.2, %bb.cm ] ; 2 uses
  %i.ahd = icmp eq i32 %i.ahb, 255
  %i.ahe = icmp ult i32 %i.aha, %i.cl
  br i1 %i.ahe, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.lr.ph.i291.3
  %i.ahf = sext i32 %i.aha to i64
  %i.ahg = getelementptr inbounds i8, ptr %i.bc, i64 %i.ahf
  %i.ahh = load i8, ptr %i.ahg, align 1, !tbaa !13 ; 2 uses
  %i.ahi = zext i8 %i.ahh to i32                  ; 2 uses
  %i.ahj = add nuw nsw i32 %i.aha, 1              ; 2 uses
  %i.ahk = zext i8 %i.ahh to i64
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %.lr.ph.i291.3
  %.sroa.0320.30.3 = phi i32 [ %i.ahj, %bb.cn ], [ %.sroa.0320.29.3, %.lr.ph.i291.3 ] ; 2 uses
  %.sroa.38.30.3 = phi i32 [ %i.ahi, %bb.cn ], [ %.sroa.38.29.3, %.lr.ph.i291.3 ] ; 2 uses
  %i.ahl = phi i32 [ %i.ahj, %bb.cn ], [ %i.aha, %.lr.ph.i291.3 ]
  %i.ahm = phi i32 [ %i.ahi, %bb.cn ], [ %i.ahb, %.lr.ph.i291.3 ]
  %i.ahn = phi i64 [ %i.ahk, %bb.cn ], [ 255, %.lr.ph.i291.3 ]
  %i.aho = zext nneg i8 %i.ahc to i64
  %i.ahp = shl nuw nsw i64 %i.ahn, %i.aho
  %i.ahq = or i64 %i.ahp, %i.agz                  ; 2 uses
  %i.ahr = select i1 %i.ahd, i8 7, i8 8
  %i.ahs = add nuw nsw i8 %i.ahr, %i.ahc          ; 3 uses
  %i.aht = icmp samesign ult i8 %i.ahs, 32
  br i1 %i.aht, label %.lr.ph.i291.3, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit.3:      ; preds = %bb.co, %bb.cm
  %.sroa.0320.17.3 = phi i32 [ %.sroa.0320.16.2, %bb.cm ], [ %.sroa.0320.30.3, %bb.co ]
  %.sroa.38.17.3 = phi i32 [ %.sroa.38.16.2, %bb.cm ], [ %.sroa.38.30.3, %bb.co ]
  %.sroa.84339.17.3 = phi i64 [ %.sroa.84339.16.2, %bb.cm ], [ %i.ahq, %bb.co ] ; 2 uses
  %.sroa.52.17.3 = phi i8 [ %.sroa.52.16.2, %bb.cm ], [ %i.ahs, %bb.co ]
  %.mask521.3 = and i32 %i.ul, 255
  %i.ahu = zext nneg i32 %.mask521.3 to i64       ; 2 uses
  %notmask.i264.3 = shl nsw i64 -1, %i.ahu
  %i.ahv = xor i64 %notmask.i264.3, -1
  %i.ahw = and i64 %.sroa.84339.17.3, %i.ahv
  %i.ahx = lshr i64 %.sroa.84339.17.3, %i.ahu
  %i.ahy = sub i8 %.sroa.52.17.3, %i.agx
  %i.ahz = trunc i64 %i.ahw to i32
  %i.aia = shl nuw i32 %i.agv, %i.ul
  %i.aib = add nsw i32 %i.aia, %i.ahz
  br label %jpeg2000_decode_mag_sgn.exit262.3

jpeg2000_decode_mag_sgn.exit262.3:                ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3, %bb.cl
  %.sroa.0320.16.3 = phi i32 [ %.sroa.0320.17.3, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3 ], [ %.sroa.0320.16.2, %bb.cl ] ; 2 uses
  %.sroa.38.16.3 = phi i32 [ %.sroa.38.17.3, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3 ], [ %.sroa.38.16.2, %bb.cl ] ; 2 uses
  %.sroa.84339.16.3 = phi i64 [ %i.ahx, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3 ], [ %.sroa.84339.16.2, %bb.cl ] ; 2 uses
  %.sroa.52.16.3 = phi i8 [ %i.ahy, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3 ], [ %.sroa.52.16.2, %bb.cl ] ; 2 uses
  %.0.i261.3 = phi i32 [ %i.aib, %jpeg2000_bitbuf_get_bits_lsb_forward.exit.3 ], [ 0, %bb.cl ] ; 3 uses
  %.not.i216.3 = icmp eq i32 %i.uj, %i.uk
  br i1 %.not.i216.3, label %recover_mag_sgn.exit, label %ff_clz_c.exit.i.3

ff_clz_c.exit.i.3:                                ; preds = %jpeg2000_decode_mag_sgn.exit262.3
  %i.aic = lshr i32 %.0.i261.3, 1
  %i.aid = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.aic, i1 false)
  %i.aie = trunc nuw nsw i32 %i.aid to i8
  %i.aif = sub nuw nsw i8 33, %i.aie
  %i.aig = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.uf
  store i8 %i.aif, ptr %i.aig, align 1, !tbaa !13
  %i.aih = ashr i32 %.0.i261.3, 1
  %i.aii = add nsw i32 %i.aih, 1
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.uf
  %i.aik = shl i32 %i.aii, %i.eu
  %i.ail = shl i32 %.0.i261.3, 31
  %i.aim = or i32 %i.ail, %i.aik
  %i.ain = or i32 %i.aim, %i.ew
  store i32 %i.ain, ptr %i.aij, align 4, !tbaa !12
  br label %recover_mag_sgn.exit

recover_mag_sgn.exit:                             ; preds = %ff_clz_c.exit.i.3, %jpeg2000_decode_mag_sgn.exit262.3
  %i.aio = add i16 %.0659.i631, 2                 ; 3 uses
  %i.aip = zext i16 %i.aio to i32                 ; 3 uses
  %i.aiq = icmp sgt i32 %i.em, %i.aip
  br i1 %i.aiq, label %bb.x, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %recover_mag_sgn.exit
  store i8 %i.ig, ptr %i.eq, align 1
  store i8 %i.if, ptr %i.er, align 1
  store i8 %i.ie, ptr %i.es, align 1
  store i8 %i.id, ptr %i.et, align 1
  %i.air = shl nuw nsw i32 %i.aip, 2
  %i.ais = zext nneg i32 %i.air to i64
  br label %bb.cp

bb.cp:                                            ; preds = %._crit_edge, %.preheader532
  %.lcssa620 = phi i8 [ %i.fx, %._crit_edge ], [ 0, %.preheader532 ]
  %.lcssa615 = phi i8 [ %i.fy, %._crit_edge ], [ 0, %.preheader532 ]
  %.lcssa610 = phi i8 [ %i.fz, %._crit_edge ], [ 0, %.preheader532 ]
  %.lcssa605 = phi i8 [ %i.ga, %._crit_edge ], [ 0, %.preheader532 ]
  %.sroa.0320.0.lcssa = phi i32 [ %.sroa.0320.16.3, %._crit_edge ], [ %.sroa.0320.24, %.preheader532 ] ; 5 uses
  %.sroa.38.0.lcssa = phi i32 [ %.sroa.38.16.3, %._crit_edge ], [ %.sroa.38.24, %.preheader532 ] ; 5 uses
  %.sroa.84339.0.lcssa = phi i64 [ %.sroa.84339.16.3, %._crit_edge ], [ %i.de, %.preheader532 ] ; 4 uses
  %.sroa.52.0.lcssa = phi i8 [ %.sroa.52.16.3, %._crit_edge ], [ %i.dg, %.preheader532 ] ; 6 uses
  %.0677.i.lcssa = phi i16 [ %i.jk, %._crit_edge ], [ 0, %.preheader532 ]
  %.0659.i.lcssa = phi i16 [ %i.aio, %._crit_edge ], [ 0, %.preheader532 ] ; 2 uses
  %.lcssa558 = phi i64 [ %i.ais, %._crit_edge ], [ 0, %.preheader532 ] ; 6 uses
  store i8 %.lcssa605, ptr %i.b, align 2
  store i8 %.lcssa610, ptr %i.a, align 2
  store i8 %.lcssa615, ptr %i.c, align 2
  store i8 %.lcssa620, ptr %i.d, align 2
  %i.ait = and i32 %i.dz, 1
  %.not.i = icmp eq i32 %i.ait, 0                 ; 2 uses
  br i1 %.not.i, label %bb.dn, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call fastcc void @jpeg2000_decode_sig_emb(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull @dec_cxt_vlc_table0, ptr noundef %i.bc, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, i8 noundef zeroext 0, i16 noundef zeroext %.0677.i.lcssa, i32 noundef range(i32 2, 0) %i.ar, i32 noundef %i.cl)
  %i.aiu = load i8, ptr %i.a, align 2, !tbaa !13  ; 4 uses
  %i.aiv = and i8 %i.aiu, 1
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.lcssa558 ; 2 uses
  store i8 %i.aiv, ptr %i.aiw, align 1, !tbaa !13
  %i.aix = lshr i8 %i.aiu, 1
  %i.aiy = and i8 %i.aix, 1                       ; 2 uses
  %i.aiz = add nuw nsw i64 %.lcssa558, 1          ; 3 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.aiz
  store i8 %i.aiy, ptr %i.aja, align 1, !tbaa !13
  %i.ajb = lshr i8 %i.aiu, 2
  %i.ajc = and i8 %i.ajb, 1                       ; 2 uses
  %i.ajd = add nuw nsw i64 %.lcssa558, 2          ; 3 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ajd
  store i8 %i.ajc, ptr %i.aje, align 1, !tbaa !13
  %i.ajf = lshr i8 %i.aiu, 3
  %i.ajg = and i8 %i.ajf, 1                       ; 2 uses
  %i.ajh = add nuw nsw i64 %.lcssa558, 3          ; 3 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ajh
  store i8 %i.ajg, ptr %i.aji, align 1, !tbaa !13
  %i.ajj = load i8, ptr %i.b, align 2, !tbaa !13
  %i.ajk = icmp eq i8 %i.ajj, 1
  br i1 %i.ajk, label %bb.cr, label %bb.cx

bb.cr:                                            ; preds = %bb.cq
  %i.ajl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.ajm = load i8, ptr %i.ajl, align 8, !tbaa !23 ; 2 uses
  %i.ajn = icmp ult i8 %i.ajm, 3
  br i1 %i.ajn, label %bb.cs, label %vlc_decode_u_prefix.exit168

bb.cs:                                            ; preds = %bb.cr
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre922 = load i8, ptr %i.ajl, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit168

vlc_decode_u_prefix.exit168:                      ; preds = %bb.cr, %bb.cs
  %i.ajo = phi i8 [ %i.ajm, %bb.cr ], [ %.pre922, %bb.cs ]
  %i.ajp = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 6 uses
  %i.ajq = load i64, ptr %i.ajp, align 8, !tbaa !16 ; 3 uses
  %i.ajr = and i64 %i.ajq, 7                      ; 3 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.ajr
  %i.ajt = load i8, ptr %i.ajs, align 1, !tbaa !13 ; 2 uses
  %i.aju = zext nneg i8 %i.ajt to i64
  %i.ajv = lshr i64 %i.ajq, %i.aju                ; 3 uses
  store i64 %i.ajv, ptr %i.ajp, align 8, !tbaa !16
  %i.ajw = sub i8 %i.ajo, %i.ajt                  ; 4 uses
  store i8 %i.ajw, ptr %i.ajl, align 8, !tbaa !23
  %i.ajx = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.ajr
  %i.ajy = load i8, ptr %i.ajx, align 1, !tbaa !13
  %i.ajz = icmp ne i64 %i.ajr, 4
  %i.aka = and i64 %i.ajq, 3
  %.not495 = icmp eq i64 %i.aka, 0
  br i1 %.not495, label %bb.ct, label %jpeg2000_bitbuf_get_bits_lsb.exit201

bb.ct:                                            ; preds = %vlc_decode_u_prefix.exit168
  %i.akb = icmp ult i8 %i.ajw, 5
  br i1 %i.akb, label %bb.cu, label %vlc_decode_u_suffix.exit185

bb.cu:                                            ; preds = %bb.ct
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre923 = load i64, ptr %i.ajp, align 8, !tbaa !16
  %.pre924 = load i8, ptr %i.ajl, align 8, !tbaa !23
  br label %vlc_decode_u_suffix.exit185

vlc_decode_u_suffix.exit185:                      ; preds = %bb.ct, %bb.cu
  %i.akc = phi i8 [ %i.ajw, %bb.ct ], [ %.pre924, %bb.cu ]
  %i.akd = phi i64 [ %i.ajv, %bb.ct ], [ %.pre923, %bb.cu ] ; 2 uses
  %i.ake = trunc i64 %i.akd to i32
  %i.akf = and i32 %i.ake, 31
  %i.akg = zext i1 %i.ajz to i64                  ; 2 uses
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.akg
  %i.aki = load i32, ptr %i.akh, align 4, !tbaa !12 ; 2 uses
  %i.akj = trunc i32 %i.aki to i8
  %.mask = and i32 %i.aki, 255
  %i.akk = zext nneg i32 %.mask to i64
  %i.akl = lshr i64 %i.akd, %i.akk                ; 3 uses
  store i64 %i.akl, ptr %i.ajp, align 8, !tbaa !16
  %i.akm = sub i8 %i.akc, %i.akj                  ; 4 uses
  store i8 %i.akm, ptr %i.ajl, align 8, !tbaa !23
  %i.akn = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.akg
  %i.ako = load i32, ptr %i.akn, align 4, !tbaa !12
  %i.akp = and i32 %i.akf, %i.ako
  %.fr = freeze i32 %i.akp                        ; 4 uses
  %i.akq = icmp ugt i32 %.fr, 27
  br i1 %i.akq, label %bb.cv, label %jpeg2000_bitbuf_get_bits_lsb.exit201

bb.cv:                                            ; preds = %vlc_decode_u_suffix.exit185
  %i.akr = icmp ult i8 %i.akm, 4
  br i1 %i.akr, label %bb.cw, label %jpeg2000_bitbuf_get_bits_lsb.exit201

bb.cw:                                            ; preds = %bb.cv
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre925 = load i64, ptr %i.ajp, align 8, !tbaa !16
  %.pre926 = load i8, ptr %i.ajl, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit201

jpeg2000_bitbuf_get_bits_lsb.exit201:             ; preds = %vlc_decode_u_prefix.exit168, %vlc_decode_u_suffix.exit185, %bb.cv, %bb.cw
  %i.aks = phi i8 [ %.pre926, %bb.cw ], [ %i.akm, %bb.cv ], [ %i.akm, %vlc_decode_u_suffix.exit185 ], [ %i.ajw, %vlc_decode_u_prefix.exit168 ]
  %i.akt = phi i64 [ %.pre925, %bb.cw ], [ %i.akl, %bb.cv ], [ %i.akl, %vlc_decode_u_suffix.exit185 ], [ %i.ajv, %vlc_decode_u_prefix.exit168 ] ; 2 uses
  %i.aku = phi i8 [ 4, %bb.cw ], [ 4, %bb.cv ], [ 0, %vlc_decode_u_suffix.exit185 ], [ 0, %vlc_decode_u_prefix.exit168 ] ; 2 uses
  %.0.i184453455 = phi i32 [ %.fr, %bb.cw ], [ %.fr, %bb.cv ], [ %.fr, %vlc_decode_u_suffix.exit185 ], [ 0, %vlc_decode_u_prefix.exit168 ]
  %i.akv = zext nneg i8 %i.aku to i64             ; 2 uses
  %notmask.i200 = shl nsw i64 -1, %i.akv
  %i.akw = xor i64 %notmask.i200, -1
  %i.akx = and i64 %i.akt, %i.akw
  %i.aky = lshr i64 %i.akt, %i.akv
  store i64 %i.aky, ptr %i.ajp, align 8, !tbaa !16
  %i.akz = sub i8 %i.aks, %i.aku
  store i8 %i.akz, ptr %i.ajl, align 8, !tbaa !23
  %i.ala = trunc nuw nsw i64 %i.akx to i32
  %i.alb = zext i8 %i.ajy to i32
  %i.alc = add nuw nsw i32 %.0.i184453455, %i.alb
  %i.ald = shl nuw nsw i32 %i.ala, 2
  %i.ale = and i32 %i.ald, 252
  %i.alf = add nuw nsw i32 %i.alc, %i.ale
  br label %bb.cx

bb.cx:                                            ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit201, %bb.cq
  %.sroa.0386.0 = phi i32 [ %i.alf, %jpeg2000_bitbuf_get_bits_lsb.exit201 ], [ 0, %bb.cq ] ; 2 uses
  %.not732.i = icmp slt i32 %.sroa.0386.0, %i.du
  br i1 %.not732.i, label %.preheader530, label %jpeg2000_decode_ht_cleanup_segment.exit

.preheader530:                                    ; preds = %bb.cx
  %i.alg = add nuw nsw i32 %.sroa.0386.0, 1       ; 4 uses
  %i.alh = load i8, ptr %i.c, align 2, !tbaa !13
  %i.ali = zext i8 %i.alh to i32                  ; 4 uses
  %i.alj = load i8, ptr %i.aiw, align 1, !tbaa !13
  %i.alk = zext i8 %i.alj to i32
  %i.all = mul nsw i32 %i.alg, %i.alk             ; 2 uses
  %i.alm = and i32 %i.ali, 1                      ; 2 uses
  %i.aln = sub nsw i32 %i.all, %i.alm             ; 4 uses
  %i.alo = zext nneg i8 %i.aiy to i32
  %i.alp = mul nuw nsw i32 %i.alg, %i.alo
  %23 = shl i32 %i.ali, 30
  %24 = ashr i32 %23, 31
  %25 = add i32 %24, %i.alp                       ; 5 uses
  %i.alq = zext nneg i8 %i.ajc to i32
  %i.alr = mul nuw nsw i32 %i.alg, %i.alq
  %26 = shl i32 %i.ali, 29
  %27 = ashr i32 %26, 31
  %28 = add i32 %27, %i.alr                       ; 5 uses
  %i.als = zext nneg i8 %i.ajg to i32
  %i.alt = mul nuw nsw i32 %i.alg, %i.als
  %29 = shl i32 %i.ali, 28
  %30 = ashr i32 %29, 31
  %31 = add i32 %30, %i.alt                       ; 5 uses
  %i.alu = zext i8 %i.bn to i32                   ; 5 uses
  %i.alv = load i8, ptr %i.d, align 2, !tbaa !13
  %i.alw = zext i8 %i.alv to i32                  ; 4 uses
  %i.alx = add nsw i32 %i.alu, -1
  %i.aly = shl nuw i32 1, %i.alx                  ; 4 uses
  %i.alz = and i32 %i.alw, 1
  %i.ama = icmp sgt i32 %i.aln, 0
  br i1 %i.ama, label %bb.cy, label %jpeg2000_decode_mag_sgn.exit

bb.cy:                                            ; preds = %.preheader530
  %i.amb = trunc i32 %i.aln to i8                 ; 2 uses
  %.not.i277 = icmp ule i8 %.sroa.52.0.lcssa, %i.amb
  %i.amc = icmp ult i8 %.sroa.52.0.lcssa, 32
  %or.cond484 = and i1 %i.amc, %.not.i277
  br i1 %or.cond484, label %.lr.ph.i297, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit279

.lr.ph.i297:                                      ; preds = %bb.cy, %bb.da
  %.sroa.0320.32 = phi i32 [ %.sroa.0320.33, %bb.da ], [ %.sroa.0320.0.lcssa, %bb.cy ]
  %.sroa.38.32 = phi i32 [ %.sroa.38.33, %bb.da ], [ %.sroa.38.0.lcssa, %bb.cy ]
  %i.amd = phi i64 [ %i.amu, %bb.da ], [ %.sroa.84339.0.lcssa, %bb.cy ]
  %i.ame = phi i32 [ %i.amp, %bb.da ], [ %.sroa.0320.0.lcssa, %bb.cy ] ; 4 uses
  %i.amf = phi i32 [ %i.amq, %bb.da ], [ %.sroa.38.0.lcssa, %bb.cy ] ; 2 uses
  %i.amg = phi i8 [ %i.amw, %bb.da ], [ %.sroa.52.0.lcssa, %bb.cy ] ; 2 uses
  %i.amh = icmp eq i32 %i.amf, 255
  %i.ami = icmp ult i32 %i.ame, %i.cl
  br i1 %i.ami, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %.lr.ph.i297
  %i.amj = sext i32 %i.ame to i64
  %i.amk = getelementptr inbounds i8, ptr %i.bc, i64 %i.amj
  %i.aml = load i8, ptr %i.amk, align 1, !tbaa !13 ; 2 uses
  %i.amm = zext i8 %i.aml to i32                  ; 2 uses
  %i.amn = add nuw nsw i32 %i.ame, 1              ; 2 uses
  %i.amo = zext i8 %i.aml to i64
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %.lr.ph.i297
  %.sroa.0320.33 = phi i32 [ %i.amn, %bb.cz ], [ %.sroa.0320.32, %.lr.ph.i297 ] ; 2 uses
  %.sroa.38.33 = phi i32 [ %i.amm, %bb.cz ], [ %.sroa.38.32, %.lr.ph.i297 ] ; 2 uses
  %i.amp = phi i32 [ %i.amn, %bb.cz ], [ %i.ame, %.lr.ph.i297 ]
  %i.amq = phi i32 [ %i.amm, %bb.cz ], [ %i.amf, %.lr.ph.i297 ]
  %i.amr = phi i64 [ %i.amo, %bb.cz ], [ 255, %.lr.ph.i297 ]
  %i.ams = zext nneg i8 %i.amg to i64
  %i.amt = shl nuw nsw i64 %i.amr, %i.ams
  %i.amu = or i64 %i.amt, %i.amd                  ; 2 uses
  %i.amv = select i1 %i.amh, i8 7, i8 8
  %i.amw = add nuw nsw i8 %i.amv, %i.amg          ; 3 uses
  %i.amx = icmp samesign ult i8 %i.amw, 32
  br i1 %i.amx, label %.lr.ph.i297, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit279, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit279:     ; preds = %bb.da, %bb.cy
  %.sroa.0320.22 = phi i32 [ %.sroa.0320.0.lcssa, %bb.cy ], [ %.sroa.0320.33, %bb.da ]
  %.sroa.38.22 = phi i32 [ %.sroa.38.0.lcssa, %bb.cy ], [ %.sroa.38.33, %bb.da ]
  %.sroa.84339.22 = phi i64 [ %.sroa.84339.0.lcssa, %bb.cy ], [ %i.amu, %bb.da ] ; 2 uses
  %.sroa.52.22 = phi i8 [ %.sroa.52.0.lcssa, %bb.cy ], [ %i.amw, %bb.da ]
  %.mask496 = and i32 %i.aln, 255
  %i.amy = zext nneg i32 %.mask496 to i64         ; 2 uses
  %notmask.i278 = shl nsw i64 -1, %i.amy
  %i.amz = xor i64 %notmask.i278, -1
  %i.ana = and i64 %.sroa.84339.22, %i.amz
  %i.anb = lshr i64 %.sroa.84339.22, %i.amy
  %i.anc = sub i8 %.sroa.52.22, %i.amb
  %i.and = trunc i64 %i.ana to i32
  %i.ane = shl nuw i32 %i.alz, %i.aln
  %i.anf = add nsw i32 %i.ane, %i.and
  br label %jpeg2000_decode_mag_sgn.exit

jpeg2000_decode_mag_sgn.exit:                     ; preds = %.preheader530, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279
  %.sroa.0320.11 = phi i32 [ %.sroa.0320.22, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279 ], [ %.sroa.0320.0.lcssa, %.preheader530 ] ; 4 uses
  %.sroa.38.11 = phi i32 [ %.sroa.38.22, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279 ], [ %.sroa.38.0.lcssa, %.preheader530 ] ; 4 uses
  %.sroa.84339.11 = phi i64 [ %i.anb, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279 ], [ %.sroa.84339.0.lcssa, %.preheader530 ] ; 3 uses
  %.sroa.52.11 = phi i8 [ %i.anc, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279 ], [ %.sroa.52.0.lcssa, %.preheader530 ] ; 5 uses
  %.0.i252 = phi i32 [ %i.anf, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279 ], [ 0, %.preheader530 ] ; 3 uses
  %.not.i246 = icmp eq i32 %i.all, %i.alm
  br i1 %.not.i246, label %bb.db, label %ff_clz_c.exit.i250

ff_clz_c.exit.i250:                               ; preds = %jpeg2000_decode_mag_sgn.exit
  %i.ang = lshr i32 %.0.i252, 1
  %i.anh = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.ang, i1 false)
  %i.ani = trunc nuw nsw i32 %i.anh to i8
  %i.anj = sub nuw nsw i8 33, %i.ani
  %i.ank = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.lcssa558
  store i8 %i.anj, ptr %i.ank, align 1, !tbaa !13
  %i.anl = ashr i32 %.0.i252, 1
  %i.anm = add nsw i32 %i.anl, 1
  %i.ann = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %.lcssa558
  %i.ano = shl i32 %i.anm, %i.alu
  %i.anp = shl i32 %.0.i252, 31
  %i.anq = or i32 %i.anp, %i.ano
  %i.anr = or i32 %i.anq, %i.aly
  store i32 %i.anr, ptr %i.ann, align 4, !tbaa !12
  br label %bb.db

bb.db:                                            ; preds = %ff_clz_c.exit.i250, %jpeg2000_decode_mag_sgn.exit
  %i.ans = lshr i32 %i.alw, 1
  %i.ant = and i32 %i.ans, 1
  %i.anu = icmp sgt i32 %25, 0
  br i1 %i.anu, label %bb.dc, label %jpeg2000_decode_mag_sgn.exit.1

bb.dc:                                            ; preds = %bb.db
  %i.anv = trunc i32 %25 to i8                    ; 2 uses
  %.not.i277.1 = icmp ule i8 %.sroa.52.11, %i.anv
  %i.anw = icmp ult i8 %.sroa.52.11, 32
  %or.cond484.1 = and i1 %i.anw, %.not.i277.1
  br i1 %or.cond484.1, label %.lr.ph.i297.1, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.1

.lr.ph.i297.1:                                    ; preds = %bb.dc, %bb.de
  %.sroa.0320.32.1 = phi i32 [ %.sroa.0320.33.1, %bb.de ], [ %.sroa.0320.11, %bb.dc ]
  %.sroa.38.32.1 = phi i32 [ %.sroa.38.33.1, %bb.de ], [ %.sroa.38.11, %bb.dc ]
  %i.anx = phi i64 [ %i.aoo, %bb.de ], [ %.sroa.84339.11, %bb.dc ]
  %i.any = phi i32 [ %i.aoj, %bb.de ], [ %.sroa.0320.11, %bb.dc ] ; 4 uses
  %i.anz = phi i32 [ %i.aok, %bb.de ], [ %.sroa.38.11, %bb.dc ] ; 2 uses
  %i.aoa = phi i8 [ %i.aoq, %bb.de ], [ %.sroa.52.11, %bb.dc ] ; 2 uses
  %i.aob = icmp eq i32 %i.anz, 255
  %i.aoc = icmp ult i32 %i.any, %i.cl
  br i1 %i.aoc, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %.lr.ph.i297.1
  %i.aod = sext i32 %i.any to i64
  %i.aoe = getelementptr inbounds i8, ptr %i.bc, i64 %i.aod
  %i.aof = load i8, ptr %i.aoe, align 1, !tbaa !13 ; 2 uses
  %i.aog = zext i8 %i.aof to i32                  ; 2 uses
  %i.aoh = add nuw nsw i32 %i.any, 1              ; 2 uses
  %i.aoi = zext i8 %i.aof to i64
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %.lr.ph.i297.1
  %.sroa.0320.33.1 = phi i32 [ %i.aoh, %bb.dd ], [ %.sroa.0320.32.1, %.lr.ph.i297.1 ] ; 2 uses
  %.sroa.38.33.1 = phi i32 [ %i.aog, %bb.dd ], [ %.sroa.38.32.1, %.lr.ph.i297.1 ] ; 2 uses
  %i.aoj = phi i32 [ %i.aoh, %bb.dd ], [ %i.any, %.lr.ph.i297.1 ]
  %i.aok = phi i32 [ %i.aog, %bb.dd ], [ %i.anz, %.lr.ph.i297.1 ]
  %i.aol = phi i64 [ %i.aoi, %bb.dd ], [ 255, %.lr.ph.i297.1 ]
  %i.aom = zext nneg i8 %i.aoa to i64
  %i.aon = shl nuw nsw i64 %i.aol, %i.aom
  %i.aoo = or i64 %i.aon, %i.anx                  ; 2 uses
  %i.aop = select i1 %i.aob, i8 7, i8 8
  %i.aoq = add nuw nsw i8 %i.aop, %i.aoa          ; 3 uses
  %i.aor = icmp samesign ult i8 %i.aoq, 32
  br i1 %i.aor, label %.lr.ph.i297.1, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.1, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit279.1:   ; preds = %bb.de, %bb.dc
  %.sroa.0320.22.1 = phi i32 [ %.sroa.0320.11, %bb.dc ], [ %.sroa.0320.33.1, %bb.de ]
  %.sroa.38.22.1 = phi i32 [ %.sroa.38.11, %bb.dc ], [ %.sroa.38.33.1, %bb.de ]
  %.sroa.84339.22.1 = phi i64 [ %.sroa.84339.11, %bb.dc ], [ %i.aoo, %bb.de ] ; 2 uses
  %.sroa.52.22.1 = phi i8 [ %.sroa.52.11, %bb.dc ], [ %i.aoq, %bb.de ]
  %.mask496.1 = and i32 %25, 255
  %i.aos = zext nneg i32 %.mask496.1 to i64       ; 2 uses
  %notmask.i278.1 = shl nsw i64 -1, %i.aos
  %i.aot = xor i64 %notmask.i278.1, -1
  %i.aou = and i64 %.sroa.84339.22.1, %i.aot
  %i.aov = lshr i64 %.sroa.84339.22.1, %i.aos
  %i.aow = sub i8 %.sroa.52.22.1, %i.anv
  %i.aox = trunc i64 %i.aou to i32
  %i.aoy = shl nuw i32 %i.ant, %25
  %i.aoz = add nsw i32 %i.aoy, %i.aox
  br label %jpeg2000_decode_mag_sgn.exit.1

jpeg2000_decode_mag_sgn.exit.1:                   ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.1, %bb.db
  %.sroa.0320.11.1 = phi i32 [ %.sroa.0320.22.1, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.1 ], [ %.sroa.0320.11, %bb.db ] ; 4 uses
  %.sroa.38.11.1 = phi i32 [ %.sroa.38.22.1, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.1 ], [ %.sroa.38.11, %bb.db ] ; 4 uses
  %.sroa.84339.11.1 = phi i64 [ %i.aov, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.1 ], [ %.sroa.84339.11, %bb.db ] ; 3 uses
  %.sroa.52.11.1 = phi i8 [ %i.aow, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.1 ], [ %.sroa.52.11, %bb.db ] ; 5 uses
  %.0.i252.1 = phi i32 [ %i.aoz, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.1 ], [ 0, %bb.db ] ; 3 uses
  %.not.i246.1 = icmp eq i32 %25, 0
  br i1 %.not.i246.1, label %bb.df, label %ff_clz_c.exit.i250.1

ff_clz_c.exit.i250.1:                             ; preds = %jpeg2000_decode_mag_sgn.exit.1
  %i.apa = lshr i32 %.0.i252.1, 1
  %i.apb = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.apa, i1 false)
  %i.apc = trunc nuw nsw i32 %i.apb to i8
  %i.apd = sub nuw nsw i8 33, %i.apc
  %i.ape = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.aiz
  store i8 %i.apd, ptr %i.ape, align 1, !tbaa !13
  %i.apf = ashr i32 %.0.i252.1, 1
  %i.apg = add nsw i32 %i.apf, 1
  %i.aph = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.aiz
  %i.api = shl i32 %i.apg, %i.alu
  %i.apj = shl i32 %.0.i252.1, 31
  %i.apk = or i32 %i.apj, %i.api
  %i.apl = or i32 %i.apk, %i.aly
  store i32 %i.apl, ptr %i.aph, align 4, !tbaa !12
  br label %bb.df

bb.df:                                            ; preds = %ff_clz_c.exit.i250.1, %jpeg2000_decode_mag_sgn.exit.1
  %i.apm = lshr i32 %i.alw, 2
  %i.apn = and i32 %i.apm, 1
  %i.apo = icmp sgt i32 %28, 0
  br i1 %i.apo, label %bb.dg, label %jpeg2000_decode_mag_sgn.exit.2

bb.dg:                                            ; preds = %bb.df
  %i.app = trunc i32 %28 to i8                    ; 2 uses
  %.not.i277.2 = icmp ule i8 %.sroa.52.11.1, %i.app
  %i.apq = icmp ult i8 %.sroa.52.11.1, 32
  %or.cond484.2 = and i1 %i.apq, %.not.i277.2
  br i1 %or.cond484.2, label %.lr.ph.i297.2, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.2

.lr.ph.i297.2:                                    ; preds = %bb.dg, %bb.di
  %.sroa.0320.32.2 = phi i32 [ %.sroa.0320.33.2, %bb.di ], [ %.sroa.0320.11.1, %bb.dg ]
  %.sroa.38.32.2 = phi i32 [ %.sroa.38.33.2, %bb.di ], [ %.sroa.38.11.1, %bb.dg ]
  %i.apr = phi i64 [ %i.aqi, %bb.di ], [ %.sroa.84339.11.1, %bb.dg ]
  %i.aps = phi i32 [ %i.aqd, %bb.di ], [ %.sroa.0320.11.1, %bb.dg ] ; 4 uses
  %i.apt = phi i32 [ %i.aqe, %bb.di ], [ %.sroa.38.11.1, %bb.dg ] ; 2 uses
  %i.apu = phi i8 [ %i.aqk, %bb.di ], [ %.sroa.52.11.1, %bb.dg ] ; 2 uses
  %i.apv = icmp eq i32 %i.apt, 255
  %i.apw = icmp ult i32 %i.aps, %i.cl
  br i1 %i.apw, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %.lr.ph.i297.2
  %i.apx = sext i32 %i.aps to i64
  %i.apy = getelementptr inbounds i8, ptr %i.bc, i64 %i.apx
  %i.apz = load i8, ptr %i.apy, align 1, !tbaa !13 ; 2 uses
  %i.aqa = zext i8 %i.apz to i32                  ; 2 uses
  %i.aqb = add nuw nsw i32 %i.aps, 1              ; 2 uses
  %i.aqc = zext i8 %i.apz to i64
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %.lr.ph.i297.2
  %.sroa.0320.33.2 = phi i32 [ %i.aqb, %bb.dh ], [ %.sroa.0320.32.2, %.lr.ph.i297.2 ] ; 2 uses
  %.sroa.38.33.2 = phi i32 [ %i.aqa, %bb.dh ], [ %.sroa.38.32.2, %.lr.ph.i297.2 ] ; 2 uses
  %i.aqd = phi i32 [ %i.aqb, %bb.dh ], [ %i.aps, %.lr.ph.i297.2 ]
  %i.aqe = phi i32 [ %i.aqa, %bb.dh ], [ %i.apt, %.lr.ph.i297.2 ]
  %i.aqf = phi i64 [ %i.aqc, %bb.dh ], [ 255, %.lr.ph.i297.2 ]
  %i.aqg = zext nneg i8 %i.apu to i64
  %i.aqh = shl nuw nsw i64 %i.aqf, %i.aqg
  %i.aqi = or i64 %i.aqh, %i.apr                  ; 2 uses
  %i.aqj = select i1 %i.apv, i8 7, i8 8
  %i.aqk = add nuw nsw i8 %i.aqj, %i.apu          ; 3 uses
  %i.aql = icmp samesign ult i8 %i.aqk, 32
  br i1 %i.aql, label %.lr.ph.i297.2, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.2, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit279.2:   ; preds = %bb.di, %bb.dg
  %.sroa.0320.22.2 = phi i32 [ %.sroa.0320.11.1, %bb.dg ], [ %.sroa.0320.33.2, %bb.di ]
  %.sroa.38.22.2 = phi i32 [ %.sroa.38.11.1, %bb.dg ], [ %.sroa.38.33.2, %bb.di ]
  %.sroa.84339.22.2 = phi i64 [ %.sroa.84339.11.1, %bb.dg ], [ %i.aqi, %bb.di ] ; 2 uses
  %.sroa.52.22.2 = phi i8 [ %.sroa.52.11.1, %bb.dg ], [ %i.aqk, %bb.di ]
  %.mask496.2 = and i32 %28, 255
  %i.aqm = zext nneg i32 %.mask496.2 to i64       ; 2 uses
  %notmask.i278.2 = shl nsw i64 -1, %i.aqm
  %i.aqn = xor i64 %notmask.i278.2, -1
  %i.aqo = and i64 %.sroa.84339.22.2, %i.aqn
  %i.aqp = lshr i64 %.sroa.84339.22.2, %i.aqm
  %i.aqq = sub i8 %.sroa.52.22.2, %i.app
  %i.aqr = trunc i64 %i.aqo to i32
  %i.aqs = shl nuw i32 %i.apn, %28
  %i.aqt = add nsw i32 %i.aqs, %i.aqr
  br label %jpeg2000_decode_mag_sgn.exit.2

jpeg2000_decode_mag_sgn.exit.2:                   ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.2, %bb.df
  %.sroa.0320.11.2 = phi i32 [ %.sroa.0320.22.2, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.2 ], [ %.sroa.0320.11.1, %bb.df ] ; 4 uses
  %.sroa.38.11.2 = phi i32 [ %.sroa.38.22.2, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.2 ], [ %.sroa.38.11.1, %bb.df ] ; 4 uses
  %.sroa.84339.11.2 = phi i64 [ %i.aqp, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.2 ], [ %.sroa.84339.11.1, %bb.df ] ; 3 uses
  %.sroa.52.11.2 = phi i8 [ %i.aqq, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.2 ], [ %.sroa.52.11.1, %bb.df ] ; 5 uses
  %.0.i252.2 = phi i32 [ %i.aqt, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.2 ], [ 0, %bb.df ] ; 3 uses
  %.not.i246.2 = icmp eq i32 %28, 0
  br i1 %.not.i246.2, label %bb.dj, label %ff_clz_c.exit.i250.2

ff_clz_c.exit.i250.2:                             ; preds = %jpeg2000_decode_mag_sgn.exit.2
  %i.aqu = lshr i32 %.0.i252.2, 1
  %i.aqv = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.aqu, i1 false)
  %i.aqw = trunc nuw nsw i32 %i.aqv to i8
  %i.aqx = sub nuw nsw i8 33, %i.aqw
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ajd
  store i8 %i.aqx, ptr %i.aqy, align 1, !tbaa !13
  %i.aqz = ashr i32 %.0.i252.2, 1
  %i.ara = add nsw i32 %i.aqz, 1
  %i.arb = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ajd
  %i.arc = shl i32 %i.ara, %i.alu
  %i.ard = shl i32 %.0.i252.2, 31
  %i.are = or i32 %i.ard, %i.arc
  %i.arf = or i32 %i.are, %i.aly
  store i32 %i.arf, ptr %i.arb, align 4, !tbaa !12
  br label %bb.dj

bb.dj:                                            ; preds = %ff_clz_c.exit.i250.2, %jpeg2000_decode_mag_sgn.exit.2
  %i.arg = lshr i32 %i.alw, 3
  %i.arh = and i32 %i.arg, 1
  %i.ari = icmp sgt i32 %31, 0
  br i1 %i.ari, label %bb.dk, label %jpeg2000_decode_mag_sgn.exit.3

bb.dk:                                            ; preds = %bb.dj
  %i.arj = trunc i32 %31 to i8                    ; 2 uses
  %.not.i277.3 = icmp ule i8 %.sroa.52.11.2, %i.arj
  %i.ark = icmp ult i8 %.sroa.52.11.2, 32
  %or.cond484.3 = and i1 %i.ark, %.not.i277.3
  br i1 %or.cond484.3, label %.lr.ph.i297.3, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.3

.lr.ph.i297.3:                                    ; preds = %bb.dk, %bb.dm
  %.sroa.0320.32.3 = phi i32 [ %.sroa.0320.33.3, %bb.dm ], [ %.sroa.0320.11.2, %bb.dk ]
  %.sroa.38.32.3 = phi i32 [ %.sroa.38.33.3, %bb.dm ], [ %.sroa.38.11.2, %bb.dk ]
  %i.arl = phi i64 [ %i.asc, %bb.dm ], [ %.sroa.84339.11.2, %bb.dk ]
  %i.arm = phi i32 [ %i.arx, %bb.dm ], [ %.sroa.0320.11.2, %bb.dk ] ; 4 uses
  %i.arn = phi i32 [ %i.ary, %bb.dm ], [ %.sroa.38.11.2, %bb.dk ] ; 2 uses
  %i.aro = phi i8 [ %i.ase, %bb.dm ], [ %.sroa.52.11.2, %bb.dk ] ; 2 uses
  %i.arp = icmp eq i32 %i.arn, 255
  %i.arq = icmp ult i32 %i.arm, %i.cl
  br i1 %i.arq, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %.lr.ph.i297.3
  %i.arr = sext i32 %i.arm to i64
  %i.ars = getelementptr inbounds i8, ptr %i.bc, i64 %i.arr
  %i.art = load i8, ptr %i.ars, align 1, !tbaa !13 ; 2 uses
  %i.aru = zext i8 %i.art to i32                  ; 2 uses
  %i.arv = add nuw nsw i32 %i.arm, 1              ; 2 uses
  %i.arw = zext i8 %i.art to i64
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %.lr.ph.i297.3
  %.sroa.0320.33.3 = phi i32 [ %i.arv, %bb.dl ], [ %.sroa.0320.32.3, %.lr.ph.i297.3 ] ; 2 uses
  %.sroa.38.33.3 = phi i32 [ %i.aru, %bb.dl ], [ %.sroa.38.32.3, %.lr.ph.i297.3 ] ; 2 uses
  %i.arx = phi i32 [ %i.arv, %bb.dl ], [ %i.arm, %.lr.ph.i297.3 ]
  %i.ary = phi i32 [ %i.aru, %bb.dl ], [ %i.arn, %.lr.ph.i297.3 ]
  %i.arz = phi i64 [ %i.arw, %bb.dl ], [ 255, %.lr.ph.i297.3 ]
  %i.asa = zext nneg i8 %i.aro to i64
  %i.asb = shl nuw nsw i64 %i.arz, %i.asa
  %i.asc = or i64 %i.asb, %i.arl                  ; 2 uses
  %i.asd = select i1 %i.arp, i8 7, i8 8
  %i.ase = add nuw nsw i8 %i.asd, %i.aro          ; 3 uses
  %i.asf = icmp samesign ult i8 %i.ase, 32
  br i1 %i.asf, label %.lr.ph.i297.3, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.3, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit279.3:   ; preds = %bb.dm, %bb.dk
  %.sroa.0320.22.3 = phi i32 [ %.sroa.0320.11.2, %bb.dk ], [ %.sroa.0320.33.3, %bb.dm ]
  %.sroa.38.22.3 = phi i32 [ %.sroa.38.11.2, %bb.dk ], [ %.sroa.38.33.3, %bb.dm ]
  %.sroa.84339.22.3 = phi i64 [ %.sroa.84339.11.2, %bb.dk ], [ %i.asc, %bb.dm ] ; 2 uses
  %.sroa.52.22.3 = phi i8 [ %.sroa.52.11.2, %bb.dk ], [ %i.ase, %bb.dm ]
  %.mask496.3 = and i32 %31, 255
  %i.asg = zext nneg i32 %.mask496.3 to i64       ; 2 uses
  %notmask.i278.3 = shl nsw i64 -1, %i.asg
  %i.ash = xor i64 %notmask.i278.3, -1
  %i.asi = and i64 %.sroa.84339.22.3, %i.ash
  %i.asj = lshr i64 %.sroa.84339.22.3, %i.asg
  %i.ask = sub i8 %.sroa.52.22.3, %i.arj
  %i.asl = trunc i64 %i.asi to i32
  %i.asm = shl nuw i32 %i.arh, %31
  %i.asn = add nsw i32 %i.asm, %i.asl
  br label %jpeg2000_decode_mag_sgn.exit.3

jpeg2000_decode_mag_sgn.exit.3:                   ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.3, %bb.dj
  %.sroa.0320.11.3 = phi i32 [ %.sroa.0320.22.3, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.3 ], [ %.sroa.0320.11.2, %bb.dj ]
  %.sroa.38.11.3 = phi i32 [ %.sroa.38.22.3, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.3 ], [ %.sroa.38.11.2, %bb.dj ]
  %.sroa.84339.11.3 = phi i64 [ %i.asj, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.3 ], [ %.sroa.84339.11.2, %bb.dj ]
  %.sroa.52.11.3 = phi i8 [ %i.ask, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.3 ], [ %.sroa.52.11.2, %bb.dj ]
  %.0.i252.3 = phi i32 [ %i.asn, %jpeg2000_bitbuf_get_bits_lsb_forward.exit279.3 ], [ 0, %bb.dj ] ; 3 uses
  %.not.i246.3 = icmp eq i32 %31, 0
  br i1 %.not.i246.3, label %recover_mag_sgn.exit251, label %ff_clz_c.exit.i250.3

ff_clz_c.exit.i250.3:                             ; preds = %jpeg2000_decode_mag_sgn.exit.3
  %i.aso = lshr i32 %.0.i252.3, 1
  %i.asp = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.aso, i1 false)
  %i.asq = trunc nuw nsw i32 %i.asp to i8
  %i.asr = sub nuw nsw i8 33, %i.asq
  %i.ass = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ajh
  store i8 %i.asr, ptr %i.ass, align 1, !tbaa !13
  %i.ast = ashr i32 %.0.i252.3, 1
  %i.asu = add nsw i32 %i.ast, 1
  %i.asv = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ajh
  %i.asw = shl i32 %i.asu, %i.alu
  %i.asx = shl i32 %.0.i252.3, 31
  %i.asy = or i32 %i.asx, %i.asw
  %i.asz = or i32 %i.asy, %i.aly
  store i32 %i.asz, ptr %i.asv, align 4, !tbaa !12
  br label %recover_mag_sgn.exit251

recover_mag_sgn.exit251:                          ; preds = %ff_clz_c.exit.i250.3, %jpeg2000_decode_mag_sgn.exit.3
  %i.ata = or disjoint i16 %.0659.i.lcssa, 1
  br label %bb.dn

bb.dn:                                            ; preds = %recover_mag_sgn.exit251, %bb.cp
  %.sroa.0320.1 = phi i32 [ %.sroa.0320.0.lcssa, %bb.cp ], [ %.sroa.0320.11.3, %recover_mag_sgn.exit251 ]
  %.sroa.38.1 = phi i32 [ %.sroa.38.0.lcssa, %bb.cp ], [ %.sroa.38.11.3, %recover_mag_sgn.exit251 ]
  %.sroa.84339.1 = phi i64 [ %.sroa.84339.0.lcssa, %bb.cp ], [ %.sroa.84339.11.3, %recover_mag_sgn.exit251 ]
  %.sroa.52.1 = phi i8 [ %.sroa.52.0.lcssa, %bb.cp ], [ %.sroa.52.11.3, %recover_mag_sgn.exit251 ]
  %.1.i = phi i16 [ %.0659.i.lcssa, %bb.cp ], [ %i.ata, %recover_mag_sgn.exit251 ]
  %i.atb = zext nneg i32 %i.dz to i64             ; 2 uses
  %i.atc = udiv i64 -1, %i.atb                    ; 7 uses
  %i.atd = add i64 %i.atc, 1                      ; 6 uses
  %i.ate = icmp samesign ugt i32 %i.ec, 1
  br i1 %i.ate, label %.preheader527.lr.ph, label %.preheader524

.preheader527.lr.ph:                              ; preds = %bb.dn
  %i.atf = mul nsw i32 %i.eb, %i.dy               ; 2 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.ath = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ati = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 27 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 24 uses
  %i.atk = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.atl = zext i8 %i.bn to i32                   ; 13 uses
  %i.atm = add nsw i32 %i.atl, -1
  %i.atn = shl nuw i32 1, %i.atm                  ; 12 uses
  %i.ato = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  br label %.preheader527

.preheader527:                                    ; preds = %.preheader527.lr.ph, %bb.gw
  %.2.i724 = phi i16 [ %.1.i, %.preheader527.lr.ph ], [ %.4.i, %bb.gw ] ; 3 uses
  %.0673.i723 = phi i32 [ 1, %.preheader527.lr.ph ], [ %i.cjj, %bb.gw ] ; 2 uses
  %.sroa.52.2722 = phi i8 [ %.sroa.52.1, %.preheader527.lr.ph ], [ %.sroa.52.4, %bb.gw ] ; 2 uses
  %.sroa.84339.2720 = phi i64 [ %.sroa.84339.1, %.preheader527.lr.ph ], [ %.sroa.84339.4, %bb.gw ] ; 2 uses
  %.sroa.38.2719 = phi i32 [ %.sroa.38.1, %.preheader527.lr.ph ], [ %.sroa.38.4, %bb.gw ] ; 2 uses
  %.sroa.0320.2718 = phi i32 [ %.sroa.0320.1, %.preheader527.lr.ph ], [ %.sroa.0320.4, %bb.gw ] ; 2 uses
  %.neg497 = mul i32 %.0673.i723, %i.dy           ; 2 uses
  %i.atp = zext i16 %.2.i724 to i32               ; 4 uses
  %i.atq = add i32 %.neg497, %i.atp
  %i.atr = icmp slt i32 %i.atq, %i.em
  %i.ats = icmp samesign ugt i32 %i.atf, %i.atp
  %or.cond753.i691 = select i1 %i.atr, i1 %i.ats, i1 false
  br i1 %or.cond753.i691, label %.lr.ph699.preheader, label %.critedge.i

.lr.ph699.preheader:                              ; preds = %.preheader527
  %.pre927 = load ptr, ptr %i.e, align 8, !tbaa !39 ; 18 uses
  br label %.lr.ph699

.preheader524:                                    ; preds = %bb.gw, %bb.dn
  %.not744 = icmp eq i32 %i.eb, 0
  br i1 %.not744, label %jpeg2000_decode_ht_cleanup_segment.exit, label %.preheader523.lr.ph

.preheader523.lr.ph:                              ; preds = %.preheader524
  %.not745 = icmp eq i32 %i.dy, 0
  %i.att = icmp eq i32 %i.dw, 0
  %i.atu = icmp eq i32 %i.dv, 0
  br i1 %.not745, label %jpeg2000_decode_ht_cleanup_segment.exit, label %.preheader523.preheader

.preheader523.preheader:                          ; preds = %.preheader523.lr.ph
  %i.atv = zext i32 %i.em to i64
  %i.atw = zext nneg i32 %i.n to i64              ; 3 uses
  %wide.trip.count841 = zext nneg i32 %i.ec to i64
  br label %.preheader523

.lr.ph699:                                        ; preds = %.lr.ph699.preheader, %recover_mag_sgn.exit230
  %i.atx = phi i32 [ %i.bwd, %recover_mag_sgn.exit230 ], [ %i.atp, %.lr.ph699.preheader ] ; 4 uses
  %.3.i698 = phi i16 [ %i.bwc, %recover_mag_sgn.exit230 ], [ %.2.i724, %.lr.ph699.preheader ] ; 2 uses
  %.sroa.52.3697 = phi i8 [ %.sroa.52.14.3, %recover_mag_sgn.exit230 ], [ %.sroa.52.2722, %.lr.ph699.preheader ] ; 5 uses
  %.sroa.84339.3695 = phi i64 [ %.sroa.84339.14.3, %recover_mag_sgn.exit230 ], [ %.sroa.84339.2720, %.lr.ph699.preheader ] ; 3 uses
  %.sroa.38.3694 = phi i32 [ %.sroa.38.14.3, %recover_mag_sgn.exit230 ], [ %.sroa.38.2719, %.lr.ph699.preheader ] ; 4 uses
  %.sroa.0320.3693 = phi i32 [ %.sroa.0320.14.3, %recover_mag_sgn.exit230 ], [ %.sroa.0320.2718, %.lr.ph699.preheader ] ; 4 uses
  %i.aty = add nuw nsw i32 %i.atx, 1              ; 3 uses
  %i.atz = add nsw i32 %i.atx, %i.dy              ; 2 uses
  %i.aua = shl nsw i32 %i.atz, 2                  ; 6 uses
  %i.aub = or disjoint i32 %i.aua, 1
  %i.auc = sext i32 %i.aub to i64                 ; 2 uses
  %i.aud = getelementptr inbounds i8, ptr %.pre927, i64 %i.auc
  %i.aue = load i8, ptr %i.aud, align 1, !tbaa !13
  %i.auf = or disjoint i32 %i.aua, 3
  %i.aug = sext i32 %i.auf to i64                 ; 2 uses
  %i.auh = getelementptr inbounds i8, ptr %.pre927, i64 %i.aug
  %i.aui = load i8, ptr %i.auh, align 1, !tbaa !13
  %i.auj = zext i8 %i.aui to i16
  %i.auk = shl nuw nsw i16 %i.auj, 2
  %i.aul = zext i8 %i.aue to i16
  %i.aum = add nuw nsw i16 %i.auk, %i.aul         ; 2 uses
  %i.aun = zext i16 %.3.i698 to i64
  %i.auo = mul i64 %i.atd, %i.aun
  %i.aup = icmp ugt i64 %i.auo, %i.atc            ; 2 uses
  br i1 %i.aup, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %.lr.ph699
  %i.auq = sext i32 %i.aua to i64
  %i.aur = getelementptr i8, ptr %.pre927, i64 %i.auq
  %i.aus = getelementptr i8, ptr %i.aur, i64 -1
  %i.aut = load i8, ptr %i.aus, align 1, !tbaa !13
  %i.auu = zext i8 %i.aut to i16
  %i.auv = or i16 %i.aum, %i.auu
  %i.auw = shl nuw nsw i32 %i.atx, 2
  %i.aux = zext nneg i32 %i.auw to i64
  %i.auy = getelementptr i8, ptr %.pre927, i64 %i.aux ; 2 uses
  %i.auz = getelementptr i8, ptr %i.auy, i64 -1
  %i.ava = load i8, ptr %i.auz, align 1, !tbaa !13
  %i.avb = getelementptr i8, ptr %i.auy, i64 -2
  %i.avc = load i8, ptr %i.avb, align 1, !tbaa !13
  %i.avd = or i8 %i.avc, %i.ava
  %i.ave = zext i8 %i.avd to i16
  %i.avf = shl nuw nsw i16 %i.ave, 1
  %i.avg = add nuw nsw i16 %i.avf, %i.auv
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %.lr.ph699
  %.0660.i = phi i16 [ %i.aum, %.lr.ph699 ], [ %i.avg, %bb.do ] ; 2 uses
  %i.avh = zext nneg i32 %i.aty to i64
  %i.avi = mul i64 %i.atd, %i.avh
  %i.avj = icmp ugt i64 %i.avi, %i.atc            ; 2 uses
  br i1 %i.avj, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.avk = sext i32 %i.aua to i64
  %i.avl = getelementptr i8, ptr %.pre927, i64 %i.avk
  %i.avm = getelementptr i8, ptr %i.avl, i64 5
  %i.avn = load i8, ptr %i.avm, align 1, !tbaa !13
  %i.avo = zext i8 %i.avn to i16
  %i.avp = shl nuw nsw i16 %i.avo, 2
  %i.avq = or i16 %i.avp, %.0660.i
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.1661.i = phi i16 [ %.0660.i, %bb.dp ], [ %i.avq, %bb.dq ]
  call fastcc void @jpeg2000_decode_sig_emb(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull @dec_cxt_vlc_table1, ptr noundef %i.bc, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, i8 noundef zeroext 0, i16 noundef zeroext %.1661.i, i32 noundef range(i32 2, 0) %i.ar, i32 noundef %i.cl)
  %i.avr = load i8, ptr %i.a, align 2, !tbaa !13  ; 4 uses
  %i.avs = shl nuw nsw i32 %i.atx, 2
  %i.avt = zext nneg i32 %i.avs to i64            ; 6 uses
  %i.avu = and i8 %i.avr, 1
  %i.avv = getelementptr inbounds nuw i8, ptr %.pre927, i64 %i.avt ; 2 uses
  store i8 %i.avu, ptr %i.avv, align 1, !tbaa !13
  %i.avw = lshr i8 %i.avr, 1
  %i.avx = and i8 %i.avw, 1
  %i.avy = or disjoint i64 %i.avt, 1              ; 3 uses
  %i.avz = getelementptr inbounds nuw i8, ptr %.pre927, i64 %i.avy ; 2 uses
  store i8 %i.avx, ptr %i.avz, align 1, !tbaa !13
  %i.awa = lshr i8 %i.avr, 2
  %i.awb = and i8 %i.awa, 1
  %i.awc = or disjoint i64 %i.avt, 2              ; 3 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %.pre927, i64 %i.awc ; 2 uses
  store i8 %i.awb, ptr %i.awd, align 1, !tbaa !13
  %i.awe = lshr i8 %i.avr, 3
  %i.awf = and i8 %i.awe, 1
  %i.awg = or disjoint i64 %i.avt, 3              ; 3 uses
  %i.awh = getelementptr inbounds nuw i8, ptr %.pre927, i64 %i.awg ; 2 uses
  store i8 %i.awf, ptr %i.awh, align 1, !tbaa !13
  %i.awi = and i32 %i.aty, 65535                  ; 5 uses
  %i.awj = add nsw i32 %i.awi, %i.dy              ; 2 uses
  %i.awk = shl nsw i32 %i.awj, 2                  ; 6 uses
  %i.awl = or disjoint i32 %i.awk, 1
  %i.awm = sext i32 %i.awl to i64                 ; 2 uses
  %i.awn = getelementptr inbounds i8, ptr %.pre927, i64 %i.awm
  %i.awo = load i8, ptr %i.awn, align 1, !tbaa !13
  %i.awp = or disjoint i32 %i.awk, 3
  %i.awq = sext i32 %i.awp to i64                 ; 2 uses
  %i.awr = getelementptr inbounds i8, ptr %.pre927, i64 %i.awq
  %i.aws = load i8, ptr %i.awr, align 1, !tbaa !13
  %i.awt = zext i8 %i.aws to i16
  %i.awu = shl nuw nsw i16 %i.awt, 2
  %i.awv = zext i8 %i.awo to i16
  %i.aww = add nuw nsw i16 %i.awu, %i.awv         ; 2 uses
  %i.awx = zext nneg i32 %i.awi to i64
  %i.awy = mul i64 %i.atd, %i.awx
  %i.awz = icmp ugt i64 %i.awy, %i.atc            ; 2 uses
  br i1 %i.awz, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.axa = sext i32 %i.awk to i64
  %i.axb = getelementptr i8, ptr %.pre927, i64 %i.axa
  %i.axc = getelementptr i8, ptr %i.axb, i64 -1
  %i.axd = load i8, ptr %i.axc, align 1, !tbaa !13
  %i.axe = zext i8 %i.axd to i16
  %i.axf = or i16 %i.aww, %i.axe
  %i.axg = shl nuw nsw i32 %i.awi, 2
  %i.axh = zext nneg i32 %i.axg to i64
end_hunk_0
begin_hunk_1_@ff_jpeg2000_decode_htj2k:bb.a
  br label %jpeg2000_bitbuf_get_bits_lsb.exit195.cont

bb.eh:                                            ; preds = %bb.dv
  %or.cond19.i = select i1 %i.ayu, i1 true, i1 %i.ayw
  br i1 %or.cond19.i, label %bb.ei, label %jpeg2000_bitbuf_get_bits_lsb.exit195.cont

bb.ei:                                            ; preds = %bb.eh
  %i.bco = load i8, ptr %i.ati, align 8, !tbaa !23 ; 2 uses
  %i.bcp = icmp ult i8 %i.bco, 3
  br i1 %i.bcp, label %bb.ej, label %vlc_decode_u_prefix.exit171

bb.ej:                                            ; preds = %bb.ei
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre928 = load i8, ptr %i.ati, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit171

vlc_decode_u_prefix.exit171:                      ; preds = %bb.ei, %bb.ej
  %i.bcq = phi i8 [ %i.bco, %bb.ei ], [ %.pre928, %bb.ej ]
  %i.bcr = load i64, ptr %i.atj, align 8, !tbaa !16 ; 3 uses
  %i.bcs = and i64 %i.bcr, 7                      ; 3 uses
  %i.bct = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.bcs
  %i.bcu = load i8, ptr %i.bct, align 1, !tbaa !13 ; 2 uses
  %i.bcv = zext nneg i8 %i.bcu to i64
  %i.bcw = lshr i64 %i.bcr, %i.bcv                ; 3 uses
  store i64 %i.bcw, ptr %i.atj, align 8, !tbaa !16
  %i.bcx = sub i8 %i.bcq, %i.bcu                  ; 4 uses
  store i8 %i.bcx, ptr %i.ati, align 8, !tbaa !23
  %i.bcy = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.bcs
  %i.bcz = load i8, ptr %i.bcy, align 1, !tbaa !13
  %i.bda = icmp ne i64 %i.bcs, 4
  %i.bdb = and i64 %i.bcr, 3
  %.not502 = icmp eq i64 %i.bdb, 0
  br i1 %.not502, label %bb.ek, label %jpeg2000_bitbuf_get_bits_lsb.exit195

bb.ek:                                            ; preds = %vlc_decode_u_prefix.exit171
  %i.bdc = icmp ult i8 %i.bcx, 5
  br i1 %i.bdc, label %bb.el, label %vlc_decode_u_suffix.exit191.cont

bb.el:                                            ; preds = %bb.ek
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre929 = load i64, ptr %i.atj, align 8, !tbaa !16
  %.pre930 = load i8, ptr %i.ati, align 8, !tbaa !23
  br label %vlc_decode_u_suffix.exit191.cont

vlc_decode_u_suffix.exit191.cont:                 ; preds = %bb.ek, %bb.el
  %i.bdd = phi i8 [ %.pre930, %bb.el ], [ %i.bcx, %bb.ek ]
  %i.bde = phi i64 [ %.pre929, %bb.el ], [ %i.bcw, %bb.ek ] ; 2 uses
  %i.bdf = trunc i64 %i.bde to i32
  %i.bdg = and i32 %i.bdf, 31
  %i.bdh = zext i1 %i.bda to i64                  ; 2 uses
  %i.bdi = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.bdh
  %i.bdj = load i32, ptr %i.bdi, align 4, !tbaa !12 ; 2 uses
  %i.bdk = trunc i32 %i.bdj to i8
  %.mask503 = and i32 %i.bdj, 255
  %i.bdl = zext nneg i32 %.mask503 to i64
  %i.bdm = lshr i64 %i.bde, %i.bdl                ; 3 uses
  store i64 %i.bdm, ptr %i.atj, align 8, !tbaa !16
  %i.bdn = sub i8 %i.bdd, %i.bdk                  ; 4 uses
  store i8 %i.bdn, ptr %i.ati, align 8, !tbaa !23
  %i.bdo = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.bdh
  %i.bdp = load i32, ptr %i.bdo, align 4, !tbaa !12
  %i.bdq = and i32 %i.bdg, %i.bdp
  %.fr1251 = freeze i32 %i.bdq                    ; 4 uses
  %i.bdr = icmp ugt i32 %.fr1251, 27
  br i1 %i.bdr, label %bb.em, label %jpeg2000_bitbuf_get_bits_lsb.exit195

bb.em:                                            ; preds = %vlc_decode_u_suffix.exit191.cont
  %i.bds = icmp ult i8 %i.bdn, 4
  br i1 %i.bds, label %bb.en, label %jpeg2000_bitbuf_get_bits_lsb.exit195

bb.en:                                            ; preds = %bb.em
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre931 = load i64, ptr %i.atj, align 8, !tbaa !16
  %.pre932 = load i8, ptr %i.ati, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit195

jpeg2000_bitbuf_get_bits_lsb.exit195:             ; preds = %vlc_decode_u_prefix.exit171, %vlc_decode_u_suffix.exit191.cont, %bb.em, %bb.en
  %i.bdt = phi i8 [ 4, %bb.em ], [ 4, %bb.en ], [ 0, %vlc_decode_u_suffix.exit191.cont ], [ 0, %vlc_decode_u_prefix.exit171 ] ; 2 uses
  %.0.i19011481154 = phi i32 [ %.fr1251, %bb.em ], [ %.fr1251, %bb.en ], [ %.fr1251, %vlc_decode_u_suffix.exit191.cont ], [ 0, %vlc_decode_u_prefix.exit171 ]
  %i.bdu = phi i8 [ %i.bdn, %bb.em ], [ %.pre932, %bb.en ], [ %i.bdn, %vlc_decode_u_suffix.exit191.cont ], [ %i.bcx, %vlc_decode_u_prefix.exit171 ]
  %i.bdv = phi i64 [ %i.bdm, %bb.em ], [ %.pre931, %bb.en ], [ %i.bdm, %vlc_decode_u_suffix.exit191.cont ], [ %i.bcw, %vlc_decode_u_prefix.exit171 ] ; 2 uses
  %i.bdw = zext nneg i8 %i.bdt to i64             ; 2 uses
  %notmask.i194 = shl nsw i64 -1, %i.bdw
  %i.bdx = xor i64 %notmask.i194, -1
  %i.bdy = and i64 %i.bdv, %i.bdx
  %i.bdz = lshr i64 %i.bdv, %i.bdw
  store i64 %i.bdz, ptr %i.atj, align 8, !tbaa !16
  %i.bea = sub i8 %i.bdu, %i.bdt
  store i8 %i.bea, ptr %i.ati, align 8, !tbaa !23
  %i.beb = trunc nuw nsw i64 %i.bdy to i32
  %i.bec = zext i8 %i.bcz to i32
  %i.bed = add nuw nsw i32 %.0.i19011481154, %i.bec
  %i.bee = shl nuw nsw i32 %i.beb, 2
  %i.bef = and i32 %i.bee, 252
  %i.beg = add nuw nsw i32 %i.bed, %i.bef         ; 2 uses
  %spec.select492 = select i1 %i.ayu, i32 %i.beg, i32 0
  %spec.select493 = select i1 %i.ayu, i32 0, i32 %i.beg
  br label %jpeg2000_bitbuf_get_bits_lsb.exit195.cont

jpeg2000_bitbuf_get_bits_lsb.exit195.cont:        ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit195, %bb.eh, %jpeg2000_bitbuf_get_bits_lsb.exit199
  %.sroa.0386.2 = phi i32 [ %i.bci, %jpeg2000_bitbuf_get_bits_lsb.exit199 ], [ 0, %bb.eh ], [ %spec.select492, %jpeg2000_bitbuf_get_bits_lsb.exit195 ]
  %.sroa.18.0 = phi i32 [ %i.bcn, %jpeg2000_bitbuf_get_bits_lsb.exit199 ], [ 0, %bb.eh ], [ %spec.select493, %jpeg2000_bitbuf_get_bits_lsb.exit195 ]
  %i.beh = load i8, ptr %i.a, align 2, !tbaa !13  ; 2 uses
  %i.bei = icmp ult i8 %i.beh, 9
  br i1 %i.bei, label %switch.lookup, label %bb.eo

switch.lookup:                                    ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit195.cont
  %i.bej = zext nneg i8 %i.beh to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.ff_jpeg2000_decode_htj2k.4, i64 %i.bej
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16
  br label %bb.eo

bb.eo:                                            ; preds = %switch.lookup, %jpeg2000_bitbuf_get_bits_lsb.exit195.cont
  %.sroa.0414.0.i = phi i16 [ %switch.ext, %switch.lookup ], [ 1, %jpeg2000_bitbuf_get_bits_lsb.exit195.cont ]
  %i.bek = icmp ult i8 %i.ayc, 9
  br i1 %i.bek, label %switch.lookup1333, label %bb.ep

switch.lookup1333:                                ; preds = %bb.eo
  %i.bel = zext nneg i8 %i.ayc to i64
  %switch.gep1334 = getelementptr inbounds nuw i8, ptr @switch.table.ff_jpeg2000_decode_htj2k.4, i64 %i.bel
  %switch.load1335 = load i8, ptr %switch.gep1334, align 1
  %switch.ext1336 = zext i8 %switch.load1335 to i16
  br label %bb.ep

bb.ep:                                            ; preds = %switch.lookup1333, %bb.eo
  %.sroa.11.0.i = phi i16 [ %switch.ext1336, %switch.lookup1333 ], [ 1, %bb.eo ]
  %i.bem = load ptr, ptr %i.f, align 8, !tbaa !39 ; 16 uses
  %i.ben = getelementptr inbounds i8, ptr %i.bem, i64 %i.auc
  %i.beo = load i8, ptr %i.ben, align 1, !tbaa !13
  %i.bep = getelementptr inbounds i8, ptr %i.bem, i64 %i.awm
  %i.beq = load i8, ptr %i.bep, align 1, !tbaa !13
  %i.ber = getelementptr inbounds i8, ptr %i.bem, i64 %i.aug
  %i.bes = load i8, ptr %i.ber, align 1, !tbaa !13
  %i.bet = getelementptr inbounds i8, ptr %i.bem, i64 %i.awq
  %i.beu = load i8, ptr %i.bet, align 1, !tbaa !13
  %i.bev = icmp sgt i32 %i.atz, 0
  %i.bew = add nsw i32 %i.aua, -1
  %narrow508 = select i1 %i.bev, i32 %i.bew, i32 0
  %i.bex = zext i32 %narrow508 to i64
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bem, i64 %i.bex
  %i.bez = load i8, ptr %i.bey, align 1, !tbaa !13
  %i.bfa = icmp sgt i32 %i.awj, 0
  %i.bfb = add nsw i32 %i.awk, -1
  %narrow509 = select i1 %i.bfa, i32 %i.bfb, i32 0
  %i.bfc = zext i32 %narrow509 to i64
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bem, i64 %i.bfc
  %i.bfe = load i8, ptr %i.bfd, align 1, !tbaa !13
  %i.bff = sext i32 %i.aua to i64
  %i.bfg = getelementptr i8, ptr %i.bem, i64 %i.bff
  %i.bfh = getelementptr i8, ptr %i.bfg, i64 5
  %i.bfi = load i8, ptr %i.bfh, align 1, !tbaa !13
  %i.bfj = sext i32 %i.awk to i64
  %i.bfk = getelementptr i8, ptr %i.bem, i64 %i.bfj
  %i.bfl = getelementptr i8, ptr %i.bfk, i64 5
  %i.bfm = load i8, ptr %i.bfl, align 1, !tbaa !13
  %i.bfn = tail call i8 @llvm.umax.i8(i8 %i.beo, i8 %i.bes) ; 2 uses
  %i.bfo = tail call i8 @llvm.umax.i8(i8 %i.bfn, i8 %i.bfi)
  %.in745.i = select i1 %i.avj, i8 %i.bfo, i8 %i.bfn ; 2 uses
  %i.bfp = tail call i8 @llvm.umax.i8(i8 %.in745.i, i8 %i.bez)
  %i.bfq = select i1 %i.aup, i8 %i.bfp, i8 %.in745.i
  %i.bfr = tail call i8 @llvm.umax.i8(i8 %i.beq, i8 %i.beu) ; 2 uses
  %i.bfs = tail call i8 @llvm.umax.i8(i8 %i.bfr, i8 %i.bfm)
  %.in746.i = select i1 %i.axu, i8 %i.bfs, i8 %i.bfr ; 2 uses
  %i.bft = tail call i8 @llvm.umax.i8(i8 %.in746.i, i8 %i.bfe)
  %i.bfu = select i1 %i.awz, i8 %i.bft, i8 %.in746.i
  %i.bfv = zext i8 %i.bfq to i16
  %i.bfw = add nsw i16 %i.bfv, -1
  %i.bfx = mul nuw nsw i16 %i.bfw, %.sroa.0414.0.i
  %i.bfy = tail call i16 @llvm.smax.i16(i16 %i.bfx, i16 1)
  %i.bfz = zext i8 %i.bfu to i16
  %i.bga = add nsw i16 %i.bfz, -1
  %i.bgb = mul nuw nsw i16 %i.bga, %.sroa.11.0.i
  %i.bgc = tail call i16 @llvm.smax.i16(i16 %i.bgb, i16 1)
  %i.bgd = zext nneg i16 %i.bfy to i32
  %i.bge = add nuw nsw i32 %.sroa.0386.2, %i.bgd  ; 5 uses
  %i.bgf = zext nneg i16 %i.bgc to i32
  %i.bgg = add nuw nsw i32 %.sroa.18.0, %i.bgf    ; 5 uses
  %i.bgh = icmp sgt i32 %i.bge, %i.du
  %i.bgi = icmp sgt i32 %i.bgg, %i.du
  %or.cond755.i = select i1 %i.bgh, i1 true, i1 %i.bgi
  br i1 %or.cond755.i, label %jpeg2000_decode_ht_cleanup_segment.exit, label %.preheader525

.preheader525:                                    ; preds = %bb.ep
  %i.bgj = load i8, ptr %i.c, align 2, !tbaa !13
  %i.bgk = zext i8 %i.bgj to i32                  ; 4 uses
  %i.bgl = load i8, ptr %i.atk, align 1, !tbaa !13
  %i.bgm = zext i8 %i.bgl to i32                  ; 4 uses
  %i.bgn = load i8, ptr %i.avv, align 1, !tbaa !13
  %i.bgo = zext i8 %i.bgn to i32
  %i.bgp = mul nuw nsw i32 %i.bge, %i.bgo         ; 2 uses
  %i.bgq = and i32 %i.bgk, 1                      ; 2 uses
  %i.bgr = sub nsw i32 %i.bgp, %i.bgq             ; 4 uses
  %i.bgs = load i8, ptr %i.ayg, align 1, !tbaa !13
  %i.bgt = zext i8 %i.bgs to i32
  %i.bgu = mul nuw nsw i32 %i.bgg, %i.bgt         ; 2 uses
  %i.bgv = and i32 %i.bgm, 1                      ; 2 uses
  %i.bgw = sub nsw i32 %i.bgu, %i.bgv             ; 4 uses
  %i.bgx = load i8, ptr %i.avz, align 1, !tbaa !13
  %i.bgy = zext i8 %i.bgx to i32
  %i.bgz = mul nuw nsw i32 %i.bge, %i.bgy
  %32 = shl i32 %i.bgk, 30
  %33 = ashr i32 %32, 31
  %34 = add nsw i32 %33, %i.bgz                   ; 5 uses
  %i.bha = load i8, ptr %i.ayk, align 1, !tbaa !13
  %i.bhb = zext i8 %i.bha to i32
  %i.bhc = mul nuw nsw i32 %i.bgg, %i.bhb
  %35 = shl i32 %i.bgm, 30
  %36 = ashr i32 %35, 31
  %37 = add nsw i32 %36, %i.bhc                   ; 5 uses
  %i.bhd = load i8, ptr %i.awd, align 1, !tbaa !13
  %i.bhe = zext i8 %i.bhd to i32
  %i.bhf = mul nuw nsw i32 %i.bge, %i.bhe
  %38 = shl i32 %i.bgk, 29
  %39 = ashr i32 %38, 31
  %40 = add nsw i32 %39, %i.bhf                   ; 5 uses
  %i.bhg = load i8, ptr %i.ayo, align 1, !tbaa !13
  %i.bhh = zext i8 %i.bhg to i32
  %i.bhi = mul nuw nsw i32 %i.bgg, %i.bhh
  %41 = shl i32 %i.bgm, 29
  %42 = ashr i32 %41, 31
  %43 = add nsw i32 %42, %i.bhi                   ; 5 uses
  %i.bhj = load i8, ptr %i.awh, align 1, !tbaa !13
  %i.bhk = zext i8 %i.bhj to i32
  %i.bhl = mul nuw nsw i32 %i.bge, %i.bhk
  %44 = shl i32 %i.bgk, 28
  %45 = ashr i32 %44, 31
  %46 = add nsw i32 %45, %i.bhl                   ; 5 uses
  %i.bhm = load i8, ptr %i.ays, align 1, !tbaa !13
  %i.bhn = zext i8 %i.bhm to i32
  %i.bho = mul nuw nsw i32 %i.bgg, %i.bhn
  %47 = shl i32 %i.bgm, 28
  %48 = ashr i32 %47, 31
  %49 = add nsw i32 %48, %i.bho                   ; 5 uses
  %i.bhp = load ptr, ptr %i.g, align 8, !tbaa !37 ; 8 uses
  %i.bhq = load i8, ptr %i.d, align 2, !tbaa !13
  %i.bhr = zext i8 %i.bhq to i32                  ; 4 uses
  %i.bhs = and i32 %i.bhr, 1
  %i.bht = icmp sgt i32 %i.bgr, 0
  br i1 %i.bht, label %bb.eq, label %jpeg2000_decode_mag_sgn.exit256

bb.eq:                                            ; preds = %.preheader525
  %i.bhu = trunc i32 %i.bgr to i8                 ; 2 uses
  %.not.i271 = icmp ule i8 %.sroa.52.3697, %i.bhu
  %i.bhv = icmp ult i8 %.sroa.52.3697, 32
  %or.cond487 = and i1 %i.bhv, %.not.i271
  br i1 %or.cond487, label %.lr.ph.i303, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit273

.lr.ph.i303:                                      ; preds = %bb.eq, %bb.es
  %.sroa.0320.35 = phi i32 [ %.sroa.0320.36, %bb.es ], [ %.sroa.0320.3693, %bb.eq ]
  %.sroa.38.35 = phi i32 [ %.sroa.38.36, %bb.es ], [ %.sroa.38.3694, %bb.eq ]
  %i.bhw = phi i64 [ %i.bin, %bb.es ], [ %.sroa.84339.3695, %bb.eq ]
  %i.bhx = phi i32 [ %i.bii, %bb.es ], [ %.sroa.0320.3693, %bb.eq ] ; 4 uses
  %i.bhy = phi i32 [ %i.bij, %bb.es ], [ %.sroa.38.3694, %bb.eq ] ; 2 uses
  %i.bhz = phi i8 [ %i.bip, %bb.es ], [ %.sroa.52.3697, %bb.eq ] ; 2 uses
  %i.bia = icmp eq i32 %i.bhy, 255
  %i.bib = icmp ult i32 %i.bhx, %i.cl
  br i1 %i.bib, label %bb.er, label %bb.es

bb.er:                                            ; preds = %.lr.ph.i303
  %i.bic = sext i32 %i.bhx to i64
  %i.bid = getelementptr inbounds i8, ptr %i.bc, i64 %i.bic
  %i.bie = load i8, ptr %i.bid, align 1, !tbaa !13 ; 2 uses
  %i.bif = zext i8 %i.bie to i32                  ; 2 uses
  %i.big = add nuw nsw i32 %i.bhx, 1              ; 2 uses
  %i.bih = zext i8 %i.bie to i64
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %.lr.ph.i303
  %.sroa.0320.36 = phi i32 [ %i.big, %bb.er ], [ %.sroa.0320.35, %.lr.ph.i303 ] ; 2 uses
  %.sroa.38.36 = phi i32 [ %i.bif, %bb.er ], [ %.sroa.38.35, %.lr.ph.i303 ] ; 2 uses
  %i.bii = phi i32 [ %i.big, %bb.er ], [ %i.bhx, %.lr.ph.i303 ]
  %i.bij = phi i32 [ %i.bif, %bb.er ], [ %i.bhy, %.lr.ph.i303 ]
  %i.bik = phi i64 [ %i.bih, %bb.er ], [ 255, %.lr.ph.i303 ]
  %i.bil = zext nneg i8 %i.bhz to i64
  %i.bim = shl nuw nsw i64 %i.bik, %i.bil
  %i.bin = or i64 %i.bim, %i.bhw                  ; 2 uses
  %i.bio = select i1 %i.bia, i8 7, i8 8
  %i.bip = add nuw nsw i8 %i.bio, %i.bhz          ; 3 uses
  %i.biq = icmp samesign ult i8 %i.bip, 32
  br i1 %i.biq, label %.lr.ph.i303, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit273, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit273:     ; preds = %bb.es, %bb.eq
  %.sroa.0320.20 = phi i32 [ %.sroa.0320.3693, %bb.eq ], [ %.sroa.0320.36, %bb.es ]
  %.sroa.38.20 = phi i32 [ %.sroa.38.3694, %bb.eq ], [ %.sroa.38.36, %bb.es ]
  %.sroa.84339.20 = phi i64 [ %.sroa.84339.3695, %bb.eq ], [ %i.bin, %bb.es ] ; 2 uses
  %.sroa.52.20 = phi i8 [ %.sroa.52.3697, %bb.eq ], [ %i.bip, %bb.es ]
  %.mask511 = and i32 %i.bgr, 255
  %i.bir = zext nneg i32 %.mask511 to i64         ; 2 uses
  %notmask.i272 = shl nsw i64 -1, %i.bir
  %i.bis = xor i64 %notmask.i272, -1
  %i.bit = and i64 %.sroa.84339.20, %i.bis
  %i.biu = lshr i64 %.sroa.84339.20, %i.bir
  %i.biv = sub i8 %.sroa.52.20, %i.bhu
  %i.biw = trunc i64 %i.bit to i32
  %i.bix = shl nuw i32 %i.bhs, %i.bgr
  %i.biy = add nsw i32 %i.bix, %i.biw
  br label %jpeg2000_decode_mag_sgn.exit256

jpeg2000_decode_mag_sgn.exit256:                  ; preds = %.preheader525, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273
  %.sroa.0320.13 = phi i32 [ %.sroa.0320.20, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273 ], [ %.sroa.0320.3693, %.preheader525 ] ; 4 uses
  %.sroa.38.13 = phi i32 [ %.sroa.38.20, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273 ], [ %.sroa.38.3694, %.preheader525 ] ; 4 uses
  %.sroa.84339.13 = phi i64 [ %i.biu, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273 ], [ %.sroa.84339.3695, %.preheader525 ] ; 3 uses
  %.sroa.52.13 = phi i8 [ %i.biv, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273 ], [ %.sroa.52.3697, %.preheader525 ] ; 5 uses
  %.0.i255 = phi i32 [ %i.biy, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273 ], [ 0, %.preheader525 ] ; 3 uses
  %.not.i232 = icmp eq i32 %i.bgp, %i.bgq
  br i1 %.not.i232, label %bb.et, label %ff_clz_c.exit.i236

ff_clz_c.exit.i236:                               ; preds = %jpeg2000_decode_mag_sgn.exit256
  %i.biz = lshr i32 %.0.i255, 1
  %i.bja = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.biz, i1 false)
  %i.bjb = trunc nuw nsw i32 %i.bja to i8
  %i.bjc = sub nuw nsw i8 33, %i.bjb
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.bem, i64 %i.avt
  store i8 %i.bjc, ptr %i.bjd, align 1, !tbaa !13
  %i.bje = ashr i32 %.0.i255, 1
  %i.bjf = add nsw i32 %i.bje, 1
  %i.bjg = getelementptr inbounds nuw [4 x i8], ptr %i.bhp, i64 %i.avt
  %i.bjh = shl i32 %i.bjf, %i.atl
  %i.bji = shl i32 %.0.i255, 31
  %i.bjj = or i32 %i.bji, %i.bjh
  %i.bjk = or i32 %i.bjj, %i.atn
  store i32 %i.bjk, ptr %i.bjg, align 4, !tbaa !12
  br label %bb.et

bb.et:                                            ; preds = %ff_clz_c.exit.i236, %jpeg2000_decode_mag_sgn.exit256
  %i.bjl = lshr i32 %i.bhr, 1
  %i.bjm = and i32 %i.bjl, 1
  %i.bjn = icmp sgt i32 %34, 0
  br i1 %i.bjn, label %bb.eu, label %jpeg2000_decode_mag_sgn.exit256.1

bb.eu:                                            ; preds = %bb.et
  %i.bjo = trunc i32 %34 to i8                    ; 2 uses
  %.not.i271.1 = icmp ule i8 %.sroa.52.13, %i.bjo
  %i.bjp = icmp ult i8 %.sroa.52.13, 32
  %or.cond487.1 = and i1 %i.bjp, %.not.i271.1
  br i1 %or.cond487.1, label %.lr.ph.i303.1, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.1

.lr.ph.i303.1:                                    ; preds = %bb.eu, %bb.ew
  %.sroa.0320.35.1 = phi i32 [ %.sroa.0320.36.1, %bb.ew ], [ %.sroa.0320.13, %bb.eu ]
  %.sroa.38.35.1 = phi i32 [ %.sroa.38.36.1, %bb.ew ], [ %.sroa.38.13, %bb.eu ]
  %i.bjq = phi i64 [ %i.bkh, %bb.ew ], [ %.sroa.84339.13, %bb.eu ]
  %i.bjr = phi i32 [ %i.bkc, %bb.ew ], [ %.sroa.0320.13, %bb.eu ] ; 4 uses
  %i.bjs = phi i32 [ %i.bkd, %bb.ew ], [ %.sroa.38.13, %bb.eu ] ; 2 uses
  %i.bjt = phi i8 [ %i.bkj, %bb.ew ], [ %.sroa.52.13, %bb.eu ] ; 2 uses
  %i.bju = icmp eq i32 %i.bjs, 255
  %i.bjv = icmp ult i32 %i.bjr, %i.cl
  br i1 %i.bjv, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %.lr.ph.i303.1
  %i.bjw = sext i32 %i.bjr to i64
  %i.bjx = getelementptr inbounds i8, ptr %i.bc, i64 %i.bjw
  %i.bjy = load i8, ptr %i.bjx, align 1, !tbaa !13 ; 2 uses
  %i.bjz = zext i8 %i.bjy to i32                  ; 2 uses
  %i.bka = add nuw nsw i32 %i.bjr, 1              ; 2 uses
  %i.bkb = zext i8 %i.bjy to i64
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %.lr.ph.i303.1
  %.sroa.0320.36.1 = phi i32 [ %i.bka, %bb.ev ], [ %.sroa.0320.35.1, %.lr.ph.i303.1 ] ; 2 uses
  %.sroa.38.36.1 = phi i32 [ %i.bjz, %bb.ev ], [ %.sroa.38.35.1, %.lr.ph.i303.1 ] ; 2 uses
  %i.bkc = phi i32 [ %i.bka, %bb.ev ], [ %i.bjr, %.lr.ph.i303.1 ]
  %i.bkd = phi i32 [ %i.bjz, %bb.ev ], [ %i.bjs, %.lr.ph.i303.1 ]
  %i.bke = phi i64 [ %i.bkb, %bb.ev ], [ 255, %.lr.ph.i303.1 ]
  %i.bkf = zext nneg i8 %i.bjt to i64
  %i.bkg = shl nuw nsw i64 %i.bke, %i.bkf
  %i.bkh = or i64 %i.bkg, %i.bjq                  ; 2 uses
  %i.bki = select i1 %i.bju, i8 7, i8 8
  %i.bkj = add nuw nsw i8 %i.bki, %i.bjt          ; 3 uses
  %i.bkk = icmp samesign ult i8 %i.bkj, 32
  br i1 %i.bkk, label %.lr.ph.i303.1, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.1, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit273.1:   ; preds = %bb.ew, %bb.eu
  %.sroa.0320.20.1 = phi i32 [ %.sroa.0320.13, %bb.eu ], [ %.sroa.0320.36.1, %bb.ew ]
  %.sroa.38.20.1 = phi i32 [ %.sroa.38.13, %bb.eu ], [ %.sroa.38.36.1, %bb.ew ]
  %.sroa.84339.20.1 = phi i64 [ %.sroa.84339.13, %bb.eu ], [ %i.bkh, %bb.ew ] ; 2 uses
  %.sroa.52.20.1 = phi i8 [ %.sroa.52.13, %bb.eu ], [ %i.bkj, %bb.ew ]
  %.mask511.1 = and i32 %34, 255
  %i.bkl = zext nneg i32 %.mask511.1 to i64       ; 2 uses
  %notmask.i272.1 = shl nsw i64 -1, %i.bkl
  %i.bkm = xor i64 %notmask.i272.1, -1
  %i.bkn = and i64 %.sroa.84339.20.1, %i.bkm
  %i.bko = lshr i64 %.sroa.84339.20.1, %i.bkl
  %i.bkp = sub i8 %.sroa.52.20.1, %i.bjo
  %i.bkq = trunc i64 %i.bkn to i32
  %i.bkr = shl nuw i32 %i.bjm, %34
  %i.bks = add nsw i32 %i.bkr, %i.bkq
  br label %jpeg2000_decode_mag_sgn.exit256.1

jpeg2000_decode_mag_sgn.exit256.1:                ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.1, %bb.et
  %.sroa.0320.13.1 = phi i32 [ %.sroa.0320.20.1, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.1 ], [ %.sroa.0320.13, %bb.et ] ; 4 uses
  %.sroa.38.13.1 = phi i32 [ %.sroa.38.20.1, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.1 ], [ %.sroa.38.13, %bb.et ] ; 4 uses
  %.sroa.84339.13.1 = phi i64 [ %i.bko, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.1 ], [ %.sroa.84339.13, %bb.et ] ; 3 uses
  %.sroa.52.13.1 = phi i8 [ %i.bkp, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.1 ], [ %.sroa.52.13, %bb.et ] ; 5 uses
  %.0.i255.1 = phi i32 [ %i.bks, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.1 ], [ 0, %bb.et ] ; 3 uses
  %.not.i232.1 = icmp eq i32 %34, 0
  br i1 %.not.i232.1, label %bb.ex, label %ff_clz_c.exit.i236.1

ff_clz_c.exit.i236.1:                             ; preds = %jpeg2000_decode_mag_sgn.exit256.1
  %i.bkt = lshr i32 %.0.i255.1, 1
  %i.bku = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.bkt, i1 false)
  %i.bkv = trunc nuw nsw i32 %i.bku to i8
  %i.bkw = sub nuw nsw i8 33, %i.bkv
  %i.bkx = getelementptr inbounds nuw i8, ptr %i.bem, i64 %i.avy
  store i8 %i.bkw, ptr %i.bkx, align 1, !tbaa !13
  %i.bky = ashr i32 %.0.i255.1, 1
  %i.bkz = add nsw i32 %i.bky, 1
  %i.bla = getelementptr inbounds nuw [4 x i8], ptr %i.bhp, i64 %i.avy
  %i.blb = shl i32 %i.bkz, %i.atl
  %i.blc = shl i32 %.0.i255.1, 31
  %i.bld = or i32 %i.blc, %i.blb
  %i.ble = or i32 %i.bld, %i.atn
  store i32 %i.ble, ptr %i.bla, align 4, !tbaa !12
  br label %bb.ex

bb.ex:                                            ; preds = %ff_clz_c.exit.i236.1, %jpeg2000_decode_mag_sgn.exit256.1
  %i.blf = lshr i32 %i.bhr, 2
  %i.blg = and i32 %i.blf, 1
  %i.blh = icmp sgt i32 %40, 0
  br i1 %i.blh, label %bb.ey, label %jpeg2000_decode_mag_sgn.exit256.2

bb.ey:                                            ; preds = %bb.ex
  %i.bli = trunc i32 %40 to i8                    ; 2 uses
  %.not.i271.2 = icmp ule i8 %.sroa.52.13.1, %i.bli
  %i.blj = icmp ult i8 %.sroa.52.13.1, 32
  %or.cond487.2 = and i1 %i.blj, %.not.i271.2
  br i1 %or.cond487.2, label %.lr.ph.i303.2, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.2

.lr.ph.i303.2:                                    ; preds = %bb.ey, %bb.fa
  %.sroa.0320.35.2 = phi i32 [ %.sroa.0320.36.2, %bb.fa ], [ %.sroa.0320.13.1, %bb.ey ]
  %.sroa.38.35.2 = phi i32 [ %.sroa.38.36.2, %bb.fa ], [ %.sroa.38.13.1, %bb.ey ]
  %i.blk = phi i64 [ %i.bmb, %bb.fa ], [ %.sroa.84339.13.1, %bb.ey ]
  %i.bll = phi i32 [ %i.blw, %bb.fa ], [ %.sroa.0320.13.1, %bb.ey ] ; 4 uses
  %i.blm = phi i32 [ %i.blx, %bb.fa ], [ %.sroa.38.13.1, %bb.ey ] ; 2 uses
  %i.bln = phi i8 [ %i.bmd, %bb.fa ], [ %.sroa.52.13.1, %bb.ey ] ; 2 uses
  %i.blo = icmp eq i32 %i.blm, 255
  %i.blp = icmp ult i32 %i.bll, %i.cl
  br i1 %i.blp, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %.lr.ph.i303.2
  %i.blq = sext i32 %i.bll to i64
  %i.blr = getelementptr inbounds i8, ptr %i.bc, i64 %i.blq
  %i.bls = load i8, ptr %i.blr, align 1, !tbaa !13 ; 2 uses
  %i.blt = zext i8 %i.bls to i32                  ; 2 uses
  %i.blu = add nuw nsw i32 %i.bll, 1              ; 2 uses
  %i.blv = zext i8 %i.bls to i64
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %.lr.ph.i303.2
  %.sroa.0320.36.2 = phi i32 [ %i.blu, %bb.ez ], [ %.sroa.0320.35.2, %.lr.ph.i303.2 ] ; 2 uses
  %.sroa.38.36.2 = phi i32 [ %i.blt, %bb.ez ], [ %.sroa.38.35.2, %.lr.ph.i303.2 ] ; 2 uses
  %i.blw = phi i32 [ %i.blu, %bb.ez ], [ %i.bll, %.lr.ph.i303.2 ]
  %i.blx = phi i32 [ %i.blt, %bb.ez ], [ %i.blm, %.lr.ph.i303.2 ]
  %i.bly = phi i64 [ %i.blv, %bb.ez ], [ 255, %.lr.ph.i303.2 ]
  %i.blz = zext nneg i8 %i.bln to i64
  %i.bma = shl nuw nsw i64 %i.bly, %i.blz
  %i.bmb = or i64 %i.bma, %i.blk                  ; 2 uses
  %i.bmc = select i1 %i.blo, i8 7, i8 8
  %i.bmd = add nuw nsw i8 %i.bmc, %i.bln          ; 3 uses
  %i.bme = icmp samesign ult i8 %i.bmd, 32
  br i1 %i.bme, label %.lr.ph.i303.2, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.2, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit273.2:   ; preds = %bb.fa, %bb.ey
  %.sroa.0320.20.2 = phi i32 [ %.sroa.0320.13.1, %bb.ey ], [ %.sroa.0320.36.2, %bb.fa ]
  %.sroa.38.20.2 = phi i32 [ %.sroa.38.13.1, %bb.ey ], [ %.sroa.38.36.2, %bb.fa ]
  %.sroa.84339.20.2 = phi i64 [ %.sroa.84339.13.1, %bb.ey ], [ %i.bmb, %bb.fa ] ; 2 uses
  %.sroa.52.20.2 = phi i8 [ %.sroa.52.13.1, %bb.ey ], [ %i.bmd, %bb.fa ]
  %.mask511.2 = and i32 %40, 255
  %i.bmf = zext nneg i32 %.mask511.2 to i64       ; 2 uses
  %notmask.i272.2 = shl nsw i64 -1, %i.bmf
  %i.bmg = xor i64 %notmask.i272.2, -1
  %i.bmh = and i64 %.sroa.84339.20.2, %i.bmg
  %i.bmi = lshr i64 %.sroa.84339.20.2, %i.bmf
  %i.bmj = sub i8 %.sroa.52.20.2, %i.bli
  %i.bmk = trunc i64 %i.bmh to i32
  %i.bml = shl nuw i32 %i.blg, %40
  %i.bmm = add nsw i32 %i.bml, %i.bmk
  br label %jpeg2000_decode_mag_sgn.exit256.2

jpeg2000_decode_mag_sgn.exit256.2:                ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.2, %bb.ex
  %.sroa.0320.13.2 = phi i32 [ %.sroa.0320.20.2, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.2 ], [ %.sroa.0320.13.1, %bb.ex ] ; 4 uses
  %.sroa.38.13.2 = phi i32 [ %.sroa.38.20.2, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.2 ], [ %.sroa.38.13.1, %bb.ex ] ; 4 uses
  %.sroa.84339.13.2 = phi i64 [ %i.bmi, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.2 ], [ %.sroa.84339.13.1, %bb.ex ] ; 3 uses
  %.sroa.52.13.2 = phi i8 [ %i.bmj, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.2 ], [ %.sroa.52.13.1, %bb.ex ] ; 5 uses
  %.0.i255.2 = phi i32 [ %i.bmm, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.2 ], [ 0, %bb.ex ] ; 3 uses
  %.not.i232.2 = icmp eq i32 %40, 0
  br i1 %.not.i232.2, label %bb.fb, label %ff_clz_c.exit.i236.2

ff_clz_c.exit.i236.2:                             ; preds = %jpeg2000_decode_mag_sgn.exit256.2
  %i.bmn = lshr i32 %.0.i255.2, 1
  %i.bmo = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.bmn, i1 false)
  %i.bmp = trunc nuw nsw i32 %i.bmo to i8
  %i.bmq = sub nuw nsw i8 33, %i.bmp
  %i.bmr = getelementptr inbounds nuw i8, ptr %i.bem, i64 %i.awc
  store i8 %i.bmq, ptr %i.bmr, align 1, !tbaa !13
  %i.bms = ashr i32 %.0.i255.2, 1
  %i.bmt = add nsw i32 %i.bms, 1
  %i.bmu = getelementptr inbounds nuw [4 x i8], ptr %i.bhp, i64 %i.awc
  %i.bmv = shl i32 %i.bmt, %i.atl
  %i.bmw = shl i32 %.0.i255.2, 31
  %i.bmx = or i32 %i.bmw, %i.bmv
  %i.bmy = or i32 %i.bmx, %i.atn
  store i32 %i.bmy, ptr %i.bmu, align 4, !tbaa !12
  br label %bb.fb

bb.fb:                                            ; preds = %ff_clz_c.exit.i236.2, %jpeg2000_decode_mag_sgn.exit256.2
  %i.bmz = lshr i32 %i.bhr, 3
  %i.bna = and i32 %i.bmz, 1
  %i.bnb = icmp sgt i32 %46, 0
  br i1 %i.bnb, label %bb.fc, label %jpeg2000_decode_mag_sgn.exit256.3

bb.fc:                                            ; preds = %bb.fb
  %i.bnc = trunc i32 %46 to i8                    ; 2 uses
  %.not.i271.3 = icmp ule i8 %.sroa.52.13.2, %i.bnc
  %i.bnd = icmp ult i8 %.sroa.52.13.2, 32
  %or.cond487.3 = and i1 %i.bnd, %.not.i271.3
  br i1 %or.cond487.3, label %.lr.ph.i303.3, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.3

.lr.ph.i303.3:                                    ; preds = %bb.fc, %bb.fe
  %.sroa.0320.35.3 = phi i32 [ %.sroa.0320.36.3, %bb.fe ], [ %.sroa.0320.13.2, %bb.fc ]
  %.sroa.38.35.3 = phi i32 [ %.sroa.38.36.3, %bb.fe ], [ %.sroa.38.13.2, %bb.fc ]
  %i.bne = phi i64 [ %i.bnv, %bb.fe ], [ %.sroa.84339.13.2, %bb.fc ]
  %i.bnf = phi i32 [ %i.bnq, %bb.fe ], [ %.sroa.0320.13.2, %bb.fc ] ; 4 uses
  %i.bng = phi i32 [ %i.bnr, %bb.fe ], [ %.sroa.38.13.2, %bb.fc ] ; 2 uses
  %i.bnh = phi i8 [ %i.bnx, %bb.fe ], [ %.sroa.52.13.2, %bb.fc ] ; 2 uses
  %i.bni = icmp eq i32 %i.bng, 255
  %i.bnj = icmp ult i32 %i.bnf, %i.cl
  br i1 %i.bnj, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %.lr.ph.i303.3
  %i.bnk = sext i32 %i.bnf to i64
  %i.bnl = getelementptr inbounds i8, ptr %i.bc, i64 %i.bnk
  %i.bnm = load i8, ptr %i.bnl, align 1, !tbaa !13 ; 2 uses
  %i.bnn = zext i8 %i.bnm to i32                  ; 2 uses
  %i.bno = add nuw nsw i32 %i.bnf, 1              ; 2 uses
  %i.bnp = zext i8 %i.bnm to i64
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %.lr.ph.i303.3
  %.sroa.0320.36.3 = phi i32 [ %i.bno, %bb.fd ], [ %.sroa.0320.35.3, %.lr.ph.i303.3 ] ; 2 uses
  %.sroa.38.36.3 = phi i32 [ %i.bnn, %bb.fd ], [ %.sroa.38.35.3, %.lr.ph.i303.3 ] ; 2 uses
  %i.bnq = phi i32 [ %i.bno, %bb.fd ], [ %i.bnf, %.lr.ph.i303.3 ]
  %i.bnr = phi i32 [ %i.bnn, %bb.fd ], [ %i.bng, %.lr.ph.i303.3 ]
  %i.bns = phi i64 [ %i.bnp, %bb.fd ], [ 255, %.lr.ph.i303.3 ]
  %i.bnt = zext nneg i8 %i.bnh to i64
  %i.bnu = shl nuw nsw i64 %i.bns, %i.bnt
  %i.bnv = or i64 %i.bnu, %i.bne                  ; 2 uses
  %i.bnw = select i1 %i.bni, i8 7, i8 8
  %i.bnx = add nuw nsw i8 %i.bnw, %i.bnh          ; 3 uses
  %i.bny = icmp samesign ult i8 %i.bnx, 32
  br i1 %i.bny, label %.lr.ph.i303.3, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.3, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit273.3:   ; preds = %bb.fe, %bb.fc
  %.sroa.0320.20.3 = phi i32 [ %.sroa.0320.13.2, %bb.fc ], [ %.sroa.0320.36.3, %bb.fe ]
  %.sroa.38.20.3 = phi i32 [ %.sroa.38.13.2, %bb.fc ], [ %.sroa.38.36.3, %bb.fe ]
  %.sroa.84339.20.3 = phi i64 [ %.sroa.84339.13.2, %bb.fc ], [ %i.bnv, %bb.fe ] ; 2 uses
  %.sroa.52.20.3 = phi i8 [ %.sroa.52.13.2, %bb.fc ], [ %i.bnx, %bb.fe ]
  %.mask511.3 = and i32 %46, 255
  %i.bnz = zext nneg i32 %.mask511.3 to i64       ; 2 uses
  %notmask.i272.3 = shl nsw i64 -1, %i.bnz
  %i.boa = xor i64 %notmask.i272.3, -1
  %i.bob = and i64 %.sroa.84339.20.3, %i.boa
  %i.boc = lshr i64 %.sroa.84339.20.3, %i.bnz
  %i.bod = sub i8 %.sroa.52.20.3, %i.bnc
  %i.boe = trunc i64 %i.bob to i32
  %i.bof = shl nuw i32 %i.bna, %46
  %i.bog = add nsw i32 %i.bof, %i.boe
  br label %jpeg2000_decode_mag_sgn.exit256.3

jpeg2000_decode_mag_sgn.exit256.3:                ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.3, %bb.fb
  %.sroa.0320.13.3 = phi i32 [ %.sroa.0320.20.3, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.3 ], [ %.sroa.0320.13.2, %bb.fb ] ; 4 uses
  %.sroa.38.13.3 = phi i32 [ %.sroa.38.20.3, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.3 ], [ %.sroa.38.13.2, %bb.fb ] ; 4 uses
  %.sroa.84339.13.3 = phi i64 [ %i.boc, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.3 ], [ %.sroa.84339.13.2, %bb.fb ] ; 3 uses
  %.sroa.52.13.3 = phi i8 [ %i.bod, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.3 ], [ %.sroa.52.13.2, %bb.fb ] ; 5 uses
  %.0.i255.3 = phi i32 [ %i.bog, %jpeg2000_bitbuf_get_bits_lsb_forward.exit273.3 ], [ 0, %bb.fb ] ; 3 uses
  %.not.i232.3 = icmp eq i32 %46, 0
  br i1 %.not.i232.3, label %recover_mag_sgn.exit237, label %ff_clz_c.exit.i236.3

ff_clz_c.exit.i236.3:                             ; preds = %jpeg2000_decode_mag_sgn.exit256.3
  %i.boh = lshr i32 %.0.i255.3, 1
  %i.boi = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.boh, i1 false)
  %i.boj = trunc nuw nsw i32 %i.boi to i8
  %i.bok = sub nuw nsw i8 33, %i.boj
  %i.bol = getelementptr inbounds nuw i8, ptr %i.bem, i64 %i.awg
  store i8 %i.bok, ptr %i.bol, align 1, !tbaa !13
  %i.bom = ashr i32 %.0.i255.3, 1
  %i.bon = add nsw i32 %i.bom, 1
  %i.boo = getelementptr inbounds nuw [4 x i8], ptr %i.bhp, i64 %i.awg
  %i.bop = shl i32 %i.bon, %i.atl
  %i.boq = shl i32 %.0.i255.3, 31
  %i.bor = or i32 %i.boq, %i.bop
  %i.bos = or i32 %i.bor, %i.atn
  store i32 %i.bos, ptr %i.boo, align 4, !tbaa !12
  br label %recover_mag_sgn.exit237

recover_mag_sgn.exit237:                          ; preds = %ff_clz_c.exit.i236.3, %jpeg2000_decode_mag_sgn.exit256.3
  %i.bot = load i8, ptr %i.ato, align 1, !tbaa !13
  %i.bou = zext i8 %i.bot to i32                  ; 4 uses
  %i.bov = shl nuw nsw i32 %i.aty, 2
  %i.bow = and i32 %i.bov, 262140
  %i.box = zext nneg i32 %i.bow to i64            ; 5 uses
  %i.boy = and i32 %i.bou, 1
  %i.boz = icmp sgt i32 %i.bgw, 0
  br i1 %i.boz, label %bb.ff, label %jpeg2000_decode_mag_sgn.exit258

bb.ff:                                            ; preds = %recover_mag_sgn.exit237
  %i.bpa = trunc i32 %i.bgw to i8                 ; 2 uses
  %.not.i268 = icmp ule i8 %.sroa.52.13.3, %i.bpa
  %i.bpb = icmp ult i8 %.sroa.52.13.3, 32
  %or.cond488 = and i1 %i.bpb, %.not.i268
  br i1 %or.cond488, label %.lr.ph.i309, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit270

.lr.ph.i309:                                      ; preds = %bb.ff, %bb.fh
  %.sroa.0320.38 = phi i32 [ %.sroa.0320.39, %bb.fh ], [ %.sroa.0320.13.3, %bb.ff ]
  %.sroa.38.38 = phi i32 [ %.sroa.38.39, %bb.fh ], [ %.sroa.38.13.3, %bb.ff ]
  %i.bpc = phi i64 [ %i.bpt, %bb.fh ], [ %.sroa.84339.13.3, %bb.ff ]
  %i.bpd = phi i32 [ %i.bpo, %bb.fh ], [ %.sroa.0320.13.3, %bb.ff ] ; 4 uses
  %i.bpe = phi i32 [ %i.bpp, %bb.fh ], [ %.sroa.38.13.3, %bb.ff ] ; 2 uses
  %i.bpf = phi i8 [ %i.bpv, %bb.fh ], [ %.sroa.52.13.3, %bb.ff ] ; 2 uses
  %i.bpg = icmp eq i32 %i.bpe, 255
  %i.bph = icmp ult i32 %i.bpd, %i.cl
  br i1 %i.bph, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %.lr.ph.i309
  %i.bpi = sext i32 %i.bpd to i64
  %i.bpj = getelementptr inbounds i8, ptr %i.bc, i64 %i.bpi
  %i.bpk = load i8, ptr %i.bpj, align 1, !tbaa !13 ; 2 uses
  %i.bpl = zext i8 %i.bpk to i32                  ; 2 uses
  %i.bpm = add nuw nsw i32 %i.bpd, 1              ; 2 uses
  %i.bpn = zext i8 %i.bpk to i64
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %.lr.ph.i309
  %.sroa.0320.39 = phi i32 [ %i.bpm, %bb.fg ], [ %.sroa.0320.38, %.lr.ph.i309 ] ; 2 uses
  %.sroa.38.39 = phi i32 [ %i.bpl, %bb.fg ], [ %.sroa.38.38, %.lr.ph.i309 ] ; 2 uses
  %i.bpo = phi i32 [ %i.bpm, %bb.fg ], [ %i.bpd, %.lr.ph.i309 ]
  %i.bpp = phi i32 [ %i.bpl, %bb.fg ], [ %i.bpe, %.lr.ph.i309 ]
  %i.bpq = phi i64 [ %i.bpn, %bb.fg ], [ 255, %.lr.ph.i309 ]
  %i.bpr = zext nneg i8 %i.bpf to i64
  %i.bps = shl nuw nsw i64 %i.bpq, %i.bpr
  %i.bpt = or i64 %i.bps, %i.bpc                  ; 2 uses
  %i.bpu = select i1 %i.bpg, i8 7, i8 8
  %i.bpv = add nuw nsw i8 %i.bpu, %i.bpf          ; 3 uses
  %i.bpw = icmp samesign ult i8 %i.bpv, 32
  br i1 %i.bpw, label %.lr.ph.i309, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit270, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit270:     ; preds = %bb.fh, %bb.ff
  %.sroa.0320.19 = phi i32 [ %.sroa.0320.13.3, %bb.ff ], [ %.sroa.0320.39, %bb.fh ]
  %.sroa.38.19 = phi i32 [ %.sroa.38.13.3, %bb.ff ], [ %.sroa.38.39, %bb.fh ]
  %.sroa.84339.19 = phi i64 [ %.sroa.84339.13.3, %bb.ff ], [ %i.bpt, %bb.fh ] ; 2 uses
  %.sroa.52.19 = phi i8 [ %.sroa.52.13.3, %bb.ff ], [ %i.bpv, %bb.fh ]
  %.mask510 = and i32 %i.bgw, 255
  %i.bpx = zext nneg i32 %.mask510 to i64         ; 2 uses
  %notmask.i269 = shl nsw i64 -1, %i.bpx
  %i.bpy = xor i64 %notmask.i269, -1
  %i.bpz = and i64 %.sroa.84339.19, %i.bpy
  %i.bqa = lshr i64 %.sroa.84339.19, %i.bpx
  %i.bqb = sub i8 %.sroa.52.19, %i.bpa
  %i.bqc = trunc i64 %i.bpz to i32
  %i.bqd = shl nuw i32 %i.boy, %i.bgw
  %i.bqe = add nsw i32 %i.bqd, %i.bqc
  br label %jpeg2000_decode_mag_sgn.exit258

jpeg2000_decode_mag_sgn.exit258:                  ; preds = %recover_mag_sgn.exit237, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270
  %.sroa.0320.14 = phi i32 [ %.sroa.0320.19, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270 ], [ %.sroa.0320.13.3, %recover_mag_sgn.exit237 ] ; 4 uses
  %.sroa.38.14 = phi i32 [ %.sroa.38.19, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270 ], [ %.sroa.38.13.3, %recover_mag_sgn.exit237 ] ; 4 uses
  %.sroa.84339.14 = phi i64 [ %i.bqa, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270 ], [ %.sroa.84339.13.3, %recover_mag_sgn.exit237 ] ; 3 uses
  %.sroa.52.14 = phi i8 [ %i.bqb, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270 ], [ %.sroa.52.13.3, %recover_mag_sgn.exit237 ] ; 5 uses
  %.0.i257 = phi i32 [ %i.bqe, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270 ], [ 0, %recover_mag_sgn.exit237 ] ; 3 uses
  %.not.i225 = icmp eq i32 %i.bgu, %i.bgv
  br i1 %.not.i225, label %bb.fi, label %ff_clz_c.exit.i229

ff_clz_c.exit.i229:                               ; preds = %jpeg2000_decode_mag_sgn.exit258
  %i.bqf = lshr i32 %.0.i257, 1
  %i.bqg = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.bqf, i1 false)
  %i.bqh = trunc nuw nsw i32 %i.bqg to i8
  %i.bqi = sub nuw nsw i8 33, %i.bqh
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bem, i64 %i.box
  store i8 %i.bqi, ptr %i.bqj, align 1, !tbaa !13
  %i.bqk = ashr i32 %.0.i257, 1
  %i.bql = add nsw i32 %i.bqk, 1
  %i.bqm = getelementptr inbounds nuw [4 x i8], ptr %i.bhp, i64 %i.box
  %i.bqn = shl i32 %i.bql, %i.atl
  %i.bqo = shl i32 %.0.i257, 31
  %i.bqp = or i32 %i.bqo, %i.bqn
  %i.bqq = or i32 %i.bqp, %i.atn
  store i32 %i.bqq, ptr %i.bqm, align 4, !tbaa !12
  br label %bb.fi

bb.fi:                                            ; preds = %ff_clz_c.exit.i229, %jpeg2000_decode_mag_sgn.exit258
  %i.bqr = lshr i32 %i.bou, 1
  %i.bqs = and i32 %i.bqr, 1
  %i.bqt = icmp sgt i32 %37, 0
  br i1 %i.bqt, label %bb.fj, label %jpeg2000_decode_mag_sgn.exit258.1

bb.fj:                                            ; preds = %bb.fi
  %i.bqu = trunc i32 %37 to i8                    ; 2 uses
  %.not.i268.1 = icmp ule i8 %.sroa.52.14, %i.bqu
  %i.bqv = icmp ult i8 %.sroa.52.14, 32
  %or.cond488.1 = and i1 %i.bqv, %.not.i268.1
  br i1 %or.cond488.1, label %.lr.ph.i309.1, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.1

.lr.ph.i309.1:                                    ; preds = %bb.fj, %bb.fl
  %.sroa.0320.38.1 = phi i32 [ %.sroa.0320.39.1, %bb.fl ], [ %.sroa.0320.14, %bb.fj ]
  %.sroa.38.38.1 = phi i32 [ %.sroa.38.39.1, %bb.fl ], [ %.sroa.38.14, %bb.fj ]
  %i.bqw = phi i64 [ %i.brn, %bb.fl ], [ %.sroa.84339.14, %bb.fj ]
  %i.bqx = phi i32 [ %i.bri, %bb.fl ], [ %.sroa.0320.14, %bb.fj ] ; 4 uses
  %i.bqy = phi i32 [ %i.brj, %bb.fl ], [ %.sroa.38.14, %bb.fj ] ; 2 uses
  %i.bqz = phi i8 [ %i.brp, %bb.fl ], [ %.sroa.52.14, %bb.fj ] ; 2 uses
  %i.bra = icmp eq i32 %i.bqy, 255
  %i.brb = icmp ult i32 %i.bqx, %i.cl
  br i1 %i.brb, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %.lr.ph.i309.1
  %i.brc = sext i32 %i.bqx to i64
  %i.brd = getelementptr inbounds i8, ptr %i.bc, i64 %i.brc
  %i.bre = load i8, ptr %i.brd, align 1, !tbaa !13 ; 2 uses
  %i.brf = zext i8 %i.bre to i32                  ; 2 uses
  %i.brg = add nuw nsw i32 %i.bqx, 1              ; 2 uses
  %i.brh = zext i8 %i.bre to i64
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %.lr.ph.i309.1
  %.sroa.0320.39.1 = phi i32 [ %i.brg, %bb.fk ], [ %.sroa.0320.38.1, %.lr.ph.i309.1 ] ; 2 uses
  %.sroa.38.39.1 = phi i32 [ %i.brf, %bb.fk ], [ %.sroa.38.38.1, %.lr.ph.i309.1 ] ; 2 uses
  %i.bri = phi i32 [ %i.brg, %bb.fk ], [ %i.bqx, %.lr.ph.i309.1 ]
  %i.brj = phi i32 [ %i.brf, %bb.fk ], [ %i.bqy, %.lr.ph.i309.1 ]
  %i.brk = phi i64 [ %i.brh, %bb.fk ], [ 255, %.lr.ph.i309.1 ]
  %i.brl = zext nneg i8 %i.bqz to i64
  %i.brm = shl nuw nsw i64 %i.brk, %i.brl
  %i.brn = or i64 %i.brm, %i.bqw                  ; 2 uses
  %i.bro = select i1 %i.bra, i8 7, i8 8
  %i.brp = add nuw nsw i8 %i.bro, %i.bqz          ; 3 uses
  %i.brq = icmp samesign ult i8 %i.brp, 32
  br i1 %i.brq, label %.lr.ph.i309.1, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.1, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit270.1:   ; preds = %bb.fl, %bb.fj
  %.sroa.0320.19.1 = phi i32 [ %.sroa.0320.14, %bb.fj ], [ %.sroa.0320.39.1, %bb.fl ]
  %.sroa.38.19.1 = phi i32 [ %.sroa.38.14, %bb.fj ], [ %.sroa.38.39.1, %bb.fl ]
  %.sroa.84339.19.1 = phi i64 [ %.sroa.84339.14, %bb.fj ], [ %i.brn, %bb.fl ] ; 2 uses
  %.sroa.52.19.1 = phi i8 [ %.sroa.52.14, %bb.fj ], [ %i.brp, %bb.fl ]
  %.mask510.1 = and i32 %37, 255
  %i.brr = zext nneg i32 %.mask510.1 to i64       ; 2 uses
  %notmask.i269.1 = shl nsw i64 -1, %i.brr
  %i.brs = xor i64 %notmask.i269.1, -1
  %i.brt = and i64 %.sroa.84339.19.1, %i.brs
  %i.bru = lshr i64 %.sroa.84339.19.1, %i.brr
  %i.brv = sub i8 %.sroa.52.19.1, %i.bqu
  %i.brw = trunc i64 %i.brt to i32
  %i.brx = shl nuw i32 %i.bqs, %37
  %i.bry = add nsw i32 %i.brx, %i.brw
  br label %jpeg2000_decode_mag_sgn.exit258.1

jpeg2000_decode_mag_sgn.exit258.1:                ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.1, %bb.fi
  %.sroa.0320.14.1 = phi i32 [ %.sroa.0320.19.1, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.1 ], [ %.sroa.0320.14, %bb.fi ] ; 4 uses
  %.sroa.38.14.1 = phi i32 [ %.sroa.38.19.1, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.1 ], [ %.sroa.38.14, %bb.fi ] ; 4 uses
  %.sroa.84339.14.1 = phi i64 [ %i.bru, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.1 ], [ %.sroa.84339.14, %bb.fi ] ; 3 uses
  %.sroa.52.14.1 = phi i8 [ %i.brv, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.1 ], [ %.sroa.52.14, %bb.fi ] ; 5 uses
  %.0.i257.1 = phi i32 [ %i.bry, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.1 ], [ 0, %bb.fi ] ; 3 uses
  %.not.i225.1 = icmp eq i32 %37, 0
  br i1 %.not.i225.1, label %bb.fm, label %ff_clz_c.exit.i229.1

ff_clz_c.exit.i229.1:                             ; preds = %jpeg2000_decode_mag_sgn.exit258.1
  %i.brz = lshr i32 %.0.i257.1, 1
  %i.bsa = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.brz, i1 false)
  %i.bsb = trunc nuw nsw i32 %i.bsa to i8
  %i.bsc = or disjoint i64 %i.box, 1              ; 2 uses
  %i.bsd = sub nuw nsw i8 33, %i.bsb
  %i.bse = getelementptr inbounds nuw i8, ptr %i.bem, i64 %i.bsc
  store i8 %i.bsd, ptr %i.bse, align 1, !tbaa !13
  %i.bsf = ashr i32 %.0.i257.1, 1
  %i.bsg = add nsw i32 %i.bsf, 1
  %i.bsh = getelementptr inbounds nuw [4 x i8], ptr %i.bhp, i64 %i.bsc
  %i.bsi = shl i32 %i.bsg, %i.atl
  %i.bsj = shl i32 %.0.i257.1, 31
  %i.bsk = or i32 %i.bsj, %i.bsi
  %i.bsl = or i32 %i.bsk, %i.atn
  store i32 %i.bsl, ptr %i.bsh, align 4, !tbaa !12
  br label %bb.fm

bb.fm:                                            ; preds = %ff_clz_c.exit.i229.1, %jpeg2000_decode_mag_sgn.exit258.1
  %i.bsm = lshr i32 %i.bou, 2
  %i.bsn = and i32 %i.bsm, 1
  %i.bso = icmp sgt i32 %43, 0
  br i1 %i.bso, label %bb.fn, label %jpeg2000_decode_mag_sgn.exit258.2

bb.fn:                                            ; preds = %bb.fm
  %i.bsp = trunc i32 %43 to i8                    ; 2 uses
  %.not.i268.2 = icmp ule i8 %.sroa.52.14.1, %i.bsp
  %i.bsq = icmp ult i8 %.sroa.52.14.1, 32
  %or.cond488.2 = and i1 %i.bsq, %.not.i268.2
  br i1 %or.cond488.2, label %.lr.ph.i309.2, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.2

.lr.ph.i309.2:                                    ; preds = %bb.fn, %bb.fp
  %.sroa.0320.38.2 = phi i32 [ %.sroa.0320.39.2, %bb.fp ], [ %.sroa.0320.14.1, %bb.fn ]
  %.sroa.38.38.2 = phi i32 [ %.sroa.38.39.2, %bb.fp ], [ %.sroa.38.14.1, %bb.fn ]
  %i.bsr = phi i64 [ %i.bti, %bb.fp ], [ %.sroa.84339.14.1, %bb.fn ]
  %i.bss = phi i32 [ %i.btd, %bb.fp ], [ %.sroa.0320.14.1, %bb.fn ] ; 4 uses
  %i.bst = phi i32 [ %i.bte, %bb.fp ], [ %.sroa.38.14.1, %bb.fn ] ; 2 uses
  %i.bsu = phi i8 [ %i.btk, %bb.fp ], [ %.sroa.52.14.1, %bb.fn ] ; 2 uses
  %i.bsv = icmp eq i32 %i.bst, 255
  %i.bsw = icmp ult i32 %i.bss, %i.cl
  br i1 %i.bsw, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %.lr.ph.i309.2
  %i.bsx = sext i32 %i.bss to i64
  %i.bsy = getelementptr inbounds i8, ptr %i.bc, i64 %i.bsx
  %i.bsz = load i8, ptr %i.bsy, align 1, !tbaa !13 ; 2 uses
  %i.bta = zext i8 %i.bsz to i32                  ; 2 uses
  %i.btb = add nuw nsw i32 %i.bss, 1              ; 2 uses
  %i.btc = zext i8 %i.bsz to i64
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %.lr.ph.i309.2
  %.sroa.0320.39.2 = phi i32 [ %i.btb, %bb.fo ], [ %.sroa.0320.38.2, %.lr.ph.i309.2 ] ; 2 uses
  %.sroa.38.39.2 = phi i32 [ %i.bta, %bb.fo ], [ %.sroa.38.38.2, %.lr.ph.i309.2 ] ; 2 uses
  %i.btd = phi i32 [ %i.btb, %bb.fo ], [ %i.bss, %.lr.ph.i309.2 ]
  %i.bte = phi i32 [ %i.bta, %bb.fo ], [ %i.bst, %.lr.ph.i309.2 ]
  %i.btf = phi i64 [ %i.btc, %bb.fo ], [ 255, %.lr.ph.i309.2 ]
  %i.btg = zext nneg i8 %i.bsu to i64
  %i.bth = shl nuw nsw i64 %i.btf, %i.btg
  %i.bti = or i64 %i.bth, %i.bsr                  ; 2 uses
  %i.btj = select i1 %i.bsv, i8 7, i8 8
  %i.btk = add nuw nsw i8 %i.btj, %i.bsu          ; 3 uses
  %i.btl = icmp samesign ult i8 %i.btk, 32
  br i1 %i.btl, label %.lr.ph.i309.2, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.2, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit270.2:   ; preds = %bb.fp, %bb.fn
  %.sroa.0320.19.2 = phi i32 [ %.sroa.0320.14.1, %bb.fn ], [ %.sroa.0320.39.2, %bb.fp ]
  %.sroa.38.19.2 = phi i32 [ %.sroa.38.14.1, %bb.fn ], [ %.sroa.38.39.2, %bb.fp ]
  %.sroa.84339.19.2 = phi i64 [ %.sroa.84339.14.1, %bb.fn ], [ %i.bti, %bb.fp ] ; 2 uses
  %.sroa.52.19.2 = phi i8 [ %.sroa.52.14.1, %bb.fn ], [ %i.btk, %bb.fp ]
  %.mask510.2 = and i32 %43, 255
  %i.btm = zext nneg i32 %.mask510.2 to i64       ; 2 uses
  %notmask.i269.2 = shl nsw i64 -1, %i.btm
  %i.btn = xor i64 %notmask.i269.2, -1
  %i.bto = and i64 %.sroa.84339.19.2, %i.btn
  %i.btp = lshr i64 %.sroa.84339.19.2, %i.btm
  %i.btq = sub i8 %.sroa.52.19.2, %i.bsp
  %i.btr = trunc i64 %i.bto to i32
  %i.bts = shl nuw i32 %i.bsn, %43
  %i.btt = add nsw i32 %i.bts, %i.btr
  br label %jpeg2000_decode_mag_sgn.exit258.2

jpeg2000_decode_mag_sgn.exit258.2:                ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.2, %bb.fm
  %.sroa.0320.14.2 = phi i32 [ %.sroa.0320.19.2, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.2 ], [ %.sroa.0320.14.1, %bb.fm ] ; 4 uses
  %.sroa.38.14.2 = phi i32 [ %.sroa.38.19.2, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.2 ], [ %.sroa.38.14.1, %bb.fm ] ; 4 uses
  %.sroa.84339.14.2 = phi i64 [ %i.btp, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.2 ], [ %.sroa.84339.14.1, %bb.fm ] ; 3 uses
  %.sroa.52.14.2 = phi i8 [ %i.btq, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.2 ], [ %.sroa.52.14.1, %bb.fm ] ; 5 uses
  %.0.i257.2 = phi i32 [ %i.btt, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.2 ], [ 0, %bb.fm ] ; 3 uses
  %.not.i225.2 = icmp eq i32 %43, 0
  br i1 %.not.i225.2, label %bb.fq, label %ff_clz_c.exit.i229.2

ff_clz_c.exit.i229.2:                             ; preds = %jpeg2000_decode_mag_sgn.exit258.2
  %i.btu = lshr i32 %.0.i257.2, 1
  %i.btv = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.btu, i1 false)
  %i.btw = trunc nuw nsw i32 %i.btv to i8
  %i.btx = or disjoint i64 %i.box, 2              ; 2 uses
  %i.bty = sub nuw nsw i8 33, %i.btw
  %i.btz = getelementptr inbounds nuw i8, ptr %i.bem, i64 %i.btx
  store i8 %i.bty, ptr %i.btz, align 1, !tbaa !13
  %i.bua = ashr i32 %.0.i257.2, 1
  %i.bub = add nsw i32 %i.bua, 1
  %i.buc = getelementptr inbounds nuw [4 x i8], ptr %i.bhp, i64 %i.btx
  %i.bud = shl i32 %i.bub, %i.atl
  %i.bue = shl i32 %.0.i257.2, 31
  %i.buf = or i32 %i.bue, %i.bud
  %i.bug = or i32 %i.buf, %i.atn
  store i32 %i.bug, ptr %i.buc, align 4, !tbaa !12
  br label %bb.fq

bb.fq:                                            ; preds = %ff_clz_c.exit.i229.2, %jpeg2000_decode_mag_sgn.exit258.2
  %i.buh = lshr i32 %i.bou, 3
  %i.bui = and i32 %i.buh, 1
  %i.buj = icmp sgt i32 %49, 0
  br i1 %i.buj, label %bb.fr, label %jpeg2000_decode_mag_sgn.exit258.3

bb.fr:                                            ; preds = %bb.fq
  %i.buk = trunc i32 %49 to i8                    ; 2 uses
  %.not.i268.3 = icmp ule i8 %.sroa.52.14.2, %i.buk
  %i.bul = icmp ult i8 %.sroa.52.14.2, 32
  %or.cond488.3 = and i1 %i.bul, %.not.i268.3
  br i1 %or.cond488.3, label %.lr.ph.i309.3, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.3

.lr.ph.i309.3:                                    ; preds = %bb.fr, %bb.ft
  %.sroa.0320.38.3 = phi i32 [ %.sroa.0320.39.3, %bb.ft ], [ %.sroa.0320.14.2, %bb.fr ]
  %.sroa.38.38.3 = phi i32 [ %.sroa.38.39.3, %bb.ft ], [ %.sroa.38.14.2, %bb.fr ]
  %i.bum = phi i64 [ %i.bvd, %bb.ft ], [ %.sroa.84339.14.2, %bb.fr ]
  %i.bun = phi i32 [ %i.buy, %bb.ft ], [ %.sroa.0320.14.2, %bb.fr ] ; 4 uses
  %i.buo = phi i32 [ %i.buz, %bb.ft ], [ %.sroa.38.14.2, %bb.fr ] ; 2 uses
  %i.bup = phi i8 [ %i.bvf, %bb.ft ], [ %.sroa.52.14.2, %bb.fr ] ; 2 uses
  %i.buq = icmp eq i32 %i.buo, 255
  %i.bur = icmp ult i32 %i.bun, %i.cl
  br i1 %i.bur, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %.lr.ph.i309.3
  %i.bus = sext i32 %i.bun to i64
  %i.but = getelementptr inbounds i8, ptr %i.bc, i64 %i.bus
  %i.buu = load i8, ptr %i.but, align 1, !tbaa !13 ; 2 uses
  %i.buv = zext i8 %i.buu to i32                  ; 2 uses
  %i.buw = add nuw nsw i32 %i.bun, 1              ; 2 uses
  %i.bux = zext i8 %i.buu to i64
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %.lr.ph.i309.3
  %.sroa.0320.39.3 = phi i32 [ %i.buw, %bb.fs ], [ %.sroa.0320.38.3, %.lr.ph.i309.3 ] ; 2 uses
  %.sroa.38.39.3 = phi i32 [ %i.buv, %bb.fs ], [ %.sroa.38.38.3, %.lr.ph.i309.3 ] ; 2 uses
  %i.buy = phi i32 [ %i.buw, %bb.fs ], [ %i.bun, %.lr.ph.i309.3 ]
  %i.buz = phi i32 [ %i.buv, %bb.fs ], [ %i.buo, %.lr.ph.i309.3 ]
  %i.bva = phi i64 [ %i.bux, %bb.fs ], [ 255, %.lr.ph.i309.3 ]
  %i.bvb = zext nneg i8 %i.bup to i64
  %i.bvc = shl nuw nsw i64 %i.bva, %i.bvb
  %i.bvd = or i64 %i.bvc, %i.bum                  ; 2 uses
  %i.bve = select i1 %i.buq, i8 7, i8 8
  %i.bvf = add nuw nsw i8 %i.bve, %i.bup          ; 3 uses
  %i.bvg = icmp samesign ult i8 %i.bvf, 32
  br i1 %i.bvg, label %.lr.ph.i309.3, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.3, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit270.3:   ; preds = %bb.ft, %bb.fr
  %.sroa.0320.19.3 = phi i32 [ %.sroa.0320.14.2, %bb.fr ], [ %.sroa.0320.39.3, %bb.ft ]
  %.sroa.38.19.3 = phi i32 [ %.sroa.38.14.2, %bb.fr ], [ %.sroa.38.39.3, %bb.ft ]
  %.sroa.84339.19.3 = phi i64 [ %.sroa.84339.14.2, %bb.fr ], [ %i.bvd, %bb.ft ] ; 2 uses
  %.sroa.52.19.3 = phi i8 [ %.sroa.52.14.2, %bb.fr ], [ %i.bvf, %bb.ft ]
  %.mask510.3 = and i32 %49, 255
  %i.bvh = zext nneg i32 %.mask510.3 to i64       ; 2 uses
  %notmask.i269.3 = shl nsw i64 -1, %i.bvh
  %i.bvi = xor i64 %notmask.i269.3, -1
  %i.bvj = and i64 %.sroa.84339.19.3, %i.bvi
  %i.bvk = lshr i64 %.sroa.84339.19.3, %i.bvh
  %i.bvl = sub i8 %.sroa.52.19.3, %i.buk
  %i.bvm = trunc i64 %i.bvj to i32
  %i.bvn = shl nuw i32 %i.bui, %49
  %i.bvo = add nsw i32 %i.bvn, %i.bvm
  br label %jpeg2000_decode_mag_sgn.exit258.3

jpeg2000_decode_mag_sgn.exit258.3:                ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.3, %bb.fq
  %.sroa.0320.14.3 = phi i32 [ %.sroa.0320.19.3, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.3 ], [ %.sroa.0320.14.2, %bb.fq ] ; 2 uses
  %.sroa.38.14.3 = phi i32 [ %.sroa.38.19.3, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.3 ], [ %.sroa.38.14.2, %bb.fq ] ; 2 uses
  %.sroa.84339.14.3 = phi i64 [ %i.bvk, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.3 ], [ %.sroa.84339.14.2, %bb.fq ] ; 2 uses
  %.sroa.52.14.3 = phi i8 [ %i.bvl, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.3 ], [ %.sroa.52.14.2, %bb.fq ] ; 2 uses
  %.0.i257.3 = phi i32 [ %i.bvo, %jpeg2000_bitbuf_get_bits_lsb_forward.exit270.3 ], [ 0, %bb.fq ] ; 3 uses
  %.not.i225.3 = icmp eq i32 %49, 0
  br i1 %.not.i225.3, label %recover_mag_sgn.exit230, label %ff_clz_c.exit.i229.3

ff_clz_c.exit.i229.3:                             ; preds = %jpeg2000_decode_mag_sgn.exit258.3
  %i.bvp = lshr i32 %.0.i257.3, 1
  %i.bvq = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.bvp, i1 false)
  %i.bvr = trunc nuw nsw i32 %i.bvq to i8
  %i.bvs = or disjoint i64 %i.box, 3              ; 2 uses
  %i.bvt = sub nuw nsw i8 33, %i.bvr
  %i.bvu = getelementptr inbounds nuw i8, ptr %i.bem, i64 %i.bvs
  store i8 %i.bvt, ptr %i.bvu, align 1, !tbaa !13
  %i.bvv = ashr i32 %.0.i257.3, 1
  %i.bvw = add nsw i32 %i.bvv, 1
  %i.bvx = getelementptr inbounds nuw [4 x i8], ptr %i.bhp, i64 %i.bvs
  %i.bvy = shl i32 %i.bvw, %i.atl
  %i.bvz = shl i32 %.0.i257.3, 31
  %i.bwa = or i32 %i.bvz, %i.bvy
  %i.bwb = or i32 %i.bwa, %i.atn
  store i32 %i.bwb, ptr %i.bvx, align 4, !tbaa !12
  br label %recover_mag_sgn.exit230

recover_mag_sgn.exit230:                          ; preds = %ff_clz_c.exit.i229.3, %jpeg2000_decode_mag_sgn.exit258.3
  %i.bwc = add i16 %.3.i698, 2                    ; 3 uses
  %i.bwd = zext i16 %i.bwc to i32                 ; 4 uses
  %i.bwe = add i32 %.neg497, %i.bwd
  %i.bwf = icmp slt i32 %i.bwe, %i.em
  %i.bwg = icmp samesign ugt i32 %i.atf, %i.bwd
  %or.cond753.i = select i1 %i.bwf, i1 %i.bwg, i1 false
  br i1 %or.cond753.i, label %.lr.ph699, label %.critedge.i, !llvm.loop !29

.critedge.i:                                      ; preds = %recover_mag_sgn.exit230, %.preheader527
  %.sroa.0320.3.lcssa = phi i32 [ %.sroa.0320.2718, %.preheader527 ], [ %.sroa.0320.14.3, %recover_mag_sgn.exit230 ] ; 5 uses
  %.sroa.38.3.lcssa = phi i32 [ %.sroa.38.2719, %.preheader527 ], [ %.sroa.38.14.3, %recover_mag_sgn.exit230 ] ; 5 uses
  %.sroa.84339.3.lcssa = phi i64 [ %.sroa.84339.2720, %.preheader527 ], [ %.sroa.84339.14.3, %recover_mag_sgn.exit230 ] ; 4 uses
  %.sroa.52.3.lcssa = phi i8 [ %.sroa.52.2722, %.preheader527 ], [ %.sroa.52.14.3, %recover_mag_sgn.exit230 ] ; 6 uses
  %.3.i.lcssa = phi i16 [ %.2.i724, %.preheader527 ], [ %i.bwc, %recover_mag_sgn.exit230 ] ; 2 uses
  %.lcssa537 = phi i32 [ %i.atp, %.preheader527 ], [ %i.bwd, %recover_mag_sgn.exit230 ] ; 4 uses
  br i1 %.not.i, label %bb.gw, label %bb.fu

bb.fu:                                            ; preds = %.critedge.i
  %i.bwh = load ptr, ptr %i.e, align 8, !tbaa !39 ; 9 uses
  %i.bwi = add nsw i32 %.lcssa537, %i.dy          ; 2 uses
  %i.bwj = shl nsw i32 %i.bwi, 2                  ; 6 uses
  %i.bwk = or disjoint i32 %i.bwj, 1
  %i.bwl = sext i32 %i.bwk to i64                 ; 2 uses
  %i.bwm = getelementptr inbounds i8, ptr %i.bwh, i64 %i.bwl
  %i.bwn = load i8, ptr %i.bwm, align 1, !tbaa !13
  %i.bwo = or disjoint i32 %i.bwj, 3
  %i.bwp = sext i32 %i.bwo to i64                 ; 2 uses
  %i.bwq = getelementptr inbounds i8, ptr %i.bwh, i64 %i.bwp
  %i.bwr = load i8, ptr %i.bwq, align 1, !tbaa !13
  %i.bws = zext i8 %i.bwr to i16
  %i.bwt = shl nuw nsw i16 %i.bws, 2
  %i.bwu = zext i8 %i.bwn to i16
  %i.bwv = add nuw nsw i16 %i.bwt, %i.bwu         ; 2 uses
  %i.bww = zext i16 %.3.i.lcssa to i64
  %i.bwx = mul i64 %i.atd, %i.bww
  %i.bwy = icmp ugt i64 %i.bwx, %i.atc            ; 2 uses
  br i1 %i.bwy, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.bwz = sext i32 %i.bwj to i64
  %i.bxa = getelementptr i8, ptr %i.bwh, i64 %i.bwz
  %i.bxb = getelementptr i8, ptr %i.bxa, i64 -1
  %i.bxc = load i8, ptr %i.bxb, align 1, !tbaa !13
  %i.bxd = zext i8 %i.bxc to i16
  %i.bxe = or i16 %i.bwv, %i.bxd
  %i.bxf = shl nuw nsw i32 %.lcssa537, 2
  %i.bxg = zext nneg i32 %i.bxf to i64
  %i.bxh = getelementptr i8, ptr %i.bwh, i64 %i.bxg ; 2 uses
  %i.bxi = getelementptr i8, ptr %i.bxh, i64 -1
  %i.bxj = load i8, ptr %i.bxi, align 1, !tbaa !13
  %i.bxk = getelementptr i8, ptr %i.bxh, i64 -2
  %i.bxl = load i8, ptr %i.bxk, align 1, !tbaa !13
  %i.bxm = or i8 %i.bxl, %i.bxj
  %i.bxn = zext i8 %i.bxm to i16
  %i.bxo = shl nuw nsw i16 %i.bxn, 1
  %i.bxp = add nuw nsw i16 %i.bxo, %i.bxe
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %.2662.i = phi i16 [ %i.bwv, %bb.fu ], [ %i.bxp, %bb.fv ] ; 2 uses
  %i.bxq = add nuw nsw i32 %.lcssa537, 1          ; 2 uses
  %i.bxr = zext nneg i32 %i.bxq to i64
  %i.bxs = mul i64 %i.atd, %i.bxr
  %i.bxt = icmp ugt i64 %i.bxs, %i.atc            ; 2 uses
  br i1 %i.bxt, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.bxu = sext i32 %i.bwj to i64
  %i.bxv = getelementptr i8, ptr %i.bwh, i64 %i.bxu
  %i.bxw = getelementptr i8, ptr %i.bxv, i64 5
  %i.bxx = load i8, ptr %i.bxw, align 1, !tbaa !13
  %i.bxy = zext i8 %i.bxx to i16
  %i.bxz = shl nuw nsw i16 %i.bxy, 2
  %i.bya = or i16 %i.bxz, %.2662.i
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.3663.i = phi i16 [ %.2662.i, %bb.fw ], [ %i.bya, %bb.fx ]
  call fastcc void @jpeg2000_decode_sig_emb(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull @dec_cxt_vlc_table1, ptr noundef %i.bc, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, i8 noundef zeroext 0, i16 noundef zeroext %.3663.i, i32 noundef range(i32 2, 0) %i.ar, i32 noundef %i.cl)
  %i.byb = load i8, ptr %i.a, align 2, !tbaa !13  ; 6 uses
  %i.byc = shl nuw nsw i32 %.lcssa537, 2
  %i.byd = zext nneg i32 %i.byc to i64            ; 6 uses
  %i.bye = and i8 %i.byb, 1
  %i.byf = getelementptr inbounds nuw i8, ptr %i.bwh, i64 %i.byd ; 2 uses
  store i8 %i.bye, ptr %i.byf, align 1, !tbaa !13
  %i.byg = lshr i8 %i.byb, 1
  %i.byh = and i8 %i.byg, 1
  %i.byi = or disjoint i64 %i.byd, 1              ; 3 uses
  %i.byj = getelementptr inbounds nuw i8, ptr %i.bwh, i64 %i.byi ; 2 uses
  store i8 %i.byh, ptr %i.byj, align 1, !tbaa !13
  %i.byk = lshr i8 %i.byb, 2
  %i.byl = and i8 %i.byk, 1
  %i.bym = or disjoint i64 %i.byd, 2              ; 3 uses
  %i.byn = getelementptr inbounds nuw i8, ptr %i.bwh, i64 %i.bym ; 2 uses
  store i8 %i.byl, ptr %i.byn, align 1, !tbaa !13
  %i.byo = lshr i8 %i.byb, 3
  %i.byp = and i8 %i.byo, 1
  %i.byq = or disjoint i64 %i.byd, 3              ; 3 uses
  %i.byr = getelementptr inbounds nuw i8, ptr %i.bwh, i64 %i.byq ; 2 uses
  store i8 %i.byp, ptr %i.byr, align 1, !tbaa !13
  %i.bys = load i8, ptr %i.b, align 2, !tbaa !13
  %i.byt = icmp eq i8 %i.bys, 1
  br i1 %i.byt, label %bb.fz, label %bb.gf

bb.fz:                                            ; preds = %bb.fy
  %i.byu = load i8, ptr %i.ati, align 8, !tbaa !23 ; 2 uses
  %i.byv = icmp ult i8 %i.byu, 3
  br i1 %i.byv, label %bb.ga, label %vlc_decode_u_prefix.exit172

bb.ga:                                            ; preds = %bb.fz
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre944 = load i8, ptr %i.ati, align 8, !tbaa !23
  br label %vlc_decode_u_prefix.exit172

vlc_decode_u_prefix.exit172:                      ; preds = %bb.fz, %bb.ga
  %i.byw = phi i8 [ %i.byu, %bb.fz ], [ %.pre944, %bb.ga ]
  %i.byx = load i64, ptr %i.atj, align 8, !tbaa !16 ; 3 uses
  %i.byy = and i64 %i.byx, 7                      ; 3 uses
  %i.byz = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.drop_bits, i64 %i.byy
  %i.bza = load i8, ptr %i.byz, align 1, !tbaa !13 ; 2 uses
  %i.bzb = zext nneg i8 %i.bza to i64
  %i.bzc = lshr i64 %i.byx, %i.bzb                ; 3 uses
  store i64 %i.bzc, ptr %i.atj, align 8, !tbaa !16
  %i.bzd = sub i8 %i.byw, %i.bza                  ; 4 uses
  store i8 %i.bzd, ptr %i.ati, align 8, !tbaa !23
  %i.bze = getelementptr inbounds nuw i8, ptr @vlc_decode_u_prefix.return_value, i64 %i.byy
  %i.bzf = load i8, ptr %i.bze, align 1, !tbaa !13
  %i.bzg = icmp ne i64 %i.byy, 4
  %i.bzh = and i64 %i.byx, 3
  %.not498 = icmp eq i64 %i.bzh, 0
  br i1 %.not498, label %bb.gb, label %jpeg2000_bitbuf_get_bits_lsb.exit

bb.gb:                                            ; preds = %vlc_decode_u_prefix.exit172
  %i.bzi = icmp ult i8 %i.bzd, 5
  br i1 %i.bzi, label %bb.gc, label %vlc_decode_u_suffix.exit193

bb.gc:                                            ; preds = %bb.gb
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre945 = load i64, ptr %i.atj, align 8, !tbaa !16
  %.pre946 = load i8, ptr %i.ati, align 8, !tbaa !23
  br label %vlc_decode_u_suffix.exit193

vlc_decode_u_suffix.exit193:                      ; preds = %bb.gb, %bb.gc
  %i.bzj = phi i8 [ %i.bzd, %bb.gb ], [ %.pre946, %bb.gc ]
  %i.bzk = phi i64 [ %i.bzc, %bb.gb ], [ %.pre945, %bb.gc ] ; 2 uses
  %i.bzl = trunc i64 %i.bzk to i32
  %i.bzm = and i32 %i.bzl, 31
  %i.bzn = zext i1 %i.bzg to i64                  ; 2 uses
  %i.bzo = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.drop_bits, i64 %i.bzn
  %i.bzp = load i32, ptr %i.bzo, align 4, !tbaa !12 ; 2 uses
  %i.bzq = trunc i32 %i.bzp to i8
  %.mask499 = and i32 %i.bzp, 255
  %i.bzr = zext nneg i32 %.mask499 to i64
  %i.bzs = lshr i64 %i.bzk, %i.bzr                ; 3 uses
  store i64 %i.bzs, ptr %i.atj, align 8, !tbaa !16
  %i.bzt = sub i8 %i.bzj, %i.bzq                  ; 4 uses
  store i8 %i.bzt, ptr %i.ati, align 8, !tbaa !23
  %i.bzu = getelementptr inbounds nuw [4 x i8], ptr @vlc_decode_u_suffix.mask, i64 %i.bzn
  %i.bzv = load i32, ptr %i.bzu, align 4, !tbaa !12
  %i.bzw = and i32 %i.bzm, %i.bzv
  %.fr500 = freeze i32 %i.bzw                     ; 4 uses
  %i.bzx = icmp ugt i32 %.fr500, 27
  br i1 %i.bzx, label %bb.gd, label %jpeg2000_bitbuf_get_bits_lsb.exit

bb.gd:                                            ; preds = %vlc_decode_u_suffix.exit193
  %i.bzy = icmp ult i8 %i.bzt, 4
  br i1 %i.bzy, label %bb.ge, label %jpeg2000_bitbuf_get_bits_lsb.exit

bb.ge:                                            ; preds = %bb.gd
  call fastcc void @jpeg2000_bitbuf_refill_backwards(ptr noundef nonnull %9, ptr noundef %i.ds)
  %.pre947 = load i64, ptr %i.atj, align 8, !tbaa !16
  %.pre948 = load i8, ptr %i.ati, align 8, !tbaa !23
  br label %jpeg2000_bitbuf_get_bits_lsb.exit

jpeg2000_bitbuf_get_bits_lsb.exit:                ; preds = %vlc_decode_u_prefix.exit172, %vlc_decode_u_suffix.exit193, %bb.gd, %bb.ge
  %i.bzz = phi i8 [ %.pre948, %bb.ge ], [ %i.bzt, %bb.gd ], [ %i.bzt, %vlc_decode_u_suffix.exit193 ], [ %i.bzd, %vlc_decode_u_prefix.exit172 ]
  %i.caa = phi i64 [ %.pre947, %bb.ge ], [ %i.bzs, %bb.gd ], [ %i.bzs, %vlc_decode_u_suffix.exit193 ], [ %i.bzc, %vlc_decode_u_prefix.exit172 ] ; 2 uses
  %i.cab = phi i8 [ 4, %bb.ge ], [ 4, %bb.gd ], [ 0, %vlc_decode_u_suffix.exit193 ], [ 0, %vlc_decode_u_prefix.exit172 ] ; 2 uses
  %.0.i192459463 = phi i32 [ %.fr500, %bb.ge ], [ %.fr500, %bb.gd ], [ %.fr500, %vlc_decode_u_suffix.exit193 ], [ 0, %vlc_decode_u_prefix.exit172 ]
  %i.cac = zext nneg i8 %i.cab to i64             ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.cac
  %i.cad = xor i64 %notmask.i, -1
  %i.cae = and i64 %i.caa, %i.cad
  %i.caf = lshr i64 %i.caa, %i.cac
  store i64 %i.caf, ptr %i.atj, align 8, !tbaa !16
  %i.cag = sub i8 %i.bzz, %i.cab
  store i8 %i.cag, ptr %i.ati, align 8, !tbaa !23
  %i.cah = trunc nuw nsw i64 %i.cae to i32
  %i.cai = zext i8 %i.bzf to i32
  %i.caj = add nuw nsw i32 %.0.i192459463, %i.cai
  %i.cak = shl nuw nsw i32 %i.cah, 2
  %i.cal = and i32 %i.cak, 252
  %i.cam = add nuw nsw i32 %i.caj, %i.cal
  br label %bb.gf

bb.gf:                                            ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit, %bb.fy
  %.sroa.0386.1 = phi i32 [ %i.cam, %jpeg2000_bitbuf_get_bits_lsb.exit ], [ 0, %bb.fy ]
  %i.can = icmp ult i8 %i.byb, 9
  br i1 %i.can, label %switch.lookup1337, label %bb.gg

switch.lookup1337:                                ; preds = %bb.gf
  %i.cao = zext nneg i8 %i.byb to i64
  %switch.gep1338 = getelementptr inbounds nuw i8, ptr @switch.table.ff_jpeg2000_decode_htj2k.4, i64 %i.cao
  %switch.load1339 = load i8, ptr %switch.gep1338, align 1
  %switch.ext1340 = zext i8 %switch.load1339 to i16
  br label %bb.gg

bb.gg:                                            ; preds = %switch.lookup1337, %bb.gf
  %.sroa.0414.1.i = phi i16 [ %switch.ext1340, %switch.lookup1337 ], [ 1, %bb.gf ]
  %i.cap = load ptr, ptr %i.f, align 8, !tbaa !39 ; 8 uses
  %i.caq = getelementptr inbounds i8, ptr %i.cap, i64 %i.bwl
  %i.car = load i8, ptr %i.caq, align 1, !tbaa !13
  %i.cas = getelementptr inbounds i8, ptr %i.cap, i64 %i.bwp
  %i.cat = load i8, ptr %i.cas, align 1, !tbaa !13
  %i.cau = icmp sgt i32 %i.bwi, 0
  %i.cav = add nsw i32 %i.bwj, -1
  %narrow = select i1 %i.cau, i32 %i.cav, i32 0
  %i.caw = zext i32 %narrow to i64
  %i.cax = getelementptr inbounds nuw i8, ptr %i.cap, i64 %i.caw
  %i.cay = load i8, ptr %i.cax, align 1, !tbaa !13
  %i.caz = sext i32 %i.bwj to i64
  %i.cba = getelementptr i8, ptr %i.cap, i64 %i.caz
  %i.cbb = getelementptr i8, ptr %i.cba, i64 5
  %i.cbc = load i8, ptr %i.cbb, align 1, !tbaa !13
  %i.cbd = tail call i8 @llvm.umax.i8(i8 %i.car, i8 %i.cat) ; 2 uses
  %i.cbe = tail call i8 @llvm.umax.i8(i8 %i.cbd, i8 %i.cbc)
  %.in.i = select i1 %i.bxt, i8 %i.cbe, i8 %i.cbd ; 2 uses
  %i.cbf = tail call i8 @llvm.umax.i8(i8 %.in.i, i8 %i.cay)
  %i.cbg = select i1 %i.bwy, i8 %i.cbf, i8 %.in.i
  %i.cbh = zext i8 %i.cbg to i16
  %i.cbi = add nsw i16 %i.cbh, -1
  %i.cbj = mul nuw nsw i16 %i.cbi, %.sroa.0414.1.i
  %i.cbk = tail call i16 @llvm.smax.i16(i16 %i.cbj, i16 1)
  %i.cbl = zext nneg i16 %i.cbk to i32
  %i.cbm = add nuw nsw i32 %.sroa.0386.1, %i.cbl  ; 5 uses
  %i.cbn = icmp sgt i32 %i.cbm, %i.du
  br i1 %i.cbn, label %jpeg2000_decode_ht_cleanup_segment.exit, label %.preheader526

.preheader526:                                    ; preds = %bb.gg
  %i.cbo = load i8, ptr %i.c, align 2, !tbaa !13
  %i.cbp = zext i8 %i.cbo to i32                  ; 4 uses
  %i.cbq = load i8, ptr %i.byf, align 1, !tbaa !13
  %i.cbr = zext i8 %i.cbq to i32
  %i.cbs = mul nsw i32 %i.cbm, %i.cbr             ; 2 uses
  %i.cbt = and i32 %i.cbp, 1                      ; 2 uses
  %i.cbu = sub nsw i32 %i.cbs, %i.cbt             ; 4 uses
  %i.cbv = load i8, ptr %i.byj, align 1, !tbaa !13
  %i.cbw = zext i8 %i.cbv to i32
  %i.cbx = mul nsw i32 %i.cbm, %i.cbw
  %50 = shl i32 %i.cbp, 30
  %51 = ashr i32 %50, 31
  %52 = add i32 %51, %i.cbx                       ; 5 uses
  %i.cby = load i8, ptr %i.byn, align 1, !tbaa !13
  %i.cbz = zext i8 %i.cby to i32
  %i.cca = mul nsw i32 %i.cbm, %i.cbz
  %53 = shl i32 %i.cbp, 29
  %54 = ashr i32 %53, 31
  %55 = add i32 %54, %i.cca                       ; 5 uses
  %i.ccb = load i8, ptr %i.byr, align 1, !tbaa !13
  %i.ccc = zext i8 %i.ccb to i32
  %i.ccd = mul nsw i32 %i.cbm, %i.ccc
  %56 = shl i32 %i.cbp, 28
  %57 = ashr i32 %56, 31
  %58 = add i32 %57, %i.ccd                       ; 5 uses
  %i.cce = load ptr, ptr %i.g, align 8, !tbaa !37 ; 4 uses
  %i.ccf = load i8, ptr %i.d, align 2, !tbaa !13
  %i.ccg = zext i8 %i.ccf to i32                  ; 4 uses
  %i.cch = and i32 %i.ccg, 1
  %i.cci = icmp sgt i32 %i.cbu, 0
  br i1 %i.cci, label %bb.gh, label %jpeg2000_decode_mag_sgn.exit254

bb.gh:                                            ; preds = %.preheader526
  %i.ccj = trunc i32 %i.cbu to i8                 ; 2 uses
  %.not.i274 = icmp ule i8 %.sroa.52.3.lcssa, %i.ccj
  %i.cck = icmp ult i8 %.sroa.52.3.lcssa, 32
  %or.cond489 = and i1 %i.cck, %.not.i274
  br i1 %or.cond489, label %.lr.ph.i315, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit276

.lr.ph.i315:                                      ; preds = %bb.gh, %bb.gj
  %.sroa.0320.41 = phi i32 [ %.sroa.0320.42, %bb.gj ], [ %.sroa.0320.3.lcssa, %bb.gh ]
  %.sroa.38.41 = phi i32 [ %.sroa.38.42, %bb.gj ], [ %.sroa.38.3.lcssa, %bb.gh ]
  %i.ccl = phi i64 [ %i.cdc, %bb.gj ], [ %.sroa.84339.3.lcssa, %bb.gh ]
  %i.ccm = phi i32 [ %i.ccx, %bb.gj ], [ %.sroa.0320.3.lcssa, %bb.gh ] ; 4 uses
  %i.ccn = phi i32 [ %i.ccy, %bb.gj ], [ %.sroa.38.3.lcssa, %bb.gh ] ; 2 uses
  %i.cco = phi i8 [ %i.cde, %bb.gj ], [ %.sroa.52.3.lcssa, %bb.gh ] ; 2 uses
  %i.ccp = icmp eq i32 %i.ccn, 255
  %i.ccq = icmp ult i32 %i.ccm, %i.cl
  br i1 %i.ccq, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %.lr.ph.i315
  %i.ccr = sext i32 %i.ccm to i64
  %i.ccs = getelementptr inbounds i8, ptr %i.bc, i64 %i.ccr
  %i.cct = load i8, ptr %i.ccs, align 1, !tbaa !13 ; 2 uses
  %i.ccu = zext i8 %i.cct to i32                  ; 2 uses
  %i.ccv = add nuw nsw i32 %i.ccm, 1              ; 2 uses
  %i.ccw = zext i8 %i.cct to i64
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %.lr.ph.i315
  %.sroa.0320.42 = phi i32 [ %i.ccv, %bb.gi ], [ %.sroa.0320.41, %.lr.ph.i315 ] ; 2 uses
  %.sroa.38.42 = phi i32 [ %i.ccu, %bb.gi ], [ %.sroa.38.41, %.lr.ph.i315 ] ; 2 uses
  %i.ccx = phi i32 [ %i.ccv, %bb.gi ], [ %i.ccm, %.lr.ph.i315 ]
  %i.ccy = phi i32 [ %i.ccu, %bb.gi ], [ %i.ccn, %.lr.ph.i315 ]
  %i.ccz = phi i64 [ %i.ccw, %bb.gi ], [ 255, %.lr.ph.i315 ]
  %i.cda = zext nneg i8 %i.cco to i64
  %i.cdb = shl nuw nsw i64 %i.ccz, %i.cda
  %i.cdc = or i64 %i.cdb, %i.ccl                  ; 2 uses
  %i.cdd = select i1 %i.ccp, i8 7, i8 8
  %i.cde = add nuw nsw i8 %i.cdd, %i.cco          ; 3 uses
  %i.cdf = icmp samesign ult i8 %i.cde, 32
  br i1 %i.cdf, label %.lr.ph.i315, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit276, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit276:     ; preds = %bb.gj, %bb.gh
  %.sroa.0320.21 = phi i32 [ %.sroa.0320.3.lcssa, %bb.gh ], [ %.sroa.0320.42, %bb.gj ]
  %.sroa.38.21 = phi i32 [ %.sroa.38.3.lcssa, %bb.gh ], [ %.sroa.38.42, %bb.gj ]
  %.sroa.84339.21 = phi i64 [ %.sroa.84339.3.lcssa, %bb.gh ], [ %i.cdc, %bb.gj ] ; 2 uses
  %.sroa.52.21 = phi i8 [ %.sroa.52.3.lcssa, %bb.gh ], [ %i.cde, %bb.gj ]
  %.mask501 = and i32 %i.cbu, 255
  %i.cdg = zext nneg i32 %.mask501 to i64         ; 2 uses
  %notmask.i275 = shl nsw i64 -1, %i.cdg
  %i.cdh = xor i64 %notmask.i275, -1
  %i.cdi = and i64 %.sroa.84339.21, %i.cdh
  %i.cdj = lshr i64 %.sroa.84339.21, %i.cdg
  %i.cdk = sub i8 %.sroa.52.21, %i.ccj
  %i.cdl = trunc i64 %i.cdi to i32
  %i.cdm = shl nuw i32 %i.cch, %i.cbu
  %i.cdn = add nsw i32 %i.cdm, %i.cdl
  br label %jpeg2000_decode_mag_sgn.exit254

jpeg2000_decode_mag_sgn.exit254:                  ; preds = %.preheader526, %jpeg2000_bitbuf_get_bits_lsb_forward.exit276
  %.sroa.0320.12 = phi i32 [ %.sroa.0320.21, %jpeg2000_bitbuf_get_bits_lsb_forward.exit276 ], [ %.sroa.0320.3.lcssa, %.preheader526 ] ; 4 uses
  %.sroa.38.12 = phi i32 [ %.sroa.38.21, %jpeg2000_bitbuf_get_bits_lsb_forward.exit276 ], [ %.sroa.38.3.lcssa, %.preheader526 ] ; 4 uses
  %.sroa.84339.12 = phi i64 [ %i.cdj, %jpeg2000_bitbuf_get_bits_lsb_forward.exit276 ], [ %.sroa.84339.3.lcssa, %.preheader526 ] ; 3 uses
  %.sroa.52.12 = phi i8 [ %i.cdk, %jpeg2000_bitbuf_get_bits_lsb_forward.exit276 ], [ %.sroa.52.3.lcssa, %.preheader526 ] ; 5 uses
  %.0.i253 = phi i32 [ %i.cdn, %jpeg2000_bitbuf_get_bits_lsb_forward.exit276 ], [ 0, %.preheader526 ] ; 3 uses
  %.not.i239 = icmp eq i32 %i.cbs, %i.cbt
  br i1 %.not.i239, label %bb.gk, label %ff_clz_c.exit.i243

ff_clz_c.exit.i243:                               ; preds = %jpeg2000_decode_mag_sgn.exit254
  %i.cdo = lshr i32 %.0.i253, 1
  %i.cdp = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.cdo, i1 false)
  %i.cdq = trunc nuw nsw i32 %i.cdp to i8
  %i.cdr = sub nuw nsw i8 33, %i.cdq
  %i.cds = getelementptr inbounds nuw i8, ptr %i.cap, i64 %i.byd
  store i8 %i.cdr, ptr %i.cds, align 1, !tbaa !13
  %i.cdt = ashr i32 %.0.i253, 1
  %i.cdu = add nsw i32 %i.cdt, 1
  %i.cdv = getelementptr inbounds nuw [4 x i8], ptr %i.cce, i64 %i.byd
  %i.cdw = shl i32 %i.cdu, %i.atl
  %i.cdx = shl i32 %.0.i253, 31
  %i.cdy = or i32 %i.cdx, %i.cdw
  %i.cdz = or i32 %i.cdy, %i.atn
  store i32 %i.cdz, ptr %i.cdv, align 4, !tbaa !12
  br label %bb.gk

bb.gk:                                            ; preds = %ff_clz_c.exit.i243, %jpeg2000_decode_mag_sgn.exit254
  %i.cea = lshr i32 %i.ccg, 1
  %i.ceb = and i32 %i.cea, 1
  %i.cec = icmp sgt i32 %52, 0
  br i1 %i.cec, label %bb.gl, label %jpeg2000_decode_mag_sgn.exit254.1

bb.gl:                                            ; preds = %bb.gk
  %i.ced = trunc i32 %52 to i8                    ; 2 uses
  %.not.i274.1 = icmp ule i8 %.sroa.52.12, %i.ced
  %i.cee = icmp ult i8 %.sroa.52.12, 32
  %or.cond489.1 = and i1 %i.cee, %.not.i274.1
  br i1 %or.cond489.1, label %.lr.ph.i315.1, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit276.1

.lr.ph.i315.1:                                    ; preds = %bb.gl, %bb.gn
  %.sroa.0320.41.1 = phi i32 [ %.sroa.0320.42.1, %bb.gn ], [ %.sroa.0320.12, %bb.gl ]
  %.sroa.38.41.1 = phi i32 [ %.sroa.38.42.1, %bb.gn ], [ %.sroa.38.12, %bb.gl ]
  %i.cef = phi i64 [ %i.cew, %bb.gn ], [ %.sroa.84339.12, %bb.gl ]
  %i.ceg = phi i32 [ %i.cer, %bb.gn ], [ %.sroa.0320.12, %bb.gl ] ; 4 uses
  %i.ceh = phi i32 [ %i.ces, %bb.gn ], [ %.sroa.38.12, %bb.gl ] ; 2 uses
  %i.cei = phi i8 [ %i.cey, %bb.gn ], [ %.sroa.52.12, %bb.gl ] ; 2 uses
  %i.cej = icmp eq i32 %i.ceh, 255
  %i.cek = icmp ult i32 %i.ceg, %i.cl
  br i1 %i.cek, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %.lr.ph.i315.1
  %i.cel = sext i32 %i.ceg to i64
  %i.cem = getelementptr inbounds i8, ptr %i.bc, i64 %i.cel
  %i.cen = load i8, ptr %i.cem, align 1, !tbaa !13 ; 2 uses
  %i.ceo = zext i8 %i.cen to i32                  ; 2 uses
  %i.cep = add nuw nsw i32 %i.ceg, 1              ; 2 uses
  %i.ceq = zext i8 %i.cen to i64
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %.lr.ph.i315.1
  %.sroa.0320.42.1 = phi i32 [ %i.cep, %bb.gm ], [ %.sroa.0320.41.1, %.lr.ph.i315.1 ] ; 2 uses
  %.sroa.38.42.1 = phi i32 [ %i.ceo, %bb.gm ], [ %.sroa.38.41.1, %.lr.ph.i315.1 ] ; 2 uses
  %i.cer = phi i32 [ %i.cep, %bb.gm ], [ %i.ceg, %.lr.ph.i315.1 ]
  %i.ces = phi i32 [ %i.ceo, %bb.gm ], [ %i.ceh, %.lr.ph.i315.1 ]
  %i.cet = phi i64 [ %i.ceq, %bb.gm ], [ 255, %.lr.ph.i315.1 ]
  %i.ceu = zext nneg i8 %i.cei to i64
  %i.cev = shl nuw nsw i64 %i.cet, %i.ceu
  %i.cew = or i64 %i.cev, %i.cef                  ; 2 uses
  %i.cex = select i1 %i.cej, i8 7, i8 8
  %i.cey = add nuw nsw i8 %i.cex, %i.cei          ; 3 uses
  %i.cez = icmp samesign ult i8 %i.cey, 32
  br i1 %i.cez, label %.lr.ph.i315.1, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit276.1, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit276.1:   ; preds = %bb.gn, %bb.gl
  %.sroa.0320.21.1 = phi i32 [ %.sroa.0320.12, %bb.gl ], [ %.sroa.0320.42.1, %bb.gn ]
  %.sroa.38.21.1 = phi i32 [ %.sroa.38.12, %bb.gl ], [ %.sroa.38.42.1, %bb.gn ]
  %.sroa.84339.21.1 = phi i64 [ %.sroa.84339.12, %bb.gl ], [ %i.cew, %bb.gn ] ; 2 uses
  %.sroa.52.21.1 = phi i8 [ %.sroa.52.12, %bb.gl ], [ %i.cey, %bb.gn ]
  %.mask501.1 = and i32 %52, 255
  %i.cfa = zext nneg i32 %.mask501.1 to i64       ; 2 uses
  %notmask.i275.1 = shl nsw i64 -1, %i.cfa
  %i.cfb = xor i64 %notmask.i275.1, -1
  %i.cfc = and i64 %.sroa.84339.21.1, %i.cfb
  %i.cfd = lshr i64 %.sroa.84339.21.1, %i.cfa
  %i.cfe = sub i8 %.sroa.52.21.1, %i.ced
  %i.cff = trunc i64 %i.cfc to i32
  %i.cfg = shl nuw i32 %i.ceb, %52
  %i.cfh = add nsw i32 %i.cfg, %i.cff
  br label %jpeg2000_decode_mag_sgn.exit254.1

jpeg2000_decode_mag_sgn.exit254.1:                ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit276.1, %bb.gk
  %.sroa.0320.12.1 = phi i32 [ %.sroa.0320.21.1, %jpeg2000_bitbuf_get_bits_lsb_forward.exit276.1 ], [ %.sroa.0320.12, %bb.gk ] ; 4 uses
  %.sroa.38.12.1 = phi i32 [ %.sroa.38.21.1, %jpeg2000_bitbuf_get_bits_lsb_forward.exit276.1 ], [ %.sroa.38.12, %bb.gk ] ; 4 uses
  %.sroa.84339.12.1 = phi i64 [ %i.cfd, %jpeg2000_bitbuf_get_bits_lsb_forward.exit276.1 ], [ %.sroa.84339.12, %bb.gk ] ; 3 uses
  %.sroa.52.12.1 = phi i8 [ %i.cfe, %jpeg2000_bitbuf_get_bits_lsb_forward.exit276.1 ], [ %.sroa.52.12, %bb.gk ] ; 5 uses
  %.0.i253.1 = phi i32 [ %i.cfh, %jpeg2000_bitbuf_get_bits_lsb_forward.exit276.1 ], [ 0, %bb.gk ] ; 3 uses
  %.not.i239.1 = icmp eq i32 %52, 0
  br i1 %.not.i239.1, label %bb.go, label %ff_clz_c.exit.i243.1

ff_clz_c.exit.i243.1:                             ; preds = %jpeg2000_decode_mag_sgn.exit254.1
  %i.cfi = lshr i32 %.0.i253.1, 1
  %i.cfj = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.cfi, i1 false)
  %i.cfk = trunc nuw nsw i32 %i.cfj to i8
  %i.cfl = sub nuw nsw i8 33, %i.cfk
  %i.cfm = getelementptr inbounds nuw i8, ptr %i.cap, i64 %i.byi
  store i8 %i.cfl, ptr %i.cfm, align 1, !tbaa !13
  %i.cfn = ashr i32 %.0.i253.1, 1
  %i.cfo = add nsw i32 %i.cfn, 1
  %i.cfp = getelementptr inbounds nuw [4 x i8], ptr %i.cce, i64 %i.byi
  %i.cfq = shl i32 %i.cfo, %i.atl
  %i.cfr = shl i32 %.0.i253.1, 31
  %i.cfs = or i32 %i.cfr, %i.cfq
  %i.cft = or i32 %i.cfs, %i.atn
  store i32 %i.cft, ptr %i.cfp, align 4, !tbaa !12
  br label %bb.go

bb.go:                                            ; preds = %ff_clz_c.exit.i243.1, %jpeg2000_decode_mag_sgn.exit254.1
  %i.cfu = lshr i32 %i.ccg, 2
  %i.cfv = and i32 %i.cfu, 1
  %i.cfw = icmp sgt i32 %55, 0
  br i1 %i.cfw, label %bb.gp, label %jpeg2000_decode_mag_sgn.exit254.2

bb.gp:                                            ; preds = %bb.go
  %i.cfx = trunc i32 %55 to i8                    ; 2 uses
  %.not.i274.2 = icmp ule i8 %.sroa.52.12.1, %i.cfx
  %i.cfy = icmp ult i8 %.sroa.52.12.1, 32
  %or.cond489.2 = and i1 %i.cfy, %.not.i274.2
  br i1 %or.cond489.2, label %.lr.ph.i315.2, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit276.2

.lr.ph.i315.2:                                    ; preds = %bb.gp, %bb.gr
  %.sroa.0320.41.2 = phi i32 [ %.sroa.0320.42.2, %bb.gr ], [ %.sroa.0320.12.1, %bb.gp ]
  %.sroa.38.41.2 = phi i32 [ %.sroa.38.42.2, %bb.gr ], [ %.sroa.38.12.1, %bb.gp ]
  %i.cfz = phi i64 [ %i.cgq, %bb.gr ], [ %.sroa.84339.12.1, %bb.gp ]
  %i.cga = phi i32 [ %i.cgl, %bb.gr ], [ %.sroa.0320.12.1, %bb.gp ] ; 4 uses
  %i.cgb = phi i32 [ %i.cgm, %bb.gr ], [ %.sroa.38.12.1, %bb.gp ] ; 2 uses
  %i.cgc = phi i8 [ %i.cgs, %bb.gr ], [ %.sroa.52.12.1, %bb.gp ] ; 2 uses
  %i.cgd = icmp eq i32 %i.cgb, 255
  %i.cge = icmp ult i32 %i.cga, %i.cl
  br i1 %i.cge, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %.lr.ph.i315.2
  %i.cgf = sext i32 %i.cga to i64
  %i.cgg = getelementptr inbounds i8, ptr %i.bc, i64 %i.cgf
  %i.cgh = load i8, ptr %i.cgg, align 1, !tbaa !13 ; 2 uses
  %i.cgi = zext i8 %i.cgh to i32                  ; 2 uses
  %i.cgj = add nuw nsw i32 %i.cga, 1              ; 2 uses
  %i.cgk = zext i8 %i.cgh to i64
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %.lr.ph.i315.2
  %.sroa.0320.42.2 = phi i32 [ %i.cgj, %bb.gq ], [ %.sroa.0320.41.2, %.lr.ph.i315.2 ] ; 2 uses
  %.sroa.38.42.2 = phi i32 [ %i.cgi, %bb.gq ], [ %.sroa.38.41.2, %.lr.ph.i315.2 ] ; 2 uses
  %i.cgl = phi i32 [ %i.cgj, %bb.gq ], [ %i.cga, %.lr.ph.i315.2 ]
  %i.cgm = phi i32 [ %i.cgi, %bb.gq ], [ %i.cgb, %.lr.ph.i315.2 ]
  %i.cgn = phi i64 [ %i.cgk, %bb.gq ], [ 255, %.lr.ph.i315.2 ]
  %i.cgo = zext nneg i8 %i.cgc to i64
  %i.cgp = shl nuw nsw i64 %i.cgn, %i.cgo
  %i.cgq = or i64 %i.cgp, %i.cfz                  ; 2 uses
  %i.cgr = select i1 %i.cgd, i8 7, i8 8
  %i.cgs = add nuw nsw i8 %i.cgr, %i.cgc          ; 3 uses
  %i.cgt = icmp samesign ult i8 %i.cgs, 32
  br i1 %i.cgt, label %.lr.ph.i315.2, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit276.2, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit276.2:   ; preds = %bb.gr, %bb.gp
  %.sroa.0320.21.2 = phi i32 [ %.sroa.0320.12.1, %bb.gp ], [ %.sroa.0320.42.2, %bb.gr ]
  %.sroa.38.21.2 = phi i32 [ %.sroa.38.12.1, %bb.gp ], [ %.sroa.38.42.2, %bb.gr ]
  %.sroa.84339.21.2 = phi i64 [ %.sroa.84339.12.1, %bb.gp ], [ %i.cgq, %bb.gr ] ; 2 uses
  %.sroa.52.21.2 = phi i8 [ %.sroa.52.12.1, %bb.gp ], [ %i.cgs, %bb.gr ]
  %.mask501.2 = and i32 %55, 255
  %i.cgu = zext nneg i32 %.mask501.2 to i64       ; 2 uses
  %notmask.i275.2 = shl nsw i64 -1, %i.cgu
  %i.cgv = xor i64 %notmask.i275.2, -1
  %i.cgw = and i64 %.sroa.84339.21.2, %i.cgv
  %i.cgx = lshr i64 %.sroa.84339.21.2, %i.cgu
  %i.cgy = sub i8 %.sroa.52.21.2, %i.cfx
  %i.cgz = trunc i64 %i.cgw to i32
  %i.cha = shl nuw i32 %i.cfv, %55
  %i.chb = add nsw i32 %i.cha, %i.cgz
  br label %jpeg2000_decode_mag_sgn.exit254.2

jpeg2000_decode_mag_sgn.exit254.2:                ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit276.2, %bb.go
  %.sroa.0320.12.2 = phi i32 [ %.sroa.0320.21.2, %jpeg2000_bitbuf_get_bits_lsb_forward.exit276.2 ], [ %.sroa.0320.12.1, %bb.go ] ; 4 uses
  %.sroa.38.12.2 = phi i32 [ %.sroa.38.21.2, %jpeg2000_bitbuf_get_bits_lsb_forward.exit276.2 ], [ %.sroa.38.12.1, %bb.go ] ; 4 uses
  %.sroa.84339.12.2 = phi i64 [ %i.cgx, %jpeg2000_bitbuf_get_bits_lsb_forward.exit276.2 ], [ %.sroa.84339.12.1, %bb.go ] ; 3 uses
  %.sroa.52.12.2 = phi i8 [ %i.cgy, %jpeg2000_bitbuf_get_bits_lsb_forward.exit276.2 ], [ %.sroa.52.12.1, %bb.go ] ; 5 uses
  %.0.i253.2 = phi i32 [ %i.chb, %jpeg2000_bitbuf_get_bits_lsb_forward.exit276.2 ], [ 0, %bb.go ] ; 3 uses
  %.not.i239.2 = icmp eq i32 %55, 0
  br i1 %.not.i239.2, label %bb.gs, label %ff_clz_c.exit.i243.2

ff_clz_c.exit.i243.2:                             ; preds = %jpeg2000_decode_mag_sgn.exit254.2
  %i.chc = lshr i32 %.0.i253.2, 1
  %i.chd = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.chc, i1 false)
  %i.che = trunc nuw nsw i32 %i.chd to i8
  %i.chf = sub nuw nsw i8 33, %i.che
  %i.chg = getelementptr inbounds nuw i8, ptr %i.cap, i64 %i.bym
  store i8 %i.chf, ptr %i.chg, align 1, !tbaa !13
  %i.chh = ashr i32 %.0.i253.2, 1
  %i.chi = add nsw i32 %i.chh, 1
  %i.chj = getelementptr inbounds nuw [4 x i8], ptr %i.cce, i64 %i.bym
  %i.chk = shl i32 %i.chi, %i.atl
  %i.chl = shl i32 %.0.i253.2, 31
  %i.chm = or i32 %i.chl, %i.chk
  %i.chn = or i32 %i.chm, %i.atn
  store i32 %i.chn, ptr %i.chj, align 4, !tbaa !12
  br label %bb.gs

bb.gs:                                            ; preds = %ff_clz_c.exit.i243.2, %jpeg2000_decode_mag_sgn.exit254.2
  %i.cho = lshr i32 %i.ccg, 3
  %i.chp = and i32 %i.cho, 1
  %i.chq = icmp sgt i32 %58, 0
  br i1 %i.chq, label %bb.gt, label %jpeg2000_decode_mag_sgn.exit254.3

bb.gt:                                            ; preds = %bb.gs
  %i.chr = trunc i32 %58 to i8                    ; 2 uses
  %.not.i274.3 = icmp ule i8 %.sroa.52.12.2, %i.chr
  %i.chs = icmp ult i8 %.sroa.52.12.2, 32
  %or.cond489.3 = and i1 %i.chs, %.not.i274.3
  br i1 %or.cond489.3, label %.lr.ph.i315.3, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit276.3

.lr.ph.i315.3:                                    ; preds = %bb.gt, %bb.gv
  %.sroa.0320.41.3 = phi i32 [ %.sroa.0320.42.3, %bb.gv ], [ %.sroa.0320.12.2, %bb.gt ]
  %.sroa.38.41.3 = phi i32 [ %.sroa.38.42.3, %bb.gv ], [ %.sroa.38.12.2, %bb.gt ]
  %i.cht = phi i64 [ %i.cik, %bb.gv ], [ %.sroa.84339.12.2, %bb.gt ]
  %i.chu = phi i32 [ %i.cif, %bb.gv ], [ %.sroa.0320.12.2, %bb.gt ] ; 4 uses
  %i.chv = phi i32 [ %i.cig, %bb.gv ], [ %.sroa.38.12.2, %bb.gt ] ; 2 uses
  %i.chw = phi i8 [ %i.cim, %bb.gv ], [ %.sroa.52.12.2, %bb.gt ] ; 2 uses
  %i.chx = icmp eq i32 %i.chv, 255
  %i.chy = icmp ult i32 %i.chu, %i.cl
  br i1 %i.chy, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %.lr.ph.i315.3
  %i.chz = sext i32 %i.chu to i64
  %i.cia = getelementptr inbounds i8, ptr %i.bc, i64 %i.chz
  %i.cib = load i8, ptr %i.cia, align 1, !tbaa !13 ; 2 uses
  %i.cic = zext i8 %i.cib to i32                  ; 2 uses
  %i.cid = add nuw nsw i32 %i.chu, 1              ; 2 uses
  %i.cie = zext i8 %i.cib to i64
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %.lr.ph.i315.3
  %.sroa.0320.42.3 = phi i32 [ %i.cid, %bb.gu ], [ %.sroa.0320.41.3, %.lr.ph.i315.3 ] ; 2 uses
  %.sroa.38.42.3 = phi i32 [ %i.cic, %bb.gu ], [ %.sroa.38.41.3, %.lr.ph.i315.3 ] ; 2 uses
  %i.cif = phi i32 [ %i.cid, %bb.gu ], [ %i.chu, %.lr.ph.i315.3 ]
  %i.cig = phi i32 [ %i.cic, %bb.gu ], [ %i.chv, %.lr.ph.i315.3 ]
  %i.cih = phi i64 [ %i.cie, %bb.gu ], [ 255, %.lr.ph.i315.3 ]
  %i.cii = zext nneg i8 %i.chw to i64
  %i.cij = shl nuw nsw i64 %i.cih, %i.cii
  %i.cik = or i64 %i.cij, %i.cht                  ; 2 uses
  %i.cil = select i1 %i.chx, i8 7, i8 8
  %i.cim = add nuw nsw i8 %i.cil, %i.chw          ; 3 uses
  %i.cin = icmp samesign ult i8 %i.cim, 32
  br i1 %i.cin, label %.lr.ph.i315.3, label %jpeg2000_bitbuf_get_bits_lsb_forward.exit276.3, !llvm.loop !27

jpeg2000_bitbuf_get_bits_lsb_forward.exit276.3:   ; preds = %bb.gv, %bb.gt
  %.sroa.0320.21.3 = phi i32 [ %.sroa.0320.12.2, %bb.gt ], [ %.sroa.0320.42.3, %bb.gv ]
  %.sroa.38.21.3 = phi i32 [ %.sroa.38.12.2, %bb.gt ], [ %.sroa.38.42.3, %bb.gv ]
  %.sroa.84339.21.3 = phi i64 [ %.sroa.84339.12.2, %bb.gt ], [ %i.cik, %bb.gv ] ; 2 uses
  %.sroa.52.21.3 = phi i8 [ %.sroa.52.12.2, %bb.gt ], [ %i.cim, %bb.gv ]
  %.mask501.3 = and i32 %58, 255
  %i.cio = zext nneg i32 %.mask501.3 to i64       ; 2 uses
  %notmask.i275.3 = shl nsw i64 -1, %i.cio
  %i.cip = xor i64 %notmask.i275.3, -1
  %i.ciq = and i64 %.sroa.84339.21.3, %i.cip
  %i.cir = lshr i64 %.sroa.84339.21.3, %i.cio
  %i.cis = sub i8 %.sroa.52.21.3, %i.chr
  %i.cit = trunc i64 %i.ciq to i32
  %i.ciu = shl nuw i32 %i.chp, %58
  %i.civ = add nsw i32 %i.ciu, %i.cit
  br label %jpeg2000_decode_mag_sgn.exit254.3

jpeg2000_decode_mag_sgn.exit254.3:                ; preds = %jpeg2000_bitbuf_get_bits_lsb_forward.exit276.3, %bb.gs
  %.sroa.0320.12.3 = phi i32 [ %.sroa.0320.21.3, %jpeg2000_bitbuf_get_bits_lsb_forward.exit276.3 ], [ %.sroa.0320.12.2, %bb.gs ]
  %.sroa.38.12.3 = phi i32 [ %.sroa.38.21.3, %jpeg2000_bitbuf_get_bits_lsb_forward.exit276.3 ], [ %.sroa.38.12.2, %bb.gs ]
  %.sroa.84339.12.3 = phi i64 [ %i.cir, %jpeg2000_bitbuf_get_bits_lsb_forward.exit276.3 ], [ %.sroa.84339.12.2, %bb.gs ]
  %.sroa.52.12.3 = phi i8 [ %i.cis, %jpeg2000_bitbuf_get_bits_lsb_forward.exit276.3 ], [ %.sroa.52.12.2, %bb.gs ]
  %.0.i253.3 = phi i32 [ %i.civ, %jpeg2000_bitbuf_get_bits_lsb_forward.exit276.3 ], [ 0, %bb.gs ] ; 3 uses
  %.not.i239.3 = icmp eq i32 %58, 0
  br i1 %.not.i239.3, label %recover_mag_sgn.exit244, label %ff_clz_c.exit.i243.3

ff_clz_c.exit.i243.3:                             ; preds = %jpeg2000_decode_mag_sgn.exit254.3
  %i.ciw = lshr i32 %.0.i253.3, 1
  %i.cix = tail call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 %i.ciw, i1 false)
  %i.ciy = trunc nuw nsw i32 %i.cix to i8
  %i.ciz = sub nuw nsw i8 33, %i.ciy
  %i.cja = getelementptr inbounds nuw i8, ptr %i.cap, i64 %i.byq
  store i8 %i.ciz, ptr %i.cja, align 1, !tbaa !13
  %i.cjb = ashr i32 %.0.i253.3, 1
  %i.cjc = add nsw i32 %i.cjb, 1
  %i.cjd = getelementptr inbounds nuw [4 x i8], ptr %i.cce, i64 %i.byq
  %i.cje = shl i32 %i.cjc, %i.atl
  %i.cjf = shl i32 %.0.i253.3, 31
  %i.cjg = or i32 %i.cjf, %i.cje
  %i.cjh = or i32 %i.cjg, %i.atn
  store i32 %i.cjh, ptr %i.cjd, align 4, !tbaa !12
  br label %recover_mag_sgn.exit244

recover_mag_sgn.exit244:                          ; preds = %ff_clz_c.exit.i243.3, %jpeg2000_decode_mag_sgn.exit254.3
  %i.cji = trunc i32 %i.bxq to i16
  br label %bb.gw

bb.gw:                                            ; preds = %recover_mag_sgn.exit244, %.critedge.i
  %.sroa.0320.4 = phi i32 [ %.sroa.0320.3.lcssa, %.critedge.i ], [ %.sroa.0320.12.3, %recover_mag_sgn.exit244 ]
  %.sroa.38.4 = phi i32 [ %.sroa.38.3.lcssa, %.critedge.i ], [ %.sroa.38.12.3, %recover_mag_sgn.exit244 ]
  %.sroa.84339.4 = phi i64 [ %.sroa.84339.3.lcssa, %.critedge.i ], [ %.sroa.84339.12.3, %recover_mag_sgn.exit244 ]
  %.sroa.52.4 = phi i8 [ %.sroa.52.3.lcssa, %.critedge.i ], [ %.sroa.52.12.3, %recover_mag_sgn.exit244 ]
  %.4.i = phi i16 [ %.3.i.lcssa, %.critedge.i ], [ %i.cji, %recover_mag_sgn.exit244 ]
  %i.cjj = add nuw i32 %.0673.i723, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.cjj, %i.ec
  br i1 %exitcond.not, label %.preheader524, label %.preheader527, !llvm.loop !30

.preheader523:                                    ; preds = %.preheader523.preheader, %._crit_edge729
  %indvars.iv838 = phi i64 [ 0, %.preheader523.preheader ], [ %indvars.iv.next839, %._crit_edge729 ] ; 3 uses
  %.0681.i733 = phi ptr [ %i.ei, %.preheader523.preheader ], [ %i.clg, %._crit_edge729 ]
  %.0683.i732 = phi ptr [ %i.eg, %.preheader523.preheader ], [ %i.clf, %._crit_edge729 ]
  %i.cjk = shl nuw nsw i64 %indvars.iv838, 1      ; 3 uses
  %i.cjl = mul nuw nsw i64 %i.cjk, %i.atw         ; 2 uses
  %i.cjm = or disjoint i64 %i.cjk, 1
  %i.cjn = mul nuw nsw i64 %i.cjm, %i.atw         ; 3 uses
  %i.cjo = trunc nuw nsw i64 %indvars.iv838 to i32
  %i.cjp = xor i32 %i.eb, %i.cjo
  %i.cjq = icmp ne i32 %i.cjp, -1
  %i.cjr = or i1 %i.att, %i.cjq                   ; 3 uses
  %i.cjs = add nuw nsw i64 %i.cjk, 2
  %i.cjt = mul nuw nsw i64 %i.cjs, %i.atw         ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.cjl
  %invariant.gep1235 = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.cjn
  %invariant.gep1237 = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.cjt
  %invariant.gep1239 = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.cjl
  %invariant.gep1241 = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.cjn
  %invariant.gep1243 = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.cjt
  br label %bb.gx

._crit_edge729:                                   ; preds = %bb.gx
  %indvars.iv.next839 = add nuw nsw i64 %indvars.iv838, 1 ; 2 uses
  %exitcond842.not = icmp eq i64 %indvars.iv.next839, %wide.trip.count841
  br i1 %exitcond842.not, label %jpeg2000_decode_ht_cleanup_segment.exit, label %.preheader523, !llvm.loop !31

bb.gx:                                            ; preds = %.preheader523, %bb.gx
  %indvars.iv = phi i64 [ 0, %.preheader523 ], [ %indvars.iv.next, %bb.gx ] ; 3 uses
  %.1682.i726 = phi ptr [ %.0681.i733, %.preheader523 ], [ %i.clg, %bb.gx ] ; 5 uses
  %.1684.i725 = phi ptr [ %.0683.i732, %.preheader523 ], [ %i.clf, %bb.gx ] ; 5 uses
  %i.cju = shl nuw nsw i64 %indvars.iv, 1         ; 4 uses
  %i.cjv = load i32, ptr %.1682.i726, align 4, !tbaa !12
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.cju
  store i32 %i.cjv, ptr %gep, align 4, !tbaa !12
  %i.cjw = load i8, ptr %.1684.i725, align 1, !tbaa !13
  %i.cjx = or disjoint i64 %i.cju, 1              ; 3 uses
  %i.cjy = add nuw nsw i64 %i.cjx, %i.cjn         ; 2 uses
  %i.cjz = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.cjy ; 2 uses
  %i.cka = load i8, ptr %i.cjz, align 1, !tbaa !13
  %i.ckb = or i8 %i.cka, %i.cjw
  store i8 %i.ckb, ptr %i.cjz, align 1, !tbaa !13
  %i.ckc = getelementptr inbounds nuw i8, ptr %.1684.i725, i64 1
  %i.ckd = getelementptr inbounds nuw i8, ptr %.1682.i726, i64 4
  %i.cke = load i32, ptr %i.ckd, align 4, !tbaa !12
  %i.ckf = select i1 %i.cjr, i32 %i.cke, i32 0
  %gep1236 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1235, i64 %i.cju
  store i32 %i.ckf, ptr %gep1236, align 4, !tbaa !12
  %i.ckg = load i8, ptr %i.ckc, align 1, !tbaa !13
  %gep1238 = getelementptr inbounds nuw i8, ptr %invariant.gep1237, i64 %i.cjx ; 2 uses
  %i.ckh = load i8, ptr %gep1238, align 1, !tbaa !13
  %i.cki = select i1 %i.cjr, i8 %i.ckg, i8 0
  %i.ckj = or i8 %i.ckh, %i.cki
  store i8 %i.ckj, ptr %gep1238, align 1, !tbaa !13
  %i.ckk = getelementptr inbounds nuw i8, ptr %.1684.i725, i64 2
  %i.ckl = getelementptr inbounds nuw i8, ptr %.1682.i726, i64 8
  %i.ckm = icmp ne i64 %indvars.iv, %i.atv
  %i.ckn = or i1 %i.atu, %i.ckm                   ; 3 uses
  %i.cko = load i32, ptr %i.ckl, align 4, !tbaa !12
  %i.ckp = select i1 %i.ckn, i32 %i.cko, i32 0
  %gep1240 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1239, i64 %i.cjx
  store i32 %i.ckp, ptr %gep1240, align 4, !tbaa !12
  %i.ckq = load i8, ptr %i.ckk, align 1, !tbaa !13
  %i.ckr = add nuw nsw i64 %i.cju, 2              ; 2 uses
  %gep1242 = getelementptr inbounds nuw i8, ptr %invariant.gep1241, i64 %i.ckr ; 2 uses
  %i.cks = load i8, ptr %gep1242, align 1, !tbaa !13
  %i.ckt = select i1 %i.ckn, i8 %i.ckq, i8 0
  %i.cku = or i8 %i.cks, %i.ckt
  store i8 %i.cku, ptr %gep1242, align 1, !tbaa !13
  %i.ckv = getelementptr inbounds nuw i8, ptr %.1684.i725, i64 3
  %i.ckw = getelementptr inbounds nuw i8, ptr %.1682.i726, i64 12
  %i.ckx = or i1 %i.cjr, %i.ckn                   ; 2 uses
  %i.cky = load i32, ptr %i.ckw, align 4, !tbaa !12
  %i.ckz = select i1 %i.ckx, i32 %i.cky, i32 0
  %i.cla = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.cjy
  store i32 %i.ckz, ptr %i.cla, align 4, !tbaa !12
  %i.clb = load i8, ptr %i.ckv, align 1, !tbaa !13
  %gep1244 = getelementptr inbounds nuw i8, ptr %invariant.gep1243, i64 %i.ckr ; 2 uses
  %i.clc = load i8, ptr %gep1244, align 1, !tbaa !13
  %i.cld = select i1 %i.ckx, i8 %i.clb, i8 0
  %i.cle = or i8 %i.clc, %i.cld
  store i8 %i.cle, ptr %gep1244, align 1, !tbaa !13
  %i.clf = getelementptr inbounds nuw i8, ptr %.1684.i725, i64 4 ; 2 uses
  %i.clg = getelementptr inbounds nuw i8, ptr %.1682.i726, i64 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond837.not = icmp eq i64 %indvars.iv.next, %i.atb
  br i1 %exitcond837.not, label %._crit_edge729, label %bb.gx, !llvm.loop !32

jpeg2000_decode_ht_cleanup_segment.exit:          ; preds = %jpeg2000_bitbuf_get_bits_lsb.exit203.cont, %bb.gg, %bb.ep, %._crit_edge729, %.preheader524, %.preheader523.lr.ph, %bb.w, %bb.cx
  %i.clh = phi i1 [ true, %bb.gg ], [ false, %.preheader524 ], [ true, %bb.w ], [ true, %bb.cx ], [ false, %._crit_edge729 ], [ false, %.preheader523.lr.ph ], [ true, %bb.ep ], [ true, %jpeg2000_bitbuf_get_bits_lsb.exit203.cont ]
  %.6.i = phi i32 [ -1094995529, %bb.gg ], [ 1, %.preheader524 ], [ -12, %bb.w ], [ -1094995529, %bb.cx ], [ 1, %._crit_edge729 ], [ 1, %.preheader523.lr.ph ], [ -1094995529, %bb.ep ], [ -1094995529, %jpeg2000_bitbuf_get_bits_lsb.exit203.cont ] ; 5 uses
  call void @av_freep(ptr noundef nonnull %i.e) #11
  call void @av_freep(ptr noundef nonnull %i.f) #11
  call void @av_freep(ptr noundef nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br i1 %i.clh, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %jpeg2000_decode_ht_cleanup_segment.exit.thread, %jpeg2000_decode_ht_cleanup_segment.exit
  %.0.i469 = phi i32 [ -1094995529, %jpeg2000_decode_ht_cleanup_segment.exit.thread ], [ %.6.i, %jpeg2000_decode_ht_cleanup_segment.exit ]
  %i.cli = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.clj = load ptr, ptr %i.cli, align 8, !tbaa !56
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.clj, i32 noundef 16, ptr noundef nonnull @.str.9) #11
  br label %.loopexit

bb.gz:                                            ; preds = %jpeg2000_decode_ht_cleanup_segment.exit
  %.not160 = icmp eq i32 %i.ao, 1
  br i1 %.not160, label %.thread470, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.clk = trunc nuw nsw i32 %4 to i16            ; 2 uses
  %i.cll = trunc nuw nsw i32 %5 to i16            ; 2 uses
  %i.clm = sub nuw nsw i8 29, %i.bk               ; 2 uses
  %i.cln = load ptr, ptr %i.h, align 8, !tbaa !37 ; 2 uses
  %i.clo = load ptr, ptr %i.i, align 8, !tbaa !39 ; 2 uses
  %i.clp = getelementptr i8, ptr %3, i64 100
  %.val = load i8, ptr %i.clp, align 4, !tbaa !60
  call fastcc void @jpeg2000_decode_sigprop_segment(i8 %.val, i16 noundef zeroext %i.clk, i16 noundef zeroext %i.cll, i32 noundef %i.n, ptr noundef nonnull %i.be, i32 noundef %i.at, i8 noundef zeroext %i.clm, ptr noundef %i.cln, ptr noundef %i.clo)
  %i.clq = icmp sgt i32 %i.ao, 2
  br i1 %i.clq, label %bb.hb, label %.thread470

bb.hb:                                            ; preds = %bb.ha
  call fastcc void @jpeg2000_decode_magref_segment(i16 noundef zeroext %i.clk, i16 noundef zeroext %i.cll, i32 noundef %i.n, ptr noundef nonnull %i.be, i32 noundef %i.at, i8 noundef zeroext %i.clm, ptr noundef %i.cln, ptr noundef %i.clo)
  br label %.thread470

.thread470:                                       ; preds = %bb.gz, %bb.hb, %bb.ha
  %i.clr = icmp sgt i32 %5, 0
  br i1 %i.clr, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.thread470
  %i.cls = icmp sgt i32 %4, 0
  %i.clt = load ptr, ptr %i.h, align 8            ; 2 uses
  %i.clu = zext i8 %7 to i32                      ; 2 uses
  %i.clv = xor i32 %i.m, -1
  br i1 %i.cls, label %.preheader.lr.ph.split, label %.loopexit

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %.not161 = icmp eq i8 %7, 0
  %i.clw = zext nneg i32 %i.n to i64              ; 2 uses
  %wide.trip.count861 = zext nneg i32 %5 to i64   ; 2 uses
  %wide.trip.count856 = zext nneg i32 %4 to i64   ; 3 uses
  br i1 %.not161, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %xtraiter = and i64 %wide.trip.count856, 1
  %i.clx = icmp eq i32 %4, 1
  %unroll_iter = and i64 %wide.trip.count856, 2046
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1422 = trunc i32 %4 to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge739.split.us.us
  %indvars.iv858 = phi i64 [ %indvars.iv.next859, %._crit_edge739.split.us.us ], [ 0, %.preheader.us.preheader ] ; 3 uses
  %i.cly = mul nuw nsw i64 %indvars.iv858, %i.clw
  %i.clz = trunc nuw nsw i64 %indvars.iv858 to i32 ; 3 uses
  %invariant.gep1247 = getelementptr inbounds nuw [4 x i8], ptr %i.clt, i64 %i.cly ; 3 uses
  br i1 %i.clx, label %.epil.preheader, label %.preheader.us.new

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %indvars.iv853 = phi i64 [ %indvars.iv.next854.1, %.preheader.us.new ], [ 0, %.preheader.us ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.cma = load i32, ptr %i.t, align 8, !tbaa !42
end_hunk_1
