Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/intrax8?download=true
inline.NumInlined: 32
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@x8_decode_intra_mb:bb.a
  %.1.i.i140 = phi i32 [ %i.gz, %bb.o ], [ %i.gh, %x8_select_ac_table.exit136 ]
  %i.hc = add i32 %.1.i.i140, %.165.i.i139
  %i.hd = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.hc) ; 10 uses
  store i32 %i.hd, ptr %i.o, align 8, !tbaa !34
  %i.he = icmp slt i32 %.167.i.i138, 46
  br i1 %i.he, label %bb.p, label %bb.r

bb.p:                                             ; preds = %get_vlc2.exit.i137
  %i.hf = icmp sgt i32 %.167.i.i138, -1
  br i1 %i.hf, label %bb.q, label %x8_get_ac_rlf.exit

bb.q:                                             ; preds = %bb.p
  %i.hg = icmp samesign ugt i32 %.167.i.i138, 22  ; 2 uses
  %i.hh = zext i1 %i.hg to i32
  %.neg.i141 = select i1 %i.hg, i32 -23, i32 0
  %i.hi = add nsw i32 %.neg.i141, %.167.i.i138    ; 2 uses
  %i.hj = and i32 %i.hi, 30
  %i.hk = lshr i32 15007744, %i.hj
  %i.hl = and i32 %i.hk, 3                        ; 2 uses
  %i.hm = shl nuw nsw i32 %i.hl, 3
  %i.hn = lshr i32 66319, %i.hm
  %i.ho = and i32 %i.hn, %i.hi
  br label %x8_get_ac_rlf.exit

bb.r:                                             ; preds = %get_vlc2.exit.i137
  %i.hp = icmp samesign ult i32 %.167.i.i138, 73
  br i1 %i.hp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hq = zext nneg i32 %.167.i.i138 to i64
  %i.hr = getelementptr [4 x i8], ptr @ac_decode_table, i64 %i.hq
  %i.hs = getelementptr i8, ptr %i.hr, i64 -184
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !39 ; 4 uses
  %i.hu = and i32 %i.ht, 15                       ; 2 uses
  %i.hv = lshr i32 %i.hd, 3
  %i.hw = zext nneg i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 1, !tbaa !36
  %i.hz = tail call i32 @llvm.bswap.i32(i32 %i.hy)
  %i.ia = and i32 %i.hd, 7
  %i.ib = shl i32 %i.hz, %i.ia
  %i.ic = sub nuw nsw i32 32, %i.hu
  %i.id = lshr i32 %i.ib, %i.ic                   ; 2 uses
  %i.ie = add i32 %i.hu, %i.hd
  %i.if = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.ie) ; 2 uses
  store i32 %i.if, ptr %i.o, align 8, !tbaa !34
  %i.ig = lshr i32 %i.ht, 8
  %i.ih = and i32 %i.ig, 255                      ; 2 uses
  %i.ii = lshr i32 %i.ht, 16
  %i.ij = and i32 %i.ii, 255
  %i.ik = and i32 %i.id, %i.ih
  %i.il = add nuw nsw i32 %i.ik, %i.ij
  %i.im = lshr i32 %i.ht, 24
  %i.in = xor i32 %i.ih, -1
  %i.io = and i32 %i.id, %i.in
  %i.ip = add nuw nsw i32 %i.io, %i.im
  %i.iq = icmp samesign ugt i32 %.167.i.i138, 58
  %i.ir = zext i1 %i.iq to i32
  br label %x8_get_ac_rlf.exit

bb.t:                                             ; preds = %bb.r
  %i.is = icmp samesign ult i32 %.167.i.i138, 75
  %i.it = lshr i32 %i.hd, 3
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 1, !tbaa !36
  %i.ix = tail call i32 @llvm.bswap.i32(i32 %i.iw)
  %i.iy = and i32 %i.hd, 7
  %i.iz = shl i32 %i.ix, %i.iy                    ; 2 uses
  br i1 %i.is, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ja = and i32 %.167.i.i138, 1
  %i.jb = xor i32 %i.ja, 1
  %i.jc = lshr i32 %i.iz, 27
  %i.jd = add i32 %i.hd, 5
  %i.je = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.jd) ; 2 uses
  store i32 %i.je, ptr %i.o, align 8, !tbaa !34
  %i.jf = zext nneg i32 %i.jc to i64
  %i.jg = getelementptr inbounds nuw i8, ptr @x8_get_ac_rlf.crazy_mix_runlevel, i64 %i.jf
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !36  ; 2 uses
  %i.ji = lshr i8 %i.jh, 4
  %i.jj = zext nneg i8 %i.ji to i32
  %i.jk = and i8 %i.jh, 15
  %i.jl = zext nneg i8 %i.jk to i32
  br label %x8_get_ac_rlf.exit

