begin_hunk_0_@_ZN2cv17QRCodeDecoderImpl17correctFormatInfoERt:.critedge
  br i1 %i.bj, label %bb.a, label %.critedge.31

.critedge.31:                                     ; preds = %.critedge.30
  %i.bk = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 62), ptr noundef nonnull %1, i32 noundef 2)
  %i.bl = icmp slt i32 %i.bk, 4
  br i1 %i.bl, label %bb.a, label %.critedge14

bb.a:                                             ; preds = %.critedge.31, %.critedge.30, %.critedge.29, %.critedge.28, %.critedge.27, %.critedge.26, %.critedge.25, %.critedge.24, %.critedge.23, %.critedge.22, %.critedge.21, %.critedge.20, %.critedge.19, %.critedge.18, %.critedge.17, %.critedge.16, %.critedge.15, %.critedge.14, %.critedge.13, %.critedge.12, %.critedge.11, %.critedge.10, %.critedge.9, %.critedge.8, %.critedge.7, %.critedge.6, %.critedge.5, %.critedge.4, %.critedge.3, %.critedge.2, %.critedge.1, %.critedge
  %.lcssa19 = phi ptr [ @_ZN2cvL13formatInfoLUTE, %.critedge ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 2), %.critedge.1 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 4), %.critedge.2 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 6), %.critedge.3 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 8), %.critedge.4 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 10), %.critedge.5 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 12), %.critedge.6 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 14), %.critedge.7 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 16), %.critedge.8 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 18), %.critedge.9 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 20), %.critedge.10 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 22), %.critedge.11 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 24), %.critedge.12 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 26), %.critedge.13 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 28), %.critedge.14 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 30), %.critedge.15 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 32), %.critedge.16 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 34), %.critedge.17 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 36), %.critedge.18 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 38), %.critedge.19 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 40), %.critedge.20 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 42), %.critedge.21 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 44), %.critedge.22 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 46), %.critedge.23 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 48), %.critedge.24 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 50), %.critedge.25 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 52), %.critedge.26 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 54), %.critedge.27 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 56), %.critedge.28 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 58), %.critedge.29 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 60), %.critedge.30 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 62), %.critedge.31 ]
  %i.bm = load i16, ptr %.lcssa19, align 2, !tbaa !105
  %i.bn = xor i16 %i.bm, 21522
  store i16 %i.bn, ptr %1, align 2, !tbaa !105
  br label %.critedge14

.critedge14:                                      ; preds = %.critedge.31, %bb.a
  %i.bo = phi i1 [ true, %bb.a ], [ false, %.critedge.31 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret i1 %i.bo
}

declare noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv17QRCodeDecoderImpl16decodeFormatInfoERKNS_3MatERi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 6 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !181
  %.fr58 = freeze i32 %i.d                        ; 2 uses
  %i.e = icmp slt i32 %.fr58, 2
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !182  ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8              ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i8, ptr %i.j, align 1, !tbaa !10
  %i.l = and i8 %i.k, 1                           ; 6 uses
  br i1 %i.e, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %.sink.i38.1 = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sink.i38.1, i64 8
  %i.n = load i8, ptr %i.m, align 1, !tbaa !10
  %i.o = shl i8 %i.n, 1
  %i.p = and i8 %i.o, 2
  %i.q = shl i64 %i.i, 1
  %.sink.i38.2 = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %.sink.i38.2, i64 8
  %i.s = load i8, ptr %i.r, align 1, !tbaa !10
  %i.t = shl i8 %i.s, 2
  %i.u = and i8 %i.t, 4
  %i.v = or disjoint i8 %i.p, %i.u
  %i.w = mul i64 %i.i, 3
  %.sink.i38.3 = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.w
  %i.x = getelementptr inbounds nuw i8, ptr %.sink.i38.3, i64 8
  %i.y = load i8, ptr %i.x, align 1, !tbaa !10
  %i.z = shl i8 %i.y, 3
  %i.aa = and i8 %i.z, 8
  %i.ab = or disjoint i8 %i.v, %i.aa
  %i.ac = shl i64 %i.i, 2
  %.sink.i38.4 = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ac
  %i.ad = getelementptr inbounds nuw i8, ptr %.sink.i38.4, i64 8
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !10
  %i.af = shl i8 %i.ae, 4
  %i.ag = and i8 %i.af, 16
  %i.ah = or disjoint i8 %i.ab, %i.ag
  %i.ai = mul i64 %i.i, 5
  %.sink.i38.5 = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ai
  %i.aj = getelementptr inbounds nuw i8, ptr %.sink.i38.5, i64 8
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !10
  %i.al = shl i8 %i.ak, 5
  %i.am = and i8 %i.al, 32
  %i.an = or disjoint i8 %i.ah, %i.am
  br label %.split47

