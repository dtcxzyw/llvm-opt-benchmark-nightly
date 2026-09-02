Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 84
loop-unroll.NumUnrolled: 174
begin_hunk_0_@resolve_variables:bb.a
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.r, align 8, !tbaa !466
  br label %dbuf_putc.exit

bb.k:                                             ; preds = %bb.g
  %i.bv = load ptr, ptr %2, align 8, !tbaa !467
  %i.bw = add i64 %i.bn, 1
  store i64 %i.bw, ptr %i.r, align 8, !tbaa !466
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  store i8 49, ptr %i.bx, align 1, !tbaa !218
  br label %dbuf_putc.exit

dbuf_putc.exit:                                   ; preds = %bb.j, %bb.i, %bb.k
  %i.by = load i32, ptr %i.bc, align 4, !tbaa !882 ; 3 uses
  %i.bz = icmp slt i32 %i.by, 242
  br i1 %i.bz, label %JS_DupAtom.exit, label %bb.l

bb.l:                                             ; preds = %dbuf_putc.exit
  %i.ca = load ptr, ptr %i.s, align 8, !tbaa !232
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1104
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !297
  %i.cd = zext nneg i32 %i.by to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !299
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -4 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !191
  %i.ci = add nsw i32 %i.ch, 1
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !191
  br label %JS_DupAtom.exit

JS_DupAtom.exit:                                  ; preds = %dbuf_putc.exit, %bb.l
  %i.cj = load i64, ptr %i.q, align 8, !tbaa !465 ; 2 uses
  %i.ck = load i64, ptr %i.r, align 8, !tbaa !466 ; 4 uses
  %i.cl = sub i64 %i.cj, %i.ck
  %i.cm = icmp ult i64 %i.cl, 4
  br i1 %i.cm, label %bb.m, label %dbuf_put_u32.exit.sink.split, !prof !192

bb.m:                                             ; preds = %JS_DupAtom.exit
  %i.cn = add i64 %i.ck, 4
  %i.co = icmp ugt i64 %i.cn, %i.cj
  br i1 %i.co, label %bb.n, label %dbuf_put_u32.exit.sink.split, !prof !192

bb.n:                                             ; preds = %bb.m
  %i.cp = call fastcc i32 @dbuf_claim(ptr noundef nonnull %2, i64 noundef 4)
  %.not.i.i494 = icmp eq i32 %i.cp, 0
  %.pre732 = load i64, ptr %i.r, align 8, !tbaa !466 ; 2 uses
  br i1 %.not.i.i494, label %dbuf_put_u32.exit.sink.split, label %dbuf_put_u32.exit

dbuf_put_u32.exit.sink.split:                     ; preds = %JS_DupAtom.exit, %bb.m, %bb.n
  %.sink950 = phi i64 [ %.pre732, %bb.n ], [ %i.ck, %bb.m ], [ %i.ck, %JS_DupAtom.exit ]
  %i.cq = load ptr, ptr %2, align 8, !tbaa !467
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.sink950
  store i32 %i.by, ptr %i.cr, align 1
  %i.cs = load i64, ptr %i.r, align 8, !tbaa !466
  %i.ct = add i64 %i.cs, 4                        ; 2 uses
  store i64 %i.ct, ptr %i.r, align 8, !tbaa !466
  br label %dbuf_put_u32.exit

dbuf_put_u32.exit:                                ; preds = %dbuf_put_u32.exit.sink.split, %bb.n
  %i.cu = phi i64 [ %.pre732, %bb.n ], [ %i.ct, %dbuf_put_u32.exit.sink.split ] ; 4 uses
  %i.cv = load i64, ptr %i.q, align 8, !tbaa !465
  %i.cw = icmp eq i64 %i.cv, %i.cu
  br i1 %i.cw, label %bb.o, label %bb.r, !prof !192

bb.o:                                             ; preds = %dbuf_put_u32.exit
  %.not861 = icmp eq i64 %i.cu, -1
  br i1 %.not861, label %bb.q, label %bb.p, !prof !324

bb.p:                                             ; preds = %bb.o
  %i.cx = call fastcc i32 @dbuf_claim(ptr noundef nonnull %2, i64 noundef 1)
  %.not.i.i498 = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i498, label %._crit_edge.i499, label %dbuf_putc.exit358

._crit_edge.i499:                                 ; preds = %bb.p
  %.pre.i500 = load i64, ptr %i.r, align 8, !tbaa !466
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.i499, %bb.o
  %i.cy = phi i64 [ %.pre.i500, %._crit_edge.i499 ], [ -1, %bb.o ]
  %i.cz = load ptr, ptr %2, align 8, !tbaa !467
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cy
  store i8 1, ptr %i.da, align 1
  %i.db = load i64, ptr %i.r, align 8, !tbaa !466
  %i.dc = add i64 %i.db, 1
  store i64 %i.dc, ptr %i.r, align 8, !tbaa !466
  br label %dbuf_putc.exit358

bb.r:                                             ; preds = %dbuf_put_u32.exit
  %i.dd = load ptr, ptr %2, align 8, !tbaa !467
  %i.de = add i64 %i.cu, 1
  store i64 %i.de, ptr %i.r, align 8, !tbaa !466
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.cu
  store i8 1, ptr %i.df, align 1, !tbaa !218
  br label %dbuf_putc.exit358

dbuf_putc.exit351:                                ; preds = %bb.d
  %i.dg = and i32 %i.bg, -2
  %switch = icmp eq i32 %i.dg, 86
  br i1 %switch, label %dbuf_putc.exit358, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.dh = load i64, ptr %i.q, align 8, !tbaa !465
  %i.di = load i64, ptr %i.r, align 8, !tbaa !466 ; 3 uses
  %i.dj = icmp eq i64 %i.dh, %i.di
  br i1 %i.dj, label %bb.s, label %bb.t, !prof !192

