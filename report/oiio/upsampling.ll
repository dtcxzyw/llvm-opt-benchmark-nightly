inline.NumInlined: 90
inline.NumDeleted: 14
begin_hunk_0_@UpsampleBgraLinePair_C:bb.a
  %i.ok = lshr i32 %i.oj, 8
  %i.ol = add nuw nsw i32 %i.oi, %i.ok
  %i.om = sub nsw i32 %i.nw, %i.ol                ; 2 uses
  %i.on = add nsw i32 %i.om, 8708                 ; 2 uses
  %i.oo = icmp ult i32 %i.on, 16384
  %i.op = lshr i32 %i.on, 6
  %i.oq = icmp slt i32 %i.om, -8708
  %i.or = select i1 %i.oq, i32 0, i32 255
  %i.os = select i1 %i.oo, i32 %i.op, i32 %i.or
  %i.ot = trunc i32 %i.os to i8
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ns, i64 1
  store i8 %i.ot, ptr %i.ou, align 1, !tbaa !10
  %i.ov = mul nuw nsw i32 %i.nr, 26149
  %i.ow = lshr i32 %i.ov, 8
  %i.ox = add nuw nsw i32 %i.nw, %i.ow            ; 2 uses
  %i.oy = add nsw i32 %i.ox, -14234               ; 2 uses
  %i.oz = icmp ult i32 %i.oy, 16384
  %i.pa = lshr i32 %i.oy, 6
  %i.pb = icmp samesign ult i32 %i.ox, 14234
  %i.pc = select i1 %i.pb, i32 0, i32 255
  %i.pd = select i1 %i.oz, i32 %i.pa, i32 %i.pc
  %i.pe = trunc i32 %i.pd to i8
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ns, i64 2
  store i8 %i.pe, ptr %i.pf, align 1, !tbaa !10
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ns, i64 3
  store i8 -1, ptr %i.pg, align 1, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @UpsampleRgbLinePair_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(address_is_null) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, ptr noalias nofree noundef readonly captures(none) %5, ptr noalias nofree noundef writeonly captures(none) initializes((0, 3)) %6, ptr noalias nofree noundef writeonly captures(none) %7, i32 noundef %8) #1 {
