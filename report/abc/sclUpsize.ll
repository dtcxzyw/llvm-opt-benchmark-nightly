Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sclUpsize?download=true
inline.NumInlined: 487
inline.NumDeleted: 99
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Abc_SclFindBestCell:bb.a

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
  %.048129 = phi i32 [ 0, %Abc_SclLoadStore.exit ], [ %i.on, %.thread ] ; 2 uses
  %.049128 = phi float [ %i.kr, %Abc_SclLoadStore.exit ], [ %.251, %.thread ] ; 6 uses
  %.053127 = phi ptr [ %i.m, %Abc_SclLoadStore.exit ], [ %i.om, %.thread ] ; 4 uses
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
  %lcmp.mod186 = trunc i32 %.val.i98 to i1
  tail call void @llvm.assume(i1 %lcmp.mod186)
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
  %i.ny = fsub <2 x float> %i.nw, %i.nx
  %i.nz = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ny) ; 3 uses
  %7 = fcmp ogt float %i.nz, 0.000000e+00
  %i.oa = fmul float %i.nz, 1.500000e+00
  %8 = select i1 %7, float %i.nz, float %i.oa
  %i.ob = fpext float %8 to double
  %i.oc = fpext float %.02335.i to double
  %i.od = tail call double @llvm.fmuladd.f64(double %i.ob, double 5.000000e-01, double %i.oc)
  %i.oe = fptrunc double %i.od to float
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.124.i = phi float [ %.02335.i, %bb.ch ], [ %i.oe, %bb.ci ] ; 2 uses
  %.1.i = phi i32 [ %.037.i, %bb.ch ], [ %i.nv, %bb.ci ]
  %indvars.iv.next.i111 = add nuw nsw i64 %indvars.iv.i110, 1 ; 2 uses
  %exitcond.not.i112 = icmp eq i64 %indvars.iv.next.i111, %wide.trip.count.i109
  br i1 %exitcond.not.i112, label %Abc_SclEvalPerform.exit, label %bb.ch, !llvm.loop !134

Abc_SclEvalPerform.exit:                          ; preds = %bb.cj, %Abc_SclLoadRestore.exit
  %.023.lcssa.i = phi float [ 0.000000e+00, %Abc_SclLoadRestore.exit ], [ %.124.i, %bb.cj ]
  %i.of = sitofp i32 %.val27.i to float
  %i.og = fdiv float %.023.lcssa.i, %i.of         ; 2 uses
  %i.oh = fcmp olt float %.049128, %i.og
  br i1 %i.oh, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %Abc_SclEvalPerform.exit
  %i.oi = load i32, ptr %i.la, align 8, !tbaa !87
  br label %.thread

bb.cl:                                            ; preds = %Abc_SclEvalPerform.exit
  %.not = icmp eq i32 %.0131, 0
  br i1 %.not, label %.thread, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.oj = add nsw i32 %.0131, 1                   ; 2 uses
  %i.ok = icmp eq i32 %i.oj, 4
  br i1 %i.ok, label %split, label %.thread

.thread:                                          ; preds = %bb.cl, %bb.ck, %bb.cm, %bb.cd
  %.251 = phi float [ %.049128, %bb.cd ], [ %.049128, %bb.cm ], [ %i.og, %bb.ck ], [ %.049128, %bb.cl ] ; 2 uses
  %.247 = phi i32 [ %.045130, %bb.cd ], [ %.045130, %bb.cm ], [ %i.oi, %bb.ck ], [ %.045130, %bb.cl ] ; 2 uses
  %.2 = phi i32 [ %.0131, %bb.cd ], [ %i.oj, %bb.cm ], [ 1, %bb.ck ], [ 0, %bb.cl ]
  %i.ol = getelementptr inbounds nuw i8, ptr %.053127, i64 72
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !140 ; 2 uses
  %i.on = add nuw nsw i32 %.048129, 1
  %.not132 = icmp eq ptr %i.om, %i.m
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
  %i.oo = getelementptr i8, ptr %.val57, i64 376
  %.val57.val = load ptr, ptr %i.oo, align 8, !tbaa !78
  %i.op = getelementptr i8, ptr %.val57.val, i64 8
  %.val57.val.val = load ptr, ptr %i.op, align 8, !tbaa !27
  %i.oq = sext i32 %.val58 to i64
  %i.or = getelementptr inbounds [4 x i8], ptr %.val57.val.val, i64 %i.oq
  store i32 %.val59, ptr %i.or, align 4, !tbaa !46
  %.val24.i113 = load i32, ptr %i.q, align 4, !tbaa !25 ; 2 uses
  %i.os = icmp sgt i32 %.val24.i113, 0
  br i1 %i.os, label %.lr.ph.i114, label %Abc_SclConeRestore.exit