bb.v:                                             ; preds = %bb.t
  %i.jm = trunc i32 %.167.i.i138 to i1
  %i.jn = select i1 %i.jm, i32 4, i32 7           ; 2 uses
  %i.jo = sub nuw nsw i32 32, %i.jn
  %i.jp = lshr i32 %i.iz, %i.jo
  %i.jq = add i32 %i.hd, %i.jn
  %i.jr = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.jq) ; 4 uses
  store i32 %i.jr, ptr %i.o, align 8, !tbaa !34
  %i.js = lshr i32 %i.jr, 3
  %i.jt = zext nneg i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.jt
  %i.jv = load i32, ptr %i.ju, align 1, !tbaa !36
  %i.jw = tail call i32 @llvm.bswap.i32(i32 %i.jv)
  %i.jx = and i32 %i.jr, 7
  %i.jy = shl i32 %i.jw, %i.jx
  %i.jz = lshr i32 %i.jy, 26
  %i.ka = add i32 %i.jr, 6
  %i.kb = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.ka) ; 5 uses
  store i32 %i.kb, ptr %i.o, align 8, !tbaa !34
  %i.kc = lshr i32 %i.kb, 3
  %i.kd = zext nneg i32 %i.kc to i64
  %i.ke = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.kd
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !36
  %i.kg = icmp slt i32 %i.kb, %i.r
  %i.kh = zext i1 %i.kg to i32
  %spec.select.i.i = add i32 %i.kb, %i.kh         ; 2 uses
  %i.ki = zext i8 %i.kf to i32
  %i.kj = and i32 %i.kb, 7
  %i.kk = shl nuw nsw i32 %i.ki, %i.kj
  %i.kl = lshr i32 %i.kk, 7
  store i32 %spec.select.i.i, ptr %i.o, align 8, !tbaa !34
  %i.km = and i32 %i.kl, 1
  br label %x8_get_ac_rlf.exit

x8_get_ac_rlf.exit:                               ; preds = %bb.q, %bb.p, %bb.s, %bb.u, %bb.v
  %i.kn = phi i32 [ %spec.select.i.i, %bb.v ], [ %i.if, %bb.s ], [ %i.je, %bb.u ], [ %i.hd, %bb.q ], [ %i.hd, %bb.p ] ; 4 uses
  %.1157 = phi i32 [ %i.km, %bb.v ], [ %i.ir, %bb.s ], [ %i.jb, %bb.u ], [ %i.hh, %bb.q ], [ 64, %bb.p ]
  %.1155 = phi i32 [ %i.jz, %bb.v ], [ %i.il, %bb.s ], [ %i.jj, %bb.u ], [ %i.ho, %bb.q ], [ 64, %bb.p ]
  %.1153 = phi i32 [ %i.jp, %bb.v ], [ %i.ip, %bb.s ], [ %i.jl, %bb.u ], [ %i.hl, %bb.q ], [ 64, %bb.p ]
  %i.ko = add nuw nsw i32 %.0107, 1
  %i.kp = add nuw nsw i32 %i.ko, %.1155           ; 3 uses
  %i.kq = icmp sgt i32 %i.kp, 63
  br i1 %i.kq, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %x8_get_ac_rlf.exit
  %i.kr = add nuw nsw i32 %.1153, 1
  %i.ks = load i32, ptr %i.es, align 4, !tbaa !28
  %i.kt = mul nsw i32 %i.ks, %i.kr
  %i.ku = load i32, ptr %i.et, align 8, !tbaa !30
  %i.kv = add nsw i32 %i.kt, %i.ku
  %i.kw = lshr i32 %i.kn, 3
  %i.kx = zext nneg i32 %i.kw to i64
  %i.ky = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.kx
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !36
  %i.la = icmp slt i32 %i.kn, %i.r
  %i.lb = zext i1 %i.la to i32
  %spec.select.i = add i32 %i.kn, %i.lb           ; 2 uses
  %i.lc = zext i8 %i.kz to i32
  %i.ld = and i32 %i.kn, 7
  %i.le = shl nuw nsw i32 %i.lc, %i.ld
  %i.lf = lshr i32 %i.le, 7
  store i32 %spec.select.i, ptr %i.o, align 8, !tbaa !34
  %i.lg = and i32 %i.lf, 1                        ; 2 uses
  %i.lh = sub nsw i32 0, %i.lg
  %i.li = xor i32 %i.kv, %i.lh
  %i.lj = add nsw i32 %i.li, %i.lg                ; 2 uses
  %.pre170.a = zext nneg i32 %i.kp to i64         ; 2 uses
  br i1 %.not119, label %._crit_edge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.lk = getelementptr inbounds nuw [2 x i8], ptr @quant_table, i64 %.pre170.a
  %i.ll = load i16, ptr %i.lk, align 2, !tbaa !73
  %i.lm = sext i16 %i.ll to i32
  %i.ln = mul nsw i32 %i.lj, %i.lm
  %i.lo = ashr i32 %i.ln, 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.w, %bb.x
  %.0 = phi i32 [ %i.lo, %bb.x ], [ %i.lj, %bb.w ]
  %i.lp = trunc i32 %.0 to i16
  %i.lq = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.pre170.a
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !36
  %i.lt = zext i8 %i.ls to i64
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %i.lq, i64 %i.lt
  store i16 %i.lp, ptr %i.lu, align 2, !tbaa !73
  %.not120 = icmp eq i32 %.1157, 0
  br i1 %.not120, label %bb.l, label %.loopexit165, !llvm.loop !70

