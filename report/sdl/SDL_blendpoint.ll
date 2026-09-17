Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_blendpoint?download=true
begin_hunk_0_@SDL_BlendPoint_XRGB8888:bb.a
  %.zext148 = zext nneg i16 %i.dm to i32
  %i.dn = zext i8 %6 to i32
  %i.do = mul nuw nsw i32 %i.dg, %i.dn
  %.lhs.trunc149 = trunc nuw i32 %i.do to i16
  %i.dp = udiv i16 %.lhs.trunc149, 255
  %.zext150 = zext nneg i16 %i.dp to i32
  %i.dq = shl nuw nsw i32 %.zext146, 16
  %i.dr = shl nuw nsw i32 %.zext148, 8
  %i.ds = or i32 %i.dr, %.zext150
  %i.dt = or i32 %i.ds, %i.dq
  store i32 %i.dt, ptr %i.da, align 4
  br label %bb.h

bb.f:                                             ; preds = %.split
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dx = load i32, ptr %i.dw, align 8
  %i.dy = mul nsw i32 %i.dx, %2
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds i8, ptr %i.dv, i64 %i.dz
  %i.eb = shl nsw i32 %1, 2
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds i8, ptr %i.ea, i64 %i.ec ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4            ; 3 uses
  %i.ef = lshr i32 %i.ee, 16
  %i.eg = and i32 %i.ef, 255                      ; 2 uses
  %i.eh = lshr i32 %i.ee, 8
  %i.ei = zext i8 %4 to i32
  %i.ej = mul nuw nsw i32 %i.eg, %i.ei
  %.lhs.trunc151 = trunc nuw i32 %i.ej to i16
  %i.ek = udiv i16 %.lhs.trunc151, 255
  %i.el = mul nuw nsw i32 %i.eg, %i.b
  %.lhs.trunc153 = trunc nuw i32 %i.el to i16
  %i.em = udiv i16 %.lhs.trunc153, 255
  %narrow = add nuw nsw i16 %i.ek, %i.em
  %i.en = tail call i16 @llvm.umin.i16(i16 %narrow, i16 255)
  %spec.store.select6 = zext nneg i16 %i.en to i32
  %i.eo = zext i8 %5 to i32
  %i.ep = zext i8 %6 to i32
  %i.eq = and i32 %i.ee, 255                      ; 2 uses
  %i.er = and i32 %i.eh, 255                      ; 2 uses
  %i.es = mul nuw nsw i32 %i.eq, %i.ep
  %i.et = mul nuw nsw i32 %i.er, %i.eo
  %.lhs.trunc159 = trunc nuw i32 %i.es to i16
  %.lhs.trunc155 = trunc nuw i32 %i.et to i16
  %i.eu = insertelement <2 x i16> poison, i16 %.lhs.trunc155, i64 0
  %i.ev = insertelement <2 x i16> %i.eu, i16 %.lhs.trunc159, i64 1
  %i.ew = udiv <2 x i16> %i.ev, splat (i16 255)
  %i.ex = mul nuw nsw i32 %i.eq, %i.b
  %i.ey = mul nuw nsw i32 %i.er, %i.b
  %.lhs.trunc161 = trunc nuw i32 %i.ex to i16
  %.lhs.trunc157 = trunc nuw i32 %i.ey to i16
  %i.ez = insertelement <2 x i16> poison, i16 %.lhs.trunc157, i64 0
  %i.fa = insertelement <2 x i16> %i.ez, i16 %.lhs.trunc161, i64 1
  %i.fb = udiv <2 x i16> %i.fa, splat (i16 255)
  %i.fc = add nuw nsw <2 x i16> %i.ew, %i.fb
  %i.fd = tail call <2 x i16> @llvm.umin.v2i16(<2 x i16> %i.fc, <2 x i16> splat (i16 255)) ; 2 uses
  %i.fe = extractelement <2 x i16> %i.fd, i64 1
  %spec.store.select9 = zext nneg i16 %i.fe to i32
  %i.ff = shl nuw nsw i32 %spec.store.select6, 16
  %i.fg = extractelement <2 x i16> %i.fd, i64 0
  %i.fh = shl nuw i16 %i.fg, 8
  %i.fi = zext i16 %i.fh to i32
  %i.fj = or disjoint i32 %i.ff, %i.fi
  %i.fk = or disjoint i32 %i.fj, %spec.store.select9
  store i32 %i.fk, ptr %i.ed, align 4
  br label %bb.h

