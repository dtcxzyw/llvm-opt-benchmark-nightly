Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/huffbench?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@compdecomp:bb.a
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %.0162252, i64 3
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ai ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !11
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %.0162252, i64 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader235.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !15

.preheader234:                                    ; preds = %bb.d
  %.not255 = icmp eq i64 %.1177.1, 0
  br i1 %.not255, label %._crit_edge, label %.lr.ph257

.lr.ph257:                                        ; preds = %.preheader234
  %i.an = trunc i64 %.1177.1 to i32               ; 2 uses
  %i.ao = sdiv i32 %i.an, 2                       ; 2 uses
  br label %bb.e

.preheader235:                                    ; preds = %bb.d, %.preheader235.preheader
  %.0176254 = phi i64 [ 0, %.preheader235.preheader ], [ %.1177.1, %bb.d ] ; 3 uses
  %.1187253 = phi i64 [ 0, %.preheader235.preheader ], [ %i.ay, %bb.d ] ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1187253
  %i.aq = load i64, ptr %i.ap, align 16, !tbaa !11
  %.not202 = icmp eq i64 %i.aq, 0
  br i1 %.not202, label %.preheader235.1, label %bb.b

bb.b:                                             ; preds = %.preheader235
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0176254
  store i64 %.1187253, ptr %i.ar, align 8, !tbaa !11
  %i.as = add i64 %.0176254, 1
  br label %.preheader235.1

.preheader235.1:                                  ; preds = %.preheader235, %bb.b
  %.1177 = phi i64 [ %i.as, %bb.b ], [ %.0176254, %.preheader235 ] ; 3 uses
  %i.at = or disjoint i64 %.1187253, 1            ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !11
  %.not202.1 = icmp eq i64 %i.av, 0
  br i1 %.not202.1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader235.1
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.1177
  store i64 %i.at, ptr %i.aw, align 8, !tbaa !11
  %i.ax = add i64 %.1177, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader235.1
  %.1177.1 = phi i64 [ %i.ax, %bb.c ], [ %.1177, %.preheader235.1 ] ; 7 uses
  %i.ay = add nuw nsw i64 %.1187253, 2            ; 2 uses
  %exitcond330.not.1 = icmp eq i64 %i.ay, 256
  br i1 %exitcond330.not.1, label %.preheader234, label %.preheader235, !llvm.loop !16

.preheader233:                                    ; preds = %heap_adjust.exit
  %.not371 = icmp eq i64 %.1177.1, 1
  br i1 %.not371, label %._crit_edge, label %.lr.ph259

bb.e:                                             ; preds = %.lr.ph257, %heap_adjust.exit
  %.2188256 = phi i64 [ %.1177.1, %.lr.ph257 ], [ %i.cg, %heap_adjust.exit ] ; 3 uses
  %i.az = trunc i64 %.2188256 to i32              ; 2 uses
  %sext = shl i64 %.2188256, 32
  %i.ba = ashr exact i64 %sext, 32                ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %i.b, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 -8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !11
  %.not30.i = icmp slt i32 %i.ao, %i.az
  %.pre34.i = shl i64 %i.bd, 32                   ; 2 uses
  br i1 %.not30.i, label %heap_adjust.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.be = ashr exact i64 %.pre34.i, 29
  %i.bf = getelementptr inbounds i8, ptr %i.a, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i
  %.02731.i = phi i32 [ %i.az, %.lr.ph.i ], [ %.0.i, %bb.i ] ; 2 uses
  %i.bh = shl nsw i32 %.02731.i, 1                ; 4 uses
  %i.bi = icmp slt i32 %i.bh, %i.an
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bj = sext i32 %i.bh to i64
  %i.bk = getelementptr [8 x i8], ptr %i.b, i64 %i.bj ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 -8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !11
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !11
  %i.bp = load i64, ptr %i.bk, align 16, !tbaa !11
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !11
  %i.bs = icmp ugt i64 %i.bo, %i.br
  %i.bt = zext i1 %i.bs to i32
  %spec.select.i = or disjoint i32 %i.bh, %i.bt
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i = phi i32 [ %i.bh, %bb.f ], [ %spec.select.i, %bb.g ] ; 3 uses
  %i.bu = sext i32 %.0.i to i64                   ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %i.b, i64 %i.bu
  %i.bw = getelementptr i8, ptr %i.bv, i64 -8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !11 ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !11
  %i.ca = icmp ult i64 %i.bg, %i.bz
  %.pre35.i = sext i32 %.02731.i to i64           ; 2 uses
  br i1 %i.ca, label %heap_adjust.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cb = getelementptr [8 x i8], ptr %i.b, i64 %.pre35.i
  %i.cc = getelementptr i8, ptr %i.cb, i64 -8
  store i64 %i.bx, ptr %i.cc, align 8, !tbaa !11
  %.not.i = icmp sgt i32 %.0.i, %i.ao
  br i1 %.not.i, label %heap_adjust.exit, label %bb.f, !llvm.loop !17

