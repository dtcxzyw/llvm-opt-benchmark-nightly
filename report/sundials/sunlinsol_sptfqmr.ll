Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/sunlinsol_sptfqmr?download=true
inline.NumInlined: 5
inline.NumDeleted: 1
begin_hunk_0_@SUNLinSolSolve_SPTFQMR:bb.a
bb.b:                                             ; preds = %bb.a
  br i1 %.not503, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 -9998, ptr %i.as, align 8, !tbaa !31
  br label %bb.dn

bb.d:                                             ; preds = %bb.a
  br i1 %.not503, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.b, %bb.d
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %3, ptr noundef %i.f) #15
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.at = tail call i32 %i.ah(ptr noundef %i.ad, ptr noundef %2, ptr noundef %i.f) #15 ; 2 uses
  %.not505 = icmp eq i32 %i.at, 0
  br i1 %.not505, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.ak, align 8, !tbaa !60
  %i.au = icmp slt i32 %i.at, 0
  %i.av = select i1 %i.au, i32 -805, i32 803      ; 2 uses
  %i.aw = load ptr, ptr %0, align 8, !tbaa !30
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i32 %i.av, ptr %i.ax, align 8, !tbaa !31
  br label %bb.dn

bb.g:                                             ; preds = %bb.e
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %3, double noundef -1.000000e+00, ptr noundef %i.f, ptr noundef %i.f) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread
  switch i32 %i.ao, label %bb.k [
    i32 3, label %bb.i
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.ay = tail call i32 %i.aj(ptr noundef %i.af, ptr noundef %i.f, ptr noundef %i.t, double noundef %4, i32 noundef 1) #15 ; 2 uses
  %.not506 = icmp eq i32 %i.ay, 0
  br i1 %.not506, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ak, align 8, !tbaa !60
  %i.az = icmp slt i32 %i.ay, 0
  %i.ba = select i1 %i.az, i32 -808, i32 805      ; 2 uses
  %i.bb = load ptr, ptr %0, align 8, !tbaa !30
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i32 %i.ba, ptr %i.bc, align 8, !tbaa !31
  br label %bb.dn

bb.k:                                             ; preds = %bb.h
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.f, ptr noundef %i.t) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  br i1 %.not502, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @N_VProd(ptr noundef nonnull %i.z, ptr noundef %i.t, ptr noundef %i.f) #15
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.t, ptr noundef %i.f) #15
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bd = tail call double @N_VDotProd(ptr noundef %i.f, ptr noundef %i.f) #15 ; 3 uses
  %i.be = fcmp ugt double %i.bd, 0.000000e+00
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = tail call double @sqrt(double noundef %i.bd) #15
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.bg = phi double [ %i.bf, %bb.p ], [ 0.000000e+00, %bb.o ] ; 4 uses
  store double %i.bg, ptr %i.am, align 8, !tbaa !61
  %i.bh = fcmp ugt double %i.bg, %4
  br i1 %i.bh, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.ak, align 8, !tbaa !60
  %i.bi = load ptr, ptr %0, align 8, !tbaa !30
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store i32 0, ptr %i.bj, align 8, !tbaa !31
  br label %bb.dn

bb.s:                                             ; preds = %bb.q
  br i1 %.not, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @N_VDiv(ptr noundef %i.f, ptr noundef nonnull %i.ab, ptr noundef %i.t) #15
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.f, ptr noundef %i.t) #15
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  br i1 %i.aq, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.t, ptr noundef %i.l) #15
  %i.bk = tail call i32 %i.aj(ptr noundef %i.af, ptr noundef %i.l, ptr noundef %i.t, double noundef %4, i32 noundef 2) #15 ; 2 uses
  %.not507 = icmp eq i32 %i.bk, 0
  br i1 %.not507, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.ak, align 8, !tbaa !60
  %i.bl = icmp slt i32 %i.bk, 0
  %i.bm = select i1 %i.bl, i32 -808, i32 805      ; 2 uses
  %i.bn = load ptr, ptr %0, align 8, !tbaa !30
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i32 %i.bm, ptr %i.bo, align 8, !tbaa !31
  br label %bb.dn

