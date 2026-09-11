Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/ell_set?download=true
inline.NumInlined: 53
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL20ellps_spherificationP8PJconsts:bb.a

bb.b:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.014.i, i64 12
  %i.h = load i8, ptr %i.g, align 1, !tbaa !43
  switch i8 %i.h, label %.critedge12.i [
    i8 61, label %bb.j
    i8 0, label %bb.j
  ]

.critedge12.i:                                    ; preds = %bb.b, %.lr.ph.i
  %i.i = load ptr, ptr %.014.i, align 8, !tbaa !44 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %.lr.ph.i.1, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i.1:                                       ; preds = %.critedge12.i, %.critedge12.i.1
  %.014.i.1 = phi ptr [ %i.o, %.critedge12.i.1 ], [ %i.c, %.critedge12.i ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.014.i.1, i64 9
  %i.k = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.j, ptr noundef nonnull readonly dereferenceable(4) @.str.22, i64 noundef 3) #14
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %.critedge12.i.1

bb.c:                                             ; preds = %.lr.ph.i.1
  %i.m = getelementptr inbounds nuw i8, ptr %.014.i.1, i64 12
  %i.n = load i8, ptr %i.m, align 1, !tbaa !43
  switch i8 %i.n, label %.critedge12.i.1 [
    i8 61, label %bb.k
    i8 0, label %bb.k
  ]

.critedge12.i.1:                                  ; preds = %bb.c, %.lr.ph.i.1
  %i.o = load ptr, ptr %.014.i.1, align 8, !tbaa !44 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.o, null
  br i1 %.not.i.1, label %.lr.ph.i.2, label %.lr.ph.i.1, !llvm.loop !0

.lr.ph.i.2:                                       ; preds = %.critedge12.i.1, %.critedge12.i.2
  %.014.i.2 = phi ptr [ %i.u, %.critedge12.i.2 ], [ %i.c, %.critedge12.i.1 ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.2, i64 9
  %i.q = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull readonly dereferenceable(4) @.str.23, i64 noundef 3) #14
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %.critedge12.i.2

bb.d:                                             ; preds = %.lr.ph.i.2
  %i.s = getelementptr inbounds nuw i8, ptr %.014.i.2, i64 12
  %i.t = load i8, ptr %i.s, align 1, !tbaa !43
  switch i8 %i.t, label %.critedge12.i.2 [
    i8 61, label %bb.l
    i8 0, label %bb.l
  ]

.critedge12.i.2:                                  ; preds = %bb.d, %.lr.ph.i.2
  %i.u = load ptr, ptr %.014.i.2, align 8, !tbaa !44 ; 2 uses
  %.not.i.2 = icmp eq ptr %i.u, null
  br i1 %.not.i.2, label %.lr.ph.i.3, label %.lr.ph.i.2, !llvm.loop !0

.lr.ph.i.3:                                       ; preds = %.critedge12.i.2, %.critedge12.i.3
  %.014.i.3 = phi ptr [ %i.aa, %.critedge12.i.3 ], [ %i.c, %.critedge12.i.2 ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.014.i.3, i64 9
  %i.w = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull readonly dereferenceable(4) @.str.24, i64 noundef 3) #14
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.e, label %.critedge12.i.3

bb.e:                                             ; preds = %.lr.ph.i.3
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i.3, i64 12
  %i.z = load i8, ptr %i.y, align 1, !tbaa !43
  switch i8 %i.z, label %.critedge12.i.3 [
    i8 61, label %bb.m
    i8 0, label %bb.m
  ]

.critedge12.i.3:                                  ; preds = %bb.e, %.lr.ph.i.3
  %i.aa = load ptr, ptr %.014.i.3, align 8, !tbaa !44 ; 2 uses
  %.not.i.3 = icmp eq ptr %i.aa, null
  br i1 %.not.i.3, label %.lr.ph.i.4, label %.lr.ph.i.3, !llvm.loop !0

