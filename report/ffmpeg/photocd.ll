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
  %i.b = sext i32 %1 to i64                       ; 6 uses
  %i.c = add nsw i32 %2, -2                       ; 2 uses
  %i.d = shl i32 %1, 1
  %i.e = sext i32 %i.d to i64                     ; 6 uses
  %i.f = zext i32 %i.c to i64                     ; 3 uses
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 2 uses
  %.062.us = phi i32 [ 0, %.lr.ph.us.preheader ], [ %i.ay, %._crit_edge.us ]
  %.05961.us = phi ptr [ %0, %.lr.ph.us.preheader ], [ %i.ax, %._crit_edge.us ] ; 5 uses
  %i.g = getelementptr inbounds i8, ptr %.05961.us, i64 %i.b ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 %i.b ; 3 uses
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph.us, %bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.a ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %indvars.iv ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !30
  %i.k = zext i8 %i.j to i16
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !30
  %i.n = zext i8 %i.m to i16
  %i.o = add nuw nsw i16 %i.k, 1
  %i.p = add nuw nsw i16 %i.o, %i.n
  %i.q = lshr i16 %i.p, 1
  %i.r = trunc nuw i16 %i.q to i8
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv ; 2 uses
  store i8 %i.r, ptr %i.s, align 1, !tbaa !30
  %i.t = load i8, ptr %i.i, align 1, !tbaa !30
  %i.u = zext i8 %i.t to i16
  %i.v = load i8, ptr %i.l, align 1, !tbaa !30
  %i.w = zext i8 %i.v to i16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %indvars.iv.next
  %i.y = load i8, ptr %i.x, align 1, !tbaa !30
  %i.z = zext i8 %i.y to i16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.next
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !30
  %i.ac = zext i8 %i.ab to i16
  %i.ad = add nuw nsw i16 %i.u, 2
  %i.ae = add nuw nsw i16 %i.ad, %i.w
  %i.af = add nuw nsw i16 %i.ae, %i.z
  %i.ag = add nuw nsw i16 %i.af, %i.ac
  %i.ah = lshr i16 %i.ag, 2
  %i.ai = trunc nuw i16 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !30
  %i.ak = icmp samesign ult i64 %indvars.iv.next, %i.f
  br i1 %i.ak, label %bb.a, label %._crit_edge.us, !llvm.loop !64

._crit_edge.us:                                   ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %.05961.us, i64 %indvars.iv.next
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv.next
  %i.an = load i8, ptr %i.al, align 1, !tbaa !30
  %i.ao = zext i8 %i.an to i16
  %i.ap = load i8, ptr %i.am, align 1, !tbaa !30
  %i.aq = zext i8 %i.ap to i16
  %i.ar = add nuw nsw i16 %i.ao, 1
  %i.as = add nuw nsw i16 %i.ar, %i.aq
  %i.at = lshr i16 %i.as, 1
  %i.au = trunc nuw i16 %i.at to i8               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.next ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  store i8 %i.au, ptr %i.aw, align 1, !tbaa !30
  store i8 %i.au, ptr %i.av, align 1, !tbaa !30
  %i.ax = getelementptr inbounds i8, ptr %.05961.us, i64 %i.e ; 24 uses
  %i.ay = add nuw nsw i32 %.062.us, 2             ; 2 uses
  %i.az = icmp samesign ult i32 %i.ay, %i.a
  %indvar.next = add i64 %indvar, 1
  br i1 %i.az, label %.lr.ph.us, label %.lr.ph.preheader, !llvm.loop !65

