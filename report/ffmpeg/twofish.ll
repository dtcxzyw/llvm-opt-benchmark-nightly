Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/twofish?download=true
inline.NumInlined: 43
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@tf_h:bb.a
  %i.al = xor i8 %i.q, %i.d
  %i.am = xor i8 %i.al, %i.y
  %i.an = xor i8 %i.am, %i.ad
  %.sroa.6.0.insert.ext = zext i8 %i.an to i32
  %.sroa.6.0.insert.shift = shl nuw i32 %.sroa.6.0.insert.ext, 24
  %.sroa.5.0.insert.ext = zext i8 %i.ak to i32
  %.sroa.5.0.insert.shift = shl nuw nsw i32 %.sroa.5.0.insert.ext, 16
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.shift, %.sroa.6.0.insert.shift
  %.sroa.4.0.insert.ext = zext i8 %i.ab to i32
  %.sroa.4.0.insert.shift = shl nuw nsw i32 %.sroa.4.0.insert.ext, 8
  %.sroa.4.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %.sroa.4.0.insert.shift
  %.sroa.0.0.insert.ext = zext i8 %i.t to i32
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.insert, %.sroa.0.0.insert.ext
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @av_twofish_crypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #6 {
bb.a:
  %i.a = add nsw i32 %3, -1                       ; 3 uses
  %.not34 = icmp eq i32 %3, 0
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not28 = icmp eq i32 %5, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1204 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2228 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3252 ; 4 uses
  %.not.i = icmp eq ptr %4, null                  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 12
  br i1 %.not28, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not.i, label %.lr.ph.split.us.split.us, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.lr.ph.split.us
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 3
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 5
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 7
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 9
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 11
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 13
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 15
  br label %.preheader.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %.lr.ph.split.us.split.us
  %i.y = phi i32 [ %i.ab, %.lr.ph.split.us.split.us ], [ %i.a, %.lr.ph.split.us ] ; 2 uses
  %.02437.us.us = phi ptr [ %i.aa, %.lr.ph.split.us.split.us ], [ %1, %.lr.ph.split.us ] ; 2 uses
  %.02535.us.us = phi ptr [ %i.z, %.lr.ph.split.us.split.us ], [ %2, %.lr.ph.split.us ] ; 2 uses
  tail call fastcc void @twofish_encrypt(ptr noundef %0, ptr noundef %.02437.us.us, ptr noundef %.02535.us.us)
  %i.z = getelementptr inbounds nuw i8, ptr %.02535.us.us, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %.02437.us.us, i64 16
  %i.ab = add nsw i32 %i.y, -1
  %.not.us.us = icmp eq i32 %i.y, 0
  br i1 %.not.us.us, label %._crit_edge, label %.lr.ph.split.us.split.us, !llvm.loop !18

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.preheader.us
  %i.ac = phi i32 [ %i.df, %.preheader.us ], [ %i.a, %.preheader.us.preheader ] ; 2 uses
  %.02437.us = phi ptr [ %i.de, %.preheader.us ], [ %1, %.preheader.us.preheader ] ; 20 uses
  %.02535.us = phi ptr [ %i.dd, %.preheader.us ], [ %2, %.preheader.us.preheader ] ; 17 uses
  %i.ad = load i8, ptr %.02535.us, align 1, !tbaa !11
  %i.ae = load i8, ptr %4, align 1, !tbaa !11
  %i.af = xor i8 %i.ae, %i.ad
  store i8 %i.af, ptr %.02437.us, align 1, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %.02535.us, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !11
  %i.ai = load i8, ptr %i.m, align 1, !tbaa !11
  %i.aj = xor i8 %i.ai, %i.ah
  %i.ak = getelementptr inbounds nuw i8, ptr %.02437.us, i64 1
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %.02535.us, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !11
  %i.an = load i8, ptr %i.n, align 1, !tbaa !11
  %i.ao = xor i8 %i.an, %i.am
  %i.ap = getelementptr inbounds nuw i8, ptr %.02437.us, i64 2
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %.02535.us, i64 3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !11
  %i.as = load i8, ptr %i.o, align 1, !tbaa !11
  %i.at = xor i8 %i.as, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %.02437.us, i64 3
  store i8 %i.at, ptr %i.au, align 1, !tbaa !11
  %i.av = getelementptr inbounds nuw i8, ptr %.02535.us, i64 4
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !11
  %i.ax = load i8, ptr %i.j, align 1, !tbaa !11
  %i.ay = xor i8 %i.ax, %i.aw
  %i.az = getelementptr inbounds nuw i8, ptr %.02437.us, i64 4
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %.02535.us, i64 5
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !11
  %i.bc = load i8, ptr %i.p, align 1, !tbaa !11
  %i.bd = xor i8 %i.bc, %i.bb
  %i.be = getelementptr inbounds nuw i8, ptr %.02437.us, i64 5
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !11
  %i.bf = getelementptr inbounds nuw i8, ptr %.02535.us, i64 6
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !11
  %i.bh = load i8, ptr %i.q, align 1, !tbaa !11
  %i.bi = xor i8 %i.bh, %i.bg
  %i.bj = getelementptr inbounds nuw i8, ptr %.02437.us, i64 6
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !11
  %i.bk = getelementptr inbounds nuw i8, ptr %.02535.us, i64 7
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !11
  %i.bm = load i8, ptr %i.r, align 1, !tbaa !11
  %i.bn = xor i8 %i.bm, %i.bl
  %i.bo = getelementptr inbounds nuw i8, ptr %.02437.us, i64 7
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !11
  %i.bp = getelementptr inbounds nuw i8, ptr %.02535.us, i64 8
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !11
  %i.br = load i8, ptr %i.k, align 1, !tbaa !11
  %i.bs = xor i8 %i.br, %i.bq
  %i.bt = getelementptr inbounds nuw i8, ptr %.02437.us, i64 8
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !11
  %i.bu = getelementptr inbounds nuw i8, ptr %.02535.us, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !11
  %i.bw = load i8, ptr %i.s, align 1, !tbaa !11
  %i.bx = xor i8 %i.bw, %i.bv
  %i.by = getelementptr inbounds nuw i8, ptr %.02437.us, i64 9
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %.02535.us, i64 10
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !11
  %i.cb = load i8, ptr %i.t, align 1, !tbaa !11
  %i.cc = xor i8 %i.cb, %i.ca
  %i.cd = getelementptr inbounds nuw i8, ptr %.02437.us, i64 10
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !11
  %i.ce = getelementptr inbounds nuw i8, ptr %.02535.us, i64 11
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !11
  %i.cg = load i8, ptr %i.u, align 1, !tbaa !11
  %i.ch = xor i8 %i.cg, %i.cf
  %i.ci = getelementptr inbounds nuw i8, ptr %.02437.us, i64 11
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !11
  %i.cj = getelementptr inbounds nuw i8, ptr %.02535.us, i64 12
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !11
  %i.cl = load i8, ptr %i.l, align 1, !tbaa !11
  %i.cm = xor i8 %i.cl, %i.ck
  %i.cn = getelementptr inbounds nuw i8, ptr %.02437.us, i64 12
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !11
  %i.co = getelementptr inbounds nuw i8, ptr %.02535.us, i64 13
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !11
  %i.cq = load i8, ptr %i.v, align 1, !tbaa !11
  %i.cr = xor i8 %i.cq, %i.cp
  %i.cs = getelementptr inbounds nuw i8, ptr %.02437.us, i64 13
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !11
  %i.ct = getelementptr inbounds nuw i8, ptr %.02535.us, i64 14
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !11
  %i.cv = load i8, ptr %i.w, align 1, !tbaa !11
  %i.cw = xor i8 %i.cv, %i.cu
  %i.cx = getelementptr inbounds nuw i8, ptr %.02437.us, i64 14
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !11
  %i.cy = getelementptr inbounds nuw i8, ptr %.02535.us, i64 15
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !11
  %i.da = load i8, ptr %i.x, align 1, !tbaa !11
  %i.db = xor i8 %i.da, %i.cz
  %i.dc = getelementptr inbounds nuw i8, ptr %.02437.us, i64 15
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !11
  tail call fastcc void @twofish_encrypt(ptr noundef %0, ptr noundef nonnull %.02437.us, ptr noundef nonnull %.02437.us)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(16) %.02437.us, i64 16, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %.02535.us, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %.02437.us, i64 16
  %i.df = add nsw i32 %i.ac, -1
  %.not.us = icmp eq i32 %i.ac, 0
  br i1 %.not.us, label %._crit_edge, label %.preheader.us, !llvm.loop !18

