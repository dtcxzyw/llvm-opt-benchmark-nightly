Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/photocd?download=true
inline.NumInlined: 34
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@interp_lowres:bb.a

bb.p:                                             ; preds = %bytestream2_get_byte.exit99
  %i.ct = load i8, ptr %i.co, align 1, !tbaa !30
  %i.cu = zext i8 %i.ct to i32
  br label %bytestream2_peek_byte.exit108

bytestream2_peek_byte.exit108:                    ; preds = %bytestream2_get_byte.exit99, %bb.p
  %.0.i107 = phi i32 [ %i.cu, %bb.p ], [ 0, %bytestream2_get_byte.exit99 ]
  %i.cv = add nuw nsw i32 %.0.i98, 1
  %i.cw = add nuw nsw i32 %i.cv, %.0.i107
  %i.cx = lshr i32 %i.cw, 1
  %i.cy = trunc nuw i32 %i.cx to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %.1113, i64 2 ; 2 uses
  store i8 %i.cy, ptr %i.cm, align 1, !tbaa !30
  %i.da = add nuw nsw i32 %.081114, 1             ; 2 uses
  %exitcond126.not = icmp eq i32 %i.da, 767
  br i1 %exitcond126.not, label %bb.j, label %bb.m, !llvm.loop !60

bb.q:                                             ; preds = %bytestream2_peek_byte.exit106
  %i.db = shl i32 %i.cb, 1
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds i8, ptr %i.as, i64 %i.dc
  %i.de = load ptr, ptr %i.j, align 8, !tbaa !38  ; 2 uses
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !36  ; 3 uses
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = icmp slt i64 %i.di, 1
  br i1 %i.dj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store ptr %i.de, ptr %i.a, align 8, !tbaa !36
  br label %bytestream2_get_byte.exit93

bb.s:                                             ; preds = %bb.q
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  store ptr %i.dk, ptr %i.a, align 8, !tbaa !39
  %i.dl = load i8, ptr %i.df, align 1, !tbaa !30
  br label %bytestream2_get_byte.exit93

