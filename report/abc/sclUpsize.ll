Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sclUpsize?download=true
inline.NumInlined: 487
inline.NumDeleted: 99
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Abc_SclFindBestCell:bb.a
  br label %Vec_FltPush.exit24.i

Vec_FltPush.exit24.i:                             ; preds = %Vec_FltGrow.exit12.sink.split.i20.i, %bb.by, %Vec_FltPush.exit.i84
  %i.ki = phi i32 [ %i.jr, %Vec_FltPush.exit.i84 ], [ %i.jf, %bb.by ], [ %.pre32.i, %Vec_FltGrow.exit12.sink.split.i20.i ] ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !83
  %i.kl = add nsw i32 %i.ki, 1
  store i32 %i.kl, ptr %i.jq, align 4, !tbaa !81
  %i.km = sext i32 %i.ki to i64
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %i.km
  store float %i.jp, ptr %i.kn, align 4, !tbaa !76
  %indvars.iv.next.i86 = add nuw nsw i64 %indvars.iv.i81, 1 ; 2 uses
  %.val.i87 = load i32, ptr %i.hw, align 4, !tbaa !49
  %i.ko = sext i32 %.val.i87 to i64
  %i.kp = icmp slt i64 %indvars.iv.next.i86, %i.ko
  br i1 %i.kp, label %bb.bk, label %Abc_SclLoadStore.exit, !llvm.loop !132

Abc_SclLoadStore.exit:                            ; preds = %Vec_FltPush.exit24.i, %Abc_SclEvalStore.exit
  %i.kq = sub nsw i32 0, %5
  %i.kr = sitofp i32 %i.kq to float
  %i.ks = getelementptr i8, ptr %i.m, i64 8       ; 2 uses
  %i.kt = getelementptr i8, ptr %1, i64 32
  %i.ku = getelementptr i8, ptr %0, i64 64
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.kw = getelementptr i8, ptr %3, i64 8
  %i.kx = getelementptr i8, ptr %0, i64 80        ; 2 uses
  br label %bb.cd

bb.cd:                                            ; preds = %Abc_SclLoadStore.exit, %.thread
  %.0131 = phi i32 [ 0, %Abc_SclLoadStore.exit ], [ %.2, %.thread ] ; 3 uses
  %.045130 = phi i32 [ -1, %Abc_SclLoadStore.exit ], [ %.247, %.thread ] ; 5 uses
  %.048129 = phi i32 [ 0, %Abc_SclLoadStore.exit ], [ %i.oo, %.thread ] ; 2 uses
  %.049128 = phi float [ %i.kr, %Abc_SclLoadStore.exit ], [ %.251, %.thread ] ; 6 uses
  %.053127 = phi ptr [ %i.m, %Abc_SclLoadStore.exit ], [ %i.on, %.thread ] ; 4 uses
  %i.ky = icmp eq ptr %.053127, %i.m
  br i1 %i.ky, label %.thread, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kz = icmp sgt i32 %.048129, %4
  %.val57.pre133 = load ptr, ptr %1, align 8, !tbaa !22 ; 2 uses
  br i1 %i.kz, label %split, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %.val64 = load i32, ptr %i.a, align 8, !tbaa !23
  %i.la = getelementptr i8, ptr %.053127, i64 8   ; 2 uses
  %.053.val = load i32, ptr %i.la, align 8, !tbaa !87
  %i.lb = getelementptr i8, ptr %.val57.pre133, i64 376
  %.val63.val = load ptr, ptr %i.lb, align 8, !tbaa !78
  %i.lc = getelementptr i8, ptr %.val63.val, i64 8
  %.val63.val.val = load ptr, ptr %i.lc, align 8, !tbaa !27
  %i.ld = sext i32 %.val64 to i64
  %i.le = getelementptr inbounds [4 x i8], ptr %.val63.val.val, i64 %i.ld
  store i32 %.053.val, ptr %i.le, align 4, !tbaa !46
  tail call void @Abc_SclUpdateLoad(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.m, ptr noundef %.053127) #26
  tail call void @Abc_SclTimeCone(ptr noundef %0, ptr noundef %2) #26
  %.val60 = load ptr, ptr %1, align 8, !tbaa !22  ; 3 uses
  %.val61 = load i32, ptr %i.a, align 8, !tbaa !23
  %.val62 = load i32, ptr %i.ks, align 8, !tbaa !87
  %i.lf = getelementptr i8, ptr %.val60, i64 376
  %.val60.val = load ptr, ptr %i.lf, align 8, !tbaa !78
  %i.lg = getelementptr i8, ptr %.val60.val, i64 8
  %.val60.val.val = load ptr, ptr %i.lg, align 8, !tbaa !27
  %i.lh = sext i32 %.val61 to i64
  %i.li = getelementptr inbounds [4 x i8], ptr %.val60.val.val, i64 %i.lh
  store i32 %.val62, ptr %i.li, align 4, !tbaa !46
  %.val.i98 = load i32, ptr %i.hw, align 4, !tbaa !49 ; 4 uses
  %i.lj = icmp sgt i32 %.val.i98, 0
  br i1 %i.lj, label %.lr.ph.i99, label %Abc_SclLoadRestore.exit

.lr.ph.i99:                                       ; preds = %bb.cf
  %.val14.i101 = load ptr, ptr %i.kt, align 8, !tbaa !53 ; 3 uses
  %i.lk = getelementptr i8, ptr %.val60, i64 32
  %.val13.val.i = load ptr, ptr %i.lk, align 8, !tbaa !42
  %i.ll = getelementptr i8, ptr %.val13.val.i, i64 8
  %.val13.val.val.i = load ptr, ptr %i.ll, align 8, !tbaa !45 ; 3 uses
  %i.lm = load ptr, ptr %i.ht, align 8, !tbaa !139
  %i.ln = getelementptr i8, ptr %i.lm, i64 8
  %.val20.i102 = load ptr, ptr %i.ln, align 8, !tbaa !83 ; 3 uses
  %.val17.i = load ptr, ptr %i.ku, align 8, !tbaa !85 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %.val.i98 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.lo = icmp eq i32 %.val.i98, 1
  br i1 %i.lo, label %.epil.preheader, label %.lr.ph.i99.new

.lr.ph.i99.new:                                   ; preds = %.lr.ph.i99
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cg, %.lr.ph.i99.new
  %indvars.iv23.i = phi i64 [ 0, %.lr.ph.i99.new ], [ %indvars.iv.next24.i.1, %bb.cg ] ; 3 uses
  %indvars.iv.i103 = phi i64 [ 0, %.lr.ph.i99.new ], [ %indvars.iv.next.i105.1, %bb.cg ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i99.new ], [ %niter.next.1, %bb.cg ]
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %.val14.i101, i64 %indvars.iv23.i
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !46
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr inbounds [8 x i8], ptr %.val13.val.val.i, i64 %i.lr
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !47
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.val20.i102, i64 %indvars.iv.i103 ; 2 uses
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !76
  %i.lw = getelementptr i8, ptr %i.lt, i64 16
  %.val18.i104 = load i32, ptr %i.lw, align 8, !tbaa !23
  %i.lx = zext i32 %.val18.i104 to i64
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %.val17.i, i64 %i.lx ; 2 uses
  store float %i.lv, ptr %i.ly, align 4, !tbaa !72
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !76
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  store float %i.ma, ptr %i.mb, align 4, !tbaa !73
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %.val14.i101, i64 %indvars.iv23.i
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 4
  %i.me = load i32, ptr %i.md, align 4, !tbaa !46
  %i.mf = sext i32 %i.me to i64
  %i.mg = getelementptr inbounds [8 x i8], ptr %.val13.val.val.i, i64 %i.mf
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !47
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %.val20.i102, i64 %indvars.iv.i103 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !76
  %i.ml = getelementptr i8, ptr %i.mh, i64 16
  %.val18.i104.1 = load i32, ptr %i.ml, align 8, !tbaa !23
  %i.mm = zext i32 %.val18.i104.1 to i64
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %.val17.i, i64 %i.mm ; 2 uses
  store float %i.mk, ptr %i.mn, align 4, !tbaa !72
  %indvars.iv.next.i105.1 = add nuw nsw i64 %indvars.iv.i103, 4 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mi, i64 12
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !76
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 4
  store float %i.mp, ptr %i.mq, align 4, !tbaa !73
  %indvars.iv.next24.i.1 = add nuw nsw i64 %indvars.iv23.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Abc_SclLoadRestore.exit.loopexit.unr-lcssa, label %bb.cg, !llvm.loop !133