.split.us:                                        ; preds = %bb.a
  %i.ao = shl nuw nsw i8 %i.l, 1
  %i.ap = shl nuw nsw i8 %i.l, 2
  %i.aq = or disjoint i8 %i.ao, %i.ap
  %i.ar = shl nuw nsw i8 %i.l, 3
  %i.as = or disjoint i8 %i.aq, %i.ar
  %i.at = shl nuw nsw i8 %i.l, 4
  %i.au = or disjoint i8 %i.as, %i.at
  %i.av = shl nuw nsw i8 %i.l, 5
  %i.aw = or disjoint i8 %i.au, %i.av
  br label %.split47

.split47:                                         ; preds = %.split.preheader, %.split.us
  %.pn = phi i8 [ %i.an, %.split.preheader ], [ %i.aw, %.split.us ]
  %i.ax = icmp slt i32 %.fr58, 2                  ; 2 uses
  %i.ay = mul i64 %i.i, 7
  %.sink.idx.i = select i1 %i.ax, i64 0, i64 %i.ay
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink.idx.i
  %i.az = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !10
  %i.bb = shl i8 %i.ba, 6
  %i.bc = and i8 %i.bb, 64
  %i.bd = or i8 %.pn, %i.bc
  %i.be = shl i64 %i.i, 3
  %.sink.idx.i33 = select i1 %i.ax, i64 0, i64 %i.be
  %.sink.i34 = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink.idx.i33 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sink.i34, i64 8
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !10
  %i.bh = shl i8 %i.bg, 7
  %i.bi = or i8 %i.bd, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %.sink.i34, i64 7
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !10
  %i.bl = getelementptr inbounds nuw i8, ptr %.sink.i34, i64 4
  %i.bm = or i8 %i.bi, %i.l
  %i.bn = load <2 x i8>, ptr %i.bl, align 1, !tbaa !10
  %i.bo = load <4 x i8>, ptr %.sink.i34, align 1, !tbaa !10
  %i.bp = shufflevector <2 x i8> %i.bn, <2 x i8> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bq = shufflevector <4 x i8> %i.bp, <4 x i8> %i.bo, <8 x i32> <i32 poison, i32 poison, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  %i.br = insertelement <8 x i8> %i.bq, i8 %i.bm, i64 0
  %i.bs = insertelement <8 x i8> %i.br, i8 %i.bk, i64 1
  %i.bt = and <8 x i8> %i.bs, <i8 -1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  %i.bu = zext <8 x i8> %i.bt to <8 x i16>
  %i.bv = shl nuw nsw <8 x i16> %i.bu, <i16 0, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14>
  %i.bw = tail call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %i.bv)
  store i16 %i.bw, ptr %i.a, align 2, !tbaa !105
  %i.bx = call noundef zeroext i1 @_ZN2cv17QRCodeDecoderImpl17correctFormatInfoERt(ptr nonnull align 8 poison, ptr noundef nonnull align 2 dereferenceable(2) %i.a) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !231 ; 8 uses
  %i.ca = load i32, ptr %i.c, align 4, !tbaa !181
  %.fr = freeze i32 %i.ca                         ; 2 uses
  %i.cb = icmp slt i32 %.fr, 2
  %i.cc = load ptr, ptr %i.f, align 8, !tbaa !182 ; 9 uses
  %i.cd = load i64, ptr %i.h, align 8             ; 8 uses
  %i.ce = shl i64 %i.cd, 3
  %.sink.idx.i41 = select i1 %i.cb, i64 0, i64 %i.ce
  %.sink.i42 = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sink.idx.i41 ; 8 uses
  %i.cf = add i32 %i.bz, -1
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !10
  %i.cj = and i8 %i.ci, 1
  %i.ck = add i32 %i.bz, -2
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !10
  %i.co = shl i8 %i.cn, 1
  %i.cp = and i8 %i.co, 2
  %i.cq = or disjoint i8 %i.cj, %i.cp
  %i.cr = add i32 %i.bz, -3
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !10
  %i.cv = shl i8 %i.cu, 2
  %i.cw = and i8 %i.cv, 4
  %i.cx = or disjoint i8 %i.cq, %i.cw
  %i.cy = add i32 %i.bz, -4
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !10
  %i.dc = shl i8 %i.db, 3
  %i.dd = and i8 %i.dc, 8
  %i.de = or disjoint i8 %i.cx, %i.dd
  %i.df = add i32 %i.bz, -5
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !10
  %i.dj = shl i8 %i.di, 4
  %i.dk = and i8 %i.dj, 16
  %i.dl = or disjoint i8 %i.de, %i.dk
  %i.dm = add i32 %i.bz, -6
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !10
  %i.dq = shl i8 %i.dp, 5
  %i.dr = and i8 %i.dq, 32
  %i.ds = or disjoint i8 %i.dl, %i.dr
  %i.dt = add i32 %i.bz, -7
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !10
  %i.dx = shl i8 %i.dw, 6
  %i.dy = and i8 %i.dx, 64
  %i.dz = or i8 %i.ds, %i.dy
  %i.ea = add i32 %i.bz, -8
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !10
  %i.ee = shl i8 %i.ed, 7
  %i.ef = or i8 %i.dz, %i.ee
  %i.eg = zext i8 %i.ef to i16
  %i.eh = icmp slt i32 %.fr, 2
  br i1 %i.eh, label %.preheader.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.split47
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !179 ; 7 uses
  %invariant.op = add i32 %i.ej, -7
  %i.ek = sext i32 %invariant.op to i64
  %i.el = mul i64 %i.cd, %i.ek
  %.sink.i44 = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.el
  %i.em = getelementptr inbounds nuw i8, ptr %.sink.i44, i64 8
  %i.en = load i8, ptr %i.em, align 1, !tbaa !10
  %3 = and i8 %i.en, 1
  %4 = zext nneg i8 %3 to i16
  %5 = shl nuw nsw i16 %4, 8
  %.reass.1 = add i32 %i.ej, -6
  %i.eo = sext i32 %.reass.1 to i64
  %i.ep = mul i64 %i.cd, %i.eo
  %.sink.i44.1 = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ep
  %i.eq = getelementptr inbounds nuw i8, ptr %.sink.i44.1, i64 8
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !10
  %6 = and i8 %i.er, 1
  %7 = zext nneg i8 %6 to i16
  %8 = shl nuw nsw i16 %7, 9
  %9 = or disjoint i16 %5, %8
  %.reass.2 = add i32 %i.ej, -5
  %i.es = sext i32 %.reass.2 to i64
  %i.et = mul i64 %i.cd, %i.es
  %.sink.i44.2 = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.et
  %i.eu = getelementptr inbounds nuw i8, ptr %.sink.i44.2, i64 8
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !10
  %10 = and i8 %i.ev, 1
  %11 = zext nneg i8 %10 to i16
  %12 = shl nuw nsw i16 %11, 10
  %13 = or disjoint i16 %9, %12
  %.reass.3 = add i32 %i.ej, -4
  %14 = sext i32 %.reass.3 to i64
  %15 = mul i64 %i.cd, %14
  %.sink.i44.3 = getelementptr inbounds nuw i8, ptr %i.cc, i64 %15
  %16 = getelementptr inbounds nuw i8, ptr %.sink.i44.3, i64 8
  %17 = load i8, ptr %16, align 1, !tbaa !10
  %18 = and i8 %17, 1
  %19 = zext nneg i8 %18 to i16
  %20 = shl nuw nsw i16 %19, 11
  %21 = or disjoint i16 %13, %20
  %.reass.4 = add i32 %i.ej, -3
  %i.ew = sext i32 %.reass.4 to i64
  %i.ex = mul i64 %i.cd, %i.ew
  %.sink.i44.4 = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.ex
  %i.ey = getelementptr inbounds nuw i8, ptr %.sink.i44.4, i64 8
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !10
  %i.fa = and i8 %i.ez, 1
  %i.fb = zext nneg i8 %i.fa to i16
  %i.fc = shl nuw nsw i16 %i.fb, 12
  %22 = or i16 %21, %i.fc
  %.reass.5 = add i32 %i.ej, -2
  %i.fd = sext i32 %.reass.5 to i64
  %i.fe = mul i64 %i.cd, %i.fd
  %.sink.i44.5 = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.fe
  %i.ff = getelementptr inbounds nuw i8, ptr %.sink.i44.5, i64 8
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !10
  %i.fh = and i8 %i.fg, 1
  %i.fi = zext nneg i8 %i.fh to i16
  %i.fj = shl nuw nsw i16 %i.fi, 13
  %i.fk = or i16 %22, %i.fj
  %.reass.6 = add i32 %i.ej, -1
  %i.fl = sext i32 %.reass.6 to i64
  %i.fm = mul i64 %i.cd, %i.fl
  %.sink.i44.6 = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.fm
  %i.fn = getelementptr inbounds nuw i8, ptr %.sink.i44.6, i64 8
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !10
  %i.fp = and i8 %i.fo, 1
  br label %.split55

