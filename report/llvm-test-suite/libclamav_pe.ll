inline.NumInlined: 58
inline.NumDeleted: 1
begin_hunk_0_@cli_scanpe:bb.a
bb.cg:                                            ; preds = %bb.cc, %bb.cb
  %.str.68.sink = phi ptr [ @.str.53, %bb.cb ], [ @.str.68, %bb.cc ]
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.cb ], [ %.sink.sroa.gep3992, %bb.cc ]
  %.12363 = phi i32 [ %.02362, %bb.cb ], [ 0, %bb.cc ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !32 ; 26 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !32 ; 4 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.68.sink) #13
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.cn = load i8, ptr %i.cm, align 2, !tbaa !32
  %i.co = zext i8 %i.cn to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.54, i32 noundef %i.co) #13
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !32
  %i.cr = zext i8 %i.cq to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.55, i32 noundef %i.cr) #13
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.56, i32 noundef %i.ct) #13
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.57, i32 noundef %i.cv) #13
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.58, i32 noundef %i.cx) #13
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.59, i32 noundef %i.cj) #13
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.60, i32 noundef %i.cz) #13
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.db = load i32, ptr %i.da, align 8, !tbaa !32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.61, i32 noundef %i.db) #13
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.62, i32 noundef %i.dd) #13
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.df = load i16, ptr %i.de, align 8, !tbaa !32
  %i.dg = zext i16 %i.df to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.63, i32 noundef %i.dg) #13
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 50
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !32
  %i.dj = zext i16 %i.di to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.64, i32 noundef %i.dj) #13
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.65, i32 noundef %i.dl) #13
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.66, i32 noundef %i.cl) #13
  %i.dm = load i32, ptr %.sink.sroa.phi, align 4, !tbaa !32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.67, i32 noundef %i.dm) #13
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 2 uses
  %i.do = load i16, ptr %i.dn, align 4            ; 2 uses
  switch i16 %i.do, label %bb.cs [
    i16 0, label %bb.ch
    i16 1, label %bb.ci
    i16 2, label %bb.cj
    i16 3, label %bb.ck
    i16 5, label %bb.cl
    i16 7, label %bb.cm
    i16 8, label %bb.cn
    i16 9, label %bb.co
    i16 10, label %bb.cp
    i16 11, label %bb.cq
    i16 12, label %bb.cr
  ]

bb.ch:                                            ; preds = %bb.cg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.69) #13
  br label %bb.ct

bb.ci:                                            ; preds = %bb.cg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.70) #13
  br label %bb.ct

bb.cj:                                            ; preds = %bb.cg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.71) #13
  br label %bb.ct

bb.ck:                                            ; preds = %bb.cg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.72) #13
  br label %bb.ct

bb.cl:                                            ; preds = %bb.cg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.73) #13
  br label %bb.ct

bb.cm:                                            ; preds = %bb.cg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.74) #13
  br label %bb.ct

bb.cn:                                            ; preds = %bb.cg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.75) #13
  br label %bb.ct

bb.co:                                            ; preds = %bb.cg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.76) #13
  br label %bb.ct

bb.cp:                                            ; preds = %bb.cg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.77) #13
  br label %bb.ct

bb.cq:                                            ; preds = %bb.cg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.78) #13
  br label %bb.ct

bb.cr:                                            ; preds = %bb.cg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.79) #13
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cg
  %i.dp = zext i16 %i.do to i32
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.80, i32 noundef %i.dp) #13
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch
  %i.dq = phi i1 [ false, %bb.cs ], [ false, %bb.ch ], [ true, %bb.ci ], [ false, %bb.cj ], [ false, %bb.ck ], [ false, %bb.cl ], [ false, %bb.cm ], [ false, %bb.cn ], [ false, %bb.co ], [ false, %bb.cp ], [ false, %bb.cq ], [ false, %bb.cr ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.81) #13
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 24 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !10
  %i.dt = and i32 %i.ds, 64
  %i.du = icmp eq i32 %i.dt, 0
  %or.cond29 = or i1 %i.dq, %i.du
  br i1 %or.cond29, label %.thread3131, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !32 ; 2 uses
  %.not2685 = icmp ne i32 %i.dw, 0
  %i.dx = and i32 %i.dw, 4095
  %.not2686 = icmp eq i32 %i.dx, 0
  %or.cond3906 = and i1 %.not2685, %.not2686      ; 2 uses
  br i1 %.not2680, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  br i1 %or.cond3906, label %bb.cz, label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  br i1 %or.cond3906, label %bb.da, label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.82) #13
  %i.dy = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %.not2687 = icmp eq ptr %i.dy, null
  br i1 %.not2687, label %.critedge3020, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  store ptr @.str.4, ptr %i.dy, align 8, !tbaa !21
  br label %.critedge3020

bb.cz:                                            ; preds = %bb.cv
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !32 ; 2 uses
  %.not2689 = icmp eq i32 %i.ea, 0
  br i1 %.not2689, label %bb.dc, label %bb.db

bb.da:                                            ; preds = %bb.cw
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !32 ; 2 uses
  %.not2688 = icmp eq i32 %i.ec, 0
  br i1 %.not2688, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.ed = phi i32 [ %i.ec, %bb.da ], [ %i.ea, %bb.cz ]
  %i.ee = and i32 %i.ed, 511
  %.not2690 = icmp eq i32 %i.ee, 0
  br i1 %.not2690, label %.thread3131, label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %bb.cz
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.83) #13
  %i.ef = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %.not2691 = icmp eq ptr %i.ef, null
  br i1 %.not2691, label %.critedge3020, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store ptr @.str.4, ptr %i.ef, align 8, !tbaa !21
  br label %.critedge3020

.thread3131:                                      ; preds = %bb.ct, %bb.db
  %i.eg = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %4) #13
  %i.eh = icmp eq i32 %i.eg, -1
  br i1 %i.eh, label %bb.de, label %bb.df

bb.de:                                            ; preds = %.thread3131
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.84) #13
  br label %.critedge3020

bb.df:                                            ; preds = %.thread3131
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !36 ; 23 uses
  %i.ek = zext nneg i16 %i.aj to i64              ; 6 uses
  %i.el = call ptr @cli_calloc(i64 noundef %i.ek, i64 noundef 40) #13 ; 12 uses
  %.not2692 = icmp eq ptr %i.el, null
  br i1 %.not2692, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.85) #13
  br label %.critedge3020

bb.dh:                                            ; preds = %bb.df
  %i.em = call ptr @cli_calloc(i64 noundef %i.ek, i64 noundef 36) #13 ; 184 uses
  %.not2693 = icmp eq ptr %i.em, null
  br i1 %.not2693, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.85) #13
  call void @free(ptr noundef nonnull %i.el) #13
  br label %.critedge3020

bb.dj:                                            ; preds = %bb.dh
  %i.en = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.eo = load i32, ptr %i.en, align 8            ; 12 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.eq = load i32, ptr %i.ep, align 4            ; 4 uses
  %narrow = mul nuw nsw i16 %i.aj, 40
  %i.er = zext nneg i16 %narrow to i32            ; 2 uses
  %i.es = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.el, i32 noundef %i.er) #13
  %.not2694 = icmp eq i32 %i.es, %i.er
  br i1 %.not2694, label %.preheader3351, label %bb.dk

.preheader3351:                                   ; preds = %bb.dj
  %.not3913 = icmp eq i32 %i.eq, 512
  br i1 %.not3913, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader3351
  %i.et = zext nneg i16 %i.aj to i64
  %.not2980 = icmp eq i32 %i.eq, 0
  br label %.lr.ph

bb.dk:                                            ; preds = %bb.dj
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.86) #13
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.87) #13
  call void @free(ptr noundef nonnull %i.el) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.eu = load i32, ptr %i.dr, align 8, !tbaa !10
  %i.ev = and i32 %i.eu, 64
  %.not2984 = icmp eq i32 %i.ev, 0
  br i1 %.not2984, label %.critedge3020, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ew = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %.not2985 = icmp eq ptr %i.ew, null
  br i1 %.not2985, label %.critedge3020, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  store ptr @.str.4, ptr %i.ew, align 8, !tbaa !21
  br label %.critedge3020

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.dp
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.dp ] ; 2 uses
  br i1 %.not2980, label %bb.dp, label %bb.dn

bb.dn:                                            ; preds = %.lr.ph
  %i.ex = getelementptr inbounds nuw [40 x i8], ptr %i.el, i64 %indvars.iv ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !39
  %.not2981 = icmp eq i32 %i.ez, 0
  br i1 %.not2981, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 20
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !41 ; 2 uses
  %i.fc = urem i32 %i.fb, %i.eq
  %.not2982 = icmp ne i32 %i.fc, 0
  %i.fd = and i32 %i.fb, 511
  %.not2983 = icmp eq i32 %i.fd, 0
  %or.cond = and i1 %.not2982, %.not2983
  br i1 %or.cond, label %.thread, label %bb.dp

.thread:                                          ; preds = %bb.do
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.88) #13
  br label %._crit_edge

bb.dp:                                            ; preds = %.lr.ph, %bb.dn, %bb.do
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fe = icmp samesign ult i64 %indvars.iv.next, %i.et
  br i1 %i.fe, label %.lr.ph, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %bb.dp, %.thread, %.preheader3351
  %.02366.lcssa = phi i32 [ 512, %.preheader3351 ], [ 512, %.thread ], [ %i.eq, %bb.dp ] ; 5 uses
  %.not2695 = icmp eq i32 %i.eo, 0                ; 3 uses
  br i1 %.not2695, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %._crit_edge
  %i.ff = udiv i32 %i.cl, %i.eo
  %i.fg = urem i32 %i.cl, %i.eo
  %i.fh = icmp ne i32 %i.fg, 0
  %i.fi = zext i1 %i.fh to i32
  %i.fj = add i32 %i.ff, %i.fi
  %i.fk = mul i32 %i.fj, %i.eo
  br label %bb.dr

bb.dr:                                            ; preds = %._crit_edge, %bb.dq
  %i.fl = phi i32 [ %i.fk, %bb.dq ], [ %i.cl, %._crit_edge ] ; 7 uses
  %.not3489 = icmp eq i16 %i.aj, 0                ; 3 uses
  br i1 %.not3489, label %._crit_edge3410, label %.lr.ph3409

.lr.ph3409:                                       ; preds = %bb.dr
  %i.fm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.not2951 = icmp eq i32 %.02366.lcssa, 0
  %i.fn = trunc i64 %i.ej to i32                  ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %wide.trip.count3539 = zext nneg i16 %i.aj to i64
  br label %bb.ds

bb.ds:                                            ; preds = %.lr.ph3409, %bb.ft
  %indvars.iv3537 = phi i64 [ 0, %.lr.ph3409 ], [ %indvars.iv.next3538, %bb.ft ] ; 8 uses
  %.022753407 = phi i8 [ 0, %.lr.ph3409 ], [ %.22277, %bb.ft ] ; 5 uses
  %.023213404 = phi i32 [ 0, %.lr.ph3409 ], [ %.22323, %bb.ft ]
  %.023243403 = phi i32 [ 0, %.lr.ph3409 ], [ %.12325, %bb.ft ]
  %i.fq = getelementptr inbounds nuw [40 x i8], ptr %i.el, i64 %indvars.iv3537 ; 8 uses
  %i.fr = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.fq, i64 noundef 8) #13 ; 0 uses
  store i8 0, ptr %i.fm, align 1, !tbaa !32
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !44
  %.fr = freeze i32 %i.ft                         ; 4 uses
  br i1 %.not2695, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.fu = urem i32 %.fr, %i.eo
  %i.fv = sub nuw i32 %.fr, %i.fu
  %i.fw = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3537 ; 2 uses
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !45
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !47 ; 3 uses
  %i.fz = udiv i32 %i.fy, %i.eo
  %i.ga = urem i32 %i.fy, %i.eo
  %i.gb = icmp ne i32 %i.ga, 0
  %i.gc = zext i1 %i.gb to i32
  %i.gd = add i32 %i.fz, %i.gc
  %i.ge = mul i32 %i.gd, %i.eo
  br label %bb.dv

