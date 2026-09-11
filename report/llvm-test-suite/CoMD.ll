Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/CoMD?download=true
inline.NumInlined: 20
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@main:bb.a
  %i.du = load double, ptr %i.dt, align 8, !tbaa !65
  %i.dv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cy, ptr noundef nonnull @.str.23, double noundef %i.dq, double noundef %i.ds, double noundef %i.du) #12 ; 0 uses
  call void @printSeparator(ptr noundef %i.cy) #12
  %fwrite69.i = call i64 @fwrite(ptr nonnull @.str.24, i64 21, i64 1, ptr %i.cy) ; 0 uses
  %i.dw = load ptr, ptr %i.q, align 8, !tbaa !70  ; 3 uses
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !7
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !7
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !7
  %i.ec = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cy, ptr noundef nonnull @.str.25, i32 noundef %i.dx, i32 noundef %i.dz, i32 noundef %i.eb) #12 ; 0 uses
  %i.ed = load ptr, ptr %i.bn, align 8, !tbaa !71 ; 3 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !7  ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !7  ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !7  ; 2 uses
  %i.ej = mul nsw i32 %i.eg, %i.ee
  %i.ek = mul nsw i32 %i.ej, %i.ei
  %i.el = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cy, ptr noundef nonnull @.str.26, i32 noundef %i.ee, i32 noundef %i.eg, i32 noundef %i.ei, i32 noundef %i.ek) #12 ; 0 uses
  %i.em = load ptr, ptr %i.bn, align 8, !tbaa !71 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 72
  %i.eo = load double, ptr %i.en, align 8, !tbaa !65
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 80
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !65
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 88
  %i.es = load double, ptr %i.er, align 8, !tbaa !65
  %i.et = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cy, ptr noundef nonnull @.str.27, double noundef %i.eo, double noundef %i.eq, double noundef %i.es) #12 ; 0 uses
  %i.eu = load ptr, ptr %i.bn, align 8, !tbaa !71 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 72
  %i.ew = load ptr, ptr %i.aa, align 8, !tbaa !54
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !58 ; 2 uses
  %i.ey = load <2 x double>, ptr %i.ev, align 8, !tbaa !65
  %i.ez = insertelement <2 x double> poison, double %i.ex, i64 0
  %i.fa = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fb = fdiv <2 x double> %i.ey, %i.fa          ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eu, i64 88
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !65
  %i.fe = fdiv double %i.fd, %i.ex
  %i.ff = extractelement <2 x double> %i.fb, i64 0
  %i.fg = extractelement <2 x double> %i.fb, i64 1
  %i.fh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cy, ptr noundef nonnull @.str.28, double noundef %i.ff, double noundef %i.fg, double noundef %i.fe) #12 ; 0 uses
  %i.fi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cy, ptr noundef nonnull @.str.29, i32 noundef %i.da, i32 noundef 64) #12 ; 0 uses
  call void @printSeparator(ptr noundef %i.cy) #12
  %fwrite70.i = call i64 @fwrite(ptr nonnull @.str.30, i64 17, i64 1, ptr %i.cy) ; 0 uses
  %i.fj = load ptr, ptr %i.aa, align 8, !tbaa !54 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 48
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !76
  call void %i.fl(ptr noundef %i.cy, ptr noundef %i.fj) #12, !inline_history !27
  %i.fm = load ptr, ptr %i.bm, align 8, !tbaa !20 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %i.fo = load ptr, ptr %i.bn, align 8, !tbaa !71 ; 3 uses
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !7  ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !7  ; 2 uses
  %i.fs = mul nsw i32 %i.fr, %i.fp
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !7  ; 2 uses
  %i.fv = add nsw i32 %i.fp, 2
  %i.fw = add nsw i32 %i.fr, 2
  %i.fx = mul nsw i32 %i.fw, %i.fv
  %i.fy = add nsw i32 %i.fu, 2
  %i.fz = load i32, ptr %i.fm, align 8, !tbaa !77
  %i.ga = load i32, ptr %i.fn, align 4, !tbaa !24
  %i.gb = mul nsw i32 %i.fx, %i.fy
  %i.gc = mul nsw i32 %i.fs, %i.fu
  %i.gd = mul nsw i32 %i.fz, 88
  %i.ge = mul nsw i32 %i.ga, 88
  %i.gf = insertelement <4 x i32> poison, i32 %i.ge, i64 0
  %i.gg = insertelement <4 x i32> %i.gf, i32 %i.gd, i64 1
  %i.gh = insertelement <4 x i32> %i.gg, i32 %i.gc, i64 2
  %i.gi = insertelement <4 x i32> %i.gh, i32 %i.gb, i64 3
  %i.gj = sitofp <4 x i32> %i.gi to <4 x float>
  %i.gk = fmul nnan <4 x float> %i.gj, <float 1.000000e+00, float 1.000000e+00, float 5.632000e+03, float 5.632000e+03>
  %i.gl = fmul nnan <4 x float> %i.gk, splat (float f0x3A800000)
  %i.gm = fmul nnan <4 x float> %i.gl, splat (float f0x3A800000)
  call void @printSeparator(ptr noundef %i.cy) #12
  %fwrite71.i = call i64 @fwrite(ptr nonnull @.str.31, i64 14, i64 1, ptr %i.cy) ; 0 uses
  %i.gn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cy, ptr noundef nonnull @.str.32, i32 noundef 88) #12 ; 0 uses
  %i.go = fpext <4 x float> %i.gm to <4 x double> ; 4 uses
  %i.gp = extractelement <4 x double> %i.go, i64 0
  %i.gq = extractelement <4 x double> %i.go, i64 1
  %i.gr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cy, ptr noundef nonnull @.str.33, double noundef %i.gp, double noundef %i.gq) #12 ; 0 uses
  %i.gs = extractelement <4 x double> %i.go, i64 2
  %i.gt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cy, ptr noundef nonnull @.str.34, double noundef %i.gs) #12 ; 0 uses
  %i.gu = extractelement <4 x double> %i.go, i64 3
  %i.gv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cy, ptr noundef nonnull @.str.35, double noundef %i.gu) #12 ; 0 uses
  %i.gw = call i32 @fflush(ptr noundef %i.cy)     ; 0 uses
  br label %printSimulationDataYaml.exit