heap_adjust.exit:                                 ; preds = %bb.i, %bb.h, %bb.e
  %.pre-phi.i = phi i64 [ %i.ba, %bb.e ], [ %i.bu, %bb.i ], [ %.pre35.i, %bb.h ]
  %i.cd = ashr exact i64 %.pre34.i, 32
  %i.ce = getelementptr [8 x i8], ptr %i.b, i64 %.pre-phi.i
  %i.cf = getelementptr i8, ptr %i.ce, i64 -8
  store i64 %i.cd, ptr %i.cf, align 8, !tbaa !11
  %i.cg = add i64 %.2188256, -1                   ; 2 uses
  %.not = icmp eq i64 %i.cg, 0
  br i1 %.not, label %.preheader233, label %bb.e, !llvm.loop !18

.lr.ph259:                                        ; preds = %.preheader233, %heap_adjust.exit228
  %.2178258 = phi i64 [ %i.ch, %heap_adjust.exit228 ], [ %.1177.1, %.preheader233 ] ; 3 uses
  %i.ch = add i64 %.2178258, -1                   ; 4 uses
  %i.ci = load i64, ptr %i.b, align 16, !tbaa !11 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ch
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !11 ; 2 uses
  store i64 %i.ck, ptr %i.b, align 16, !tbaa !11
  %i.cl = trunc i64 %i.ch to i32                  ; 4 uses
  %i.cm = sdiv i32 %i.cl, 2                       ; 2 uses
  %.not30.i207 = icmp slt i32 %i.cl, 2            ; 2 uses
  %.pre34.i208 = shl i64 %i.ck, 32                ; 2 uses
  br i1 %.not30.i207, label %heap_adjust.exit217, label %.lr.ph.i209

.lr.ph.i209:                                      ; preds = %.lr.ph259
  %i.cn = ashr exact i64 %.pre34.i208, 29
  %i.co = getelementptr inbounds i8, ptr %i.a, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !11
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i209
  %.02731.i210 = phi i32 [ 1, %.lr.ph.i209 ], [ %.0.i211, %bb.m ] ; 2 uses
  %i.cq = shl nsw i32 %.02731.i210, 1             ; 4 uses
  %i.cr = icmp slt i32 %i.cq, %i.cl
  br i1 %i.cr, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cs = sext i32 %i.cq to i64
  %i.ct = getelementptr [8 x i8], ptr %i.b, i64 %i.cs ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 -8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !11
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !11
  %i.cy = load i64, ptr %i.ct, align 16, !tbaa !11
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !11
  %i.db = icmp ugt i64 %i.cx, %i.da
  %i.dc = zext i1 %i.db to i32
  %spec.select.i216 = or disjoint i32 %i.cq, %i.dc
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0.i211 = phi i32 [ %i.cq, %bb.j ], [ %spec.select.i216, %bb.k ] ; 3 uses
  %i.dd = sext i32 %.0.i211 to i64                ; 2 uses
  %i.de = getelementptr [8 x i8], ptr %i.b, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 -8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !11 ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dg
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !11
  %i.dj = icmp ult i64 %i.cp, %i.di
  %.pre35.i215 = sext i32 %.02731.i210 to i64     ; 2 uses
  br i1 %i.dj, label %heap_adjust.exit217, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dk = getelementptr [8 x i8], ptr %i.b, i64 %.pre35.i215
  %i.dl = getelementptr i8, ptr %i.dk, i64 -8
  store i64 %i.dg, ptr %i.dl, align 8, !tbaa !11
  %.not.i212 = icmp sgt i32 %.0.i211, %i.cm
  br i1 %.not.i212, label %heap_adjust.exit217, label %bb.j, !llvm.loop !17