bb.du:                                            ; preds = %bb.ds
  %i.gf = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3537 ; 2 uses
  store i32 %.fr, ptr %i.gf, align 4, !tbaa !45
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !47 ; 2 uses
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.gi = phi i32 [ %i.fy, %bb.dt ], [ %i.gh, %bb.du ]
  %i.gj = phi ptr [ %i.fw, %bb.dt ], [ %i.gf, %bb.du ] ; 4 uses
  %i.gk = phi i32 [ %i.ge, %bb.dt ], [ %i.gh, %bb.du ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3537 ; 11 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4 ; 5 uses
  store i32 %i.gk, ptr %i.gm, align 4, !tbaa !48
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fq, i64 20
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !41
  %.fr2952 = freeze i32 %i.go                     ; 5 uses
  br i1 %.not2951, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.gp = urem i32 %.fr2952, %.02366.lcssa
  %i.gq = sub nuw i32 %.fr2952, %i.gp             ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 2 uses
  store i32 %i.gq, ptr %i.gr, align 4, !tbaa !49
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !39 ; 3 uses
  %i.gu = udiv i32 %i.gt, %.02366.lcssa
  %i.gv = urem i32 %i.gt, %.02366.lcssa
  %i.gw = icmp ne i32 %i.gv, 0
  %i.gx = zext i1 %i.gw to i32
  %i.gy = add i32 %i.gu, %i.gx
  %i.gz = mul i32 %i.gy, %.02366.lcssa
  br label %bb.dy

bb.dx:                                            ; preds = %bb.dv
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 2 uses
  store i32 %.fr2952, ptr %i.ha, align 4, !tbaa !49
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !39 ; 2 uses
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.hd = phi i32 [ %i.gt, %bb.dw ], [ %i.hc, %bb.dx ] ; 4 uses
  %i.he = phi ptr [ %i.gr, %bb.dw ], [ %i.ha, %bb.dx ] ; 2 uses
  %i.hf = phi i32 [ %i.gq, %bb.dw ], [ %.fr2952, %bb.dx ] ; 4 uses
  %i.hg = phi i32 [ %i.gz, %bb.dw ], [ %i.hc, %bb.dx ] ; 5 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gl, i64 12 ; 7 uses
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !50
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fq, i64 36
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !51
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gl, i64 16 ; 5 uses
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !52
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gl, i64 20 ; 5 uses
  store i32 %.fr, ptr %i.hl, align 4, !tbaa !53
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gl, i64 24 ; 2 uses
  store i32 %i.gi, ptr %i.hm, align 4, !tbaa !54
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gl, i64 28 ; 2 uses
  store i32 %.fr2952, ptr %i.hn, align 4, !tbaa !55
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gl, i64 32 ; 2 uses
  store i32 %i.hd, ptr %i.ho, align 4, !tbaa !56
  %.not2953 = icmp eq i32 %i.gk, 0
  br i1 %.not2953, label %bb.dz, label %bb.ec

bb.dz:                                            ; preds = %bb.dy
  %.not2954 = icmp eq i32 %i.hg, 0
  br i1 %.not2954, label %.thread3137, label %bb.ea

end_hunk_0
begin_hunk_1_@cli_scanpe:bb.a
  %i.bfc = call i32 @close(i32 noundef %i.beu) #13 ; 0 uses
  %i.bfd = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !32
  %.not2878 = icmp eq i8 %i.bfd, 0                ; 2 uses
  br i1 %i.bfb, label %bb.xj, label %bb.xm

bb.xj:                                            ; preds = %bb.xi
  br i1 %.not2878, label %bb.xk, label %bb.xl

bb.xk:                                            ; preds = %bb.xj
  %i.bfe = call i32 @unlink(ptr noundef nonnull %i.bet) #13 ; 0 uses
  br label %bb.xl

bb.xl:                                            ; preds = %bb.xk, %bb.xj
  call void @free(ptr noundef nonnull %i.bet) #13
  br label %.critedge3020

bb.xm:                                            ; preds = %bb.xi
  br i1 %.not2878, label %bb.xn, label %bb.xo

bb.xn:                                            ; preds = %bb.xm
  %i.bff = call i32 @unlink(ptr noundef nonnull %i.bet) #13 ; 0 uses
  br label %bb.xo

bb.xo:                                            ; preds = %bb.xn, %bb.xm
  call void @free(ptr noundef nonnull %i.bet) #13
  br label %.critedge3020

bb.xp:                                            ; preds = %bb.xe
  call void @free(ptr noundef nonnull %i.ben) #13
  %i.bfg = call i32 @close(i32 noundef %i.beu) #13 ; 0 uses
  %i.bfh = call i32 @unlink(ptr noundef nonnull %i.bet) #13 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.215) #13
  %i.bfi = load i32, ptr %i.dr, align 8, !tbaa !10
  %i.bfj = and i32 %i.bfi, 256
  %.not2875 = icmp eq i32 %i.bfj, 0
  call void @free(ptr noundef nonnull %i.bet) #13
  br i1 %.not2875, label %bb.xs, label %bb.xq

bb.xq:                                            ; preds = %bb.xp
  call void @free(ptr noundef nonnull %i.em) #13
  %i.bfk = load ptr, ptr %1, align 8, !tbaa !20
  store ptr @.str.216, ptr %i.bfk, align 8, !tbaa !21
  br label %.critedge3020

bb.xr:                                            ; preds = %bb.xe
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.217) #13
  %i.bfl = call i32 @close(i32 noundef %i.beu) #13 ; 0 uses
  %i.bfm = call i32 @unlink(ptr noundef nonnull %i.bet) #13 ; 0 uses
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.ben, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.bet) #13
  br label %bb.xs

bb.xs:                                            ; preds = %bb.xp, %bb.xr, %bb.wr, %bb.wq, %bb.wp, %.critedge3050
  %i.bfn = load ptr, ptr %i.uq, align 8, !tbaa !33
  %i.bfo = load i32, ptr %i.bfn, align 4, !tbaa !34 ; 5 uses
  %i.bfp = and i32 %i.bfo, 1024
  %i.bfq = icmp ne i32 %i.bfp, 0
  %or.cond195 = and i1 %i.bdk, %i.bfq
  br i1 %or.cond195, label %bb.xt, label %bb.yq

bb.xt:                                            ; preds = %bb.xs
  %i.bfr = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bfs = load i32, ptr %i.bfr, align 8, !tbaa !32
  %i.bft = add nsw i32 %i.ak, -1                  ; 2 uses
  %i.bfu = zext nneg i32 %i.bft to i64
  %i.bfv = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %i.bfu ; 2 uses
  %i.bfw = load i32, ptr %i.bfv, align 4, !tbaa !45
  %i.bfx = add i32 %i.bfw, 96
  %i.bfy = icmp eq i32 %i.bfs, %i.bfx
  br i1 %i.bfy, label %bb.xu, label %bb.yq

bb.xu:                                            ; preds = %bb.xt
  %bcmp2880 = call i32 @bcmp(ptr noundef nonnull dereferenceable(51) %i.f, ptr noundef nonnull dereferenceable(51) @.str.218, i64 51)
  %i.bfz = icmp eq i32 %bcmp2880, 0
  br i1 %i.bfz, label %bb.xv, label %bb.yq

bb.xv:                                            ; preds = %bb.xu
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfv, i64 8
  %i.bgb = load i32, ptr %i.bga, align 4, !tbaa !49
  %i.bgc = add i32 %i.bgb, 3165
  %i.bgd = zext i32 %i.bgc to i64
  %.not2881 = icmp ult i64 %i.ej, %i.bgd
  br i1 %.not2881, label %bb.yq, label %bb.xw

bb.xw:                                            ; preds = %bb.xv
  %i.bge = call ptr @cli_malloc(i64 noundef %i.ej) #13 ; 8 uses
  %i.bgf = icmp eq ptr %i.bge, null
  br i1 %i.bgf, label %bb.xx, label %bb.xy

bb.xx:                                            ; preds = %bb.xw
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.xy:                                            ; preds = %bb.xw
  %i.bgg = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  %i.bgh = trunc i64 %i.ej to i32                 ; 2 uses
  %i.bgi = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.bge, i32 noundef %i.bgh) #13
  %i.bgj = sext i32 %i.bgi to i64
  %.not2882 = icmp eq i64 %i.ej, %i.bgj
  br i1 %.not2882, label %bb.ya, label %bb.xz

bb.xz:                                            ; preds = %bb.xy
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.219, i64 noundef %i.ej) #13
  call void @free(ptr noundef nonnull %i.bge) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.ya:                                            ; preds = %bb.xy
  %i.bgk = call ptr @cli_gentemp(ptr noundef null) #13 ; 11 uses
  %.not2883 = icmp eq ptr %i.bgk, null
  br i1 %.not2883, label %bb.yb, label %bb.yc

bb.yb:                                            ; preds = %bb.ya
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bge, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.yc:                                            ; preds = %bb.ya
  %i.bgl = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.bgk, i32 noundef 578, i32 noundef 448) #13 ; 7 uses
  %i.bgm = icmp slt i32 %i.bgl, 0
  br i1 %i.bgm, label %bb.yd, label %bb.ye

bb.yd:                                            ; preds = %bb.yc
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.220, ptr noundef nonnull %i.bgk) #13
  call void @free(ptr noundef nonnull %i.bgk) #13
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bge, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.ye:                                            ; preds = %bb.yc
  %i.bgn = load i32, ptr %i.b, align 4, !tbaa !4
  %i.bgo = call i32 @yc_decrypt(ptr noundef nonnull %i.bge, i32 noundef %i.bgh, ptr noundef nonnull %i.em, i32 noundef %i.bft, i32 noundef %i.bgn, i32 noundef %i.bgl) #13
  %cond5 = icmp eq i32 %i.bgo, 0
  br i1 %cond5, label %bb.yf, label %bb.yp

bb.yf:                                            ; preds = %bb.ye
  %i.bgp = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !32
  %.not2884 = icmp eq i8 %i.bgp, 0
  br i1 %.not2884, label %bb.yh, label %bb.yg

bb.yg:                                            ; preds = %bb.yf
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.221, ptr noundef nonnull %i.bgk) #13
  br label %bb.yi

bb.yh:                                            ; preds = %bb.yf
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.222) #13
  br label %bb.yi

bb.yi:                                            ; preds = %bb.yh, %bb.yg
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bge, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.em) #13
  %i.bgq = call i32 @fsync(i32 noundef %i.bgl) #13 ; 0 uses
  %i.bgr = call i64 @lseek(i32 noundef %i.bgl, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.138) #13
  %i.bgs = call i32 @cli_magic_scandesc(i32 noundef %i.bgl, ptr noundef nonnull %1) #13
  %i.bgt = icmp eq i32 %i.bgs, 1
  %i.bgu = call i32 @close(i32 noundef %i.bgl) #13 ; 0 uses
  %i.bgv = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !32
  %.not2886 = icmp eq i8 %i.bgv, 0                ; 2 uses
  br i1 %i.bgt, label %bb.yj, label %bb.ym

bb.yj:                                            ; preds = %bb.yi
  br i1 %.not2886, label %bb.yk, label %bb.yl

bb.yk:                                            ; preds = %bb.yj
  %i.bgw = call i32 @unlink(ptr noundef nonnull %i.bgk) #13 ; 0 uses
  br label %bb.yl

bb.yl:                                            ; preds = %bb.yk, %bb.yj
  call void @free(ptr noundef nonnull %i.bgk) #13
  br label %.critedge3020

bb.ym:                                            ; preds = %bb.yi
  br i1 %.not2886, label %bb.yn, label %bb.yo

bb.yn:                                            ; preds = %bb.ym
  %i.bgx = call i32 @unlink(ptr noundef nonnull %i.bgk) #13 ; 0 uses
  br label %bb.yo

bb.yo:                                            ; preds = %bb.yn, %bb.ym
  call void @free(ptr noundef nonnull %i.bgk) #13
  br label %.critedge3020

bb.yp:                                            ; preds = %bb.ye
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.223) #13
  %i.bgy = call i32 @close(i32 noundef %i.bgl) #13 ; 0 uses
  %i.bgz = call i32 @unlink(ptr noundef nonnull %i.bgk) #13 ; 0 uses
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bge, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.bgk) #13
  %.pre3608 = load ptr, ptr %i.uq, align 8, !tbaa !33
  %.pre3609 = load i32, ptr %.pre3608, align 4, !tbaa !34
  br label %bb.yq

bb.yq:                                            ; preds = %bb.yp, %bb.xv, %bb.xu, %bb.xt, %bb.xs
  %i.bha = phi i32 [ %.pre3609, %bb.yp ], [ %i.bfo, %bb.xv ], [ %i.bfo, %bb.xu ], [ %i.bfo, %bb.xt ], [ %i.bfo, %bb.xs ]
  %i.bhb = and i32 %i.bha, 2048
  %i.bhc = icmp ne i32 %i.bhb, 0
  %or.cond198 = and i1 %i.bdk, %i.bhc
  br i1 %or.cond198, label %bb.yr, label %.thread3842

bb.yr:                                            ; preds = %bb.yq
  %i.bhd = add nsw i32 %i.ak, -1                  ; 3 uses
  %i.bhe = zext i32 %i.bhd to i64                 ; 5 uses
  %i.bhf = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %i.bhe ; 5 uses
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bhf, i64 8
  %i.bhh = load i32, ptr %i.bhg, align 4, !tbaa !49 ; 4 uses
  %i.bhi = icmp ugt i32 %i.bhh, 689
  br i1 %i.bhi, label %bb.ys, label %.thread3842

bb.ys:                                            ; preds = %bb.yr
  %i.bhj = load i32, ptr %i.bhf, align 4, !tbaa !45
  %i.bhk = icmp eq i32 %i.cj, %i.bhj
  br i1 %i.bhk, label %bb.yt, label %.thread3842

bb.yt:                                            ; preds = %bb.ys
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bhf, i64 12 ; 5 uses
  %i.bhm = load i32, ptr %i.bhl, align 4, !tbaa !50 ; 2 uses
  %i.bhn = add i32 %i.bhm, %i.cj
  %i.bho = icmp eq i32 %i.bhn, %.02324.lcssa
  br i1 %i.bho, label %bb.yu, label %.thread3842

bb.yu:                                            ; preds = %bb.yt
  %i.bhp = load i32, ptr %i.f, align 16
  %i.bhq = xor i32 %i.bhp, -393521837
  %i.bhr = getelementptr i8, ptr %i.f, i64 3
  %i.bhs = load i32, ptr %i.bhr, align 1
  %i.bht = xor i32 %i.bhs, -337955864
  %i.bhu = or i32 %i.bhq, %i.bht
  %i.bhv = icmp ne i32 %i.bhu, 0
  %i.bhw = zext i1 %i.bhv to i32
  %i.bhx = icmp eq i32 %i.bhw, 0
  br i1 %i.bhx, label %bb.yv, label %.thread3842

