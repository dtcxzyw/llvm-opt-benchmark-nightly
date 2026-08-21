Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvode?download=true
inline.NumInlined: 48
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 42
begin_hunk_0_@CVode:bb.a
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 1480
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.cw
  %.0371 = phi i64 [ 0, %bb.cw ], [ %i.brg, %.backedge.backedge ] ; 2 uses
  %i.oz = load double, ptr %i.jd, align 8, !tbaa !134
  store double %i.oz, ptr %i.je, align 8, !tbaa !91
  %i.pa = load i32, ptr %i.jf, align 8, !tbaa !80
  store i32 %i.pa, ptr %i.jg, align 8, !tbaa !92
  %i.pb = load i64, ptr %i.v, align 8, !tbaa !122
  %i.pc = icmp sgt i64 %i.pb, 0
  br i1 %i.pc, label %bb.cx, label %bb.dc

bb.cx:                                            ; preds = %.backedge
  %i.pd = load ptr, ptr %i.jh, align 8, !tbaa !105
  %i.pe = load ptr, ptr %i.ji, align 8, !tbaa !76
  %i.pf = load ptr, ptr %i.jj, align 8, !tbaa !69
  %i.pg = load ptr, ptr %i.jk, align 8, !tbaa !106
  %i.ph = call i32 %i.pd(ptr noundef %i.pe, ptr noundef %i.pf, ptr noundef %i.pg) #13
  %.not404 = icmp eq i32 %i.ph, 0
  br i1 %.not404, label %bb.dc, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.pj = load i32, ptr %i.pi, align 4, !tbaa !103
  %i.pk = icmp eq i32 %i.pj, 3
  %i.pl = load double, ptr %i.jo, align 8, !tbaa !78 ; 2 uses
  br i1 %i.pk, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 1468, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.28, double noundef %i.pl)
  br label %bb.db

bb.da:                                            ; preds = %bb.cy
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 1473, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.29, double noundef %i.pl)
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.pm = load double, ptr %i.jo, align 8, !tbaa !78 ; 2 uses
  store double %i.pm, ptr %3, align 8, !tbaa !25
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 352
  store double %i.pm, ptr %i.pn, align 8, !tbaa !123
  %i.po = load ptr, ptr %i.ji, align 8, !tbaa !76
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.po, ptr noundef nonnull %2) #13
  br label %cvInitialSetup.exit.thread

bb.dc:                                            ; preds = %bb.cx, %.backedge
  %i.pp = load i64, ptr %i.jl, align 8, !tbaa !23 ; 2 uses
  %i.pq = icmp slt i64 %i.pp, 1
  %.not405 = icmp slt i64 %.0371, %i.pp
  %or.cond417 = select i1 %i.pq, i1 true, i1 %.not405
  br i1 %or.cond417, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.pr = load double, ptr %i.jo, align 8, !tbaa !78
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 1487, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.30, double noundef %i.pr)
  %i.ps = load double, ptr %i.jo, align 8, !tbaa !78 ; 2 uses
  store double %i.ps, ptr %3, align 8, !tbaa !25
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 352
  store double %i.ps, ptr %i.pt, align 8, !tbaa !123
  %i.pu = load ptr, ptr %i.ji, align 8, !tbaa !76
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.pu, ptr noundef nonnull %2) #13
  br label %cvInitialSetup.exit.thread

bb.de:                                            ; preds = %bb.dc
  %i.pv = load ptr, ptr %i.ji, align 8, !tbaa !76
  %i.pw = load ptr, ptr %i.jj, align 8, !tbaa !69
  %i.px = call double @N_VWrmsNorm(ptr noundef %i.pv, ptr noundef %i.pw) #13
  %i.py = load double, ptr %i.jm, align 8, !tbaa !20
  %i.pz = fmul double %i.px, %i.py                ; 2 uses
  store double %i.pz, ptr %i.jn, align 8, !tbaa !87
  %i.qa = fcmp ogt double %i.pz, 1.000000e+00
  br i1 %i.qa, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.qb = load double, ptr %i.jo, align 8, !tbaa !78
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -2, i32 noundef 1500, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.31, double noundef %i.qb)
  %i.qc = load double, ptr %i.jo, align 8, !tbaa !78 ; 2 uses
  store double %i.qc, ptr %3, align 8, !tbaa !25
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 352
  store double %i.qc, ptr %i.qd, align 8, !tbaa !123
  %i.qe = load ptr, ptr %i.ji, align 8, !tbaa !76
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.qe, ptr noundef nonnull %2) #13
  %i.qf = load double, ptr %i.jn, align 8, !tbaa !87
  %i.qg = fmul double %i.qf, 2.000000e+00
  store double %i.qg, ptr %i.jn, align 8, !tbaa !87
  br label %cvInitialSetup.exit.thread

bb.dg:                                            ; preds = %bb.de
  store double 1.000000e+00, ptr %i.jn, align 8, !tbaa !87
  %i.qh = load double, ptr %i.jo, align 8, !tbaa !78 ; 3 uses
  %i.qi = load double, ptr %i.jd, align 8, !tbaa !134 ; 2 uses
  %i.qj = fadd double %i.qh, %i.qi
  %i.qk = fcmp oeq double %i.qj, %i.qh
  br i1 %i.qk, label %bb.dh, label %bb.dl

bb.dh:                                            ; preds = %bb.dg
  %i.ql = load i32, ptr %i.jp, align 8, !tbaa !143 ; 2 uses
  %i.qm = add nsw i32 %i.ql, 1                    ; 2 uses
  store i32 %i.qm, ptr %i.jp, align 8, !tbaa !143
  %i.qn = load i32, ptr %i.jq, align 8, !tbaa !24 ; 2 uses
  %.not406.not = icmp slt i32 %i.ql, %i.qn
  br i1 %.not406.not, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef 99, i32 noundef 1516, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.32, double noundef %i.qh, double noundef %i.qi)
  %.pre577 = load i32, ptr %i.jp, align 8, !tbaa !143
  %.pre578 = load i32, ptr %i.jq, align 8, !tbaa !24
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.qo = phi i32 [ %.pre578, %bb.di ], [ %i.qn, %bb.dh ]
  %i.qp = phi i32 [ %.pre577, %bb.di ], [ %i.qm, %bb.dh ]
  %i.qq = icmp eq i32 %i.qp, %i.qo
  br i1 %i.qq, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef 99, i32 noundef 1521, ptr noundef nonnull @__func__.CVode, ptr noundef nonnull @.str, ptr noundef nonnull @.str.33)
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dj, %bb.dk, %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #13
  store i32 0, ptr %i.m, align 4, !tbaa !116
  %i.qr = load i64, ptr %i.v, align 8, !tbaa !122
  %i.qs = icmp sgt i64 %i.qr, 0
  br i1 %i.qs, label %bb.dm, label %bb.ds

bb.dm:                                            ; preds = %bb.dl
  %i.qt = load double, ptr %i.jr, align 8, !tbaa !138
  %i.qu = load double, ptr %i.jd, align 8, !tbaa !134
  %i.qv = fcmp une double %i.qt, %i.qu
  br i1 %i.qv, label %bb.dn, label %bb.ds

bb.dn:                                            ; preds = %bb.dm
  %i.qw = load i32, ptr %i.js, align 4, !tbaa !144 ; 4 uses
  %i.qx = load i32, ptr %i.jf, align 8, !tbaa !80 ; 2 uses
  %.not.i.i = icmp eq i32 %i.qw, %i.qx
  br i1 %.not.i.i, label %bb.dr, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.qy = load i32, ptr %i.jt, align 4, !tbaa !139
  %.not14.i.i = icmp eq i32 %i.qy, 0
  br i1 %.not14.i.i, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.qz = sub nsw i32 %i.qw, %i.qx
  call fastcc void @cvAdjustOrder(ptr noundef nonnull %0, i32 noundef %i.qz)
  %.pre.i.i = load i32, ptr %i.js, align 4, !tbaa !144
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.ra = phi i32 [ %.pre.i.i, %bb.dp ], [ %i.qw, %bb.do ] ; 3 uses
  store i32 %i.ra, ptr %i.jf, align 8, !tbaa !80
  %i.rb = add nsw i32 %i.ra, 1                    ; 2 uses
  store i32 %i.rb, ptr %i.ju, align 8, !tbaa !81
  store i32 %i.rb, ptr %i.jv, align 4, !tbaa !82
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dn
  %i.rc = phi i32 [ %i.ra, %bb.dq ], [ %i.qw, %bb.dn ] ; 4 uses
  %i.rd = load double, ptr %i.jw, align 8, !tbaa !142 ; 6 uses
  store double %i.rd, ptr %i.jx, align 8, !tbaa !25
  %.not22.i.i.i = icmp slt i32 %i.rc, 1
  br i1 %.not22.i.i.i, label %cvAdjustParams.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.dr
  %load_initial = load double, ptr %i.jx, align 8 ; 2 uses
  %i.re = zext nneg i32 %i.rc to i64              ; 2 uses
  %xtraiter = and i64 %i.re, 3                    ; 3 uses
  %i.rf = icmp ult i32 %i.rc, 4
  br i1 %i.rf, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter = and i64 %i.re, 2147483644
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i.new
  %store_forwarded = phi double [ %load_initial, %.lr.ph.preheader.i.i.i.new ], [ %i.rq, %.lr.ph.i.i.i ]
  %indvars.iv.i.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i.i.new ], [ %indvars.iv.next.i.i.i.3, %.lr.ph.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter.next.3, %.lr.ph.i.i.i ]
  %i.rg = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i.i.i
  %i.rh = fmul double %i.rd, %store_forwarded     ; 2 uses
  store double %i.rh, ptr %i.rg, align 8, !tbaa !25
  %i.ri = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i.i.i
  %i.rj = getelementptr i8, ptr %i.ri, i64 8
  %i.rk = fmul double %i.rd, %i.rh                ; 2 uses
  store double %i.rk, ptr %i.rj, align 8, !tbaa !25
  %i.rl = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i.i.i
  %i.rm = getelementptr i8, ptr %i.rl, i64 16
  %i.rn = fmul double %i.rd, %i.rk                ; 2 uses
  store double %i.rn, ptr %i.rm, align 8, !tbaa !25
  %i.ro = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i.i.i
  %i.rp = getelementptr i8, ptr %i.ro, i64 24
  %i.rq = fmul double %i.rd, %i.rn                ; 3 uses
  store double %i.rq, ptr %i.rp, align 8, !tbaa !25
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %cvAdjustParams.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

cvAdjustParams.exit.i.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %cvAdjustParams.exit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %cvAdjustParams.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i
  %store_forwarded.epil.init = phi double [ %load_initial, %.lr.ph.preheader.i.i.i ], [ %i.rq, %cvAdjustParams.exit.i.loopexit.unr-lcssa ]
  %indvars.iv.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.3, %cvAdjustParams.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod877 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod877)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %store_forwarded.epil = phi double [ %store_forwarded.epil.init, %.lr.ph.i.i.i.epil.preheader ], [ %i.rs, %.lr.ph.i.i.i.epil ]
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ], [ %indvars.iv.next.i.i.i.epil, %.lr.ph.i.i.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.epil ]
  %i.rr = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i.i.i.epil
  %i.rs = fmul double %i.rd, %store_forwarded.epil ; 2 uses
  store double %i.rs, ptr %i.rr, align 8, !tbaa !25
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %cvAdjustParams.exit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !145

cvAdjustParams.exit.i:                            ; preds = %cvAdjustParams.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %bb.dr
  %i.rt = call i32 @N_VScaleVectorArray(i32 noundef %i.rc, ptr noundef nonnull %i.jx, ptr noundef nonnull %i.jy, ptr noundef nonnull %i.jy) #13 ; 0 uses
  %i.ru = load double, ptr %i.jz, align 8, !tbaa !137
  %i.rv = load double, ptr %i.jw, align 8, !tbaa !142
  %i.rw = fmul double %i.ru, %i.rv                ; 3 uses
  store double %i.rw, ptr %i.jd, align 8, !tbaa !134
  store double %i.rw, ptr %i.je, align 8, !tbaa !91
  store double %i.rw, ptr %i.jz, align 8, !tbaa !137
  store i32 0, ptr %i.ka, align 8, !tbaa !88
  br label %bb.ds

bb.ds:                                            ; preds = %cvAdjustParams.exit.i, %bb.dm, %bb.dl
  %i.rx = load i32, ptr %i.kb, align 8, !tbaa !127
  %.not.i420 = icmp eq i32 %i.rx, 0
  br i1 %.not.i420, label %bb.dw, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ry = load ptr, ptr %i.kc, align 8, !tbaa !128 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 16
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !147 ; 2 uses
  %i.sb = icmp sgt i64 %i.sa, 0
  br i1 %i.sb, label %bb.du, label %bb.dw

bb.du:                                            ; preds = %bb.dt
  %i.sc = load i64, ptr %i.v, align 8, !tbaa !122 ; 2 uses
  %i.sd = icmp eq i64 %i.sc, 0
  br i1 %i.sd, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.se = getelementptr inbounds nuw i8, ptr %i.ry, i64 24
  %i.sf = load i64, ptr %i.se, align 8, !tbaa !149
  %i.sg = add nsw i64 %i.sf, %i.sa
  %.not62.i424 = icmp slt i64 %i.sc, %i.sg
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dt, %bb.ds
  %.050.i = phi i1 [ true, %bb.ds ], [ true, %bb.dt ], [ false, %bb.du ], [ %.not62.i424, %bb.dv ]
  %i.sh = load double, ptr %i.jo, align 8, !tbaa !78 ; 4 uses
  store i32 6, ptr %i.l, align 4, !tbaa !116
  br label %.outer.i

.outer.i:                                         ; preds = %cvHandleNFlag.exit.i, %bb.dw
  %.0147.ph.i = phi i32 [ %i.aji, %cvHandleNFlag.exit.i ], [ 0, %bb.dw ]
  %.0145.ph.i = phi i32 [ %.0145.ph181.i, %cvHandleNFlag.exit.i ], [ 0, %bb.dw ]
  %.0142.ph.i = phi i32 [ %.0142.ph184.i, %cvHandleNFlag.exit.i ], [ 0, %bb.dw ]
  br label %.outer180.i

.outer180.i:                                      ; preds = %.outer180.i.backedge, %.outer.i
  %.0145.ph181.i = phi i32 [ %.0145.ph.i, %.outer.i ], [ %i.ann, %.outer180.i.backedge ] ; 3 uses
  %.0142.ph182.i = phi i32 [ %.0142.ph.i, %.outer.i ], [ %.0142.ph184.i, %.outer180.i.backedge ]
  br label %.outer183.i

.outer183.i:                                      ; preds = %.loopexit.i, %.outer180.i
  %.0142.ph184.i = phi i32 [ %.0142.ph182.i, %.outer180.i ], [ %i.ali, %.loopexit.i ] ; 3 uses
  br label %bb.dx

bb.dx:                                            ; preds = %bb.fu, %.outer183.i
  %i.si = load double, ptr %i.jd, align 8, !tbaa !134 ; 2 uses
  %i.sj = load double, ptr %i.jo, align 8, !tbaa !78
  %i.sk = fadd double %i.si, %i.sj                ; 2 uses
  store double %i.sk, ptr %i.jo, align 8, !tbaa !78
  %i.sl = load i32, ptr %i.kd, align 8, !tbaa !131
  %.not.i67.i = icmp eq i32 %i.sl, 0
  br i1 %.not.i67.i, label %bb.ea, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.sm = load double, ptr %i.ke, align 8, !tbaa !132 ; 2 uses
  %i.sn = fsub double %i.sk, %i.sm
  %i.so = fmul double %i.si, %i.sn
  %i.sp = fcmp ogt double %i.so, 0.000000e+00
  br i1 %i.sp, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  store double %i.sm, ptr %i.jo, align 8, !tbaa !78
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy, %bb.dx
  %i.sq = load i32, ptr %i.jf, align 8, !tbaa !80 ; 3 uses
  %.not2225.i.i = icmp slt i32 %i.sq, 1
  br i1 %.not2225.i.i, label %cvPredict.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ea, %bb.ec
  %indvars.iv28.i.i = phi i64 [ %indvars.iv.next29.i.i, %bb.ec ], [ 1, %bb.ea ] ; 3 uses
  %i.sr = phi i32 [ %i.sx, %bb.ec ], [ %i.sq, %bb.ea ]
  %i.ss = sext i32 %i.sr to i64
  br label %bb.eb

bb.eb:                                            ; preds = %bb.eb, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.ss, %.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.eb ] ; 3 uses
  %i.st = getelementptr [8 x i8], ptr %i.ji, i64 %indvars.iv.i.i ; 2 uses
  %i.su = getelementptr i8, ptr %i.st, i64 -8
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !76 ; 2 uses
  %i.sw = load ptr, ptr %i.st, align 8, !tbaa !76
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.sv, double noundef 1.000000e+00, ptr noundef %i.sw, ptr noundef %i.sv) #13
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %.not23.not.i.i = icmp sgt i64 %indvars.iv.i.i, %indvars.iv28.i.i
  br i1 %.not23.not.i.i, label %bb.eb, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %indvars.iv.next29.i.i = add nuw nsw i64 %indvars.iv28.i.i, 1
  %i.sx = load i32, ptr %i.jf, align 8, !tbaa !80 ; 3 uses
  %i.sy = sext i32 %i.sx to i64
  %.not22.not.i.i = icmp slt i64 %indvars.iv28.i.i, %i.sy
  br i1 %.not22.not.i.i, label %.preheader.i.i, label %cvPredict.exit.i