.lr.ph.preheader:                                 ; preds = %._crit_edge.us
  %i.ba = getelementptr inbounds i8, ptr %i.ax, i64 %i.b ; 6 uses
  %i.bb = zext nneg i32 %i.c to i64
  %i.bc = add nsw i64 %i.f, -1
  %i.bd = and i64 %i.bc, -2                       ; 3 uses
  %4 = mul i64 %indvar, %i.e                      ; 5 uses
  %5 = getelementptr i8, ptr %0, i64 %4
  %6 = getelementptr i8, ptr %5, i64 %i.bd
  %7 = getelementptr i8, ptr %6, i64 %i.b
  %8 = getelementptr i8, ptr %7, i64 %i.e
  %scevgep = getelementptr i8, ptr %8, i64 1      ; 3 uses
  %i.be = getelementptr i8, ptr %0, i64 %4
  %i.bf = getelementptr i8, ptr %i.be, i64 %i.b
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.e
  %scevgep81 = getelementptr i8, ptr %i.bg, i64 1 ; 3 uses
  %i.bh = getelementptr i8, ptr %0, i64 %4
  %i.bi = getelementptr i8, ptr %i.bh, i64 %i.bd
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.b
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.e
  %scevgep82 = getelementptr i8, ptr %i.bk, i64 2 ; 3 uses
  %i.bl = add nsw i64 %i.bd, %i.e                 ; 2 uses
  %i.bm = getelementptr i8, ptr %0, i64 %4
  %i.bn = getelementptr i8, ptr %i.bm, i64 %i.bl
  %scevgep83 = getelementptr i8, ptr %i.bn, i64 1 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.ax, i64 2      ; 2 uses
  %i.bp = getelementptr i8, ptr %0, i64 %4
  %i.bq = getelementptr i8, ptr %i.bp, i64 %i.bl
  %scevgep84 = getelementptr i8, ptr %i.bq, i64 3 ; 2 uses
  %bound0 = icmp ult ptr %i.ba, %scevgep82
  %bound1 = icmp ult ptr %scevgep81, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound085 = icmp ult ptr %i.ba, %scevgep83
  %bound186 = icmp ult ptr %i.ax, %scevgep
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx = or i1 %found.conflict, %found.conflict87
  %bound088 = icmp ult ptr %i.ba, %scevgep84
  %bound189 = icmp ult ptr %i.bo, %scevgep
  %found.conflict90 = and i1 %bound088, %bound189
  %conflict.rdx91 = or i1 %conflict.rdx, %found.conflict90
  %bound092 = icmp ult ptr %scevgep81, %scevgep83
  %bound193 = icmp ult ptr %i.ax, %scevgep82
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx95 = or i1 %conflict.rdx91, %found.conflict94
  %bound096 = icmp ult ptr %scevgep81, %scevgep84
  %bound197 = icmp ult ptr %i.bo, %scevgep82
  %found.conflict98 = and i1 %bound096, %bound197
  %conflict.rdx99 = or i1 %conflict.rdx95, %found.conflict98
  br i1 %conflict.rdx99, label %.lr.ph.preheader100, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %9 = add nsw i64 %i.f, -1
  %i.br = lshr i64 %9, 1
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %i.bt = and i64 %i.bs, 7                        ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  %i.bv = select i1 %i.bu, i64 8, i64 %i.bt
  %n.vec = sub nsw i64 %i.bs, %i.bv               ; 2 uses
  %i.bw = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = shl nuw i64 %index, 1                   ; 17 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bx
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bx
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 6
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bx
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bx
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 10
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bx
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bx
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 14
  %i.cn = load i8, ptr %i.by, align 1, !tbaa !30, !alias.scope !71
  %i.co = load i8, ptr %i.ca, align 1, !tbaa !30, !alias.scope !71
  %i.cp = load i8, ptr %i.cc, align 1, !tbaa !30, !alias.scope !71
  %i.cq = load i8, ptr %i.ce, align 1, !tbaa !30, !alias.scope !71
  %i.cr = load i8, ptr %i.cg, align 1, !tbaa !30, !alias.scope !71
  %i.cs = load i8, ptr %i.ci, align 1, !tbaa !30, !alias.scope !71
  %i.ct = load i8, ptr %i.ck, align 1, !tbaa !30, !alias.scope !71
  %i.cu = load i8, ptr %i.cm, align 1, !tbaa !30, !alias.scope !71
  %i.cv = insertelement <8 x i8> poison, i8 %i.cn, i64 0
  %i.cw = insertelement <8 x i8> %i.cv, i8 %i.co, i64 1
  %i.cx = insertelement <8 x i8> %i.cw, i8 %i.cp, i64 2
  %i.cy = insertelement <8 x i8> %i.cx, i8 %i.cq, i64 3
  %i.cz = insertelement <8 x i8> %i.cy, i8 %i.cr, i64 4
  %i.da = insertelement <8 x i8> %i.cz, i8 %i.cs, i64 5
  %i.db = insertelement <8 x i8> %i.da, i8 %i.ct, i64 6
  %i.dc = insertelement <8 x i8> %i.db, i8 %i.cu, i64 7 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bx
  %i.de = zext <8 x i8> %i.dc to <8 x i16>
  %i.df = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bx
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 2
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bx
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bx
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 6
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bx
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bx
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 10
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bx
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bx
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 14
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bx
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load i8, ptr %i.dg, align 1, !tbaa !30, !alias.scope !72
  %i.dw = load i8, ptr %i.di, align 1, !tbaa !30, !alias.scope !72
  %i.dx = load i8, ptr %i.dk, align 1, !tbaa !30, !alias.scope !72
  %i.dy = load i8, ptr %i.dm, align 1, !tbaa !30, !alias.scope !72
  %i.dz = load i8, ptr %i.do, align 1, !tbaa !30, !alias.scope !72
  %i.ea = load i8, ptr %i.dq, align 1, !tbaa !30, !alias.scope !72
  %i.eb = load i8, ptr %i.ds, align 1, !tbaa !30, !alias.scope !72
  %i.ec = load i8, ptr %i.du, align 1, !tbaa !30, !alias.scope !72
  %i.ed = insertelement <8 x i8> poison, i8 %i.dv, i64 0
  %i.ee = insertelement <8 x i8> %i.ed, i8 %i.dw, i64 1
  %i.ef = insertelement <8 x i8> %i.ee, i8 %i.dx, i64 2
  %i.eg = insertelement <8 x i8> %i.ef, i8 %i.dy, i64 3
  %i.eh = insertelement <8 x i8> %i.eg, i8 %i.dz, i64 4
  %i.ei = insertelement <8 x i8> %i.eh, i8 %i.ea, i64 5
  %i.ej = insertelement <8 x i8> %i.ei, i8 %i.eb, i64 6
  %i.ek = insertelement <8 x i8> %i.ej, i8 %i.ec, i64 7
  %i.el = zext <8 x i8> %i.ek to <8 x i16>
  %i.em = add nuw nsw <8 x i16> %i.de, splat (i16 1)
  %i.en = add nuw nsw <8 x i16> %i.em, %i.el
  %i.eo = lshr <8 x i16> %i.en, splat (i16 1)
  %i.ep = trunc nuw <8 x i16> %i.eo to <8 x i8>
  %interleaved.vec = shufflevector <8 x i8> %i.dc, <8 x i8> %i.ep, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.dd, align 1, !tbaa !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eq = icmp eq i64 %index.next, %n.vec
  br i1 %i.eq, label %.lr.ph.preheader100, label %vector.body, !llvm.loop !69