bb.g:                                             ; preds = %.split, %bb.a
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fo = load i32, ptr %i.fn, align 8
  %i.fp = mul nsw i32 %i.fo, %2
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds i8, ptr %i.fm, i64 %i.fq
  %i.fs = shl nsw i32 %1, 2
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds i8, ptr %i.fr, i64 %i.ft
  %i.fv = zext i8 %4 to i32
  %i.fw = zext i8 %5 to i32
  %i.fx = zext i8 %6 to i32
  %i.fy = shl nuw nsw i32 %i.fv, 16
  %i.fz = shl nuw nsw i32 %i.fw, 8
  %i.ga = or disjoint i32 %i.fz, %i.fy
  %i.gb = or disjoint i32 %i.ga, %i.fx
  store i32 %i.gb, ptr %i.fu, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @SDL_BlendPoint_ARGB8888(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7) unnamed_addr #2 {
bb.a:
  %i.a = zext i8 %7 to i32                        ; 4 uses
  %i.b = xor i32 %i.a, 255                        ; 11 uses
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %3)
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %.split, label %bb.g

.split:                                           ; preds = %bb.a
  %i.e = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %3, i1 true)
  switch i32 %i.e, label %bb.g [
    i32 0, label %bb.b
    i32 4, label %bb.c
    i32 1, label %bb.d
    i32 5, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.b:                                             ; preds = %.split
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8
  %i.j = mul nsw i32 %i.i, %2
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 %i.k
  %i.m = shl nsw i32 %1, 2
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 %i.n ; 2 uses
  %i.p = insertelement <4 x i8> poison, i8 %5, i64 0
  %i.q = insertelement <4 x i8> %i.p, i8 %4, i64 1
  %i.r = zext i8 %6 to i32
  %i.s = load i32, ptr %i.o, align 4              ; 4 uses
  %i.t = lshr i32 %i.s, 24
  %i.u = lshr i32 %i.s, 16
  %i.v = lshr i32 %i.s, 8
  %i.w = and i32 %i.u, 255
  %i.x = and i32 %i.v, 255
  %i.y = and i32 %i.s, 255
  %i.z = mul nuw nsw i32 %i.t, %i.b
  %i.aa = mul nuw nsw i32 %i.w, %i.b
  %i.ab = mul nuw nsw i32 %i.x, %i.b
  %i.ac = mul nuw nsw i32 %i.y, %i.b
  %.lhs.trunc150 = trunc nuw i32 %i.z to i16
  %.lhs.trunc = trunc nuw i32 %i.aa to i16
  %.lhs.trunc146 = trunc nuw i32 %i.ab to i16
  %.lhs.trunc148 = trunc nuw i32 %i.ac to i16
  %i.ad = insertelement <4 x i16> poison, i16 %.lhs.trunc148, i64 0
  %i.ae = insertelement <4 x i16> %i.ad, i16 %.lhs.trunc146, i64 1
  %i.af = insertelement <4 x i16> %i.ae, i16 %.lhs.trunc, i64 2
  %i.ag = insertelement <4 x i16> %i.af, i16 %.lhs.trunc150, i64 3
  %i.ah = udiv <4 x i16> %i.ag, splat (i16 255)
  %i.ai = zext nneg <4 x i16> %i.ah to <4 x i32>
  %i.aj = insertelement <4 x i32> poison, i32 %i.r, i64 0
  %i.ak = zext <4 x i8> %i.q to <4 x i32>
  %i.al = shufflevector <4 x i32> %i.aj, <4 x i32> %i.ak, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.am = insertelement <4 x i32> %i.al, i32 %i.a, i64 3
  %i.an = add nuw nsw <4 x i32> %i.am, %i.ai
  %i.ao = shl <4 x i32> %i.an, <i32 0, i32 8, i32 16, i32 24>
  %i.ap = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ao)
  store i32 %i.ap, ptr %i.o, align 4
  br label %bb.h