cvPredict.exit.i:                                 ; preds = %bb.ec, %bb.ea
  %i.sz = phi i32 [ %i.sq, %bb.ea ], [ %i.sx, %bb.ec ] ; 30 uses
  %i.ta = load i32, ptr %i.kf, align 8, !tbaa !19
  switch i32 %i.ta, label %bb.ep [
    i32 1, label %bb.ed
    i32 2, label %bb.ej
  ]

bb.ed:                                            ; preds = %cvPredict.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #13
  %i.tb = icmp eq i32 %i.sz, 1
  br i1 %i.tb, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  store double 1.000000e+00, ptr %i.kh, align 8, !tbaa !25
  store <2 x double> splat (double 1.000000e+00), ptr %i.kk, align 8, !tbaa !25
  store <2 x double> <double 1.000000e+00, double 5.000000e-01>, ptr %i.kl, align 8, !tbaa !25
  store double f0x3FB5555555555555, ptr %i.kn, align 8, !tbaa !25
  %i.tc = load double, ptr %i.ko, align 8, !tbaa !30
  %i.td = fmul double %i.tc, 2.000000e+00
  br label %cvSetAdams.exit.i.i

bb.ef:                                            ; preds = %bb.ed
  %i.te = load double, ptr %i.jd, align 8, !tbaa !134 ; 4 uses
  store double 1.000000e+00, ptr %i.k, align 16, !tbaa !25
  %.not37.i.i.i.i = icmp slt i32 %i.sz, 1
  br i1 %.not37.i.i.i.i, label %cvAltSum.exit28.thread.i.i.i, label %.lr.ph42.i.i.i.i

.lr.ph42.i.i.i.i:                                 ; preds = %bb.ef
  %i.tf = zext nneg i32 %i.sz to i64              ; 8 uses
  %i.tg = shl nuw nsw i64 %i.tf, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.i.i.i.i, i8 0, i64 %i.tg, i1 false), !tbaa !25
  %i.th = add nsw i32 %i.sz, -1                   ; 3 uses
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %i.th to i64 ; 3 uses
  %i.ti = uitofp nneg i32 %i.sz to double
  %i.tj = getelementptr [8 x i8], ptr %i.k, i64 %i.tf
  %i.tk = getelementptr i8, ptr %i.tj, i64 -16
  %xtraiter884 = and i64 %wide.trip.count.i.i.i.i.i, 1
  %i.tl = icmp eq i32 %i.th, 1
  %unroll_iter889 = and i64 %wide.trip.count.i.i.i.i.i, 2147483646
  %lcmp.mod886.not = icmp eq i64 %xtraiter884, 0
  %lcmp.mod888 = trunc i32 %i.th to i1
  br label %bb.eg

bb.eg:                                            ; preds = %.loopexit, %.lr.ph42.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 1, %.lr.ph42.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %.loopexit ] ; 9 uses
  %.03440.i.i.i.i = phi double [ %i.te, %.lr.ph42.i.i.i.i ], [ %i.vt, %.loopexit ] ; 2 uses
  %i.tm = icmp eq i64 %indvars.iv.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %i.tm, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.tn = load i32, ptr %i.jv, align 4, !tbaa !82
  %i.to = icmp eq i32 %i.tn, 1
  br i1 %i.to, label %.preheader.i.i.i.i.i.preheader, label %bb.ei

.preheader.i.i.i.i.i.preheader:                   ; preds = %bb.eh
  br i1 %i.tl, label %.preheader.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.1, %.preheader.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.preheader ] ; 4 uses
  %.018.i.i.i.i.i = phi double [ %i.uc, %.preheader.i.i.i.i.i ], [ 0.000000e+00, %.preheader.i.i.i.i.i.preheader ]
  %niter890 = phi i64 [ %niter890.next.1, %.preheader.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.preheader ]
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i.i.i.i.i
  %i.tq = load double, ptr %i.tp, align 16, !tbaa !25
  %i.tr = trunc i64 %indvars.iv.i.i.i.i.i to i32
  %i.ts = add i32 %i.tr, 2
  %i.tt = uitofp nneg i32 %i.ts to double
  %i.tu = fdiv double %i.tq, %i.tt
  %i.tv = fadd double %i.tu, %.018.i.i.i.i.i
end_hunk_0
begin_hunk_1_@CVode:bb.a
  %i.ahh = add nsw i64 %i.ahg, %i.ahf
  %.not49.i.i = icmp slt i64 %i.ags, %i.ahh
  br i1 %.not49.i.i, label %bb.ew, label %bb.ey

bb.ew:                                            ; preds = %bb.ev
  %i.ahi = fadd double %i.agx, -1.000000e+00
  %i.ahj = call double @llvm.fabs.f64(double %i.ahi)
  %i.ahk = load double, ptr %i.ky, align 8, !tbaa !32
  %i.ahl = fcmp ogt double %i.ahj, %i.ahk
  %i.ahm = zext i1 %i.ahl to i32
  br label %bb.ey

bb.ex:                                            ; preds = %cvSet.exit.i
  store double 1.000000e+00, ptr %i.kz, align 8, !tbaa !167
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew, %bb.ev, %bb.eu, %bb.et, %bb.es, %bb.es
  %.0.i.i = phi i32 [ 0, %bb.ex ], [ 1, %bb.ev ], [ 1, %bb.eu ], [ 1, %bb.et ], [ %i.ahm, %bb.ew ], [ 1, %bb.es ], [ 1, %bb.es ]
  %i.ahn = load ptr, ptr %i.la, align 8, !tbaa !70
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.ahn) #13
  %i.aho = load ptr, ptr %i.lb, align 8, !tbaa !168 ; 3 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 16
  %i.ahq = load ptr, ptr %i.ahp, align 8, !tbaa !169
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 16
  %i.ahs = load ptr, ptr %i.ahr, align 8, !tbaa !172
  %.not50.i.i = icmp eq ptr %i.ahs, null
  br i1 %.not50.i.i, label %bb.fb, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.aht = load ptr, ptr %i.la, align 8, !tbaa !70
  %i.ahu = call i32 @SUNNonlinSolSetup(ptr noundef nonnull %i.aho, ptr noundef %i.aht, ptr noundef nonnull %0) #13 ; 2 uses
  %i.ahv = icmp slt i32 %i.ahu, 0
  br i1 %i.ahv, label %bb.fe, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %.not51.i.i = icmp eq i32 %i.ahu, 0
  br i1 %.not51.i.i, label %._crit_edge.i.i, label %bb.fe

._crit_edge.i.i:                                  ; preds = %bb.fa
  %.pre.i74.i = load ptr, ptr %i.lb, align 8, !tbaa !168
  br label %bb.fb

bb.fb:                                            ; preds = %._crit_edge.i.i, %bb.ey
  %i.ahw = phi ptr [ %.pre.i74.i, %._crit_edge.i.i ], [ %i.aho, %bb.ey ]
  %i.ahx = load ptr, ptr %i.ji, align 8, !tbaa !76
  %i.ahy = load ptr, ptr %i.la, align 8, !tbaa !70
  %i.ahz = load ptr, ptr %i.jj, align 8, !tbaa !69
  %i.aia = load double, ptr %i.kp, align 8, !tbaa !25
  %i.aib = call i32 @SUNNonlinSolSolve(ptr noundef %i.ahw, ptr noundef %i.ahx, ptr noundef %i.ahy, ptr noundef %i.ahz, double noundef %i.aia, i32 noundef %.0.i.i, ptr noundef nonnull %0) #13 ; 2 uses
  %i.aic = load ptr, ptr %i.lb, align 8, !tbaa !168
  %i.aid = call i32 @SUNNonlinSolGetNumIters(ptr noundef %i.aic, ptr noundef nonnull %i.i) #13 ; 0 uses
  %i.aie = load i64, ptr %i.i, align 8, !tbaa !66
  %i.aif = load i64, ptr %i.lc, align 8, !tbaa !174
  %i.aig = add nsw i64 %i.aif, %i.aie
  store i64 %i.aig, ptr %i.lc, align 8, !tbaa !174
  %i.aih = load ptr, ptr %i.lb, align 8, !tbaa !168
  %i.aii = call i32 @SUNNonlinSolGetNumConvFails(ptr noundef %i.aih, ptr noundef nonnull %i.j) #13 ; 0 uses
  %i.aij = load i64, ptr %i.j, align 8, !tbaa !66
  %i.aik = load i64, ptr %i.ld, align 8, !tbaa !175
  %i.ail = add nsw i64 %i.aik, %i.aij
  store i64 %i.ail, ptr %i.ld, align 8, !tbaa !175
  %.not52.i.i = icmp eq i32 %i.aib, 0
  br i1 %.not52.i.i, label %bb.fc, label %bb.fe

bb.fc:                                            ; preds = %bb.fb
  %i.aim = load ptr, ptr %i.ji, align 8, !tbaa !76
  %i.ain = load ptr, ptr %i.la, align 8, !tbaa !70
  %i.aio = load ptr, ptr %i.r, align 8, !tbaa !121
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.aim, double noundef 1.000000e+00, ptr noundef %i.ain, ptr noundef %i.aio) #13
  %i.aip = load i32, ptr %i.le, align 8, !tbaa !176
  %.not53.i.i = icmp eq i32 %i.aip, 0
  br i1 %.not53.i.i, label %bb.fd, label %cvHandleNFlag.exit.thread153.i

bb.fd:                                            ; preds = %bb.fc
  %i.aiq = load ptr, ptr %i.la, align 8, !tbaa !70
  %i.air = load ptr, ptr %i.jj, align 8, !tbaa !69
  %i.ais = call double @N_VWrmsNorm(ptr noundef %i.aiq, ptr noundef %i.air) #13
  store double %i.ais, ptr %i.lf, align 8, !tbaa !177
  br label %cvHandleNFlag.exit.thread153.i

cvHandleNFlag.exit.thread153.i:                   ; preds = %bb.fd, %bb.fc
  store i32 0, ptr %i.lg, align 8, !tbaa !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  store i32 0, ptr %i.l, align 4, !tbaa !116
  %i.ait = load ptr, ptr %i.lh, align 8, !tbaa !97 ; 2 uses
  %.not59.i421 = icmp eq ptr %i.ait, null
  br i1 %.not59.i421, label %.thread171.i, label %bb.fm

bb.fe:                                            ; preds = %bb.fb, %bb.fa, %bb.ez
  %.044.i.ph.i = phi i32 [ %i.aib, %bb.fb ], [ 902, %bb.fa ], [ -14, %bb.ez ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  store i32 %.044.i.ph.i, ptr %i.l, align 4, !tbaa !116
  %i.aiu = load i64, ptr %i.lz, align 8, !tbaa !179
  %i.aiv = add nsw i64 %i.aiu, 1
  store i64 %i.aiv, ptr %i.lz, align 8, !tbaa !179
  store double %i.sh, ptr %i.jo, align 8, !tbaa !78
  %i.aiw = load i32, ptr %i.jf, align 8, !tbaa !80 ; 3 uses
  %.not18.i.i.i = icmp slt i32 %i.aiw, 1
  br i1 %.not18.i.i.i, label %cvRestore.exit.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.fe, %bb.fg
  %indvars.iv21.i.i.i = phi i64 [ %indvars.iv.next22.i.i.i, %bb.fg ], [ 1, %bb.fe ] ; 3 uses
  %i.aix = phi i32 [ %i.ajd, %bb.fg ], [ %i.aiw, %bb.fe ]
  %i.aiy = sext i32 %i.aix to i64
  br label %bb.ff

bb.ff:                                            ; preds = %bb.ff, %.preheader.i.i.i
  %indvars.iv.i.i75.i = phi i64 [ %i.aiy, %.preheader.i.i.i ], [ %indvars.iv.next.i.i76.i, %bb.ff ] ; 3 uses
  %i.aiz = getelementptr [8 x i8], ptr %i.ji, i64 %indvars.iv.i.i75.i ; 2 uses
  %i.aja = getelementptr i8, ptr %i.aiz, i64 -8
  %i.ajb = load ptr, ptr %i.aja, align 8, !tbaa !76 ; 2 uses
  %i.ajc = load ptr, ptr %i.aiz, align 8, !tbaa !76
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ajb, double noundef -1.000000e+00, ptr noundef %i.ajc, ptr noundef %i.ajb) #13
  %indvars.iv.next.i.i76.i = add nsw i64 %indvars.iv.i.i75.i, -1
  %.not16.not.i.i.i = icmp sgt i64 %indvars.iv.i.i75.i, %indvars.iv21.i.i.i
  br i1 %.not16.not.i.i.i, label %bb.ff, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %indvars.iv.next22.i.i.i = add nuw nsw i64 %indvars.iv21.i.i.i, 1
  %i.ajd = load i32, ptr %i.jf, align 8, !tbaa !80 ; 3 uses
  %i.aje = sext i32 %i.ajd to i64
  %.not.not.i.i.i = icmp slt i64 %indvars.iv21.i.i.i, %i.aje
  br i1 %.not.not.i.i.i, label %.preheader.i.i.i, label %cvRestore.exit.i.i

cvRestore.exit.i.i:                               ; preds = %bb.fg, %bb.fe
  %i.ajf = phi i32 [ %i.aiw, %bb.fe ], [ %i.ajd, %bb.fg ] ; 4 uses
  %i.ajg = icmp slt i32 %.044.i.ph.i, 0
  br i1 %i.ajg, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %cvRestore.exit.i.i
  %switch.tableidx.i.i = add nsw i32 %.044.i.ph.i, 8
  %i.ajh = icmp ult i32 %switch.tableidx.i.i, 3
  %spec.select.i = select i1 %i.ajh, i32 %.044.i.ph.i, i32 -16
  br label %cvHandleNFlag.exit.thread.loopexit328.i

bb.fi:                                            ; preds = %cvRestore.exit.i.i
  %i.aji = add nuw nsw i32 %.0147.ph.i, 1         ; 2 uses
  store double 1.000000e+00, ptr %i.ls, align 8, !tbaa !84
  %i.ajj = load double, ptr %i.jd, align 8, !tbaa !134
  %i.ajk = call double @llvm.fabs.f64(double %i.ajj) ; 2 uses
  %i.ajl = load double, ptr %i.lo, align 8, !tbaa !136 ; 2 uses
  %i.ajm = fmul double %i.ajl, f0x3FF000010C6F7A0B
  %i.ajn = fcmp ugt double %i.ajk, %i.ajm
  br i1 %i.ajn, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.ajo = load i32, ptr %i.ma, align 8, !tbaa !29
  %i.ajp = icmp eq i32 %i.aji, %i.ajo
  br i1 %i.ajp, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  switch i32 %.044.i.ph.i, label %bb.fl [
    i32 902, label %cvHandleNFlag.exit.thread.loopexit328.i
    i32 10, label %cvHandleNFlag.exit.thread.loopexit328.i.loopexit848
  ]

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %i.ajq = load double, ptr %i.mb, align 8, !tbaa !180 ; 2 uses
  %i.ajr = fdiv double %i.ajl, %i.ajk             ; 2 uses
  %i.ajs = fcmp ogt double %i.ajq, %i.ajr
  %..i.i = select i1 %i.ajs, double %i.ajq, double %i.ajr ; 7 uses
  store double %..i.i, ptr %i.jw, align 8, !tbaa !142
  store i32 7, ptr %i.l, align 4, !tbaa !116
  store double %..i.i, ptr %i.jx, align 8, !tbaa !25
  %.not22.i.i78.i = icmp slt i32 %i.ajf, 1
  br i1 %.not22.i.i78.i, label %cvHandleNFlag.exit.i, label %.lr.ph.preheader.i.i79.i

.lr.ph.preheader.i.i79.i:                         ; preds = %bb.fl
  %load_initial843 = load double, ptr %i.jx, align 8 ; 2 uses
  %i.ajt = zext nneg i32 %i.ajf to i64            ; 2 uses
  %xtraiter930 = and i64 %i.ajt, 3                ; 3 uses
  %i.aju = icmp ult i32 %i.ajf, 4
  br i1 %i.aju, label %.lr.ph.i.i81.i.epil.preheader, label %.lr.ph.preheader.i.i79.i.new

.lr.ph.preheader.i.i79.i.new:                     ; preds = %.lr.ph.preheader.i.i79.i
  %unroll_iter934 = and i64 %i.ajt, 2147483644
  br label %.lr.ph.i.i81.i