bb.a:
  %i.a = add nsw i32 %8, -1                       ; 3 uses
  %i.b = ashr i32 %i.a, 1                         ; 2 uses
  %i.c = load i8, ptr %2, align 1, !tbaa !10
  %i.d = zext i8 %i.c to i32
  %i.e = load i8, ptr %3, align 1, !tbaa !10
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 16
  %i.h = or disjoint i32 %i.g, %i.d               ; 4 uses
  %i.i = load i8, ptr %4, align 1, !tbaa !10
  %i.j = zext i8 %i.i to i32
  %i.k = load i8, ptr %5, align 1, !tbaa !10
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 16
  %i.n = or disjoint i32 %i.m, %i.j               ; 4 uses
  %i.o = mul nuw nsw i32 %i.h, 3
  %i.p = add nuw nsw i32 %i.o, 131074
  %i.q = add nuw nsw i32 %i.p, %i.n               ; 2 uses
  %i.r = lshr i32 %i.q, 2
  %i.s = load i8, ptr %0, align 1, !tbaa !10
  %i.t = zext i8 %i.s to i32
  %i.u = and i32 %i.r, 255                        ; 2 uses
  %i.v = lshr i32 %i.q, 18                        ; 2 uses
  %i.w = mul nuw nsw i32 %i.t, 19077
  %i.x = lshr i32 %i.w, 8                         ; 3 uses
  %i.y = mul nuw nsw i32 %i.v, 26149
  %i.z = lshr i32 %i.y, 8
  %i.aa = add nuw nsw i32 %i.z, %i.x              ; 2 uses
  %i.ab = add nsw i32 %i.aa, -14234               ; 2 uses
  %i.ac = icmp ult i32 %i.ab, 16384
  %i.ad = lshr i32 %i.ab, 6
  %i.ae = icmp samesign ult i32 %i.aa, 14234
  %i.af = select i1 %i.ae, i32 0, i32 255
  %i.ag = select i1 %i.ac, i32 %i.ad, i32 %i.af
  %i.ah = trunc i32 %i.ag to i8
  store i8 %i.ah, ptr %6, align 1, !tbaa !10
  %i.ai = mul nuw nsw i32 %i.u, 6419
  %i.aj = lshr i32 %i.ai, 8
  %i.ak = mul nuw nsw i32 %i.v, 13320
  %i.al = lshr i32 %i.ak, 8
  %i.am = add nuw nsw i32 %i.al, %i.aj
  %i.an = sub nsw i32 %i.x, %i.am                 ; 2 uses
  %i.ao = add nsw i32 %i.an, 8708                 ; 2 uses
  %i.ap = icmp ult i32 %i.ao, 16384
  %i.aq = lshr i32 %i.ao, 6
  %i.ar = icmp slt i32 %i.an, -8708
  %i.as = select i1 %i.ar, i32 0, i32 255
  %i.at = select i1 %i.ap, i32 %i.aq, i32 %i.as
  %i.au = trunc i32 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !10
  %i.aw = mul nuw nsw i32 %i.u, 33050
  %i.ax = lshr i32 %i.aw, 8
  %i.ay = add nuw nsw i32 %i.ax, %i.x             ; 2 uses
  %i.az = add nsw i32 %i.ay, -17685               ; 2 uses
  %i.ba = icmp ult i32 %i.az, 16384
  %i.bb = lshr i32 %i.az, 6
  %i.bc = icmp samesign ult i32 %i.ay, 17685
  %i.bd = select i1 %i.bc, i32 0, i32 255
  %i.be = select i1 %i.ba, i32 %i.bb, i32 %i.bd
  %i.bf = trunc i32 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !10
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bh = mul nuw nsw i32 %i.n, 3
  %i.bi = add nuw nsw i32 %i.h, 131074
  %i.bj = add nuw nsw i32 %i.bi, %i.bh            ; 2 uses
  %i.bk = lshr i32 %i.bj, 2
  %i.bl = load i8, ptr %1, align 1, !tbaa !10
  %i.bm = zext i8 %i.bl to i32
  %i.bn = and i32 %i.bk, 255                      ; 2 uses
  %i.bo = lshr i32 %i.bj, 18                      ; 2 uses
  %i.bp = mul nuw nsw i32 %i.bm, 19077
  %i.bq = lshr i32 %i.bp, 8                       ; 3 uses
  %i.br = mul nuw nsw i32 %i.bo, 26149
  %i.bs = lshr i32 %i.br, 8
  %i.bt = add nuw nsw i32 %i.bq, %i.bs            ; 2 uses
  %i.bu = add nsw i32 %i.bt, -14234               ; 2 uses
  %i.bv = icmp ult i32 %i.bu, 16384
  %i.bw = lshr i32 %i.bu, 6
  %i.bx = icmp samesign ult i32 %i.bt, 14234
  %i.by = select i1 %i.bx, i32 0, i32 255
  %i.bz = select i1 %i.bv, i32 %i.bw, i32 %i.by
  %i.ca = trunc i32 %i.bz to i8
  store i8 %i.ca, ptr %7, align 1, !tbaa !10
  %i.cb = mul nuw nsw i32 %i.bn, 6419
  %i.cc = lshr i32 %i.cb, 8
  %i.cd = mul nuw nsw i32 %i.bo, 13320
  %i.ce = lshr i32 %i.cd, 8
  %i.cf = add nuw nsw i32 %i.cc, %i.ce
  %i.cg = sub nsw i32 %i.bq, %i.cf                ; 2 uses
  %i.ch = add nsw i32 %i.cg, 8708                 ; 2 uses
  %i.ci = icmp ult i32 %i.ch, 16384
  %i.cj = lshr i32 %i.ch, 6
  %i.ck = icmp slt i32 %i.cg, -8708
  %i.cl = select i1 %i.ck, i32 0, i32 255
  %i.cm = select i1 %i.ci, i32 %i.cj, i32 %i.cl
  %i.cn = trunc i32 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !10
  %i.cp = mul nuw nsw i32 %i.bn, 33050
  %i.cq = lshr i32 %i.cp, 8
  %i.cr = add nuw nsw i32 %i.bq, %i.cq            ; 2 uses
  %i.cs = add nsw i32 %i.cr, -17685               ; 2 uses
  %i.ct = icmp ult i32 %i.cs, 16384
  %i.cu = lshr i32 %i.cs, 6
  %i.cv = icmp samesign ult i32 %i.cr, 17685
  %i.cw = select i1 %i.cv, i32 0, i32 255
  %i.cx = select i1 %i.ct, i32 %i.cu, i32 %i.cw
  %i.cy = trunc i32 %i.cx to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not94119 = icmp slt i32 %i.b, 1
  br i1 %.not94119, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.da = add nuw nsw i32 %i.b, 1
  %wide.trip.count = zext nneg i32 %i.da to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 7 uses
  %.091121 = phi i32 [ %i.h, %.lr.ph.preheader ], [ %i.di, %bb.e ] ; 3 uses
  %.092120 = phi i32 [ %i.n, %.lr.ph.preheader ], [ %i.dq, %bb.e ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !10
  %i.dd = zext i8 %i.dc to i32
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.df = load i8, ptr %i.de, align 1, !tbaa !10
  %i.dg = zext i8 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 16
  %i.di = or disjoint i32 %i.dh, %i.dd            ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !10
  %i.dl = zext i8 %i.dk to i32
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !10
  %i.do = zext i8 %i.dn to i32
  %i.dp = shl nuw nsw i32 %i.do, 16
  %i.dq = or disjoint i32 %i.dp, %i.dl            ; 5 uses
  %i.dr = add nuw nsw i32 %.092120, 524296
  %i.ds = add nuw nsw i32 %i.dr, %.091121
  %i.dt = add nuw nsw i32 %i.ds, %i.di
  %i.du = add nuw nsw i32 %i.dt, %i.dq            ; 2 uses
  %i.dv = add nuw nsw i32 %i.di, %.092120
  %i.dw = shl nuw nsw i32 %i.dv, 1
  %i.dx = add nuw nsw i32 %i.du, %i.dw
  %i.dy = lshr i32 %i.dx, 3                       ; 2 uses
  %i.dz = add nuw nsw i32 %i.dq, %.091121
  %i.ea = shl nuw nsw i32 %i.dz, 1
  %i.eb = add nuw nsw i32 %i.du, %i.ea
  %i.ec = lshr i32 %i.eb, 3                       ; 2 uses
  %i.ed = add nuw nsw i32 %i.dy, %.091121         ; 2 uses
  %i.ee = lshr i32 %i.ed, 1
  %i.ef = add nuw nsw i32 %i.ec, %i.di            ; 2 uses
  %i.eg = lshr i32 %i.ef, 1
  %i.eh = shl nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.ei = add nsw i64 %i.eh, -1                   ; 3 uses
  %i.ej = getelementptr inbounds i8, ptr %0, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !10
  %i.el = mul nuw nsw i64 %i.ei, 3                ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %6, i64 %i.el
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 %i.eh
  %10 = load i8, ptr %9, align 1, !tbaa !10
  %11 = zext i8 %10 to i32
  %12 = and i32 %i.eg, 255                        ; 2 uses
  %13 = mul nuw nsw i64 %indvars.iv, 6            ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %6, i64 %13 ; 2 uses
  %15 = zext i8 %i.ek to i32
  %16 = and i32 %i.ee, 255                        ; 2 uses
  %i.en = mul nuw nsw i32 %16, 6419
  %i.eo = lshr i32 %i.en, 8
  %i.ep = lshr i32 %i.ef, 17                      ; 2 uses
  %i.eq = lshr i32 %i.ed, 17                      ; 2 uses
  %17 = mul nuw nsw i32 %i.eq, 13320
  %18 = lshr i32 %17, 8
  %19 = mul nuw nsw i32 %11, 19077
  %20 = mul nuw nsw i32 %i.ep, 26149
  %21 = mul nuw nsw i32 %16, 33050
  %22 = mul nuw nsw i32 %15, 19077
  %i.er = mul nuw nsw i32 %i.eq, 26149
  %i.es = lshr i32 %19, 8                         ; 3 uses
  %i.et = add nuw nsw i32 %18, %i.eo
  %i.eu = lshr i32 %20, 8
  %23 = lshr i32 %21, 8
  %24 = lshr i32 %22, 8                           ; 3 uses
  %25 = lshr i32 %i.er, 8
  %26 = add nuw nsw i32 %i.eu, %i.es
  %27 = add nuw nsw i32 %23, %24
  %28 = sub nsw i32 %24, %i.et
  %29 = add nuw nsw i32 %25, %24
  %30 = insertelement <4 x i32> poison, i32 %29, i64 0
  %31 = insertelement <4 x i32> %30, i32 %28, i64 1
  %32 = insertelement <4 x i32> %31, i32 %27, i64 2
  %33 = insertelement <4 x i32> %32, i32 %26, i64 3 ; 3 uses
  %34 = add nsw <4 x i32> %33, <i32 -14234, i32 8708, i32 -17685, i32 -14234> ; 2 uses
  %35 = icmp ult <4 x i32> %34, splat (i32 16384)
  %36 = lshr <4 x i32> %34, splat (i32 6)
  %37 = icmp ult <4 x i32> %33, <i32 14234, i32 -8708, i32 17685, i32 14234>
  %38 = icmp slt <4 x i32> %33, <i32 14234, i32 -8708, i32 17685, i32 14234>
  %39 = shufflevector <4 x i1> %37, <4 x i1> %38, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %40 = select <4 x i1> %39, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %41 = select <4 x i1> %35, <4 x i32> %36, <4 x i32> %40
  %42 = trunc <4 x i32> %41 to <4 x i8>
  store <4 x i8> %42, ptr %i.em, align 1, !tbaa !10
  %i.ev = mul nuw nsw i32 %12, 6419
  %i.ew = lshr i32 %i.ev, 8
  %i.ex = mul nuw nsw i32 %i.ep, 13320
  %i.ey = lshr i32 %i.ex, 8
  %i.ez = add nuw nsw i32 %i.ey, %i.ew
  %i.fa = sub nsw i32 %i.es, %i.ez                ; 2 uses
  %i.fb = add nsw i32 %i.fa, 8708                 ; 2 uses
  %i.fc = icmp ult i32 %i.fb, 16384
  %i.fd = lshr i32 %i.fb, 6
  %i.fe = icmp slt i32 %i.fa, -8708
  %i.ff = select i1 %i.fe, i32 0, i32 255
  %i.fg = select i1 %i.fc, i32 %i.fd, i32 %i.ff
  %i.fh = trunc i32 %i.fg to i8
  %i.fi = getelementptr inbounds nuw i8, ptr %14, i64 1
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !10
  %i.fj = mul nuw nsw i32 %12, 33050
  %i.fk = lshr i32 %i.fj, 8
  %i.fl = add nuw nsw i32 %i.fk, %i.es            ; 2 uses
  %i.fm = add nsw i32 %i.fl, -17685               ; 2 uses
  %i.fn = icmp ult i32 %i.fm, 16384
  %i.fo = lshr i32 %i.fm, 6
  %i.fp = icmp samesign ult i32 %i.fl, 17685
  %i.fq = select i1 %i.fp, i32 0, i32 255
  %i.fr = select i1 %i.fn, i32 %i.fo, i32 %i.fq
  %i.fs = trunc i32 %i.fr to i8
  %i.ft = getelementptr inbounds nuw i8, ptr %14, i64 2
  store i8 %i.fs, ptr %i.ft, align 1, !tbaa !10
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.fu = add nuw nsw i32 %i.dy, %i.dq            ; 2 uses
  %i.fv = lshr i32 %i.fu, 1
  %i.fw = getelementptr inbounds i8, ptr %1, i64 %i.ei
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !10
  %i.fy = getelementptr inbounds nuw i8, ptr %7, i64 %i.el
  %43 = getelementptr inbounds nuw i8, ptr %1, i64 %i.eh
  %44 = load i8, ptr %43, align 1, !tbaa !10
  %45 = zext i8 %44 to i32
  %46 = and i32 %i.fv, 255                        ; 2 uses
  %47 = getelementptr inbounds nuw i8, ptr %7, i64 %13 ; 2 uses
  %i.fz = add nuw nsw i32 %i.ec, %.092120         ; 2 uses
  %i.ga = lshr i32 %i.fz, 1
  %48 = zext i8 %i.fx to i32
  %49 = and i32 %i.ga, 255                        ; 2 uses
  %i.gb = mul nuw nsw i32 %49, 6419
  %i.gc = lshr i32 %i.gb, 8
  %i.gd = lshr i32 %i.fu, 17                      ; 2 uses
  %i.ge = lshr i32 %i.fz, 17                      ; 2 uses
  %50 = mul nuw nsw i32 %i.ge, 13320
  %51 = lshr i32 %50, 8
  %52 = mul nuw nsw i32 %45, 19077
  %53 = mul nuw nsw i32 %i.gd, 26149
  %54 = mul nuw nsw i32 %49, 33050
  %55 = mul nuw nsw i32 %48, 19077
  %i.gf = mul nuw nsw i32 %i.ge, 26149
  %i.gg = lshr i32 %52, 8                         ; 3 uses
  %i.gh = add nuw nsw i32 %i.gc, %51
  %i.gi = lshr i32 %53, 8
  %56 = lshr i32 %54, 8
  %57 = lshr i32 %55, 8                           ; 3 uses
  %58 = lshr i32 %i.gf, 8
  %59 = add nuw nsw i32 %i.gg, %i.gi
  %60 = add nuw nsw i32 %57, %56
  %61 = sub nsw i32 %57, %i.gh
  %62 = add nuw nsw i32 %57, %58
  %63 = insertelement <4 x i32> poison, i32 %62, i64 0
  %64 = insertelement <4 x i32> %63, i32 %61, i64 1
  %65 = insertelement <4 x i32> %64, i32 %60, i64 2
  %66 = insertelement <4 x i32> %65, i32 %59, i64 3 ; 3 uses
  %67 = add nsw <4 x i32> %66, <i32 -14234, i32 8708, i32 -17685, i32 -14234> ; 2 uses
  %68 = icmp ult <4 x i32> %67, splat (i32 16384)
  %69 = lshr <4 x i32> %67, splat (i32 6)
  %70 = icmp ult <4 x i32> %66, <i32 14234, i32 -8708, i32 17685, i32 14234>
  %71 = icmp slt <4 x i32> %66, <i32 14234, i32 -8708, i32 17685, i32 14234>
  %72 = shufflevector <4 x i1> %70, <4 x i1> %71, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %73 = select <4 x i1> %72, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %74 = select <4 x i1> %68, <4 x i32> %69, <4 x i32> %73
  %75 = trunc <4 x i32> %74 to <4 x i8>
  store <4 x i8> %75, ptr %i.fy, align 1, !tbaa !10
  %i.gj = mul nuw nsw i32 %46, 6419
  %i.gk = lshr i32 %i.gj, 8
  %i.gl = mul nuw nsw i32 %i.gd, 13320
  %i.gm = lshr i32 %i.gl, 8
  %i.gn = add nuw nsw i32 %i.gk, %i.gm
  %i.go = sub nsw i32 %i.gg, %i.gn                ; 2 uses
  %i.gp = add nsw i32 %i.go, 8708                 ; 2 uses
  %i.gq = icmp ult i32 %i.gp, 16384
  %i.gr = lshr i32 %i.gp, 6
  %i.gs = icmp slt i32 %i.go, -8708
  %i.gt = select i1 %i.gs, i32 0, i32 255
  %i.gu = select i1 %i.gq, i32 %i.gr, i32 %i.gt
  %i.gv = trunc i32 %i.gu to i8
  %i.gw = getelementptr inbounds nuw i8, ptr %47, i64 1
  store i8 %i.gv, ptr %i.gw, align 1, !tbaa !10
  %i.gx = mul nuw nsw i32 %46, 33050
  %i.gy = lshr i32 %i.gx, 8
  %i.gz = add nuw nsw i32 %i.gg, %i.gy            ; 2 uses
  %i.ha = add nsw i32 %i.gz, -17685               ; 2 uses
  %i.hb = icmp ult i32 %i.ha, 16384
  %i.hc = lshr i32 %i.ha, 6
  %i.hd = icmp samesign ult i32 %i.gz, 17685
  %i.he = select i1 %i.hd, i32 0, i32 255
  %i.hf = select i1 %i.hb, i32 %i.hc, i32 %i.he
  %i.hg = trunc i32 %i.hf to i8
  %i.hh = getelementptr inbounds nuw i8, ptr %47, i64 2
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %.092.lcssa = phi i32 [ %i.n, %bb.c ], [ %i.dq, %bb.e ] ; 2 uses
  %.091.lcssa = phi i32 [ %i.h, %bb.c ], [ %i.di, %bb.e ] ; 2 uses
  %i.hi = and i32 %8, 1
  %.not95 = icmp eq i32 %i.hi, 0
  br i1 %.not95, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge
  %i.hj = mul nuw nsw i32 %.091.lcssa, 3
  %i.hk = add nuw nsw i32 %.092.lcssa, 131074
  %i.hl = add nuw nsw i32 %i.hk, %i.hj            ; 2 uses
  %i.hm = lshr i32 %i.hl, 2
  %i.hn = sext i32 %i.a to i64                    ; 2 uses
  %i.ho = getelementptr inbounds i8, ptr %0, i64 %i.hn
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !10
  %i.hq = zext i8 %i.hp to i32
  %i.hr = and i32 %i.hm, 255                      ; 2 uses
  %i.hs = lshr i32 %i.hl, 18                      ; 2 uses
  %i.ht = mul nsw i32 %i.a, 3
  %i.hu = sext i32 %i.ht to i64                   ; 2 uses
  %i.hv = getelementptr inbounds i8, ptr %6, i64 %i.hu ; 3 uses
  %i.hw = mul nuw nsw i32 %i.hq, 19077
  %i.hx = lshr i32 %i.hw, 8                       ; 3 uses
  %i.hy = mul nuw nsw i32 %i.hs, 26149
  %i.hz = lshr i32 %i.hy, 8
  %i.ia = add nuw nsw i32 %i.hx, %i.hz            ; 2 uses
  %i.ib = add nsw i32 %i.ia, -14234               ; 2 uses
  %i.ic = icmp ult i32 %i.ib, 16384
  %i.id = lshr i32 %i.ib, 6
  %i.ie = icmp samesign ult i32 %i.ia, 14234
  %i.if = select i1 %i.ie, i32 0, i32 255
  %i.ig = select i1 %i.ic, i32 %i.id, i32 %i.if
  %i.ih = trunc i32 %i.ig to i8
  store i8 %i.ih, ptr %i.hv, align 1, !tbaa !10
  %i.ii = mul nuw nsw i32 %i.hr, 6419
  %i.ij = lshr i32 %i.ii, 8
  %i.ik = mul nuw nsw i32 %i.hs, 13320
  %i.il = lshr i32 %i.ik, 8
  %i.im = add nuw nsw i32 %i.ij, %i.il
  %i.in = sub nsw i32 %i.hx, %i.im                ; 2 uses
  %i.io = add nsw i32 %i.in, 8708                 ; 2 uses
  %i.ip = icmp ult i32 %i.io, 16384
  %i.iq = lshr i32 %i.io, 6
  %i.ir = icmp slt i32 %i.in, -8708
  %i.is = select i1 %i.ir, i32 0, i32 255
  %i.it = select i1 %i.ip, i32 %i.iq, i32 %i.is
  %i.iu = trunc i32 %i.it to i8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  store i8 %i.iu, ptr %i.iv, align 1, !tbaa !10
  %i.iw = mul nuw nsw i32 %i.hr, 33050
  %i.ix = lshr i32 %i.iw, 8
  %i.iy = add nuw nsw i32 %i.hx, %i.ix            ; 2 uses
  %i.iz = add nsw i32 %i.iy, -17685               ; 2 uses
  %i.ja = icmp ult i32 %i.iz, 16384
  %i.jb = lshr i32 %i.iz, 6
  %i.jc = icmp samesign ult i32 %i.iy, 17685
  %i.jd = select i1 %i.jc, i32 0, i32 255
  %i.je = select i1 %i.ja, i32 %i.jb, i32 %i.jd
  %i.jf = trunc i32 %i.je to i8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hv, i64 2
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !10
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.jh = mul nuw nsw i32 %.092.lcssa, 3
  %i.ji = add nuw nsw i32 %.091.lcssa, 131074
  %i.jj = add nuw nsw i32 %i.ji, %i.jh            ; 2 uses
  %i.jk = lshr i32 %i.jj, 2
  %i.jl = getelementptr inbounds i8, ptr %1, i64 %i.hn
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !10
  %i.jn = zext i8 %i.jm to i32
  %i.jo = and i32 %i.jk, 255                      ; 2 uses
  %i.jp = lshr i32 %i.jj, 18                      ; 2 uses
  %i.jq = getelementptr inbounds i8, ptr %7, i64 %i.hu ; 3 uses
  %i.jr = mul nuw nsw i32 %i.jn, 19077
  %i.js = lshr i32 %i.jr, 8                       ; 3 uses
  %i.jt = mul nuw nsw i32 %i.jp, 26149
  %i.ju = lshr i32 %i.jt, 8
  %i.jv = add nuw nsw i32 %i.js, %i.ju            ; 2 uses
  %i.jw = add nsw i32 %i.jv, -14234               ; 2 uses
  %i.jx = icmp ult i32 %i.jw, 16384
  %i.jy = lshr i32 %i.jw, 6
  %i.jz = icmp samesign ult i32 %i.jv, 14234
  %i.ka = select i1 %i.jz, i32 0, i32 255
  %i.kb = select i1 %i.jx, i32 %i.jy, i32 %i.ka
  %i.kc = trunc i32 %i.kb to i8
  store i8 %i.kc, ptr %i.jq, align 1, !tbaa !10
  %i.kd = mul nuw nsw i32 %i.jo, 6419
  %i.ke = lshr i32 %i.kd, 8
  %i.kf = mul nuw nsw i32 %i.jp, 13320
  %i.kg = lshr i32 %i.kf, 8
  %i.kh = add nuw nsw i32 %i.ke, %i.kg
  %i.ki = sub nsw i32 %i.js, %i.kh                ; 2 uses
  %i.kj = add nsw i32 %i.ki, 8708                 ; 2 uses
  %i.kk = icmp ult i32 %i.kj, 16384
  %i.kl = lshr i32 %i.kj, 6
  %i.km = icmp slt i32 %i.ki, -8708
  %i.kn = select i1 %i.km, i32 0, i32 255
  %i.ko = select i1 %i.kk, i32 %i.kl, i32 %i.kn
  %i.kp = trunc i32 %i.ko to i8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jq, i64 1
  store i8 %i.kp, ptr %i.kq, align 1, !tbaa !10
  %i.kr = mul nuw nsw i32 %i.jo, 33050
  %i.ks = lshr i32 %i.kr, 8
  %i.kt = add nuw nsw i32 %i.js, %i.ks            ; 2 uses
  %i.ku = add nsw i32 %i.kt, -17685               ; 2 uses
  %i.kv = icmp ult i32 %i.ku, 16384
  %i.kw = lshr i32 %i.ku, 6
  %i.kx = icmp samesign ult i32 %i.kt, 17685
  %i.ky = select i1 %i.kx, i32 0, i32 255
  %i.kz = select i1 %i.kv, i32 %i.kw, i32 %i.ky
  %i.la = trunc i32 %i.kz to i8
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jq, i64 2
  store i8 %i.la, ptr %i.lb, align 1, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @UpsampleBgrLinePair_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(address_is_null) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, ptr noalias nofree noundef readonly captures(none) %5, ptr noalias nofree noundef writeonly captures(none) initializes((0, 3)) %6, ptr noalias nofree noundef writeonly captures(none) %7, i32 noundef %8) #1 {