bb.s:                                             ; preds = %._crit_edge
  call fastcc void @__dbuf_putc(ptr noundef nonnull %2, i8 noundef zeroext 62)
  br label %dbuf_putc.exit353

bb.t:                                             ; preds = %._crit_edge
  %i.dk = load ptr, ptr %2, align 8, !tbaa !467
  %i.dl = add i64 %i.di, 1
  store i64 %i.dl, ptr %i.r, align 8, !tbaa !466
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.di
  store i8 62, ptr %i.dm, align 1, !tbaa !218
  br label %dbuf_putc.exit353

dbuf_putc.exit353:                                ; preds = %bb.s, %bb.t
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !882 ; 4 uses
  %i.dp = icmp slt i32 %i.do, 242
  br i1 %i.dp, label %JS_DupAtom.exit354, label %bb.u

bb.u:                                             ; preds = %dbuf_putc.exit353
  %i.dq = load ptr, ptr %i.s, align 8, !tbaa !232
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1104
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !297
  %i.dt = zext nneg i32 %i.do to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !299
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -4 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !191
  %i.dy = add nsw i32 %i.dx, 1
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !191
  br label %JS_DupAtom.exit354

JS_DupAtom.exit354:                               ; preds = %dbuf_putc.exit353, %bb.u
  %i.dz = load i64, ptr %i.q, align 8, !tbaa !465
  %i.ea = load i64, ptr %i.r, align 8, !tbaa !466 ; 2 uses
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = icmp ult i64 %i.eb, 4
  br i1 %i.ec, label %bb.v, label %bb.w, !prof !192

bb.v:                                             ; preds = %JS_DupAtom.exit354
  %i.ed = call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %2, i32 noundef %i.do) ; 0 uses
  %.pre = load i64, ptr %i.r, align 8, !tbaa !466
  br label %dbuf_put_u32.exit356

bb.w:                                             ; preds = %JS_DupAtom.exit354
  %i.ee = load ptr, ptr %2, align 8, !tbaa !467
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ea
  store i32 %i.do, ptr %i.ef, align 1
  %i.eg = load i64, ptr %i.r, align 8, !tbaa !466
  %i.eh = add i64 %i.eg, 4                        ; 2 uses
  store i64 %i.eh, ptr %i.r, align 8, !tbaa !466
  br label %dbuf_put_u32.exit356