bytestream2_get_byte.exit93:                      ; preds = %bb.r, %bb.s
  %.0.i92 = phi i8 [ 0, %bb.r ], [ %i.dl, %bb.s ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.2115, i64 3
  store i8 %.0.i92, ptr %i.el, align 1, !tbaa !30
  store i8 %.0.i92, ptr %i.dm, align 1, !tbaa !30
  %i.dn = load i32, ptr %i.v, align 4, !tbaa !28
  br label %bb.aa

bb.t:                                             ; preds = %bytestream2_get_byte.exit97, %bytestream2_peek_byte.exit106
  %.080116 = phi i32 [ 0, %bytestream2_get_byte.exit97 ], [ %i.em, %bytestream2_peek_byte.exit106 ]
  %.2115 = phi ptr [ %.086120, %bytestream2_get_byte.exit97 ], [ %i.el, %bytestream2_peek_byte.exit106 ] ; 4 uses
  %i.do = load ptr, ptr %i.j, align 8, !tbaa !38  ; 2 uses
  %i.dp = load ptr, ptr %i.a, align 8, !tbaa !36  ; 3 uses
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = icmp slt i64 %i.ds, 1
  br i1 %i.dt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.do, ptr %i.a, align 8, !tbaa !36
  br label %bytestream2_get_byte.exit95

bb.v:                                             ; preds = %bb.t
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  store ptr %i.du, ptr %i.a, align 8, !tbaa !39
  %i.dv = load i8, ptr %i.dp, align 1, !tbaa !30
  %i.dw = zext i8 %i.dv to i32
  br label %bytestream2_get_byte.exit95

bytestream2_get_byte.exit95:                      ; preds = %bb.u, %bb.v
  %.0.i94 = phi i32 [ 0, %bb.u ], [ %i.dw, %bb.v ] ; 2 uses
  %i.dx = trunc nuw i32 %.0.i94 to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %.2115, i64 1
  store i8 %i.dx, ptr %.2115, align 1, !tbaa !30
  %i.dz = load ptr, ptr %i.j, align 8, !tbaa !38
  %i.ea = load ptr, ptr %i.a, align 8, !tbaa !36  ; 2 uses
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = icmp slt i64 %i.ed, 1
  br i1 %i.ee, label %bytestream2_peek_byte.exit106, label %bb.w

bb.w:                                             ; preds = %bytestream2_get_byte.exit95
  %i.ef = load i8, ptr %i.ea, align 1, !tbaa !30
  %i.eg = zext i8 %i.ef to i32
  br label %bytestream2_peek_byte.exit106

bytestream2_peek_byte.exit106:                    ; preds = %bytestream2_get_byte.exit95, %bb.w
  %.0.i105 = phi i32 [ %i.eg, %bb.w ], [ 0, %bytestream2_get_byte.exit95 ]
  %i.eh = add nuw nsw i32 %.0.i94, 1
  %i.ei = add nuw nsw i32 %i.eh, %.0.i105
  %i.ej = lshr i32 %i.ei, 1
  %i.ek = trunc nuw i32 %i.ej to i8
  %i.el = getelementptr inbounds nuw i8, ptr %.2115, i64 2 ; 2 uses
  store i8 %i.ek, ptr %i.dy, align 1, !tbaa !30
  %i.em = add nuw nsw i32 %.080116, 1             ; 2 uses
  %exitcond127.not = icmp eq i32 %i.em, 383
  br i1 %exitcond127.not, label %bb.q, label %bb.t, !llvm.loop !61

bb.x:                                             ; preds = %bytestream2_peek_byte.exit
  %i.en = shl i32 %i.dn, 1
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds i8, ptr %.086120, i64 %i.eo
  %i.eq = load ptr, ptr %i.j, align 8, !tbaa !38  ; 2 uses
  %i.er = load ptr, ptr %i.a, align 8, !tbaa !36  ; 3 uses
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = icmp slt i64 %i.eu, 1
  br i1 %i.ev, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store ptr %i.eq, ptr %i.a, align 8, !tbaa !36
  br label %bytestream2_get_byte.exit

bb.z:                                             ; preds = %bb.x
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 1
  store ptr %i.ew, ptr %i.a, align 8, !tbaa !39
  %i.ex = load i8, ptr %i.er, align 1, !tbaa !30
  br label %bytestream2_get_byte.exit

bytestream2_get_byte.exit:                        ; preds = %bb.y, %bb.z
  %.0.i = phi i8 [ 0, %bb.y ], [ %i.ex, %bb.z ]   ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.3117, i64 3
  store i8 %.0.i, ptr %i.gc, align 1, !tbaa !30
  store i8 %.0.i, ptr %i.ey, align 1, !tbaa !30
  %i.ez = load i32, ptr %i.w, align 8, !tbaa !28
  %i.fa = shl i32 %i.ez, 1
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds i8, ptr %.085121, i64 %i.fb
  %i.fd = add nuw nsw i32 %.083122, 2
  %i.fe = icmp samesign ult i32 %.083122, 510
  br i1 %i.fe, label %.preheader, label %bb.b, !llvm.loop !62

bb.aa:                                            ; preds = %bytestream2_get_byte.exit93, %bytestream2_peek_byte.exit
  %.0118 = phi i32 [ 0, %bytestream2_get_byte.exit93 ], [ %i.gd, %bytestream2_peek_byte.exit ]
  %.3117 = phi ptr [ %.085121, %bytestream2_get_byte.exit93 ], [ %i.gc, %bytestream2_peek_byte.exit ] ; 4 uses
  %i.ff = load ptr, ptr %i.j, align 8, !tbaa !38  ; 2 uses
  %i.fg = load ptr, ptr %i.a, align 8, !tbaa !36  ; 3 uses
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = icmp slt i64 %i.fj, 1
  br i1 %i.fk, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.ff, ptr %i.a, align 8, !tbaa !36
  br label %bytestream2_get_byte.exit91

bb.ac:                                            ; preds = %bb.aa
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 1
  store ptr %i.fl, ptr %i.a, align 8, !tbaa !39
  %i.fm = load i8, ptr %i.fg, align 1, !tbaa !30
  %i.fn = zext i8 %i.fm to i32
  br label %bytestream2_get_byte.exit91

bytestream2_get_byte.exit91:                      ; preds = %bb.ab, %bb.ac
  %.0.i90 = phi i32 [ 0, %bb.ab ], [ %i.fn, %bb.ac ] ; 2 uses
  %i.fo = trunc nuw i32 %.0.i90 to i8
  %i.fp = getelementptr inbounds nuw i8, ptr %.3117, i64 1
  store i8 %i.fo, ptr %.3117, align 1, !tbaa !30
  %i.fq = load ptr, ptr %i.j, align 8, !tbaa !38
  %i.fr = load ptr, ptr %i.a, align 8, !tbaa !36  ; 2 uses
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = icmp slt i64 %i.fu, 1
  br i1 %i.fv, label %bytestream2_peek_byte.exit, label %bb.ad

bb.ad:                                            ; preds = %bytestream2_get_byte.exit91
  %i.fw = load i8, ptr %i.fr, align 1, !tbaa !30
  %i.fx = zext i8 %i.fw to i32
  br label %bytestream2_peek_byte.exit

bytestream2_peek_byte.exit:                       ; preds = %bytestream2_get_byte.exit91, %bb.ad
  %.0.i104 = phi i32 [ %i.fx, %bb.ad ], [ 0, %bytestream2_get_byte.exit91 ]
  %i.fy = add nuw nsw i32 %.0.i90, 1
  %i.fz = add nuw nsw i32 %i.fy, %.0.i104
  %i.ga = lshr i32 %i.fz, 1
  %i.gb = trunc nuw i32 %i.ga to i8
  %i.gc = getelementptr inbounds nuw i8, ptr %.3117, i64 2 ; 2 uses
  store i8 %i.gb, ptr %i.fp, align 1, !tbaa !30
  %i.gd = add nuw nsw i32 %.0118, 1               ; 2 uses
  %exitcond128.not = icmp eq i32 %i.gd, 383
  br i1 %exitcond128.not, label %bb.x, label %bb.aa, !llvm.loop !63
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @interp_lines(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef range(i32 768, 3073) %2, i32 noundef range(i32 512, 2049) %3) unnamed_addr #5 {
.lr.ph.us.preheader:
  %i.a = add nsw i32 %3, -2
  %i.b = sext i32 %1 to i64                       ; 10 uses
  %i.c = add nsw i32 %2, -2                       ; 2 uses
  %i.d = shl i32 %1, 1                            ; 2 uses
  %i.e = sext i32 %i.d to i64                     ; 6 uses
  %i.f = zext i32 %i.c to i64                     ; 4 uses
  %i.g = add nsw i32 %3, -3
  %i.h = lshr i32 %i.g, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = mul nsw i64 %i.i, %i.e                   ; 4 uses
  %i.k = add nsw i64 %i.f, -1
  %i.l = and i64 %i.k, -2                         ; 4 uses
  %4 = shl nsw i64 %i.b, 1                        ; 4 uses
  %5 = getelementptr i8, ptr %0, i64 %i.j
  %i.m = getelementptr i8, ptr %5, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 %4
  %scevgep = getelementptr i8, ptr %i.n, i64 3    ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 %4
  %scevgep122.a = getelementptr i8, ptr %i.o, i64 2 ; 2 uses
  %6 = add i64 %i.j, %i.l                         ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 %6
  %scevgep123.a = getelementptr i8, ptr %i.p, i64 3 ; 2 uses
  %scevgep124.a = getelementptr nuw i8, ptr %0, i64 2 ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 %6
  %i.r = getelementptr i8, ptr %i.q, i64 %4
  %scevgep125 = getelementptr i8, ptr %i.r, i64 1 ; 2 uses
  %scevgep126.a = getelementptr i8, ptr %0, i64 %4 ; 2 uses
  %7 = add i64 %i.j, %i.l                         ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 %7
  %scevgep127.a = getelementptr i8, ptr %i.s, i64 1 ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 %7
  %i.u = getelementptr i8, ptr %i.t, i64 %i.b
  %scevgep128 = getelementptr i8, ptr %i.u, i64 2 ; 5 uses
  %8 = getelementptr i8, ptr %0, i64 %i.b
  %scevgep129 = getelementptr i8, ptr %8, i64 1   ; 5 uses
  %i.v = getelementptr i8, ptr %0, i64 %i.j
  %i.w = getelementptr i8, ptr %i.v, i64 %i.l
  %i.x = getelementptr i8, ptr %i.w, i64 %i.b
  %scevgep130 = getelementptr i8, ptr %i.x, i64 1 ; 5 uses
  %scevgep131 = getelementptr i8, ptr %0, i64 %i.b ; 5 uses
  %bound0 = icmp ult ptr %scevgep131, %scevgep128
  %bound1 = icmp ult ptr %scevgep129, %scevgep130
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.d, 0
  %9 = or i1 %found.conflict, %stride.check
  %bound0132 = icmp ult ptr %scevgep131, %scevgep127.a
  %bound1133 = icmp ult ptr %0, %scevgep130
  %found.conflict134 = and i1 %bound0132, %bound1133
  %conflict.rdx.a = or i1 %9, %found.conflict134
  %bound0135.a = icmp ult ptr %scevgep131, %scevgep125
  %bound1136.a = icmp ult ptr %scevgep126.a, %scevgep130
  %found.conflict137.a = and i1 %bound0135.a, %bound1136.a
  %conflict.rdx138.a = or i1 %conflict.rdx.a, %found.conflict137.a
  %bound0139.a = icmp ult ptr %scevgep131, %scevgep123.a
  %bound1140.a = icmp ult ptr %scevgep124.a, %scevgep130
  %found.conflict141.a = and i1 %bound0139.a, %bound1140.a
  %conflict.rdx142.a = or i1 %conflict.rdx138.a, %found.conflict141.a
  %bound0143.a = icmp ult ptr %scevgep131, %scevgep
  %bound1144.a = icmp ult ptr %scevgep122.a, %scevgep130
  %found.conflict145.a = and i1 %bound0143.a, %bound1144.a
  %conflict.rdx146.a = or i1 %conflict.rdx142.a, %found.conflict145.a
  %bound0147.a = icmp ult ptr %scevgep129, %scevgep127.a
  %bound1148.a = icmp ult ptr %0, %scevgep128
  %found.conflict149.a = and i1 %bound0147.a, %bound1148.a
  %conflict.rdx150.a = or i1 %conflict.rdx146.a, %found.conflict149.a
  %bound0151.a = icmp ult ptr %scevgep129, %scevgep125
  %bound1152.a = icmp ult ptr %scevgep126.a, %scevgep128
  %found.conflict153.a = and i1 %bound0151.a, %bound1152.a
  %conflict.rdx154.a = or i1 %conflict.rdx150.a, %found.conflict153.a
  %bound0155 = icmp ult ptr %scevgep129, %scevgep123.a
  %bound1156 = icmp ult ptr %scevgep124.a, %scevgep128
  %found.conflict157 = and i1 %bound0155, %bound1156
  %conflict.rdx158 = or i1 %conflict.rdx154.a, %found.conflict157
  %bound0159 = icmp ult ptr %scevgep129, %scevgep
  %bound1160 = icmp ult ptr %scevgep122.a, %scevgep128
  %found.conflict161 = and i1 %bound0159, %bound1160
  %conflict.rdx162 = or i1 %conflict.rdx158, %found.conflict161
  %i.y = add nsw i64 %i.f, -1
  %i.z = lshr i64 %i.y, 1
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %i.ab = and i64 %i.aa, 7                        ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = select i1 %i.ac, i64 8, i64 %i.ab
  %n.vec = sub nsw i64 %i.aa, %i.ad               ; 2 uses
  %i.ae = shl i64 %n.vec, 1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %.062.us = phi i32 [ 0, %.lr.ph.us.preheader ], [ %i.gu, %._crit_edge.us ]
  %.05961.us = phi ptr [ %0, %.lr.ph.us.preheader ], [ %i.gt, %._crit_edge.us ] ; 21 uses
  %i.af = getelementptr inbounds i8, ptr %.05961.us, i64 %i.b ; 4 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 %i.b ; 19 uses
  br i1 %conflict.rdx162, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us ] ; 2 uses
  %i.ah = shl nuw i64 %index, 1                   ; 18 uses
  %i.ai = or disjoint i64 %i.ah, 2                ; 2 uses
  %i.aj = or disjoint i64 %i.ah, 4                ; 2 uses
  %i.ak = or disjoint i64 %i.ah, 6                ; 2 uses
  %i.al = or disjoint i64 %i.ah, 8                ; 2 uses
  %i.am = or disjoint i64 %i.ah, 10               ; 2 uses
  %i.an = or disjoint i64 %i.ah, 12               ; 2 uses
  %i.ao = or disjoint i64 %i.ah, 14               ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.ah
  %i.aq = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.ai
  %i.ar = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.aj
  %i.as = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.ak
  %i.at = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.al
  %i.au = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.am
  %i.av = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.an
  %i.aw = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.ao
  %i.ax = load i8, ptr %i.ap, align 1, !tbaa !30, !alias.scope !77
  %i.ay = load i8, ptr %i.aq, align 1, !tbaa !30, !alias.scope !77
  %i.az = load i8, ptr %i.ar, align 1, !tbaa !30, !alias.scope !77
  %i.ba = load i8, ptr %i.as, align 1, !tbaa !30, !alias.scope !77
  %i.bb = load i8, ptr %i.at, align 1, !tbaa !30, !alias.scope !77
  %i.bc = load i8, ptr %i.au, align 1, !tbaa !30, !alias.scope !77
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !30, !alias.scope !77
  %i.be = load i8, ptr %i.aw, align 1, !tbaa !30, !alias.scope !77
  %i.bf = insertelement <8 x i8> poison, i8 %i.ax, i64 0
  %i.bg = insertelement <8 x i8> %i.bf, i8 %i.ay, i64 1
  %i.bh = insertelement <8 x i8> %i.bg, i8 %i.az, i64 2
  %i.bi = insertelement <8 x i8> %i.bh, i8 %i.ba, i64 3
  %i.bj = insertelement <8 x i8> %i.bi, i8 %i.bb, i64 4
  %i.bk = insertelement <8 x i8> %i.bj, i8 %i.bc, i64 5
  %i.bl = insertelement <8 x i8> %i.bk, i8 %i.bd, i64 6
  %i.bm = insertelement <8 x i8> %i.bl, i8 %i.be, i64 7
  %i.bn = zext <8 x i8> %i.bm to <8 x i16>        ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj
  %i.br = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ak
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.al
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.am
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.an
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.bw = load i8, ptr %i.bo, align 1, !tbaa !30, !alias.scope !78
  %i.bx = load i8, ptr %i.bp, align 1, !tbaa !30, !alias.scope !78
  %i.by = load i8, ptr %i.bq, align 1, !tbaa !30, !alias.scope !78
  %i.bz = load i8, ptr %i.br, align 1, !tbaa !30, !alias.scope !78
  %i.ca = load i8, ptr %i.bs, align 1, !tbaa !30, !alias.scope !78
  %i.cb = load i8, ptr %i.bt, align 1, !tbaa !30, !alias.scope !78
  %i.cc = load i8, ptr %i.bu, align 1, !tbaa !30, !alias.scope !78
  %i.cd = load i8, ptr %i.bv, align 1, !tbaa !30, !alias.scope !78
  %i.ce = insertelement <8 x i8> poison, i8 %i.bw, i64 0
  %i.cf = insertelement <8 x i8> %i.ce, i8 %i.bx, i64 1
  %i.cg = insertelement <8 x i8> %i.cf, i8 %i.by, i64 2
  %i.ch = insertelement <8 x i8> %i.cg, i8 %i.bz, i64 3
  %i.ci = insertelement <8 x i8> %i.ch, i8 %i.ca, i64 4
  %i.cj = insertelement <8 x i8> %i.ci, i8 %i.cb, i64 5
  %i.ck = insertelement <8 x i8> %i.cj, i8 %i.cc, i64 6
  %i.cl = insertelement <8 x i8> %i.ck, i8 %i.cd, i64 7
  %i.cm = zext <8 x i8> %i.cl to <8 x i16>        ; 2 uses
  %i.cn = add nuw nsw <8 x i16> %i.bn, splat (i16 1)
  %i.co = add nuw nsw <8 x i16> %i.cn, %i.cm
  %i.cp = lshr <8 x i16> %i.co, splat (i16 1)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah
  %i.cr = or disjoint i64 %i.ah, 2                ; 2 uses
  %i.cs = or disjoint i64 %i.ah, 4                ; 2 uses
  %i.ct = or disjoint i64 %i.ah, 6                ; 2 uses
  %i.cu = or disjoint i64 %i.ah, 8                ; 2 uses
  %i.cv = or disjoint i64 %i.ah, 10               ; 2 uses
  %i.cw = or disjoint i64 %i.ah, 12               ; 2 uses
  %i.cx = or disjoint i64 %i.ah, 14               ; 2 uses
  %i.cy = add nuw nsw i64 %i.ah, 16               ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.cr
  %i.da = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.cs
  %i.db = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.ct
  %i.dc = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.cu
  %i.dd = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.cv
  %i.de = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.cw
  %i.df = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.cx
  %i.dg = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.cy
  %i.dh = load i8, ptr %i.cz, align 1, !tbaa !30, !alias.scope !79
  %i.di = load i8, ptr %i.da, align 1, !tbaa !30, !alias.scope !79
  %i.dj = load i8, ptr %i.db, align 1, !tbaa !30, !alias.scope !79
  %i.dk = load i8, ptr %i.dc, align 1, !tbaa !30, !alias.scope !79
  %i.dl = load i8, ptr %i.dd, align 1, !tbaa !30, !alias.scope !79
  %i.dm = load i8, ptr %i.de, align 1, !tbaa !30, !alias.scope !79
  %i.dn = load i8, ptr %i.df, align 1, !tbaa !30, !alias.scope !79
  %i.do = load i8, ptr %i.dg, align 1, !tbaa !30, !alias.scope !79
  %i.dp = insertelement <8 x i8> poison, i8 %i.dh, i64 0
  %i.dq = insertelement <8 x i8> %i.dp, i8 %i.di, i64 1
  %i.dr = insertelement <8 x i8> %i.dq, i8 %i.dj, i64 2
  %i.ds = insertelement <8 x i8> %i.dr, i8 %i.dk, i64 3
  %i.dt = insertelement <8 x i8> %i.ds, i8 %i.dl, i64 4
  %i.du = insertelement <8 x i8> %i.dt, i8 %i.dm, i64 5
  %i.dv = insertelement <8 x i8> %i.du, i8 %i.dn, i64 6
  %i.dw = insertelement <8 x i8> %i.dv, i8 %i.do, i64 7
  %i.dx = zext <8 x i8> %i.dw to <8 x i16>
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.cr
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.cs
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ct
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.cu
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.cv
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.cw
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.cx
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.cy
  %i.eg = load i8, ptr %i.dy, align 1, !tbaa !30, !alias.scope !80
  %i.eh = load i8, ptr %i.dz, align 1, !tbaa !30, !alias.scope !80
  %i.ei = load i8, ptr %i.ea, align 1, !tbaa !30, !alias.scope !80
  %i.ej = load i8, ptr %i.eb, align 1, !tbaa !30, !alias.scope !80
  %i.ek = load i8, ptr %i.ec, align 1, !tbaa !30, !alias.scope !80
  %i.el = load i8, ptr %i.ed, align 1, !tbaa !30, !alias.scope !80
  %i.em = load i8, ptr %i.ee, align 1, !tbaa !30, !alias.scope !80
  %i.en = load i8, ptr %i.ef, align 1, !tbaa !30, !alias.scope !80
  %i.eo = insertelement <8 x i8> poison, i8 %i.eg, i64 0
  %i.ep = insertelement <8 x i8> %i.eo, i8 %i.eh, i64 1
  %i.eq = insertelement <8 x i8> %i.ep, i8 %i.ei, i64 2
  %i.er = insertelement <8 x i8> %i.eq, i8 %i.ej, i64 3
  %i.es = insertelement <8 x i8> %i.er, i8 %i.ek, i64 4
  %i.et = insertelement <8 x i8> %i.es, i8 %i.el, i64 5
  %i.eu = insertelement <8 x i8> %i.et, i8 %i.em, i64 6
  %i.ev = insertelement <8 x i8> %i.eu, i8 %i.en, i64 7
  %i.ew = zext <8 x i8> %i.ev to <8 x i16>
  %i.ex = add nuw nsw <8 x i16> %i.bn, splat (i16 2)
  %i.ey = add nuw nsw <8 x i16> %i.ex, %i.cm
  %i.ez = add nuw nsw <8 x i16> %i.ey, %i.dx
  %i.fa = add nuw nsw <8 x i16> %i.ez, %i.ew
  %i.fb = lshr <8 x i16> %i.fa, splat (i16 2)
  %i.fc = shufflevector <8 x i16> %i.cp, <8 x i16> %i.fb, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec = trunc nuw <16 x i16> %i.fc to <16 x i8>
  store <16 x i8> %interleaved.vec, ptr %i.cq, align 1, !tbaa !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %scalar.ph.preheader, label %vector.body, !llvm.loop !69

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph.us
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.us ], [ %i.ae, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %indvars.iv ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !30
  %i.fg = zext i8 %i.ff to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !30
  %i.fj = zext i8 %i.fi to i16
  %i.fk = add nuw nsw i16 %i.fg, 1
  %i.fl = add nuw nsw i16 %i.fk, %i.fj
  %i.fm = lshr i16 %i.fl, 1
  %i.fn = trunc nuw i16 %i.fm to i8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv ; 2 uses
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !30
  %i.fp = load i8, ptr %i.fe, align 1, !tbaa !30
  %i.fq = zext i8 %i.fp to i16
  %i.fr = load i8, ptr %i.fh, align 1, !tbaa !30
  %i.fs = zext i8 %i.fr to i16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 7 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %indvars.iv.next
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !30
  %i.fv = zext i8 %i.fu to i16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv.next
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !30
  %i.fy = zext i8 %i.fx to i16
  %i.fz = add nuw nsw i16 %i.fq, 2
  %i.ga = add nuw nsw i16 %i.fz, %i.fs
  %i.gb = add nuw nsw i16 %i.ga, %i.fv
  %i.gc = add nuw nsw i16 %i.gb, %i.fy
  %i.gd = lshr i16 %i.gc, 2
  %i.ge = trunc nuw i16 %i.gd to i8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fo, i64 1
  store i8 %i.ge, ptr %i.gf, align 1, !tbaa !30
  %i.gg = icmp samesign ult i64 %indvars.iv.next, %i.f
  br i1 %i.gg, label %scalar.ph, label %._crit_edge.us, !llvm.loop !70

._crit_edge.us:                                   ; preds = %scalar.ph
  %i.gh = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %indvars.iv.next
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv.next
  %i.gj = load i8, ptr %i.gh, align 1, !tbaa !30
  %i.gk = zext i8 %i.gj to i16
  %i.gl = load i8, ptr %i.gi, align 1, !tbaa !30
  %i.gm = zext i8 %i.gl to i16
  %i.gn = add nuw nsw i16 %i.gk, 1
  %i.go = add nuw nsw i16 %i.gn, %i.gm
  %i.gp = lshr i16 %i.go, 1
  %i.gq = trunc nuw i16 %i.gp to i8               ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv.next ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 1
  store i8 %i.gq, ptr %i.gs, align 1, !tbaa !30
  store i8 %i.gq, ptr %i.gr, align 1, !tbaa !30
  %i.gt = getelementptr inbounds i8, ptr %.05961.us, i64 %i.e ; 24 uses
  %i.gu = add nuw nsw i32 %.062.us, 2             ; 2 uses
  %i.gv = icmp samesign ult i32 %i.gu, %i.a
  %indvar.next = add i64 %indvar, 1
  br i1 %i.gv, label %.lr.ph.us, label %.lr.ph.preheader, !llvm.loop !71

.lr.ph.preheader:                                 ; preds = %._crit_edge.us
  %i.gw = getelementptr inbounds i8, ptr %i.gt, i64 %i.b ; 6 uses
  %i.gx = zext nneg i32 %i.c to i64
  %i.gy = add nsw i64 %i.f, -1                    ; 2 uses
  %i.gz = and i64 %i.gy, -2                       ; 2 uses
  %i.ha = add nsw i64 %i.gz, %i.b
  %i.hb = add nsw i64 %i.ha, %i.e                 ; 2 uses
  %i.hc = mul nsw i64 %indvar, %i.e               ; 5 uses
  %i.hd = getelementptr i8, ptr %0, i64 %i.hb
  %i.he = getelementptr i8, ptr %i.hd, i64 1
  %i.hf = getelementptr i8, ptr %i.he, i64 %i.hc  ; 3 uses
  %10 = getelementptr i8, ptr %0, i64 %i.b
  %i.hg = getelementptr i8, ptr %10, i64 %i.e
  %i.hh = getelementptr i8, ptr %i.hg, i64 1
  %i.hi = getelementptr i8, ptr %i.hh, i64 %i.hc  ; 3 uses
  %i.hj = getelementptr i8, ptr %0, i64 %i.hb
  %i.hk = getelementptr i8, ptr %i.hj, i64 2
  %i.hl = getelementptr i8, ptr %i.hk, i64 %i.hc  ; 3 uses
  %11 = add nsw i64 %i.gz, %i.e                   ; 2 uses
  %i.hm = getelementptr i8, ptr %0, i64 %11
  %i.hn = getelementptr i8, ptr %i.hm, i64 1
  %i.ho = getelementptr i8, ptr %i.hn, i64 %i.hc  ; 2 uses
  %i.hp = getelementptr i8, ptr %i.gt, i64 2      ; 2 uses
  %i.hq = getelementptr i8, ptr %0, i64 %11
  %i.hr = getelementptr i8, ptr %i.hq, i64 3
  %i.hs = getelementptr i8, ptr %i.hr, i64 %i.hc  ; 2 uses
  %bound0190 = icmp ult ptr %i.gw, %i.hl
  %bound1191 = icmp ult ptr %i.hi, %i.hf
  %found.conflict192 = and i1 %bound0190, %bound1191
  %bound0193 = icmp ult ptr %i.gw, %i.ho
  %bound1194 = icmp ult ptr %i.gt, %i.hf
  %found.conflict195 = and i1 %bound0193, %bound1194
  %conflict.rdx196 = or i1 %found.conflict192, %found.conflict195
  %bound0197 = icmp ult ptr %i.gw, %i.hs
  %bound1198 = icmp ult ptr %i.hp, %i.hf
  %found.conflict199 = and i1 %bound0197, %bound1198
  %conflict.rdx200 = or i1 %conflict.rdx196, %found.conflict199
  %bound0201 = icmp ult ptr %i.hi, %i.ho
  %bound1202 = icmp ult ptr %i.gt, %i.hl
  %found.conflict203 = and i1 %bound0201, %bound1202
  %conflict.rdx204 = or i1 %conflict.rdx200, %found.conflict203
  %bound0205 = icmp ult ptr %i.hi, %i.hs
  %bound1206 = icmp ult ptr %i.hp, %i.hl
  %found.conflict207 = and i1 %bound0205, %bound1206
  %conflict.rdx208 = or i1 %conflict.rdx204, %found.conflict207
  br i1 %conflict.rdx208, label %.lr.ph.preheader217, label %vector.ph209

vector.ph209:                                     ; preds = %.lr.ph.preheader
  %i.ht = lshr i64 %i.gy, 1
  %i.hu = add nuw nsw i64 %i.ht, 1                ; 2 uses
  %i.hv = and i64 %i.hu, 7                        ; 2 uses
  %i.hw = icmp eq i64 %i.hv, 0
  %i.hx = select i1 %i.hw, i64 8, i64 %i.hv
  %n.vec210 = sub nsw i64 %i.hu, %i.hx            ; 2 uses
  %i.hy = shl i64 %n.vec210, 1
  br label %vector.body211

vector.body211:                                   ; preds = %vector.body211, %vector.ph209
  %index212 = phi i64 [ 0, %vector.ph209 ], [ %index.next214, %vector.body211 ] ; 2 uses
  %i.hz = shl nuw i64 %index212, 1                ; 17 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.hz
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 2
  %i.id = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.hz
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  %i.if = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.hz
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 6
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.hz
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.hz
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 10
  %i.il = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.hz
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 12
  %i.in = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.hz
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 14
  %i.ip = load i8, ptr %i.ia, align 1, !tbaa !30, !alias.scope !83
  %i.iq = load i8, ptr %i.ic, align 1, !tbaa !30, !alias.scope !83
  %i.ir = load i8, ptr %i.ie, align 1, !tbaa !30, !alias.scope !83
  %i.is = load i8, ptr %i.ig, align 1, !tbaa !30, !alias.scope !83
  %i.it = load i8, ptr %i.ii, align 1, !tbaa !30, !alias.scope !83
  %i.iu = load i8, ptr %i.ik, align 1, !tbaa !30, !alias.scope !83
  %i.iv = load i8, ptr %i.im, align 1, !tbaa !30, !alias.scope !83
  %i.iw = load i8, ptr %i.io, align 1, !tbaa !30, !alias.scope !83
  %i.ix = insertelement <8 x i8> poison, i8 %i.ip, i64 0
  %i.iy = insertelement <8 x i8> %i.ix, i8 %i.iq, i64 1
  %i.iz = insertelement <8 x i8> %i.iy, i8 %i.ir, i64 2
  %i.ja = insertelement <8 x i8> %i.iz, i8 %i.is, i64 3
  %i.jb = insertelement <8 x i8> %i.ja, i8 %i.it, i64 4
  %i.jc = insertelement <8 x i8> %i.jb, i8 %i.iu, i64 5
  %i.jd = insertelement <8 x i8> %i.jc, i8 %i.iv, i64 6
  %i.je = insertelement <8 x i8> %i.jd, i8 %i.iw, i64 7 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.hz
  %i.jg = zext <8 x i8> %i.je to <8 x i16>
  %i.jh = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.hz
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 2
  %i.jj = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.hz
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.hz
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 6
  %i.jn = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.hz
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.hz
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 10
  %i.jr = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.hz
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 12
  %i.jt = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.hz
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 14
  %i.jv = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.hz
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.jx = load i8, ptr %i.ji, align 1, !tbaa !30, !alias.scope !84
  %i.jy = load i8, ptr %i.jk, align 1, !tbaa !30, !alias.scope !84
  %i.jz = load i8, ptr %i.jm, align 1, !tbaa !30, !alias.scope !84
  %i.ka = load i8, ptr %i.jo, align 1, !tbaa !30, !alias.scope !84
  %i.kb = load i8, ptr %i.jq, align 1, !tbaa !30, !alias.scope !84
  %i.kc = load i8, ptr %i.js, align 1, !tbaa !30, !alias.scope !84
  %i.kd = load i8, ptr %i.ju, align 1, !tbaa !30, !alias.scope !84
  %i.ke = load i8, ptr %i.jw, align 1, !tbaa !30, !alias.scope !84
  %i.kf = insertelement <8 x i8> poison, i8 %i.jx, i64 0
  %i.kg = insertelement <8 x i8> %i.kf, i8 %i.jy, i64 1
  %i.kh = insertelement <8 x i8> %i.kg, i8 %i.jz, i64 2
  %i.ki = insertelement <8 x i8> %i.kh, i8 %i.ka, i64 3
  %i.kj = insertelement <8 x i8> %i.ki, i8 %i.kb, i64 4
  %i.kk = insertelement <8 x i8> %i.kj, i8 %i.kc, i64 5
  %i.kl = insertelement <8 x i8> %i.kk, i8 %i.kd, i64 6
  %i.km = insertelement <8 x i8> %i.kl, i8 %i.ke, i64 7
  %i.kn = zext <8 x i8> %i.km to <8 x i16>
  %i.ko = add nuw nsw <8 x i16> %i.jg, splat (i16 1)
  %i.kp = add nuw nsw <8 x i16> %i.ko, %i.kn
  %i.kq = lshr <8 x i16> %i.kp, splat (i16 1)
  %i.kr = trunc nuw <8 x i16> %i.kq to <8 x i8>
  %interleaved.vec213 = shufflevector <8 x i8> %i.je, <8 x i8> %i.kr, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec213, ptr %i.jf, align 1, !tbaa !30
  %index.next214 = add nuw i64 %index212, 8       ; 2 uses
  %i.ks = icmp eq i64 %index.next214, %n.vec210
  br i1 %i.ks, label %.lr.ph.preheader217, label %vector.body211, !llvm.loop !75

.lr.ph.preheader217:                              ; preds = %vector.body211, %.lr.ph.preheader
  %indvars.iv72.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.hy, %vector.body211 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader217, %.lr.ph
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %.lr.ph ], [ %indvars.iv72.ph, %.lr.ph.preheader217 ] ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv72
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !30  ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.gw, i64 %indvars.iv72 ; 2 uses
  store i8 %i.ku, ptr %i.kv, align 1, !tbaa !30
  %i.kw = zext i8 %i.ku to i16
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 2 ; 5 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.next73
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !30
  %i.kz = zext i8 %i.ky to i16
  %i.la = add nuw nsw i16 %i.kw, 1
  %i.lb = add nuw nsw i16 %i.la, %i.kz
  %i.lc = lshr i16 %i.lb, 1
  %i.ld = trunc nuw i16 %i.lc to i8
  %i.le = getelementptr inbounds nuw i8, ptr %i.kv, i64 1
  store i8 %i.ld, ptr %i.le, align 1, !tbaa !30
  %i.lf = icmp samesign ult i64 %indvars.iv.next73, %i.gx
  br i1 %i.lf, label %.lr.ph, label %._crit_edge, !llvm.loop !76

