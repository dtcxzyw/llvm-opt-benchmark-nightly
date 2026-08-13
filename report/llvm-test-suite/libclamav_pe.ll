inline.NumInlined: 58
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@cli_scanpe:bb.a
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
  br i1 %or.cond29, label %.thread3130, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !32 ; 2 uses
  %.not2685 = icmp ne i32 %i.dw, 0
  %i.dx = and i32 %i.dw, 4095
  %.not2686 = icmp eq i32 %i.dx, 0
  %or.cond3909 = and i1 %.not2685, %.not2686      ; 2 uses
  br i1 %.not2680, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  br i1 %or.cond3909, label %bb.cz, label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  br i1 %or.cond3909, label %bb.da, label %bb.cx

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
  br i1 %.not2690, label %.thread3130, label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %bb.cz
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.83) #13
  %i.ef = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %.not2691 = icmp eq ptr %i.ef, null
  br i1 %.not2691, label %.critedge3020, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store ptr @.str.4, ptr %i.ef, align 8, !tbaa !21
  br label %.critedge3020

.thread3130:                                      ; preds = %bb.ct, %bb.db
  %i.eg = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %4) #13
  %i.eh = icmp eq i32 %i.eg, -1
  br i1 %i.eh, label %bb.de, label %bb.df

bb.de:                                            ; preds = %.thread3130
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.84) #13
  br label %.critedge3020

bb.df:                                            ; preds = %.thread3130
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
  %i.em = call ptr @cli_calloc(i64 noundef %i.ek, i64 noundef 36) #13 ; 179 uses
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
  br i1 %.not2694, label %.preheader3350, label %bb.dk

.preheader3350:                                   ; preds = %bb.dj
  %.not3916 = icmp eq i32 %i.eq, 512
  br i1 %.not3916, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader3350
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

._crit_edge:                                      ; preds = %bb.dp, %.thread, %.preheader3350
  %.02366.lcssa = phi i32 [ 512, %.preheader3350 ], [ 512, %.thread ], [ %i.eq, %bb.dp ] ; 5 uses
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
  %.not3488 = icmp eq i16 %i.aj, 0                ; 3 uses
  br i1 %.not3488, label %._crit_edge3409, label %.lr.ph3408

.lr.ph3408:                                       ; preds = %bb.dr
  %i.fm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.not2951 = icmp eq i32 %.02366.lcssa, 0
  %i.fn = trunc i64 %i.ej to i32                  ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %wide.trip.count3538 = zext nneg i16 %i.aj to i64
  br label %bb.ds