bb.c:                                             ; preds = %.split
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load i32, ptr %i.as, align 8
  %i.au = mul nsw i32 %i.at, %2
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds i8, ptr %i.ar, i64 %i.av
  %i.ax = shl nsw i32 %1, 2
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 %i.ay ; 2 uses
  %i.ba = insertelement <4 x i8> poison, i8 %5, i64 0
  %i.bb = insertelement <4 x i8> %i.ba, i8 %4, i64 1
  %i.bc = zext i8 %6 to i32
  %i.bd = load i32, ptr %i.az, align 4            ; 4 uses
  %i.be = lshr i32 %i.bd, 24
  %i.bf = lshr i32 %i.bd, 16
  %i.bg = lshr i32 %i.bd, 8
  %i.bh = and i32 %i.bf, 255
  %i.bi = and i32 %i.bg, 255
  %i.bj = and i32 %i.bd, 255
  %i.bk = mul nuw nsw i32 %i.be, %i.b
  %i.bl = mul nuw nsw i32 %i.bh, %i.b
  %i.bm = mul nuw nsw i32 %i.bi, %i.b
  %i.bn = mul nuw nsw i32 %i.bj, %i.b
  %.lhs.trunc158 = trunc nuw i32 %i.bk to i16
  %.lhs.trunc152 = trunc nuw i32 %i.bl to i16
  %.lhs.trunc154 = trunc nuw i32 %i.bm to i16
  %.lhs.trunc156 = trunc nuw i32 %i.bn to i16
  %i.bo = insertelement <4 x i16> poison, i16 %.lhs.trunc156, i64 0
  %i.bp = insertelement <4 x i16> %i.bo, i16 %.lhs.trunc154, i64 1
  %i.bq = insertelement <4 x i16> %i.bp, i16 %.lhs.trunc152, i64 2
  %i.br = insertelement <4 x i16> %i.bq, i16 %.lhs.trunc158, i64 3
  %i.bs = udiv <4 x i16> %i.br, splat (i16 255)
  %i.bt = zext nneg <4 x i16> %i.bs to <4 x i32>
  %i.bu = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %i.bv = zext <4 x i8> %i.bb to <4 x i32>
  %i.bw = shufflevector <4 x i32> %i.bu, <4 x i32> %i.bv, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.bx = insertelement <4 x i32> %i.bw, i32 %i.a, i64 3
  %i.by = add nuw nsw <4 x i32> %i.bx, %i.bt
  %i.bz = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.by, <4 x i32> splat (i32 255))
  %8 = shl nuw <4 x i32> %i.bz, <i32 0, i32 8, i32 16, i32 24>
  %9 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %8)
  store i32 %9, ptr %i.az, align 4
  br label %bb.h

bb.d:                                             ; preds = %.split, %.split
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = mul nsw i32 %i.cd, %2
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds i8, ptr %i.cb, i64 %i.cf
  %i.ch = shl nsw i32 %1, 2
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds i8, ptr %i.cg, i64 %i.ci ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4            ; 4 uses
  %i.cl = lshr i32 %i.ck, 16
  %i.cm = and i32 %i.cl, 255
  %i.cn = lshr i32 %i.ck, 8
  %i.co = and i32 %i.cn, 255
  %i.cp = and i32 %i.ck, 255
  %i.cq = and i32 %i.ck, -16777216
  %i.cr = zext i8 %4 to i32
  %i.cs = add nuw nsw i32 %i.cm, %i.cr
  %spec.store.select5 = tail call i32 @llvm.umin.i32(i32 %i.cs, i32 255)
  %i.ct = zext i8 %5 to i32
  %i.cu = add nuw nsw i32 %i.co, %i.ct
  %spec.store.select2 = tail call i32 @llvm.umin.i32(i32 %i.cu, i32 255)
  %i.cv = zext i8 %6 to i32
  %i.cw = add nuw nsw i32 %i.cp, %i.cv
  %spec.store.select8 = tail call i32 @llvm.umin.i32(i32 %i.cw, i32 255)
  %i.cx = shl nuw nsw i32 %spec.store.select5, 16
  %i.cy = or disjoint i32 %i.cx, %i.cq
  %i.cz = shl nuw nsw i32 %spec.store.select2, 8
  %i.da = or disjoint i32 %i.cy, %i.cz
  %i.db = or disjoint i32 %i.da, %spec.store.select8
  store i32 %i.db, ptr %i.cj, align 4
  br label %bb.h