bb.y:                                             ; preds = %bb.f
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !49
  %.not121 = icmp ne i32 %i.lw, 0
  %i.lx = add nsw i32 %.sink.i161, 1
  %i.ly = icmp ult i32 %i.lx, 3
  %or.cond = select i1 %.not121, i1 %i.ly, i1 false
  br i1 %or.cond, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.in.v = select i1 %i.e, i64 600, i64 596
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.lz = load i32, ptr %.in, align 4, !tbaa !39
  %.in126.v = select i1 %i.e, i64 592, i64 560
  %.in126 = getelementptr inbounds nuw i8, ptr %0, i64 %.in126.v
  %i.ma = load i32, ptr %.in126, align 8, !tbaa !39
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !50
  %i.md = mul nsw i32 %i.mc, %i.lz
  %i.me = add nsw i32 %i.md, 4096
  %i.mf = ashr i32 %i.me, 13
  %i.mg = add nsw i32 %i.mf, %.sink.i161
  %i.mh = mul nsw i32 %i.mg, %i.ma
  %i.mi = add nsw i32 %i.mh, 4
  %i.mj = ashr i32 %i.mi, 3                       ; 3 uses
  %2 = icmp ugt i32 %i.mj, 255
  %isnotneg.i = icmp sgt i32 %i.mj, -1
  %3 = sext i1 %isnotneg.i to i8
  %i.mk = trunc nuw i32 %i.mj to i8
  %.0.i = select i1 %2, i8 %3, i8 %i.mk           ; 8 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.mm = zext nneg i32 %1 to i64
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %i.mm
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !42 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !31
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 64
  %i.ms = zext i1 %i.e to i64
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.ms
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !39
  %i.mv = sext i32 %i.mu to i64                   ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.mo, i8 %.0.i, i64 8, i1 false)
  %i.mw = getelementptr inbounds i8, ptr %i.mo, i64 %i.mv ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.mw, i8 %.0.i, i64 8, i1 false)
  %i.mx = getelementptr inbounds i8, ptr %i.mw, i64 %i.mv ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.mx, i8 %.0.i, i64 8, i1 false)
  %i.my = getelementptr inbounds i8, ptr %i.mx, i64 %i.mv ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.my, i8 %.0.i, i64 8, i1 false)
  %i.mz = getelementptr inbounds i8, ptr %i.my, i64 %i.mv ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.mz, i8 %.0.i, i64 8, i1 false)
  %i.na = getelementptr inbounds i8, ptr %i.mz, i64 %i.mv ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.na, i8 %.0.i, i64 8, i1 false)
  %i.nb = getelementptr inbounds i8, ptr %i.na, i64 %i.mv ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.nb, i8 %.0.i, i64 8, i1 false)
  %i.nc = getelementptr inbounds i8, ptr %i.nb, i64 %i.mv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.nc, i8 %.0.i, i64 8, i1 false)
  br label %bb.al

bb.aa:                                            ; preds = %bb.y
  %i.nd = icmp ne i32 %.sink.i161, 0
  br label %.loopexit165

.loopexit165:                                     ; preds = %._crit_edge, %bb.aa
  %.1106 = phi i32 [ 0, %bb.aa ], [ %i.ev, %._crit_edge ] ; 2 uses
  %.0103 = phi i1 [ %i.nd, %bb.aa ], [ true, %._crit_edge ]
  %i.ne = load ptr, ptr %i.c, align 8, !tbaa !23  ; 33 uses
  %.179 = select i1 %i.e, i64 592, i64 560
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 %.179
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !39
  %i.nh = mul nsw i32 %i.ng, %.sink.i161          ; 2 uses
  %i.ni = trunc i32 %i.nh to i16
  store i16 %i.ni, ptr %i.ne, align 2, !tbaa !73
  %i.nj = add i32 %.sink.i161, -2
  %i.nk = icmp ult i32 %i.nj, -3
  br i1 %i.nk, label %bb.ab, label %x8_ac_compensation.exit

