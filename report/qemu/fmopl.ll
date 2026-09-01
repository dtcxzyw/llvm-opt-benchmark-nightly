Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/fmopl?download=true
inline.NumInlined: 57
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@OPLCreate:bb.a
  %i.cj = fptosi double %i.ci to i32
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv94.i.i ; 2 uses
  store i32 %i.cj, ptr %i.ck, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16384
  store i32 %i.cd, ptr %i.cl, align 4
  %indvars.iv.next95.i.i = or disjoint i64 %indvars.iv94.i.i, 1 ; 2 uses
  %i.cm = trunc i64 %indvars.iv.next95.i.i to i32 ; 2 uses
  %i.cn = sub nuw nsw i32 4095, %i.cm
  %i.co = uitofp nneg i32 %i.cn to double
  %i.cp = fmul nnan double %i.co, f0x3F30000000000000
  %i.cq = tail call double @pow(double noundef %i.cp, double noundef 8.000000e+00) #13
  %i.cr = fmul double %i.cq, 4.096000e+03
  %i.cs = fptosi double %i.cr to i32
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.next95.i.i ; 2 uses
  store i32 %i.cs, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16384
  store i32 %i.cm, ptr %i.cu, align 4
  %indvars.iv.next95.i.i.1 = add nuw nsw i64 %indvars.iv94.i.i, 2 ; 2 uses
  %exitcond97.not.i.i.1 = icmp eq i64 %indvars.iv.next95.i.i.1, 4096
  br i1 %exitcond97.not.i.i.1, label %bb.p, label %.preheader71.i.i, !llvm.loop !12

bb.p:                                             ; preds = %.preheader71.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.l, i64 32768
  store i32 4095, ptr %i.cv, align 4
  %i.cw = load ptr, ptr @AMS_TABLE, align 8
  br label %bb.q

.preheader.i.i:                                   ; preds = %bb.q
  %i.cx = load ptr, ptr @VIB_TABLE, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.q, %bb.p
  %indvars.iv98.i.i = phi i64 [ 0, %bb.p ], [ %indvars.iv.next99.i.i, %bb.q ] ; 3 uses
  %i.cy = trunc nuw nsw i64 %indvars.iv98.i.i to i32
  %i.cz = uitofp nneg i32 %i.cy to double
  %i.da = fmul nnan double %i.cz, f0x401921FB54442D18
  %i.db = fmul nnan double %i.da, f0x3F60000000000000
  %i.dc = tail call double @sin(double noundef %i.db) #13
  %i.dd = fadd double %i.dc, 1.000000e+00
  %i.de = fmul double %i.dd, 5.000000e-01         ; 2 uses
  %i.df = fmul double %i.de, f0x4045555555555555
  %i.dg = fptosi double %i.df to i32
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv98.i.i ; 2 uses
  store i32 %i.dg, ptr %i.dh, align 4
  %i.di = fmul double %i.de, f0x4069999999999999
  %i.dj = fptosi double %i.di to i32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 2048
  store i32 %i.dj, ptr %i.dk, align 4
  %indvars.iv.next99.i.i = add nuw nsw i64 %indvars.iv98.i.i, 1 ; 2 uses
  %exitcond101.not.i.i = icmp eq i64 %indvars.iv.next99.i.i, 512
  br i1 %exitcond101.not.i.i, label %.preheader.i.i, label %bb.q, !llvm.loop !13