._crit_edge:                                      ; preds = %.lr.ph
  %i.lg = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv.next73
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !30  ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.gw, i64 %indvars.iv.next73 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 1
  store i8 %i.lh, ptr %i.lj, align 1, !tbaa !30
  store i8 %i.lh, ptr %i.li, align 1, !tbaa !30
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @interp_pixels(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef range(i32 1536, 3073) %2, i32 noundef range(i32 1024, 2049) %3) unnamed_addr #5 {
.lr.ph.us.preheader:
  %i.a = lshr i32 %2, 1
  %i.b = zext nneg i32 %i.a to i64
  %i.c = zext nneg i32 %2 to i64
  %i.d = add nsw i32 %2, -4
  %i.e = zext i32 %i.d to i64                     ; 5 uses
  %i.f = zext nneg i32 %3 to i64
  %i.g = sext i32 %1 to i64
  %i.h = and i64 %i.e, 2
  %lcmp.mod.not.not = icmp eq i64 %i.h, 0
  %i.i = lshr i64 %i.e, 1
  %indvars.iv.next.prol = add nsw i64 %i.e, -2
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv37 = phi i64 [ %i.f, %.lr.ph.us.preheader ], [ %indvars.iv.next38, %..loopexit_crit_edge.us ] ; 2 uses
  %indvars.iv.next38 = add nsw i64 %indvars.iv37, -2 ; 3 uses
  %i.j = trunc nuw nsw i64 %indvars.iv.next38 to i32
  %i.k = lshr i32 %i.j, 1
  %i.l = mul nsw i32 %i.k, %1
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m ; 4 uses
  %i.o = mul nsw i64 %indvars.iv.next38, %i.g
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o ; 4 uses
  %i.q = getelementptr i8, ptr %i.n, i64 %i.b
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !30    ; 2 uses
  %i.t = getelementptr i8, ptr %i.p, i64 %i.c     ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -1
  store i8 %i.s, ptr %i.u, align 1, !tbaa !30
  %i.v = getelementptr i8, ptr %i.t, i64 -2
  store i8 %i.s, ptr %i.v, align 1, !tbaa !30
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.lr.ph.us.new

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.us
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !30    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.e ; 2 uses
  store i8 %i.x, ptr %i.y, align 1, !tbaa !30
  %i.z = zext i8 %i.x to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !30
  %i.ac = zext i8 %i.ab to i16
  %i.ad = add nuw nsw i16 %i.z, 1
  %i.ae = add nuw nsw i16 %i.ad, %i.ac
  %i.af = lshr i16 %i.ae, 1
  %i.ag = trunc nuw i16 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !30
  br label %.lr.ph.us.new