bb.y:                                             ; preds = %bb.v, %bb.w
  %i.bp = tail call i32 %i.ah(ptr noundef %i.ad, ptr noundef %i.t, ptr noundef %i.l) #15 ; 2 uses
  %.not508 = icmp eq i32 %i.bp, 0
  br i1 %.not508, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.ak, align 8, !tbaa !60
  %i.bq = icmp slt i32 %i.bp, 0
  %i.br = select i1 %i.bq, i32 -805, i32 803      ; 2 uses
  %i.bs = load ptr, ptr %0, align 8, !tbaa !30
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store i32 %i.br, ptr %i.bt, align 8, !tbaa !31
  br label %bb.dn

bb.aa:                                            ; preds = %bb.y
  switch i32 %i.ao, label %bb.ad [
    i32 3, label %bb.ab
    i32 1, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  %i.bu = tail call i32 %i.aj(ptr noundef %i.af, ptr noundef %i.l, ptr noundef %i.t, double noundef %4, i32 noundef 1) #15 ; 2 uses
  %.not509 = icmp eq i32 %i.bu, 0
  br i1 %.not509, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.ak, align 8, !tbaa !60
  %i.bv = icmp slt i32 %i.bu, 0
  %i.bw = select i1 %i.bv, i32 -808, i32 805      ; 2 uses
  %i.bx = load ptr, ptr %0, align 8, !tbaa !30
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store i32 %i.bw, ptr %i.by, align 8, !tbaa !31
  br label %bb.dn

bb.ad:                                            ; preds = %bb.aa
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.l, ptr noundef %i.t) #15
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ad
  br i1 %.not502, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @N_VProd(ptr noundef nonnull %i.z, ptr noundef %i.t, ptr noundef %i.l) #15
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.t, ptr noundef %i.l) #15
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.bz = load ptr, ptr %i.p, align 8, !tbaa !62
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.f, ptr noundef %i.bz) #15
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.f, ptr noundef %i.r) #15
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.f, ptr noundef %i.n) #15
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.j) #15
  br i1 %.not, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ca = load i32, ptr %i.ak, align 8, !tbaa !60
  %.not510 = icmp eq i32 %i.ca, 0
  br i1 %.not510, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @N_VProd(ptr noundef nonnull %i.ab, ptr noundef %2, ptr noundef %2) #15
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.cb = icmp sgt i32 %i.d, 0
  br i1 %i.cb, label %.lr.ph, label %.thread529

