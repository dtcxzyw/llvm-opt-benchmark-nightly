inline.NumInlined: 105
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 54
begin_hunk_0_@cli_bytecode_load:bb.a
  %i.ta = zext i32 %i.sz to i64
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sj, i64 2
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.tf = call i32 @cli_chomp(ptr noundef nonnull %i.sj) #24 ; 0 uses
  br i1 %i.sh, label %bb.cn, label %parseLSig.exit.jt7

bb.cj:                                            ; preds = %parseLSig.exit.jt0
  %i.tg = call i32 @cli_chomp(ptr noundef nonnull %i.sj) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #24
  %i.th = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.sj) #26
  %i.ti = trunc i64 %i.th to i32                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #24
  store i8 1, ptr %i.l, align 1, !tbaa !132
  %i.tj = load i8, ptr %i.sj, align 1, !tbaa !123 ; 2 uses
  %.not.i141 = icmp eq i8 %i.tj, 84
  br i1 %.not.i141, label %bb.cr, label %bb.cq

thread-pre-split:                                 ; preds = %parseLSig.exit.jt5
  %i.tk = call i32 @cli_chomp(ptr noundef nonnull %i.sj) #24 ; 0 uses
  %i.tl = add i32 %i.ckb, 2
  %.pr = load i8, ptr %i.sj, align 1, !tbaa !123  ; 2 uses
  %i.tm = icmp eq i8 %.pr, 83
  br i1 %i.tm, label %parseLSig.exit, label %.lr.ph3170

.lr.ph3168:                                       ; preds = %parseGlobals.exit, %parseMD.exit
  %i.tn = phi i32 [ %i.tp, %parseMD.exit ], [ 4, %parseGlobals.exit ]
  %i.to = call i32 @cli_chomp(ptr noundef nonnull %i.sj) #24 ; 0 uses
  %i.tp = add i32 %i.tn, 1                        ; 3 uses
  %i.tq = load i8, ptr %i.sj, align 1, !tbaa !123 ; 2 uses
  switch i8 %i.tq, label %.lr.ph3170 [
    i8 68, label %bb.hg
    i8 83, label %parseLSig.exit
  ]

bb.ck:                                            ; preds = %parseLSig.exit.jt2
  %i.tr = call i32 @cli_chomp(ptr noundef nonnull %i.sj) #24 ; 0 uses
  %i.ts = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.sj) #26
  %i.tt = trunc i64 %i.ts to i32                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  store i8 1, ptr %i.g, align 1, !tbaa !132
  %i.tu = load i8, ptr %i.sj, align 1, !tbaa !123 ; 2 uses
  %.not.i184 = icmp eq i8 %i.tu, 71
  br i1 %.not.i184, label %bb.fy, label %bb.fx

bb.cl:                                            ; preds = %parseLSig.exit.jt1
  %i.tv = call i32 @cli_chomp(ptr noundef nonnull %i.sj) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  %i.tw = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.sj) #26
  %i.tx = trunc i64 %i.tw to i32                  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #24
  store i8 1, ptr %i.j, align 1, !tbaa !132
  %i.ty = load i8, ptr %i.sj, align 1, !tbaa !123 ; 2 uses
  %.not.i153 = icmp eq i8 %i.ty, 69
  br i1 %.not.i153, label %bb.ej, label %bb.ei

bb.cm:                                            ; preds = %parseLSig.exit.jt6
  %i.tz = call i32 @cli_chomp(ptr noundef nonnull %i.sj) #24 ; 0 uses
  %i.ua = add i32 %i.ckb, 1                       ; 2 uses
  %i.ub = add nuw i32 %.1104.jt6, 1               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i8 1, ptr %i.a, align 1, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.uc = load ptr, ptr %i.sp, align 8, !tbaa !105
  %i.ud = getelementptr inbounds nuw [72 x i8], ptr %i.uc, i64 %i.bkt ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.38.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.88.i)
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 20 ; 4 uses
  %i.uf = load i16, ptr %i.ue, align 4, !tbaa !151
  %i.ug = zext i16 %i.uf to i32
  %.not.i265 = icmp ult i32 %.1104.jt6, %i.ug
  br i1 %.not.i265, label %bb.ke, label %bb.kd

.lr.ph.jt7:                                       ; preds = %parseLSig.exit.jt7, %.backedge366
  %i.uh = call i32 @cli_chomp(ptr noundef nonnull %i.sj) #24 ; 0 uses
  br label %parseLSig.exit.jt7

bb.cn:                                            ; preds = %bb.ci
  %i.ui = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.sj, i32 noundef 59) #26 ; 2 uses
  %.not.i140 = icmp eq ptr %i.ui, null
  %i.uj = call ptr @cli_safer_strdup(ptr noundef nonnull %i.sj) #24 ; 2 uses
  br i1 %.not.i140, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  store ptr %i.uj, ptr %i.td, align 8, !tbaa !152
  store i8 0, ptr %i.ui, align 1, !tbaa !123
  br label %parseLSig.exit.jt0

bb.cp:                                            ; preds = %bb.cn
  store ptr %i.uj, ptr %i.te, align 8, !tbaa !153
  store ptr null, ptr %i.td, align 8, !tbaa !152
  br label %parseLSig.exit.jt0

bb.cq:                                            ; preds = %bb.cj
  %i.uk = zext i8 %i.tj to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.289, i32 noundef %i.uk) #24
  br label %bb.eh

bb.cr:                                            ; preds = %bb.cj
  %i.ul = icmp ult i32 %i.ti, 3
  br i1 %i.ul, label %bb.cs, label %.lr.ph.i.preheader.i142

.lr.ph.i.preheader.i142:                          ; preds = %bb.cr
  %i.um = load i8, ptr %i.sl, align 1, !tbaa !123
  %i.un = zext i8 %i.um to i32                    ; 3 uses
  %i.uo = and i32 %i.un, 240
  %.not.i.i143 = icmp eq i32 %i.uo, 96
  br i1 %.not.i.i143, label %.lr.ph.i.1.i, label %bb.ct, !prof !134

bb.cs:                                            ; preds = %bb.cr
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.288) #24
  br label %readFixedNumber.exit.thread.i

bb.ct:                                            ; preds = %.lr.ph.i.1.i, %.lr.ph.i.preheader.i142
  %.lcssa176.i = phi i32 [ %i.un, %.lr.ph.i.preheader.i142 ], [ %i.uq, %.lr.ph.i.1.i ]
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %.lcssa176.i) #24
  br label %readFixedNumber.exit.thread.i

.lr.ph.i.1.i:                                     ; preds = %.lr.ph.i.preheader.i142
  %i.up = load i8, ptr %i.tb, align 1, !tbaa !123
  %i.uq = zext i8 %i.up to i32                    ; 3 uses
  %i.ur = and i32 %i.uq, 240
  %.not.i.1.i = icmp eq i32 %i.ur, 96
  br i1 %.not.i.1.i, label %readFixedNumber.exit.i, label %bb.ct, !prof !134

