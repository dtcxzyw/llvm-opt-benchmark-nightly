Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tx_int32?download=true
inline.NumInlined: 21
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 31
begin_hunk_0_@ff_tx_fft16_ns_int32_c:bb.a
  %i.dk = mul nsw i64 %i.da, %i.dd
  %i.dl = mul nsw i64 %i.de, %i.cy
  %i.dm = add nsw i64 %i.dk, 1073741824
  %i.dn = add nsw i64 %i.dm, %i.dl
  %i.do = lshr i64 %i.dn, 31
  %i.dp = trunc i64 %i.do to i32                  ; 2 uses
  %i.dq = sext i32 %i.be to i64
  %i.dr = mul nsw i64 %i.dq, %i.cy
  %i.ds = sext i32 %i.cb to i64
  %i.dt = mul nsw i64 %i.ds, %i.cy                ; 2 uses
  %i.du = add nsw i64 %i.dr, 1073741824           ; 2 uses
  %i.dv = sub nsw i64 %i.du, %i.dt
  %i.dw = lshr i64 %i.dv, 31
  %i.dx = trunc i64 %i.dw to i32                  ; 2 uses
  %i.dy = add i64 %i.du, %i.dt
  %i.dz = lshr i64 %i.dy, 31
  %i.ea = trunc i64 %i.dz to i32                  ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !25 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !26 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !25 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !26 ; 2 uses
  %i.ej = sub i32 %i.dx, %i.dj                    ; 2 uses
  %i.ek = add i32 %i.dx, %i.dj                    ; 2 uses
  %i.el = sub i32 %i.ec, %i.ek
  store i32 %i.el, ptr %i.r, align 4, !tbaa !25
  %i.em = add i32 %i.ek, %i.ec
  store i32 %i.em, ptr %i.eb, align 4, !tbaa !25
  %i.en = sub i32 %i.ei, %i.ej
  store i32 %i.en, ptr %i.cc, align 4, !tbaa !26
  %i.eo = add i32 %i.ej, %i.ei
  store i32 %i.eo, ptr %i.eh, align 4, !tbaa !26
  %i.ep = sub i32 %i.dp, %i.ea                    ; 2 uses
  %i.eq = add i32 %i.ea, %i.dp                    ; 2 uses
  %i.er = sub i32 %i.eg, %i.ep
  store i32 %i.er, ptr %i.bf, align 4, !tbaa !25
  %i.es = add i32 %i.ep, %i.eg
  store i32 %i.es, ptr %i.ef, align 4, !tbaa !25
  %i.et = sub i32 %i.ee, %i.eq
  store i32 %i.et, ptr %i.ao, align 4, !tbaa !26
  %i.eu = add i32 %i.eq, %i.ee
  store i32 %i.eu, ptr %i.ed, align 4, !tbaa !26
  %i.ev = sext i32 %i.a to i64                    ; 6 uses
  %i.ew = load i32, ptr %i.aj, align 4, !tbaa !25
  %i.ex = sext i32 %i.ew to i64                   ; 2 uses
  %i.ey = mul nsw i64 %i.ex, %i.ev
  %i.ez = sub nsw i32 0, %i.c
  %i.fa = sext i32 %i.ez to i64                   ; 2 uses
  %i.fb = load i32, ptr %i.ak, align 4, !tbaa !26
  %i.fc = sext i32 %i.fb to i64                   ; 2 uses
  %i.fd = mul nsw i64 %i.fc, %i.fa
  %i.fe = add nsw i64 %i.ey, 1073741824
  %i.ff = sub nsw i64 %i.fe, %i.fd
  %i.fg = lshr i64 %i.ff, 31
  %i.fh = trunc i64 %i.fg to i32                  ; 2 uses
  %i.fi = mul nsw i64 %i.ex, %i.fa
  %i.fj = mul nsw i64 %i.fc, %i.ev
  %i.fk = add nsw i64 %i.fi, 1073741824
  %i.fl = add nsw i64 %i.fk, %i.fj
  %i.fm = lshr i64 %i.fl, 31
  %i.fn = trunc i64 %i.fm to i32                  ; 2 uses
  %i.fo = load i32, ptr %i.bx, align 4, !tbaa !25
  %i.fp = sext i32 %i.fo to i64                   ; 2 uses
  %i.fq = mul nsw i64 %i.fp, %i.ev
  %i.fr = sext i32 %i.c to i64                    ; 6 uses
  %i.fs = load i32, ptr %i.by, align 4, !tbaa !26
  %i.ft = sext i32 %i.fs to i64                   ; 2 uses
  %i.fu = mul nsw i64 %i.ft, %i.fr
  %i.fv = add nsw i64 %i.fq, 1073741824
  %i.fw = sub nsw i64 %i.fv, %i.fu
  %i.fx = lshr i64 %i.fw, 31
  %i.fy = trunc i64 %i.fx to i32                  ; 2 uses
  %i.fz = mul nsw i64 %i.fp, %i.fr
  %i.ga = mul nsw i64 %i.ft, %i.ev
  %i.gb = add nsw i64 %i.fz, 1073741824
  %i.gc = add i64 %i.gb, %i.ga
  %i.gd = lshr i64 %i.gc, 31
  %i.ge = trunc i64 %i.gd to i32                  ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !25 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !26 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !25 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !26 ; 2 uses
  %i.gn = sub i32 %i.fy, %i.fh                    ; 2 uses
  %i.go = add i32 %i.fy, %i.fh                    ; 2 uses
  %i.gp = sub i32 %i.gg, %i.go
  store i32 %i.gp, ptr %i.aj, align 4, !tbaa !25
  %i.gq = add i32 %i.go, %i.gg
  store i32 %i.gq, ptr %i.gf, align 4, !tbaa !25
  %i.gr = sub i32 %i.gm, %i.gn
  store i32 %i.gr, ptr %i.by, align 4, !tbaa !26
  %i.gs = add i32 %i.gn, %i.gm
  store i32 %i.gs, ptr %i.gl, align 4, !tbaa !26
  %i.gt = sub i32 %i.fn, %i.ge                    ; 2 uses
  %i.gu = add i32 %i.ge, %i.fn                    ; 2 uses
  %i.gv = sub i32 %i.gk, %i.gt
  store i32 %i.gv, ptr %i.bx, align 4, !tbaa !25
  %i.gw = add i32 %i.gt, %i.gk
  store i32 %i.gw, ptr %i.gj, align 4, !tbaa !25
  %i.gx = sub i32 %i.gi, %i.gu
  store i32 %i.gx, ptr %i.ak, align 4, !tbaa !26
  %i.gy = add i32 %i.gu, %i.gi
  store i32 %i.gy, ptr %i.gh, align 4, !tbaa !26
  %i.gz = load i32, ptr %i.ag, align 4, !tbaa !25
  %i.ha = sext i32 %i.gz to i64                   ; 2 uses
  %i.hb = mul nsw i64 %i.ha, %i.fr
  %i.hc = sub nsw i32 0, %i.a
  %i.hd = sext i32 %i.hc to i64                   ; 2 uses
  %i.he = load i32, ptr %i.ah, align 4, !tbaa !26
  %i.hf = sext i32 %i.he to i64                   ; 2 uses
  %i.hg = mul nsw i64 %i.hf, %i.hd
  %i.hh = add nsw i64 %i.hb, 1073741824
  %i.hi = sub nsw i64 %i.hh, %i.hg
  %i.hj = lshr i64 %i.hi, 31
  %i.hk = trunc i64 %i.hj to i32                  ; 2 uses
  %i.hl = mul nsw i64 %i.ha, %i.hd
  %i.hm = mul nsw i64 %i.hf, %i.fr
  %i.hn = add nsw i64 %i.hl, 1073741824
  %i.ho = add nsw i64 %i.hn, %i.hm
  %i.hp = lshr i64 %i.ho, 31
  %i.hq = trunc i64 %i.hp to i32                  ; 2 uses
  %i.hr = load i32, ptr %i.bu, align 4, !tbaa !25
  %i.hs = sext i32 %i.hr to i64                   ; 2 uses
  %i.ht = mul nsw i64 %i.hs, %i.fr
  %i.hu = load i32, ptr %i.bv, align 4, !tbaa !26
  %i.hv = sext i32 %i.hu to i64                   ; 2 uses
  %i.hw = mul nsw i64 %i.hv, %i.ev
  %i.hx = add nsw i64 %i.ht, 1073741824
  %i.hy = sub nsw i64 %i.hx, %i.hw
  %i.hz = lshr i64 %i.hy, 31
  %i.ia = trunc i64 %i.hz to i32                  ; 2 uses
  %i.ib = mul nsw i64 %i.hs, %i.ev
  %i.ic = mul nsw i64 %i.hv, %i.fr
  %i.id = add nsw i64 %i.ib, 1073741824
  %i.ie = add i64 %i.id, %i.ic
  %i.if = lshr i64 %i.ie, 31
  %i.ig = trunc i64 %i.if to i32                  ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !25 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !26 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !25 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !26 ; 2 uses
  %i.ip = sub i32 %i.ia, %i.hk                    ; 2 uses
  %i.iq = add i32 %i.ia, %i.hk                    ; 2 uses
  %i.ir = sub i32 %i.ii, %i.iq
  store i32 %i.ir, ptr %i.ag, align 4, !tbaa !25
  %i.is = add i32 %i.iq, %i.ii
  store i32 %i.is, ptr %i.ih, align 4, !tbaa !25
  %i.it = sub i32 %i.io, %i.ip
  store i32 %i.it, ptr %i.bv, align 4, !tbaa !26
  %i.iu = add i32 %i.ip, %i.io
  store i32 %i.iu, ptr %i.in, align 4, !tbaa !26
  %i.iv = sub i32 %i.hq, %i.ig                    ; 2 uses
  %i.iw = add i32 %i.ig, %i.hq                    ; 2 uses
  %i.ix = sub i32 %i.im, %i.iv
  store i32 %i.ix, ptr %i.bu, align 4, !tbaa !25
  %i.iy = add i32 %i.iv, %i.im
  store i32 %i.iy, ptr %i.il, align 4, !tbaa !25
  %i.iz = sub i32 %i.ik, %i.iw
  store i32 %i.iz, ptr %i.ah, align 4, !tbaa !26
  %i.ja = add i32 %i.iw, %i.ik
  store i32 %i.ja, ptr %i.ij, align 4, !tbaa !26
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @ff_tx_fft32_ns_int32_c(ptr nofree readnone captures(none) %0, ptr noundef initializes((0, 128)) %1, ptr nofree noundef readonly captures(none) %2, i64 %3) #9 {
bb.a:
  tail call void @ff_tx_fft16_ns_int32_c(ptr poison, ptr noundef %1, ptr noundef %2, i64 poison)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 128
  tail call void @ff_tx_fft8_ns_int32_c(ptr poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 poison)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 192
  tail call void @ff_tx_fft8_ns_int32_c(ptr poison, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 poison)
  tail call fastcc void @ff_tx_fft_sr_combine_int32_c(ptr noundef %1, ptr noundef nonnull @ff_tx_tab_32_int32, i32 noundef 4)
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ff_tx_fft_sr_combine_int32_c(ptr nofree noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = shl nsw i32 %2, 1
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.b
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -28
  %i.f = mul nuw nsw i32 %2, 6
  %i.g = shl nuw nsw i32 %2, 2
  %i.h = zext nneg i32 %i.g to i64
  %i.i = zext nneg i32 %i.f to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0639 = phi ptr [ %0, %.lr.ph ], [ %i.sy, %bb.b ] ; 21 uses
  %.0618638 = phi ptr [ %1, %.lr.ph ], [ %i.sz, %bb.b ] ; 9 uses
  %.0619637 = phi ptr [ %i.e, %.lr.ph ], [ %i.ta, %bb.b ] ; 9 uses
  %.0620636 = phi i32 [ 0, %.lr.ph ], [ %i.tb, %bb.b ]
  %i.j = load i32, ptr %.0618638, align 4, !tbaa !12
  %i.k = sext i32 %i.j to i64                     ; 4 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.0639, i64 %i.h ; 17 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !25
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = mul nsw i64 %i.n, %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %.0619637, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !12   ; 2 uses
  %i.r = sub nsw i32 0, %i.q
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !26
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = mul nsw i64 %i.v, %i.s
  %i.x = add nsw i64 %i.o, 1073741824
  %i.y = sub nsw i64 %i.x, %i.w
  %i.z = lshr i64 %i.y, 31
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  %i.ab = mul nsw i64 %i.s, %i.n
  %i.ac = mul nsw i64 %i.v, %i.k
  %i.ad = add nsw i64 %i.ab, 1073741824
  %i.ae = add nsw i64 %i.ad, %i.ac
  %i.af = lshr i64 %i.ae, 31
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.0639, i64 %i.i ; 17 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !25
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = mul nsw i64 %i.aj, %i.k
  %i.al = sext i32 %i.q to i64                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !26
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = mul nsw i64 %i.ao, %i.al
  %i.aq = add nsw i64 %i.ak, 1073741824
  %i.ar = sub nsw i64 %i.aq, %i.ap
  %i.as = lshr i64 %i.ar, 31
  %i.at = trunc i64 %i.as to i32                  ; 2 uses
  %i.au = mul nsw i64 %i.aj, %i.al
  %i.av = mul nsw i64 %i.ao, %i.k
  %i.aw = add nsw i64 %i.au, 1073741824
  %i.ax = add i64 %i.aw, %i.av
  %i.ay = lshr i64 %i.ax, 31
  %i.az = trunc i64 %i.ay to i32                  ; 2 uses
  %i.ba = load i32, ptr %.0639, align 4, !tbaa !25 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0639, i64 4 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !26 ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %.0639, i64 %i.b ; 17 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !25 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !26 ; 2 uses
  %i.bh = sub i32 %i.at, %i.aa                    ; 2 uses
  %i.bi = add i32 %i.at, %i.aa                    ; 2 uses
  %i.bj = sub i32 %i.ba, %i.bi
  store i32 %i.bj, ptr %i.l, align 4, !tbaa !25
  %i.bk = add i32 %i.bi, %i.ba
  store i32 %i.bk, ptr %.0639, align 4, !tbaa !25
  %i.bl = sub i32 %i.bg, %i.bh
  store i32 %i.bl, ptr %i.am, align 4, !tbaa !26
  %i.bm = add i32 %i.bh, %i.bg
  store i32 %i.bm, ptr %i.bf, align 4, !tbaa !26
  %i.bn = sub i32 %i.ag, %i.az                    ; 2 uses
  %i.bo = add i32 %i.az, %i.ag                    ; 2 uses
  %i.bp = sub i32 %i.be, %i.bn
  store i32 %i.bp, ptr %i.ah, align 4, !tbaa !25
  %i.bq = add i32 %i.bn, %i.be
  store i32 %i.bq, ptr %i.bd, align 4, !tbaa !25
  %i.br = sub i32 %i.bc, %i.bo
  store i32 %i.br, ptr %i.t, align 4, !tbaa !26
  %i.bs = add i32 %i.bo, %i.bc
  store i32 %i.bs, ptr %i.bb, align 4, !tbaa !26
  %i.bt = getelementptr inbounds nuw i8, ptr %.0618638, i64 8
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !12
  %i.bv = sext i32 %i.bu to i64                   ; 4 uses
  %i.bw = getelementptr i8, ptr %i.l, i64 16      ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !25
  %i.by = sext i32 %i.bx to i64                   ; 2 uses
  %i.bz = mul nsw i64 %i.by, %i.bv
  %i.ca = getelementptr inbounds nuw i8, ptr %.0619637, i64 20
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !12 ; 2 uses
  %i.cc = sub nsw i32 0, %i.cb
  %i.cd = sext i32 %i.cc to i64                   ; 2 uses
  %i.ce = getelementptr i8, ptr %i.l, i64 20      ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !26
  %i.cg = sext i32 %i.cf to i64                   ; 2 uses
  %i.ch = mul nsw i64 %i.cg, %i.cd
  %i.ci = add nsw i64 %i.bz, 1073741824
  %i.cj = sub nsw i64 %i.ci, %i.ch
  %i.ck = lshr i64 %i.cj, 31
  %i.cl = trunc i64 %i.ck to i32                  ; 2 uses
  %i.cm = mul nsw i64 %i.cd, %i.by
  %i.cn = mul nsw i64 %i.cg, %i.bv
  %i.co = add nsw i64 %i.cm, 1073741824
  %i.cp = add nsw i64 %i.co, %i.cn
  %i.cq = lshr i64 %i.cp, 31
  %i.cr = trunc i64 %i.cq to i32                  ; 2 uses
  %i.cs = getelementptr i8, ptr %i.ah, i64 16     ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !25
  %i.cu = sext i32 %i.ct to i64                   ; 2 uses
  %i.cv = mul nsw i64 %i.cu, %i.bv
  %i.cw = sext i32 %i.cb to i64                   ; 2 uses
  %i.cx = getelementptr i8, ptr %i.ah, i64 20     ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !26
  %i.cz = sext i32 %i.cy to i64                   ; 2 uses
  %i.da = mul nsw i64 %i.cz, %i.cw
  %i.db = add nsw i64 %i.cv, 1073741824
  %i.dc = sub nsw i64 %i.db, %i.da
  %i.dd = lshr i64 %i.dc, 31
  %i.de = trunc i64 %i.dd to i32                  ; 2 uses
  %i.df = mul nsw i64 %i.cu, %i.cw
  %i.dg = mul nsw i64 %i.cz, %i.bv
  %i.dh = add nsw i64 %i.df, 1073741824
  %i.di = add i64 %i.dh, %i.dg
  %i.dj = lshr i64 %i.di, 31
  %i.dk = trunc i64 %i.dj to i32                  ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.0639, i64 16 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !25 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0639, i64 20 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !26 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.bd, i64 16     ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !25 ; 2 uses
  %i.dr = getelementptr i8, ptr %i.bd, i64 20     ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !26 ; 2 uses
  %i.dt = sub i32 %i.de, %i.cl                    ; 2 uses
  %i.du = add i32 %i.de, %i.cl                    ; 2 uses
  %i.dv = sub i32 %i.dm, %i.du
  store i32 %i.dv, ptr %i.bw, align 4, !tbaa !25
  %i.dw = add i32 %i.du, %i.dm
  store i32 %i.dw, ptr %i.dl, align 4, !tbaa !25
  %i.dx = sub i32 %i.ds, %i.dt
  store i32 %i.dx, ptr %i.cx, align 4, !tbaa !26
  %i.dy = add i32 %i.dt, %i.ds
  store i32 %i.dy, ptr %i.dr, align 4, !tbaa !26
  %i.dz = sub i32 %i.cr, %i.dk                    ; 2 uses
  %i.ea = add i32 %i.dk, %i.cr                    ; 2 uses
  %i.eb = sub i32 %i.dq, %i.dz
  store i32 %i.eb, ptr %i.cs, align 4, !tbaa !25
  %i.ec = add i32 %i.dz, %i.dq
  store i32 %i.ec, ptr %i.dp, align 4, !tbaa !25
  %i.ed = sub i32 %i.do, %i.ea
  store i32 %i.ed, ptr %i.ce, align 4, !tbaa !26
  %i.ee = add i32 %i.ea, %i.do
  store i32 %i.ee, ptr %i.dn, align 4, !tbaa !26
  %i.ef = getelementptr inbounds nuw i8, ptr %.0618638, i64 16
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !12
  %i.eh = sext i32 %i.eg to i64                   ; 4 uses
  %i.ei = getelementptr i8, ptr %i.l, i64 32      ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !25
  %i.ek = sext i32 %i.ej to i64                   ; 2 uses
  %i.el = mul nsw i64 %i.ek, %i.eh
  %i.em = getelementptr inbounds nuw i8, ptr %.0619637, i64 12
  %i.en = load i32, ptr %i.em, align 4, !tbaa !12 ; 2 uses
  %i.eo = sub nsw i32 0, %i.en
  %i.ep = sext i32 %i.eo to i64                   ; 2 uses
  %i.eq = getelementptr i8, ptr %i.l, i64 36      ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !26
  %i.es = sext i32 %i.er to i64                   ; 2 uses
  %i.et = mul nsw i64 %i.es, %i.ep
  %i.eu = add nsw i64 %i.el, 1073741824
  %i.ev = sub nsw i64 %i.eu, %i.et
  %i.ew = lshr i64 %i.ev, 31
  %i.ex = trunc i64 %i.ew to i32                  ; 2 uses
  %i.ey = mul nsw i64 %i.ep, %i.ek
  %i.ez = mul nsw i64 %i.es, %i.eh
  %i.fa = add nsw i64 %i.ey, 1073741824
  %i.fb = add nsw i64 %i.fa, %i.ez
  %i.fc = lshr i64 %i.fb, 31
  %i.fd = trunc i64 %i.fc to i32                  ; 2 uses
  %i.fe = getelementptr i8, ptr %i.ah, i64 32     ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !25
  %i.fg = sext i32 %i.ff to i64                   ; 2 uses
  %i.fh = mul nsw i64 %i.fg, %i.eh
  %i.fi = sext i32 %i.en to i64                   ; 2 uses
  %i.fj = getelementptr i8, ptr %i.ah, i64 36     ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !26
  %i.fl = sext i32 %i.fk to i64                   ; 2 uses
  %i.fm = mul nsw i64 %i.fl, %i.fi
  %i.fn = add nsw i64 %i.fh, 1073741824
  %i.fo = sub nsw i64 %i.fn, %i.fm
  %i.fp = lshr i64 %i.fo, 31
  %i.fq = trunc i64 %i.fp to i32                  ; 2 uses
  %i.fr = mul nsw i64 %i.fg, %i.fi
  %i.fs = mul nsw i64 %i.fl, %i.eh
  %i.ft = add nsw i64 %i.fr, 1073741824
  %i.fu = add i64 %i.ft, %i.fs
  %i.fv = lshr i64 %i.fu, 31
  %i.fw = trunc i64 %i.fv to i32                  ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.0639, i64 32 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !25 ; 2 uses
end_hunk_0
begin_hunk_1_@ff_tx_mdct_init_int32_c:bb.a
  store i32 %i.y, ptr %i.x, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit54, label %.lr.ph, !llvm.loop !89

.loopexit54:                                      ; preds = %.lr.ph, %.preheader53, %bb.e
  %spec.select = select i1 %.not, ptr null, ptr %i.n
  %i.z = call i32 @ff_tx_mdct_gen_exp_int32(ptr noundef nonnull %0, ptr noundef %spec.select) ; 2 uses
  %.not52 = icmp ne i32 %i.z, 0
  %brmerge = or i1 %.not, %.not52
  br i1 %brmerge, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit54
  %i.aa = load i32, ptr %0, align 8, !tbaa !21
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %.lr.ph57, label %.loopexit

.lr.ph57:                                         ; preds = %.preheader
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph57, %bb.f
  %indvars.iv59 = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next60, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv59 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !12
  %i.af = shl i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !12
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.ag = load i32, ptr %0, align 8, !tbaa !21
  %i.ah = ashr i32 %i.ag, 1
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next60, %i.ai
  br i1 %i.aj, label %bb.f, label %.loopexit, !llvm.loop !90

.loopexit:                                        ; preds = %bb.f, %.preheader, %.loopexit54, %bb.c, %bb.b
  %.044 = phi i32 [ %i.k, %bb.b ], [ -12, %bb.c ], [ %i.z, %.loopexit54 ], [ 0, %.preheader ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  ret i32 %.044
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_inv_int32_c(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !21     ; 3 uses
  %i.d = ashr i32 %i.c, 1                         ; 3 uses
  %i.e = ashr i32 %i.c, 2                         ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.h = lshr i64 %3, 2                           ; 3 uses
  %i.i = and i32 %i.c, -2
  %i.j = add nsw i32 %i.i, -1
  %i.k = sext i32 %i.j to i64
  %i.l = mul nsw i64 %i.h, %i.k
  %i.m = getelementptr inbounds [4 x i8], ptr %2, i64 %i.l
  %i.n = icmp sgt i32 %i.d, 0
  br i1 %i.n, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !29
  tail call void %i.p(ptr noundef %i.r, ptr noundef %1, ptr noundef %1, i64 noundef 8) #16
  %i.s = sext i32 %i.d to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.s ; 2 uses
  %i.u = icmp sgt i32 %i.e, 0
  br i1 %i.u, label %.lr.ph108.preheader, label %._crit_edge109

.lr.ph108.preheader:                              ; preds = %._crit_edge
  %i.v = zext nneg i32 %i.e to i64                ; 2 uses
  %wide.trip.count114 = zext nneg i32 %i.e to i64
  br label %.lr.ph108

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4, !tbaa !12   ; 2 uses
  %i.y = sub nsw i32 0, %i.x
  %i.z = sext i32 %i.y to i64
  %i.aa = mul nsw i64 %i.h, %i.z
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !12
  %i.ad = sext i32 %i.x to i64
  %i.ae = mul nsw i64 %i.h, %i.ad
  %i.af = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !12
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !25
  %i.aj = sext i32 %i.ai to i64
  %i.ak = sext i32 %i.ac to i64                   ; 2 uses
  %i.al = mul nsw i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !26
  %i.ao = sext i32 %i.an to i64                   ; 2 uses
  %i.ap = sext i32 %i.ag to i64                   ; 2 uses
  %i.aq = mul nsw i64 %i.ao, %i.ap
  %i.ar = add nsw i64 %i.al, 1073741824
  %i.as = sub nsw i64 %i.ar, %i.aq
  %i.at = lshr i64 %i.as, 31
  %i.au = trunc i64 %i.at to i32
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  store i32 %i.au, ptr %i.av, align 4, !tbaa !25
  %i.aw = mul nsw i64 %i.ao, %i.ak
  %i.ax = load i32, ptr %i.ah, align 4, !tbaa !25
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul nsw i64 %i.ay, %i.ap
  %i.ba = add nsw i64 %i.aw, 1073741824
  %i.bb = add i64 %i.ba, %i.az
  %i.bc = lshr i64 %i.bb, 31
  %i.bd = trunc i64 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !91

._crit_edge109:                                   ; preds = %.lr.ph108, %._crit_edge
  ret void

.lr.ph108:                                        ; preds = %.lr.ph108.preheader, %.lr.ph108
  %indvars.iv111 = phi i64 [ 0, %.lr.ph108.preheader ], [ %indvars.iv.next112, %.lr.ph108 ] ; 3 uses
  %i.bf = add nuw nsw i64 %indvars.iv111, %i.v    ; 2 uses
  %i.bg = xor i64 %indvars.iv111, -1
  %i.bh = add nsw i64 %i.v, %i.bg                 ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bh ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !26
  %i.bl = load i32, ptr %i.bi, align 4, !tbaa !25
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bf ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !26
  %i.bp = load i32, ptr %i.bm, align 4, !tbaa !25
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.bh ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !26
  %i.bt = sext i32 %i.bs to i64                   ; 2 uses
  %i.bu = sext i32 %i.bk to i64                   ; 2 uses
  %i.bv = mul nsw i64 %i.bt, %i.bu
  %i.bw = load i32, ptr %i.bq, align 4, !tbaa !25
  %i.bx = sext i32 %i.bw to i64
  %i.by = sext i32 %i.bl to i64                   ; 2 uses
  %i.bz = mul nsw i64 %i.bx, %i.by
  %i.ca = add nsw i64 %i.bv, 1073741824
  %i.cb = sub nsw i64 %i.ca, %i.bz
  %i.cc = lshr i64 %i.cb, 31
  %i.cd = trunc i64 %i.cc to i32
  store i32 %i.cd, ptr %i.bi, align 4, !tbaa !25
  %i.ce = load i32, ptr %i.bq, align 4, !tbaa !25
  %i.cf = sext i32 %i.ce to i64
  %i.cg = mul nsw i64 %i.cf, %i.bu
  %i.ch = mul nsw i64 %i.bt, %i.by
  %i.ci = add nsw i64 %i.ch, 1073741824
  %i.cj = add i64 %i.ci, %i.cg
  %i.ck = lshr i64 %i.cj, 31
  %i.cl = trunc i64 %i.ck to i32
  store i32 %i.cl, ptr %i.bn, align 4, !tbaa !26
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.bf ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !26
  %i.cp = sext i32 %i.co to i64                   ; 2 uses
  %i.cq = sext i32 %i.bo to i64                   ; 2 uses
  %i.cr = mul nsw i64 %i.cp, %i.cq
  %i.cs = load i32, ptr %i.cm, align 4, !tbaa !25
  %i.ct = sext i32 %i.cs to i64
  %i.cu = sext i32 %i.bp to i64                   ; 2 uses
  %i.cv = mul nsw i64 %i.ct, %i.cu
  %i.cw = add nsw i64 %i.cr, 1073741824
  %i.cx = sub nsw i64 %i.cw, %i.cv
  %i.cy = lshr i64 %i.cx, 31
  %i.cz = trunc i64 %i.cy to i32
  store i32 %i.cz, ptr %i.bm, align 4, !tbaa !25
  %i.da = load i32, ptr %i.cm, align 4, !tbaa !25
  %i.db = sext i32 %i.da to i64
  %i.dc = mul nsw i64 %i.db, %i.cq
  %i.dd = mul nsw i64 %i.cp, %i.cu
  %i.de = add nsw i64 %i.dd, 1073741824
  %i.df = add i64 %i.de, %i.dc
  %i.dg = lshr i64 %i.df, 31
  %i.dh = trunc i64 %i.dg to i32
  store i32 %i.dh, ptr %i.bj, align 4, !tbaa !26
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond115.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count114
  br i1 %exitcond115.not, label %._crit_edge109, label %.lr.ph108, !llvm.loop !92
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_3xM_fwd_int32_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = mul nsw i32 %i.e, 3                      ; 13 uses
  %i.g = mul nuw nsw i32 %i.e, 9                  ; 6 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !21
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30   ; 4 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.p = lshr i64 %3, 2                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader161.lr.ph, label %..preheader160_crit_edge

..preheader160_crit_edge:                         ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !28
  br label %.preheader160

.preheader161.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 15                 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28   ; 2 uses
  %i.u = zext nneg i32 %i.e to i64                ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.u, 4
  br label %.preheader161

.preheader161:                                    ; preds = %.preheader161.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.preheader161.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.v = mul nuw nsw i64 %indvars.iv, 3           ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !12   ; 6 uses
  %i.y = icmp slt i32 %i.x, %i.f
  %i.z = add nsw i32 %i.x, %i.f
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %2, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !12 ; 2 uses
  %i.ad = xor i32 %i.x, -1                        ; 3 uses
  %i.ae = add i32 %i.g, %i.ad
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %2, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !12 ; 2 uses
  br i1 %i.y, label %bb.b, label %bb.c

.preheader160:                                    ; preds = %bb.j, %..preheader160_crit_edge
  %i.ai = phi ptr [ %.pre, %..preheader160_crit_edge ], [ %i.t, %bb.j ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.al = sext i32 %i.e to i64                    ; 2 uses
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !10
  tail call void %i.am(ptr noundef nonnull %i.d, ptr noundef %i.ai, ptr noundef %i.ai, i64 noundef 8) #16
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !10
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !28
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.al ; 2 uses
  tail call void %i.an(ptr noundef %i.ao, ptr noundef %i.aq, ptr noundef %i.aq, i64 noundef 8) #16
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !10
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !28
  %.idx = shl nsw i64 %i.al, 4
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %.idx ; 2 uses
  tail call void %i.ar(ptr noundef %i.as, ptr noundef %i.au, ptr noundef %i.au, i64 noundef 8) #16
  %i.av = icmp sgt i32 %i.i, 0
  br i1 %i.av, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.preheader161
  %i.aw = add i32 %i.f, %i.ad
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !12
  %reass.sub = sub i32 %i.az, %i.ac
  %i.ba = add i32 %reass.sub, 32
  %i.bb = add nsw i32 %i.x, %i.g
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !12
  %i.bf = add i32 %i.be, %i.ah
  %i.bg = sub i32 32, %i.bf
  br label %bb.d

bb.c:                                             ; preds = %.preheader161
  %i.bh = add i32 %i.r, %i.ad
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !12
  %i.bl = add i32 %i.ac, %i.bk
  %i.bm = sub i32 32, %i.bl
  %i.bn = sub nuw nsw i32 %i.x, %i.f
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !12
  %i.br = add i32 %i.bq, 32
  %i.bs = sub i32 %i.br, %i.ah
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.089.0.in = phi i32 [ %i.ba, %bb.b ], [ %i.bm, %bb.c ]
  %.sroa.6.0.in = phi i32 [ %i.bg, %bb.b ], [ %i.bs, %bb.c ]
  %.sroa.6.0 = ashr i32 %.sroa.6.0.in, 6
  %.sroa.089.0 = ashr i32 %.sroa.089.0.in, 6
  %i.bt = ashr i32 %i.x, 1
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.bu ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !25
  %i.bx = sext i32 %i.bw to i64                   ; 2 uses
  %i.by = sext i32 %.sroa.089.0 to i64            ; 2 uses
  %i.bz = mul nsw i64 %i.bx, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !26
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  %i.cd = sext i32 %.sroa.6.0 to i64              ; 2 uses
  %i.ce = mul nsw i64 %i.cc, %i.cd
  %i.cf = add nsw i64 %i.bz, 1073741824
  %i.cg = sub nsw i64 %i.cf, %i.ce
  %i.ch = lshr i64 %i.cg, 31
  %i.ci = trunc i64 %i.ch to i32                  ; 3 uses
  %i.cj = mul nsw i64 %i.cc, %i.by
  %i.ck = mul nsw i64 %i.bx, %i.cd
  %i.cl = add nsw i64 %i.ck, 1073741824
  %i.cm = add nsw i64 %i.cl, %i.cj
  %i.cn = lshr i64 %i.cm, 31
  %i.co = trunc i64 %i.cn to i32                  ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !12 ; 6 uses
  %i.cs = icmp slt i32 %i.cr, %i.f
  %i.ct = add nsw i32 %i.cr, %i.f
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !12 ; 2 uses
  %i.cx = xor i32 %i.cr, -1                       ; 3 uses
  %i.cy = add i32 %i.g, %i.cx
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !12 ; 2 uses
  br i1 %i.cs, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dc = add i32 %i.r, %i.cx
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !12
  %i.dg = add i32 %i.cw, %i.df
  %i.dh = sub i32 32, %i.dg
  %i.di = sub nuw nsw i32 %i.cr, %i.f
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !12
  %i.dm = add i32 %i.dl, 32
  %i.dn = sub i32 %i.dm, %i.db
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.do = add i32 %i.f, %i.cx
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !12
  %reass.sub.1 = sub i32 %i.dr, %i.cw
  %i.ds = add i32 %reass.sub.1, 32
  %i.dt = add nsw i32 %i.cr, %i.g
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %2, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !12
  %i.dx = add i32 %i.dw, %i.db
  %i.dy = sub i32 32, %i.dx
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.089.0.in.1 = phi i32 [ %i.ds, %bb.f ], [ %i.dh, %bb.e ]
  %.sroa.6.0.in.1 = phi i32 [ %i.dy, %bb.f ], [ %i.dn, %bb.e ]
  %.sroa.6.0.1 = ashr i32 %.sroa.6.0.in.1, 6
  %.sroa.089.0.1 = ashr i32 %.sroa.089.0.in.1, 6
  %i.dz = ashr i32 %i.cr, 1
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ea ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !25
  %i.ed = sext i32 %i.ec to i64                   ; 2 uses
  %i.ee = sext i32 %.sroa.089.0.1 to i64          ; 2 uses
  %i.ef = mul nsw i64 %i.ed, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !26
  %i.ei = sext i32 %i.eh to i64                   ; 2 uses
  %i.ej = sext i32 %.sroa.6.0.1 to i64            ; 2 uses
  %i.ek = mul nsw i64 %i.ei, %i.ej
  %i.el = add nsw i64 %i.ef, 1073741824
  %i.em = sub nsw i64 %i.el, %i.ek
  %i.en = lshr i64 %i.em, 31                      ; 2 uses
  %i.eo = trunc i64 %i.en to i32
  %i.ep = mul nsw i64 %i.ei, %i.ee
  %i.eq = mul nsw i64 %i.ed, %i.ej
  %i.er = add nsw i64 %i.eq, 1073741824
  %i.es = add nsw i64 %i.er, %i.ep
  %i.et = lshr i64 %i.es, 31                      ; 2 uses
  %i.eu = trunc i64 %i.et to i32
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.v
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !12 ; 6 uses
  %i.ey = icmp slt i32 %i.ex, %i.f
  %i.ez = add nsw i32 %i.ex, %i.f
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !12 ; 2 uses
end_hunk_1
begin_hunk_2_@ff_tx_mdct_pfa_3xM_fwd_int32_c:bb.a
  store i32 %i.kc, ptr %i.kg, align 4, !tbaa !12
  %i.kh = load i32, ptr %i.jp, align 4, !tbaa !25
  %i.ki = sext i32 %i.kh to i64
  %i.kj = mul nsw i64 %i.ki, %i.jt
  %i.kk = load i32, ptr %i.jq, align 4, !tbaa !26
  %i.kl = sext i32 %i.kk to i64
  %i.km = mul nsw i64 %i.kl, %i.jx
  %i.kn = add nsw i64 %i.kj, 1073741824
  %i.ko = add i64 %i.kn, %i.km
  %i.kp = lshr i64 %i.ko, 31
  %i.kq = trunc i64 %i.kp to i32
  %i.kr = shl nuw nsw i64 %i.iy, 1
  %i.ks = mul nuw nsw i64 %i.p, %i.kr
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ks ; 2 uses
  store i32 %i.kq, ptr %i.kt, align 4, !tbaa !12
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ja ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 4 ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !26
  %i.kx = sext i32 %i.kw to i64
  %i.ky = sext i32 %i.jh to i64                   ; 2 uses
  %i.kz = mul nsw i64 %i.kx, %i.ky
  %i.la = load i32, ptr %i.ku, align 4, !tbaa !25
  %i.lb = sext i32 %i.la to i64
  %i.lc = sext i32 %i.jj to i64                   ; 2 uses
  %i.ld = mul nsw i64 %i.lb, %i.lc
  %i.le = add nsw i64 %i.kz, 1073741824
  %i.lf = sub nsw i64 %i.le, %i.ld
  %i.lg = lshr i64 %i.lf, 31
  %i.lh = trunc i64 %i.lg to i32
  %i.li = getelementptr [4 x i8], ptr %i.kt, i64 %i.p
  store i32 %i.lh, ptr %i.li, align 4, !tbaa !12
  %i.lj = load i32, ptr %i.ku, align 4, !tbaa !25
  %i.lk = sext i32 %i.lj to i64
  %i.ll = mul nsw i64 %i.lk, %i.ky
  %i.lm = load i32, ptr %i.kv, align 4, !tbaa !26
  %i.ln = sext i32 %i.lm to i64
  %i.lo = mul nsw i64 %i.ln, %i.lc
  %i.lp = add nsw i64 %i.ll, 1073741824
  %i.lq = add i64 %i.lp, %i.lo
  %i.lr = lshr i64 %i.lq, 31
  %i.ls = trunc i64 %i.lr to i32
  store i32 %i.ls, ptr %i.kf, align 4, !tbaa !12
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %exitcond178.not = icmp eq i64 %indvars.iv.next175, %wide.trip.count177
  br i1 %exitcond178.not, label %._crit_edge, label %bb.k, !llvm.loop !94
}

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @ff_tx_mdct_pfa_init_int32_c(ptr noundef initializes((140, 152)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #0 {
bb.a:
  %7 = alloca %struct.FFTXCodeletOptions, align 4 ; 4 uses
  %i.a = alloca [15 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store i32 2, ptr %7, align 4
  %i.b = ashr i32 %4, 1                           ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !12
  %i.e = sdiv i32 %i.b, %i.d                      ; 3 uses
  %i.f = load float, ptr %6, align 4, !tbaa !36   ; 2 uses
  %i.g = fpext nsz float %i.f to double
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.g, ptr %i.h, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 140
  store float %i.f, ptr %i.i, align 4, !tbaa !37
  %i.j = and i64 %2, 6917529027641081854
  %i.k = or disjoint i64 %i.j, 2305843009213693953
  %i.l = call i32 @ff_tx_init_subtx(ptr noundef %0, i32 noundef 4, i64 noundef %i.k, ptr noundef nonnull %7, i32 noundef %i.e, i32 noundef %5, ptr noundef nonnull %6) #16 ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !35
  %i.o = load i32, ptr %i.c, align 8, !tbaa !12
  %i.p = call i32 @ff_tx_gen_compound_mapping(ptr noundef nonnull %0, ptr noundef %3, i32 noundef %i.n, i32 noundef %i.o, i32 noundef %i.e) #16 ; 2 uses
  %.not59 = icmp eq i32 %i.p, 0
  br i1 %.not59, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.c, align 8, !tbaa !12
  %i.r = icmp eq i32 %i.q, 15
  br i1 %i.r, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.s = icmp sgt i32 %i.b, 0
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30   ; 2 uses
  %i.v = zext nneg i32 %i.b to i64
  br label %bb.e

._crit_edge:                                      ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv75 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next76, %bb.f ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv75
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) %i.a, ptr noundef nonnull align 4 dereferenceable(60) %i.w, i64 60, i1 false)
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv75
  br label %.preheader63

.preheader63:                                     ; preds = %bb.e, %bb.g
  %indvars.iv71 = phi i64 [ 0, %bb.e ], [ %indvars.iv.next72, %bb.g ] ; 2 uses
  %i.x = mul nuw nsw i64 %indvars.iv71, 3         ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.x
  br label %bb.h

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 15 ; 2 uses
  %i.y = icmp samesign ult i64 %indvars.iv.next76, %i.v
  br i1 %i.y, label %bb.e, label %._crit_edge, !llvm.loop !95

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next72, 5
  br i1 %exitcond74.not, label %bb.f, label %.preheader63, !llvm.loop !96

bb.h:                                             ; preds = %.preheader63, %bb.h
  %indvars.iv = phi i64 [ 0, %.preheader63 ], [ %indvars.iv.next, %bb.h ] ; 3 uses
  %i.z = mul nuw nsw i64 %indvars.iv, 5
  %i.aa = add nuw nsw i64 %i.z, %i.x
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %i.ac = urem i32 %i.ab, 15
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !12
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %gep, i64 %indvars.iv
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.g, label %bb.h, !llvm.loop !97

bb.i:                                             ; preds = %._crit_edge, %bb.c
  %.not60 = icmp eq i32 %5, 0
  br i1 %.not60, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.aj = phi ptr [ %i.ai, %bb.j ], [ null, %bb.i ]
  %i.ak = call i32 @ff_tx_mdct_gen_exp_int32(ptr noundef nonnull %0, ptr noundef %i.aj) ; 2 uses
  %.not61 = icmp eq i32 %i.ak, 0
  br i1 %.not61, label %.preheader, label %bb.n

.preheader:                                       ; preds = %bb.k
  %i.al = icmp sgt i32 %i.b, 0
  br i1 %i.al, label %.lr.ph68, label %._crit_edge69

.lr.ph68:                                         ; preds = %.preheader
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.l

._crit_edge69:                                    ; preds = %bb.l, %.preheader
  %i.ao = sext i32 %i.b to i64
  %i.ap = shl nsw i64 %i.ao, 3
  %i.aq = call noalias ptr @av_malloc(i64 noundef %i.ap) #16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !28
  %.not62 = icmp eq ptr %i.aq, null
  br i1 %.not62, label %bb.n, label %bb.m

bb.l:                                             ; preds = %.lr.ph68, %bb.l
  %indvars.iv78 = phi i64 [ 0, %.lr.ph68 ], [ %indvars.iv.next79, %bb.l ] ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv78 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !12
  %i.au = shl i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !12
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count
  br i1 %exitcond81.not, label %._crit_edge69, label %bb.l, !llvm.loop !98

bb.m:                                             ; preds = %._crit_edge69
  %i.av = sdiv i32 %i.b, %i.e
  call void @ff_tx_init_tabs_int32(i32 noundef %i.av) #17
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge69, %bb.k, %bb.b, %bb.a, %bb.m
  %.054 = phi i32 [ %i.ak, %bb.k ], [ %i.l, %bb.a ], [ %i.p, %bb.b ], [ 0, %bb.m ], [ -12, %._crit_edge69 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  ret i32 %.054
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_5xM_fwd_int32_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = mul nsw i32 %i.e, 5                      ; 21 uses
  %i.g = mul nuw nsw i32 %i.e, 15                 ; 10 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !21
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30   ; 2 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.p = lshr i64 %3, 2                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader169.lr.ph, label %.preheader168

.preheader169.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 25                 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.u = zext nneg i32 %i.e to i64                ; 5 uses
  %.idx.i = shl nuw nsw i64 %i.u, 4
  %.idx104.i = mul nuw nsw i64 %i.u, 24
  %.idx105.i = shl nuw nsw i64 %i.u, 5
  br label %.preheader169

.preheader169:                                    ; preds = %.preheader169.lr.ph, %bb.p
  %indvars.iv175 = phi i64 [ 0, %.preheader169.lr.ph ], [ %indvars.iv.next176, %bb.p ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv175, 20
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx ; 5 uses
  %i.v = load i32, ptr %invariant.gep, align 4, !tbaa !12 ; 6 uses
  %i.w = icmp slt i32 %i.v, %i.f
  %i.x = add nsw i32 %i.v, %i.f
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %2, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !12  ; 2 uses
  %i.ab = xor i32 %i.v, -1                        ; 3 uses
  %i.ac = add i32 %i.g, %i.ab
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !12 ; 2 uses
  br i1 %i.w, label %bb.b, label %bb.c

.preheader168.loopexit:                           ; preds = %bb.p
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !29
  br label %.preheader168

.preheader168:                                    ; preds = %.preheader168.loopexit, %bb.a
  %i.ag = phi ptr [ %.pre, %.preheader168.loopexit ], [ %i.d, %bb.a ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.aj = sext i32 %i.e to i64                    ; 4 uses
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !10
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !28 ; 2 uses
  tail call void %i.ak(ptr noundef %i.ag, ptr noundef %i.al, ptr noundef %i.al, i64 noundef 8) #16
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !10
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !28
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.aj ; 2 uses
  tail call void %i.am(ptr noundef %i.an, ptr noundef %i.ap, ptr noundef %i.ap, i64 noundef 8) #16
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !10
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.as = load ptr, ptr %i.ai, align 8, !tbaa !28
  %.idx192 = shl nsw i64 %i.aj, 4
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %.idx192 ; 2 uses
  tail call void %i.aq(ptr noundef %i.ar, ptr noundef %i.at, ptr noundef %i.at, i64 noundef 8) #16
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !10
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.aw = load ptr, ptr %i.ai, align 8, !tbaa !28
  %.idx193 = mul nsw i64 %i.aj, 24
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %.idx193 ; 2 uses
  tail call void %i.au(ptr noundef %i.av, ptr noundef %i.ax, ptr noundef %i.ax, i64 noundef 8) #16
  %i.ay = load ptr, ptr %i.ah, align 8, !tbaa !10
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.ba = load ptr, ptr %i.ai, align 8, !tbaa !28
  %.idx194 = shl nsw i64 %i.aj, 5
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %.idx194 ; 2 uses
  tail call void %i.ay(ptr noundef %i.az, ptr noundef %i.bb, ptr noundef %i.bb, i64 noundef 8) #16
  %i.bc = icmp sgt i32 %i.i, 0
  br i1 %i.bc, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.preheader169
  %i.bd = add i32 %i.f, %i.ab
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %2, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !12
  %reass.sub = sub i32 %i.bg, %i.aa
  %i.bh = add i32 %reass.sub, 32
  %i.bi = add nsw i32 %i.v, %i.g
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !12
  %i.bm = add i32 %i.bl, %i.af
  %i.bn = sub i32 32, %i.bm
  br label %bb.d

bb.c:                                             ; preds = %.preheader169
  %i.bo = add i32 %i.r, %i.ab
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !12
  %i.bs = add i32 %i.aa, %i.br
  %i.bt = sub i32 32, %i.bs
  %i.bu = sub nuw nsw i32 %i.v, %i.f
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !12
  %i.by = add i32 %i.bx, 32
  %i.bz = sub i32 %i.by, %i.af
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.089.0.in = phi i32 [ %i.bh, %bb.b ], [ %i.bt, %bb.c ]
  %.sroa.6.0.in = phi i32 [ %i.bn, %bb.b ], [ %i.bz, %bb.c ]
  %.sroa.6.0 = ashr i32 %.sroa.6.0.in, 6
  %.sroa.089.0 = ashr i32 %.sroa.089.0.in, 6
  %i.ca = ashr i32 %i.v, 1
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.cb ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !25
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  %i.cf = sext i32 %.sroa.089.0 to i64            ; 2 uses
  %i.cg = mul nsw i64 %i.ce, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !26
  %i.cj = sext i32 %i.ci to i64                   ; 2 uses
  %i.ck = sext i32 %.sroa.6.0 to i64              ; 2 uses
  %i.cl = mul nsw i64 %i.cj, %i.ck
  %i.cm = add nsw i64 %i.cg, 1073741824
  %i.cn = sub nsw i64 %i.cm, %i.cl
  %i.co = lshr i64 %i.cn, 31
  %i.cp = trunc i64 %i.co to i32                  ; 3 uses
  %i.cq = mul nsw i64 %i.cj, %i.cf
  %i.cr = mul nsw i64 %i.ce, %i.ck
  %i.cs = add nsw i64 %i.cr, 1073741824
  %i.ct = add nsw i64 %i.cs, %i.cq
  %i.cu = lshr i64 %i.ct, 31
  %i.cv = trunc i64 %i.cu to i32                  ; 3 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 4
  %i.cw = load i32, ptr %gep.1, align 4, !tbaa !12 ; 6 uses
  %i.cx = icmp slt i32 %i.cw, %i.f
  %i.cy = add nsw i32 %i.cw, %i.f
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %2, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !12 ; 2 uses
  %i.dc = xor i32 %i.cw, -1                       ; 3 uses
  %i.dd = add i32 %i.g, %i.dc
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %2, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !12 ; 2 uses
  br i1 %i.cx, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dh = add i32 %i.r, %i.dc
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %2, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !12
  %i.dl = add i32 %i.db, %i.dk
  %i.dm = sub i32 32, %i.dl
  %i.dn = sub nuw nsw i32 %i.cw, %i.f
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !12
  %i.dr = add i32 %i.dq, 32
  %i.ds = sub i32 %i.dr, %i.dg
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.dt = add i32 %i.f, %i.dc
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %2, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !12
  %reass.sub.1 = sub i32 %i.dw, %i.db
  %i.dx = add i32 %reass.sub.1, 32
  %i.dy = add nsw i32 %i.cw, %i.g
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !12
  %i.ec = add i32 %i.eb, %i.dg
  %i.ed = sub i32 32, %i.ec
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.089.0.in.1 = phi i32 [ %i.dx, %bb.f ], [ %i.dm, %bb.e ]
  %.sroa.6.0.in.1 = phi i32 [ %i.ed, %bb.f ], [ %i.ds, %bb.e ]
  %.sroa.6.0.1 = ashr i32 %.sroa.6.0.in.1, 6
  %.sroa.089.0.1 = ashr i32 %.sroa.089.0.in.1, 6
  %i.ee = ashr i32 %i.cw, 1
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !25
  %i.ei = sext i32 %i.eh to i64                   ; 2 uses
  %i.ej = sext i32 %.sroa.089.0.1 to i64          ; 2 uses
  %i.ek = mul nsw i64 %i.ei, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.em = load i32, ptr %i.el, align 4, !tbaa !26
  %i.en = sext i32 %i.em to i64                   ; 2 uses
  %i.eo = sext i32 %.sroa.6.0.1 to i64            ; 2 uses
  %i.ep = mul nsw i64 %i.en, %i.eo
  %i.eq = add nsw i64 %i.ek, 1073741824
  %i.er = sub nsw i64 %i.eq, %i.ep
  %i.es = lshr i64 %i.er, 31                      ; 2 uses
  %i.et = trunc i64 %i.es to i32
  %i.eu = mul nsw i64 %i.en, %i.ej
end_hunk_2
begin_hunk_3_@ff_tx_mdct_pfa_5xM_fwd_int32_c:bb.a
  %i.mh = sext i32 %i.lr to i64                   ; 2 uses
  %i.mi = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_int32, i64 8), align 8, !tbaa !12
  %i.mj = sext i32 %i.mi to i64                   ; 4 uses
  %i.mk = mul nsw i64 %i.mj, %i.mh
  %i.ml = add nsw i64 %i.mg, 1073741824
  %i.mm = sub nsw i64 %i.ml, %i.mk
  %i.mn = lshr i64 %i.mm, 31
  %i.mo = trunc i64 %i.mn to i32
  %i.mp = mul nsw i64 %i.mf, %i.mh
  %i.mq = mul nsw i64 %i.mj, %i.md
  %i.mr = add nsw i64 %i.mp, 1073741824
  %i.ms = sub nsw i64 %i.mr, %i.mq
  %i.mt = lshr i64 %i.ms, 31
  %i.mu = trunc i64 %i.mt to i32
  %i.mv = sext i32 %i.lx to i64                   ; 2 uses
  %i.mw = mul nsw i64 %i.mf, %i.mv
  %i.mx = sext i32 %i.lt to i64                   ; 2 uses
  %i.my = mul nsw i64 %i.mj, %i.mx
  %i.mz = add nsw i64 %i.mw, 1073741824
  %i.na = sub nsw i64 %i.mz, %i.my
  %i.nb = lshr i64 %i.na, 31
  %i.nc = trunc i64 %i.nb to i32
  %i.nd = mul nsw i64 %i.mf, %i.mx
  %i.ne = mul nsw i64 %i.mj, %i.mv
  %i.nf = add nsw i64 %i.nd, 1073741824
  %i.ng = sub nsw i64 %i.nf, %i.ne
  %i.nh = lshr i64 %i.ng, 31
  %i.ni = trunc i64 %i.nh to i32
  %sext = shl i64 %i.lw, 32
  %i.nj = ashr exact i64 %sext, 32                ; 2 uses
  %i.nk = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_int32, i64 16), align 16, !tbaa !12
  %i.nl = sext i32 %i.nk to i64                   ; 4 uses
  %i.nm = mul nsw i64 %i.nj, %i.nl
  %sext195 = shl i64 %i.ls, 32
  %i.nn = ashr exact i64 %sext195, 32             ; 2 uses
  %i.no = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_int32, i64 24), align 8, !tbaa !12
  %i.np = sext i32 %i.no to i64                   ; 4 uses
  %i.nq = mul nsw i64 %i.nn, %i.np
  %i.nr = add nsw i64 %i.nm, 1073741824
  %i.ns = sub nsw i64 %i.nr, %i.nq
  %i.nt = lshr i64 %i.ns, 31
  %i.nu = trunc i64 %i.nt to i32                  ; 2 uses
  %i.nv = mul nsw i64 %i.nn, %i.nl
  %i.nw = mul nsw i64 %i.nj, %i.np
  %i.nx = add nsw i64 %i.nv, 1073741824
  %i.ny = add i64 %i.nx, %i.nw
  %i.nz = lshr i64 %i.ny, 31
  %i.oa = trunc i64 %i.nz to i32                  ; 2 uses
  %sext196 = shl i64 %i.lu, 32
  %i.ob = ashr exact i64 %sext196, 32             ; 2 uses
  %i.oc = mul nsw i64 %i.ob, %i.nl
  %sext197 = shl i64 %i.lq, 32
  %i.od = ashr exact i64 %sext197, 32             ; 2 uses
  %i.oe = mul nsw i64 %i.od, %i.np
  %i.of = add nsw i64 %i.oc, 1073741824
  %i.og = sub nsw i64 %i.of, %i.oe
  %i.oh = lshr i64 %i.og, 31
  %i.oi = trunc i64 %i.oh to i32                  ; 2 uses
  %i.oj = mul nsw i64 %i.od, %i.nl
  %i.ok = mul nsw i64 %i.ob, %i.np
  %i.ol = add nsw i64 %i.oj, 1073741824
  %i.om = add i64 %i.ol, %i.ok
  %i.on = lshr i64 %i.om, 31
  %i.oo = trunc i64 %i.on to i32                  ; 2 uses
  %i.op = add i32 %i.cv, %i.mu                    ; 2 uses
  %i.oq = add i32 %i.op, %i.oa
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %i.u ; 2 uses
  store i32 %i.oq, ptr %i.or, align 4, !tbaa !25
  %i.os = add i32 %i.cp, %i.ni                    ; 2 uses
  %i.ot = sub i32 %i.os, %i.oo
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 4
  store i32 %i.ot, ptr %i.ou, align 4, !tbaa !26
  %i.ov = add i32 %i.cv, %i.mo                    ; 2 uses
  %i.ow = sub i32 %i.ov, %i.nu
  %i.ox = getelementptr inbounds nuw i8, ptr %i.lp, i64 %.idx.i ; 2 uses
  store i32 %i.ow, ptr %i.ox, align 4, !tbaa !25
  %i.oy = add i32 %i.cp, %i.nc                    ; 2 uses
  %i.oz = add i32 %i.oy, %i.oi
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ox, i64 4
  store i32 %i.oz, ptr %i.pa, align 4, !tbaa !26
  %i.pb = add i32 %i.ov, %i.nu
  %i.pc = getelementptr inbounds nuw i8, ptr %i.lp, i64 %.idx104.i ; 2 uses
  store i32 %i.pb, ptr %i.pc, align 4, !tbaa !25
  %i.pd = sub i32 %i.oy, %i.oi
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 4
  store i32 %i.pd, ptr %i.pe, align 4, !tbaa !26
  %i.pf = sub i32 %i.op, %i.oa
  %i.pg = getelementptr inbounds nuw i8, ptr %i.lp, i64 %.idx105.i ; 2 uses
  store i32 %i.pf, ptr %i.pg, align 4, !tbaa !25
  %i.ph = add i32 %i.os, %i.oo
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pg, i64 4
  store i32 %i.ph, ptr %i.pi, align 4, !tbaa !26
  %indvars.iv.next176 = add nuw nsw i64 %indvars.iv175, 1 ; 2 uses
  %exitcond178.not = icmp eq i64 %indvars.iv.next176, %i.u
  br i1 %exitcond178.not, label %.preheader168.loopexit, label %.preheader169, !llvm.loop !99

.lr.ph:                                           ; preds = %.preheader168
  %i.pj = load ptr, ptr %i.ai, align 8, !tbaa !28 ; 2 uses
  %i.pk = zext nneg i32 %i.i to i64               ; 2 uses
  %wide.trip.count186 = zext nneg i32 %i.i to i64
  br label %bb.q

._crit_edge:                                      ; preds = %bb.q, %.preheader168
  ret void

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv183 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next184, %bb.q ] ; 3 uses
  %i.pl = add nuw nsw i64 %indvars.iv183, %i.pk   ; 3 uses
  %i.pm = xor i64 %indvars.iv183, -1
  %i.pn = add nsw i64 %i.pk, %i.pm                ; 3 uses
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.pl
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !12
  %i.pq = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.pn
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !12
  %i.ps = sext i32 %i.pr to i64
  %i.pt = getelementptr inbounds [8 x i8], ptr %i.pj, i64 %i.ps ; 2 uses
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !25
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 4
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !26
  %i.px = sext i32 %i.pp to i64
  %i.py = getelementptr inbounds [8 x i8], ptr %i.pj, i64 %i.px ; 2 uses
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !25
  %i.qa = getelementptr inbounds nuw i8, ptr %i.py, i64 4
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !26
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.pl ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 4 ; 2 uses
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !26
  %i.qf = sext i32 %i.qe to i64
  %i.qg = sext i32 %i.pz to i64                   ; 2 uses
  %i.qh = mul nsw i64 %i.qf, %i.qg
  %i.qi = load i32, ptr %i.qc, align 4, !tbaa !25
  %i.qj = sext i32 %i.qi to i64
  %i.qk = sext i32 %i.qb to i64                   ; 2 uses
  %i.ql = mul nsw i64 %i.qj, %i.qk
  %i.qm = add nsw i64 %i.qh, 1073741824
  %i.qn = sub nsw i64 %i.qm, %i.ql
  %i.qo = lshr i64 %i.qn, 31
  %i.qp = trunc i64 %i.qo to i32
  %i.qq = shl nsw i64 %i.pn, 1
  %i.qr = mul nsw i64 %i.p, %i.qq
  %i.qs = getelementptr [4 x i8], ptr %1, i64 %i.qr ; 2 uses
  %i.qt = getelementptr [4 x i8], ptr %i.qs, i64 %i.p
  store i32 %i.qp, ptr %i.qt, align 4, !tbaa !12
  %i.qu = load i32, ptr %i.qc, align 4, !tbaa !25
  %i.qv = sext i32 %i.qu to i64
  %i.qw = mul nsw i64 %i.qv, %i.qg
  %i.qx = load i32, ptr %i.qd, align 4, !tbaa !26
  %i.qy = sext i32 %i.qx to i64
  %i.qz = mul nsw i64 %i.qy, %i.qk
  %i.ra = add nsw i64 %i.qw, 1073741824
  %i.rb = add i64 %i.ra, %i.qz
  %i.rc = lshr i64 %i.rb, 31
  %i.rd = trunc i64 %i.rc to i32
  %i.re = shl nuw nsw i64 %i.pl, 1
  %i.rf = mul nuw nsw i64 %i.p, %i.re
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.rf ; 2 uses
  store i32 %i.rd, ptr %i.rg, align 4, !tbaa !12
  %i.rh = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.pn ; 3 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 4 ; 2 uses
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !26
  %i.rk = sext i32 %i.rj to i64
  %i.rl = sext i32 %i.pu to i64                   ; 2 uses
  %i.rm = mul nsw i64 %i.rk, %i.rl
  %i.rn = load i32, ptr %i.rh, align 4, !tbaa !25
  %i.ro = sext i32 %i.rn to i64
  %i.rp = sext i32 %i.pw to i64                   ; 2 uses
  %i.rq = mul nsw i64 %i.ro, %i.rp
  %i.rr = add nsw i64 %i.rm, 1073741824
  %i.rs = sub nsw i64 %i.rr, %i.rq
  %i.rt = lshr i64 %i.rs, 31
  %i.ru = trunc i64 %i.rt to i32
  %i.rv = getelementptr [4 x i8], ptr %i.rg, i64 %i.p
  store i32 %i.ru, ptr %i.rv, align 4, !tbaa !12
  %i.rw = load i32, ptr %i.rh, align 4, !tbaa !25
  %i.rx = sext i32 %i.rw to i64
  %i.ry = mul nsw i64 %i.rx, %i.rl
  %i.rz = load i32, ptr %i.ri, align 4, !tbaa !26
  %i.sa = sext i32 %i.rz to i64
  %i.sb = mul nsw i64 %i.sa, %i.rp
  %i.sc = add nsw i64 %i.ry, 1073741824
  %i.sd = add i64 %i.sc, %i.sb
  %i.se = lshr i64 %i.sd, 31
  %i.sf = trunc i64 %i.se to i32
  store i32 %i.sf, ptr %i.qs, align 4, !tbaa !12
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %exitcond187.not = icmp eq i64 %indvars.iv.next184, %wide.trip.count186
  br i1 %exitcond187.not, label %._crit_edge, label %bb.q, !llvm.loop !100
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_7xM_fwd_int32_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %4 = alloca [7 x %struct.AVComplexInt32], align 16 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = mul nsw i32 %i.e, 7                      ; 5 uses
  %i.g = mul nuw nsw i32 %i.e, 21                 ; 2 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !21
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30   ; 2 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.p = lshr i64 %3, 2                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader197.lr.ph, label %.preheader196

.preheader197.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 35
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.u = zext nneg i32 %i.e to i64                ; 7 uses
  %.sroa.10110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 36
  %.idx.i = shl nuw nsw i64 %i.u, 4
  %.idx169.i = mul nuw nsw i64 %i.u, 24
  %.idx170.i = shl nuw nsw i64 %i.u, 5
  %.idx171.i = mul nuw nsw i64 %i.u, 40
  %.idx172.i = mul nuw nsw i64 %i.u, 48
  br label %.preheader197

.preheader197:                                    ; preds = %.preheader197.lr.ph, %bb.b
  %indvars.iv203 = phi i64 [ 0, %.preheader197.lr.ph ], [ %indvars.iv.next204, %bb.b ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv203, 28
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  br label %bb.c

.preheader196.loopexit:                           ; preds = %bb.b
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !29
  br label %.preheader196

.preheader196:                                    ; preds = %.preheader196.loopexit, %bb.a
  %i.ah = phi ptr [ %.pre, %.preheader196.loopexit ], [ %i.d, %bb.a ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.ak = sext i32 %i.e to i64                    ; 6 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !10
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !28 ; 2 uses
  tail call void %i.al(ptr noundef %i.ah, ptr noundef %i.am, ptr noundef %i.am, i64 noundef 8) #16
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !10
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !28
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ak ; 2 uses
  tail call void %i.an(ptr noundef %i.ao, ptr noundef %i.aq, ptr noundef %i.aq, i64 noundef 8) #16
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !10
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.at = load ptr, ptr %i.aj, align 8, !tbaa !28
  %.idx220 = shl nsw i64 %i.ak, 4
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %.idx220 ; 2 uses
  tail call void %i.ar(ptr noundef %i.as, ptr noundef %i.au, ptr noundef %i.au, i64 noundef 8) #16
  %i.av = load ptr, ptr %i.ai, align 8, !tbaa !10
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.ax = load ptr, ptr %i.aj, align 8, !tbaa !28
  %.idx221 = mul nsw i64 %i.ak, 24
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %.idx221 ; 2 uses
  tail call void %i.av(ptr noundef %i.aw, ptr noundef %i.ay, ptr noundef %i.ay, i64 noundef 8) #16
  %i.az = load ptr, ptr %i.ai, align 8, !tbaa !10
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.bb = load ptr, ptr %i.aj, align 8, !tbaa !28
  %.idx222 = shl nsw i64 %i.ak, 5
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %.idx222 ; 2 uses
  tail call void %i.az(ptr noundef %i.ba, ptr noundef %i.bc, ptr noundef %i.bc, i64 noundef 8) #16
  %i.bd = load ptr, ptr %i.ai, align 8, !tbaa !10
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.bf = load ptr, ptr %i.aj, align 8, !tbaa !28
  %.idx223 = mul nsw i64 %i.ak, 40
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 %.idx223 ; 2 uses
  tail call void %i.bd(ptr noundef %i.be, ptr noundef %i.bg, ptr noundef %i.bg, i64 noundef 8) #16
  %i.bh = load ptr, ptr %i.ai, align 8, !tbaa !10
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.bj = load ptr, ptr %i.aj, align 8, !tbaa !28
  %.idx224 = mul nsw i64 %i.ak, 48
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %.idx224 ; 2 uses
  tail call void %i.bh(ptr noundef %i.bi, ptr noundef %i.bk, ptr noundef %i.bk, i64 noundef 8) #16
  %i.bl = icmp sgt i32 %i.i, 0
  br i1 %i.bl, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv203
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !12
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.bo ; 8 uses
  %.sroa.0103.0.copyload.i = load i32, ptr %4, align 16, !tbaa !12 ; 4 uses
  %.sroa.10110.0.copyload.i = load i32, ptr %.sroa.10110.0..sroa_idx.i, align 4, !tbaa !12 ; 4 uses
  %i.bq = load i32, ptr %i.v, align 8, !tbaa !25  ; 2 uses
  %i.br = load i32, ptr %i.w, align 16, !tbaa !25 ; 2 uses
  %i.bs = sub i32 %i.bq, %i.br
  %i.bt = add i32 %i.br, %i.bq                    ; 2 uses
  %i.bu = load i32, ptr %i.x, align 4, !tbaa !26  ; 2 uses
  %i.bv = load i32, ptr %i.y, align 4, !tbaa !26  ; 2 uses
  %i.bw = sub i32 %i.bu, %i.bv
  %i.bx = add i32 %i.bv, %i.bu                    ; 2 uses
  %i.by = load i32, ptr %i.z, align 16, !tbaa !25 ; 2 uses
  %i.bz = load i32, ptr %i.aa, align 8, !tbaa !25 ; 2 uses
  %i.ca = sub i32 %i.by, %i.bz
  %i.cb = add i32 %i.bz, %i.by                    ; 2 uses
  %i.cc = load i32, ptr %i.ab, align 4, !tbaa !26 ; 2 uses
  %i.cd = load i32, ptr %i.ac, align 4, !tbaa !26 ; 2 uses
  %i.ce = sub i32 %i.cc, %i.cd
  %i.cf = add i32 %i.cd, %i.cc                    ; 2 uses
  %i.cg = load i32, ptr %i.ad, align 8, !tbaa !25 ; 2 uses
  %i.ch = load i32, ptr %i.ae, align 16, !tbaa !25 ; 2 uses
  %i.ci = sub i32 %i.cg, %i.ch
  %i.cj = add i32 %i.ch, %i.cg                    ; 2 uses
  %i.ck = load i32, ptr %i.af, align 4, !tbaa !26 ; 2 uses
  %i.cl = load i32, ptr %i.ag, align 4, !tbaa !26 ; 2 uses
  %i.cm = sub i32 %i.ck, %i.cl
  %i.cn = add i32 %i.cl, %i.ck                    ; 2 uses
  %i.co = add nsw i32 %i.bt, %.sroa.0103.0.copyload.i
  %i.cp = add nsw i32 %i.co, %i.cb
  %i.cq = add nsw i32 %i.cp, %i.cj
  store i32 %i.cq, ptr %i.bp, align 4, !tbaa !25
  %i.cr = add nsw i32 %i.bx, %.sroa.10110.0.copyload.i
  %i.cs = add nsw i32 %i.cr, %i.cf
  %i.ct = add nsw i32 %i.cs, %i.cn
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !26
  %i.cv = load i32, ptr @ff_tx_tab_7_int32, align 16, !tbaa !25
  %i.cw = sext i32 %i.cv to i64                   ; 6 uses
  %i.cx = sext i32 %i.bt to i64                   ; 3 uses
  %i.cy = mul nsw i64 %i.cw, %i.cx
  %i.cz = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_int32, i64 16), align 16, !tbaa !25
  %i.da = sext i32 %i.cz to i64                   ; 6 uses
  %i.db = sext i32 %i.cj to i64                   ; 3 uses
  %i.dc = mul nsw i64 %i.cw, %i.db
  %i.dd = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_int32, i64 8), align 8, !tbaa !25
  %i.de = sext i32 %i.dd to i64                   ; 6 uses
  %i.df = sext i32 %i.cb to i64                   ; 3 uses
  %i.dg = mul nsw i64 %i.cw, %i.df
  %i.dh = sext i32 %i.bx to i64                   ; 3 uses
  %i.di = mul nsw i64 %i.cw, %i.dh
  %i.dj = sext i32 %i.cf to i64                   ; 3 uses
  %i.dk = sext i32 %i.cn to i64                   ; 3 uses
  %i.dl = mul nsw i64 %i.cw, %i.dk
  %i.dm = mul nsw i64 %i.cw, %i.dj
  %i.dn = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_int32, i64 20), align 4, !tbaa !26
  %i.do = sext i32 %i.dn to i64                   ; 6 uses
  %i.dp = sext i32 %i.bw to i64                   ; 3 uses
  %i.dq = mul nsw i64 %i.do, %i.dp
  %i.dr = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_int32, i64 12), align 4, !tbaa !26
  %i.ds = sext i32 %i.dr to i64                   ; 6 uses
  %i.dt = sext i32 %i.cm to i64                   ; 3 uses
  %i.du = mul nsw i64 %i.ds, %i.dt
  %i.dv = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_7_int32, i64 4), align 4, !tbaa !26
  %i.dw = sext i32 %i.dv to i64                   ; 6 uses
  %i.dx = mul nsw i64 %i.dw, %i.dt
  %i.dy = sext i32 %i.ce to i64                   ; 3 uses
  %i.dz = mul nsw i64 %i.do, %i.dy
  %i.ea = mul nsw i64 %i.do, %i.dt
  %i.eb = mul nsw i64 %i.ds, %i.dy
  %i.ec = sext i32 %i.bs to i64                   ; 3 uses
  %i.ed = mul nsw i64 %i.dw, %i.ec
  %i.ee = sext i32 %i.ca to i64                   ; 3 uses
  %i.ef = mul nsw i64 %i.ds, %i.ee
  %i.eg = mul nsw i64 %i.do, %i.ee
  %i.eh = sext i32 %i.ci to i64                   ; 3 uses
  %i.ei = mul nsw i64 %i.dw, %i.eh
  %i.ej = mul nsw i64 %i.do, %i.ec
  %i.ek = mul nsw i64 %i.ds, %i.eh
  %.neg149 = mul nsw i64 %i.da, %i.db
  %.neg150 = mul nsw i64 %i.de, %i.df
  %reass.add = add i64 %.neg150, %.neg149
  %i.el = add nsw i64 %i.cy, 1073741824
  %i.em = sub i64 %i.el, %reass.add
  %i.en = lshr i64 %i.em, 31
  %i.eo = trunc i64 %i.en to i32
  %.neg152 = mul nsw i64 %i.da, %i.df
  %.neg153 = mul nsw i64 %i.de, %i.cx
  %reass.add177 = add i64 %.neg153, %.neg152
  %i.ep = add nsw i64 %i.dc, 1073741824
  %i.eq = sub i64 %i.ep, %reass.add177
  %i.er = lshr i64 %i.eq, 31
  %i.es = trunc i64 %i.er to i32
  %.neg155 = mul nsw i64 %i.da, %i.cx
  %.neg156 = mul nsw i64 %i.de, %i.db
  %reass.add179 = add i64 %.neg156, %.neg155
  %i.et = add nsw i64 %i.dg, 1073741824
  %i.eu = sub i64 %i.et, %reass.add179
  %i.ev = lshr i64 %i.eu, 31
  %i.ew = trunc i64 %i.ev to i32
  %.neg158 = mul nsw i64 %i.da, %i.dk
  %.neg159 = mul nsw i64 %i.de, %i.dj
  %reass.add181 = add i64 %.neg159, %.neg158
  %i.ex = add nsw i64 %i.di, 1073741824
