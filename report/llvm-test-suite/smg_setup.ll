begin_hunk_0_@hypre_SMGSetup:bb.a
  %i.ds = load ptr, ptr %i.db, align 8, !tbaa !44
  %i.dt = call i32 @hypre_StructVectorInitializeShell(ptr noundef %i.ds) #5 ; 0 uses
  %i.du = load ptr, ptr %i.db, align 8, !tbaa !44
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 36
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !51
  %i.dx = load ptr, ptr %i.an, align 8, !tbaa !36
  %i.dy = call ptr @hypre_StructVectorCreate(i32 noundef %i.h, ptr noundef %i.dx) #5 ; 2 uses
  store ptr %i.dy, ptr %i.dc, align 8, !tbaa !44
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ea = call i32 @hypre_StructVectorSetNumGhost(ptr noundef %i.dy, ptr noundef nonnull %i.dz) #5 ; 0 uses
  %i.eb = load ptr, ptr %i.dc, align 8, !tbaa !44
  %i.ec = call i32 @hypre_StructVectorInitializeShell(ptr noundef %i.eb) #5 ; 0 uses
  %i.ed = load ptr, ptr %i.dc, align 8, !tbaa !44
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 36
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !51
  %i.eg = add nsw i32 %i.ef, %i.dw                ; 2 uses
  %.not513 = icmp eq i32 %.0477.lcssa.wide, 0     ; 4 uses
  br i1 %.not513, label %._crit_edge502, label %.lr.ph501

.lr.ph501:                                        ; preds = %._crit_edge
  %wide.trip.count525 = zext i32 %.0477.lcssa.wide to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph501, %bb.b
  %indvars.iv522 = phi i64 [ 0, %.lr.ph501 ], [ %indvars.iv.next523, %bb.b ] ; 4 uses
  %.0480498 = phi i32 [ %i.eg, %.lr.ph501 ], [ %i.fx, %bb.b ]
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv522 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !42
  %indvars.iv.next523 = add nuw nsw i64 %indvars.iv522, 1 ; 9 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next523
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !36
  %i.el = call ptr @hypre_SMGCreateInterpOp(ptr noundef %i.ei, ptr noundef %i.ek, i32 noundef %i.s) #5 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv522 ; 3 uses
  store ptr %i.el, ptr %i.em, align 8, !tbaa !42
  %i.en = call i32 @hypre_StructMatrixInitializeShell(ptr noundef %i.el) #5 ; 0 uses
  %i.eo = load ptr, ptr %i.em, align 8, !tbaa !42 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 60
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !53
  %i.er = add nsw i32 %i.eq, %.0480498
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv522
  store ptr %i.eo, ptr %i.es, align 8, !tbaa !42
  %i.et = load ptr, ptr %i.eh, align 8, !tbaa !42
  %i.eu = load ptr, ptr %i.em, align 8, !tbaa !42
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next523 ; 5 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !36
  %i.ex = call ptr @hypre_SMGCreateRAPOp(ptr noundef nonnull %i.eo, ptr noundef %i.et, ptr noundef %i.eu, ptr noundef %i.ew) #5 ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next523 ; 2 uses
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !42
  %i.ez = call i32 @hypre_StructMatrixInitializeShell(ptr noundef %i.ex) #5 ; 0 uses
  %i.fa = load ptr, ptr %i.ey, align 8, !tbaa !42
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 60
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !53
  %i.fd = add nsw i32 %i.er, %i.fc
  %i.fe = load ptr, ptr %i.ev, align 8, !tbaa !36
  %i.ff = call ptr @hypre_StructVectorCreate(i32 noundef %i.h, ptr noundef %i.fe) #5 ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.next523 ; 3 uses
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !44
  %i.fh = call i32 @hypre_StructVectorSetNumGhost(ptr noundef %i.ff, ptr noundef nonnull %i.f) #5 ; 0 uses
  %i.fi = load ptr, ptr %i.fg, align 8, !tbaa !44
  %i.fj = call i32 @hypre_StructVectorInitializeShell(ptr noundef %i.fi) #5 ; 0 uses
  %i.fk = load ptr, ptr %i.fg, align 8, !tbaa !44
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 36
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !51
  %i.fn = add nsw i32 %i.fd, %i.fm
  %i.fo = load ptr, ptr %i.ev, align 8, !tbaa !36
  %i.fp = call ptr @hypre_StructVectorCreate(i32 noundef %i.h, ptr noundef %i.fo) #5 ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next523 ; 3 uses
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !44
  %i.fr = call i32 @hypre_StructVectorSetNumGhost(ptr noundef %i.fp, ptr noundef nonnull %i.g) #5 ; 0 uses
  %i.fs = load ptr, ptr %i.fq, align 8, !tbaa !44
  %i.ft = call i32 @hypre_StructVectorInitializeShell(ptr noundef %i.fs) #5 ; 0 uses
  %i.fu = load ptr, ptr %i.fq, align 8, !tbaa !44
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 36
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !51
  %i.fx = add nsw i32 %i.fn, %i.fw                ; 2 uses
  %i.fy = load ptr, ptr %i.ev, align 8, !tbaa !36
  %i.fz = call ptr @hypre_StructVectorCreate(i32 noundef %i.h, ptr noundef %i.fy) #5 ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.next523 ; 2 uses
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !44
  %i.gb = call i32 @hypre_StructVectorSetNumGhost(ptr noundef %i.fz, ptr noundef nonnull %i.dq) #5 ; 0 uses
  %i.gc = load ptr, ptr %i.ga, align 8, !tbaa !44
  %i.gd = call i32 @hypre_StructVectorInitializeShell(ptr noundef %i.gc) #5 ; 0 uses
  %i.ge = load ptr, ptr %i.ev, align 8, !tbaa !36
  %i.gf = call ptr @hypre_StructVectorCreate(i32 noundef %i.h, ptr noundef %i.ge) #5 ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.next523 ; 2 uses
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !44
  %i.gh = call i32 @hypre_StructVectorSetNumGhost(ptr noundef %i.gf, ptr noundef nonnull %i.dz) #5 ; 0 uses
  %i.gi = load ptr, ptr %i.gg, align 8, !tbaa !44
  %i.gj = call i32 @hypre_StructVectorInitializeShell(ptr noundef %i.gi) #5 ; 0 uses
  %exitcond526.not = icmp eq i64 %indvars.iv.next523, %wide.trip.count525
  br i1 %exitcond526.not, label %._crit_edge502, label %bb.b, !llvm.loop !54