bb.r:                                             ; preds = %bb.r, %.preheader.i.i
  %indvars.iv102.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next103.i.i, %bb.r ] ; 3 uses
  %i.dl = trunc nuw nsw i64 %indvars.iv102.i.i to i32
  %i.dm = uitofp nneg i32 %i.dl to double
  %i.dn = fmul nnan double %i.dm, f0x401921FB54442D18
  %i.do = fmul nnan double %i.dn, f0x3F60000000000000
  %i.dp = tail call double @sin(double noundef %i.do) #13
  %i.dq = fmul double %i.dp, 1.536000e+01
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %indvars.iv102.i.i ; 2 uses
  %i.ds = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> <double 7.000000e-02, double 1.400000e-01>, <2 x double> splat (double 2.560000e+02))
  %i.dv = fptosi <2 x double> %i.du to <2 x i32>  ; 2 uses
  %i.dw = extractelement <2 x i32> %i.dv, i64 0
  store i32 %i.dw, ptr %i.dr, align 4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 2048
  %i.dy = extractelement <2 x i32> %i.dv, i64 1
  store i32 %i.dy, ptr %i.dx, align 4
  %indvars.iv.next103.i.i = add nuw nsw i64 %indvars.iv102.i.i, 1 ; 2 uses
  %exitcond105.not.i.i = icmp eq i64 %indvars.iv.next103.i.i, 512
  br i1 %exitcond105.not.i.i, label %.loopexit, label %bb.r, !llvm.loop !14

.loopexit.sink.split.sink.split.i.i:              ; preds = %bb.f, %bb.d
  %.sink109.i.i = phi ptr [ %i.f, %bb.f ], [ %i.d, %bb.d ]
  %.sink.ph.i.i = phi ptr [ %i.h, %bb.f ], [ %i.f, %bb.d ]
  tail call void @free(ptr noundef nonnull %.sink109.i.i) #13
  br label %.loopexit.sink.split.i.i

.loopexit.sink.split.i.i:                         ; preds = %.loopexit.sink.split.sink.split.i.i, %bb.c
  %.sink.i.i = phi ptr [ %i.d, %bb.c ], [ %.sink.ph.i.i, %.loopexit.sink.split.sink.split.i.i ]
  tail call void @free(ptr noundef nonnull %.sink.i.i) #13
  br label %OPL_LockTable.exit

OPL_LockTable.exit:                               ; preds = %bb.b, %.loopexit.sink.split.i.i
  store i32 %i.a, ptr @num_lock, align 4
  br label %OPLResetChip.exit

.loopexit:                                        ; preds = %bb.r, %bb.a
  %calloc = tail call dereferenceable_or_null(7200) ptr @calloc(i64 1, i64 7200) ; 36 uses
  %i.dz = icmp eq ptr %calloc, null
  br i1 %i.dz, label %OPLResetChip.exit, label %vector.ph

vector.ph:                                        ; preds = %.loopexit
  %i.ea = getelementptr inbounds nuw i8, ptr %calloc, i64 4824
  %i.eb = getelementptr inbounds nuw i8, ptr %calloc, i64 48 ; 4 uses
  store ptr %i.ea, ptr %i.eb, align 8
  store i32 %0, ptr %calloc, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %calloc, i64 4
  store i32 %1, ptr %i.ec, align 4
  %i.ed = getelementptr inbounds nuw i8, ptr %calloc, i64 56 ; 4 uses
  store i32 9, ptr %i.ed, align 8
  %.not.i = icmp eq i32 %1, 0                     ; 2 uses
  %.pre27.i = sitofp i32 %0 to double             ; 3 uses
  %i.ee = sitofp i32 %1 to double                 ; 2 uses
  %i.ef = fdiv double %.pre27.i, %i.ee
  %i.eg = fdiv double %i.ef, 7.200000e+01
  %i.eh = select i1 %.not.i, double 0.000000e+00, double %i.eg ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  store double %i.eh, ptr %i.ei, align 8
  %i.ej = fdiv double %.pre27.i, 7.200000e+01
  %i.ek = fdiv double 1.000000e+00, %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %calloc, i64 16
  store double %i.ek, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %calloc, i64 368 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %calloc, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.en, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, i8 0, i64 16, i1 false)
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.eh, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.eo = add nuw i64 %index, 4                   ; 2 uses
  %i.ep = and <4 x i32> %vec.ind, splat (i32 3)
  %i.eq = uitofp nneg <4 x i32> %i.ep to <4 x double>
  %i.er = tail call nnan <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.eq, <4 x double> splat (double 2.500000e-01), <4 x double> splat (double 1.000000e+00))
  %i.es = fmul <4 x double> %broadcast.splat, %i.er
  %i.et = lshr <4 x i32> %vec.ind, splat (i32 2)
  %i.eu = add nsw <4 x i32> %i.et, splat (i32 -1)
  %i.ev = shl nuw nsw <4 x i32> splat (i32 1), %i.eu
  %i.ew = uitofp nneg <4 x i32> %i.ev to <4 x double>
  %i.ex = fmul <4 x double> %i.es, %i.ew
  %i.ey = fmul <4 x double> %i.ex, splat (double f0x41B0000000000000) ; 2 uses
  %i.ez = fdiv <4 x double> %i.ey, splat (double 1.412800e+05)
  %i.fa = fptosi <4 x double> %i.ez to <4 x i32>
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.eo
  store <4 x i32> %i.fa, ptr %i.fb, align 4
  %i.fc = fdiv <4 x double> %i.ey, splat (double 1.956000e+06)
  %i.fd = fptosi <4 x double> %i.fc to <4 x i32>
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.eo
  store <4 x i32> %i.fd, ptr %i.fe, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ff = icmp eq i64 %index.next, 56
  br i1 %i.ff, label %init_timetables.exit.i, label %vector.body, !llvm.loop !15

