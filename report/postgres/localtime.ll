Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/localtime?download=true
inline.NumInlined: 55
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@tzload:bb.a
  %.0386.lcssa.i = phi i64 [ %.0386626.i, %._crit_edge622.i ], [ %i.po, %bb.ah ] ; 2 uses
  %i.pr = icmp sgt i64 %.0386.lcssa.i, 2
  %or.cond25.i = select i1 %3, i1 %i.pr, i1 false
  br i1 %or.cond25.i, label %bb.aj, label %.loopexit546.i

bb.aj:                                            ; preds = %bb.ai
  %i.ps = load i8, ptr %i.b, align 1
  %i.pt = icmp eq i8 %i.ps, 10
  br i1 %i.pt, label %bb.ak, label %.loopexit546.i

bb.ak:                                            ; preds = %bb.aj
  %i.pu = getelementptr i8, ptr %i.b, i64 %.0386.lcssa.i
  %i.pv = getelementptr i8, ptr %i.pu, i64 -1     ; 2 uses
  %i.pw = load i8, ptr %i.pv, align 1
  %i.px = icmp eq i8 %i.pw, 10
  br i1 %i.px, label %bb.al, label %.loopexit546.i

bb.al:                                            ; preds = %bb.ak
  %i.py = add i32 %i.ik, 2
  %i.pz = icmp slt i32 %i.py, 257
  br i1 %i.pz, label %bb.am, label %.loopexit546.thread.i

bb.am:                                            ; preds = %bb.al
  %i.qa = getelementptr inbounds nuw i8, ptr %i.b, i64 59064
  store i8 0, ptr %i.pv, align 1
  %i.qb = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.qc = tail call zeroext i1 @tzparse(ptr noundef nonnull %i.qb, ptr noundef nonnull %i.qa, i1 noundef zeroext false)
  br i1 %i.qc, label %bb.an, label %.loopexit546.i

bb.an:                                            ; preds = %bb.am
  %i.qd = load i32, ptr %i.au, align 4            ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.b, i64 59072
  %i.qf = load i32, ptr %i.qe, align 8            ; 6 uses
  %i.qg = icmp sgt i32 %i.qf, 0                   ; 2 uses
  br i1 %i.qg, label %.lr.ph636.i, label %._crit_edge637.i

.lr.ph636.i:                                      ; preds = %bb.an
  %i.qh = getelementptr inbounds nuw i8, ptr %i.b, i64 83232
  %i.qi = zext nneg i32 %i.qf to i64
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ar, %.lr.ph636.i
  %indvars.iv742.i = phi i64 [ 0, %.lr.ph636.i ], [ %indvars.iv.next743.i, %bb.ar ] ; 2 uses
  %.0353634.i = phi i32 [ %i.qd, %.lr.ph636.i ], [ %.2.i, %bb.ar ] ; 5 uses
  %.0354633.i = phi i32 [ 0, %.lr.ph636.i ], [ %.3.i, %bb.ar ] ; 2 uses
  %i.qj = getelementptr [24 x i8], ptr %i.b, i64 %indvars.iv742.i
  %i.qk = getelementptr i8, ptr %i.qj, i64 77100  ; 2 uses
  %i.ql = load i32, ptr %i.qk, align 4
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr inbounds i8, ptr %i.qh, i64 %i.qm ; 3 uses
  %i.qo = icmp sgt i32 %.0353634.i, 0
  br i1 %i.qo, label %.lr.ph629.preheader.i, label %._crit_edge630.i

.lr.ph629.preheader.i:                            ; preds = %bb.ao
  %i.qp = zext nneg i32 %.0353634.i to i64
  br label %.lr.ph629.i

.lr.ph629.i:                                      ; preds = %bb.ap, %.lr.ph629.preheader.i
  %indvars.iv737.i = phi i64 [ 0, %.lr.ph629.preheader.i ], [ %indvars.iv.next738.i, %bb.ap ] ; 3 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.ay, i64 %indvars.iv737.i
  %i.qr = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.qq, ptr noundef nonnull dereferenceable(1) %i.qn) #21
  %i.qs = icmp eq i32 %i.qr, 0
  br i1 %i.qs, label %.thread533.i, label %bb.ap

.thread533.i:                                     ; preds = %.lr.ph629.i
  %i.qt = trunc nuw nsw i64 %indvars.iv737.i to i32
  br label %.sink.split