bb.a:
  %i.a = add nsw i32 %8, -1                       ; 3 uses
  %i.b = ashr i32 %i.a, 1                         ; 2 uses
  %i.c = load i8, ptr %2, align 1, !tbaa !10
  %i.d = zext i8 %i.c to i32
  %i.e = load i8, ptr %3, align 1, !tbaa !10
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 16
  %i.h = or disjoint i32 %i.g, %i.d               ; 4 uses
  %i.i = load i8, ptr %4, align 1, !tbaa !10
  %i.j = zext i8 %i.i to i32
  %i.k = load i8, ptr %5, align 1, !tbaa !10
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 16
  %i.n = or disjoint i32 %i.m, %i.j               ; 4 uses
  %i.o = mul nuw nsw i32 %i.h, 3
  %i.p = add nuw nsw i32 %i.o, 131074
  %i.q = add nuw nsw i32 %i.p, %i.n               ; 2 uses
  %i.r = lshr i32 %i.q, 2
  %i.s = load i8, ptr %0, align 1, !tbaa !10
  %i.t = zext i8 %i.s to i32
  %i.u = and i32 %i.r, 255                        ; 2 uses
  %i.v = lshr i32 %i.q, 18                        ; 2 uses
  %i.w = mul nuw nsw i32 %i.t, 19077
  %i.x = lshr i32 %i.w, 8                         ; 3 uses
  %i.y = mul nuw nsw i32 %i.u, 33050
  %i.z = lshr i32 %i.y, 8
  %i.aa = add nuw nsw i32 %i.z, %i.x              ; 2 uses
  %i.ab = add nsw i32 %i.aa, -17685               ; 2 uses
  %i.ac = icmp ult i32 %i.ab, 16384
  %i.ad = lshr i32 %i.ab, 6
  %i.ae = icmp samesign ult i32 %i.aa, 17685
  %i.af = select i1 %i.ae, i32 0, i32 255
  %i.ag = select i1 %i.ac, i32 %i.ad, i32 %i.af
  %i.ah = trunc i32 %i.ag to i8
  store i8 %i.ah, ptr %6, align 1, !tbaa !10
  %i.ai = mul nuw nsw i32 %i.u, 6419
  %i.aj = lshr i32 %i.ai, 8
  %i.ak = mul nuw nsw i32 %i.v, 13320
  %i.al = lshr i32 %i.ak, 8
  %i.am = add nuw nsw i32 %i.al, %i.aj
  %i.an = sub nsw i32 %i.x, %i.am                 ; 2 uses
  %i.ao = add nsw i32 %i.an, 8708                 ; 2 uses
  %i.ap = icmp ult i32 %i.ao, 16384
  %i.aq = lshr i32 %i.ao, 6
  %i.ar = icmp slt i32 %i.an, -8708
  %i.as = select i1 %i.ar, i32 0, i32 255
  %i.at = select i1 %i.ap, i32 %i.aq, i32 %i.as
  %i.au = trunc i32 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !10
  %i.aw = mul nuw nsw i32 %i.v, 26149
  %i.ax = lshr i32 %i.aw, 8
  %i.ay = add nuw nsw i32 %i.ax, %i.x             ; 2 uses
  %i.az = add nsw i32 %i.ay, -14234               ; 2 uses
  %i.ba = icmp ult i32 %i.az, 16384
  %i.bb = lshr i32 %i.az, 6
  %i.bc = icmp samesign ult i32 %i.ay, 14234
  %i.bd = select i1 %i.bc, i32 0, i32 255
  %i.be = select i1 %i.ba, i32 %i.bb, i32 %i.bd
  %i.bf = trunc i32 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !10
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bh = mul nuw nsw i32 %i.n, 3
  %i.bi = add nuw nsw i32 %i.h, 131074
  %i.bj = add nuw nsw i32 %i.bi, %i.bh            ; 2 uses
  %i.bk = lshr i32 %i.bj, 2
  %i.bl = load i8, ptr %1, align 1, !tbaa !10
  %i.bm = zext i8 %i.bl to i32
  %i.bn = and i32 %i.bk, 255                      ; 2 uses
  %i.bo = lshr i32 %i.bj, 18                      ; 2 uses
  %i.bp = mul nuw nsw i32 %i.bm, 19077
  %i.bq = lshr i32 %i.bp, 8                       ; 3 uses
  %i.br = mul nuw nsw i32 %i.bn, 33050
  %i.bs = lshr i32 %i.br, 8
  %i.bt = add nuw nsw i32 %i.bq, %i.bs            ; 2 uses
  %i.bu = add nsw i32 %i.bt, -17685               ; 2 uses
  %i.bv = icmp ult i32 %i.bu, 16384
  %i.bw = lshr i32 %i.bu, 6
  %i.bx = icmp samesign ult i32 %i.bt, 17685
  %i.by = select i1 %i.bx, i32 0, i32 255
  %i.bz = select i1 %i.bv, i32 %i.bw, i32 %i.by
  %i.ca = trunc i32 %i.bz to i8
  store i8 %i.ca, ptr %7, align 1, !tbaa !10
  %i.cb = mul nuw nsw i32 %i.bn, 6419
  %i.cc = lshr i32 %i.cb, 8
  %i.cd = mul nuw nsw i32 %i.bo, 13320
  %i.ce = lshr i32 %i.cd, 8
  %i.cf = add nuw nsw i32 %i.cc, %i.ce
  %i.cg = sub nsw i32 %i.bq, %i.cf                ; 2 uses
  %i.ch = add nsw i32 %i.cg, 8708                 ; 2 uses
  %i.ci = icmp ult i32 %i.ch, 16384
  %i.cj = lshr i32 %i.ch, 6
  %i.ck = icmp slt i32 %i.cg, -8708
  %i.cl = select i1 %i.ck, i32 0, i32 255
  %i.cm = select i1 %i.ci, i32 %i.cj, i32 %i.cl
  %i.cn = trunc i32 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !10
  %i.cp = mul nuw nsw i32 %i.bo, 26149
  %i.cq = lshr i32 %i.cp, 8
  %i.cr = add nuw nsw i32 %i.bq, %i.cq            ; 2 uses
  %i.cs = add nsw i32 %i.cr, -14234               ; 2 uses
  %i.ct = icmp ult i32 %i.cs, 16384
  %i.cu = lshr i32 %i.cs, 6
  %i.cv = icmp samesign ult i32 %i.cr, 14234
  %i.cw = select i1 %i.cv, i32 0, i32 255
  %i.cx = select i1 %i.ct, i32 %i.cu, i32 %i.cw
  %i.cy = trunc i32 %i.cx to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not94119 = icmp slt i32 %i.b, 1
  br i1 %.not94119, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.da = add nuw nsw i32 %i.b, 1
  %wide.trip.count = zext nneg i32 %i.da to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 7 uses
  %.091121 = phi i32 [ %i.h, %.lr.ph.preheader ], [ %i.di, %bb.e ] ; 3 uses
  %.092120 = phi i32 [ %i.n, %.lr.ph.preheader ], [ %i.dq, %bb.e ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !10
  %i.dd = zext i8 %i.dc to i32
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.df = load i8, ptr %i.de, align 1, !tbaa !10
  %i.dg = zext i8 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 16
  %i.di = or disjoint i32 %i.dh, %i.dd            ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !10
  %i.dl = zext i8 %i.dk to i32
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !10
  %i.do = zext i8 %i.dn to i32
  %i.dp = shl nuw nsw i32 %i.do, 16
  %i.dq = or disjoint i32 %i.dp, %i.dl            ; 5 uses
  %i.dr = add nuw nsw i32 %.092120, 524296
  %i.ds = add nuw nsw i32 %i.dr, %.091121
  %i.dt = add nuw nsw i32 %i.ds, %i.di
  %i.du = add nuw nsw i32 %i.di, %.092120
  %i.dv = add nuw nsw i32 %i.dq, %.091121
  %9 = shl nuw nsw i64 %indvars.iv, 1             ; 3 uses
  %10 = add nsw i64 %9, -1                        ; 3 uses
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !10
  %13 = mul nuw nsw i64 %10, 3                    ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %6, i64 %13
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 %9
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !10
  %i.dy = zext i8 %i.dx to i32
  %i.dz = mul nuw nsw i64 %indvars.iv, 6          ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 %i.dz ; 2 uses
  %15 = shl nuw nsw i32 %i.dv, 1
  %16 = shl nuw nsw i32 %i.du, 1
  %17 = zext i8 %12 to i32
  %18 = add nuw nsw i32 %i.dt, %i.dq              ; 2 uses
  %i.eb = add nuw nsw i32 %18, %15
  %i.ec = add nuw nsw i32 %18, %16
  %19 = lshr i32 %i.eb, 3                         ; 2 uses
  %i.ed = lshr i32 %i.ec, 3                       ; 2 uses
  %20 = add nuw nsw i32 %19, %i.di                ; 2 uses
  %21 = add nuw nsw i32 %i.ed, %.091121           ; 2 uses
  %22 = lshr i32 %20, 1
  %23 = lshr i32 %21, 17                          ; 2 uses
  %24 = lshr i32 %21, 1
  %25 = and i32 %22, 255                          ; 2 uses
  %26 = and i32 %24, 255                          ; 2 uses
  %i.ee = mul nuw nsw i32 %26, 6419
  %i.ef = lshr i32 %i.ee, 8
  %27 = mul nuw nsw i32 %23, 13320
  %i.eg = lshr i32 %27, 8
  %28 = lshr i32 %20, 17                          ; 2 uses
  %29 = mul nuw nsw i32 %i.dy, 19077
  %30 = mul nuw nsw i32 %25, 33050
  %31 = mul nuw nsw i32 %23, 26149
  %32 = mul nuw nsw i32 %17, 19077
  %i.eh = mul nuw nsw i32 %26, 33050
  %i.ei = lshr i32 %29, 8                         ; 3 uses
  %i.ej = add nuw nsw i32 %i.eg, %i.ef
  %i.ek = lshr i32 %30, 8
  %33 = lshr i32 %31, 8
  %34 = lshr i32 %32, 8                           ; 3 uses
  %35 = lshr i32 %i.eh, 8
  %36 = add nuw nsw i32 %i.ek, %i.ei
  %37 = add nuw nsw i32 %33, %34
  %38 = sub nsw i32 %34, %i.ej
  %39 = add nuw nsw i32 %35, %34
  %40 = insertelement <4 x i32> poison, i32 %39, i64 0
  %41 = insertelement <4 x i32> %40, i32 %38, i64 1
  %42 = insertelement <4 x i32> %41, i32 %37, i64 2
  %43 = insertelement <4 x i32> %42, i32 %36, i64 3 ; 3 uses
  %44 = add nsw <4 x i32> %43, <i32 -17685, i32 8708, i32 -14234, i32 -17685> ; 2 uses
  %45 = icmp ult <4 x i32> %44, splat (i32 16384)
  %46 = lshr <4 x i32> %44, splat (i32 6)
  %47 = icmp ult <4 x i32> %43, <i32 17685, i32 -8708, i32 14234, i32 17685>
  %48 = icmp slt <4 x i32> %43, <i32 17685, i32 -8708, i32 14234, i32 17685>
  %49 = shufflevector <4 x i1> %47, <4 x i1> %48, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %50 = select <4 x i1> %49, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %51 = select <4 x i1> %45, <4 x i32> %46, <4 x i32> %50
  %52 = trunc <4 x i32> %51 to <4 x i8>
  store <4 x i8> %52, ptr %14, align 1, !tbaa !10
  %i.el = mul nuw nsw i32 %25, 6419
  %i.em = lshr i32 %i.el, 8
  %i.en = mul nuw nsw i32 %28, 13320
  %i.eo = lshr i32 %i.en, 8
  %i.ep = add nuw nsw i32 %i.eo, %i.em
  %i.eq = sub nsw i32 %i.ei, %i.ep                ; 2 uses
  %i.er = add nsw i32 %i.eq, 8708                 ; 2 uses
  %i.es = icmp ult i32 %i.er, 16384
  %i.et = lshr i32 %i.er, 6
  %i.eu = icmp slt i32 %i.eq, -8708
  %i.ev = select i1 %i.eu, i32 0, i32 255
  %i.ew = select i1 %i.es, i32 %i.et, i32 %i.ev
  %i.ex = trunc i32 %i.ew to i8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !10
  %i.ez = mul nuw nsw i32 %28, 26149
  %i.fa = lshr i32 %i.ez, 8
  %i.fb = add nuw nsw i32 %i.fa, %i.ei            ; 2 uses
  %i.fc = add nsw i32 %i.fb, -14234               ; 2 uses
  %i.fd = icmp ult i32 %i.fc, 16384
  %i.fe = lshr i32 %i.fc, 6
  %i.ff = icmp samesign ult i32 %i.fb, 14234
  %i.fg = select i1 %i.ff, i32 0, i32 255
  %i.fh = select i1 %i.fd, i32 %i.fe, i32 %i.fg
  %i.fi = trunc i32 %i.fh to i8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ea, i64 2
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !10
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %53 = getelementptr inbounds i8, ptr %1, i64 %10
  %54 = load i8, ptr %53, align 1, !tbaa !10
  %55 = getelementptr inbounds nuw i8, ptr %7, i64 %13
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 %9
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !10
  %i.fm = zext i8 %i.fl to i32
  %i.fn = getelementptr inbounds nuw i8, ptr %7, i64 %i.dz ; 2 uses
  %56 = zext i8 %54 to i32
  %i.fo = add nuw nsw i32 %i.ed, %i.dq            ; 2 uses
  %i.fp = add nuw nsw i32 %19, %.092120           ; 2 uses
  %i.fq = lshr i32 %i.fo, 1
  %57 = lshr i32 %i.fp, 17                        ; 2 uses
  %58 = lshr i32 %i.fp, 1
  %59 = and i32 %i.fq, 255                        ; 2 uses
  %60 = and i32 %58, 255                          ; 2 uses
  %i.fr = mul nuw nsw i32 %60, 6419
  %i.fs = lshr i32 %i.fr, 8
  %i.ft = mul nuw nsw i32 %57, 13320
  %i.fu = lshr i32 %i.ft, 8
  %i.fv = lshr i32 %i.fo, 17                      ; 2 uses
  %61 = mul nuw nsw i32 %i.fm, 19077
  %62 = mul nuw nsw i32 %59, 33050
  %63 = mul nuw nsw i32 %57, 26149
  %64 = mul nuw nsw i32 %56, 19077
  %i.fw = mul nuw nsw i32 %60, 33050
  %i.fx = lshr i32 %61, 8                         ; 3 uses
  %i.fy = add nuw nsw i32 %i.fs, %i.fu
  %i.fz = lshr i32 %62, 8
  %65 = lshr i32 %63, 8
  %66 = lshr i32 %64, 8                           ; 3 uses
  %67 = lshr i32 %i.fw, 8
  %68 = add nuw nsw i32 %i.fx, %i.fz
  %69 = add nuw nsw i32 %66, %65
  %70 = sub nsw i32 %66, %i.fy
  %71 = add nuw nsw i32 %66, %67
  %72 = insertelement <4 x i32> poison, i32 %71, i64 0
  %73 = insertelement <4 x i32> %72, i32 %70, i64 1
  %74 = insertelement <4 x i32> %73, i32 %69, i64 2
  %75 = insertelement <4 x i32> %74, i32 %68, i64 3 ; 3 uses
  %76 = add nsw <4 x i32> %75, <i32 -17685, i32 8708, i32 -14234, i32 -17685> ; 2 uses
  %77 = icmp ult <4 x i32> %76, splat (i32 16384)
  %78 = lshr <4 x i32> %76, splat (i32 6)
  %79 = icmp ult <4 x i32> %75, <i32 17685, i32 -8708, i32 14234, i32 17685>
  %80 = icmp slt <4 x i32> %75, <i32 17685, i32 -8708, i32 14234, i32 17685>
  %81 = shufflevector <4 x i1> %79, <4 x i1> %80, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %82 = select <4 x i1> %81, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %83 = select <4 x i1> %77, <4 x i32> %78, <4 x i32> %82
  %84 = trunc <4 x i32> %83 to <4 x i8>
  store <4 x i8> %84, ptr %55, align 1, !tbaa !10
  %i.ga = mul nuw nsw i32 %59, 6419
  %i.gb = lshr i32 %i.ga, 8
  %i.gc = mul nuw nsw i32 %i.fv, 13320
  %i.gd = lshr i32 %i.gc, 8
  %i.ge = add nuw nsw i32 %i.gb, %i.gd
  %i.gf = sub nsw i32 %i.fx, %i.ge                ; 2 uses
  %i.gg = add nsw i32 %i.gf, 8708                 ; 2 uses
  %i.gh = icmp ult i32 %i.gg, 16384
  %i.gi = lshr i32 %i.gg, 6
  %i.gj = icmp slt i32 %i.gf, -8708
  %i.gk = select i1 %i.gj, i32 0, i32 255
  %i.gl = select i1 %i.gh, i32 %i.gi, i32 %i.gk
  %i.gm = trunc i32 %i.gl to i8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fn, i64 1
  store i8 %i.gm, ptr %i.gn, align 1, !tbaa !10
  %i.go = mul nuw nsw i32 %i.fv, 26149
  %i.gp = lshr i32 %i.go, 8
  %i.gq = add nuw nsw i32 %i.fx, %i.gp            ; 2 uses
  %i.gr = add nsw i32 %i.gq, -14234               ; 2 uses
  %i.gs = icmp ult i32 %i.gr, 16384
  %i.gt = lshr i32 %i.gr, 6
  %i.gu = icmp samesign ult i32 %i.gq, 14234
  %i.gv = select i1 %i.gu, i32 0, i32 255
  %i.gw = select i1 %i.gs, i32 %i.gt, i32 %i.gv
  %i.gx = trunc i32 %i.gw to i8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fn, i64 2
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %.092.lcssa = phi i32 [ %i.n, %bb.c ], [ %i.dq, %bb.e ] ; 2 uses
  %.091.lcssa = phi i32 [ %i.h, %bb.c ], [ %i.di, %bb.e ] ; 2 uses
  %i.gz = and i32 %8, 1
  %.not95 = icmp eq i32 %i.gz, 0
  br i1 %.not95, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge
  %i.ha = mul nuw nsw i32 %.091.lcssa, 3
  %i.hb = add nuw nsw i32 %.092.lcssa, 131074
  %i.hc = add nuw nsw i32 %i.hb, %i.ha            ; 2 uses
  %i.hd = lshr i32 %i.hc, 2
  %i.he = sext i32 %i.a to i64                    ; 2 uses
  %i.hf = getelementptr inbounds i8, ptr %0, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !10
  %i.hh = zext i8 %i.hg to i32
  %i.hi = and i32 %i.hd, 255                      ; 2 uses
  %i.hj = lshr i32 %i.hc, 18                      ; 2 uses
  %i.hk = mul nsw i32 %i.a, 3
  %i.hl = sext i32 %i.hk to i64                   ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %6, i64 %i.hl ; 3 uses
  %i.hn = mul nuw nsw i32 %i.hh, 19077
  %i.ho = lshr i32 %i.hn, 8                       ; 3 uses
  %i.hp = mul nuw nsw i32 %i.hi, 33050
  %i.hq = lshr i32 %i.hp, 8
  %i.hr = add nuw nsw i32 %i.ho, %i.hq            ; 2 uses
  %i.hs = add nsw i32 %i.hr, -17685               ; 2 uses
  %i.ht = icmp ult i32 %i.hs, 16384
  %i.hu = lshr i32 %i.hs, 6
  %i.hv = icmp samesign ult i32 %i.hr, 17685
  %i.hw = select i1 %i.hv, i32 0, i32 255
  %i.hx = select i1 %i.ht, i32 %i.hu, i32 %i.hw
  %i.hy = trunc i32 %i.hx to i8
  store i8 %i.hy, ptr %i.hm, align 1, !tbaa !10
  %i.hz = mul nuw nsw i32 %i.hi, 6419
  %i.ia = lshr i32 %i.hz, 8
  %i.ib = mul nuw nsw i32 %i.hj, 13320
  %i.ic = lshr i32 %i.ib, 8
  %i.id = add nuw nsw i32 %i.ia, %i.ic
  %i.ie = sub nsw i32 %i.ho, %i.id                ; 2 uses
  %i.if = add nsw i32 %i.ie, 8708                 ; 2 uses
  %i.ig = icmp ult i32 %i.if, 16384
  %i.ih = lshr i32 %i.if, 6
  %i.ii = icmp slt i32 %i.ie, -8708
  %i.ij = select i1 %i.ii, i32 0, i32 255
  %i.ik = select i1 %i.ig, i32 %i.ih, i32 %i.ij
  %i.il = trunc i32 %i.ik to i8
  %i.im = getelementptr inbounds nuw i8, ptr %i.hm, i64 1
  store i8 %i.il, ptr %i.im, align 1, !tbaa !10
  %i.in = mul nuw nsw i32 %i.hj, 26149
  %i.io = lshr i32 %i.in, 8
  %i.ip = add nuw nsw i32 %i.ho, %i.io            ; 2 uses
  %i.iq = add nsw i32 %i.ip, -14234               ; 2 uses
  %i.ir = icmp ult i32 %i.iq, 16384
  %i.is = lshr i32 %i.iq, 6
  %i.it = icmp samesign ult i32 %i.ip, 14234
  %i.iu = select i1 %i.it, i32 0, i32 255
  %i.iv = select i1 %i.ir, i32 %i.is, i32 %i.iu
  %i.iw = trunc i32 %i.iv to i8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hm, i64 2
  store i8 %i.iw, ptr %i.ix, align 1, !tbaa !10
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.iy = mul nuw nsw i32 %.092.lcssa, 3
  %i.iz = add nuw nsw i32 %.091.lcssa, 131074
  %i.ja = add nuw nsw i32 %i.iz, %i.iy            ; 2 uses
  %i.jb = lshr i32 %i.ja, 2
  %i.jc = getelementptr inbounds i8, ptr %1, i64 %i.he
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !10
  %i.je = zext i8 %i.jd to i32
  %i.jf = and i32 %i.jb, 255                      ; 2 uses
  %i.jg = lshr i32 %i.ja, 18                      ; 2 uses
  %i.jh = getelementptr inbounds i8, ptr %7, i64 %i.hl ; 3 uses
  %i.ji = mul nuw nsw i32 %i.je, 19077
  %i.jj = lshr i32 %i.ji, 8                       ; 3 uses
  %i.jk = mul nuw nsw i32 %i.jf, 33050
  %i.jl = lshr i32 %i.jk, 8
  %i.jm = add nuw nsw i32 %i.jj, %i.jl            ; 2 uses
  %i.jn = add nsw i32 %i.jm, -17685               ; 2 uses
  %i.jo = icmp ult i32 %i.jn, 16384
  %i.jp = lshr i32 %i.jn, 6
  %i.jq = icmp samesign ult i32 %i.jm, 17685
  %i.jr = select i1 %i.jq, i32 0, i32 255
  %i.js = select i1 %i.jo, i32 %i.jp, i32 %i.jr
  %i.jt = trunc i32 %i.js to i8
  store i8 %i.jt, ptr %i.jh, align 1, !tbaa !10
  %i.ju = mul nuw nsw i32 %i.jf, 6419
  %i.jv = lshr i32 %i.ju, 8
  %i.jw = mul nuw nsw i32 %i.jg, 13320
  %i.jx = lshr i32 %i.jw, 8
  %i.jy = add nuw nsw i32 %i.jv, %i.jx
  %i.jz = sub nsw i32 %i.jj, %i.jy                ; 2 uses
  %i.ka = add nsw i32 %i.jz, 8708                 ; 2 uses
  %i.kb = icmp ult i32 %i.ka, 16384
  %i.kc = lshr i32 %i.ka, 6
  %i.kd = icmp slt i32 %i.jz, -8708
  %i.ke = select i1 %i.kd, i32 0, i32 255
  %i.kf = select i1 %i.kb, i32 %i.kc, i32 %i.ke
  %i.kg = trunc i32 %i.kf to i8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jh, i64 1
  store i8 %i.kg, ptr %i.kh, align 1, !tbaa !10
  %i.ki = mul nuw nsw i32 %i.jg, 26149
  %i.kj = lshr i32 %i.ki, 8
  %i.kk = add nuw nsw i32 %i.jj, %i.kj            ; 2 uses
  %i.kl = add nsw i32 %i.kk, -14234               ; 2 uses
  %i.km = icmp ult i32 %i.kl, 16384
  %i.kn = lshr i32 %i.kl, 6
  %i.ko = icmp samesign ult i32 %i.kk, 14234
  %i.kp = select i1 %i.ko, i32 0, i32 255
  %i.kq = select i1 %i.km, i32 %i.kn, i32 %i.kp
  %i.kr = trunc i32 %i.kq to i8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jh, i64 2
  store i8 %i.kr, ptr %i.ks, align 1, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @UpsampleArgbLinePair_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(address_is_null) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, ptr noalias nofree noundef readonly captures(none) %5, ptr noalias nofree noundef writeonly captures(none) initializes((0, 4)) %6, ptr noalias nofree noundef writeonly captures(none) %7, i32 noundef %8) #1 {