readFixedNumber.exit.i:                           ; preds = %.lr.ph.i.1.i
  %i.us = and i32 %i.un, 15
  %i.ut = shl nuw nsw i32 %i.uq, 4
  %i.uu = and i32 %i.ut, 240
  %i.uv = or disjoint i32 %i.uu, %i.us            ; 3 uses
  store i32 3, ptr %i.k, align 4, !tbaa !117
  %i.uw = trunc nuw nsw i32 %i.uv to i16
  store i16 %i.uw, ptr %i.ss, align 4, !tbaa !154
  %.not82.i144 = icmp eq i32 %i.uv, 69
  br i1 %.not82.i144, label %bb.cu, label %.loopexit365

readFixedNumber.exit.thread.i:                    ; preds = %bb.ct, %bb.cs
  store i16 0, ptr %i.ss, align 4, !tbaa !154
  br label %.loopexit365

.loopexit365:                                     ; preds = %readFixedNumber.exit.i, %readFixedNumber.exit.thread.i
  %i.ux = phi i32 [ 0, %readFixedNumber.exit.thread.i ], [ %i.uv, %readFixedNumber.exit.i ]
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.290, i32 noundef %i.ux, i32 noundef 69) #24
  br label %bb.eh

bb.cu:                                            ; preds = %readFixedNumber.exit.i
  %i.uy = load ptr, ptr %i.tc, align 8, !tbaa !114 ; 20 uses
  store i32 1, ptr %i.uy, align 8, !tbaa !120
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 16
  store i32 1, ptr %i.uz, align 8, !tbaa !121
  %i.va = getelementptr inbounds nuw i8, ptr %i.uy, i64 8
  store ptr @containedTy, ptr %i.va, align 8, !tbaa !122
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uy, i64 24
  store i32 8, ptr %i.vb, align 8, !tbaa !115
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uy, i64 20
  store i32 8, ptr %i.vc, align 4, !tbaa !119
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uy, i64 32
  store i32 1, ptr %i.vd, align 8, !tbaa !120
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uy, i64 48
  store i32 1, ptr %i.ve, align 8, !tbaa !121
  %i.vf = getelementptr inbounds nuw i8, ptr %i.uy, i64 40
  store ptr getelementptr inbounds nuw (i8, ptr @containedTy, i64 2), ptr %i.vf, align 8, !tbaa !122
  %i.vg = getelementptr inbounds nuw i8, ptr %i.uy, i64 56
  store i32 8, ptr %i.vg, align 8, !tbaa !115
  %i.vh = getelementptr inbounds nuw i8, ptr %i.uy, i64 52
  store i32 8, ptr %i.vh, align 4, !tbaa !119
  %i.vi = getelementptr inbounds nuw i8, ptr %i.uy, i64 64
  store i32 1, ptr %i.vi, align 8, !tbaa !120
  %i.vj = getelementptr inbounds nuw i8, ptr %i.uy, i64 80
  store i32 1, ptr %i.vj, align 8, !tbaa !121
  %i.vk = getelementptr inbounds nuw i8, ptr %i.uy, i64 72
  store ptr getelementptr inbounds nuw (i8, ptr @containedTy, i64 4), ptr %i.vk, align 8, !tbaa !122
  %i.vl = getelementptr inbounds nuw i8, ptr %i.uy, i64 88
  store i32 8, ptr %i.vl, align 8, !tbaa !115
  %i.vm = getelementptr inbounds nuw i8, ptr %i.uy, i64 84
  store i32 8, ptr %i.vm, align 4, !tbaa !119
  %i.vn = getelementptr inbounds nuw i8, ptr %i.uy, i64 96
  store i32 1, ptr %i.vn, align 8, !tbaa !120
  %i.vo = getelementptr inbounds nuw i8, ptr %i.uy, i64 112
  store i32 1, ptr %i.vo, align 8, !tbaa !121
  %i.vp = getelementptr inbounds nuw i8, ptr %i.uy, i64 104
  store ptr getelementptr inbounds nuw (i8, ptr @containedTy, i64 6), ptr %i.vp, align 8, !tbaa !122
  %i.vq = getelementptr inbounds nuw i8, ptr %i.uy, i64 120
  store i32 8, ptr %i.vq, align 8, !tbaa !115
  %i.vr = getelementptr inbounds nuw i8, ptr %i.uy, i64 116
  store i32 8, ptr %i.vr, align 4, !tbaa !119
  %i.vs = load i32, ptr %i.sr, align 8, !tbaa !145
  %i.vt = add i32 %i.vs, -6
  %i.vu = icmp ult i32 %i.vt, -5
  br i1 %i.vu, label %.lr.ph.i, label %parseLSig.exit.jt1

.preheader.i:                                     ; preds = %bb.ec
  %.pre186.i = add i32 %i.abo, -6
  %i.vv = icmp ult i32 %.pre186.i, -5
  br i1 %i.vv, label %.lr.ph151.i, label %parseLSig.exit.jt1

.lr.ph.i:                                         ; preds = %bb.cu, %bb.ec
  %indvars.iv180.i = phi i64 [ %indvars.iv.next181.i, %bb.ec ], [ 4, %bb.cu ] ; 7 uses
  %i.vw = load ptr, ptr %i.tc, align 8, !tbaa !114
  %i.vx = getelementptr inbounds nuw [32 x i8], ptr %i.vw, i64 %indvars.iv180.i ; 19 uses
  %i.vy = load i32, ptr %i.k, align 4, !tbaa !117 ; 4 uses
  %i.vz = add i32 %i.vy, 1                        ; 4 uses
  %i.wa = icmp ugt i32 %i.vz, %i.ti
  br i1 %i.wa, label %bb.cv, label %.preheader.i85.i

.preheader.i85.i:                                 ; preds = %.lr.ph.i
  %.not113.i = icmp eq i32 %i.vy, -1
  br i1 %.not113.i, label %typealign.exit.i, label %.lr.ph.preheader.i89.i

.lr.ph.preheader.i89.i:                           ; preds = %.preheader.i85.i
  %i.wb = zext i32 %i.vy to i64
  %i.wc = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.wb
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !123
  %i.we = zext i8 %i.wd to i32                    ; 3 uses
  %i.wf = and i32 %i.we, 240
  %.not.i94.i = icmp eq i32 %i.wf, 96
  br i1 %.not.i94.i, label %bb.cy, label %bb.cw, !prof !134

bb.cv:                                            ; preds = %.lr.ph.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.288) #24
  br label %bb.cx

bb.cw:                                            ; preds = %.lr.ph.preheader.i89.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.we) #24
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.291) #24
  br label %bb.eh

bb.cy:                                            ; preds = %.lr.ph.preheader.i89.i
  %i.wg = and i32 %i.we, 15                       ; 4 uses
  store i32 %i.vz, ptr %i.k, align 4, !tbaa !117
  %trunc.i = trunc nuw nsw i32 %i.wg to i8
  switch i8 %trunc.i, label %typealign.exit.i [
    i8 1, label %bb.cz
    i8 2, label %bb.dd
    i8 3, label %bb.dd
    i8 4, label %bb.df
    i8 5, label %bb.dm
  ]