bb.ap:                                            ; preds = %.lr.ph629.i
  %indvars.iv.next738.i = add nuw nsw i64 %indvars.iv737.i, 1 ; 2 uses
  %exitcond741.not.i = icmp eq i64 %indvars.iv.next738.i, %i.qp
  br i1 %exitcond741.not.i, label %._crit_edge630.i, label %.lr.ph629.i, !llvm.loop !24

._crit_edge630.i:                                 ; preds = %bb.ap, %bb.ao
  %.0.lcssa.i = phi i32 [ 0, %bb.ao ], [ %.0353634.i, %bb.ap ] ; 3 uses
  %i.qu = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.qn) #21
  %i.qv = trunc i64 %i.qu to i32
  %i.qw = add i32 %.0.lcssa.i, %i.qv              ; 2 uses
  %i.qx = icmp slt i32 %i.qw, 50
  br i1 %i.qx, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %._crit_edge630.i
  %i.qy = zext nneg i32 %.0.lcssa.i to i64
  %i.qz = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.qy
  %i.ra = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.qz, ptr noundef nonnull dereferenceable(1) %i.qn) #20 ; 0 uses
  %i.rb = add nsw i32 %i.qw, 1
  br label %.sink.split

.sink.split:                                      ; preds = %.thread533.i, %bb.aq
  %.0.lcssa.i.sink = phi i32 [ %.0.lcssa.i, %bb.aq ], [ %i.qt, %.thread533.i ]
  %.2.i.ph = phi i32 [ %i.rb, %bb.aq ], [ %.0353634.i, %.thread533.i ]
  store i32 %.0.lcssa.i.sink, ptr %i.qk, align 4
  %i.rc = add i32 %.0354633.i, 1
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split, %._crit_edge630.i
  %.3.i = phi i32 [ %.0354633.i, %._crit_edge630.i ], [ %i.rc, %.sink.split ] ; 2 uses
  %.2.i = phi i32 [ %.0353634.i, %._crit_edge630.i ], [ %.2.i.ph, %.sink.split ] ; 2 uses
  %indvars.iv.next743.i = add nuw nsw i64 %indvars.iv742.i, 1 ; 2 uses
  %i.rd = icmp samesign ult i64 %indvars.iv.next743.i, %i.qi
  br i1 %i.rd, label %bb.ao, label %._crit_edge637.i, !llvm.loop !25

._crit_edge637.i:                                 ; preds = %bb.ar, %bb.an
  %.0354.lcssa.i = phi i32 [ 0, %bb.an ], [ %.3.i, %bb.ar ]
  %.0353.lcssa.i = phi i32 [ %i.qd, %bb.an ], [ %.2.i, %bb.ar ]
  %i.re = icmp eq i32 %.0354.lcssa.i, %i.qf
  br i1 %i.re, label %bb.as, label %.loopexit546.i

bb.as:                                            ; preds = %._crit_edge637.i
  store i32 %.0353.lcssa.i, ptr %i.au, align 4
  %.promoted.i = load i32, ptr %i.as, align 4     ; 3 uses
  %i.rf = icmp sgt i32 %.promoted.i, 1
  br i1 %i.rf, label %.lr.ph642.i, label %.critedge.i

.lr.ph642.i:                                      ; preds = %bb.as, %bb.at
  %i.rg = phi i32 [ %i.ro, %bb.at ], [ %.promoted.i, %bb.as ] ; 4 uses
  %i.rh = zext nneg i32 %i.rg to i64
  %i.ri = getelementptr i8, ptr %i.av, i64 %i.rh  ; 2 uses
  %i.rj = getelementptr i8, ptr %i.ri, i64 -1
  %i.rk = load i8, ptr %i.rj, align 1
  %i.rl = getelementptr i8, ptr %i.ri, i64 -2
  %i.rm = load i8, ptr %i.rl, align 1
  %i.rn = icmp eq i8 %i.rk, %i.rm
  br i1 %i.rn, label %bb.at, label %.critedge.i

bb.at:                                            ; preds = %.lr.ph642.i
  %i.ro = add nsw i32 %i.rg, -1                   ; 2 uses
  store i32 %i.ro, ptr %i.as, align 4
  %i.rp = icmp sgt i32 %i.rg, 2
  br i1 %i.rp, label %.lr.ph642.i, label %.critedge.i, !llvm.loop !26