dbuf_put_u32.exit356:                             ; preds = %bb.v, %bb.w
  %i.ei = phi i64 [ %.pre, %bb.v ], [ %i.eh, %bb.w ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ek = load i8, ptr %i.ej, align 4
  %i.el = shl i8 %i.ek, 6                         ; 2 uses
  %spec.select = and i8 %i.el, -128
  %i.em = load i32, ptr %i.ay, align 4, !tbaa !919
  %i.en = or i8 %i.el, 64
  %i.eo = icmp slt i32 %i.em, 0
  %.1282 = select i1 %i.eo, i8 %spec.select, i8 %i.en ; 2 uses
  %i.ep = load i64, ptr %i.q, align 8, !tbaa !465
  %i.eq = icmp eq i64 %i.ep, %i.ei
  br i1 %i.eq, label %bb.x, label %bb.y, !prof !192

bb.x:                                             ; preds = %dbuf_put_u32.exit356
  call fastcc void @__dbuf_putc(ptr noundef nonnull %2, i8 noundef zeroext %.1282)
  br label %dbuf_putc.exit358

bb.y:                                             ; preds = %dbuf_put_u32.exit356
  %i.er = load ptr, ptr %2, align 8, !tbaa !467
  %i.es = add i64 %i.ei, 1
  store i64 %i.es, ptr %i.r, align 8, !tbaa !466
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.ei
  store i8 %.1282, ptr %i.et, align 1, !tbaa !218
  br label %dbuf_putc.exit358

dbuf_putc.exit358:                                ; preds = %dbuf_putc.exit351, %bb.r, %bb.p, %bb.q, %bb.f, %bb.e, %bb.y, %bb.x
  %indvars.iv.next730 = add nuw nsw i64 %indvars.iv729, 1 ; 2 uses
  %i.eu = load i32, ptr %i.k, align 4, !tbaa !879
  %i.ev = sext i32 %i.eu to i64
  %i.ew = icmp slt i64 %indvars.iv.next730, %i.ev
  br i1 %i.ew, label %bb.b, label %.preheader, !llvm.loop !2081

bb.z:                                             ; preds = %.lr.ph655, %dbuf_put_u16.exit364
  %.0266654 = phi i32 [ 0, %.lr.ph655 ], [ %.2, %dbuf_put_u16.exit364 ] ; 4 uses
  %.0283653 = phi i32 [ 0, %.lr.ph655 ], [ %.6289, %dbuf_put_u16.exit364 ] ; 43 uses
  %.0290652 = phi i32 [ 0, %.lr.ph655 ], [ %.6296, %dbuf_put_u16.exit364 ] ; 43 uses
  %i.ex = sext i32 %.0266654 to i64
  %i.ey = getelementptr inbounds i8, ptr %i.d, i64 %i.ex ; 22 uses
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !218 ; 7 uses
  %i.fa = zext i8 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr @opcode_info, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 4, !tbaa !776 ; 4 uses
  %i.fd = zext i8 %i.fc to i32
  %i.fe = add nsw i32 %.0266654, %i.fd            ; 32 uses
  switch i8 %i.ez, label %dbuf_put_u32.exit472 [
    i8 -53, label %bb.aa
    i8 50, label %bb.ab
    i8 51, label %bb.aj
    i8 -68, label %bb.ap
    i8 -67, label %bb.ap
    i8 -66, label %bb.ap
    i8 -65, label %bb.ap
    i8 -63, label %bb.ap
    i8 -62, label %bb.ap
    i8 -64, label %bb.aq
    i8 -61, label %bb.ar
    i8 -60, label %bb.ar
    i8 -59, label %bb.ar
    i8 -58, label %bb.ar
    i8 108, label %bb.fc
    i8 22, label %bb.fe
    i8 106, label %bb.fq
    i8 35, label %bb.fr
    i8 37, label %bb.fr
    i8 40, label %bb.fr
    i8 41, label %bb.fr
    i8 48, label %bb.fr
    i8 49, label %bb.fr
    i8 109, label %bb.fr
    i8 -69, label %bb.gj
    i8 -71, label %bb.gk
    i8 -70, label %bb.ky
    i8 -54, label %bb.lg
    i8 76, label %bb.mt
    i8 104, label %bb.mu
    i8 105, label %bb.mu
    i8 107, label %bb.mu
    i8 17, label %bb.mv
    i8 -72, label %dbuf_put_u16.exit364
    i8 -55, label %dbuf_put_u16.exit364
    i8 -57, label %bb.pu
    i8 -56, label %bb.pz
  ]

bb.aa:                                            ; preds = %bb.z
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  %.val334 = load i32, ptr %i.ff, align 1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 5
  %.val333 = load i32, ptr %i.fg, align 1
  %i.fh = load i32, ptr %i.ae, align 8, !tbaa !929
  %i.fi = add nsw i32 %i.fh, 1
  store i32 %i.fi, ptr %i.ae, align 8, !tbaa !929
  br label %dbuf_put_u32.exit472

bb.ab:                                            ; preds = %bb.z
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  %.val343 = load i16, ptr %i.fj, align 1         ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ey, i64 3
  %.val342 = load i16, ptr %i.fk, align 1
  %i.fl = load ptr, ptr %i.af, align 8, !tbaa !720
  %i.fm = zext i16 %.val342 to i64                ; 2 uses
  %i.fn = getelementptr inbounds nuw [20 x i8], ptr %i.fl, i64 %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %.01.i = load i32, ptr %i.fo, align 4, !tbaa !191 ; 2 uses
  %i.fp = icmp sgt i32 %.01.i, -1
  br i1 %i.fp, label %.lr.ph.i, label %mark_eval_captured_variables.exit

.lr.ph.i:                                         ; preds = %bb.ab, %capture_var.exit.i
  %.02.i = phi i32 [ %.0.i359, %capture_var.exit.i ], [ %.01.i, %bb.ab ]
  %i.fq = load ptr, ptr %i.ag, align 8, !tbaa !875
  %i.fr = zext nneg i32 %.02.i to i64
  %i.fs = getelementptr inbounds nuw [20 x i8], ptr %i.fq, i64 %i.fr ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 12 ; 2 uses
  %i.fu = load i8, ptr %i.ft, align 4             ; 2 uses
  %i.fv = and i8 %i.fu, 4
  %.not.i.i = icmp eq i8 %i.fv, 0
  br i1 %.not.i.i, label %bb.ac, label %capture_var.exit.i

bb.ac:                                            ; preds = %.lr.ph.i
  %i.fw = or disjoint i8 %i.fu, 4
  store i8 %i.fw, ptr %i.ft, align 4
  %i.fx = load i32, ptr %i.aw, align 4, !tbaa !893 ; 2 uses
  %i.fy = add nsw i32 %i.fx, 1
  store i32 %i.fy, ptr %i.aw, align 4, !tbaa !893
  %i.fz = trunc i32 %i.fx to i16
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fs, i64 14
  store i16 %i.fz, ptr %i.ga, align 2, !tbaa !547
  br label %capture_var.exit.i

capture_var.exit.i:                               ; preds = %bb.ac, %.lr.ph.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %.0.i359 = load i32, ptr %i.gb, align 4, !tbaa !191 ; 2 uses
  %i.gc = icmp sgt i32 %.0.i359, -1
  br i1 %i.gc, label %.lr.ph.i, label %mark_eval_captured_variables.exit, !llvm.loop !2082

mark_eval_captured_variables.exit:                ; preds = %capture_var.exit.i, %bb.ab
  %i.gd = load i64, ptr %i.v, align 8, !tbaa !465
  %i.ge = load i64, ptr %i.w, align 8, !tbaa !466 ; 3 uses
  %i.gf = icmp eq i64 %i.gd, %i.ge
  br i1 %i.gf, label %bb.ad, label %bb.ae, !prof !192

bb.ad:                                            ; preds = %mark_eval_captured_variables.exit
  call fastcc void @__dbuf_putc(ptr noundef nonnull %2, i8 noundef zeroext 50)
  br label %dbuf_putc.exit361

bb.ae:                                            ; preds = %mark_eval_captured_variables.exit
  %i.gg = load ptr, ptr %2, align 8, !tbaa !467
  %i.gh = add i64 %i.ge, 1
  store i64 %i.gh, ptr %i.w, align 8, !tbaa !466
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.ge
  store i8 50, ptr %i.gi, align 1, !tbaa !218
  br label %dbuf_putc.exit361

dbuf_putc.exit361:                                ; preds = %bb.ad, %bb.ae
  %i.gj = load i64, ptr %i.v, align 8, !tbaa !465
  %i.gk = load i64, ptr %i.w, align 8, !tbaa !466 ; 2 uses
  %i.gl = sub i64 %i.gj, %i.gk
  %i.gm = icmp ult i64 %i.gl, 2
  br i1 %i.gm, label %bb.af, label %bb.ag, !prof !192

bb.af:                                            ; preds = %dbuf_putc.exit361
  %i.gn = call fastcc i32 @__dbuf_put_u16(ptr noundef nonnull %2, i16 noundef zeroext %.val343) ; 0 uses
  %.pre747 = load i64, ptr %i.w, align 8, !tbaa !466
  br label %dbuf_put_u16.exit

bb.ag:                                            ; preds = %dbuf_putc.exit361
  %i.go = load ptr, ptr %2, align 8, !tbaa !467
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gk
  store i16 %.val343, ptr %i.gp, align 1
  %i.gq = load i64, ptr %i.w, align 8, !tbaa !466
  %i.gr = add i64 %i.gq, 2                        ; 2 uses
  store i64 %i.gr, ptr %i.w, align 8, !tbaa !466
  br label %dbuf_put_u16.exit

dbuf_put_u16.exit:                                ; preds = %bb.af, %bb.ag
  %i.gs = phi i64 [ %.pre747, %bb.af ], [ %i.gr, %bb.ag ] ; 2 uses
  %i.gt = load ptr, ptr %i.af, align 8, !tbaa !720
  %i.gu = getelementptr inbounds nuw [20 x i8], ptr %i.gt, i64 %i.fm
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !863
  %i.gx = trunc i32 %i.gw to i16
  %i.gy = add i16 %i.gx, 1                        ; 2 uses
  %i.gz = load i64, ptr %i.v, align 8, !tbaa !465
  %i.ha = sub i64 %i.gz, %i.gs
  %i.hb = icmp ult i64 %i.ha, 2
  br i1 %i.hb, label %bb.ah, label %bb.ai, !prof !192

bb.ah:                                            ; preds = %dbuf_put_u16.exit
  %i.hc = call fastcc i32 @__dbuf_put_u16(ptr noundef nonnull %2, i16 noundef zeroext %i.gy) ; 0 uses
  br label %dbuf_put_u16.exit364

bb.ai:                                            ; preds = %dbuf_put_u16.exit
  %i.hd = load ptr, ptr %2, align 8, !tbaa !467
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.gs
  store i16 %i.gy, ptr %i.he, align 1
  %i.hf = load i64, ptr %i.w, align 8, !tbaa !466
  %i.hg = add i64 %i.hf, 2
  store i64 %i.hg, ptr %i.w, align 8, !tbaa !466
  br label %dbuf_put_u16.exit364

bb.aj:                                            ; preds = %bb.z
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  %.val341 = load i16, ptr %i.hh, align 1
  %i.hi = load ptr, ptr %i.af, align 8, !tbaa !720
  %i.hj = zext i16 %.val341 to i64                ; 2 uses
  %i.hk = getelementptr inbounds nuw [20 x i8], ptr %i.hi, i64 %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %.01.i365 = load i32, ptr %i.hl, align 4, !tbaa !191 ; 2 uses
  %i.hm = icmp sgt i32 %.01.i365, -1
  br i1 %i.hm, label %.lr.ph.i366, label %mark_eval_captured_variables.exit371

.lr.ph.i366:                                      ; preds = %bb.aj, %capture_var.exit.i369
  %.02.i367 = phi i32 [ %.0.i370, %capture_var.exit.i369 ], [ %.01.i365, %bb.aj ]
  %i.hn = load ptr, ptr %i.ag, align 8, !tbaa !875
  %i.ho = zext nneg i32 %.02.i367 to i64
  %i.hp = getelementptr inbounds nuw [20 x i8], ptr %i.hn, i64 %i.ho ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 12 ; 2 uses
  %i.hr = load i8, ptr %i.hq, align 4             ; 2 uses
  %i.hs = and i8 %i.hr, 4
  %.not.i.i368 = icmp eq i8 %i.hs, 0
  br i1 %.not.i.i368, label %bb.ak, label %capture_var.exit.i369

bb.ak:                                            ; preds = %.lr.ph.i366
  %i.ht = or disjoint i8 %i.hr, 4
  store i8 %i.ht, ptr %i.hq, align 4
  %i.hu = load i32, ptr %i.aw, align 4, !tbaa !893 ; 2 uses
  %i.hv = add nsw i32 %i.hu, 1
  store i32 %i.hv, ptr %i.aw, align 4, !tbaa !893
  %i.hw = trunc i32 %i.hu to i16
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hp, i64 14
  store i16 %i.hw, ptr %i.hx, align 2, !tbaa !547
  br label %capture_var.exit.i369

capture_var.exit.i369:                            ; preds = %bb.ak, %.lr.ph.i366
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %.0.i370 = load i32, ptr %i.hy, align 4, !tbaa !191 ; 2 uses
  %i.hz = icmp sgt i32 %.0.i370, -1
  br i1 %i.hz, label %.lr.ph.i366, label %mark_eval_captured_variables.exit371, !llvm.loop !2082

mark_eval_captured_variables.exit371:             ; preds = %capture_var.exit.i369, %bb.aj
  %i.ia = load i64, ptr %i.v, align 8, !tbaa !465
  %i.ib = load i64, ptr %i.w, align 8, !tbaa !466 ; 3 uses
  %i.ic = icmp eq i64 %i.ia, %i.ib
end_hunk_0
begin_hunk_1_@resolve_variables:bb.a
  store i32 %i.xh, ptr %i.ad, align 8, !tbaa !930
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z, %bb.z
  %i.xi = zext i8 %i.fc to i64                    ; 4 uses
  %i.xj = load i64, ptr %i.w, align 8, !tbaa !466 ; 2 uses
  %i.xk = add i64 %i.xj, %i.xi
  %i.xl = load i64, ptr %i.v, align 8, !tbaa !465
  %i.xm = icmp ugt i64 %i.xk, %i.xl
  br i1 %i.xm, label %bb.fs, label %bb.ft, !prof !192

bb.fs:                                            ; preds = %bb.fr
  %i.xn = call fastcc i32 @dbuf_claim(ptr noundef nonnull %2, i64 noundef range(i64 -2147483648, 2147483648) %i.xi)
  %.not.i385.not = icmp eq i32 %i.xn, 0
  br i1 %.not.i385.not, label %._crit_edge741, label %dbuf_put.exit

._crit_edge741:                                   ; preds = %bb.fs
  %.pre742 = load i64, ptr %i.w, align 8, !tbaa !466
  br label %bb.ft

bb.ft:                                            ; preds = %._crit_edge741, %bb.fr
  %i.xo = phi i64 [ %.pre742, %._crit_edge741 ], [ %i.xj, %bb.fr ]
  %i.xp = load ptr, ptr %2, align 8, !tbaa !467
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 %i.xo
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xq, ptr nonnull readonly align 1 %i.ey, i64 range(i64 -2147483648, 2147483648) %i.xi, i1 false)
  %i.xr = load i64, ptr %i.w, align 8, !tbaa !466
  %i.xs = add i64 %i.xr, %i.xi
  store i64 %i.xs, ptr %i.w, align 8, !tbaa !466
  br label %dbuf_put.exit