.lr.ph:                                           ; preds = %bb.ak
  %i.cc = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 12 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cg = insertelement <2 x ptr> poison, ptr %i.n, i64 0
  %i.ch = insertelement <2 x ptr> %i.cg, ptr %i.h, i64 1
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph, %bb.dd
  %.0435624 = phi i32 [ 0, %.lr.ph ], [ %i.go, %bb.dd ] ; 2 uses
  %.0436623 = phi i32 [ 0, %.lr.ph ], [ %.3, %bb.dd ]
  %.0440622 = phi double [ -1.000000e+00, %.lr.ph ], [ %.2442, %bb.dd ]
  %.sroa.0.0621 = phi double [ %i.bd, %.lr.ph ], [ %i.fs, %bb.dd ] ; 2 uses
  %.0450620 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ee, %bb.dd ]
  %.0453619 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ek, %bb.dd ]
  %.0456618 = phi double [ %i.bg, %.lr.ph ], [ %i.ei, %bb.dd ]
  %i.ci = load i32, ptr %i.al, align 4, !tbaa !60
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %i.al, align 4, !tbaa !60
  %i.ck = call double @N_VDotProd(ptr noundef %i.f, ptr noundef %i.l) #15
  %i.cl = fdiv double %.sroa.0.0621, %i.ck        ; 3 uses
  %i.cm = fneg double %i.cl                       ; 2 uses
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.r, double noundef %i.cm, ptr noundef %i.l, ptr noundef %i.h) #15
  %i.cn = load ptr, ptr %i.cc, align 8, !tbaa !62
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.r, double noundef 1.000000e+00, ptr noundef %i.h, ptr noundef %i.cn) #15
  br i1 %.not, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.co = load ptr, ptr %i.cc, align 8, !tbaa !62 ; 2 uses
  call void @N_VDiv(ptr noundef %i.co, ptr noundef nonnull %i.ab, ptr noundef %i.co) #15
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  br i1 %i.aq, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.cp = load ptr, ptr %i.cc, align 8, !tbaa !62
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.cp, ptr noundef %i.t) #15
  %i.cq = load ptr, ptr %i.cc, align 8, !tbaa !62
  %i.cr = call i32 %i.aj(ptr noundef %i.af, ptr noundef %i.t, ptr noundef %i.cq, double noundef %4, i32 noundef 2) #15 ; 2 uses
  %.not511 = icmp eq i32 %i.cr, 0
  br i1 %.not511, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.ak, align 8, !tbaa !60
  %i.cs = icmp slt i32 %i.cr, 0
  %i.ct = select i1 %i.cs, i32 -808, i32 805      ; 2 uses
  %i.cu = load ptr, ptr %0, align 8, !tbaa !30
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store i32 %i.ct, ptr %i.cv, align 8, !tbaa !31
  br label %bb.dn

bb.aq:                                            ; preds = %bb.an, %bb.ao
  %i.cw = load ptr, ptr %i.cc, align 8, !tbaa !62
  %i.cx = call i32 %i.ah(ptr noundef %i.ad, ptr noundef %i.cw, ptr noundef %i.t) #15 ; 2 uses
  %.not512 = icmp eq i32 %i.cx, 0
  br i1 %.not512, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.ak, align 8, !tbaa !60
  %i.cy = icmp slt i32 %i.cx, 0
  %i.cz = select i1 %i.cy, i32 -805, i32 803      ; 2 uses
  %i.da = load ptr, ptr %0, align 8, !tbaa !30
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  store i32 %i.cz, ptr %i.db, align 8, !tbaa !31
  br label %bb.dn

bb.as:                                            ; preds = %bb.aq
  %i.dc = load ptr, ptr %i.cc, align 8, !tbaa !62 ; 2 uses
  switch i32 %i.ao, label %bb.av [
    i32 3, label %bb.at
    i32 1, label %bb.at
  ]

bb.at:                                            ; preds = %bb.as, %bb.as
  %i.dd = call i32 %i.aj(ptr noundef %i.af, ptr noundef %i.t, ptr noundef %i.dc, double noundef %4, i32 noundef 1) #15 ; 2 uses
  %.not513 = icmp eq i32 %i.dd, 0
  br i1 %.not513, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.ak, align 8, !tbaa !60
  %i.de = icmp slt i32 %i.dd, 0
  %i.df = select i1 %i.de, i32 -808, i32 805      ; 2 uses
  %i.dg = load ptr, ptr %0, align 8, !tbaa !30
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store i32 %i.df, ptr %i.dh, align 8, !tbaa !31
  br label %bb.dn

bb.av:                                            ; preds = %bb.as
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.t, ptr noundef %i.dc) #15
  br label %bb.aw