init_timetables.exit.i:                           ; preds = %vector.body
  %i.fg = fmul double %i.eh, 1.638400e+04
  %i.fh = fmul double %i.fg, f0x41B0000000000000
  %i.fi = getelementptr inbounds nuw i8, ptr %calloc, i64 304
  %i.fj = fdiv double %i.fh, 1.956000e+06
  %i.fk = fptosi double %i.fj to i32
  %i.fl = getelementptr inbounds nuw i8, ptr %calloc, i64 608
  store <4 x i32> splat (i32 268435455), ptr %i.fi, align 8
  %i.fm = insertelement <4 x i32> poison, i32 %i.fk, i64 0
  %i.fn = shufflevector <4 x i32> %i.fm, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  store <4 x i32> %i.fn, ptr %i.fl, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %calloc, i64 320
  %i.fp = getelementptr inbounds nuw i8, ptr %calloc, i64 624
  store <4 x i32> splat (i32 268435455), ptr %i.fo, align 8
  store <4 x i32> %i.fn, ptr %i.fp, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %calloc, i64 336
  %i.fr = getelementptr inbounds nuw i8, ptr %calloc, i64 640
  store <4 x i32> splat (i32 268435455), ptr %i.fq, align 8
  store <4 x i32> %i.fn, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %calloc, i64 352
  %i.ft = getelementptr inbounds nuw i8, ptr %calloc, i64 656
  store <4 x i32> splat (i32 268435455), ptr %i.fs, align 8
  store <4 x i32> %i.fn, ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %calloc, i64 672
  %broadcast.splatinsert40 = insertelement <4 x double> poison, double %i.eh, i64 0
  %broadcast.splat41 = shufflevector <4 x double> %broadcast.splatinsert40, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %init_timetables.exit.i
  %index43 = phi i64 [ 0, %init_timetables.exit.i ], [ %index.next45, %vector.body42 ] ; 2 uses
  %vec.ind44 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %init_timetables.exit.i ], [ %vec.ind.next46, %vector.body42 ] ; 2 uses
  %i.fv = uitofp nneg <4 x i32> %vec.ind44 to <4 x double>
  %i.fw = fmul <4 x double> %broadcast.splat41, %i.fv
  %i.fx = fmul <4 x double> %i.fw, splat (double 1.600000e+01)
  %i.fy = fmul <4 x double> %i.fx, splat (double 1.280000e+02)
  %i.fz = fmul <4 x double> %i.fy, splat (double 5.000000e-01)
  %i.ga = fptoui <4 x double> %i.fz to <4 x i32>
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %index43
  store <4 x i32> %i.ga, ptr %i.gb, align 4
  %index.next45 = add nuw i64 %index43, 4         ; 2 uses
  %vec.ind.next46 = add <4 x i32> %vec.ind44, splat (i32 4)
  %i.gc = icmp eq i64 %index.next45, 1024
  br i1 %i.gc, label %middle.block47, label %vector.body42, !llvm.loop !19