end_hunk_3
begin_hunk_4_@ff_tx_mdct_pfa_7xM_fwd_int32_c:bb.a
  store i32 %i.hp, ptr %i.hq, align 4, !tbaa !25
  %i.hr = sub i32 %i.hc, %i.gm
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  store i32 %i.hr, ptr %i.hs, align 4, !tbaa !26
  %i.ht = sub i32 %i.gt, %i.ga
  %i.hu = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx172.i ; 2 uses
  store i32 %i.ht, ptr %i.hu, align 4, !tbaa !25
  %i.hv = add i32 %i.gw, %i.gg
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !26
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %exitcond206.not = icmp eq i64 %indvars.iv.next204, %i.u
  br i1 %exitcond206.not, label %.preheader196.loopexit, label %.preheader197, !llvm.loop !101

bb.c:                                             ; preds = %.preheader197, %bb.f
  %indvars.iv = phi i64 [ 0, %.preheader197 ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.hx = load i32, ptr %gep, align 4, !tbaa !12  ; 6 uses
  %i.hy = icmp slt i32 %i.hx, %i.f
  %i.hz = add nsw i32 %i.hx, %i.f
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !12 ; 2 uses
  %i.id = xor i32 %i.hx, -1                       ; 3 uses
  %i.ie = add i32 %i.g, %i.id
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %2, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !12 ; 2 uses
  br i1 %i.hy, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ii = add i32 %i.f, %i.id
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !12
  %reass.sub = sub i32 %i.il, %i.ic
  %i.im = add i32 %reass.sub, 32
  %i.in = add nsw i32 %i.hx, %i.g
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [4 x i8], ptr %2, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !12
  %i.ir = add i32 %i.iq, %i.ih
  %i.is = sub i32 32, %i.ir
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.it = add i32 %i.r, %i.id
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds [4 x i8], ptr %2, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !12
  %i.ix = add i32 %i.ic, %i.iw
  %i.iy = sub i32 32, %i.ix
  %i.iz = sub nuw nsw i32 %i.hx, %i.f
  %i.ja = zext nneg i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ja
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !12
  %i.jd = add i32 %i.jc, 32
  %i.je = sub i32 %i.jd, %i.ih
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.089.0.in = phi i32 [ %i.im, %bb.d ], [ %i.iy, %bb.e ]
  %.sroa.6.0.in = phi i32 [ %i.is, %bb.d ], [ %i.je, %bb.e ]
  %.sroa.6.0 = ashr i32 %.sroa.6.0.in, 6
  %.sroa.089.0 = ashr i32 %.sroa.089.0.in, 6
  %i.jf = ashr i32 %i.hx, 1
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.jg ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !25
  %i.jj = sext i32 %i.ji to i64                   ; 2 uses
  %i.jk = sext i32 %.sroa.089.0 to i64            ; 2 uses
  %i.jl = mul nsw i64 %i.jj, %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !26
  %i.jo = sext i32 %i.jn to i64                   ; 2 uses
  %i.jp = sext i32 %.sroa.6.0 to i64              ; 2 uses
  %i.jq = mul nsw i64 %i.jo, %i.jp
  %i.jr = add nsw i64 %i.jl, 1073741824
  %i.js = sub nsw i64 %i.jr, %i.jq
  %i.jt = lshr i64 %i.js, 31
  %i.ju = trunc i64 %i.jt to i32
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  store i32 %i.ju, ptr %i.jw, align 4, !tbaa !26
  %i.jx = mul nsw i64 %i.jo, %i.jk
  %i.jy = mul nsw i64 %i.jj, %i.jp
  %i.jz = add nsw i64 %i.jy, 1073741824
  %i.ka = add nsw i64 %i.jz, %i.jx
  %i.kb = lshr i64 %i.ka, 31
  %i.kc = trunc i64 %i.kb to i32
  store i32 %i.kc, ptr %i.jv, align 8, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !102

.lr.ph:                                           ; preds = %.preheader196
  %i.kd = load ptr, ptr %i.aj, align 8, !tbaa !28 ; 2 uses
  %i.ke = zext nneg i32 %i.i to i64               ; 2 uses
  %wide.trip.count214 = zext nneg i32 %i.i to i64
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g, %.preheader196
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv211 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next212, %bb.g ] ; 3 uses
  %i.kf = add nuw nsw i64 %indvars.iv211, %i.ke   ; 3 uses
  %i.kg = xor i64 %indvars.iv211, -1
  %i.kh = add nsw i64 %i.ke, %i.kg                ; 3 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.kf
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !12
  %i.kk = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.kh
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !12
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %i.km ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !25
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !26
  %i.kr = sext i32 %i.kj to i64
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %i.kr ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !25
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 4
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !26
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.kf ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 4 ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !26
  %i.kz = sext i32 %i.ky to i64
  %i.la = sext i32 %i.kt to i64                   ; 2 uses
  %i.lb = mul nsw i64 %i.kz, %i.la
  %i.lc = load i32, ptr %i.kw, align 4, !tbaa !25
  %i.ld = sext i32 %i.lc to i64
  %i.le = sext i32 %i.kv to i64                   ; 2 uses
  %i.lf = mul nsw i64 %i.ld, %i.le
  %i.lg = add nsw i64 %i.lb, 1073741824
  %i.lh = sub nsw i64 %i.lg, %i.lf
  %i.li = lshr i64 %i.lh, 31
  %i.lj = trunc i64 %i.li to i32
  %i.lk = shl nsw i64 %i.kh, 1
  %i.ll = mul nsw i64 %i.p, %i.lk
  %i.lm = getelementptr [4 x i8], ptr %1, i64 %i.ll ; 2 uses
  %i.ln = getelementptr [4 x i8], ptr %i.lm, i64 %i.p
  store i32 %i.lj, ptr %i.ln, align 4, !tbaa !12
  %i.lo = load i32, ptr %i.kw, align 4, !tbaa !25
  %i.lp = sext i32 %i.lo to i64
  %i.lq = mul nsw i64 %i.lp, %i.la
  %i.lr = load i32, ptr %i.kx, align 4, !tbaa !26
  %i.ls = sext i32 %i.lr to i64
  %i.lt = mul nsw i64 %i.ls, %i.le
  %i.lu = add nsw i64 %i.lq, 1073741824
  %i.lv = add i64 %i.lu, %i.lt
  %i.lw = lshr i64 %i.lv, 31
  %i.lx = trunc i64 %i.lw to i32
  %i.ly = shl nuw nsw i64 %i.kf, 1
  %i.lz = mul nuw nsw i64 %i.p, %i.ly
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.lz ; 2 uses
  store i32 %i.lx, ptr %i.ma, align 4, !tbaa !12
  %i.mb = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.kh ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 4 ; 2 uses
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !26
  %i.me = sext i32 %i.md to i64
  %i.mf = sext i32 %i.ko to i64                   ; 2 uses
  %i.mg = mul nsw i64 %i.me, %i.mf
  %i.mh = load i32, ptr %i.mb, align 4, !tbaa !25
  %i.mi = sext i32 %i.mh to i64
  %i.mj = sext i32 %i.kq to i64                   ; 2 uses
  %i.mk = mul nsw i64 %i.mi, %i.mj
  %i.ml = add nsw i64 %i.mg, 1073741824
  %i.mm = sub nsw i64 %i.ml, %i.mk
  %i.mn = lshr i64 %i.mm, 31
  %i.mo = trunc i64 %i.mn to i32
  %i.mp = getelementptr [4 x i8], ptr %i.ma, i64 %i.p
  store i32 %i.mo, ptr %i.mp, align 4, !tbaa !12
  %i.mq = load i32, ptr %i.mb, align 4, !tbaa !25
  %i.mr = sext i32 %i.mq to i64
  %i.ms = mul nsw i64 %i.mr, %i.mf
  %i.mt = load i32, ptr %i.mc, align 4, !tbaa !26
  %i.mu = sext i32 %i.mt to i64
  %i.mv = mul nsw i64 %i.mu, %i.mj
  %i.mw = add nsw i64 %i.ms, 1073741824
  %i.mx = add i64 %i.mw, %i.mv
  %i.my = lshr i64 %i.mx, 31
  %i.mz = trunc i64 %i.my to i32
  store i32 %i.mz, ptr %i.lm, align 4, !tbaa !12
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond215.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count214
  br i1 %exitcond215.not, label %._crit_edge, label %bb.g, !llvm.loop !103
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_9xM_fwd_int32_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %4 = alloca [9 x %struct.AVComplexInt32], align 16 ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = mul nsw i32 %i.e, 9                      ; 5 uses
  %i.g = mul nuw nsw i32 %i.e, 27                 ; 2 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !21
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30   ; 2 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.p = lshr i64 %3, 2                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader171.lr.ph, label %.preheader170

