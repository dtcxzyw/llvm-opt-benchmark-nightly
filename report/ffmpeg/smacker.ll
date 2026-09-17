Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/smacker?download=true
inline.NumInlined: 70
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@decode_frame:bb.a
  br i1 %i.i, label %smk_get_code.exit272.thread337, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !33   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47   ; 4 uses
  %i.m = load i32, ptr %i.c, align 8, !tbaa !46
  %i.n = icmp ne ptr %i.l, null
  %i.o = icmp sgt i32 %i.m, -1
  %or.cond.i = and i1 %i.n, %i.o
  br i1 %or.cond.i, label %bytestream2_init.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 141) #7
  tail call void @abort() #8
  unreachable

bytestream2_init.exit:                            ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.s = load i8, ptr %i.l, align 1, !tbaa !34
  %i.t = and i8 %i.s, 2                           ; 2 uses
  %.not = icmp eq i8 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 276 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !81
  %i.w = and i32 %i.v, -3
  %masksel = zext nneg i8 %i.t to i32
  %.sink668 = or disjoint i32 %i.w, %masksel
  %.sink = select i1 %.not, i32 2, i32 1
  store i32 %.sink668, ptr %i.u, align 4, !tbaa !81
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store i32 %.sink, ptr %i.x, align 8, !tbaa !82
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bytestream2_init.exit
  %.0191407 = phi i32 [ 0, %bytestream2_init.exit ], [ %i.bc, %bb.e ]
  %.0200406 = phi ptr [ %i.q, %bytestream2_init.exit ], [ %i.bb, %bb.e ] ; 3 uses
  %.sroa.0332.0405 = phi ptr [ %i.r, %bytestream2_init.exit ], [ %i.an, %bb.e ] ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0332.0405, i64 3
  %i.z = load i8, ptr %.sroa.0332.0405, align 1, !tbaa !34
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0332.0405, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !34
  %i.ae = zext i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0332.0405, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !34
  %i.ai = zext i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.ab, %i.af
  %i.ak = or disjoint i32 %i.aj, %i.ai
  %i.al = or disjoint i32 %i.ak, -16777216
  %i.am = getelementptr inbounds nuw i8, ptr %.0200406, i64 4
  store i32 %i.al, ptr %.0200406, align 4, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0332.0405, i64 6
  %i.ao = load i8, ptr %i.y, align 1, !tbaa !34
  %i.ap = zext i8 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0332.0405, i64 4
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !34
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw nsw i32 %i.at, 8
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0332.0405, i64 5
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !34
  %i.ax = zext i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.aq, %i.au
  %i.az = or disjoint i32 %i.ay, %i.ax
  %i.ba = or disjoint i32 %i.az, -16777216
  %i.bb = getelementptr inbounds nuw i8, ptr %.0200406, i64 8
  store i32 %i.ba, ptr %i.am, align 4, !tbaa !41
  %i.bc = add nuw nsw i32 %.0191407, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.bc, 256
  br i1 %exitcond.not.1, label %bb.f, label %bb.e, !llvm.loop !74

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !40 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !41
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bi
  store i32 0, ptr %i.bj, align 4, !tbaa !41
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !41
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bm
  store i32 0, ptr %i.bn, align 4, !tbaa !41
  %i.bo = load i32, ptr %i.bf, align 8, !tbaa !41
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bp
  store i32 0, ptr %i.bq, align 4, !tbaa !41
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !42 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !41
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bw
  store i32 0, ptr %i.bx, align 4, !tbaa !41
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !41
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.ca
  store i32 0, ptr %i.cb, align 4, !tbaa !41
  %i.cc = load i32, ptr %i.bt, align 4, !tbaa !41
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.cd
  store i32 0, ptr %i.ce, align 4, !tbaa !41
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 7 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !43 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 25 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 9 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !41
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.ck
  store i32 0, ptr %i.cl, align 4, !tbaa !41
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 17 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !41
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.co
  store i32 0, ptr %i.cp, align 4, !tbaa !41
  %i.cq = load i32, ptr %i.ch, align 8, !tbaa !41
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cr
  store i32 0, ptr %i.cs, align 4, !tbaa !41
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !44 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 92 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !41
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cy
  store i32 0, ptr %i.cz, align 4, !tbaa !41
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 3 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !41
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.dc
  store i32 0, ptr %i.dd, align 4, !tbaa !41
  %i.de = load i32, ptr %i.cv, align 4, !tbaa !41
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.df
  store i32 0, ptr %i.dg, align 4, !tbaa !41
  %i.dh = getelementptr inbounds nuw i8, ptr %i.l, i64 769 ; 13 uses
  %i.di = load i32, ptr %i.c, align 8, !tbaa !46
  %i.dj = add nsw i32 %i.di, -769                 ; 2 uses
  %or.cond.i292 = icmp ugt i32 %i.dj, 268435455
  %i.dk = shl nuw nsw i32 %i.dj, 3
  %i.dl = select i1 %or.cond.i292, i32 -8, i32 %i.dk ; 2 uses
  %or.cond.i.i = icmp ugt i32 %i.dl, 2147483134   ; 2 uses
  %.013.i.i = select i1 %or.cond.i.i, i32 0, i32 %i.dl ; 23 uses
  br i1 %or.cond.i.i, label %smk_get_code.exit272.thread337, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !83
  %i.do = ashr i32 %i.dn, 2                       ; 13 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !84
  %i.dr = ashr i32 %i.dq, 2
  %i.ds = mul nsw i32 %i.dr, %i.do                ; 12 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %.lr.ph505, label %._crit_edge506

.lr.ph505:                                        ; preds = %bb.g
  %i.du = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !41 ; 2 uses
  %i.dw = shl nsw i32 %i.dv, 2                    ; 6 uses
  %i.dx = sext i32 %i.dv to i64                   ; 13 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph505, %smk_get_code.exit272
  %.0195503 = phi i32 [ 0, %.lr.ph505 ], [ %.6, %smk_get_code.exit272 ] ; 25 uses
  %.sroa.14.0502 = phi i32 [ 0, %.lr.ph505 ], [ %.sroa.14.7, %smk_get_code.exit272 ] ; 4 uses
  %i.dz = load ptr, ptr %i.ct, align 8, !tbaa !44 ; 8 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !41 ; 3 uses
  %.not.i267408 = icmp sgt i32 %i.ea, -1
  br i1 %.not.i267408, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %smax = tail call i32 @llvm.smax.i32(i32 %.013.i.i, i32 %.sroa.14.0502)
  %exitcond544.not695.not = icmp slt i32 %.sroa.14.0502, %.013.i.i
  br i1 %exitcond544.not695.not, label %.lr.ph698, label %smk_get_code.exit272.thread337

.lr.ph:                                           ; preds = %.lr.ph698
  %exitcond544.not = icmp eq i32 %i.ei, %smax
  br i1 %exitcond544.not, label %smk_get_code.exit272.thread337, label %.lr.ph698, !llvm.loop !75

.lr.ph698:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.14.16409697 = phi i32 [ %i.ei, %.lr.ph ], [ %.sroa.14.0502, %.lr.ph.preheader ] ; 3 uses
  %.0.i266410696 = phi ptr [ %i.em, %.lr.ph ], [ %i.dz, %.lr.ph.preheader ]
  %i.eb = phi i32 [ %i.en, %.lr.ph ], [ %i.ea, %.lr.ph.preheader ]
  %i.ec = lshr i32 %.sroa.14.16409697, 3
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !34
  %i.eg = and i32 %.sroa.14.16409697, 7
  %i.eh = zext i8 %i.ef to i32
  %i.ei = add i32 %.sroa.14.16409697, 1           ; 3 uses
  %i.ej = shl nuw nsw i32 1, %i.eg
  %i.ek = and i32 %i.ej, %i.eh
  %.not26.i268 = icmp eq i32 %i.ek, 0
  %i.el = and i32 %i.eb, 2147483647
  %narrow = select i1 %.not26.i268, i32 0, i32 %i.el
  %.1.i269.idx = zext nneg i32 %narrow to i64
  %.1.i269 = getelementptr inbounds nuw [4 x i8], ptr %.0.i266410696, i64 %.1.i269.idx
  %i.em = getelementptr inbounds nuw i8, ptr %.1.i269, i64 4 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !41 ; 3 uses
  %.not.i267 = icmp sgt i32 %i.en, -1
  br i1 %.not.i267, label %._crit_edge, label %.lr.ph, !llvm.loop !75

._crit_edge:                                      ; preds = %.lr.ph698, %bb.h
  %.sroa.14.16.lcssa = phi i32 [ %.sroa.14.0502, %bb.h ], [ %i.ei, %.lr.ph698 ] ; 12 uses
  %.lcssa = phi i32 [ %i.ea, %bb.h ], [ %i.en, %.lr.ph698 ] ; 5 uses
  %i.eo = load i32, ptr %i.cv, align 4, !tbaa !41
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !41
  %.not25.i271 = icmp eq i32 %.lcssa, %i.er
  br i1 %.not25.i271, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.es = load i32, ptr %i.da, align 8, !tbaa !41
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !41
  %i.ew = load i32, ptr %i.cw, align 4, !tbaa !41
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.ex
  store i32 %i.ev, ptr %i.ey, align 4, !tbaa !41
  %i.ez = load i32, ptr %i.cv, align 4, !tbaa !41
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !41
  %i.fd = load i32, ptr %i.da, align 8, !tbaa !41
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.fe
  store i32 %i.fc, ptr %i.ff, align 4, !tbaa !41
  %i.fg = load i32, ptr %i.cv, align 4, !tbaa !41
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.fh
  store i32 %.lcssa, ptr %i.fi, align 4, !tbaa !41
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %i.fj = lshr i32 %.lcssa, 2
  %i.fk = and i32 %i.fj, 63
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr @block_runs, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !41 ; 6 uses
  %i.fo = and i32 %.lcssa, 3
  switch i32 %i.fo, label %default.unreachable [
    i32 0, label %.preheader362
    i32 1, label %bb.m
    i32 2, label %.preheader364
    i32 3, label %bb.ab
  ]

.preheader364:                                    ; preds = %bb.j
  %i.fp = icmp slt i32 %.0195503, %i.ds
  br i1 %i.fp, label %.lr.ph420.preheader, label %smk_get_code.exit272

.lr.ph420.preheader:                              ; preds = %.preheader364
  %i.fq = add nsw i32 %.0195503, 1
  %i.fr = xor i32 %.0195503, -1
  %i.fs = add i32 %i.ds, %i.fr
  %i.ft = add i32 %i.fn, -1
  %umin = tail call i32 @llvm.umin.i32(i32 %i.fs, i32 %i.ft)
  %i.fu = add i32 %i.fq, %umin
  br label %smk_get_code.exit272

.preheader362:                                    ; preds = %bb.j
  %i.fv = icmp slt i32 %.0195503, %i.ds
  br i1 %i.fv, label %.lr.ph499, label %smk_get_code.exit272

.lr.ph499:                                        ; preds = %.preheader362, %smk_get_code.exit258
  %.in508 = phi i32 [ %i.fw, %smk_get_code.exit258 ], [ %i.fn, %.preheader362 ]
  %.1196498 = phi i32 [ %i.kr, %smk_get_code.exit258 ], [ %.0195503, %.preheader362 ] ; 3 uses
  %.sroa.14.1497 = phi i32 [ %.sroa.14.14404, %smk_get_code.exit258 ], [ %.sroa.14.16.lcssa, %.preheader362 ] ; 4 uses
  %i.fw = add nsw i32 %.in508, -1                 ; 2 uses
  %i.fx = load ptr, ptr %i.br, align 8, !tbaa !42 ; 8 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !41 ; 3 uses
  %.not.i260479 = icmp sgt i32 %i.fy, -1
  br i1 %.not.i260479, label %._crit_edge484, label %.lr.ph483.preheader