.critedge.i:                                      ; preds = %bb.at, %.lr.ph642.i, %bb.as
  %i.rq = phi i32 [ %.promoted.i, %bb.as ], [ %i.rg, %.lr.ph642.i ], [ 1, %bb.at ]
  %.lcssa560.fr.i = freeze i32 %i.rq              ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.b, i64 59068
  %i.rs = load i32, ptr %i.rr, align 4            ; 4 uses
  %i.rt = icmp eq i32 %.lcssa560.fr.i, 0
  %i.ru = icmp slt i32 %i.rs, 1
  %or.cond541648.i = or i1 %i.rt, %i.ru
  br i1 %or.cond541648.i, label %leapcorr.exit._crit_edge.i, label %.lr.ph650.split.preheader.i

.lr.ph650.split.preheader.i:                      ; preds = %.critedge.i
  %i.rv = add i32 %.lcssa560.fr.i, -1
  %i.rw = sext i32 %i.rv to i64
  %i.rx = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.rw
  %i.ry = load i64, ptr %i.rx, align 8
  %i.rz = getelementptr inbounds nuw i8, ptr %i.b, i64 59088
  %i.sa = load i32, ptr %2, align 8
  %i.sb = zext i32 %i.sa to i64
  %wide.trip.count750.i = zext nneg i32 %i.rs to i64
  br label %.lr.ph650.split.i