Abc_SclLoadRestore.exit.loopexit.unr-lcssa:       ; preds = %bb.cg
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %Abc_SclLoadRestore.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %Abc_SclLoadRestore.exit.loopexit.unr-lcssa, %.lr.ph.i99
  %indvars.iv23.i.epil.init = phi i64 [ 0, %.lr.ph.i99 ], [ %indvars.iv.next24.i.1, %Abc_SclLoadRestore.exit.loopexit.unr-lcssa ]
  %indvars.iv.i103.epil.init = phi i64 [ 0, %.lr.ph.i99 ], [ %indvars.iv.next.i105.1, %Abc_SclLoadRestore.exit.loopexit.unr-lcssa ]
  %lcmp.mod187 = trunc i32 %.val.i98 to i1
  tail call void @llvm.assume(i1 %lcmp.mod187)
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.val14.i101, i64 %indvars.iv23.i.epil.init
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !46
  %i.mt = sext i32 %i.ms to i64
  %i.mu = getelementptr inbounds [8 x i8], ptr %.val13.val.val.i, i64 %i.mt
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !47
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %.val20.i102, i64 %indvars.iv.i103.epil.init ; 2 uses
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !76
  %i.my = getelementptr i8, ptr %i.mv, i64 16
  %.val18.i104.epil = load i32, ptr %i.my, align 8, !tbaa !23
  %i.mz = zext i32 %.val18.i104.epil to i64
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %.val17.i, i64 %i.mz ; 2 uses
  store float %i.mx, ptr %i.na, align 4, !tbaa !72
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !76
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 4
  store float %i.nc, ptr %i.nd, align 4, !tbaa !73
  br label %Abc_SclLoadRestore.exit

Abc_SclLoadRestore.exit:                          ; preds = %.epil.preheader, %Abc_SclLoadRestore.exit.loopexit.unr-lcssa, %bb.cf
  %.val27.i = load i32, ptr %i.ew, align 4, !tbaa !25 ; 3 uses
  %i.ne = icmp sgt i32 %.val27.i, 0
  br i1 %i.ne, label %.lr.ph.i106, label %Abc_SclEvalPerform.exit

.lr.ph.i106:                                      ; preds = %Abc_SclLoadRestore.exit
  %i.nf = load ptr, ptr %i.kv, align 8, !tbaa !63
  %.val.i107 = load ptr, ptr %i.kw, align 8, !tbaa !27
  %i.ng = getelementptr i8, ptr %i.nf, i64 32
  %.val28.i108 = load ptr, ptr %i.ng, align 8, !tbaa !42
  %i.nh = getelementptr i8, ptr %.val28.i108, i64 8
  %.val28.val.i = load ptr, ptr %i.nh, align 8, !tbaa !45
  %wide.trip.count.i109 = zext nneg i32 %.val27.i to i64
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cj, %.lr.ph.i106
  %indvars.iv.i110 = phi i64 [ 0, %.lr.ph.i106 ], [ %indvars.iv.next.i111, %bb.cj ] ; 2 uses
  %.037.i = phi i32 [ 0, %.lr.ph.i106 ], [ %.1.i, %bb.cj ] ; 3 uses
  %.02335.i = phi float [ 0.000000e+00, %.lr.ph.i106 ], [ %.124.i, %bb.cj ] ; 2 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %.val.i107, i64 %indvars.iv.i110
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !46
  %i.nk = sext i32 %i.nj to i64
  %i.nl = getelementptr inbounds [8 x i8], ptr %.val28.val.i, i64 %i.nk
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !47 ; 2 uses
  %i.nn = icmp eq ptr %i.nm, null
  br i1 %i.nn, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.no = load ptr, ptr %i.et, align 8, !tbaa !138
  %i.np = getelementptr i8, ptr %i.no, i64 8
  %.val34.i = load ptr, ptr %i.np, align 8, !tbaa !83
  %i.nq = sext i32 %.037.i to i64
  %i.nr = getelementptr [4 x i8], ptr %.val34.i, i64 %i.nq
  %.val31.i = load ptr, ptr %i.kx, align 8, !tbaa !70
  %i.ns = getelementptr i8, ptr %i.nm, i64 16
  %.val32.i = load i32, ptr %i.ns, align 8, !tbaa !23
  %i.nt = zext i32 %.val32.i to i64
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %.val31.i, i64 %i.nt
  %i.nv = add nsw i32 %.037.i, 2
  %i.nw = load <2 x float>, ptr %i.nr, align 4, !tbaa !76
  %i.nx = load <2 x float>, ptr %i.nu, align 4, !tbaa !76
  %i.ny = fsub <2 x float> %i.nw, %i.nx           ; 2 uses
  %shift = shufflevector <2 x float> %i.ny, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ny, %shift
  %7 = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %i.nz = fcmp ogt float %7, 0.000000e+00
  %i.oa = fmul float %7, 1.500000e+00
  %i.ob = select i1 %i.nz, float %7, float %i.oa
  %i.oc = fpext float %i.ob to double
  %i.od = fpext float %.02335.i to double
  %i.oe = tail call double @llvm.fmuladd.f64(double %i.oc, double 5.000000e-01, double %i.od)
  %i.of = fptrunc double %i.oe to float
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.124.i = phi float [ %.02335.i, %bb.ch ], [ %i.of, %bb.ci ] ; 2 uses
  %.1.i = phi i32 [ %.037.i, %bb.ch ], [ %i.nv, %bb.ci ]
  %indvars.iv.next.i111 = add nuw nsw i64 %indvars.iv.i110, 1 ; 2 uses
  %exitcond.not.i112 = icmp eq i64 %indvars.iv.next.i111, %wide.trip.count.i109
  br i1 %exitcond.not.i112, label %Abc_SclEvalPerform.exit, label %bb.ch, !llvm.loop !134

Abc_SclEvalPerform.exit:                          ; preds = %bb.cj, %Abc_SclLoadRestore.exit
  %.023.lcssa.i = phi float [ 0.000000e+00, %Abc_SclLoadRestore.exit ], [ %.124.i, %bb.cj ]
  %i.og = sitofp i32 %.val27.i to float
  %i.oh = fdiv float %.023.lcssa.i, %i.og         ; 2 uses
  %i.oi = fcmp olt float %.049128, %i.oh
  br i1 %i.oi, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %Abc_SclEvalPerform.exit
  %i.oj = load i32, ptr %i.la, align 8, !tbaa !87
  br label %.thread

bb.cl:                                            ; preds = %Abc_SclEvalPerform.exit
  %.not = icmp eq i32 %.0131, 0
  br i1 %.not, label %.thread, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ok = add nsw i32 %.0131, 1                   ; 2 uses
  %i.ol = icmp eq i32 %i.ok, 4
  br i1 %i.ol, label %split, label %.thread

.thread:                                          ; preds = %bb.cl, %bb.ck, %bb.cm, %bb.cd
  %.251 = phi float [ %.049128, %bb.cd ], [ %.049128, %bb.cm ], [ %i.oh, %bb.ck ], [ %.049128, %bb.cl ] ; 2 uses
  %.247 = phi i32 [ %.045130, %bb.cd ], [ %.045130, %bb.cm ], [ %i.oj, %bb.ck ], [ %.045130, %bb.cl ] ; 2 uses
  %.2 = phi i32 [ %.0131, %bb.cd ], [ %i.ok, %bb.cm ], [ 1, %bb.ck ], [ 0, %bb.cl ]
  %i.om = getelementptr inbounds nuw i8, ptr %.053127, i64 72
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !140 ; 2 uses
  %i.oo = add nuw nsw i32 %.048129, 1
  %.not132 = icmp eq ptr %i.on, %i.m
  br i1 %.not132, label %.thread._crit_edge, label %bb.cd, !llvm.loop !135