dbuf_put.exit:                                    ; preds = %bb.fs, %bb.ft
  %i.xt = icmp slt i32 %i.fe, %i.g
  br i1 %i.xt, label %.lr.ph.i386, label %dbuf_put_u16.exit364

.lr.ph.i386:                                      ; preds = %dbuf_put.exit, %bb.ga
  %.0508 = phi i32 [ %.1509, %bb.ga ], [ -1, %dbuf_put.exit ] ; 5 uses
  %.0505 = phi i32 [ %.1506, %bb.ga ], [ -1, %dbuf_put.exit ] ; 5 uses
  %.041.i = phi i32 [ %i.yw, %bb.ga ], [ %i.fe, %dbuf_put.exit ] ; 3 uses
  %i.xu = sext i32 %.041.i to i64
  %i.xv = getelementptr inbounds i8, ptr %i.d, i64 %i.xu ; 7 uses
  %i.xw = load i8, ptr %i.xv, align 1, !tbaa !218 ; 2 uses
  %i.xx = zext i8 %i.xw to i64
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr @opcode_info, i64 %i.xx ; 2 uses
  %i.xz = load i8, ptr %i.xy, align 4, !tbaa !776
  %i.ya = zext i8 %i.xz to i32
  switch i8 %i.xw, label %bb.fw [
    i8 -53, label %bb.fu
    i8 -69, label %bb.fv
  ]