middle.block47:                                   ; preds = %vector.body42
  br i1 %.not.i, label %.lr.ph.i.i, label %bb.s

bb.s:                                             ; preds = %middle.block47
  %i.gd = insertelement <2 x double> <double poison, double f0x41F0000000000000>, double %.pre27.i, i64 0
  %i.ge = insertelement <2 x double> <double 3.600000e+06, double poison>, double %i.ee, i64 1
  %i.gf = fdiv nnan <2 x double> %i.gd, %i.ge     ; 2 uses
  %2 = shufflevector <2 x double> %i.gf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %foldExtExtBinop = fmul nnan <2 x double> %2, <double 3.700000e+00, double 6.400000e+00>
  %3 = shufflevector <2 x double> %i.gf, <2 x double> poison, <2 x i32> zeroinitializer
  %4 = fmul <2 x double> %3, %foldExtExtBinop
  %5 = fptosi <2 x double> %4 to <2 x i32>
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %middle.block47, %bb.s
  %6 = phi <2 x i32> [ %5, %bb.s ], [ zeroinitializer, %middle.block47 ] ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %calloc, i64 4788
  %8 = extractelement <2 x i32> %6, i64 0
  store i32 %8, ptr %7, align 4
  %i.gg = getelementptr inbounds nuw i8, ptr %calloc, i64 4796
  %9 = extractelement <2 x i32> %6, i64 1
  store i32 %9, ptr %i.gg, align 4
  %i.gh = getelementptr inbounds nuw i8, ptr %calloc, i64 28
  store i32 0, ptr %i.gh, align 4
  %i.gi = getelementptr inbounds nuw i8, ptr %calloc, i64 25 ; 5 uses
  store i8 0, ptr %i.gi, align 1
  %i.gj = getelementptr inbounds nuw i8, ptr %calloc, i64 4800
  store i8 0, ptr %i.gj, align 8
  %i.gk = load ptr, ptr @SIN_TABLE, align 8       ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.i
  %indvars.iv.i.i28 = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i29, %bb.t ] ; 3 uses
  %i.gl = load ptr, ptr %i.eb, align 8
  %i.gm = getelementptr inbounds nuw [264 x i8], ptr %i.gl, i64 %indvars.iv.i.i28
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 96
  store ptr %i.gk, ptr %i.gn, align 8
  %i.go = load ptr, ptr %i.eb, align 8
  %i.gp = getelementptr inbounds nuw [264 x i8], ptr %i.go, i64 %indvars.iv.i.i28
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 200
  store ptr %i.gk, ptr %i.gq, align 8
  %indvars.iv.next.i.i29 = add nuw nsw i64 %indvars.iv.i.i28, 1 ; 2 uses
  %i.gr = load i32, ptr %i.ed, align 8
  %i.gs = sext i32 %i.gr to i64
  %i.gt = icmp slt i64 %indvars.iv.next.i.i29, %i.gs
  br i1 %i.gt, label %bb.t, label %OPLWriteReg.exit.i, !llvm.loop !20

OPLWriteReg.exit.i:                               ; preds = %bb.t
  %.pre.i30 = load i8, ptr %i.gi, align 1         ; 5 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %calloc, i64 32
  store i32 1024, ptr %i.gu, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %calloc, i64 36
  store i32 4096, ptr %i.gv, align 4
  %.not.i204.i.i = icmp sgt i8 %.pre.i30, -1
  %i.gw = getelementptr inbounds nuw i8, ptr %calloc, i64 26 ; 3 uses
  br i1 %.not.i204.i.i, label %OPL_STATUS_RESET.exit206.thread245.i.i, label %bb.u

bb.u:                                             ; preds = %OPLWriteReg.exit.i
  %i.gx = load i8, ptr %i.gw, align 2
  %i.gy = and i8 %i.gx, %.pre.i30
  %.not5.i205.i.i = icmp eq i8 %i.gy, 0
  br i1 %.not5.i205.i.i, label %OPL_STATUS_RESET.exit206.thread.i.i, label %OPL_STATUS_RESET.exit206.i.i