bb.cz:                                            ; preds = %bb.cy
  store i32 0, ptr %i.vx, align 8, !tbaa !120
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vx, i64 24
  store i32 8, ptr %i.wh, align 8, !tbaa !115
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vx, i64 20
  store i32 8, ptr %i.wi, align 4, !tbaa !119
  call fastcc void @parseType(ptr noundef nonnull %0, ptr noundef nonnull %i.vx, ptr noundef nonnull readonly %i.sj, ptr noundef %i.k, i32 noundef %i.ti, ptr noundef %i.l)
  %i.wj = load i8, ptr %i.l, align 1, !tbaa !132, !range !136, !noundef !137
  %i.wk = trunc nuw i8 %i.wj to i1
  br i1 %i.wk, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.wl = trunc nuw i64 %indvars.iv180.i to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.292, i32 noundef %i.wl) #24
  br label %bb.eh

bb.db:                                            ; preds = %bb.cz
  %i.wm = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  %i.wn = load i32, ptr %i.wm, align 8, !tbaa !121
  %.not84.i = icmp eq i32 %i.wn, 0
  br i1 %.not84.i, label %bb.dc, label %bb.ec

bb.dc:                                            ; preds = %bb.db
  %i.wo = trunc nuw i64 %indvars.iv180.i to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.293, i32 noundef %i.wo) #24
  br label %bb.eh

bb.dd:                                            ; preds = %bb.cy, %bb.cy
  %i.wp = icmp eq i32 %i.wg, 2
  %i.wq = select i1 %i.wp, i32 3, i32 2
  store i32 %i.wq, ptr %i.vx, align 8, !tbaa !120
  %i.wr = getelementptr inbounds nuw i8, ptr %i.vx, i64 24
  %i.ws = getelementptr inbounds nuw i8, ptr %i.vx, i64 20
  store i32 0, ptr %i.ws, align 4, !tbaa !119
  store i32 8, ptr %i.wr, align 8, !tbaa !115
  call fastcc void @parseType(ptr noundef nonnull %0, ptr noundef nonnull %i.vx, ptr noundef nonnull readonly %i.sj, ptr noundef %i.k, i32 noundef %i.ti, ptr noundef %i.l)
  %i.wt = load i8, ptr %i.l, align 1, !tbaa !132, !range !136, !noundef !137
  %i.wu = trunc nuw i8 %i.wt to i1
  br i1 %i.wu, label %bb.ec, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.wv = trunc nuw i64 %indvars.iv180.i to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.292, i32 noundef %i.wv) #24
  br label %bb.eh

bb.df:                                            ; preds = %bb.cy
  store i32 4, ptr %i.vx, align 8, !tbaa !120
  %i.ww = zext i32 %i.vz to i64
  %i.wx = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.ww
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !123
  %.fr4239 = freeze i8 %i.wy                      ; 3 uses
  %i.wz = zext i8 %.fr4239 to i32                 ; 2 uses
  %i.xa = add nsw i32 %i.wz, -96                  ; 4 uses
  %i.xb = icmp ugt i32 %i.xa, 16
  br i1 %i.xb, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.wz) #24
  br label %bb.dl

bb.dh:                                            ; preds = %bb.df
  %i.xc = add i32 %i.vy, 2                        ; 3 uses
  %i.xd = add i32 %i.xa, %i.xc                    ; 4 uses
  %i.xe = icmp ugt i32 %i.xd, %i.ti
  br i1 %i.xe, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %bb.dl

bb.dj:                                            ; preds = %bb.dh
  %i.xf = icmp ne i8 %.fr4239, 96
  %i.xg = icmp ult i32 %i.xc, %i.xd
  %or.cond.i146 = and i1 %i.xf, %i.xg
  br i1 %or.cond.i146, label %.lr.ph.i102.preheader.i, label %readNumber.exit.i

.lr.ph.i102.preheader.i:                          ; preds = %bb.dj
  %i.xh = zext i32 %i.xc to i64                   ; 2 uses
  %i.xi = zext nneg i32 %i.xa to i64              ; 2 uses
  %xtraiter4012 = and i64 %i.xi, 1
  %i.xj = icmp eq i32 %i.xa, 1
  br i1 %i.xj, label %.lr.ph.i102.i.epil.preheader, label %.lr.ph.i102.preheader.i.new

.lr.ph.i102.preheader.i.new:                      ; preds = %.lr.ph.i102.preheader.i
  %unroll_iter4016 = and i64 %i.xi, 30
  br label %.lr.ph.i102.i

.lr.ph.i102.i:                                    ; preds = %bb.dk, %.lr.ph.i102.preheader.i.new
  %indvars.iv.i147 = phi i64 [ %i.xh, %.lr.ph.i102.preheader.i.new ], [ %indvars.iv.next.i150.1, %bb.dk ] ; 3 uses
  %.03346.i.i = phi i32 [ 0, %.lr.ph.i102.preheader.i.new ], [ %i.yd, %bb.dk ] ; 3 uses
  %.03645.i.i148 = phi i64 [ 0, %.lr.ph.i102.preheader.i.new ], [ %i.yc, %bb.dk ]
  %niter4017 = phi i64 [ 0, %.lr.ph.i102.preheader.i.new ], [ %niter4017.next.1, %bb.dk ]
  %i.xk = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i147
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !123 ; 2 uses
  %i.xm = zext i8 %i.xl to i64                    ; 2 uses
  %i.xn = and i64 %i.xm, 240
  %.not.i103.i = icmp eq i64 %i.xn, 96
  br i1 %.not.i103.i, label %.lr.ph.i102.i.1, label %.thread.i.i149, !prof !134

.thread.i.i149:                                   ; preds = %.lr.ph.i102.i.epil.preheader, %.lr.ph.i102.i, %.lr.ph.i102.i.1
  %.lcssa3883.a = phi i8 [ %i.xr, %.lr.ph.i102.i.1 ], [ %i.xl, %.lr.ph.i102.i ], [ %i.yf, %.lr.ph.i102.i.epil.preheader ]
  %i.xo = sext i8 %.lcssa3883.a to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.xo) #24
  br label %bb.dl

.lr.ph.i102.i.1:                                  ; preds = %.lr.ph.i102.i
  %i.xp = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i147
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 1
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !123 ; 2 uses
  %i.xs = zext i8 %i.xr to i64                    ; 2 uses
  %i.xt = and i64 %i.xs, 240
  %.not.i103.i.1 = icmp eq i64 %i.xt, 96
  br i1 %.not.i103.i.1, label %bb.dk, label %.thread.i.i149, !prof !134