._crit_edge502:                                   ; preds = %bb.b, %._crit_edge
  %.0480.lcssa = phi i32 [ %i.eg, %._crit_edge ], [ %i.fx, %bb.b ]
  %i.gk = call ptr @hypre_CAlloc(i32 noundef %.0480.lcssa, i32 noundef 8) #5 ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !55
  %i.gm = load ptr, ptr %i.db, align 8, !tbaa !44
  %i.gn = call i32 @hypre_StructVectorInitializeData(ptr noundef %i.gm, ptr noundef %i.gk) #5 ; 0 uses
  %i.go = load ptr, ptr %i.db, align 8, !tbaa !44
  %i.gp = call i32 @hypre_StructVectorAssemble(ptr noundef %i.go) #5 ; 0 uses
  %i.gq = load ptr, ptr %i.db, align 8, !tbaa !44
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 36
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !51
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.gk, i64 %i.gt ; 2 uses
  %i.gv = load ptr, ptr %i.dc, align 8, !tbaa !44
  %i.gw = call i32 @hypre_StructVectorInitializeData(ptr noundef %i.gv, ptr noundef %i.gu) #5 ; 0 uses
  %i.gx = load ptr, ptr %i.dc, align 8, !tbaa !44
  %i.gy = call i32 @hypre_StructVectorAssemble(ptr noundef %i.gx) #5 ; 0 uses
  br i1 %.not513, label %._crit_edge507, label %.lr.ph506.preheader

.lr.ph506.preheader:                              ; preds = %._crit_edge502
  %i.gz = load ptr, ptr %i.dc, align 8, !tbaa !44
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 36
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !51
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.gu, i64 %i.hc
  %wide.trip.count530 = zext i32 %.0477.lcssa.wide to i64
  br label %.lr.ph506