bb.ds:                                            ; preds = %.lr.ph3408, %bb.ft
  %indvars.iv3536 = phi i64 [ 0, %.lr.ph3408 ], [ %indvars.iv.next3537, %bb.ft ] ; 8 uses
  %.022753406 = phi i8 [ 0, %.lr.ph3408 ], [ %.22277, %bb.ft ] ; 5 uses
  %.023213403 = phi i32 [ 0, %.lr.ph3408 ], [ %.22323, %bb.ft ]
  %.023243402 = phi i32 [ 0, %.lr.ph3408 ], [ %.12325, %bb.ft ]
  %i.fq = getelementptr inbounds nuw [40 x i8], ptr %i.el, i64 %indvars.iv3536 ; 8 uses
  %i.fr = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(1) %i.fq, i64 noundef 8) #13 ; 0 uses
  store i8 0, ptr %i.fm, align 1, !tbaa !32
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !44
  %.fr = freeze i32 %i.ft                         ; 4 uses
  br i1 %.not2695, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.fu = urem i32 %.fr, %i.eo
  %i.fv = sub nuw i32 %.fr, %i.fu
  %i.fw = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3536 ; 2 uses
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
  %i.gf = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3536 ; 2 uses
  store i32 %.fr, ptr %i.gf, align 4, !tbaa !45
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !47 ; 2 uses
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.gi = phi i32 [ %i.fy, %bb.dt ], [ %i.gh, %bb.du ]
  %i.gj = phi ptr [ %i.fw, %bb.dt ], [ %i.gf, %bb.du ] ; 4 uses
  %i.gk = phi i32 [ %i.ge, %bb.dt ], [ %i.gh, %bb.du ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [36 x i8], ptr %i.em, i64 %indvars.iv3536 ; 11 uses
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
  br i1 %.not2954, label %.thread3136, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  br i1 %.not2695, label %.thread3138, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.hp = udiv i32 %i.hd, %i.eo
  %i.hq = urem i32 %i.hd, %i.eo
  %i.hr = icmp ne i32 %i.hq, 0
  %i.hs = zext i1 %i.hr to i32
  %i.ht = add i32 %i.hp, %i.hs
  %i.hu = mul i32 %i.ht, %i.eo
  br label %.thread3138

.thread3138:                                      ; preds = %bb.eb, %bb.ea
  %i.hv = phi i32 [ %i.hu, %bb.eb ], [ %i.hd, %bb.ea ]
  store i32 %i.hv, ptr %i.gm, align 4, !tbaa !48
  %.old = zext i32 %i.hf to i64
  %.old3313 = icmp ugt i64 %i.ej, %.old
  br i1 %.old3313, label %bb.ed, label %.thread3136

bb.ec:                                            ; preds = %bb.dy
  %.not2955 = icmp ne i32 %i.hg, 0
  %i.hw = zext i32 %i.hf to i64
  %i.hx = icmp ugt i64 %i.ej, %i.hw
  %or.cond3314 = select i1 %.not2955, i1 %i.hx, i1 false
  br i1 %or.cond3314, label %bb.ed, label %.thread3136

bb.ed:                                            ; preds = %bb.ec, %.thread3138
  %.not2957 = icmp ugt i32 %i.hg, %i.fn
  br i1 %.not2957, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.hy = add i32 %i.hf, -1
  %i.hz = add i32 %i.hy, %i.hg
  %or.cond3000.not = icmp ult i32 %i.hz, %i.fn
  br i1 %or.cond3000.not, label %.thread3136, label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %i.ia = sub i32 %i.fn, %i.hf
  store i32 %i.ia, ptr %i.hh, align 4, !tbaa !50
  br label %.thread3136

.thread3136:                                      ; preds = %bb.dz, %bb.ee, %bb.ef, %.thread3138, %bb.ec
  %i.ib = trunc nuw nsw i64 %indvars.iv3536 to i32 ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.89, i32 noundef %i.ib) #13
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.90, ptr noundef nonnull %i.d) #13
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.91) #13
  %i.ic = load i32, ptr %i.hm, align 4, !tbaa !54
  %i.id = load i32, ptr %i.gm, align 4, !tbaa !48
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.92, i32 noundef %i.ic, i32 noundef %i.id) #13
  %i.ie = load i32, ptr %i.hl, align 4, !tbaa !53
  %i.if = load i32, ptr %i.gj, align 4, !tbaa !45
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.93, i32 noundef %i.ie, i32 noundef %i.if) #13
  %i.ig = load i32, ptr %i.ho, align 4, !tbaa !56
  %i.ih = load i32, ptr %i.hh, align 4, !tbaa !50
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.94, i32 noundef %i.ig, i32 noundef %i.ih) #13
  %i.ii = load i32, ptr %i.hn, align 4, !tbaa !55
  %i.ij = load i32, ptr %i.he, align 4, !tbaa !49
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.95, i32 noundef %i.ii, i32 noundef %i.ij) #13
  %i.ik = load i32, ptr %i.hk, align 4, !tbaa !52
  %i.il = and i32 %i.ik, 32
  %.not2960 = icmp eq i32 %i.il, 0
  br i1 %.not2960, label %bb.ei, label %bb.eg

bb.eg:                                            ; preds = %.thread3136
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.96) #13
  %i.im = load i32, ptr %i.gm, align 4, !tbaa !48
  %i.in = load i32, ptr %i.hh, align 4, !tbaa !50
  %i.io = icmp ult i32 %i.im, %i.in
  br i1 %i.io, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.97) #13
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eg, %bb.eh, %.thread3136
  %i.ip = load i32, ptr %i.hk, align 4, !tbaa !52 ; 2 uses
  %i.iq = and i32 %i.ip, 536870912
  %.not2961 = icmp eq i32 %i.iq, 0
  br i1 %.not2961, label %bb.ek, label %bb.ej
end_hunk_0