.lr.ph.i.i81.i:                                   ; preds = %.lr.ph.i.i81.i, %.lr.ph.preheader.i.i79.i.new
  %store_forwarded844 = phi double [ %load_initial843, %.lr.ph.preheader.i.i79.i.new ], [ %i.akf, %.lr.ph.i.i81.i ]
  %indvars.iv.i29.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i79.i.new ], [ %indvars.iv.next.i30.i.i.3, %.lr.ph.i.i81.i ] ; 5 uses
  %niter935 = phi i64 [ 0, %.lr.ph.preheader.i.i79.i.new ], [ %niter935.next.3, %.lr.ph.i.i81.i ]
  %i.ajv = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i29.i.i
  %i.ajw = fmul double %..i.i, %store_forwarded844 ; 2 uses
  store double %i.ajw, ptr %i.ajv, align 8, !tbaa !25
  %i.ajx = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i29.i.i
  %i.ajy = getelementptr i8, ptr %i.ajx, i64 8
  %i.ajz = fmul double %..i.i, %i.ajw             ; 2 uses
  store double %i.ajz, ptr %i.ajy, align 8, !tbaa !25
  %i.aka = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i29.i.i
  %i.akb = getelementptr i8, ptr %i.aka, i64 16
  %i.akc = fmul double %..i.i, %i.ajz             ; 2 uses
  store double %i.akc, ptr %i.akb, align 8, !tbaa !25
  %i.akd = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i29.i.i
  %i.ake = getelementptr i8, ptr %i.akd, i64 24
  %i.akf = fmul double %..i.i, %i.akc             ; 3 uses
  store double %i.akf, ptr %i.ake, align 8, !tbaa !25
  %indvars.iv.next.i30.i.i.3 = add nuw nsw i64 %indvars.iv.i29.i.i, 4 ; 2 uses
  %niter935.next.3 = add nuw i64 %niter935, 4     ; 2 uses
  %niter935.ncmp.3 = icmp eq i64 %niter935.next.3, %unroll_iter934
  br i1 %niter935.ncmp.3, label %cvHandleNFlag.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i81.i

cvHandleNFlag.exit.i.loopexit.unr-lcssa:          ; preds = %.lr.ph.i.i81.i
  %lcmp.mod932.not = icmp eq i64 %xtraiter930, 0
  br i1 %lcmp.mod932.not, label %cvHandleNFlag.exit.i, label %.lr.ph.i.i81.i.epil.preheader

.lr.ph.i.i81.i.epil.preheader:                    ; preds = %cvHandleNFlag.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i79.i
  %store_forwarded844.epil.init = phi double [ %load_initial843, %.lr.ph.preheader.i.i79.i ], [ %i.akf, %cvHandleNFlag.exit.i.loopexit.unr-lcssa ]
  %indvars.iv.i29.i.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i79.i ], [ %indvars.iv.next.i30.i.i.3, %cvHandleNFlag.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod933 = icmp ne i64 %xtraiter930, 0
  call void @llvm.assume(i1 %lcmp.mod933)
  br label %.lr.ph.i.i81.i.epil

.lr.ph.i.i81.i.epil:                              ; preds = %.lr.ph.i.i81.i.epil, %.lr.ph.i.i81.i.epil.preheader
  %store_forwarded844.epil = phi double [ %store_forwarded844.epil.init, %.lr.ph.i.i81.i.epil.preheader ], [ %i.akh, %.lr.ph.i.i81.i.epil ]
  %indvars.iv.i29.i.i.epil = phi i64 [ %indvars.iv.i29.i.i.epil.init, %.lr.ph.i.i81.i.epil.preheader ], [ %indvars.iv.next.i30.i.i.epil, %.lr.ph.i.i81.i.epil ] ; 2 uses
  %epil.iter931 = phi i64 [ 0, %.lr.ph.i.i81.i.epil.preheader ], [ %epil.iter931.next, %.lr.ph.i.i81.i.epil ]
  %i.akg = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i29.i.i.epil
  %i.akh = fmul double %..i.i, %store_forwarded844.epil ; 2 uses
  store double %i.akh, ptr %i.akg, align 8, !tbaa !25
  %indvars.iv.next.i30.i.i.epil = add nuw nsw i64 %indvars.iv.i29.i.i.epil, 1
  %epil.iter931.next = add i64 %epil.iter931, 1   ; 2 uses
  %epil.iter931.cmp.not = icmp eq i64 %epil.iter931.next, %xtraiter930
  br i1 %epil.iter931.cmp.not, label %cvHandleNFlag.exit.i, label %.lr.ph.i.i81.i.epil, !llvm.loop !181

cvHandleNFlag.exit.i:                             ; preds = %cvHandleNFlag.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i81.i.epil, %bb.fl
  %i.aki = call i32 @N_VScaleVectorArray(i32 noundef %i.ajf, ptr noundef nonnull %i.jx, ptr noundef nonnull %i.jy, ptr noundef nonnull %i.jy) #13 ; 0 uses
  %i.akj = load double, ptr %i.jz, align 8, !tbaa !137
  %i.akk = load double, ptr %i.jw, align 8, !tbaa !142
  %i.akl = fmul double %i.akj, %i.akk             ; 3 uses
  store double %i.akl, ptr %i.jd, align 8, !tbaa !134
  store double %i.akl, ptr %i.je, align 8, !tbaa !91
  store double %i.akl, ptr %i.jz, align 8, !tbaa !137
  store i32 0, ptr %i.ka, align 8, !tbaa !88
  br label %.outer.i

bb.fm:                                            ; preds = %cvHandleNFlag.exit.thread153.i
  %i.akm = load ptr, ptr %i.li, align 8, !tbaa !72 ; 6 uses
  %i.akn = load ptr, ptr %i.lj, align 8, !tbaa !71 ; 19 uses
  %i.ako = load ptr, ptr %i.r, align 8, !tbaa !121
  %i.akp = call i32 @N_VConstrMask(ptr noundef nonnull %i.ait, ptr noundef %i.ako, ptr noundef %i.akm) #13
  %.not.i83.i = icmp eq i32 %i.akp, 0
  br i1 %.not.i83.i, label %bb.fn, label %.thread171.i

bb.fn:                                            ; preds = %bb.fm
  %i.akq = load ptr, ptr %i.lh, align 8, !tbaa !97
  call void @N_VCompare(double noundef 1.500000e+00, ptr noundef %i.akq, ptr noundef %i.akn) #13
  %i.akr = load ptr, ptr %i.lh, align 8, !tbaa !97
  call void @N_VProd(ptr noundef %i.akn, ptr noundef %i.akr, ptr noundef %i.akn) #13
  %i.aks = load ptr, ptr %i.jj, align 8, !tbaa !69
  call void @N_VDiv(ptr noundef %i.akn, ptr noundef %i.aks, ptr noundef %i.akn) #13
  %i.akt = load ptr, ptr %i.lk, align 8, !tbaa !73
  call void @N_VScale(double noundef -1.000000e-01, ptr noundef %i.akn, ptr noundef %i.akt) #13
  %i.aku = load ptr, ptr %i.r, align 8, !tbaa !121
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.aku, double noundef -1.000000e-01, ptr noundef %i.akn, ptr noundef %i.akn) #13
  call void @N_VProd(ptr noundef %i.akn, ptr noundef %i.akm, ptr noundef %i.akn) #13
  %i.akv = load ptr, ptr %i.jj, align 8, !tbaa !69
  %i.akw = call double @N_VWrmsNorm(ptr noundef %i.akn, ptr noundef %i.akv) #13
  %i.akx = load double, ptr %i.kp, align 8, !tbaa !25
  %i.aky = fcmp ugt double %i.akw, %i.akx
  br i1 %i.aky, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.akz = load i64, ptr %i.ll, align 8, !tbaa !182
  %i.ala = add nsw i64 %i.akz, 1
  store i64 %i.ala, ptr %i.ll, align 8, !tbaa !182
  %i.alb = load ptr, ptr %i.la, align 8, !tbaa !70
  call void @N_VProd(ptr noundef %i.akm, ptr noundef %i.alb, ptr noundef %i.akn) #13
  %i.alc = load ptr, ptr %i.la, align 8, !tbaa !70 ; 2 uses
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.alc, double noundef -1.000000e+00, ptr noundef %i.akn, ptr noundef %i.alc) #13
  %i.ald = load ptr, ptr %i.ji, align 8, !tbaa !76
  call void @N_VProd(ptr noundef %i.akm, ptr noundef %i.ald, ptr noundef %i.akn) #13
  %i.ale = load ptr, ptr %i.la, align 8, !tbaa !70 ; 2 uses
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.ale, double noundef -1.000000e+00, ptr noundef %i.akn, ptr noundef %i.ale) #13
  %i.alf = load ptr, ptr %i.lk, align 8, !tbaa !73 ; 2 uses
  call void @N_VProd(ptr noundef %i.akm, ptr noundef %i.alf, ptr noundef %i.alf) #13
  %i.alg = load ptr, ptr %i.la, align 8, !tbaa !70 ; 2 uses
  %i.alh = load ptr, ptr %i.lk, align 8, !tbaa !73
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.alg, double noundef -1.000000e+00, ptr noundef %i.alh, ptr noundef %i.alg) #13
  br label %.thread171.i

bb.fp:                                            ; preds = %bb.fn
  %i.ali = add nsw i32 %.0142.ph184.i, 1          ; 2 uses
  %i.alj = load i64, ptr %i.ln, align 8, !tbaa !183
  %i.alk = add nsw i64 %i.alj, 1
  store i64 %i.alk, ptr %i.ln, align 8, !tbaa !183
  store double %i.sh, ptr %i.jo, align 8, !tbaa !78
  %i.all = load i32, ptr %i.jf, align 8, !tbaa !80 ; 2 uses
  %.not18.i.i84.i = icmp slt i32 %i.all, 1
  br i1 %.not18.i.i84.i, label %cvRestore.exit.i93.i, label %.preheader.i.i86.i

.preheader.i.i86.i:                               ; preds = %bb.fp, %bb.fr
  %indvars.iv21.i.i87.i = phi i64 [ %indvars.iv.next22.i.i91.i, %bb.fr ], [ 1, %bb.fp ] ; 3 uses
  %i.alm = phi i32 [ %i.als, %bb.fr ], [ %i.all, %bb.fp ]
  %i.aln = sext i32 %i.alm to i64
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fq, %.preheader.i.i86.i
  %indvars.iv.i.i88.i = phi i64 [ %i.aln, %.preheader.i.i86.i ], [ %indvars.iv.next.i.i89.i, %bb.fq ] ; 3 uses
  %i.alo = getelementptr [8 x i8], ptr %i.ji, i64 %indvars.iv.i.i88.i ; 2 uses
  %i.alp = getelementptr i8, ptr %i.alo, i64 -8
  %i.alq = load ptr, ptr %i.alp, align 8, !tbaa !76 ; 2 uses
  %i.alr = load ptr, ptr %i.alo, align 8, !tbaa !76
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.alq, double noundef -1.000000e+00, ptr noundef %i.alr, ptr noundef %i.alq) #13
  %indvars.iv.next.i.i89.i = add nsw i64 %indvars.iv.i.i88.i, -1
  %.not16.not.i.i90.i = icmp sgt i64 %indvars.iv.i.i88.i, %indvars.iv21.i.i87.i
  br i1 %.not16.not.i.i90.i, label %bb.fq, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %indvars.iv.next22.i.i91.i = add nuw nsw i64 %indvars.iv21.i.i87.i, 1
  %i.als = load i32, ptr %i.jf, align 8, !tbaa !80 ; 2 uses
  %i.alt = sext i32 %i.als to i64
  %.not.not.i.i92.i = icmp slt i64 %indvars.iv21.i.i87.i, %i.alt
  br i1 %.not.not.i.i92.i, label %.preheader.i.i86.i, label %cvRestore.exit.i93.i

cvRestore.exit.i93.i:                             ; preds = %bb.fr, %bb.fp
  %i.alu = load double, ptr %i.jd, align 8, !tbaa !134
  %i.alv = call double @llvm.fabs.f64(double %i.alu)
  %i.alw = load double, ptr %i.lo, align 8, !tbaa !136
  %i.alx = fmul double %i.alw, f0x3FF000010C6F7A0B
  %i.aly = fcmp ugt double %i.alv, %i.alx
  br i1 %i.aly, label %bb.fs, label %cvHandleNFlag.exit.thread.loopexit328.i

bb.fs:                                            ; preds = %cvRestore.exit.i93.i
  %i.alz = load i32, ptr %i.lp, align 8, !tbaa !33
  %i.ama = icmp eq i32 %i.ali, %i.alz
  br i1 %i.ama, label %cvHandleNFlag.exit.thread.loopexit328.i, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.amb = load ptr, ptr %i.ji, align 8, !tbaa !76
  %i.amc = load ptr, ptr %i.r, align 8, !tbaa !121
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.amb, double noundef -1.000000e+00, ptr noundef %i.amc, ptr noundef %i.akn) #13
  call void @N_VProd(ptr noundef %i.akm, ptr noundef %i.akn, ptr noundef %i.akn) #13
  %i.amd = load ptr, ptr %i.ji, align 8, !tbaa !76
  %i.ame = call double @N_VMinQuotient(ptr noundef %i.amd, ptr noundef %i.akn) #13
  %i.amf = fmul double %i.ame, 9.000000e-01       ; 2 uses
  %i.amg = fcmp ogt double %i.amf, 1.000000e-01
  %i.amh = select i1 %i.amg, double %i.amf, double 1.000000e-01 ; 2 uses
  %i.ami = load double, ptr %i.lo, align 8, !tbaa !136
  %i.amj = load double, ptr %i.jd, align 8, !tbaa !134
  %i.amk = call double @llvm.fabs.f64(double %i.amj)
  %i.aml = fdiv double %i.ami, %i.amk             ; 2 uses
  %i.amm = fcmp ogt double %i.amh, %i.aml
  %i.amn = select i1 %i.amm, double %i.amh, double %i.aml ; 7 uses
  store double %i.amn, ptr %i.jw, align 8, !tbaa !142
  store double %i.amn, ptr %i.jx, align 8, !tbaa !25
  %i.amo = load i32, ptr %i.jf, align 8, !tbaa !80 ; 4 uses
  %.not22.i.i94.i = icmp slt i32 %i.amo, 1
  br i1 %.not22.i.i94.i, label %.loopexit.i, label %.lr.ph.preheader.i.i95.i

.lr.ph.preheader.i.i95.i:                         ; preds = %bb.ft
  %load_initial837 = load double, ptr %i.jx, align 8 ; 2 uses
  %i.amp = zext nneg i32 %i.amo to i64            ; 2 uses
  %xtraiter912 = and i64 %i.amp, 3                ; 3 uses
  %i.amq = icmp ult i32 %i.amo, 4
  br i1 %i.amq, label %.lr.ph.i.i97.i.epil.preheader, label %.lr.ph.preheader.i.i95.i.new

.lr.ph.preheader.i.i95.i.new:                     ; preds = %.lr.ph.preheader.i.i95.i
  %unroll_iter916 = and i64 %i.amp, 2147483644
  br label %.lr.ph.i.i97.i

.lr.ph.i.i97.i:                                   ; preds = %.lr.ph.i.i97.i, %.lr.ph.preheader.i.i95.i.new
  %store_forwarded838 = phi double [ %load_initial837, %.lr.ph.preheader.i.i95.i.new ], [ %i.anb, %.lr.ph.i.i97.i ]
  %indvars.iv.i77.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i95.i.new ], [ %indvars.iv.next.i78.i.i.3, %.lr.ph.i.i97.i ] ; 5 uses
  %niter917 = phi i64 [ 0, %.lr.ph.preheader.i.i95.i.new ], [ %niter917.next.3, %.lr.ph.i.i97.i ]
  %i.amr = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i77.i.i
  %i.ams = fmul double %i.amn, %store_forwarded838 ; 2 uses
  store double %i.ams, ptr %i.amr, align 8, !tbaa !25
  %i.amt = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i77.i.i
  %i.amu = getelementptr i8, ptr %i.amt, i64 8
  %i.amv = fmul double %i.amn, %i.ams             ; 2 uses
  store double %i.amv, ptr %i.amu, align 8, !tbaa !25
  %i.amw = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i77.i.i
  %i.amx = getelementptr i8, ptr %i.amw, i64 16
  %i.amy = fmul double %i.amn, %i.amv             ; 2 uses
  store double %i.amy, ptr %i.amx, align 8, !tbaa !25
  %i.amz = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i77.i.i
  %i.ana = getelementptr i8, ptr %i.amz, i64 24
  %i.anb = fmul double %i.amn, %i.amy             ; 3 uses
  store double %i.anb, ptr %i.ana, align 8, !tbaa !25
  %indvars.iv.next.i78.i.i.3 = add nuw nsw i64 %indvars.iv.i77.i.i, 4 ; 2 uses
  %niter917.next.3 = add nuw i64 %niter917, 4     ; 2 uses
  %niter917.ncmp.3 = icmp eq i64 %niter917.next.3, %unroll_iter916
  br i1 %niter917.ncmp.3, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i97.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i97.i
  %lcmp.mod914.not = icmp eq i64 %xtraiter912, 0
  br i1 %lcmp.mod914.not, label %.loopexit.i, label %.lr.ph.i.i97.i.epil.preheader