.lr.ph506:                                        ; preds = %.lr.ph506.preheader, %.lr.ph506
  %indvars.iv527 = phi i64 [ 0, %.lr.ph506.preheader ], [ %indvars.iv.next528, %.lr.ph506 ] ; 2 uses
  %.0479503 = phi ptr [ %i.hd, %.lr.ph506.preheader ], [ %i.in, %.lr.ph506 ] ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv527 ; 2 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !42
  %i.hg = call i32 @hypre_StructMatrixInitializeData(ptr noundef %i.hf, ptr noundef %.0479503) #5 ; 0 uses
  %i.hh = load ptr, ptr %i.he, align 8, !tbaa !42
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 60
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !53
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds [8 x i8], ptr %.0479503, i64 %i.hk ; 2 uses
  %indvars.iv.next528 = add nuw nsw i64 %indvars.iv527, 1 ; 7 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next528 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !42
  %i.ho = call i32 @hypre_StructMatrixInitializeData(ptr noundef %i.hn, ptr noundef %i.hl) #5 ; 0 uses
  %i.hp = load ptr, ptr %i.hm, align 8, !tbaa !42
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 60
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !53
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.hl, i64 %i.hs ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.next528 ; 3 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !44
  %i.hw = call i32 @hypre_StructVectorInitializeData(ptr noundef %i.hv, ptr noundef %i.ht) #5 ; 0 uses
  %i.hx = load ptr, ptr %i.hu, align 8, !tbaa !44
  %i.hy = call i32 @hypre_StructVectorAssemble(ptr noundef %i.hx) #5 ; 0 uses
  %i.hz = load ptr, ptr %i.hu, align 8, !tbaa !44
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 36
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !51
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds [8 x i8], ptr %i.ht, i64 %i.ic ; 2 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next528 ; 3 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !44
  %i.ig = call i32 @hypre_StructVectorInitializeData(ptr noundef %i.if, ptr noundef %i.id) #5 ; 0 uses
  %i.ih = load ptr, ptr %i.ie, align 8, !tbaa !44
  %i.ii = call i32 @hypre_StructVectorAssemble(ptr noundef %i.ih) #5 ; 0 uses
  %i.ij = load ptr, ptr %i.ie, align 8, !tbaa !44
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 36
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !51
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [8 x i8], ptr %i.id, i64 %i.im
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.next528 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !44
  %i.iq = load ptr, ptr %i.db, align 8, !tbaa !44
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !56
  %i.it = call i32 @hypre_StructVectorInitializeData(ptr noundef %i.ip, ptr noundef %i.is) #5 ; 0 uses
  %i.iu = load ptr, ptr %i.io, align 8, !tbaa !44
  %i.iv = call i32 @hypre_StructVectorAssemble(ptr noundef %i.iu) #5 ; 0 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.next528 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !44
  %i.iy = load ptr, ptr %i.dc, align 8, !tbaa !44
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !56
  %i.jb = call i32 @hypre_StructVectorInitializeData(ptr noundef %i.ix, ptr noundef %i.ja) #5 ; 0 uses
  %i.jc = load ptr, ptr %i.iw, align 8, !tbaa !44
  %i.jd = call i32 @hypre_StructVectorAssemble(ptr noundef %i.jc) #5 ; 0 uses
  %exitcond531.not = icmp eq i64 %indvars.iv.next528, %wide.trip.count530
  br i1 %exitcond531.not, label %._crit_edge507, label %.lr.ph506, !llvm.loop !57

._crit_edge507:                                   ; preds = %.lr.ph506, %._crit_edge502
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.cv, ptr %i.je, align 8, !tbaa !58
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.cx, ptr %i.jf, align 8, !tbaa !59
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.cy, ptr %i.jg, align 8, !tbaa !60
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.cz, ptr %i.jh, align 8, !tbaa !61
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.da, ptr %i.ji, align 8, !tbaa !62
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.db, ptr %i.jj, align 8, !tbaa !63
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.dc, ptr %i.jk, align 8, !tbaa !64
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.dc, ptr %i.jl, align 8, !tbaa !65
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.dc, ptr %i.jm, align 8, !tbaa !66
  %i.jn = call ptr @hypre_MAlloc(i32 noundef %i.cu) #5 ; 3 uses
  %i.jo = call ptr @hypre_MAlloc(i32 noundef %i.cu) #5 ; 3 uses
  %i.jp = call ptr @hypre_MAlloc(i32 noundef %i.cu) #5 ; 2 uses
  %i.jq = call ptr @hypre_MAlloc(i32 noundef %i.cu) #5 ; 2 uses
  %i.jr = load ptr, ptr %i.cz, align 8, !tbaa !44 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !56
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 32
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !67
  %i.jw = load ptr, ptr %i.da, align 8, !tbaa !44 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !56
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 32
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !67
  %i.kb = load ptr, ptr %i.db, align 8, !tbaa !44
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !56
  %i.ke = call i32 @hypre_StructVectorInitializeData(ptr noundef %i.jr, ptr noundef %i.kd) #5 ; 0 uses
  %i.kf = load ptr, ptr %i.da, align 8, !tbaa !44
  %i.kg = load ptr, ptr %i.dc, align 8, !tbaa !44
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !56
  %i.kj = call i32 @hypre_StructVectorInitializeData(ptr noundef %i.kf, ptr noundef %i.ki) #5 ; 0 uses
  %i.kk = load ptr, ptr %i.cz, align 8, !tbaa !44
  %i.kl = call i32 @hypre_StructVectorAssemble(ptr noundef %i.kk) #5 ; 0 uses
  %i.km = load ptr, ptr %i.da, align 8, !tbaa !44
  %i.kn = call i32 @hypre_StructVectorAssemble(ptr noundef %i.km) #5 ; 0 uses
  br i1 %.not513, label %._crit_edge511.thread, label %.lr.ph510