bb.aw:                                            ; preds = %bb.at, %bb.av
  %i.di = load ptr, ptr %i.cc, align 8, !tbaa !62 ; 2 uses
  br i1 %.not502, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @N_VProd(ptr noundef nonnull %i.z, ptr noundef %i.di, ptr noundef %i.t) #15
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.di, ptr noundef %i.t) #15
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.dj = load ptr, ptr %i.p, align 8, !tbaa !62
  %i.dk = load ptr, ptr %i.cc, align 8, !tbaa !62
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.dj, double noundef %i.cm, ptr noundef %i.t, ptr noundef %i.dk) #15
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.cn
  %i.dl = phi i1 [ true, %bb.az ], [ false, %bb.cn ] ; 2 uses
  %.0617 = phi i32 [ 0, %bb.az ], [ 1, %bb.cn ]   ; 2 uses
  %.1616 = phi i32 [ %.0436623, %bb.az ], [ %.3, %bb.cn ] ; 2 uses
  %.1441615 = phi double [ %.0440622, %bb.az ], [ %.2442, %bb.cn ] ; 2 uses
  %.1451614 = phi double [ %.0450620, %bb.az ], [ %i.ee, %bb.cn ] ; 2 uses
  %.1454613 = phi double [ %.0453619, %bb.az ], [ %i.ek, %bb.cn ]
  %.1457612 = phi double [ %.0456618, %bb.az ], [ %i.ei, %bb.cn ] ; 2 uses
  br i1 %i.dl, label %bb.bb, label %bb.bh

bb.bb:                                            ; preds = %bb.ba
  %i.dm = load ptr, ptr %i.cc, align 8, !tbaa !62 ; 2 uses
  %i.dn = call double @N_VDotProd(ptr noundef %i.dm, ptr noundef %i.dm) #15 ; 2 uses
  %i.do = fcmp ugt double %i.dn, 0.000000e+00
  br i1 %i.do, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.dp = call double @sqrt(double noundef %i.dn) #15
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc
  %i.dq = phi double [ %i.dp, %bb.bc ], [ 0.000000e+00, %bb.bb ] ; 6 uses
  %i.dr = load ptr, ptr %i.p, align 8, !tbaa !62  ; 2 uses
  %i.ds = call double @N_VDotProd(ptr noundef %i.dr, ptr noundef %i.dr) #15 ; 3 uses
  %i.dt = fcmp ugt double %i.ds, 0.000000e+00
  br i1 %i.dt, label %.thread527, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.du = fmul double %i.dq, 0.000000e+00         ; 2 uses
  %i.dv = fcmp ugt double %i.du, 0.000000e+00
  br i1 %i.dv, label %bb.bg, label %bb.bh

.thread527:                                       ; preds = %bb.bd
  %i.dw = call double @sqrt(double noundef %i.ds) #15
  %i.dx = fmul double %i.dq, %i.dw
  %i.dy = fcmp ugt double %i.dx, 0.000000e+00
  br i1 %i.dy, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %.thread527
  %i.dz = call double @sqrt(double noundef %i.ds) #15
  %.pre = fmul double %i.dq, %i.dz
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %.pre-phi = phi double [ %i.du, %bb.be ], [ %.pre, %bb.bf ]
  %i.ea = call double @sqrt(double noundef %.pre-phi) #15
  br label %bb.bh

