inline.NumInlined: 9
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@createCommonDataFile:bb.a
  %.off.i.3 = add i8 %i.fi, -45
  %switch.i.3 = icmp ult i8 %.off.i.3, 3
  %spec.select.i.3 = select i1 %switch.i.3, i8 95, i8 %i.fi
  store i8 %spec.select.i.3, ptr %i.fh, align 1
  %i.fj = getelementptr inbounds nuw i8, ptr %.05472.i, i64 4
  %i.fk = getelementptr inbounds nuw i8, ptr %.073.i, i64 4 ; 2 uses
  %i.fl = add i32 %i.ey, -4                       ; 2 uses
  %.not67.i.3 = icmp eq i32 %i.fl, 0
  br i1 %.not67.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !14

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %_ZL11allocStringj.exit70.i
  %.0.lcssa.i = phi ptr [ %i.dt, %_ZL11allocStringj.exit70.i ], [ %i.el, %vec.epilog.middle.block ], [ %i.dy, %middle.block ], [ %.lcssa392.unr, %.lr.ph.i.prol.loopexit ], [ %i.fk, %.lr.ph.i ]
  store i8 0, ptr %.0.lcssa.i, align 1
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i, %.critedge.i
  %i.fm = phi i32 [ %i.cq, %.critedge.i ], [ %i.dk, %._crit_edge.i ]
  %i.fn = add i32 %i.fm, 1
  store i32 %i.fn, ptr @_ZL9fileCount, align 4
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.ah, %bb.ad, %bb.ac, %.loopexit
  br label %.backedge, !llvm.loop !15

bb.ai:                                            ; preds = %bb.l
  tail call void @uprv_free_78(ptr noundef nonnull %i.b) #13
  %i.fo = tail call ptr @T_FileStream_stdin() #13
  %.not190 = icmp eq ptr %.0153, %i.fo
  br i1 %.not190, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @T_FileStream_close(ptr noundef %.0153) #13
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.fp = load i32, ptr @_ZL9fileCount, align 4   ; 2 uses
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fr = load ptr, ptr @stderr, align 8
  %i.fs = select i1 %i.k, ptr @.str.9, ptr %6
  %i.ft = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fr, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.fs) #15 ; 0 uses
  br label %bb.bk

bb.am:                                            ; preds = %bb.ak
  %i.fu = load ptr, ptr @_ZL5files, align 8
  %i.fv = zext i32 %i.fp to i64
  tail call void @qsort(ptr noundef %i.fu, i64 noundef %i.fv, i64 noundef 32, ptr noundef nonnull @_ZL12compareFilesPKvS0_) #13
  br i1 %.not.i, label %bb.an, label %bb.ba

bb.an:                                            ; preds = %bb.am
  %i.fw = load i32, ptr @_ZL9fileCount, align 4   ; 5 uses
  %.not250 = icmp eq i32 %i.fw, 0
  br i1 %.not250, label %._crit_edge233, label %.lr.ph232

.lr.ph232:                                        ; preds = %bb.an
  %i.fx = load i32, ptr @_ZL13basenameTotal, align 4
  %i.fy = add i32 %i.fx, 15
  %i.fz = shl i32 %i.fw, 3
  %i.ga = or disjoint i32 %i.fz, 4                ; 3 uses
  %i.gb = add i32 %i.fy, %i.ga
  %i.gc = and i32 %i.gb, -16                      ; 2 uses
  %i.gd = load ptr, ptr @_ZL5files, align 8       ; 3 uses
  %wide.trip.count = zext i32 %i.fw to i64        ; 2 uses
  %xtraiter403 = and i64 %wide.trip.count, 1
  %i.ge = icmp eq i32 %i.fw, 1
  br i1 %i.ge, label %.epil.preheader, label %.lr.ph232.new

