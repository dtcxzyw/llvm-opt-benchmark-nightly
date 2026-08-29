Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/Hacl_Hash_SHA3?download=true
inline.NumInlined: 790
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_Py_LibHacl_Hacl_Hash_SHA3_shake128_squeeze_nblocks:bb.a
  %i.cm = xor i64 %i.cj, %i.ap                    ; 2 uses
  %i.cn = xor i64 %i.cj, %i.ao                    ; 2 uses
  %i.co = xor i64 %i.cj, %i.an                    ; 3 uses
  store i64 %i.co, ptr %i.o, align 8, !tbaa !15
  %i.cp = tail call i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 1)
  %i.cq = xor i64 %i.cp, %i.bl                    ; 5 uses
  %i.cr = xor i64 %i.cq, %i.ac                    ; 2 uses
  %i.cs = xor i64 %i.cq, %i.am                    ; 2 uses
  %i.ct = xor i64 %i.cq, %i.al                    ; 2 uses
  %i.cu = xor i64 %i.cq, %i.ak                    ; 2 uses
  %i.cv = xor i64 %i.cq, %i.aj                    ; 2 uses
  %i.cw = tail call i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 1)
  %i.cx = xor i64 %i.bp, %i.cw                    ; 5 uses
  %i.cy = xor i64 %i.cx, %i.ab                    ; 2 uses
  %i.cz = xor i64 %i.cx, %i.ai                    ; 2 uses
  %i.da = xor i64 %i.cx, %i.ah                    ; 2 uses
  %i.db = xor i64 %i.cx, %i.ag                    ; 2 uses
  %i.dc = xor i64 %i.af, %i.cx                    ; 2 uses
  %i.dd = tail call i64 @llvm.fshl.i64(i64 %i.cd, i64 %i.cd, i64 1) ; 4 uses
  store i64 %i.dd, ptr %i.c, align 8, !tbaa !15
  %i.de = tail call i64 @llvm.fshl.i64(i64 %i.by, i64 %i.by, i64 3) ; 4 uses
  store i64 %i.de, ptr %i.l, align 8, !tbaa !15
  %i.df = tail call i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 6) ; 4 uses
  store i64 %i.df, ptr %i.h, align 8, !tbaa !15
  %i.dg = tail call i64 @llvm.fshl.i64(i64 %i.cf, i64 %i.cf, i64 10) ; 4 uses
  store i64 %i.dg, ptr %i.n, align 8, !tbaa !15
  %i.dh = tail call i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cn, i64 15) ; 4 uses
  store i64 %i.dh, ptr %i.s, align 8, !tbaa !15
  %i.di = tail call i64 @llvm.fshl.i64(i64 %i.cu, i64 %i.cu, i64 21) ; 3 uses
  %i.dj = tail call i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 28) ; 3 uses
  %i.dk = tail call i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 36) ; 4 uses
  store i64 %i.dk, ptr %i.i, align 8, !tbaa !15
  %i.dl = tail call i64 @llvm.fshl.i64(i64 %i.cg, i64 %i.cg, i64 45) ; 3 uses
  %i.dm = tail call i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cs, i64 55) ; 4 uses
  store i64 %i.dm, ptr %i.j, align 8, !tbaa !15
  %i.dn = tail call i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 2) ; 4 uses
  store i64 %i.dn, ptr %i.y, align 8, !tbaa !15
  %i.do = tail call i64 @llvm.fshl.i64(i64 %i.dc, i64 %i.dc, i64 14) ; 3 uses
  %i.dp = tail call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.cy, i64 27) ; 4 uses
  store i64 %i.dp, ptr %i.d, align 8, !tbaa !15
  %i.dq = tail call i64 @llvm.fshl.i64(i64 %i.bz, i64 %i.bz, i64 41) ; 4 uses
  store i64 %i.dq, ptr %i.t, align 8, !tbaa !15
  %i.dr = tail call i64 @llvm.fshl.i64(i64 %i.cv, i64 %i.cv, i64 56) ; 4 uses
  store i64 %i.dr, ptr %i.x, align 8, !tbaa !15
  %i.ds = tail call i64 @llvm.fshl.i64(i64 %i.db, i64 %i.db, i64 8) ; 3 uses
  %i.dt = tail call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 25) ; 3 uses
  %i.du = tail call i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 43) ; 3 uses
  %i.dv = tail call i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 62) ; 4 uses
  store i64 %i.dv, ptr %i.e, align 8, !tbaa !15
  %i.dw = tail call i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 18) ; 3 uses
  %i.dx = tail call i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 39) ; 4 uses
  store i64 %i.dx, ptr %i.o, align 8, !tbaa !15
  %i.dy = tail call i64 @llvm.fshl.i64(i64 %i.co, i64 %i.co, i64 61) ; 3 uses
  %i.dz = tail call i64 @llvm.fshl.i64(i64 %i.cz, i64 %i.cz, i64 20) ; 3 uses
  %i.ea = tail call i64 @llvm.fshl.i64(i64 %i.ce, i64 %i.ce, i64 44) ; 3 uses
  %i.eb = xor i64 %i.ea, -1
  %i.ec = and i64 %i.du, %i.eb
  %i.ed = xor i64 %i.ec, %i.bw                    ; 2 uses
  %i.ee = xor i64 %i.du, -1
  %i.ef = and i64 %i.di, %i.ee
  %i.eg = xor i64 %i.ef, %i.ea                    ; 2 uses
  %i.eh = xor i64 %i.di, -1
  %i.ei = and i64 %i.do, %i.eh
  %i.ej = xor i64 %i.ei, %i.du                    ; 2 uses
  %i.ek = xor i64 %i.do, -1
  %i.el = and i64 %i.bw, %i.ek
  %i.em = xor i64 %i.el, %i.di                    ; 2 uses
  %i.en = xor i64 %i.bw, -1
  %i.eo = and i64 %i.ea, %i.en
  %i.ep = xor i64 %i.do, %i.eo                    ; 2 uses
  store i64 %i.ed, ptr %0, align 8, !tbaa !15
  store i64 %i.eg, ptr %i.f, align 8, !tbaa !15
  store i64 %i.ej, ptr %i.k, align 8, !tbaa !15
  store i64 %i.em, ptr %i.p, align 8, !tbaa !15
  store i64 %i.ep, ptr %i.u, align 8, !tbaa !15
  %i.eq = xor i64 %i.dz, -1
  %i.er = and i64 %i.de, %i.eq
  %i.es = xor i64 %i.er, %i.dj                    ; 2 uses
  %i.et = xor i64 %i.de, -1
  %i.eu = and i64 %i.dl, %i.et
  %i.ev = xor i64 %i.eu, %i.dz                    ; 2 uses
  %i.ew = xor i64 %i.dl, -1
  %i.ex = and i64 %i.dy, %i.ew
  %i.ey = xor i64 %i.ex, %i.de                    ; 2 uses
  %i.ez = xor i64 %i.dy, -1
  %i.fa = and i64 %i.dj, %i.ez
  %i.fb = xor i64 %i.fa, %i.dl                    ; 2 uses
  %i.fc = xor i64 %i.dj, -1
  %i.fd = and i64 %i.dz, %i.fc
  %i.fe = xor i64 %i.dy, %i.fd                    ; 2 uses
  store i64 %i.es, ptr %i.b, align 8, !tbaa !15
  store i64 %i.ev, ptr %i.g, align 8, !tbaa !15
  store i64 %i.ey, ptr %i.l, align 8, !tbaa !15
  store i64 %i.fb, ptr %i.q, align 8, !tbaa !15
  store i64 %i.fe, ptr %i.v, align 8, !tbaa !15
  %i.ff = xor i64 %i.df, -1
  %i.fg = and i64 %i.dt, %i.ff
  %i.fh = xor i64 %i.fg, %i.dd                    ; 2 uses
  %i.fi = xor i64 %i.dt, -1
  %i.fj = and i64 %i.ds, %i.fi
  %i.fk = xor i64 %i.fj, %i.df                    ; 2 uses
  %i.fl = xor i64 %i.ds, -1
  %i.fm = and i64 %i.dw, %i.fl
  %i.fn = xor i64 %i.fm, %i.dt                    ; 2 uses
  %i.fo = xor i64 %i.dw, -1
  %i.fp = and i64 %i.dd, %i.fo
  %i.fq = xor i64 %i.fp, %i.ds                    ; 2 uses
  %i.fr = xor i64 %i.dd, -1
  %i.fs = and i64 %i.df, %i.fr
  %i.ft = xor i64 %i.dw, %i.fs                    ; 2 uses
  store i64 %i.fh, ptr %i.c, align 8, !tbaa !15
  store i64 %i.fk, ptr %i.h, align 8, !tbaa !15
  store i64 %i.fn, ptr %i.m, align 8, !tbaa !15
  store i64 %i.fq, ptr %i.r, align 8, !tbaa !15
  store i64 %i.ft, ptr %i.w, align 8, !tbaa !15
  %i.fu = xor i64 %i.dk, -1
  %i.fv = and i64 %i.dg, %i.fu
  %i.fw = xor i64 %i.fv, %i.dp                    ; 2 uses
  %i.fx = xor i64 %i.dg, -1
  %i.fy = and i64 %i.dh, %i.fx
  %i.fz = xor i64 %i.fy, %i.dk                    ; 2 uses
  %i.ga = xor i64 %i.dh, -1
  %i.gb = and i64 %i.dr, %i.ga
  %i.gc = xor i64 %i.gb, %i.dg                    ; 2 uses
  %i.gd = xor i64 %i.dr, -1
  %i.ge = and i64 %i.dp, %i.gd
  %i.gf = xor i64 %i.ge, %i.dh                    ; 2 uses
  %i.gg = xor i64 %i.dp, -1
  %i.gh = and i64 %i.dk, %i.gg
  %i.gi = xor i64 %i.dr, %i.gh                    ; 2 uses
  store i64 %i.fw, ptr %i.d, align 8, !tbaa !15
  store i64 %i.fz, ptr %i.i, align 8, !tbaa !15
  store i64 %i.gc, ptr %i.n, align 8, !tbaa !15
  store i64 %i.gf, ptr %i.s, align 8, !tbaa !15
  store i64 %i.gi, ptr %i.x, align 8, !tbaa !15
  %i.gj = xor i64 %i.dm, -1
  %i.gk = and i64 %i.dx, %i.gj
  %i.gl = xor i64 %i.gk, %i.dv                    ; 2 uses
  %i.gm = xor i64 %i.dx, -1
  %i.gn = and i64 %i.dq, %i.gm
  %i.go = xor i64 %i.gn, %i.dm                    ; 2 uses
  %i.gp = xor i64 %i.dq, -1
  %i.gq = and i64 %i.dn, %i.gp
  %i.gr = xor i64 %i.gq, %i.dx                    ; 2 uses
  %i.gs = xor i64 %i.dn, -1
  %i.gt = and i64 %i.dv, %i.gs
  %i.gu = xor i64 %i.gt, %i.dq                    ; 2 uses
  %i.gv = xor i64 %i.dv, -1
  %i.gw = and i64 %i.dm, %i.gv
  %i.gx = xor i64 %i.dn, %i.gw                    ; 2 uses
  store i64 %i.gl, ptr %i.e, align 8, !tbaa !15
  store i64 %i.go, ptr %i.j, align 8, !tbaa !15
  store i64 %i.gr, ptr %i.o, align 8, !tbaa !15
  store i64 %i.gu, ptr %i.t, align 8, !tbaa !15
  store i64 %i.gx, ptr %i.y, align 8, !tbaa !15
  %i.gy = getelementptr [8 x i8], ptr @_Py_LibHacl_Hacl_Hash_SHA3_keccak_rndc, i64 %indvars.iv
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !15
  %i.ha = xor i64 %i.gz, %i.ed                    ; 2 uses
  store i64 %i.ha, ptr %0, align 8, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 24
  br i1 %exitcond.not, label %bb.c, label %bb.d, !llvm.loop !38
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @squeeze(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 72, 169) %1, i32 noundef range(i32 1, 0) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %i.b = alloca [32 x i64], align 16              ; 5 uses
  %i.c = alloca [32 x i64], align 16              ; 3 uses
  %.not = icmp ugt i32 %1, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = udiv i32 %2, %1
  %i.e = zext nneg i32 %1 to i64
  %i.f = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 80         ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 120        ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 160        ; 4 uses
  %i.j = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %i.l = getelementptr i8, ptr %0, i64 88         ; 3 uses
  %i.m = getelementptr i8, ptr %0, i64 128        ; 3 uses
  %i.n = getelementptr i8, ptr %0, i64 168        ; 3 uses
  %i.o = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.p = getelementptr i8, ptr %0, i64 56         ; 3 uses
  %i.q = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 136        ; 3 uses
  %i.s = getelementptr i8, ptr %0, i64 176        ; 4 uses
  %i.t = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %i.w = getelementptr i8, ptr %0, i64 144        ; 3 uses
  %i.x = getelementptr i8, ptr %0, i64 184        ; 3 uses
  %i.y = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 152       ; 3 uses
  %i.ac = getelementptr i8, ptr %0, i64 192       ; 3 uses
  %wide.trip.count = zext nneg i32 %i.d to i64
  %.200..sroa_idx628 = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  br label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.200..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.200..sroa_idx, i8 0, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.c, ptr noundef nonnull align 8 dereferenceable(200) %0, i64 200, i1 false)
  %i.ad = urem i32 %2, %1
  %i.ae = zext i32 %2 to i64
  %i.af = getelementptr i8, ptr %3, i64 %i.ae
  %i.ag = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr i8, ptr %i.af, i64 %i.ah
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr nonnull align 16 %i.c, i64 %i.ag, i1 false)
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv583 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next584, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.200..sroa_idx628, i8 0, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.b, ptr noundef nonnull align 8 dereferenceable(200) %0, i64 200, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, ptr noundef nonnull align 16 dereferenceable(256) %i.b, i64 256, i1 false)
  %i.aj = trunc nuw nsw i64 %indvars.iv583 to i32
  %i.ak = mul i32 %1, %i.aj
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr i8, ptr %3, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.am, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.e, i1 false)
  %.pre = load i64, ptr %0, align 8, !tbaa !15
  %.pre590 = load i64, ptr %i.f, align 8, !tbaa !15
  %.pre591 = load i64, ptr %i.g, align 8, !tbaa !15
  %.pre592 = load i64, ptr %i.h, align 8, !tbaa !15
  %.pre593 = load i64, ptr %i.i, align 8, !tbaa !15
  %.pre594 = load i64, ptr %i.k, align 8, !tbaa !15
  %.pre595 = load i64, ptr %i.l, align 8, !tbaa !15
  %.pre596 = load i64, ptr %i.m, align 8, !tbaa !15
  %.pre597 = load i64, ptr %i.n, align 8, !tbaa !15
  %.pre598 = load i64, ptr %i.p, align 8, !tbaa !15
  %.pre599 = load i64, ptr %i.q, align 8, !tbaa !15
  %.pre600 = load i64, ptr %i.r, align 8, !tbaa !15
  %.pre601 = load i64, ptr %i.s, align 8, !tbaa !15
  %.pre602 = load i64, ptr %i.u, align 8, !tbaa !15
  %.pre603 = load i64, ptr %i.v, align 8, !tbaa !15
  %.pre604 = load i64, ptr %i.w, align 8, !tbaa !15
  %.pre605 = load i64, ptr %i.x, align 8, !tbaa !15
  %.pre606 = load i64, ptr %i.z, align 8, !tbaa !15
  %.pre607 = load i64, ptr %i.aa, align 8, !tbaa !15
  %.pre608 = load i64, ptr %i.ab, align 8, !tbaa !15
  %.pre609 = load i64, ptr %i.ac, align 8, !tbaa !15
  %.promoted = load i64, ptr %i.j, align 8, !tbaa !15
  %.promoted610 = load i64, ptr %i.o, align 8, !tbaa !15
  %.promoted611 = load i64, ptr %i.t, align 8, !tbaa !15
  %.promoted612 = load i64, ptr %i.y, align 8, !tbaa !15
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %indvars.iv.next584 = add nuw nsw i64 %indvars.iv583, 1 ; 2 uses
  %exitcond586.not = icmp eq i64 %indvars.iv.next584, %wide.trip.count
  br i1 %exitcond586.not, label %._crit_edge, label %bb.b, !llvm.loop !39

