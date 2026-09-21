Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cbaCom?download=true
inline.NumInlined: 318
inline.NumDeleted: 112
begin_hunk_0_@Cba_CommandPs:bb.a
  %i.al = getelementptr i8, ptr %i.x, i64 44
  %.val18.i = load i32, ptr %i.al, align 4, !tbaa !35
  %i.am = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, i32 noundef %.val18.i) ; 0 uses
  %.val15.i = load i32, ptr %i.s, align 4, !tbaa !22
  %i.an = add nsw i32 %.val15.i, -1
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, i32 noundef %i.an) ; 0 uses
  %i.ap = add nsw i32 %i.ah, %i.af
  %i.aq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.61, i32 noundef %i.ap) ; 0 uses
  %i.ar = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.62, i32 noundef %i.af) ; 0 uses
  %i.as = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.63, i32 noundef %i.ah) ; 0 uses
  %i.at = load ptr, ptr %.val, align 8, !tbaa !29 ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %Cba_ManBoxNumRec.exit.i
  %i.au = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.at) #20
  %i.av = trunc i64 %i.au to i32
  %i.aw = add nsw i32 %i.av, 1624
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %Cba_ManBoxNumRec.exit.i
  %i.ax = phi i32 [ %i.aw, %bb.o ], [ 1624, %Cba_ManBoxNumRec.exit.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !21 ; 2 uses
  %.not32.i.i = icmp eq ptr %i.az, null
  br i1 %.not32.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.az) #20
  %i.bb = trunc i64 %i.ba to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bc = phi i32 [ %i.bb, %bb.q ], [ 0, %bb.p ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !23
  %i.bf = tail call i32 @Abc_NamMemUsed(ptr noundef %i.be) #19
  %i.bg = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !24
  %i.bi = tail call i32 @Abc_NamMemUsed(ptr noundef %i.bh) #19
  %i.bj = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !30
  %i.bl = tail call i32 @Abc_NamMemUsed(ptr noundef %i.bk) #19
  %i.bm = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !44
  %i.bo = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !44
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 1584
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !46
  %i.bs = getelementptr inbounds nuw i8, ptr %.val, i64 1600
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !46
  %i.bu = sext i32 %i.bt to i64
  %i.bv = uitofp i64 %i.bu to double
  %i.bw = fadd double %i.bv, 1.600000e+01
  %i.bx = fptosi double %i.bw to i32
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 1560
  %.val34.i.i = load i32, ptr %i.by, align 8, !tbaa !32
  %i.bz = sext i32 %i.br to i64
  %i.ca = sext i32 %.val34.i.i to i64
  %i.cb = sext i32 %i.bp to i64
  %i.cc = sext i32 %i.bn to i64
  %i.cd = insertelement <4 x i64> poison, i64 %i.cc, i64 0
  %i.ce = insertelement <4 x i64> %i.cd, i64 %i.cb, i64 1
  %i.cf = insertelement <4 x i64> %i.ce, i64 %i.ca, i64 2
  %i.cg = insertelement <4 x i64> %i.cf, i64 %i.bz, i64 3
  %i.ch = uitofp <4 x i64> %i.cg to <4 x double>
  %i.ci = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ch, <4 x double> <double 4.000000e+00, double 4.000000e+00, double 8.000000e+00, double 1.000000e+00>, <4 x double> splat (double 1.600000e+01))
  %i.cj = fptosi <4 x double> %i.ci to <4 x i32>
  %i.ck = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cj)
  %op.rdx = add i32 %i.ck, %i.bx
  %op.rdx161 = add i32 %i.bl, %i.bi
  %op.rdx162 = add i32 %i.bf, %i.ax
  %op.rdx163 = add i32 %op.rdx, %op.rdx161
  %op.rdx164 = add i32 %op.rdx162, %i.bc
  %op.rdx165 = add i32 %op.rdx163, %op.rdx164     ; 2 uses
  %.val.i.i = load i32, ptr %i.s, align 4, !tbaa !22 ; 2 uses
  %.not33.not35.i.i = icmp sgt i32 %.val.i.i, 1
  br i1 %.not33.not35.i.i, label %Cba_ManNtk.exit.lr.ph.i.i, label %Cba_ManMemory.exit.i