bb.dk:                                            ; preds = %.lr.ph.i102.i.1
  %i.xu = or disjoint i32 %.03346.i.i, 4
  %i.xv = and i64 %i.xm, 15
  %i.xw = zext nneg i32 %.03346.i.i to i64
  %i.xx = shl i64 %i.xv, %i.xw
  %i.xy = or i64 %i.xx, %.03645.i.i148
  %i.xz = and i64 %i.xs, 15
  %i.ya = zext nneg i32 %i.xu to i64
  %i.yb = shl i64 %i.xz, %i.ya
  %i.yc = or i64 %i.yb, %i.xy                     ; 3 uses
  %i.yd = add i32 %.03346.i.i, 8                  ; 2 uses
  %indvars.iv.next.i150.1 = add nuw nsw i64 %indvars.iv.i147, 2 ; 2 uses
  %niter4017.next.1 = add i64 %niter4017, 2       ; 2 uses
  %niter4017.ncmp.1 = icmp eq i64 %niter4017.next.1, %unroll_iter4016
  br i1 %niter4017.ncmp.1, label %._crit_edge.i100.loopexit.i.unr-lcssa, label %.lr.ph.i102.i

._crit_edge.i100.loopexit.i.unr-lcssa:            ; preds = %bb.dk
  %lcmp.mod4013.not = icmp eq i64 %xtraiter4012, 0
  br i1 %lcmp.mod4013.not, label %._crit_edge.i100.loopexit.i, label %.lr.ph.i102.i.epil.preheader

.lr.ph.i102.i.epil.preheader:                     ; preds = %._crit_edge.i100.loopexit.i.unr-lcssa, %.lr.ph.i102.preheader.i
  %indvars.iv.i147.epil.init = phi i64 [ %i.xh, %.lr.ph.i102.preheader.i ], [ %indvars.iv.next.i150.1, %._crit_edge.i100.loopexit.i.unr-lcssa ]
  %.03346.i.i.epil.init = phi i32 [ 0, %.lr.ph.i102.preheader.i ], [ %i.yd, %._crit_edge.i100.loopexit.i.unr-lcssa ]
  %.03645.i.i148.epil.init = phi i64 [ 0, %.lr.ph.i102.preheader.i ], [ %i.yc, %._crit_edge.i100.loopexit.i.unr-lcssa ]
  %lcmp.mod4015 = trunc i8 %.fr4239 to i1
  call void @llvm.assume(i1 %lcmp.mod4015)
  %i.ye = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i147.epil.init
  %i.yf = load i8, ptr %i.ye, align 1, !tbaa !123 ; 2 uses
  %i.yg = zext i8 %i.yf to i64                    ; 2 uses
  %i.yh = and i64 %i.yg, 240
  %.not.i103.i.epil = icmp eq i64 %i.yh, 96
  br i1 %.not.i103.i.epil, label %._crit_edge.i100.loopexit.i.epilog-lcssa, label %.thread.i.i149, !prof !134

._crit_edge.i100.loopexit.i.epilog-lcssa:         ; preds = %.lr.ph.i102.i.epil.preheader
  %i.yi = and i64 %i.yg, 15
  %i.yj = zext nneg i32 %.03346.i.i.epil.init to i64
  %i.yk = shl i64 %i.yi, %i.yj
  %i.yl = or i64 %i.yk, %.03645.i.i148.epil.init
  br label %._crit_edge.i100.loopexit.i

._crit_edge.i100.loopexit.i:                      ; preds = %._crit_edge.i100.loopexit.i.unr-lcssa, %._crit_edge.i100.loopexit.i.epilog-lcssa
  %.lcssa3885 = phi i64 [ %i.yc, %._crit_edge.i100.loopexit.i.unr-lcssa ], [ %i.yl, %._crit_edge.i100.loopexit.i.epilog-lcssa ]
  %i.ym = trunc i64 %.lcssa3885 to i32
  br label %readNumber.exit.i

readNumber.exit.i:                                ; preds = %._crit_edge.i100.loopexit.i, %bb.dj
  %.2.i101.i = phi i32 [ 0, %bb.dj ], [ %i.ym, %._crit_edge.i100.loopexit.i ]
  store i32 %i.xd, ptr %i.k, align 4, !tbaa !117
  %i.yn = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  store i32 %.2.i101.i, ptr %i.yn, align 8, !tbaa !121
  br label %bb.dm

bb.dl:                                            ; preds = %.thread.i.i149, %bb.di, %bb.dg
  %i.yo = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  store i32 0, ptr %i.yo, align 8, !tbaa !121
  %i.yp = trunc nuw i64 %indvars.iv180.i to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.292, i32 noundef %i.yp) #24
  br label %bb.eh

bb.dm:                                            ; preds = %readNumber.exit.i, %bb.cy
  %i.yq = phi i32 [ %i.xd, %readNumber.exit.i ], [ %i.vz, %bb.cy ] ; 2 uses
  %i.yr = icmp eq i32 %i.wg, 5                    ; 2 uses
  br i1 %i.yr, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  store i32 1, ptr %i.vx, align 8, !tbaa !120
  %i.ys = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  store i32 1, ptr %i.ys, align 8, !tbaa !121
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.yt = call noalias dereferenceable_or_null(2) ptr @malloc(i64 noundef 2) #25 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.vx, i64 8 ; 4 uses
  store ptr %i.yt, ptr %i.yu, align 8, !tbaa !122
  %.not83.i = icmp eq ptr %i.yt, null
  br i1 %.not83.i, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.294) #24
  br label %bb.eh

bb.dq:                                            ; preds = %bb.do
  %i.yv = zext i32 %i.yq to i64
  %i.yw = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.yv
  %i.yx = load i8, ptr %i.yw, align 1, !tbaa !123
  %.fr4242 = freeze i8 %i.yx                      ; 3 uses
  %i.yy = zext i8 %.fr4242 to i32                 ; 2 uses
  %i.yz = add nsw i32 %i.yy, -96                  ; 4 uses
  %i.za = icmp ugt i32 %i.yz, 16
  br i1 %i.za, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.yy) #24
  store i8 0, ptr %i.l, align 1, !tbaa !132
  br label %readNumber.exit.i.i

bb.ds:                                            ; preds = %bb.dq
  %i.zb = add i32 %i.yq, 1                        ; 3 uses
  %i.zc = add i32 %i.yz, %i.zb                    ; 4 uses
  %i.zd = icmp ugt i32 %i.zc, %i.ti
  br i1 %i.zd, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  store i8 0, ptr %i.l, align 1, !tbaa !132
  br label %readNumber.exit.i.i

bb.du:                                            ; preds = %bb.ds
  %i.ze = icmp eq i8 %.fr4242, 96
  br i1 %i.ze, label %bb.dv, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.du
  %i.zf = icmp ult i32 %i.zb, %i.zc
  br i1 %i.zf, label %.lr.ph.i.preheader.i.i, label %._crit_edge.i.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %.preheader.i.i.i
  %i.zg = zext i32 %i.zb to i64                   ; 2 uses
  %i.zh = zext nneg i32 %i.yz to i64              ; 2 uses
  %xtraiter4022 = and i64 %i.zh, 1
  %i.zi = icmp eq i32 %i.yz, 1
  br i1 %i.zi, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.preheader.i.i.new

.lr.ph.i.preheader.i.i.new:                       ; preds = %.lr.ph.i.preheader.i.i
  %unroll_iter4026 = and i64 %i.zh, 30
  br label %.lr.ph.i.i.i