.preheader171.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 45
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.u = zext nneg i32 %i.e to i64                ; 9 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 44
  %.idx.i = shl nuw nsw i64 %i.u, 4
  %.idx209.i = mul nuw nsw i64 %i.u, 24
  %.idx210.i = shl nuw nsw i64 %i.u, 5
  %.idx211.i = mul nuw nsw i64 %i.u, 40
  %.idx212.i = mul nuw nsw i64 %i.u, 48
  %.idx213.i = mul nuw nsw i64 %i.u, 56
  %.idx214.i = shl nuw nsw i64 %i.u, 6
  br label %.preheader171

.preheader171:                                    ; preds = %.preheader171.lr.ph, %bb.b
  %indvars.iv177 = phi i64 [ 0, %.preheader171.lr.ph ], [ %indvars.iv.next178, %bb.b ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv177, 36
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  br label %bb.c

.preheader170.loopexit:                           ; preds = %bb.b
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !29
  br label %.preheader170

.preheader170:                                    ; preds = %.preheader170.loopexit, %bb.a
  %i.al = phi ptr [ %.pre, %.preheader170.loopexit ], [ %i.d, %bb.a ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.ao = sext i32 %i.e to i64                    ; 8 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !10
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !28 ; 2 uses
  tail call void %i.ap(ptr noundef %i.al, ptr noundef %i.aq, ptr noundef %i.aq, i64 noundef 8) #16
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !10
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !28
  %i.au = getelementptr inbounds [8 x i8], ptr %i.at, i64 %i.ao ; 2 uses
  tail call void %i.ar(ptr noundef %i.as, ptr noundef %i.au, ptr noundef %i.au, i64 noundef 8) #16
  %i.av = load ptr, ptr %i.am, align 8, !tbaa !10
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.ax = load ptr, ptr %i.an, align 8, !tbaa !28
  %.idx194 = shl nsw i64 %i.ao, 4
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %.idx194 ; 2 uses
  tail call void %i.av(ptr noundef %i.aw, ptr noundef %i.ay, ptr noundef %i.ay, i64 noundef 8) #16
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !10
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.bb = load ptr, ptr %i.an, align 8, !tbaa !28
  %.idx195 = mul nsw i64 %i.ao, 24
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %.idx195 ; 2 uses
  tail call void %i.az(ptr noundef %i.ba, ptr noundef %i.bc, ptr noundef %i.bc, i64 noundef 8) #16
  %i.bd = load ptr, ptr %i.am, align 8, !tbaa !10
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.bf = load ptr, ptr %i.an, align 8, !tbaa !28
  %.idx196 = shl nsw i64 %i.ao, 5
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 %.idx196 ; 2 uses
  tail call void %i.bd(ptr noundef %i.be, ptr noundef %i.bg, ptr noundef %i.bg, i64 noundef 8) #16
  %i.bh = load ptr, ptr %i.am, align 8, !tbaa !10
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.bj = load ptr, ptr %i.an, align 8, !tbaa !28
  %.idx197 = mul nsw i64 %i.ao, 40
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %.idx197 ; 2 uses
  tail call void %i.bh(ptr noundef %i.bi, ptr noundef %i.bk, ptr noundef %i.bk, i64 noundef 8) #16
  %i.bl = load ptr, ptr %i.am, align 8, !tbaa !10
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.bn = load ptr, ptr %i.an, align 8, !tbaa !28
  %.idx198 = mul nsw i64 %i.ao, 48
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %.idx198 ; 2 uses
  tail call void %i.bl(ptr noundef %i.bm, ptr noundef %i.bo, ptr noundef %i.bo, i64 noundef 8) #16
  %i.bp = load ptr, ptr %i.am, align 8, !tbaa !10
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.br = load ptr, ptr %i.an, align 8, !tbaa !28
  %.idx199 = mul nsw i64 %i.ao, 56
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %.idx199 ; 2 uses
  tail call void %i.bp(ptr noundef %i.bq, ptr noundef %i.bs, ptr noundef %i.bs, i64 noundef 8) #16
  %i.bt = load ptr, ptr %i.am, align 8, !tbaa !10
  %i.bu = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.bv = load ptr, ptr %i.an, align 8, !tbaa !28
  %.idx200 = shl nsw i64 %i.ao, 6
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %.idx200 ; 2 uses
  tail call void %i.bt(ptr noundef %i.bu, ptr noundef %i.bw, ptr noundef %i.bw, i64 noundef 8) #16
  %i.bx = icmp sgt i32 %i.i, 0
  br i1 %i.bx, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %bb.f
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv177
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !12
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ca ; 10 uses
  %.sroa.0130.0.copyload.i = load i32, ptr %4, align 16, !tbaa !12 ; 2 uses
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !12 ; 2 uses
  %i.cc = load i32, ptr %i.v, align 8, !tbaa !25  ; 2 uses
  %i.cd = load i32, ptr %i.w, align 16, !tbaa !25 ; 2 uses
  %i.ce = sub i32 %i.cc, %i.cd                    ; 2 uses
  %i.cf = add i32 %i.cd, %i.cc                    ; 2 uses
  %i.cg = load i32, ptr %i.x, align 4, !tbaa !26  ; 2 uses
  %i.ch = load i32, ptr %i.y, align 4, !tbaa !26  ; 2 uses
  %i.ci = sub i32 %i.cg, %i.ch                    ; 2 uses
  %i.cj = add i32 %i.ch, %i.cg                    ; 2 uses
  %i.ck = load i32, ptr %i.z, align 16, !tbaa !25 ; 2 uses
  %i.cl = load i32, ptr %i.aa, align 8, !tbaa !25 ; 2 uses
  %i.cm = sub i32 %i.ck, %i.cl                    ; 2 uses
  %i.cn = add i32 %i.cl, %i.ck                    ; 2 uses
  %i.co = load i32, ptr %i.ab, align 4, !tbaa !26 ; 2 uses
  %i.cp = load i32, ptr %i.ac, align 4, !tbaa !26 ; 2 uses
  %i.cq = sub i32 %i.co, %i.cp                    ; 2 uses
  %i.cr = add i32 %i.cp, %i.co                    ; 2 uses
  %i.cs = load i32, ptr %i.ad, align 8, !tbaa !25 ; 2 uses
  %i.ct = load i32, ptr %i.ae, align 16, !tbaa !25 ; 2 uses
  %i.cu = sub i32 %i.cs, %i.ct
  %i.cv = add i32 %i.ct, %i.cs                    ; 2 uses
  %i.cw = load i32, ptr %i.af, align 4, !tbaa !26 ; 2 uses
  %i.cx = load i32, ptr %i.ag, align 4, !tbaa !26 ; 2 uses
  %i.cy = sub i32 %i.cw, %i.cx
  %i.cz = add i32 %i.cx, %i.cw                    ; 2 uses
  %i.da = load i32, ptr %i.ah, align 16, !tbaa !25 ; 2 uses
  %i.db = load i32, ptr %i.ai, align 8, !tbaa !25 ; 2 uses
  %i.dc = sub i32 %i.da, %i.db                    ; 3 uses
  %i.dd = add i32 %i.db, %i.da                    ; 3 uses
  %i.de = load i32, ptr %i.aj, align 4, !tbaa !26 ; 2 uses
  %i.df = load i32, ptr %i.ak, align 4, !tbaa !26 ; 2 uses
  %i.dg = sub i32 %i.de, %i.df                    ; 3 uses
  %i.dh = add i32 %i.df, %i.de                    ; 3 uses
  %i.di = sub nsw i32 %i.cf, %i.dd
  %i.dj = sub nsw i32 %i.cj, %i.dh
  %i.dk = sub nsw i32 %i.cn, %i.dd
  %i.dl = sub nsw i32 %i.cr, %i.dh
  %i.dm = sub nsw i32 %i.ce, %i.dc
  %i.dn = sub nsw i32 %i.ci, %i.dg
  %i.do = add nsw i32 %i.dc, %i.cm
  %i.dp = add nsw i32 %i.dg, %i.cq
  %i.dq = add nsw i32 %i.cv, %.sroa.0130.0.copyload.i ; 2 uses
  %i.dr = add nsw i32 %i.cz, %.sroa.4.0.copyload.i ; 2 uses
  %i.ds = add nsw i32 %i.cn, %i.cf
  %i.dt = add nsw i32 %i.ds, %i.dd                ; 2 uses
  %i.du = add nsw i32 %i.cr, %i.cj
  %i.dv = add nsw i32 %i.du, %i.dh                ; 2 uses
  %i.dw = add nsw i32 %i.dt, %i.dq
  store i32 %i.dw, ptr %i.cb, align 4, !tbaa !25
  %i.dx = add nsw i32 %i.dv, %i.dr
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !26
  %i.dz = sub i32 %i.ce, %i.cm
  %i.ea = add nsw i32 %i.dz, %i.dc
  %i.eb = sext i32 %i.ea to i64
  %i.ec = sub i32 %i.ci, %i.cq
  %i.ed = add nsw i32 %i.ec, %i.dg
  %i.ee = sext i32 %i.ed to i64
  %i.ef = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_9_int32, i64 4), align 4, !tbaa !26
  %i.eg = sext i32 %i.ef to i64                   ; 4 uses
  %i.eh = mul nsw i64 %i.eg, %i.eb
  %i.ei = add nsw i64 %i.eh, 1073741824
  %i.ej = lshr i64 %i.ei, 31
  %i.ek = trunc i64 %i.ej to i32                  ; 2 uses
  %i.el = mul nsw i64 %i.eg, %i.ee
  %i.em = add nsw i64 %i.el, 1073741824
  %i.en = lshr i64 %i.em, 31
  %i.eo = trunc i64 %i.en to i32                  ; 2 uses
  %i.ep = load i32, ptr @ff_tx_tab_9_int32, align 16, !tbaa !25
  %i.eq = sext i32 %i.ep to i64                   ; 4 uses
  %i.er = sext i32 %i.dt to i64
  %i.es = mul nsw i64 %i.eq, %i.er
  %i.et = add nsw i64 %i.es, 1073741824
  %i.eu = lshr i64 %i.et, 31
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = sext i32 %i.dv to i64
  %i.ex = mul nsw i64 %i.eq, %i.ew
  %i.ey = add nsw i64 %i.ex, 1073741824
  %i.ez = lshr i64 %i.ey, 31
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = sext i32 %i.cv to i64
  %i.fc = mul nsw i64 %i.eq, %i.fb
  %i.fd = add nsw i64 %i.fc, 1073741824
end_hunk_4
begin_hunk_5_@ff_tx_mdct_pfa_9xM_fwd_int32_c:bb.a
  %i.jx = add nsw i32 %i.iv, %i.iu
  store i32 %i.jw, ptr %i.jv, align 4, !tbaa !12
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jv, i64 4
  store i32 %i.jx, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !12
  %i.jy = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx214.i ; 2 uses
  %i.jz = sub nsw i32 %i.ip, %i.is
  %i.ka = add nsw i32 %i.ir, %i.iq
  store i32 %i.jz, ptr %i.jy, align 4, !tbaa !12
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  store i32 %i.ka, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !12
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next178, %i.u
  br i1 %exitcond180.not, label %.preheader170.loopexit, label %.preheader171, !llvm.loop !104

bb.c:                                             ; preds = %.preheader171, %bb.f
  %indvars.iv = phi i64 [ 0, %.preheader171 ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.kb = load i32, ptr %gep, align 4, !tbaa !12  ; 6 uses
  %i.kc = icmp slt i32 %i.kb, %i.f
  %i.kd = add nsw i32 %i.kb, %i.f
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ke
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !12 ; 2 uses
  %i.kh = xor i32 %i.kb, -1                       ; 3 uses
  %i.ki = add i32 %i.g, %i.kh
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [4 x i8], ptr %2, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !12 ; 2 uses
  br i1 %i.kc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.km = add i32 %i.f, %i.kh
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds [4 x i8], ptr %2, i64 %i.kn
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !12
  %reass.sub = sub i32 %i.kp, %i.kg
  %i.kq = add i32 %reass.sub, 32
  %i.kr = add nsw i32 %i.kb, %i.g
  %i.ks = sext i32 %i.kr to i64
  %i.kt = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ks
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !12
  %i.kv = add i32 %i.ku, %i.kl
  %i.kw = sub i32 32, %i.kv
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.kx = add i32 %i.r, %i.kh
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ky
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !12
  %i.lb = add i32 %i.kg, %i.la
  %i.lc = sub i32 32, %i.lb
  %i.ld = sub nuw nsw i32 %i.kb, %i.f
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.le
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !12
  %i.lh = add i32 %i.lg, 32
  %i.li = sub i32 %i.lh, %i.kl
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.089.0.in = phi i32 [ %i.kq, %bb.d ], [ %i.lc, %bb.e ]
  %.sroa.6.0.in = phi i32 [ %i.kw, %bb.d ], [ %i.li, %bb.e ]
  %.sroa.6.0 = ashr i32 %.sroa.6.0.in, 6
  %.sroa.089.0 = ashr i32 %.sroa.089.0.in, 6
  %i.lj = ashr i32 %i.kb, 1
  %i.lk = sext i32 %i.lj to i64
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.lk ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !25
  %i.ln = sext i32 %i.lm to i64                   ; 2 uses
  %i.lo = sext i32 %.sroa.089.0 to i64            ; 2 uses
  %i.lp = mul nsw i64 %i.ln, %i.lo
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !26
  %i.ls = sext i32 %i.lr to i64                   ; 2 uses
  %i.lt = sext i32 %.sroa.6.0 to i64              ; 2 uses
  %i.lu = mul nsw i64 %i.ls, %i.lt
  %i.lv = add nsw i64 %i.lp, 1073741824
  %i.lw = sub nsw i64 %i.lv, %i.lu
  %i.lx = lshr i64 %i.lw, 31
  %i.ly = trunc i64 %i.lx to i32
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  store i32 %i.ly, ptr %i.ma, align 4, !tbaa !26
  %i.mb = mul nsw i64 %i.ls, %i.lo
  %i.mc = mul nsw i64 %i.ln, %i.lt
  %i.md = add nsw i64 %i.mc, 1073741824
  %i.me = add nsw i64 %i.md, %i.mb
  %i.mf = lshr i64 %i.me, 31
  %i.mg = trunc i64 %i.mf to i32
  store i32 %i.mg, ptr %i.lz, align 8, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !105

.lr.ph:                                           ; preds = %.preheader170
  %i.mh = load ptr, ptr %i.an, align 8, !tbaa !28 ; 2 uses
  %i.mi = zext nneg i32 %i.i to i64               ; 2 uses
  %wide.trip.count188 = zext nneg i32 %i.i to i64
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g, %.preheader170
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv185 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next186, %bb.g ] ; 3 uses
  %i.mj = add nuw nsw i64 %indvars.iv185, %i.mi   ; 3 uses
  %i.mk = xor i64 %indvars.iv185, -1
  %i.ml = add nsw i64 %i.mi, %i.mk                ; 3 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.mj
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !12
  %i.mo = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.ml
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !12
  %i.mq = sext i32 %i.mp to i64
  %i.mr = getelementptr inbounds [8 x i8], ptr %i.mh, i64 %i.mq ; 2 uses
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !25
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !26
  %i.mv = sext i32 %i.mn to i64
  %i.mw = getelementptr inbounds [8 x i8], ptr %i.mh, i64 %i.mv ; 2 uses
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !25
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !26
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.mj ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 4 ; 2 uses
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !26
  %i.nd = sext i32 %i.nc to i64
  %i.ne = sext i32 %i.mx to i64                   ; 2 uses
  %i.nf = mul nsw i64 %i.nd, %i.ne
  %i.ng = load i32, ptr %i.na, align 4, !tbaa !25
  %i.nh = sext i32 %i.ng to i64
  %i.ni = sext i32 %i.mz to i64                   ; 2 uses
  %i.nj = mul nsw i64 %i.nh, %i.ni
  %i.nk = add nsw i64 %i.nf, 1073741824
  %i.nl = sub nsw i64 %i.nk, %i.nj
  %i.nm = lshr i64 %i.nl, 31
  %i.nn = trunc i64 %i.nm to i32
  %i.no = shl nsw i64 %i.ml, 1
  %i.np = mul nsw i64 %i.p, %i.no
  %i.nq = getelementptr [4 x i8], ptr %1, i64 %i.np ; 2 uses
  %i.nr = getelementptr [4 x i8], ptr %i.nq, i64 %i.p
  store i32 %i.nn, ptr %i.nr, align 4, !tbaa !12
  %i.ns = load i32, ptr %i.na, align 4, !tbaa !25
  %i.nt = sext i32 %i.ns to i64
  %i.nu = mul nsw i64 %i.nt, %i.ne
  %i.nv = load i32, ptr %i.nb, align 4, !tbaa !26
  %i.nw = sext i32 %i.nv to i64
  %i.nx = mul nsw i64 %i.nw, %i.ni
  %i.ny = add nsw i64 %i.nu, 1073741824
  %i.nz = add i64 %i.ny, %i.nx
  %i.oa = lshr i64 %i.nz, 31
  %i.ob = trunc i64 %i.oa to i32
  %i.oc = shl nuw nsw i64 %i.mj, 1
  %i.od = mul nuw nsw i64 %i.p, %i.oc
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.od ; 2 uses
  store i32 %i.ob, ptr %i.oe, align 4, !tbaa !12
  %i.of = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ml ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 4 ; 2 uses
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !26
  %i.oi = sext i32 %i.oh to i64
  %i.oj = sext i32 %i.ms to i64                   ; 2 uses
  %i.ok = mul nsw i64 %i.oi, %i.oj
  %i.ol = load i32, ptr %i.of, align 4, !tbaa !25
  %i.om = sext i32 %i.ol to i64
  %i.on = sext i32 %i.mu to i64                   ; 2 uses
  %i.oo = mul nsw i64 %i.om, %i.on
  %i.op = add nsw i64 %i.ok, 1073741824
  %i.oq = sub nsw i64 %i.op, %i.oo
  %i.or = lshr i64 %i.oq, 31
  %i.os = trunc i64 %i.or to i32
  %i.ot = getelementptr [4 x i8], ptr %i.oe, i64 %i.p
  store i32 %i.os, ptr %i.ot, align 4, !tbaa !12
  %i.ou = load i32, ptr %i.of, align 4, !tbaa !25
  %i.ov = sext i32 %i.ou to i64
  %i.ow = mul nsw i64 %i.ov, %i.oj
  %i.ox = load i32, ptr %i.og, align 4, !tbaa !26
  %i.oy = sext i32 %i.ox to i64
  %i.oz = mul nsw i64 %i.oy, %i.on
  %i.pa = add nsw i64 %i.ow, 1073741824
  %i.pb = add i64 %i.pa, %i.oz
  %i.pc = lshr i64 %i.pb, 31
  %i.pd = trunc i64 %i.pc to i32
  store i32 %i.pd, ptr %i.nq, align 4, !tbaa !12
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %exitcond189.not = icmp eq i64 %indvars.iv.next186, %wide.trip.count188
  br i1 %exitcond189.not, label %._crit_edge, label %bb.g, !llvm.loop !106
}