bb.yv:                                            ; preds = %bb.yu
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  %i.bhz = load i128, ptr %i.bhy, align 1
  %i.bia = xor i128 %i.bhz, 107382933364910958583781871253727477992
  %i.bib = getelementptr i8, ptr %i.bhy, i64 3
  %i.bic = load i128, ptr %i.bib, align 1
  %i.bid = xor i128 %i.bic, 106755414664042775544543906123602198528
  %i.bie = or i128 %i.bia, %i.bid
  %i.bif = icmp ne i128 %i.bie, 0
  %i.big = zext i1 %i.bif to i32
  %i.bih = icmp eq i32 %i.big, 0
  br i1 %i.bih, label %.preheader3342, label %.thread3842

.preheader3342:                                   ; preds = %bb.yv
  %.not3498 = icmp eq i32 %i.bhd, 0               ; 2 uses
  br i1 %.not3498, label %._crit_edge3466, label %.lr.ph3465.preheader

.lr.ph3465.preheader:                             ; preds = %.preheader3342
  %min.iters.check3947 = icmp ult i16 %i.aj, 9
  br i1 %min.iters.check3947, label %.lr.ph3465.preheader3961, label %vector.ph3948

vector.ph3948:                                    ; preds = %.lr.ph3465.preheader
  %n.vec3950 = and i64 %i.bhe, 4294967288         ; 3 uses
  %broadcast.splatinsert3951 = insertelement <4 x i32> poison, i32 %i.bhh, i64 0
  %broadcast.splat3952 = shufflevector <4 x i32> %broadcast.splatinsert3951, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body3953

vector.body3953:                                  ; preds = %vector.body3953, %vector.ph3948
  %index3954 = phi i64 [ 0, %vector.ph3948 ], [ %index.next3956, %vector.body3953 ] ; 9 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat3952, %vector.ph3948 ], [ %31, %vector.body3953 ]
  %vec.phi3955 = phi <4 x i32> [ %broadcast.splat3952, %vector.ph3948 ], [ %32, %vector.body3953 ]
  %5 = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %index3954
  %6 = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %index3954
  %7 = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %index3954
  %i.bii = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %index3954
  %8 = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %index3954
  %9 = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %index3954
  %10 = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %index3954
  %i.bij = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %index3954
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %6, i64 44
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bii, i64 116
  %14 = getelementptr inbounds nuw i8, ptr %8, i64 152
  %15 = getelementptr inbounds nuw i8, ptr %9, i64 188
  %16 = getelementptr inbounds nuw i8, ptr %10, i64 224
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bij, i64 260
  %17 = load i32, ptr %11, align 4, !tbaa !49
  %18 = load i32, ptr %12, align 4, !tbaa !49
  %19 = load i32, ptr %13, align 4, !tbaa !49
  %i.bim = load i32, ptr %i.bik, align 4, !tbaa !49
  %20 = insertelement <4 x i32> poison, i32 %17, i64 0
  %21 = insertelement <4 x i32> %20, i32 %18, i64 1
  %22 = insertelement <4 x i32> %21, i32 %19, i64 2
  %23 = insertelement <4 x i32> %22, i32 %i.bim, i64 3
  %24 = load i32, ptr %14, align 4, !tbaa !49
  %25 = load i32, ptr %15, align 4, !tbaa !49
  %26 = load i32, ptr %16, align 4, !tbaa !49
  %i.bin = load i32, ptr %i.bil, align 4, !tbaa !49
  %27 = insertelement <4 x i32> poison, i32 %24, i64 0
  %28 = insertelement <4 x i32> %27, i32 %25, i64 1
  %29 = insertelement <4 x i32> %28, i32 %26, i64 2
  %30 = insertelement <4 x i32> %29, i32 %i.bin, i64 3
  %31 = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %23, <4 x i32> %vec.phi) ; 2 uses
  %32 = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %30, <4 x i32> %vec.phi3955) ; 2 uses
  %index.next3956 = add nuw i64 %index3954, 8     ; 2 uses
  %i.bio = icmp eq i64 %index.next3956, %n.vec3950
  br i1 %i.bio, label %middle.block3957, label %vector.body3953, !llvm.loop !94

middle.block3957:                                 ; preds = %vector.body3953
  %rdx.minmax = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %31, <4 x i32> %32)
  %33 = call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n3958 = icmp eq i64 %n.vec3950, %i.bhe
  br i1 %cmp.n3958, label %._crit_edge3466, label %.lr.ph3465.preheader3961

.lr.ph3465.preheader3961:                         ; preds = %.lr.ph3465.preheader, %middle.block3957
  %indvars.iv3576.ph = phi i64 [ 0, %.lr.ph3465.preheader ], [ %n.vec3950, %middle.block3957 ]
  %.022933463.ph = phi i32 [ %i.bhh, %.lr.ph3465.preheader ], [ %33, %middle.block3957 ]
  br label %.lr.ph3465

.lr.ph3465:                                       ; preds = %.lr.ph3465.preheader3961, %.lr.ph3465
  %indvars.iv3576 = phi i64 [ %indvars.iv.next3577, %.lr.ph3465 ], [ %indvars.iv3576.ph, %.lr.ph3465.preheader3961 ] ; 2 uses
  %.022933463.a = phi i32 [ %spec.select3054.a, %.lr.ph3465 ], [ %.022933463.ph, %.lr.ph3465.preheader3961 ]
  %i.bip = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3576
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bip, i64 8
  %i.bir = load i32, ptr %i.biq, align 4, !tbaa !49
  %spec.select3054.a = call i32 @llvm.umin.i32(i32 %i.bir, i32 %.022933463.a) ; 2 uses
  %indvars.iv.next3577 = add nuw nsw i64 %indvars.iv3576, 1 ; 2 uses
  %exitcond3580.not = icmp eq i64 %indvars.iv.next3577, %i.bhe
  br i1 %exitcond3580.not, label %._crit_edge3466, label %.lr.ph3465, !llvm.loop !95

._crit_edge3466:                                  ; preds = %.lr.ph3465, %middle.block3957, %.preheader3342
  %.02293.lcssa = phi i32 [ %i.bhh, %.preheader3342 ], [ %33, %middle.block3957 ], [ %spec.select3054.a, %.lr.ph3465 ] ; 5 uses
  %i.bis = add i32 %.02321.lcssa, %i.bhm
  %i.bit = sub i32 %.02324.lcssa, %i.bis
  %i.biu = add i32 %i.bit, %.02293.lcssa          ; 4 uses
  store i32 %i.biu, ptr %i.h, align 4, !tbaa !4
  %i.biv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.biw = load ptr, ptr %i.biv, align 8, !tbaa !74 ; 2 uses
  %.not2889 = icmp eq ptr %i.biw, null
  br i1 %.not2889, label %._crit_edge3466._crit_edge, label %bb.yw

._crit_edge3466._crit_edge:                       ; preds = %._crit_edge3466
  %.pre3617 = zext i32 %i.biu to i64
  br label %bb.yz

bb.yw:                                            ; preds = %._crit_edge3466
  %i.bix = getelementptr inbounds nuw i8, ptr %i.biw, i64 24
  %i.biy = load i64, ptr %i.bix, align 8, !tbaa !75 ; 3 uses
  %.not2890 = icmp ne i64 %i.biy, 0
  %i.biz = zext i32 %i.biu to i64                 ; 2 uses
  %i.bja = icmp ult i64 %i.biy, %i.biz
  %or.cond3056 = select i1 %.not2890, i1 %i.bja, i1 false
  br i1 %or.cond3056, label %bb.yx, label %bb.yz

bb.yx:                                            ; preds = %bb.yw
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.226, i32 noundef %i.biu, i64 noundef %i.biy) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.bjb = load i32, ptr %i.dr, align 8, !tbaa !10
  %i.bjc = and i32 %i.bjb, 256
  %.not2903 = icmp eq i32 %i.bjc, 0
  br i1 %.not2903, label %.critedge3020, label %bb.yy

bb.yy:                                            ; preds = %bb.yx
  %i.bjd = load ptr, ptr %1, align 8, !tbaa !20
  store ptr @.str.227, ptr %i.bjd, align 8, !tbaa !21
  br label %.critedge3020

bb.yz:                                            ; preds = %._crit_edge3466._crit_edge, %bb.yw
  %.pre-phi3618 = phi i64 [ %.pre3617, %._crit_edge3466._crit_edge ], [ %i.biz, %bb.yw ]
  %i.bje = call ptr @cli_calloc(i64 noundef %.pre-phi3618, i64 noundef 1) #13 ; 14 uses
  %i.bjf = icmp eq ptr %i.bje, null
  br i1 %i.bjf, label %bb.za, label %bb.zb

bb.za:                                            ; preds = %bb.yz
  %i.bjg = load i32, ptr %i.h, align 4, !tbaa !4
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.228, i32 noundef %i.bjg) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.zb:                                            ; preds = %bb.yz
  %i.bjh = call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  %i.bji = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.bje, i32 noundef %.02293.lcssa) #13
  %i.bjj = sext i32 %i.bji to i64                 ; 2 uses
  %i.bjk = zext i32 %.02293.lcssa to i64
  %.not2891 = icmp eq i64 %i.bjj, %i.bjk
  br i1 %.not2891, label %.preheader3341, label %bb.zc

.preheader3341:                                   ; preds = %bb.zb
  br i1 %.not3498, label %._crit_edge3470, label %.lr.ph3469

.lr.ph3469:                                       ; preds = %.preheader3341
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bje, i64 %i.bjj
  %i.bjm = zext i32 %.02321.lcssa to i64
  %i.bjn = sub nsw i64 0, %i.bjm
  %invariant.gep3471 = getelementptr i8, ptr %i.bjl, i64 %i.bjn
  br label %bb.zd

bb.zc:                                            ; preds = %bb.zb
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.229, i32 noundef %.02293.lcssa) #13
  call void @free(ptr noundef nonnull %i.bje) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.zd:                                            ; preds = %.lr.ph3469, %bb.zh
  %indvars.iv3581 = phi i64 [ 0, %.lr.ph3469 ], [ %indvars.iv.next3582, %bb.zh ] ; 2 uses
  %i.bjo = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3581 ; 3 uses
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bjo, i64 12 ; 3 uses
  %i.bjq = load i32, ptr %i.bjp, align 4, !tbaa !50
  %.not2900 = icmp eq i32 %i.bjq, 0
  br i1 %.not2900, label %bb.zh, label %bb.ze

bb.ze:                                            ; preds = %bb.zd
  %i.bjr = call fastcc i64 @cli_seeksect(i32 noundef %0, ptr noundef %i.bjo)
  %.not2901 = icmp eq i64 %i.bjr, 0
  br i1 %.not2901, label %bb.zg, label %bb.zf

bb.zf:                                            ; preds = %bb.ze
  %i.bjs = load i32, ptr %i.bjo, align 4, !tbaa !45
  %i.bjt = zext i32 %i.bjs to i64
  %gep3472 = getelementptr i8, ptr %invariant.gep3471, i64 %i.bjt
  %i.bju = load i32, ptr %i.bjp, align 4, !tbaa !50
  %i.bjv = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %gep3472, i32 noundef %i.bju) #13
  %i.bjw = load i32, ptr %i.bjp, align 4, !tbaa !50
  %.not2902 = icmp eq i32 %i.bjv, %i.bjw
  br i1 %.not2902, label %bb.zh, label %bb.zg

bb.zg:                                            ; preds = %bb.zf, %bb.ze
  call void @free(ptr noundef %i.bje) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.zh:                                            ; preds = %bb.zd, %bb.zf
  %indvars.iv.next3582 = add nuw nsw i64 %indvars.iv3581, 1 ; 2 uses
  %exitcond3585.not = icmp eq i64 %indvars.iv.next3582, %i.bhe
  br i1 %exitcond3585.not, label %._crit_edge3470, label %bb.zd, !llvm.loop !96

._crit_edge3470:                                  ; preds = %bb.zh, %.preheader3341
  %i.bjx = load i32, ptr %i.bhl, align 4, !tbaa !50
  %i.bjy = zext i32 %i.bjx to i64
  %i.bjz = call ptr @cli_calloc(i64 noundef %i.bjy, i64 noundef 1) #13 ; 5 uses
  %i.bka = icmp eq ptr %i.bjz, null
  br i1 %i.bka, label %bb.zi, label %bb.zj

bb.zi:                                            ; preds = %._crit_edge3470
  %i.bkb = load i32, ptr %i.bhl, align 4, !tbaa !50
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.228, i32 noundef %i.bkb) #13
  call void @free(ptr noundef %i.bje) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.zj:                                            ; preds = %._crit_edge3470
  %i.bkc = call fastcc i64 @cli_seeksect(i32 noundef %0, ptr noundef %i.bhf)
  %.not2892 = icmp eq i64 %i.bkc, 0
  %.pre3610 = load i32, ptr %i.bhl, align 4, !tbaa !50 ; 2 uses
  br i1 %.not2892, label %bb.zl, label %bb.zk

bb.zk:                                            ; preds = %bb.zj
  %i.bkd = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.bjz, i32 noundef %.pre3610) #13
  %i.bke = sext i32 %i.bkd to i64
  %i.bkf = load i32, ptr %i.bhl, align 4, !tbaa !50 ; 3 uses
  %i.bkg = zext i32 %i.bkf to i64
  %.not2893 = icmp eq i64 %i.bke, %i.bkg
  br i1 %.not2893, label %bb.zm, label %bb.zl

