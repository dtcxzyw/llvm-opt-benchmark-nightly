inline.NumInlined: 59
inline.NumDeleted: 18
begin_hunk_0_@YuvToBgraRow:bb.a
  %i.nz = trunc i32 %i.ny to i8
  %i.oa = getelementptr inbounds nuw i8, ptr %.021.lcssa, i64 1
  store i8 %i.nz, ptr %i.oa, align 1, !tbaa !12
  %i.ob = mul nuw nsw i32 %i.na, 26149
  %i.oc = lshr i32 %i.ob, 8
  %i.od = add nuw nsw i32 %i.oc, %i.nc            ; 2 uses
  %i.oe = add nsw i32 %i.od, -14234               ; 2 uses
  %i.of = icmp ult i32 %i.oe, 16384
  %i.og = lshr i32 %i.oe, 6
  %i.oh = icmp samesign ult i32 %i.od, 14234
  %i.oi = select i1 %i.oh, i32 0, i32 255
  %i.oj = select i1 %i.of, i32 %i.og, i32 %i.oi
  %i.ok = trunc i32 %i.oj to i8
  %i.ol = getelementptr inbounds nuw i8, ptr %.021.lcssa, i64 2
  store i8 %i.ok, ptr %i.ol, align 1, !tbaa !12
  %i.om = getelementptr inbounds nuw i8, ptr %.021.lcssa, i64 3
  store i8 -1, ptr %i.om, align 1, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @YuvToArgbRow(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef writeonly captures(address) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = shl i32 %4, 2
  %i.b = and i32 %i.a, -8                         ; 2 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c ; 3 uses
  %.not26 = icmp eq i32 %i.b, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = add nsw i64 %i.c, -8                     ; 2 uses
  %i.f = lshr exact i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.e, 120
  br i1 %min.iters.check, label %.lr.ph.preheader78, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.g, 4611686018427387888      ; 6 uses
  %i.h = shl nuw nsw i64 %n.vec, 1
  %i.i = getelementptr i8, ptr %0, i64 %i.h       ; 2 uses
  %i.j = getelementptr i8, ptr %1, i64 %n.vec     ; 2 uses
  %i.k = shl i64 %n.vec, 3
  %i.l = getelementptr i8, ptr %3, i64 %i.k
  %i.m = getelementptr i8, ptr %2, i64 %n.vec     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.n = shl i64 %index, 1                        ; 16 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.n  ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.o, i64 2
  %i.p = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep42 = getelementptr i8, ptr %i.p, i64 4
  %i.q = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep43 = getelementptr i8, ptr %i.q, i64 6
  %i.r = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep44 = getelementptr i8, ptr %i.r, i64 8
  %i.s = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.s, i64 10
  %i.t = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep46 = getelementptr i8, ptr %i.t, i64 12
  %i.u = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep47 = getelementptr i8, ptr %i.u, i64 14
  %i.v = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.v, i64 16
  %i.w = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep49 = getelementptr i8, ptr %i.w, i64 18
  %i.x = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep50 = getelementptr i8, ptr %i.x, i64 20
  %i.y = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep51 = getelementptr i8, ptr %i.y, i64 22
  %i.z = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %next.gep52 = getelementptr i8, ptr %i.z, i64 24
  %i.aa = getelementptr i8, ptr %0, i64 %i.n      ; 2 uses
  %next.gep53 = getelementptr i8, ptr %i.aa, i64 26
  %i.ab = getelementptr i8, ptr %0, i64 %i.n      ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.ab, i64 28
  %i.ac = getelementptr i8, ptr %0, i64 %i.n      ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.ac, i64 30
  %next.gep56 = getelementptr i8, ptr %1, i64 %index
  %i.ad = shl i64 %index, 3                       ; 16 uses
  %next.gep57 = getelementptr i8, ptr %3, i64 %i.ad ; 8 uses
  %i.ae = getelementptr i8, ptr %3, i64 %i.ad     ; 8 uses
  %next.gep58 = getelementptr i8, ptr %i.ae, i64 8
  %i.af = getelementptr i8, ptr %3, i64 %i.ad     ; 8 uses
  %next.gep59 = getelementptr i8, ptr %i.af, i64 16
  %i.ag = getelementptr i8, ptr %3, i64 %i.ad     ; 8 uses
  %next.gep60 = getelementptr i8, ptr %i.ag, i64 24
  %i.ah = getelementptr i8, ptr %3, i64 %i.ad     ; 8 uses
  %next.gep61 = getelementptr i8, ptr %i.ah, i64 32
  %i.ai = getelementptr i8, ptr %3, i64 %i.ad     ; 8 uses
  %next.gep62 = getelementptr i8, ptr %i.ai, i64 40
  %i.aj = getelementptr i8, ptr %3, i64 %i.ad     ; 8 uses
  %next.gep63 = getelementptr i8, ptr %i.aj, i64 48
  %i.ak = getelementptr i8, ptr %3, i64 %i.ad     ; 8 uses
  %next.gep64 = getelementptr i8, ptr %i.ak, i64 56
  %i.al = getelementptr i8, ptr %3, i64 %i.ad     ; 8 uses
  %next.gep65 = getelementptr i8, ptr %i.al, i64 64
  %i.am = getelementptr i8, ptr %3, i64 %i.ad     ; 8 uses
  %next.gep66 = getelementptr i8, ptr %i.am, i64 72
  %i.an = getelementptr i8, ptr %3, i64 %i.ad     ; 8 uses
  %next.gep67 = getelementptr i8, ptr %i.an, i64 80
  %i.ao = getelementptr i8, ptr %3, i64 %i.ad     ; 8 uses
  %next.gep68 = getelementptr i8, ptr %i.ao, i64 88
  %i.ap = getelementptr i8, ptr %3, i64 %i.ad     ; 8 uses
  %next.gep69 = getelementptr i8, ptr %i.ap, i64 96
  %i.aq = getelementptr i8, ptr %3, i64 %i.ad     ; 8 uses
  %next.gep70 = getelementptr i8, ptr %i.aq, i64 104
  %i.ar = getelementptr i8, ptr %3, i64 %i.ad     ; 8 uses
  %next.gep71 = getelementptr i8, ptr %i.ar, i64 112
  %i.as = getelementptr i8, ptr %3, i64 %i.ad     ; 8 uses
  %next.gep72 = getelementptr i8, ptr %i.as, i64 120
  %next.gep73 = getelementptr i8, ptr %2, i64 %index
  %i.at = load i8, ptr %next.gep, align 1, !tbaa !12
  %i.au = load i8, ptr %next.gep41, align 1, !tbaa !12
  %i.av = load i8, ptr %next.gep42, align 1, !tbaa !12
  %i.aw = load i8, ptr %next.gep43, align 1, !tbaa !12
  %i.ax = load i8, ptr %next.gep44, align 1, !tbaa !12
  %i.ay = load i8, ptr %next.gep45, align 1, !tbaa !12
  %i.az = load i8, ptr %next.gep46, align 1, !tbaa !12
  %i.ba = load i8, ptr %next.gep47, align 1, !tbaa !12
  %i.bb = load i8, ptr %next.gep48, align 1, !tbaa !12
  %i.bc = load i8, ptr %next.gep49, align 1, !tbaa !12
  %i.bd = load i8, ptr %next.gep50, align 1, !tbaa !12
  %i.be = load i8, ptr %next.gep51, align 1, !tbaa !12
  %i.bf = load i8, ptr %next.gep52, align 1, !tbaa !12
  %i.bg = load i8, ptr %next.gep53, align 1, !tbaa !12
  %i.bh = load i8, ptr %next.gep54, align 1, !tbaa !12
  %i.bi = load i8, ptr %next.gep55, align 1, !tbaa !12
  %i.bj = insertelement <16 x i8> poison, i8 %i.at, i64 0
  %i.bk = insertelement <16 x i8> %i.bj, i8 %i.au, i64 1
  %i.bl = insertelement <16 x i8> %i.bk, i8 %i.av, i64 2
  %i.bm = insertelement <16 x i8> %i.bl, i8 %i.aw, i64 3
  %i.bn = insertelement <16 x i8> %i.bm, i8 %i.ax, i64 4
  %i.bo = insertelement <16 x i8> %i.bn, i8 %i.ay, i64 5
  %i.bp = insertelement <16 x i8> %i.bo, i8 %i.az, i64 6
  %i.bq = insertelement <16 x i8> %i.bp, i8 %i.ba, i64 7
  %i.br = insertelement <16 x i8> %i.bq, i8 %i.bb, i64 8
  %i.bs = insertelement <16 x i8> %i.br, i8 %i.bc, i64 9
  %i.bt = insertelement <16 x i8> %i.bs, i8 %i.bd, i64 10
  %i.bu = insertelement <16 x i8> %i.bt, i8 %i.be, i64 11
  %i.bv = insertelement <16 x i8> %i.bu, i8 %i.bf, i64 12
  %i.bw = insertelement <16 x i8> %i.bv, i8 %i.bg, i64 13
  %i.bx = insertelement <16 x i8> %i.bw, i8 %i.bh, i64 14
  %i.by = insertelement <16 x i8> %i.bx, i8 %i.bi, i64 15
  %wide.load = load <16 x i8>, ptr %next.gep56, align 1, !tbaa !12
  %wide.load74 = load <16 x i8>, ptr %next.gep73, align 1, !tbaa !12
  store i8 -1, ptr %next.gep57, align 1, !tbaa !12
  store i8 -1, ptr %next.gep58, align 1, !tbaa !12
  store i8 -1, ptr %next.gep59, align 1, !tbaa !12
  store i8 -1, ptr %next.gep60, align 1, !tbaa !12
  store i8 -1, ptr %next.gep61, align 1, !tbaa !12
  store i8 -1, ptr %next.gep62, align 1, !tbaa !12
  store i8 -1, ptr %next.gep63, align 1, !tbaa !12
  store i8 -1, ptr %next.gep64, align 1, !tbaa !12
  store i8 -1, ptr %next.gep65, align 1, !tbaa !12
  store i8 -1, ptr %next.gep66, align 1, !tbaa !12
  store i8 -1, ptr %next.gep67, align 1, !tbaa !12
  store i8 -1, ptr %next.gep68, align 1, !tbaa !12
  store i8 -1, ptr %next.gep69, align 1, !tbaa !12
  store i8 -1, ptr %next.gep70, align 1, !tbaa !12
  store i8 -1, ptr %next.gep71, align 1, !tbaa !12
  store i8 -1, ptr %next.gep72, align 1, !tbaa !12
  %i.bz = zext <16 x i8> %i.by to <16 x i32>
  %i.ca = zext <16 x i8> %wide.load to <16 x i32> ; 2 uses
  %i.cb = zext <16 x i8> %wide.load74 to <16 x i32> ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %next.gep57, i64 1
  %i.cd = getelementptr i8, ptr %i.ae, i64 9
  %i.ce = getelementptr i8, ptr %i.af, i64 17
  %i.cf = getelementptr i8, ptr %i.ag, i64 25
  %i.cg = getelementptr i8, ptr %i.ah, i64 33
  %i.ch = getelementptr i8, ptr %i.ai, i64 41
  %i.ci = getelementptr i8, ptr %i.aj, i64 49
  %i.cj = getelementptr i8, ptr %i.ak, i64 57
  %i.ck = getelementptr i8, ptr %i.al, i64 65
  %i.cl = getelementptr i8, ptr %i.am, i64 73
  %i.cm = getelementptr i8, ptr %i.an, i64 81
  %i.cn = getelementptr i8, ptr %i.ao, i64 89
  %i.co = getelementptr i8, ptr %i.ap, i64 97
  %i.cp = getelementptr i8, ptr %i.aq, i64 105
  %i.cq = getelementptr i8, ptr %i.ar, i64 113
  %i.cr = getelementptr i8, ptr %i.as, i64 121
  %i.cs = mul nuw nsw <16 x i32> %i.bz, splat (i32 19077)
  %i.ct = lshr <16 x i32> %i.cs, splat (i32 8)    ; 3 uses
  %i.cu = mul nuw nsw <16 x i32> %i.cb, splat (i32 26149)
  %i.cv = lshr <16 x i32> %i.cu, splat (i32 8)    ; 2 uses
  %i.cw = add nuw nsw <16 x i32> %i.cv, %i.ct     ; 2 uses
  %i.cx = add nsw <16 x i32> %i.cw, splat (i32 -14234) ; 2 uses
  %i.cy = icmp ult <16 x i32> %i.cx, splat (i32 16384)
  %i.cz = lshr <16 x i32> %i.cx, splat (i32 6)
  %i.da = icmp samesign ult <16 x i32> %i.cw, splat (i32 14234)
  %i.db = select <16 x i1> %i.da, <16 x i32> zeroinitializer, <16 x i32> splat (i32 255)
  %i.dc = select <16 x i1> %i.cy, <16 x i32> %i.cz, <16 x i32> %i.db
  %i.dd = trunc <16 x i32> %i.dc to <16 x i8>     ; 16 uses
  %i.de = extractelement <16 x i8> %i.dd, i64 0
  %5 = extractelement <16 x i8> %i.dd, i64 1
  %i.df = extractelement <16 x i8> %i.dd, i64 2
  %6 = extractelement <16 x i8> %i.dd, i64 3
  %i.dg = extractelement <16 x i8> %i.dd, i64 4
  %7 = extractelement <16 x i8> %i.dd, i64 5
  %i.dh = extractelement <16 x i8> %i.dd, i64 6
  %8 = extractelement <16 x i8> %i.dd, i64 7
  %i.di = extractelement <16 x i8> %i.dd, i64 8
  %9 = extractelement <16 x i8> %i.dd, i64 9
  %i.dj = extractelement <16 x i8> %i.dd, i64 10
  %10 = extractelement <16 x i8> %i.dd, i64 11
  %i.dk = extractelement <16 x i8> %i.dd, i64 12
  %11 = extractelement <16 x i8> %i.dd, i64 13
  %i.dl = extractelement <16 x i8> %i.dd, i64 14
  %12 = extractelement <16 x i8> %i.dd, i64 15
  store i8 %i.de, ptr %i.cc, align 1, !tbaa !12
  store i8 %5, ptr %i.cd, align 1, !tbaa !12
  store i8 %i.df, ptr %i.ce, align 1, !tbaa !12
  store i8 %6, ptr %i.cf, align 1, !tbaa !12
  store i8 %i.dg, ptr %i.cg, align 1, !tbaa !12
  store i8 %7, ptr %i.ch, align 1, !tbaa !12
  store i8 %i.dh, ptr %i.ci, align 1, !tbaa !12
  store i8 %8, ptr %i.cj, align 1, !tbaa !12
  store i8 %i.di, ptr %i.ck, align 1, !tbaa !12
  store i8 %9, ptr %i.cl, align 1, !tbaa !12
  store i8 %i.dj, ptr %i.cm, align 1, !tbaa !12
  store i8 %10, ptr %i.cn, align 1, !tbaa !12
  store i8 %i.dk, ptr %i.co, align 1, !tbaa !12
  store i8 %11, ptr %i.cp, align 1, !tbaa !12
  store i8 %i.dl, ptr %i.cq, align 1, !tbaa !12
  store i8 %12, ptr %i.cr, align 1, !tbaa !12
  %i.dm = mul nuw nsw <16 x i32> %i.ca, splat (i32 6419)
  %i.dn = lshr <16 x i32> %i.dm, splat (i32 8)
  %i.do = mul nuw nsw <16 x i32> %i.cb, splat (i32 13320)
  %i.dp = lshr <16 x i32> %i.do, splat (i32 8)
  %i.dq = add nuw nsw <16 x i32> %i.dp, %i.dn     ; 2 uses
  %i.dr = sub nsw <16 x i32> %i.ct, %i.dq         ; 2 uses
  %i.ds = add nsw <16 x i32> %i.dr, splat (i32 8708) ; 2 uses
  %i.dt = icmp ult <16 x i32> %i.ds, splat (i32 16384)
  %i.du = lshr <16 x i32> %i.ds, splat (i32 6)
  %i.dv = icmp slt <16 x i32> %i.dr, splat (i32 -8708)
  %i.dw = select <16 x i1> %i.dv, <16 x i32> zeroinitializer, <16 x i32> splat (i32 255)
  %i.dx = select <16 x i1> %i.dt, <16 x i32> %i.du, <16 x i32> %i.dw
  %i.dy = trunc <16 x i32> %i.dx to <16 x i8>     ; 16 uses
  %13 = extractelement <16 x i8> %i.dy, i64 0
  %14 = extractelement <16 x i8> %i.dy, i64 1
  %15 = extractelement <16 x i8> %i.dy, i64 2
  %16 = extractelement <16 x i8> %i.dy, i64 3
  %17 = extractelement <16 x i8> %i.dy, i64 4
  %18 = extractelement <16 x i8> %i.dy, i64 5
  %19 = extractelement <16 x i8> %i.dy, i64 6
  %20 = extractelement <16 x i8> %i.dy, i64 7
  %21 = extractelement <16 x i8> %i.dy, i64 8
  %22 = extractelement <16 x i8> %i.dy, i64 9
  %23 = extractelement <16 x i8> %i.dy, i64 10
  %24 = extractelement <16 x i8> %i.dy, i64 11
  %25 = extractelement <16 x i8> %i.dy, i64 12
  %26 = extractelement <16 x i8> %i.dy, i64 13
  %27 = extractelement <16 x i8> %i.dy, i64 14
  %28 = extractelement <16 x i8> %i.dy, i64 15
  %i.dz = getelementptr inbounds nuw i8, ptr %next.gep57, i64 2
  %i.ea = getelementptr i8, ptr %i.ae, i64 10
  %i.eb = getelementptr i8, ptr %i.af, i64 18
  %i.ec = getelementptr i8, ptr %i.ag, i64 26
  %i.ed = getelementptr i8, ptr %i.ah, i64 34
  %i.ee = getelementptr i8, ptr %i.ai, i64 42
  %i.ef = getelementptr i8, ptr %i.aj, i64 50
  %i.eg = getelementptr i8, ptr %i.ak, i64 58
  %i.eh = getelementptr i8, ptr %i.al, i64 66
  %i.ei = getelementptr i8, ptr %i.am, i64 74
  %i.ej = getelementptr i8, ptr %i.an, i64 82
  %i.ek = getelementptr i8, ptr %i.ao, i64 90
  %i.el = getelementptr i8, ptr %i.ap, i64 98
  %i.em = getelementptr i8, ptr %i.aq, i64 106
  %i.en = getelementptr i8, ptr %i.ar, i64 114
  %i.eo = getelementptr i8, ptr %i.as, i64 122
  store i8 %13, ptr %i.dz, align 1, !tbaa !12
  store i8 %14, ptr %i.ea, align 1, !tbaa !12
  store i8 %15, ptr %i.eb, align 1, !tbaa !12
  store i8 %16, ptr %i.ec, align 1, !tbaa !12
  store i8 %17, ptr %i.ed, align 1, !tbaa !12
  store i8 %18, ptr %i.ee, align 1, !tbaa !12
  store i8 %19, ptr %i.ef, align 1, !tbaa !12
  store i8 %20, ptr %i.eg, align 1, !tbaa !12
  store i8 %21, ptr %i.eh, align 1, !tbaa !12
  store i8 %22, ptr %i.ei, align 1, !tbaa !12
  store i8 %23, ptr %i.ej, align 1, !tbaa !12
  store i8 %24, ptr %i.ek, align 1, !tbaa !12
  store i8 %25, ptr %i.el, align 1, !tbaa !12
  store i8 %26, ptr %i.em, align 1, !tbaa !12
  store i8 %27, ptr %i.en, align 1, !tbaa !12
  store i8 %28, ptr %i.eo, align 1, !tbaa !12
  %29 = mul nuw nsw <16 x i32> %i.ca, splat (i32 33050)
  %30 = lshr <16 x i32> %29, splat (i32 8)        ; 2 uses
  %31 = add nuw nsw <16 x i32> %30, %i.ct         ; 2 uses
  %32 = add nsw <16 x i32> %31, splat (i32 -17685) ; 2 uses
  %33 = icmp ult <16 x i32> %32, splat (i32 16384)
  %34 = lshr <16 x i32> %32, splat (i32 6)
  %35 = icmp samesign ult <16 x i32> %31, splat (i32 17685)
  %36 = select <16 x i1> %35, <16 x i32> zeroinitializer, <16 x i32> splat (i32 255)
  %37 = select <16 x i1> %33, <16 x i32> %34, <16 x i32> %36
  %38 = trunc <16 x i32> %37 to <16 x i8>         ; 16 uses
  %i.ep = extractelement <16 x i8> %38, i64 0
  %39 = extractelement <16 x i8> %38, i64 1
  %i.eq = extractelement <16 x i8> %38, i64 2
  %40 = extractelement <16 x i8> %38, i64 3
  %i.er = extractelement <16 x i8> %38, i64 4
  %41 = extractelement <16 x i8> %38, i64 5
  %42 = extractelement <16 x i8> %38, i64 6
  %43 = extractelement <16 x i8> %38, i64 7
  %44 = extractelement <16 x i8> %38, i64 8
  %45 = extractelement <16 x i8> %38, i64 9
  %46 = extractelement <16 x i8> %38, i64 10
  %47 = extractelement <16 x i8> %38, i64 11
  %48 = extractelement <16 x i8> %38, i64 12
  %49 = extractelement <16 x i8> %38, i64 13
  %50 = extractelement <16 x i8> %38, i64 14
  %51 = extractelement <16 x i8> %38, i64 15
  %i.es = getelementptr inbounds nuw i8, ptr %next.gep57, i64 3
  %i.et = getelementptr i8, ptr %i.ae, i64 11
  %i.eu = getelementptr i8, ptr %i.af, i64 19
  %i.ev = getelementptr i8, ptr %i.ag, i64 27
  %i.ew = getelementptr i8, ptr %i.ah, i64 35
  %i.ex = getelementptr i8, ptr %i.ai, i64 43
  %i.ey = getelementptr i8, ptr %i.aj, i64 51
  %i.ez = getelementptr i8, ptr %i.ak, i64 59
  %i.fa = getelementptr i8, ptr %i.al, i64 67
  %i.fb = getelementptr i8, ptr %i.am, i64 75
  %i.fc = getelementptr i8, ptr %i.an, i64 83
  %i.fd = getelementptr i8, ptr %i.ao, i64 91
  %i.fe = getelementptr i8, ptr %i.ap, i64 99
  %i.ff = getelementptr i8, ptr %i.aq, i64 107
  %i.fg = getelementptr i8, ptr %i.ar, i64 115
  %i.fh = getelementptr i8, ptr %i.as, i64 123
  store i8 %i.ep, ptr %i.es, align 1, !tbaa !12
  store i8 %39, ptr %i.et, align 1, !tbaa !12
  store i8 %i.eq, ptr %i.eu, align 1, !tbaa !12
  store i8 %40, ptr %i.ev, align 1, !tbaa !12
  store i8 %i.er, ptr %i.ew, align 1, !tbaa !12
  store i8 %41, ptr %i.ex, align 1, !tbaa !12
  store i8 %42, ptr %i.ey, align 1, !tbaa !12
  store i8 %43, ptr %i.ez, align 1, !tbaa !12
  store i8 %44, ptr %i.fa, align 1, !tbaa !12
  store i8 %45, ptr %i.fb, align 1, !tbaa !12
  store i8 %46, ptr %i.fc, align 1, !tbaa !12
  store i8 %47, ptr %i.fd, align 1, !tbaa !12
  store i8 %48, ptr %i.fe, align 1, !tbaa !12
  store i8 %49, ptr %i.ff, align 1, !tbaa !12
  store i8 %50, ptr %i.fg, align 1, !tbaa !12
  store i8 %51, ptr %i.fh, align 1, !tbaa !12
  %i.fi = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.fj = getelementptr i8, ptr %i.o, i64 3
  %i.fk = getelementptr i8, ptr %i.p, i64 5
  %i.fl = getelementptr i8, ptr %i.q, i64 7
  %i.fm = getelementptr i8, ptr %i.r, i64 9
  %i.fn = getelementptr i8, ptr %i.s, i64 11
  %i.fo = getelementptr i8, ptr %i.t, i64 13
  %i.fp = getelementptr i8, ptr %i.u, i64 15
  %i.fq = getelementptr i8, ptr %i.v, i64 17
  %i.fr = getelementptr i8, ptr %i.w, i64 19
  %i.fs = getelementptr i8, ptr %i.x, i64 21
  %i.ft = getelementptr i8, ptr %i.y, i64 23
  %i.fu = getelementptr i8, ptr %i.z, i64 25
  %i.fv = getelementptr i8, ptr %i.aa, i64 27
  %i.fw = getelementptr i8, ptr %i.ab, i64 29
  %i.fx = getelementptr i8, ptr %i.ac, i64 31
  %i.fy = load i8, ptr %i.fi, align 1, !tbaa !12
  %i.fz = load i8, ptr %i.fj, align 1, !tbaa !12
  %i.ga = load i8, ptr %i.fk, align 1, !tbaa !12
  %i.gb = load i8, ptr %i.fl, align 1, !tbaa !12
  %i.gc = load i8, ptr %i.fm, align 1, !tbaa !12
  %i.gd = load i8, ptr %i.fn, align 1, !tbaa !12
  %i.ge = load i8, ptr %i.fo, align 1, !tbaa !12
  %i.gf = load i8, ptr %i.fp, align 1, !tbaa !12
  %i.gg = load i8, ptr %i.fq, align 1, !tbaa !12
  %i.gh = load i8, ptr %i.fr, align 1, !tbaa !12
  %i.gi = load i8, ptr %i.fs, align 1, !tbaa !12
  %i.gj = load i8, ptr %i.ft, align 1, !tbaa !12
  %i.gk = load i8, ptr %i.fu, align 1, !tbaa !12
  %i.gl = load i8, ptr %i.fv, align 1, !tbaa !12
  %i.gm = load i8, ptr %i.fw, align 1, !tbaa !12
  %i.gn = load i8, ptr %i.fx, align 1, !tbaa !12
  %i.go = insertelement <16 x i8> poison, i8 %i.fy, i64 0
  %i.gp = insertelement <16 x i8> %i.go, i8 %i.fz, i64 1
  %i.gq = insertelement <16 x i8> %i.gp, i8 %i.ga, i64 2
  %i.gr = insertelement <16 x i8> %i.gq, i8 %i.gb, i64 3
  %i.gs = insertelement <16 x i8> %i.gr, i8 %i.gc, i64 4
  %i.gt = insertelement <16 x i8> %i.gs, i8 %i.gd, i64 5
  %i.gu = insertelement <16 x i8> %i.gt, i8 %i.ge, i64 6
  %i.gv = insertelement <16 x i8> %i.gu, i8 %i.gf, i64 7
  %i.gw = insertelement <16 x i8> %i.gv, i8 %i.gg, i64 8
  %i.gx = insertelement <16 x i8> %i.gw, i8 %i.gh, i64 9
  %i.gy = insertelement <16 x i8> %i.gx, i8 %i.gi, i64 10
  %i.gz = insertelement <16 x i8> %i.gy, i8 %i.gj, i64 11
  %i.ha = insertelement <16 x i8> %i.gz, i8 %i.gk, i64 12
  %i.hb = insertelement <16 x i8> %i.ha, i8 %i.gl, i64 13
  %i.hc = insertelement <16 x i8> %i.hb, i8 %i.gm, i64 14
  %i.hd = insertelement <16 x i8> %i.hc, i8 %i.gn, i64 15
  %i.he = getelementptr inbounds nuw i8, ptr %next.gep57, i64 4
  %i.hf = getelementptr i8, ptr %i.ae, i64 12
  %i.hg = getelementptr i8, ptr %i.af, i64 20
  %i.hh = getelementptr i8, ptr %i.ag, i64 28
  %i.hi = getelementptr i8, ptr %i.ah, i64 36
  %i.hj = getelementptr i8, ptr %i.ai, i64 44
  %i.hk = getelementptr i8, ptr %i.aj, i64 52
  %i.hl = getelementptr i8, ptr %i.ak, i64 60
  %i.hm = getelementptr i8, ptr %i.al, i64 68
  %i.hn = getelementptr i8, ptr %i.am, i64 76
  %i.ho = getelementptr i8, ptr %i.an, i64 84
  %i.hp = getelementptr i8, ptr %i.ao, i64 92
  %i.hq = getelementptr i8, ptr %i.ap, i64 100
  %i.hr = getelementptr i8, ptr %i.aq, i64 108
  %i.hs = getelementptr i8, ptr %i.ar, i64 116
  %i.ht = getelementptr i8, ptr %i.as, i64 124
  store i8 -1, ptr %i.he, align 1, !tbaa !12
  store i8 -1, ptr %i.hf, align 1, !tbaa !12
  store i8 -1, ptr %i.hg, align 1, !tbaa !12
  store i8 -1, ptr %i.hh, align 1, !tbaa !12
  store i8 -1, ptr %i.hi, align 1, !tbaa !12
  store i8 -1, ptr %i.hj, align 1, !tbaa !12
  store i8 -1, ptr %i.hk, align 1, !tbaa !12
  store i8 -1, ptr %i.hl, align 1, !tbaa !12
  store i8 -1, ptr %i.hm, align 1, !tbaa !12
  store i8 -1, ptr %i.hn, align 1, !tbaa !12
  store i8 -1, ptr %i.ho, align 1, !tbaa !12
  store i8 -1, ptr %i.hp, align 1, !tbaa !12
  store i8 -1, ptr %i.hq, align 1, !tbaa !12
  store i8 -1, ptr %i.hr, align 1, !tbaa !12
  store i8 -1, ptr %i.hs, align 1, !tbaa !12
  store i8 -1, ptr %i.ht, align 1, !tbaa !12
  %i.hu = zext <16 x i8> %i.hd to <16 x i32>
  %i.hv = getelementptr inbounds nuw i8, ptr %next.gep57, i64 5
  %i.hw = getelementptr i8, ptr %i.ae, i64 13
  %i.hx = getelementptr i8, ptr %i.af, i64 21
  %i.hy = getelementptr i8, ptr %i.ag, i64 29
  %i.hz = getelementptr i8, ptr %i.ah, i64 37
  %i.ia = getelementptr i8, ptr %i.ai, i64 45
  %i.ib = getelementptr i8, ptr %i.aj, i64 53
  %i.ic = getelementptr i8, ptr %i.ak, i64 61
  %i.id = getelementptr i8, ptr %i.al, i64 69
  %i.ie = getelementptr i8, ptr %i.am, i64 77
  %i.if = getelementptr i8, ptr %i.an, i64 85
  %i.ig = getelementptr i8, ptr %i.ao, i64 93
  %i.ih = getelementptr i8, ptr %i.ap, i64 101
  %i.ii = getelementptr i8, ptr %i.aq, i64 109
  %i.ij = getelementptr i8, ptr %i.ar, i64 117
  %i.ik = getelementptr i8, ptr %i.as, i64 125
  %i.il = mul nuw nsw <16 x i32> %i.hu, splat (i32 19077)
  %i.im = lshr <16 x i32> %i.il, splat (i32 8)    ; 3 uses
  %i.in = add nuw nsw <16 x i32> %i.im, %i.cv     ; 2 uses
  %i.io = add nsw <16 x i32> %i.in, splat (i32 -14234) ; 2 uses
  %i.ip = icmp ult <16 x i32> %i.io, splat (i32 16384)
  %i.iq = lshr <16 x i32> %i.io, splat (i32 6)
  %i.ir = icmp samesign ult <16 x i32> %i.in, splat (i32 14234)
  %i.is = select <16 x i1> %i.ir, <16 x i32> zeroinitializer, <16 x i32> splat (i32 255)
  %i.it = select <16 x i1> %i.ip, <16 x i32> %i.iq, <16 x i32> %i.is
  %i.iu = trunc <16 x i32> %i.it to <16 x i8>     ; 16 uses
  %i.iv = extractelement <16 x i8> %i.iu, i64 0
  %52 = extractelement <16 x i8> %i.iu, i64 1
  %i.iw = extractelement <16 x i8> %i.iu, i64 2
  %53 = extractelement <16 x i8> %i.iu, i64 3
  %i.ix = extractelement <16 x i8> %i.iu, i64 4
  %54 = extractelement <16 x i8> %i.iu, i64 5
  %i.iy = extractelement <16 x i8> %i.iu, i64 6
  %55 = extractelement <16 x i8> %i.iu, i64 7
  %i.iz = extractelement <16 x i8> %i.iu, i64 8
  %56 = extractelement <16 x i8> %i.iu, i64 9
  %i.ja = extractelement <16 x i8> %i.iu, i64 10
  %57 = extractelement <16 x i8> %i.iu, i64 11
  %i.jb = extractelement <16 x i8> %i.iu, i64 12
  %58 = extractelement <16 x i8> %i.iu, i64 13
  %i.jc = extractelement <16 x i8> %i.iu, i64 14
  %59 = extractelement <16 x i8> %i.iu, i64 15
  store i8 %i.iv, ptr %i.hv, align 1, !tbaa !12
  store i8 %52, ptr %i.hw, align 1, !tbaa !12
  store i8 %i.iw, ptr %i.hx, align 1, !tbaa !12
  store i8 %53, ptr %i.hy, align 1, !tbaa !12
  store i8 %i.ix, ptr %i.hz, align 1, !tbaa !12
  store i8 %54, ptr %i.ia, align 1, !tbaa !12
  store i8 %i.iy, ptr %i.ib, align 1, !tbaa !12
  store i8 %55, ptr %i.ic, align 1, !tbaa !12
  store i8 %i.iz, ptr %i.id, align 1, !tbaa !12
  store i8 %56, ptr %i.ie, align 1, !tbaa !12
  store i8 %i.ja, ptr %i.if, align 1, !tbaa !12
  store i8 %57, ptr %i.ig, align 1, !tbaa !12
  store i8 %i.jb, ptr %i.ih, align 1, !tbaa !12
  store i8 %58, ptr %i.ii, align 1, !tbaa !12
  store i8 %i.jc, ptr %i.ij, align 1, !tbaa !12
  store i8 %59, ptr %i.ik, align 1, !tbaa !12
  %i.jd = sub nsw <16 x i32> %i.im, %i.dq         ; 2 uses
  %i.je = add nsw <16 x i32> %i.jd, splat (i32 8708) ; 2 uses
  %i.jf = icmp ult <16 x i32> %i.je, splat (i32 16384)
  %i.jg = lshr <16 x i32> %i.je, splat (i32 6)
  %i.jh = icmp slt <16 x i32> %i.jd, splat (i32 -8708)
  %i.ji = select <16 x i1> %i.jh, <16 x i32> zeroinitializer, <16 x i32> splat (i32 255)
  %i.jj = select <16 x i1> %i.jf, <16 x i32> %i.jg, <16 x i32> %i.ji
  %i.jk = trunc <16 x i32> %i.jj to <16 x i8>     ; 16 uses
  %60 = extractelement <16 x i8> %i.jk, i64 0
  %61 = extractelement <16 x i8> %i.jk, i64 1
  %62 = extractelement <16 x i8> %i.jk, i64 2
  %63 = extractelement <16 x i8> %i.jk, i64 3
  %64 = extractelement <16 x i8> %i.jk, i64 4
  %65 = extractelement <16 x i8> %i.jk, i64 5
  %66 = extractelement <16 x i8> %i.jk, i64 6
  %67 = extractelement <16 x i8> %i.jk, i64 7
  %68 = extractelement <16 x i8> %i.jk, i64 8
  %69 = extractelement <16 x i8> %i.jk, i64 9
  %70 = extractelement <16 x i8> %i.jk, i64 10
  %71 = extractelement <16 x i8> %i.jk, i64 11
  %72 = extractelement <16 x i8> %i.jk, i64 12
  %73 = extractelement <16 x i8> %i.jk, i64 13
  %74 = extractelement <16 x i8> %i.jk, i64 14
  %75 = extractelement <16 x i8> %i.jk, i64 15
  %i.jl = getelementptr inbounds nuw i8, ptr %next.gep57, i64 6
  %i.jm = getelementptr i8, ptr %i.ae, i64 14
  %i.jn = getelementptr i8, ptr %i.af, i64 22
  %i.jo = getelementptr i8, ptr %i.ag, i64 30
  %i.jp = getelementptr i8, ptr %i.ah, i64 38
  %i.jq = getelementptr i8, ptr %i.ai, i64 46
  %i.jr = getelementptr i8, ptr %i.aj, i64 54
  %i.js = getelementptr i8, ptr %i.ak, i64 62
  %i.jt = getelementptr i8, ptr %i.al, i64 70
  %i.ju = getelementptr i8, ptr %i.am, i64 78
  %i.jv = getelementptr i8, ptr %i.an, i64 86
  %i.jw = getelementptr i8, ptr %i.ao, i64 94
  %i.jx = getelementptr i8, ptr %i.ap, i64 102
  %i.jy = getelementptr i8, ptr %i.aq, i64 110
  %i.jz = getelementptr i8, ptr %i.ar, i64 118
  %i.ka = getelementptr i8, ptr %i.as, i64 126
  store i8 %60, ptr %i.jl, align 1, !tbaa !12
  store i8 %61, ptr %i.jm, align 1, !tbaa !12
  store i8 %62, ptr %i.jn, align 1, !tbaa !12
  store i8 %63, ptr %i.jo, align 1, !tbaa !12
  store i8 %64, ptr %i.jp, align 1, !tbaa !12
  store i8 %65, ptr %i.jq, align 1, !tbaa !12
  store i8 %66, ptr %i.jr, align 1, !tbaa !12
  store i8 %67, ptr %i.js, align 1, !tbaa !12
  store i8 %68, ptr %i.jt, align 1, !tbaa !12
  store i8 %69, ptr %i.ju, align 1, !tbaa !12
  store i8 %70, ptr %i.jv, align 1, !tbaa !12
  store i8 %71, ptr %i.jw, align 1, !tbaa !12
  store i8 %72, ptr %i.jx, align 1, !tbaa !12
  store i8 %73, ptr %i.jy, align 1, !tbaa !12
  store i8 %74, ptr %i.jz, align 1, !tbaa !12
  store i8 %75, ptr %i.ka, align 1, !tbaa !12
  %76 = add nuw nsw <16 x i32> %i.im, %30         ; 2 uses
  %77 = add nsw <16 x i32> %76, splat (i32 -17685) ; 2 uses
  %78 = icmp ult <16 x i32> %77, splat (i32 16384)
  %79 = lshr <16 x i32> %77, splat (i32 6)
  %80 = icmp samesign ult <16 x i32> %76, splat (i32 17685)
  %81 = select <16 x i1> %80, <16 x i32> zeroinitializer, <16 x i32> splat (i32 255)
  %82 = select <16 x i1> %78, <16 x i32> %79, <16 x i32> %81
  %83 = trunc <16 x i32> %82 to <16 x i8>         ; 16 uses
  %i.kb = extractelement <16 x i8> %83, i64 0
  %84 = extractelement <16 x i8> %83, i64 1
  %i.kc = extractelement <16 x i8> %83, i64 2
  %85 = extractelement <16 x i8> %83, i64 3
  %i.kd = extractelement <16 x i8> %83, i64 4
  %86 = extractelement <16 x i8> %83, i64 5
  %i.ke = extractelement <16 x i8> %83, i64 6
  %87 = extractelement <16 x i8> %83, i64 7
  %88 = extractelement <16 x i8> %83, i64 8
  %89 = extractelement <16 x i8> %83, i64 9
  %90 = extractelement <16 x i8> %83, i64 10
  %91 = extractelement <16 x i8> %83, i64 11
  %92 = extractelement <16 x i8> %83, i64 12
  %93 = extractelement <16 x i8> %83, i64 13
  %94 = extractelement <16 x i8> %83, i64 14
  %95 = extractelement <16 x i8> %83, i64 15
  %i.kf = getelementptr inbounds nuw i8, ptr %next.gep57, i64 7
  %i.kg = getelementptr i8, ptr %i.ae, i64 15
  %i.kh = getelementptr i8, ptr %i.af, i64 23
  %i.ki = getelementptr i8, ptr %i.ag, i64 31
  %i.kj = getelementptr i8, ptr %i.ah, i64 39
  %i.kk = getelementptr i8, ptr %i.ai, i64 47
  %i.kl = getelementptr i8, ptr %i.aj, i64 55
  %i.km = getelementptr i8, ptr %i.ak, i64 63
  %i.kn = getelementptr i8, ptr %i.al, i64 71
  %i.ko = getelementptr i8, ptr %i.am, i64 79
  %i.kp = getelementptr i8, ptr %i.an, i64 87
  %i.kq = getelementptr i8, ptr %i.ao, i64 95
  %i.kr = getelementptr i8, ptr %i.ap, i64 103
  %i.ks = getelementptr i8, ptr %i.aq, i64 111
  %i.kt = getelementptr i8, ptr %i.ar, i64 119
  %i.ku = getelementptr i8, ptr %i.as, i64 127
  store i8 %i.kb, ptr %i.kf, align 1, !tbaa !12
  store i8 %84, ptr %i.kg, align 1, !tbaa !12
  store i8 %i.kc, ptr %i.kh, align 1, !tbaa !12
  store i8 %85, ptr %i.ki, align 1, !tbaa !12
  store i8 %i.kd, ptr %i.kj, align 1, !tbaa !12
  store i8 %86, ptr %i.kk, align 1, !tbaa !12
  store i8 %i.ke, ptr %i.kl, align 1, !tbaa !12
  store i8 %87, ptr %i.km, align 1, !tbaa !12
  store i8 %88, ptr %i.kn, align 1, !tbaa !12
  store i8 %89, ptr %i.ko, align 1, !tbaa !12
  store i8 %90, ptr %i.kp, align 1, !tbaa !12
  store i8 %91, ptr %i.kq, align 1, !tbaa !12
  store i8 %92, ptr %i.kr, align 1, !tbaa !12
  store i8 %93, ptr %i.ks, align 1, !tbaa !12
  store i8 %94, ptr %i.kt, align 1, !tbaa !12
  store i8 %95, ptr %i.ku, align 1, !tbaa !12
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.kv = icmp eq i64 %index.next, %n.vec
  br i1 %i.kv, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader78

.lr.ph.preheader78:                               ; preds = %.lr.ph.preheader, %middle.block
  %.030.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.02029.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.j, %middle.block ]
  %.02128.ph = phi ptr [ %3, %.lr.ph.preheader ], [ %i.l, %middle.block ]
  %.02227.ph = phi ptr [ %2, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader78, %.lr.ph
  %.030 = phi ptr [ %i.nv, %.lr.ph ], [ %.030.ph, %.lr.ph.preheader78 ] ; 3 uses
  %.02029 = phi ptr [ %i.nw, %.lr.ph ], [ %.02029.ph, %.lr.ph.preheader78 ] ; 2 uses
  %.02128 = phi ptr [ %i.ny, %.lr.ph ], [ %.02128.ph, %.lr.ph.preheader78 ] ; 9 uses
  %.02227 = phi ptr [ %i.nx, %.lr.ph ], [ %.02227.ph, %.lr.ph.preheader78 ] ; 2 uses
  %i.kw = load i8, ptr %.030, align 1, !tbaa !12
  %i.kx = load i8, ptr %.02029, align 1, !tbaa !12
  %i.ky = load i8, ptr %.02227, align 1, !tbaa !12
  store i8 -1, ptr %.02128, align 1, !tbaa !12
  %i.kz = zext i8 %i.kw to i32
  %i.la = zext i8 %i.kx to i32                    ; 2 uses
  %i.lb = zext i8 %i.ky to i32                    ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.02128, i64 1
  %i.ld = mul nuw nsw i32 %i.kz, 19077
  %i.le = lshr i32 %i.ld, 8                       ; 3 uses
  %i.lf = mul nuw nsw i32 %i.lb, 26149
  %i.lg = lshr i32 %i.lf, 8                       ; 2 uses
  %i.lh = add nuw nsw i32 %i.lg, %i.le            ; 2 uses
  %i.li = add nsw i32 %i.lh, -14234               ; 2 uses
  %i.lj = icmp ult i32 %i.li, 16384
  %i.lk = lshr i32 %i.li, 6
  %i.ll = icmp samesign ult i32 %i.lh, 14234
  %i.lm = select i1 %i.ll, i32 0, i32 255
  %i.ln = select i1 %i.lj, i32 %i.lk, i32 %i.lm
  %i.lo = trunc i32 %i.ln to i8
  store i8 %i.lo, ptr %i.lc, align 1, !tbaa !12
  %i.lp = mul nuw nsw i32 %i.la, 6419
  %i.lq = lshr i32 %i.lp, 8
  %i.lr = mul nuw nsw i32 %i.lb, 13320
  %i.ls = lshr i32 %i.lr, 8
  %i.lt = add nuw nsw i32 %i.ls, %i.lq            ; 2 uses
  %i.lu = sub nsw i32 %i.le, %i.lt                ; 2 uses
  %i.lv = add nsw i32 %i.lu, 8708                 ; 2 uses
  %i.lw = icmp ult i32 %i.lv, 16384
  %i.lx = lshr i32 %i.lv, 6
  %i.ly = icmp slt i32 %i.lu, -8708
  %i.lz = select i1 %i.ly, i32 0, i32 255
  %i.ma = select i1 %i.lw, i32 %i.lx, i32 %i.lz
  %i.mb = trunc i32 %i.ma to i8
  %i.mc = getelementptr inbounds nuw i8, ptr %.02128, i64 2
  store i8 %i.mb, ptr %i.mc, align 1, !tbaa !12
  %i.md = mul nuw nsw i32 %i.la, 33050
  %i.me = lshr i32 %i.md, 8                       ; 2 uses
  %i.mf = add nuw nsw i32 %i.me, %i.le            ; 2 uses
  %i.mg = add nsw i32 %i.mf, -17685               ; 2 uses
  %i.mh = icmp ult i32 %i.mg, 16384
  %i.mi = lshr i32 %i.mg, 6
  %i.mj = icmp samesign ult i32 %i.mf, 17685
  %i.mk = select i1 %i.mj, i32 0, i32 255
  %i.ml = select i1 %i.mh, i32 %i.mi, i32 %i.mk
  %i.mm = trunc i32 %i.ml to i8
  %i.mn = getelementptr inbounds nuw i8, ptr %.02128, i64 3
  store i8 %i.mm, ptr %i.mn, align 1, !tbaa !12
  %i.mo = getelementptr inbounds nuw i8, ptr %.030, i64 1
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !12
  %i.mq = getelementptr inbounds nuw i8, ptr %.02128, i64 4
  store i8 -1, ptr %i.mq, align 1, !tbaa !12
  %i.mr = zext i8 %i.mp to i32
  %i.ms = getelementptr inbounds nuw i8, ptr %.02128, i64 5
  %i.mt = mul nuw nsw i32 %i.mr, 19077
  %i.mu = lshr i32 %i.mt, 8                       ; 3 uses
  %i.mv = add nuw nsw i32 %i.mu, %i.lg            ; 2 uses
  %i.mw = add nsw i32 %i.mv, -14234               ; 2 uses
  %i.mx = icmp ult i32 %i.mw, 16384
  %i.my = lshr i32 %i.mw, 6
  %i.mz = icmp samesign ult i32 %i.mv, 14234
  %i.na = select i1 %i.mz, i32 0, i32 255
  %i.nb = select i1 %i.mx, i32 %i.my, i32 %i.na
  %i.nc = trunc i32 %i.nb to i8
  store i8 %i.nc, ptr %i.ms, align 1, !tbaa !12
  %i.nd = sub nsw i32 %i.mu, %i.lt                ; 2 uses
  %i.ne = add nsw i32 %i.nd, 8708                 ; 2 uses
  %i.nf = icmp ult i32 %i.ne, 16384
  %i.ng = lshr i32 %i.ne, 6
  %i.nh = icmp slt i32 %i.nd, -8708
  %i.ni = select i1 %i.nh, i32 0, i32 255
  %i.nj = select i1 %i.nf, i32 %i.ng, i32 %i.ni
  %i.nk = trunc i32 %i.nj to i8
  %i.nl = getelementptr inbounds nuw i8, ptr %.02128, i64 6
  store i8 %i.nk, ptr %i.nl, align 1, !tbaa !12
  %i.nm = add nuw nsw i32 %i.mu, %i.me            ; 2 uses
  %i.nn = add nsw i32 %i.nm, -17685               ; 2 uses
  %i.no = icmp ult i32 %i.nn, 16384
  %i.np = lshr i32 %i.nn, 6
  %i.nq = icmp samesign ult i32 %i.nm, 17685
  %i.nr = select i1 %i.nq, i32 0, i32 255
  %i.ns = select i1 %i.no, i32 %i.np, i32 %i.nr
  %i.nt = trunc i32 %i.ns to i8
  %i.nu = getelementptr inbounds nuw i8, ptr %.02128, i64 7
  store i8 %i.nt, ptr %i.nu, align 1, !tbaa !12
  %i.nv = getelementptr inbounds nuw i8, ptr %.030, i64 2 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.02029, i64 1 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.02227, i64 1 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.02128, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ny, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.022.lcssa = phi ptr [ %2, %bb.a ], [ %i.m, %middle.block ], [ %i.nx, %.lr.ph ]
  %.021.lcssa = phi ptr [ %3, %bb.a ], [ %i.d, %middle.block ], [ %i.d, %.lr.ph ] ; 4 uses
  %.020.lcssa = phi ptr [ %1, %bb.a ], [ %i.j, %middle.block ], [ %i.nw, %.lr.ph ]
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %middle.block ], [ %i.nv, %.lr.ph ]
  %i.nz = and i32 %4, 1
  %.not23 = icmp eq i32 %i.nz, 0
  br i1 %.not23, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.oa = load i8, ptr %.0.lcssa, align 1, !tbaa !12
  %i.ob = load i8, ptr %.020.lcssa, align 1, !tbaa !12
  %i.oc = load i8, ptr %.022.lcssa, align 1, !tbaa !12
  store i8 -1, ptr %.021.lcssa, align 1, !tbaa !12
  %i.od = zext i8 %i.oa to i32
  %i.oe = zext i8 %i.ob to i32                    ; 2 uses
  %i.of = zext i8 %i.oc to i32                    ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.021.lcssa, i64 1
  %i.oh = mul nuw nsw i32 %i.od, 19077
  %i.oi = lshr i32 %i.oh, 8                       ; 3 uses
  %i.oj = mul nuw nsw i32 %i.of, 26149
  %i.ok = lshr i32 %i.oj, 8
  %i.ol = add nuw nsw i32 %i.ok, %i.oi            ; 2 uses
  %i.om = add nsw i32 %i.ol, -14234               ; 2 uses
  %i.on = icmp ult i32 %i.om, 16384
  %i.oo = lshr i32 %i.om, 6
  %i.op = icmp samesign ult i32 %i.ol, 14234
  %i.oq = select i1 %i.op, i32 0, i32 255
  %i.or = select i1 %i.on, i32 %i.oo, i32 %i.oq
  %i.os = trunc i32 %i.or to i8
  store i8 %i.os, ptr %i.og, align 1, !tbaa !12
  %i.ot = mul nuw nsw i32 %i.oe, 6419
  %i.ou = lshr i32 %i.ot, 8
  %i.ov = mul nuw nsw i32 %i.of, 13320
  %i.ow = lshr i32 %i.ov, 8
  %i.ox = add nuw nsw i32 %i.ou, %i.ow
  %i.oy = sub nsw i32 %i.oi, %i.ox                ; 2 uses
  %i.oz = add nsw i32 %i.oy, 8708                 ; 2 uses
  %i.pa = icmp ult i32 %i.oz, 16384
  %i.pb = lshr i32 %i.oz, 6
  %i.pc = icmp slt i32 %i.oy, -8708
  %i.pd = select i1 %i.pc, i32 0, i32 255
  %i.pe = select i1 %i.pa, i32 %i.pb, i32 %i.pd
  %i.pf = trunc i32 %i.pe to i8
  %i.pg = getelementptr inbounds nuw i8, ptr %.021.lcssa, i64 2
  store i8 %i.pf, ptr %i.pg, align 1, !tbaa !12
  %i.ph = mul nuw nsw i32 %i.oe, 33050
  %i.pi = lshr i32 %i.ph, 8
  %i.pj = add nuw nsw i32 %i.pi, %i.oi            ; 2 uses
  %i.pk = add nsw i32 %i.pj, -17685               ; 2 uses
  %i.pl = icmp ult i32 %i.pk, 16384
  %i.pm = lshr i32 %i.pk, 6
  %i.pn = icmp samesign ult i32 %i.pj, 17685
  %i.po = select i1 %i.pn, i32 0, i32 255
  %i.pp = select i1 %i.pl, i32 %i.pm, i32 %i.po
  %i.pq = trunc i32 %i.pp to i8
  %i.pr = getelementptr inbounds nuw i8, ptr %.021.lcssa, i64 3
  store i8 %i.pq, ptr %i.pr, align 1, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @YuvToRgba4444Row(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef writeonly captures(address) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = shl i32 %4, 1
  %i.b = and i32 %i.a, -4                         ; 2 uses
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c ; 4 uses
  %.not26 = icmp eq i32 %i.b, 0
  br i1 %.not26, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.e = add nsw i64 %i.c, -4                     ; 3 uses
  %i.f = lshr exact i64 %i.e, 2
  %i.g = add nuw nsw i64 %i.f, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.e, 12
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check41 = icmp ult i64 %i.e, 60
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.g, 12
end_hunk_0