Cba_ManNtk.exit.lr.ph.i.i:                        ; preds = %bb.r
  %i.cl = getelementptr i8, ptr %.val, i64 1568
  %.val.i.i20.i = load ptr, ptr %i.cl, align 8, !tbaa !31
  %wide.trip.count.i.i = zext nneg i32 %.val.i.i to i64
  br label %Cba_ManNtk.exit.i.i

Cba_ManNtk.exit.i.i:                              ; preds = %Cba_ManNtk.exit.i.i, %Cba_ManNtk.exit.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 1, %Cba_ManNtk.exit.lr.ph.i.i ], [ %indvars.iv.next.i.i, %Cba_ManNtk.exit.i.i ] ; 2 uses
  %.037.i.i = phi i32 [ %op.rdx165, %Cba_ManNtk.exit.lr.ph.i.i ], [ %op.rdx174, %Cba_ManNtk.exit.i.i ]
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i20.i, i64 %indvars.iv.i.i
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !33 ; 24 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !44
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !44
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !44
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 72
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !44
  %i.cw = sext i32 %i.cv to i64
  %i.cx = sext i32 %i.ct to i64
  %i.cy = sext i32 %i.cr to i64
  %i.cz = sext i32 %i.cp to i64
  %i.da = insertelement <4 x i64> poison, i64 %i.cz, i64 0
  %i.db = insertelement <4 x i64> %i.da, i64 %i.cy, i64 1
  %i.dc = insertelement <4 x i64> %i.db, i64 %i.cx, i64 2
  %i.dd = insertelement <4 x i64> %i.dc, i64 %i.cw, i64 3
  %i.de = uitofp <4 x i64> %i.dd to <4 x double>
  %i.df = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.de, <4 x double> splat (double 4.000000e+00), <4 x double> splat (double 1.600000e+01))
  %i.dg = fptosi <4 x double> %i.df to <4 x i32>
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cn, i64 88
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !46
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cn, i64 104
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !44
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cn, i64 120
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !44
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cn, i64 136
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !44
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cn, i64 152
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !44
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cn, i64 168
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !44
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cn, i64 184
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !44
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cn, i64 200
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !44
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cn, i64 216
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !44
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cn, i64 232
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !44
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cn, i64 248
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !44
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cn, i64 264
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !44
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cn, i64 280
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !44
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cn, i64 296
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !44
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cn, i64 312
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !44
  %i.el = getelementptr inbounds nuw i8, ptr %i.cn, i64 328
  %i.em = load i32, ptr %i.el, align 8, !tbaa !44
  %i.en = getelementptr inbounds nuw i8, ptr %i.cn, i64 344
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !44
  %i.ep = sext i32 %i.eo to i64
  %i.eq = sext i32 %i.em to i64
  %i.er = sext i32 %i.ek to i64
  %i.es = sext i32 %i.ei to i64
  %i.et = sext i32 %i.eg to i64
  %i.eu = sext i32 %i.ee to i64
  %i.ev = sext i32 %i.ec to i64
  %i.ew = sext i32 %i.ea to i64
  %i.ex = sext i32 %i.dy to i64
  %i.ey = sext i32 %i.dw to i64
  %i.ez = sext i32 %i.du to i64
  %i.fa = sext i32 %i.ds to i64
  %i.fb = insertelement <4 x i32> poison, i32 %i.dk, i64 0
  %i.fc = insertelement <4 x i32> %i.fb, i32 %i.dm, i64 1
  %i.fd = insertelement <4 x i32> %i.fc, i32 %i.do, i64 2
  %i.fe = insertelement <4 x i32> %i.fd, i32 %i.dq, i64 3
  %i.ff = sext <4 x i32> %i.fe to <4 x i64>
  %i.fg = shufflevector <4 x i64> %i.ff, <4 x i64> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fh = insertelement <16 x i64> %i.fg, i64 %i.fa, i64 4
  %i.fi = insertelement <16 x i64> %i.fh, i64 %i.ez, i64 5
  %i.fj = insertelement <16 x i64> %i.fi, i64 %i.ey, i64 6
  %i.fk = insertelement <16 x i64> %i.fj, i64 %i.ex, i64 7
  %i.fl = insertelement <16 x i64> %i.fk, i64 %i.ew, i64 8
  %i.fm = insertelement <16 x i64> %i.fl, i64 %i.ev, i64 9
  %i.fn = insertelement <16 x i64> %i.fm, i64 %i.eu, i64 10
  %i.fo = insertelement <16 x i64> %i.fn, i64 %i.et, i64 11
  %i.fp = insertelement <16 x i64> %i.fo, i64 %i.es, i64 12
  %i.fq = insertelement <16 x i64> %i.fp, i64 %i.er, i64 13
  %i.fr = insertelement <16 x i64> %i.fq, i64 %i.eq, i64 14
  %i.fs = insertelement <16 x i64> %i.fr, i64 %i.ep, i64 15
  %i.ft = uitofp <16 x i64> %i.fs to <16 x double>
  %i.fu = tail call <16 x double> @llvm.fmuladd.v16f64(<16 x double> %i.ft, <16 x double> splat (double 4.000000e+00), <16 x double> splat (double 1.600000e+01))
  %i.fv = fptosi <16 x double> %i.fu to <16 x i32> ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cn, i64 360
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !44
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cn, i64 376
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !44
  %i.ga = getelementptr inbounds nuw i8, ptr %i.cn, i64 416
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !44
  %i.gc = sext i32 %i.di to i64
  %i.gd = sext i32 %i.gb to i64
  %i.ge = sext i32 %i.fz to i64
  %i.gf = sext i32 %i.fx to i64
  %i.gg = insertelement <4 x i64> poison, i64 %i.gf, i64 0
  %i.gh = insertelement <4 x i64> %i.gg, i64 %i.ge, i64 1
  %i.gi = insertelement <4 x i64> %i.gh, i64 %i.gd, i64 2
  %i.gj = insertelement <4 x i64> %i.gi, i64 %i.gc, i64 3
  %i.gk = uitofp <4 x i64> %i.gj to <4 x double>
  %i.gl = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gk, <4 x double> <double 4.000000e+00, double 4.000000e+00, double 4.000000e+00, double 1.000000e+00>, <4 x double> splat (double 1.600000e+01))
  %i.gm = fptosi <4 x double> %i.gl to <4 x i32>
  %i.gn = shl nuw <4 x i32> %i.gm, <i32 0, i32 0, i32 1, i32 0>
  %i.go = shufflevector <16 x i32> %i.fv, <16 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = add <4 x i32> %i.go, %i.gn
  %i.gp = shufflevector <4 x i32> %rdx.op, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gq = shufflevector <16 x i32> %i.gp, <16 x i32> %i.fv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.gr = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.gq)
  %i.gs = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dg)
  %op.rdx172 = add i32 %i.gs, 432
  %op.rdx173 = add i32 %i.gr, %.037.i.i
  %op.rdx174 = add i32 %op.rdx172, %op.rdx173     ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %Cba_ManMemory.exit.i, label %Cba_ManNtk.exit.i.i, !llvm.loop !81