.lr.ph.i.i97.i.epil.preheader:                    ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i95.i
  %store_forwarded838.epil.init = phi double [ %load_initial837, %.lr.ph.preheader.i.i95.i ], [ %i.anb, %.loopexit.i.loopexit.unr-lcssa ]
  %indvars.iv.i77.i.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i95.i ], [ %indvars.iv.next.i78.i.i.3, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod915 = icmp ne i64 %xtraiter912, 0
  call void @llvm.assume(i1 %lcmp.mod915)
  br label %.lr.ph.i.i97.i.epil

.lr.ph.i.i97.i.epil:                              ; preds = %.lr.ph.i.i97.i.epil, %.lr.ph.i.i97.i.epil.preheader
  %store_forwarded838.epil = phi double [ %store_forwarded838.epil.init, %.lr.ph.i.i97.i.epil.preheader ], [ %i.and, %.lr.ph.i.i97.i.epil ]
  %indvars.iv.i77.i.i.epil = phi i64 [ %indvars.iv.i77.i.i.epil.init, %.lr.ph.i.i97.i.epil.preheader ], [ %indvars.iv.next.i78.i.i.epil, %.lr.ph.i.i97.i.epil ] ; 2 uses
  %epil.iter913 = phi i64 [ 0, %.lr.ph.i.i97.i.epil.preheader ], [ %epil.iter913.next, %.lr.ph.i.i97.i.epil ]
  %i.anc = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i77.i.i.epil
  %i.and = fmul double %i.amn, %store_forwarded838.epil ; 2 uses
  store double %i.and, ptr %i.anc, align 8, !tbaa !25
  %indvars.iv.next.i78.i.i.epil = add nuw nsw i64 %indvars.iv.i77.i.i.epil, 1
  %epil.iter913.next = add i64 %epil.iter913, 1   ; 2 uses
  %epil.iter913.cmp.not = icmp eq i64 %epil.iter913.next, %xtraiter912
  br i1 %epil.iter913.cmp.not, label %.loopexit.i, label %.lr.ph.i.i97.i.epil, !llvm.loop !184

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i97.i.epil, %bb.ft
  %i.ane = call i32 @N_VScaleVectorArray(i32 noundef %i.amo, ptr noundef nonnull %i.jx, ptr noundef nonnull %i.jy, ptr noundef nonnull %i.jy) #13 ; 0 uses
  %i.anf = load double, ptr %i.jz, align 8, !tbaa !137
  %i.ang = load double, ptr %i.jw, align 8, !tbaa !142
  %i.anh = fmul double %i.anf, %i.ang             ; 3 uses
  store double %i.anh, ptr %i.jd, align 8, !tbaa !134
  store double %i.anh, ptr %i.je, align 8, !tbaa !91
  store double %i.anh, ptr %i.jz, align 8, !tbaa !137
  store i32 0, ptr %i.ka, align 8, !tbaa !88
  store i32 7, ptr %i.l, align 4, !tbaa !116
  br label %.outer183.i

.thread171.i:                                     ; preds = %bb.fo, %bb.fm, %cvHandleNFlag.exit.thread153.i
  store i32 0, ptr %i.lm, align 4, !tbaa !129
  br i1 %.050.i, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %.thread171.i
  %i.ani = call i32 @cvDoProjection(ptr noundef nonnull %0, ptr noundef nonnull %i.l, double noundef %i.sh, ptr noundef nonnull %i.m) #13 ; 2 uses
  switch i32 %i.ani, label %cvHandleNFlag.exit.thread.loopexit328.i [
    i32 3, label %bb.dx
    i32 0, label %bb.fv
  ]

bb.fv:                                            ; preds = %bb.fu, %.thread171.i
  %i.anj = load double, ptr %i.lf, align 8, !tbaa !177
  %i.ank = load double, ptr %i.kj, align 8, !tbaa !25
  %i.anl = fmul double %i.anj, %i.ank             ; 3 uses
  %i.anm = fcmp ugt double %i.anl, 1.000000e+00
  br i1 %i.anm, label %bb.fw, label %bb.gj

bb.fw:                                            ; preds = %bb.fv
  %i.ann = add nsw i32 %.0145.ph181.i, 1          ; 3 uses
  %i.ano = load i64, ptr %i.lq, align 8, !tbaa !185
  %i.anp = add nsw i64 %i.ano, 1
  store i64 %i.anp, ptr %i.lq, align 8, !tbaa !185
  store i32 9, ptr %i.l, align 4, !tbaa !116
  store double %i.sh, ptr %i.jo, align 8, !tbaa !78
  %i.anq = load i32, ptr %i.jf, align 8, !tbaa !80 ; 3 uses
  %.not18.i.i101.i = icmp slt i32 %i.anq, 1
  br i1 %.not18.i.i101.i, label %cvRestore.exit.i110.i, label %.preheader.i.i103.i

.preheader.i.i103.i:                              ; preds = %bb.fw, %bb.fy
  %indvars.iv21.i.i104.i = phi i64 [ %indvars.iv.next22.i.i108.i, %bb.fy ], [ 1, %bb.fw ] ; 3 uses
  %i.anr = phi i32 [ %i.anx, %bb.fy ], [ %i.anq, %bb.fw ]
  %i.ans = sext i32 %i.anr to i64
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fx, %.preheader.i.i103.i
  %indvars.iv.i.i105.i = phi i64 [ %i.ans, %.preheader.i.i103.i ], [ %indvars.iv.next.i.i106.i, %bb.fx ] ; 3 uses
  %i.ant = getelementptr [8 x i8], ptr %i.ji, i64 %indvars.iv.i.i105.i ; 2 uses
  %i.anu = getelementptr i8, ptr %i.ant, i64 -8
  %i.anv = load ptr, ptr %i.anu, align 8, !tbaa !76 ; 2 uses
  %i.anw = load ptr, ptr %i.ant, align 8, !tbaa !76
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.anv, double noundef -1.000000e+00, ptr noundef %i.anw, ptr noundef %i.anv) #13
  %indvars.iv.next.i.i106.i = add nsw i64 %indvars.iv.i.i105.i, -1
  %.not16.not.i.i107.i = icmp sgt i64 %indvars.iv.i.i105.i, %indvars.iv21.i.i104.i
  br i1 %.not16.not.i.i107.i, label %bb.fx, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %indvars.iv.next22.i.i108.i = add nuw nsw i64 %indvars.iv21.i.i104.i, 1
  %i.anx = load i32, ptr %i.jf, align 8, !tbaa !80 ; 3 uses
  %i.any = sext i32 %i.anx to i64
  %.not.not.i.i109.i = icmp slt i64 %indvars.iv21.i.i104.i, %i.any
  br i1 %.not.not.i.i109.i, label %.preheader.i.i103.i, label %cvRestore.exit.i110.i

cvRestore.exit.i110.i:                            ; preds = %bb.fy, %bb.fw
  %i.anz = phi i32 [ %i.anq, %bb.fw ], [ %i.anx, %bb.fy ] ; 5 uses
  %i.aoa = load double, ptr %i.jd, align 8, !tbaa !134 ; 2 uses
  %i.aob = call double @llvm.fabs.f64(double %i.aoa) ; 3 uses
  %i.aoc = load double, ptr %i.lo, align 8, !tbaa !136 ; 3 uses
  %i.aod = fmul double %i.aoc, f0x3FF000010C6F7A0B
  %i.aoe = fcmp ugt double %i.aob, %i.aod
  br i1 %i.aoe, label %bb.fz, label %cvHandleNFlag.exit.thread.loopexit328.i

bb.fz:                                            ; preds = %cvRestore.exit.i110.i
  %i.aof = load i32, ptr %i.lr, align 4, !tbaa !28
  %i.aog = icmp eq i32 %i.ann, %i.aof
  br i1 %i.aog, label %cvHandleNFlag.exit.thread.loopexit328.i, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  store double 1.000000e+00, ptr %i.ls, align 8, !tbaa !84
  %i.aoh = icmp slt i32 %.0145.ph181.i, 3
  br i1 %i.aoh, label %bb.gb, label %bb.ge

bb.gb:                                            ; preds = %bb.ga
  %i.aoi = fmul double %i.anl, 6.000000e+00
  %i.aoj = load i32, ptr %i.ju, align 8, !tbaa !81
  %i.aok = sitofp i32 %i.aoj to double
  %i.aol = fdiv double 1.000000e+00, %i.aok
  %i.aom = call double @pow(double noundef %i.aoi, double noundef %i.aol) #13
  %i.aon = fadd double %i.aom, f0x3EB0C6F7A0B5ED8D
  %i.aoo = fdiv double 1.000000e+00, %i.aon       ; 2 uses
  %i.aop = load double, ptr %i.lt, align 8, !tbaa !186 ; 2 uses
  %i.aoq = fdiv double %i.aoc, %i.aob             ; 2 uses
  %i.aor = fcmp ogt double %i.aoo, %i.aoq
  %..i112.i = select i1 %i.aor, double %i.aoo, double %i.aoq ; 2 uses
  %i.aos = fcmp ogt double %i.aop, %..i112.i
  %i.aot = select i1 %i.aos, double %i.aop, double %..i112.i ; 4 uses
  store double %i.aot, ptr %i.jw, align 8, !tbaa !142
  %i.aou = load i32, ptr %i.lx, align 8, !tbaa !27
  %.not95.i.i = icmp slt i32 %i.ann, %i.aou
  br i1 %.not95.i.i, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.aov = load double, ptr %i.ly, align 8, !tbaa !187 ; 2 uses
  %i.aow = fcmp olt double %i.aot, %i.aov
  %.97.i.i = select i1 %i.aow, double %i.aot, double %i.aov ; 2 uses
  store double %.97.i.i, ptr %i.jw, align 8, !tbaa !142
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %i.aox = phi double [ %.97.i.i, %bb.gc ], [ %i.aot, %bb.gb ] ; 6 uses
  store double %i.aox, ptr %i.jx, align 8, !tbaa !25
  %.not22.i.i113.i = icmp slt i32 %i.anz, 1
  br i1 %.not22.i.i113.i, label %cvRescale.exit.i118.i, label %.lr.ph.preheader.i.i114.i

.lr.ph.preheader.i.i114.i:                        ; preds = %bb.gd
  %load_initial841 = load double, ptr %i.jx, align 8 ; 2 uses
  %i.aoy = zext nneg i32 %i.anz to i64            ; 2 uses
  %xtraiter924 = and i64 %i.aoy, 3                ; 3 uses
  %i.aoz = icmp ult i32 %i.anz, 4
  br i1 %i.aoz, label %.lr.ph.i.i116.i.epil.preheader, label %.lr.ph.preheader.i.i114.i.new

.lr.ph.preheader.i.i114.i.new:                    ; preds = %.lr.ph.preheader.i.i114.i
  %unroll_iter928 = and i64 %i.aoy, 2147483644
  br label %.lr.ph.i.i116.i

.lr.ph.i.i116.i:                                  ; preds = %.lr.ph.i.i116.i, %.lr.ph.preheader.i.i114.i.new
  %store_forwarded842 = phi double [ %load_initial841, %.lr.ph.preheader.i.i114.i.new ], [ %i.apk, %.lr.ph.i.i116.i ]
  %indvars.iv.i100.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i114.i.new ], [ %indvars.iv.next.i101.i.i.3, %.lr.ph.i.i116.i ] ; 5 uses
  %niter929 = phi i64 [ 0, %.lr.ph.preheader.i.i114.i.new ], [ %niter929.next.3, %.lr.ph.i.i116.i ]
  %i.apa = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i100.i.i
  %i.apb = fmul double %i.aox, %store_forwarded842 ; 2 uses
  store double %i.apb, ptr %i.apa, align 8, !tbaa !25
  %i.apc = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i100.i.i
  %i.apd = getelementptr i8, ptr %i.apc, i64 8
  %i.ape = fmul double %i.aox, %i.apb             ; 2 uses
  store double %i.ape, ptr %i.apd, align 8, !tbaa !25
  %i.apf = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i100.i.i
  %i.apg = getelementptr i8, ptr %i.apf, i64 16
  %i.aph = fmul double %i.aox, %i.ape             ; 2 uses
  store double %i.aph, ptr %i.apg, align 8, !tbaa !25
  %i.api = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i100.i.i
  %i.apj = getelementptr i8, ptr %i.api, i64 24
  %i.apk = fmul double %i.aox, %i.aph             ; 3 uses
  store double %i.apk, ptr %i.apj, align 8, !tbaa !25
  %indvars.iv.next.i101.i.i.3 = add nuw nsw i64 %indvars.iv.i100.i.i, 4 ; 2 uses
  %niter929.next.3 = add nuw i64 %niter929, 4     ; 2 uses
  %niter929.ncmp.3 = icmp eq i64 %niter929.next.3, %unroll_iter928
  br i1 %niter929.ncmp.3, label %cvRescale.exit.i118.i.loopexit.unr-lcssa, label %.lr.ph.i.i116.i

cvRescale.exit.i118.i.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i116.i
  %lcmp.mod926.not = icmp eq i64 %xtraiter924, 0
  br i1 %lcmp.mod926.not, label %cvRescale.exit.i118.i, label %.lr.ph.i.i116.i.epil.preheader

.lr.ph.i.i116.i.epil.preheader:                   ; preds = %cvRescale.exit.i118.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i114.i
  %store_forwarded842.epil.init = phi double [ %load_initial841, %.lr.ph.preheader.i.i114.i ], [ %i.apk, %cvRescale.exit.i118.i.loopexit.unr-lcssa ]
  %indvars.iv.i100.i.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i114.i ], [ %indvars.iv.next.i101.i.i.3, %cvRescale.exit.i118.i.loopexit.unr-lcssa ]
  %lcmp.mod927 = icmp ne i64 %xtraiter924, 0
  call void @llvm.assume(i1 %lcmp.mod927)
  br label %.lr.ph.i.i116.i.epil

.lr.ph.i.i116.i.epil:                             ; preds = %.lr.ph.i.i116.i.epil, %.lr.ph.i.i116.i.epil.preheader
  %store_forwarded842.epil = phi double [ %store_forwarded842.epil.init, %.lr.ph.i.i116.i.epil.preheader ], [ %i.apm, %.lr.ph.i.i116.i.epil ]
  %indvars.iv.i100.i.i.epil = phi i64 [ %indvars.iv.i100.i.i.epil.init, %.lr.ph.i.i116.i.epil.preheader ], [ %indvars.iv.next.i101.i.i.epil, %.lr.ph.i.i116.i.epil ] ; 2 uses
  %epil.iter925 = phi i64 [ 0, %.lr.ph.i.i116.i.epil.preheader ], [ %epil.iter925.next, %.lr.ph.i.i116.i.epil ]
  %i.apl = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i100.i.i.epil
  %i.apm = fmul double %i.aox, %store_forwarded842.epil ; 2 uses
  store double %i.apm, ptr %i.apl, align 8, !tbaa !25
  %indvars.iv.next.i101.i.i.epil = add nuw nsw i64 %indvars.iv.i100.i.i.epil, 1
  %epil.iter925.next = add i64 %epil.iter925, 1   ; 2 uses
  %epil.iter925.cmp.not = icmp eq i64 %epil.iter925.next, %xtraiter924
  br i1 %epil.iter925.cmp.not, label %cvRescale.exit.i118.i, label %.lr.ph.i.i116.i.epil, !llvm.loop !188

cvRescale.exit.i118.i:                            ; preds = %cvRescale.exit.i118.i.loopexit.unr-lcssa, %.lr.ph.i.i116.i.epil, %bb.gd
  %i.apn = call i32 @N_VScaleVectorArray(i32 noundef %i.anz, ptr noundef nonnull %i.jx, ptr noundef nonnull %i.jy, ptr noundef nonnull %i.jy) #13 ; 0 uses
  %i.apo = load double, ptr %i.jz, align 8, !tbaa !137
  %i.app = load double, ptr %i.jw, align 8, !tbaa !142
  %i.apq = fmul double %i.apo, %i.app             ; 3 uses
  store double %i.apq, ptr %i.jd, align 8, !tbaa !134
  store double %i.apq, ptr %i.je, align 8, !tbaa !91
  store double %i.apq, ptr %i.jz, align 8, !tbaa !137
  store i32 0, ptr %i.ka, align 8, !tbaa !88
  br label %.outer180.i.backedge

bb.ge:                                            ; preds = %bb.ga
  %i.apr = icmp sgt i32 %i.anz, 1
  %i.aps = load double, ptr %i.lt, align 8, !tbaa !186 ; 2 uses
  %i.apt = fdiv double %i.aoc, %i.aob             ; 2 uses
  %i.apu = fcmp ogt double %i.aps, %i.apt
  %.98.i.i = select i1 %i.apu, double %i.aps, double %i.apt ; 2 uses
  store double %.98.i.i, ptr %i.jw, align 8, !tbaa !142
  br i1 %i.apr, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  call fastcc void @cvAdjustOrder(ptr noundef nonnull %0, i32 noundef -1)
  %i.apv = load i32, ptr %i.jf, align 8, !tbaa !80 ; 6 uses
  store i32 %i.apv, ptr %i.ju, align 8, !tbaa !81
  %i.apw = add nsw i32 %i.apv, -1                 ; 2 uses
  store i32 %i.apw, ptr %i.jf, align 8, !tbaa !80
  store i32 %i.apv, ptr %i.jv, align 4, !tbaa !82
  %i.apx = load double, ptr %i.jw, align 8, !tbaa !142 ; 6 uses
  store double %i.apx, ptr %i.jx, align 8, !tbaa !25
  %.not22.i102.i.i = icmp slt i32 %i.apv, 2
  br i1 %.not22.i102.i.i, label %cvRescale.exit109.i.i, label %.lr.ph.preheader.i103.i.i