OPL_STATUS_RESET.exit206.thread.i.i:              ; preds = %bb.u
  %i.gz = and i8 %.pre.i30, 127                   ; 2 uses
  store i8 %i.gz, ptr %i.gi, align 1
  br label %OPL_STATUS_RESET.exit206.thread245.i.i

OPL_STATUS_RESET.exit206.i.i:                     ; preds = %bb.u
  store i8 121, ptr %i.gw, align 2
  br label %bb.w

OPL_STATUS_RESET.exit206.thread245.i.i:           ; preds = %OPL_STATUS_RESET.exit206.thread.i.i, %OPLWriteReg.exit.i
  %i.ha = phi i8 [ %i.gz, %OPL_STATUS_RESET.exit206.thread.i.i ], [ %.pre.i30, %OPLWriteReg.exit.i ] ; 2 uses
  store i8 121, ptr %i.gw, align 2
  %i.hb = and i8 %i.ha, 121
  %.not5.i.i.i.i = icmp eq i8 %i.hb, 0
  br i1 %.not5.i.i.i.i, label %OPL_STATUSMASK_SET.exit.i.i, label %bb.v

bb.v:                                             ; preds = %OPL_STATUS_RESET.exit206.thread245.i.i
  %i.hc = or disjoint i8 %i.ha, -128              ; 2 uses
  store i8 %i.hc, ptr %i.gi, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %OPL_STATUS_RESET.exit206.i.i
  %.ph.i.i.i = phi i8 [ %i.hc, %bb.v ], [ %.pre.i30, %OPL_STATUS_RESET.exit206.i.i ] ; 2 uses
  %i.hd = and i8 %.ph.i.i.i, 121
  %.not5.i4.i.i.i = icmp eq i8 %i.hd, 0
  br i1 %.not5.i4.i.i.i, label %bb.x, label %OPL_STATUSMASK_SET.exit.i.i

bb.x:                                             ; preds = %bb.w
  %i.he = and i8 %.ph.i.i.i, 6
  store i8 %i.he, ptr %i.gi, align 1
  br label %OPL_STATUSMASK_SET.exit.i.i

OPL_STATUSMASK_SET.exit.i.i:                      ; preds = %bb.x, %bb.w, %OPL_STATUS_RESET.exit206.thread245.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %calloc, i64 40 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %calloc, i64 41 ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 1
  %.not197.i.i = icmp eq i8 %i.hh, 0
  br i1 %.not197.i.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %OPL_STATUSMASK_SET.exit.i.i
  store i8 0, ptr %i.hg, align 1
  %i.hi = getelementptr inbounds nuw i8, ptr %calloc, i64 4808
  %i.hj = load ptr, ptr %i.hi, align 8            ; 2 uses
  %.not199.i.i = icmp eq ptr %i.hj, null
  br i1 %.not199.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hk = getelementptr inbounds nuw i8, ptr %calloc, i64 4816
  %i.hl = load ptr, ptr %i.hk, align 8
  tail call void %i.hj(ptr noundef %i.hl, i32 noundef 1, double noundef 0.000000e+00) #13, !inline_history !21
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %OPL_STATUSMASK_SET.exit.i.i
  %i.hm = load i8, ptr %i.hf, align 8
  %.not200.i.i = icmp eq i8 %i.hm, 0
  br i1 %.not200.i.i, label %OPLWriteReg.exit26.i.preheader, label %bb.ab

OPLWriteReg.exit26.i.preheader:                   ; preds = %bb.ac, %bb.ab, %bb.aa
  br label %OPLWriteReg.exit26.i

bb.ab:                                            ; preds = %bb.aa
  store i8 0, ptr %i.hf, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %calloc, i64 4808
  %i.ho = load ptr, ptr %i.hn, align 8            ; 2 uses
  %.not202.i.i = icmp eq ptr %i.ho, null
  br i1 %.not202.i.i, label %OPLWriteReg.exit26.i.preheader, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hp = getelementptr inbounds nuw i8, ptr %calloc, i64 4816
  %i.hq = load ptr, ptr %i.hp, align 8
  tail call void %i.ho(ptr noundef %i.hq, i32 noundef 0, double noundef 0.000000e+00) #13, !inline_history !21
  br label %OPLWriteReg.exit26.i.preheader