.lr.ph.i.4:                                       ; preds = %.critedge12.i.3, %.critedge12.i.4
  %.014.i.4 = phi ptr [ %i.ag, %.critedge12.i.4 ], [ %i.c, %.critedge12.i.3 ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.014.i.4, i64 9
  %i.ac = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ab, ptr noundef nonnull readonly dereferenceable(4) @.str.25, i64 noundef 3) #14
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %.critedge12.i.4

bb.f:                                             ; preds = %.lr.ph.i.4
  %i.ae = getelementptr inbounds nuw i8, ptr %.014.i.4, i64 12
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !43
  switch i8 %i.af, label %.critedge12.i.4 [
    i8 61, label %bb.n
    i8 0, label %bb.n
  ]

.critedge12.i.4:                                  ; preds = %bb.f, %.lr.ph.i.4
  %i.ag = load ptr, ptr %.014.i.4, align 8, !tbaa !44 ; 2 uses
  %.not.i.4 = icmp eq ptr %i.ag, null
  br i1 %.not.i.4, label %.lr.ph.i.5, label %.lr.ph.i.4, !llvm.loop !0

.lr.ph.i.5:                                       ; preds = %.critedge12.i.4, %.critedge12.i.5
  %.014.i.5 = phi ptr [ %i.am, %.critedge12.i.5 ], [ %i.c, %.critedge12.i.4 ] ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.014.i.5, i64 9
  %i.ai = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ah, ptr noundef nonnull readonly dereferenceable(8) @.str.26, i64 noundef 7) #14
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %.critedge12.i.5

bb.g:                                             ; preds = %.lr.ph.i.5
  %i.ak = getelementptr inbounds nuw i8, ptr %.014.i.5, i64 16
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !43
  switch i8 %i.al, label %.critedge12.i.5 [
    i8 61, label %_ZL14pj_param_valueP8ARG_list.exit
    i8 0, label %_ZL14pj_param_valueP8ARG_list.exit
  ]

.critedge12.i.5:                                  ; preds = %bb.g, %.lr.ph.i.5
  %i.am = load ptr, ptr %.014.i.5, align 8, !tbaa !44 ; 2 uses
  %.not.i.5 = icmp eq ptr %i.am, null
  br i1 %.not.i.5, label %.lr.ph.i.6, label %.lr.ph.i.5, !llvm.loop !0

.lr.ph.i.6:                                       ; preds = %.critedge12.i.5, %.critedge12.i.6
  %.014.i.6 = phi ptr [ %i.as, %.critedge12.i.6 ], [ %i.c, %.critedge12.i.5 ] ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.014.i.6, i64 9
  %i.ao = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.an, ptr noundef nonnull readonly dereferenceable(8) @.str.27, i64 noundef 7) #14
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.h, label %.critedge12.i.6

bb.h:                                             ; preds = %.lr.ph.i.6
  %i.aq = getelementptr inbounds nuw i8, ptr %.014.i.6, i64 16
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !43
  switch i8 %i.ar, label %.critedge12.i.6 [
    i8 61, label %_ZL14pj_param_valueP8ARG_list.exit
    i8 0, label %_ZL14pj_param_valueP8ARG_list.exit
  ]

.critedge12.i.6:                                  ; preds = %bb.h, %.lr.ph.i.6
  %i.as = load ptr, ptr %.014.i.6, align 8, !tbaa !44 ; 2 uses
  %.not.i.6 = icmp eq ptr %i.as, null
  br i1 %.not.i.6, label %.lr.ph.i.7, label %.lr.ph.i.6, !llvm.loop !0

.lr.ph.i.7:                                       ; preds = %.critedge12.i.6, %.critedge12.i.7
  %.014.i.7 = phi ptr [ %i.ay, %.critedge12.i.7 ], [ %i.c, %.critedge12.i.6 ] ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.014.i.7, i64 9
  %i.au = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.at, ptr noundef nonnull readonly dereferenceable(4) @.str.28, i64 noundef 3) #14
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.i, label %.critedge12.i.7

bb.i:                                             ; preds = %.lr.ph.i.7
  %i.aw = getelementptr inbounds nuw i8, ptr %.014.i.7, i64 12
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !43
  switch i8 %i.ax, label %.critedge12.i.7 [
    i8 61, label %bb.w
    i8 0, label %bb.w
  ]