Cba_ManMemory.exit.i:                             ; preds = %Cba_ManNtk.exit.i.i, %bb.r
  %.0.lcssa.i.i = phi i32 [ %op.rdx165, %bb.r ], [ %op.rdx174, %Cba_ManNtk.exit.i.i ]
  %i.gt = sitofp i32 %.0.lcssa.i.i to double
  %i.gu = fmul nnan double %i.gt, f0x3EB0000000000000
  %i.gv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.64, double noundef %i.gu) ; 0 uses
  %putchar.i = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.gw = getelementptr i8, ptr %.val, i64 1568   ; 2 uses
  %.val39.i = load i32, ptr %i.s, align 4, !tbaa !22
  %.not.not40.i = icmp sgt i32 %.val39.i, 1
  br i1 %.not.not40.i, label %Cba_ManNtk.exit.lr.ph.i, label %Cba_ManPrintStats.exit

Cba_ManNtk.exit.lr.ph.i:                          ; preds = %Cba_ManMemory.exit.i
  %i.gx = add nuw nsw i32 %.034.ph, 1
  %i.gy = zext nneg i32 %i.gx to i64
  %.val.i23.i141 = load ptr, ptr %i.gw, align 8, !tbaa !31
  %i.gz = getelementptr inbounds nuw i8, ptr %.val.i23.i141, i64 8
  br label %bb.s