.thread._crit_edge:                               ; preds = %.thread
  %.val57.pre = load ptr, ptr %1, align 8, !tbaa !22
  br label %split, !llvm.loop !135

split:                                            ; preds = %bb.cm, %bb.ce, %.thread._crit_edge
  %.val57 = phi ptr [ %.val57.pre, %.thread._crit_edge ], [ %.val60, %bb.cm ], [ %.val57.pre133, %bb.ce ]
  %.049.lcssa = phi float [ %.251, %.thread._crit_edge ], [ %.049128, %bb.ce ], [ %.049128, %bb.cm ]
  %.045.lcssa = phi i32 [ %.247, %.thread._crit_edge ], [ %.045130, %bb.ce ], [ %.045130, %bb.cm ]
  %.val58 = load i32, ptr %i.a, align 8, !tbaa !23
  %.val59 = load i32, ptr %i.ks, align 8, !tbaa !87
  %i.op = getelementptr i8, ptr %.val57, i64 376
  %.val57.val = load ptr, ptr %i.op, align 8, !tbaa !78
  %i.oq = getelementptr i8, ptr %.val57.val, i64 8
  %.val57.val.val = load ptr, ptr %i.oq, align 8, !tbaa !27
  %i.or = sext i32 %.val58 to i64
  %i.os = getelementptr inbounds [4 x i8], ptr %.val57.val.val, i64 %i.or
  store i32 %.val59, ptr %i.os, align 4, !tbaa !46
  %.val24.i113 = load i32, ptr %i.q, align 4, !tbaa !25 ; 2 uses
  %i.ot = icmp sgt i32 %.val24.i113, 0
  br i1 %i.ot, label %.lr.ph.i114, label %Abc_SclConeRestore.exit

.lr.ph.i114:                                      ; preds = %split
  %i.ou = load ptr, ptr %i.kv, align 8, !tbaa !63
  %i.ov = getelementptr i8, ptr %2, i64 8
  %.val.i115 = load ptr, ptr %i.ov, align 8, !tbaa !27
  %i.ow = getelementptr i8, ptr %i.ou, i64 32
  %.val25.i116 = load ptr, ptr %i.ow, align 8, !tbaa !42
  %i.ox = getelementptr i8, ptr %.val25.i116, i64 8
  %.val25.val.i = load ptr, ptr %i.ox, align 8, !tbaa !45
  %i.oy = getelementptr i8, ptr %0, i64 88
  %wide.trip.count.i117 = zext nneg i32 %.val24.i113 to i64
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cp, %.lr.ph.i114
  %indvars.iv.i118 = phi i64 [ 0, %.lr.ph.i114 ], [ %indvars.iv.next.i122, %bb.cp ] ; 2 uses
  %.039.i = phi i32 [ 0, %.lr.ph.i114 ], [ %.1.i121, %bb.cp ] ; 3 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %.val.i115, i64 %indvars.iv.i118
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !46
  %i.pb = sext i32 %i.pa to i64
  %i.pc = getelementptr inbounds [8 x i8], ptr %.val25.val.i, i64 %i.pb
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !47 ; 2 uses
  %i.pe = icmp eq ptr %i.pd, null
  br i1 %i.pe, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.pf = load ptr, ptr %i.n, align 8, !tbaa !137
  %i.pg = getelementptr i8, ptr %i.pf, i64 8
  %.val37.i = load ptr, ptr %i.pg, align 8, !tbaa !83
  %i.ph = sext i32 %.039.i to i64
  %i.pi = getelementptr [4 x i8], ptr %.val37.i, i64 %i.ph ; 4 uses
  %i.pj = load float, ptr %i.pi, align 4, !tbaa !76
  %.val28.i119 = load ptr, ptr %i.kx, align 8, !tbaa !70
  %i.pk = getelementptr i8, ptr %i.pd, i64 16
  %.val29.i = load i32, ptr %i.pk, align 8, !tbaa !23
  %i.pl = zext i32 %.val29.i to i64               ; 2 uses
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %.val28.i119, i64 %i.pl ; 2 uses
  store float %i.pj, ptr %i.pm, align 4, !tbaa !72
  %i.pn = getelementptr i8, ptr %i.pi, i64 4
  %i.po = load float, ptr %i.pn, align 4, !tbaa !76
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pm, i64 4
  store float %i.po, ptr %i.pp, align 4, !tbaa !73
  %i.pq = getelementptr i8, ptr %i.pi, i64 8
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !76
  %.val32.i120 = load ptr, ptr %i.oy, align 8, !tbaa !84
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %.val32.i120, i64 %i.pl ; 2 uses
  store float %i.pr, ptr %i.ps, align 4, !tbaa !72
  %i.pt = add nsw i32 %.039.i, 4
  %i.pu = getelementptr i8, ptr %i.pi, i64 12
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !76
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ps, i64 4
  store float %i.pv, ptr %i.pw, align 4, !tbaa !73
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.1.i121 = phi i32 [ %.039.i, %bb.cn ], [ %i.pt, %bb.co ]
  %indvars.iv.next.i122 = add nuw nsw i64 %indvars.iv.i118, 1 ; 2 uses
  %exitcond.not.i123 = icmp eq i64 %indvars.iv.next.i122, %wide.trip.count.i117
  br i1 %exitcond.not.i123, label %Abc_SclConeRestore.exit, label %bb.cn, !llvm.loop !136

Abc_SclConeRestore.exit:                          ; preds = %bb.cp, %split
  store float %.049.lcssa, ptr %6, align 4, !tbaa !76
  ret i32 %.045.lcssa
}