.lr.ph.us.new:                                    ; preds = %.lr.ph.us, %.prol.loopexit.unr-lcssa
  %indvars.iv.unr = phi i64 [ %i.e, %.lr.ph.us ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.lr.ph.us.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %.lr.ph.us.new ], [ %indvars.iv.next.1, %bb.a ] ; 5 uses
  %i.ai = lshr i64 %indvars.iv, 1
  %i.aj = and i64 %i.ai, 2147483647
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.aj ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !30  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv ; 2 uses
  store i8 %i.al, ptr %i.am, align 1, !tbaa !30
  %i.an = zext i8 %i.al to i16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !30
  %i.aq = zext i8 %i.ap to i16
  %i.ar = add nuw nsw i16 %i.an, 1
  %i.as = add nuw nsw i16 %i.ar, %i.aq
  %i.at = lshr i16 %i.as, 1
  %i.au = trunc nuw i16 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !30
  %indvars.iv.next = add nsw i64 %indvars.iv, -2  ; 2 uses
  %i.aw = lshr i64 %indvars.iv.next, 1
  %i.ax = and i64 %i.aw, 2147483647
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ax ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !30  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv.next ; 2 uses
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !30
  %i.bb = zext i8 %i.az to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !30
  %i.be = zext i8 %i.bd to i16
  %i.bf = add nuw nsw i16 %i.bb, 1
  %i.bg = add nuw nsw i16 %i.bf, %i.be
  %i.bh = lshr i16 %i.bg, 1
  %i.bi = trunc nuw i16 %i.bh to i8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !30
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -4
  %i.bk = icmp sgt i64 %indvars.iv, 3
  br i1 %i.bk, label %bb.a, label %..loopexit_crit_edge.us, !llvm.loop !85

..loopexit_crit_edge.us:                          ; preds = %bb.a
  %i.bl = icmp samesign ugt i64 %indvars.iv37, 3
  br i1 %i.bl, label %.lr.ph.us, label %.split32.us, !llvm.loop !86

.split32.us:                                      ; preds = %..loopexit_crit_edge.us
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc i32 @read_hufftable(ptr initializes((16, 24)) %.32.val, ptr noundef %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.32.val, i64 16 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.32.val, i64 52 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !42   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.32.val, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.32.val, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37   ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 4 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = trunc i64 %i.j to i32
  %i.l = icmp slt i32 %i.c, 0
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.c, i32 %i.k)
  %.0.i.i = select i1 %i.l, i32 0, i32 %..i.i
  %i.m = sext i32 %.0.i.i to i64
  %i.n = getelementptr inbounds i8, ptr %i.g, i64 %i.m ; 3 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = sub i64 %i.h, %i.o
  %i.q = icmp slt i64 %i.p, 1
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.e, ptr %i.a, align 8, !tbaa !36
  br label %bytestream2_get_byte.exit

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 3 uses
  store ptr %i.r, ptr %i.a, align 8, !tbaa !39
  %i.s = load i8, ptr %i.n, align 1, !tbaa !30
  %i.t = zext i8 %i.s to i32
  %.pre = ptrtoint ptr %i.r to i64
  %i.u = add nuw nsw i32 %i.t, 1
  br label %bytestream2_get_byte.exit