.lr.ph650.split.i:                                ; preds = %bb.ax, %.lr.ph650.split.preheader.i
  %indvars.iv746.i = phi i64 [ 0, %.lr.ph650.split.preheader.i ], [ %indvars.iv.next747.i, %bb.ax ] ; 3 uses
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %indvars.iv746.i
  %i.sd = load i64, ptr %i.sc, align 8            ; 2 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.av, %.lr.ph650.split.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.av ], [ %i.sb, %.lr.ph650.split.i ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.se = and i64 %indvars.iv.next.i.i, 2147483648
  %i.sf = icmp eq i64 %i.se, 0
  br i1 %i.sf, label %bb.av, label %leapcorr.exit.i

bb.av:                                            ; preds = %bb.au
  %i.sg = and i64 %indvars.iv.next.i.i, 2147483647
  %i.sh = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.sg ; 2 uses
  %i.si = load i64, ptr %i.sh, align 8
  %.not.i.i = icmp slt i64 %i.sd, %i.si
  br i1 %.not.i.i, label %bb.au, label %bb.aw, !llvm.loop !27

bb.aw:                                            ; preds = %bb.av
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sh, i64 8
  %i.sk = load i64, ptr %i.sj, align 8
  br label %leapcorr.exit.i

leapcorr.exit.i:                                  ; preds = %bb.au, %bb.aw
  %.07.i.i = phi i64 [ %i.sk, %bb.aw ], [ 0, %bb.au ]
  %i.sl = add i64 %.07.i.i, %i.sd
  %i.sm = icmp slt i64 %i.ry, %i.sl
  br i1 %i.sm, label %leapcorr.exit._crit_edge.loopexit.i, label %bb.ax

bb.ax:                                            ; preds = %leapcorr.exit.i
  %indvars.iv.next747.i = add nuw nsw i64 %indvars.iv746.i, 1 ; 2 uses
  %exitcond751.not.i = icmp eq i64 %indvars.iv.next747.i, %wide.trip.count750.i
  br i1 %exitcond751.not.i, label %.critedge27.i, label %.lr.ph650.split.i, !llvm.loop !28

leapcorr.exit._crit_edge.loopexit.i:              ; preds = %leapcorr.exit.i
  %i.sn = trunc nuw nsw i64 %indvars.iv746.i to i32
  br label %leapcorr.exit._crit_edge.i

leapcorr.exit._crit_edge.i:                       ; preds = %leapcorr.exit._crit_edge.loopexit.i, %.critedge.i
  %.8398.lcssa.i = phi i32 [ 0, %.critedge.i ], [ %i.sn, %leapcorr.exit._crit_edge.loopexit.i ] ; 2 uses
  %i.so = icmp slt i32 %.8398.lcssa.i, %i.rs
  br i1 %i.so, label %.lr.ph658.i, label %.critedge27.i

.lr.ph658.i:                                      ; preds = %leapcorr.exit._crit_edge.i
  %i.sp = getelementptr inbounds nuw i8, ptr %i.b, i64 59088
  %i.sq = getelementptr inbounds nuw i8, ptr %i.b, i64 75088
  %4 = sext i32 %.8398.lcssa.i to i64
  %5 = sext i32 %i.rs to i64
  br label %bb.ay

bb.ay:                                            ; preds = %leapcorr.exit485.i, %.lr.ph658.i
  %i.sr = phi i32 [ %.lcssa560.fr.i, %.lr.ph658.i ], [ %i.tq, %leapcorr.exit485.i ] ; 2 uses
  %indvars.iv752.i = phi i64 [ %4, %.lr.ph658.i ], [ %indvars.iv.next753.i, %leapcorr.exit485.i ] ; 3 uses
  %i.ss = icmp slt i32 %i.sr, 2000
  br i1 %i.ss, label %bb.az, label %.critedge27.i

bb.az:                                            ; preds = %bb.ay
  %i.st = getelementptr inbounds [8 x i8], ptr %i.sp, i64 %indvars.iv752.i
  %i.su = load i64, ptr %i.st, align 8            ; 2 uses
  %i.sv = load i32, ptr %2, align 8
  %i.sw = zext i32 %i.sv to i64
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bb, %bb.az
  %indvars.iv.i481.i = phi i64 [ %indvars.iv.next.i482.i, %bb.bb ], [ %i.sw, %bb.az ]
  %indvars.iv.next.i482.i = add nsw i64 %indvars.iv.i481.i, -1 ; 3 uses
  %i.sx = and i64 %indvars.iv.next.i482.i, 2147483648
  %i.sy = icmp eq i64 %i.sx, 0
  br i1 %i.sy, label %bb.bb, label %leapcorr.exit485.i

bb.bb:                                            ; preds = %bb.ba
  %i.sz = and i64 %indvars.iv.next.i482.i, 2147483647
  %i.ta = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %i.sz ; 2 uses
  %i.tb = load i64, ptr %i.ta, align 8
  %.not.i484.i = icmp slt i64 %i.su, %i.tb
  br i1 %.not.i484.i, label %bb.ba, label %bb.bc, !llvm.loop !27

bb.bc:                                            ; preds = %bb.bb
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.td = load i64, ptr %i.tc, align 8
  br label %leapcorr.exit485.i

leapcorr.exit485.i:                               ; preds = %bb.ba, %bb.bc
  %.07.i483.i = phi i64 [ %i.td, %bb.bc ], [ 0, %bb.ba ]
  %i.te = add i64 %.07.i483.i, %i.su
  %i.tf = sext i32 %i.sr to i64
  %i.tg = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.tf
  store i64 %i.te, ptr %i.tg, align 8
  %i.th = load i32, ptr %i.at, align 8
  %i.ti = getelementptr inbounds i8, ptr %i.sq, i64 %indvars.iv752.i
  %i.tj = load i8, ptr %i.ti, align 1
  %i.tk = trunc i32 %i.th to i8
  %i.tl = add i8 %i.tj, %i.tk
  %i.tm = load i32, ptr %i.as, align 4
  %i.tn = sext i32 %i.tm to i64
  %i.to = getelementptr inbounds i8, ptr %i.av, i64 %i.tn
  store i8 %i.tl, ptr %i.to, align 1
  %i.tp = load i32, ptr %i.as, align 4
  %i.tq = add i32 %i.tp, 1                        ; 2 uses
  store i32 %i.tq, ptr %i.as, align 4
  %indvars.iv.next753.i = add nuw nsw i64 %indvars.iv752.i, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next753.i, %5
  br i1 %exitcond63.not, label %.critedge27.i, label %bb.ay, !llvm.loop !29

.critedge27.i:                                    ; preds = %bb.ax, %leapcorr.exit485.i, %bb.ay, %leapcorr.exit._crit_edge.i
  br i1 %i.qg, label %.lr.ph661.i, label %.loopexit546.i

.lr.ph661.i:                                      ; preds = %.critedge27.i
  %i.tr = getelementptr inbounds nuw i8, ptr %i.b, i64 77088 ; 3 uses
  %i.ts = zext nneg i32 %i.qf to i64              ; 2 uses
  %xtraiter217 = and i64 %i.ts, 1
  %i.tt = icmp eq i32 %i.qf, 1
  br i1 %i.tt, label %.epil.preheader, label %.lr.ph661.i.new

.lr.ph661.i.new:                                  ; preds = %.lr.ph661.i
  %unroll_iter221 = and i64 %i.ts, 2147483646
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.lr.ph661.i.new
  %indvars.iv756.i = phi i64 [ 0, %.lr.ph661.i.new ], [ %indvars.iv.next757.i.1, %bb.bd ] ; 3 uses
  %niter222 = phi i64 [ 0, %.lr.ph661.i.new ], [ %niter222.next.1, %bb.bd ]
  %i.tu = load i32, ptr %i.at, align 8            ; 2 uses
  %i.tv = add i32 %i.tu, 1
  store i32 %i.tv, ptr %i.at, align 8
  %i.tw = sext i32 %i.tu to i64
  %i.tx = getelementptr inbounds [24 x i8], ptr %i.ax, i64 %i.tw
  %i.ty = getelementptr inbounds nuw [24 x i8], ptr %i.tr, i64 %indvars.iv756.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tx, ptr noundef nonnull align 8 dereferenceable(24) %i.ty, i64 24, i1 false)
  %i.tz = load i32, ptr %i.at, align 8            ; 2 uses
  %i.ua = add i32 %i.tz, 1
  store i32 %i.ua, ptr %i.at, align 8
  %i.ub = sext i32 %i.tz to i64
  %i.uc = getelementptr inbounds [24 x i8], ptr %i.ax, i64 %i.ub
  %i.ud = getelementptr inbounds nuw [24 x i8], ptr %i.tr, i64 %indvars.iv756.i
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uc, ptr noundef nonnull align 8 dereferenceable(24) %i.ue, i64 24, i1 false)
  %indvars.iv.next757.i.1 = add nuw nsw i64 %indvars.iv756.i, 2 ; 2 uses
  %niter222.next.1 = add i64 %niter222, 2         ; 2 uses
  %niter222.ncmp.1 = icmp eq i64 %niter222.next.1, %unroll_iter221
  br i1 %niter222.ncmp.1, label %.loopexit546.i.loopexit.unr-lcssa, label %bb.bd, !llvm.loop !30

