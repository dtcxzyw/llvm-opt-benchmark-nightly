inline.NumInlined: 23
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@PHP_HAVAL160Final:Encode.exit
  %i.ek = load i32, ptr %i.bz, align 4, !tbaa !12
  %i.el = lshr i32 %i.ek, 24
  %i.em = trunc nuw i32 %i.el to i8
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.em, ptr %i.en, align 1, !tbaa !21
  %i.eo = load i32, ptr %i.by, align 8, !tbaa !12
  %i.ep = trunc i32 %i.eo to i8
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !21
  %i.er = load i32, ptr %i.by, align 8, !tbaa !12
  %i.es = lshr i32 %i.er, 8
  %i.et = trunc i32 %i.es to i8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !21
  %i.ev = load i32, ptr %i.by, align 8, !tbaa !12
  %i.ew = lshr i32 %i.ev, 16
  %i.ex = trunc i32 %i.ew to i8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !21
  %i.ez = load i32, ptr %i.by, align 8, !tbaa !12
  %i.fa = lshr i32 %i.ez, 24
  %i.fb = trunc nuw i32 %i.fa to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !21
  %i.fd = load i32, ptr %i.bx, align 4, !tbaa !12
  %i.fe = trunc i32 %i.fd to i8
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !21
  %i.fg = load i32, ptr %i.bx, align 4, !tbaa !12
  %i.fh = lshr i32 %i.fg, 8
  %i.fi = trunc i32 %i.fh to i8
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !21
  %i.fk = load i32, ptr %i.bx, align 4, !tbaa !12
  %i.fl = lshr i32 %i.fk, 16
  %i.fm = trunc i32 %i.fl to i8
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !21
  %i.fo = load i32, ptr %i.bx, align 4, !tbaa !12
  %i.fp = lshr i32 %i.fo, 24
  %i.fq = trunc nuw i32 %i.fp to i8
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !21
  %i.fs = load i32, ptr %i.bv, align 8, !tbaa !12
  %i.ft = trunc i32 %i.fs to i8
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !21
  %i.fv = load i32, ptr %i.bv, align 8, !tbaa !12
  %i.fw = lshr i32 %i.fv, 8
  %i.fx = trunc i32 %i.fw to i8
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !21
  %i.fz = load i32, ptr %i.bv, align 8, !tbaa !12
  %i.ga = lshr i32 %i.fz, 16
  %i.gb = trunc i32 %i.ga to i8
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !21
  %i.gd = load i32, ptr %i.bv, align 8, !tbaa !12
  %i.ge = lshr i32 %i.gd, 24
  %i.gf = trunc nuw i32 %i.ge to i8
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !21
  tail call void @explicit_bzero(ptr noundef nonnull %1, i64 noundef 184) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @PHP_3HAVAL192Init(ptr nofree noundef writeonly captures(none) initializes((0, 40), (168, 169), (170, 172), (176, 184)) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.b, align 4, !tbaa !12
  store i32 0, ptr %i.a, align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @D0, i64 32, i1 false), !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 3, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 170
  store i16 192, ptr %i.d, align 2, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr @PHP_3HAVALTransform, ptr %i.e, align 8, !tbaa !18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_HAVAL192Final(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) #1 {