.lr.ph.preheader100:                              ; preds = %vector.body, %.lr.ph.preheader
  %indvars.iv72.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bw, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader100, %.lr.ph
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %.lr.ph ], [ %indvars.iv72.ph, %.lr.ph.preheader100 ] ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv72
  %i.es = load i8, ptr %i.er, align 1, !tbaa !30  ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv72 ; 2 uses
  store i8 %i.es, ptr %i.et, align 1, !tbaa !30
  %i.eu = zext i8 %i.es to i16
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 2 ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv.next73
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !30
  %i.ex = zext i8 %i.ew to i16
  %i.ey = add nuw nsw i16 %i.eu, 1
  %i.ez = add nuw nsw i16 %i.ey, %i.ex
  %i.fa = lshr i16 %i.ez, 1
  %i.fb = trunc nuw i16 %i.fa to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !30
  %i.fd = icmp samesign ult i64 %indvars.iv.next73, %i.bb
  br i1 %i.fd, label %.lr.ph, label %._crit_edge, !llvm.loop !70

._crit_edge:                                      ; preds = %.lr.ph
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv.next73
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !30  ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv.next73 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 1
  store i8 %i.ff, ptr %i.fh, align 1, !tbaa !30
  store i8 %i.ff, ptr %i.fg, align 1, !tbaa !30
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