.lr.ph232.new:                                    ; preds = %.lr.ph232
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ao, %.lr.ph232.new
  %indvars.iv280 = phi i64 [ 0, %.lr.ph232.new ], [ %indvars.iv.next281.1, %bb.ao ] ; 3 uses
  %.0156230 = phi i32 [ %i.ga, %.lr.ph232.new ], [ %i.ha, %bb.ao ] ; 2 uses
  %.0157229 = phi i32 [ %i.gc, %.lr.ph232.new ], [ %i.gw, %bb.ao ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph232.new ], [ %niter.next.1, %bb.ao ]
  %i.gf = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %indvars.iv280 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 28
  store i32 %.0157229, ptr %i.gg, align 4
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gi = load i32, ptr %i.gh, align 8
  %i.gj = add i32 %i.gi, 15
  %i.gk = and i32 %i.gj, -16
  %i.gl = add i32 %i.gk, %.0157229                ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gf, i64 20
  store i32 %.0156230, ptr %i.gm, align 4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.go = load i32, ptr %i.gn, align 8
  %i.gp = add i32 %i.go, %.0156230                ; 2 uses
  %i.gq = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %indvars.iv280 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 60
  store i32 %i.gl, ptr %i.gr, align 4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 56
  %i.gt = load i32, ptr %i.gs, align 8
  %i.gu = add i32 %i.gt, 15
  %i.gv = and i32 %i.gu, -16
  %i.gw = add i32 %i.gv, %i.gl                    ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gq, i64 52
  store i32 %i.gp, ptr %i.gx, align 4
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gq, i64 48
  %i.gz = load i32, ptr %i.gy, align 8
  %i.ha = add i32 %i.gz, %i.gp                    ; 2 uses
  %indvars.iv.next281.1 = add nuw nsw i64 %indvars.iv280, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge233.loopexit.unr-lcssa, label %bb.ao, !llvm.loop !16

._crit_edge233.loopexit.unr-lcssa:                ; preds = %bb.ao
  %lcmp.mod404.not = icmp eq i64 %xtraiter403, 0
  br i1 %lcmp.mod404.not, label %._crit_edge233, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge233.loopexit.unr-lcssa, %.lr.ph232
  %indvars.iv280.epil.init = phi i64 [ 0, %.lr.ph232 ], [ %indvars.iv.next281.1, %._crit_edge233.loopexit.unr-lcssa ]
  %.0156230.epil.init = phi i32 [ %i.ga, %.lr.ph232 ], [ %i.ha, %._crit_edge233.loopexit.unr-lcssa ]
  %.0157229.epil.init = phi i32 [ %i.gc, %.lr.ph232 ], [ %i.gw, %._crit_edge233.loopexit.unr-lcssa ]
  %lcmp.mod405 = trunc i32 %i.fw to i1
  tail call void @llvm.assume(i1 %lcmp.mod405)
  %i.hb = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %indvars.iv280.epil.init ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 28
  store i32 %.0157229.epil.init, ptr %i.hc, align 4
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 20
  store i32 %.0156230.epil.init, ptr %i.hd, align 4
  br label %._crit_edge233

._crit_edge233:                                   ; preds = %.epil.preheader, %._crit_edge233.loopexit.unr-lcssa, %bb.an
  %i.he = icmp eq ptr %5, null
  %i.hf = select i1 %i.he, ptr @.str.10, ptr %5
  %i.hg = call ptr @udata_create(ptr noundef %.0, ptr noundef nonnull %spec.store.select2, ptr noundef nonnull %spec.store.select, ptr noundef nonnull @_ZL8dataInfo, ptr noundef nonnull %i.hf, ptr noundef nonnull %i.a) #13 ; 8 uses
  %i.hh = load i32, ptr %i.a, align 4             ; 2 uses
  %i.hi = icmp slt i32 %i.hh, 1
  br i1 %i.hi, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge233
  %i.hj = load ptr, ptr @stderr, align 8
  %i.hk = call ptr @u_errorName_78(i32 noundef %i.hh) #13
  %i.hl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hj, ptr noundef nonnull @.str.11, ptr noundef %.0, ptr noundef nonnull %spec.store.select, ptr noundef nonnull %spec.store.select2, ptr noundef %i.hk) #15 ; 0 uses
  %i.hm = load i32, ptr %i.a, align 4
  call void @exit(i32 noundef %i.hm) #20
  unreachable