.lr.ph483.preheader:                              ; preds = %.lr.ph499
  %smax559 = tail call i32 @llvm.smax.i32(i32 %.013.i.i, i32 %.sroa.14.1497) ; 3 uses
  %exitcond560.not731.not = icmp slt i32 %.sroa.14.1497, %.013.i.i
  br i1 %exitcond560.not731.not, label %.lr.ph734, label %smk_get_code.exit265

.lr.ph483:                                        ; preds = %.lr.ph734
  %exitcond560.not = icmp eq i32 %i.gg, %smax559
  br i1 %exitcond560.not, label %smk_get_code.exit265, label %.lr.ph734, !llvm.loop !75

.lr.ph734:                                        ; preds = %.lr.ph483.preheader, %.lr.ph483
  %.sroa.14.15480733 = phi i32 [ %i.gg, %.lr.ph483 ], [ %.sroa.14.1497, %.lr.ph483.preheader ] ; 3 uses
  %.0.i259481732 = phi ptr [ %i.gk, %.lr.ph483 ], [ %i.fx, %.lr.ph483.preheader ]
  %i.fz = phi i32 [ %i.gl, %.lr.ph483 ], [ %i.fy, %.lr.ph483.preheader ]
  %i.ga = lshr i32 %.sroa.14.15480733, 3
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !34
  %i.ge = and i32 %.sroa.14.15480733, 7
  %i.gf = zext i8 %i.gd to i32
  %i.gg = add i32 %.sroa.14.15480733, 1           ; 3 uses
  %i.gh = shl nuw nsw i32 1, %i.ge
  %i.gi = and i32 %i.gh, %i.gf
  %.not26.i261 = icmp eq i32 %i.gi, 0
  %i.gj = and i32 %i.fz, 2147483647
  %narrow357 = select i1 %.not26.i261, i32 0, i32 %i.gj
  %.1.i262.idx = zext nneg i32 %narrow357 to i64
  %.1.i262 = getelementptr inbounds nuw [4 x i8], ptr %.0.i259481732, i64 %.1.i262.idx
  %i.gk = getelementptr inbounds nuw i8, ptr %.1.i262, i64 4 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !41 ; 3 uses
  %.not.i260 = icmp sgt i32 %i.gl, -1
  br i1 %.not.i260, label %._crit_edge484, label %.lr.ph483, !llvm.loop !75

._crit_edge484:                                   ; preds = %.lr.ph734, %.lr.ph499
  %.sroa.14.15.lcssa = phi i32 [ %.sroa.14.1497, %.lr.ph499 ], [ %i.gg, %.lr.ph734 ] ; 2 uses
  %.lcssa397 = phi i32 [ %i.fy, %.lr.ph499 ], [ %i.gl, %.lr.ph734 ] ; 4 uses
  %i.gm = load i32, ptr %i.bt, align 4, !tbaa !41
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !41
  %.not25.i264 = icmp eq i32 %.lcssa397, %i.gp
  br i1 %.not25.i264, label %smk_get_code.exit265, label %bb.k

bb.k:                                             ; preds = %._crit_edge484
  %i.gq = load i32, ptr %i.by, align 8, !tbaa !41
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.gr
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !41
  %i.gu = load i32, ptr %i.bu, align 4, !tbaa !41
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.gv
  store i32 %i.gt, ptr %i.gw, align 4, !tbaa !41
  %i.gx = load i32, ptr %i.bt, align 4, !tbaa !41
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.gy
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !41
  %i.hb = load i32, ptr %i.by, align 8, !tbaa !41
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.hc
  store i32 %i.ha, ptr %i.hd, align 4, !tbaa !41
  %i.he = load i32, ptr %i.bt, align 4, !tbaa !41
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.hf
  store i32 %.lcssa397, ptr %i.hg, align 4, !tbaa !41
  br label %smk_get_code.exit265

smk_get_code.exit265:                             ; preds = %.lr.ph483, %.lr.ph483.preheader, %._crit_edge484, %bb.k
  %.sroa.14.15400 = phi i32 [ %.sroa.14.15.lcssa, %._crit_edge484 ], [ %.sroa.14.15.lcssa, %bb.k ], [ %smax559, %.lr.ph483.preheader ], [ %smax559, %.lr.ph483 ] ; 4 uses
  %.023.i263 = phi i32 [ %.lcssa397, %._crit_edge484 ], [ %.lcssa397, %bb.k ], [ -1094995529, %.lr.ph483.preheader ], [ -1094995529, %.lr.ph483 ] ; 6 uses
  %i.hh = load ptr, ptr %i.bd, align 8, !tbaa !40 ; 8 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !41 ; 3 uses
  %.not.i253487 = icmp sgt i32 %i.hi, -1
  br i1 %.not.i253487, label %._crit_edge491, label %.lr.ph490.preheader

.lr.ph490.preheader:                              ; preds = %smk_get_code.exit265
  %smax561 = tail call i32 @llvm.smax.i32(i32 %.013.i.i, i32 %.sroa.14.15400) ; 3 uses
  %exitcond562.not735.not = icmp slt i32 %.sroa.14.15400, %.013.i.i
  br i1 %exitcond562.not735.not, label %.lr.ph738, label %smk_get_code.exit258

.lr.ph490:                                        ; preds = %.lr.ph738
  %exitcond562.not = icmp eq i32 %i.hq, %smax561
  br i1 %exitcond562.not, label %smk_get_code.exit258, label %.lr.ph738, !llvm.loop !75

.lr.ph738:                                        ; preds = %.lr.ph490.preheader, %.lr.ph490
  %.sroa.14.14488737 = phi i32 [ %i.hq, %.lr.ph490 ], [ %.sroa.14.15400, %.lr.ph490.preheader ] ; 3 uses
  %.0.i252489736 = phi ptr [ %i.hu, %.lr.ph490 ], [ %i.hh, %.lr.ph490.preheader ]
  %i.hj = phi i32 [ %i.hv, %.lr.ph490 ], [ %i.hi, %.lr.ph490.preheader ]
  %i.hk = lshr i32 %.sroa.14.14488737, 3
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !34
  %i.ho = and i32 %.sroa.14.14488737, 7
  %i.hp = zext i8 %i.hn to i32
  %i.hq = add i32 %.sroa.14.14488737, 1           ; 3 uses
  %i.hr = shl nuw nsw i32 1, %i.ho
  %i.hs = and i32 %i.hr, %i.hp
  %.not26.i254 = icmp eq i32 %i.hs, 0
  %i.ht = and i32 %i.hj, 2147483647
  %narrow359 = select i1 %.not26.i254, i32 0, i32 %i.ht
  %.1.i255.idx = zext nneg i32 %narrow359 to i64
  %.1.i255 = getelementptr inbounds nuw [4 x i8], ptr %.0.i252489736, i64 %.1.i255.idx
  %i.hu = getelementptr inbounds nuw i8, ptr %.1.i255, i64 4 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !41 ; 3 uses
  %.not.i253 = icmp sgt i32 %i.hv, -1
  br i1 %.not.i253, label %._crit_edge491, label %.lr.ph490, !llvm.loop !75

._crit_edge491:                                   ; preds = %.lr.ph738, %smk_get_code.exit265
  %.sroa.14.14.lcssa = phi i32 [ %.sroa.14.15400, %smk_get_code.exit265 ], [ %i.hq, %.lr.ph738 ] ; 2 uses
  %.lcssa401 = phi i32 [ %i.hi, %smk_get_code.exit265 ], [ %i.hv, %.lr.ph738 ] ; 4 uses
  %i.hw = load i32, ptr %i.bf, align 8, !tbaa !41
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !41
  %.not25.i257 = icmp eq i32 %.lcssa401, %i.hz
  br i1 %.not25.i257, label %smk_get_code.exit258, label %bb.l

bb.l:                                             ; preds = %._crit_edge491
  %i.ia = load i32, ptr %i.bk, align 4, !tbaa !41
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !41
  %i.ie = load i32, ptr %i.bg, align 8, !tbaa !41
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.if
  store i32 %i.id, ptr %i.ig, align 4, !tbaa !41
  %i.ih = load i32, ptr %i.bf, align 8, !tbaa !41
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.ii
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !41
  %i.il = load i32, ptr %i.bk, align 4, !tbaa !41
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.im
  store i32 %i.ik, ptr %i.in, align 4, !tbaa !41
  %i.io = load i32, ptr %i.bf, align 8, !tbaa !41
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.ip
  store i32 %.lcssa401, ptr %i.iq, align 4, !tbaa !41
  br label %smk_get_code.exit258