bytestream2_get_byte.exit:                        ; preds = %bb.b, %bb.c
  %.pre-phi = phi i64 [ %i.h, %bb.b ], [ %.pre, %bb.c ]
  %.promoted = phi ptr [ %i.e, %bb.b ], [ %i.r, %bb.c ]
  %.0.i = phi i32 [ 1, %bb.b ], [ %i.u, %bb.c ]   ; 3 uses
  %i.v = sub i64 %i.h, %.pre-phi
  %i.w = trunc i64 %i.v to i32
  %i.x = shl nuw nsw i32 %.0.i, 2
  %i.y = icmp sgt i32 %i.x, %i.w
  br i1 %i.y, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bytestream2_get_byte.exit
  %i.z = getelementptr inbounds nuw i8, ptr %.32.val, i64 56 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.32.val, i64 312 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.32.val, i64 824 ; 2 uses
  %wide.trip.count = zext nneg i32 %.0.i to i64
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.ac = phi ptr [ %.promoted, %.preheader ], [ %i.ah, %bb.e ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 2 uses
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !39
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !30  ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 3 ; 2 uses
  store ptr %i.af, ptr %i.a, align 8, !tbaa !39
  %i.ag = load i16, ptr %i.ad, align 1, !tbaa !30
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  store ptr %i.ah, ptr %i.a, align 8, !tbaa !39
  %i.ai = icmp ult i8 %i.ae, 16
  br i1 %i.ai, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.aj = load i8, ptr %i.af, align 1, !tbaa !30
  %i.ak = tail call i16 @llvm.bswap.i16(i16 %i.ag)
  %i.al = add nuw nsw i8 %i.ae, 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  store i8 %i.al, ptr %i.am, align 1, !tbaa !30
  %narrow = sub nuw nsw i8 15, %i.ae
  %i.an = zext nneg i8 %narrow to i16
  %i.ao = lshr i16 %i.ak, %i.an
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv
  store i16 %i.ao, ptr %i.ap, align 2, !tbaa !88
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv
  store i8 %i.aj, ptr %i.aq, align 1, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge41, label %bb.d, !llvm.loop !87

.critedge41:                                      ; preds = %bb.e
  tail call void @ff_vlc_free(ptr noundef %0) #10
  %i.ar = tail call i32 @ff_vlc_init_sparse(ptr noundef %0, i32 noundef 12, i32 noundef %.0.i, ptr noundef nonnull %i.z, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.aa, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %i.ab, i32 noundef 1, i32 noundef 1, i32 noundef 0) #10
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = trunc i64 %i.aw to i32
  store i32 %i.ax, ptr %i.b, align 4, !tbaa !42
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bytestream2_get_byte.exit, %.critedge41
  %.3 = phi i32 [ -1094995529, %bytestream2_get_byte.exit ], [ %i.ar, %.critedge41 ], [ -1094995529, %bb.d ]
  ret i32 %.3
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @decode_huff(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef range(i32 3, 5) %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !42   ; 2 uses
  %i.f = sub i32 %2, %3
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37   ; 3 uses
  %i.k = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = trunc i64 %i.m to i32
  %i.o = icmp slt i32 %i.e, 0
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.n)
  %.0.i.i = select i1 %i.o, i32 0, i32 %..i.i
  %i.p = sext i32 %.0.i.i to i64
  %i.q = getelementptr inbounds i8, ptr %i.j, i64 %i.p ; 6 uses
  store ptr %i.q, ptr %i.c, align 8, !tbaa !36
  %i.r = ptrtoint ptr %i.q to i64                 ; 6 uses
  %i.s = sub i64 %i.k, %i.r                       ; 2 uses
  %i.t = trunc i64 %i.s to i32                    ; 3 uses
  %i.u = icmp ugt i32 %i.t, 268435455
  %.not.i.i = icmp eq ptr %i.j, null
  %or.cond = or i1 %.not.i.i, %i.u
  br i1 %or.cond, label %bits_init8_be.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = and i64 %i.s, 268435455
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.v ; 11 uses
  %.not.i.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.not.i.i, label %.preheader.lr.ph, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = shl nuw nsw i32 %i.t, 3
  %i.y = load i64, ptr %i.q, align 1, !tbaa !30
  %i.z = tail call noundef i64 @llvm.bswap.i64(i64 %i.y)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b, %bb.c
  %.sroa.134.0 = phi i32 [ 0, %bb.b ], [ %i.x, %bb.c ] ; 4 uses
  %.sroa.94.7 = phi i32 [ 0, %bb.b ], [ 64, %bb.c ]
  %.sroa.65.7 = phi ptr [ %i.q, %bb.b ], [ %i.aa, %bb.c ]
  %.sroa.0.6 = phi i64 [ 0, %bb.b ], [ %i.z, %bb.c ]
  %i.ab = zext nneg i32 %3 to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @img_info, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 6
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !35
  %i.af = zext i16 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 1080
  br label %.preheader

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.lr.ph
  %.sroa.0.0240 = phi i64 [ %.sroa.0.6, %.preheader.lr.ph ], [ %.sroa.0.0240.be, %.preheader.backedge ] ; 2 uses
  %.sroa.65.0239 = phi ptr [ %.sroa.65.7, %.preheader.lr.ph ], [ %.sroa.65.0239.be, %.preheader.backedge ] ; 3 uses
  %.sroa.94.0238 = phi i32 [ %.sroa.94.7, %.preheader.lr.ph ], [ %.sroa.94.0238.be, %.preheader.backedge ] ; 3 uses
  %i.aj = ptrtoint ptr %.sroa.65.0239 to i64
  %i.ak = sub i64 %i.r, %i.aj
  %.tr.i207 = trunc i64 %i.ak to i32
  %i.al = shl i32 %.tr.i207, 3
  %i.am = add i32 %.sroa.94.0238, %.sroa.134.0
  %i.an = add i32 %i.am, %i.al
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph, label %bits_peek_be.exit._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bits_skip_be.exit
  %.sroa.0.1210 = phi i64 [ %.sroa.0.10, %bits_skip_be.exit ], [ %.sroa.0.0240, %.preheader ] ; 2 uses
  %.sroa.65.1209 = phi ptr [ %.sroa.65.11, %bits_skip_be.exit ], [ %.sroa.65.0239, %.preheader ] ; 4 uses
  %.sroa.94.1208 = phi i32 [ %.sroa.94.10, %bits_skip_be.exit ], [ %.sroa.94.0238, %.preheader ] ; 4 uses
  %i.ap = icmp ult i32 %.sroa.94.1208, 12
  %.not.i.i.i = icmp ult ptr %.sroa.65.1209, %i.w
  %or.cond192 = select i1 %i.ap, i1 %.not.i.i.i, i1 false
  br i1 %or.cond192, label %bb.d, label %bits_peek_be.exit

bb.d:                                             ; preds = %.lr.ph
  %i.aq = load i32, ptr %.sroa.65.1209, align 1, !tbaa !30
  %i.ar = tail call i32 @llvm.bswap.i32(i32 %i.aq)
  %i.as = zext i32 %i.ar to i64
  %i.at = sub nuw nsw i32 32, %.sroa.94.1208
  %i.au = zext nneg i32 %i.at to i64
  %i.av = shl nuw i64 %i.as, %i.au
  %i.aw = or i64 %i.av, %.sroa.0.1210
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.65.1209, i64 4
  %i.ay = or disjoint i32 %.sroa.94.1208, 32
  br label %bits_peek_be.exit

bits_peek_be.exit:                                ; preds = %.lr.ph, %bb.d
  %.sroa.94.8 = phi i32 [ %i.ay, %bb.d ], [ %.sroa.94.1208, %.lr.ph ] ; 5 uses
  %.sroa.65.8 = phi ptr [ %i.ax, %bb.d ], [ %.sroa.65.1209, %.lr.ph ] ; 6 uses
  %.sroa.0.7 = phi i64 [ %i.aw, %bb.d ], [ %.sroa.0.1210, %.lr.ph ] ; 3 uses
  %i.az = icmp ugt i64 %.sroa.0.7, -4503599627370497
  br i1 %i.az, label %bits_peek_be.exit._crit_edge, label %bb.e

bb.e:                                             ; preds = %bits_peek_be.exit
  %i.ba = icmp ugt i32 %.sroa.94.8, 8
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = shl i64 %.sroa.0.7, 8
  %i.bc = add i32 %.sroa.94.8, -8
  br label %bits_skip_be.exit

bb.g:                                             ; preds = %bb.e
  %i.bd = sub nuw nsw i32 8, %.sroa.94.8          ; 2 uses
  %.not.i.i66 = icmp ult ptr %.sroa.65.8, %i.w
  br i1 %.not.i.i66, label %bb.h, label %bits_priv_refill_64_be.exit.i

bb.h:                                             ; preds = %bb.g
  %i.be = load i64, ptr %.sroa.65.8, align 1, !tbaa !30
  %i.bf = tail call noundef i64 @llvm.bswap.i64(i64 %i.be)
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.65.8, i64 8
  br label %bits_priv_refill_64_be.exit.i

bits_priv_refill_64_be.exit.i:                    ; preds = %bb.h, %bb.g
  %.sroa.94.9 = phi i32 [ 64, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %.sroa.65.9 = phi ptr [ %i.bg, %bb.h ], [ %.sroa.65.8, %bb.g ] ; 2 uses
  %.sroa.0.8 = phi i64 [ %i.bf, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %.not.i = icmp eq i32 %.sroa.94.8, 8
  br i1 %.not.i, label %bits_skip_be.exit, label %bb.i

bb.i:                                             ; preds = %bits_priv_refill_64_be.exit.i
  %i.bh = zext nneg i32 %i.bd to i64
  %i.bi = shl i64 %.sroa.0.8, %i.bh
  %i.bj = sub nsw i32 %.sroa.94.9, %i.bd
  br label %bits_skip_be.exit

bits_skip_be.exit:                                ; preds = %bb.f, %bb.i, %bits_priv_refill_64_be.exit.i
  %.sroa.94.10 = phi i32 [ %.sroa.94.9, %bits_priv_refill_64_be.exit.i ], [ %i.bj, %bb.i ], [ %i.bc, %bb.f ] ; 3 uses
  %.sroa.65.11 = phi ptr [ %.sroa.65.9, %bits_priv_refill_64_be.exit.i ], [ %.sroa.65.9, %bb.i ], [ %.sroa.65.8, %bb.f ] ; 3 uses
  %.sroa.0.10 = phi i64 [ %.sroa.0.8, %bits_priv_refill_64_be.exit.i ], [ %i.bi, %bb.i ], [ %i.bb, %bb.f ] ; 2 uses
  %i.bk = ptrtoint ptr %.sroa.65.11 to i64
  %i.bl = sub i64 %i.r, %i.bk
  %.tr.i = trunc i64 %i.bl to i32
  %i.bm = shl i32 %.tr.i, 3
  %i.bn = add i32 %.sroa.94.10, %.sroa.134.0
  %i.bo = add i32 %i.bn, %i.bm
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph, label %bits_peek_be.exit._crit_edge, !llvm.loop !89

bits_peek_be.exit._crit_edge:                     ; preds = %bits_skip_be.exit, %bits_peek_be.exit, %.preheader
  %.sroa.94.2 = phi i32 [ %.sroa.94.0238, %.preheader ], [ %.sroa.94.8, %bits_peek_be.exit ], [ %.sroa.94.10, %bits_skip_be.exit ] ; 4 uses
  %.sroa.65.2 = phi ptr [ %.sroa.65.0239, %.preheader ], [ %.sroa.65.8, %bits_peek_be.exit ], [ %.sroa.65.11, %bits_skip_be.exit ] ; 4 uses
  %.sroa.0.2 = phi i64 [ %.sroa.0.0240, %.preheader ], [ %.sroa.0.7, %bits_peek_be.exit ], [ %.sroa.0.10, %bits_skip_be.exit ] ; 2 uses
  %i.bq = icmp ult i32 %.sroa.94.2, 24
  %.not.i.i.i71 = icmp ult ptr %.sroa.65.2, %i.w
  %or.cond193 = select i1 %i.bq, i1 %.not.i.i.i71, i1 false
  br i1 %or.cond193, label %bb.j, label %bits_peek_be.exit73

bb.j:                                             ; preds = %bits_peek_be.exit._crit_edge
  %i.br = load i32, ptr %.sroa.65.2, align 1, !tbaa !30
  %i.bs = tail call i32 @llvm.bswap.i32(i32 %i.br)
  %i.bt = zext i32 %i.bs to i64
  %i.bu = sub nuw nsw i32 32, %.sroa.94.2
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = shl nuw i64 %i.bt, %i.bv
  %i.bx = or i64 %i.bw, %.sroa.0.2
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.65.2, i64 4
  %i.bz = or disjoint i32 %.sroa.94.2, 32
  br label %bits_peek_be.exit73

bits_peek_be.exit73:                              ; preds = %bits_peek_be.exit._crit_edge, %bb.j
  %.sroa.94.11 = phi i32 [ %i.bz, %bb.j ], [ %.sroa.94.2, %bits_peek_be.exit._crit_edge ] ; 2 uses
  %.sroa.65.12 = phi ptr [ %i.by, %bb.j ], [ %.sroa.65.2, %bits_peek_be.exit._crit_edge ] ; 2 uses
  %.sroa.0.11 = phi i64 [ %i.bx, %bb.j ], [ %.sroa.0.2, %bits_peek_be.exit._crit_edge ] ; 3 uses
  %.050.in.mask218 = and i64 %.sroa.0.11, -1099511627776
  %.not219 = icmp eq i64 %.050.in.mask218, -2199023255552
  br i1 %.not219, label %._crit_edge224, label %.lr.ph223

.lr.ph223:                                        ; preds = %bits_peek_be.exit73, %bits_peek_be.exit87
  %.sroa.0.3222 = phi i64 [ %.sroa.0.15, %bits_peek_be.exit87 ], [ %.sroa.0.11, %bits_peek_be.exit73 ]
  %.sroa.65.3221 = phi ptr [ %.sroa.65.16, %bits_peek_be.exit87 ], [ %.sroa.65.12, %bits_peek_be.exit73 ] ; 6 uses
  %.sroa.94.3220 = phi i32 [ %.sroa.94.14, %bits_peek_be.exit87 ], [ %.sroa.94.11, %bits_peek_be.exit73 ] ; 5 uses
  %i.ca = ptrtoint ptr %.sroa.65.3221 to i64
  %i.cb = sub i64 %i.r, %i.ca
  %.tr.i74 = trunc i64 %i.cb to i32
  %i.cc = shl i32 %.tr.i74, 3
  %i.cd = add i32 %.sroa.94.3220, %.sroa.134.0
  %i.ce = add i32 %i.cd, %i.cc
  %i.cf = icmp slt i32 %i.ce, 1
  br i1 %i.cf, label %bits_init8_be.exit.thread, label %bb.k

bb.k:                                             ; preds = %.lr.ph223
  %i.cg = icmp ugt i32 %.sroa.94.3220, 1
  br i1 %i.cg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ch = shl i64 %.sroa.0.3222, 1
  %i.ci = add i32 %.sroa.94.3220, -1
  br label %bits_skip_be.exit80

bb.m:                                             ; preds = %bb.k
  %i.cj = sub nuw nsw i32 1, %.sroa.94.3220       ; 2 uses
  %.not.i.i75 = icmp ult ptr %.sroa.65.3221, %i.w
  br i1 %.not.i.i75, label %bb.n, label %bits_priv_refill_64_be.exit.i76

bb.n:                                             ; preds = %bb.m
  %i.ck = load i64, ptr %.sroa.65.3221, align 1, !tbaa !30
  %i.cl = tail call noundef i64 @llvm.bswap.i64(i64 %i.ck)
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.65.3221, i64 8
  br label %bits_priv_refill_64_be.exit.i76

bits_priv_refill_64_be.exit.i76:                  ; preds = %bb.n, %bb.m
  %.sroa.94.12 = phi i32 [ 64, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %.sroa.65.13 = phi ptr [ %i.cm, %bb.n ], [ %.sroa.65.3221, %bb.m ] ; 2 uses
  %.sroa.0.12 = phi i64 [ %i.cl, %bb.n ], [ 0, %bb.m ] ; 2 uses
  %.not.i77 = icmp eq i32 %.sroa.94.3220, 1
  br i1 %.not.i77, label %bits_skip_be.exit80, label %bb.o

bb.o:                                             ; preds = %bits_priv_refill_64_be.exit.i76
  %i.cn = zext nneg i32 %i.cj to i64
  %i.co = shl i64 %.sroa.0.12, %i.cn
  %i.cp = sub nsw i32 %.sroa.94.12, %i.cj
  br label %bits_skip_be.exit80

bits_skip_be.exit80:                              ; preds = %bb.l, %bb.o, %bits_priv_refill_64_be.exit.i76
  %.sroa.94.13 = phi i32 [ %.sroa.94.12, %bits_priv_refill_64_be.exit.i76 ], [ %i.cp, %bb.o ], [ %i.ci, %bb.l ] ; 4 uses
  %.sroa.65.15 = phi ptr [ %.sroa.65.13, %bits_priv_refill_64_be.exit.i76 ], [ %.sroa.65.13, %bb.o ], [ %.sroa.65.3221, %bb.l ] ; 4 uses
  %.sroa.0.14 = phi i64 [ %.sroa.0.12, %bits_priv_refill_64_be.exit.i76 ], [ %i.co, %bb.o ], [ %i.ch, %bb.l ] ; 2 uses
  %i.cq = icmp ult i32 %.sroa.94.13, 24
  %.not.i.i.i85 = icmp ult ptr %.sroa.65.15, %i.w
  %or.cond194 = select i1 %i.cq, i1 %.not.i.i.i85, i1 false
  br i1 %or.cond194, label %bb.p, label %bits_peek_be.exit87

bb.p:                                             ; preds = %bits_skip_be.exit80
  %i.cr = load i32, ptr %.sroa.65.15, align 1, !tbaa !30
  %i.cs = tail call i32 @llvm.bswap.i32(i32 %i.cr)
  %i.ct = zext i32 %i.cs to i64
  %i.cu = sub nuw nsw i32 32, %.sroa.94.13
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = shl nuw i64 %i.ct, %i.cv
  %i.cx = or i64 %i.cw, %.sroa.0.14
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.65.15, i64 4
  %i.cz = or disjoint i32 %.sroa.94.13, 32
  br label %bits_peek_be.exit87

bits_peek_be.exit87:                              ; preds = %bits_skip_be.exit80, %bb.p
  %.sroa.94.14 = phi i32 [ %i.cz, %bb.p ], [ %.sroa.94.13, %bits_skip_be.exit80 ] ; 2 uses
  %.sroa.65.16 = phi ptr [ %i.cy, %bb.p ], [ %.sroa.65.15, %bits_skip_be.exit80 ] ; 2 uses
  %.sroa.0.15 = phi i64 [ %i.cx, %bb.p ], [ %.sroa.0.14, %bits_skip_be.exit80 ] ; 3 uses
  %.050.in.mask = and i64 %.sroa.0.15, -1099511627776
  %.not = icmp eq i64 %.050.in.mask, -2199023255552
  br i1 %.not, label %._crit_edge224, label %.lr.ph223, !llvm.loop !90

._crit_edge224:                                   ; preds = %bits_peek_be.exit87, %bits_peek_be.exit73
  %.sroa.94.3.lcssa = phi i32 [ %.sroa.94.11, %bits_peek_be.exit73 ], [ %.sroa.94.14, %bits_peek_be.exit87 ] ; 4 uses
  %.sroa.65.3.lcssa = phi ptr [ %.sroa.65.12, %bits_peek_be.exit73 ], [ %.sroa.65.16, %bits_peek_be.exit87 ] ; 5 uses
  %.sroa.0.3.lcssa = phi i64 [ %.sroa.0.11, %bits_peek_be.exit73 ], [ %.sroa.0.15, %bits_peek_be.exit87 ]
  %i.da = icmp ugt i32 %.sroa.94.3.lcssa, 24
  br i1 %i.da, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge224
  %i.db = shl i64 %.sroa.0.3.lcssa, 24
  %i.dc = add i32 %.sroa.94.3.lcssa, -24
  br label %bits_skip_be.exit93

bb.r:                                             ; preds = %._crit_edge224
  %i.dd = sub nuw nsw i32 24, %.sroa.94.3.lcssa   ; 2 uses
  %.not.i.i88 = icmp ult ptr %.sroa.65.3.lcssa, %i.w
  br i1 %.not.i.i88, label %bb.s, label %bits_priv_refill_64_be.exit.i89

bb.s:                                             ; preds = %bb.r
  %i.de = load i64, ptr %.sroa.65.3.lcssa, align 1, !tbaa !30
  %i.df = tail call noundef i64 @llvm.bswap.i64(i64 %i.de)
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.65.3.lcssa, i64 8
  br label %bits_priv_refill_64_be.exit.i89

bits_priv_refill_64_be.exit.i89:                  ; preds = %bb.s, %bb.r
  %.sroa.94.15 = phi i32 [ 64, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %.sroa.65.17 = phi ptr [ %i.dg, %bb.s ], [ %.sroa.65.3.lcssa, %bb.r ] ; 2 uses
  %.sroa.0.16 = phi i64 [ %i.df, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %.not.i90 = icmp eq i32 %.sroa.94.3.lcssa, 24
  br i1 %.not.i90, label %bits_skip_be.exit93, label %bb.t

bb.t:                                             ; preds = %bits_priv_refill_64_be.exit.i89
  %i.dh = zext nneg i32 %i.dd to i64
  %i.di = shl i64 %.sroa.0.16, %i.dh
  %i.dj = sub nsw i32 %.sroa.94.15, %i.dd
  br label %bits_skip_be.exit93

bits_skip_be.exit93:                              ; preds = %bb.q, %bb.t, %bits_priv_refill_64_be.exit.i89
  %.sroa.94.16 = phi i32 [ %.sroa.94.15, %bits_priv_refill_64_be.exit.i89 ], [ %i.dj, %bb.t ], [ %i.dc, %bb.q ] ; 4 uses
  %.sroa.65.19 = phi ptr [ %.sroa.65.17, %bits_priv_refill_64_be.exit.i89 ], [ %.sroa.65.17, %bb.t ], [ %.sroa.65.3.lcssa, %bb.q ] ; 4 uses
  %.sroa.0.18 = phi i64 [ %.sroa.0.16, %bits_priv_refill_64_be.exit.i89 ], [ %i.di, %bb.t ], [ %i.db, %bb.q ] ; 2 uses
  %i.dk = icmp ult i32 %.sroa.94.16, 15
  %.not.i.i.i98 = icmp ult ptr %.sroa.65.19, %i.w
  %or.cond195 = select i1 %i.dk, i1 %.not.i.i.i98, i1 false
  br i1 %or.cond195, label %bb.u, label %bits_peek_be.exit100

bb.u:                                             ; preds = %bits_skip_be.exit93
  %i.dl = load i32, ptr %.sroa.65.19, align 1, !tbaa !30
  %i.dm = tail call i32 @llvm.bswap.i32(i32 %i.dl)
  %i.dn = zext i32 %i.dm to i64
  %i.do = sub nuw nsw i32 32, %.sroa.94.16
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = shl nuw i64 %i.dn, %i.dp
  %i.dr = or i64 %i.dq, %.sroa.0.18
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.65.19, i64 4
  %i.dt = or disjoint i32 %.sroa.94.16, 32
  br label %bits_peek_be.exit100

bits_peek_be.exit100:                             ; preds = %bits_skip_be.exit93, %bb.u
  %.sroa.94.17 = phi i32 [ %i.dt, %bb.u ], [ %.sroa.94.16, %bits_skip_be.exit93 ] ; 5 uses
  %.sroa.65.20 = phi ptr [ %i.ds, %bb.u ], [ %.sroa.65.19, %bits_skip_be.exit93 ] ; 6 uses
  %.sroa.0.19 = phi i64 [ %i.dr, %bb.u ], [ %.sroa.0.18, %bits_skip_be.exit93 ] ; 4 uses
  %i.du = lshr i64 %.sroa.0.19, 49
  %i.dv = trunc nuw nsw i64 %i.du to i32
  %i.dw = and i32 %i.dv, 8191                     ; 2 uses
  %.not62 = icmp samesign ult i32 %i.dw, %i.af
  br i1 %.not62, label %bb.v, label %.thread186

bb.v:                                             ; preds = %bits_peek_be.exit100
  %i.dx = icmp ult i32 %.sroa.94.17, 2
  br i1 %i.dx, label %bb.w, label %bits_read_nz_be.exit

bb.w:                                             ; preds = %bb.v
  %.not.i.i102 = icmp ult ptr %.sroa.65.20, %i.w
  br i1 %.not.i.i102, label %bits_priv_refill_32_be.exit.i, label %bits_read_nz_be.exit.thread

bits_read_nz_be.exit.thread:                      ; preds = %bb.w
  %i.dy = lshr i64 %.sroa.0.19, 62
  br label %bb.y

bits_priv_refill_32_be.exit.i:                    ; preds = %bb.w
  %i.dz = load i32, ptr %.sroa.65.20, align 1, !tbaa !30
  %i.ea = tail call i32 @llvm.bswap.i32(i32 %i.dz)
  %i.eb = zext i32 %i.ea to i64
  %i.ec = sub nuw nsw i32 32, %.sroa.94.17
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = shl nuw i64 %i.eb, %i.ed
  %i.ef = or i64 %i.ee, %.sroa.0.19
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.65.20, i64 4
  %i.eh = or disjoint i32 %.sroa.94.17, 32
  br label %bits_read_nz_be.exit

bits_read_nz_be.exit:                             ; preds = %bb.v, %bits_priv_refill_32_be.exit.i
  %.sroa.65.21 = phi ptr [ %i.eg, %bits_priv_refill_32_be.exit.i ], [ %.sroa.65.20, %bb.v ] ; 2 uses
  %.sroa.0.20 = phi i64 [ %i.ef, %bits_priv_refill_32_be.exit.i ], [ %.sroa.0.19, %bb.v ] ; 2 uses
  %i.ei = phi i32 [ %i.eh, %bits_priv_refill_32_be.exit.i ], [ %.sroa.94.17, %bb.v ] ; 3 uses
  %i.ej = lshr i64 %.sroa.0.20, 62                ; 2 uses
  %i.ek = add i32 %i.ei, -2                       ; 2 uses
  %i.el = icmp ugt i32 %i.ek, 14
  br i1 %i.el, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bits_read_nz_be.exit
  %i.em = shl i64 %.sroa.0.20, 16
  %i.en = add i32 %i.ei, -16
  br label %bits_skip_be.exit108

bb.y:                                             ; preds = %bits_read_nz_be.exit.thread, %bits_read_nz_be.exit
  %i.eo = phi i32 [ 0, %bits_read_nz_be.exit.thread ], [ %i.ek, %bits_read_nz_be.exit ]
  %i.ep = phi i64 [ %i.dy, %bits_read_nz_be.exit.thread ], [ %i.ej, %bits_read_nz_be.exit ] ; 2 uses
  %i.eq = phi i32 [ 2, %bits_read_nz_be.exit.thread ], [ %i.ei, %bits_read_nz_be.exit ]
  %.sroa.65.21257 = phi ptr [ %.sroa.65.20, %bits_read_nz_be.exit.thread ], [ %.sroa.65.21, %bits_read_nz_be.exit ] ; 4 uses
  %i.er = sub nuw nsw i32 16, %i.eq               ; 2 uses
  %.not.i.i103 = icmp ult ptr %.sroa.65.21257, %i.w
  br i1 %.not.i.i103, label %bb.z, label %bits_priv_refill_64_be.exit.i104

bb.z:                                             ; preds = %bb.y
  %i.es = load i64, ptr %.sroa.65.21257, align 1, !tbaa !30
  %i.et = tail call noundef i64 @llvm.bswap.i64(i64 %i.es)
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.65.21257, i64 8
  br label %bits_priv_refill_64_be.exit.i104

bits_priv_refill_64_be.exit.i104:                 ; preds = %bb.z, %bb.y
  %.sroa.94.18 = phi i32 [ 64, %bb.z ], [ 0, %bb.y ] ; 2 uses
  %.sroa.65.22 = phi ptr [ %i.eu, %bb.z ], [ %.sroa.65.21257, %bb.y ] ; 2 uses
  %.sroa.0.21 = phi i64 [ %i.et, %bb.z ], [ 0, %bb.y ] ; 2 uses
  %.not.i105 = icmp eq i32 %i.eo, 14
  br i1 %.not.i105, label %bits_skip_be.exit108, label %bb.aa

bb.aa:                                            ; preds = %bits_priv_refill_64_be.exit.i104
  %i.ev = zext nneg i32 %i.er to i64
  %i.ew = shl i64 %.sroa.0.21, %i.ev
  %i.ex = sub nsw i32 %.sroa.94.18, %i.er
  br label %bits_skip_be.exit108

bits_skip_be.exit108:                             ; preds = %bb.x, %bb.aa, %bits_priv_refill_64_be.exit.i104
  %i.ey = phi i64 [ %i.ep, %bits_priv_refill_64_be.exit.i104 ], [ %i.ep, %bb.aa ], [ %i.ej, %bb.x ] ; 3 uses
  %.sroa.94.19 = phi i32 [ %.sroa.94.18, %bits_priv_refill_64_be.exit.i104 ], [ %i.ex, %bb.aa ], [ %i.en, %bb.x ] ; 2 uses
  %.sroa.65.24 = phi ptr [ %.sroa.65.22, %bits_priv_refill_64_be.exit.i104 ], [ %.sroa.65.22, %bb.aa ], [ %.sroa.65.21, %bb.x ] ; 2 uses
  %.sroa.0.23 = phi i64 [ %.sroa.0.21, %bits_priv_refill_64_be.exit.i104 ], [ %i.ew, %bb.aa ], [ %i.em, %bb.x ] ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 1
  br i1 %i.ez, label %bits_init8_be.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bits_skip_be.exit108
  %i.fa = getelementptr inbounds nuw i8, ptr @__const.decode_huff.type2idx, i64 %i.ey
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !30
  %i.fc = zext i8 %i.fb to i64                    ; 3 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.fc
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !39
  %i.ff = icmp ne i64 %i.ey, 0
  %i.fg = zext i1 %i.ff to i32                    ; 2 uses
  %i.fh = lshr i32 %i.dw, %i.fg
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.fc
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !28
  %i.fk = mul nsw i32 %i.fj, %i.fh
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds i8, ptr %i.fe, i64 %i.fl
  %i.fn = load i32, ptr %i.ah, align 8, !tbaa !40
  %i.fo = add nsw i32 %i.f, %i.fg
  %i.fp = ashr i32 %i.fn, %i.fo                   ; 2 uses
  %.not63228 = icmp sgt i32 %i.fp, 0
  br i1 %.not63228, label %.lr.ph234, label %.preheader.backedge

.preheader.backedge:                              ; preds = %.critedge, %bb.ab
  %.sroa.0.0240.be = phi i64 [ %.sroa.0.23, %bb.ab ], [ %i.ib, %.critedge ]
  %.sroa.65.0239.be = phi ptr [ %.sroa.65.24, %bb.ab ], [ %.sroa.65.28, %.critedge ]
  %.sroa.94.0238.be = phi i32 [ %.sroa.94.19, %bb.ab ], [ %i.hz, %.critedge ]
  br label %.preheader

.lr.ph234:                                        ; preds = %bb.ab
  %i.fq = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %i.fc ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %wide.trip.count = zext nneg i32 %i.fp to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph234, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph234 ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %.sroa.0.4231 = phi i64 [ %.sroa.0.23, %.lr.ph234 ], [ %i.ib, %.critedge ] ; 3 uses
  %.sroa.65.4230 = phi ptr [ %.sroa.65.24, %.lr.ph234 ], [ %.sroa.65.28, %.critedge ] ; 6 uses
  %.sroa.94.4229 = phi i32 [ %.sroa.94.19, %.lr.ph234 ], [ %i.hz, %.critedge ] ; 6 uses
  %i.fs = ptrtoint ptr %.sroa.65.4230 to i64
  %i.ft = sub i64 %i.r, %i.fs
  %.tr.i109 = trunc i64 %i.ft to i32
  %i.fu = shl i32 %.tr.i109, 3
  %i.fv = add i32 %.sroa.94.4229, %.sroa.134.0
  %i.fw = add i32 %i.fv, %i.fu
  %i.fx = icmp slt i32 %i.fw, 1
  br i1 %i.fx, label %bits_init8_be.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fy = load ptr, ptr %i.fr, align 8, !tbaa !94 ; 2 uses
  %i.fz = load i32, ptr %i.fq, align 8, !tbaa !95 ; 5 uses
  %.not.i.i110 = icmp eq i32 %i.fz, 0
  br i1 %.not.i.i110, label %bits_peek_be.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ga = icmp ugt i32 %i.fz, %.sroa.94.4229
  %.not.i.i.i.i = icmp ult ptr %.sroa.65.4230, %i.w
  %or.cond196 = select i1 %i.ga, i1 %.not.i.i.i.i, i1 false
  br i1 %or.cond196, label %bb.af, label %bits_peek_nz_be.exit.i.i

bb.af:                                            ; preds = %bb.ae
  %i.gb = load i32, ptr %.sroa.65.4230, align 1, !tbaa !30
  %i.gc = tail call i32 @llvm.bswap.i32(i32 %i.gb)
  %i.gd = zext i32 %i.gc to i64
  %i.ge = sub i32 32, %.sroa.94.4229
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = shl i64 %i.gd, %i.gf
  %i.gh = or i64 %i.gg, %.sroa.0.4231
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.65.4230, i64 4
  %i.gj = add i32 %.sroa.94.4229, 32
  br label %bits_peek_nz_be.exit.i.i

bits_peek_nz_be.exit.i.i:                         ; preds = %bb.ae, %bb.af
  %.sroa.94.20 = phi i32 [ %i.gj, %bb.af ], [ %.sroa.94.4229, %bb.ae ]
  %.sroa.65.25 = phi ptr [ %i.gi, %bb.af ], [ %.sroa.65.4230, %bb.ae ]
  %.val.i.i.i = phi i64 [ %i.gh, %bb.af ], [ %.sroa.0.4231, %bb.ae ] ; 2 uses
  %i.gk = sub i32 64, %i.fz
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = lshr i64 %.val.i.i.i, %i.gl
  %i.gn = and i64 %i.gm, 4294967295
  br label %bits_peek_be.exit.i

bits_peek_be.exit.i:                              ; preds = %bb.ad, %bits_peek_nz_be.exit.i.i
  %.sroa.94.21 = phi i32 [ %.sroa.94.20, %bits_peek_nz_be.exit.i.i ], [ %.sroa.94.4229, %bb.ad ] ; 2 uses
  %.sroa.65.26 = phi ptr [ %.sroa.65.25, %bits_peek_nz_be.exit.i.i ], [ %.sroa.65.4230, %bb.ad ] ; 5 uses
  %.pre.i = phi i64 [ %.val.i.i.i, %bits_peek_nz_be.exit.i.i ], [ %.sroa.0.4231, %bb.ad ] ; 2 uses
  %.0.i.i111 = phi i64 [ %i.gn, %bits_peek_nz_be.exit.i.i ], [ 0, %bb.ad ]
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %.0.i.i111 ; 2 uses
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !30
  %i.gq = sext i16 %i.gp to i32                   ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 2
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !30 ; 2 uses
  %i.gt = sext i16 %i.gs to i32                   ; 3 uses
  %i.gu = icmp slt i16 %i.gs, 0
  br i1 %i.gu, label %bb.ag, label %bits_read_vlc_be.exit

bb.ag:                                            ; preds = %bits_peek_be.exit.i
  %i.gv = zext nneg i32 %i.fz to i64
  %i.gw = shl i64 %.pre.i, %i.gv                  ; 2 uses
  %i.gx = sub i32 %.sroa.94.21, %i.fz             ; 4 uses
  %i.gy = sub nsw i32 0, %i.gt
  %i.gz = icmp ult i32 %i.gx, %i.gy
  %.not.i.i.i.i.i = icmp ult ptr %.sroa.65.26, %i.w
  %or.cond197 = select i1 %i.gz, i1 %.not.i.i.i.i.i, i1 false
  br i1 %or.cond197, label %bb.ah, label %bits_priv_set_idx_be.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.ha = load i32, ptr %.sroa.65.26, align 1, !tbaa !30
  %i.hb = tail call i32 @llvm.bswap.i32(i32 %i.ha)
  %i.hc = zext i32 %i.hb to i64
  %i.hd = sub nsw i32 32, %i.gx
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = shl i64 %i.hc, %i.he
  %i.hg = or i64 %i.hf, %i.gw
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.65.26, i64 4
  %i.hi = add nuw nsw i32 %i.gx, 32
  br label %bits_priv_set_idx_be.exit.i

bits_priv_set_idx_be.exit.i:                      ; preds = %bb.ah, %bb.ag
  %.sroa.65.27 = phi ptr [ %i.hh, %bb.ah ], [ %.sroa.65.26, %bb.ag ]
  %i.hj = phi i32 [ %i.hi, %bb.ah ], [ %i.gx, %bb.ag ]
  %.val.i.i.i.i = phi i64 [ %i.hg, %bb.ah ], [ %i.gw, %bb.ag ] ; 2 uses
  %i.hk = add nsw i32 %i.gt, 64
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = lshr i64 %.val.i.i.i.i, %i.hl
  %i.hn = trunc i64 %i.hm to i32
  %i.ho = add i32 %i.hn, %i.gq
  %i.hp = zext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.hp ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 2
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !30
  %i.ht = sext i16 %i.hs to i32
  %i.hu = load i16, ptr %i.hq, align 2, !tbaa !30
  %i.hv = sext i16 %i.hu to i32
  br label %bits_read_vlc_be.exit

bits_read_vlc_be.exit:                            ; preds = %bits_peek_be.exit.i, %bits_priv_set_idx_be.exit.i
  %.sroa.65.28 = phi ptr [ %.sroa.65.27, %bits_priv_set_idx_be.exit.i ], [ %.sroa.65.26, %bits_peek_be.exit.i ] ; 2 uses
  %i.hw = phi i32 [ %i.hj, %bits_priv_set_idx_be.exit.i ], [ %.sroa.94.21, %bits_peek_be.exit.i ]
  %i.hx = phi i64 [ %.val.i.i.i.i, %bits_priv_set_idx_be.exit.i ], [ %.pre.i, %bits_peek_be.exit.i ]
  %.023.i = phi i32 [ %i.ht, %bits_priv_set_idx_be.exit.i ], [ %i.gt, %bits_peek_be.exit.i ] ; 2 uses
  %.0.i112 = phi i32 [ %i.hv, %bits_priv_set_idx_be.exit.i ], [ %i.gq, %bits_peek_be.exit.i ] ; 2 uses
  %i.hy = icmp slt i32 %.0.i112, 0
  br i1 %i.hy, label %bits_init8_be.exit.thread, label %.critedge

.critedge:                                        ; preds = %bits_read_vlc_be.exit
  %i.hz = sub i32 %i.hw, %.023.i                  ; 2 uses
  %i.ia = zext nneg i32 %.023.i to i64
  %i.ib = shl i64 %i.hx, %i.ia                    ; 2 uses
  %i.ic = shl i32 %.0.i112, 24
  %i.id = ashr exact i32 %i.ic, 24
  %i.ie = getelementptr inbounds nuw i8, ptr %i.fm, i64 %indvars.iv ; 2 uses
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !30
  %i.ig = zext i8 %i.if to i32
  %i.ih = add nsw i32 %i.id, %i.ig
  %i.ii = tail call i32 @llvm.smax.i32(i32 %i.ih, i32 0)
  %.0.i198 = tail call i32 @llvm.umin.i32(i32 %i.ii, i32 255)
  %.0.i = trunc nuw i32 %.0.i198 to i8
  store i8 %.0.i, ptr %i.ie, align 1, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader.backedge, label %bb.ac, !llvm.loop !91

.thread186:                                       ; preds = %bits_peek_be.exit100
  %.pre = load i32, ptr %i.d, align 4, !tbaa !42
  %i.ij = ptrtoint ptr %.sroa.65.20 to i64
  %i.ik = sub i64 %i.ij, %i.r
  %.tr.i113 = trunc i64 %i.ik to i32
  %i.il = shl i32 %.tr.i113, 3
  %reass.sub = sub i32 %i.il, %.sroa.94.17
  %i.im = add i32 %reass.sub, 7
  %i.in = ashr i32 %i.im, 3
  %i.io = add i32 %.pre, 26623
  %i.ip = add i32 %i.io, %i.in
  %i.iq = and i32 %i.ip, -2048
  store i32 %i.iq, ptr %i.d, align 4, !tbaa !42
  br label %bits_init8_be.exit.thread

bits_init8_be.exit.thread:                        ; preds = %bits_skip_be.exit108, %.lr.ph223, %bb.ac, %bits_read_vlc_be.exit, %bb.a, %.thread186
  %.5 = phi i32 [ 0, %.thread186 ], [ -1094995529, %.lr.ph223 ], [ -1094995529, %bb.a ], [ -1094995529, %bb.ac ], [ -1094995529, %bits_read_vlc_be.exit ], [ -1094995529, %bits_skip_be.exit108 ]
  ret i32 %.5
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

declare void @ff_vlc_free(ptr noundef) local_unnamed_addr #3

declare i32 @ff_vlc_init_sparse(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

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
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!6, !6, i64 0}
!29 = !{!27, !9, i64 32}
!30 = !{!5, !5, i64 0}
!31 = !{!"GetByteContext", !14, i64 0, !14, i64 8, !14, i64 16}
!32 = !{!"PhotoCDContext", !10, i64 0, !6, i64 8, !31, i64 16, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !5, i64 56, !5, i64 312, !5, i64 824, !5, i64 1080}
!33 = !{!"short", !5, i64 0}
!34 = !{!"ImageInfo", !6, i64 0, !33, i64 4, !33, i64 6}
!35 = !{!34, !33, i64 6}
!36 = !{!31, !14, i64 0}
!37 = !{!31, !14, i64 16}
!38 = !{!31, !14, i64 8}
!39 = !{!14, !14, i64 0}
!40 = !{!27, !6, i64 112}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!32, !6, i64 52}
!43 = !{!27, !6, i64 136}
!44 = distinct !{!44, !41}
!45 = distinct !{!45, !41}
!46 = distinct !{!46, !41}
!47 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!48 = !{!47, !14, i64 24}
!49 = !{!47, !6, i64 32}
!50 = !{!32, !6, i64 40}
!51 = !{!32, !6, i64 48}
!52 = !{!32, !6, i64 44}
!53 = !{!32, !6, i64 8}
!54 = !{!34, !33, i64 4}
!55 = !{!27, !6, i64 704}
!56 = !{!34, !6, i64 0}
!57 = !{!27, !6, i64 116}
!58 = distinct !{!58, !41}
!59 = distinct !{!59, !41}
!60 = distinct !{!60, !41}
!61 = distinct !{!61, !41}
!62 = distinct !{!62, !41}
!63 = distinct !{!63, !41}
!64 = distinct !{!64, i1 false, !"LVerDomain"}
!65 = distinct !{!65, !64}
!66 = distinct !{!66, !64}
!67 = distinct !{!67, !64}
!68 = distinct !{!68, !64}
!69 = distinct !{!69, !41, !81, !82}
!70 = distinct !{!70, !41, !81}
!71 = distinct !{!71, !41}
!72 = distinct !{!72, i1 false, !"LVerDomain"}
!73 = distinct !{!73, !72}
!74 = distinct !{!74, !72}
!75 = distinct !{!75, !41, !81, !82}
!76 = distinct !{!76, !41, !81}
!77 = !{!65}
!78 = !{!66}
!79 = !{!67}
!80 = !{!68}
!81 = !{!"llvm.loop.isvectorized", i32 1}
!82 = !{!"llvm.loop.unroll.runtime.disable"}
!83 = !{!73}
!84 = !{!74}
!85 = distinct !{!85, !41}
!86 = distinct !{!86, !41}
!87 = distinct !{!87, !41}
!88 = !{!33, !33, i64 0}
!89 = distinct !{!89, !41}
!90 = distinct !{!90, !41}
!91 = distinct !{!91, !41}
!92 = !{!"p1 _ZTS7VLCElem", !9, i64 0}
!93 = !{!"VLC", !6, i64 0, !92, i64 8, !6, i64 16, !6, i64 20}
!94 = !{!93, !92, i64 8}
!95 = !{!93, !6, i64 0}
end_hunk_0