bb.a:
  %i.a = add nsw i32 %8, -1                       ; 3 uses
  %i.b = ashr i32 %i.a, 1                         ; 2 uses
  %i.c = load i8, ptr %2, align 1, !tbaa !10
  %i.d = zext i8 %i.c to i32
  %i.e = load i8, ptr %3, align 1, !tbaa !10
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 16
  %i.h = or disjoint i32 %i.g, %i.d               ; 4 uses
  %i.i = load i8, ptr %4, align 1, !tbaa !10
  %i.j = zext i8 %i.i to i32
  %i.k = load i8, ptr %5, align 1, !tbaa !10
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 16
  %i.n = or disjoint i32 %i.m, %i.j               ; 4 uses
  %i.o = mul nuw nsw i32 %i.h, 3
  %i.p = add nuw nsw i32 %i.o, 131074
  %i.q = add nuw nsw i32 %i.p, %i.n               ; 2 uses
  %i.r = lshr i32 %i.q, 2
  %i.s = load i8, ptr %0, align 1, !tbaa !10
  %i.t = lshr i32 %i.q, 18                        ; 2 uses
  store i8 -1, ptr %6, align 1, !tbaa !10
  %i.u = zext i8 %i.s to i32
  %i.v = and i32 %i.r, 255                        ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.x = mul nuw nsw i32 %i.u, 19077
  %i.y = lshr i32 %i.x, 8                         ; 3 uses
  %i.z = mul nuw nsw i32 %i.t, 26149
  %i.aa = lshr i32 %i.z, 8
  %i.ab = add nuw nsw i32 %i.aa, %i.y             ; 2 uses
  %i.ac = add nsw i32 %i.ab, -14234               ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 16384
  %i.ae = lshr i32 %i.ac, 6
  %i.af = icmp samesign ult i32 %i.ab, 14234
  %i.ag = select i1 %i.af, i32 0, i32 255
  %i.ah = select i1 %i.ad, i32 %i.ae, i32 %i.ag
  %i.ai = trunc i32 %i.ah to i8
  store i8 %i.ai, ptr %i.w, align 1, !tbaa !10
  %i.aj = mul nuw nsw i32 %i.v, 6419
  %i.ak = lshr i32 %i.aj, 8
  %i.al = mul nuw nsw i32 %i.t, 13320
  %i.am = lshr i32 %i.al, 8
  %i.an = add nuw nsw i32 %i.am, %i.ak
  %i.ao = sub nsw i32 %i.y, %i.an                 ; 2 uses
  %i.ap = add nsw i32 %i.ao, 8708                 ; 2 uses
  %i.aq = icmp ult i32 %i.ap, 16384
  %i.ar = lshr i32 %i.ap, 6
  %i.as = icmp slt i32 %i.ao, -8708
  %i.at = select i1 %i.as, i32 0, i32 255
  %i.au = select i1 %i.aq, i32 %i.ar, i32 %i.at
  %i.av = trunc i32 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !10
  %i.ax = mul nuw nsw i32 %i.v, 33050
  %i.ay = lshr i32 %i.ax, 8
  %i.az = add nuw nsw i32 %i.ay, %i.y             ; 2 uses
  %i.ba = add nsw i32 %i.az, -17685               ; 2 uses
  %i.bb = icmp ult i32 %i.ba, 16384
  %i.bc = lshr i32 %i.ba, 6
  %i.bd = icmp samesign ult i32 %i.az, 17685
  %i.be = select i1 %i.bd, i32 0, i32 255
  %i.bf = select i1 %i.bb, i32 %i.bc, i32 %i.be
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 3
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !10
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bi = mul nuw nsw i32 %i.n, 3
end_hunk_0