bb.zl:                                            ; preds = %bb.zk, %bb.zj
  %i.bkh = phi i32 [ %i.bkf, %bb.zk ], [ %.pre3610, %bb.zj ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.230, i32 noundef %i.bkh) #13
  call void @free(ptr noundef %i.bje) #13
  call void @free(ptr noundef nonnull %i.bjz) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.zm:                                            ; preds = %bb.zk
  %i.bki = load i32, ptr %i.h, align 4, !tbaa !4
  %i.bkj = load i32, ptr %i.bhf, align 4, !tbaa !45
  %i.bkk = load i32, ptr %i.b, align 4, !tbaa !4
  %i.bkl = trunc nuw nsw i32 %i.bhd to i16
  %i.bkm = call i32 @wwunpack(ptr noundef nonnull %i.bje, i32 noundef %i.bki, i32 noundef %.02293.lcssa, i32 noundef %.02321.lcssa, i32 noundef %i.bkj, i32 noundef %i.bkk, ptr noundef nonnull %i.bjz, i32 noundef %i.bkf, i16 noundef zeroext %i.bkl) #13
  %.not2894 = icmp eq i32 %i.bkm, 0
  call void @free(ptr noundef nonnull %i.bjz) #13
  br i1 %.not2894, label %bb.zn, label %bb.aad

bb.zn:                                            ; preds = %bb.zm
  %i.bkn = call ptr @cli_gentemp(ptr noundef null) #13 ; 10 uses
  %.not2895 = icmp eq ptr %i.bkn, null
  br i1 %.not2895, label %bb.zo, label %bb.zp

bb.zo:                                            ; preds = %bb.zn
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bje, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.zp:                                            ; preds = %bb.zn
  %i.bko = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.bkn, i32 noundef 578, i32 noundef 448) #13 ; 8 uses
  %i.bkp = icmp slt i32 %i.bko, 0
  br i1 %i.bkp, label %bb.zq, label %bb.zr

bb.zq:                                            ; preds = %bb.zp
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.231, ptr noundef nonnull %i.bkn) #13
  call void @free(ptr noundef nonnull %i.bkn) #13
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bje, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.zr:                                            ; preds = %bb.zp
  %i.bkq = load i32, ptr %i.h, align 4, !tbaa !4
  %i.bkr = zext i32 %i.bkq to i64
  %i.bks = call i64 @write(i32 noundef %i.bko, ptr noundef nonnull %i.bje, i64 noundef %i.bkr) #13
  %i.bkt = trunc i64 %i.bks to i32
  %i.bku = load i32, ptr %i.h, align 4, !tbaa !4  ; 2 uses
  %.not2896 = icmp eq i32 %i.bku, %i.bkt
  br i1 %.not2896, label %bb.zt, label %bb.zs

bb.zs:                                            ; preds = %bb.zr
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.232, i32 noundef %i.bku) #13
  %i.bkv = call i32 @close(i32 noundef %i.bko) #13 ; 0 uses
  call void @free(ptr noundef nonnull %i.bkn) #13
  call void @free(ptr noundef nonnull %i.bje) #13
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

bb.zt:                                            ; preds = %bb.zr
  call void @free(ptr noundef nonnull %i.bje) #13
  %i.bkw = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !32
  %.not2897 = icmp eq i8 %i.bkw, 0
  br i1 %.not2897, label %bb.zv, label %bb.zu

bb.zu:                                            ; preds = %bb.zt
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.233, ptr noundef nonnull %i.bkn) #13
  br label %bb.zw

bb.zv:                                            ; preds = %bb.zt
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.234) #13
  br label %bb.zw

bb.zw:                                            ; preds = %bb.zv, %bb.zu
  %i.bkx = call i32 @fsync(i32 noundef %i.bko) #13 ; 0 uses
  %i.bky = call i64 @lseek(i32 noundef %i.bko, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  %i.bkz = call i32 @cli_magic_scandesc(i32 noundef %i.bko, ptr noundef %1) #13
  %i.bla = icmp eq i32 %i.bkz, 1
  br i1 %i.bla, label %bb.zx, label %bb.aaa

bb.zx:                                            ; preds = %bb.zw
  call void @free(ptr noundef nonnull %i.em) #13
  %i.blb = call i32 @close(i32 noundef %i.bko) #13 ; 0 uses
  %i.blc = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !32
  %.not2899 = icmp eq i8 %i.blc, 0
  br i1 %.not2899, label %bb.zy, label %bb.zz

bb.zy:                                            ; preds = %bb.zx
  %i.bld = call i32 @unlink(ptr noundef nonnull %i.bkn) #13 ; 0 uses
  br label %bb.zz

bb.zz:                                            ; preds = %bb.zy, %bb.zx
  call void @free(ptr noundef nonnull %i.bkn) #13
  br label %.critedge3020

bb.aaa:                                           ; preds = %bb.zw
  %i.ble = call i32 @close(i32 noundef %i.bko) #13 ; 0 uses
  %i.blf = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !32
  %.not2898 = icmp eq i8 %i.blf, 0
  br i1 %.not2898, label %bb.aab, label %bb.aac

bb.aab:                                           ; preds = %bb.aaa
  %i.blg = call i32 @unlink(ptr noundef nonnull %i.bkn) #13 ; 0 uses
  br label %bb.aac

bb.aac:                                           ; preds = %bb.aab, %bb.aaa
  call void @free(ptr noundef nonnull %i.bkn) #13
  br label %.thread3842

bb.aad:                                           ; preds = %bb.zm
  call void @free(ptr noundef nonnull %i.bje) #13
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.235) #13
  br label %.thread3842

.thread3842:                                      ; preds = %bb.vk, %bb.aad, %bb.aac, %bb.yq, %bb.yr, %bb.ys, %bb.yt, %bb.yu, %bb.yv
  %i.blh = load ptr, ptr %i.uq, align 8, !tbaa !33
  %i.bli = load i32, ptr %i.blh, align 4, !tbaa !34
  %i.blj = and i32 %i.bli, 32768
  %.not2904 = icmp ne i32 %i.blj, 0
  %i.blk = add i32 %i.ky, 1864
  %i.bll = zext i32 %i.blk to i64
  %i.blm = icmp ugt i64 %i.ej, %i.bll
  %or.cond3059 = select i1 %.not2904, i1 %i.blm, i1 false
  br i1 %or.cond3059, label %bb.aae, label %.critedge200

bb.aae:                                           ; preds = %.thread3842
  %lhsv = load i64, ptr %i.f, align 16
  %i.bln = icmp ne i64 %lhsv, -1447625805222647712
  %i.blo = icmp ult i32 %i.lh, 959
  %or.cond219 = select i1 %i.bln, i1 true, i1 %i.blo
  br i1 %or.cond219, label %.critedge200, label %bb.aaf

bb.aaf:                                           ; preds = %bb.aae
  %i.blp = getelementptr inbounds nuw i8, ptr %i.f, i64 953 ; 2 uses
  %i.blq = load i32, ptr %i.blp, align 1
  %i.blr = xor i32 %i.blq, 104
  %i.bls = getelementptr i8, ptr %i.blp, i64 4
  %i.blt = load i16, ptr %i.bls, align 1
  %i.blu = zext i16 %i.blt to i32
  %i.blv = xor i32 %i.blu, 49920
  %i.blw = or i32 %i.blr, %i.blv
  %i.blx = icmp ne i32 %i.blw, 0                  ; 2 uses
  %i.bly = zext i1 %i.blx to i32                  ; 0 uses
  %brmerge = or i1 %i.blx, %.not3489
  br i1 %brmerge, label %.critedge200, label %.lr.ph3474.preheader

.lr.ph3474.preheader:                             ; preds = %bb.aaf
  %wide.trip.count3589 = zext nneg i16 %i.aj to i64 ; 2 uses
  %xtraiter3988 = and i64 %wide.trip.count3589, 1
  %i.blz = icmp eq i16 %i.aj, 1
  br i1 %i.blz, label %.lr.ph3474.epil.preheader, label %.lr.ph3474.preheader.new

.lr.ph3474.preheader.new:                         ; preds = %.lr.ph3474.preheader
  %unroll_iter = and i64 %wide.trip.count3589, 126
  br label %.lr.ph3474

.lr.ph3474:                                       ; preds = %.lr.ph3474, %.lr.ph3474.preheader.new
  %indvars.iv3586 = phi i64 [ 0, %.lr.ph3474.preheader.new ], [ %indvars.iv.next3587.1, %.lr.ph3474 ] ; 3 uses
  %i.bma = phi i32 [ 0, %.lr.ph3474.preheader.new ], [ %spec.select3060.1, %.lr.ph3474 ]
  %niter.a = phi i64 [ 0, %.lr.ph3474.preheader.new ], [ %niter.next.1, %.lr.ph3474 ]
  %i.bmb = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3586 ; 2 uses
  %i.bmc = load i32, ptr %i.bmb, align 4, !tbaa !45
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.bmb, i64 4
  %i.bme = load i32, ptr %i.bmd, align 4, !tbaa !48
  %i.bmf = add i32 %i.bme, %i.bmc
  %.fr3501 = freeze i32 %i.bmf
  %spec.select3060 = call i32 @llvm.umax.i32(i32 %i.bma, i32 %.fr3501)
  %i.bmg = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3586 ; 2 uses
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.bmg, i64 36
  %i.bmi = load i32, ptr %i.bmh, align 4, !tbaa !45
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.bmg, i64 40
  %i.bmk = load i32, ptr %i.bmj, align 4, !tbaa !48
  %i.bml = add i32 %i.bmk, %i.bmi
  %.fr3501.1 = freeze i32 %i.bml
  %spec.select3060.1 = call i32 @llvm.umax.i32(i32 %spec.select3060, i32 %.fr3501.1) ; 3 uses
  %indvars.iv.next3587.1 = add nuw nsw i64 %indvars.iv3586, 2 ; 2 uses
  %niter.next.1 = add i64 %niter.a, 2             ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge3475.unr-lcssa, label %.lr.ph3474, !llvm.loop !97

._crit_edge3475.unr-lcssa:                        ; preds = %.lr.ph3474
  %lcmp.mod3989.not = icmp eq i64 %xtraiter3988, 0
  br i1 %lcmp.mod3989.not, label %._crit_edge3475, label %.lr.ph3474.epil.preheader

.lr.ph3474.epil.preheader:                        ; preds = %._crit_edge3475.unr-lcssa, %.lr.ph3474.preheader
  %indvars.iv3586.epil.init = phi i64 [ 0, %.lr.ph3474.preheader ], [ %indvars.iv.next3587.1, %._crit_edge3475.unr-lcssa ]
  %.epil.init = phi i32 [ 0, %.lr.ph3474.preheader ], [ %spec.select3060.1, %._crit_edge3475.unr-lcssa ]
  %lcmp.mod3991 = trunc i16 %i.aj to i1
  call void @llvm.assume(i1 %lcmp.mod3991)
  %i.bmm = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3586.epil.init ; 2 uses
  %i.bmn = load i32, ptr %i.bmm, align 4, !tbaa !45
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bmm, i64 4
  %i.bmp = load i32, ptr %i.bmo, align 4, !tbaa !48
  %i.bmq = add i32 %i.bmp, %i.bmn
  %.fr3501.epil = freeze i32 %i.bmq
  %spec.select3060.epil = call i32 @llvm.umax.i32(i32 %.epil.init, i32 %.fr3501.epil)
  br label %._crit_edge3475

._crit_edge3475:                                  ; preds = %._crit_edge3475.unr-lcssa, %.lr.ph3474.epil.preheader
  %spec.select3060.lcssa = phi i32 [ %spec.select3060.1, %._crit_edge3475.unr-lcssa ], [ %spec.select3060.epil, %.lr.ph3474.epil.preheader ] ; 6 uses
  %.not2907 = icmp eq i32 %spec.select3060.lcssa, 0
  br i1 %.not2907, label %.critedge200, label %bb.aag

bb.aag:                                           ; preds = %._crit_edge3475
  %i.bmr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bms = load ptr, ptr %i.bmr, align 8, !tbaa !74 ; 2 uses
  %.not2908 = icmp eq ptr %i.bms, null
  br i1 %.not2908, label %._crit_edge3616, label %bb.aah

._crit_edge3616:                                  ; preds = %bb.aag
  %.pre3619 = zext i32 %spec.select3060.lcssa to i64
  br label %bb.aak

bb.aah:                                           ; preds = %bb.aag
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.bms, i64 24
  %i.bmu = load i64, ptr %i.bmt, align 8, !tbaa !75 ; 3 uses
  %.not2909 = icmp ne i64 %i.bmu, 0
  %i.bmv = zext i32 %spec.select3060.lcssa to i64 ; 2 uses
  %i.bmw = icmp ult i64 %i.bmu, %i.bmv
  %or.cond3062 = and i1 %.not2909, %i.bmw
  br i1 %or.cond3062, label %bb.aai, label %bb.aak

bb.aai:                                           ; preds = %bb.aah
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.238, i32 noundef %spec.select3060.lcssa, i64 noundef %i.bmu) #13
  call void @free(ptr noundef nonnull %i.em) #13
  %i.bmx = load i32, ptr %i.dr, align 8, !tbaa !10
  %i.bmy = and i32 %i.bmx, 256
  %.not2923 = icmp eq i32 %i.bmy, 0
  br i1 %.not2923, label %.critedge3020, label %bb.aaj

bb.aaj:                                           ; preds = %bb.aai
  %i.bmz = load ptr, ptr %1, align 8, !tbaa !20
  store ptr @.str.239, ptr %i.bmz, align 8, !tbaa !21
  br label %.critedge3020