bb.fu:                                            ; preds = %.lr.ph.i386
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xv, i64 1
  %.val37.i = load i32, ptr %i.yb, align 1
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xv, i64 5
  %.val36.i = load i32, ptr %i.yc, align 1
  br label %bb.ga

bb.fv:                                            ; preds = %.lr.ph.i386
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xv, i64 1
  %.val35.i = load i32, ptr %i.yd, align 1
  %.val40.i = load ptr, ptr %i.ac, align 8, !tbaa !733
  %i.ye = sext i32 %.val35.i to i64
  %i.yf = getelementptr inbounds [24 x i8], ptr %.val40.i, i64 %i.ye
  %i.yg = load i32, ptr %i.yf, align 8, !tbaa !921
  %i.yh = icmp sgt i32 %i.yg, 0
  br i1 %i.yh, label %skip_dead_code.exit, label %bb.ga

bb.fw:                                            ; preds = %.lr.ph.i386
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xy, i64 3
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !777
  switch i8 %i.yj, label %bb.ga [
    i8 23, label %bb.fx
    i8 29, label %bb.fx
    i8 27, label %bb.fy
    i8 28, label %bb.fy
    i8 24, label %bb.fz
    i8 25, label %bb.fz
    i8 26, label %bb.fz
  ]

bb.fx:                                            ; preds = %bb.fw, %bb.fw
  %i.yk = getelementptr inbounds nuw i8, ptr %i.xv, i64 1
  %.val34.i = load i32, ptr %i.yk, align 1
  %.val39.i = load ptr, ptr %i.ac, align 8, !tbaa !733
  %i.yl = sext i32 %.val34.i to i64
  %i.ym = getelementptr inbounds [24 x i8], ptr %.val39.i, i64 %i.yl ; 2 uses
  %i.yn = load i32, ptr %i.ym, align 8, !tbaa !921
  %i.yo = add nsw i32 %i.yn, -1
  store i32 %i.yo, ptr %i.ym, align 8, !tbaa !921
  br label %bb.ga

bb.fy:                                            ; preds = %bb.fw, %bb.fw
  %i.yp = getelementptr inbounds nuw i8, ptr %i.xv, i64 5
  %.val33.i = load i32, ptr %i.yp, align 1
  %.val38.i = load ptr, ptr %i.ac, align 8, !tbaa !733
  %i.yq = sext i32 %.val33.i to i64
  %i.yr = getelementptr inbounds [24 x i8], ptr %.val38.i, i64 %i.yq ; 2 uses
  %i.ys = load i32, ptr %i.yr, align 8, !tbaa !921
  %i.yt = add nsw i32 %i.ys, -1
  store i32 %i.yt, ptr %i.yr, align 8, !tbaa !921
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fw, %bb.fw, %bb.fw
  %i.yu = getelementptr inbounds nuw i8, ptr %i.xv, i64 1
  %.val.i = load i32, ptr %i.yu, align 1
  %i.yv = load ptr, ptr %1, align 8, !tbaa !859
  call void @JS_FreeAtom(ptr noundef %i.yv, i32 noundef %.val.i)
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fx, %bb.fw, %bb.fv, %bb.fu
  %.1509 = phi i32 [ %.0508, %bb.fw ], [ %.0508, %bb.fx ], [ %.0508, %bb.fz ], [ %.val37.i, %bb.fu ], [ %.0508, %bb.fv ] ; 2 uses
  %.1506 = phi i32 [ %.0505, %bb.fw ], [ %.0505, %bb.fx ], [ %.0505, %bb.fz ], [ %.val36.i, %bb.fu ], [ %.0505, %bb.fv ] ; 2 uses
  %i.yw = add nsw i32 %.041.i, %i.ya              ; 3 uses
  %i.yx = icmp slt i32 %i.yw, %i.g
  br i1 %i.yx, label %.lr.ph.i386, label %skip_dead_code.exit, !llvm.loop !180