bb.dv:                                            ; preds = %bb.du
  store i32 %i.zc, ptr %i.k, align 4, !tbaa !117
  br label %readNumber.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.dw, %.lr.ph.i.preheader.i.i.new
  %indvars.iv.i106.i = phi i64 [ %i.zg, %.lr.ph.i.preheader.i.i.new ], [ %indvars.iv.next.i107.i.1, %bb.dw ] ; 3 uses
  %.03346.i.i.i = phi i32 [ 0, %.lr.ph.i.preheader.i.i.new ], [ %i.aac, %bb.dw ] ; 3 uses
  %.03645.i.i.i = phi i64 [ 0, %.lr.ph.i.preheader.i.i.new ], [ %i.aab, %bb.dw ]
  %niter4027 = phi i64 [ 0, %.lr.ph.i.preheader.i.i.new ], [ %niter4027.next.1, %bb.dw ]
  %i.zj = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i106.i
  %i.zk = load i8, ptr %i.zj, align 1, !tbaa !123 ; 2 uses
  %i.zl = zext i8 %i.zk to i64                    ; 2 uses
  %i.zm = and i64 %i.zl, 240
  %.not.i.i.i = icmp eq i64 %i.zm, 96
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i.1, label %.thread.i.i.i, !prof !134

.thread.i.i.i:                                    ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.epil.preheader
  %.lcssa3886 = phi i8 [ %i.aae, %.lr.ph.i.i.i.epil.preheader ], [ %i.zk, %.lr.ph.i.i.i ], [ %i.zq, %.lr.ph.i.i.i.1 ]
  %i.zn = sext i8 %.lcssa3886 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.zn) #24
  store i8 0, ptr %i.l, align 1, !tbaa !132
  br label %readNumber.exit.i.i

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i
  %i.zo = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i106.i
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 1
  %i.zq = load i8, ptr %i.zp, align 1, !tbaa !123 ; 2 uses
  %i.zr = zext i8 %i.zq to i64                    ; 2 uses
  %i.zs = and i64 %i.zr, 240
  %.not.i.i.i.1 = icmp eq i64 %i.zs, 96
  br i1 %.not.i.i.i.1, label %bb.dw, label %.thread.i.i.i, !prof !134

bb.dw:                                            ; preds = %.lr.ph.i.i.i.1
  %i.zt = or disjoint i32 %.03346.i.i.i, 4
  %i.zu = and i64 %i.zl, 15
  %i.zv = zext nneg i32 %.03346.i.i.i to i64
  %i.zw = shl i64 %i.zu, %i.zv
  %i.zx = or i64 %i.zw, %.03645.i.i.i
  %i.zy = and i64 %i.zr, 15
  %i.zz = zext nneg i32 %i.zt to i64
  %i.aaa = shl i64 %i.zy, %i.zz
  %i.aab = or i64 %i.aaa, %i.zx                   ; 3 uses
  %i.aac = add i32 %.03346.i.i.i, 8               ; 2 uses
  %indvars.iv.next.i107.i.1 = add nuw nsw i64 %indvars.iv.i106.i, 2 ; 2 uses
  %niter4027.next.1 = add i64 %niter4027, 2       ; 2 uses
  %niter4027.ncmp.1 = icmp eq i64 %niter4027.next.1, %unroll_iter4026
  br i1 %niter4027.ncmp.1, label %._crit_edge.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

._crit_edge.i.i.i.loopexit.unr-lcssa:             ; preds = %bb.dw
  %lcmp.mod4023.not = icmp eq i64 %xtraiter4022, 0
  br i1 %lcmp.mod4023.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.preheader.i.i
  %indvars.iv.i106.i.epil.init = phi i64 [ %i.zg, %.lr.ph.i.preheader.i.i ], [ %indvars.iv.next.i107.i.1, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %.03346.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader.i.i ], [ %i.aac, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %.03645.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i.i ], [ %i.aab, %._crit_edge.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod4025 = trunc i8 %.fr4242 to i1
  call void @llvm.assume(i1 %lcmp.mod4025)
  %i.aad = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i106.i.epil.init
  %i.aae = load i8, ptr %i.aad, align 1, !tbaa !123 ; 2 uses
  %i.aaf = zext i8 %i.aae to i64                  ; 2 uses
  %i.aag = and i64 %i.aaf, 240
  %.not.i.i.i.epil = icmp eq i64 %i.aag, 96
  br i1 %.not.i.i.i.epil, label %._crit_edge.i.i.i.loopexit.epilog-lcssa, label %.thread.i.i.i, !prof !134

._crit_edge.i.i.i.loopexit.epilog-lcssa:          ; preds = %.lr.ph.i.i.i.epil.preheader
  %i.aah = and i64 %i.aaf, 15
  %i.aai = zext nneg i32 %.03346.i.i.i.epil.init to i64
  %i.aaj = shl i64 %i.aah, %i.aai
  %i.aak = or i64 %i.aaj, %.03645.i.i.i.epil.init
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.i.i.i.loopexit.epilog-lcssa, %._crit_edge.i.i.i.loopexit.unr-lcssa, %.preheader.i.i.i
  %.036.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.aab, %._crit_edge.i.i.i.loopexit.unr-lcssa ], [ %i.aak, %._crit_edge.i.i.i.loopexit.epilog-lcssa ]
  store i32 %i.zc, ptr %i.k, align 4, !tbaa !117
  br label %readNumber.exit.i.i

readNumber.exit.i.i:                              ; preds = %._crit_edge.i.i.i, %.thread.i.i.i, %bb.dv, %bb.dt, %bb.dr
  %i.aal = phi i1 [ false, %bb.dr ], [ false, %bb.dt ], [ true, %bb.dv ], [ false, %.thread.i.i.i ], [ true, %._crit_edge.i.i.i ]
  %.2.i.i.i = phi i64 [ 0, %bb.dr ], [ 0, %bb.dt ], [ 0, %bb.dv ], [ 0, %.thread.i.i.i ], [ %.036.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.aam = load i32, ptr %i.sr, align 8, !tbaa !145
  %i.aan = load i16, ptr %i.ss, align 4, !tbaa !154
  %i.aao = zext i16 %i.aan to i32
  %i.aap = add i32 %i.aam, %i.aao
  %i.aaq = zext i32 %i.aap to i64
  %.not.i105.i = icmp ult i64 %.2.i.i.i, %i.aaq
  br i1 %.not.i105.i, label %readTypeID.exit.i, label %readTypeID.exit.thread.i

readTypeID.exit.thread.i:                         ; preds = %readNumber.exit.i.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.297, i64 noundef %.2.i.i.i) #24
  %i.aar = load ptr, ptr %i.yu, align 8, !tbaa !122
  store i16 -1, ptr %i.aar, align 2, !tbaa !113
  br label %.loopexit208.i

readTypeID.exit.i:                                ; preds = %readNumber.exit.i.i
  %i.aas = trunc i64 %.2.i.i.i to i16             ; 2 uses
  %i.aat = load ptr, ptr %i.yu, align 8, !tbaa !122
  store i16 %i.aas, ptr %i.aat, align 2, !tbaa !113
  br i1 %i.aal, label %bb.dx, label %.loopexit208.i