bb.aak:                                           ; preds = %._crit_edge3616, %bb.aah
  %.pre-phi3620 = phi i64 [ %.pre3619, %._crit_edge3616 ], [ %i.bmv, %bb.aah ] ; 2 uses
  %i.bna = call ptr @cli_calloc(i64 noundef %.pre-phi3620, i64 noundef 1) #13 ; 8 uses
  %.not2910 = icmp eq ptr %i.bna, null
  br i1 %.not2910, label %bb.aal, label %.lr.ph3478.preheader

.lr.ph3478.preheader:                             ; preds = %bb.aak
  %wide.trip.count3594 = zext nneg i16 %i.aj to i64
  br label %.lr.ph3478

bb.aal:                                           ; preds = %bb.aak
  call void @free(ptr noundef nonnull %i.em) #13
  br label %.critedge3020

.lr.ph3478:                                       ; preds = %.lr.ph3478.preheader, %bb.aaq
  %indvars.iv3591 = phi i64 [ 0, %.lr.ph3478.preheader ], [ %indvars.iv.next3592, %bb.aaq ] ; 3 uses
  %i.bnb = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3591 ; 3 uses
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.bnb, i64 12 ; 3 uses
  %i.bnd = load i32, ptr %i.bnc, align 4, !tbaa !50
  %.not2911 = icmp eq i32 %i.bnd, 0
  br i1 %.not2911, label %bb.aaq, label %bb.aam

bb.aam:                                           ; preds = %.lr.ph3478
  %i.bne = call fastcc i64 @cli_seeksect(i32 noundef %0, ptr noundef %i.bnb)
  %.not2912 = icmp eq i64 %i.bne, 0
  br i1 %.not2912, label %._crit_edge3479, label %bb.aan

bb.aan:                                           ; preds = %bb.aam
  %i.bnf = load i32, ptr %i.bnc, align 4, !tbaa !50 ; 3 uses
  %i.bng = add i32 %i.bnf, -1
  %or.cond3063.not = icmp ult i32 %i.bng, %spec.select3060.lcssa
  br i1 %or.cond3063.not, label %bb.aao, label %._crit_edge3479

bb.aao:                                           ; preds = %bb.aan
  %i.bnh = load i32, ptr %i.bnb, align 4, !tbaa !45
  %i.bni = zext i32 %i.bnh to i64                 ; 2 uses
  %i.bnj = zext i32 %i.bnf to i64
  %i.bnk = add nuw nsw i64 %i.bni, %i.bnj
  %.not2916 = icmp samesign ugt i64 %i.bnk, %.pre-phi3620
  br i1 %.not2916, label %._crit_edge3479, label %bb.aap

bb.aap:                                           ; preds = %bb.aao
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.bna, i64 %i.bni
  %i.bnm = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.bnl, i32 noundef %i.bnf) #13
  %i.bnn = load i32, ptr %i.bnc, align 4, !tbaa !50
  %.not2917 = icmp eq i32 %i.bnm, %i.bnn
  br i1 %.not2917, label %bb.aaq, label %._crit_edge3479

bb.aaq:                                           ; preds = %bb.aap, %.lr.ph3478
  %indvars.iv.next3592 = add nuw nsw i64 %indvars.iv3591, 1 ; 2 uses
  %exitcond3595.not = icmp eq i64 %indvars.iv.next3592, %wide.trip.count3594
  br i1 %exitcond3595.not, label %._crit_edge3479.thread, label %.lr.ph3478, !llvm.loop !98

._crit_edge3479:                                  ; preds = %bb.aam, %bb.aao, %bb.aan, %bb.aap
  %i.bno = trunc nuw nsw i64 %indvars.iv3591 to i32
  %.not2918 = icmp eq i32 %i.bno, %i.ak
  br i1 %.not2918, label %._crit_edge3479.thread, label %bb.aar

bb.aar:                                           ; preds = %._crit_edge3479
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.240) #13
  br label %.critedge200.sink.split

._crit_edge3479.thread:                           ; preds = %bb.aaq, %._crit_edge3479
  %i.bnp = call ptr @cli_gentemp(ptr noundef null) #13 ; 11 uses
  %.not2919 = icmp eq ptr %i.bnp, null
  br i1 %.not2919, label %bb.aas, label %bb.aat

bb.aas:                                           ; preds = %._crit_edge3479.thread
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bna, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.aat:                                           ; preds = %._crit_edge3479.thread
  %i.bnq = call i32 (ptr, i32, ...) @open(ptr noundef nonnull %i.bnp, i32 noundef 578, i32 noundef 448) #13 ; 7 uses
  %i.bnr = icmp slt i32 %i.bnq, 0
  br i1 %i.bnr, label %bb.aau, label %bb.aav

bb.aau:                                           ; preds = %bb.aat
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.241, ptr noundef nonnull %i.bnp) #13
  call void @free(ptr noundef nonnull %i.bnp) #13
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bna, ptr noundef nonnull %i.em, i32 noundef 0)
  br label %.critedge3020

bb.aav:                                           ; preds = %bb.aat
  %i.bns = add i32 %i.cj, -1
  %i.bnt = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.bnu = load i32, ptr %i.bnt, align 4, !tbaa !32
  %i.bnv = call i32 @unaspack212(ptr noundef nonnull %i.bna, i32 noundef %spec.select3060.lcssa, ptr noundef nonnull %i.em, i16 noundef zeroext %i.aj, i32 noundef %i.bns, i32 noundef %i.bnu, i32 noundef %i.bnq) #13
  %cond2 = icmp eq i32 %i.bnv, 1
  br i1 %cond2, label %bb.aaw, label %bb.abg

bb.aaw:                                           ; preds = %bb.aav
  %i.bnw = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !32
  %.not2920 = icmp eq i8 %i.bnw, 0
  br i1 %.not2920, label %bb.aay, label %bb.aax

bb.aax:                                           ; preds = %bb.aaw
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.242, ptr noundef nonnull %i.bnp) #13
  br label %bb.aaz

bb.aay:                                           ; preds = %bb.aaw
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.243) #13
  br label %bb.aaz

bb.aaz:                                           ; preds = %bb.aay, %bb.aax
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bna, i32 noundef 0)
  call void @free(ptr noundef nonnull %i.em) #13
  %i.bnx = call i32 @fsync(i32 noundef %i.bnq) #13 ; 0 uses
  %i.bny = call i64 @lseek(i32 noundef %i.bnq, i64 noundef 0, i32 noundef 0) #13 ; 0 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.138) #13
  %i.bnz = call i32 @cli_magic_scandesc(i32 noundef %i.bnq, ptr noundef %1) #13
  %i.boa = icmp eq i32 %i.bnz, 1
  %i.bob = call i32 @close(i32 noundef %i.bnq) #13 ; 0 uses
  %i.boc = load i8, ptr @cli_leavetemps_flag, align 1, !tbaa !32
  %.not2922 = icmp eq i8 %i.boc, 0                ; 2 uses
  br i1 %i.boa, label %bb.aba, label %bb.abd

bb.aba:                                           ; preds = %bb.aaz
  br i1 %.not2922, label %bb.abb, label %bb.abc

bb.abb:                                           ; preds = %bb.aba
  %i.bod = call i32 @unlink(ptr noundef nonnull %i.bnp) #13 ; 0 uses
  br label %bb.abc

bb.abc:                                           ; preds = %bb.abb, %bb.aba
  call void @free(ptr noundef nonnull %i.bnp) #13
  br label %.critedge3020

bb.abd:                                           ; preds = %bb.aaz
  br i1 %.not2922, label %bb.abe, label %bb.abf

bb.abe:                                           ; preds = %bb.abd
  %i.boe = call i32 @unlink(ptr noundef nonnull %i.bnp) #13 ; 0 uses
  br label %bb.abf

bb.abf:                                           ; preds = %bb.abe, %bb.abd
  call void @free(ptr noundef nonnull %i.bnp) #13
  br label %.critedge3020

bb.abg:                                           ; preds = %bb.aav
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.244) #13
  %i.bof = call i32 @close(i32 noundef %i.bnq) #13 ; 0 uses
  %i.bog = call i32 @unlink(ptr noundef nonnull %i.bnp) #13 ; 0 uses
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bna, i32 noundef 0)
  br label %.critedge200.sink.split

.critedge200.sink.split:                          ; preds = %bb.abg, %bb.aar
  %.sink3911 = phi ptr [ %i.bna, %bb.aar ], [ %i.bnp, %bb.abg ]
  call void @free(ptr noundef %.sink3911) #13
  br label %.critedge200

.critedge200:                                     ; preds = %.critedge200.sink.split, %bb.aaf, %bb.aae, %._crit_edge3475, %.thread3842
  %i.boh = load ptr, ptr %i.uq, align 8, !tbaa !33
  %i.boi = load i32, ptr %i.boh, align 4, !tbaa !34
  %i.boj = and i32 %i.boi, 4096
  %.not2924 = icmp eq i32 %i.boj, 0
  br i1 %.not2924, label %bb.acx, label %bb.abh

bb.abh:                                           ; preds = %.critedge200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #13
  %i.bok = load i8, ptr %i.f, align 16, !tbaa !32
  %i.bol = icmp eq i8 %i.bok, -23
  br i1 %i.bol, label %bb.abi, label %bb.abl

bb.abi:                                           ; preds = %bb.abh
  %i.bom = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.val3071 = load i32, ptr %i.bom, align 1
  %i.bon = add i32 %i.cj, 5
  %i.boo = add i32 %i.bon, %.val3071              ; 2 uses
  %i.bop = call fastcc i32 @cli_rawaddr(i32 noundef %i.boo, ptr noundef %i.em, i16 noundef zeroext %i.aj, ptr noundef %i.g, i64 noundef %i.ej, i32 noundef %i.fl) ; 3 uses
  %i.boq = icmp eq i32 %i.bop, 0
  %i.bor = load i32, ptr %i.g, align 4
  %i.bos = icmp ne i32 %i.bor, 0
  %or.cond202 = select i1 %i.boq, i1 %i.bos, i1 false
  br i1 %or.cond202, label %.thread3311, label %bb.abj

bb.abj:                                           ; preds = %bb.abi
  %i.bot = zext i32 %i.bop to i64
  %i.bou = call i64 @lseek(i32 noundef %0, i64 noundef %i.bot, i32 noundef 0) #13
  %i.bov = icmp eq i64 %i.bou, -1
  br i1 %i.bov, label %.thread3311, label %bb.abk

bb.abk:                                           ; preds = %bb.abj
  %i.bow = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.k, i32 noundef 24) #13
  %.not2925 = icmp eq i32 %i.bow, 24
  br i1 %.not2925, label %bb.abl, label %.thread3311

bb.abl:                                           ; preds = %bb.abk, %bb.abh
  %.02279 = phi i32 [ %i.cj, %bb.abh ], [ %i.boo, %bb.abk ] ; 2 uses
  %.02274 = phi i32 [ %i.ky, %bb.abh ], [ %i.bop, %bb.abk ] ; 2 uses
  %.02271.sroa.phi = phi ptr [ %.02271.sroa.gep, %bb.abh ], [ %.02271.sroa.gep3126, %bb.abk ]
  %.02271 = phi ptr [ %i.f, %bb.abh ], [ %i.k, %bb.abk ] ; 2 uses
  %i.box = load i64, ptr %.02271, align 1
  %i.boy = xor i64 %i.box, 6701356245542527132
  %i.boz = getelementptr i8, ptr %.02271, i64 5
  %i.bpa = load i64, ptr %i.boz, align 1
  %i.bpb = xor i64 %i.bpa, 33157873664
  %i.bpc = or i64 %i.boy, %i.bpb
  %i.bpd = icmp ne i64 %i.bpc, 0
  %i.bpe = zext i1 %i.bpd to i32
  %.not2927 = icmp eq i32 %i.bpe, 0
  br i1 %.not2927, label %bb.abm, label %.thread3311

bb.abm:                                           ; preds = %bb.abl
  %.val3070 = load i32, ptr %.02271.sroa.phi, align 1
  %i.bpf = sub nsw i32 84, %.val3070              ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.246, i32 noundef %i.bpf) #13
  %i.bpg = sub i32 %.02274, %i.bpf
  %i.bph = zext i32 %i.bpg to i64
  %i.bpi = call i64 @lseek(i32 noundef %0, i64 noundef %i.bph, i32 noundef 0) #13
  %i.bpj = icmp eq i64 %i.bpi, -1
  br i1 %i.bpj, label %.thread3311, label %bb.abn

bb.abn:                                           ; preds = %bb.abm
  %i.bpk = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.k, i32 noundef 4) #13
  %.not2928 = icmp eq i32 %i.bpk, 4
  br i1 %.not2928, label %bb.abo, label %.thread3311

bb.abo:                                           ; preds = %bb.abn
  %.val3069 = load i32, ptr %i.k, align 16
  %i.bpl = add i32 %.val3069, %.02274             ; 3 uses
  %i.bpm = zext i32 %i.bpl to i64
  %i.bpn = call i64 @lseek(i32 noundef %0, i64 noundef %i.bpm, i32 noundef 0) #13
  %i.bpo = icmp eq i64 %i.bpn, -1
  br i1 %i.bpo, label %.thread3311, label %bb.abp

bb.abp:                                           ; preds = %bb.abo
  %i.bpp = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.k, i32 noundef 20) #13
  %.not2929 = icmp eq i32 %i.bpp, 20
  br i1 %.not2929, label %bb.abq, label %.thread3311