; Function Attrs: nounwind uwtable
define internal void @ff_tx_mdct_pfa_15xM_fwd_int32_c(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #3 {
bb.a:
  %4 = alloca [15 x %struct.AVComplexInt32], align 16 ; 33 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 16 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29   ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21   ; 6 uses
  %i.f = mul nsw i32 %i.e, 15                     ; 5 uses
  %i.g = mul nuw nsw i32 %i.e, 45                 ; 2 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !21
  %i.i = ashr i32 %i.h, 2                         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30   ; 2 uses
  %i.l = sext i32 %i.f to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30
  %i.p = lshr i64 %3, 2                           ; 4 uses
  %i.q = icmp sgt i32 %i.e, 0
  br i1 %i.q, label %.preheader205.lr.ph, label %.preheader204

.preheader205.lr.ph:                              ; preds = %bb.a
  %i.r = mul nuw nsw i32 %i.e, 75
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.u = zext nneg i32 %i.e to i64                ; 15 uses
  %.idx.i = mul nuw nsw i64 %i.u, 48
  %.idx104.i = mul nuw nsw i64 %i.u, 96
  %.idx105.i = mul nuw nsw i64 %i.u, 24
  %.idx106.i = mul nuw nsw i64 %i.u, 72
  %.idx.i151 = mul nuw nsw i64 %i.u, 80
  %.idx104.i152 = mul nuw nsw i64 %i.u, 56
  %.idx105.i153 = mul nuw nsw i64 %i.u, 104
  %.idx106.i154 = shl nuw nsw i64 %i.u, 5
  %.idx.i158 = mul nuw nsw i64 %i.u, 40
  %.idx104.i159 = mul nuw nsw i64 %i.u, 88
  %.idx105.i160 = shl nuw nsw i64 %i.u, 4
  %.idx106.i161 = shl nuw nsw i64 %i.u, 6
  %.idx107.i = mul nuw nsw i64 %i.u, 112
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.6.0..sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.6.0..sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 72
  %.sroa.6.0..sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %4, i64 76
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 92
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 96
  %.sroa.6.0..sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %4, i64 100
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 108
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 116
  br label %.preheader205

.preheader205:                                    ; preds = %.preheader205.lr.ph, %fft15.exit
  %indvars.iv218 = phi i64 [ 0, %.preheader205.lr.ph ], [ %indvars.iv.next219, %fft15.exit ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv218, 60
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx
  br label %bb.b

.preheader204.loopexit:                           ; preds = %fft15.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !29
  br label %.preheader204

.preheader204:                                    ; preds = %.preheader204.loopexit, %bb.a
  %i.at = phi ptr [ %.pre, %.preheader204.loopexit ], [ %i.d, %bb.a ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 15 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 16 uses
  %i.aw = sext i32 %i.e to i64                    ; 14 uses
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !10
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !28 ; 2 uses
  tail call void %i.ax(ptr noundef %i.at, ptr noundef %i.ay, ptr noundef %i.ay, i64 noundef 8) #16
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !10
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !28
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.aw ; 2 uses
  tail call void %i.az(ptr noundef %i.ba, ptr noundef %i.bc, ptr noundef %i.bc, i64 noundef 8) #16
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !10
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.bf = load ptr, ptr %i.av, align 8, !tbaa !28
  %.idx235 = shl nsw i64 %i.aw, 4
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 %.idx235 ; 2 uses
  tail call void %i.bd(ptr noundef %i.be, ptr noundef %i.bg, ptr noundef %i.bg, i64 noundef 8) #16
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !10
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.bj = load ptr, ptr %i.av, align 8, !tbaa !28
  %.idx236 = mul nsw i64 %i.aw, 24
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %.idx236 ; 2 uses
  tail call void %i.bh(ptr noundef %i.bi, ptr noundef %i.bk, ptr noundef %i.bk, i64 noundef 8) #16
  %i.bl = load ptr, ptr %i.au, align 8, !tbaa !10
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.bn = load ptr, ptr %i.av, align 8, !tbaa !28
  %.idx237 = shl nsw i64 %i.aw, 5
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %.idx237 ; 2 uses
  tail call void %i.bl(ptr noundef %i.bm, ptr noundef %i.bo, ptr noundef %i.bo, i64 noundef 8) #16
  %i.bp = load ptr, ptr %i.au, align 8, !tbaa !10
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.br = load ptr, ptr %i.av, align 8, !tbaa !28
  %.idx238 = mul nsw i64 %i.aw, 40
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %.idx238 ; 2 uses
  tail call void %i.bp(ptr noundef %i.bq, ptr noundef %i.bs, ptr noundef %i.bs, i64 noundef 8) #16
  %i.bt = load ptr, ptr %i.au, align 8, !tbaa !10
  %i.bu = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.bv = load ptr, ptr %i.av, align 8, !tbaa !28
  %.idx239 = mul nsw i64 %i.aw, 48
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %.idx239 ; 2 uses
  tail call void %i.bt(ptr noundef %i.bu, ptr noundef %i.bw, ptr noundef %i.bw, i64 noundef 8) #16
  %i.bx = load ptr, ptr %i.au, align 8, !tbaa !10
  %i.by = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.bz = load ptr, ptr %i.av, align 8, !tbaa !28
  %.idx240 = mul nsw i64 %i.aw, 56
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 %.idx240 ; 2 uses
  tail call void %i.bx(ptr noundef %i.by, ptr noundef %i.ca, ptr noundef %i.ca, i64 noundef 8) #16
  %i.cb = load ptr, ptr %i.au, align 8, !tbaa !10
  %i.cc = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.cd = load ptr, ptr %i.av, align 8, !tbaa !28
  %.idx241 = shl nsw i64 %i.aw, 6
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 %.idx241 ; 2 uses
  tail call void %i.cb(ptr noundef %i.cc, ptr noundef %i.ce, ptr noundef %i.ce, i64 noundef 8) #16
  %i.cf = load ptr, ptr %i.au, align 8, !tbaa !10
  %i.cg = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.ch = load ptr, ptr %i.av, align 8, !tbaa !28
  %.idx242 = mul nsw i64 %i.aw, 72
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 %.idx242 ; 2 uses
  tail call void %i.cf(ptr noundef %i.cg, ptr noundef %i.ci, ptr noundef %i.ci, i64 noundef 8) #16
  %i.cj = load ptr, ptr %i.au, align 8, !tbaa !10
  %i.ck = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.cl = load ptr, ptr %i.av, align 8, !tbaa !28
  %.idx243 = mul nsw i64 %i.aw, 80
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 %.idx243 ; 2 uses
  tail call void %i.cj(ptr noundef %i.ck, ptr noundef %i.cm, ptr noundef %i.cm, i64 noundef 8) #16
  %i.cn = load ptr, ptr %i.au, align 8, !tbaa !10
  %i.co = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.cp = load ptr, ptr %i.av, align 8, !tbaa !28
  %.idx244 = mul nsw i64 %i.aw, 88
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 %.idx244 ; 2 uses
  tail call void %i.cn(ptr noundef %i.co, ptr noundef %i.cq, ptr noundef %i.cq, i64 noundef 8) #16
  %i.cr = load ptr, ptr %i.au, align 8, !tbaa !10
  %i.cs = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.ct = load ptr, ptr %i.av, align 8, !tbaa !28
  %.idx245 = mul nsw i64 %i.aw, 96
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 %.idx245 ; 2 uses
  tail call void %i.cr(ptr noundef %i.cs, ptr noundef %i.cu, ptr noundef %i.cu, i64 noundef 8) #16
  %i.cv = load ptr, ptr %i.au, align 8, !tbaa !10
  %i.cw = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.cx = load ptr, ptr %i.av, align 8, !tbaa !28
  %.idx246 = mul nsw i64 %i.aw, 104
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 %.idx246 ; 2 uses
  tail call void %i.cv(ptr noundef %i.cw, ptr noundef %i.cy, ptr noundef %i.cy, i64 noundef 8) #16
  %i.cz = load ptr, ptr %i.au, align 8, !tbaa !10
  %i.da = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.db = load ptr, ptr %i.av, align 8, !tbaa !28
  %.idx247 = mul nsw i64 %i.aw, 112
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %.idx247 ; 2 uses
  tail call void %i.cz(ptr noundef %i.da, ptr noundef %i.dc, ptr noundef %i.dc, i64 noundef 8) #16
  %i.dd = icmp sgt i32 %i.i, 0
  br i1 %i.dd, label %.lr.ph, label %._crit_edge

fft15.exit:                                       ; preds = %bb.e
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv218
  %i.df = load i32, ptr %i.de, align 4, !tbaa !12
  %i.dg = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_int32, i64 32), align 16, !tbaa !12
  %i.dh = sext i32 %i.dg to i64                   ; 5 uses
  %i.di = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_int32, i64 36), align 4, !tbaa !12
  %i.dj = sext i32 %i.di to i64                   ; 5 uses
  %i.dk = load i32, ptr getelementptr inbounds nuw (i8, ptr @ff_tx_tab_53_int32, i64 40), align 8, !tbaa !12
  %i.dl = sext i32 %i.dk to i64                   ; 10 uses
  %.sroa.08.0.copyload.i.i = load i32, ptr %4, align 16, !tbaa !12 ; 3 uses
  %.sroa.6.0.copyload.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !tbaa !12 ; 3 uses
  %i.dm = load i32, ptr %i.w, align 4, !tbaa !26  ; 2 uses
  %i.dn = load i32, ptr %i.y, align 4, !tbaa !26  ; 2 uses
  %i.do = sub i32 %i.dm, %i.dn
  %i.dp = add i32 %i.dn, %i.dm                    ; 2 uses
  %i.dq = load i32, ptr %i.v, align 8, !tbaa !25  ; 2 uses
  %i.dr = load i32, ptr %i.x, align 16, !tbaa !25 ; 2 uses
  %i.ds = sub i32 %i.dq, %i.dr
  %i.dt = add i32 %i.dr, %i.dq                    ; 2 uses
  %i.du = sext i32 %i.dt to i64
  %i.dv = add i32 %i.dt, %.sroa.08.0.copyload.i.i ; 3 uses
  %i.dw = sext i32 %i.dp to i64
  %i.dx = add i32 %i.dp, %.sroa.6.0.copyload.i.i  ; 3 uses
  %i.dy = sext i32 %i.do to i64
  %i.dz = mul nsw i64 %i.dh, %i.dy                ; 2 uses
  %i.ea = sext i32 %i.ds to i64
  %i.eb = mul nsw i64 %i.dj, %i.ea                ; 2 uses
  %i.ec = mul nsw i64 %i.dl, %i.du                ; 2 uses
  %i.ed = mul nsw i64 %i.dl, %i.dw                ; 2 uses
  %i.ee = add nsw i64 %i.dz, 1073741824
  %i.ef = add i64 %i.ee, %i.ec
  %i.eg = lshr i64 %i.ef, 31
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = sub i32 %.sroa.08.0.copyload.i.i, %i.eh ; 3 uses
  %reass.sub211 = sub nsw i64 %i.ed, %i.eb
end_hunk_5