.lr.ph510:                                        ; preds = %._crit_edge507
  %i.ko = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.kt = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ku = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.aa ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %wide.trip.count535 = zext i32 %.0477.lcssa.wide to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph510, %bb.f
  %indvars.iv532 = phi i64 [ 0, %.lr.ph510 ], [ %indvars.iv.next533, %bb.f ] ; 13 uses
  %.not487 = icmp eq i64 %indvars.iv532, 0
  br i1 %.not487, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.a, align 8, !tbaa !4
  store i32 0, ptr %i.ko, align 4, !tbaa !4
  store i32 0, ptr %i.kp, align 8, !tbaa !4
  store i32 1, ptr %i.b, align 8, !tbaa !4
  store i32 1, ptr %i.kq, align 4, !tbaa !4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.kw = load i32, ptr %i.i, align 8, !tbaa !4   ; 2 uses
  store i32 %i.kw, ptr %i.a, align 8, !tbaa !4
  %i.kx = load i32, ptr %i.aw, align 4, !tbaa !4  ; 2 uses
  store i32 %i.kx, ptr %i.ko, align 4, !tbaa !4
  %i.ky = load i32, ptr %i.ax, align 8, !tbaa !4  ; 2 uses
  store i32 %i.ky, ptr %i.kp, align 8, !tbaa !4
  %i.kz = load i32, ptr %i.j, align 4, !tbaa !4   ; 2 uses
  store i32 %i.kz, ptr %i.b, align 8, !tbaa !4
  %i.la = load i32, ptr %i.ay, align 8, !tbaa !4  ; 2 uses
  store i32 %i.la, ptr %i.kq, align 4, !tbaa !4
  %i.lb = load i32, ptr %i.az, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge551 = phi i32 [ 0, %bb.d ], [ %i.kw, %bb.e ] ; 2 uses
  %storemerge550 = phi i32 [ 0, %bb.d ], [ %i.kx, %bb.e ] ; 2 uses
  %storemerge549 = phi i32 [ 0, %bb.d ], [ %i.ky, %bb.e ] ; 2 uses
  %storemerge547 = phi i32 [ 1, %bb.d ], [ %i.kz, %bb.e ]
  %storemerge546 = phi i32 [ 1, %bb.d ], [ %i.la, %bb.e ]
  %storemerge = phi i32 [ 1, %bb.d ], [ %i.lb, %bb.e ] ; 2 uses
  store i32 %storemerge, ptr %i.kr, align 8, !tbaa !4
  store i32 %storemerge551, ptr %i.c, align 8, !tbaa !4
  store i32 %storemerge550, ptr %i.as, align 4, !tbaa !4
  store i32 %storemerge549, ptr %i.at, align 8, !tbaa !4
  store i32 %storemerge551, ptr %i.d, align 4, !tbaa !4
  store i32 %storemerge550, ptr %i.ks, align 4, !tbaa !4
  store i32 %storemerge549, ptr %i.kt, align 4, !tbaa !4
  %storemerge548.in = load i32, ptr %i.ku, align 4, !tbaa !4
  %storemerge548 = add nsw i32 %storemerge548.in, 1
  store i32 %storemerge548, ptr %i.ku, align 4, !tbaa !4
  store i32 %storemerge547, ptr %i.e, align 8, !tbaa !4
  store i32 %storemerge546, ptr %i.au, align 4, !tbaa !4
  store i32 %storemerge, ptr %i.av, align 8, !tbaa !4
  %i.lc = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.ld = shl nsw i32 %i.lc, 1
  store i32 %i.ld, ptr %i.aq, align 4, !tbaa !4
  %i.le = call ptr @hypre_SMGRelaxCreate(i32 noundef %i.h) #5 ; 2 uses
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %indvars.iv532 ; 14 uses
  store ptr %i.le, ptr %i.lf, align 8, !tbaa !68
  %i.lg = call i32 @hypre_SMGRelaxSetBase(ptr noundef %i.le, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5 ; 0 uses
  %i.lh = load ptr, ptr %i.lf, align 8, !tbaa !68
  %i.li = load i32, ptr %i.kv, align 4, !tbaa !69
  %i.lj = call i32 @hypre_SMGRelaxSetMemoryUse(ptr noundef %i.lh, i32 noundef %i.li) #5 ; 0 uses
  %i.lk = load ptr, ptr %i.lf, align 8, !tbaa !68
  %i.ll = call i32 @hypre_SMGRelaxSetTol(ptr noundef %i.lk, double noundef 0.000000e+00) #5 ; 0 uses
  %i.lm = load ptr, ptr %i.lf, align 8, !tbaa !68
  %i.ln = call i32 @hypre_SMGRelaxSetNumSpaces(ptr noundef %i.lm, i32 noundef 2) #5 ; 0 uses
  %i.lo = load ptr, ptr %i.lf, align 8, !tbaa !68
  %i.lp = load i32, ptr %i.co, align 4, !tbaa !4
  %i.lq = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.lr = call i32 @hypre_SMGRelaxSetSpace(ptr noundef %i.lo, i32 noundef 0, i32 noundef %i.lp, i32 noundef %i.lq) #5 ; 0 uses
  %i.ls = load ptr, ptr %i.lf, align 8, !tbaa !68
  %i.lt = load i32, ptr %i.ku, align 4, !tbaa !4
  %i.lu = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.lv = call i32 @hypre_SMGRelaxSetSpace(ptr noundef %i.ls, i32 noundef 1, i32 noundef %i.lt, i32 noundef %i.lu) #5 ; 0 uses
  %i.lw = load ptr, ptr %i.lf, align 8, !tbaa !68
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv532
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !44
  %i.lz = call i32 @hypre_SMGRelaxSetTempVec(ptr noundef %i.lw, ptr noundef %i.ly) #5 ; 0 uses
  %i.ma = load ptr, ptr %i.lf, align 8, !tbaa !68
  %i.mb = call i32 @hypre_SMGRelaxSetNumPreRelax(ptr noundef %i.ma, i32 noundef %i.l) #5 ; 0 uses
  %i.mc = load ptr, ptr %i.lf, align 8, !tbaa !68
  %i.md = call i32 @hypre_SMGRelaxSetNumPostRelax(ptr noundef %i.mc, i32 noundef %i.n) #5 ; 0 uses
  %i.me = load ptr, ptr %i.lf, align 8, !tbaa !68
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv532 ; 5 uses
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !42
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv532 ; 4 uses
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !44
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv532 ; 4 uses
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !44
  %i.ml = call i32 @hypre_SMGRelaxSetup(ptr noundef %i.me, ptr noundef %i.mg, ptr noundef %i.mi, ptr noundef %i.mk) #5 ; 0 uses
  %i.mm = load ptr, ptr %i.lf, align 8, !tbaa !68
  %i.mn = load ptr, ptr %i.mf, align 8, !tbaa !42
  %i.mo = load ptr, ptr %i.mh, align 8, !tbaa !44
  %i.mp = load ptr, ptr %i.mj, align 8, !tbaa !44
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv532 ; 3 uses
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !42
  %i.ms = call i32 @hypre_SMGSetupInterpOp(ptr noundef %i.mm, ptr noundef %i.mn, ptr noundef %i.mo, ptr noundef %i.mp, ptr noundef %i.mr, i32 noundef %i.s, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #5 ; 0 uses
  %i.mt = load ptr, ptr %i.lf, align 8, !tbaa !68
  %i.mu = call i32 @hypre_SMGRelaxSetNumPreSpaces(ptr noundef %i.mt, i32 noundef 0) #5 ; 0 uses
  %i.mv = load ptr, ptr %i.lf, align 8, !tbaa !68
  %i.mw = call i32 @hypre_SMGRelaxSetNumRegSpaces(ptr noundef %i.mv, i32 noundef 2) #5 ; 0 uses
  %i.mx = load ptr, ptr %i.lf, align 8, !tbaa !68
  %i.my = load ptr, ptr %i.mf, align 8, !tbaa !42
  %i.mz = load ptr, ptr %i.mh, align 8, !tbaa !44
  %i.na = load ptr, ptr %i.mj, align 8, !tbaa !44
  %i.nb = call i32 @hypre_SMGRelaxSetup(ptr noundef %i.mx, ptr noundef %i.my, ptr noundef %i.mz, ptr noundef %i.na) #5 ; 0 uses
  %i.nc = call ptr @hypre_SMGResidualCreate() #5  ; 2 uses
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %indvars.iv532 ; 2 uses
  store ptr %i.nc, ptr %i.nd, align 8, !tbaa !68
  %i.ne = call i32 @hypre_SMGResidualSetBase(ptr noundef %i.nc, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5 ; 0 uses
  %i.nf = load ptr, ptr %i.nd, align 8, !tbaa !68
  %i.ng = load ptr, ptr %i.mf, align 8, !tbaa !42
  %i.nh = load ptr, ptr %i.mj, align 8, !tbaa !44
  %i.ni = load ptr, ptr %i.mh, align 8, !tbaa !44
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv532 ; 3 uses
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !44
  %i.nl = call i32 @hypre_SMGResidualSetup(ptr noundef %i.nf, ptr noundef %i.ng, ptr noundef %i.nh, ptr noundef %i.ni, ptr noundef %i.nk) #5 ; 0 uses
  %i.nm = call ptr @hypre_SemiInterpCreate() #5   ; 2 uses
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %indvars.iv532
  store ptr %i.nm, ptr %i.nn, align 8, !tbaa !68
  %i.no = load ptr, ptr %i.mq, align 8, !tbaa !42
  %indvars.iv.next533 = add nuw nsw i64 %indvars.iv532, 1 ; 5 uses
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next533
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !44
  %i.nr = load ptr, ptr %i.nj, align 8, !tbaa !44
  %i.ns = call i32 @hypre_SemiInterpSetup(ptr noundef %i.nm, ptr noundef %i.no, i32 noundef 1, ptr noundef %i.nq, ptr noundef %i.nr, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #5 ; 0 uses
  %i.nt = call ptr @hypre_SemiRestrictCreate() #5 ; 2 uses
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv532
  store ptr %i.nt, ptr %i.nu, align 8, !tbaa !68
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv532 ; 2 uses
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !42
  %i.nx = load ptr, ptr %i.nj, align 8, !tbaa !44
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.next533
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !44
  %i.oa = call i32 @hypre_SemiRestrictSetup(ptr noundef %i.nt, ptr noundef %i.nw, i32 noundef 0, ptr noundef %i.nx, ptr noundef %i.nz, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #5 ; 0 uses
  %i.ob = load ptr, ptr %i.nv, align 8, !tbaa !42
  %i.oc = load ptr, ptr %i.mf, align 8, !tbaa !42
  %i.od = load ptr, ptr %i.mq, align 8, !tbaa !42
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv.next533
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !42
  %i.og = call i32 @hypre_SMGSetupRAPOp(ptr noundef %i.ob, ptr noundef %i.oc, ptr noundef %i.od, ptr noundef %i.of, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e) #5 ; 0 uses
  %exitcond536.not = icmp eq i64 %indvars.iv.next533, %wide.trip.count535
  br i1 %exitcond536.not, label %._crit_edge511, label %bb.c, !llvm.loop !70

._crit_edge511:                                   ; preds = %bb.f
  %i.oh = zext nneg i32 %.0477.lcssa.wide to i64
  br label %bb.g

._crit_edge511.thread:                            ; preds = %._crit_edge507
  %i.oi = load <2 x i32>, ptr %i.i, align 8, !tbaa !4
  %i.oj = load i32, ptr %i.ax, align 8, !tbaa !4
  %i.ok = load <2 x i32>, ptr %i.j, align 4, !tbaa !4
  %i.ol = load i32, ptr %i.az, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge511, %._crit_edge511.thread
  %.3.lcssa558 = phi i64 [ 0, %._crit_edge511.thread ], [ %i.oh, %._crit_edge511 ] ; 7 uses
  %.sink539 = phi i32 [ %i.oj, %._crit_edge511.thread ], [ 0, %._crit_edge511 ]
  %.sink = phi i32 [ %i.ol, %._crit_edge511.thread ], [ 1, %._crit_edge511 ]
  %i.om = phi <2 x i32> [ %i.oi, %._crit_edge511.thread ], [ zeroinitializer, %._crit_edge511 ]
  %i.on = phi <2 x i32> [ %i.ok, %._crit_edge511.thread ], [ splat (i32 1), %._crit_edge511 ]
  store <2 x i32> %i.om, ptr %i.a, align 8, !tbaa !4
  %i.oo = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %.sink539, ptr %i.oo, align 8, !tbaa !4
  store <2 x i32> %i.on, ptr %i.b, align 8, !tbaa !4
  %i.op = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %.sink, ptr %i.op, align 8, !tbaa !4
  %i.oq = call ptr @hypre_SMGRelaxCreate(i32 noundef %i.h) #5 ; 2 uses
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %.3.lcssa558 ; 7 uses
  store ptr %i.oq, ptr %i.or, align 8, !tbaa !68
  %i.os = call i32 @hypre_SMGRelaxSetBase(ptr noundef %i.oq, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5 ; 0 uses
  %i.ot = load ptr, ptr %i.or, align 8, !tbaa !68
  %i.ou = call i32 @hypre_SMGRelaxSetTol(ptr noundef %i.ot, double noundef 0.000000e+00) #5 ; 0 uses
  %i.ov = load ptr, ptr %i.or, align 8, !tbaa !68
  %i.ow = call i32 @hypre_SMGRelaxSetMaxIter(ptr noundef %i.ov, i32 noundef 1) #5 ; 0 uses
  %i.ox = load ptr, ptr %i.or, align 8, !tbaa !68
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %.3.lcssa558
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !44
  %i.pa = call i32 @hypre_SMGRelaxSetTempVec(ptr noundef %i.ox, ptr noundef %i.oz) #5 ; 0 uses
  %i.pb = load ptr, ptr %i.or, align 8, !tbaa !68
  %i.pc = call i32 @hypre_SMGRelaxSetNumPreRelax(ptr noundef %i.pb, i32 noundef %i.l) #5 ; 0 uses
  %i.pd = load ptr, ptr %i.or, align 8, !tbaa !68
  %i.pe = call i32 @hypre_SMGRelaxSetNumPostRelax(ptr noundef %i.pd, i32 noundef %i.n) #5 ; 0 uses
  %i.pf = load ptr, ptr %i.or, align 8, !tbaa !68
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.3.lcssa558 ; 2 uses
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !42
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.3.lcssa558 ; 2 uses
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !44
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %.3.lcssa558 ; 2 uses
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !44
  %i.pm = call i32 @hypre_SMGRelaxSetup(ptr noundef %i.pf, ptr noundef %i.ph, ptr noundef %i.pj, ptr noundef %i.pl) #5 ; 0 uses
  br i1 %.not513, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.pn = call ptr @hypre_SMGResidualCreate() #5  ; 2 uses
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %.3.lcssa558 ; 2 uses
  store ptr %i.pn, ptr %4, align 8, !tbaa !68
  %i.po = call i32 @hypre_SMGResidualSetBase(ptr noundef %i.pn, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #5 ; 0 uses
  %i.pp = load ptr, ptr %4, align 8, !tbaa !68
  %i.pq = load ptr, ptr %i.pg, align 8, !tbaa !42
  %i.pr = load ptr, ptr %i.pk, align 8, !tbaa !44
  %i.ps = load ptr, ptr %i.pi, align 8, !tbaa !44
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %.3.lcssa558
  %i.pt = load ptr, ptr %5, align 8, !tbaa !44
  %i.pu = call i32 @hypre_SMGResidualSetup(ptr noundef %i.pp, ptr noundef %i.pq, ptr noundef %i.pr, ptr noundef %i.ps, ptr noundef %i.pt) #5 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.pv = load ptr, ptr %i.cz, align 8, !tbaa !44
  %i.pw = call i32 @hypre_StructVectorInitializeData(ptr noundef %i.pv, ptr noundef %i.jt) #5 ; 0 uses
  %i.px = load ptr, ptr %i.cz, align 8, !tbaa !44
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 32
  store i32 %i.jv, ptr %i.py, align 8, !tbaa !67
  %i.pz = load ptr, ptr %i.da, align 8, !tbaa !44
  %i.qa = call i32 @hypre_StructVectorInitializeData(ptr noundef %i.pz, ptr noundef %i.jy) #5 ; 0 uses
  %i.qb = load ptr, ptr %i.da, align 8, !tbaa !44
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 32
  store i32 %i.ka, ptr %i.qc, align 8, !tbaa !67
  %i.qd = load ptr, ptr %i.cz, align 8, !tbaa !44
  %i.qe = call i32 @hypre_StructVectorAssemble(ptr noundef %i.qd) #5 ; 0 uses
  %i.qf = load ptr, ptr %i.da, align 8, !tbaa !44
  %i.qg = call i32 @hypre_StructVectorAssemble(ptr noundef %i.qf) #5 ; 0 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.jn, ptr %i.qh, align 8, !tbaa !71
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.jo, ptr %i.qi, align 8, !tbaa !72
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %i.jp, ptr %i.qj, align 8, !tbaa !73
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.jq, ptr %i.qk, align 8, !tbaa !74
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.qm = load i32, ptr %i.ql, align 8, !tbaa !75
  %i.qn = icmp sgt i32 %i.qm, 0
  br i1 %i.qn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qp = load i32, ptr %i.qo, align 8, !tbaa !76
  %i.qq = shl i32 %i.qp, 3                        ; 2 uses
  %i.qr = call ptr @hypre_MAlloc(i32 noundef %i.qq) #5
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.qr, ptr %i.qs, align 8, !tbaa !77
  %i.qt = call ptr @hypre_MAlloc(i32 noundef %i.qq) #5
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.qt, ptr %i.qu, align 8, !tbaa !78
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare ptr @hypre_BoxDuplicate(ptr noundef) local_unnamed_addr #3

declare i32 @hypre_Log2(i32 noundef) local_unnamed_addr #3

declare ptr @hypre_MAlloc(i32 noundef) local_unnamed_addr #3

declare i32 @hypre_StructGridRef(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @hypre_ProjectBox(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @hypre_StructMapFineToCoarse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @hypre_StructCoarsen(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @hypre_BoxDestroy(ptr noundef) local_unnamed_addr #3

declare ptr @hypre_StructMatrixRef(ptr noundef) local_unnamed_addr #3

declare ptr @hypre_StructVectorRef(ptr noundef) local_unnamed_addr #3

declare ptr @hypre_StructVectorCreate(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @hypre_StructVectorSetNumGhost(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @hypre_StructVectorInitializeShell(ptr noundef) local_unnamed_addr #3

declare ptr @hypre_SMGCreateInterpOp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @hypre_StructMatrixInitializeShell(ptr noundef) local_unnamed_addr #3

declare ptr @hypre_SMGCreateRAPOp(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @hypre_CAlloc(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @hypre_StructVectorInitializeData(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @hypre_StructVectorAssemble(ptr noundef) local_unnamed_addr #3

declare i32 @hypre_StructMatrixInitializeData(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @hypre_SMGRelaxCreate(i32 noundef) local_unnamed_addr #3

declare i32 @hypre_SMGRelaxSetBase(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @hypre_SMGRelaxSetMemoryUse(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @hypre_SMGRelaxSetTol(ptr noundef, double noundef) local_unnamed_addr #3

declare i32 @hypre_SMGRelaxSetNumSpaces(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @hypre_SMGRelaxSetSpace(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @hypre_SMGRelaxSetTempVec(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @hypre_SMGRelaxSetNumPreRelax(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @hypre_SMGRelaxSetNumPostRelax(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @hypre_SMGRelaxSetup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @hypre_SMGSetupInterpOp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @hypre_SMGRelaxSetNumPreSpaces(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @hypre_SMGRelaxSetNumRegSpaces(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @hypre_SMGResidualCreate() local_unnamed_addr #3

declare i32 @hypre_SMGResidualSetBase(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @hypre_SMGResidualSetup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @hypre_SemiInterpCreate() local_unnamed_addr #3

declare i32 @hypre_SemiInterpSetup(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @hypre_SemiRestrictCreate() local_unnamed_addr #3

declare i32 @hypre_SemiRestrictSetup(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @hypre_SMGSetupRAPOp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @hypre_SMGRelaxSetMaxIter(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!8 = !{!9, !5, i64 0}
!9 = !{!"", !5, i64 0, !5, i64 4, !10, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !6, i64 48, !6, i64 60, !11, i64 72, !11, i64 80, !14, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !16, i64 120, !16, i64 128, !16, i64 136, !16, i64 144, !16, i64 152, !16, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !5, i64 200, !5, i64 204, !5, i64 208, !14, i64 216, !14, i64 224}
!10 = !{!"double", !6, i64 0}
!11 = !{!"p2 _ZTS23hypre_StructGrid_struct", !12, i64 0}
!12 = !{!"any p2 pointer", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"p1 double", !13, i64 0}
!15 = !{!"p2 _ZTS25hypre_StructMatrix_struct", !12, i64 0}
!16 = !{!"p2 _ZTS25hypre_StructVector_struct", !12, i64 0}
!17 = !{!9, !5, i64 36}
!18 = !{!9, !5, i64 40}
!19 = !{!20, !22, i64 24}
!20 = !{!"hypre_StructMatrix_struct", !5, i64 0, !21, i64 8, !22, i64 16, !22, i64 24, !5, i64 32, !23, i64 40, !14, i64 48, !5, i64 56, !5, i64 60, !24, i64 64, !5, i64 72, !25, i64 80, !6, i64 88, !5, i64 112, !26, i64 120, !5, i64 128}
!21 = !{!"p1 _ZTS23hypre_StructGrid_struct", !13, i64 0}
!22 = !{!"p1 _ZTS26hypre_StructStencil_struct", !13, i64 0}
!23 = !{!"p1 _ZTS21hypre_BoxArray_struct", !13, i64 0}
!24 = !{!"p2 int", !12, i64 0}
!25 = !{!"p1 int", !13, i64 0}
!26 = !{!"p1 _ZTS20hypre_CommPkg_struct", !13, i64 0}
!27 = !{!28, !5, i64 16}
!28 = !{!"hypre_StructStencil_struct", !25, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!29 = !{!9, !5, i64 44}
!30 = !{!20, !21, i64 8}
!31 = !{!32, !34, i64 40}
!32 = !{!"hypre_StructGrid_struct", !5, i64 0, !5, i64 4, !23, i64 8, !25, i64 16, !33, i64 24, !5, i64 32, !34, i64 40, !5, i64 48, !5, i64 52, !6, i64 56, !5, i64 68}
!33 = !{!"p1 _ZTS25hypre_BoxNeighbors_struct", !13, i64 0}
!34 = !{!"p1 _ZTS16hypre_Box_struct", !13, i64 0}
!35 = !{!9, !5, i64 28}
end_hunk_0