.lr.ph.preheader.i103.i.i:                        ; preds = %bb.gf
  %wide.trip.count.i104.i.i = zext nneg i32 %i.apv to i64
  %load_initial839 = load double, ptr %i.jx, align 8 ; 2 uses
  %i.apy = add nsw i64 %wide.trip.count.i104.i.i, -1 ; 2 uses
  %xtraiter918 = and i64 %i.apy, 3                ; 3 uses
  %i.apz = add nsw i32 %i.apv, -2
  %i.aqa = icmp ult i32 %i.apz, 3
  br i1 %i.aqa, label %.lr.ph.i105.i.i.epil.preheader, label %.lr.ph.preheader.i103.i.i.new

.lr.ph.preheader.i103.i.i.new:                    ; preds = %.lr.ph.preheader.i103.i.i
  %unroll_iter922 = and i64 %i.apy, -4
  br label %.lr.ph.i105.i.i

.lr.ph.i105.i.i:                                  ; preds = %.lr.ph.i105.i.i, %.lr.ph.preheader.i103.i.i.new
  %store_forwarded840 = phi double [ %load_initial839, %.lr.ph.preheader.i103.i.i.new ], [ %i.aql, %.lr.ph.i105.i.i ]
  %indvars.iv.i106.i.i = phi i64 [ 1, %.lr.ph.preheader.i103.i.i.new ], [ %indvars.iv.next.i107.i.i.3, %.lr.ph.i105.i.i ] ; 5 uses
  %niter923 = phi i64 [ 0, %.lr.ph.preheader.i103.i.i.new ], [ %niter923.next.3, %.lr.ph.i105.i.i ]
  %i.aqb = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i106.i.i
  %i.aqc = fmul double %i.apx, %store_forwarded840 ; 2 uses
  store double %i.aqc, ptr %i.aqb, align 8, !tbaa !25
  %i.aqd = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i106.i.i
  %i.aqe = getelementptr i8, ptr %i.aqd, i64 8
  %i.aqf = fmul double %i.apx, %i.aqc             ; 2 uses
  store double %i.aqf, ptr %i.aqe, align 8, !tbaa !25
  %i.aqg = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i106.i.i
  %i.aqh = getelementptr i8, ptr %i.aqg, i64 16
  %i.aqi = fmul double %i.apx, %i.aqf             ; 2 uses
  store double %i.aqi, ptr %i.aqh, align 8, !tbaa !25
  %i.aqj = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i106.i.i
  %i.aqk = getelementptr i8, ptr %i.aqj, i64 24
  %i.aql = fmul double %i.apx, %i.aqi             ; 3 uses
  store double %i.aql, ptr %i.aqk, align 8, !tbaa !25
  %indvars.iv.next.i107.i.i.3 = add nuw nsw i64 %indvars.iv.i106.i.i, 4 ; 2 uses
  %niter923.next.3 = add nuw i64 %niter923, 4     ; 2 uses
  %niter923.ncmp.3 = icmp eq i64 %niter923.next.3, %unroll_iter922
  br i1 %niter923.ncmp.3, label %cvRescale.exit109.i.i.loopexit.unr-lcssa, label %.lr.ph.i105.i.i

cvRescale.exit109.i.i.loopexit.unr-lcssa:         ; preds = %.lr.ph.i105.i.i
  %lcmp.mod920.not = icmp eq i64 %xtraiter918, 0
  br i1 %lcmp.mod920.not, label %cvRescale.exit109.i.i, label %.lr.ph.i105.i.i.epil.preheader

.lr.ph.i105.i.i.epil.preheader:                   ; preds = %cvRescale.exit109.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i103.i.i
  %store_forwarded840.epil.init = phi double [ %load_initial839, %.lr.ph.preheader.i103.i.i ], [ %i.aql, %cvRescale.exit109.i.i.loopexit.unr-lcssa ]
  %indvars.iv.i106.i.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i103.i.i ], [ %indvars.iv.next.i107.i.i.3, %cvRescale.exit109.i.i.loopexit.unr-lcssa ]
  %lcmp.mod921 = icmp ne i64 %xtraiter918, 0
  call void @llvm.assume(i1 %lcmp.mod921)
  br label %.lr.ph.i105.i.i.epil

.lr.ph.i105.i.i.epil:                             ; preds = %.lr.ph.i105.i.i.epil, %.lr.ph.i105.i.i.epil.preheader
  %store_forwarded840.epil = phi double [ %store_forwarded840.epil.init, %.lr.ph.i105.i.i.epil.preheader ], [ %i.aqn, %.lr.ph.i105.i.i.epil ]
  %indvars.iv.i106.i.i.epil = phi i64 [ %indvars.iv.i106.i.i.epil.init, %.lr.ph.i105.i.i.epil.preheader ], [ %indvars.iv.next.i107.i.i.epil, %.lr.ph.i105.i.i.epil ] ; 2 uses
  %epil.iter919 = phi i64 [ 0, %.lr.ph.i105.i.i.epil.preheader ], [ %epil.iter919.next, %.lr.ph.i105.i.i.epil ]
  %i.aqm = getelementptr [8 x i8], ptr %i.jx, i64 %indvars.iv.i106.i.i.epil
  %i.aqn = fmul double %i.apx, %store_forwarded840.epil ; 2 uses
  store double %i.aqn, ptr %i.aqm, align 8, !tbaa !25
  %indvars.iv.next.i107.i.i.epil = add nuw nsw i64 %indvars.iv.i106.i.i.epil, 1
  %epil.iter919.next = add i64 %epil.iter919, 1   ; 2 uses
  %epil.iter919.cmp.not = icmp eq i64 %epil.iter919.next, %xtraiter918
  br i1 %epil.iter919.cmp.not, label %cvRescale.exit109.i.i, label %.lr.ph.i105.i.i.epil, !llvm.loop !189

cvRescale.exit109.i.i:                            ; preds = %cvRescale.exit109.i.i.loopexit.unr-lcssa, %.lr.ph.i105.i.i.epil, %bb.gf
  %i.aqo = call i32 @N_VScaleVectorArray(i32 noundef %i.apw, ptr noundef nonnull %i.jx, ptr noundef nonnull %i.jy, ptr noundef nonnull %i.jy) #13 ; 0 uses
  %i.aqp = load double, ptr %i.jz, align 8, !tbaa !137
  %i.aqq = load double, ptr %i.jw, align 8, !tbaa !142
  %i.aqr = fmul double %i.aqp, %i.aqq             ; 3 uses
  store double %i.aqr, ptr %i.jd, align 8, !tbaa !134
  store double %i.aqr, ptr %i.je, align 8, !tbaa !91
  store double %i.aqr, ptr %i.jz, align 8, !tbaa !137
  store i32 0, ptr %i.ka, align 8, !tbaa !88
  br label %.outer180.i.backedge

bb.gg:                                            ; preds = %bb.ge
  %i.aqs = fmul double %i.aoa, %.98.i.i           ; 3 uses
  store double %i.aqs, ptr %i.jd, align 8, !tbaa !134
  store double %i.aqs, ptr %i.je, align 8, !tbaa !91
  store double %i.aqs, ptr %i.jz, align 8, !tbaa !137
  store i32 10, ptr %i.jv, align 4, !tbaa !82
  store i32 0, ptr %i.ka, align 8, !tbaa !88
  %i.aqt = load ptr, ptr %i.lu, align 8, !tbaa !77
  %i.aqu = load double, ptr %i.jo, align 8, !tbaa !78
  %i.aqv = load ptr, ptr %i.ji, align 8, !tbaa !76
  %i.aqw = load ptr, ptr %i.lj, align 8, !tbaa !71
  %i.aqx = load ptr, ptr %i.lv, align 8, !tbaa !124
  %i.aqy = call i32 %i.aqt(double noundef %i.aqu, ptr noundef %i.aqv, ptr noundef %i.aqw, ptr noundef %i.aqx) #13, !inline_history !190 ; 2 uses
  %i.aqz = load i64, ptr %i.lw, align 8, !tbaa !130
  %i.ara = add nsw i64 %i.aqz, 1
  store i64 %i.ara, ptr %i.lw, align 8, !tbaa !130
  %i.arb = icmp slt i32 %i.aqy, 0
  br i1 %i.arb, label %cvHandleNFlag.exit.thread.loopexit328.i, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %.not.i111.i = icmp eq i32 %i.aqy, 0
  br i1 %.not.i111.i, label %bb.gi, label %cvHandleNFlag.exit.thread.loopexit328.i

bb.gi:                                            ; preds = %bb.gh
  %i.arc = load double, ptr %i.jd, align 8, !tbaa !134
  %i.ard = load ptr, ptr %i.lj, align 8, !tbaa !71
  %i.are = load ptr, ptr %i.jy, align 8, !tbaa !76
  call void @N_VScale(double noundef %i.arc, ptr noundef %i.ard, ptr noundef %i.are) #13
  br label %.outer180.i.backedge

.outer180.i.backedge:                             ; preds = %bb.gi, %cvRescale.exit109.i.i, %cvRescale.exit.i118.i
  br label %.outer180.i

bb.gj:                                            ; preds = %bb.fv
  %i.arf = load i64, ptr %i.v, align 8, !tbaa !122 ; 2 uses
  %i.arg = add nsw i64 %i.arf, 1
  store i64 %i.arg, ptr %i.v, align 8, !tbaa !122
  %i.arh = load i32, ptr %i.ka, align 8, !tbaa !88
  %i.ari = add nsw i32 %i.arh, 1
  store i32 %i.ari, ptr %i.ka, align 8, !tbaa !88
  %i.arj = load double, ptr %i.jd, align 8, !tbaa !134 ; 2 uses
  store double %i.arj, ptr %i.mc, align 8, !tbaa !86
  %i.ark = load i32, ptr %i.jf, align 8, !tbaa !80 ; 7 uses
  store i32 %i.ark, ptr %i.md, align 8, !tbaa !85
  store i32 0, ptr %i.jt, align 4, !tbaa !139
  %i.arl = icmp sgt i32 %i.ark, 1
  br i1 %i.arl, label %._crit_edge.thread.i.i, label %._crit_edge.i119.i

._crit_edge.thread.i.i:                           ; preds = %bb.gj
  %i.arm = zext nneg i32 %i.ark to i64
  %i.arn = shl nuw nsw i64 %i.arm, 3
  %i.aro = add nsw i32 %i.ark, -2
  %i.arp = zext nneg i32 %i.aro to i64
  %.neg239.i = mul nsw i64 %i.arp, -8             ; 2 uses
  %i.arq = getelementptr i8, ptr %0, i64 %i.arn   ; 2 uses
  %i.arr = getelementptr i8, ptr %i.arq, i64 360
  %scevgep.i.i = getelementptr i8, ptr %i.arr, i64 %.neg239.i
  %i.ars = getelementptr i8, ptr %i.arq, i64 352
  %scevgep44.i.i = getelementptr i8, ptr %i.ars, i64 %.neg239.i
  %i.art = add nsw i32 %i.ark, -1
  %i.aru = zext nneg i32 %i.art to i64
  %i.arv = shl nuw nsw i64 %i.aru, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i.i, ptr align 8 %scevgep44.i.i, i64 %i.arv, i1 false), !tbaa !25
  br label %bb.gl

._crit_edge.i119.i:                               ; preds = %bb.gj
  %i.arw = icmp eq i32 %i.ark, 1
  %i.arx = icmp sgt i64 %i.arf, 0
  %or.cond.i.i = select i1 %i.arw, i1 %i.arx, i1 false
  br i1 %or.cond.i.i, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %._crit_edge.i119.i
  %i.ary = load double, ptr %i.me, align 8, !tbaa !25
  store double %i.ary, ptr %i.mf, align 8, !tbaa !25
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %._crit_edge.i119.i, %._crit_edge.thread.i.i
  store double %i.arj, ptr %i.me, align 8, !tbaa !25
  %i.arz = add nsw i32 %i.ark, 1
  %i.asa = load ptr, ptr %i.la, align 8, !tbaa !70
  %i.asb = call i32 @N_VScaleAddMulti(i32 noundef %i.arz, ptr noundef nonnull %i.kg, ptr noundef %i.asa, ptr noundef nonnull %i.ji, ptr noundef nonnull %i.ji) #13 ; 0 uses
  %i.asc = load i32, ptr %i.lm, align 4, !tbaa !129
  %.not.i120.i = icmp eq i32 %i.asc, 0
  br i1 %.not.i120.i, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.asd = load i32, ptr %i.jf, align 8, !tbaa !80
  %i.ase = add nsw i32 %i.asd, 1
  %i.asf = load ptr, ptr %i.lj, align 8, !tbaa !71
  %i.asg = call i32 @N_VScaleAddMulti(i32 noundef %i.ase, ptr noundef nonnull %i.ki, ptr noundef %i.asf, ptr noundef nonnull %i.ji, ptr noundef nonnull %i.ji) #13 ; 0 uses
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gm, %bb.gl
  %i.ash = load i32, ptr %i.jv, align 4, !tbaa !82
  %i.asi = add nsw i32 %i.ash, -1                 ; 2 uses
  store i32 %i.asi, ptr %i.jv, align 4, !tbaa !82
  %i.asj = icmp eq i32 %i.asi, 1
  br i1 %i.asj, label %bb.go, label %cvCompleteStep.exit.i

bb.go:                                            ; preds = %bb.gn
  %i.ask = load i32, ptr %i.jf, align 8, !tbaa !80
  %i.asl = load i32, ptr %i.mg, align 8, !tbaa !22 ; 2 uses
  %.not42.i.i = icmp eq i32 %i.ask, %i.asl
  br i1 %.not42.i.i, label %cvCompleteStep.exit.i, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.asm = load ptr, ptr %i.la, align 8, !tbaa !70
  %i.asn = sext i32 %i.asl to i64
  %i.aso = getelementptr inbounds [8 x i8], ptr %i.ji, i64 %i.asn
  %i.asp = load ptr, ptr %i.aso, align 8, !tbaa !76
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.asm, ptr noundef %i.asp) #13
  %i.asq = load double, ptr %i.kk, align 8, !tbaa !25
  store double %i.asq, ptr %i.mh, align 8, !tbaa !191
  %i.asr = load i32, ptr %i.mg, align 8, !tbaa !22
  store i32 %i.asr, ptr %i.mi, align 4, !tbaa !192
  br label %cvCompleteStep.exit.i

cvCompleteStep.exit.i:                            ; preds = %bb.gp, %bb.go, %bb.gn
  %i.ass = load double, ptr %i.ls, align 8, !tbaa !84 ; 3 uses
  %i.ast = fcmp oeq double %i.ass, 1.000000e+00
  br i1 %i.ast, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %cvCompleteStep.exit.i
  %i.asu = load i32, ptr %i.jv, align 4, !tbaa !82
  %spec.select.i126.i = call i32 @llvm.smax.i32(i32 %i.asu, i32 2)
  store i32 %spec.select.i126.i, ptr %i.jv, align 4, !tbaa !82
  %i.asv = load i32, ptr %i.jf, align 8, !tbaa !80
  store i32 %i.asv, ptr %i.js, align 4, !tbaa !144
  %i.asw = load double, ptr %i.jd, align 8, !tbaa !134
  store double %i.asw, ptr %i.jr, align 8, !tbaa !138
  store double 1.000000e+00, ptr %i.jw, align 8, !tbaa !142
  br label %cvPrepareNextStep.exit.i

bb.gr:                                            ; preds = %cvCompleteStep.exit.i
  %i.asx = fmul nnan double %i.anl, 6.000000e+00
  %i.asy = load i32, ptr %i.ju, align 8, !tbaa !81
  %i.asz = sitofp i32 %i.asy to double
  %i.ata = fdiv double 1.000000e+00, %i.asz
  %i.atb = call double @pow(double noundef %i.asx, double noundef %i.ata) #13
  %i.atc = fadd double %i.atb, f0x3EB0C6F7A0B5ED8D
  %i.atd = fdiv double 1.000000e+00, %i.atc       ; 8 uses
  store double %i.atd, ptr %i.mj, align 8, !tbaa !193
  %i.ate = load i32, ptr %i.jv, align 4, !tbaa !82
  %.not.i121.i = icmp eq i32 %i.ate, 0
  br i1 %.not.i121.i, label %bb.gx, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.atf = load i32, ptr %i.jf, align 8, !tbaa !80
  store i32 %i.atf, ptr %i.js, align 4, !tbaa !144
  %i.atg = load double, ptr %i.mk, align 8, !tbaa !194
  %i.ath = fcmp ogt double %i.atd, %i.atg
  %i.ati = load double, ptr %i.ml, align 8, !tbaa !195 ; 2 uses
  %i.atj = fcmp olt double %i.atd, %i.ati
  %or.cond.i.i122.i = select i1 %i.ath, i1 %i.atj, i1 false
  br i1 %or.cond.i.i122.i, label %bb.gt, label %._crit_edge.i.i123.i