skip_dead_code.exit:                              ; preds = %bb.fv, %bb.ga
  %.2510 = phi i32 [ %.1509, %bb.ga ], [ %.0508, %bb.fv ] ; 6 uses
  %.2507 = phi i32 [ %.1506, %bb.ga ], [ %.0505, %bb.fv ] ; 5 uses
  %.0.lcssa.i = phi i32 [ %i.yw, %bb.ga ], [ %.041.i, %bb.fv ] ; 5 uses
  %i.yy = icmp sgt i32 %.2510, -1
  %.not312 = icmp slt i32 %.0.lcssa.i, %i.g
  %or.cond320 = select i1 %i.yy, i1 %.not312, i1 false
  br i1 %or.cond320, label %bb.gb, label %dbuf_put_u16.exit364

bb.gb:                                            ; preds = %skip_dead_code.exit
  %.not313 = icmp eq i32 %.0290652, %.2510
  %.not314 = icmp eq i32 %.0283653, %.2507
  %or.cond321 = select i1 %.not313, i1 %.not314, i1 false
  br i1 %or.cond321, label %dbuf_put_u16.exit364, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.yz = load i32, ptr %i.ae, align 8, !tbaa !929
  %i.za = add nsw i32 %i.yz, 1
  store i32 %i.za, ptr %i.ae, align 8, !tbaa !929
  %i.zb = load i64, ptr %i.v, align 8, !tbaa !465
  %i.zc = load i64, ptr %i.w, align 8, !tbaa !466 ; 3 uses
  %i.zd = icmp eq i64 %i.zb, %i.zc
  br i1 %i.zd, label %bb.gd, label %bb.ge, !prof !192

bb.gd:                                            ; preds = %bb.gc
  call fastcc void @__dbuf_putc(ptr noundef nonnull %2, i8 noundef zeroext -53)
  br label %dbuf_putc.exit388

bb.ge:                                            ; preds = %bb.gc
  %i.ze = load ptr, ptr %2, align 8, !tbaa !467
  %i.zf = add i64 %i.zc, 1
  store i64 %i.zf, ptr %i.w, align 8, !tbaa !466
  %i.zg = getelementptr inbounds nuw i8, ptr %i.ze, i64 %i.zc
  store i8 -53, ptr %i.zg, align 1, !tbaa !218
  br label %dbuf_putc.exit388

dbuf_putc.exit388:                                ; preds = %bb.gd, %bb.ge
  %i.zh = load i64, ptr %i.v, align 8, !tbaa !465
  %i.zi = load i64, ptr %i.w, align 8, !tbaa !466 ; 2 uses
  %i.zj = sub i64 %i.zh, %i.zi
  %i.zk = icmp ult i64 %i.zj, 4
  br i1 %i.zk, label %bb.gf, label %bb.gg, !prof !192

bb.gf:                                            ; preds = %dbuf_putc.exit388
  %i.zl = call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %2, i32 noundef %.2510) ; 0 uses
  %.pre743 = load i64, ptr %i.w, align 8, !tbaa !466
  br label %dbuf_put_u32.exit390

bb.gg:                                            ; preds = %dbuf_putc.exit388
  %i.zm = load ptr, ptr %2, align 8, !tbaa !467
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 %i.zi
  store i32 %.2510, ptr %i.zn, align 1
  %i.zo = load i64, ptr %i.w, align 8, !tbaa !466
  %i.zp = add i64 %i.zo, 4                        ; 2 uses
  store i64 %i.zp, ptr %i.w, align 8, !tbaa !466
  br label %dbuf_put_u32.exit390

dbuf_put_u32.exit390:                             ; preds = %bb.gf, %bb.gg
  %i.zq = phi i64 [ %.pre743, %bb.gf ], [ %i.zp, %bb.gg ] ; 2 uses
  %i.zr = load i64, ptr %i.v, align 8, !tbaa !465
  %i.zs = sub i64 %i.zr, %i.zq
  %i.zt = icmp ult i64 %i.zs, 4
  br i1 %i.zt, label %bb.gh, label %bb.gi, !prof !192

bb.gh:                                            ; preds = %dbuf_put_u32.exit390
  %i.zu = call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %2, i32 noundef %.2507) ; 0 uses
  br label %dbuf_put_u16.exit364

bb.gi:                                            ; preds = %dbuf_put_u32.exit390
  %i.zv = load ptr, ptr %2, align 8, !tbaa !467
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 %i.zq
  store i32 %.2507, ptr %i.zw, align 1
  %i.zx = load i64, ptr %i.w, align 8, !tbaa !466
  %i.zy = add i64 %i.zx, 4
  store i64 %i.zy, ptr %i.w, align 8, !tbaa !466
  br label %dbuf_put_u16.exit364

bb.gj:                                            ; preds = %bb.z
  %i.zz = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  %.val327 = load i32, ptr %i.zz, align 1
  %i.aaa = load ptr, ptr %i.ac, align 8, !tbaa !733
  %i.aab = sext i32 %.val327 to i64
  %i.aac = getelementptr inbounds [24 x i8], ptr %i.aaa, i64 %i.aab
  %i.aad = load i64, ptr %i.w, align 8, !tbaa !466
  %4 = zext i8 %i.fc to i64
  %5 = add i64 %i.aad, %4
  %6 = trunc i64 %5 to i32
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  store i32 %6, ptr %i.aae, align 8, !tbaa !934
  br label %dbuf_put_u32.exit472

bb.gk:                                            ; preds = %bb.z
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  %.val337 = load i16, ptr %i.aaf, align 1        ; 2 uses
  %i.aag = zext i16 %.val337 to i32               ; 2 uses
  %i.aah = load i32, ptr %i.ak, align 8, !tbaa !718
  %i.aai = icmp eq i32 %i.aah, %i.aag
  br i1 %i.aai, label %bb.gl, label %instantiate_hoisted_definitions.exit