smk_get_code.exit258:                             ; preds = %.lr.ph490, %.lr.ph490.preheader, %._crit_edge491, %bb.l
  %.sroa.14.14404 = phi i32 [ %.sroa.14.14.lcssa, %._crit_edge491 ], [ %.sroa.14.14.lcssa, %bb.l ], [ %smax561, %.lr.ph490.preheader ], [ %smax561, %.lr.ph490 ] ; 2 uses
  %.023.i256 = phi i32 [ %.lcssa401, %._crit_edge491 ], [ %.lcssa401, %bb.l ], [ -1094995529, %.lr.ph490.preheader ], [ -1094995529, %.lr.ph490 ] ; 5 uses
  %i.ir = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !48
  %i.it = sdiv i32 %.1196498, %i.do
  %i.iu = mul nsw i32 %i.dw, %i.it
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds i8, ptr %i.is, i64 %i.iv
  %i.ix = srem i32 %.1196498, %i.do
  %i.iy = shl nsw i32 %i.ix, 2
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds i8, ptr %i.iw, i64 %i.iz ; 5 uses
  %i.jb = lshr i32 %.023.i263, 8
  %i.jc = trunc i32 %i.jb to i8                   ; 12 uses
  %i.jd = trunc i32 %.023.i263 to i8              ; 12 uses
  %i.je = shl i32 %.023.i256, 3
  %i.jf = and i32 %i.je, 8
  %. = ashr i32 %.023.i263, %i.jf
  %storemerge = trunc i32 %. to i8
  store i8 %storemerge, ptr %i.ja, align 1, !tbaa !34
  %i.jg = insertelement <12 x i32> poison, i32 %.023.i256, i64 0
  %i.jh = shufflevector <12 x i32> %i.jg, <12 x i32> poison, <12 x i32> zeroinitializer
  %i.ji = and <12 x i32> %i.jh, <i32 32768, i32 16384, i32 8192, i32 2048, i32 1024, i32 512, i32 128, i32 64, i32 32, i32 8, i32 4, i32 2>
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ja, i64 1
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ja, i64 2
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ja, i64 3
  %i.jm = getelementptr inbounds i8, ptr %i.ja, i64 %i.dx ; 5 uses
  %i.jn = lshr i32 %.023.i256, 1
  %i.jo = and i32 %i.jn, 8
  %..1 = ashr i32 %.023.i263, %i.jo
  %storemerge.1 = trunc i32 %..1 to i8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 1
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 2
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jm, i64 3
  %i.js = getelementptr inbounds i8, ptr %i.jm, i64 %i.dx ; 5 uses
  %i.jt = lshr i32 %.023.i256, 5
  %i.ju = and i32 %i.jt, 8
  %..2 = ashr i32 %.023.i263, %i.ju
  %storemerge.2 = trunc i32 %..2 to i8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 1
  %i.jw = getelementptr inbounds nuw i8, ptr %i.js, i64 2
  %i.jx = getelementptr inbounds nuw i8, ptr %i.js, i64 3
  %i.jy = getelementptr inbounds i8, ptr %i.js, i64 %i.dx ; 4 uses
  %i.jz = lshr i32 %.023.i256, 9
  %i.ka = and i32 %i.jz, 8
  %..3 = ashr i32 %.023.i263, %i.ka
  %storemerge.3 = trunc i32 %..3 to i8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 1
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jy, i64 2
  %i.kd = icmp eq <12 x i32> %i.ji, zeroinitializer ; 12 uses
  %i.ke = extractelement <12 x i1> %i.kd, i64 11
  %spec.select = select i1 %i.ke, i8 %i.jd, i8 %i.jc
  store i8 %spec.select, ptr %i.jj, align 1, !tbaa !34
  %i.kf = extractelement <12 x i1> %i.kd, i64 10
  %.sink565 = select i1 %i.kf, i8 %i.jd, i8 %i.jc
  store i8 %.sink565, ptr %i.jk, align 1, !tbaa !34
  %i.kg = extractelement <12 x i1> %i.kd, i64 9
  %.sink566 = select i1 %i.kg, i8 %i.jd, i8 %i.jc
  store i8 %.sink566, ptr %i.jl, align 1, !tbaa !34
  store i8 %storemerge.1, ptr %i.jm, align 1, !tbaa !34
  %i.kh = extractelement <12 x i1> %i.kd, i64 8
  %.sink567 = select i1 %i.kh, i8 %i.jd, i8 %i.jc
  store i8 %.sink567, ptr %i.jp, align 1, !tbaa !34
  %i.ki = extractelement <12 x i1> %i.kd, i64 7
  %.sink568 = select i1 %i.ki, i8 %i.jd, i8 %i.jc
  store i8 %.sink568, ptr %i.jq, align 1, !tbaa !34
  %i.kj = extractelement <12 x i1> %i.kd, i64 6
  %.sink569 = select i1 %i.kj, i8 %i.jd, i8 %i.jc
  store i8 %.sink569, ptr %i.jr, align 1, !tbaa !34
  store i8 %storemerge.2, ptr %i.js, align 1, !tbaa !34
  %i.kk = extractelement <12 x i1> %i.kd, i64 5
  %.sink570 = select i1 %i.kk, i8 %i.jd, i8 %i.jc
  store i8 %.sink570, ptr %i.jv, align 1, !tbaa !34
  %i.kl = extractelement <12 x i1> %i.kd, i64 4
  %.sink571 = select i1 %i.kl, i8 %i.jd, i8 %i.jc
  store i8 %.sink571, ptr %i.jw, align 1, !tbaa !34
  %i.km = extractelement <12 x i1> %i.kd, i64 3
  %.sink572 = select i1 %i.km, i8 %i.jd, i8 %i.jc
  store i8 %.sink572, ptr %i.jx, align 1, !tbaa !34
  store i8 %storemerge.3, ptr %i.jy, align 1, !tbaa !34
  %i.kn = extractelement <12 x i1> %i.kd, i64 2
  %.sink573 = select i1 %i.kn, i8 %i.jd, i8 %i.jc
  store i8 %.sink573, ptr %i.kb, align 1, !tbaa !34
  %i.ko = extractelement <12 x i1> %i.kd, i64 1
  %.sink574 = select i1 %i.ko, i8 %i.jd, i8 %i.jc
  store i8 %.sink574, ptr %i.kc, align 1, !tbaa !34
  %i.kp = extractelement <12 x i1> %i.kd, i64 0
  %.sink575 = select i1 %i.kp, i8 %i.jd, i8 %i.jc
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jy, i64 3
  store i8 %.sink575, ptr %i.kq, align 1, !tbaa !34
  %i.kr = add nsw i32 %.1196498, 1                ; 3 uses
  %i.ks = icmp ne i32 %i.fw, 0
  %i.kt = icmp slt i32 %i.kr, %i.ds
  %i.ku = select i1 %i.ks, i1 %i.kt, i1 false
  br i1 %i.ku, label %.lr.ph499, label %smk_get_code.exit272, !llvm.loop !76

bb.m:                                             ; preds = %bb.j
  %i.kv = load i32, ptr %i.dy, align 4, !tbaa !85
  %i.kw = icmp eq i32 %i.kv, 877350227
  br i1 %i.kw, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %.not343 = icmp sgt i32 %.013.i.i, %.sroa.14.16.lcssa
  br i1 %.not343, label %bb.o, label %smk_get_code.exit272.thread337

bb.o:                                             ; preds = %bb.n
  %i.kx = lshr i32 %.sroa.14.16.lcssa, 3
  %i.ky = zext nneg i32 %i.kx to i64
  %i.kz = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.ky
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !34
  %i.lb = and i32 %.sroa.14.16.lcssa, 7
  %i.lc = zext i8 %i.la to i32
  %i.ld = add nsw i32 %.sroa.14.16.lcssa, 1       ; 4 uses
  %i.le = shl nuw nsw i32 1, %i.lb
  %i.lf = and i32 %i.le, %i.lc
  %.not211 = icmp eq i32 %i.lf, 0
  br i1 %.not211, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.lg = lshr i32 %i.ld, 3
  %i.lh = zext nneg i32 %i.lg to i64
  %i.li = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.lh
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !34
  %i.lk = and i32 %i.ld, 7
  %i.ll = zext i8 %i.lj to i32
  %i.lm = add i32 %.sroa.14.16.lcssa, 2           ; 3 uses
  %i.ln = shl nuw nsw i32 1, %i.lk
  %i.lo = and i32 %i.ln, %i.ll
  %.not212 = icmp eq i32 %i.lo, 0
  br i1 %.not212, label %bb.r, label %spec.select.si.unfold.false.jt2

spec.select.si.unfold.false.jt2:                  ; preds = %bb.p
  %i.lp = icmp slt i32 %.0195503, %i.ds
  br i1 %i.lp, label %.lr.ph476.split.jt2, label %smk_get_code.exit272

bb.q:                                             ; preds = %bb.o
  %i.lq = icmp slt i32 %.0195503, %i.ds
  br i1 %i.lq, label %.lr.ph476.split.jt1, label %smk_get_code.exit272

bb.r:                                             ; preds = %bb.m, %bb.p
  %.sroa.14.2.jt0 = phi i32 [ %i.lm, %bb.p ], [ %.sroa.14.16.lcssa, %bb.m ] ; 2 uses
  %i.lr = icmp slt i32 %.0195503, %i.ds
  br i1 %i.lr, label %.lr.ph476.split.jt0, label %smk_get_code.exit272

.lr.ph476.split:                                  ; preds = %.loopexit
  %i.ls = add nsw i32 %i.zz, -1                   ; 3 uses
  %i.lt = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !48
  %i.lv = sdiv i32 %i.aaa, %i.do
  %i.lw = mul nsw i32 %i.dw, %i.lv
  %i.lx = sext i32 %i.lw to i64
  %i.ly = getelementptr inbounds i8, ptr %i.lu, i64 %i.lx
  %i.lz = srem i32 %i.aaa, %i.do
  %i.ma = shl nsw i32 %i.lz, 2
  %i.mb = sext i32 %i.ma to i64
  %i.mc = getelementptr inbounds i8, ptr %i.ly, i64 %i.mb ; 3 uses
  switch i32 %.0186633, label %.preheader360.preheader [
    i32 0, label %.preheader.preheader
    i32 1, label %bb.u
  ]

.lr.ph476.split.jt2:                              ; preds = %spec.select.si.unfold.false.jt2
  %i.md = add nsw i32 %i.fn, -1
  %i.me = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !48
  %i.mg = sdiv i32 %.0195503, %i.do
  %i.mh = mul nsw i32 %i.dw, %i.mg
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr inbounds i8, ptr %i.mf, i64 %i.mi
  %i.mk = srem i32 %.0195503, %i.do
  %i.ml = shl nsw i32 %i.mk, 2
  %i.mm = sext i32 %i.ml to i64
  %i.mn = getelementptr inbounds i8, ptr %i.mj, i64 %i.mm
  br label %.preheader360.preheader

.lr.ph476.split.jt1:                              ; preds = %bb.q
  %i.mo = add nsw i32 %i.fn, -1
  %i.mp = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !48
  %i.mr = sdiv i32 %.0195503, %i.do
  %i.ms = mul nsw i32 %i.dw, %i.mr
  %i.mt = sext i32 %i.ms to i64
  %i.mu = getelementptr inbounds i8, ptr %i.mq, i64 %i.mt
  %i.mv = srem i32 %.0195503, %i.do
  %i.mw = shl nsw i32 %i.mv, 2
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds i8, ptr %i.mu, i64 %i.mx
  br label %bb.u

.lr.ph476.split.jt0:                              ; preds = %bb.r
  %i.mz = add nsw i32 %i.fn, -1
  %i.na = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !48
  %i.nc = sdiv i32 %.0195503, %i.do
  %i.nd = mul nsw i32 %i.dw, %i.nc
  %i.ne = sext i32 %i.nd to i64
  %i.nf = getelementptr inbounds i8, ptr %i.nb, i64 %i.ne
  %i.ng = srem i32 %.0195503, %i.do
  %i.nh = shl nsw i32 %i.ng, 2
  %i.ni = sext i32 %i.nh to i64
  %i.nj = getelementptr inbounds i8, ptr %i.nf, i64 %i.ni
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph476.split.jt0, %.lr.ph476.split
  %i.nk = phi ptr [ %i.nj, %.lr.ph476.split.jt0 ], [ %i.mc, %.lr.ph476.split ]
  %i.nl = phi i32 [ %i.mz, %.lr.ph476.split.jt0 ], [ %i.ls, %.lr.ph476.split ]
  %.sroa.14.3473641 = phi i32 [ %.sroa.14.2.jt0, %.lr.ph476.split.jt0 ], [ %.sroa.14.6, %.lr.ph476.split ]
  %.2197474637 = phi i32 [ %.0195503, %.lr.ph476.split.jt0 ], [ %i.aaa, %.lr.ph476.split ]
  br label %.preheader

.preheader360.preheader:                          ; preds = %.lr.ph476.split.jt2, %.lr.ph476.split
  %i.nm = phi ptr [ %i.mn, %.lr.ph476.split.jt2 ], [ %i.mc, %.lr.ph476.split ] ; 3 uses
  %i.nn = phi i32 [ %i.md, %.lr.ph476.split.jt2 ], [ %i.ls, %.lr.ph476.split ]
  %.sroa.14.3473639 = phi i32 [ %i.lm, %.lr.ph476.split.jt2 ], [ %.sroa.14.6, %.lr.ph476.split ] ; 4 uses
  %.2197474635 = phi i32 [ %.0195503, %.lr.ph476.split.jt2 ], [ %i.aaa, %.lr.ph476.split ]
  %.0186631 = phi i32 [ 2, %.lr.ph476.split.jt2 ], [ %.0186633, %.lr.ph476.split ]
  %i.no = load ptr, ptr %i.cf, align 8, !tbaa !43 ; 16 uses
  %i.np = load i32, ptr %i.no, align 4, !tbaa !41 ; 6 uses
  %.not.i218422 = icmp sgt i32 %i.np, -1
  br i1 %.not.i218422, label %._crit_edge427, label %.lr.ph426.preheader

.preheader:                                       ; preds = %.preheader.preheader, %smk_get_code.exit244
  %.2193472 = phi i32 [ %i.qo, %smk_get_code.exit244 ], [ 0, %.preheader.preheader ]
  %.1202471 = phi ptr [ %i.qn, %smk_get_code.exit244 ], [ %i.nk, %.preheader.preheader ] ; 3 uses
  %.sroa.14.4470 = phi i32 [ %.sroa.14.12394, %smk_get_code.exit244 ], [ %.sroa.14.3473641, %.preheader.preheader ] ; 4 uses
  %i.nq = load ptr, ptr %i.cf, align 8, !tbaa !43 ; 8 uses
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !41 ; 3 uses
  %.not.i246455 = icmp sgt i32 %i.nr, -1
  br i1 %.not.i246455, label %._crit_edge460, label %.lr.ph459.preheader