bb.bh:                                            ; preds = %bb.ba, %bb.bg, %bb.be, %.thread527
  %.sink = phi ptr [ %i.r, %bb.bg ], [ %i.r, %.thread527 ], [ %i.r, %bb.be ], [ %i.h, %bb.ba ]
  %.0449 = phi double [ %i.ea, %bb.bg ], [ 0.000000e+00, %.thread527 ], [ 0.000000e+00, %bb.be ], [ %.1441615, %bb.ba ]
  %.2442 = phi double [ %i.dq, %bb.bg ], [ %i.dq, %.thread527 ], [ %i.dq, %bb.be ], [ %.1441615, %bb.ba ] ; 2 uses
  %i.eb = fmul double %.1451614, %.1451614
  %i.ec = fmul double %.1454613, %i.eb
  %i.ed = fdiv double %i.ec, %i.cl
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %.sink, double noundef %i.ed, ptr noundef %i.j, ptr noundef %i.j) #15
  %i.ee = fdiv double %.0449, %.1457612           ; 5 uses
  %i.ef = call double @llvm.fmuladd.f64(double %i.ee, double %i.ee, double 1.000000e+00)
  %sqrt = call double @llvm.sqrt.f64(double %i.ef)
  %i.eg = fdiv double 1.000000e+00, %sqrt         ; 3 uses
  %i.eh = fmul double %.1457612, %i.ee
  %i.ei = fmul double %i.eh, %i.eg                ; 3 uses
  %i.ej = fmul double %i.eg, %i.eg
  %i.ek = fmul double %i.cl, %i.ej                ; 4 uses
  %i.el = or i32 %.0617, %.0435624
  %or.cond = icmp eq i32 %i.el, 0
  br i1 %or.cond, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.em = load i32, ptr %i.ak, align 8, !tbaa !60
  %.not514 = icmp eq i32 %i.em, 0
  br i1 %.not514, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @N_VScale(double noundef %i.ek, ptr noundef %i.j, ptr noundef %2) #15
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi, %bb.bh
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %2, double noundef %i.ek, ptr noundef %i.j, ptr noundef %2) #15
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.en = add nuw nsw i32 %.0617, 1
  %i.eo = uitofp nneg i32 %i.en to double
  %sqrt536 = call nnan ninf double @llvm.sqrt.f64(double %i.eo)
  %i.ep = fmul double %sqrt536, %i.ei             ; 4 uses
  store double %i.ep, ptr %i.am, align 8, !tbaa !61
  %i.eq = fcmp ugt double %i.ep, %4
  br i1 %i.eq, label %bb.bm, label %.thread529.thread

bb.bm:                                            ; preds = %bb.bl
  %i.er = fcmp ogt double %i.ep, %4
  br i1 %i.er, label %bb.bn, label %bb.cn

bb.bn:                                            ; preds = %bb.bm
  br i1 %.not, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @N_VDiv(ptr noundef %2, ptr noundef nonnull %i.ab, ptr noundef %i.t) #15
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %2, ptr noundef %i.t) #15
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  br i1 %i.aq, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.es = call i32 %i.aj(ptr noundef %i.af, ptr noundef %i.t, ptr noundef %i.v, double noundef %4, i32 noundef 2) #15 ; 2 uses
  %.not515 = icmp eq i32 %i.es, 0
  br i1 %.not515, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  store i32 0, ptr %i.ak, align 8, !tbaa !60
  %i.et = icmp slt i32 %i.es, 0
  %i.eu = select i1 %i.et, i32 -808, i32 805      ; 2 uses
  %i.ev = load ptr, ptr %0, align 8, !tbaa !30
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  store i32 %i.eu, ptr %i.ew, align 8, !tbaa !31
  br label %bb.dn

bb.bt:                                            ; preds = %bb.br
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.v, ptr noundef %i.t) #15
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bq, %bb.bt
  %i.ex = call i32 %i.ah(ptr noundef %i.ad, ptr noundef %i.t, ptr noundef %i.v) #15 ; 2 uses
  %.not516 = icmp eq i32 %i.ex, 0
  br i1 %.not516, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store i32 0, ptr %i.ak, align 8, !tbaa !60
  %i.ey = icmp slt i32 %i.ex, 0
  %i.ez = select i1 %i.ey, i32 -805, i32 803      ; 2 uses
  %i.fa = load ptr, ptr %0, align 8, !tbaa !30
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  store i32 %i.ez, ptr %i.fb, align 8, !tbaa !31
  br label %bb.dn

bb.bw:                                            ; preds = %bb.bu
  switch i32 %i.ao, label %bb.bz [
    i32 3, label %bb.bx
    i32 1, label %bb.bx
  ]

bb.bx:                                            ; preds = %bb.bw, %bb.bw
  %i.fc = call i32 %i.aj(ptr noundef %i.af, ptr noundef %i.v, ptr noundef %i.t, double noundef %4, i32 noundef 1) #15 ; 2 uses
  %.not517 = icmp eq i32 %i.fc, 0
  br i1 %.not517, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store i32 0, ptr %i.ak, align 8, !tbaa !60
  %i.fd = icmp slt i32 %i.fc, 0
  %i.fe = select i1 %i.fd, i32 -808, i32 805      ; 2 uses
  %i.ff = load ptr, ptr %0, align 8, !tbaa !30
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  store i32 %i.fe, ptr %i.fg, align 8, !tbaa !31
  br label %bb.dn