bb.ab:                                            ; preds = %.loopexit165
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 676
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !43
  %i.nn = and i32 %i.nm, 3
  %.not122 = icmp eq i32 %i.nn, 3
  br i1 %.not122, label %x8_ac_compensation.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.np = load i32, ptr %i.no, align 8, !tbaa !45
  %i.nq = shl nsw i32 %i.np, 1
  %i.nr = lshr i32 6947196, %i.nq
  %i.ns = and i32 %i.nr, 3                        ; 2 uses
  %.not123 = icmp eq i32 %i.ns, 3
  br i1 %.not123, label %x8_ac_compensation.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %sext = shl i32 %i.nh, 16
  %i.nt = ashr exact i32 %sext, 16                ; 16 uses
  switch i32 %i.ns, label %default.unreachable [
    i32 0, label %bb.ae
    i32 1, label %bb.af
    i32 2, label %bb.ag
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.nu = mul nsw i32 %i.nt, 3811
  %i.nv = add nsw i32 %i.nu, 32768
  %i.nw = lshr i32 %i.nv, 16
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 321
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !36
  %i.nz = zext i8 %i.ny to i64
  %i.oa = getelementptr inbounds nuw [2 x i8], ptr %i.ne, i64 %i.nz ; 2 uses
  %i.ob = load i16, ptr %i.oa, align 2, !tbaa !73
  %i.oc = trunc nuw i32 %i.nw to i16              ; 2 uses
  %i.od = sub i16 %i.ob, %i.oc
  store i16 %i.od, ptr %i.oa, align 2, !tbaa !73
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.of = load i8, ptr %i.oe, align 8, !tbaa !36
  %i.og = zext i8 %i.of to i64
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %i.ne, i64 %i.og ; 2 uses
  %i.oi = load i16, ptr %i.oh, align 2, !tbaa !73
  %i.oj = sub i16 %i.oi, %i.oc
  store i16 %i.oj, ptr %i.oh, align 2, !tbaa !73
  %i.ok = mul nsw i32 %i.nt, 487
  %i.ol = add nsw i32 %i.ok, 32768
  %i.om = lshr i32 %i.ol, 16
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 322
  %i.oo = load i8, ptr %i.on, align 2, !tbaa !36
  %i.op = zext i8 %i.oo to i64
  %i.oq = getelementptr inbounds nuw [2 x i8], ptr %i.ne, i64 %i.op ; 2 uses
  %i.or = load i16, ptr %i.oq, align 2, !tbaa !73
  %i.os = trunc nuw i32 %i.om to i16              ; 2 uses
  %i.ot = sub i16 %i.or, %i.os
  store i16 %i.ot, ptr %i.oq, align 2, !tbaa !73
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ov = load i8, ptr %i.ou, align 8, !tbaa !36
  %i.ow = zext i8 %i.ov to i64
  %i.ox = getelementptr inbounds nuw [2 x i8], ptr %i.ne, i64 %i.ow ; 2 uses
  %i.oy = load i16, ptr %i.ox, align 2, !tbaa !73
  %i.oz = sub i16 %i.oy, %i.os
  store i16 %i.oz, ptr %i.ox, align 2, !tbaa !73
  %i.pa = mul nsw i32 %i.nt, 506
  %i.pb = add nsw i32 %i.pa, 32768
  %i.pc = lshr i32 %i.pb, 16
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 323
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !36
  %i.pf = zext i8 %i.pe to i64
  %i.pg = getelementptr inbounds nuw [2 x i8], ptr %i.ne, i64 %i.pf ; 2 uses
  %i.ph = load i16, ptr %i.pg, align 2, !tbaa !73
  %i.pi = trunc nuw i32 %i.pc to i16              ; 2 uses
  %i.pj = sub i16 %i.ph, %i.pi
  store i16 %i.pj, ptr %i.pg, align 2, !tbaa !73
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.pl = load i8, ptr %i.pk, align 8, !tbaa !36
  %i.pm = zext i8 %i.pl to i64
  %i.pn = getelementptr inbounds nuw [2 x i8], ptr %i.ne, i64 %i.pm ; 2 uses
  %i.po = load i16, ptr %i.pn, align 2, !tbaa !73
  %i.pp = sub i16 %i.po, %i.pi
  store i16 %i.pp, ptr %i.pn, align 2, !tbaa !73
  %i.pq = mul nsw i32 %i.nt, 135
  %i.pr = add nsw i32 %i.pq, 32768
  %i.ps = lshr i32 %i.pr, 16
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.pu = load i8, ptr %i.pt, align 4, !tbaa !36
  %i.pv = zext i8 %i.pu to i64
  %i.pw = getelementptr inbounds nuw [2 x i8], ptr %i.ne, i64 %i.pv ; 2 uses
  %i.px = load i16, ptr %i.pw, align 2, !tbaa !73
  %i.py = trunc nuw i32 %i.ps to i16              ; 6 uses
  %i.pz = sub i16 %i.px, %i.py
  store i16 %i.pz, ptr %i.pw, align 2, !tbaa !73
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.qb = load i8, ptr %i.qa, align 8, !tbaa !36
  %i.qc = zext i8 %i.qb to i64
  %i.qd = getelementptr inbounds nuw [2 x i8], ptr %i.ne, i64 %i.qc ; 2 uses
  %i.qe = load i16, ptr %i.qd, align 2, !tbaa !73
  %i.qf = sub i16 %i.qe, %i.py
  store i16 %i.qf, ptr %i.qd, align 2, !tbaa !73
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 330
  %i.qh = load i8, ptr %i.qg, align 2, !tbaa !36
  %i.qi = zext i8 %i.qh to i64
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %i.ne, i64 %i.qi ; 2 uses
  %i.qk = load i16, ptr %i.qj, align 2, !tbaa !73
  %i.ql = add i16 %i.qk, %i.py
  store i16 %i.ql, ptr %i.qj, align 2, !tbaa !73
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 337
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !36
  %i.qo = zext i8 %i.qn to i64
  %i.qp = getelementptr inbounds nuw [2 x i8], ptr %i.ne, i64 %i.qo ; 2 uses
  %i.qq = load i16, ptr %i.qp, align 2, !tbaa !73
  %i.qr = add i16 %i.qq, %i.py
  store i16 %i.qr, ptr %i.qp, align 2, !tbaa !73
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 331
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !36
  %i.qu = zext i8 %i.qt to i64
  %i.qv = getelementptr inbounds nuw [2 x i8], ptr %i.ne, i64 %i.qu ; 2 uses
  %i.qw = load i16, ptr %i.qv, align 2, !tbaa !73
  %i.qx = add i16 %i.qw, %i.py
  store i16 %i.qx, ptr %i.qv, align 2, !tbaa !73
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 345
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !36
  %i.ra = zext i8 %i.qz to i64
  %i.rb = getelementptr inbounds nuw [2 x i8], ptr %i.ne, i64 %i.ra ; 2 uses
  %i.rc = load i16, ptr %i.rb, align 2, !tbaa !73
  %i.rd = add i16 %i.rc, %i.py
  store i16 %i.rd, ptr %i.rb, align 2, !tbaa !73
  %i.re = mul nsw i32 %i.nt, 173
  %i.rf = add nsw i32 %i.re, 32768
  %i.rg = lshr i32 %i.rf, 16
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 325
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !36
  %i.rj = zext i8 %i.ri to i64
  %i.rk = getelementptr inbounds nuw [2 x i8], ptr %i.ne, i64 %i.rj ; 2 uses
  %i.rl = load i16, ptr %i.rk, align 2, !tbaa !73
  %i.rm = trunc nuw i32 %i.rg to i16              ; 2 uses
  %i.rn = sub i16 %i.rl, %i.rm
  store i16 %i.rn, ptr %i.rk, align 2, !tbaa !73
  %i.ro = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.rp = load i8, ptr %i.ro, align 8, !tbaa !36
  %i.rq = zext i8 %i.rp to i64
  %i.rr = getelementptr inbounds nuw [2 x i8], ptr %i.ne, i64 %i.rq ; 2 uses
  %i.rs = load i16, ptr %i.rr, align 2, !tbaa !73
  %i.rt = sub i16 %i.rs, %i.rm
  store i16 %i.rt, ptr %i.rr, align 2, !tbaa !73
  %i.ru = mul nsw i32 %i.nt, 61
  %i.rv = add nsw i32 %i.ru, 32768
  %i.rw = lshr i32 %i.rv, 16
  %i.rx = getelementptr inbounds nuw i8, ptr %0, i64 326
  %i.ry = load i8, ptr %i.rx, align 2, !tbaa !36
  %i.rz = zext i8 %i.ry to i64
  %i.sa = getelementptr inbounds nuw [2 x i8], ptr %i.ne, i64 %i.rz ; 2 uses
  %i.sb = load i16, ptr %i.sa, align 2, !tbaa !73
  %i.sc = trunc nuw i32 %i.rw to i16              ; 4 uses
  %i.sd = sub i16 %i.sb, %i.sc
  store i16 %i.sd, ptr %i.sa, align 2, !tbaa !73
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.sf = load i8, ptr %i.se, align 8, !tbaa !36
  %i.sg = zext i8 %i.sf to i64
  %i.sh = getelementptr inbounds nuw [2 x i8], ptr %i.ne, i64 %i.sg ; 2 uses
  %i.si = load i16, ptr %i.sh, align 2, !tbaa !73
  %i.sj = sub i16 %i.si, %i.sc
  store i16 %i.sj, ptr %i.sh, align 2, !tbaa !73
  %i.sk = getelementptr inbounds nuw i8, ptr %0, i64 333
  %i.sl = load i8, ptr %i.sk, align 1, !tbaa !36
  %i.sm = zext i8 %i.sl to i64
  %i.sn = getelementptr inbounds nuw [2 x i8], ptr %i.ne, i64 %i.sm ; 2 uses
  %i.so = load i16, ptr %i.sn, align 2, !tbaa !73
  %i.sp = add i16 %i.so, %i.sc
  store i16 %i.sp, ptr %i.sn, align 2, !tbaa !73
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 361
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !36
  %i.ss = zext i8 %i.sr to i64
  %i.st = getelementptr inbounds nuw [2 x i8], ptr %i.ne, i64 %i.ss ; 2 uses
  %i.su = load i16, ptr %i.st, align 2, !tbaa !73
  %i.sv = add i16 %i.su, %i.sc
  store i16 %i.sv, ptr %i.st, align 2, !tbaa !73
  %i.sw = mul nsw i32 %i.nt, 42
  %i.sx = add nsw i32 %i.sw, 32768
  %i.sy = lshr i32 %i.sx, 16
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 327
end_hunk_0
begin_hunk_1_@x8_decode_intra_mb:bb.a
  %i.xw = zext nneg i32 %1 to i64
  %i.xx = getelementptr inbounds nuw [8 x i8], ptr %i.xv, i64 %i.xw
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !42 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !31
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 64
  %i.yc = zext i1 %i.e to i64
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.yb, i64 %i.yc
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !39
  %i.yf = sext i32 %i.ye to i64                   ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.xy, i8 %i.xu, i64 8, i1 false)
  %i.yg = getelementptr inbounds i8, ptr %i.xy, i64 %i.yf ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.yg, i8 %i.xu, i64 8, i1 false)
  %i.yh = getelementptr inbounds i8, ptr %i.yg, i64 %i.yf ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.yh, i8 %i.xu, i64 8, i1 false)
  %i.yi = getelementptr inbounds i8, ptr %i.yh, i64 %i.yf ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.yi, i8 %i.xu, i64 8, i1 false)
  %i.yj = getelementptr inbounds i8, ptr %i.yi, i64 %i.yf ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.yj, i8 %i.xu, i64 8, i1 false)
  %i.yk = getelementptr inbounds i8, ptr %i.yj, i64 %i.yf ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.yk, i8 %i.xu, i64 8, i1 false)
  %i.yl = getelementptr inbounds i8, ptr %i.yk, i64 %i.yf ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.yl, i8 %i.xu, i64 8, i1 false)
  %i.ym = getelementptr inbounds i8, ptr %i.yl, i64 %i.yf
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(8) %i.ym, i8 %i.xu, i64 8, i1 false)
  br label %bb.aj