printSimulationDataYaml.exit:                     ; preds = %initSimulation.exit, %bb.q
  %i.gx = load ptr, ptr %i.bm, align 8, !tbaa !20 ; 9 uses
  store i32 0, ptr %i.gx, align 8, !tbaa !77
  %i.gy = load ptr, ptr %i.bn, align 8, !tbaa !71 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 12
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !79 ; 3 uses
  %i.hb = icmp sgt i32 %i.ha, 0
  br i1 %i.hb, label %.lr.ph.i.i, label %sumAtoms.exit.i

.lr.ph.i.i:                                       ; preds = %printSimulationDataYaml.exit
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 120
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !80 ; 8 uses
  %wide.trip.count.i.i = zext nneg i32 %i.ha to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.ha, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %scevgep = getelementptr i8, ptr %i.gx, i64 4
  %i.he = shl nuw nsw i64 %wide.trip.count.i.i, 2
  %scevgep36 = getelementptr i8, ptr %i.hd, i64 %i.he
  %bound0 = icmp ult ptr %i.gx, %scevgep36
  %bound1 = icmp ult ptr %i.hd, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.hh, %vector.body ]
  %vec.phi37 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.hi, %vector.body ]
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %index ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %wide.load = load <4 x i32>, ptr %i.hf, align 4, !tbaa !7, !alias.scope !81
  %wide.load38 = load <4 x i32>, ptr %i.hg, align 4, !tbaa !7, !alias.scope !81
  %i.hh = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.hi = add <4 x i32> %wide.load38, %vec.phi37  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hj = icmp eq i64 %index.next, %n.vec
  br i1 %i.hj, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.hi, %i.hh
  %i.hk = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.hk, ptr %i.gx, align 8, !tbaa !77, !alias.scope !84, !noalias !81
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %sumAtoms.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.ph88 = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %i.hk, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.hl = phi i32 [ %i.ho, %scalar.ph.prol ], [ %.ph88, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv.i.i.prol
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !7
  %i.ho = add nsw i32 %i.hn, %i.hl                ; 3 uses
  store i32 %i.ho, ptr %i.gx, align 8, !tbaa !77
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !32

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %.unr = phi i32 [ %.ph88, %scalar.ph.preheader ], [ %i.ho, %scalar.ph.prol ]
  %i.hp = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.hq = icmp ugt i64 %i.hp, -4
  br i1 %i.hq, label %sumAtoms.exit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.hr = phi i32 [ %i.ig, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ]
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv.i.i
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !7
  %i.hu = add nsw i32 %i.ht, %i.hr                ; 2 uses
  store i32 %i.hu, ptr %i.gx, align 8, !tbaa !77
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !7
  %i.hy = add nsw i32 %i.hx, %i.hu                ; 2 uses
  store i32 %i.hy, ptr %i.gx, align 8, !tbaa !77
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv.i.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !7
  %i.ic = add nsw i32 %i.ib, %i.hy                ; 2 uses
  store i32 %i.ic, ptr %i.gx, align 8, !tbaa !77
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 12
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !7
  %i.ig = add nsw i32 %i.if, %i.ic                ; 2 uses
  store i32 %i.ig, ptr %i.gx, align 8, !tbaa !77
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %sumAtoms.exit.i, label %scalar.ph, !llvm.loop !33

sumAtoms.exit.i:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %printSimulationDataYaml.exit
  call void @profileStart(i32 noundef 10) #12
  %i.ih = load ptr, ptr %i.bm, align 8, !tbaa !20 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  call void @addIntParallel(ptr noundef %i.ih, ptr noundef nonnull %i.ii, i32 noundef 1) #12
  call void @profileStop(i32 noundef 10) #12
  %i.ij = load double, ptr %i.r, align 8, !tbaa !25
  %i.ik = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.il = load double, ptr %i.ik, align 8, !tbaa !26
  %i.im = fadd double %i.ij, %i.il
  %i.in = load ptr, ptr %i.bm, align 8, !tbaa !20
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !24 ; 4 uses
  %i.iq = sitofp i32 %i.ip to double
  %i.ir = fdiv double %i.im, %i.iq                ; 3 uses
  %i.is = call i32 @printRank() #12
  %.not.i8 = icmp eq i32 %i.is, 0
  br i1 %.not.i8, label %initValidate.exit, label %bb.r

bb.r:                                             ; preds = %sumAtoms.exit.i
  %i.it = load ptr, ptr @stdout, align 8, !tbaa !10
  %fputc.i = call i32 @fputc(i32 10, ptr %i.it)   ; 0 uses
  %i.iu = load ptr, ptr @stdout, align 8, !tbaa !10
  call void @printSeparator(ptr noundef %i.iu) #12
  %i.iv = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.iw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iv, ptr noundef nonnull @.str.10, double noundef %i.ir, i32 noundef %i.ip) #12 ; 0 uses
  %i.ix = load ptr, ptr @stdout, align 8, !tbaa !10
  %fputc10.i = call i32 @fputc(i32 10, ptr %i.ix) ; 0 uses
  br label %initValidate.exit