bb.aq:                                            ; preds = %._crit_edge233
  %i.hn = load i32, ptr @_ZL9fileCount, align 4
  call void @udata_write32(ptr noundef %i.hg, i32 noundef %i.hn) #13
  %i.ho = load i32, ptr @_ZL9fileCount, align 4
  %.not251 = icmp eq i32 %i.ho, 0
  br i1 %.not251, label %._crit_edge239.thread, label %.lr.ph236

.preheader203:                                    ; preds = %.lr.ph236
  %i.hp = icmp eq i32 %i.hy, 0
  br i1 %i.hp, label %._crit_edge239.thread, label %.lr.ph238

.lr.ph236:                                        ; preds = %bb.aq, %.lr.ph236
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %.lr.ph236 ], [ 0, %bb.aq ] ; 3 uses
  %i.hq = load ptr, ptr @_ZL5files, align 8
  %i.hr = getelementptr inbounds nuw [32 x i8], ptr %i.hq, i64 %indvars.iv283
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 20
  %i.ht = load i32, ptr %i.hs, align 4
  call void @udata_write32(ptr noundef %i.hg, i32 noundef %i.ht) #13
  %i.hu = load ptr, ptr @_ZL5files, align 8
  %i.hv = getelementptr inbounds nuw [32 x i8], ptr %i.hu, i64 %indvars.iv283
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 28
  %i.hx = load i32, ptr %i.hw, align 4
  call void @udata_write32(ptr noundef %i.hg, i32 noundef %i.hx) #13
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %i.hy = load i32, ptr @_ZL9fileCount, align 4   ; 2 uses
  %i.hz = zext i32 %i.hy to i64
  %i.ia = icmp samesign ult i64 %indvars.iv.next284, %i.hz
  br i1 %i.ia, label %.lr.ph236, label %.preheader203, !llvm.loop !17

.lr.ph238:                                        ; preds = %.preheader203, %.lr.ph238
  %indvars.iv286 = phi i64 [ %indvars.iv.next287, %.lr.ph238 ], [ 0, %.preheader203 ] ; 2 uses
  %i.ib = load ptr, ptr @_ZL5files, align 8
  %i.ic = getelementptr inbounds nuw [32 x i8], ptr %i.ib, i64 %indvars.iv286 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = load ptr, ptr %i.id, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ig = load i32, ptr %i.if, align 8
  call void @udata_writeString(ptr noundef %i.hg, ptr noundef %i.ie, i32 noundef %i.ig) #13
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %i.ih = load i32, ptr @_ZL9fileCount, align 4   ; 3 uses
  %i.ii = zext i32 %i.ih to i64
  %i.ij = icmp samesign ult i64 %indvars.iv.next287, %i.ii
  br i1 %i.ij, label %.lr.ph238, label %._crit_edge239, !llvm.loop !18

._crit_edge239.thread:                            ; preds = %.preheader203, %bb.aq
  %i.ik = load i32, ptr @_ZL13basenameTotal, align 4
  %i.il = add i32 %i.ik, 4
  br label %._crit_edge248

._crit_edge239:                                   ; preds = %.lr.ph238
  %i.im = shl i32 %i.ih, 3
  %i.in = or disjoint i32 %i.im, 4
  %i.io = load i32, ptr @_ZL13basenameTotal, align 4
  %i.ip = add i32 %i.in, %i.io                    ; 2 uses
  %.not253 = icmp eq i32 %i.ih, 0
  br i1 %.not253, label %._crit_edge248, label %.lr.ph247