bb.bz:                                            ; preds = %bb.bw
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.v, ptr noundef %i.t) #15
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bx, %bb.bz
  br i1 %.not502, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @N_VProd(ptr noundef nonnull %i.z, ptr noundef %i.t, ptr noundef %i.v) #15
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.t, ptr noundef %i.v) #15
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.not518 = icmp eq i32 %.1616, 0
  br i1 %.not518, label %bb.ce, label %bb.ck

bb.ce:                                            ; preds = %bb.cd
  switch i32 %i.ao, label %bb.ch [
    i32 3, label %bb.cf
    i32 1, label %bb.cf
  ]

bb.cf:                                            ; preds = %bb.ce, %bb.ce
  %i.fh = call i32 %i.aj(ptr noundef %i.af, ptr noundef %3, ptr noundef %i.x, double noundef %4, i32 noundef 1) #15 ; 2 uses
  %.not519 = icmp eq i32 %i.fh, 0
  br i1 %.not519, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store i32 0, ptr %i.ak, align 8, !tbaa !60
  %i.fi = icmp slt i32 %i.fh, 0
  %i.fj = select i1 %i.fi, i32 -808, i32 805      ; 2 uses
  %i.fk = load ptr, ptr %0, align 8, !tbaa !30
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  store i32 %i.fj, ptr %i.fl, align 8, !tbaa !31
  br label %bb.dn

bb.ch:                                            ; preds = %bb.ce
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %3, ptr noundef %i.x) #15
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cf, %bb.ch
  br i1 %.not502, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @N_VProd(ptr noundef nonnull %i.z, ptr noundef %i.x, ptr noundef %i.x) #15
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ci, %bb.cj, %bb.cd
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.x, double noundef -1.000000e+00, ptr noundef %i.v, ptr noundef %i.t) #15
  %i.fm = call double @N_VDotProd(ptr noundef %i.t, ptr noundef %i.t) #15 ; 2 uses
  %i.fn = fcmp ugt double %i.fm, 0.000000e+00
  br i1 %i.fn, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.fo = call double @sqrt(double noundef %i.fm) #15
  br label %bb.cm

bb.cm:                                            ; preds = %bb.ck, %bb.cl
  %i.fp = phi double [ %i.fo, %bb.cl ], [ 0.000000e+00, %bb.ck ] ; 3 uses
  store double %i.fp, ptr %i.am, align 8, !tbaa !61
  %i.fq = fcmp ugt double %i.fp, %4
  br i1 %i.fq, label %bb.cn, label %.thread529.thread