bb.abq:                                           ; preds = %bb.abp
  %.val3068 = load i32, ptr %i.k, align 16
  %.not2930 = icmp eq i32 %.val3068, 0            ; 3 uses
  %i.bpq = add i32 %i.bpl, 4
  %.02278 = select i1 %.not2930, i32 %i.bpq, i32 %i.bpl
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  %.sroa.gep3596 = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 1 ; 2 uses
  %.sroa.gep3596.val = load i32, ptr %.sroa.gep3596, align 1
  %.val3067 = select i1 %.not2930, i32 %.sroa.gep.val, i32 %.sroa.gep3596.val
  %i.bpr = or i32 %.val3067, 255                  ; 3 uses
  %.sroa.gep3597 = getelementptr inbounds nuw i8, ptr %i.k, i64 13
  %.sroa.gep3597.val = load i32, ptr %.sroa.gep3597, align 1
  %.val3066 = select i1 %.not2930, i32 %.sroa.gep3597.val, i32 %.sroa.gep.val ; 4 uses
  %i.bps = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bpt = load ptr, ptr %i.bps, align 8, !tbaa !74 ; 2 uses
  %.not2931 = icmp eq ptr %i.bpt, null
  br i1 %.not2931, label %bb.abv, label %bb.abr

bb.abr:                                           ; preds = %bb.abq
  %i.bpu = getelementptr inbounds nuw i8, ptr %i.bpt, i64 24
  %i.bpv = load i64, ptr %i.bpu, align 8, !tbaa !75 ; 3 uses
end_hunk_1
begin_hunk_2_@cli_scanpe:bb.a
bb.acq:                                           ; preds = %bb.acp
  %i.brm = call i32 @unlink(ptr noundef nonnull %i.bqy) #13 ; 0 uses
  br label %bb.acr

bb.acr:                                           ; preds = %bb.acq, %bb.acp
  call void @free(ptr noundef nonnull %i.bqy) #13
  br label %bb.acw

bb.acs:                                           ; preds = %bb.aco
  br i1 %.not2941, label %bb.act, label %bb.acu

bb.act:                                           ; preds = %bb.acs
  %i.brn = call i32 @unlink(ptr noundef nonnull %i.bqy) #13 ; 0 uses
  br label %bb.acu

bb.acu:                                           ; preds = %bb.act, %bb.acs
  call void @free(ptr noundef nonnull %i.bqy) #13
  br label %bb.acw

bb.acv:                                           ; preds = %bb.ack
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.253) #13
  %i.bro = call i32 @close(i32 noundef %i.bqz) #13 ; 0 uses
  %i.brp = call i32 @unlink(ptr noundef nonnull %i.bqy) #13 ; 0 uses
  call void (ptr, ...) @cli_multifree(ptr noundef nonnull %i.bqk, ptr noundef nonnull %i.bqi, i32 noundef 0)
  br label %.thread3311.sink.split

.thread3311.sink.split:                           ; preds = %bb.abz, %bb.acv, %bb.acf, %bb.acd, %bb.acb
  %.sink3912 = phi ptr [ %i.bqk, %bb.acb ], [ %i.bqk, %bb.acd ], [ %i.bqk, %bb.acf ], [ %i.bqy, %bb.acv ], [ %i.bqi, %bb.abz ]
  call void @free(ptr noundef nonnull %.sink3912) #13
  br label %.thread3311

.thread3311:                                      ; preds = %.thread3311.sink.split, %bb.abx, %bb.abi, %bb.abj, %bb.abk, %bb.abl, %bb.abm, %bb.abn, %bb.abo, %bb.abp, %bb.abv, %bb.abw, %bb.aby
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #13
  br label %bb.acx

bb.acw:                                           ; preds = %bb.abt, %bb.acu, %bb.acr, %bb.acj, %bb.ach, %bb.abu
  %.35 = phi i32 [ 1, %bb.acr ], [ 0, %bb.acu ], [ 1, %bb.abu ], [ -114, %bb.ach ], [ 0, %bb.abt ], [ -123, %bb.acj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #13
  br label %.critedge3020

bb.acx:                                           ; preds = %.thread3311, %.critedge200
  call void @free(ptr noundef %i.em) #13
  br label %.critedge3020

.critedge3020:                                    ; preds = %bb.zz, %bb.zs, %bb.zq, %bb.yx, %bb.zl, %bb.zi, %bb.zg, %bb.zc, %bb.za, %bb.zo, %bb.yy, %bb.yb, %bb.yo, %bb.yl, %bb.yd, %bb.xz, %bb.xx, %bb.xq, %bb.xo, %bb.xl, %bb.wu, %bb.xd, %bb.wz, %bb.wx, %bb.xb, %bb.wv, %bb.tb, %bb.sy, %bb.rp, %bb.sq, %bb.sm, %bb.sk, %bb.sh, %bb.sd, %bb.ru, %bb.rs, %bb.rj, %bb.rq, %bb.rm, %bb.so, %bb.rk, %bb.qt, %bb.qq, %bb.ph, %bb.qi, %bb.qe, %bb.qc, %bb.pz, %bb.px, %bb.pm, %bb.pk, %bb.pa, %bb.pi, %bb.pd, %bb.qg, %bb.pb, %bb.of, %bb.os, %bb.op, %bb.nb, %bb.oh, %bb.od, %bb.nn, %bb.nk, %bb.ne, %bb.nc, %bb.lr, %bb.mv, %bb.ms, %bb.mk, %bb.mg, %bb.mc, %bb.ma, %bb.mi, %bb.ls, %bb.jx, %bb.jz, %bb.kl, %bb.ky, %bb.kv, %bb.kn, %bb.kd, %bb.ju, %bb.jy, %bb.jq, %bb.jv, %bb.jj, %bb.acw, %bb.ic, %bb.ie, %bb.in, %bb.ja, %bb.hp, %.critedge3018, %.critedge3014, %bb.aai, %bb.vr, %bb.ti, %.critedge3006, %bb.fu, %bb.fv, %bb.fw, %.critedge3003, %bb.et, %bb.eu, %bb.ev, %bb.dk, %bb.dl, %bb.dm, %bb.dc, %bb.dd, %bb.cx, %bb.cy, %bb.cd, %bb.ce, %bb.cf, %bb.bw, %bb.bx, %bb.br, %bb.bs, %bb.bt, %bb.bm, %bb.bn, %bb.bo, %bb.bi, %bb.bj, %bb.bk, %bb.bf, %bb.bg, %bb.bc, %bb.bd, %bb.h, %bb.i, %bb.j, %bb.acx, %bb.abf, %bb.abc, %bb.aau, %bb.aas, %bb.aal, %bb.aaj, %bb.wn, %bb.wk, %bb.wc, %bb.wa, %bb.vy, %bb.vu, %bb.vs, %bb.vh, %bb.vg, %bb.vd, %bb.ux, %bb.uv, %bb.ut, %bb.tt, %bb.tq, %bb.to, %bb.tm, %bb.tj, %bb.la, %bb.fy, %bb.fr, %bb.fl, %bb.eq, %bb.di, %bb.dg, %bb.de, %bb.r, %bb.p, %bb.n, %bb.l, %bb.f, %bb.d, %bb.b
  %.36 = phi i32 [ 0, %bb.d ], [ 0, %bb.f ], [ -111, %bb.b ], [ 1, %bb.i ], [ 0, %bb.n ], [ 0, %bb.p ], [ 0, %bb.r ], [ 0, %bb.h ], [ 1, %bb.bc ], [ 0, %bb.bf ], [ 1, %bb.bj ], [ 0, %bb.bi ], [ 1, %bb.bn ], [ 0, %bb.bm ], [ 1, %bb.bs ], [ 1, %bb.bw ], [ 1, %bb.ce ], [ -123, %bb.de ], [ 1, %bb.dc ], [ 1, %bb.dl ], [ 1, %bb.eq ], [ 0, %bb.dk ], [ 1, %bb.eu ], [ 1, %bb.fr ], [ 1, %bb.fl ], [ 1, %.critedge3003 ], [ 0, %bb.et ], [ 1, %bb.fv ], [ 0, %bb.fy ], [ 0, %bb.la ], [ 1, %bb.tj ], [ 0, %bb.fu ], [ 0, %bb.tm ], [ -114, %bb.to ], [ -114, %bb.tq ], [ -123, %bb.tt ], [ -123, %bb.uv ], [ -123, %bb.ux ], [ 1, %bb.vd ], [ %i.bao, %bb.vg ], [ -114, %bb.ut ], [ 0, %bb.vh ], [ 0, %bb.acx ], [ %.35, %bb.acw ], [ 1, %bb.aaj ], [ 0, %bb.vr ], [ -123, %bb.aau ], [ 1, %bb.abc ], [ 0, %bb.abf ], [ -114, %bb.aas ], [ -114, %bb.aal ], [ -114, %bb.xx ], [ 1, %bb.wv ], [ 1, %bb.rk ], [ 1, %bb.vs ], [ 0, %bb.ti ], [ -114, %bb.vu ], [ -123, %bb.vy ], [ -123, %bb.wc ], [ 1, %bb.wk ], [ 0, %bb.wn ], [ -114, %bb.wa ], [ 1, %bb.pb ], [ 1, %bb.nc ], [ 1, %bb.ls ], [ -123, %bb.jj ], [ -114, %bb.in ], [ 1, %.critedge3018 ], [ 0, %bb.aai ], [ 1, %bb.hp ], [ 1, %.critedge3006 ], [ -114, %bb.di ], [ -114, %bb.dg ], [ 1, %bb.cx ], [ 0, %bb.cd ], [ 0, %bb.br ], [ 0, %bb.l ], [ 1, %bb.j ], [ 1, %bb.bd ], [ 0, %bb.bg ], [ 1, %bb.bk ], [ 1, %bb.bo ], [ 1, %bb.bt ], [ 1, %bb.bx ], [ 1, %bb.cf ], [ 1, %bb.cy ], [ 1, %bb.dd ], [ 1, %bb.dm ], [ 1, %bb.ev ], [ 1, %bb.fw ], [ 1, %.critedge3014 ], [ -114, %bb.ic ], [ -123, %bb.ie ], [ 1, %bb.ja ], [ 0, %bb.jx ], [ -114, %bb.jz ], [ -114, %bb.kl ], [ 0, %bb.ky ], [ 1, %bb.kv ], [ -123, %bb.kn ], [ -123, %bb.kd ], [ 0, %bb.ju ], [ 1, %bb.jy ], [ -123, %bb.jq ], [ 1, %bb.jv ], [ 0, %bb.lr ], [ 0, %bb.mv ], [ 1, %bb.ms ], [ -123, %bb.mk ], [ -123, %bb.mg ], [ -123, %bb.mc ], [ -114, %bb.ma ], [ -114, %bb.mi ], [ -114, %bb.of ], [ 0, %bb.os ], [ 1, %bb.op ], [ 0, %bb.nb ], [ -123, %bb.oh ], [ -114, %bb.od ], [ -123, %bb.nn ], [ -114, %bb.nk ], [ 0, %bb.ne ], [ 0, %bb.qt ], [ 1, %bb.qq ], [ 0, %bb.ph ], [ -123, %bb.qi ], [ -114, %bb.qe ], [ -123, %bb.qc ], [ -114, %bb.pz ], [ -114, %bb.px ], [ -123, %bb.pm ], [ -114, %bb.pk ], [ 0, %bb.pa ], [ 1, %bb.pi ], [ 0, %bb.pd ], [ -114, %bb.qg ], [ 0, %bb.tb ], [ 1, %bb.sy ], [ 0, %bb.rp ], [ -123, %bb.sq ], [ -114, %bb.sm ], [ -123, %bb.sk ], [ -114, %bb.sh ], [ -114, %bb.sd ], [ -123, %bb.ru ], [ -114, %bb.rs ], [ 0, %bb.rj ], [ 1, %bb.rq ], [ 0, %bb.rm ], [ -114, %bb.so ], [ 1, %bb.xq ], [ 0, %bb.xo ], [ 1, %bb.xl ], [ 0, %bb.wu ], [ -123, %bb.xd ], [ -123, %bb.wz ], [ -114, %bb.wx ], [ -114, %bb.xb ], [ -114, %bb.yb ], [ 0, %bb.yo ], [ 1, %bb.yl ], [ -123, %bb.yd ], [ -123, %bb.xz ], [ 1, %bb.zz ], [ -123, %bb.zs ], [ -123, %bb.zq ], [ 0, %bb.yx ], [ -123, %bb.zl ], [ -114, %bb.zi ], [ -123, %bb.zg ], [ -123, %bb.zc ], [ -114, %bb.za ], [ -114, %bb.zo ], [ 1, %bb.yy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.36
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #2

declare i32 @cli_readn(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @cli_warnmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @ctime(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #4

declare ptr @cli_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @cli_md5sect(i32 noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.cli_md5_ctx, align 4        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !50   ; 2 uses
  %i.c = icmp ugt i32 %i.b, 184549376
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.256) #13
  br label %cli_seeksect.exit.thread

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %cli_seeksect.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !49
  %i.f = zext i32 %i.e to i64
  %i.g = tail call i64 @lseek(i32 noundef %0, i64 noundef %i.f, i32 noundef 0) #13
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %cli_seeksect.exit.thread17, label %bb.e

cli_seeksect.exit.thread17:                       ; preds = %bb.d
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.259) #13
  br label %cli_seeksect.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr %i.a, align 4, !tbaa !50
  %i.j = zext i32 %i.i to i64
  %i.k = tail call ptr @cli_malloc(i64 noundef %i.j) #13 ; 4 uses
  %.not13 = icmp eq ptr %i.k, null
  br i1 %.not13, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.257) #13
  br label %cli_seeksect.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.l = load i32, ptr %i.a, align 4, !tbaa !50
  %i.m = tail call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.k, i32 noundef %i.l) #13
  %i.n = load i32, ptr %i.a, align 4, !tbaa !50
  %.not14 = icmp eq i32 %i.m, %i.n
  br i1 %.not14, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.258) #13
  br label %cli_seeksect.exit.thread