bb.ar:                                            ; preds = %._crit_edge242
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %i.iq = load i32, ptr @_ZL9fileCount, align 4
  %11 = zext i32 %i.iq to i64
  %i.ir = icmp samesign ult i64 %indvars.iv.next290, %11
  br i1 %i.ir, label %.lr.ph247, label %._crit_edge248, !llvm.loop !19

.lr.ph247:                                        ; preds = %._crit_edge239, %bb.ar
  %indvars.iv289 = phi i64 [ %indvars.iv.next290, %bb.ar ], [ 0, %._crit_edge239 ] ; 5 uses
  %.3244 = phi i32 [ %.0154.lcssa, %bb.ar ], [ %i.ip, %._crit_edge239 ]
  %i.is = and i32 %.3244, 15                      ; 2 uses
  %.not195 = icmp eq i32 %i.is, 0
  br i1 %.not195, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph247
  %i.it = sub nuw nsw i32 16, %i.is
  call void @udata_writePadding(ptr noundef %i.hg, i32 noundef %i.it) #13
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph247
  %.pre290 = load ptr, ptr @_ZL5files, align 8    ; 2 uses
  br i1 %.not, label %._crit_edge291, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.iu = getelementptr inbounds nuw [32 x i8], ptr %.pre290, i64 %indvars.iv289 ; 2 uses
  %i.iv = load ptr, ptr %i.iu, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  %i.ix = load i32, ptr %i.iw, align 8            ; 2 uses
  %i.iy = zext i32 %i.ix to i64
  %i.iz = icmp eq i32 %i.ix, 1
  %i.ja = select i1 %i.iz, ptr @.str.13, ptr @.str.14
  %i.jb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %i.iv, i64 noundef %i.iy, ptr noundef nonnull %i.ja) ; 0 uses
  %.pre289 = load ptr, ptr @_ZL5files, align 8
  br label %._crit_edge291

._crit_edge291:                                   ; preds = %bb.au, %bb.at
  %i.jc = phi ptr [ %.pre289, %bb.au ], [ %.pre290, %bb.at ]
  %i.jd = getelementptr inbounds nuw [32 x i8], ptr %i.jc, i64 %indvars.iv289
  %i.je = load ptr, ptr %i.jd, align 8
  %i.jf = call ptr @T_FileStream_open(ptr noundef %i.je, ptr noundef nonnull @.str.15) #13 ; 4 uses
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %bb.av, label %.preheader

.preheader:                                       ; preds = %._crit_edge291
  %i.jh = call i32 @T_FileStream_read(ptr noundef nonnull %i.jf, ptr noundef nonnull @_ZZ20createCommonDataFileE6buffer, i32 noundef 4096) #13 ; 2 uses
  %i.ji = icmp eq i32 %i.jh, 0
  br i1 %i.ji, label %._crit_edge242, label %.lr.ph241

bb.av:                                            ; preds = %._crit_edge291
  %i.jj = load ptr, ptr @stderr, align 8
  %i.jk = load ptr, ptr @_ZL5files, align 8
  %i.jl = getelementptr inbounds nuw [32 x i8], ptr %i.jk, i64 %indvars.iv289
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jj, ptr noundef nonnull @.str.16, ptr noundef %i.jm) #15 ; 0 uses
  call void @exit(i32 noundef 4) #16
  unreachable

.lr.ph241:                                        ; preds = %.preheader, %.lr.ph241
  %i.jo = phi i32 [ %i.jq, %.lr.ph241 ], [ %i.jh, %.preheader ] ; 2 uses
  %.0154240 = phi i32 [ %i.jp, %.lr.ph241 ], [ 0, %.preheader ]
  %i.jp = add i32 %i.jo, %.0154240                ; 2 uses
  call void @udata_writeBlock(ptr noundef %i.hg, ptr noundef nonnull @_ZZ20createCommonDataFileE6buffer, i32 noundef %i.jo) #13
  %i.jq = call i32 @T_FileStream_read(ptr noundef nonnull %i.jf, ptr noundef nonnull @_ZZ20createCommonDataFileE6buffer, i32 noundef 4096) #13 ; 2 uses
  %i.jr = icmp eq i32 %i.jq, 0
  br i1 %i.jr, label %._crit_edge242, label %.lr.ph241, !llvm.loop !20