heap_adjust.exit217:                              ; preds = %bb.m, %bb.l, %.lr.ph259
  %.pre-phi.i213 = phi i64 [ 1, %.lr.ph259 ], [ %i.dd, %bb.m ], [ %.pre35.i215, %bb.l ]
  %i.dm = ashr exact i64 %.pre34.i208, 32
  %i.dn = getelementptr [8 x i8], ptr %i.b, i64 %.pre-phi.i213
  %i.do = getelementptr i8, ptr %i.dn, i64 -8
  store i64 %i.dm, ptr %i.do, align 8, !tbaa !11
  %i.dp = load i64, ptr %i.b, align 16, !tbaa !11 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dp
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !11
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ci
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !11
  %i.du = add i64 %i.dt, %i.dr
  %i.dv = add i64 %.2178258, 255                  ; 5 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dv
  store i64 %i.du, ptr %i.dw, align 8, !tbaa !11
  %i.dx = trunc i64 %i.dv to i32
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ci
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !4
  %i.dz = trunc i64 %.2178258 to i32
  %i.ea = sub i32 -255, %i.dz
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dp
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !4
  store i64 %i.dv, ptr %i.b, align 16, !tbaa !11
  br i1 %.not30.i207, label %heap_adjust.exit228, label %.lr.ph.i220

.lr.ph.i220:                                      ; preds = %heap_adjust.exit217
  %2 = shl nuw nsw i64 %i.dv, 3
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 %2
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !11
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %.lr.ph.i220
  %.02731.i221 = phi i32 [ 1, %.lr.ph.i220 ], [ %.0.i222, %bb.q ] ; 2 uses
  %i.ee = shl nsw i32 %.02731.i221, 1             ; 4 uses
  %i.ef = icmp slt i32 %i.ee, %i.cl
  br i1 %i.ef, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.eg = sext i32 %i.ee to i64
  %i.eh = getelementptr [8 x i8], ptr %i.b, i64 %i.eg ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 -8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !11
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ej
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !11
  %i.em = load i64, ptr %i.eh, align 16, !tbaa !11
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.em
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !11
  %i.ep = icmp ugt i64 %i.el, %i.eo
  %i.eq = zext i1 %i.ep to i32
  %spec.select.i227 = or disjoint i32 %i.ee, %i.eq
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i222 = phi i32 [ %i.ee, %bb.n ], [ %spec.select.i227, %bb.o ] ; 3 uses
  %i.er = sext i32 %.0.i222 to i64                ; 2 uses
  %i.es = getelementptr [8 x i8], ptr %i.b, i64 %i.er
  %i.et = getelementptr i8, ptr %i.es, i64 -8
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !11 ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !11
  %i.ex = icmp ult i64 %i.ed, %i.ew
  %.pre35.i226 = sext i32 %.02731.i221 to i64     ; 2 uses
  br i1 %i.ex, label %heap_adjust.exit228, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ey = getelementptr [8 x i8], ptr %i.b, i64 %.pre35.i226
  %i.ez = getelementptr i8, ptr %i.ey, i64 -8
  store i64 %i.eu, ptr %i.ez, align 8, !tbaa !11
  %.not.i223 = icmp sgt i32 %.0.i222, %i.cm
  br i1 %.not.i223, label %heap_adjust.exit228, label %bb.n, !llvm.loop !17