.lr.ph459.preheader:                              ; preds = %.preheader
  %smax550 = tail call i32 @llvm.smax.i32(i32 %.013.i.i, i32 %.sroa.14.4470) ; 3 uses
  %exitcond551.not699.not = icmp slt i32 %.sroa.14.4470, %.013.i.i
  br i1 %exitcond551.not699.not, label %.lr.ph702, label %smk_get_code.exit251

.lr.ph459:                                        ; preds = %.lr.ph702
  %exitcond551.not = icmp eq i32 %i.nz, %smax550
  br i1 %exitcond551.not, label %smk_get_code.exit251, label %.lr.ph702, !llvm.loop !75

.lr.ph702:                                        ; preds = %.lr.ph459.preheader, %.lr.ph459
  %.sroa.14.13456701 = phi i32 [ %i.nz, %.lr.ph459 ], [ %.sroa.14.4470, %.lr.ph459.preheader ] ; 3 uses
  %.0.i245457700 = phi ptr [ %i.od, %.lr.ph459 ], [ %i.nq, %.lr.ph459.preheader ]
  %i.ns = phi i32 [ %i.oe, %.lr.ph459 ], [ %i.nr, %.lr.ph459.preheader ]
  %i.nt = lshr i32 %.sroa.14.13456701, 3
  %i.nu = zext nneg i32 %i.nt to i64
  %i.nv = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.nu
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !34
  %i.nx = and i32 %.sroa.14.13456701, 7
  %i.ny = zext i8 %i.nw to i32
  %i.nz = add i32 %.sroa.14.13456701, 1           ; 3 uses
  %i.oa = shl nuw nsw i32 1, %i.nx
  %i.ob = and i32 %i.oa, %i.ny
  %.not26.i247 = icmp eq i32 %i.ob, 0
  %i.oc = and i32 %i.ns, 2147483647
  %narrow353 = select i1 %.not26.i247, i32 0, i32 %i.oc
  %.1.i248.idx = zext nneg i32 %narrow353 to i64
  %.1.i248 = getelementptr inbounds nuw [4 x i8], ptr %.0.i245457700, i64 %.1.i248.idx
  %i.od = getelementptr inbounds nuw i8, ptr %.1.i248, i64 4 ; 2 uses
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !41 ; 3 uses
  %.not.i246 = icmp sgt i32 %i.oe, -1
  br i1 %.not.i246, label %._crit_edge460, label %.lr.ph459, !llvm.loop !75

._crit_edge460:                                   ; preds = %.lr.ph702, %.preheader
  %.sroa.14.13.lcssa = phi i32 [ %.sroa.14.4470, %.preheader ], [ %i.nz, %.lr.ph702 ] ; 2 uses
  %.lcssa387 = phi i32 [ %i.nr, %.preheader ], [ %i.oe, %.lr.ph702 ] ; 4 uses
  %i.of = load i32, ptr %i.ch, align 8, !tbaa !41
  %i.og = sext i32 %i.of to i64
  %i.oh = getelementptr inbounds [4 x i8], ptr %i.nq, i64 %i.og
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !41
  %.not25.i250 = icmp eq i32 %.lcssa387, %i.oi
  br i1 %.not25.i250, label %smk_get_code.exit251, label %bb.s

bb.s:                                             ; preds = %._crit_edge460
  %i.oj = load i32, ptr %i.cm, align 4, !tbaa !41
  %i.ok = sext i32 %i.oj to i64
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.nq, i64 %i.ok
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !41
  %i.on = load i32, ptr %i.ci, align 8, !tbaa !41
  %i.oo = sext i32 %i.on to i64
  %i.op = getelementptr inbounds [4 x i8], ptr %i.nq, i64 %i.oo
  store i32 %i.om, ptr %i.op, align 4, !tbaa !41
  %i.oq = load i32, ptr %i.ch, align 8, !tbaa !41
  %i.or = sext i32 %i.oq to i64
  %i.os = getelementptr inbounds [4 x i8], ptr %i.nq, i64 %i.or
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !41
  %i.ou = load i32, ptr %i.cm, align 4, !tbaa !41
  %i.ov = sext i32 %i.ou to i64
  %i.ow = getelementptr inbounds [4 x i8], ptr %i.nq, i64 %i.ov
  store i32 %i.ot, ptr %i.ow, align 4, !tbaa !41
  %i.ox = load i32, ptr %i.ch, align 8, !tbaa !41
  %i.oy = sext i32 %i.ox to i64
  %i.oz = getelementptr inbounds [4 x i8], ptr %i.nq, i64 %i.oy
  store i32 %.lcssa387, ptr %i.oz, align 4, !tbaa !41
  br label %smk_get_code.exit251

smk_get_code.exit251:                             ; preds = %.lr.ph459, %.lr.ph459.preheader, %._crit_edge460, %bb.s
  %.sroa.14.13390 = phi i32 [ %.sroa.14.13.lcssa, %._crit_edge460 ], [ %.sroa.14.13.lcssa, %bb.s ], [ %smax550, %.lr.ph459.preheader ], [ %smax550, %.lr.ph459 ] ; 4 uses
  %.023.i249 = phi i32 [ %.lcssa387, %._crit_edge460 ], [ %.lcssa387, %bb.s ], [ -1094995529, %.lr.ph459.preheader ], [ -1094995529, %.lr.ph459 ]
  %i.pa = trunc i32 %.023.i249 to i16
  %i.pb = getelementptr inbounds nuw i8, ptr %.1202471, i64 2
  store i16 %i.pa, ptr %i.pb, align 1, !tbaa !34
  %i.pc = load ptr, ptr %i.cf, align 8, !tbaa !43 ; 8 uses
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !41 ; 3 uses
  %.not.i239463 = icmp sgt i32 %i.pd, -1
  br i1 %.not.i239463, label %._crit_edge467, label %.lr.ph466.preheader

.lr.ph466.preheader:                              ; preds = %smk_get_code.exit251
  %smax552 = tail call i32 @llvm.smax.i32(i32 %.013.i.i, i32 %.sroa.14.13390) ; 3 uses
  %exitcond553.not703.not = icmp slt i32 %.sroa.14.13390, %.013.i.i
  br i1 %exitcond553.not703.not, label %.lr.ph706, label %smk_get_code.exit244

.lr.ph466:                                        ; preds = %.lr.ph706
  %exitcond553.not = icmp eq i32 %i.pl, %smax552
  br i1 %exitcond553.not, label %smk_get_code.exit244, label %.lr.ph706, !llvm.loop !75

.lr.ph706:                                        ; preds = %.lr.ph466.preheader, %.lr.ph466
  %.sroa.14.12464705 = phi i32 [ %i.pl, %.lr.ph466 ], [ %.sroa.14.13390, %.lr.ph466.preheader ] ; 3 uses
  %.0.i238465704 = phi ptr [ %i.pp, %.lr.ph466 ], [ %i.pc, %.lr.ph466.preheader ]
  %i.pe = phi i32 [ %i.pq, %.lr.ph466 ], [ %i.pd, %.lr.ph466.preheader ]
  %i.pf = lshr i32 %.sroa.14.12464705, 3
  %i.pg = zext nneg i32 %i.pf to i64
  %i.ph = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.pg
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !34
  %i.pj = and i32 %.sroa.14.12464705, 7
  %i.pk = zext i8 %i.pi to i32
  %i.pl = add i32 %.sroa.14.12464705, 1           ; 3 uses
  %i.pm = shl nuw nsw i32 1, %i.pj
  %i.pn = and i32 %i.pm, %i.pk
  %.not26.i240 = icmp eq i32 %i.pn, 0
  %i.po = and i32 %i.pe, 2147483647
  %narrow355 = select i1 %.not26.i240, i32 0, i32 %i.po
  %.1.i241.idx = zext nneg i32 %narrow355 to i64
  %.1.i241 = getelementptr inbounds nuw [4 x i8], ptr %.0.i238465704, i64 %.1.i241.idx
  %i.pp = getelementptr inbounds nuw i8, ptr %.1.i241, i64 4 ; 2 uses
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !41 ; 3 uses
  %.not.i239 = icmp sgt i32 %i.pq, -1
  br i1 %.not.i239, label %._crit_edge467, label %.lr.ph466, !llvm.loop !75

._crit_edge467:                                   ; preds = %.lr.ph706, %smk_get_code.exit251
  %.sroa.14.12.lcssa = phi i32 [ %.sroa.14.13390, %smk_get_code.exit251 ], [ %i.pl, %.lr.ph706 ] ; 2 uses
  %.lcssa391 = phi i32 [ %i.pd, %smk_get_code.exit251 ], [ %i.pq, %.lr.ph706 ] ; 4 uses
  %i.pr = load i32, ptr %i.ch, align 8, !tbaa !41
  %i.ps = sext i32 %i.pr to i64
  %i.pt = getelementptr inbounds [4 x i8], ptr %i.pc, i64 %i.ps
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !41
  %.not25.i243 = icmp eq i32 %.lcssa391, %i.pu
  br i1 %.not25.i243, label %smk_get_code.exit244, label %bb.t

bb.t:                                             ; preds = %._crit_edge467
  %i.pv = load i32, ptr %i.cm, align 4, !tbaa !41
  %i.pw = sext i32 %i.pv to i64
  %i.px = getelementptr inbounds [4 x i8], ptr %i.pc, i64 %i.pw
  %i.py = load i32, ptr %i.px, align 4, !tbaa !41
  %i.pz = load i32, ptr %i.ci, align 8, !tbaa !41
  %i.qa = sext i32 %i.pz to i64
  %i.qb = getelementptr inbounds [4 x i8], ptr %i.pc, i64 %i.qa
  store i32 %i.py, ptr %i.qb, align 4, !tbaa !41
  %i.qc = load i32, ptr %i.ch, align 8, !tbaa !41
  %i.qd = sext i32 %i.qc to i64
  %i.qe = getelementptr inbounds [4 x i8], ptr %i.pc, i64 %i.qd
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !41
  %i.qg = load i32, ptr %i.cm, align 4, !tbaa !41
  %i.qh = sext i32 %i.qg to i64
  %i.qi = getelementptr inbounds [4 x i8], ptr %i.pc, i64 %i.qh
  store i32 %i.qf, ptr %i.qi, align 4, !tbaa !41
  %i.qj = load i32, ptr %i.ch, align 8, !tbaa !41
  %i.qk = sext i32 %i.qj to i64
  %i.ql = getelementptr inbounds [4 x i8], ptr %i.pc, i64 %i.qk
  store i32 %.lcssa391, ptr %i.ql, align 4, !tbaa !41
  br label %smk_get_code.exit244

smk_get_code.exit244:                             ; preds = %.lr.ph466, %.lr.ph466.preheader, %._crit_edge467, %bb.t
  %.sroa.14.12394 = phi i32 [ %.sroa.14.12.lcssa, %._crit_edge467 ], [ %.sroa.14.12.lcssa, %bb.t ], [ %smax552, %.lr.ph466.preheader ], [ %smax552, %.lr.ph466 ] ; 2 uses
  %.023.i242 = phi i32 [ %.lcssa391, %._crit_edge467 ], [ %.lcssa391, %bb.t ], [ -1094995529, %.lr.ph466.preheader ], [ -1094995529, %.lr.ph466 ]
  %i.qm = trunc i32 %.023.i242 to i16
  store i16 %i.qm, ptr %.1202471, align 1, !tbaa !34
  %i.qn = getelementptr inbounds i8, ptr %.1202471, i64 %i.dx
  %i.qo = add nuw nsw i32 %.2193472, 1            ; 2 uses
  %exitcond554.not = icmp eq i32 %i.qo, 4
  br i1 %exitcond554.not, label %.loopexit, label %.preheader, !llvm.loop !77