._crit_edge242:                                   ; preds = %.lr.ph241, %.preheader
  %.0154.lcssa = phi i32 [ 0, %.preheader ], [ %i.jp, %.lr.ph241 ] ; 4 uses
  call void @T_FileStream_close(ptr noundef nonnull %i.jf) #13
  %i.js = load ptr, ptr @_ZL5files, align 8
  %i.jt = getelementptr inbounds nuw [32 x i8], ptr %i.js, i64 %indvars.iv289 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.jv = load i32, ptr %i.ju, align 8            ; 3 uses
  %.not196 = icmp eq i32 %.0154.lcssa, %i.jv
  br i1 %.not196, label %bb.ar, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge242
  %i.jw = load ptr, ptr @stderr, align 8
  %i.jx = load ptr, ptr %i.jt, align 8
  %i.jy = zext i32 %.0154.lcssa to i64
  %i.jz = zext i32 %i.jv to i64
  %i.ka = icmp eq i32 %i.jv, 1
  %i.kb = select i1 %i.ka, ptr @.str.13, ptr @.str.14
  %i.kc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jw, ptr noundef nonnull @.str.17, ptr noundef %i.jx, i64 noundef %i.jy, i64 noundef %i.jz, ptr noundef nonnull %i.kb) #15 ; 0 uses
  call void @exit(i32 noundef 4) #16
  unreachable

._crit_edge248:                                   ; preds = %bb.ar, %._crit_edge239.thread, %._crit_edge239
  %.0155.lcssa = phi i32 [ %i.ip, %._crit_edge239 ], [ %i.il, %._crit_edge239.thread ], [ %.0154.lcssa, %bb.ar ]
  %i.kd = and i32 %.0155.lcssa, 15                ; 2 uses
  %.not193 = icmp eq i32 %i.kd, 0
  br i1 %.not193, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge248
  %i.ke = sub nuw nsw i32 16, %i.kd
  call void @udata_writePadding(ptr noundef %i.hg, i32 noundef %i.ke) #13
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %._crit_edge248
  %i.kf = call i32 @udata_finish(ptr noundef %i.hg, ptr noundef nonnull %i.a) #13 ; 0 uses
  %i.kg = load i32, ptr %i.a, align 4             ; 2 uses
  %i.kh = icmp slt i32 %i.kg, 1
  br i1 %i.kh, label %bb.bk, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ki = load ptr, ptr @stderr, align 8
  %i.kj = call ptr @u_errorName_78(i32 noundef %i.kg) #13
  %i.kk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ki, ptr noundef nonnull @.str.18, ptr noundef %i.kj) #15 ; 0 uses
  %i.kl = load i32, ptr %i.a, align 4
  call void @exit(i32 noundef %i.kl) #20
  unreachable