.preheader.i:                                     ; preds = %OPLWriteReg.exit26.i
  %i.hr = load i32, ptr %i.ed, align 8
  %i.hs = icmp sgt i32 %i.hr, 0
  br i1 %i.hs, label %.lr.ph.i, label %OPLResetChip.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ht = load ptr, ptr @SIN_TABLE, align 8       ; 2 uses
  br label %bb.ad

OPLWriteReg.exit26.i:                             ; preds = %OPLWriteReg.exit26.i.preheader, %OPLWriteReg.exit26.i
  %.027.i = phi i32 [ %i.hu, %OPLWriteReg.exit26.i ], [ 255, %OPLWriteReg.exit26.i.preheader ] ; 3 uses
  tail call fastcc void @OPLWriteReg(ptr noundef nonnull %calloc, i32 noundef %.027.i, i32 noundef 0)
  %i.hu = add nsw i32 %.027.i, -1
  %i.hv = icmp samesign ugt i32 %.027.i, 32
  br i1 %i.hv, label %OPLWriteReg.exit26.i, label %.preheader.i, !llvm.loop !22

bb.ad:                                            ; preds = %bb.ad, %.lr.ph.i
  %indvars.iv.i26 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i27, %bb.ad ] ; 2 uses
  %i.hw = load ptr, ptr %i.eb, align 8
  %i.hx = getelementptr inbounds nuw [264 x i8], ptr %i.hw, i64 %indvars.iv.i26 ; 8 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 96
  store ptr %i.ht, ptr %i.hy, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 68
  store i32 536870912, ptr %i.hz, align 4
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 72
  store i32 536870913, ptr %i.ia, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 76
  store i32 0, ptr %i.ib, align 4
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hx, i64 200
  store ptr %i.ht, ptr %i.ic, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.hx, i64 172
  store i32 536870912, ptr %i.id, align 4
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hx, i64 176
  store i32 536870913, ptr %i.ie, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.hx, i64 180
  store i32 0, ptr %i.if, align 4
  %indvars.iv.next.i27 = add nuw nsw i64 %indvars.iv.i26, 1 ; 2 uses
  %i.ig = load i32, ptr %i.ed, align 8
  %i.ih = sext i32 %i.ig to i64
  %i.ii = icmp slt i64 %indvars.iv.next.i27, %i.ih
  br i1 %i.ii, label %bb.ad, label %OPLResetChip.exit, !llvm.loop !23

OPLResetChip.exit:                                ; preds = %bb.ad, %.preheader.i, %OPL_LockTable.exit, %.loopexit
  %.0 = phi ptr [ null, %.loopexit ], [ null, %OPL_LockTable.exit ], [ %calloc, %.preheader.i ], [ %calloc, %bb.ad ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @OPLDestroy(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @num_lock, align 4         ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %i.a, -1                         ; 2 uses
  store i32 %i.b, ptr @num_lock, align 4
  %.not1.i = icmp eq i32 %i.b, 0
  br i1 %.not1.i, label %.thread.i, label %OPL_UnLockTable.exit

.thread.i:                                        ; preds = %bb.b, %bb.a
  store ptr null, ptr @cur_chip, align 8
  %i.c = load ptr, ptr @ENV_CURVE, align 8
  tail call void @g_free(ptr noundef %i.c) #13
  %i.d = load ptr, ptr @TL_TABLE, align 8
  tail call void @free(ptr noundef %i.d) #13
  %i.e = load ptr, ptr @SIN_TABLE, align 8
  tail call void @free(ptr noundef %i.e) #13
  %i.f = load ptr, ptr @AMS_TABLE, align 8
  tail call void @free(ptr noundef %i.f) #13
  %i.g = load ptr, ptr @VIB_TABLE, align 8
  tail call void @free(ptr noundef %i.g) #13
  br label %OPL_UnLockTable.exit

OPL_UnLockTable.exit:                             ; preds = %bb.b, %.thread.i
  tail call void @free(ptr noundef %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
end_hunk_0