Encode.exit:
  %i.a = alloca [10 x i8], align 1                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.c = load i8, ptr %i.b, align 8, !tbaa !13
  %i.d = shl i8 %i.c, 3
  %i.e = and i8 %i.d, 56
  %i.f = or disjoint i8 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 170
  %i.h = load i16, ptr %i.g, align 2, !tbaa !17   ; 2 uses
  %.tr = trunc i16 %i.h to i8
  %i.i = shl i8 %.tr, 6
  %i.j = or disjoint i8 %i.i, %i.f
  store i8 %i.j, ptr %i.a, align 1, !tbaa !21
  %i.k = lshr i16 %i.h, 2
  %i.l = trunc i16 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.l, ptr %i.m, align 1, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.p = load i64, ptr %i.o, align 8
  store i64 %i.p, ptr %i.n, align 1
  %i.q = load i32, ptr %i.o, align 8, !tbaa !12   ; 2 uses
  %i.r = lshr i32 %i.q, 3
  %i.s = and i32 %i.r, 127                        ; 5 uses
  %i.t = icmp samesign ult i32 %i.s, 118
  %.v = select i1 %i.t, i32 118, i32 246
  %i.u = sub nsw i32 %.v, %i.s                    ; 4 uses
  %i.v = zext i32 %i.u to i64                     ; 3 uses
  %i.w = shl nsw i32 %i.u, 3                      ; 2 uses
  %i.x = add i32 %i.w, %i.q                       ; 2 uses
  store i32 %i.x, ptr %i.o, align 8, !tbaa !12
  %i.y = icmp ult i32 %i.x, %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !12
  %i.ab = zext i1 %i.y to i32
  %i.ac = lshr i32 %i.u, 29
  %i.ad = add i32 %i.ac, %i.aa
  %i.ae = add i32 %i.ad, %i.ab
  store i32 %i.ae, ptr %i.z, align 4, !tbaa !12
  %i.af = sub nuw nsw i32 128, %i.s               ; 2 uses
  %.not.i = icmp ult i32 %i.u, %i.af
  br i1 %.not.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %Encode.exit
  %i.ag = zext nneg i32 %i.af to i64              ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ai = zext nneg i32 %i.s to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aj, ptr noundef nonnull align 16 dereferenceable(1) @PADDING, i64 %i.ag, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !18
  tail call void %i.al(ptr noundef nonnull %1, ptr noundef nonnull %i.ah) #6, !inline_history !22
  %i.am = add nuw nsw i64 %i.ag, 127
  %i.an = icmp samesign ult i64 %i.am, %i.v
  br i1 %i.an, label %.lr.ph.i, label %PHP_HAVALUpdate.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.033.i = phi i64 [ %i.aq, %.lr.ph.i ], [ %i.ag, %bb.a ] ; 3 uses
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr @PADDING, i64 %.033.i
  tail call void %i.ao(ptr noundef nonnull %1, ptr noundef nonnull %i.ap) #6, !inline_history !22
  %i.aq = add nuw nsw i64 %.033.i, 128            ; 2 uses
  %i.ar = add nuw nsw i64 %.033.i, 255
  %i.as = icmp samesign ult i64 %i.ar, %i.v
  br i1 %i.as, label %.lr.ph.i, label %PHP_HAVALUpdate.exit, !llvm.loop !19

bb.b:                                             ; preds = %Encode.exit
  %i.at = zext nneg i32 %i.s to i64
  br label %PHP_HAVALUpdate.exit

PHP_HAVALUpdate.exit:                             ; preds = %.lr.ph.i, %bb.a, %bb.b
  %.030.i = phi i64 [ %i.at, %bb.b ], [ 0, %bb.a ], [ 0, %.lr.ph.i ]
  %.1.i = phi i64 [ 0, %bb.b ], [ %i.ag, %bb.a ], [ %i.aq, %.lr.ph.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %.030.i
  %i.aw = getelementptr inbounds nuw i8, ptr @PADDING, i64 %.1.i
  %i.ax = sub i64 %i.v, %.1.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr nonnull align 1 %i.aw, i64 %i.ax, i1 false)
  %i.ay = load i32, ptr %i.o, align 8, !tbaa !12  ; 3 uses
  %i.az = lshr i32 %i.ay, 3
  %i.ba = and i32 %i.az, 127                      ; 4 uses
  %i.bb = add i32 %i.ay, 80
  store i32 %i.bb, ptr %i.o, align 8, !tbaa !12
  %i.bc = icmp ugt i32 %i.ay, -81
  %i.bd = load i32, ptr %i.z, align 4, !tbaa !12
  %i.be = zext i1 %i.bc to i32
  %i.bf = add i32 %i.bd, %i.be
  store i32 %i.bf, ptr %i.z, align 4, !tbaa !12
  %.not.i33 = icmp samesign ult i32 %i.ba, 118
  br i1 %.not.i33, label %bb.d, label %bb.c