heap_adjust.exit228:                              ; preds = %bb.q, %bb.p, %heap_adjust.exit217
  %.pre-phi.i224 = phi i64 [ 1, %heap_adjust.exit217 ], [ %i.er, %bb.q ], [ %.pre35.i226, %bb.p ]
  %i.fa = getelementptr [8 x i8], ptr %i.b, i64 %.pre-phi.i224
  %i.fb = getelementptr i8, ptr %i.fa, i64 -8
  store i64 %i.dv, ptr %i.fb, align 8, !tbaa !11
  %i.fc = icmp ugt i64 %i.ch, 1
  br i1 %i.fc, label %.lr.ph259, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %heap_adjust.exit228, %.preheader234, %.preheader233
  %.2178.lcssa = phi i64 [ %.1177.1, %.preheader233 ], [ 0, %.preheader234 ], [ 1, %heap_adjust.exit228 ]
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.2178.lcssa
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 1024
  store i32 0, ptr %i.fe, align 4, !tbaa !4
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.t
  %.0154273 = phi i64 [ 0, %._crit_edge ], [ %.1155, %bb.t ] ; 2 uses
  %.0156272 = phi i64 [ 0, %._crit_edge ], [ %.2158, %bb.t ] ; 2 uses
  %.0161271 = phi i64 [ 0, %._crit_edge ], [ %i.fr, %bb.t ] ; 7 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0161271
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !11
  %.not200 = icmp eq i64 %i.fg, 0
  br i1 %.not200, label %bb.s, label %.preheader232

.preheader232:                                    ; preds = %bb.r
  %.0152.in260 = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0161271
  %.0152261 = load i32, ptr %.0152.in260, align 4, !tbaa !4 ; 2 uses
  %.not201262 = icmp eq i32 %.0152261, 0
  br i1 %.not201262, label %._crit_edge268, label %.lr.ph267

bb.s:                                             ; preds = %bb.r
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0161271
  store i64 0, ptr %i.fh, align 8, !tbaa !11
  %i.fi = getelementptr inbounds nuw i8, ptr %i.e, i64 %.0161271
  store i8 0, ptr %i.fi, align 1, !tbaa !8
  br label %bb.t

.lr.ph267:                                        ; preds = %.preheader232, %.lr.ph267
  %.0152266 = phi i32 [ %.0152, %.lr.ph267 ], [ %.0152261, %.preheader232 ] ; 2 uses
  %.0159265 = phi i64 [ %.1160, %.lr.ph267 ], [ 0, %.preheader232 ]
  %.0181264 = phi i64 [ %i.fm, %.lr.ph267 ], [ 1, %.preheader232 ] ; 2 uses
  %.3189263 = phi i64 [ %i.fn, %.lr.ph267 ], [ 0, %.preheader232 ]
  %i.fj = icmp slt i32 %.0152266, 0
  %i.fk = select i1 %i.fj, i64 %.0181264, i64 0
  %.1160 = add i64 %i.fk, %.0159265               ; 2 uses
  %.1153 = tail call i32 @llvm.abs.i32(i32 %.0152266, i1 true)
  %i.fl = zext nneg i32 %.1153 to i64
  %i.fm = shl i64 %.0181264, 1
  %i.fn = add i64 %.3189263, 1                    ; 2 uses
  %.0152.in = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fl
  %.0152 = load i32, ptr %.0152.in, align 4, !tbaa !4 ; 2 uses
  %.not201 = icmp eq i32 %.0152, 0
  br i1 %.not201, label %._crit_edge268, label %.lr.ph267, !llvm.loop !20