.loopexit208.i:                                   ; preds = %readTypeID.exit.i, %readTypeID.exit.thread.i
  %i.aau = trunc nuw i64 %indvars.iv180.i to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.292, i32 noundef %i.aau) #24
  br label %bb.eh

bb.dx:                                            ; preds = %readTypeID.exit.i
  br i1 %i.yr, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.aav = getelementptr inbounds nuw i8, ptr %i.vx, i64 24
  store i32 8, ptr %i.aav, align 8, !tbaa !115
  br label %.thread.i152

bb.dz:                                            ; preds = %bb.dx
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  %i.aax = load i32, ptr %i.aaw, align 8, !tbaa !121
  %i.aay = call fastcc i32 @typesize(ptr noundef nonnull %0, i16 noundef zeroext %i.aas)
  %i.aaz = mul i32 %i.aay, %i.aax
  %i.aba = getelementptr inbounds nuw i8, ptr %i.vx, i64 20
  store i32 %i.aaz, ptr %i.aba, align 4, !tbaa !119
  %i.abb = load ptr, ptr %i.yu, align 8, !tbaa !122
  %i.abc = load i16, ptr %i.abb, align 2, !tbaa !113
  %i.abd = and i16 %i.abc, 32767                  ; 3 uses
  %i.abe = icmp samesign ult i16 %i.abd, 65
  br i1 %i.abe, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.abf = call fastcc i32 @typesize(ptr noundef nonnull %0, i16 noundef zeroext %i.abd)
  %i.abg = call i32 @llvm.umax.i32(i32 %i.abf, i32 1)
  br label %.thread.i152

bb.eb:                                            ; preds = %bb.dz
  %i.abh = zext nneg i16 %i.abd to i64
  %i.abi = load ptr, ptr %i.tc, align 8, !tbaa !114
  %i.abj = add nuw nsw i64 %i.abh, 4294967231
  %i.abk = and i64 %i.abj, 4294967295
  %i.abl = getelementptr inbounds nuw [32 x i8], ptr %i.abi, i64 %i.abk
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 24
  %i.abn = load i32, ptr %i.abm, align 8, !tbaa !115
  br label %.thread.i152

typealign.exit.i:                                 ; preds = %bb.cy, %.preheader.i85.i
  %.0.i108.i = phi i32 [ 0, %.preheader.i85.i ], [ %i.wg, %bb.cy ]
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.295, i32 noundef %.0.i108.i) #24
  br label %bb.eh

.thread.i152:                                     ; preds = %bb.eb, %bb.ea, %bb.dy
  %.sink275.i = phi i64 [ 20, %bb.dy ], [ 24, %bb.ea ], [ 24, %bb.eb ]
  %.sink.i = phi i32 [ 8, %bb.dy ], [ %i.abg, %bb.ea ], [ %i.abn, %bb.eb ]
  %5 = getelementptr inbounds nuw i8, ptr %i.vx, i64 %.sink275.i
  store i32 %.sink.i, ptr %5, align 4, !tbaa !117
  br label %bb.ec

bb.ec:                                            ; preds = %.thread.i152, %bb.dd, %bb.db
  %indvars.iv.next181.i = add nuw nsw i64 %indvars.iv180.i, 1 ; 2 uses
  %i.abo = load i32, ptr %i.sr, align 8, !tbaa !145 ; 3 uses
  %i.abp = add i32 %i.abo, -1
  %i.abq = zext i32 %i.abp to i64
  %i.abr = icmp samesign ult i64 %indvars.iv.next181.i, %i.abq
  br i1 %i.abr, label %.lr.ph.i, label %.preheader.i

.lr.ph151.i:                                      ; preds = %.preheader.i, %bb.eg
  %i.abs = phi i32 [ %i.act, %bb.eg ], [ %i.abo, %.preheader.i ]
  %indvars.iv183.i = phi i64 [ %indvars.iv.next184.i, %bb.eg ], [ 4, %.preheader.i ] ; 2 uses
  %i.abt = load ptr, ptr %i.tc, align 8, !tbaa !114
  %i.abu = getelementptr inbounds nuw [32 x i8], ptr %i.abt, i64 %indvars.iv183.i ; 5 uses
  %i.abv = load i32, ptr %i.abu, align 8, !tbaa !120
  %i.abw = icmp eq i32 %i.abv, 4
  br i1 %i.abw, label %bb.ed, label %bb.eg

bb.ed:                                            ; preds = %.lr.ph151.i
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abu, i64 16
  %i.aby = load i32, ptr %i.abx, align 8, !tbaa !121
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abu, i64 8 ; 2 uses
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !122
  %i.acb = load i16, ptr %i.aca, align 2, !tbaa !113
  %i.acc = call fastcc i32 @typesize(ptr noundef nonnull %0, i16 noundef zeroext %i.acb)
  %i.acd = mul i32 %i.acc, %i.aby
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abu, i64 20
  store i32 %i.acd, ptr %i.ace, align 4, !tbaa !119
  %i.acf = load ptr, ptr %i.abz, align 8, !tbaa !122
  %i.acg = load i16, ptr %i.acf, align 2, !tbaa !113
  %i.ach = and i16 %i.acg, 32767                  ; 3 uses
  %i.aci = icmp samesign ult i16 %i.ach, 65
  br i1 %i.aci, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.acj = call fastcc i32 @typesize(ptr noundef nonnull %0, i16 noundef zeroext %i.ach)
  %i.ack = call i32 @llvm.umax.i32(i32 %i.acj, i32 1)
  br label %typealign.exit110.i

bb.ef:                                            ; preds = %bb.ed
  %i.acl = zext nneg i16 %i.ach to i64
  %i.acm = load ptr, ptr %i.tc, align 8, !tbaa !114
  %i.acn = add nuw nsw i64 %i.acl, 4294967231
  %i.aco = and i64 %i.acn, 4294967295
  %i.acp = getelementptr inbounds nuw [32 x i8], ptr %i.acm, i64 %i.aco
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 24
  %i.acr = load i32, ptr %i.acq, align 8, !tbaa !115
  br label %typealign.exit110.i

typealign.exit110.i:                              ; preds = %bb.ef, %bb.ee
  %.0.i109.i = phi i32 [ %i.ack, %bb.ee ], [ %i.acr, %bb.ef ]
  %i.acs = getelementptr inbounds nuw i8, ptr %i.abu, i64 24
  store i32 %.0.i109.i, ptr %i.acs, align 8, !tbaa !115
  %.pre.i145 = load i32, ptr %i.sr, align 8, !tbaa !145
  br label %bb.eg

bb.eg:                                            ; preds = %typealign.exit110.i, %.lr.ph151.i
  %i.act = phi i32 [ %.pre.i145, %typealign.exit110.i ], [ %i.abs, %.lr.ph151.i ] ; 2 uses
  %indvars.iv.next184.i = add nuw nsw i64 %indvars.iv183.i, 1 ; 2 uses
  %i.acu = add i32 %i.act, -1
  %i.acv = zext i32 %i.acu to i64
  %i.acw = icmp samesign ult i64 %indvars.iv.next184.i, %i.acv
  br i1 %i.acw, label %.lr.ph151.i, label %parseLSig.exit.jt1