bb.ba:                                            ; preds = %bb.am
  %i.km = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @_ZZ20createCommonDataFileE6buffer, ptr noundef nonnull dereferenceable(1) %.0) #13 ; 0 uses
  %i.kn = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @_ZZ20createCommonDataFileE6buffer) #18 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr @_ZZ20createCommonDataFileE6buffer, i64 %i.kn ; 5 uses
  %.not197 = icmp eq i64 %i.kn, 0
  br i1 %.not197, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kp = getelementptr inbounds i8, ptr %i.ko, i64 -1
  %i.kq = load i8, ptr %i.kp, align 1
  %.not198 = icmp eq i8 %i.kq, 47
  br i1 %.not198, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 1
  store i8 47, ptr %i.ko, align 1
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %.5164 = phi ptr [ %i.kr, %bb.bc ], [ %i.ko, %bb.bb ], [ %i.ko, %bb.ba ] ; 4 uses
  %i.ks = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %.5164, ptr noundef nonnull dereferenceable(1) %spec.store.select) #13 ; 0 uses
  %i.kt = load i8, ptr %spec.store.select2, align 1
  %.not199 = icmp eq i8 %i.kt, 0
  br i1 %.not199, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ku = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.5164) #18
  %i.kv = getelementptr inbounds nuw i8, ptr %.5164, i64 %i.ku ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 1 ; 2 uses
  store i8 95, ptr %i.kv, align 1
  %i.kx = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.kw, ptr noundef nonnull dereferenceable(1) %spec.store.select2) #13 ; 0 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.6 = phi ptr [ %i.kw, %bb.be ], [ %.5164, %bb.bd ] ; 2 uses
  %i.ky = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.6) #18
  %i.kz = getelementptr inbounds nuw i8, ptr %.6, i64 %i.ky
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.kz, ptr noundef nonnull align 1 dereferenceable(3) @.str.19, i64 3, i1 false) #13
  %i.la = tail call ptr @T_FileStream_open(ptr noundef nonnull @_ZZ20createCommonDataFileE6buffer, ptr noundef nonnull @.str.20) #13 ; 10 uses
  %.not200 = icmp eq ptr %10, null
  br i1 %.not200, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lb = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) @_ZZ20createCommonDataFileE6buffer) #13 ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.lc = icmp eq ptr %i.la, null
  br i1 %i.lc, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ld = load ptr, ptr @stderr, align 8
  %i.le = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ld, ptr noundef nonnull @.str.21, ptr noundef nonnull @_ZZ20createCommonDataFileE6buffer) #15 ; 0 uses
  tail call void @exit(i32 noundef 4) #16
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.lf = load i32, ptr @_ZL9fileCount, align 4
  %i.lg = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @_ZZ20createCommonDataFileE6buffer, i64 noundef 4096, ptr noundef nonnull @.str.22, ptr noundef nonnull %spec.store.select, ptr noundef nonnull %spec.store.select2, i32 noundef %i.lf) #13 ; 0 uses
  %i.lh = tail call i32 @T_FileStream_writeLine(ptr noundef nonnull %i.la, ptr noundef nonnull @_ZZ20createCommonDataFileE6buffer) #13 ; 0 uses
  %i.li = load ptr, ptr @_ZL5files, align 8
  %i.lj = load ptr, ptr %i.li, align 8
  %i.lk = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @_ZZ20createCommonDataFileE6buffer, i64 noundef 4096, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.13, ptr noundef %i.lj) #13 ; 0 uses
  %i.ll = tail call i32 @T_FileStream_writeLine(ptr noundef nonnull %i.la, ptr noundef nonnull @_ZZ20createCommonDataFileE6buffer) #13 ; 0 uses
  %i.lm = load i32, ptr @_ZL9fileCount, align 4
  %i.ln = icmp ugt i32 %i.lm, 1
  br i1 %i.ln, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.bj, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.bj ] ; 2 uses
  %i.lo = load ptr, ptr @_ZL5files, align 8
  %i.lp = getelementptr inbounds nuw [32 x i8], ptr %i.lo, i64 %indvars.iv
  %i.lq = load ptr, ptr %i.lp, align 8
  %i.lr = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @_ZZ20createCommonDataFileE6buffer, i64 noundef 4096, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.13, ptr noundef %i.lq) #13 ; 0 uses
  %i.ls = tail call i32 @T_FileStream_writeLine(ptr noundef nonnull %i.la, ptr noundef nonnull @_ZZ20createCommonDataFileE6buffer) #13 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.lt = load i32, ptr @_ZL9fileCount, align 4
  %i.lu = zext i32 %i.lt to i64
  %i.lv = icmp samesign ult i64 %indvars.iv.next, %i.lu
  br i1 %i.lv, label %.lr.ph, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph, %bb.bj
  %i.lw = tail call i32 @T_FileStream_writeLine(ptr noundef nonnull %i.la, ptr noundef nonnull @.str.25) #13 ; 0 uses
  %i.lx = load i32, ptr @_ZL9fileCount, align 4
  %i.ly = zext i32 %i.lx to i64                   ; 2 uses
  %i.lz = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @_ZZ20createCommonDataFileE6buffer, i64 noundef 4096, ptr noundef nonnull @.str.26, i64 noundef 8, i64 noundef %i.ly, ptr noundef %2, i64 noundef 20, i32 noundef 0, i32 noundef 0, i32 noundef 2, i64 noundef %i.ly) #13 ; 0 uses
  %i.ma = tail call i32 @T_FileStream_writeLine(ptr noundef nonnull %i.la, ptr noundef nonnull @_ZZ20createCommonDataFileE6buffer) #13 ; 0 uses
  %i.mb = load ptr, ptr @_ZL5files, align 8       ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.md = load ptr, ptr %i.mc, align 8
  %i.me = load ptr, ptr %i.mb, align 8
  %i.mf = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @_ZZ20createCommonDataFileE6buffer, i64 noundef 4096, ptr noundef nonnull @.str.27, ptr noundef %i.md, ptr noundef nonnull @.str.13, ptr noundef %i.me) #13 ; 0 uses
  %i.mg = tail call i32 @T_FileStream_writeLine(ptr noundef nonnull %i.la, ptr noundef nonnull @_ZZ20createCommonDataFileE6buffer) #13 ; 0 uses
  %i.mh = load i32, ptr @_ZL9fileCount, align 4
  %i.mi = icmp ugt i32 %i.mh, 1
  br i1 %i.mi, label %.lr.ph226, label %._crit_edge227