bb.u:                                             ; preds = %.lr.ph476.split.jt1, %.lr.ph476.split
  %i.qp = phi ptr [ %i.my, %.lr.ph476.split.jt1 ], [ %i.mc, %.lr.ph476.split ] ; 4 uses
  %i.qq = phi i32 [ %i.mo, %.lr.ph476.split.jt1 ], [ %i.ls, %.lr.ph476.split ]
  %.sroa.14.3473640 = phi i32 [ %i.ld, %.lr.ph476.split.jt1 ], [ %.sroa.14.6, %.lr.ph476.split ] ; 4 uses
  %.2197474636 = phi i32 [ %.0195503, %.lr.ph476.split.jt1 ], [ %i.aaa, %.lr.ph476.split ]
  %i.qr = load ptr, ptr %i.cf, align 8, !tbaa !43 ; 8 uses
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !41 ; 3 uses
  %.not.i232440 = icmp sgt i32 %i.qs, -1
  br i1 %.not.i232440, label %._crit_edge445, label %.lr.ph444.preheader

.lr.ph444.preheader:                              ; preds = %bb.u
  %smax546 = tail call i32 @llvm.smax.i32(i32 %.013.i.i, i32 %.sroa.14.3473640) ; 3 uses
  %exitcond547.not707.not = icmp slt i32 %.sroa.14.3473640, %.013.i.i
  br i1 %exitcond547.not707.not, label %.lr.ph710, label %smk_get_code.exit237

.lr.ph444:                                        ; preds = %.lr.ph710
  %exitcond547.not = icmp eq i32 %i.ra, %smax546
  br i1 %exitcond547.not, label %smk_get_code.exit237, label %.lr.ph710, !llvm.loop !75

.lr.ph710:                                        ; preds = %.lr.ph444.preheader, %.lr.ph444
  %.sroa.14.11441709 = phi i32 [ %i.ra, %.lr.ph444 ], [ %.sroa.14.3473640, %.lr.ph444.preheader ] ; 3 uses
  %.0.i231442708 = phi ptr [ %i.re, %.lr.ph444 ], [ %i.qr, %.lr.ph444.preheader ]
  %i.qt = phi i32 [ %i.rf, %.lr.ph444 ], [ %i.qs, %.lr.ph444.preheader ]
  %i.qu = lshr i32 %.sroa.14.11441709, 3
  %i.qv = zext nneg i32 %i.qu to i64
  %i.qw = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.qv
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !34
  %i.qy = and i32 %.sroa.14.11441709, 7
  %i.qz = zext i8 %i.qx to i32
  %i.ra = add i32 %.sroa.14.11441709, 1           ; 3 uses
  %i.rb = shl nuw nsw i32 1, %i.qy
  %i.rc = and i32 %i.rb, %i.qz
  %.not26.i233 = icmp eq i32 %i.rc, 0
  %i.rd = and i32 %i.qt, 2147483647
  %narrow349 = select i1 %.not26.i233, i32 0, i32 %i.rd
  %.1.i234.idx = zext nneg i32 %narrow349 to i64
  %.1.i234 = getelementptr inbounds nuw [4 x i8], ptr %.0.i231442708, i64 %.1.i234.idx
  %i.re = getelementptr inbounds nuw i8, ptr %.1.i234, i64 4 ; 2 uses
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !41 ; 3 uses
  %.not.i232 = icmp sgt i32 %i.rf, -1
  br i1 %.not.i232, label %._crit_edge445, label %.lr.ph444, !llvm.loop !75

._crit_edge445:                                   ; preds = %.lr.ph710, %bb.u
  %.sroa.14.11.lcssa = phi i32 [ %.sroa.14.3473640, %bb.u ], [ %i.ra, %.lr.ph710 ] ; 2 uses
  %.lcssa379 = phi i32 [ %i.qs, %bb.u ], [ %i.rf, %.lr.ph710 ] ; 4 uses
  %i.rg = load i32, ptr %i.ch, align 8, !tbaa !41
  %i.rh = sext i32 %i.rg to i64
  %i.ri = getelementptr inbounds [4 x i8], ptr %i.qr, i64 %i.rh
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !41
  %.not25.i236 = icmp eq i32 %.lcssa379, %i.rj
  br i1 %.not25.i236, label %smk_get_code.exit237, label %bb.v

bb.v:                                             ; preds = %._crit_edge445
  %i.rk = load i32, ptr %i.cm, align 4, !tbaa !41
  %i.rl = sext i32 %i.rk to i64
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.qr, i64 %i.rl
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !41
  %i.ro = load i32, ptr %i.ci, align 8, !tbaa !41
  %i.rp = sext i32 %i.ro to i64
  %i.rq = getelementptr inbounds [4 x i8], ptr %i.qr, i64 %i.rp
  store i32 %i.rn, ptr %i.rq, align 4, !tbaa !41
  %i.rr = load i32, ptr %i.ch, align 8, !tbaa !41
  %i.rs = sext i32 %i.rr to i64
  %i.rt = getelementptr inbounds [4 x i8], ptr %i.qr, i64 %i.rs
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !41
  %i.rv = load i32, ptr %i.cm, align 4, !tbaa !41
  %i.rw = sext i32 %i.rv to i64
  %i.rx = getelementptr inbounds [4 x i8], ptr %i.qr, i64 %i.rw
  store i32 %i.ru, ptr %i.rx, align 4, !tbaa !41
  %i.ry = load i32, ptr %i.ch, align 8, !tbaa !41
  %i.rz = sext i32 %i.ry to i64
  %i.sa = getelementptr inbounds [4 x i8], ptr %i.qr, i64 %i.rz
  store i32 %.lcssa379, ptr %i.sa, align 4, !tbaa !41
  br label %smk_get_code.exit237

smk_get_code.exit237:                             ; preds = %.lr.ph444, %.lr.ph444.preheader, %._crit_edge445, %bb.v
  %.sroa.14.11382 = phi i32 [ %.sroa.14.11.lcssa, %._crit_edge445 ], [ %.sroa.14.11.lcssa, %bb.v ], [ %smax546, %.lr.ph444.preheader ], [ %smax546, %.lr.ph444 ] ; 4 uses
  %.023.i235 = phi i32 [ %.lcssa379, %._crit_edge445 ], [ %.lcssa379, %bb.v ], [ -1094995529, %.lr.ph444.preheader ], [ -1094995529, %.lr.ph444 ] ; 3 uses
  %i.sb = trunc i32 %.023.i235 to i8              ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.qp, i64 1
  %i.sd = trunc i32 %.023.i235 to i16             ; 2 uses
  store i16 %i.sd, ptr %i.sc, align 1
  store i8 %i.sb, ptr %i.qp, align 1, !tbaa !34
  %i.se = lshr i32 %.023.i235, 8
  %i.sf = trunc i32 %i.se to i8                   ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.qp, i64 3
  store i8 %i.sf, ptr %i.sg, align 1, !tbaa !34
  %i.sh = getelementptr inbounds i8, ptr %i.qp, i64 %i.dx ; 4 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 1
  store i16 %i.sd, ptr %i.si, align 1
  store i8 %i.sb, ptr %i.sh, align 1, !tbaa !34
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sh, i64 3
  store i8 %i.sf, ptr %i.sj, align 1, !tbaa !34
  %i.sk = getelementptr inbounds i8, ptr %i.sh, i64 %i.dx ; 4 uses
  %i.sl = load ptr, ptr %i.cf, align 8, !tbaa !43 ; 8 uses
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !41 ; 3 uses
  %.not.i225448 = icmp sgt i32 %i.sm, -1
  br i1 %.not.i225448, label %._crit_edge452, label %.lr.ph451.preheader

.lr.ph451.preheader:                              ; preds = %smk_get_code.exit237
  %smax548 = tail call i32 @llvm.smax.i32(i32 %.013.i.i, i32 %.sroa.14.11382) ; 3 uses
  %exitcond549.not711.not = icmp slt i32 %.sroa.14.11382, %.013.i.i
  br i1 %exitcond549.not711.not, label %.lr.ph714, label %smk_get_code.exit230

.lr.ph451:                                        ; preds = %.lr.ph714
  %exitcond549.not = icmp eq i32 %i.su, %smax548
  br i1 %exitcond549.not, label %smk_get_code.exit230, label %.lr.ph714, !llvm.loop !75

.lr.ph714:                                        ; preds = %.lr.ph451.preheader, %.lr.ph451
  %.sroa.14.10449713 = phi i32 [ %i.su, %.lr.ph451 ], [ %.sroa.14.11382, %.lr.ph451.preheader ] ; 3 uses
  %.0.i224450712 = phi ptr [ %i.sy, %.lr.ph451 ], [ %i.sl, %.lr.ph451.preheader ]
  %i.sn = phi i32 [ %i.sz, %.lr.ph451 ], [ %i.sm, %.lr.ph451.preheader ]
  %i.so = lshr i32 %.sroa.14.10449713, 3
  %i.sp = zext nneg i32 %i.so to i64
  %i.sq = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.sp
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !34
  %i.ss = and i32 %.sroa.14.10449713, 7
  %i.st = zext i8 %i.sr to i32
  %i.su = add i32 %.sroa.14.10449713, 1           ; 3 uses
  %i.sv = shl nuw nsw i32 1, %i.ss
  %i.sw = and i32 %i.sv, %i.st
  %.not26.i226 = icmp eq i32 %i.sw, 0
  %i.sx = and i32 %i.sn, 2147483647
  %narrow351 = select i1 %.not26.i226, i32 0, i32 %i.sx
  %.1.i227.idx = zext nneg i32 %narrow351 to i64
  %.1.i227 = getelementptr inbounds nuw [4 x i8], ptr %.0.i224450712, i64 %.1.i227.idx
  %i.sy = getelementptr inbounds nuw i8, ptr %.1.i227, i64 4 ; 2 uses
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !41 ; 3 uses
  %.not.i225 = icmp sgt i32 %i.sz, -1
  br i1 %.not.i225, label %._crit_edge452, label %.lr.ph451, !llvm.loop !75

._crit_edge452:                                   ; preds = %.lr.ph714, %smk_get_code.exit237
  %.sroa.14.10.lcssa = phi i32 [ %.sroa.14.11382, %smk_get_code.exit237 ], [ %i.su, %.lr.ph714 ] ; 2 uses
  %.lcssa383 = phi i32 [ %i.sm, %smk_get_code.exit237 ], [ %i.sz, %.lr.ph714 ] ; 4 uses
  %i.ta = load i32, ptr %i.ch, align 8, !tbaa !41
  %i.tb = sext i32 %i.ta to i64
  %i.tc = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %i.tb
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !41
  %.not25.i229 = icmp eq i32 %.lcssa383, %i.td
  br i1 %.not25.i229, label %smk_get_code.exit230, label %bb.w

bb.w:                                             ; preds = %._crit_edge452
  %i.te = load i32, ptr %i.cm, align 4, !tbaa !41
  %i.tf = sext i32 %i.te to i64
  %i.tg = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %i.tf
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !41
  %i.ti = load i32, ptr %i.ci, align 8, !tbaa !41
  %i.tj = sext i32 %i.ti to i64
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %i.tj
  store i32 %i.th, ptr %i.tk, align 4, !tbaa !41
  %i.tl = load i32, ptr %i.ch, align 8, !tbaa !41
  %i.tm = sext i32 %i.tl to i64
  %i.tn = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %i.tm
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !41
  %i.tp = load i32, ptr %i.cm, align 4, !tbaa !41
  %i.tq = sext i32 %i.tp to i64
  %i.tr = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %i.tq
  store i32 %i.to, ptr %i.tr, align 4, !tbaa !41
  %i.ts = load i32, ptr %i.ch, align 8, !tbaa !41
  %i.tt = sext i32 %i.ts to i64
  %i.tu = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %i.tt
  store i32 %.lcssa383, ptr %i.tu, align 4, !tbaa !41
  br label %smk_get_code.exit230