.loopexit546.i.loopexit.unr-lcssa:                ; preds = %bb.bd
  %lcmp.mod219.not = icmp eq i64 %xtraiter217, 0
  br i1 %lcmp.mod219.not, label %.loopexit546.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit546.i.loopexit.unr-lcssa, %.lr.ph661.i
  %indvars.iv756.i.epil.init = phi i64 [ 0, %.lr.ph661.i ], [ %indvars.iv.next757.i.1, %.loopexit546.i.loopexit.unr-lcssa ]
  %lcmp.mod220 = trunc i32 %i.qf to i1
  tail call void @llvm.assume(i1 %lcmp.mod220)
  %i.uf = load i32, ptr %i.at, align 8            ; 2 uses
  %i.ug = add i32 %i.uf, 1
  store i32 %i.ug, ptr %i.at, align 8
  %i.uh = sext i32 %i.uf to i64
  %i.ui = getelementptr inbounds [24 x i8], ptr %i.ax, i64 %i.uh
  %i.uj = getelementptr inbounds nuw [24 x i8], ptr %i.tr, i64 %indvars.iv756.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ui, ptr noundef nonnull align 8 dereferenceable(24) %i.uj, i64 24, i1 false)
  br label %.loopexit546.i

.loopexit546.i:                                   ; preds = %.epil.preheader, %.loopexit546.i.loopexit.unr-lcssa, %.critedge27.i, %._crit_edge637.i, %bb.am, %bb.ak, %bb.aj, %bb.ai
  %.pr.i = load i32, ptr %i.at, align 8           ; 2 uses
  %i.uk = icmp eq i32 %.pr.i, 0
  br i1 %i.uk, label %tzloadbody.exit, label %.loopexit546.i..loopexit546.thread.i_crit_edge

.loopexit546.i..loopexit546.thread.i_crit_edge:   ; preds = %.loopexit546.i
  %.pre = load i32, ptr %i.as, align 4
  br label %.loopexit546.thread.i