bb.gt:                                            ; preds = %bb.gs
  store double 1.000000e+00, ptr %i.jw, align 8, !tbaa !142
  %i.atk = load double, ptr %i.jd, align 8, !tbaa !134
  store double %i.atk, ptr %i.jr, align 8, !tbaa !138
  br label %cvPrepareNextStep.exit.i

._crit_edge.i.i123.i:                             ; preds = %bb.gs
end_hunk_1
begin_hunk_2_@CVodeGetDky:bb.a

._crit_edge:                                      ; preds = %.lr.ph80.epil, %._crit_edge.unr-lcssa
  %.lcssa101 = phi double [ %i.bd, %._crit_edge.unr-lcssa ], [ %i.bf, %.lr.ph80.epil ]
  store double %.lcssa101, ptr %i.am, align 8, !tbaa !25
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %.preheader
  %i.bg = zext nneg i32 %.06784 to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !76
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv91
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !76
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.bk = add nsw i32 %.06784, -1
  %indvars.iv.next = add i32 %indvars.iv, -1
  %exitcond94.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count
  br i1 %exitcond94.not, label %._crit_edge88, label %bb.j

._crit_edge88:                                    ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1744
  %i.bn = tail call i32 @N_VLinearCombination(i32 noundef %i.aj, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bm, ptr noundef nonnull %3) #13
  %.not74 = icmp eq i32 %i.bn, 0
  br i1 %.not74, label %bb.l, label %bb.n

bb.l:                                             ; preds = %._crit_edge88
  %i.bo = icmp eq i32 %2, 0
  br i1 %i.bo, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = load double, ptr %i.ab, align 8, !tbaa !134
  %i.bq = sub nsw i32 0, %2
  %i.br = tail call double @SUNRpowerI(double noundef %i.bp, i32 noundef %i.bq) #13
  tail call void @N_VScale(double noundef %i.br, ptr noundef nonnull %3, ptr noundef nonnull %3) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %._crit_edge88, %bb.m, %bb.i, %bb.g, %bb.d, %bb.b
  %.070 = phi i32 [ -21, %bb.b ], [ -26, %bb.d ], [ -24, %bb.g ], [ -25, %bb.i ], [ 0, %bb.m ], [ -28, %._crit_edge88 ], [ 0, %bb.l ]
  ret i32 %.070
}