bb.i:                                             ; preds = %bb.g
  call void @cli_md5_init(ptr noundef nonnull %3) #13
  %i.o = load i32, ptr %i.a, align 4, !tbaa !50
  %i.p = zext i32 %i.o to i64
  call void @cli_md5_update(ptr noundef nonnull %3, ptr noundef nonnull %i.k, i64 noundef %i.p) #13
  call void @free(ptr noundef nonnull %i.k) #13
  call void @cli_md5_final(ptr noundef nonnull %2, ptr noundef nonnull %3) #13
  br label %cli_seeksect.exit.thread

cli_seeksect.exit.thread:                         ; preds = %bb.c, %cli_seeksect.exit.thread17, %bb.i, %bb.h, %bb.f, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.h ], [ 1, %bb.i ], [ 0, %bb.f ], [ 0, %cli_seeksect.exit.thread17 ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i32 %.0
}

declare i32 @cli_bm_scanbuff(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @cli_rawaddr(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i16 noundef zeroext %2, ptr nofree noundef nonnull writeonly captures(none) %3, i64 noundef %4, i32 noundef %5) unnamed_addr #7 {
bb.a:
  %i.a = icmp ult i32 %0, %5
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %0 to i64
  %.not36 = icmp ule i64 %4, %i.b                 ; 2 uses
  %. = zext i1 %.not36 to i32
  %.47 = select i1 %.not36, i32 0, i32 %0
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i16 %2, 0
  br i1 %i.c, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.d = zext i16 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ %i.d, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.e = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %indvars.iv.next ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !50   ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.h = load i32, ptr %i.e, align 4, !tbaa !45   ; 2 uses
  %.not34 = icmp ule i32 %i.h, %0
  %i.i = sub nuw i32 %0, %i.h
  %i.j = icmp ugt i32 %i.g, %i.i
  %or.cond = select i1 %.not34, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.k = icmp samesign ult i64 %indvars.iv, 2
  br i1 %i.k, label %.critedge, label %.lr.ph, !llvm.loop !99

bb.f:                                             ; preds = %bb.d
  %i.l = and i64 %indvars.iv.next, 4294967295
  %i.m = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %i.l ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !45
  %i.o = sub i32 %0, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !49
  %i.r = add i32 %i.o, %i.q
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.c, %bb.b, %bb.f
  %.sink = phi i32 [ 0, %bb.f ], [ %., %bb.b ], [ 1, %bb.c ], [ 1, %bb.e ]
  %.0 = phi i32 [ %i.r, %bb.f ], [ %.47, %bb.b ], [ 0, %bb.c ], [ 0, %bb.e ]
  store i32 %.sink, ptr %3, align 4, !tbaa !4
  ret i32 %.0
}

declare ptr @cli_memstr(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -9223372036854775807, -9223372036854775808) i64 @cli_seeksect(i32 noundef %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !50
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !49
  %i.e = zext i32 %i.d to i64
  %i.f = tail call i64 @lseek(i32 noundef %0, i64 noundef %i.e, i32 noundef 0) #13 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.259) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = add nsw i64 %i.f, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i64 [ %i.h, %bb.d ], [ 0, %bb.a ]
  ret i64 %.0
}

declare ptr @cli_malloc(i64 noundef) local_unnamed_addr #2

declare ptr @cli_realloc2(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

declare ptr @cli_gentemp(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @cli_multifree(ptr noundef captures(none) %0, ...) unnamed_addr #0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  tail call void @free(ptr noundef %0) #13
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.c = load i32, ptr %1, align 16               ; 3 uses
  %i.d = icmp ult i32 %i.c, 41
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 16
  %i.f = zext nneg i32 %i.c to i64
  %i.g = getelementptr i8, ptr %i.e, i64 %i.f
  %i.h = add nuw nsw i32 %i.c, 8
  store i32 %i.h, ptr %1, align 16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  store ptr %i.j, ptr %i.a, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi ptr [ %i.g, %bb.c ], [ %i.i, %bb.d ]
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !100  ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.l) #13
  br label %bb.b, !llvm.loop !101

bb.g:                                             ; preds = %bb.e
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret void
}

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #8

declare i32 @unmew11(i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @fsync(i32 noundef) local_unnamed_addr #2

declare i32 @cli_magic_scandesc(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare i32 @unupack(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @unfsg_200(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @unfsg_133(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @upx_inflate2b(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @upx_inflate2d(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @upx_inflate2e(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #8

declare i32 @petite_inflate2x_1to9(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @unspin(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @yc_decrypt(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wwunpack(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

declare i32 @unaspack212(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @unspack(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @cli_peheader(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.pe_image_file_hdr, align 4  ; 6 uses
  %3 = alloca %union.anon.0, align 8              ; 9 uses
  %4 = alloca %struct.stat, align 8               ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.254) #13
  %i.d = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %4) #13
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.84) #13
  br label %bb.bd

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !102
  %i.j = sub nsw i64 %i.g, %i.i                   ; 3 uses
  %i.k = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i32 noundef 2) #13
  %.not = icmp eq i32 %i.k, 2
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1) #13
  br label %bb.bd

bb.e:                                             ; preds = %bb.c
  %i.l = load i16, ptr %i.a, align 2, !tbaa !8
  switch i16 %i.l, label %bb.f [
    i16 23117, label %bb.g
    i16 19802, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2) #13
  br label %bb.bd

bb.g:                                             ; preds = %bb.e, %bb.e
  %i.m = call i64 @lseek(i32 noundef %0, i64 noundef 58, i32 noundef 1) #13 ; 0 uses
  %i.n = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.b, i32 noundef 4) #13
  %.not167 = icmp eq i32 %i.n, 4
  br i1 %.not167, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3) #13
  br label %bb.bd

bb.i:                                             ; preds = %bb.g
  %i.o = load i32, ptr %i.b, align 4, !tbaa !4    ; 2 uses
  %.not168 = icmp eq i32 %i.o, 0
  br i1 %.not168, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6) #13
  br label %bb.bd

bb.k:                                             ; preds = %bb.i
  %i.p = load i64, ptr %i.h, align 8, !tbaa !102
  %i.q = zext i32 %i.o to i64
  %i.r = add nsw i64 %i.p, %i.q
  %i.s = call i64 @lseek(i32 noundef %0, i64 noundef %i.r, i32 noundef 0) #13
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.7) #13
  br label %bb.bd

bb.m:                                             ; preds = %bb.k
  %i.u = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %2, i32 noundef 24) #13
  %.not169 = icmp eq i32 %i.u, 24
  br i1 %.not169, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8) #13
  br label %bb.bd

bb.o:                                             ; preds = %bb.m
  %i.v = load i32, ptr %2, align 4, !tbaa !23
  %.not170 = icmp eq i32 %i.v, 17744
  br i1 %.not170, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9) #13
  br label %bb.bd

bb.q:                                             ; preds = %bb.o
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.x = load i16, ptr %i.w, align 2, !tbaa !27   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  store i16 %i.x, ptr %i.y, align 4, !tbaa !105
  %i.z = add i16 %i.x, -97
  %or.cond = icmp ult i16 %i.z, -96
  br i1 %or.cond, label %bb.bd, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 4, !tbaa !31
  %i.ac = icmp ult i16 %i.ab, 224
  br i1 %i.ac, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.48) #13
  br label %bb.bd

bb.t:                                             ; preds = %bb.r
  %i.ad = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %3, i32 noundef 224) #13
  %.not171 = icmp eq i32 %i.ad, 224
  br i1 %.not171, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.49) #13
  br label %bb.bd

bb.v:                                             ; preds = %bb.t
  %i.ae = load i16, ptr %3, align 8, !tbaa !32
  %.not176 = icmp eq i16 %i.ae, 523
  %i.af = load i16, ptr %i.aa, align 4, !tbaa !31 ; 3 uses
  br i1 %.not176, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %.not173 = icmp eq i16 %i.af, 240
  br i1 %.not173, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.50) #13
  br label %bb.bd

bb.y:                                             ; preds = %bb.w
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.ah = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.ag, i32 noundef 16) #13
  %.not174 = icmp eq i32 %i.ah, 16
  br i1 %.not174, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.49) #13
  br label %bb.bd

bb.aa:                                            ; preds = %bb.v
  %.not172 = icmp eq i16 %i.af, 224
  br i1 %.not172, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ai = zext i16 %i.af to i64
  %i.aj = add nsw i64 %i.ai, -224
  %i.ak = call i64 @lseek(i32 noundef %0, i64 noundef %i.aj, i32 noundef 1) #13 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.y
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.am = load i32, ptr %i.al, align 4, !tbaa !32 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ao = load i32, ptr %i.an, align 8            ; 11 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.aq = load i32, ptr %i.ap, align 4            ; 3 uses
  %.not177 = icmp eq i32 %i.ao, 0                 ; 3 uses
  br i1 %.not177, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ar = udiv i32 %i.am, %i.ao
  %i.as = urem i32 %i.am, %i.ao
  %i.at = icmp ne i32 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = add i32 %i.ar, %i.au
  %i.aw = mul i32 %i.av, %i.ao
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.ax = phi i32 [ %i.aw, %bb.ad ], [ %i.am, %bb.ac ]
  %i.ay = load i16, ptr %i.y, align 4, !tbaa !105
  %i.az = zext i16 %i.ay to i64
  %i.ba = call ptr @cli_calloc(i64 noundef %i.az, i64 noundef 36) #13 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !106
  %.not178 = icmp eq ptr %i.ba, null
  br i1 %.not178, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.85) #13
  br label %bb.bd

bb.ag:                                            ; preds = %bb.ae
  %i.bc = load i16, ptr %i.y, align 4, !tbaa !105
  %i.bd = zext i16 %i.bc to i64
  %i.be = call ptr @cli_calloc(i64 noundef %i.bd, i64 noundef 40) #13 ; 8 uses
  %.not179 = icmp eq ptr %i.be, null
  br i1 %.not179, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.85) #13
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !106
  call void @free(ptr noundef %i.bf) #13
  store ptr null, ptr %i.bb, align 8, !tbaa !106
  br label %bb.bd

bb.ai:                                            ; preds = %bb.ag
  %i.bg = load i16, ptr %i.y, align 4, !tbaa !105
  %i.bh = zext i16 %i.bg to i32
  %i.bi = mul nuw nsw i32 %i.bh, 40
  %i.bj = call i32 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.be, i32 noundef %i.bi) #13
  %i.bk = sext i32 %i.bj to i64
  %i.bl = load i16, ptr %i.y, align 4, !tbaa !105 ; 6 uses
  %i.bm = zext i16 %i.bl to i64
  %i.bn = mul nuw nsw i64 %i.bm, 40
  %.not180 = icmp eq i64 %i.bn, %i.bk
  br i1 %.not180, label %.preheader, label %bb.aj

.preheader:                                       ; preds = %bb.ai
  %.not181205 = icmp ne i32 %i.aq, 512
  %i.bo = icmp ne i16 %i.bl, 0
  %or.cond204206 = and i1 %.not181205, %i.bo
  br i1 %or.cond204206, label %.lr.ph.preheader, label %.critedge.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.bp = zext i16 %i.bl to i64
  br label %.lr.ph

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.86) #13
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.87) #13
  call void @free(ptr noundef nonnull %i.be) #13
  %i.bq = load ptr, ptr %i.bb, align 8, !tbaa !106
  call void @free(ptr noundef %i.bq) #13
  store ptr null, ptr %i.bb, align 8, !tbaa !106
  br label %bb.bd

.critedge.preheader:                              ; preds = %bb.am, %.preheader
  %.0154.lcssa = phi i32 [ %i.aq, %.preheader ], [ %.1, %bb.am ] ; 5 uses
  %.not211 = icmp eq i16 %i.bl, 0
  br i1 %.not211, label %.critedge.preheader..critedge._crit_edge_crit_edge, label %.lr.ph210

.critedge.preheader..critedge._crit_edge_crit_edge: ; preds = %.critedge.preheader
  %.pre = load ptr, ptr %i.bb, align 8, !tbaa !106
  br label %.critedge._crit_edge