._crit_edge268:                                   ; preds = %.lr.ph267, %.preheader232
  %.3189.lcssa = phi i64 [ 0, %.preheader232 ], [ %i.fn, %.lr.ph267 ] ; 2 uses
  %.0159.lcssa = phi i64 [ 0, %.preheader232 ], [ %.1160, %.lr.ph267 ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.0161271
  store i64 %.0159.lcssa, ptr %i.fo, align 8, !tbaa !11
  %i.fp = trunc i64 %.3189.lcssa to i8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.e, i64 %.0161271
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !8
  %spec.select = tail call i64 @llvm.umax.i64(i64 %.0159.lcssa, i64 %.0156272)
  %spec.select206 = tail call i64 @llvm.umax.i64(i64 %.3189.lcssa, i64 %.0154273)
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge268, %bb.s
  %.2158 = phi i64 [ %.0156272, %bb.s ], [ %spec.select, %._crit_edge268 ] ; 2 uses
  %.1155 = phi i64 [ %.0154273, %bb.s ], [ %spec.select206, %._crit_edge268 ] ; 2 uses
  %i.fr = add nuw nsw i64 %.0161271, 1            ; 2 uses
  %exitcond331.not = icmp eq i64 %i.fr, 256
  br i1 %exitcond331.not, label %bb.u, label %bb.r, !llvm.loop !21

bb.u:                                             ; preds = %bb.t
  %i.fs = icmp ugt i64 %.1155, 64
  br i1 %i.fs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ft = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.fu = tail call i64 @fwrite(ptr nonnull @.str.1, i64 25, i64 1, ptr %i.ft) #16 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.fv = icmp eq i64 %.2158, 0
  br i1 %i.fv, label %bb.x, label %.preheader231

.preheader231:                                    ; preds = %bb.w
  br i1 %.not314, label %._crit_edge291, label %.lr.ph290

bb.x:                                             ; preds = %bb.w
  %i.fw = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.fx = tail call i64 @fwrite(ptr nonnull @.str.2, i64 32, i64 1, ptr %i.fw) #16 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

.lr.ph290:                                        ; preds = %.preheader231, %._crit_edge281
  %.0145289 = phi i32 [ %.1.lcssa, %._crit_edge281 ], [ -1, %.preheader231 ] ; 2 uses
  %.0146288 = phi i8 [ %.1147.lcssa, %._crit_edge281 ], [ 0, %.preheader231 ] ; 2 uses
  %.0149287 = phi i64 [ %.1150.lcssa, %._crit_edge281 ], [ 0, %.preheader231 ] ; 2 uses
  %.1163286 = phi ptr [ %i.gv, %._crit_edge281 ], [ %0, %.preheader231 ] ; 2 uses
  %.1182285 = phi i64 [ %i.gw, %._crit_edge281 ], [ 0, %.preheader231 ]
  %i.fy = load i8, ptr %.1163286, align 1, !tbaa !8
  %i.fz = zext i8 %i.fy to i64                    ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !8   ; 3 uses
  %i.gc = zext i8 %i.gb to i64
  %.not316 = icmp eq i8 %i.gb, 0
  br i1 %.not316, label %._crit_edge281, label %.lr.ph280

.lr.ph280:                                        ; preds = %.lr.ph290
  %i.gd = zext i8 %i.gb to i32
  %i.ge = add nsw i32 %i.gd, -1
  %i.gf = shl nuw i32 1, %i.ge
  %i.gg = sext i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.fz
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph280, %bb.ac
  %.1278 = phi i32 [ %.0145289, %.lr.ph280 ], [ %.2, %bb.ac ] ; 2 uses
  %.1147277 = phi i8 [ %.0146288, %.lr.ph280 ], [ %spec.select203, %bb.ac ] ; 2 uses
  %.1150276 = phi i64 [ %.0149287, %.lr.ph280 ], [ %.2151, %bb.ac ] ; 3 uses
  %.0172275 = phi i64 [ %i.gg, %.lr.ph280 ], [ %i.gt, %bb.ac ] ; 2 uses
  %.4190274 = phi i64 [ 0, %.lr.ph280 ], [ %i.gu, %bb.ac ]
  %i.gi = icmp eq i32 %.1278, 7
  br i1 %i.gi, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.gj = getelementptr inbounds nuw i8, ptr %calloc, i64 %.1150276
  store i8 %.1147277, ptr %i.gj, align 1, !tbaa !8
  %i.gk = add i64 %.1150276, 1                    ; 2 uses
  %i.gl = icmp eq i64 %i.gk, %1
  br i1 %i.gl, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.gm = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.gn = tail call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %i.gm) #16 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.ab:                                            ; preds = %bb.y
  %i.go = add nsw i32 %.1278, 1
  %i.gp = shl i8 %.1147277, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.ab
  %.2151 = phi i64 [ %.1150276, %bb.ab ], [ %i.gk, %bb.z ] ; 2 uses
  %.2148 = phi i8 [ %i.gp, %bb.ab ], [ 0, %bb.z ]
  %.2 = phi i32 [ %i.go, %bb.ab ], [ 0, %bb.z ]   ; 2 uses
  %i.gq = load i64, ptr %i.gh, align 8, !tbaa !11
  %i.gr = and i64 %i.gq, %.0172275
  %.not199 = icmp ne i64 %i.gr, 0
  %i.gs = zext i1 %.not199 to i8
  %spec.select203 = or disjoint i8 %.2148, %i.gs  ; 2 uses
  %i.gt = lshr i64 %.0172275, 1
  %i.gu = add nuw nsw i64 %.4190274, 1            ; 2 uses
  %exitcond332.not = icmp eq i64 %i.gu, %i.gc
  br i1 %exitcond332.not, label %._crit_edge281, label %bb.y, !llvm.loop !25