smk_get_code.exit230:                             ; preds = %.lr.ph451, %.lr.ph451.preheader, %._crit_edge452, %bb.w
  %.sroa.14.10386 = phi i32 [ %.sroa.14.10.lcssa, %._crit_edge452 ], [ %.sroa.14.10.lcssa, %bb.w ], [ %smax548, %.lr.ph451.preheader ], [ %smax548, %.lr.ph451 ]
  %.023.i228 = phi i32 [ %.lcssa383, %._crit_edge452 ], [ %.lcssa383, %bb.w ], [ -1094995529, %.lr.ph451.preheader ], [ -1094995529, %.lr.ph451 ] ; 3 uses
  %i.tv = trunc i32 %.023.i228 to i8              ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.sk, i64 1
  %i.tx = trunc i32 %.023.i228 to i16             ; 2 uses
  store i16 %i.tx, ptr %i.tw, align 1
  store i8 %i.tv, ptr %i.sk, align 1, !tbaa !34
  %i.ty = lshr i32 %.023.i228, 8
  %i.tz = trunc i32 %i.ty to i8                   ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.sk, i64 3
  store i8 %i.tz, ptr %i.ua, align 1, !tbaa !34
  %i.ub = getelementptr inbounds i8, ptr %i.sk, i64 %i.dx ; 3 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 1
  store i16 %i.tx, ptr %i.uc, align 1
  store i8 %i.tv, ptr %i.ub, align 1, !tbaa !34
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ub, i64 3
  store i8 %i.tz, ptr %i.ud, align 1, !tbaa !34
  br label %.loopexit

.lr.ph426.preheader:                              ; preds = %.preheader360.preheader
  %smax555 = tail call i32 @llvm.smax.i32(i32 %.013.i.i, i32 %.sroa.14.3473639) ; 3 uses
  %exitcond556.not715.not = icmp slt i32 %.sroa.14.3473639, %.013.i.i
  br i1 %exitcond556.not715.not, label %.lr.ph718, label %smk_get_code.exit223

.lr.ph426:                                        ; preds = %.lr.ph718
  %exitcond556.not = icmp eq i32 %i.ul, %smax555
  br i1 %exitcond556.not, label %smk_get_code.exit223, label %.lr.ph718, !llvm.loop !75

.lr.ph718:                                        ; preds = %.lr.ph426.preheader, %.lr.ph426
  %.sroa.14.9423717 = phi i32 [ %i.ul, %.lr.ph426 ], [ %.sroa.14.3473639, %.lr.ph426.preheader ] ; 3 uses
  %.0.i217424716 = phi ptr [ %i.up, %.lr.ph426 ], [ %i.no, %.lr.ph426.preheader ]
  %i.ue = phi i32 [ %i.uq, %.lr.ph426 ], [ %i.np, %.lr.ph426.preheader ]
  %i.uf = lshr i32 %.sroa.14.9423717, 3
  %i.ug = zext nneg i32 %i.uf to i64
  %i.uh = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.ug
  %i.ui = load i8, ptr %i.uh, align 1, !tbaa !34
  %i.uj = and i32 %.sroa.14.9423717, 7
  %i.uk = zext i8 %i.ui to i32
  %i.ul = add i32 %.sroa.14.9423717, 1            ; 3 uses
  %i.um = shl nuw nsw i32 1, %i.uj
  %i.un = and i32 %i.um, %i.uk
  %.not26.i219 = icmp eq i32 %i.un, 0
  %i.uo = and i32 %i.ue, 2147483647
  %narrow345 = select i1 %.not26.i219, i32 0, i32 %i.uo
  %.1.i220.idx = zext nneg i32 %narrow345 to i64
  %.1.i220 = getelementptr inbounds nuw [4 x i8], ptr %.0.i217424716, i64 %.1.i220.idx
  %i.up = getelementptr inbounds nuw i8, ptr %.1.i220, i64 4 ; 2 uses
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !41 ; 3 uses
  %.not.i218 = icmp sgt i32 %i.uq, -1
  br i1 %.not.i218, label %._crit_edge427, label %.lr.ph426, !llvm.loop !75

._crit_edge427:                                   ; preds = %.lr.ph718, %.preheader360.preheader
  %.sroa.14.9.lcssa = phi i32 [ %.sroa.14.3473639, %.preheader360.preheader ], [ %i.ul, %.lr.ph718 ] ; 2 uses
  %.lcssa371 = phi i32 [ %i.np, %.preheader360.preheader ], [ %i.uq, %.lr.ph718 ] ; 4 uses
  %i.ur = load i32, ptr %i.ch, align 8, !tbaa !41
  %i.us = sext i32 %i.ur to i64
  %i.ut = getelementptr inbounds [4 x i8], ptr %i.no, i64 %i.us
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !41
  %.not25.i222 = icmp eq i32 %.lcssa371, %i.uu
  br i1 %.not25.i222, label %smk_get_code.exit223, label %bb.x

bb.x:                                             ; preds = %._crit_edge427
  %i.uv = load i32, ptr %i.cm, align 4, !tbaa !41
  %i.uw = sext i32 %i.uv to i64
  %i.ux = getelementptr inbounds [4 x i8], ptr %i.no, i64 %i.uw
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !41
  %i.uz = load i32, ptr %i.ci, align 8, !tbaa !41
  %i.va = sext i32 %i.uz to i64
  %i.vb = getelementptr inbounds [4 x i8], ptr %i.no, i64 %i.va
  store i32 %i.uy, ptr %i.vb, align 4, !tbaa !41
  %i.vc = load i32, ptr %i.ch, align 8, !tbaa !41
  %i.vd = sext i32 %i.vc to i64
  %i.ve = getelementptr inbounds [4 x i8], ptr %i.no, i64 %i.vd
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !41
  %i.vg = load i32, ptr %i.cm, align 4, !tbaa !41
  %i.vh = sext i32 %i.vg to i64
  %i.vi = getelementptr inbounds [4 x i8], ptr %i.no, i64 %i.vh
  store i32 %i.vf, ptr %i.vi, align 4, !tbaa !41
  %i.vj = load i32, ptr %i.ch, align 8, !tbaa !41
  %i.vk = sext i32 %i.vj to i64
  %i.vl = getelementptr inbounds [4 x i8], ptr %i.no, i64 %i.vk
  store i32 %.lcssa371, ptr %i.vl, align 4, !tbaa !41
  %.pre = load i32, ptr %i.no, align 4, !tbaa !41
  br label %smk_get_code.exit223

smk_get_code.exit223:                             ; preds = %.lr.ph426, %.lr.ph426.preheader, %._crit_edge427, %bb.x
  %i.vm = phi i32 [ %i.np, %._crit_edge427 ], [ %.pre, %bb.x ], [ %i.np, %.lr.ph426.preheader ], [ %i.np, %.lr.ph426 ] ; 3 uses
  %.sroa.14.9374 = phi i32 [ %.sroa.14.9.lcssa, %._crit_edge427 ], [ %.sroa.14.9.lcssa, %bb.x ], [ %smax555, %.lr.ph426.preheader ], [ %smax555, %.lr.ph426 ] ; 4 uses
  %.023.i221 = phi i32 [ %.lcssa371, %._crit_edge427 ], [ %.lcssa371, %bb.x ], [ -1094995529, %.lr.ph426.preheader ], [ -1094995529, %.lr.ph426 ]
  %i.vn = trunc i32 %.023.i221 to i16             ; 2 uses
  %.not.i430 = icmp sgt i32 %i.vm, -1
  br i1 %.not.i430, label %._crit_edge434, label %.lr.ph433.preheader

.lr.ph433.preheader:                              ; preds = %smk_get_code.exit223
  %smax557 = tail call i32 @llvm.smax.i32(i32 %.013.i.i, i32 %.sroa.14.9374) ; 3 uses
  %exitcond558.not719.not = icmp slt i32 %.sroa.14.9374, %.013.i.i
  br i1 %exitcond558.not719.not, label %.lr.ph722, label %smk_get_code.exit

.lr.ph433:                                        ; preds = %.lr.ph722
  %exitcond558.not = icmp eq i32 %i.vv, %smax557
  br i1 %exitcond558.not, label %smk_get_code.exit, label %.lr.ph722, !llvm.loop !75

.lr.ph722:                                        ; preds = %.lr.ph433.preheader, %.lr.ph433
  %.sroa.14.8431721 = phi i32 [ %i.vv, %.lr.ph433 ], [ %.sroa.14.9374, %.lr.ph433.preheader ] ; 3 uses
  %.0.i432720 = phi ptr [ %i.vz, %.lr.ph433 ], [ %i.no, %.lr.ph433.preheader ]
  %i.vo = phi i32 [ %i.wa, %.lr.ph433 ], [ %i.vm, %.lr.ph433.preheader ]
  %i.vp = lshr i32 %.sroa.14.8431721, 3
  %i.vq = zext nneg i32 %i.vp to i64
  %i.vr = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.vq
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !34
  %i.vt = and i32 %.sroa.14.8431721, 7
  %i.vu = zext i8 %i.vs to i32
  %i.vv = add i32 %.sroa.14.8431721, 1            ; 3 uses
  %i.vw = shl nuw nsw i32 1, %i.vt
  %i.vx = and i32 %i.vw, %i.vu
  %.not26.i = icmp eq i32 %i.vx, 0
  %i.vy = and i32 %i.vo, 2147483647
  %narrow347 = select i1 %.not26.i, i32 0, i32 %i.vy
  %.1.i.idx = zext nneg i32 %narrow347 to i64
  %.1.i = getelementptr inbounds nuw [4 x i8], ptr %.0.i432720, i64 %.1.i.idx
  %i.vz = getelementptr inbounds nuw i8, ptr %.1.i, i64 4 ; 2 uses
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !41 ; 3 uses
  %.not.i = icmp sgt i32 %i.wa, -1
  br i1 %.not.i, label %._crit_edge434, label %.lr.ph433, !llvm.loop !75

._crit_edge434:                                   ; preds = %.lr.ph722, %smk_get_code.exit223
  %.sroa.14.8.lcssa = phi i32 [ %.sroa.14.9374, %smk_get_code.exit223 ], [ %i.vv, %.lr.ph722 ] ; 2 uses
  %.lcssa375 = phi i32 [ %i.vm, %smk_get_code.exit223 ], [ %i.wa, %.lr.ph722 ] ; 4 uses
  %i.wb = load i32, ptr %i.ch, align 8, !tbaa !41
  %i.wc = sext i32 %i.wb to i64
  %i.wd = getelementptr inbounds [4 x i8], ptr %i.no, i64 %i.wc
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !41
  %.not25.i = icmp eq i32 %.lcssa375, %i.we
  br i1 %.not25.i, label %smk_get_code.exit, label %bb.y