bb.ai:                                            ; preds = %x8_ac_compensation.exit
  %i.yn = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.yo = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.yp = load i32, ptr %i.yo, align 8, !tbaa !45
  %i.yq = sext i32 %i.yp to i64
  %i.yr = getelementptr inbounds [8 x i8], ptr %i.yn, i64 %i.yq
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !74
  %i.yt = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.yu = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.yv = zext nneg i32 %1 to i64
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %i.yu, i64 %i.yv
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !42
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !31
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 64
  %i.zb = zext i1 %i.e to i64
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.za, i64 %i.zb
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !39
  %i.ze = sext i32 %i.zd to i64
  tail call void %i.ys(ptr noundef nonnull %i.yt, ptr noundef %i.yx, i64 noundef %i.ze) #6
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  br i1 %.0103, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !75
  %i.zh = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.zi = zext nneg i32 %1 to i64
  %i.zj = getelementptr inbounds nuw [8 x i8], ptr %i.zh, i64 %i.zi
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !42
  %i.zl = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !31
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 64
  %i.zo = zext i1 %i.e to i64
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.zn, i64 %i.zo
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !39
  %i.zr = sext i32 %i.zq to i64
  %i.zs = load ptr, ptr %i.c, align 8, !tbaa !23
  tail call void %i.zg(ptr noundef %i.zk, i64 noundef %i.zr, ptr noundef %i.zs) #6
  br label %bb.al