declare void @Abc_SclUpdateLoad(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @Abc_SclTimeCone(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @Abc_SclFindBypasses(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 %2, i32 noundef %3, i32 %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 3 uses
  store i32 0, ptr %i.e, align 4, !tbaa !52
  store i32 100, ptr %i.d, align 8, !tbaa !88
  %i.f = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #25 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !45
  %i.h = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 0, ptr %i.i, align 4, !tbaa !25
  store i32 100, ptr %i.h, align 8, !tbaa !26
  %i.j = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #25
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !27
  store ptr %i.h, ptr %i.a, align 8, !tbaa !77
  %i.l = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #25 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 0, ptr %i.m, align 4, !tbaa !25
  store i32 100, ptr %i.l, align 8, !tbaa !26
  %i.n = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #25
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !27
  store ptr %i.l, ptr %i.b, align 8, !tbaa !77
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !89   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !67
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %.lr.ph.i, label %Vec_QueClear.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !90
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !68
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv.i ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !46
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.aa
  store i32 -1, ptr %i.ab, align 4, !tbaa !46
  store i32 -1, ptr %i.y, align 4, !tbaa !46
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ac = load i32, ptr %i.r, align 4, !tbaa !67
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp slt i64 %indvars.iv.next.i, %i.ad
  br i1 %i.ae, label %bb.b, label %Vec_QueClear.exit, !llvm.loop !1

Vec_QueClear.exit:                                ; preds = %bb.b, %bb.a
  store i32 1, ptr %i.r, align 4, !tbaa !67
  %i.af = getelementptr i8, ptr %1, i64 4         ; 2 uses
  %.val234348 = load i32, ptr %i.af, align 4, !tbaa !25
  %i.ag = icmp sgt i32 %.val234348, 0
  br i1 %i.ag, label %.lr.ph350, label %.critedge
end_hunk_0
begin_hunk_1_@Abc_SclUpsizePerformInt:bb.a

bb.bg:                                            ; preds = %Abc_Clock.exit295, %Vec_IntFree.exit293
  %i.nb = load i32, ptr %i.dg, align 4, !tbaa !187
  %i.nc = icmp sgt i32 %.1209, %i.nb
  br i1 %i.nc, label %.loopexit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nd = load float, ptr %i.cc, align 4, !tbaa !105
  %i.ne = load i32, ptr %i.cd, align 4, !tbaa !175
  %i.nf = sitofp i32 %i.ne to float
  %i.ng = fcmp ugt float %i.nd, %i.nf
  br i1 %i.ng, label %bb.bi, label %.loopexit

bb.bi:                                            ; preds = %bb.bh
  %i.nh = add nuw nsw i32 %.0214358, 1            ; 3 uses
  %i.ni = load i32, ptr %2, align 4, !tbaa !170
  %i.nj = icmp slt i32 %i.nh, %i.ni
  br i1 %i.nj, label %bb.l, label %.loopexit, !llvm.loop !163

.loopexit:                                        ; preds = %bb.bh, %bb.bg, %Abc_Clock.exit295, %._crit_edge, %bb.bi, %.preheader, %bb.k
  %.1215 = phi i32 [ 0, %bb.k ], [ 0, %.preheader ], [ %.0214358, %bb.bh ], [ %.0214358, %bb.bg ], [ %.0214358, %Abc_Clock.exit295 ], [ %.0214358, %._crit_edge ], [ %i.nh, %bb.bi ] ; 2 uses
  %.1205 = phi i32 [ 0, %bb.k ], [ 0, %.preheader ], [ %i.ml, %bb.bh ], [ %i.ml, %bb.bg ], [ %i.ml, %Abc_Clock.exit295 ], [ %.0204362, %._crit_edge ], [ %i.ml, %bb.bi ]
  %.1203 = phi i32 [ 0, %bb.k ], [ 0, %.preheader ], [ %i.mm, %bb.bh ], [ %i.mm, %bb.bg ], [ %i.mm, %Abc_Clock.exit295 ], [ %.0202363, %._crit_edge ], [ %i.mm, %bb.bi ]
  %.1201 = phi i32 [ 0, %bb.k ], [ 0, %.preheader ], [ %i.mn, %bb.bh ], [ %i.mn, %bb.bg ], [ %i.mn, %Abc_Clock.exit295 ], [ %.0200364, %._crit_edge ], [ %i.mn, %bb.bi ]
  %.1199 = phi i32 [ 0, %bb.k ], [ 0, %.preheader ], [ %i.mo, %bb.bh ], [ %i.mo, %bb.bg ], [ %i.mo, %Abc_Clock.exit295 ], [ %.0198365, %._crit_edge ], [ %i.mo, %bb.bi ]
  %i.nk = load ptr, ptr %i.bz, align 8, !tbaa !179
  %i.nl = load ptr, ptr %i.bk, align 8, !tbaa !63 ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 376 ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !78
  store ptr %i.nn, ptr %i.bz, align 8, !tbaa !179
  store ptr %i.nk, ptr %i.nm, align 8, !tbaa !78
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.np = load i32, ptr %i.no, align 4, !tbaa !181
  %.not237 = icmp eq i32 %i.np, 0
  br i1 %.not237, label %Abc_SclUpsizeRemoveDangling.exit, label %bb.bj

bb.bj:                                            ; preds = %.loopexit
  %i.nq = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !94 ; 2 uses
  %i.ns = getelementptr i8, ptr %i.nr, i64 4
  %.val22.i296 = load i32, ptr %i.ns, align 4, !tbaa !25 ; 2 uses
  %i.nt = icmp sgt i32 %.val22.i296, 2
  br i1 %i.nt, label %.lr.ph.i297, label %Abc_SclUndoRecentChanges.exit.thread

.lr.ph.i297:                                      ; preds = %bb.bj
  %i.nu = getelementptr i8, ptr %i.nr, i64 8
  %i.nv = getelementptr i8, ptr %i.nl, i64 32
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nl, i64 384
  %i.nx = udiv i32 %.val22.i296, 3
  %i.ny = zext nneg i32 %i.nx to i64
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bn, %.lr.ph.i297
  %indvars.iv.i298 = phi i64 [ %i.ny, %.lr.ph.i297 ], [ %indvars.iv.next.i299, %bb.bn ] ; 2 uses
  %indvars.iv.next.i299 = add nsw i64 %indvars.iv.i298, -1 ; 2 uses
  %.val21.i = load ptr, ptr %i.nu, align 8, !tbaa !27
  %.idx.i = mul nuw nsw i64 %indvars.iv.next.i299, 12
  %i.nz = getelementptr inbounds nuw i8, ptr %.val21.i, i64 %.idx.i ; 3 uses
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !46
  %.val25.i300 = load ptr, ptr %i.nv, align 8, !tbaa !42
  %i.ob = getelementptr i8, ptr %.val25.i300, i64 8
  %.val25.val.i = load ptr, ptr %i.ob, align 8, !tbaa !45 ; 3 uses
  %i.oc = sext i32 %i.oa to i64
  %i.od = getelementptr inbounds [8 x i8], ptr %.val25.val.i, i64 %i.oc
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !47 ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  %i.og = load i32, ptr %i.of, align 4, !tbaa !46
  %i.oh = sext i32 %i.og to i64
  %i.oi = getelementptr inbounds [8 x i8], ptr %.val25.val.i, i64 %i.oh
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !47
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !46
  %i.om = sext i32 %i.ol to i64
  %i.on = getelementptr inbounds [8 x i8], ptr %.val25.val.i, i64 %i.om
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !47 ; 3 uses
  call void @Abc_ObjPatchFanin(ptr noundef %i.oe, ptr noundef %i.oj, ptr noundef %i.oo) #26
  call void @Abc_SclTimeIncUpdateLevel(ptr noundef %i.oe) #26
  %i.op = load ptr, ptr %i.nw, align 8, !tbaa !91
  %.not.i301 = icmp eq ptr %i.op, null
  br i1 %.not.i301, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.oq = call i32 @Abc_SclIsInv(ptr noundef %i.oo) #26
  %.not19.i = icmp eq i32 %i.oq, 0
  br i1 %.not19.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @Abc_NodeInvUpdateObjFanoutPolarity(ptr noundef %i.oo, ptr noundef %i.oe) #26
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.or = icmp samesign ugt i64 %indvars.iv.i298, 1
  br i1 %i.or, label %bb.bk, label %Abc_SclUndoRecentChanges.exit, !llvm.loop !6

Abc_SclUndoRecentChanges.exit:                    ; preds = %bb.bn
  %.pr.pre = load i32, ptr %i.no, align 4, !tbaa !181
  %i.os = icmp eq i32 %.pr.pre, 0
  br i1 %i.os, label %Abc_SclUpsizeRemoveDangling.exit, label %Abc_SclUndoRecentChanges.exit.thread

Abc_SclUndoRecentChanges.exit.thread:             ; preds = %bb.bj, %Abc_SclUndoRecentChanges.exit
  %i.ot = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !42 ; 2 uses
  %i.ov = getelementptr i8, ptr %i.ou, i64 4
  %.val1423.i = load i32, ptr %i.ov, align 4, !tbaa !52
  %i.ow = icmp sgt i32 %.val1423.i, 0
  br i1 %i.ow, label %.lr.ph.i303, label %Abc_SclUpsizeRemoveDangling.exit

.lr.ph.i303:                                      ; preds = %Abc_SclUndoRecentChanges.exit.thread
  %i.ox = getelementptr inbounds nuw i8, ptr %i.az, i64 236 ; 2 uses
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bs, %.lr.ph.i303
  %i.oy = phi ptr [ %i.ou, %.lr.ph.i303 ], [ %i.qd, %bb.bs ] ; 5 uses
  %indvars.iv.i304 = phi i64 [ 0, %.lr.ph.i303 ], [ %indvars.iv.next.i306, %bb.bs ] ; 2 uses
  %i.oz = getelementptr i8, ptr %i.oy, i64 8
  %.val15.val.i = load ptr, ptr %i.oz, align 8, !tbaa !45
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %.val15.val.i, i64 %indvars.iv.i304
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !47 ; 8 uses
  %i.pc = icmp eq ptr %i.pb, null
  br i1 %i.pc, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.pd = getelementptr i8, ptr %i.pb, i64 20
  %.val16.i = load i32, ptr %i.pd, align 4
  %i.pe = and i32 %.val16.i, 15
  %.not.i305 = icmp eq i32 %i.pe, 7
  br i1 %.not.i305, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.pf = load ptr, ptr %i.pb, align 8, !tbaa !22 ; 3 uses
  %i.pg = getelementptr i8, ptr %i.pf, i64 4
  %.val6.i.i = load i32, ptr %i.pg, align 4, !tbaa !110
  %.not.i.not.i = icmp eq i32 %.val6.i.i, 4
  br i1 %.not.i.not.i, label %bb.br, label %Abc_ObjIsBarBuf.exit.thread.i

bb.br:                                            ; preds = %bb.bq
  %i.ph = getelementptr i8, ptr %i.pb, i64 28
  %.val.i.i308 = load i32, ptr %i.ph, align 4, !tbaa !25
  %i.pi = icmp eq i32 %.val.i.i308, 1
  br i1 %i.pi, label %Abc_ObjIsBarBuf.exit.i, label %Abc_ObjIsBarBuf.exit.thread.i

Abc_ObjIsBarBuf.exit.i:                           ; preds = %bb.br
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pb, i64 64
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !96
  %.not22.i = icmp eq ptr %i.pk, null
  br i1 %.not22.i, label %bb.bs, label %Abc_ObjIsBarBuf.exit.thread.i

Abc_ObjIsBarBuf.exit.thread.i:                    ; preds = %Abc_ObjIsBarBuf.exit.i, %bb.br, %bb.bq
  %i.pl = getelementptr i8, ptr %i.pb, i64 44
  %.val.i307 = load i32, ptr %i.pl, align 4, !tbaa !24
  %i.pm = icmp eq i32 %.val.i307, 0
  br i1 %i.pm, label %Abc_SclObjCell.exit.i, label %bb.bs

Abc_SclObjCell.exit.i:                            ; preds = %Abc_ObjIsBarBuf.exit.thread.i
  %i.pn = getelementptr i8, ptr %i.pb, i64 16
  %.val18.i = load i32, ptr %i.pn, align 8, !tbaa !23
  %i.po = getelementptr i8, ptr %i.pf, i64 376
  %.val.val.i.i = load ptr, ptr %i.po, align 8, !tbaa !78
  %i.pp = getelementptr i8, ptr %.val.val.i.i, i64 8
  %.val.val.val.i.i = load ptr, ptr %i.pp, align 8, !tbaa !27
  %i.pq = sext i32 %.val18.i to i64
  %i.pr = getelementptr inbounds [4 x i8], ptr %.val.val.val.i.i, i64 %i.pq
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !46 ; 2 uses
  %i.pt = icmp ne i32 %i.ps, -1
  call void @llvm.assume(i1 %i.pt)
  %i.pu = getelementptr i8, ptr %i.pf, i64 368
  %.val4.val.i.i = load ptr, ptr %i.pu, align 8, !tbaa !79
  %i.pv = getelementptr i8, ptr %.val4.val.i.i, i64 112
  %.val5.i19.i = load ptr, ptr %i.pv, align 8, !tbaa !45
  %i.pw = sext i32 %i.ps to i64
  %i.px = getelementptr inbounds [8 x i8], ptr %.val5.i19.i, i64 %i.pw
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !47
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 24
  %i.qa = load float, ptr %i.pz, align 8, !tbaa !97
  %i.qb = load float, ptr %i.ox, align 4, !tbaa !98
  %i.qc = fsub float %i.qb, %i.qa
  store float %i.qc, ptr %i.ox, align 4, !tbaa !98
  call void @Abc_NtkDeleteObj_rec(ptr noundef nonnull %i.pb, i32 noundef 1) #26
  %.pre.i = load ptr, ptr %i.ot, align 8, !tbaa !42
  br label %bb.bs

bb.bs:                                            ; preds = %Abc_SclObjCell.exit.i, %Abc_ObjIsBarBuf.exit.thread.i, %Abc_ObjIsBarBuf.exit.i, %bb.bp, %bb.bo
  %i.qd = phi ptr [ %i.oy, %Abc_ObjIsBarBuf.exit.i ], [ %i.oy, %bb.bp ], [ %i.oy, %bb.bo ], [ %.pre.i, %Abc_SclObjCell.exit.i ], [ %i.oy, %Abc_ObjIsBarBuf.exit.thread.i ] ; 2 uses
  %indvars.iv.next.i306 = add nuw nsw i64 %indvars.iv.i304, 1 ; 2 uses
  %i.qe = getelementptr i8, ptr %i.qd, i64 4
  %.val14.i = load i32, ptr %i.qe, align 4, !tbaa !52
  %i.qf = sext i32 %.val14.i to i64
  %i.qg = icmp slt i64 %indvars.iv.next.i306, %i.qf
  br i1 %i.qg, label %bb.bo, label %Abc_SclUpsizeRemoveDangling.exit, !llvm.loop !7

Abc_SclUpsizeRemoveDangling.exit:                 ; preds = %bb.bs, %.loopexit, %Abc_SclUndoRecentChanges.exit.thread, %Abc_SclUndoRecentChanges.exit
  %i.qh = getelementptr inbounds nuw i8, ptr %i.az, i64 236 ; 3 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.az, i64 240
  call void @Abc_SclTimeNtkRecompute(ptr noundef %i.az, ptr noundef nonnull %i.qh, ptr noundef nonnull %i.qi, i32 noundef 0, float noundef 0.000000e+00) #26
  %i.qj = load i32, ptr %i.o, align 4, !tbaa !169
  %.not239 = icmp eq i32 %i.qj, 0
  br i1 %.not239, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %Abc_SclUpsizeRemoveDangling.exit
  %i.qk = load i32, ptr %i.an, align 4, !tbaa !171
  %i.ql = call i32 @llvm.umax.i32(i32 %.1215, i32 1) ; 4 uses
  %19 = sdiv i32 %.1205, %i.ql
  %20 = sdiv i32 %.1203, %i.ql
  %21 = sdiv i32 %.1199, %i.ql
  %22 = sdiv i32 %.1201, %i.ql
  call void @Abc_SclUpsizePrint(ptr noundef nonnull %i.az, i32 noundef %.1215, i32 noundef %i.qk, i32 noundef %19, i32 noundef %20, i32 noundef %21, i32 noundef %22, i32 noundef 1)
  br label %bb.bv

bb.bu:                                            ; preds = %Abc_SclUpsizeRemoveDangling.exit
  %i.qm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34) ; 0 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.qn = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #26
  %i.qo = icmp slt i32 %i.qn, 0
  br i1 %i.qo, label %Abc_Clock.exit310, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.qp = load i64, ptr %7, align 8, !tbaa !107
  %i.qq = mul nsw i64 %i.qp, 1000000
  %i.qr = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !108
  %i.qt = sdiv i64 %i.qs, 1000
  %i.qu = add nsw i64 %i.qt, %i.qq
  br label %Abc_Clock.exit310

Abc_Clock.exit310:                                ; preds = %bb.bv, %bb.bw
  %.0.i309 = phi i64 [ %i.qu, %bb.bw ], [ -1, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.qv = load i64, ptr %i.bj, align 8, !tbaa !109
  %i.qw = sub nsw i64 %.0.i309, %i.qv             ; 2 uses
  store i64 %i.qw, ptr %i.bj, align 8, !tbaa !109
  %i.qx = load i32, ptr %i.o, align 4, !tbaa !169
  %.not241 = icmp eq i32 %i.qx, 0
  br i1 %.not241, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %Abc_Clock.exit310
  %i.qy = getelementptr inbounds nuw i8, ptr %i.az, i64 272 ; 2 uses
  %i.qz = load i64, ptr %i.qy, align 8, !tbaa !180
  %i.ra = getelementptr inbounds nuw i8, ptr %i.az, i64 280 ; 2 uses
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !184
  %i.rc = getelementptr inbounds nuw i8, ptr %i.az, i64 288 ; 2 uses
  %i.rd = load i64, ptr %i.rc, align 8, !tbaa !186
  %i.re = add i64 %i.qz, %i.rb
  %i.rf = add i64 %i.re, %i.rd
  %i.rg = sub i64 %i.qw, %i.rf
  %i.rh = getelementptr inbounds nuw i8, ptr %i.az, i64 296 ; 2 uses
  store i64 %i.rg, ptr %i.rh, align 8, !tbaa !188
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36)
  %i.ri = load i64, ptr %i.qy, align 8, !tbaa !180
  %i.rj = load i64, ptr %i.bj, align 8, !tbaa !109 ; 2 uses
  %.not242 = icmp eq i64 %i.rj, 0
  %i.rk = sitofp i64 %i.rj to double
  %i.rl = sitofp i64 %i.ri to double
  %i.rm = insertelement <2 x double> poison, double %i.rl, i64 0
  %i.rn = shufflevector <2 x double> %i.rm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ro = fmul nnan <2 x double> %i.rn, <double 1.000000e+00, double 1.000000e+02>
  %i.rp = insertelement <2 x double> <double 1.000000e+06, double poison>, double %i.rk, i64 1
  %i.rq = fdiv <2 x double> %i.ro, %i.rp          ; 2 uses
  %i.rr = extractelement <2 x double> %i.rq, i64 1
  %i.rs = select i1 %.not242, double 0.000000e+00, double %i.rr
  %i.rt = extractelement <2 x double> %i.rq, i64 0
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.37, double noundef %i.rt, double noundef %i.rs)
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.38)
  %i.ru = load i64, ptr %i.ra, align 8, !tbaa !184
  %i.rv = load i64, ptr %i.bj, align 8, !tbaa !109 ; 2 uses
  %.not243 = icmp eq i64 %i.rv, 0
  %i.rw = sitofp i64 %i.rv to double
  %i.rx = sitofp i64 %i.ru to double
  %i.ry = insertelement <2 x double> poison, double %i.rx, i64 0
  %i.rz = shufflevector <2 x double> %i.ry, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sa = fmul nnan <2 x double> %i.rz, <double 1.000000e+00, double 1.000000e+02>
  %i.sb = insertelement <2 x double> <double 1.000000e+06, double poison>, double %i.rw, i64 1
  %i.sc = fdiv <2 x double> %i.sa, %i.sb          ; 2 uses
  %i.sd = extractelement <2 x double> %i.sc, i64 1
  %i.se = select i1 %.not243, double 0.000000e+00, double %i.sd
  %i.sf = extractelement <2 x double> %i.sc, i64 0
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.37, double noundef %i.sf, double noundef %i.se)
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.39)
  %i.sg = load i64, ptr %i.rc, align 8, !tbaa !186
  %i.sh = load i64, ptr %i.bj, align 8, !tbaa !109 ; 2 uses
  %.not244 = icmp eq i64 %i.sh, 0
  %i.si = sitofp i64 %i.sh to double
  %i.sj = sitofp i64 %i.sg to double
  %i.sk = insertelement <2 x double> poison, double %i.sj, i64 0
  %i.sl = shufflevector <2 x double> %i.sk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sm = fmul nnan <2 x double> %i.sl, <double 1.000000e+00, double 1.000000e+02>
  %i.sn = insertelement <2 x double> <double 1.000000e+06, double poison>, double %i.si, i64 1
  %i.so = fdiv <2 x double> %i.sm, %i.sn          ; 2 uses
  %i.sp = extractelement <2 x double> %i.so, i64 1
  %i.sq = select i1 %.not244, double 0.000000e+00, double %i.sp
  %i.sr = extractelement <2 x double> %i.so, i64 0
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.37, double noundef %i.sr, double noundef %i.sq)
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.40)
  %i.ss = load i64, ptr %i.rh, align 8, !tbaa !188
  %i.st = load i64, ptr %i.bj, align 8, !tbaa !109 ; 2 uses
  %.not245 = icmp eq i64 %i.st, 0
  %i.su = sitofp i64 %i.st to double
  %i.sv = sitofp i64 %i.ss to double
  %i.sw = insertelement <2 x double> poison, double %i.sv, i64 0
  %i.sx = shufflevector <2 x double> %i.sw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sy = fmul nnan <2 x double> %i.sx, <double 1.000000e+00, double 1.000000e+02>
  %i.sz = insertelement <2 x double> <double 1.000000e+06, double poison>, double %i.su, i64 1
  %i.ta = fdiv <2 x double> %i.sy, %i.sz          ; 2 uses
  %i.tb = extractelement <2 x double> %i.ta, i64 1
  %i.tc = select i1 %.not245, double 0.000000e+00, double %i.tb
  %i.td = extractelement <2 x double> %i.ta, i64 0
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.37, double noundef %i.td, double noundef %i.tc)
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.41)
  %i.te = load i64, ptr %i.bj, align 8, !tbaa !109 ; 2 uses
  %.not246 = icmp eq i64 %i.te, 0
  %i.tf = sitofp i64 %i.te to double              ; 2 uses
  %i.tg = insertelement <2 x double> poison, double %i.tf, i64 0
  %i.th = shufflevector <2 x double> %i.tg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ti = fmul nnan <2 x double> %i.th, <double 1.000000e+00, double 1.000000e+02>
  %i.tj = insertelement <2 x double> <double 1.000000e+06, double poison>, double %i.tf, i64 1
  %i.tk = fdiv <2 x double> %i.ti, %i.tj          ; 2 uses
  %i.tl = extractelement <2 x double> %i.tk, i64 1
  %i.tm = select i1 %.not246, double 0.000000e+00, double %i.tl
  %i.tn = extractelement <2 x double> %i.tk, i64 0
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.37, double noundef %i.tn, double noundef %i.tm)
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %Abc_Clock.exit310
  %i.to = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !189
  %.not247 = icmp eq i32 %i.tp, 0
  br i1 %.not247, label %bb.ce, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.tq = call noalias ptr @fopen(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.46) ; 13 uses
  %i.tr = load ptr, ptr %i.bk, align 8, !tbaa !63
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !190 ; 2 uses
  %i.tu = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) @Abc_SclDumpStats.FileNameOld, ptr noundef nonnull dereferenceable(1) %i.tt) #27
  %.not.i311 = icmp eq i32 %i.tu, 0
  br i1 %.not.i311, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %strcpy.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @Abc_SclDumpStats.FileNameOld, ptr noundef nonnull dereferenceable(1) %i.tt) ; 0 uses
  %fputc25.i = call i32 @fputc(i32 10, ptr %i.tq) ; 0 uses
  %i.tv = load ptr, ptr %i.bk, align 8, !tbaa !63
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !190
  %i.ty = call ptr @Extra_FileNameWithoutPath(ptr noundef %i.tx) #26
  %i.tz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tq, ptr noundef nonnull @.str.48, ptr noundef %i.ty) #26 ; 0 uses
  %i.ua = load ptr, ptr %i.bk, align 8, !tbaa !63
  %i.ub = getelementptr i8, ptr %i.ua, i64 40
  %.val27.i = load ptr, ptr %i.ub, align 8, !tbaa !191
  %i.uc = getelementptr i8, ptr %.val27.i, i64 4
  %.val27.val.i = load i32, ptr %i.uc, align 4, !tbaa !52
  %i.ud = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tq, ptr noundef nonnull @.str.49, i32 noundef %.val27.val.i) #26 ; 0 uses
  %i.ue = load ptr, ptr %i.bk, align 8, !tbaa !63
  %i.uf = getelementptr i8, ptr %i.ue, i64 48
  %.val28.i = load ptr, ptr %i.uf, align 8, !tbaa !192
  %i.ug = getelementptr i8, ptr %.val28.i, i64 4
  %.val28.val.i = load i32, ptr %i.ug, align 4, !tbaa !52
  %i.uh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tq, ptr noundef nonnull @.str.49, i32 noundef %.val28.val.i) #26 ; 0 uses
  %i.ui = load ptr, ptr %i.bk, align 8, !tbaa !63
  %i.uj = getelementptr i8, ptr %i.ui, i64 124
  %.val26.i = load i32, ptr %i.uj, align 4, !tbaa !46 ; 2 uses
  store i32 %.val26.i, ptr @Abc_SclDumpStats.nNodesOld, align 4, !tbaa !46
  %i.uk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tq, ptr noundef nonnull @.str.49, i32 noundef %.val26.i) #26 ; 0 uses
  %i.ul = load float, ptr %i.qh, align 4, !tbaa !98
  %i.um = fptosi float %i.ul to i32               ; 2 uses
  store i32 %i.um, ptr @Abc_SclDumpStats.nAreaOld, align 4, !tbaa !46
  %i.un = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tq, ptr noundef nonnull @.str.49, i32 noundef %i.um) #26 ; 0 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.az, i64 256
  %i.up = load float, ptr %i.uo, align 8, !tbaa !193
  %i.uq = fptosi float %i.up to i32               ; 2 uses
  store i32 %i.uq, ptr @Abc_SclDumpStats.nDelayOld, align 4, !tbaa !46
  %i.ur = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tq, ptr noundef nonnull @.str.49, i32 noundef %i.uq) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.us = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #26
  %i.ut = icmp slt i32 %i.us, 0
  br i1 %i.ut, label %Abc_Clock.exit.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.uu = load i64, ptr %6, align 8, !tbaa !107
  %i.uv = mul nsw i64 %i.uu, 1000000
  %i.uw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ux = load i64, ptr %i.uw, align 8, !tbaa !108
  %i.uy = sdiv i64 %i.ux, 1000
  %i.uz = add nsw i64 %i.uy, %i.uv
  br label %Abc_Clock.exit.i