.lr.ph.split:                                     ; preds = %.lr.ph, %twofish_decrypt.exit
  %i.dg = phi i32 [ %i.iq, %twofish_decrypt.exit ], [ %i.a, %.lr.ph ] ; 2 uses
  %.02437 = phi ptr [ %i.ip, %twofish_decrypt.exit ], [ %1, %.lr.ph ] ; 2 uses
  %.02535 = phi ptr [ %i.io, %twofish_decrypt.exit ], [ %2, %.lr.ph ] ; 6 uses
  %i.dh = load i32, ptr %.02535, align 1, !tbaa !11
  %i.di = load i32, ptr %i.b, align 4, !tbaa !12
  %i.dj = xor i32 %i.di, %i.dh
  %i.dk = getelementptr inbounds nuw i8, ptr %.02535, i64 4
  %i.dl = load i32, ptr %i.dk, align 1, !tbaa !11
  %i.dm = load i32, ptr %i.c, align 4, !tbaa !12
  %i.dn = xor i32 %i.dm, %i.dl
  %i.do = getelementptr inbounds nuw i8, ptr %.02535, i64 8
  %i.dp = load i32, ptr %i.do, align 1, !tbaa !11
  %i.dq = load i32, ptr %i.d, align 4, !tbaa !12
  %i.dr = xor i32 %i.dq, %i.dp
  %i.ds = getelementptr inbounds nuw i8, ptr %.02535, i64 12
  %i.dt = load i32, ptr %i.ds, align 1, !tbaa !11
  %i.du = load i32, ptr %i.e, align 4, !tbaa !12
  %i.dv = xor i32 %i.du, %i.dt
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.split
  %indvars.iv.i = phi i64 [ 15, %.lr.ph.split ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %.sroa.0.078.i = phi i32 [ %i.dr, %.lr.ph.split ], [ %i.fs, %bb.b ] ; 2 uses
  %.sroa.12.077.i = phi i32 [ %i.dv, %.lr.ph.split ], [ %i.fz, %bb.b ]
  %.sroa.23.076.i = phi i32 [ %i.dj, %.lr.ph.split ], [ %i.hw, %bb.b ] ; 6 uses
  %.sroa.33.075.i = phi i32 [ %i.dn, %.lr.ph.split ], [ %i.id, %bb.b ] ; 3 uses
  %i.dw = and i32 %.sroa.23.076.i, 255
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !12
  %i.ea = lshr i32 %.sroa.23.076.i, 8
  %i.eb = and i32 %i.ea, 255
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !12
  %i.ef = xor i32 %i.ee, %i.dz
  %i.eg = lshr i32 %.sroa.23.076.i, 16
  %i.eh = and i32 %i.eg, 255
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !12
  %i.el = xor i32 %i.ef, %i.ek
  %i.em = lshr i32 %.sroa.23.076.i, 24
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !12
  %i.eq = xor i32 %i.el, %i.ep                    ; 2 uses
  %i.er = tail call i32 @llvm.fshl.i32(i32 %.sroa.33.075.i, i32 %.sroa.33.075.i, i32 8) ; 4 uses
  %i.es = and i32 %i.er, 255
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !12
  %i.ew = lshr i32 %i.er, 8
  %i.ex = and i32 %i.ew, 255
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !12
  %i.fb = xor i32 %i.fa, %i.ev
  %i.fc = lshr i32 %i.er, 16
  %i.fd = and i32 %i.fc, 255
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !12
  %i.fh = xor i32 %i.fb, %i.fg
  %i.fi = lshr i32 %i.er, 24
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !12
  %i.fm = xor i32 %i.fh, %i.fl                    ; 2 uses
  %i.fn = tail call i32 @llvm.fshl.i32(i32 %.sroa.0.078.i, i32 %.sroa.0.078.i, i32 1)
  %i.fo = add i32 %i.fm, %i.eq
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !12
  %i.fr = add i32 %i.fo, %i.fq
  %i.fs = xor i32 %i.fr, %i.fn                    ; 6 uses
  %i.ft = shl i32 %i.fm, 1
  %i.fu = add i32 %i.ft, %i.eq
  %i.fv = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !12
  %i.fx = add i32 %i.fu, %i.fw
  %i.fy = xor i32 %i.fx, %.sroa.12.077.i          ; 4 uses
  %i.fz = tail call i32 @llvm.fshl.i32(i32 %i.fy, i32 %i.fy, i32 31) ; 2 uses
  %i.ga = and i32 %i.fs, 255
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !12
  %i.ge = lshr i32 %i.fs, 8
  %i.gf = and i32 %i.ge, 255
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !12
  %i.gj = xor i32 %i.gi, %i.gd
  %i.gk = lshr i32 %i.fs, 16
  %i.gl = and i32 %i.gk, 255
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !12
  %i.gp = xor i32 %i.gj, %i.go
  %i.gq = lshr i32 %i.fs, 24
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.gr
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !12
  %i.gu = xor i32 %i.gp, %i.gt                    ; 2 uses
  %i.gv = tail call i32 @llvm.fshl.i32(i32 %i.fy, i32 %i.fy, i32 7) ; 4 uses
  %i.gw = and i32 %i.gv, 255
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !12
  %i.ha = lshr i32 %i.gv, 8
  %i.hb = and i32 %i.ha, 255
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.hc
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !12
  %i.hf = xor i32 %i.he, %i.gz
  %i.hg = lshr i32 %i.gv, 16
  %i.hh = and i32 %i.hg, 255
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.hi
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !12
  %i.hl = xor i32 %i.hf, %i.hk
  %i.hm = lshr i32 %i.gv, 24
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.hn
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !12
  %i.hq = xor i32 %i.hl, %i.hp                    ; 2 uses
  %i.hr = tail call i32 @llvm.fshl.i32(i32 %.sroa.23.076.i, i32 %.sroa.23.076.i, i32 1)
  %i.hs = add i32 %i.hq, %i.gu
  %i.ht = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !12
  %i.hv = add i32 %i.hs, %i.hu
  %i.hw = xor i32 %i.hv, %i.hr                    ; 2 uses
  %i.hx = shl i32 %i.hq, 1
  %i.hy = add i32 %i.hx, %i.gu
  %i.hz = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !12
  %i.ib = add i32 %i.hy, %i.ia
  %i.ic = xor i32 %i.ib, %.sroa.33.075.i          ; 2 uses
  %i.id = tail call i32 @llvm.fshl.i32(i32 %i.ic, i32 %i.ic, i32 31) ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -2
  %i.ie = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ie, label %bb.b, label %bb.c, !llvm.loop !19

bb.c:                                             ; preds = %bb.b
  %i.if = load <4 x i32>, ptr %0, align 4, !tbaa !12
  %i.ig = insertelement <4 x i32> poison, i32 %i.fs, i64 0
  %i.ih = insertelement <4 x i32> %i.ig, i32 %i.fz, i64 1
  %i.ii = insertelement <4 x i32> %i.ih, i32 %i.hw, i64 2
  %i.ij = insertelement <4 x i32> %i.ii, i32 %i.id, i64 3
  %i.ik = xor <4 x i32> %i.if, %i.ij              ; 2 uses
  br i1 %.not.i, label %twofish_decrypt.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.il = load <4 x i32>, ptr %4, align 1, !tbaa !11
  %i.im = xor <4 x i32> %i.il, %i.ik
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull readonly align 1 dereferenceable(16) %.02535, i64 16, i1 false)
  br label %twofish_decrypt.exit