initValidate.exit:                                ; preds = %sumAtoms.exit.i, %bb.r
  call void @timestampBarrier(ptr noundef nonnull @.str.1) #12
  call void @timestampBarrier(ptr noundef nonnull @.str.2) #12
  %i.iy = load i32, ptr %i.j, align 8, !tbaa !86  ; 2 uses
  %i.iz = load i32, ptr %i.l, align 4, !tbaa !87  ; 2 uses
  call void @profileStart(i32 noundef 1) #12
  %i.ja = icmp sgt i32 %i.iy, 0
  br i1 %i.ja, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %initValidate.exit, %sumAtoms.exit
  %.027 = phi i32 [ %i.kq, %sumAtoms.exit ], [ 0, %initValidate.exit ] ; 2 uses
  call void @profileStart(i32 noundef 10) #12
  %i.jb = load ptr, ptr %i.bm, align 8, !tbaa !20 ; 9 uses
  store i32 0, ptr %i.jb, align 8, !tbaa !77
  %i.jc = load ptr, ptr %i.bn, align 8, !tbaa !71 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 12
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !79 ; 3 uses
  %i.jf = icmp sgt i32 %i.je, 0
  br i1 %i.jf, label %.lr.ph.i, label %sumAtoms.exit

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jc, i64 120
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !80 ; 8 uses
  %wide.trip.count.i = zext nneg i32 %i.je to i64 ; 6 uses
  %min.iters.check46 = icmp ult i32 %i.je, 8
  br i1 %min.iters.check46, label %scalar.ph45.preheader, label %vector.memcheck39

vector.memcheck39:                                ; preds = %.lr.ph.i
  %scevgep40 = getelementptr i8, ptr %i.jb, i64 4
  %i.ji = shl nuw nsw i64 %wide.trip.count.i, 2
  %scevgep41 = getelementptr i8, ptr %i.jh, i64 %i.ji
  %bound042 = icmp ult ptr %i.jb, %scevgep41
  %bound143 = icmp ult ptr %i.jh, %scevgep40
  %found.conflict44 = and i1 %bound042, %bound143
  br i1 %found.conflict44, label %scalar.ph45.preheader, label %vector.ph47

vector.ph47:                                      ; preds = %vector.memcheck39
  %n.vec48 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph47
  %index50 = phi i64 [ 0, %vector.ph47 ], [ %index.next55, %vector.body49 ] ; 2 uses
  %vec.phi51 = phi <4 x i32> [ zeroinitializer, %vector.ph47 ], [ %i.jl, %vector.body49 ]
  %vec.phi52 = phi <4 x i32> [ zeroinitializer, %vector.ph47 ], [ %i.jm, %vector.body49 ]
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %index50 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %wide.load53 = load <4 x i32>, ptr %i.jj, align 4, !tbaa !7, !alias.scope !88
  %wide.load54 = load <4 x i32>, ptr %i.jk, align 4, !tbaa !7, !alias.scope !88
  %i.jl = add <4 x i32> %wide.load53, %vec.phi51  ; 2 uses
  %i.jm = add <4 x i32> %wide.load54, %vec.phi52  ; 2 uses
  %index.next55 = add nuw i64 %index50, 8         ; 2 uses
  %i.jn = icmp eq i64 %index.next55, %n.vec48
  br i1 %i.jn, label %middle.block56, label %vector.body49, !llvm.loop !36

middle.block56:                                   ; preds = %vector.body49
  %bin.rdx57 = add <4 x i32> %i.jm, %i.jl
  %i.jo = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx57) ; 2 uses
  store i32 %i.jo, ptr %i.jb, align 8, !tbaa !77, !alias.scope !89, !noalias !88
  %cmp.n58 = icmp eq i64 %n.vec48, %wide.trip.count.i
  br i1 %cmp.n58, label %sumAtoms.exit, label %scalar.ph45.preheader