bb.al:                                            ; preds = %bb.z, %bb.aj, %bb.ak
  %.2 = phi i32 [ 0, %bb.z ], [ %.1106, %bb.aj ], [ %.1106, %bb.ak ]
  %.not129 = phi i1 [ true, %bb.z ], [ false, %bb.aj ], [ true, %bb.ak ] ; 2 uses
  br i1 %i.e, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.zt = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.zu = load i32, ptr %i.zt, align 8, !tbaa !45 ; 2 uses
  %i.zv = shl i32 %.2, 2
  %i.zw = icmp eq i32 %i.zu, 4
  %i.zx = zext i1 %i.zw to i32
  %i.zy = or disjoint i32 %i.zv, %i.zx
  %i.zz = icmp eq i32 %i.zu, 8
  %i.aaa = select i1 %i.zz, i32 2, i32 0
  %i.aab = or disjoint i32 %i.zy, %i.aaa
  %i.aac = trunc i32 %i.aab to i8
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !24
  %i.aaf = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.aag = load i32, ptr %i.aaf, align 8, !tbaa !40
  %i.aah = shl nsw i32 %i.aag, 1
  %i.aai = getelementptr inbounds nuw i8, ptr %0, i64 708
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !41
  %i.aak = and i32 %i.aaj, 1
  %i.aal = or disjoint i32 %i.aak, %i.aah
  %i.aam = sext i32 %i.aal to i64
  %i.aan = getelementptr inbounds i8, ptr %i.aae, i64 %i.aam
  store i8 %i.aac, ptr %i.aan, align 1, !tbaa !36
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.aao = getelementptr inbounds nuw i8, ptr %0, i64 572
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !32
  %.not127 = icmp eq i32 %i.aap, 0
  br i1 %.not127, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.aaq = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.aar = zext nneg i32 %1 to i64
  %i.aas = getelementptr inbounds nuw [8 x i8], ptr %i.aaq, i64 %i.aar
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !42 ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !31
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 64
  %i.aax = zext i1 %i.e to i64
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.aaw, i64 %i.aax
  %i.aaz = load i32, ptr %i.aay, align 4, !tbaa !39
  %i.aba = sext i32 %i.aaz to i64                 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %0, i64 676 ; 2 uses
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !43 ; 3 uses
  %i.abd = and i32 %i.abc, 2
  %.not128 = icmp eq i32 %i.abd, 0
  br i1 %.not128, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  br i1 %.not129, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.abe = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.abf = load i32, ptr %i.abe, align 8, !tbaa !45 ; 2 uses
  %i.abg = and i32 %i.abf, -5
  %i.abh = icmp eq i32 %i.abg, 0
  br i1 %i.abh, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.abi = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !76
  %i.abk = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.abl = load i32, ptr %i.abk, align 8, !tbaa !29
  tail call void %i.abj(ptr noundef %i.aat, i64 noundef %i.aba, i32 noundef %i.abl) #6
  %.pre = load i32, ptr %i.abb, align 4, !tbaa !43
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao
  %i.abm = phi i32 [ %.pre, %bb.ar ], [ %i.abc, %bb.ao ]
  %i.abn = and i32 %i.abm, 1
  %.not130 = icmp eq i32 %i.abn, 0
  br i1 %.not130, label %bb.at, label %.loopexit