.lr.ph210:                                        ; preds = %.critedge.preheader
  %.not182 = icmp eq i32 %.0154.lcssa, 0
  %i.br = trunc i64 %i.j to i32                   ; 2 uses
  %wide.trip.count = zext i16 %i.bl to i64
  br label %bb.an

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.am
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.am ] ; 2 uses
  %.0154208 = phi i32 [ %i.aq, %.lr.ph.preheader ], [ %.1, %bb.am ] ; 4 uses
  %.not191 = icmp eq i32 %.0154208, 0
  br i1 %.not191, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw [40 x i8], ptr %i.be, i64 %indvars.iv ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !39
  %.not192 = icmp eq i32 %i.bu, 0
  br i1 %.not192, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 20
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !41 ; 2 uses
  %i.bx = urem i32 %i.bw, %.0154208
  %.not193 = icmp ne i32 %i.bx, 0
  %i.by = and i32 %i.bw, 511
  %.not194 = icmp eq i32 %i.by, 0
  %or.cond195 = and i1 %.not193, %.not194
  %spec.select = select i1 %or.cond195, i32 512, i32 %.0154208
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph, %bb.ak
  %.1 = phi i32 [ 0, %.lr.ph ], [ %.0154208, %bb.ak ], [ %spec.select, %bb.al ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not181 = icmp ne i32 %.1, 512
  %i.bz = icmp samesign ult i64 %indvars.iv.next, %i.bp
  %or.cond204 = select i1 %.not181, i1 %i.bz, i1 false
  br i1 %or.cond204, label %.lr.ph, label %.critedge.preheader, !llvm.loop !107

bb.an:                                            ; preds = %.lr.ph210, %.thread199
  %indvars.iv213 = phi i64 [ 0, %.lr.ph210 ], [ %indvars.iv.next214, %.thread199 ] ; 5 uses
  %i.ca = getelementptr inbounds nuw [40 x i8], ptr %i.be, i64 %indvars.iv213 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !44
  %.fr = freeze i32 %i.cc                         ; 3 uses
  br i1 %.not177, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cd = urem i32 %.fr, %i.ao
  %i.ce = sub nuw i32 %.fr, %i.cd
  %i.cf = load ptr, ptr %i.bb, align 8, !tbaa !106 ; 2 uses
  %i.cg = getelementptr inbounds nuw [36 x i8], ptr %i.cf, i64 %indvars.iv213 ; 2 uses
  store i32 %i.ce, ptr %i.cg, align 4, !tbaa !45
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !47 ; 2 uses
  %i.cj = udiv i32 %i.ci, %i.ao
  %i.ck = urem i32 %i.ci, %i.ao
  %i.cl = icmp ne i32 %i.ck, 0
  %i.cm = zext i1 %i.cl to i32
  %i.cn = add i32 %i.cj, %i.cm
  %i.co = mul i32 %i.cn, %i.ao
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.cp = load ptr, ptr %i.bb, align 8, !tbaa !106 ; 2 uses
  %i.cq = getelementptr inbounds nuw [36 x i8], ptr %i.cp, i64 %indvars.iv213 ; 2 uses
  store i32 %.fr, ptr %i.cq, align 4, !tbaa !45
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !47
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ct = phi ptr [ %i.cf, %bb.ao ], [ %i.cp, %bb.ap ]
  %i.cu = phi ptr [ %i.cg, %bb.ao ], [ %i.cq, %bb.ap ] ; 3 uses
  %i.cv = phi i32 [ %i.co, %bb.ao ], [ %i.cs, %bb.ap ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 4 ; 2 uses
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !48
  %i.cx = getelementptr inbounds nuw [40 x i8], ptr %i.be, i64 %indvars.iv213 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 20
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !41
  %.fr183 = freeze i32 %i.cz                      ; 3 uses
  br i1 %.not182, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.da = urem i32 %.fr183, %.0154.lcssa
  %i.db = sub nuw i32 %.fr183, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !39 ; 3 uses
  %i.de = udiv i32 %i.dd, %.0154.lcssa
  %i.df = urem i32 %i.dd, %.0154.lcssa
  %i.dg = icmp ne i32 %i.df, 0
  %i.dh = zext i1 %i.dg to i32
  %i.di = add i32 %i.de, %i.dh
  %i.dj = mul i32 %i.di, %.0154.lcssa
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !39 ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.dm = phi i32 [ %i.dl, %bb.as ], [ %i.dd, %bb.ar ] ; 3 uses
  %.sink = phi i32 [ %.fr183, %bb.as ], [ %i.db, %bb.ar ] ; 3 uses
  %i.dn = phi i32 [ %i.dl, %bb.as ], [ %i.dj, %bb.ar ] ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i32 %.sink, ptr %i.do, align 4, !tbaa !49
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cu, i64 12 ; 2 uses
  store i32 %i.dn, ptr %i.dp, align 4, !tbaa !50
  %.not184 = icmp eq i32 %i.cv, 0
  %.not185 = icmp eq i32 %i.dn, 0                 ; 2 uses
  br i1 %.not184, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  br i1 %.not185, label %.thread199, label %bb.av

bb.av:                                            ; preds = %bb.au
  br i1 %.not177, label %.thread201, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dq = udiv i32 %i.dm, %i.ao
  %i.dr = urem i32 %i.dm, %i.ao
  %i.ds = icmp ne i32 %i.dr, 0
  %i.dt = zext i1 %i.ds to i32
  %i.du = add i32 %i.dq, %i.dt
  %i.dv = mul i32 %i.du, %i.ao
  br label %.thread201

.thread201:                                       ; preds = %bb.av, %bb.aw
  %i.dw = phi i32 [ %i.dv, %bb.aw ], [ %i.dm, %bb.av ]
  store i32 %i.dw, ptr %i.cw, align 4, !tbaa !48
  br label %bb.ay

bb.ax:                                            ; preds = %bb.at
  br i1 %.not185, label %.thread199, label %bb.ay

bb.ay:                                            ; preds = %.thread201, %bb.ax
  %.not188 = icmp ugt i32 %i.dn, %i.br
  br i1 %.not188, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dx = add i32 %.sink, -1
  %i.dy = add i32 %i.dx, %i.dn
  %or.cond197.not = icmp ult i32 %i.dy, %i.br
  br i1 %or.cond197.not, label %.thread199, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.dz = zext i32 %.sink to i64
  %i.ea = call i64 @llvm.usub.sat.i64(i64 %i.j, i64 %i.dz)
  %i.eb = trunc i64 %i.ea to i32
  store i32 %i.eb, ptr %i.dp, align 4, !tbaa !50
  br label %.thread199

.thread199:                                       ; preds = %bb.au, %bb.az, %bb.ax, %bb.ba
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next214, %wide.trip.count
  br i1 %exitcond.not, label %.critedge._crit_edge, label %bb.an, !llvm.loop !108

.critedge._crit_edge:                             ; preds = %.thread199, %.critedge.preheader..critedge._crit_edge_crit_edge
  %i.ec = phi ptr [ %.pre, %.critedge.preheader..critedge._crit_edge_crit_edge ], [ %i.ct, %.thread199 ]
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ee = load i32, ptr %i.ed, align 8            ; 2 uses
  store i32 %i.ee, ptr %1, align 8, !tbaa !109
  %i.ef = call fastcc i32 @cli_rawaddr(i32 noundef %i.ee, ptr noundef %i.ec, i16 noundef zeroext %i.bl, ptr noundef %i.c, i64 noundef %i.j, i32 noundef %i.ax) ; 2 uses
  store i32 %i.ef, ptr %1, align 8, !tbaa !109
  %i.eg = icmp eq i32 %i.ef, 0
  %i.eh = load i32, ptr %i.c, align 4
  %i.ei = icmp ne i32 %i.eh, 0
  %or.cond4 = select i1 %i.eg, i1 %i.ei, i1 false
  br i1 %or.cond4, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.critedge._crit_edge
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.255) #13
  call void @free(ptr noundef %i.be) #13
  %i.ej = load ptr, ptr %i.bb, align 8, !tbaa !106
  call void @free(ptr noundef %i.ej) #13
  store ptr null, ptr %i.bb, align 8, !tbaa !106
  br label %bb.bd

bb.bc:                                            ; preds = %.critedge._crit_edge
  call void @free(ptr noundef %i.be) #13
  br label %bb.bd

bb.bd:                                            ; preds = %bb.q, %bb.bc, %bb.bb, %bb.aj, %bb.ah, %bb.af, %bb.z, %bb.x, %bb.u, %bb.s, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.h ], [ -1, %bb.l ], [ -1, %bb.n ], [ -1, %bb.p ], [ -1, %bb.j ], [ -1, %bb.s ], [ -1, %bb.u ], [ -1, %bb.x ], [ -1, %bb.z ], [ -1, %bb.aj ], [ -1, %bb.bb ], [ 0, %bb.bc ], [ -1, %bb.ah ], [ -1, %bb.af ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.0
}

declare void @cli_md5_init(ptr noundef) local_unnamed_addr #2

declare void @cli_md5_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @cli_md5_final(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umin.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !6, i64 0}
!10 = !{!11, !5, i64 40}
!11 = !{!"", !12, i64 0, !15, i64 8, !16, i64 16, !17, i64 24, !18, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !19, i64 56}
!12 = !{!"p2 omnipotent char", !13, i64 0}
!13 = !{!"any p2 pointer", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"p1 long", !14, i64 0}
!16 = !{!"p1 _ZTS11cli_matcher", !14, i64 0}
!17 = !{!"p1 _ZTS9cl_engine", !14, i64 0}
!18 = !{!"p1 _ZTS9cl_limits", !14, i64 0}
!19 = !{!"p1 _ZTS9cli_dconf", !14, i64 0}
!20 = !{!11, !12, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 omnipotent char", !14, i64 0}
!23 = !{!24, !5, i64 0}
!24 = !{!"pe_image_file_hdr", !5, i64 0, !9, i64 4, !9, i64 6, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 20, !9, i64 22}
!25 = !{!24, !9, i64 22}
!26 = !{!24, !9, i64 4}
!27 = !{!24, !9, i64 6}
!28 = !{!24, !5, i64 8}
!29 = !{!30, !30, i64 0}
!30 = !{!"long", !6, i64 0}
!31 = !{!24, !9, i64 20}
!32 = !{!6, !6, i64 0}
!33 = !{!11, !19, i64 56}
!34 = !{!35, !5, i64 0}
!35 = !{!"cli_dconf", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24}
!36 = !{!37, !30, i64 48}
!37 = !{!"stat", !30, i64 0, !30, i64 8, !30, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !30, i64 40, !30, i64 48, !30, i64 56, !30, i64 64, !38, i64 72, !38, i64 88, !38, i64 104, !6, i64 120}
!38 = !{!"timespec", !30, i64 0, !30, i64 8}
!39 = !{!40, !5, i64 16}
!40 = !{!"pe_image_section_hdr", !6, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !9, i64 32, !9, i64 34, !5, i64 36}
!41 = !{!40, !5, i64 20}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!40, !5, i64 12}
!45 = !{!46, !5, i64 0}
!46 = !{!"cli_exe_section", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32}
!47 = !{!40, !5, i64 8}
!48 = !{!46, !5, i64 4}
!49 = !{!46, !5, i64 8}
!50 = !{!46, !5, i64 12}
!51 = !{!40, !5, i64 36}
!52 = !{!46, !5, i64 16}
!53 = !{!46, !5, i64 20}
!54 = !{!46, !5, i64 24}
!55 = !{!46, !5, i64 28}
!56 = !{!46, !5, i64 32}
!57 = !{!11, !17, i64 24}
!58 = !{!59, !14, i64 32}
!59 = !{!"cl_engine", !5, i64 0, !9, i64 4, !5, i64 8, !13, i64 16, !13, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80}
!60 = !{!61, !5, i64 32}
!61 = !{!"cli_matcher", !9, i64 0, !6, i64 2, !22, i64 8, !62, i64 16, !63, i64 24, !5, i64 32, !6, i64 36, !6, i64 37, !64, i64 40, !65, i64 48, !66, i64 56, !5, i64 64, !5, i64 68, !5, i64 72}
!62 = !{!"p2 _ZTS11cli_bm_patt", !13, i64 0}
!63 = !{!"p1 int", !14, i64 0}
!64 = !{!"p1 _ZTS11cli_ac_node", !14, i64 0}
!65 = !{!"p2 _ZTS11cli_ac_node", !13, i64 0}
!66 = !{!"p2 _ZTS11cli_ac_patt", !13, i64 0}
!67 = !{!61, !63, i64 24}
!68 = distinct !{!68, !43}
!69 = distinct !{!69, !43}
!70 = distinct !{!70, !43}
!71 = distinct !{!71, !43}
!72 = distinct !{!72, !43}
!73 = distinct !{!73, !43}
!74 = !{!11, !18, i64 32}
!75 = !{!76, !30, i64 24}
!76 = !{!"cl_limits", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !9, i64 16, !30, i64 24}
!77 = distinct !{!77, !43}
!78 = !{!79}
!79 = distinct !{!79, !80}
!80 = distinct !{!80, !"LVerDomain"}
!81 = !{!82}
!82 = distinct !{!82, !80}
!83 = !{!84}
!84 = distinct !{!84, !80}
!85 = !{!79, !82}
!86 = distinct !{!86, !43, !87, !88}
!87 = !{!"llvm.loop.isvectorized", i32 1}
!88 = !{!"llvm.loop.unroll.runtime.disable"}
!89 = distinct !{!89, !43, !87}
!90 = distinct !{!90, !43}
!91 = distinct !{!91, !43}
!92 = !{ptr @upx_inflate2b, ptr @upx_inflate2d, ptr @upx_inflate2e}
!93 = distinct !{!93, !43}
!94 = distinct !{!94, !43, !87, !88}
!95 = distinct !{!95, !43, !88, !87}
!96 = distinct !{!96, !43}
!97 = distinct !{!97, !43}
!98 = distinct !{!98, !43}
!99 = distinct !{!99, !43}
!100 = !{!14, !14, i64 0}
!101 = distinct !{!101, !43}
!102 = !{!103, !30, i64 8}
!103 = !{!"cli_exe_info", !5, i64 0, !9, i64 4, !30, i64 8, !104, i64 16}
!104 = !{!"p1 _ZTS15cli_exe_section", !14, i64 0}
!105 = !{!103, !9, i64 4}
!106 = !{!103, !104, i64 16}
!107 = distinct !{!107, !43}
!108 = distinct !{!108, !43}
!109 = !{!103, !5, i64 0}
end_hunk_2