.critedge12.i.7:                                  ; preds = %bb.i, %.lr.ph.i.7
  %i.ay = load ptr, ptr %.014.i.7, align 8, !tbaa !44 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.ay, null
  br i1 %.not.i.7, label %_ZL12pj_get_paramP8ARG_listPKc.exit, label %.lr.ph.i.7, !llvm.loop !0

bb.j:                                             ; preds = %bb.b, %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %.014.i, i64 9
  %i.ba = tail call noundef ptr @_Z9pj_strdupPKc(ptr noundef nonnull %i.az)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !40
  %i.bc = getelementptr inbounds nuw i8, ptr %.014.i, i64 8
  store i8 1, ptr %i.bc, align 8, !tbaa !43
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.be = load double, ptr %i.bd, align 8, !tbaa !48 ; 3 uses
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.be, double f0x3F96B015AC056B01, double f0x3FA82D82D82D82D8)
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.be, double %i.bf, double f0x3FC5555555555555)
  %i.bh = fneg double %i.be
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.bg, double 1.000000e+00)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !46
  %i.bl = fmul double %i.bk, %i.bi                ; 2 uses
  store double %i.bl, ptr %i.bj, align 8, !tbaa !46
  br label %bb.z

bb.k:                                             ; preds = %bb.c, %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %.014.i.1, i64 9
  %i.bn = tail call noundef ptr @_Z9pj_strdupPKc(ptr noundef nonnull %i.bm)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !40
  %i.bp = getelementptr inbounds nuw i8, ptr %.014.i.1, i64 8
  store i8 1, ptr %i.bp, align 8, !tbaa !43
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.br = load double, ptr %i.bq, align 8, !tbaa !48 ; 3 uses
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.br, double f0x3FA5BA781948B0FD, double f0x3FB1C71C71C71C72)
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.br, double %i.bs, double f0x3FC5555555555555)
  %i.bu = fneg double %i.br
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bt, double 1.000000e+00)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !46
  %i.by = fmul double %i.bx, %i.bv                ; 2 uses
  store double %i.by, ptr %i.bw, align 8, !tbaa !46
  br label %bb.z

bb.l:                                             ; preds = %bb.d, %bb.d
  %i.bz = getelementptr inbounds nuw i8, ptr %.014.i.2, i64 9
  %i.ca = tail call noundef ptr @_Z9pj_strdupPKc(ptr noundef nonnull %i.bz)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !40
  %i.cc = getelementptr inbounds nuw i8, ptr %.014.i.2, i64 8
  store i8 1, ptr %i.cc, align 8, !tbaa !43
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %1 = load double, ptr %i.cd, align 8, !tbaa !46
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %3 = load double, ptr %2, align 8, !tbaa !51
  %4 = fadd double %1, %3
  %i.ce = fmul double %4, 5.000000e-01            ; 2 uses
  store double %i.ce, ptr %i.cd, align 8, !tbaa !46
  br label %bb.z

bb.m:                                             ; preds = %bb.e, %bb.e
  %i.cf = getelementptr inbounds nuw i8, ptr %.014.i.3, i64 9
  %i.cg = tail call noundef ptr @_Z9pj_strdupPKc(ptr noundef nonnull %i.cf)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !40
  %i.ci = getelementptr inbounds nuw i8, ptr %.014.i.3, i64 8
  store i8 1, ptr %i.ci, align 8, !tbaa !43
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !46
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !51
  %i.cn = fmul double %i.ck, %i.cm
  %i.co = tail call double @sqrt(double noundef %i.cn) #13 ; 2 uses
  store double %i.co, ptr %i.cj, align 8, !tbaa !46
  br label %bb.z