bb.gl:                                            ; preds = %bb.gk
  %i.aaj = load i32, ptr %i.al, align 4, !tbaa !877
  %i.aak = icmp sgt i32 %i.aaj, 0
  br i1 %i.aak, label %.lr.ph.i398, label %.preheader.i

.preheader.i:                                     ; preds = %dbuf_put_u16.exit.i, %bb.gl
  %i.aal = load i32, ptr %i.an, align 4, !tbaa !874
  %i.aam = icmp sgt i32 %i.aal, 0
  br i1 %i.aam, label %.lr.ph243.i, label %._crit_edge.i

.lr.ph.i398:                                      ; preds = %bb.gl, %dbuf_put_u16.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %dbuf_put_u16.exit.i ], [ 0, %bb.gl ] ; 3 uses
  %i.aan = load ptr, ptr %i.am, align 8, !tbaa !878
  %i.aao = getelementptr inbounds nuw [20 x i8], ptr %i.aan, i64 %indvars.iv.i
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 16 ; 2 uses
  %i.aaq = load i32, ptr %i.aap, align 4, !tbaa !905
  %i.aar = icmp sgt i32 %i.aaq, -1
  br i1 %i.aar, label %bb.gm, label %dbuf_put_u16.exit.i

bb.gm:                                            ; preds = %.lr.ph.i398
  %i.aas = load i64, ptr %i.v, align 8, !tbaa !465
  %i.aat = load i64, ptr %i.w, align 8, !tbaa !466 ; 3 uses
  %i.aau = icmp eq i64 %i.aas, %i.aat
  br i1 %i.aau, label %bb.gn, label %bb.go, !prof !192

bb.gn:                                            ; preds = %bb.gm
  call fastcc void @__dbuf_putc(ptr noundef nonnull %2, i8 noundef zeroext 3)
  br label %dbuf_putc.exit.i399

bb.go:                                            ; preds = %bb.gm
  %i.aav = load ptr, ptr %2, align 8, !tbaa !467
  %i.aaw = add i64 %i.aat, 1
  store i64 %i.aaw, ptr %i.w, align 8, !tbaa !466
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aav, i64 %i.aat
  store i8 3, ptr %i.aax, align 1, !tbaa !218
  br label %dbuf_putc.exit.i399

dbuf_putc.exit.i399:                              ; preds = %bb.go, %bb.gn
  %i.aay = load i32, ptr %i.aap, align 4, !tbaa !905 ; 2 uses
  %i.aaz = load i64, ptr %i.v, align 8, !tbaa !465
  %i.aba = load i64, ptr %i.w, align 8, !tbaa !466 ; 2 uses
  %i.abb = sub i64 %i.aaz, %i.aba
  %i.abc = icmp ult i64 %i.abb, 4
  br i1 %i.abc, label %bb.gp, label %bb.gq, !prof !192

bb.gp:                                            ; preds = %dbuf_putc.exit.i399
  %i.abd = call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %2, i32 noundef %i.aay) ; 0 uses
  %.pre.i401 = load i64, ptr %i.w, align 8, !tbaa !466
  br label %dbuf_put_u32.exit.i400

bb.gq:                                            ; preds = %dbuf_putc.exit.i399
  %i.abe = load ptr, ptr %2, align 8, !tbaa !467
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 %i.aba
  store i32 %i.aay, ptr %i.abf, align 1
  %i.abg = load i64, ptr %i.w, align 8, !tbaa !466
  %i.abh = add i64 %i.abg, 4                      ; 2 uses
  store i64 %i.abh, ptr %i.w, align 8, !tbaa !466
  br label %dbuf_put_u32.exit.i400

dbuf_put_u32.exit.i400:                           ; preds = %bb.gq, %bb.gp
  %i.abi = phi i64 [ %.pre.i401, %bb.gp ], [ %i.abh, %bb.gq ] ; 3 uses
  %i.abj = load i64, ptr %i.v, align 8, !tbaa !465
  %i.abk = icmp eq i64 %i.abj, %i.abi
  br i1 %i.abk, label %bb.gr, label %bb.gs, !prof !192

bb.gr:                                            ; preds = %dbuf_put_u32.exit.i400
  call fastcc void @__dbuf_putc(ptr noundef nonnull %2, i8 noundef zeroext 91)
  br label %dbuf_putc.exit143.i

bb.gs:                                            ; preds = %dbuf_put_u32.exit.i400
  %i.abl = load ptr, ptr %2, align 8, !tbaa !467
  %i.abm = add i64 %i.abi, 1
  store i64 %i.abm, ptr %i.w, align 8, !tbaa !466
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abl, i64 %i.abi
  store i8 91, ptr %i.abn, align 1, !tbaa !218
  br label %dbuf_putc.exit143.i

dbuf_putc.exit143.i:                              ; preds = %bb.gs, %bb.gr
  %i.abo = trunc i64 %indvars.iv.i to i16         ; 2 uses
  %i.abp = load i64, ptr %i.v, align 8, !tbaa !465
  %i.abq = load i64, ptr %i.w, align 8, !tbaa !466 ; 2 uses
  %i.abr = sub i64 %i.abp, %i.abq
  %i.abs = icmp ult i64 %i.abr, 2
  br i1 %i.abs, label %bb.gt, label %bb.gu, !prof !192

bb.gt:                                            ; preds = %dbuf_putc.exit143.i
  %i.abt = call fastcc i32 @__dbuf_put_u16(ptr noundef nonnull %2, i16 noundef zeroext %i.abo) ; 0 uses
  br label %dbuf_put_u16.exit.i

bb.gu:                                            ; preds = %dbuf_putc.exit143.i
  %i.abu = load ptr, ptr %2, align 8, !tbaa !467
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 %i.abq
  store i16 %i.abo, ptr %i.abv, align 1
  %i.abw = load i64, ptr %i.w, align 8, !tbaa !466
  %i.abx = add i64 %i.abw, 2
  store i64 %i.abx, ptr %i.w, align 8, !tbaa !466
  br label %dbuf_put_u16.exit.i