bb.d:                                             ; preds = %bb.b, %bb.d
  %i.an = phi i64 [ %.promoted612, %bb.b ], [ %i.fb, %bb.d ] ; 2 uses
  %i.ao = phi i64 [ %.promoted611, %bb.b ], [ %i.ey, %bb.d ] ; 2 uses
  %i.ap = phi i64 [ %.promoted610, %bb.b ], [ %i.ev, %bb.d ] ; 2 uses
  %i.aq = phi i64 [ %.promoted, %bb.b ], [ %i.es, %bb.d ] ; 2 uses
  %i.ar = phi i64 [ %.pre609, %bb.b ], [ %i.hj, %bb.d ] ; 2 uses
  %i.as = phi i64 [ %.pre608, %bb.b ], [ %i.gu, %bb.d ] ; 2 uses
  %i.at = phi i64 [ %.pre607, %bb.b ], [ %i.gf, %bb.d ] ; 2 uses
  %i.au = phi i64 [ %.pre606, %bb.b ], [ %i.fq, %bb.d ] ; 2 uses
  %i.av = phi i64 [ %.pre605, %bb.b ], [ %i.hg, %bb.d ] ; 2 uses
  %i.aw = phi i64 [ %.pre604, %bb.b ], [ %i.gr, %bb.d ] ; 2 uses
  %i.ax = phi i64 [ %.pre603, %bb.b ], [ %i.gc, %bb.d ] ; 2 uses
  %i.ay = phi i64 [ %.pre602, %bb.b ], [ %i.fn, %bb.d ] ; 2 uses
  %i.az = phi i64 [ %.pre601, %bb.b ], [ %i.hd, %bb.d ] ; 2 uses
  %i.ba = phi i64 [ %.pre600, %bb.b ], [ %i.go, %bb.d ] ; 2 uses
  %i.bb = phi i64 [ %.pre599, %bb.b ], [ %i.fz, %bb.d ] ; 2 uses
  %i.bc = phi i64 [ %.pre598, %bb.b ], [ %i.fk, %bb.d ] ; 2 uses
  %i.bd = phi i64 [ %.pre597, %bb.b ], [ %i.ha, %bb.d ] ; 2 uses
  %i.be = phi i64 [ %.pre596, %bb.b ], [ %i.gl, %bb.d ] ; 2 uses
  %i.bf = phi i64 [ %.pre595, %bb.b ], [ %i.fw, %bb.d ] ; 2 uses
  %i.bg = phi i64 [ %.pre594, %bb.b ], [ %i.fh, %bb.d ] ; 2 uses
  %i.bh = phi i64 [ %.pre593, %bb.b ], [ %i.gx, %bb.d ] ; 2 uses
  %i.bi = phi i64 [ %.pre592, %bb.b ], [ %i.gi, %bb.d ] ; 2 uses
  %i.bj = phi i64 [ %.pre591, %bb.b ], [ %i.ft, %bb.d ] ; 2 uses
  %i.bk = phi i64 [ %.pre590, %bb.b ], [ %i.fe, %bb.d ] ; 2 uses
  %i.bl = phi i64 [ %.pre, %bb.b ], [ %i.hm, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.bm = xor i64 %i.bk, %i.bl
  %i.bn = xor i64 %i.bm, %i.bj
  %i.bo = xor i64 %i.bn, %i.bi
  %i.bp = xor i64 %i.bo, %i.bh                    ; 3 uses
  %i.bq = xor i64 %i.bg, %i.aq
  %i.br = xor i64 %i.bq, %i.bf
  %i.bs = xor i64 %i.br, %i.be
  %i.bt = xor i64 %i.bs, %i.bd                    ; 3 uses
  %i.bu = xor i64 %i.bc, %i.ap
  %i.bv = xor i64 %i.bu, %i.bb
  %i.bw = xor i64 %i.bv, %i.ba
  %i.bx = xor i64 %i.bw, %i.az                    ; 3 uses
  %i.by = xor i64 %i.ay, %i.ao
  %i.bz = xor i64 %i.by, %i.ax
  %i.ca = xor i64 %i.bz, %i.aw
  %i.cb = xor i64 %i.ca, %i.av                    ; 3 uses
  %i.cc = xor i64 %i.au, %i.an
  %i.cd = xor i64 %i.cc, %i.at
  %i.ce = xor i64 %i.cd, %i.as
  %i.cf = xor i64 %i.ce, %i.ar                    ; 3 uses
  %i.cg = tail call i64 @llvm.fshl.i64(i64 %i.bt, i64 %i.bt, i64 1)
  %i.ch = xor i64 %i.cf, %i.cg                    ; 5 uses
  %i.ci = xor i64 %i.ch, %i.bl                    ; 4 uses
  store i64 %i.ci, ptr %0, align 8, !tbaa !15
  %i.cj = xor i64 %i.ch, %i.bk                    ; 2 uses
  %i.ck = xor i64 %i.ch, %i.bj                    ; 2 uses
  %i.cl = xor i64 %i.ch, %i.bi                    ; 2 uses
  %i.cm = xor i64 %i.ch, %i.bh                    ; 3 uses
  store i64 %i.cm, ptr %i.i, align 8, !tbaa !15
  %i.cn = tail call i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 1)
  %i.co = xor i64 %i.cn, %i.bp                    ; 5 uses
  %i.cp = xor i64 %i.co, %i.aq                    ; 2 uses
  %i.cq = xor i64 %i.co, %i.bg                    ; 3 uses
  store i64 %i.cq, ptr %i.k, align 8, !tbaa !15
  %i.cr = xor i64 %i.co, %i.bf                    ; 2 uses
  %i.cs = xor i64 %i.co, %i.be                    ; 2 uses
  %i.ct = xor i64 %i.co, %i.bd                    ; 2 uses
  %i.cu = tail call i64 @llvm.fshl.i64(i64 %i.cb, i64 %i.cb, i64 1)
  %i.cv = xor i64 %i.cu, %i.bt                    ; 5 uses
  %i.cw = xor i64 %i.cv, %i.ap                    ; 3 uses
  store i64 %i.cw, ptr %i.o, align 8, !tbaa !15
  %i.cx = xor i64 %i.cv, %i.bc                    ; 2 uses
  %i.cy = xor i64 %i.cv, %i.bb                    ; 2 uses
  %i.cz = xor i64 %i.cv, %i.ba                    ; 2 uses
  %i.da = xor i64 %i.cv, %i.az                    ; 3 uses
  store i64 %i.da, ptr %i.s, align 8, !tbaa !15
  %i.db = tail call i64 @llvm.fshl.i64(i64 %i.cf, i64 %i.cf, i64 1)
  %i.dc = xor i64 %i.db, %i.bx                    ; 5 uses
  %i.dd = xor i64 %i.dc, %i.ao                    ; 2 uses
  %i.de = xor i64 %i.dc, %i.ay                    ; 2 uses
  %i.df = xor i64 %i.dc, %i.ax                    ; 2 uses
  %i.dg = xor i64 %i.dc, %i.aw                    ; 2 uses
  %i.dh = xor i64 %i.dc, %i.av                    ; 2 uses
  %i.di = tail call i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 1)
  %i.dj = xor i64 %i.cb, %i.di                    ; 5 uses
  %i.dk = xor i64 %i.dj, %i.an                    ; 2 uses
  %i.dl = xor i64 %i.dj, %i.au                    ; 2 uses
  %i.dm = xor i64 %i.dj, %i.at                    ; 2 uses
  %i.dn = xor i64 %i.dj, %i.as                    ; 2 uses
  %i.do = xor i64 %i.ar, %i.dj                    ; 2 uses
  %i.dp = tail call i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 1) ; 4 uses
  store i64 %i.dp, ptr %i.g, align 8, !tbaa !15
  %i.dq = tail call i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 3) ; 4 uses
  store i64 %i.dq, ptr %i.p, align 8, !tbaa !15
  %i.dr = tail call i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 6) ; 4 uses
  store i64 %i.dr, ptr %i.l, align 8, !tbaa !15
  %i.ds = tail call i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 10) ; 4 uses
  store i64 %i.ds, ptr %i.r, align 8, !tbaa !15
  %i.dt = tail call i64 @llvm.fshl.i64(i64 %i.cz, i64 %i.cz, i64 15) ; 4 uses
  store i64 %i.dt, ptr %i.w, align 8, !tbaa !15
  %i.du = tail call i64 @llvm.fshl.i64(i64 %i.dg, i64 %i.dg, i64 21) ; 3 uses
  %i.dv = tail call i64 @llvm.fshl.i64(i64 %i.dd, i64 %i.dd, i64 28) ; 3 uses
  %i.dw = tail call i64 @llvm.fshl.i64(i64 %i.cj, i64 %i.cj, i64 36) ; 4 uses
  store i64 %i.dw, ptr %i.m, align 8, !tbaa !15
  %i.dx = tail call i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cs, i64 45) ; 3 uses
  %i.dy = tail call i64 @llvm.fshl.i64(i64 %i.de, i64 %i.de, i64 55) ; 4 uses
  store i64 %i.dy, ptr %i.n, align 8, !tbaa !15
  %i.dz = tail call i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 2) ; 4 uses
  store i64 %i.dz, ptr %i.ac, align 8, !tbaa !15
  %i.ea = tail call i64 @llvm.fshl.i64(i64 %i.do, i64 %i.do, i64 14) ; 3 uses
  %i.eb = tail call i64 @llvm.fshl.i64(i64 %i.dk, i64 %i.dk, i64 27) ; 4 uses
  store i64 %i.eb, ptr %i.h, align 8, !tbaa !15
  %i.ec = tail call i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 41) ; 4 uses
  store i64 %i.ec, ptr %i.x, align 8, !tbaa !15
  %i.ed = tail call i64 @llvm.fshl.i64(i64 %i.dh, i64 %i.dh, i64 56) ; 4 uses
  store i64 %i.ed, ptr %i.ab, align 8, !tbaa !15
  %i.ee = tail call i64 @llvm.fshl.i64(i64 %i.dn, i64 %i.dn, i64 8) ; 3 uses
  %i.ef = tail call i64 @llvm.fshl.i64(i64 %i.df, i64 %i.df, i64 25) ; 3 uses
  %i.eg = tail call i64 @llvm.fshl.i64(i64 %i.cy, i64 %i.cy, i64 43) ; 3 uses
  %i.eh = tail call i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 62) ; 4 uses
  store i64 %i.eh, ptr %i.i, align 8, !tbaa !15
  %i.ei = tail call i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 18) ; 3 uses
  %i.ej = tail call i64 @llvm.fshl.i64(i64 %i.dm, i64 %i.dm, i64 39) ; 4 uses
  store i64 %i.ej, ptr %i.s, align 8, !tbaa !15
  %i.ek = tail call i64 @llvm.fshl.i64(i64 %i.da, i64 %i.da, i64 61) ; 3 uses
  %i.el = tail call i64 @llvm.fshl.i64(i64 %i.dl, i64 %i.dl, i64 20) ; 3 uses
  %i.em = tail call i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 44) ; 3 uses
  %i.en = xor i64 %i.em, -1
  %i.eo = and i64 %i.eg, %i.en
  %i.ep = xor i64 %i.eo, %i.ci                    ; 2 uses
  %i.eq = xor i64 %i.eg, -1
  %i.er = and i64 %i.du, %i.eq
  %i.es = xor i64 %i.er, %i.em                    ; 2 uses
  %i.et = xor i64 %i.du, -1
  %i.eu = and i64 %i.ea, %i.et
  %i.ev = xor i64 %i.eu, %i.eg                    ; 2 uses
  %i.ew = xor i64 %i.ea, -1
  %i.ex = and i64 %i.ci, %i.ew
  %i.ey = xor i64 %i.ex, %i.du                    ; 2 uses
  %i.ez = xor i64 %i.ci, -1
  %i.fa = and i64 %i.em, %i.ez
  %i.fb = xor i64 %i.ea, %i.fa                    ; 2 uses
  store i64 %i.ep, ptr %0, align 8, !tbaa !15
  store i64 %i.es, ptr %i.j, align 8, !tbaa !15
  store i64 %i.ev, ptr %i.o, align 8, !tbaa !15
  store i64 %i.ey, ptr %i.t, align 8, !tbaa !15
  store i64 %i.fb, ptr %i.y, align 8, !tbaa !15
  %i.fc = xor i64 %i.el, -1
  %i.fd = and i64 %i.dq, %i.fc
  %i.fe = xor i64 %i.fd, %i.dv                    ; 2 uses
  %i.ff = xor i64 %i.dq, -1
  %i.fg = and i64 %i.dx, %i.ff
  %i.fh = xor i64 %i.fg, %i.el                    ; 2 uses
  %i.fi = xor i64 %i.dx, -1
  %i.fj = and i64 %i.ek, %i.fi
  %i.fk = xor i64 %i.fj, %i.dq                    ; 2 uses
  %i.fl = xor i64 %i.ek, -1
  %i.fm = and i64 %i.dv, %i.fl
  %i.fn = xor i64 %i.fm, %i.dx                    ; 2 uses
  %i.fo = xor i64 %i.dv, -1
  %i.fp = and i64 %i.el, %i.fo
  %i.fq = xor i64 %i.ek, %i.fp                    ; 2 uses
  store i64 %i.fe, ptr %i.f, align 8, !tbaa !15
  store i64 %i.fh, ptr %i.k, align 8, !tbaa !15
  store i64 %i.fk, ptr %i.p, align 8, !tbaa !15
  store i64 %i.fn, ptr %i.u, align 8, !tbaa !15
  store i64 %i.fq, ptr %i.z, align 8, !tbaa !15
  %i.fr = xor i64 %i.dr, -1
  %i.fs = and i64 %i.ef, %i.fr
  %i.ft = xor i64 %i.fs, %i.dp                    ; 2 uses
  %i.fu = xor i64 %i.ef, -1
  %i.fv = and i64 %i.ee, %i.fu
  %i.fw = xor i64 %i.fv, %i.dr                    ; 2 uses
  %i.fx = xor i64 %i.ee, -1
  %i.fy = and i64 %i.ei, %i.fx
  %i.fz = xor i64 %i.fy, %i.ef                    ; 2 uses
  %i.ga = xor i64 %i.ei, -1
  %i.gb = and i64 %i.dp, %i.ga
  %i.gc = xor i64 %i.gb, %i.ee                    ; 2 uses
  %i.gd = xor i64 %i.dp, -1
  %i.ge = and i64 %i.dr, %i.gd
  %i.gf = xor i64 %i.ei, %i.ge                    ; 2 uses
  store i64 %i.ft, ptr %i.g, align 8, !tbaa !15
  store i64 %i.fw, ptr %i.l, align 8, !tbaa !15
  store i64 %i.fz, ptr %i.q, align 8, !tbaa !15
  store i64 %i.gc, ptr %i.v, align 8, !tbaa !15
  store i64 %i.gf, ptr %i.aa, align 8, !tbaa !15
  %i.gg = xor i64 %i.dw, -1
  %i.gh = and i64 %i.ds, %i.gg
  %i.gi = xor i64 %i.gh, %i.eb                    ; 2 uses
  %i.gj = xor i64 %i.ds, -1
  %i.gk = and i64 %i.dt, %i.gj
  %i.gl = xor i64 %i.gk, %i.dw                    ; 2 uses
  %i.gm = xor i64 %i.dt, -1
  %i.gn = and i64 %i.ed, %i.gm
  %i.go = xor i64 %i.gn, %i.ds                    ; 2 uses
  %i.gp = xor i64 %i.ed, -1
  %i.gq = and i64 %i.eb, %i.gp
  %i.gr = xor i64 %i.gq, %i.dt                    ; 2 uses
  %i.gs = xor i64 %i.eb, -1
  %i.gt = and i64 %i.dw, %i.gs
  %i.gu = xor i64 %i.ed, %i.gt                    ; 2 uses
  store i64 %i.gi, ptr %i.h, align 8, !tbaa !15
  store i64 %i.gl, ptr %i.m, align 8, !tbaa !15
  store i64 %i.go, ptr %i.r, align 8, !tbaa !15
  store i64 %i.gr, ptr %i.w, align 8, !tbaa !15
  store i64 %i.gu, ptr %i.ab, align 8, !tbaa !15
  %i.gv = xor i64 %i.dy, -1
  %i.gw = and i64 %i.ej, %i.gv
  %i.gx = xor i64 %i.gw, %i.eh                    ; 2 uses
  %i.gy = xor i64 %i.ej, -1
  %i.gz = and i64 %i.ec, %i.gy
  %i.ha = xor i64 %i.gz, %i.dy                    ; 2 uses
  %i.hb = xor i64 %i.ec, -1
  %i.hc = and i64 %i.dz, %i.hb
  %i.hd = xor i64 %i.hc, %i.ej                    ; 2 uses
  %i.he = xor i64 %i.dz, -1
  %i.hf = and i64 %i.eh, %i.he
  %i.hg = xor i64 %i.hf, %i.ec                    ; 2 uses
  %i.hh = xor i64 %i.eh, -1
  %i.hi = and i64 %i.dy, %i.hh
  %i.hj = xor i64 %i.dz, %i.hi                    ; 2 uses
  store i64 %i.gx, ptr %i.i, align 8, !tbaa !15
  store i64 %i.ha, ptr %i.n, align 8, !tbaa !15
  store i64 %i.hd, ptr %i.s, align 8, !tbaa !15
  store i64 %i.hg, ptr %i.x, align 8, !tbaa !15
  store i64 %i.hj, ptr %i.ac, align 8, !tbaa !15
  %i.hk = getelementptr [8 x i8], ptr @_Py_LibHacl_Hacl_Hash_SHA3_keccak_rndc, i64 %indvars.iv
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !15
  %i.hm = xor i64 %i.hl, %i.ep                    ; 2 uses
  store i64 %i.hm, ptr %0, align 8, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 24
  br i1 %exitcond.not, label %bb.c, label %bb.d, !llvm.loop !40
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { cold nounwind }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { nounwind }
attributes #20 = { nounwind allocsize(0,1) }
attributes #21 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = distinct !{!17, !14}
!18 = !{!8, !8, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 long", !12, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 omnipotent char", !12, i64 0}
!23 = !{!12, !12, i64 0}
!24 = !{i64 7, i64 8, !19, i64 15, i64 8, !21, i64 23, i64 8, !15}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !14}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !14}
!39 = distinct !{!39, !14}
!40 = distinct !{!40, !14}
end_hunk_0