Abc_Clock.exit.i:                                 ; preds = %bb.cb, %bb.ca
  %.0.i.i = phi i64 [ %i.uz, %bb.cb ], [ -1, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  store i64 %.0.i.i, ptr @Abc_SclDumpStats.clk, align 8, !tbaa !194
  br label %Abc_SclDumpStats.exit

bb.cc:                                            ; preds = %bb.bz
  %fputc.i = call i32 @fputc(i32 32, ptr %i.tq)   ; 0 uses
  %i.va = load ptr, ptr %i.bk, align 8, !tbaa !63
  %i.vb = getelementptr i8, ptr %i.va, i64 124
  %.val.i312 = load i32, ptr %i.vb, align 4, !tbaa !46
  %i.vc = sitofp i32 %.val.i312 to double
  %i.vd = fmul nnan double %i.vc, 1.000000e+02
  %i.ve = load i32, ptr @Abc_SclDumpStats.nNodesOld, align 4, !tbaa !46
  %i.vf = sitofp i32 %i.ve to double
  %i.vg = fdiv double %i.vd, %i.vf
  %i.vh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tq, ptr noundef nonnull @.str.51, double noundef %i.vg) #26 ; 0 uses
  %i.vi = load float, ptr %i.qh, align 4, !tbaa !98
  %i.vj = fptosi float %i.vi to i32