Cba_ManNtk.exit.i:                                ; preds = %Cba_NtkPrintStats.exit.i
  %.val.i23.i = load ptr, ptr %i.gw, align 8, !tbaa !31
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %.val.i23.i, i64 %indvars.iv.next.i
  %i.hb = icmp eq i64 %indvars.iv.next.i, %i.gy
  br i1 %i.hb, label %Cba_ManPrintStats.exit, label %bb.s, !llvm.loop !82

bb.s:                                             ; preds = %Cba_ManNtk.exit.lr.ph.i, %Cba_ManNtk.exit.i
  %.in = phi ptr [ %i.gz, %Cba_ManNtk.exit.lr.ph.i ], [ %i.ha, %Cba_ManNtk.exit.i ]
  %indvars.iv.i142 = phi i64 [ 1, %Cba_ManNtk.exit.lr.ph.i ], [ %indvars.iv.next.i, %Cba_ManNtk.exit.i ] ; 2 uses
  %i.hc = load ptr, ptr %.in, align 8, !tbaa !33  ; 11 uses
  %i.hd = trunc nuw nsw i64 %indvars.iv.i142 to i32
  %i.he = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.65, i32 noundef %i.hd) ; 0 uses
  %i.hf = getelementptr i8, ptr %i.hc, i64 28     ; 2 uses
  %.val12.i.i = load i32, ptr %i.hf, align 4, !tbaa !35
  %i.hg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.58, i32 noundef %.val12.i.i) ; 0 uses
  %i.hh = getelementptr i8, ptr %i.hc, i64 44     ; 2 uses
  %.val13.i.i = load i32, ptr %i.hh, align 4, !tbaa !35
  %i.hi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, i32 noundef %.val13.i.i) ; 0 uses
  %i.hj = getelementptr i8, ptr %i.hc, i64 76
  %.val14.i.i = load i32, ptr %i.hj, align 4, !tbaa !35
  %i.hk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.66, i32 noundef %.val14.i.i) ; 0 uses
  %i.hl = getelementptr i8, ptr %i.hc, i64 92     ; 3 uses
  %.val.i.i24.i = load i32, ptr %i.hl, align 4, !tbaa !47
  %.val2.i.i.i = load i32, ptr %i.hf, align 4, !tbaa !35
  %.val3.i.i.i = load i32, ptr %i.hh, align 4, !tbaa !35
  %i.hm = add nsw i32 %.val3.i.i.i, %.val2.i.i.i
  %i.hn = xor i32 %i.hm, -1
  %i.ho = add i32 %.val.i.i24.i, %i.hn
  %i.hp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.61, i32 noundef %i.ho) ; 0 uses
  %i.hq = load i32, ptr %i.hl, align 4, !tbaa !47 ; 3 uses
  %i.hr = icmp sgt i32 %i.hq, 0
  br i1 %i.hr, label %.lr.ph.i.i.i.i, label %Cba_NtkBoxPrimNum.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.s
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hc, i64 96
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !37 ; 2 uses
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.hq to i64 ; 3 uses
  %min.iters.check146 = icmp ult i32 %i.hq, 8
  br i1 %min.iters.check146, label %scalar.ph145.preheader, label %vector.ph147