.thread:                                          ; preds = %bb.aq
  %i.abo = and i32 %i.abc, 1
  %.not130162 = icmp eq i32 %i.abo, 0
  br i1 %.not130162, label %.thread163, label %.loopexit

bb.at:                                            ; preds = %bb.as
  br i1 %.not129, label %bb.au, label %..thread163_crit_edge

..thread163_crit_edge:                            ; preds = %bb.at
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 696
  %.pre169 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !45
  br label %.thread163

.thread163:                                       ; preds = %..thread163_crit_edge, %.thread
  %i.abp = phi i32 [ %.pre169, %..thread163_crit_edge ], [ %i.abf, %.thread ]
  %i.abq = and i32 %i.abp, -9
  %i.abr = icmp eq i32 %i.abq, 0
  br i1 %i.abr, label %.loopexit, label %bb.au

bb.au:                                            ; preds = %.thread163, %bb.at
  %i.abs = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !77
  %i.abu = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.abv = load i32, ptr %i.abu, align 8, !tbaa !29
  tail call void %i.abt(ptr noundef %i.aat, i64 noundef %i.aba, i32 noundef %i.abv) #6
  br label %.loopexit

.loopexit:                                        ; preds = %x8_get_ac_rlf.exit, %.thread, %bb.an, %bb.au, %.thread163, %bb.as, %x8_get_dc_rlf.exit
  %.0113 = phi i32 [ -1, %x8_get_dc_rlf.exit ], [ 0, %.thread ], [ 0, %bb.as ], [ 0, %.thread163 ], [ 0, %bb.au ], [ 0, %bb.an ], [ -1, %x8_get_ac_rlf.exit ]
  ret i32 %.0113
}