bb.cn:                                            ; preds = %bb.bm, %bb.cm
  %.2446 = phi double [ %i.fp, %bb.cm ], [ %i.ep, %bb.bm ]
  %.3 = phi i32 [ 1, %bb.cm ], [ %.1616, %bb.bm ] ; 2 uses
  br i1 %i.dl, label %bb.ba, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.fr = load ptr, ptr %i.cc, align 8, !tbaa !62
  %i.fs = call double @N_VDotProd(ptr noundef %i.f, ptr noundef %i.fr) #15 ; 2 uses
  %i.ft = fdiv double %i.fs, %.sroa.0.0621        ; 4 uses
  %i.fu = load ptr, ptr %i.cc, align 8, !tbaa !62
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.fu, double noundef %i.ft, ptr noundef %i.h, ptr noundef %i.r) #15
  %i.fv = fmul double %i.ft, %i.ft
  store double %i.fv, ptr %i.a, align 16, !tbaa !61
  store double %i.ft, ptr %i.cd, align 8, !tbaa !61
  store <2 x ptr> %i.ch, ptr %i.b, align 16, !tbaa !62
  store double 1.000000e+00, ptr %i.ce, align 16, !tbaa !61
  store ptr %i.r, ptr %i.cf, align 16, !tbaa !62
  %i.fw = call i32 @N_VLinearCombination(i32 noundef 3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.n) #15 ; 0 uses
  br i1 %.not, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @N_VDiv(ptr noundef %i.n, ptr noundef nonnull %i.ab, ptr noundef %i.t) #15
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.n, ptr noundef %i.t) #15
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  br i1 %i.aq, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.t, ptr noundef %i.l) #15
  %i.fx = call i32 %i.aj(ptr noundef %i.af, ptr noundef %i.l, ptr noundef %i.t, double noundef %4, i32 noundef 2) #15 ; 2 uses
  %.not520 = icmp eq i32 %i.fx, 0
  br i1 %.not520, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  store i32 0, ptr %i.ak, align 8, !tbaa !60
  %i.fy = icmp slt i32 %i.fx, 0
  %i.fz = select i1 %i.fy, i32 -808, i32 805      ; 2 uses
  %i.ga = load ptr, ptr %0, align 8, !tbaa !30
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  store i32 %i.fz, ptr %i.gb, align 8, !tbaa !31
  br label %bb.dn

bb.cu:                                            ; preds = %bb.cr, %bb.cs
  %i.gc = call i32 %i.ah(ptr noundef %i.ad, ptr noundef %i.t, ptr noundef %i.l) #15 ; 2 uses
  %.not521 = icmp eq i32 %i.gc, 0
  br i1 %.not521, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  store i32 0, ptr %i.ak, align 8, !tbaa !60
  %i.gd = icmp slt i32 %i.gc, 0
  %i.ge = select i1 %i.gd, i32 -805, i32 803      ; 2 uses
  %i.gf = load ptr, ptr %0, align 8, !tbaa !30
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  store i32 %i.ge, ptr %i.gg, align 8, !tbaa !31
  br label %bb.dn

bb.cw:                                            ; preds = %bb.cu
  switch i32 %i.ao, label %bb.cz [
    i32 3, label %bb.cx
    i32 1, label %bb.cx
  ]

bb.cx:                                            ; preds = %bb.cw, %bb.cw
  %i.gh = call i32 %i.aj(ptr noundef %i.af, ptr noundef %i.l, ptr noundef %i.t, double noundef %4, i32 noundef 1) #15 ; 2 uses
  %.not522 = icmp eq i32 %i.gh, 0
  br i1 %.not522, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  store i32 0, ptr %i.ak, align 8, !tbaa !60
  %i.gi = icmp slt i32 %i.gh, 0
  %i.gj = select i1 %i.gi, i32 -808, i32 805      ; 2 uses
  %i.gk = load ptr, ptr %0, align 8, !tbaa !30
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  store i32 %i.gj, ptr %i.gl, align 8, !tbaa !31
  br label %bb.dn

bb.cz:                                            ; preds = %bb.cw
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.l, ptr noundef %i.t) #15
  br label %bb.da

bb.da:                                            ; preds = %bb.cx, %bb.cz
  br i1 %.not502, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @N_VProd(ptr noundef nonnull %i.z, ptr noundef %i.t, ptr noundef %i.l) #15
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.t, ptr noundef %i.l) #15
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.gm = load ptr, ptr %i.cc, align 8, !tbaa !62
  %i.gn = load ptr, ptr %i.p, align 8, !tbaa !62
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.gm, ptr noundef %i.gn) #15
  %i.go = add nuw nsw i32 %.0435624, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.go, %i.d
  br i1 %exitcond.not, label %.thread529, label %bb.al

.thread529:                                       ; preds = %bb.dd, %bb.ak
  %.4448 = phi double [ -1.000000e+00, %bb.ak ], [ %.2446, %bb.dd ]
  %i.gp = fcmp olt double %.4448, %i.bg
  br i1 %i.gp, label %.thread529.thread, label %bb.dm