bb.eh:                                            ; preds = %bb.cq, %.loopexit365, %typealign.exit.i, %bb.dl, %bb.dp, %.loopexit208.i, %bb.de, %bb.da, %bb.dc, %bb.cx
  %.2.i.ph = phi i32 [ 4, %bb.cx ], [ 4, %bb.dc ], [ 4, %bb.da ], [ 4, %bb.de ], [ 4, %.loopexit208.i ], [ 4, %bb.dp ], [ 4, %bb.dl ], [ 4, %typealign.exit.i ], [ 22, %.loopexit365 ], [ 4, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #24
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.28, i32 noundef 2) #24
  call void @free(ptr noundef %i.sj) #24
  br label %bb.qb

bb.ei:                                            ; preds = %bb.cl
  %i.acx = zext i8 %i.ty to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.298, i32 noundef %i.acx) #24
  br label %bb.fw

bb.ej:                                            ; preds = %bb.cl
  %i.acy = load i8, ptr %i.sl, align 1, !tbaa !123
  %.fr4245 = freeze i8 %i.acy                     ; 4 uses
  %i.acz = zext i8 %.fr4245 to i32                ; 3 uses
  %i.ada = add i8 %.fr4245, -113
  %i.adb = icmp ult i8 %i.ada, -17
  br i1 %i.adb, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.acz) #24
  br label %bb.fw

bb.el:                                            ; preds = %bb.ej
  %i.adc = add nsw i32 %i.acz, -94                ; 3 uses
  %i.add = icmp ugt i32 %i.adc, %i.tx
  br i1 %i.add, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %bb.fw

bb.en:                                            ; preds = %bb.el
  %i.ade = icmp eq i8 %.fr4245, 96
  %.pre = zext i32 %i.adc to i64                  ; 3 uses
  br i1 %i.ade, label %readNumber.exit.thread145.i, label %.lr.ph.i.i156.preheader

.lr.ph.i.i156.preheader:                          ; preds = %bb.en
  %xtraiter4028 = and i64 %.pre, 1
  %i.adf = icmp eq i32 %i.adc, 3
  br i1 %i.adf, label %.lr.ph.i.i156.epil.preheader, label %.lr.ph.i.i156.preheader.new

.lr.ph.i.i156.preheader.new:                      ; preds = %.lr.ph.i.i156.preheader
  %i.adg = and i64 %.pre, 4294967294
  %i.adh = add nsw i64 %i.adg, -4
  br label %.lr.ph.i.i156

.lr.ph.i.i156:                                    ; preds = %bb.eo, %.lr.ph.i.i156.preheader.new
  %indvars.iv118.i = phi i64 [ 0, %.lr.ph.i.i156.preheader.new ], [ %indvars.iv.next119.i.1, %bb.eo ] ; 3 uses
  %indvars.iv.i157 = phi i64 [ 2, %.lr.ph.i.i156.preheader.new ], [ %indvars.iv.next.i161.1, %bb.eo ] ; 3 uses
  %.03645.i.i158 = phi i64 [ 0, %.lr.ph.i.i156.preheader.new ], [ %i.adx, %bb.eo ]
  %niter4033 = phi i64 [ 0, %.lr.ph.i.i156.preheader.new ], [ %niter4033.next.1, %bb.eo ] ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i157
  %i.adj = load i8, ptr %i.adi, align 1, !tbaa !123 ; 2 uses
  %i.adk = zext i8 %i.adj to i64                  ; 2 uses
  %i.adl = and i64 %i.adk, 240
  %.not.i.i159 = icmp eq i64 %i.adl, 96
  br i1 %.not.i.i159, label %.lr.ph.i.i156.1, label %.thread.i.i160, !prof !134

.thread.i.i160:                                   ; preds = %.lr.ph.i.i156, %.lr.ph.i.i156.1, %.lr.ph.i.i156.epil.preheader
  %.lcssa3880.a = phi i8 [ %i.adz, %.lr.ph.i.i156.epil.preheader ], [ %i.adj, %.lr.ph.i.i156 ], [ %i.adp, %.lr.ph.i.i156.1 ]
  %i.adm = sext i8 %.lcssa3880.a to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.adm) #24
  br label %bb.fw

.lr.ph.i.i156.1:                                  ; preds = %.lr.ph.i.i156
  %i.adn = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i157
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 1
  %i.adp = load i8, ptr %i.ado, align 1, !tbaa !123 ; 2 uses
  %i.adq = zext i8 %i.adp to i64                  ; 2 uses
  %i.adr = and i64 %i.adq, 240
  %.not.i.i159.1 = icmp eq i64 %i.adr, 96
  br i1 %.not.i.i159.1, label %bb.eo, label %.thread.i.i160, !prof !134

bb.eo:                                            ; preds = %.lr.ph.i.i156.1
  %indvars.iv.next119.i = or disjoint i64 %indvars.iv118.i, 4
  %i.ads = and i64 %i.adk, 15
  %i.adt = shl i64 %i.ads, %indvars.iv118.i
  %i.adu = or i64 %i.adt, %.03645.i.i158
  %i.adv = and i64 %i.adq, 15
  %i.adw = shl i64 %i.adv, %indvars.iv.next119.i
  %i.adx = or i64 %i.adw, %i.adu                  ; 3 uses
  %indvars.iv.next119.i.1 = add nuw nsw i64 %indvars.iv118.i, 8 ; 2 uses
  %indvars.iv.next.i161.1 = add nuw nsw i64 %indvars.iv.i157, 2 ; 2 uses
  %niter4033.next.1 = add i64 %niter4033, 2
  %niter4033.ncmp.1 = icmp eq i64 %niter4033, %i.adh
  br i1 %niter4033.ncmp.1, label %readNumber.exit.i163.unr-lcssa, label %.lr.ph.i.i156

readNumber.exit.i163.unr-lcssa:                   ; preds = %bb.eo
  %lcmp.mod4029.not = icmp eq i64 %xtraiter4028, 0
  br i1 %lcmp.mod4029.not, label %readNumber.exit.i163, label %.lr.ph.i.i156.epil.preheader

.lr.ph.i.i156.epil.preheader:                     ; preds = %readNumber.exit.i163.unr-lcssa, %.lr.ph.i.i156.preheader
  %indvars.iv118.i.epil.init = phi i64 [ 0, %.lr.ph.i.i156.preheader ], [ %indvars.iv.next119.i.1, %readNumber.exit.i163.unr-lcssa ]
  %indvars.iv.i157.epil.init = phi i64 [ 2, %.lr.ph.i.i156.preheader ], [ %indvars.iv.next.i161.1, %readNumber.exit.i163.unr-lcssa ]
  %.03645.i.i158.epil.init = phi i64 [ 0, %.lr.ph.i.i156.preheader ], [ %i.adx, %readNumber.exit.i163.unr-lcssa ]
  %lcmp.mod4031 = trunc i8 %.fr4245 to i1
  call void @llvm.assume(i1 %lcmp.mod4031)
  %i.ady = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv.i157.epil.init
  %i.adz = load i8, ptr %i.ady, align 1, !tbaa !123 ; 2 uses
  %i.aea = zext i8 %i.adz to i64                  ; 2 uses
  %i.aeb = and i64 %i.aea, 240
  %.not.i.i159.epil = icmp eq i64 %i.aeb, 96
  br i1 %.not.i.i159.epil, label %readNumber.exit.i163.epilog-lcssa, label %.thread.i.i160, !prof !134