end_hunk_1
begin_hunk_2_@Abc_SclUpsizePerformInt:bb.a
bb.ec:                                            ; preds = %bb.eb
  call void @free(ptr noundef nonnull %i.aee) #26
  store ptr null, ptr %i.aed, align 8, !tbaa !75
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.aef = getelementptr inbounds nuw i8, ptr %i.az, i64 80 ; 2 uses
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !70 ; 2 uses
  %.not54.i = icmp eq ptr %i.aeg, null
  br i1 %.not54.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void @free(ptr noundef nonnull %i.aeg) #26
  store ptr null, ptr %i.aef, align 8, !tbaa !70
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.az, i64 88
  %i.aei = load ptr, ptr %i.aeh, align 8, !tbaa !84 ; 2 uses
  %.not55.i = icmp eq ptr %i.aei, null
  br i1 %.not55.i, label %Abc_SclManFree.exit, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call void @free(ptr noundef nonnull %i.aei) #26
  br label %Abc_SclManFree.exit

Abc_SclManFree.exit:                              ; preds = %bb.ef, %bb.eg
  call void @free(ptr noundef nonnull %i.az) #26
  ret void
}

declare ptr @Abc_SclManStart(ptr noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #5

declare i32 @Abc_SclTimeIncUpdate(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #13 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !46
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #26 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #26
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #26 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !206
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #27
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #26 ; 0 uses
  call void @free(ptr noundef %i.d) #26
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !206, !noalias !207
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #26, !inline_history !204 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void
}

declare void @Abc_SclSclGates2MioGates(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @Abc_SclUpsizePerform(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !208
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @Abc_NtkDupDfsNoBarBufs(ptr noundef nonnull %1) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.d, %bb.b ], [ %1, %bb.a ]    ; 3 uses
  tail call void @Abc_SclUpsizePerformInt(ptr noundef %0, ptr noundef %.0, ptr noundef %2, ptr noundef %3)
  %i.e = load i32, ptr %i.a, align 8, !tbaa !208
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  tail call void @Abc_SclTransferGates(ptr noundef nonnull %1, ptr noundef %.0) #26
  %.pr = load i32, ptr %i.a, align 8, !tbaa !208
  %i.g = icmp sgt i32 %.pr, 0
  br i1 %i.g, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  tail call void @Abc_NtkDelete(ptr noundef %.0) #26
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.e, %bb.d
  ret void
}

declare ptr @Abc_NtkDupDfsNoBarBufs(ptr noundef) local_unnamed_addr #5

declare void @Abc_SclTransferGates(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @Abc_NtkDelete(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @Vec_IntSortCompare1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #16 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !46
  %i.b = load i32, ptr %1, align 4, !tbaa !46
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.a, i32 %i.b)
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

declare ptr @Mio_GateReadTwin(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #19

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #5

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #20

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #20

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

declare ptr @Extra_FileNameWithoutPath(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias returned writeonly, ptr noalias readonly captures(none)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

attributes #0 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind allocsize(1) }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { nounwind }
attributes #27 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !48}
!1 = distinct !{!1, !48}
!2 = distinct !{!2, !48}
!3 = distinct !{!3, !48}
!4 = distinct !{!4, !48}
!5 = distinct !{!5, !48}
!6 = distinct !{!6, !48}
!7 = distinct !{!7, !48}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"p1 _ZTS10Abc_Ntk_t_", !16, i64 0}
!18 = !{!"p1 _ZTS10Abc_Obj_t_", !16, i64 0}
!19 = !{!"p1 int", !16, i64 0}
!20 = !{!"Vec_Int_t_", !13, i64 0, !13, i64 4, !19, i64 8}
!21 = !{!"Abc_Obj_t_", !17, i64 0, !18, i64 8, !13, i64 16, !13, i64 20, !13, i64 20, !13, i64 20, !13, i64 20, !13, i64 20, !13, i64 21, !13, i64 21, !13, i64 21, !13, i64 21, !13, i64 21, !20, i64 24, !20, i64 40, !16, i64 56, !12, i64 64, !12, i64 72}
!22 = !{!21, !17, i64 0}
!23 = !{!21, !13, i64 16}
!24 = !{!21, !13, i64 44}
!25 = !{!20, !13, i64 4}
!26 = !{!20, !13, i64 0}
!27 = !{!20, !19, i64 8}
!28 = !{!21, !19, i64 48}
!29 = !{!"p1 omnipotent char", !16, i64 0}
!30 = !{!"p1 _ZTS9Nm_Man_t_", !16, i64 0}
!31 = !{!"p1 _ZTS10Vec_Ptr_t_", !16, i64 0}
!32 = !{!"p1 _ZTS10Abc_Des_t_", !16, i64 0}
!33 = !{!"double", !12, i64 0}
!34 = !{!"p1 _ZTS12Mem_Fixed_t_", !16, i64 0}
!35 = !{!"p1 _ZTS11Mem_Step_t_", !16, i64 0}
!36 = !{!"p1 _ZTS14Abc_ManTime_t_", !16, i64 0}
!37 = !{!"float", !12, i64 0}
!38 = !{!"p1 _ZTS10Vec_Int_t_", !16, i64 0}
!39 = !{!"p1 _ZTS10Abc_Cex_t_", !16, i64 0}
!40 = !{!"p1 float", !16, i64 0}
!41 = !{!"Abc_Ntk_t_", !13, i64 0, !13, i64 4, !29, i64 8, !29, i64 16, !30, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !31, i64 56, !31, i64 64, !31, i64 72, !31, i64 80, !31, i64 88, !12, i64 96, !13, i64 140, !13, i64 144, !13, i64 148, !13, i64 152, !17, i64 160, !13, i64 168, !32, i64 176, !17, i64 184, !13, i64 192, !13, i64 196, !13, i64 200, !33, i64 208, !13, i64 216, !20, i64 224, !34, i64 240, !35, i64 248, !16, i64 256, !36, i64 264, !16, i64 272, !37, i64 280, !13, i64 284, !38, i64 288, !31, i64 296, !19, i64 304, !39, i64 312, !31, i64 320, !17, i64 328, !16, i64 336, !16, i64 344, !17, i64 352, !16, i64 360, !16, i64 368, !38, i64 376, !38, i64 384, !29, i64 392, !40, i64 400, !31, i64 408, !38, i64 416, !38, i64 424, !31, i64 432, !38, i64 440, !38, i64 448, !38, i64 456}
!42 = !{!41, !31, i64 32}
!43 = !{!"any p2 pointer", !16, i64 0}
!44 = !{!"Vec_Ptr_t_", !13, i64 0, !13, i64 4, !43, i64 8}
!45 = !{!44, !43, i64 8}
!46 = !{!13, !13, i64 0}
!47 = !{!16, !16, i64 0}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!21, !13, i64 28}
!50 = !{!41, !13, i64 216}
!51 = !{!41, !19, i64 232}
!52 = !{!44, !13, i64 4}
!53 = !{!21, !19, i64 32}
!54 = !{!"p1 _ZTS7SC_Lib_", !16, i64 0}
!55 = !{!"p1 _ZTS12SC_WireLoad_", !16, i64 0}
!56 = !{!"p1 _ZTS10Vec_Flt_t_", !16, i64 0}
!57 = !{!"p1 _ZTS8SC_Pair_", !16, i64 0}
!58 = !{!"p1 _ZTS10Vec_Que_t_", !16, i64 0}
!59 = !{!"p1 _ZTS8SC_Cell_", !16, i64 0}
!60 = !{!"p1 _ZTS10Vec_Wec_t_", !16, i64 0}
!61 = !{!"long", !12, i64 0}
!62 = !{!"SC_Man_", !54, i64 0, !17, i64 8, !13, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !55, i64 48, !56, i64 56, !57, i64 64, !57, i64 72, !57, i64 80, !57, i64 88, !56, i64 96, !56, i64 104, !58, i64 112, !59, i64 120, !56, i64 128, !56, i64 136, !56, i64 144, !56, i64 152, !37, i64 160, !37, i64 164, !37, i64 168, !13, i64 172, !58, i64 176, !56, i64 184, !38, i64 192, !38, i64 200, !38, i64 208, !60, i64 216, !38, i64 224, !13, i64 232, !37, i64 236, !37, i64 240, !37, i64 244, !37, i64 248, !37, i64 252, !37, i64 256, !61, i64 264, !61, i64 272, !61, i64 280, !61, i64 288, !61, i64 296, !16, i64 304}
!63 = !{!62, !17, i64 8}
!64 = !{!62, !58, i64 112}
!65 = !{!"p2 float", !43, i64 0}
!66 = !{!"Vec_Que_t_", !13, i64 0, !13, i64 4, !19, i64 8, !19, i64 16, !65, i64 24}
!67 = !{!66, !13, i64 4}
!68 = !{!66, !19, i64 8}
!69 = !{!41, !31, i64 64}
!70 = !{!62, !57, i64 80}
!71 = !{!"SC_Pair_", !37, i64 0, !37, i64 4}
!72 = !{!71, !37, i64 0}
!73 = !{!71, !37, i64 4}
!74 = !{!62, !37, i64 240}
!75 = !{!62, !57, i64 72}
!76 = !{!37, !37, i64 0}
!77 = !{!38, !38, i64 0}
!78 = !{!41, !38, i64 376}
!79 = !{!41, !16, i64 368}
!80 = !{!"Vec_Flt_t_", !13, i64 0, !13, i64 4, !40, i64 8}
!81 = !{!80, !13, i64 4}
!82 = !{!80, !13, i64 0}
!83 = !{!80, !40, i64 8}
!84 = !{!62, !57, i64 88}
!85 = !{!62, !57, i64 64}
!86 = !{!"SC_Cell_", !29, i64 0, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !37, i64 24, !37, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !44, i64 48, !13, i64 64, !13, i64 68, !59, i64 72, !59, i64 80, !59, i64 88, !59, i64 96, !13, i64 104, !13, i64 108}
!87 = !{!86, !13, i64 8}
!88 = !{!44, !13, i64 0}
!89 = !{!62, !58, i64 176}
!90 = !{!66, !19, i64 16}
!91 = !{!41, !38, i64 384}
!92 = !{!62, !56, i64 184}
!93 = !{!62, !38, i64 192}
!94 = !{!62, !38, i64 40}
!95 = !{!62, !54, i64 0}
!96 = !{!12, !12, i64 0}
!97 = !{!86, !37, i64 24}
!98 = !{!62, !37, i64 236}
!99 = !{!62, !38, i64 32}
!100 = !{!62, !38, i64 200}
!101 = !{!"llvm.loop.unroll.disable"}
!102 = !{!66, !65, i64 24}
!103 = !{!40, !40, i64 0}
!104 = !{!62, !37, i64 248}
!105 = !{!62, !37, i64 252}
!106 = !{!"timespec", !61, i64 0, !61, i64 8}
!107 = !{!106, !61, i64 0}
!108 = !{!106, !61, i64 8}
!109 = !{!62, !61, i64 264}
!110 = !{!41, !13, i64 4}
!111 = distinct !{!111, !48}
!112 = distinct !{!112, !48}
!113 = distinct !{!113, !48}
!114 = distinct !{!114, !48}
!115 = distinct !{!115, !48}
!116 = distinct !{!116, !48}
!117 = distinct !{!117, !48}
!118 = distinct !{!118, !48}
!119 = distinct !{!119, !48}
!120 = distinct !{!120, !48}
!121 = distinct !{!121, !48}
!122 = distinct !{!122, !48}
!123 = distinct !{!123, !48}
!124 = distinct !{!124, !48}
!125 = distinct !{!125, !48}
!126 = distinct !{!126, !48}
!127 = distinct !{!127, !48}
!128 = distinct !{!128, !48}
!129 = distinct !{!129, !48}
!130 = distinct !{!130, !48}
!131 = distinct !{!131, !48}
!132 = distinct !{!132, !48}
!133 = distinct !{!133, !48}
!134 = distinct !{!134, !48}
!135 = distinct !{!135, !48}
!136 = distinct !{!136, !48}
!137 = !{!62, !56, i64 144}
!138 = !{!62, !56, i64 152}
!139 = !{!62, !56, i64 128}
!140 = !{!86, !59, i64 72}
!141 = distinct !{!141, !48}
!142 = distinct !{!142, !48}
!143 = distinct !{!143, !48}
!144 = distinct !{!144, !48}
!145 = distinct !{!145, !48}
!146 = distinct !{!146, !48}
!147 = distinct !{!147, !101}
!148 = !{!62, !56, i64 136}
!149 = !{!62, !38, i64 208}
!150 = !{!86, !29, i64 0}
!151 = !{!86, !13, i64 104}
!152 = !{!86, !13, i64 108}
!153 = distinct !{!153, !48}
!154 = !{!66, !13, i64 0}
!155 = distinct !{!155, !48}
!156 = distinct !{!156, !48}
!157 = distinct !{!157, !48}
!158 = distinct !{!158, !101}
!159 = distinct !{!159, !48}
!160 = !{!62, !13, i64 16}
!161 = !{!62, !37, i64 244}
!162 = distinct !{!162, !48}
!163 = distinct !{!163, !48}
!164 = distinct !{!164, !48}
!165 = distinct !{!165, !48}
!166 = distinct !{!166, !48}
end_hunk_2