declare double @N_VWrmsNorm(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @N_VLinearCombination(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare double @SUNRpowerI(double noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -21, 1) i32 @CVodeComputeState(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, i32 noundef 1770, ptr noundef nonnull @__func__.CVodeComputeState, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.c, double noundef 1.000000e+00, ptr noundef %1, ptr noundef %2) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -21, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @CVodeFree(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !224    ; 14 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @cvFreeVectors(ptr noundef %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 976 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !79
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 968 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !168
  %i.g = tail call i32 @SUNNonlinSolFree(ptr noundef %i.f) #13 ; 0 uses
  store i32 0, ptr %i.c, align 8, !tbaa !79
  store ptr null, ptr %i.e, align 8, !tbaa !168
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1032
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !225  ; 2 uses
  %.not28 = icmp eq ptr %i.i, null
  br i1 %.not28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 %i.i(ptr noundef nonnull %i.a) #13 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1376
  %i.l = load i32, ptr %i.k, align 8, !tbaa !108
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1424 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !109
  tail call void @free(ptr noundef %i.o) #13
  store ptr null, ptr %i.n, align 8, !tbaa !109
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1432 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !110
  tail call void @free(ptr noundef %i.q) #13
  store ptr null, ptr %i.p, align 8, !tbaa !110
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1440 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !111
  tail call void @free(ptr noundef %i.s) #13
  store ptr null, ptr %i.r, align 8, !tbaa !111
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1384 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !112
  tail call void @free(ptr noundef %i.u) #13
  store ptr null, ptr %i.t, align 8, !tbaa !112
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1392 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !113
  tail call void @free(ptr noundef %i.w) #13
  store ptr null, ptr %i.v, align 8, !tbaa !113
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1472 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !114
  tail call void @free(ptr noundef %i.y) #13
  store ptr null, ptr %i.x, align 8, !tbaa !114
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 1520 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !128
  %.not29 = icmp eq ptr %i.aa, null
  br i1 %.not29, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = tail call i32 @cvProjFree(ptr noundef nonnull %i.z) #13 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ac = load ptr, ptr %0, align 8, !tbaa !224
  tail call void @free(ptr noundef %i.ac) #13
  store ptr null, ptr %0, align 8, !tbaa !224
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  ret void
}

declare i32 @cvProjFree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @cvRescale(ptr noundef initializes((1640, 1648)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !142 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 8 uses
  store double %i.b, ptr %i.c, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.e = load i32, ptr %i.d, align 8, !tbaa !80   ; 4 uses
  %.not22 = icmp slt i32 %i.e, 1
  br i1 %.not22, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %load_initial = load double, ptr %i.c, align 8  ; 2 uses
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %xtraiter = and i64 %i.f, 3                     ; 3 uses
  %i.g = icmp ult i32 %i.e, 4
  br i1 %i.g, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.f, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %store_forwarded = phi double [ %load_initial, %.lr.ph.preheader.new ], [ %i.r, %.lr.ph ]
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.h = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.i = fmul double %i.b, %store_forwarded       ; 2 uses
  store double %i.i, ptr %i.h, align 8, !tbaa !25
  %i.j = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %i.l = fmul double %i.b, %i.i                   ; 2 uses
  store double %i.l, ptr %i.k, align 8, !tbaa !25
  %i.m = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %i.o = fmul double %i.b, %i.l                   ; 2 uses
  store double %i.o, ptr %i.n, align 8, !tbaa !25
  %i.p = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.q = getelementptr i8, ptr %i.p, i64 24
  %i.r = fmul double %i.b, %i.o                   ; 3 uses
  store double %i.r, ptr %i.q, align 8, !tbaa !25
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %store_forwarded.epil.init = phi double [ %load_initial, %.lr.ph.preheader ], [ %i.r, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod25 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod25)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %store_forwarded.epil = phi double [ %store_forwarded.epil.init, %.lr.ph.epil.preheader ], [ %i.t, %.lr.ph.epil ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.s = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv.epil
  %i.t = fmul double %i.b, %store_forwarded.epil  ; 2 uses
  store double %i.t, ptr %i.s, align 8, !tbaa !25
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !226

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.v = tail call i32 @N_VScaleVectorArray(i32 noundef %i.e, ptr noundef nonnull %i.c, ptr noundef nonnull %i.u, ptr noundef nonnull %i.u) #13 ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !137
  %i.y = load double, ptr %i.a, align 8, !tbaa !142
  %i.z = fmul double %i.x, %i.y                   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 304
  store double %i.z, ptr %i.aa, align 8, !tbaa !134
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 320
  store double %i.z, ptr %i.ab, align 8, !tbaa !91
  store double %i.z, ptr %i.w, align 8, !tbaa !137
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i32 0, ptr %i.ac, align 8, !tbaa !88
  ret void
}

declare i32 @N_VScaleVectorArray(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @cvRestore(ptr nofree noundef captures(none) initializes((344, 352)) %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  store double %1, ptr %i.a, align 8, !tbaa !78
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !80   ; 2 uses
  %.not18 = icmp slt i32 %i.c, 1
  br i1 %.not18, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.c
  %indvars.iv21 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next22, %bb.c ] ; 3 uses
  %i.e = phi i32 [ %i.c, %.preheader.lr.ph ], [ %i.k, %bb.c ]
  %i.f = sext i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ %i.f, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.g = getelementptr [8 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !76   ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !76
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.i, double noundef -1.000000e+00, ptr noundef %i.j, ptr noundef %i.i) #13
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not16.not = icmp sgt i64 %indvars.iv, %indvars.iv21
  br i1 %.not16.not, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %i.k = load i32, ptr %i.b, align 8, !tbaa !80   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %.not.not = icmp slt i64 %indvars.iv21, %i.l
  br i1 %.not.not, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

declare void @SUNGlobalFallbackErrHandler(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #4

declare i32 @SUNLogger_QueueMsg(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare i32 @SUNContext_GetLastError(ptr noundef) local_unnamed_addr #4

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #4

declare i32 @cvProjInit(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #9

declare void @N_VAbs(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @N_VInv(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @N_VDiv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare double @N_VMaxNorm(ptr noundef) local_unnamed_addr #4

declare i32 @cvDoProjection(ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @cvAdjustOrder(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !80   ; 13 uses
  %i.c = icmp eq i32 %i.b, 2
  %i.d = icmp ne i32 %1, 1
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %cvAdjustAdams.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !19
  switch i32 %i.f, label %cvAdjustAdams.exit [
    i32 1, label %bb.c
    i32 2, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %bb.d, label %.preheader56.i

.preheader56.i:                                   ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.i = load i32, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %.not58.i = icmp slt i32 %i.i, 0
  br i1 %.not58.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader56.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.k = add nuw i32 %i.i, 1
  %i.l = zext i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, i8 0, i64 %i.m, i1 false), !tbaa !25
  br label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.p = load i32, ptr %i.o, align 8, !tbaa !81
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !76
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.s) #13
  br label %cvAdjustAdams.exit

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader56.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 11 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  store double 1.000000e+00, ptr %i.u, align 8, !tbaa !25
  %i.v = add nsw i32 %i.b, -2
  %.not5361.i = icmp slt i32 %i.b, 3
  br i1 %.not5361.i, label %cvAdjustAdams.exit, label %.lr.ph65.i

.lr.ph65.i:                                       ; preds = %._crit_edge.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.y = load double, ptr %i.x, align 8, !tbaa !137
  %i.z = add nsw i32 %i.b, -1
  %wide.trip.count.i = zext i32 %i.z to i64       ; 2 uses
  br label %bb.e

.loopexit.i:                                      ; preds = %scalar.ph62, %scalar.ph62.1, %scalar.ph62.2, %middle.block81
  %indvars.iv.next78.i = add nuw nsw i64 %indvars.iv77.i, 1 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next78.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader55.i, label %bb.e

.preheader55.i:                                   ; preds = %.loopexit.i
  %i.aa = uitofp nneg i32 %i.b to double          ; 5 uses
  %.pre.i = load double, ptr %i.u, align 8, !tbaa !25 ; 2 uses
  %i.ab = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter = and i64 %i.ab, 3                    ; 3 uses
  %i.ac = add nsw i32 %i.b, -3
  %i.ad = icmp ult i32 %i.ac, 3
  br i1 %i.ad, label %.epil.preheader, label %.preheader55.i.new

.preheader55.i.new:                               ; preds = %.preheader55.i
  %unroll_iter = and i64 %i.ab, -4
  br label %bb.g

bb.e:                                             ; preds = %.loopexit.i, %.lr.ph65.i
  %indvars.iv77.i = phi i64 [ 1, %.lr.ph65.i ], [ %indvars.iv.next78.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 2, %.lr.ph65.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 7 uses
  %.063.i = phi double [ 0.000000e+00, %.lr.ph65.i ], [ %i.ag, %.loopexit.i ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv77.i
  %i.af = load double, ptr %i.ae, align 8, !tbaa !25
  %i.ag = fadd double %.063.i, %i.af              ; 2 uses
  %i.ah = fdiv double %i.ag, %i.y                 ; 4 uses
  %min.iters.check63 = icmp samesign ult i64 %indvars.iv.i, 4
  br i1 %min.iters.check63, label %scalar.ph62, label %vector.ph64

vector.ph64:                                      ; preds = %bb.e
  %n.vec65 = and i64 %indvars.iv.i, 9223372036854775804 ; 2 uses
  %i.ai = and i64 %indvars.iv.i, 3
  %broadcast.splatinsert66 = insertelement <2 x double> poison, double %i.ah, i64 0 ; 2 uses
  %i.aj = shufflevector <2 x double> %broadcast.splatinsert66, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = shufflevector <2 x double> %broadcast.splatinsert66, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph64
  %index69 = phi i64 [ 0, %vector.ph64 ], [ %index.next80, %vector.body68 ] ; 2 uses
  %i.al = sub i64 %indvars.iv.i, %index69
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.al ; 4 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -24 ; 2 uses
  %wide.load70 = load <2 x double>, ptr %i.an, align 8, !tbaa !25
  %wide.load71 = load <2 x double>, ptr %i.ao, align 8, !tbaa !25
  %i.ap = getelementptr i8, ptr %i.am, i64 -16
  %i.aq = getelementptr i8, ptr %i.am, i64 -32
  %wide.load74 = load <2 x double>, ptr %i.ap, align 8, !tbaa !25
  %wide.load75 = load <2 x double>, ptr %i.aq, align 8, !tbaa !25
  %reverse78 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load70, <2 x double> %i.aj, <2 x double> %wide.load74)
  %reverse79 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load71, <2 x double> %i.ak, <2 x double> %wide.load75)
  store <2 x double> %reverse78, ptr %i.an, align 8, !tbaa !25
  store <2 x double> %reverse79, ptr %i.ao, align 8, !tbaa !25
  %index.next80 = add nuw i64 %index69, 4         ; 2 uses
  %i.ar = icmp eq i64 %index.next80, %n.vec65
  br i1 %i.ar, label %middle.block81, label %vector.body68, !llvm.loop !227

middle.block81:                                   ; preds = %vector.body68
  %cmp.n82 = icmp eq i64 %indvars.iv.i, %n.vec65
  br i1 %cmp.n82, label %.loopexit.i, label %scalar.ph62

scalar.ph62:                                      ; preds = %middle.block81, %bb.e
  %indvars.iv74.i.ph = phi i64 [ %indvars.iv.i, %bb.e ], [ %i.ai, %middle.block81 ] ; 5 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv74.i.ph ; 3 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !25
  %i.au = getelementptr i8, ptr %i.as, i64 -8
  %i.av = load double, ptr %i.au, align 8, !tbaa !25
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.at, double %i.ah, double %i.av)
  store double %i.aw, ptr %i.as, align 8, !tbaa !25
  %i.ax = icmp samesign ugt i64 %indvars.iv74.i.ph, 1
  br i1 %i.ax, label %scalar.ph62.1, label %.loopexit.i

scalar.ph62.1:                                    ; preds = %scalar.ph62
  %i.ay = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv74.i.ph ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 -8     ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !25
  %i.bb = getelementptr i8, ptr %i.ay, i64 -16
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !25
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.ah, double %i.bc)
  store double %i.bd, ptr %i.az, align 8, !tbaa !25
  %i.be = icmp eq i64 %indvars.iv74.i.ph, 3
  br i1 %i.be, label %scalar.ph62.2, label %.loopexit.i

scalar.ph62.2:                                    ; preds = %scalar.ph62.1
  %i.bf = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv74.i.ph ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 -16    ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !25
  %i.bi = getelementptr i8, ptr %i.bf, i64 -24
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !25
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.ah, double %i.bj)
  store double %i.bk, ptr %i.bg, align 8, !tbaa !25
  br label %.loopexit.i

.lr.ph71.preheader.i.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph71.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph71.preheader.i.unr-lcssa, %.preheader55.i
  %.epil.init = phi double [ %.pre.i, %.preheader55.i ], [ %i.cs, %.lr.ph71.preheader.i.unr-lcssa ]
  %indvars.iv80.i.epil.init = phi i64 [ 1, %.preheader55.i ], [ %indvars.iv.next81.i.3, %.lr.ph71.preheader.i.unr-lcssa ]
  %lcmp.mod96 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod96)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %i.bl = phi double [ %.epil.init, %.epil.preheader ], [ %i.bp, %bb.f ]
  %indvars.iv80.i.epil = phi i64 [ %indvars.iv80.i.epil.init, %.epil.preheader ], [ %indvars.iv.next81.i.epil, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %indvars.iv.next81.i.epil = add nuw nsw i64 %indvars.iv80.i.epil, 1 ; 3 uses
  %i.bm = trunc nuw nsw i64 %indvars.iv.next81.i.epil to i32
  %i.bn = uitofp nneg i32 %i.bm to double
  %i.bo = fdiv double %i.bl, %i.bn
  %i.bp = fmul double %i.bo, %i.aa                ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next81.i.epil
  store double %i.bp, ptr %i.bq, align 8, !tbaa !25
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph71.preheader.i, label %bb.f, !llvm.loop !228

.lr.ph71.preheader.i:                             ; preds = %bb.f, %.lr.ph71.preheader.i.unr-lcssa
  %wide.trip.count88.i = zext nneg i32 %i.b to i64 ; 3 uses
  %i.br = add nsw i64 %wide.trip.count88.i, -2    ; 3 uses
  %min.iters.check85 = icmp ult i64 %i.br, 2
  br i1 %min.iters.check85, label %.lr.ph71.i.preheader, label %vector.ph86

vector.ph86:                                      ; preds = %.lr.ph71.preheader.i
  %n.vec87 = and i64 %i.br, -2                    ; 3 uses
  %i.bs = add nsw i64 %n.vec87, 2
  br label %vector.body88

vector.body88:                                    ; preds = %vector.body88, %vector.ph86
  %index89 = phi i64 [ 0, %vector.ph86 ], [ %index.next91, %vector.body88 ] ; 2 uses
  %i.bt = add nuw i64 %index89, 2                 ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.bt
  %wide.load90 = load <2 x double>, ptr %i.bu, align 8, !tbaa !25
  %i.bv = fneg <2 x double> %wide.load90
  %i.bw = getelementptr [8 x i8], ptr %0, i64 %i.bt
  %i.bx = getelementptr i8, ptr %i.bw, i64 1624
  store <2 x double> %i.bv, ptr %i.bx, align 8, !tbaa !25
  %index.next91 = add nuw i64 %index89, 2         ; 2 uses
  %i.by = icmp eq i64 %index.next91, %n.vec87
  br i1 %i.by, label %middle.block92, label %vector.body88, !llvm.loop !229

middle.block92:                                   ; preds = %vector.body88
  %cmp.n93 = icmp eq i64 %i.br, %n.vec87
  br i1 %cmp.n93, label %.loopexit, label %.lr.ph71.i.preheader

.lr.ph71.i.preheader:                             ; preds = %.lr.ph71.preheader.i, %middle.block92
  %indvars.iv85.i.ph = phi i64 [ 2, %.lr.ph71.preheader.i ], [ %i.bs, %middle.block92 ]
  br label %.lr.ph71.i

bb.g:                                             ; preds = %bb.g, %.preheader55.i.new
  %i.bz = phi double [ %.pre.i, %.preheader55.i.new ], [ %i.cs, %bb.g ]
  %indvars.iv80.i = phi i64 [ 1, %.preheader55.i.new ], [ %indvars.iv.next81.i.3, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader55.i.new ], [ %niter.next.3, %bb.g ]
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1 ; 2 uses
  %i.ca = trunc nuw nsw i64 %indvars.iv.next81.i to i32
  %i.cb = uitofp nneg i32 %i.ca to double
  %i.cc = fdiv double %i.bz, %i.cb
  %i.cd = fmul double %i.cc, %i.aa                ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next81.i
  store double %i.cd, ptr %i.ce, align 8, !tbaa !25
  %indvars.iv.next81.i.1 = add nuw nsw i64 %indvars.iv80.i, 2 ; 2 uses
  %i.cf = trunc nuw nsw i64 %indvars.iv.next81.i.1 to i32
  %i.cg = uitofp nneg i32 %i.cf to double
  %i.ch = fdiv double %i.cd, %i.cg
  %i.ci = fmul double %i.ch, %i.aa                ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next81.i.1
  store double %i.ci, ptr %i.cj, align 8, !tbaa !25
  %indvars.iv.next81.i.2 = add nuw nsw i64 %indvars.iv80.i, 3 ; 2 uses
  %i.ck = trunc nuw nsw i64 %indvars.iv.next81.i.2 to i32
  %i.cl = uitofp nneg i32 %i.ck to double
  %i.cm = fdiv double %i.ci, %i.cl
  %i.cn = fmul double %i.cm, %i.aa                ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next81.i.2
  store double %i.cn, ptr %i.co, align 8, !tbaa !25
  %indvars.iv.next81.i.3 = add nuw nsw i64 %indvars.iv80.i, 4 ; 4 uses
  %i.cp = trunc nuw nsw i64 %indvars.iv.next81.i.3 to i32
  %i.cq = uitofp nneg i32 %i.cp to double
  %i.cr = fdiv double %i.cn, %i.cq
  %i.cs = fmul double %i.cr, %i.aa                ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next81.i.3
  store double %i.cs, ptr %i.ct, align 8, !tbaa !25
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph71.preheader.i.unr-lcssa, label %bb.g

.lr.ph71.i:                                       ; preds = %.lr.ph71.i.preheader, %.lr.ph71.i
  %indvars.iv85.i = phi i64 [ %indvars.iv.next86.i, %.lr.ph71.i ], [ %indvars.iv85.i.ph, %.lr.ph71.i.preheader ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv85.i
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !25
  %i.cw = fneg double %i.cv
  %i.cx = getelementptr [8 x i8], ptr %0, i64 %indvars.iv85.i
  %i.cy = getelementptr i8, ptr %i.cx, i64 1624
  store double %i.cw, ptr %i.cy, align 8, !tbaa !25
  %indvars.iv.next86.i = add nuw nsw i64 %indvars.iv85.i, 1 ; 2 uses
  %exitcond89.not.i = icmp eq i64 %indvars.iv.next86.i, %wide.trip.count88.i
  br i1 %exitcond89.not.i, label %.loopexit, label %.lr.ph71.i, !llvm.loop !230

.loopexit:                                        ; preds = %.lr.ph71.i, %middle.block92
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %wide.trip.count88.i
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !76
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.de = tail call i32 @N_VScaleAddMulti(i32 noundef %i.v, ptr noundef nonnull %i.cz, ptr noundef %i.dc, ptr noundef nonnull %i.dd, ptr noundef nonnull %i.dd) #13 ; 0 uses
  br label %cvAdjustAdams.exit

bb.h:                                             ; preds = %bb.b
  switch i32 %1, label %cvAdjustAdams.exit [
    i32 1, label %bb.i
    i32 -1, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !22 ; 2 uses
  %.not58.i.i = icmp slt i32 %i.dg, 0
  br i1 %.not58.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.di = add nuw i32 %i.dg, 1
  %i.dj = zext i32 %i.di to i64
  %i.dk = shl nuw nsw i64 %i.dj, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dh, i8 0, i64 %i.dk, i1 false), !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.i
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  store double 1.000000e+00, ptr %i.dm, align 8, !tbaa !25
  %i.dn = icmp sgt i32 %i.b, 1
  br i1 %i.dn, label %bb.j, label %.loopexit57.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.dp = load double, ptr %i.do, align 8, !tbaa !137 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 360
  %wide.trip.count.i.i = zext nneg i32 %i.b to i64
  br label %.lr.ph62.preheader.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph62.i.i, %middle.block59
  %i.dr = fadd double %.04867.i.i, %i.ee          ; 2 uses
  %i.ds = fdiv double %i.dr, %i.dp                ; 3 uses
  %i.dt = fmul double %.05065.i.i, %i.ds          ; 2 uses
  %i.du = trunc nuw nsw i64 %indvars.iv.next76.i.i to i32
  %i.dv = uitofp nneg i32 %i.du to double
  %i.dw = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.dx = insertelement <2 x double> %i.dw, double %i.dv, i64 1
  %i.dy = fdiv <2 x double> splat (double 1.000000e+00), %i.dx ; 2 uses
  %i.dz = fadd <2 x double> %i.ec, %i.dy
  %i.ea = fsub <2 x double> %i.ec, %i.dy
  %i.eb = shufflevector <2 x double> %i.dz, <2 x double> %i.ea, <2 x i32> <i32 0, i32 3> ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next76.i.i, %wide.trip.count.i.i
  %indvar.next39 = add i32 %indvar38, 1
  br i1 %exitcond.not.i.i, label %.loopexit57.i.i, label %.lr.ph62.preheader.i.i

.lr.ph62.preheader.i.i:                           ; preds = %.loopexit.i.i, %bb.j
  %indvar38 = phi i32 [ %indvar.next39, %.loopexit.i.i ], [ 0, %bb.j ] ; 2 uses
  %indvars.iv75.i.i = phi i64 [ %indvars.iv.next76.i.i, %.loopexit.i.i ], [ 1, %bb.j ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.loopexit.i.i ], [ 3, %bb.j ] ; 4 uses
  %.04867.i.i = phi double [ %i.dr, %.loopexit.i.i ], [ %i.dp, %bb.j ]
  %.04966.i.i = phi double [ %i.ds, %.loopexit.i.i ], [ 1.000000e+00, %bb.j ] ; 2 uses
  %.05065.i.i = phi double [ %i.dt, %.loopexit.i.i ], [ 1.000000e+00, %bb.j ]
  %i.ec = phi <2 x double> [ %i.eb, %.loopexit.i.i ], [ <double 1.000000e+00, double -1.000000e+00>, %bb.j ] ; 2 uses
  %2 = add i32 %indvar38, 3                       ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %2, i32 2)
  %3 = sub i32 %2, %smin                          ; 2 uses
  %4 = zext i32 %3 to i64
  %5 = add nuw nsw i64 %4, 1                      ; 2 uses
  %indvars.iv.next76.i.i = add nuw nsw i64 %indvars.iv75.i.i, 1 ; 4 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.next76.i.i
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !25
  %min.iters.check41 = icmp ult i32 %3, 3
  br i1 %min.iters.check41, label %.lr.ph62.i.i.preheader, label %vector.ph42

vector.ph42:                                      ; preds = %.lr.ph62.preheader.i.i
  %n.vec43 = and i64 %5, 8589934588               ; 3 uses
  %i.ef = sub nsw i64 %indvars.iv.i.i, %n.vec43
  %broadcast.splatinsert44 = insertelement <2 x double> poison, double %.04966.i.i, i64 0 ; 2 uses
  %i.eg = shufflevector <2 x double> %broadcast.splatinsert44, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eh = shufflevector <2 x double> %broadcast.splatinsert44, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body46

vector.body46:                                    ; preds = %vector.body46, %vector.ph42
  %index47 = phi i64 [ 0, %vector.ph42 ], [ %index.next58, %vector.body46 ] ; 2 uses
  %i.ei = sub i64 %indvars.iv.i.i, %index47
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.ei ; 4 uses
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -8 ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %i.ej, i64 -24 ; 2 uses
  %wide.load48 = load <2 x double>, ptr %i.ek, align 8, !tbaa !25
  %wide.load49 = load <2 x double>, ptr %i.el, align 8, !tbaa !25
  %i.em = getelementptr i8, ptr %i.ej, i64 -16
  %i.en = getelementptr i8, ptr %i.ej, i64 -32
  %wide.load52 = load <2 x double>, ptr %i.em, align 8, !tbaa !25
  %wide.load53 = load <2 x double>, ptr %i.en, align 8, !tbaa !25
  %reverse56 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load48, <2 x double> %i.eg, <2 x double> %wide.load52)
  %reverse57 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load49, <2 x double> %i.eh, <2 x double> %wide.load53)
  store <2 x double> %reverse56, ptr %i.ek, align 8, !tbaa !25
  store <2 x double> %reverse57, ptr %i.el, align 8, !tbaa !25
  %index.next58 = add nuw i64 %index47, 4         ; 2 uses
  %i.eo = icmp eq i64 %index.next58, %n.vec43
  br i1 %i.eo, label %middle.block59, label %vector.body46, !llvm.loop !231

middle.block59:                                   ; preds = %vector.body46
  %cmp.n60 = icmp eq i64 %5, %n.vec43
  br i1 %cmp.n60, label %.loopexit.i.i, label %.lr.ph62.i.i.preheader

.lr.ph62.i.i.preheader:                           ; preds = %.lr.ph62.preheader.i.i, %middle.block59
  %indvars.iv72.i.i.ph = phi i64 [ %indvars.iv.i.i, %.lr.ph62.preheader.i.i ], [ %i.ef, %middle.block59 ]
  br label %.lr.ph62.i.i

.lr.ph62.i.i:                                     ; preds = %.lr.ph62.i.i.preheader, %.lr.ph62.i.i
  %indvars.iv72.i.i = phi i64 [ %indvars.iv.next73.i.i, %.lr.ph62.i.i ], [ %indvars.iv72.i.i.ph, %.lr.ph62.i.i.preheader ] ; 3 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv72.i.i ; 3 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !25
  %i.er = getelementptr i8, ptr %i.ep, i64 -8
  %i.es = load double, ptr %i.er, align 8, !tbaa !25
  %i.et = tail call double @llvm.fmuladd.f64(double %i.eq, double %.04966.i.i, double %i.es)
  store double %i.et, ptr %i.ep, align 8, !tbaa !25
  %indvars.iv.next73.i.i = add nsw i64 %indvars.iv72.i.i, -1
  %6 = trunc nuw i64 %indvars.iv72.i.i to i32
  %i.eu = icmp sgt i32 %6, 2
  br i1 %i.eu, label %.lr.ph62.i.i, label %.loopexit.i.i, !llvm.loop !232

.loopexit57.i.i:                                  ; preds = %.loopexit.i.i, %._crit_edge.i.i
  %.151.i.i = phi double [ 1.000000e+00, %._crit_edge.i.i ], [ %i.dt, %.loopexit.i.i ]
  %i.ev = phi <2 x double> [ <double 1.000000e+00, double -1.000000e+00>, %._crit_edge.i.i ], [ %i.eb, %.loopexit.i.i ] ; 2 uses
  %i.ew = extractelement <2 x double> %i.ev, i64 1
  %i.ex = fneg double %i.ew
  %i.ey = extractelement <2 x double> %i.ev, i64 0
  %i.ez = fsub double %i.ex, %i.ey
  %i.fa = fdiv double %i.ez, %.151.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1124
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !192
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fe
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !76
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !81
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fj
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !76
  tail call void @N_VScale(double noundef %i.fa, ptr noundef %i.fg, ptr noundef %i.fl) #13
  %i.fm = load i32, ptr %i.a, align 8, !tbaa !80  ; 2 uses
  %i.fn = icmp sgt i32 %i.fm, 1
  br i1 %i.fn, label %bb.k, label %cvAdjustAdams.exit

bb.k:                                             ; preds = %.loopexit57.i.i
  %i.fo = add nsw i32 %i.fm, -1
  %i.fp = load i32, ptr %i.fh, align 8, !tbaa !81
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fq
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !76
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.fu = tail call i32 @N_VScaleAddMulti(i32 noundef %i.fo, ptr noundef nonnull %i.dm, ptr noundef %i.fs, ptr noundef nonnull %i.ft, ptr noundef nonnull %i.ft) #13 ; 0 uses
  br label %cvAdjustAdams.exit

bb.l:                                             ; preds = %bb.h
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !22 ; 2 uses
  %.not43.i.i = icmp slt i32 %i.fw, 0
  br i1 %.not43.i.i, label %._crit_edge.i3.i, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %bb.l
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.fy = add nuw i32 %i.fw, 1
  %i.fz = zext i32 %i.fy to i64
  %i.ga = shl nuw nsw i64 %i.fz, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fx, i8 0, i64 %i.ga, i1 false), !tbaa !25
  br label %._crit_edge.i3.i

._crit_edge.i3.i:                                 ; preds = %.lr.ph.i2.i, %bb.l
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 536
  store double 1.000000e+00, ptr %i.gc, align 8, !tbaa !25
  %i.gd = add nsw i32 %i.b, -2
  %.not4149.i.i = icmp slt i32 %i.b, 3
  br i1 %.not4149.i.i, label %cvAdjustAdams.exit, label %.lr.ph53.i.i

.lr.ph53.i.i:                                     ; preds = %._crit_edge.i3.i
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !137
  %i.gh = add nsw i32 %i.b, -1
  %wide.trip.count.i4.i = zext nneg i32 %i.gh to i64
  br label %.lr.ph47.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge48.i.i
  %wide.trip.count68.i.i = zext nneg i32 %i.b to i64 ; 3 uses
  %i.gi = add nsw i64 %wide.trip.count68.i.i, -2  ; 3 uses
  %min.iters.check28 = icmp ult i64 %i.gi, 2
  br i1 %min.iters.check28, label %.lr.ph56.i.i.preheader, label %vector.ph29

vector.ph29:                                      ; preds = %.preheader.i.i
  %n.vec30 = and i64 %i.gi, -2                    ; 3 uses
  %i.gj = add nsw i64 %n.vec30, 2
  br label %vector.body31

vector.body31:                                    ; preds = %vector.body31, %vector.ph29
  %index32 = phi i64 [ 0, %vector.ph29 ], [ %index.next34, %vector.body31 ] ; 2 uses
  %i.gk = add nuw i64 %index32, 2                 ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.gk
  %wide.load33 = load <2 x double>, ptr %i.gl, align 8, !tbaa !25
  %i.gm = fneg <2 x double> %wide.load33
  %i.gn = getelementptr [8 x i8], ptr %0, i64 %i.gk
  %i.go = getelementptr i8, ptr %i.gn, i64 1624
  store <2 x double> %i.gm, ptr %i.go, align 8, !tbaa !25
  %index.next34 = add nuw i64 %index32, 2         ; 2 uses
  %i.gp = icmp eq i64 %index.next34, %n.vec30
  br i1 %i.gp, label %middle.block35, label %vector.body31, !llvm.loop !233

middle.block35:                                   ; preds = %vector.body31
  %cmp.n36 = icmp eq i64 %i.gi, %n.vec30
  br i1 %cmp.n36, label %._crit_edge57.i.i, label %.lr.ph56.i.i.preheader

.lr.ph56.i.i.preheader:                           ; preds = %.preheader.i.i, %middle.block35
  %indvars.iv65.i.i.ph = phi i64 [ 2, %.preheader.i.i ], [ %i.gj, %middle.block35 ]
  br label %.lr.ph56.i.i

.lr.ph47.preheader.i.i:                           ; preds = %._crit_edge48.i.i, %.lr.ph53.i.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge48.i.i ], [ 0, %.lr.ph53.i.i ] ; 2 uses
  %indvars.iv62.i.i = phi i64 [ %indvars.iv.next63.i.i, %._crit_edge48.i.i ], [ 1, %.lr.ph53.i.i ] ; 2 uses
  %indvars.iv.i5.i = phi i64 [ %indvars.iv.next.i6.i, %._crit_edge48.i.i ], [ 3, %.lr.ph53.i.i ] ; 4 uses
  %.03950.i.i = phi double [ %i.gt, %._crit_edge48.i.i ], [ 0.000000e+00, %.lr.ph53.i.i ]
  %i.gq = add i64 %indvar, 2                      ; 3 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv62.i.i
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !25
  %i.gt = fadd double %.03950.i.i, %i.gs          ; 2 uses
  %i.gu = fdiv double %i.gt, %i.gg                ; 2 uses
  %min.iters.check = icmp ult i64 %i.gq, 4
  br i1 %min.iters.check, label %.lr.ph47.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph47.preheader.i.i
  %n.vec = and i64 %i.gq, -4                      ; 3 uses
  %i.gv = sub i64 %indvars.iv.i5.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.gu, i64 0 ; 2 uses
  %i.gw = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gx = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gy = sub i64 %indvars.iv.i5.i, %index
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.gy ; 4 uses
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 -8 ; 2 uses
  %i.hb = getelementptr inbounds i8, ptr %i.gz, i64 -24 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ha, align 8, !tbaa !25
  %wide.load19 = load <2 x double>, ptr %i.hb, align 8, !tbaa !25
  %i.hc = getelementptr i8, ptr %i.gz, i64 -16
  %i.hd = getelementptr i8, ptr %i.gz, i64 -32
  %wide.load21 = load <2 x double>, ptr %i.hc, align 8, !tbaa !25
  %wide.load22 = load <2 x double>, ptr %i.hd, align 8, !tbaa !25
  %reverse25 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %i.gw, <2 x double> %wide.load21)
  %reverse26 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load19, <2 x double> %i.gx, <2 x double> %wide.load22)
  store <2 x double> %reverse25, ptr %i.ha, align 8, !tbaa !25
  store <2 x double> %reverse26, ptr %i.hb, align 8, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.he = icmp eq i64 %index.next, %n.vec
  br i1 %i.he, label %middle.block, label %vector.body, !llvm.loop !234

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gq, %n.vec
  br i1 %cmp.n, label %._crit_edge48.i.i, label %.lr.ph47.i.i.preheader

.lr.ph47.i.i.preheader:                           ; preds = %.lr.ph47.preheader.i.i, %middle.block
  %indvars.iv59.i.i.ph = phi i64 [ %indvars.iv.i5.i, %.lr.ph47.preheader.i.i ], [ %i.gv, %middle.block ]
  br label %.lr.ph47.i.i

.lr.ph47.i.i:                                     ; preds = %.lr.ph47.i.i.preheader, %.lr.ph47.i.i
  %indvars.iv59.i.i = phi i64 [ %indvars.iv.next60.i.i, %.lr.ph47.i.i ], [ %indvars.iv59.i.i.ph, %.lr.ph47.i.i.preheader ] ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv59.i.i ; 3 uses
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !25
  %i.hh = getelementptr i8, ptr %i.hf, i64 -8
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !25
  %i.hj = tail call double @llvm.fmuladd.f64(double %i.hg, double %i.gu, double %i.hi)
  store double %i.hj, ptr %i.hf, align 8, !tbaa !25
  %indvars.iv.next60.i.i = add nsw i64 %indvars.iv59.i.i, -1
  %i.hk = icmp sgt i64 %indvars.iv59.i.i, 2
  br i1 %i.hk, label %.lr.ph47.i.i, label %._crit_edge48.i.i, !llvm.loop !235

._crit_edge48.i.i:                                ; preds = %.lr.ph47.i.i, %middle.block
  %indvars.iv.next63.i.i = add nuw nsw i64 %indvars.iv62.i.i, 1 ; 2 uses
  %indvars.iv.next.i6.i = add nuw nsw i64 %indvars.iv.i5.i, 1
  %exitcond.not.i7.i = icmp eq i64 %indvars.iv.next63.i.i, %wide.trip.count.i4.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not.i7.i, label %.preheader.i.i, label %.lr.ph47.preheader.i.i

.lr.ph56.i.i:                                     ; preds = %.lr.ph56.i.i.preheader, %.lr.ph56.i.i
  %indvars.iv65.i.i = phi i64 [ %indvars.iv.next66.i.i, %.lr.ph56.i.i ], [ %indvars.iv65.i.i.ph, %.lr.ph56.i.i.preheader ] ; 3 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv65.i.i
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !25
  %i.hn = fneg double %i.hm
  %i.ho = getelementptr [8 x i8], ptr %0, i64 %indvars.iv65.i.i
  %i.hp = getelementptr i8, ptr %i.ho, i64 1624
  store double %i.hn, ptr %i.hp, align 8, !tbaa !25
  %indvars.iv.next66.i.i = add nuw nsw i64 %indvars.iv65.i.i, 1 ; 2 uses
  %exitcond69.not.i.i = icmp eq i64 %indvars.iv.next66.i.i, %wide.trip.count68.i.i
  br i1 %exitcond69.not.i.i, label %._crit_edge57.i.i, label %.lr.ph56.i.i, !llvm.loop !236

._crit_edge57.i.i:                                ; preds = %.lr.ph56.i.i, %middle.block35
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 1640
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %wide.trip.count68.i.i
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !76
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.hv = tail call i32 @N_VScaleAddMulti(i32 noundef %i.gd, ptr noundef nonnull %i.hq, ptr noundef %i.ht, ptr noundef nonnull %i.hu, ptr noundef nonnull %i.hu) #13 ; 0 uses
  br label %cvAdjustAdams.exit

cvAdjustAdams.exit:                               ; preds = %._crit_edge57.i.i, %._crit_edge.i3.i, %bb.k, %.loopexit57.i.i, %bb.h, %.loopexit, %._crit_edge.i, %bb.d, %bb.a, %bb.b
  ret void
}

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #4

declare i32 @N_VScaleAddMulti(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @SUNNonlinSolSetup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @SUNNonlinSolSolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, double noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @SUNNonlinSolGetNumIters(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @SUNNonlinSolGetNumConvFails(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @N_VCompare(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @N_VProd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare double @N_VMinQuotient(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #9

declare void @N_VAddConst(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"CVodeMemRec", !10, i64 0, !12, i64 8, !11, i64 16, !11, i64 24, !5, i64 32, !5, i64 36, !12, i64 40, !12, i64 48, !13, i64 56, !5, i64 64, !5, i64 68, !11, i64 72, !11, i64 80, !6, i64 88, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !5, i64 256, !5, i64 260, !12, i64 264, !5, i64 272, !5, i64 276, !5, i64 280, !5, i64 284, !5, i64 288, !12, i64 296, !12, i64 304, !12, i64 312, !12, i64 320, !12, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !6, i64 360, !6, i64 472, !6, i64 520, !12, i64 624, !12, i64 632, !12, i64 640, !12, i64 648, !12, i64 656, !12, i64 664, !12, i64 672, !12, i64 680, !5, i64 688, !12, i64 696, !5, i64 704, !14, i64 712, !5, i64 720, !5, i64 724, !5, i64 728, !12, i64 736, !12, i64 744, !12, i64 752, !12, i64 760, !12, i64 768, !12, i64 776, !12, i64 784, !12, i64 792, !12, i64 800, !12, i64 808, !12, i64 816, !12, i64 824, !14, i64 832, !5, i64 840, !14, i64 848, !14, i64 856, !14, i64 864, !14, i64 872, !14, i64 880, !14, i64 888, !14, i64 896, !5, i64 904, !12, i64 912, !12, i64 920, !12, i64 928, !14, i64 936, !14, i64 944, !14, i64 952, !14, i64 960, !15, i64 968, !5, i64 976, !11, i64 984, !5, i64 992, !11, i64 1000, !11, i64 1008, !11, i64 1016, !11, i64 1024, !11, i64 1032, !11, i64 1040, !14, i64 1048, !12, i64 1056, !5, i64 1064, !14, i64 1072, !12, i64 1080, !12, i64 1088, !12, i64 1096, !5, i64 1104, !12, i64 1112, !5, i64 1120, !5, i64 1124, !5, i64 1128, !5, i64 1132, !11, i64 1136, !14, i64 1144, !5, i64 1152, !6, i64 1160, !5, i64 1352, !14, i64 1360, !11, i64 1368, !5, i64 1376, !16, i64 1384, !16, i64 1392, !12, i64 1400, !12, i64 1408, !12, i64 1416, !17, i64 1424, !17, i64 1432, !17, i64 1440, !12, i64 1448, !5, i64 1456, !14, i64 1464, !16, i64 1472, !5, i64 1480, !13, i64 1488, !14, i64 1496, !14, i64 1504, !5, i64 1512, !18, i64 1520, !5, i64 1528, !5, i64 1532, !6, i64 1536, !6, i64 1640, !6, i64 1744, !5, i64 1848, !5, i64 1852}
!10 = !{!"p1 _ZTS11SUNContext_", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = !{!"p1 _ZTS17_generic_N_Vector", !11, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"p1 _ZTS27_generic_SUNNonlinearSolver", !11, i64 0}
!16 = !{!"p1 int", !11, i64 0}
!17 = !{!"p1 double", !11, i64 0}
!18 = !{!"p1 _ZTS15CVodeProjMemRec", !11, i64 0}
!19 = !{!9, !5, i64 32}
!20 = !{!9, !12, i64 8}
!21 = !{!9, !5, i64 64}
!22 = !{!9, !5, i64 704}
!23 = !{!9, !14, i64 712}
!24 = !{!9, !5, i64 720}
!25 = !{!12, !12, i64 0}
!26 = !{!9, !14, i64 832}
!27 = !{!9, !5, i64 840}
!28 = !{!9, !5, i64 724}
!29 = !{!9, !5, i64 728}
!30 = !{!9, !12, i64 696}
!31 = !{!9, !14, i64 1048}
!32 = !{!9, !12, i64 1056}
!33 = !{!9, !5, i64 1512}
!34 = !{!9, !5, i64 1480}
!35 = !{!9, !5, i64 1120}
!36 = !{!9, !14, i64 952}
!37 = !{!9, !14, i64 960}
!38 = !{!39, !41, i64 24}
!39 = !{!"SUNContext_", !11, i64 0, !40, i64 8, !5, i64 16, !41, i64 24, !5, i64 32, !5, i64 36, !42, i64 40, !5, i64 48}
!40 = !{!"p1 _ZTS12SUNProfiler_", !11, i64 0}
!41 = !{!"p1 _ZTS10SUNLogger_", !11, i64 0}
!42 = !{!"p1 _ZTS14SUNErrHandler_", !11, i64 0}
!43 = !{!39, !5, i64 36}
!44 = !{!42, !42, i64 0}
!45 = !{!46, !11, i64 8}
!46 = !{!"SUNErrHandler_", !42, i64 0, !11, i64 8, !11, i64 16}
!47 = !{!46, !11, i64 16}
!48 = distinct !{null}
!49 = !{!50, !51, i64 8}
!50 = !{!"_generic_N_Vector", !11, i64 0, !51, i64 8, !10, i64 16}
!51 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !11, i64 0}
!52 = !{!53, !11, i64 8}
!53 = !{!"_generic_N_Vector_Ops", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440}
!54 = !{!53, !11, i64 24}
!55 = !{!53, !11, i64 88}
!56 = !{!53, !11, i64 96}
!57 = !{!53, !11, i64 104}
!58 = !{!53, !11, i64 112}
!59 = !{!53, !11, i64 120}
!60 = !{!53, !11, i64 128}
!61 = !{!53, !11, i64 136}
!62 = !{!53, !11, i64 144}
!63 = !{!53, !11, i64 160}
!64 = !{!53, !11, i64 168}
!65 = !{!53, !11, i64 32}
!66 = !{!14, !14, i64 0}
!67 = !{!9, !14, i64 936}
!68 = !{!9, !14, i64 944}
!69 = !{!9, !13, i64 192}
!70 = !{!9, !13, i64 208}
!71 = !{!9, !13, i64 216}
!72 = !{!9, !13, i64 224}
!73 = !{!9, !13, i64 232}
!74 = !{!9, !13, i64 240}
!75 = !{!9, !13, i64 248}
!76 = !{!13, !13, i64 0}
!77 = !{!9, !11, i64 16}
!78 = !{!9, !12, i64 344}
!79 = !{!9, !5, i64 976}
!80 = !{!9, !5, i64 272}
!81 = !{!9, !5, i64 288}
!82 = !{!9, !5, i64 284}
!83 = !{!9, !12, i64 776}
!84 = !{!9, !12, i64 752}
!85 = !{!9, !5, i64 1064}
!86 = !{!9, !12, i64 1088}
!87 = !{!9, !12, i64 1112}
!88 = !{!9, !5, i64 1352}
!89 = !{!9, !14, i64 1464}
!90 = !{!9, !5, i64 1456}
!91 = !{!9, !12, i64 320}
!92 = !{!9, !5, i64 280}
!93 = !{!9, !14, i64 1360}
!94 = !{!9, !5, i64 1132}
!95 = !{!9, !5, i64 1128}
!96 = !{!9, !13, i64 56}
!97 = !{!9, !13, i64 1488}
!98 = !{!9, !14, i64 1072}
!99 = !{!9, !11, i64 1008}
!100 = !{!9, !12, i64 1080}
!101 = !{!9, !12, i64 40}
!102 = !{!9, !12, i64 48}
!103 = !{!9, !5, i64 36}
!104 = !{!9, !5, i64 68}
!105 = !{!9, !11, i64 72}
!106 = !{!9, !11, i64 80}
!107 = !{!53, !11, i64 184}
!108 = !{!9, !5, i64 1376}
!109 = !{!9, !17, i64 1424}
!110 = !{!9, !17, i64 1432}
!111 = !{!9, !17, i64 1440}
!112 = !{!9, !16, i64 1384}
!113 = !{!9, !16, i64 1392}
!114 = !{!9, !16, i64 1472}
!115 = !{!9, !11, i64 1368}
!116 = !{!5, !5, i64 0}
!117 = distinct !{!117, !118, !119}
!118 = !{!"llvm.loop.isvectorized", i32 1}
!119 = !{!"llvm.loop.unroll.runtime.disable"}
!120 = distinct !{!120, !119, !118}
!121 = !{!9, !13, i64 200}
!122 = !{!9, !14, i64 848}
!123 = !{!9, !12, i64 352}
!124 = !{!9, !11, i64 24}
!125 = distinct !{null}
!126 = !{!9, !11, i64 1000}
!127 = !{!9, !5, i64 1528}
!128 = !{!9, !18, i64 1520}
!129 = !{!9, !5, i64 1532}
!130 = !{!9, !14, i64 856}
!131 = !{!9, !5, i64 256}
!132 = !{!9, !12, i64 264}
!133 = !{!9, !12, i64 296}
!134 = !{!9, !12, i64 304}
!135 = !{!9, !12, i64 744}
!136 = !{!9, !12, i64 736}
!137 = !{!9, !12, i64 336}
!138 = !{!9, !12, i64 312}
!139 = !{!9, !5, i64 1852}
!140 = !{!9, !12, i64 1400}
!141 = !{!9, !5, i64 260}
!142 = !{!9, !12, i64 328}
!143 = !{!9, !5, i64 904}
!144 = !{!9, !5, i64 276}
!145 = distinct !{!145, !146}
!146 = !{!"llvm.loop.unroll.disable"}
!147 = !{!148, !14, i64 16}
!148 = !{!"CVodeProjMemRec", !5, i64 0, !5, i64 4, !5, i64 8, !14, i64 16, !14, i64 24, !5, i64 32, !11, i64 40, !12, i64 48, !12, i64 56, !14, i64 64, !14, i64 72}
!149 = !{!148, !14, i64 24}
!150 = distinct !{!150, !118, !119}
!151 = distinct !{!151, !118, !119}
!152 = distinct !{!152, !119, !118}
!153 = distinct !{!153, !118, !119}
!154 = distinct !{!154, !119, !118}
!155 = distinct !{!155, !146}
!156 = distinct !{!156, !118, !119}
!157 = distinct !{!157, !118, !119}
!158 = distinct !{!158, !119, !118}
!159 = distinct !{!159, !118, !119}
!160 = distinct !{!160, !119, !118}
!161 = !{!9, !12, i64 624}
!162 = !{!9, !12, i64 632}
!163 = !{!9, !12, i64 640}
!164 = !{!9, !12, i64 648}
!165 = !{!9, !11, i64 1016}
!166 = !{!9, !5, i64 992}
!167 = !{!9, !12, i64 656}
!168 = !{!9, !15, i64 968}
!169 = !{!170, !171, i64 16}
!170 = !{!"_generic_SUNNonlinearSolver", !11, i64 0, !11, i64 8, !171, i64 16, !10, i64 24}
!171 = !{!"p1 _ZTS31_generic_SUNNonlinearSolver_Ops", !11, i64 0}
!172 = !{!173, !11, i64 16}
!173 = !{!"_generic_SUNNonlinearSolver_Ops", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136}
!174 = !{!9, !14, i64 872}
!175 = !{!9, !14, i64 880}
!176 = !{!9, !5, i64 688}
!177 = !{!9, !12, i64 680}
!178 = !{!9, !5, i64 1104}
end_hunk_2