.thread529.thread:                                ; preds = %bb.cm, %bb.bl, %.thread529
  %i.gq = phi i1 [ false, %.thread529 ], [ true, %bb.bl ], [ true, %bb.cm ]
  br i1 %.not, label %bb.df, label %bb.de

bb.de:                                            ; preds = %.thread529.thread
  call void @N_VDiv(ptr noundef %2, ptr noundef nonnull %i.ab, ptr noundef %2) #15
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %.thread529.thread
  br i1 %i.aq, label %bb.dg, label %bb.dj

bb.dg:                                            ; preds = %bb.df
  %i.gr = call i32 %i.aj(ptr noundef %i.af, ptr noundef %2, ptr noundef %i.t, double noundef %4, i32 noundef 2) #15 ; 2 uses
  %.not523 = icmp eq i32 %i.gr, 0
  br i1 %.not523, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  store i32 0, ptr %i.ak, align 8, !tbaa !60
  %i.gs = icmp slt i32 %i.gr, 0
  %i.gt = select i1 %i.gs, i32 -808, i32 805      ; 2 uses
  %i.gu = load ptr, ptr %0, align 8, !tbaa !30
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  store i32 %i.gt, ptr %i.gv, align 8, !tbaa !31
  br label %bb.dn

bb.di:                                            ; preds = %bb.dg
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.t, ptr noundef %2) #15
  br label %bb.dj

bb.dj:                                            ; preds = %bb.df, %bb.di
  store i32 0, ptr %i.ak, align 8, !tbaa !60
  %i.gw = load ptr, ptr %0, align 8, !tbaa !30
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 24 ; 2 uses
  br i1 %i.gq, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  store i32 0, ptr %i.gx, align 8, !tbaa !31
  br label %bb.dn

bb.dl:                                            ; preds = %bb.dj
  store i32 801, ptr %i.gx, align 8, !tbaa !31
  br label %bb.dn

bb.dm:                                            ; preds = %.thread529
  store i32 0, ptr %i.ak, align 8, !tbaa !60
  %i.gy = load ptr, ptr %0, align 8, !tbaa !30
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  store i32 802, ptr %i.gz, align 8, !tbaa !31
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dk, %bb.dl, %bb.dm, %bb.dh, %bb.cy, %bb.cv, %bb.ct, %bb.cg, %bb.by, %bb.bv, %bb.bs, %bb.au, %bb.ar, %bb.ap, %bb.ac, %bb.z, %bb.x, %bb.r, %bb.j, %bb.f, %bb.c
  %.0459 = phi i32 [ %i.ba, %bb.j ], [ 0, %bb.r ], [ %i.bm, %bb.x ], [ %i.br, %bb.z ], [ %i.bw, %bb.ac ], [ %i.ct, %bb.ap ], [ %i.cz, %bb.ar ], [ %i.df, %bb.au ], [ %i.gt, %bb.dh ], [ -9998, %bb.c ], [ 802, %bb.dm ], [ %i.fz, %bb.ct ], [ %i.ge, %bb.cv ], [ %i.gj, %bb.cy ], [ %i.eu, %bb.bs ], [ %i.ez, %bb.bv ], [ %i.fe, %bb.by ], [ %i.fj, %bb.cg ], [ %i.av, %bb.f ], [ 801, %bb.dl ], [ 0, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.0459
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @SUNLinSolNumIters_SPTFQMR(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !63
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define double @SUNLinSolResNorm_SPTFQMR(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load double, ptr %i.b, align 8, !tbaa !64
  ret double %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @SUNLinSolResid_SPTFQMR(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 -2147483648, 2147483648) i64 @SUNLinSolLastFlag_SPTFQMR(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !31
  %i.d = sext i32 %i.c to i64
  ret i64 %i.d
}

; Function Attrs: nounwind uwtable
end_hunk_0