scalar.ph45.preheader:                            ; preds = %vector.memcheck39, %.lr.ph.i, %middle.block56
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck39 ], [ 0, %.lr.ph.i ], [ %n.vec48, %middle.block56 ] ; 3 uses
  %.ph84 = phi i32 [ 0, %vector.memcheck39 ], [ 0, %.lr.ph.i ], [ %i.jo, %middle.block56 ] ; 2 uses
  %xtraiter91 = and i64 %wide.trip.count.i, 3     ; 2 uses
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  br i1 %lcmp.mod92.not, label %scalar.ph45.prol.loopexit, label %scalar.ph45.prol

scalar.ph45.prol:                                 ; preds = %scalar.ph45.preheader, %scalar.ph45.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph45.prol ], [ %indvars.iv.i.ph, %scalar.ph45.preheader ] ; 2 uses
  %i.jp = phi i32 [ %i.js, %scalar.ph45.prol ], [ %.ph84, %scalar.ph45.preheader ]
  %prol.iter93 = phi i64 [ %prol.iter93.next, %scalar.ph45.prol ], [ 0, %scalar.ph45.preheader ]
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv.i.prol
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !7
  %i.js = add nsw i32 %i.jr, %i.jp                ; 3 uses
  store i32 %i.js, ptr %i.jb, align 8, !tbaa !77
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter93.next = add i64 %prol.iter93, 1     ; 2 uses
  %prol.iter93.cmp.not = icmp eq i64 %prol.iter93.next, %xtraiter91
  br i1 %prol.iter93.cmp.not, label %scalar.ph45.prol.loopexit, label %scalar.ph45.prol, !llvm.loop !38

scalar.ph45.prol.loopexit:                        ; preds = %scalar.ph45.prol, %scalar.ph45.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph45.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph45.prol ]
  %.unr94 = phi i32 [ %.ph84, %scalar.ph45.preheader ], [ %i.js, %scalar.ph45.prol ]
  %i.jt = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.ju = icmp ugt i64 %i.jt, -4
  br i1 %i.ju, label %sumAtoms.exit, label %scalar.ph45

scalar.ph45:                                      ; preds = %scalar.ph45.prol.loopexit, %scalar.ph45
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph45 ], [ %indvars.iv.i.unr, %scalar.ph45.prol.loopexit ] ; 5 uses
  %i.jv = phi i32 [ %i.kk, %scalar.ph45 ], [ %.unr94, %scalar.ph45.prol.loopexit ]
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv.i
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !7
  %i.jy = add nsw i32 %i.jx, %i.jv                ; 2 uses
  store i32 %i.jy, ptr %i.jb, align 8, !tbaa !77
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv.i
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !7
  %i.kc = add nsw i32 %i.kb, %i.jy                ; 2 uses
  store i32 %i.kc, ptr %i.jb, align 8, !tbaa !77
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !7
  %i.kg = add nsw i32 %i.kf, %i.kc                ; 2 uses
  store i32 %i.kg, ptr %i.jb, align 8, !tbaa !77
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 12
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !7
  %i.kk = add nsw i32 %i.kj, %i.kg                ; 2 uses
  store i32 %i.kk, ptr %i.jb, align 8, !tbaa !77
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %sumAtoms.exit, label %scalar.ph45, !llvm.loop !39

sumAtoms.exit:                                    ; preds = %scalar.ph45.prol.loopexit, %scalar.ph45, %middle.block56, %.lr.ph
  call void @profileStart(i32 noundef 10) #12
  %i.kl = load ptr, ptr %i.bm, align 8, !tbaa !20 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 4
  call void @addIntParallel(ptr noundef %i.kl, ptr noundef nonnull %i.km, i32 noundef 1) #12
  call void @profileStop(i32 noundef 10) #12
  call void @profileStop(i32 noundef 10) #12
  %i.kn = call double @getElapsedTime(i32 noundef 2) #12 ; 0 uses
  call fastcc void @printThings(ptr noundef nonnull %i.j, i32 noundef %.027)
  call void @profileStart(i32 noundef 2) #12
  %i.ko = load double, ptr %i.p, align 8, !tbaa !19
  %i.kp = call double @timestep(ptr noundef nonnull %i.j, i32 noundef %i.iz, double noundef %i.ko) #12 ; 0 uses
  call void @profileStop(i32 noundef 2) #12
  %i.kq = add nsw i32 %.027, %i.iz                ; 3 uses
  %i.kr = icmp slt i32 %i.kq, %i.iy
  br i1 %i.kr, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %sumAtoms.exit, %initValidate.exit
  %.0.lcssa = phi i32 [ 0, %initValidate.exit ], [ %i.kq, %sumAtoms.exit ]
  call void @profileStop(i32 noundef 1) #12
  %i.ks = load ptr, ptr %i.bm, align 8, !tbaa !20 ; 9 uses
  store i32 0, ptr %i.ks, align 8, !tbaa !77
  %i.kt = load ptr, ptr %i.bn, align 8, !tbaa !71 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 12
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !79 ; 3 uses
  %i.kw = icmp sgt i32 %i.kv, 0
  br i1 %i.kw, label %.lr.ph.i9, label %sumAtoms.exit14