twofish_decrypt.exit:                             ; preds = %bb.c, %bb.d
  %i.in = phi <4 x i32> [ %i.im, %bb.d ], [ %i.ik, %bb.c ]
  store <4 x i32> %i.in, ptr %.02437, align 1, !tbaa !11
  %i.io = getelementptr inbounds nuw i8, ptr %.02535, i64 16
  %i.ip = getelementptr inbounds nuw i8, ptr %.02437, i64 16
  %i.iq = add nsw i32 %i.dg, -1
  %.not = icmp eq i32 %i.dg, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !18

._crit_edge:                                      ; preds = %twofish_decrypt.exit, %.preheader.us, %.lr.ph.split.us.split.us, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @twofish_encrypt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %2, align 1, !tbaa !11
  %i.b = load i32, ptr %0, align 4, !tbaa !12
  %i.c = xor i32 %i.b, %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 1, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12
  %i.h = xor i32 %i.g, %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i32, ptr %i.i, align 1, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !12
  %i.m = xor i32 %i.l, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.o = load i32, ptr %i.n, align 1, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !12
  %i.r = xor i32 %i.q, %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1204 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2228 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3252 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.sroa.0.066 = phi i32 [ %i.c, %bb.a ], [ %i.dx, %bb.b ] ; 5 uses
  %.sroa.10.065 = phi i32 [ %i.h, %bb.a ], [ %i.ee, %bb.b ] ; 4 uses
  %.sroa.19.064 = phi i32 [ %i.m, %bb.a ], [ %i.bt, %bb.b ]
  %.sroa.27.063 = phi i32 [ %i.r, %bb.a ], [ %i.ca, %bb.b ] ; 2 uses
  %i.w = and i32 %.sroa.0.066, 255
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !12
  %i.aa = lshr i32 %.sroa.0.066, 8
  %i.ab = and i32 %i.aa, 255
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !12
  %i.af = xor i32 %i.ae, %i.z
  %i.ag = lshr i32 %.sroa.0.066, 16
  %i.ah = and i32 %i.ag, 255
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !12
  %i.al = xor i32 %i.af, %i.ak
  %i.am = lshr i32 %.sroa.0.066, 24
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !12
  %i.aq = xor i32 %i.al, %i.ap                    ; 2 uses
  %i.ar = tail call i32 @llvm.fshl.i32(i32 %.sroa.10.065, i32 %.sroa.10.065, i32 8) ; 4 uses
  %i.as = and i32 %i.ar, 255
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !12
  %i.aw = lshr i32 %i.ar, 8
  %i.ax = and i32 %i.aw, 255
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !12
  %i.bb = xor i32 %i.ba, %i.av
  %i.bc = lshr i32 %i.ar, 16
  %i.bd = and i32 %i.bc, 255
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !12
  %i.bh = xor i32 %i.bb, %i.bg
  %i.bi = lshr i32 %i.ar, 24
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !12
  %i.bm = xor i32 %i.bh, %i.bl                    ; 2 uses
  %i.bn = add i32 %i.bm, %i.aq
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !12
  %i.br = add i32 %i.bn, %i.bq
  %i.bs = xor i32 %i.br, %.sroa.19.064            ; 2 uses
  %i.bt = tail call i32 @llvm.fshl.i32(i32 %i.bs, i32 %i.bs, i32 31) ; 6 uses
  %i.bu = tail call i32 @llvm.fshl.i32(i32 %.sroa.27.063, i32 %.sroa.27.063, i32 1)
  %i.bv = shl i32 %i.bm, 1
  %i.bw = add i32 %i.bv, %i.aq
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 36
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !12
  %i.bz = add i32 %i.bw, %i.by
  %i.ca = xor i32 %i.bz, %i.bu                    ; 4 uses
  %i.cb = and i32 %i.bt, 255
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !12
  %i.cf = lshr i32 %i.bt, 8
  %i.cg = and i32 %i.cf, 255
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !12
  %i.ck = xor i32 %i.cj, %i.ce
  %i.cl = lshr i32 %i.bt, 16
  %i.cm = and i32 %i.cl, 255
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !12
  %i.cq = xor i32 %i.ck, %i.cp
  %i.cr = lshr i32 %i.bt, 24
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.cs
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !12
  %i.cv = xor i32 %i.cq, %i.cu                    ; 2 uses
  %i.cw = tail call i32 @llvm.fshl.i32(i32 %i.ca, i32 %i.ca, i32 8) ; 4 uses
  %i.cx = and i32 %i.cw, 255
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !12
  %i.db = lshr i32 %i.cw, 8
  %i.dc = and i32 %i.db, 255
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !12
  %i.dg = xor i32 %i.df, %i.da
  %i.dh = lshr i32 %i.cw, 16
  %i.di = and i32 %i.dh, 255
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !12
  %i.dm = xor i32 %i.dg, %i.dl
  %i.dn = lshr i32 %i.cw, 24
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !12
  %i.dr = xor i32 %i.dm, %i.dq                    ; 2 uses
  %i.ds = add i32 %i.dr, %i.cv
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !12
  %i.dv = add i32 %i.ds, %i.du
  %i.dw = xor i32 %i.dv, %.sroa.0.066             ; 2 uses
  %i.dx = tail call i32 @llvm.fshl.i32(i32 %i.dw, i32 %i.dw, i32 31) ; 2 uses
  %i.dy = tail call i32 @llvm.fshl.i32(i32 %.sroa.10.065, i32 %.sroa.10.065, i32 1)
  %i.dz = shl i32 %i.dr, 1
  %i.ea = add i32 %i.dz, %i.cv
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bo, i64 44
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !12
  %i.ed = add i32 %i.ea, %i.ec
  %i.ee = xor i32 %i.ed, %i.dy                    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %i.ef = icmp samesign ult i64 %indvars.iv, 14
  br i1 %i.ef, label %bb.b, label %bb.c, !llvm.loop !20

bb.c:                                             ; preds = %bb.b
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eh = load <4 x i32>, ptr %i.eg, align 4, !tbaa !12
  %i.ei = insertelement <4 x i32> poison, i32 %i.bt, i64 0
  %i.ej = insertelement <4 x i32> %i.ei, i32 %i.ca, i64 1
  %i.ek = insertelement <4 x i32> %i.ej, i32 %i.dx, i64 2
  %i.el = insertelement <4 x i32> %i.ek, i32 %i.ee, i64 3
  %i.em = xor <4 x i32> %i.eh, %i.el
  store <4 x i32> %i.em, ptr %1, align 1, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @tf_h0(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %2, 4
  br i1 %i.a, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
end_hunk_0