bb.y:                                             ; preds = %._crit_edge434
  %i.wf = load i32, ptr %i.cm, align 4, !tbaa !41
  %i.wg = sext i32 %i.wf to i64
  %i.wh = getelementptr inbounds [4 x i8], ptr %i.no, i64 %i.wg
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !41
  %i.wj = load i32, ptr %i.ci, align 8, !tbaa !41
  %i.wk = sext i32 %i.wj to i64
  %i.wl = getelementptr inbounds [4 x i8], ptr %i.no, i64 %i.wk
  store i32 %i.wi, ptr %i.wl, align 4, !tbaa !41
  %i.wm = load i32, ptr %i.ch, align 8, !tbaa !41
  %i.wn = sext i32 %i.wm to i64
  %i.wo = getelementptr inbounds [4 x i8], ptr %i.no, i64 %i.wn
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !41
  %i.wq = load i32, ptr %i.cm, align 4, !tbaa !41
  %i.wr = sext i32 %i.wq to i64
  %i.ws = getelementptr inbounds [4 x i8], ptr %i.no, i64 %i.wr
  store i32 %i.wp, ptr %i.ws, align 4, !tbaa !41
  %i.wt = load i32, ptr %i.ch, align 8, !tbaa !41
  %i.wu = sext i32 %i.wt to i64
  %i.wv = getelementptr inbounds [4 x i8], ptr %i.no, i64 %i.wu
  store i32 %.lcssa375, ptr %i.wv, align 4, !tbaa !41
  br label %smk_get_code.exit

smk_get_code.exit:                                ; preds = %.lr.ph433, %.lr.ph433.preheader, %._crit_edge434, %bb.y
  %.sroa.14.8378 = phi i32 [ %.sroa.14.8.lcssa, %._crit_edge434 ], [ %.sroa.14.8.lcssa, %bb.y ], [ %smax557, %.lr.ph433.preheader ], [ %smax557, %.lr.ph433 ] ; 4 uses
  %.023.i = phi i32 [ %.lcssa375, %._crit_edge434 ], [ %.lcssa375, %bb.y ], [ -1094995529, %.lr.ph433.preheader ], [ -1094995529, %.lr.ph433 ]
  %i.ww = trunc i32 %.023.i to i16                ; 2 uses
  store i16 %i.ww, ptr %i.nm, align 1, !tbaa !34
  %i.wx = getelementptr inbounds nuw i8, ptr %i.nm, i64 2
  store i16 %i.vn, ptr %i.wx, align 1, !tbaa !34
  %i.wy = getelementptr inbounds i8, ptr %i.nm, i64 %i.dx ; 3 uses
  store i16 %i.ww, ptr %i.wy, align 1, !tbaa !34
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 2
  store i16 %i.vn, ptr %i.wz, align 1, !tbaa !34
  %i.xa = getelementptr inbounds i8, ptr %i.wy, i64 %i.dx ; 3 uses
  %i.xb = load ptr, ptr %i.cf, align 8, !tbaa !43 ; 16 uses
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !41 ; 6 uses
  %.not.i218422.1 = icmp sgt i32 %i.xc, -1
  br i1 %.not.i218422.1, label %._crit_edge427.1, label %.lr.ph426.preheader.1

.lr.ph426.preheader.1:                            ; preds = %smk_get_code.exit
  %smax555.1 = tail call i32 @llvm.smax.i32(i32 %.013.i.i, i32 %.sroa.14.8378) ; 3 uses
  %exitcond556.1.not723.not = icmp slt i32 %.sroa.14.8378, %.013.i.i
  br i1 %exitcond556.1.not723.not, label %.lr.ph726, label %smk_get_code.exit223.1

.lr.ph426.1:                                      ; preds = %.lr.ph726
  %exitcond556.1.not = icmp eq i32 %i.xk, %smax555.1
  br i1 %exitcond556.1.not, label %smk_get_code.exit223.1, label %.lr.ph726, !llvm.loop !75

.lr.ph726:                                        ; preds = %.lr.ph426.preheader.1, %.lr.ph426.1
  %.sroa.14.9423.1725 = phi i32 [ %i.xk, %.lr.ph426.1 ], [ %.sroa.14.8378, %.lr.ph426.preheader.1 ] ; 3 uses
  %.0.i217424.1724 = phi ptr [ %i.xo, %.lr.ph426.1 ], [ %i.xb, %.lr.ph426.preheader.1 ]
  %i.xd = phi i32 [ %i.xp, %.lr.ph426.1 ], [ %i.xc, %.lr.ph426.preheader.1 ]
  %i.xe = lshr i32 %.sroa.14.9423.1725, 3
  %i.xf = zext nneg i32 %i.xe to i64
  %i.xg = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.xf
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !34
  %i.xi = and i32 %.sroa.14.9423.1725, 7
  %i.xj = zext i8 %i.xh to i32
  %i.xk = add i32 %.sroa.14.9423.1725, 1          ; 3 uses
  %i.xl = shl nuw nsw i32 1, %i.xi
  %i.xm = and i32 %i.xl, %i.xj
  %.not26.i219.1 = icmp eq i32 %i.xm, 0
  %i.xn = and i32 %i.xd, 2147483647
  %narrow345.1 = select i1 %.not26.i219.1, i32 0, i32 %i.xn
  %.1.i220.idx.1 = zext nneg i32 %narrow345.1 to i64
  %.1.i220.1 = getelementptr inbounds nuw [4 x i8], ptr %.0.i217424.1724, i64 %.1.i220.idx.1
  %i.xo = getelementptr inbounds nuw i8, ptr %.1.i220.1, i64 4 ; 2 uses
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !41 ; 3 uses
  %.not.i218.1 = icmp sgt i32 %i.xp, -1
  br i1 %.not.i218.1, label %._crit_edge427.1, label %.lr.ph426.1, !llvm.loop !75

._crit_edge427.1:                                 ; preds = %.lr.ph726, %smk_get_code.exit
  %.sroa.14.9.lcssa.1 = phi i32 [ %.sroa.14.8378, %smk_get_code.exit ], [ %i.xk, %.lr.ph726 ] ; 2 uses
  %.lcssa371.1 = phi i32 [ %i.xc, %smk_get_code.exit ], [ %i.xp, %.lr.ph726 ] ; 4 uses
  %i.xq = load i32, ptr %i.ch, align 8, !tbaa !41
  %i.xr = sext i32 %i.xq to i64
  %i.xs = getelementptr inbounds [4 x i8], ptr %i.xb, i64 %i.xr
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !41
  %.not25.i222.1 = icmp eq i32 %.lcssa371.1, %i.xt
  br i1 %.not25.i222.1, label %smk_get_code.exit223.1, label %bb.z

bb.z:                                             ; preds = %._crit_edge427.1
  %i.xu = load i32, ptr %i.cm, align 4, !tbaa !41
  %i.xv = sext i32 %i.xu to i64
  %i.xw = getelementptr inbounds [4 x i8], ptr %i.xb, i64 %i.xv
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !41
  %i.xy = load i32, ptr %i.ci, align 8, !tbaa !41
  %i.xz = sext i32 %i.xy to i64
  %i.ya = getelementptr inbounds [4 x i8], ptr %i.xb, i64 %i.xz
  store i32 %i.xx, ptr %i.ya, align 4, !tbaa !41
  %i.yb = load i32, ptr %i.ch, align 8, !tbaa !41
  %i.yc = sext i32 %i.yb to i64
  %i.yd = getelementptr inbounds [4 x i8], ptr %i.xb, i64 %i.yc
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !41
  %i.yf = load i32, ptr %i.cm, align 4, !tbaa !41
  %i.yg = sext i32 %i.yf to i64
  %i.yh = getelementptr inbounds [4 x i8], ptr %i.xb, i64 %i.yg
  store i32 %i.ye, ptr %i.yh, align 4, !tbaa !41
  %i.yi = load i32, ptr %i.ch, align 8, !tbaa !41
  %i.yj = sext i32 %i.yi to i64
  %i.yk = getelementptr inbounds [4 x i8], ptr %i.xb, i64 %i.yj
  store i32 %.lcssa371.1, ptr %i.yk, align 4, !tbaa !41
  %.pre576 = load i32, ptr %i.xb, align 4, !tbaa !41
  br label %smk_get_code.exit223.1

smk_get_code.exit223.1:                           ; preds = %.lr.ph426.1, %.lr.ph426.preheader.1, %bb.z, %._crit_edge427.1
  %i.yl = phi i32 [ %i.xc, %._crit_edge427.1 ], [ %.pre576, %bb.z ], [ %i.xc, %.lr.ph426.preheader.1 ], [ %i.xc, %.lr.ph426.1 ] ; 3 uses
  %.sroa.14.9374.1 = phi i32 [ %.sroa.14.9.lcssa.1, %._crit_edge427.1 ], [ %.sroa.14.9.lcssa.1, %bb.z ], [ %smax555.1, %.lr.ph426.preheader.1 ], [ %smax555.1, %.lr.ph426.1 ] ; 4 uses
  %.023.i221.1 = phi i32 [ %.lcssa371.1, %._crit_edge427.1 ], [ %.lcssa371.1, %bb.z ], [ -1094995529, %.lr.ph426.preheader.1 ], [ -1094995529, %.lr.ph426.1 ]
  %i.ym = trunc i32 %.023.i221.1 to i16           ; 2 uses
  %.not.i430.1 = icmp sgt i32 %i.yl, -1
  br i1 %.not.i430.1, label %._crit_edge434.1, label %.lr.ph433.preheader.1

.lr.ph433.preheader.1:                            ; preds = %smk_get_code.exit223.1
  %smax557.1 = tail call i32 @llvm.smax.i32(i32 %.013.i.i, i32 %.sroa.14.9374.1) ; 3 uses
  %exitcond558.1.not727.not = icmp slt i32 %.sroa.14.9374.1, %.013.i.i
  br i1 %exitcond558.1.not727.not, label %.lr.ph730, label %smk_get_code.exit.1

.lr.ph433.1:                                      ; preds = %.lr.ph730
  %exitcond558.1.not = icmp eq i32 %i.yu, %smax557.1
  br i1 %exitcond558.1.not, label %smk_get_code.exit.1, label %.lr.ph730, !llvm.loop !75

.lr.ph730:                                        ; preds = %.lr.ph433.preheader.1, %.lr.ph433.1
  %.sroa.14.8431.1729 = phi i32 [ %i.yu, %.lr.ph433.1 ], [ %.sroa.14.9374.1, %.lr.ph433.preheader.1 ] ; 3 uses
  %.0.i432.1728 = phi ptr [ %i.yy, %.lr.ph433.1 ], [ %i.xb, %.lr.ph433.preheader.1 ]
  %i.yn = phi i32 [ %i.yz, %.lr.ph433.1 ], [ %i.yl, %.lr.ph433.preheader.1 ]
  %i.yo = lshr i32 %.sroa.14.8431.1729, 3
  %i.yp = zext nneg i32 %i.yo to i64
  %i.yq = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.yp
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !34
  %i.ys = and i32 %.sroa.14.8431.1729, 7
  %i.yt = zext i8 %i.yr to i32
  %i.yu = add i32 %.sroa.14.8431.1729, 1          ; 3 uses
  %i.yv = shl nuw nsw i32 1, %i.ys
  %i.yw = and i32 %i.yv, %i.yt
  %.not26.i.1 = icmp eq i32 %i.yw, 0
  %i.yx = and i32 %i.yn, 2147483647
  %narrow347.1 = select i1 %.not26.i.1, i32 0, i32 %i.yx
  %.1.i.idx.1 = zext nneg i32 %narrow347.1 to i64
  %.1.i.1 = getelementptr inbounds nuw [4 x i8], ptr %.0.i432.1728, i64 %.1.i.idx.1
  %i.yy = getelementptr inbounds nuw i8, ptr %.1.i.1, i64 4 ; 2 uses
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !41 ; 3 uses
  %.not.i.1 = icmp sgt i32 %i.yz, -1
  br i1 %.not.i.1, label %._crit_edge434.1, label %.lr.ph433.1, !llvm.loop !75