.preheader.split.us:                              ; preds = %.split47
  %i.fq = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !10
  %i.fs = and i8 %i.fr, 1                         ; 4 uses
  %i.ft = insertelement <4 x i8> poison, i8 %i.fs, i64 0
  %i.fu = shufflevector <4 x i8> %i.ft, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.fv = zext nneg <4 x i8> %i.fu to <4 x i16>
  %i.fw = shl nuw nsw <4 x i16> %i.fv, <i16 8, i16 9, i16 10, i16 11>
  %.tr65 = zext nneg i8 %i.fs to i16
  %i.fx = shl nuw nsw i16 %.tr65, 12
  %.tr66 = zext nneg i8 %i.fs to i16
  %i.fy = shl nuw nsw i16 %.tr66, 13
  %i.fz = call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.fw)
  %op.rdx.a = or disjoint i16 %i.fz, %i.fx
  %op.rdx72 = or i16 %op.rdx.a, %i.fy
  br label %.split55

.split55:                                         ; preds = %.preheader.split.preheader, %.preheader.split.us
  %.sink71.in = phi i8 [ %i.fp, %.preheader.split.preheader ], [ %i.fs, %.preheader.split.us ]
  %.sink69 = phi i16 [ %i.fk, %.preheader.split.preheader ], [ %op.rdx72, %.preheader.split.us ]
  %.sink71 = zext nneg i8 %.sink71.in to i16
  %i.ga = shl nuw nsw i16 %.sink71, 14
  %i.gb = or i16 %.sink69, %i.ga
  %storemerge = or i16 %i.gb, %i.eg
  store i16 %storemerge, ptr %i.b, align 2, !tbaa !105
  %i.gc = call noundef zeroext i1 @_ZN2cv17QRCodeDecoderImpl17correctFormatInfoERt(ptr nonnull align 8 poison, ptr noundef nonnull align 2 dereferenceable(2) %i.b)
  br i1 %i.gc, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.split55
  %.pre = load i16, ptr %i.b, align 2, !tbaa !105 ; 2 uses
  %i.gd = load i16, ptr %i.a, align 2
  %.not = icmp ne i16 %i.gd, %.pre
  %or.cond.not = select i1 %i.bx, i1 %.not, i1 false
  br i1 %or.cond.not, label %bb.d, label %switch.lookup