bb.e:                                             ; preds = %.split
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.df = load i32, ptr %i.de, align 8
  %i.dg = mul nsw i32 %i.df, %2
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds i8, ptr %i.dd, i64 %i.dh
  %i.dj = shl nsw i32 %1, 2
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds i8, ptr %i.di, i64 %i.dk ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4            ; 4 uses
  %i.dn = lshr i32 %i.dm, 16
  %i.do = and i32 %i.dn, 255
  %i.dp = lshr i32 %i.dm, 8
  %i.dq = and i32 %i.dp, 255
  %i.dr = and i32 %i.dm, 255
  %i.ds = and i32 %i.dm, -16777216
  %i.dt = zext i8 %4 to i32
  %i.du = mul nuw nsw i32 %i.do, %i.dt
  %.lhs.trunc160 = trunc nuw i32 %i.du to i16
  %i.dv = udiv i16 %.lhs.trunc160, 255
  %.zext161 = zext nneg i16 %i.dv to i32
  %i.dw = zext i8 %5 to i32
  %i.dx = mul nuw nsw i32 %i.dq, %i.dw
  %.lhs.trunc162 = trunc nuw i32 %i.dx to i16
  %i.dy = udiv i16 %.lhs.trunc162, 255
  %.zext163 = zext nneg i16 %i.dy to i32
  %i.dz = zext i8 %6 to i32
  %i.ea = mul nuw nsw i32 %i.dr, %i.dz
  %.lhs.trunc164 = trunc nuw i32 %i.ea to i16
  %i.eb = udiv i16 %.lhs.trunc164, 255
  %.zext165 = zext nneg i16 %i.eb to i32
  %i.ec = shl nuw nsw i32 %.zext161, 16
  %i.ed = shl nuw nsw i32 %.zext163, 8
  %i.ee = or disjoint i32 %i.ds, %.zext165
  %i.ef = or i32 %i.ee, %i.ec
  %i.eg = or i32 %i.ef, %i.ed
  store i32 %i.eg, ptr %i.dl, align 4
  br label %bb.h