.loopexit546.thread.i:                            ; preds = %.loopexit546.i..loopexit546.thread.i_crit_edge, %bb.al
  %i.ul = phi i32 [ %.pre, %.loopexit546.i..loopexit546.thread.i_crit_edge ], [ %.5366.lcssa.i, %bb.al ] ; 6 uses
  %i.um = phi i32 [ %.pr.i, %.loopexit546.i..loopexit546.thread.i_crit_edge ], [ %i.ik, %bb.al ] ; 5 uses
  %i.un = icmp sgt i32 %i.ul, 1
  br i1 %i.un, label %.preheader544.i, label %.loopexit.i

.preheader544.i:                                  ; preds = %.loopexit546.thread.i
  %i.uo = load i8, ptr %i.av, align 8             ; 2 uses
  %i.up = zext i8 %i.uo to i32
  %.not30.i.i = icmp sgt i32 %i.um, %i.up
  %i.uq = zext i8 %i.uo to i64
  %i.ur = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.uq ; 5 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ur, i64 16
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ur, i64 17
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ur, i64 12
  %.not30.i.fr.i = freeze i1 %.not30.i.i
  br i1 %.not30.i.fr.i, label %.preheader544.split.preheader.i, label %.lr.ph665.i

.preheader544.split.preheader.i:                  ; preds = %.preheader544.i
  %wide.trip.count764.i = zext nneg i32 %i.ul to i64
  br label %.preheader544.split.i

.preheader544.split.i:                            ; preds = %typesequiv.exit.thread.i, %.preheader544.split.preheader.i
  %indvars.iv760.i = phi i64 [ 1, %.preheader544.split.preheader.i ], [ %indvars.iv.next761.i, %typesequiv.exit.thread.i ] ; 3 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv760.i
  %i.ux = load i8, ptr %i.uw, align 1             ; 2 uses
  %i.uy = zext i8 %i.ux to i32
  %.not.i486.i = icmp sgt i32 %i.um, %i.uy
  br i1 %.not.i486.i, label %bb.be, label %typesequiv.exit.thread.i

bb.be:                                            ; preds = %.preheader544.split.i
  %i.uz = zext i8 %i.ux to i64
  %i.va = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.uz ; 5 uses
  %i.vb = load i64, ptr %i.va, align 8
  %i.vc = load i64, ptr %i.ur, align 8
  %i.vd = icmp eq i64 %i.vb, %i.vc
  br i1 %i.vd, label %bb.bf, label %typesequiv.exit.thread.i

bb.bf:                                            ; preds = %bb.be
  %i.ve = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.vf = load i8, ptr %i.ve, align 8, !range !9, !noundef !10
  %i.vg = load i8, ptr %i.us, align 8, !range !9, !noundef !10
  %i.vh = icmp eq i8 %i.vf, %i.vg
  br i1 %i.vh, label %bb.bg, label %typesequiv.exit.thread.i

bb.bg:                                            ; preds = %bb.bf
  %i.vi = getelementptr inbounds nuw i8, ptr %i.va, i64 16
  %i.vj = load i8, ptr %i.vi, align 8, !range !9, !noundef !10
  %i.vk = load i8, ptr %i.ut, align 8, !range !9, !noundef !10
  %i.vl = icmp eq i8 %i.vj, %i.vk
  br i1 %i.vl, label %bb.bh, label %typesequiv.exit.thread.i

bb.bh:                                            ; preds = %bb.bg
  %i.vm = getelementptr inbounds nuw i8, ptr %i.va, i64 17
  %i.vn = load i8, ptr %i.vm, align 1, !range !9, !noundef !10
  %i.vo = load i8, ptr %i.uu, align 1, !range !9, !noundef !10
  %i.vp = icmp eq i8 %i.vn, %i.vo
  br i1 %i.vp, label %typesequiv.exit.i, label %typesequiv.exit.thread.i