._crit_edge281:                                   ; preds = %bb.ac, %.lr.ph290
  %.1150.lcssa = phi i64 [ %.0149287, %.lr.ph290 ], [ %.2151, %bb.ac ] ; 2 uses
  %.1147.lcssa = phi i8 [ %.0146288, %.lr.ph290 ], [ %spec.select203, %bb.ac ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0145289, %.lr.ph290 ], [ %.2, %bb.ac ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.1163286, i64 1
  %i.gw = add nuw i64 %.1182285, 1                ; 2 uses
  %exitcond333.not = icmp eq i64 %i.gw, %1
  br i1 %exitcond333.not, label %._crit_edge291.loopexit, label %.lr.ph290, !llvm.loop !26

._crit_edge291.loopexit:                          ; preds = %._crit_edge281
  %i.gx = sub nsw i32 7, %.1.lcssa
  %i.gy = zext i8 %.1147.lcssa to i32
  %i.gz = shl i32 %i.gy, %i.gx
  %i.ha = trunc i32 %i.gz to i8
  br label %._crit_edge291

._crit_edge291:                                   ; preds = %._crit_edge291.loopexit, %.preheader231
  %.0149.lcssa = phi i64 [ 0, %.preheader231 ], [ %.1150.lcssa, %._crit_edge291.loopexit ]
  %i.hb = phi i8 [ 0, %.preheader231 ], [ %i.ha, %._crit_edge291.loopexit ]
  %i.hc = getelementptr inbounds nuw i8, ptr %calloc, i64 %.0149.lcssa
  store i8 %i.hb, ptr %i.hc, align 1, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.f, i8 0, i64 2048, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge291, %bb.af
  %.0303 = phi ptr [ %i.g, %._crit_edge291 ], [ %i.he, %bb.af ] ; 2 uses
  %.2183302 = phi i64 [ 0, %._crit_edge291 ], [ %i.if, %bb.af ] ; 5 uses
  %i.hd = trunc nuw i64 %.2183302 to i8
  store i8 %i.hd, ptr %.0303, align 1, !tbaa !8
  %i.he = getelementptr inbounds nuw i8, ptr %.0303, i64 1
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.2183302
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !11 ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.e, i64 %.2183302
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !8   ; 5 uses
  %i.hj = zext i8 %i.hi to i64                    ; 3 uses
  %i.hk = or i64 %i.hg, %i.hj
  %.not197 = icmp eq i64 %i.hk, 0
  br i1 %.not197, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not317 = icmp eq i8 %i.hi, 0
  br i1 %.not317, label %._crit_edge300, label %.lr.ph299.preheader

.lr.ph299.preheader:                              ; preds = %bb.ae
end_hunk_0