bb.c:                                             ; preds = %PHP_HAVALUpdate.exit
  %i.bg = sub nuw nsw i32 128, %i.ba
  %i.bh = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bi = zext nneg i32 %i.ba to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i64 %i.bh, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !18
  tail call void %i.bl(ptr noundef nonnull %1, ptr noundef nonnull %i.au) #6, !inline_history !22
  br label %PHP_HAVALUpdate.exit38

bb.d:                                             ; preds = %PHP_HAVALUpdate.exit
  %i.bm = zext nneg i32 %i.ba to i64
  br label %PHP_HAVALUpdate.exit38

PHP_HAVALUpdate.exit38:                           ; preds = %bb.d, %bb.c
  %.030.i34 = phi i64 [ %i.bm, %bb.d ], [ 0, %bb.c ]
  %.1.i35 = phi i64 [ 0, %bb.d ], [ %i.bh, %bb.c ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 %.030.i34
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.i35
  %i.bp = sub nuw nsw i64 10, %.1.i35
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr nonnull align 1 %i.bo, i64 %i.bp, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 6 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !12
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !12
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %2 = load <2 x i32>, ptr %i.bq, align 8, !tbaa !12 ; 4 uses
  %3 = extractelement <2 x i32> %2, i64 1         ; 4 uses
  %i.by = and i32 %3, -67108864
  %4 = extractelement <2 x i32> %2, i64 0         ; 4 uses
  %i.bz = and i32 %4, 65011712
  %i.ca = or disjoint i32 %i.bz, %i.by
  %i.cb = lshr exact i32 %i.ca, 21
  %i.cc = add i32 %i.cb, %i.bs
  store i32 %i.cc, ptr %i.br, align 4, !tbaa !12
  %i.cd = and i32 %3, 65011712
  %i.ce = and i32 %4, 2031616
  %i.cf = or disjoint i32 %i.ce, %i.cd
  %i.cg = lshr exact i32 %i.cf, 16
  %i.ch = add i32 %i.bu, %i.cg
  store i32 %i.ch, ptr %i.bt, align 8, !tbaa !12
  %i.ci = and i32 %3, 2031616
  %i.cj = and i32 %3, 31
  %i.ck = and i32 %4, -67108864
  %i.cl = or disjoint i32 %i.ck, %i.cj            ; 2 uses
  %i.cm = tail call i32 @llvm.fshl.i32(i32 %i.cl, i32 %i.cl, i32 6)
  %i.cn = and i32 %4, 64512
  %5 = and <2 x i32> %2, splat (i32 992)
  %6 = and <2 x i32> %2, <i32 31, i32 64512>
  %7 = shufflevector <2 x i32> %6, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.co = or disjoint i32 %i.cn, %i.ci
  %8 = or disjoint <2 x i32> %7, %5               ; 2 uses
  %i.cp = lshr exact i32 %i.co, 10
  %9 = extractelement <2 x i32> %8, i64 0
  %i.cq = lshr exact i32 %9, 5
  %i.cr = load <4 x i32>, ptr %1, align 8, !tbaa !12
  %10 = shufflevector <2 x i32> %8, <2 x i32> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cs = insertelement <4 x i32> %10, i32 %i.cm, i64 0
  %i.ct = insertelement <4 x i32> %i.cs, i32 %i.cq, i64 2
  %i.cu = insertelement <4 x i32> %i.ct, i32 %i.cp, i64 3
  %i.cv = add <4 x i32> %i.cr, %i.cu              ; 2 uses
  store <4 x i32> %i.cv, ptr %1, align 8, !tbaa !12
  %i.cw = bitcast <4 x i32> %i.cv to <16 x i8>
  %i.cx = extractelement <16 x i8> %i.cw, i64 0
  store i8 %i.cx, ptr %0, align 1, !tbaa !21
  %i.cy = load i32, ptr %1, align 8, !tbaa !12
  %i.cz = lshr i32 %i.cy, 8
  %i.da = trunc i32 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.da, ptr %i.db, align 1, !tbaa !21
  %i.dc = load i32, ptr %1, align 8, !tbaa !12
  %i.dd = lshr i32 %i.dc, 16
  %i.de = trunc i32 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.de, ptr %i.df, align 1, !tbaa !21
  %i.dg = load i32, ptr %1, align 8, !tbaa !12
  %i.dh = lshr i32 %i.dg, 24
  %i.di = trunc nuw i32 %i.dh to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !21
  %i.dk = load i32, ptr %i.bx, align 4, !tbaa !12
  %i.dl = trunc i32 %i.dk to i8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !21
  %i.dn = load i32, ptr %i.bx, align 4, !tbaa !12
  %i.do = lshr i32 %i.dn, 8
  %i.dp = trunc i32 %i.do to i8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !21
  %i.dr = load i32, ptr %i.bx, align 4, !tbaa !12
  %i.ds = lshr i32 %i.dr, 16
  %i.dt = trunc i32 %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !21
  %i.dv = load i32, ptr %i.bx, align 4, !tbaa !12
  %i.dw = lshr i32 %i.dv, 24
  %i.dx = trunc nuw i32 %i.dw to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !21
  %i.dz = load i32, ptr %i.bw, align 8, !tbaa !12
  %i.ea = trunc i32 %i.dz to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !21
  %i.ec = load i32, ptr %i.bw, align 8, !tbaa !12
  %i.ed = lshr i32 %i.ec, 8
  %i.ee = trunc i32 %i.ed to i8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !21
  %i.eg = load i32, ptr %i.bw, align 8, !tbaa !12
  %i.eh = lshr i32 %i.eg, 16
  %i.ei = trunc i32 %i.eh to i8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !21
  %i.ek = load i32, ptr %i.bw, align 8, !tbaa !12
  %i.el = lshr i32 %i.ek, 24
  %i.em = trunc nuw i32 %i.el to i8
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.em, ptr %i.en, align 1, !tbaa !21
  %i.eo = load i32, ptr %i.bv, align 4, !tbaa !12
  %i.ep = trunc i32 %i.eo to i8
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !21
  %i.er = load i32, ptr %i.bv, align 4, !tbaa !12
  %i.es = lshr i32 %i.er, 8
  %i.et = trunc i32 %i.es to i8
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !21
  %i.ev = load i32, ptr %i.bv, align 4, !tbaa !12
  %i.ew = lshr i32 %i.ev, 16
  %i.ex = trunc i32 %i.ew to i8
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !21
  %i.ez = load i32, ptr %i.bv, align 4, !tbaa !12
  %i.fa = lshr i32 %i.ez, 24
  %i.fb = trunc nuw i32 %i.fa to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !21
  %i.fd = load i32, ptr %i.bt, align 8, !tbaa !12
  %i.fe = trunc i32 %i.fd to i8
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !21
  %i.fg = load i32, ptr %i.bt, align 8, !tbaa !12
  %i.fh = lshr i32 %i.fg, 8
  %i.fi = trunc i32 %i.fh to i8
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !21
  %i.fk = load i32, ptr %i.bt, align 8, !tbaa !12
  %i.fl = lshr i32 %i.fk, 16
  %i.fm = trunc i32 %i.fl to i8
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !21
  %i.fo = load i32, ptr %i.bt, align 8, !tbaa !12
  %i.fp = lshr i32 %i.fo, 24
  %i.fq = trunc nuw i32 %i.fp to i8
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !21
  %i.fs = load i32, ptr %i.br, align 4, !tbaa !12
  %i.ft = trunc i32 %i.fs to i8
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !21
  %i.fv = load i32, ptr %i.br, align 4, !tbaa !12
  %i.fw = lshr i32 %i.fv, 8
  %i.fx = trunc i32 %i.fw to i8
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !21
  %i.fz = load i32, ptr %i.br, align 4, !tbaa !12
  %i.ga = lshr i32 %i.fz, 16
  %i.gb = trunc i32 %i.ga to i8
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !21
  %i.gd = load i32, ptr %i.br, align 4, !tbaa !12
  %i.ge = lshr i32 %i.gd, 24
  %i.gf = trunc nuw i32 %i.ge to i8
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !21
  tail call void @explicit_bzero(ptr noundef nonnull %1, i64 noundef 184) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @PHP_3HAVAL224Init(ptr nofree noundef writeonly captures(none) initializes((0, 40), (168, 169), (170, 172), (176, 184)) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.b, align 4, !tbaa !12
  store i32 0, ptr %i.a, align 8, !tbaa !12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(32) @D0, i64 32, i1 false), !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 3, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 170
  store i16 224, ptr %i.d, align 2, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr @PHP_3HAVALTransform, ptr %i.e, align 8, !tbaa !18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PHP_HAVAL224Final(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1) #1 {
Encode.exit:
  %i.a = alloca [10 x i8], align 1                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.c = load i8, ptr %i.b, align 8, !tbaa !13
  %i.d = shl i8 %i.c, 3
  %i.e = and i8 %i.d, 56
  %i.f = or disjoint i8 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 170
  %i.h = load i16, ptr %i.g, align 2, !tbaa !17   ; 2 uses
  %.tr = trunc i16 %i.h to i8
  %i.i = shl i8 %.tr, 6
  %i.j = or disjoint i8 %i.i, %i.f
  store i8 %i.j, ptr %i.a, align 1, !tbaa !21
  %i.k = lshr i16 %i.h, 2
  %i.l = trunc i16 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.l, ptr %i.m, align 1, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.p = load i64, ptr %i.o, align 8
  store i64 %i.p, ptr %i.n, align 1
  %i.q = load i32, ptr %i.o, align 8, !tbaa !12   ; 2 uses
  %i.r = lshr i32 %i.q, 3
  %i.s = and i32 %i.r, 127                        ; 5 uses
  %i.t = icmp samesign ult i32 %i.s, 118
  %.v = select i1 %i.t, i32 118, i32 246
  %i.u = sub nsw i32 %.v, %i.s                    ; 4 uses
  %i.v = zext i32 %i.u to i64                     ; 3 uses
  %i.w = shl nsw i32 %i.u, 3                      ; 2 uses
  %i.x = add i32 %i.w, %i.q                       ; 2 uses
  store i32 %i.x, ptr %i.o, align 8, !tbaa !12
  %i.y = icmp ult i32 %i.x, %i.w
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !12
  %i.ab = zext i1 %i.y to i32
  %i.ac = lshr i32 %i.u, 29
  %i.ad = add i32 %i.ac, %i.aa
  %i.ae = add i32 %i.ad, %i.ab
  store i32 %i.ae, ptr %i.z, align 4, !tbaa !12
  %i.af = sub nuw nsw i32 128, %i.s               ; 2 uses
  %.not.i = icmp ult i32 %i.u, %i.af
  br i1 %.not.i, label %bb.b, label %bb.a

bb.a:                                             ; preds = %Encode.exit
  %i.ag = zext nneg i32 %i.af to i64              ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ai = zext nneg i32 %i.s to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aj, ptr noundef nonnull align 16 dereferenceable(1) @PADDING, i64 %i.ag, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !18
  tail call void %i.al(ptr noundef nonnull %1, ptr noundef nonnull %i.ah) #6, !inline_history !22
  %i.am = add nuw nsw i64 %i.ag, 127
  %i.an = icmp samesign ult i64 %i.am, %i.v
  br i1 %i.an, label %.lr.ph.i, label %PHP_HAVALUpdate.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.033.i = phi i64 [ %i.aq, %.lr.ph.i ], [ %i.ag, %bb.a ] ; 3 uses
end_hunk_0