typesequiv.exit.i:                                ; preds = %bb.bh
  %i.vq = getelementptr inbounds nuw i8, ptr %i.va, i64 12
  %i.vr = load i32, ptr %i.vq, align 4
  %i.vs = sext i32 %i.vr to i64
  %i.vt = getelementptr inbounds i8, ptr %i.ay, i64 %i.vs
  %i.vu = load i32, ptr %i.uv, align 4
  %i.vv = sext i32 %i.vu to i64
  %i.vw = getelementptr inbounds i8, ptr %i.ay, i64 %i.vv
  %i.vx = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.vt, ptr noundef nonnull readonly dereferenceable(1) %i.vw) #21
  %i.vy = icmp eq i32 %i.vx, 0
  br i1 %i.vy, label %bb.bi, label %typesequiv.exit.thread.i

bb.bi:                                            ; preds = %typesequiv.exit.i
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv760.i
  %i.wa = load i64, ptr %i.vz, align 8
  %i.wb = load i64, ptr %i.aw, align 8
  %i.wc = sub i64 %i.wa, %i.wb
  %i.wd = icmp eq i64 %i.wc, 12622780800
  br i1 %i.wd, label %bb.bj, label %typesequiv.exit.thread.i

bb.bj:                                            ; preds = %bb.bi
  store i8 1, ptr %i.f, align 8
  br label %.lr.ph665.i

typesequiv.exit.thread.i:                         ; preds = %bb.bi, %typesequiv.exit.i, %bb.bh, %bb.bg, %bb.bf, %bb.be, %.preheader544.split.i
  %indvars.iv.next761.i = add nuw nsw i64 %indvars.iv760.i, 1 ; 2 uses
  %exitcond765.not.i = icmp eq i64 %indvars.iv.next761.i, %wide.trip.count764.i
  br i1 %exitcond765.not.i, label %.lr.ph665.i, label %.preheader544.split.i, !llvm.loop !31

.lr.ph665.i:                                      ; preds = %typesequiv.exit.thread.i, %bb.bj, %.preheader544.i
  %i.we = add nsw i32 %i.ul, -1
  %i.wf = zext nneg i32 %i.we to i64              ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.wf
  %i.wh = load i8, ptr %i.wg, align 1             ; 2 uses
  %i.wi = zext i8 %i.wh to i32
  %.not.i487.i = icmp sgt i32 %i.um, %i.wi
  %i.wj = zext i8 %i.wh to i64
  %i.wk = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.wj ; 5 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 8
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wk, i64 16
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wk, i64 17
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wk, i64 12
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.wf
  %.not.i487.fr.i = freeze i1 %.not.i487.i
  br i1 %.not.i487.fr.i, label %.lr.ph665.split.preheader.i, label %.loopexit.i

.lr.ph665.split.preheader.i:                      ; preds = %.lr.ph665.i
  %i.wq = add nsw i32 %i.ul, -2
  %i.wr = zext nneg i32 %i.wq to i64
  br label %.lr.ph665.split.i

.lr.ph665.split.i:                                ; preds = %typesequiv.exit491.thread.i, %.lr.ph665.split.preheader.i
  %indvars.iv766.i = phi i64 [ %i.wr, %.lr.ph665.split.preheader.i ], [ %indvars.iv.next767.i, %typesequiv.exit491.thread.i ] ; 4 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv766.i
  %i.wt = load i8, ptr %i.ws, align 1             ; 2 uses
  %i.wu = zext i8 %i.wt to i32
  %.not30.i488.i = icmp sgt i32 %i.um, %i.wu
  br i1 %.not30.i488.i, label %bb.bk, label %typesequiv.exit491.thread.i

bb.bk:                                            ; preds = %.lr.ph665.split.i
  %i.wv = zext i8 %i.wt to i64
  %i.ww = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.wv ; 5 uses
  %i.wx = load i64, ptr %i.wk, align 8
  %i.wy = load i64, ptr %i.ww, align 8
  %i.wz = icmp eq i64 %i.wx, %i.wy
  br i1 %i.wz, label %bb.bl, label %typesequiv.exit491.thread.i

bb.bl:                                            ; preds = %bb.bk
  %i.xa = load i8, ptr %i.wl, align 8, !range !9, !noundef !10
  %i.xb = getelementptr inbounds nuw i8, ptr %i.ww, i64 8
  %i.xc = load i8, ptr %i.xb, align 8, !range !9, !noundef !10
  %i.xd = icmp eq i8 %i.xa, %i.xc
  br i1 %i.xd, label %bb.bm, label %typesequiv.exit491.thread.i

bb.bm:                                            ; preds = %bb.bl
end_hunk_0