._crit_edge434.1:                                 ; preds = %.lr.ph730, %smk_get_code.exit223.1
  %.sroa.14.8.lcssa.1 = phi i32 [ %.sroa.14.9374.1, %smk_get_code.exit223.1 ], [ %i.yu, %.lr.ph730 ] ; 2 uses
  %.lcssa375.1 = phi i32 [ %i.yl, %smk_get_code.exit223.1 ], [ %i.yz, %.lr.ph730 ] ; 4 uses
  %i.za = load i32, ptr %i.ch, align 8, !tbaa !41
  %i.zb = sext i32 %i.za to i64
  %i.zc = getelementptr inbounds [4 x i8], ptr %i.xb, i64 %i.zb
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !41
  %.not25.i.1 = icmp eq i32 %.lcssa375.1, %i.zd
  br i1 %.not25.i.1, label %smk_get_code.exit.1, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge434.1
  %i.ze = load i32, ptr %i.cm, align 4, !tbaa !41
  %i.zf = sext i32 %i.ze to i64
  %i.zg = getelementptr inbounds [4 x i8], ptr %i.xb, i64 %i.zf
  %i.zh = load i32, ptr %i.zg, align 4, !tbaa !41
  %i.zi = load i32, ptr %i.ci, align 8, !tbaa !41
  %i.zj = sext i32 %i.zi to i64
  %i.zk = getelementptr inbounds [4 x i8], ptr %i.xb, i64 %i.zj
  store i32 %i.zh, ptr %i.zk, align 4, !tbaa !41
  %i.zl = load i32, ptr %i.ch, align 8, !tbaa !41
  %i.zm = sext i32 %i.zl to i64
  %i.zn = getelementptr inbounds [4 x i8], ptr %i.xb, i64 %i.zm
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !41
  %i.zp = load i32, ptr %i.cm, align 4, !tbaa !41
  %i.zq = sext i32 %i.zp to i64
  %i.zr = getelementptr inbounds [4 x i8], ptr %i.xb, i64 %i.zq
  store i32 %i.zo, ptr %i.zr, align 4, !tbaa !41
  %i.zs = load i32, ptr %i.ch, align 8, !tbaa !41
  %i.zt = sext i32 %i.zs to i64
  %i.zu = getelementptr inbounds [4 x i8], ptr %i.xb, i64 %i.zt
  store i32 %.lcssa375.1, ptr %i.zu, align 4, !tbaa !41
  br label %smk_get_code.exit.1

smk_get_code.exit.1:                              ; preds = %.lr.ph433.1, %.lr.ph433.preheader.1, %bb.aa, %._crit_edge434.1
  %.sroa.14.8378.1 = phi i32 [ %.sroa.14.8.lcssa.1, %._crit_edge434.1 ], [ %.sroa.14.8.lcssa.1, %bb.aa ], [ %smax557.1, %.lr.ph433.preheader.1 ], [ %smax557.1, %.lr.ph433.1 ]
  %.023.i.1 = phi i32 [ %.lcssa375.1, %._crit_edge434.1 ], [ %.lcssa375.1, %bb.aa ], [ -1094995529, %.lr.ph433.preheader.1 ], [ -1094995529, %.lr.ph433.1 ]
  %i.zv = trunc i32 %.023.i.1 to i16              ; 2 uses
  store i16 %i.zv, ptr %i.xa, align 1, !tbaa !34
  %i.zw = getelementptr inbounds nuw i8, ptr %i.xa, i64 2
  store i16 %i.ym, ptr %i.zw, align 1, !tbaa !34
  %i.zx = getelementptr inbounds i8, ptr %i.xa, i64 %i.dx ; 2 uses
  store i16 %i.zv, ptr %i.zx, align 1, !tbaa !34
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 2
  store i16 %i.ym, ptr %i.zy, align 1, !tbaa !34
  br label %.loopexit

.loopexit:                                        ; preds = %smk_get_code.exit244, %smk_get_code.exit.1, %smk_get_code.exit230
  %i.zz = phi i32 [ %i.qq, %smk_get_code.exit230 ], [ %i.nn, %smk_get_code.exit.1 ], [ %i.nl, %smk_get_code.exit244 ] ; 2 uses
  %.2197474638 = phi i32 [ %.2197474636, %smk_get_code.exit230 ], [ %.2197474635, %smk_get_code.exit.1 ], [ %.2197474637, %smk_get_code.exit244 ]
  %.0186633 = phi i32 [ 1, %smk_get_code.exit230 ], [ %.0186631, %smk_get_code.exit.1 ], [ 0, %smk_get_code.exit244 ] ; 2 uses
  %.sroa.14.6 = phi i32 [ %.sroa.14.10386, %smk_get_code.exit230 ], [ %.sroa.14.8378.1, %smk_get_code.exit.1 ], [ %.sroa.14.12394, %smk_get_code.exit244 ] ; 4 uses
  %i.aaa = add nsw i32 %.2197474638, 1            ; 7 uses
  %i.aab = icmp ne i32 %i.zz, 0
  %i.aac = icmp slt i32 %i.aaa, %i.ds
  %i.aad = select i1 %i.aab, i1 %i.aac, i1 false
  br i1 %i.aad, label %.lr.ph476.split, label %smk_get_code.exit272, !llvm.loop !78

bb.ab:                                            ; preds = %bb.j
  %i.aae = icmp slt i32 %.0195503, %i.ds
  br i1 %i.aae, label %.lr.ph416, label %smk_get_code.exit272

.lr.ph416:                                        ; preds = %bb.ab
  %i.aaf = lshr i32 %.lcssa, 8
  %i.aag = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !48
  %i.aai = mul i32 %i.aaf, 16843009               ; 4 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph416, %bb.ac
  %.in = phi i32 [ %i.fn, %.lr.ph416 ], [ %i.aau, %bb.ac ]
  %.4199414 = phi i32 [ %.0195503, %.lr.ph416 ], [ %i.aav, %bb.ac ] ; 3 uses
  %i.aaj = sdiv i32 %.4199414, %i.do
  %i.aak = mul nsw i32 %i.dw, %i.aaj
  %i.aal = sext i32 %i.aak to i64
  %i.aam = getelementptr inbounds i8, ptr %i.aah, i64 %i.aal
  %i.aan = srem i32 %.4199414, %i.do
  %i.aao = shl nsw i32 %i.aan, 2
  %i.aap = sext i32 %i.aao to i64
  %i.aaq = getelementptr inbounds i8, ptr %i.aam, i64 %i.aap ; 2 uses
  store i32 %i.aai, ptr %i.aaq, align 4, !tbaa !41
  %i.aar = getelementptr inbounds i8, ptr %i.aaq, i64 %i.dx ; 2 uses
  store i32 %i.aai, ptr %i.aar, align 4, !tbaa !41
  %i.aas = getelementptr inbounds i8, ptr %i.aar, i64 %i.dx ; 2 uses
  store i32 %i.aai, ptr %i.aas, align 4, !tbaa !41
  %i.aat = getelementptr inbounds i8, ptr %i.aas, i64 %i.dx
  store i32 %i.aai, ptr %i.aat, align 4, !tbaa !41
  %i.aau = add nsw i32 %.in, -1                   ; 2 uses
  %i.aav = add nsw i32 %.4199414, 1               ; 3 uses
  %i.aaw = icmp ne i32 %i.aau, 0
  %i.aax = icmp slt i32 %i.aav, %i.ds
  %i.aay = select i1 %i.aaw, i1 %i.aax, i1 false
  br i1 %i.aay, label %bb.ac, label %smk_get_code.exit272, !llvm.loop !79

default.unreachable:                              ; preds = %bb.j
  unreachable

smk_get_code.exit272:                             ; preds = %bb.ac, %smk_get_code.exit258, %.loopexit, %spec.select.si.unfold.false.jt2, %bb.q, %bb.r, %.lr.ph420.preheader, %bb.ab, %.preheader364, %.preheader362
  %.sroa.14.7 = phi i32 [ %i.lm, %spec.select.si.unfold.false.jt2 ], [ %.sroa.14.16.lcssa, %.preheader364 ], [ %.sroa.14.16.lcssa, %bb.ab ], [ %.sroa.14.16.lcssa, %.preheader362 ], [ %.sroa.14.14404, %smk_get_code.exit258 ], [ %i.ld, %bb.q ], [ %.sroa.14.16.lcssa, %.lr.ph420.preheader ], [ %.sroa.14.6, %.loopexit ], [ %.sroa.14.2.jt0, %bb.r ], [ %.sroa.14.16.lcssa, %bb.ac ]
  %.6 = phi i32 [ %.0195503, %spec.select.si.unfold.false.jt2 ], [ %.0195503, %.preheader364 ], [ %.0195503, %bb.ab ], [ %.0195503, %.preheader362 ], [ %i.kr, %smk_get_code.exit258 ], [ %.0195503, %bb.q ], [ %i.fu, %.lr.ph420.preheader ], [ %i.aaa, %.loopexit ], [ %.0195503, %bb.r ], [ %i.aav, %bb.ac ] ; 2 uses
  %i.aaz = icmp slt i32 %.6, %i.ds
  br i1 %i.aaz, label %bb.h, label %._crit_edge506.loopexit, !llvm.loop !80

._crit_edge506.loopexit:                          ; preds = %smk_get_code.exit272
  %.pre577 = load ptr, ptr %i.f, align 8, !tbaa !33
  br label %._crit_edge506

._crit_edge506:                                   ; preds = %._crit_edge506.loopexit, %bb.g
  %i.aba = phi ptr [ %.pre577, %._crit_edge506.loopexit ], [ %i.j, %bb.g ]
  %i.abb = tail call i32 @av_frame_ref(ptr noundef %1, ptr noundef %i.aba) #7 ; 2 uses
  %i.abc = icmp slt i32 %i.abb, 0
  br i1 %i.abc, label %smk_get_code.exit272.thread337, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge506
  store i32 1, ptr %2, align 4, !tbaa !41
  %i.abd = load i32, ptr %i.c, align 8, !tbaa !46
  br label %smk_get_code.exit272.thread337

smk_get_code.exit272.thread337:                   ; preds = %bb.n, %.lr.ph.preheader, %.lr.ph, %._crit_edge506, %bb.f, %bb.b, %bb.a, %bb.ad
  %.2 = phi i32 [ %i.abd, %bb.ad ], [ -1094995529, %bb.a ], [ %i.h, %bb.b ], [ %i.abb, %._crit_edge506 ], [ -1094995529, %bb.f ], [ -1094995529, %.lr.ph ], [ -1094995529, %.lr.ph.preheader ], [ -1094995529, %bb.n ]
  ret i32 %.2
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @decode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @av_freep(ptr noundef nonnull %i.c) #7
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @av_freep(ptr noundef nonnull %i.d) #7
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @av_freep(ptr noundef nonnull %i.e) #7
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @av_freep(ptr noundef nonnull %i.f) #7
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @av_frame_free(ptr noundef nonnull %i.g) #7
  ret i32 0
}

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -1094995529, 1) i32 @smka_decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.b = load i32, ptr %i.a, align 4, !tbaa !54   ; 2 uses
  %i.c = add i32 %i.b, -3
  %or.cond = icmp ult i32 %i.c, -2
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.20) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.d) #7
  tail call void @av_channel_layout_default(ptr noundef nonnull %i.d, i32 noundef %i.b) #7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.f = load i32, ptr %i.e, align 8, !tbaa !86
  %i.g = icmp ne i32 %i.f, 8
  %i.h = zext i1 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 %i.h, ptr %i.i, align 4, !tbaa !55
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -1094995529, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 5, 2) i32 @smka_decode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %4 = alloca %struct.GetBitContext, align 8      ; 8 uses
  %5 = alloca [4 x %struct.VLC], align 16         ; 14 uses
  %i.a = alloca [4 x i8], align 2                 ; 8 uses
  %i.b = alloca [2 x i32], align 4                ; 15 uses
  %6 = alloca %struct.HuffContext, align 4        ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !46   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %5, i8 0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.g = icmp slt i32 %i.f, 5
end_hunk_0