.lr.ph.i9:                                        ; preds = %._crit_edge
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 120
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !80 ; 8 uses
  %wide.trip.count.i10 = zext nneg i32 %i.kv to i64 ; 6 uses
  %min.iters.check68 = icmp ult i32 %i.kv, 8
  br i1 %min.iters.check68, label %scalar.ph67.preheader, label %vector.memcheck61

vector.memcheck61:                                ; preds = %.lr.ph.i9
  %scevgep62 = getelementptr i8, ptr %i.ks, i64 4
  %i.kz = shl nuw nsw i64 %wide.trip.count.i10, 2
  %scevgep63 = getelementptr i8, ptr %i.ky, i64 %i.kz
  %bound064 = icmp ult ptr %i.ks, %scevgep63
  %bound165 = icmp ult ptr %i.ky, %scevgep62
  %found.conflict66 = and i1 %bound064, %bound165
  br i1 %found.conflict66, label %scalar.ph67.preheader, label %vector.ph69

vector.ph69:                                      ; preds = %vector.memcheck61
  %n.vec70 = and i64 %wide.trip.count.i10, 2147483640 ; 3 uses
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph69
  %index72 = phi i64 [ 0, %vector.ph69 ], [ %index.next77, %vector.body71 ] ; 2 uses
  %vec.phi73 = phi <4 x i32> [ zeroinitializer, %vector.ph69 ], [ %i.lc, %vector.body71 ]
  %vec.phi74 = phi <4 x i32> [ zeroinitializer, %vector.ph69 ], [ %i.ld, %vector.body71 ]
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %index72 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %wide.load75 = load <4 x i32>, ptr %i.la, align 4, !tbaa !7, !alias.scope !90
  %wide.load76 = load <4 x i32>, ptr %i.lb, align 4, !tbaa !7, !alias.scope !90
  %i.lc = add <4 x i32> %wide.load75, %vec.phi73  ; 2 uses
  %i.ld = add <4 x i32> %wide.load76, %vec.phi74  ; 2 uses
  %index.next77 = add nuw i64 %index72, 8         ; 2 uses
  %i.le = icmp eq i64 %index.next77, %n.vec70
  br i1 %i.le, label %middle.block78, label %vector.body71, !llvm.loop !42

middle.block78:                                   ; preds = %vector.body71
  %bin.rdx79 = add <4 x i32> %i.ld, %i.lc
  %i.lf = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx79) ; 2 uses
  store i32 %i.lf, ptr %i.ks, align 8, !tbaa !77, !alias.scope !91, !noalias !90
  %cmp.n80 = icmp eq i64 %n.vec70, %wide.trip.count.i10
  br i1 %cmp.n80, label %sumAtoms.exit14, label %scalar.ph67.preheader

scalar.ph67.preheader:                            ; preds = %vector.memcheck61, %.lr.ph.i9, %middle.block78
  %indvars.iv.i11.ph = phi i64 [ 0, %vector.memcheck61 ], [ 0, %.lr.ph.i9 ], [ %n.vec70, %middle.block78 ] ; 3 uses
  %.ph = phi i32 [ 0, %vector.memcheck61 ], [ 0, %.lr.ph.i9 ], [ %i.lf, %middle.block78 ] ; 2 uses
  %xtraiter95 = and i64 %wide.trip.count.i10, 3   ; 2 uses
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %scalar.ph67.prol.loopexit, label %scalar.ph67.prol

scalar.ph67.prol:                                 ; preds = %scalar.ph67.preheader, %scalar.ph67.prol
  %indvars.iv.i11.prol = phi i64 [ %indvars.iv.next.i12.prol, %scalar.ph67.prol ], [ %indvars.iv.i11.ph, %scalar.ph67.preheader ] ; 2 uses
  %i.lg = phi i32 [ %i.lj, %scalar.ph67.prol ], [ %.ph, %scalar.ph67.preheader ]
  %prol.iter97 = phi i64 [ %prol.iter97.next, %scalar.ph67.prol ], [ 0, %scalar.ph67.preheader ]
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i11.prol
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !7
  %i.lj = add nsw i32 %i.li, %i.lg                ; 3 uses
  store i32 %i.lj, ptr %i.ks, align 8, !tbaa !77
  %indvars.iv.next.i12.prol = add nuw nsw i64 %indvars.iv.i11.prol, 1 ; 2 uses
  %prol.iter97.next = add i64 %prol.iter97, 1     ; 2 uses
  %prol.iter97.cmp.not = icmp eq i64 %prol.iter97.next, %xtraiter95
  br i1 %prol.iter97.cmp.not, label %scalar.ph67.prol.loopexit, label %scalar.ph67.prol, !llvm.loop !44