dbuf_put_u16.exit.i:                              ; preds = %bb.gu, %bb.gt, %.lr.ph.i398
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aby = load i32, ptr %i.al, align 4, !tbaa !877
  %i.abz = sext i32 %i.aby to i64
  %i.aca = icmp slt i64 %indvars.iv.next.i, %i.abz
  br i1 %i.aca, label %.lr.ph.i398, label %.preheader.i, !llvm.loop !2083

.lr.ph243.i:                                      ; preds = %.preheader.i, %dbuf_put_u16.exit152.i
  %indvars.iv255.i = phi i64 [ %indvars.iv.next256.i, %dbuf_put_u16.exit152.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.acb = load ptr, ptr %i.ag, align 8, !tbaa !875
  %i.acc = getelementptr inbounds nuw [20 x i8], ptr %i.acb, i64 %indvars.iv255.i ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.acc, i64 4
  %i.ace = load i32, ptr %i.acd, align 4, !tbaa !711
  %i.acf = icmp eq i32 %i.ace, 0
  br i1 %i.acf, label %bb.gv, label %dbuf_put_u16.exit152.i

bb.gv:                                            ; preds = %.lr.ph243.i
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acc, i64 16 ; 2 uses
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !905
  %i.aci = icmp sgt i32 %i.ach, -1
  br i1 %i.aci, label %bb.gw, label %dbuf_put_u16.exit152.i

bb.gw:                                            ; preds = %bb.gv
  %i.acj = load i64, ptr %i.v, align 8, !tbaa !465
  %i.ack = load i64, ptr %i.w, align 8, !tbaa !466 ; 3 uses
  %i.acl = icmp eq i64 %i.acj, %i.ack
  br i1 %i.acl, label %bb.gx, label %bb.gy, !prof !192

bb.gx:                                            ; preds = %bb.gw
  call fastcc void @__dbuf_putc(ptr noundef nonnull %2, i8 noundef zeroext 3)
  br label %dbuf_putc.exit146.i

bb.gy:                                            ; preds = %bb.gw
  %i.acm = load ptr, ptr %2, align 8, !tbaa !467
  %i.acn = add i64 %i.ack, 1
  store i64 %i.acn, ptr %i.w, align 8, !tbaa !466
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acm, i64 %i.ack
  store i8 3, ptr %i.aco, align 1, !tbaa !218
  br label %dbuf_putc.exit146.i

dbuf_putc.exit146.i:                              ; preds = %bb.gy, %bb.gx
  %i.acp = load i32, ptr %i.acg, align 4, !tbaa !905 ; 2 uses
  %i.acq = load i64, ptr %i.v, align 8, !tbaa !465
  %i.acr = load i64, ptr %i.w, align 8, !tbaa !466 ; 2 uses
  %i.acs = sub i64 %i.acq, %i.acr
  %i.act = icmp ult i64 %i.acs, 4
  br i1 %i.act, label %bb.gz, label %bb.ha, !prof !192

bb.gz:                                            ; preds = %dbuf_putc.exit146.i
  %i.acu = call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %2, i32 noundef %i.acp) ; 0 uses
  %.pre264.i = load i64, ptr %i.w, align 8, !tbaa !466
  br label %dbuf_put_u32.exit148.i

bb.ha:                                            ; preds = %dbuf_putc.exit146.i
  %i.acv = load ptr, ptr %2, align 8, !tbaa !467
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 %i.acr
  store i32 %i.acp, ptr %i.acw, align 1
  %i.acx = load i64, ptr %i.w, align 8, !tbaa !466
  %i.acy = add i64 %i.acx, 4                      ; 2 uses
  store i64 %i.acy, ptr %i.w, align 8, !tbaa !466
  br label %dbuf_put_u32.exit148.i

dbuf_put_u32.exit148.i:                           ; preds = %bb.ha, %bb.gz
  %i.acz = phi i64 [ %.pre264.i, %bb.gz ], [ %i.acy, %bb.ha ] ; 3 uses
  %i.ada = load i64, ptr %i.v, align 8, !tbaa !465
  %i.adb = icmp eq i64 %i.ada, %i.acz
  br i1 %i.adb, label %bb.hb, label %bb.hc, !prof !192

bb.hb:                                            ; preds = %dbuf_put_u32.exit148.i
  call fastcc void @__dbuf_putc(ptr noundef nonnull %2, i8 noundef zeroext 88)
  br label %dbuf_putc.exit150.i

bb.hc:                                            ; preds = %dbuf_put_u32.exit148.i
  %i.adc = load ptr, ptr %2, align 8, !tbaa !467
  %i.add = add i64 %i.acz, 1
  store i64 %i.add, ptr %i.w, align 8, !tbaa !466
  %i.ade = getelementptr inbounds nuw i8, ptr %i.adc, i64 %i.acz
  store i8 88, ptr %i.ade, align 1, !tbaa !218
  br label %dbuf_putc.exit150.i

dbuf_putc.exit150.i:                              ; preds = %bb.hc, %bb.hb
  %i.adf = trunc i64 %indvars.iv255.i to i16      ; 2 uses
  %i.adg = load i64, ptr %i.v, align 8, !tbaa !465
  %i.adh = load i64, ptr %i.w, align 8, !tbaa !466 ; 2 uses
  %i.adi = sub i64 %i.adg, %i.adh
  %i.adj = icmp ult i64 %i.adi, 2
  br i1 %i.adj, label %bb.hd, label %bb.he, !prof !192

bb.hd:                                            ; preds = %dbuf_putc.exit150.i
  %i.adk = call fastcc i32 @__dbuf_put_u16(ptr noundef nonnull %2, i16 noundef zeroext %i.adf) ; 0 uses
  br label %dbuf_put_u16.exit152.i

end_hunk_1