declare void @ff_draw_horiz_band(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare ptr @ff_vlc_init_tables_from_lengths(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7VLCElem", !9, i64 0}
!11 = !{!"p1 omnipotent char", !9, i64 0}
!12 = !{!"IDCTDSPContext", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !5, i64 48, !6, i64 112, !6, i64 116}
!13 = !{!"p1 _ZTS14AVCodecContext", !9, i64 0}
!14 = !{!"p1 short", !9, i64 0}
!15 = !{!"IntraX8DSPContext", !9, i64 0, !9, i64 8, !5, i64 16, !9, i64 112}
!16 = !{!"BlockDSPContext", !9, i64 0, !9, i64 8, !5, i64 16}
!17 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!18 = !{!"p1 _ZTS13GetBitContext", !9, i64 0}
!19 = !{!"IntraX8Context", !5, i64 0, !10, i64 32, !5, i64 40, !6, i64 64, !11, i64 72, !5, i64 80, !12, i64 272, !13, i64 392, !14, i64 400, !15, i64 408, !16, i64 528, !6, i64 560, !6, i64 564, !6, i64 568, !6, i64 572, !17, i64 576, !18, i64 584, !6, i64 592, !6, i64 596, !6, i64 600, !5, i64 608, !5, i64 632, !6, i64 676, !6, i64 680, !6, i64 684, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716}
!20 = !{!19, !13, i64 392}
!21 = !{!19, !6, i64 712}
!22 = !{!19, !6, i64 716}
!23 = !{!19, !14, i64 400}
!24 = !{!19, !11, i64 72}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!10, !10, i64 0}
!27 = !{!19, !18, i64 584}
!28 = !{!19, !6, i64 564}
!29 = !{!19, !6, i64 560}
!30 = !{!19, !6, i64 568}
!31 = !{!19, !17, i64 576}
!32 = !{!19, !6, i64 572}
!33 = !{!"GetBitContext", !11, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!34 = !{!33, !6, i64 8}
!35 = !{!33, !11, i64 0}
!36 = !{!5, !5, i64 0}
!37 = !{!33, !6, i64 16}
!38 = !{!19, !6, i64 64}
!39 = !{!6, !6, i64 0}
!40 = !{!19, !6, i64 704}
!41 = !{!19, !6, i64 708}
!42 = !{!11, !11, i64 0}
!43 = !{!19, !6, i64 676}
!44 = !{!19, !6, i64 700}
!45 = !{!19, !6, i64 696}
!46 = !{!19, !6, i64 688}
!47 = !{!19, !6, i64 692}
!48 = !{!19, !9, i64 520}
!49 = !{!19, !6, i64 680}
!50 = !{!19, !6, i64 684}
!51 = distinct !{!51, !25}
!52 = distinct !{!52, !25}
!53 = distinct !{!53, !25}
!54 = distinct !{!54, !25}
!55 = distinct !{!55, !25}
!56 = distinct !{!56, !25}
!57 = distinct !{!57, !25}
!58 = distinct !{!58, !25}
!59 = !{!"p1 int", !9, i64 0}
!60 = !{!"ThreadProgress", !5, i64 0, !6, i64 4, !5, i64 8, !5, i64 48}
!61 = !{!"MPVPicture", !17, i64 0, !11, i64 8, !11, i64 16, !5, i64 24, !5, i64 40, !59, i64 56, !59, i64 64, !11, i64 72, !5, i64 80, !9, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !60, i64 144}
!62 = !{!61, !17, i64 0}
!63 = !{!19, !6, i64 596}
!64 = !{!19, !6, i64 592}
!65 = !{!19, !6, i64 600}
!66 = !{!33, !6, i64 12}
!67 = !{ptr @x8_setup_spatial_predictor}
!68 = !{!61, !11, i64 16}
!69 = !{!19, !10, i64 32}
!70 = distinct !{!70, !25}
!71 = !{!19, !9, i64 528}
!72 = !{!"short", !5, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!9, !9, i64 0}
!75 = !{!19, !9, i64 312}
!76 = !{!19, !9, i64 416}
!77 = !{!19, !9, i64 408}
end_hunk_1