vector.ph147:                                     ; preds = %.lr.ph.i.i.i.i
  %n.vec148 = and i64 %wide.trip.count.i.i.i.i, 2147483640 ; 3 uses
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph147
  %index150 = phi i64 [ 0, %vector.ph147 ], [ %index.next155, %vector.body149 ] ; 2 uses
  %vec.phi151 = phi <4 x i32> [ zeroinitializer, %vector.ph147 ], [ %i.ia, %vector.body149 ]
  %vec.phi152 = phi <4 x i32> [ zeroinitializer, %vector.ph147 ], [ %i.ib, %vector.body149 ]
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %index150 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  %wide.load153 = load <4 x i8>, ptr %i.hu, align 1, !tbaa !38
  %wide.load154 = load <4 x i8>, ptr %i.hv, align 1, !tbaa !38
  %i.hw = icmp sgt <4 x i8> %wide.load153, splat (i8 3)
  %i.hx = icmp sgt <4 x i8> %wide.load154, splat (i8 3)
  %i.hy = zext <4 x i1> %i.hw to <4 x i32>
  %i.hz = zext <4 x i1> %i.hx to <4 x i32>
  %i.ia = add <4 x i32> %vec.phi151, %i.hy        ; 2 uses
  %i.ib = add <4 x i32> %vec.phi152, %i.hz        ; 2 uses
  %index.next155 = add nuw i64 %index150, 8       ; 2 uses
  %i.ic = icmp eq i64 %index.next155, %n.vec148
  br i1 %i.ic, label %middle.block156, label %vector.body149, !llvm.loop !83

middle.block156:                                  ; preds = %vector.body149
  %bin.rdx157 = add <4 x i32> %i.ib, %i.ia
  %i.id = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx157) ; 2 uses
  %cmp.n158 = icmp eq i64 %n.vec148, %wide.trip.count.i.i.i.i
  br i1 %cmp.n158, label %Cba_NtkBoxPrimNum.exit.i.i, label %scalar.ph145.preheader

scalar.ph145.preheader:                           ; preds = %.lr.ph.i.i.i.i, %middle.block156
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %n.vec148, %middle.block156 ]
  %.09.i.i.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.i.i ], [ %i.id, %middle.block156 ]
  br label %scalar.ph145

scalar.ph145:                                     ; preds = %scalar.ph145.preheader, %scalar.ph145
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %scalar.ph145 ], [ %indvars.iv.i.i.i.i.ph, %scalar.ph145.preheader ] ; 2 uses
  %.09.i.i.i.i = phi i32 [ %i.ii, %scalar.ph145 ], [ %.09.i.i.i.i.ph, %scalar.ph145.preheader ]
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ht, i64 %indvars.iv.i.i.i.i
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !38
  %i.ig = icmp sgt i8 %i.if, 3
  %i.ih = zext i1 %i.ig to i32
  %i.ii = add nuw nsw i32 %.09.i.i.i.i, %i.ih     ; 2 uses
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %Cba_NtkBoxPrimNum.exit.i.i, label %scalar.ph145, !llvm.loop !84