bb.n:                                             ; preds = %bb.f, %bb.f
  %i.cp = getelementptr inbounds nuw i8, ptr %.014.i.4, i64 9
  %i.cq = tail call noundef ptr @_Z9pj_strdupPKc(ptr noundef nonnull %i.cp)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !40
  %i.cs = getelementptr inbounds nuw i8, ptr %.014.i.4, i64 8
  store i8 1, ptr %i.cs, align 8, !tbaa !43
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !46 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !51 ; 2 uses
  %i.cx = fadd double %i.cu, %i.cw                ; 2 uses
  %i.cy = fcmp oeq double %i.cx, 0.000000e+00
  br i1 %i.cy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cz = tail call i32 @proj_errno_set(ptr noundef nonnull %0, i32 noundef 2050)
  br label %_ZL12pj_get_paramP8ARG_listPKc.exit

bb.p:                                             ; preds = %bb.n
  %i.da = fmul double %i.cu, 2.000000e+00
  %i.db = fmul double %i.da, %i.cw
  %i.dc = fdiv double %i.db, %i.cx                ; 2 uses
  store double %i.dc, ptr %i.ct, align 8, !tbaa !46
  br label %bb.z

_ZL14pj_param_valueP8ARG_list.exit:               ; preds = %bb.g, %bb.g, %bb.h, %bb.h
  %i.dd = phi i1 [ false, %bb.h ], [ false, %bb.h ], [ true, %bb.g ], [ true, %bb.g ]
  %.1.ph.ph = phi ptr [ %.014.i.6, %bb.h ], [ %.014.i.6, %bb.h ], [ %.014.i.5, %bb.g ], [ %.014.i.5, %bb.g ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.1.ph.ph, i64 9 ; 3 uses
  %i.df = tail call noundef ptr @_Z9pj_strdupPKc(ptr noundef nonnull %i.de)
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !40
  %i.dh = getelementptr inbounds nuw i8, ptr %.1.ph.ph, i64 8
  store i8 1, ptr %i.dh, align 8, !tbaa !43
  %i.di = tail call noundef ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %i.de, i32 noundef 61) #14 ; 2 uses
  %.not.i83 = icmp eq ptr %i.di, null
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  %i.dk = select i1 %.not.i83, ptr %i.de, ptr %i.dj
  %i.dl = call double @proj_dmstor(ptr noundef nonnull %i.dk, ptr noundef nonnull %i.a) ; 2 uses
  %i.dm = call double @llvm.fabs.f64(double %i.dl)
  %i.dn = fcmp ogt double %i.dm, f0x3FF921FB54442D18
  br i1 %i.dn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZL14pj_param_valueP8ARG_list.exit
  call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.29)
  %i.do = call i32 @proj_errno_set(ptr noundef nonnull %0, i32 noundef 1027)
  br label %_ZL12pj_get_paramP8ARG_listPKc.exit

bb.r:                                             ; preds = %_ZL14pj_param_valueP8ARG_list.exit
  %i.dp = call double @sin(double noundef %i.dl) #13 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !48 ; 2 uses
  %i.ds = fneg double %i.dp
  %i.dt = fmul double %i.dr, %i.ds
  %i.du = call double @llvm.fmuladd.f64(double %i.dt, double %i.dp, double 1.000000e+00) ; 5 uses
  %i.dv = fcmp oeq double %i.du, 0.000000e+00
  br i1 %i.dv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.4)
  %i.dw = call i32 @proj_errno_set(ptr noundef nonnull %0, i32 noundef 1027)
  br label %_ZL12pj_get_paramP8ARG_listPKc.exit

bb.t:                                             ; preds = %bb.r
  %i.dx = fsub double 1.000000e+00, %i.dr         ; 2 uses
  br i1 %i.dd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dy = fadd double %i.dx, %i.du
  %i.dz = fmul double %i.du, 2.000000e+00
  %i.ea = call double @sqrt(double noundef %i.du) #13
  %i.eb = fmul double %i.dz, %i.ea
  %i.ec = fdiv double %i.dy, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !46
  %i.ef = fmul double %i.ee, %i.ec                ; 2 uses
  store double %i.ef, ptr %i.ed, align 8, !tbaa !46
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.eg = call double @sqrt(double noundef %i.dx) #13
  %i.eh = fdiv double %i.eg, %i.du
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !46
  %i.ek = fmul double %i.ej, %i.eh                ; 2 uses
  store double %i.ek, ptr %i.ei, align 8, !tbaa !46
  br label %bb.z