scalar.ph67.prol.loopexit:                        ; preds = %scalar.ph67.prol, %scalar.ph67.preheader
  %indvars.iv.i11.unr = phi i64 [ %indvars.iv.i11.ph, %scalar.ph67.preheader ], [ %indvars.iv.next.i12.prol, %scalar.ph67.prol ]
  %.unr98 = phi i32 [ %.ph, %scalar.ph67.preheader ], [ %i.lj, %scalar.ph67.prol ]
  %i.lk = sub nsw i64 %indvars.iv.i11.ph, %wide.trip.count.i10
  %i.ll = icmp ugt i64 %i.lk, -4
  br i1 %i.ll, label %sumAtoms.exit14, label %scalar.ph67

scalar.ph67:                                      ; preds = %scalar.ph67.prol.loopexit, %scalar.ph67
  %indvars.iv.i11 = phi i64 [ %indvars.iv.next.i12.3, %scalar.ph67 ], [ %indvars.iv.i11.unr, %scalar.ph67.prol.loopexit ] ; 5 uses
  %i.lm = phi i32 [ %i.mb, %scalar.ph67 ], [ %.unr98, %scalar.ph67.prol.loopexit ]
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i11
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !7
  %i.lp = add nsw i32 %i.lo, %i.lm                ; 2 uses
  store i32 %i.lp, ptr %i.ks, align 8, !tbaa !77
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i11
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !7
  %i.lt = add nsw i32 %i.ls, %i.lp                ; 2 uses
  store i32 %i.lt, ptr %i.ks, align 8, !tbaa !77
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i11
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !7
  %i.lx = add nsw i32 %i.lw, %i.lt                ; 2 uses
  store i32 %i.lx, ptr %i.ks, align 8, !tbaa !77
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.i11
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 12
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !7
  %i.mb = add nsw i32 %i.ma, %i.lx                ; 2 uses
  store i32 %i.mb, ptr %i.ks, align 8, !tbaa !77
  %indvars.iv.next.i12.3 = add nuw nsw i64 %indvars.iv.i11, 4 ; 2 uses
  %exitcond.not.i13.3 = icmp eq i64 %indvars.iv.next.i12.3, %wide.trip.count.i10
  br i1 %exitcond.not.i13.3, label %sumAtoms.exit14, label %scalar.ph67, !llvm.loop !45

sumAtoms.exit14:                                  ; preds = %scalar.ph67.prol.loopexit, %scalar.ph67, %middle.block78, %._crit_edge
  call void @profileStart(i32 noundef 10) #12
  %i.mc = load ptr, ptr %i.bm, align 8, !tbaa !20 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 4
  call void @addIntParallel(ptr noundef %i.mc, ptr noundef nonnull %i.md, i32 noundef 1) #12
  call void @profileStop(i32 noundef 10) #12
  %i.me = call double @getElapsedTime(i32 noundef 2) #12 ; 0 uses
  call fastcc void @printThings(ptr noundef nonnull %i.j, i32 noundef %.0.lcssa)
  call void @timestampBarrier(ptr noundef nonnull @.str.3) #12
  %i.mf = call i32 @printRank() #12
  %.not.i15 = icmp eq i32 %i.mf, 0
  br i1 %.not.i15, label %bb.v, label %bb.s

bb.s:                                             ; preds = %sumAtoms.exit14
  %4 = load <2 x double>, ptr %i.r, align 8, !tbaa !65
  %5 = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %4)
  %i.mg = load ptr, ptr %i.bm, align 8, !tbaa !20
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 4
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !24 ; 3 uses
  %i.mj = sitofp i32 %i.mi to double
  %i.mk = fdiv double %5, %i.mj                   ; 2 uses
  %i.ml = load ptr, ptr @stdout, align 8, !tbaa !10
  %fputc.i16 = call i32 @fputc(i32 10, ptr %i.ml) ; 0 uses
  %i.mm = load ptr, ptr @stdout, align 8, !tbaa !10
  %fputc11.i = call i32 @fputc(i32 10, ptr %i.mm) ; 0 uses
  %i.mn = load ptr, ptr @stdout, align 8, !tbaa !10
  %fwrite.i17 = call i64 @fwrite(ptr nonnull @.str.11, i64 23, i64 1, ptr %i.mn) ; 0 uses
  %i.mo = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.mp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mo, ptr noundef nonnull @.str.12, double noundef %i.ir) #12 ; 0 uses
  %i.mq = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.mr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mq, ptr noundef nonnull @.str.13, double noundef %i.mk) #12 ; 0 uses
  %i.ms = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.mt = fdiv double %i.mk, %i.ir
  %i.mu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ms, ptr noundef nonnull @.str.14, double noundef %i.mt) #12 ; 0 uses
  %i.mv = icmp eq i32 %i.mi, %i.ip
  br i1 %i.mv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.mw = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.mx = load ptr, ptr %i.bm, align 8, !tbaa !20
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 4
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !24
  %i.na = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mw, ptr noundef nonnull @.str.15, i32 noundef %i.mz) #12 ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.nb = sub nsw i32 %i.mi, %i.ip
  %i.nc = load ptr, ptr @stdout, align 8, !tbaa !10
  %fwrite12.i = call i64 @fwrite(ptr nonnull @.str.16, i64 30, i64 1, ptr %i.nc) ; 0 uses
  %i.nd = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.ne = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nd, ptr noundef nonnull @.str.17, i32 noundef %i.nb) #12 ; 0 uses
  %i.nf = load ptr, ptr @stdout, align 8, !tbaa !10
  %fwrite13.i = call i64 @fwrite(ptr nonnull @.str.16, i64 30, i64 1, ptr %i.nf) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %sumAtoms.exit14
  call void @profileStop(i32 noundef 0) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ng = load ptr, ptr %i.aa, align 8, !tbaa !54 ; 3 uses
  store ptr %i.ng, ptr %i.a, align 8, !tbaa !92
  %.not13.i = icmp eq ptr %i.ng, null
  br i1 %.not13.i, label %destroySimulation.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 56
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !93
  call void %i.ni(ptr noundef nonnull %i.a) #12, !inline_history !46
  br label %destroySimulation.exit