bb.c:                                             ; preds = %.split55
  br i1 %i.bx, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.pre60 = load i16, ptr %i.a, align 2, !tbaa !105
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.b, %._crit_edge
  %i.ge = phi i16 [ %.pre60, %._crit_edge ], [ %.pre, %bb.b ] ; 2 uses
  %i.gf = lshr i16 %i.ge, 13
  %i.gg = and i16 %i.gf, 3
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.gi = zext nneg i16 %i.gg to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2cv17QRCodeDecoderImpl16decodeFormatInfoERKNS_3MatERi, i64 %i.gi
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  store i32 %switch.ext, ptr %i.gh, align 4, !tbaa !236
  %i.gj = lshr i16 %i.ge, 10
  %i.gk = and i16 %i.gj, 7
  %i.gl = zext nneg i16 %i.gk to i32
  store i32 %i.gl, ptr %2, align 4, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %switch.lookup
  %.030 = phi i1 [ false, %bb.b ], [ true, %switch.lookup ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i1 %.030
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv17QRCodeDecoderImpl16extractCodewordsERNS_3MatERSt6vectorIhSaIhEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.cv::Range", align 8         ; 4 uses
  %4 = alloca %"class.cv::Range", align 4         ; 5 uses
  %5 = alloca %"class.cv::Range", align 8         ; 4 uses
  %6 = alloca %"class.cv::Range", align 4         ; 5 uses
  %7 = alloca %"class.cv::Range", align 8         ; 4 uses
  %8 = alloca %"class.cv::Range", align 4         ; 5 uses
  %9 = alloca %"class.cv::Range", align 8         ; 4 uses
  %10 = alloca %"class.cv::Range", align 4        ; 5 uses
  %11 = alloca %"class.cv::Range", align 4        ; 5 uses
  %12 = alloca %"class.cv::Range", align 8        ; 4 uses
  %13 = alloca %"class.cv::Range", align 8        ; 4 uses
  %14 = alloca %"class.cv::Range", align 8        ; 4 uses
  %15 = alloca %"class.cv::Range", align 8        ; 4 uses
  %16 = alloca %"class.cv::Range", align 4        ; 5 uses
  %17 = alloca %"class.cv::Range", align 8        ; 4 uses
  %18 = alloca %"class.cv::Range", align 8        ; 4 uses
  %19 = alloca %"class.cv::Range", align 4        ; 5 uses
  %20 = alloca %"class.cv::Range", align 8        ; 4 uses
  %21 = alloca %"class.cv::Range", align 4        ; 5 uses
  %22 = alloca %"class.cv::Range", align 8        ; 4 uses
  %23 = alloca %"class.cv::Range", align 8        ; 4 uses
  %24 = alloca %"class.cv::Range", align 4        ; 5 uses
  %25 = alloca %"class.cv::Range", align 8        ; 4 uses
  %26 = alloca %"class.cv::Range", align 4        ; 5 uses
  %27 = alloca %"class.cv::Range", align 4        ; 5 uses
  %28 = alloca %"class.cv::Range", align 8        ; 4 uses
  %29 = alloca %"class.cv::Range", align 8        ; 4 uses
  %30 = alloca %"class.cv::Range", align 4        ; 5 uses
  %31 = alloca %"class.cv::Range", align 8        ; 8 uses
  %32 = alloca %"class.cv::Range", align 8        ; 8 uses
  %33 = alloca %"class.cv::Range", align 4        ; 5 uses
  %34 = alloca %"class.cv::Range", align 8        ; 4 uses
  %35 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %36 = alloca %"class.cv::_InputArray", align 8  ; 11 uses
  %i.b = alloca double, align 8                   ; 9 uses
  %37 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %38 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %39 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %40 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %41 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %42 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %i.d = alloca double, align 8                   ; 5 uses
  %43 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %44 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %45 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %i.e = alloca double, align 8                   ; 5 uses
  %46 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %47 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %48 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %i.f = alloca double, align 8                   ; 5 uses
  %49 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %50 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %51 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %i.g = alloca double, align 8                   ; 5 uses
  %52 = alloca %"class.cv::Scalar_", align 8      ; 6 uses
  %53 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %54 = alloca [2 x %"class.cv::Mat"], align 8    ; 11 uses
  %55 = alloca %"class.cv::Mat", align 8          ; 14 uses
  %56 = alloca %"class.cv::Mat", align 8          ; 14 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !232  ; 8 uses
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [112 x i8], ptr @_ZN2cvL21version_info_databaseE, i64 %i.j ; 7 uses
  %i.l = tail call noalias noundef nonnull dereferenceable(28) ptr @_Znwm(i64 noundef 28) #30 ; 13 uses
  %.not = icmp ult i32 %i.i, 2
  br i1 %.not, label %._crit_edge, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.1

.preheader341.lr.ph:                              ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.4, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.3, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.6
  %.sroa.16.0.lcssa.ph = phi ptr [ %.sroa.16.2.4, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.4 ], [ %.sroa.16.2.2, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.2 ], [ %.sroa.16.2.3, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.3 ], [ %.sroa.16.2.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.1 ], [ %.sroa.16.2.5, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.5 ], [ %.sroa.16.2.6, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.6 ]
  %i.m = ptrtoint ptr %.sroa.16.0.lcssa.ph to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = ashr exact i64 %i.o, 2                   ; 4 uses
  %i.q = add nsw i64 %i.p, -1                     ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %exitcond533.peel.not = icmp eq i64 %i.o, 4
  br label %.preheader341

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.1:        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.u = load <2 x i32>, ptr %i.t, align 4, !tbaa !22
  store <2 x i32> %i.u, ptr %i.l, align 4, !tbaa !22
  %.sroa.16.2.1 = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.not.2 = icmp ult i32 %i.i, 7
  br i1 %.not.2, label %.preheader341.lr.ph, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.2

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.2:        ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.1
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !22
  store i32 %i.w, ptr %.sroa.16.2.1, align 4, !tbaa !22
  %.sroa.16.2.2 = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 2 uses
  %.not.3 = icmp ult i32 %i.i, 14
  br i1 %.not.3, label %.preheader341.lr.ph, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.3

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.3:        ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.2
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.y = load i32, ptr %i.x, align 16, !tbaa !22
  store i32 %i.y, ptr %.sroa.16.2.2, align 4, !tbaa !22
  %.sroa.16.2.3 = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.not.4 = icmp ult i32 %i.i, 21
  br i1 %.not.4, label %.preheader341.lr.ph, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.4

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.4:        ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.3
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !22
  store i32 %i.aa, ptr %.sroa.16.2.3, align 4, !tbaa !22
  %.sroa.16.2.4 = getelementptr inbounds nuw i8, ptr %i.l, i64 20 ; 2 uses
  %.not.5 = icmp ult i32 %i.i, 28
  br i1 %.not.5, label %.preheader341.lr.ph, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.5

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.5:        ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !22
  store i32 %i.ac, ptr %.sroa.16.2.4, align 4, !tbaa !22
  %.sroa.16.2.5 = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %.not.6 = icmp ult i32 %i.i, 35
  br i1 %.not.6, label %.preheader341.lr.ph, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.6

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.6:        ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.5
end_hunk_0