bb.w:                                             ; preds = %bb.i, %bb.i
  %i.el = getelementptr inbounds nuw i8, ptr %.014.i.7, i64 9
  %i.em = tail call noundef ptr @_Z9pj_strdupPKc(ptr noundef nonnull %i.el)
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.em, ptr %i.en, align 8, !tbaa !40
  %i.eo = getelementptr inbounds nuw i8, ptr %.014.i.7, i64 8
  store i8 1, ptr %i.eo, align 8, !tbaa !43
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !72
  %i.er = tail call double @sin(double noundef %i.eq) #13 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.et = load double, ptr %i.es, align 8, !tbaa !48 ; 2 uses
  %i.eu = fneg double %i.er
  %i.ev = fmul double %i.et, %i.eu
  %i.ew = tail call double @llvm.fmuladd.f64(double %i.ev, double %i.er, double 1.000000e+00) ; 2 uses
  %i.ex = fcmp oeq double %i.ew, 0.000000e+00
  br i1 %i.ex, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.4)
  %i.ey = tail call i32 @proj_errno_set(ptr noundef nonnull %0, i32 noundef 1027)
  br label %_ZL12pj_get_paramP8ARG_listPKc.exit

bb.y:                                             ; preds = %bb.w
  %i.ez = fsub double 1.000000e+00, %i.et
  %i.fa = tail call double @sqrt(double noundef %i.ez) #13
  %i.fb = fdiv double %i.fa, %i.ew
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !46
  %i.fe = fmul double %i.fd, %i.fb                ; 2 uses
  store double %i.fe, ptr %i.fc, align 8, !tbaa !46
  br label %bb.z

bb.z:                                             ; preds = %bb.u, %bb.v, %bb.y, %bb.p, %bb.m, %bb.l, %bb.k, %bb.j
  %i.ff = phi double [ %i.bl, %bb.j ], [ %i.ef, %bb.u ], [ %i.ek, %bb.v ], [ %i.fe, %bb.y ], [ %i.dc, %bb.p ], [ %i.co, %bb.m ], [ %i.ce, %bb.l ], [ %i.by, %bb.k ] ; 3 uses
  %i.fg = fcmp ugt double %i.ff, 0.000000e+00
  br i1 %i.fg, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.30)
  %i.fh = call i32 @proj_errno_set(ptr noundef nonnull %0, i32 noundef 1027)
  br label %_ZL12pj_get_paramP8ARG_listPKc.exit

bb.ab:                                            ; preds = %bb.z
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 272
  store double 0.000000e+00, ptr %i.fi, align 8, !tbaa !49
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, i8 0, i64 16, i1 false)
  store double +inf, ptr %i.fk, align 8, !tbaa !50
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 176
  store double %i.ff, ptr %i.fl, align 8, !tbaa !51
  %i.fm = call noundef i32 @_Z24pj_calc_ellipsoid_paramsP8PJconstsdd(ptr noundef nonnull %0, double noundef %i.ff, double noundef 0.000000e+00) ; 0 uses
  br label %_ZL12pj_get_paramP8ARG_listPKc.exit

_ZL12pj_get_paramP8ARG_listPKc.exit:              ; preds = %.critedge12.i.7, %bb.a, %bb.ab, %bb.aa, %bb.x, %bb.s, %bb.q, %bb.o
  %.077 = phi i32 [ %i.ey, %bb.x ], [ %i.fh, %bb.aa ], [ 0, %bb.ab ], [ %i.cz, %bb.o ], [ %i.do, %bb.q ], [ %i.dw, %bb.s ], [ 0, %bb.a ], [ 0, %.critedge12.i.7 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.077
}