bb.f:                                             ; preds = %.split
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ek = load i32, ptr %i.ej, align 8
  %i.el = mul nsw i32 %i.ek, %2
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds i8, ptr %i.ei, i64 %i.em
  %i.eo = shl nsw i32 %1, 2
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds i8, ptr %i.en, i64 %i.ep ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4            ; 4 uses
  %i.es = lshr i32 %i.er, 16
  %i.et = and i32 %i.es, 255                      ; 2 uses
  %i.eu = lshr i32 %i.er, 8
  %i.ev = and i32 %i.er, -16777216
  %i.ew = zext i8 %4 to i32
  %i.ex = mul nuw nsw i32 %i.et, %i.ew
  %.lhs.trunc166 = trunc nuw i32 %i.ex to i16
  %i.ey = udiv i16 %.lhs.trunc166, 255
  %i.ez = mul nuw nsw i32 %i.et, %i.b
  %.lhs.trunc168 = trunc nuw i32 %i.ez to i16
  %i.fa = udiv i16 %.lhs.trunc168, 255
  %narrow = add nuw nsw i16 %i.ey, %i.fa
  %i.fb = tail call i16 @llvm.umin.i16(i16 %narrow, i16 255)
  %spec.store.select6 = zext nneg i16 %i.fb to i32
  %i.fc = zext i8 %5 to i32
  %i.fd = zext i8 %6 to i32
  %i.fe = and i32 %i.er, 255                      ; 2 uses
  %i.ff = and i32 %i.eu, 255                      ; 2 uses
  %i.fg = mul nuw nsw i32 %i.fe, %i.fd
  %i.fh = mul nuw nsw i32 %i.ff, %i.fc
  %.lhs.trunc174 = trunc nuw i32 %i.fg to i16
  %.lhs.trunc170 = trunc nuw i32 %i.fh to i16
  %i.fi = insertelement <2 x i16> poison, i16 %.lhs.trunc170, i64 0
  %i.fj = insertelement <2 x i16> %i.fi, i16 %.lhs.trunc174, i64 1
  %i.fk = udiv <2 x i16> %i.fj, splat (i16 255)
  %i.fl = mul nuw nsw i32 %i.fe, %i.b
  %i.fm = mul nuw nsw i32 %i.ff, %i.b
  %.lhs.trunc176 = trunc nuw i32 %i.fl to i16
  %.lhs.trunc172 = trunc nuw i32 %i.fm to i16
  %i.fn = insertelement <2 x i16> poison, i16 %.lhs.trunc172, i64 0
  %i.fo = insertelement <2 x i16> %i.fn, i16 %.lhs.trunc176, i64 1
  %i.fp = udiv <2 x i16> %i.fo, splat (i16 255)
  %i.fq = add nuw nsw <2 x i16> %i.fk, %i.fp
  %i.fr = tail call <2 x i16> @llvm.umin.v2i16(<2 x i16> %i.fq, <2 x i16> splat (i16 255)) ; 2 uses
  %i.fs = extractelement <2 x i16> %i.fr, i64 1
  %spec.store.select9 = zext nneg i16 %i.fs to i32
  %i.ft = shl nuw nsw i32 %spec.store.select6, 16
  %i.fu = or disjoint i32 %i.ft, %i.ev
  %i.fv = extractelement <2 x i16> %i.fr, i64 0
  %i.fw = shl nuw i16 %i.fv, 8
  %i.fx = zext i16 %i.fw to i32
  %i.fy = or disjoint i32 %i.fu, %i.fx
  %i.fz = or disjoint i32 %i.fy, %spec.store.select9
  store i32 %i.fz, ptr %i.eq, align 4
  br label %bb.h

bb.g:                                             ; preds = %.split, %bb.a
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gd = load i32, ptr %i.gc, align 8
  %i.ge = mul nsw i32 %i.gd, %2
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds i8, ptr %i.gb, i64 %i.gf
  %i.gh = shl nsw i32 %1, 2
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds i8, ptr %i.gg, i64 %i.gi
  %i.gk = zext i8 %4 to i32
  %i.gl = zext i8 %5 to i32
  %i.gm = zext i8 %6 to i32
  %i.gn = shl nuw i32 %i.a, 24
  %i.go = shl nuw nsw i32 %i.gk, 16
  %i.gp = or disjoint i32 %i.gn, %i.go
  %i.gq = shl nuw nsw i32 %i.gl, 8
  %i.gr = or disjoint i32 %i.gp, %i.gq
  %i.gs = or disjoint i32 %i.gr, %i.gm
  store i32 %i.gs, ptr %i.gj, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 true
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @SDL_BlendPoint_RGB(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 115 uses
  %i.c = xor i8 %7, -1
  %i.d = zext i8 %i.c to i32                      ; 18 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.f = load i8, ptr %i.e, align 1
  switch i8 %i.f, label %bb.p [
    i8 2, label %bb.b
    i8 4, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %3)
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %.split, label %bb.h

.split:                                           ; preds = %bb.b
  %i.i = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %3, i1 true)
  switch i32 %i.i, label %bb.h [
    i32 0, label %bb.c
    i32 4, label %bb.d
    i32 1, label %bb.e
    i32 5, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.c:                                             ; preds = %.split
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8
  %i.n = mul nsw i32 %i.m, %2
  %i.o = sext i32 %i.n to i64
end_hunk_0
