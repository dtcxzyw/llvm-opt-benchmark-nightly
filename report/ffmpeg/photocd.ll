Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/photocd?download=true
inline.NumInlined: 34
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@interp_lowres:bb.a
  store i8 %i.cl, ptr %.1113, align 1, !tbaa !30
  %i.cn = load ptr, ptr %i.j, align 8, !tbaa !38
  %i.co = load ptr, ptr %i.a, align 8, !tbaa !36  ; 2 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = icmp slt i64 %i.cr, 1
  br i1 %i.cs, label %bytestream2_peek_byte.exit108, label %bb.p

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
  %i.b = sext i32 %1 to i64                       ; 9 uses
  %i.c = add nsw i32 %2, -2                       ; 2 uses
  %i.d = shl i32 %1, 1                            ; 2 uses
  %i.e = sext i32 %i.d to i64                     ; 6 uses
  %i.f = zext i32 %i.c to i64                     ; 4 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.b   ; 5 uses
  %i.g = add nsw i32 %3, -3
  %i.h = lshr i32 %i.g, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = mul nsw i64 %i.i, %i.e                   ; 3 uses
  %i.k = add nsw i64 %i.f, -1
  %i.l = and i64 %i.k, -2                         ; 3 uses
  %i.m = add i64 %i.j, %i.l
  %i.n = add i64 %i.m, %i.b                       ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 %i.n
  %scevgep81 = getelementptr i8, ptr %i.o, i64 1  ; 5 uses
  %i.p = getelementptr i8, ptr %0, i64 %i.b
  %scevgep82 = getelementptr i8, ptr %i.p, i64 1  ; 5 uses
  %i.q = getelementptr i8, ptr %0, i64 %i.n
  %scevgep83 = getelementptr i8, ptr %i.q, i64 2  ; 5 uses
  %i.r = add i64 %i.j, %i.l                       ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 %i.r
  %scevgep84 = getelementptr i8, ptr %i.s, i64 1  ; 2 uses
  %i.t = shl nsw i64 %i.b, 1                      ; 4 uses
  %scevgep85 = getelementptr i8, ptr %0, i64 %i.t ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 %i.t
  %scevgep86 = getelementptr i8, ptr %i.v, i64 1  ; 2 uses
  %scevgep87 = getelementptr nuw i8, ptr %0, i64 2 ; 2 uses
  %i.w = add i64 %i.j, %i.l                       ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 %i.w
  %scevgep88 = getelementptr i8, ptr %i.x, i64 3  ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 %i.t
  %scevgep89 = getelementptr i8, ptr %i.y, i64 2  ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 %i.w
  %i.aa = getelementptr i8, ptr %i.z, i64 %i.t
  %scevgep90 = getelementptr i8, ptr %i.aa, i64 3 ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep83
  %bound1 = icmp ult ptr %scevgep82, %scevgep81
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.d, 0
  %i.ab = or i1 %found.conflict, %stride.check
  %bound091 = icmp ult ptr %scevgep, %scevgep84
  %bound192 = icmp ult ptr %0, %scevgep81
  %found.conflict93 = and i1 %bound091, %bound192
  %conflict.rdx = or i1 %i.ab, %found.conflict93
  %bound094 = icmp ult ptr %scevgep, %scevgep86
  %bound195 = icmp ult ptr %scevgep85, %scevgep81
  %found.conflict96 = and i1 %bound094, %bound195
  %conflict.rdx97 = or i1 %conflict.rdx, %found.conflict96
  %bound098 = icmp ult ptr %scevgep, %scevgep88
  %bound199 = icmp ult ptr %scevgep87, %scevgep81
  %found.conflict100 = and i1 %bound098, %bound199
  %conflict.rdx101 = or i1 %conflict.rdx97, %found.conflict100
  %bound0102 = icmp ult ptr %scevgep, %scevgep90
  %bound1103 = icmp ult ptr %scevgep89, %scevgep81
  %found.conflict104 = and i1 %bound0102, %bound1103
  %conflict.rdx105 = or i1 %conflict.rdx101, %found.conflict104
  %bound0106 = icmp ult ptr %scevgep82, %scevgep84
  %bound1107 = icmp ult ptr %0, %scevgep83
  %found.conflict108 = and i1 %bound0106, %bound1107
  %conflict.rdx109 = or i1 %conflict.rdx105, %found.conflict108
  %bound0110 = icmp ult ptr %scevgep82, %scevgep86
  %bound1111 = icmp ult ptr %scevgep85, %scevgep83
  %found.conflict112 = and i1 %bound0110, %bound1111
  %conflict.rdx113 = or i1 %conflict.rdx109, %found.conflict112
  %bound0114 = icmp ult ptr %scevgep82, %scevgep88
  %bound1115 = icmp ult ptr %scevgep87, %scevgep83
  %found.conflict116 = and i1 %bound0114, %bound1115
  %conflict.rdx117 = or i1 %conflict.rdx113, %found.conflict116
  %bound0118 = icmp ult ptr %scevgep82, %scevgep90
  %bound1119 = icmp ult ptr %scevgep89, %scevgep83
  %found.conflict120 = and i1 %bound0118, %bound1119
  %conflict.rdx121 = or i1 %conflict.rdx117, %found.conflict120
  %i.ac = add nsw i64 %i.f, -1
  %i.ad = lshr i64 %i.ac, 1
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %i.af = and i64 %i.ae, 7                        ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  %i.ah = select i1 %i.ag, i64 8, i64 %i.af
  %n.vec = sub nsw i64 %i.ae, %i.ah               ; 2 uses
  %i.ai = shl i64 %n.vec, 1
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %.062.us = phi i32 [ 0, %.lr.ph.us.preheader ], [ %i.gy, %._crit_edge.us ]
  %.05961.us = phi ptr [ %0, %.lr.ph.us.preheader ], [ %i.gx, %._crit_edge.us ] ; 21 uses
  %i.aj = getelementptr inbounds i8, ptr %.05961.us, i64 %i.b ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.b ; 19 uses
  br i1 %conflict.rdx121, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us ] ; 2 uses
  %i.al = shl nuw i64 %index, 1                   ; 18 uses
  %i.am = or disjoint i64 %i.al, 2                ; 2 uses
  %i.an = or disjoint i64 %i.al, 4                ; 2 uses
  %i.ao = or disjoint i64 %i.al, 6                ; 2 uses
  %i.ap = or disjoint i64 %i.al, 8                ; 2 uses
  %i.aq = or disjoint i64 %i.al, 10               ; 2 uses
  %i.ar = or disjoint i64 %i.al, 12               ; 2 uses
  %i.as = or disjoint i64 %i.al, 14               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.al
  %i.au = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.am
  %i.av = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.an
  %i.aw = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.ao
  %i.ax = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.ap
  %i.ay = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.aq
  %i.az = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.ar
  %i.ba = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.as
  %i.bb = load i8, ptr %i.at, align 1, !tbaa !30, !alias.scope !77
  %i.bc = load i8, ptr %i.au, align 1, !tbaa !30, !alias.scope !77
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !30, !alias.scope !77
  %i.be = load i8, ptr %i.aw, align 1, !tbaa !30, !alias.scope !77
  %i.bf = load i8, ptr %i.ax, align 1, !tbaa !30, !alias.scope !77
  %i.bg = load i8, ptr %i.ay, align 1, !tbaa !30, !alias.scope !77
  %i.bh = load i8, ptr %i.az, align 1, !tbaa !30, !alias.scope !77
  %i.bi = load i8, ptr %i.ba, align 1, !tbaa !30, !alias.scope !77
  %i.bj = insertelement <8 x i8> poison, i8 %i.bb, i64 0
  %i.bk = insertelement <8 x i8> %i.bj, i8 %i.bc, i64 1
  %i.bl = insertelement <8 x i8> %i.bk, i8 %i.bd, i64 2
  %i.bm = insertelement <8 x i8> %i.bl, i8 %i.be, i64 3
  %i.bn = insertelement <8 x i8> %i.bm, i8 %i.bf, i64 4
  %i.bo = insertelement <8 x i8> %i.bn, i8 %i.bg, i64 5
  %i.bp = insertelement <8 x i8> %i.bo, i8 %i.bh, i64 6
  %i.bq = insertelement <8 x i8> %i.bp, i8 %i.bi, i64 7
  %i.br = zext <8 x i8> %i.bq to <8 x i16>        ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.am
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ao
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ap
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aq
  %i.by = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ar
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.as
  %i.ca = load i8, ptr %i.bs, align 1, !tbaa !30, !alias.scope !78
  %i.cb = load i8, ptr %i.bt, align 1, !tbaa !30, !alias.scope !78
  %i.cc = load i8, ptr %i.bu, align 1, !tbaa !30, !alias.scope !78
  %i.cd = load i8, ptr %i.bv, align 1, !tbaa !30, !alias.scope !78
  %i.ce = load i8, ptr %i.bw, align 1, !tbaa !30, !alias.scope !78
  %i.cf = load i8, ptr %i.bx, align 1, !tbaa !30, !alias.scope !78
  %i.cg = load i8, ptr %i.by, align 1, !tbaa !30, !alias.scope !78
  %i.ch = load i8, ptr %i.bz, align 1, !tbaa !30, !alias.scope !78
  %i.ci = insertelement <8 x i8> poison, i8 %i.ca, i64 0
  %i.cj = insertelement <8 x i8> %i.ci, i8 %i.cb, i64 1
  %i.ck = insertelement <8 x i8> %i.cj, i8 %i.cc, i64 2
  %i.cl = insertelement <8 x i8> %i.ck, i8 %i.cd, i64 3
  %i.cm = insertelement <8 x i8> %i.cl, i8 %i.ce, i64 4
  %i.cn = insertelement <8 x i8> %i.cm, i8 %i.cf, i64 5
  %i.co = insertelement <8 x i8> %i.cn, i8 %i.cg, i64 6
  %i.cp = insertelement <8 x i8> %i.co, i8 %i.ch, i64 7
  %i.cq = zext <8 x i8> %i.cp to <8 x i16>        ; 2 uses
  %i.cr = add nuw nsw <8 x i16> %i.br, splat (i16 1)
  %i.cs = add nuw nsw <8 x i16> %i.cr, %i.cq
  %i.ct = lshr <8 x i16> %i.cs, splat (i16 1)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al
  %i.cv = or disjoint i64 %i.al, 2                ; 2 uses
  %i.cw = or disjoint i64 %i.al, 4                ; 2 uses
  %i.cx = or disjoint i64 %i.al, 6                ; 2 uses
  %i.cy = or disjoint i64 %i.al, 8                ; 2 uses
  %i.cz = or disjoint i64 %i.al, 10               ; 2 uses
  %i.da = or disjoint i64 %i.al, 12               ; 2 uses
  %i.db = or disjoint i64 %i.al, 14               ; 2 uses
  %i.dc = add nuw nsw i64 %i.al, 16               ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.cv
  %i.de = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.cw
  %i.df = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.cx
  %i.dg = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.cy
  %i.dh = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.cz
  %i.di = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.da
  %i.dj = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.db
  %i.dk = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %i.dc
  %i.dl = load i8, ptr %i.dd, align 1, !tbaa !30, !alias.scope !79
  %i.dm = load i8, ptr %i.de, align 1, !tbaa !30, !alias.scope !79
  %i.dn = load i8, ptr %i.df, align 1, !tbaa !30, !alias.scope !79
  %i.do = load i8, ptr %i.dg, align 1, !tbaa !30, !alias.scope !79
  %i.dp = load i8, ptr %i.dh, align 1, !tbaa !30, !alias.scope !79
  %i.dq = load i8, ptr %i.di, align 1, !tbaa !30, !alias.scope !79
  %i.dr = load i8, ptr %i.dj, align 1, !tbaa !30, !alias.scope !79
  %i.ds = load i8, ptr %i.dk, align 1, !tbaa !30, !alias.scope !79
  %i.dt = insertelement <8 x i8> poison, i8 %i.dl, i64 0
  %i.du = insertelement <8 x i8> %i.dt, i8 %i.dm, i64 1
  %i.dv = insertelement <8 x i8> %i.du, i8 %i.dn, i64 2
  %i.dw = insertelement <8 x i8> %i.dv, i8 %i.do, i64 3
  %i.dx = insertelement <8 x i8> %i.dw, i8 %i.dp, i64 4
  %i.dy = insertelement <8 x i8> %i.dx, i8 %i.dq, i64 5
  %i.dz = insertelement <8 x i8> %i.dy, i8 %i.dr, i64 6
  %i.ea = insertelement <8 x i8> %i.dz, i8 %i.ds, i64 7
  %i.eb = zext <8 x i8> %i.ea to <8 x i16>
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.cv
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.cw
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.cx
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.cy
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.cz
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.da
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.db
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.dc
  %i.ek = load i8, ptr %i.ec, align 1, !tbaa !30, !alias.scope !80
  %i.el = load i8, ptr %i.ed, align 1, !tbaa !30, !alias.scope !80
  %i.em = load i8, ptr %i.ee, align 1, !tbaa !30, !alias.scope !80
  %i.en = load i8, ptr %i.ef, align 1, !tbaa !30, !alias.scope !80
  %i.eo = load i8, ptr %i.eg, align 1, !tbaa !30, !alias.scope !80
  %i.ep = load i8, ptr %i.eh, align 1, !tbaa !30, !alias.scope !80
  %i.eq = load i8, ptr %i.ei, align 1, !tbaa !30, !alias.scope !80
  %i.er = load i8, ptr %i.ej, align 1, !tbaa !30, !alias.scope !80
  %i.es = insertelement <8 x i8> poison, i8 %i.ek, i64 0
  %i.et = insertelement <8 x i8> %i.es, i8 %i.el, i64 1
  %i.eu = insertelement <8 x i8> %i.et, i8 %i.em, i64 2
  %i.ev = insertelement <8 x i8> %i.eu, i8 %i.en, i64 3
  %i.ew = insertelement <8 x i8> %i.ev, i8 %i.eo, i64 4
  %i.ex = insertelement <8 x i8> %i.ew, i8 %i.ep, i64 5
  %i.ey = insertelement <8 x i8> %i.ex, i8 %i.eq, i64 6
  %i.ez = insertelement <8 x i8> %i.ey, i8 %i.er, i64 7
  %i.fa = zext <8 x i8> %i.ez to <8 x i16>
  %i.fb = add nuw nsw <8 x i16> %i.br, splat (i16 2)
  %i.fc = add nuw nsw <8 x i16> %i.fb, %i.cq
  %i.fd = add nuw nsw <8 x i16> %i.fc, %i.eb
  %i.fe = add nuw nsw <8 x i16> %i.fd, %i.fa
  %i.ff = lshr <8 x i16> %i.fe, splat (i16 2)
  %i.fg = shufflevector <8 x i16> %i.ct, <8 x i16> %i.ff, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %interleaved.vec = trunc nuw <16 x i16> %i.fg to <16 x i8>
  store <16 x i8> %interleaved.vec, ptr %i.cu, align 1, !tbaa !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %scalar.ph.preheader, label %vector.body, !llvm.loop !69

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph.us
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.us ], [ %i.ai, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %indvars.iv ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !30
  %i.fk = zext i8 %i.fj to i16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !30
  %i.fn = zext i8 %i.fm to i16
  %i.fo = add nuw nsw i16 %i.fk, 1
  %i.fp = add nuw nsw i16 %i.fo, %i.fn
  %i.fq = lshr i16 %i.fp, 1
  %i.fr = trunc nuw i16 %i.fq to i8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv ; 2 uses
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !30
  %i.ft = load i8, ptr %i.fi, align 1, !tbaa !30
  %i.fu = zext i8 %i.ft to i16
  %i.fv = load i8, ptr %i.fl, align 1, !tbaa !30
  %i.fw = zext i8 %i.fv to i16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 7 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %indvars.iv.next
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !30
  %i.fz = zext i8 %i.fy to i16
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.next
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !30
  %i.gc = zext i8 %i.gb to i16
  %i.gd = add nuw nsw i16 %i.fu, 2
  %i.ge = add nuw nsw i16 %i.gd, %i.fw
  %i.gf = add nuw nsw i16 %i.ge, %i.fz
  %i.gg = add nuw nsw i16 %i.gf, %i.gc
  %i.gh = lshr i16 %i.gg, 2
  %i.gi = trunc nuw i16 %i.gh to i8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fs, i64 1
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !30
  %i.gk = icmp samesign ult i64 %indvars.iv.next, %i.f
  br i1 %i.gk, label %scalar.ph, label %._crit_edge.us, !llvm.loop !70

._crit_edge.us:                                   ; preds = %scalar.ph
  %i.gl = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %indvars.iv.next
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.next
  %i.gn = load i8, ptr %i.gl, align 1, !tbaa !30
  %i.go = zext i8 %i.gn to i16
  %i.gp = load i8, ptr %i.gm, align 1, !tbaa !30
  %i.gq = zext i8 %i.gp to i16
  %i.gr = add nuw nsw i16 %i.go, 1
  %i.gs = add nuw nsw i16 %i.gr, %i.gq
  %i.gt = lshr i16 %i.gs, 1
  %i.gu = trunc nuw i16 %i.gt to i8               ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.next ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 1
  store i8 %i.gu, ptr %i.gw, align 1, !tbaa !30
  store i8 %i.gu, ptr %i.gv, align 1, !tbaa !30
  %i.gx = getelementptr inbounds i8, ptr %.05961.us, i64 %i.e ; 24 uses
  %i.gy = add nuw nsw i32 %.062.us, 2             ; 2 uses
  %i.gz = icmp samesign ult i32 %i.gy, %i.a
  %indvar.next = add i64 %indvar, 1
  br i1 %i.gz, label %.lr.ph.us, label %.lr.ph.preheader, !llvm.loop !71

.lr.ph.preheader:                                 ; preds = %._crit_edge.us
  %i.ha = getelementptr inbounds i8, ptr %i.gx, i64 %i.b ; 6 uses
  %i.hb = zext nneg i32 %i.c to i64
  %i.hc = add nsw i64 %i.f, -1                    ; 2 uses
  %i.hd = and i64 %i.hc, -2                       ; 2 uses
  %4 = add nsw i64 %i.hd, %i.b
  %5 = add nsw i64 %4, %i.e                       ; 2 uses
  %6 = mul nsw i64 %indvar, %i.e                  ; 5 uses
  %scevgep123 = getelementptr i8, ptr %0, i64 %5
  %i.he = getelementptr i8, ptr %scevgep123, i64 1
  %i.hf = getelementptr i8, ptr %i.he, i64 %6     ; 3 uses
  %i.hg = getelementptr i8, ptr %0, i64 %i.b
  %scevgep124 = getelementptr i8, ptr %i.hg, i64 %i.e
  %i.hh = getelementptr i8, ptr %scevgep124, i64 1
  %i.hi = getelementptr i8, ptr %i.hh, i64 %6     ; 3 uses
  %i.hj = getelementptr i8, ptr %0, i64 %5
  %i.hk = getelementptr i8, ptr %i.hj, i64 2
  %scevgep125 = getelementptr i8, ptr %i.hk, i64 %6 ; 3 uses
  %i.hl = add nsw i64 %i.hd, %i.e                 ; 2 uses
  %i.hm = getelementptr i8, ptr %0, i64 %i.hl
  %i.hn = getelementptr i8, ptr %i.hm, i64 1
  %scevgep126 = getelementptr i8, ptr %i.hn, i64 %6 ; 2 uses
  %i.ho = getelementptr i8, ptr %i.gx, i64 2      ; 2 uses
  %i.hp = getelementptr i8, ptr %0, i64 %i.hl
  %i.hq = getelementptr i8, ptr %i.hp, i64 3
  %scevgep127 = getelementptr i8, ptr %i.hq, i64 %6 ; 2 uses
  %bound0128 = icmp ult ptr %i.ha, %scevgep125
  %bound1129 = icmp ult ptr %i.hi, %i.hf
  %found.conflict130 = and i1 %bound0128, %bound1129
  %bound0131 = icmp ult ptr %i.ha, %scevgep126
  %bound1132 = icmp ult ptr %i.gx, %i.hf
  %found.conflict133 = and i1 %bound0131, %bound1132
  %conflict.rdx134 = or i1 %found.conflict130, %found.conflict133
  %bound0135 = icmp ult ptr %i.ha, %scevgep127
  %bound1136 = icmp ult ptr %i.ho, %i.hf
  %found.conflict137 = and i1 %bound0135, %bound1136
  %conflict.rdx138 = or i1 %conflict.rdx134, %found.conflict137
  %bound0139 = icmp ult ptr %i.hi, %scevgep126
  %bound1140 = icmp ult ptr %i.gx, %scevgep125
  %found.conflict141 = and i1 %bound0139, %bound1140
  %conflict.rdx142 = or i1 %conflict.rdx138, %found.conflict141
  %bound0143 = icmp ult ptr %i.hi, %scevgep127
  %bound1144 = icmp ult ptr %i.ho, %scevgep125
  %found.conflict145 = and i1 %bound0143, %bound1144
  %conflict.rdx146 = or i1 %conflict.rdx142, %found.conflict145
  br i1 %conflict.rdx146, label %.lr.ph.preheader156, label %vector.ph148

vector.ph148:                                     ; preds = %.lr.ph.preheader
  %i.hr = lshr i64 %i.hc, 1
  %i.hs = add nuw nsw i64 %i.hr, 1                ; 2 uses
  %i.ht = and i64 %i.hs, 7                        ; 2 uses
  %i.hu = icmp eq i64 %i.ht, 0
  %i.hv = select i1 %i.hu, i64 8, i64 %i.ht
  %n.vec149 = sub nsw i64 %i.hs, %i.hv            ; 2 uses
  %i.hw = shl i64 %n.vec149, 1
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph148
  %index151 = phi i64 [ 0, %vector.ph148 ], [ %index.next153, %vector.body150 ] ; 2 uses
  %i.hx = shl nuw i64 %index151, 1                ; 17 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.hx
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 2
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.hx
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %i.id = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.hx
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 6
  %i.if = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.hx
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.hx
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 10
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.hx
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 12
  %i.il = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.hx
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 14
  %i.in = load i8, ptr %i.hy, align 1, !tbaa !30, !alias.scope !83
  %i.io = load i8, ptr %i.ia, align 1, !tbaa !30, !alias.scope !83
  %i.ip = load i8, ptr %i.ic, align 1, !tbaa !30, !alias.scope !83
  %i.iq = load i8, ptr %i.ie, align 1, !tbaa !30, !alias.scope !83
  %i.ir = load i8, ptr %i.ig, align 1, !tbaa !30, !alias.scope !83
  %i.is = load i8, ptr %i.ii, align 1, !tbaa !30, !alias.scope !83
  %i.it = load i8, ptr %i.ik, align 1, !tbaa !30, !alias.scope !83
  %i.iu = load i8, ptr %i.im, align 1, !tbaa !30, !alias.scope !83
  %i.iv = insertelement <8 x i8> poison, i8 %i.in, i64 0
  %i.iw = insertelement <8 x i8> %i.iv, i8 %i.io, i64 1
  %i.ix = insertelement <8 x i8> %i.iw, i8 %i.ip, i64 2
  %i.iy = insertelement <8 x i8> %i.ix, i8 %i.iq, i64 3
  %i.iz = insertelement <8 x i8> %i.iy, i8 %i.ir, i64 4
  %i.ja = insertelement <8 x i8> %i.iz, i8 %i.is, i64 5
  %i.jb = insertelement <8 x i8> %i.ja, i8 %i.it, i64 6
  %i.jc = insertelement <8 x i8> %i.jb, i8 %i.iu, i64 7 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.hx
  %i.je = zext <8 x i8> %i.jc to <8 x i16>
  %i.jf = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.hx
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 2
  %i.jh = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.hx
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %i.jj = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.hx
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 6
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.hx
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.hx
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 10
  %i.jp = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.hx
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 12
  %i.jr = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.hx
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 14
  %i.jt = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.hx
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jv = load i8, ptr %i.jg, align 1, !tbaa !30, !alias.scope !84
  %i.jw = load i8, ptr %i.ji, align 1, !tbaa !30, !alias.scope !84
  %i.jx = load i8, ptr %i.jk, align 1, !tbaa !30, !alias.scope !84
  %i.jy = load i8, ptr %i.jm, align 1, !tbaa !30, !alias.scope !84
  %i.jz = load i8, ptr %i.jo, align 1, !tbaa !30, !alias.scope !84
  %i.ka = load i8, ptr %i.jq, align 1, !tbaa !30, !alias.scope !84
  %i.kb = load i8, ptr %i.js, align 1, !tbaa !30, !alias.scope !84
  %i.kc = load i8, ptr %i.ju, align 1, !tbaa !30, !alias.scope !84
  %i.kd = insertelement <8 x i8> poison, i8 %i.jv, i64 0
  %i.ke = insertelement <8 x i8> %i.kd, i8 %i.jw, i64 1
  %i.kf = insertelement <8 x i8> %i.ke, i8 %i.jx, i64 2
  %i.kg = insertelement <8 x i8> %i.kf, i8 %i.jy, i64 3
  %i.kh = insertelement <8 x i8> %i.kg, i8 %i.jz, i64 4
  %i.ki = insertelement <8 x i8> %i.kh, i8 %i.ka, i64 5
  %i.kj = insertelement <8 x i8> %i.ki, i8 %i.kb, i64 6
  %i.kk = insertelement <8 x i8> %i.kj, i8 %i.kc, i64 7
  %i.kl = zext <8 x i8> %i.kk to <8 x i16>
  %i.km = add nuw nsw <8 x i16> %i.je, splat (i16 1)
  %i.kn = add nuw nsw <8 x i16> %i.km, %i.kl
  %i.ko = lshr <8 x i16> %i.kn, splat (i16 1)
  %i.kp = trunc nuw <8 x i16> %i.ko to <8 x i8>
  %interleaved.vec152 = shufflevector <8 x i8> %i.jc, <8 x i8> %i.kp, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec152, ptr %i.jd, align 1, !tbaa !30
  %index.next153 = add nuw i64 %index151, 8       ; 2 uses
  %i.kq = icmp eq i64 %index.next153, %n.vec149
  br i1 %i.kq, label %.lr.ph.preheader156, label %vector.body150, !llvm.loop !75

.lr.ph.preheader156:                              ; preds = %vector.body150, %.lr.ph.preheader
  %indvars.iv72.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.hw, %vector.body150 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader156, %.lr.ph
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %.lr.ph ], [ %indvars.iv72.ph, %.lr.ph.preheader156 ] ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.gx, i64 %indvars.iv72
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !30  ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ha, i64 %indvars.iv72 ; 2 uses
  store i8 %i.ks, ptr %i.kt, align 1, !tbaa !30
  %i.ku = zext i8 %i.ks to i16
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 2 ; 5 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.gx, i64 %indvars.iv.next73
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !30
  %i.kx = zext i8 %i.kw to i16
  %i.ky = add nuw nsw i16 %i.ku, 1
  %i.kz = add nuw nsw i16 %i.ky, %i.kx
  %i.la = lshr i16 %i.kz, 1
  %i.lb = trunc nuw i16 %i.la to i8
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kt, i64 1
  store i8 %i.lb, ptr %i.lc, align 1, !tbaa !30
  %i.ld = icmp samesign ult i64 %indvars.iv.next73, %i.hb
  br i1 %i.ld, label %.lr.ph, label %._crit_edge, !llvm.loop !76

._crit_edge:                                      ; preds = %.lr.ph
  %i.le = getelementptr inbounds nuw i8, ptr %i.gx, i64 %indvars.iv.next73
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !30  ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ha, i64 %indvars.iv.next73 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 1
  store i8 %i.lf, ptr %i.lh, align 1, !tbaa !30
  store i8 %i.lf, ptr %i.lg, align 1, !tbaa !30
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
end_hunk_0