declare void @_Z14proj_log_traceP8PJconstsPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_Z24pj_inherit_ellipsoid_defPK8PJconstsPS_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((168, 344)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.c = load <2 x double>, ptr %i.a, align 8, !tbaa !47
  store <2 x double> %i.c, ptr %i.b, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.f = load <2 x double>, ptr %i.d, align 8, !tbaa !47
  store <2 x double> %i.f, ptr %i.e, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.i = load <2 x double>, ptr %i.g, align 8, !tbaa !47
  store <2 x double> %i.i, ptr %i.h, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.l = load <2 x double>, ptr %i.j, align 8, !tbaa !47
  store <2 x double> %i.l, ptr %i.k, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.o = load <2 x double>, ptr %i.m, align 8, !tbaa !47
  store <2 x double> %i.o, ptr %i.n, align 8, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.r = load <2 x double>, ptr %i.p, align 8, !tbaa !47
end_hunk_0
begin_hunk_1_@_ZN8PJconstsD2Ev:bb.a

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorI16PJCoordOperationSaIS0_EED2Ev.exit, %.lr.ph.i.i.i2
  %.05.i.i.i3 = phi ptr [ %i.p, %.lr.ph.i.i.i2 ], [ %i.m, %_ZNSt6vectorI16PJCoordOperationSaIS0_EED2Ev.exit ] ; 2 uses
  tail call void @_ZN5osgeo4proj9operation15GridDescriptionD1Ev(ptr noundef nonnull align 8 dead_on_return(131) dereferenceable(131) %.05.i.i.i3) #13
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 136 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPN5osgeo4proj9operation15GridDescriptionES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !75

_ZSt8_DestroyIPN5osgeo4proj9operation15GridDescriptionES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i2
  %.pr.i5 = load ptr, ptr %i.l, align 8, !tbaa !80
  br label %_ZSt8_DestroyIPN5osgeo4proj9operation15GridDescriptionES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5osgeo4proj9operation15GridDescriptionES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5osgeo4proj9operation15GridDescriptionES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorI16PJCoordOperationSaIS0_EED2Ev.exit
  %i.q = phi ptr [ %.pr.i5, %_ZSt8_DestroyIPN5osgeo4proj9operation15GridDescriptionES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.m, %_ZNSt6vectorI16PJCoordOperationSaIS0_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i6 = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i6, label %_ZNSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5osgeo4proj9operation15GridDescriptionES3_EvT_S5_RSaIT0_E.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !82
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #15
  br label %_ZNSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EED2Ev.exit

_ZNSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5osgeo4proj9operation15GridDescriptionES3_EvT_S5_RSaIT0_E.exit.i, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !83   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EED2Ev.exit
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !43
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !83 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !43
  %i.ah = add i64 %i.ag, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !83 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !43
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !84 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 4 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 4294967297
  %i.at = trunc i64 %i.ar to i32                  ; 2 uses
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.aq, align 8, !tbaa !86
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  store i32 0, ptr %i.au, align 4, !tbaa !87
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !54
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #13, !inline_history !76
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !54
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #13, !inline_history !76
  br label %_ZNSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i13 = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i13, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.at, %bb.g ], [ %i.bd, %bb.h ]
  %i.be = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.be, label %bb.i, label %_ZNSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !88

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #13
  br label %_ZNSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare noundef ptr @_Z10pj_mkparamPKc(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_Z9pj_strdupPKc(ptr noundef) local_unnamed_addr #2

declare ptr @proj_list_ellps() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

declare noundef double @_Z7pj_atofPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

declare double @proj_dmstor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN16PJCoordOperationD1Ev(ptr noundef nonnull align 8 dead_on_return(188) dereferenceable(188)) unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZN5osgeo4proj9operation15GridDescriptionD1Ev(ptr noundef nonnull align 8 dead_on_return(131) dereferenceable(131)) unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !54
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #13, !inline_history !89
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !55   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #13, !inline_history !89
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !45}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS6pj_ctx", !9, i64 0}
!11 = !{!"p1 omnipotent char", !9, i64 0}
!12 = !{!"p1 _ZTS8ARG_list", !9, i64 0}
!13 = !{!"p1 _ZTS8PJconsts", !9, i64 0}
!14 = !{!"p1 _ZTS13geod_geodesic", !9, i64 0}
!15 = !{!"double", !5, i64 0}
!16 = !{!"_ZTS11pj_io_units", !5, i64 0}
!17 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !9, i64 0}
!18 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0}
!19 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !18, i64 0}
!20 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0, !19, i64 8}
!21 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !20, i64 0}
!22 = !{!"bool", !5, i64 0}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!24 = !{!"long", !5, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !24, i64 8, !5, i64 16}
!26 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !9, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!28 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !27, i64 0}
!29 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !28, i64 0}
!30 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !29, i64 0}
!31 = !{!"_ZTS7PJ_TYPE", !5, i64 0}
!32 = !{!"p1 _ZTS16PJCoordOperation", !9, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!34 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE12_Vector_implE", !33, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseI16PJCoordOperationSaIS0_EE", !34, i64 0}
!36 = !{!"_ZTSSt6vectorI16PJCoordOperationSaIS0_EE", !35, i64 0}
!37 = !{!"_ZTS8PJconsts", !10, i64 0, !11, i64 8, !11, i64 16, !12, i64 24, !11, i64 32, !13, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !14, i64 80, !9, i64 88, !6, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !15, i64 248, !15, i64 256, !15, i64 264, !15, i64 272, !15, i64 280, !15, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !15, i64 336, !6, i64 344, !6, i64 348, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !6, i64 376, !16, i64 380, !16, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !15, i64 440, !15, i64 448, !15, i64 456, !15, i64 464, !15, i64 472, !15, i64 480, !15, i64 488, !15, i64 496, !15, i64 504, !15, i64 512, !15, i64 520, !6, i64 528, !5, i64 536, !6, i64 592, !9, i64 600, !9, i64 608, !15, i64 616, !15, i64 624, !6, i64 632, !5, i64 636, !21, i64 640, !22, i64 656, !15, i64 664, !22, i64 672, !25, i64 680, !25, i64 712, !25, i64 744, !22, i64 776, !30, i64 784, !31, i64 808, !36, i64 816, !6, i64 840, !22, i64 844, !22, i64 845, !22, i64 846, !13, i64 848}
!38 = !{!37, !11, i64 48}
!39 = !{!37, !11, i64 56}
!40 = !{!37, !11, i64 64}
!41 = !{!37, !11, i64 72}
!42 = !{!37, !12, i64 24}
!43 = !{!5, !5, i64 0}
!44 = !{!12, !12, i64 0}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!37, !15, i64 168}
!47 = !{!15, !15, i64 0}
!48 = !{!37, !15, i64 216}
!49 = !{!37, !15, i64 272}
!50 = !{!37, !15, i64 296}
!51 = !{!37, !15, i64 176}
!52 = !{!37, !15, i64 208}
!53 = !{!"vtable pointer", !4, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!6, !6, i64 0}
!56 = distinct !{!56, !45}
!57 = !{!"_ZTS8PJ_ELLPS", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!58 = !{!57, !11, i64 0}
!59 = !{!57, !11, i64 8}
!60 = !{!57, !11, i64 16}
!61 = !{!37, !6, i64 360}
!62 = !{!37, !15, i64 200}
!63 = !{!37, !15, i64 224}
!64 = !{!37, !15, i64 232}
!65 = !{!37, !15, i64 240}
!66 = !{!37, !15, i64 248}
!67 = !{!37, !15, i64 288}
!68 = !{!37, !15, i64 280}
!69 = !{!37, !15, i64 312}
!70 = !{!37, !15, i64 256}
!71 = !{!37, !15, i64 264}
!72 = !{!37, !15, i64 448}
!73 = !{!37, !10, i64 0}
!74 = distinct !{!74, !45}
!75 = distinct !{!75, !45}
!76 = distinct !{null, null, null}
!77 = !{!33, !32, i64 0}
!78 = !{!33, !32, i64 8}
!79 = !{!33, !32, i64 16}
!80 = !{!27, !26, i64 0}
!81 = !{!27, !26, i64 8}
!82 = !{!27, !26, i64 16}
!83 = !{!25, !11, i64 0}
!84 = !{!19, !18, i64 0}
!85 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !6, i64 8, !6, i64 12}
!86 = !{!85, !6, i64 8}
!87 = !{!85, !6, i64 12}
!88 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!89 = distinct !{null}
end_hunk_1