destroySimulation.exit:                           ; preds = %bb.v, %bb.w
  call void @destroyLinkCells(ptr noundef nonnull %i.bn) #12
  %i.nj = load ptr, ptr %i.bm, align 8, !tbaa !20
  call void @destroyAtoms(ptr noundef %i.nj) #12
  call void @destroyHaloExchange(ptr noundef nonnull %i.s) #12
  %i.nk = load ptr, ptr %i.bx, align 8, !tbaa !64
  call void @free(ptr noundef %i.nk) #12
  %i.nl = load ptr, ptr %i.q, align 8, !tbaa !70
  call void @free(ptr noundef %i.nl) #12
  call void @free(ptr noundef nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @timestampBarrier(ptr noundef nonnull @.str.4) #12
  call void @destroyParallel() #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 0
}

declare void @initParallel(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @profileStart(i32 noundef) local_unnamed_addr #1

declare void @timestampBarrier(ptr noundef) local_unnamed_addr #1

declare void @yamlAppInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @parseCommandLine(ptr dead_on_unwind writable sret(%struct.CommandSt) align 8, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @printCmdYaml(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @profileStop(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @printThings(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @printRank() #12
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.b = load i1, ptr @printThings.firstCall, align 4
  br i1 %.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i1 true, ptr @printThings.firstCall, align 4
  %i.b = load ptr, ptr @stdout, align 8, !tbaa !10
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.18, i64 215, i64 1, ptr %i.b) ; 0 uses
  %i.c = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.d = tail call i32 @fflush(ptr noundef %i.c)  ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = sitofp i32 %1 to double
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !19
  %i.h = fmul double %i.g, %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load double, ptr %i.i, align 8, !tbaa !25 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load double, ptr %i.k, align 8, !tbaa !26 ; 2 uses
  %i.m = fadd double %i.j, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !24   ; 2 uses
  %i.r = sitofp i32 %i.q to double                ; 3 uses
  %i.s = fdiv double %i.m, %i.r
  %i.t = fdiv double %i.l, %i.r                   ; 2 uses
  %i.u = fdiv double %i.j, %i.r
  %i.v = fdiv double %i.t, f0x3F20F13ED339F07F
  %i.w = load ptr, ptr @stdout, align 8, !tbaa !10
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.19, i32 noundef %1, double noundef %i.h, double noundef %i.s, double noundef %i.u, double noundef %i.t, double noundef %i.v, double noundef 0.000000e+00, i32 noundef %i.q) #12 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare double @getElapsedTime(i32 noundef) local_unnamed_addr #1

declare double @timestep(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #1

declare void @destroyParallel() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare ptr @initDecomposition(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @initLinkCells(ptr noundef, double noundef) local_unnamed_addr #1

declare ptr @initAtoms(ptr noundef) local_unnamed_addr #1

declare void @createFccLattice(i32 noundef, i32 noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare void @setTemperature(ptr noundef, double noundef) local_unnamed_addr #1

declare void @randomDisplacements(ptr noundef, double noundef) local_unnamed_addr #1

declare ptr @initAtomHaloExchange(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @redistributeAtoms(ptr noundef) local_unnamed_addr #1

declare void @computeForce(ptr noundef) local_unnamed_addr #1

declare void @kineticEnergy(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare ptr @initEamPot(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @initLjPot() local_unnamed_addr #1

declare i32 @getNRanks() local_unnamed_addr #1

declare i32 @printRank() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare void @bcastParallel(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #8

declare void @destroyLinkCells(ptr noundef) local_unnamed_addr #1

declare void @destroyAtoms(ptr noundef) local_unnamed_addr #1

declare void @destroyHaloExchange(ptr noundef) local_unnamed_addr #1

declare void @printSeparator(ptr noundef) local_unnamed_addr #1

declare void @addIntParallel(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @maxOccupancy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"double", !5, i64 0}
!12 = !{!"p1 _ZTS8DomainSt", !8, i64 0}
!13 = !{!"p1 _ZTS10LinkCellSt", !8, i64 0}
!14 = !{!"p1 _ZTS7AtomsSt", !8, i64 0}
!15 = !{!"p1 _ZTS13SpeciesDataSt", !8, i64 0}
!16 = !{!"p1 _ZTS15BasePotentialSt", !8, i64 0}
!17 = !{!"p1 _ZTS14HaloExchangeSt", !8, i64 0}
!18 = !{!"SimFlatSt", !6, i64 0, !6, i64 4, !11, i64 8, !12, i64 16, !13, i64 24, !14, i64 32, !15, i64 40, !11, i64 48, !11, i64 56, !16, i64 64, !17, i64 72}
!19 = !{!18, !11, i64 8}
!20 = !{!18, !14, i64 32}
!21 = !{!"p1 int", !8, i64 0}
!22 = !{!"p1 double", !8, i64 0}
!23 = !{!"AtomsSt", !6, i64 0, !6, i64 4, !21, i64 8, !21, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48}
!24 = !{!23, !6, i64 4}
!25 = !{!18, !11, i64 48}
!26 = !{!18, !11, i64 56}
!27 = distinct !{null}
!28 = distinct !{!28, !"LVerDomain"}
!29 = distinct !{!29, !28}
!30 = distinct !{!30, !82, !83}
!31 = distinct !{!31, !28}
!32 = distinct !{!32, !85}
!33 = distinct !{!33, !82}
!34 = distinct !{!34, !"LVerDomain"}
!35 = distinct !{!35, !34}
!36 = distinct !{!36, !82, !83}
!37 = distinct !{!37, !34}
!38 = distinct !{!38, !85}
!39 = distinct !{!39, !82}
!40 = distinct !{!40, !"LVerDomain"}
!41 = distinct !{!41, !40}
!42 = distinct !{!42, !82, !83}
!43 = distinct !{!43, !40}
!44 = distinct !{!44, !85}
!45 = distinct !{!45, !82}
!46 = distinct !{null}
!47 = !{!"any p2 pointer", !8, i64 0}
!48 = !{!"p2 omnipotent char", !47, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{!"CommandSt", !5, i64 0, !5, i64 1024, !5, i64 2048, !6, i64 3072, !6, i64 3076, !6, i64 3080, !6, i64 3084, !6, i64 3088, !6, i64 3092, !6, i64 3096, !6, i64 3100, !6, i64 3104, !11, i64 3112, !11, i64 3120, !11, i64 3128, !11, i64 3136}
!51 = !{!50, !11, i64 3112}
!52 = !{!18, !17, i64 72}
!53 = !{!50, !6, i64 3072}
!54 = !{!18, !16, i64 64}
!55 = !{!50, !11, i64 3120}
!56 = !{!"BasePotentialSt", !11, i64 0, !11, i64 8, !11, i64 16, !5, i64 24, !5, i64 32, !6, i64 36, !8, i64 40, !8, i64 48, !8, i64 56}
!57 = !{!56, !11, i64 16}
!58 = !{!56, !11, i64 0}
!59 = !{!56, !6, i64 36}
!60 = !{!"SpeciesDataSt", !5, i64 0, !6, i64 4, !11, i64 8}
!61 = !{!60, !6, i64 4}
!62 = !{!56, !11, i64 8}
!63 = !{!60, !11, i64 8}
!64 = !{!18, !15, i64 40}
!65 = !{!11, !11, i64 0}
!66 = !{!50, !6, i64 3084}
!67 = !{!50, !6, i64 3088}
!68 = !{!50, !6, i64 3092}
!69 = !{!50, !6, i64 3096}
!70 = !{!18, !12, i64 16}
!71 = !{!18, !13, i64 24}
!72 = !{!50, !6, i64 3076}
!73 = !{!50, !6, i64 3080}
!74 = !{!50, !11, i64 3128}
!75 = !{!50, !11, i64 3136}
!76 = !{!56, !8, i64 48}
!77 = !{!23, !6, i64 0}
!78 = !{!"LinkCellSt", !5, i64 0, !6, i64 12, !6, i64 16, !6, i64 20, !5, i64 24, !5, i64 48, !5, i64 72, !5, i64 96, !21, i64 120}
!79 = !{!78, !6, i64 12}
!80 = !{!78, !21, i64 120}
!81 = !{!29}
!82 = !{!"llvm.loop.isvectorized", i32 1}
!83 = !{!"llvm.loop.unroll.runtime.disable"}
!84 = !{!31}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = !{!18, !6, i64 0}
!87 = !{!18, !6, i64 4}
!88 = !{!35}
!89 = !{!37}
!90 = !{!41}
!91 = !{!43}
!92 = !{!16, !16, i64 0}
!93 = !{!56, !8, i64 56}
end_hunk_0