readNumber.exit.i163.epilog-lcssa:                ; preds = %.lr.ph.i.i156.epil.preheader
  %i.aec = and i64 %i.aea, 15
  %i.aed = shl i64 %i.aec, %indvars.iv118.i.epil.init
  %i.aee = or i64 %i.aed, %.03645.i.i158.epil.init
  br label %readNumber.exit.i163

readNumber.exit.i163:                             ; preds = %readNumber.exit.i163.unr-lcssa, %readNumber.exit.i163.epilog-lcssa
  %.lcssa3882 = phi i64 [ %i.adx, %readNumber.exit.i163.unr-lcssa ], [ %i.aee, %readNumber.exit.i163.epilog-lcssa ]
  %i.aef = trunc i64 %.lcssa3882 to i32           ; 3 uses
  %i.aeg = icmp ult i32 %i.so, %i.aef
  br i1 %i.aeg, label %bb.fv, label %readNumber.exit.thread145.i

readNumber.exit.thread145.i:                      ; preds = %bb.en, %readNumber.exit.i163
  %.2.i147.i = phi i32 [ %i.aef, %readNumber.exit.i163 ], [ 0, %bb.en ] ; 5 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.sj, i64 %.pre
  %i.aei = load i8, ptr %i.aeh, align 1, !tbaa !123
  %i.aej = zext i8 %i.aei to i32                  ; 2 uses
  %i.aek = add nsw i32 %i.aej, -96                ; 3 uses
  %i.ael = icmp ugt i32 %i.aek, 16
  br i1 %i.ael, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %readNumber.exit.thread145.i
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.280, i32 noundef %i.aej) #24
  br label %bb.fw

bb.eq:                                            ; preds = %readNumber.exit.thread145.i
  %i.aem = add nsw i32 %i.acz, -93                ; 2 uses
  %i.aen = add nuw nsw i32 %i.aek, %i.aem         ; 4 uses
  %i.aeo = icmp ugt i32 %i.aen, %i.tx
  br i1 %i.aeo, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.281) #24
  br label %bb.fw

bb.es:                                            ; preds = %bb.eq
  %.not188.i = icmp eq i32 %i.aek, 0
  br i1 %.not188.i, label %.sink.split.i, label %.lr.ph.i69.preheader.i

.lr.ph.i69.preheader.i:                           ; preds = %bb.es
  %i.aep = zext i32 %i.aem to i64                 ; 3 uses
  %i.aeq = zext i32 %i.aen to i64
  %i.aer = sub nsw i64 %i.aeq, %i.aep
  %i.aes = freeze i64 %i.aer                      ; 4 uses
  %xtraiter4034 = and i64 %i.aes, 1
  %i.aet = icmp eq i64 %i.aes, 1
  br i1 %i.aet, label %.lr.ph.i69.i.epil.preheader, label %.lr.ph.i69.preheader.i.new

.lr.ph.i69.preheader.i.new:                       ; preds = %.lr.ph.i69.preheader.i
  %unroll_iter4038 = and i64 %i.aes, -2
  br label %.lr.ph.i69.i

.lr.ph.i69.i:                                     ; preds = %bb.et, %.lr.ph.i69.preheader.i.new
  %indvars.iv123.i = phi i64 [ %i.aep, %.lr.ph.i69.preheader.i.new ], [ %indvars.iv.next124.i.1, %bb.et ] ; 3 uses
  %.03346.i71.i = phi i32 [ 0, %.lr.ph.i69.preheader.i.new ], [ %i.afn, %bb.et ] ; 3 uses
  %.03645.i72.i = phi i64 [ 0, %.lr.ph.i69.preheader.i.new ], [ %i.afm, %bb.et ]
  %niter4039 = phi i64 [ 0, %.lr.ph.i69.preheader.i.new ], [ %niter4039.next.1, %bb.et ]
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv123.i
  %i.aev = load i8, ptr %i.aeu, align 1, !tbaa !123 ; 2 uses
  %i.aew = zext i8 %i.aev to i64                  ; 2 uses
  %i.aex = and i64 %i.aew, 240
  %.not.i73.i = icmp eq i64 %i.aex, 96
  br i1 %.not.i73.i, label %.lr.ph.i69.i.1, label %.thread.i74.i, !prof !134

.thread.i74.i:                                    ; preds = %.lr.ph.i69.i, %.lr.ph.i69.i.1, %.lr.ph.i69.i.epil.preheader
  %.lcssa3877 = phi i8 [ %i.afp, %.lr.ph.i69.i.epil.preheader ], [ %i.aev, %.lr.ph.i69.i ], [ %i.afb, %.lr.ph.i69.i.1 ]
  %i.aey = sext i8 %.lcssa3877 to i32
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.282, i32 noundef %i.aey) #24
  br label %bb.fw

.lr.ph.i69.i.1:                                   ; preds = %.lr.ph.i69.i
  %i.aez = getelementptr inbounds nuw i8, ptr %i.sj, i64 %indvars.iv123.i
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 1
  %i.afb = load i8, ptr %i.afa, align 1, !tbaa !123 ; 2 uses
  %i.afc = zext i8 %i.afb to i64                  ; 2 uses
  %i.afd = and i64 %i.afc, 240
  %.not.i73.i.1 = icmp eq i64 %i.afd, 96
  br i1 %.not.i73.i.1, label %bb.et, label %.thread.i74.i, !prof !134

bb.et:                                            ; preds = %.lr.ph.i69.i.1
  %i.afe = or disjoint i32 %.03346.i71.i, 4
  %i.aff = and i64 %i.aew, 15
  %i.afg = zext nneg i32 %.03346.i71.i to i64
  %i.afh = shl i64 %i.aff, %i.afg
  %i.afi = or i64 %i.afh, %.03645.i72.i
  %i.afj = and i64 %i.afc, 15
  %i.afk = zext nneg i32 %i.afe to i64
  %i.afl = shl i64 %i.afj, %i.afk
  %i.afm = or i64 %i.afl, %i.afi                  ; 3 uses
  %i.afn = add i32 %.03346.i71.i, 8               ; 2 uses
  %indvars.iv.next124.i.1 = add nuw nsw i64 %indvars.iv123.i, 2 ; 2 uses
  %niter4039.next.1 = add i64 %niter4039, 2       ; 2 uses
  %niter4039.ncmp.1 = icmp eq i64 %niter4039.next.1, %unroll_iter4038
  br i1 %niter4039.ncmp.1, label %readNumber.exit77.i.unr-lcssa, label %.lr.ph.i69.i

end_hunk_0