.lr.ph226:                                        ; preds = %._crit_edge, %.lr.ph226
  %indvars.iv277 = phi i64 [ %indvars.iv.next278, %.lr.ph226 ], [ 1, %._crit_edge ] ; 2 uses
  %i.mj = load ptr, ptr @_ZL5files, align 8
  %i.mk = getelementptr inbounds nuw [32 x i8], ptr %i.mj, i64 %indvars.iv277 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8
  %i.mn = load ptr, ptr %i.mk, align 8
  %i.mo = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @_ZZ20createCommonDataFileE6buffer, i64 noundef 4096, ptr noundef nonnull @.str.28, ptr noundef %i.mm, ptr noundef nonnull @.str.13, ptr noundef %i.mn) #13 ; 0 uses
  %i.mp = tail call i32 @T_FileStream_writeLine(ptr noundef nonnull %i.la, ptr noundef nonnull @_ZZ20createCommonDataFileE6buffer) #13 ; 0 uses
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %i.mq = load i32, ptr @_ZL9fileCount, align 4
  %i.mr = zext i32 %i.mq to i64
  %i.ms = icmp samesign ult i64 %indvars.iv.next278, %i.mr
  br i1 %i.ms, label %.lr.ph226, label %._crit_edge227, !llvm.loop !22

._crit_edge227:                                   ; preds = %.lr.ph226, %._crit_edge
  %i.mt = tail call i32 @T_FileStream_writeLine(ptr noundef nonnull %i.la, ptr noundef nonnull @.str.29) #13 ; 0 uses
  tail call void @T_FileStream_close(ptr noundef nonnull %i.la) #13
  tail call void @uprv_free_78(ptr noundef null) #13
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge227, %bb.ay, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

declare ptr @u_getDataDirectory_78() local_unnamed_addr #5

declare ptr @T_FileStream_stdin() local_unnamed_addr #5

declare ptr @T_FileStream_open(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare ptr @T_FileStream_readLine(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @getLongPathname(ptr noundef) local_unnamed_addr #5

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #5

declare void @T_FileStream_close(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @_ZL12compareFilesPKvS0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