.lr.ph.i114:                                      ; preds = %split
  %i.ot = load ptr, ptr %i.kv, align 8, !tbaa !63
  %i.ou = getelementptr i8, ptr %2, i64 8
  %.val.i115 = load ptr, ptr %i.ou, align 8, !tbaa !27
  %i.ov = getelementptr i8, ptr %i.ot, i64 32
  %.val25.i116 = load ptr, ptr %i.ov, align 8, !tbaa !42
  %i.ow = getelementptr i8, ptr %.val25.i116, i64 8
  %.val25.val.i = load ptr, ptr %i.ow, align 8, !tbaa !45
  %i.ox = getelementptr i8, ptr %0, i64 88
  %wide.trip.count.i117 = zext nneg i32 %.val24.i113 to i64
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cp, %.lr.ph.i114
  %indvars.iv.i118 = phi i64 [ 0, %.lr.ph.i114 ], [ %indvars.iv.next.i122, %bb.cp ] ; 2 uses
  %.039.i = phi i32 [ 0, %.lr.ph.i114 ], [ %.1.i121, %bb.cp ] ; 3 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %.val.i115, i64 %indvars.iv.i118
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !46
  %i.pa = sext i32 %i.oz to i64
  %i.pb = getelementptr inbounds [8 x i8], ptr %.val25.val.i, i64 %i.pa
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !47 ; 2 uses
  %i.pd = icmp eq ptr %i.pc, null
  br i1 %i.pd, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.pe = load ptr, ptr %i.n, align 8, !tbaa !137
  %i.pf = getelementptr i8, ptr %i.pe, i64 8
  %.val37.i = load ptr, ptr %i.pf, align 8, !tbaa !83
  %i.pg = sext i32 %.039.i to i64
  %i.ph = getelementptr [4 x i8], ptr %.val37.i, i64 %i.pg ; 4 uses
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !76
  %.val28.i119 = load ptr, ptr %i.kx, align 8, !tbaa !70
  %i.pj = getelementptr i8, ptr %i.pc, i64 16
  %.val29.i = load i32, ptr %i.pj, align 8, !tbaa !23
  %i.pk = zext i32 %.val29.i to i64               ; 2 uses
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %.val28.i119, i64 %i.pk ; 2 uses
  store float %i.pi, ptr %i.pl, align 4, !tbaa !72
  %i.pm = getelementptr i8, ptr %i.ph, i64 4
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !76
  %i.po = getelementptr inbounds nuw i8, ptr %i.pl, i64 4
  store float %i.pn, ptr %i.po, align 4, !tbaa !73
  %i.pp = getelementptr i8, ptr %i.ph, i64 8
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !76
  %.val32.i120 = load ptr, ptr %i.ox, align 8, !tbaa !84
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %.val32.i120, i64 %i.pk ; 2 uses
  store float %i.pq, ptr %i.pr, align 4, !tbaa !72
  %i.ps = add nsw i32 %.039.i, 4
  %i.pt = getelementptr i8, ptr %i.ph, i64 12
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !76
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pr, i64 4
  store float %i.pu, ptr %i.pv, align 4, !tbaa !73
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.1.i121 = phi i32 [ %.039.i, %bb.cn ], [ %i.ps, %bb.co ]
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

.lr.ph350:                                        ; preds = %Vec_QueClear.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = getelementptr i8, ptr %1, i64 8
end_hunk_0
begin_hunk_1_@Abc_SclUpsizePerformInt:bb.a
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aej, i64 8
  store ptr null, ptr %i.aek, align 8, !tbaa !83
  br label %bb.dz

bb.dz:                                            ; preds = %.thread.i108.i, %bb.dy
  %i.ael = phi ptr [ %i.aej, %.thread.i108.i ], [ %i.aef, %bb.dy ]
  call void @free(ptr noundef nonnull %i.ael) #26
  store ptr null, ptr %i.aee, align 8, !tbaa !197
  br label %Vec_FltFreeP.exit109.i

Vec_FltFreeP.exit109.i:                           ; preds = %bb.dz, %Vec_FltFreeP.exit106.i
  %i.aem = getelementptr inbounds nuw i8, ptr %i.az, i64 64 ; 2 uses
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !85 ; 2 uses
  %.not.i321 = icmp eq ptr %i.aen, null
  br i1 %.not.i321, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %Vec_FltFreeP.exit109.i
  call void @free(ptr noundef nonnull %i.aen) #26
  store ptr null, ptr %i.aem, align 8, !tbaa !85
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %Vec_FltFreeP.exit109.i
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.az, i64 72 ; 2 uses
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !75 ; 2 uses
  %.not53.i = icmp eq ptr %i.aep, null
  br i1 %.not53.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  call void @free(ptr noundef nonnull %i.aep) #26
  store ptr null, ptr %i.aeo, align 8, !tbaa !75
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.az, i64 80 ; 2 uses
  %i.aer = load ptr, ptr %i.aeq, align 8, !tbaa !70 ; 2 uses
  %.not54.i = icmp eq ptr %i.aer, null
  br i1 %.not54.i, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void @free(ptr noundef nonnull %i.aer) #26
  store ptr null, ptr %i.aeq, align 8, !tbaa !70
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %i.aes = getelementptr inbounds nuw i8, ptr %i.az, i64 88
  %i.aet = load ptr, ptr %i.aes, align 8, !tbaa !84 ; 2 uses
  %.not55.i = icmp eq ptr %i.aet, null
  br i1 %.not55.i, label %Abc_SclManFree.exit, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call void @free(ptr noundef nonnull %i.aet) #26
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #17

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
end_hunk_1