Cba_NtkBoxPrimNum.exit.i.i:                       ; preds = %scalar.ph145, %middle.block156, %bb.s
  %.0.lcssa.i.i.i.i = phi i32 [ 0, %bb.s ], [ %i.id, %middle.block156 ], [ %i.ii, %scalar.ph145 ]
  %i.ij = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.62, i32 noundef %.0.lcssa.i.i.i.i) ; 0 uses
  %i.ik = load i32, ptr %i.hl, align 4, !tbaa !47 ; 3 uses
  %i.il = icmp sgt i32 %i.ik, 0
  br i1 %i.il, label %.lr.ph.i.i.i.i.i, label %Cba_NtkBoxUserNum.exit.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %Cba_NtkBoxPrimNum.exit.i.i
  %i.im = getelementptr inbounds nuw i8, ptr %i.hc, i64 96
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !37 ; 2 uses
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %i.ik to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.ik, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.iu, %vector.body ]
  %vec.phi143 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.iv, %vector.body ]
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 %index ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %wide.load = load <4 x i8>, ptr %i.io, align 1, !tbaa !38
  %wide.load144 = load <4 x i8>, ptr %i.ip, align 1, !tbaa !38
  %i.iq = icmp eq <4 x i8> %wide.load, splat (i8 3)
  %i.ir = icmp eq <4 x i8> %wide.load144, splat (i8 3)
  %i.is = zext <4 x i1> %i.iq to <4 x i32>
  %i.it = zext <4 x i1> %i.ir to <4 x i32>
  %i.iu = add <4 x i32> %vec.phi, %i.is           ; 2 uses
  %i.iv = add <4 x i32> %vec.phi143, %i.it        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.iw = icmp eq i64 %index.next, %n.vec
  br i1 %i.iw, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.iv, %i.iu
  %i.ix = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i.i.i
  br i1 %cmp.n, label %Cba_NtkBoxUserNum.exit.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %indvars.iv.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %n.vec, %middle.block ]
  %.09.i.i.i.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ix, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %scalar.ph ], [ %indvars.iv.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.09.i.i.i.i.i = phi i32 [ %i.jc, %scalar.ph ], [ %.09.i.i.i.i.i.ph, %scalar.ph.preheader ]
  %i.iy = getelementptr inbounds nuw i8, ptr %i.in, i64 %indvars.iv.i.i.i.i.i
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !38
  %i.ja = icmp eq i8 %i.iz, 3
  %i.jb = zext i1 %i.ja to i32
  %i.jc = add nuw nsw i32 %.09.i.i.i.i.i, %i.jb   ; 2 uses
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %Cba_NtkBoxUserNum.exit.i.i, label %scalar.ph, !llvm.loop !86

Cba_NtkBoxUserNum.exit.i.i:                       ; preds = %scalar.ph, %middle.block, %Cba_NtkBoxPrimNum.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi i32 [ 0, %Cba_NtkBoxPrimNum.exit.i.i ], [ %i.ix, %middle.block ], [ %i.jc, %scalar.ph ]
  %i.jd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.63, i32 noundef %.0.lcssa.i.i.i.i.i) ; 0 uses
  %.val17.i.i = load ptr, ptr %i.hc, align 8, !tbaa !45
  %i.je = getelementptr i8, ptr %i.hc, i64 12
  %.val18.i.i = load i32, ptr %i.je, align 4, !tbaa !42
  %i.jf = getelementptr i8, ptr %.val17.i.i, i64 16
  %.val17.val.i.i = load ptr, ptr %i.jf, align 8, !tbaa !23
  %i.jg = tail call ptr @Abc_NamStr(ptr noundef %.val17.val.i.i, i32 noundef %.val18.i.i) #19
  %i.jh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.67, ptr noundef %i.jg) ; 0 uses
  %i.ji = getelementptr i8, ptr %i.hc, i64 364
  %.val.i25.i = load i32, ptr %i.ji, align 4, !tbaa !35
  %.not.i26.i = icmp eq i32 %.val.i25.i, 0
  br i1 %.not.i26.i, label %Cba_NtkPrintStats.exit.i, label %Cba_ManNtkIsOk.exit.i.i.i.i

Cba_ManNtkIsOk.exit.i.i.i.i:                      ; preds = %Cba_NtkBoxUserNum.exit.i.i
  %i.jj = getelementptr i8, ptr %i.hc, i64 368
  %.val10.i.i = load ptr, ptr %i.jj, align 8, !tbaa !36
  %i.jk = load i32, ptr %.val10.i.i, align 4, !tbaa !9 ; 3 uses
  %.val11.i.i = load ptr, ptr %i.hc, align 8, !tbaa !45 ; 2 uses
  %i.jl = icmp sgt i32 %i.jk, 0
  tail call void @llvm.assume(i1 %i.jl)
  %i.jm = getelementptr i8, ptr %.val11.i.i, i64 1564
  %.val.i.i.i.i27.i = load i32, ptr %i.jm, align 4, !tbaa !22
  %.not.i.i.i28.i = icmp slt i32 %i.jk, %.val.i.i.i.i27.i
  tail call void @llvm.assume(i1 %.not.i.i.i28.i)
  %i.jn = getelementptr i8, ptr %.val11.i.i, i64 1568
  %.val.i.i.i29.i = load ptr, ptr %i.jn, align 8, !tbaa !31
  %i.jo = zext nneg i32 %i.jk to i64
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i29.i, i64 %i.jo
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !33 ; 2 uses
  %.val15.i.i = load ptr, ptr %i.jq, align 8, !tbaa !45
  %i.jr = getelementptr i8, ptr %i.jq, i64 12
end_hunk_0
