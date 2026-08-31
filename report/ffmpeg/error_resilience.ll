Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/error_resilience?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 21
begin_hunk_0_@ff_er_frame_end:bb.a
  %spec.select722 = add nuw nsw i32 %i.mw, %.0606832
  %i.mx = lshr i32 %i.mu, 1
  %i.my = and i32 %i.mx, 1
  %.1603 = add nuw nsw i32 %i.my, %.0602834
  %i.mz = lshr i32 %i.mu, 3
  %i.na = and i32 %i.mz, 1
  %.1605 = add nuw nsw i32 %i.na, %.0604833
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %indvars.iv924
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 4
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !48
  %i.ne = sext i32 %i.nd to i64
  %i.nf = getelementptr inbounds i8, ptr %i.mn, i64 %i.ne
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !44
  %i.nh = zext i8 %i.ng to i32                    ; 3 uses
  %i.ni = lshr i32 %i.nh, 2
  %i.nj = and i32 %i.ni, 1
  %spec.select722.1 = add nuw nsw i32 %i.nj, %spec.select722 ; 3 uses
  %i.nk = lshr i32 %i.nh, 1
  %i.nl = and i32 %i.nk, 1
  %.1603.1 = add nuw nsw i32 %i.nl, %.1603        ; 3 uses
  %i.nm = lshr i32 %i.nh, 3
  %i.nn = and i32 %i.nm, 1
  %.1605.1 = add nuw nsw i32 %i.nn, %.1605        ; 3 uses
  %indvars.iv.next925.1 = add nuw nsw i64 %indvars.iv924, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge838.loopexit.unr-lcssa, label %bb.bm, !llvm.loop !87

._crit_edge838.loopexit.unr-lcssa:                ; preds = %bb.bm
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge838, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge838.loopexit.unr-lcssa, %.lr.ph837
  %indvars.iv924.epil.init = phi i64 [ 0, %.lr.ph837 ], [ %indvars.iv.next925.1, %._crit_edge838.loopexit.unr-lcssa ]
  %.0602834.epil.init = phi i32 [ 0, %.lr.ph837 ], [ %.1603.1, %._crit_edge838.loopexit.unr-lcssa ]
  %.0604833.epil.init = phi i32 [ 0, %.lr.ph837 ], [ %.1605.1, %._crit_edge838.loopexit.unr-lcssa ]
  %.0606832.epil.init = phi i32 [ 0, %.lr.ph837 ], [ %spec.select722.1, %._crit_edge838.loopexit.unr-lcssa ]
  %lcmp.mod1155 = trunc i32 %i.mk to i1
  tail call void @llvm.assume(i1 %lcmp.mod1155)
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %indvars.iv924.epil.init
  %i.np = load i32, ptr %i.no, align 4, !tbaa !48
  %i.nq = sext i32 %i.np to i64
  %i.nr = getelementptr inbounds i8, ptr %i.mn, i64 %i.nq
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !44
  %i.nt = zext i8 %i.ns to i32                    ; 3 uses
  %i.nu = lshr i32 %i.nt, 2
  %i.nv = and i32 %i.nu, 1
  %spec.select722.epil = add nuw nsw i32 %i.nv, %.0606832.epil.init
  %i.nw = lshr i32 %i.nt, 1
  %i.nx = and i32 %i.nw, 1
  %.1603.epil = add nuw nsw i32 %i.nx, %.0602834.epil.init
  %i.ny = lshr i32 %i.nt, 3
  %i.nz = and i32 %i.ny, 1
  %.1605.epil = add nuw nsw i32 %i.nz, %.0604833.epil.init
  br label %._crit_edge838

._crit_edge838:                                   ; preds = %.epil.preheader, %._crit_edge838.loopexit.unr-lcssa, %.preheader778, %.loopexit779
  %.0606.lcssa = phi i32 [ 0, %.loopexit779 ], [ 0, %.preheader778 ], [ %spec.select722.1, %._crit_edge838.loopexit.unr-lcssa ], [ %spec.select722.epil, %.epil.preheader ]
  %.0604.lcssa = phi i32 [ 0, %.loopexit779 ], [ 0, %.preheader778 ], [ %.1605.1, %._crit_edge838.loopexit.unr-lcssa ], [ %.1605.epil, %.epil.preheader ]
  %.0602.lcssa = phi i32 [ 0, %.loopexit779 ], [ 0, %.preheader778 ], [ %.1603.1, %._crit_edge838.loopexit.unr-lcssa ], [ %.1603.epil, %.epil.preheader ]
  %i.oa = load ptr, ptr %0, align 8, !tbaa !24
  %i.ob = load ptr, ptr %i.q, align 8, !tbaa !55
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 120
  %i.od = load i32, ptr %i.oc, align 8, !tbaa !88
  %i.oe = tail call signext i8 @av_get_picture_type_char(i32 noundef %i.od) #10
  %i.of = sext i8 %i.oe to i32
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.oa, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %.0606.lcssa, i32 noundef %.0602.lcssa, i32 noundef %.0604.lcssa, i32 noundef %i.of) #10
  %.not651 = icmp eq ptr %1, null
  br i1 %.not651, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge838
  %i.og = load i32, ptr %1, align 4, !tbaa !48
  %i.oh = or i32 %i.og, 4
  store i32 %i.oh, ptr %1, align 4, !tbaa !48
  br label %bb.bp

bb.bo:                                            ; preds = %._crit_edge838
  %i.oi = load ptr, ptr %i.q, align 8, !tbaa !55
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 320 ; 2 uses
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !89
  %i.ol = or i32 %i.ok, 4
  store i32 %i.ol, ptr %i.oj, align 8, !tbaa !89
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.om = load ptr, ptr %i.bq, align 8, !tbaa !64 ; 2 uses
  %.not.i732 = icmp eq ptr %i.om, null
  br i1 %.not.i732, label %is_intra_more_likely.exit.thread753, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !74
  %.not72.i = icmp eq ptr %i.on, null
  br i1 %.not72.i, label %is_intra_more_likely.exit.thread753, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.oo = load ptr, ptr %0, align 8, !tbaa !24    ; 6 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 520
  %i.oq = load i32, ptr %i.op, align 8, !tbaa !27
  %i.or = and i32 %i.oq, 256
  %.not73.i = icmp eq i32 %i.or, 0
  br i1 %.not73.i, label %.preheader81.i, label %is_intra_more_likely.exit.thread

.preheader81.i:                                   ; preds = %bb.br
  %i.os = load i32, ptr %i.ez, align 8, !tbaa !43 ; 4 uses
  %i.ot = icmp sgt i32 %i.os, 0
  br i1 %i.ot, label %.lr.ph.i, label %is_intra_more_likely.exit.thread

.lr.ph.i:                                         ; preds = %.preheader81.i
  %i.ou = load ptr, ptr %i.fa, align 8, !tbaa !47 ; 3 uses
  %i.ov = load ptr, ptr %i.fb, align 8, !tbaa !22 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.os to i64 ; 2 uses
  %xtraiter1157 = and i64 %wide.trip.count.i, 1
  %i.ow = icmp eq i32 %i.os, 1
  br i1 %i.ow, label %.epil.preheader1156, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter1161 = and i64 %wide.trip.count.i, 2147483646
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.bs ] ; 3 uses
  %.06283.i = phi i32 [ 0, %.lr.ph.i.new ], [ %.1.i.1, %bb.bs ]
  %niter1162 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter1162.next.1, %bb.bs ]
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv.i
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !48
  %i.oz = sext i32 %i.oy to i64
  %i.pa = getelementptr inbounds i8, ptr %i.ov, i64 %i.oz
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !44
  %i.pc = and i8 %i.pb, 12
  %or.cond.not.i = icmp ne i8 %i.pc, 12
  %i.pd = zext i1 %or.cond.not.i to i32
  %.1.i = add nuw nsw i32 %.06283.i, %i.pd
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv.i
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 4
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !48
  %i.ph = sext i32 %i.pg to i64
  %i.pi = getelementptr inbounds i8, ptr %i.ov, i64 %i.ph
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !44
  %i.pk = and i8 %i.pj, 12
  %or.cond.not.i.1 = icmp ne i8 %i.pk, 12
  %i.pl = zext i1 %or.cond.not.i.1 to i32
  %.1.i.1 = add nuw nsw i32 %.1.i, %i.pl          ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter1162.next.1 = add i64 %niter1162, 2       ; 2 uses
  %niter1162.ncmp.1 = icmp eq i64 %niter1162.next.1, %unroll_iter1161
  br i1 %niter1162.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.bs, !llvm.loop !90

._crit_edge.i.unr-lcssa:                          ; preds = %bb.bs
  %lcmp.mod1158.not = icmp eq i64 %xtraiter1157, 0
  br i1 %lcmp.mod1158.not, label %._crit_edge.i, label %.epil.preheader1156

.epil.preheader1156:                              ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.unr-lcssa ]
  %.06283.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %.1.i.1, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod1160 = trunc i32 %i.os to i1
  tail call void @llvm.assume(i1 %lcmp.mod1160)
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv.i.epil.init
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !48
  %i.po = sext i32 %i.pn to i64
  %i.pp = getelementptr inbounds i8, ptr %i.ov, i64 %i.po
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !44
  %i.pr = and i8 %i.pq, 12
  %or.cond.not.i.epil = icmp ne i8 %i.pr, 12
  %i.ps = zext i1 %or.cond.not.i.epil to i32
  %.1.i.epil = add nuw nsw i32 %.06283.i.epil.init, %i.ps
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader1156
  %.1.i.lcssa = phi i32 [ %.1.i.1, %._crit_edge.i.unr-lcssa ], [ %.1.i.epil, %.epil.preheader1156 ] ; 3 uses
  %i.pt = icmp samesign ult i32 %.1.i.lcssa, 5
  br i1 %i.pt, label %is_intra_more_likely.exit.thread, label %bb.bt

bb.bt:                                            ; preds = %._crit_edge.i
  %i.pu = icmp samesign ugt i32 %.1.i.lcssa, 99
  %i.pv = udiv i32 %.1.i.lcssa, 50
  %i.pw = select i1 %i.pu, i32 %i.pv, i32 1
  %i.px = load i32, ptr %i.c, align 8, !tbaa !9   ; 2 uses
  %i.py = icmp sgt i32 %i.px, 1
  br i1 %i.py, label %.preheader.lr.ph.i, label %is_intra_more_likely.exit.thread

.preheader.lr.ph.i:                               ; preds = %bb.bt
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.qd = load i32, ptr %i.v, align 4, !tbaa !46  ; 3 uses
  %i.qe = icmp sgt i32 %i.qd, 0
  br i1 %i.qe, label %.preheader.i, label %is_intra_more_likely.exit.thread

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %._crit_edge88.i
  %i.qf = phi i32 [ %i.so, %._crit_edge88.i ], [ %i.px, %.preheader.lr.ph.i ]
  %i.qg = phi i32 [ %i.sp, %._crit_edge88.i ], [ %i.qd, %.preheader.lr.ph.i ] ; 2 uses
  %i.qh = phi i32 [ %i.sq, %._crit_edge88.i ], [ %i.qd, %.preheader.lr.ph.i ] ; 2 uses
  %.093.i = phi i32 [ %i.sr, %._crit_edge88.i ], [ 0, %.preheader.lr.ph.i ] ; 4 uses
  %.06392.i = phi i32 [ %.164.lcssa.i, %._crit_edge88.i ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  %.06691.i = phi i32 [ %.167.lcssa.i, %._crit_edge88.i ], [ 0, %.preheader.lr.ph.i ] ; 2 uses
  %i.qi = icmp sgt i32 %i.qh, 0
  br i1 %i.qi, label %.lr.ph87.i, label %._crit_edge88.i

.lr.ph87.i:                                       ; preds = %.preheader.i
  %i.qj = shl nsw i32 %.093.i, 4
  br label %bb.bu

bb.bu:                                            ; preds = %bb.cd, %.lr.ph87.i
  %i.qk = phi i32 [ %i.qg, %.lr.ph87.i ], [ %i.sl, %bb.cd ] ; 4 uses
  %indvars.iv98.i = phi i64 [ 0, %.lr.ph87.i ], [ %indvars.iv.next99.i, %bb.cd ] ; 3 uses
  %.16485.i = phi i32 [ %.06392.i, %.lr.ph87.i ], [ %.2.i, %bb.cd ] ; 2 uses
  %.16784.i = phi i32 [ %.06691.i, %.lr.ph87.i ], [ %.3.i, %bb.cd ] ; 5 uses
  %i.ql = load i64, ptr %i.pz, align 8, !tbaa !21
  %i.qm = trunc i64 %i.ql to i32
  %i.qn = mul i32 %.093.i, %i.qm
  %i.qo = trunc nuw nsw i64 %indvars.iv98.i to i32
  %i.qp = add i32 %i.qn, %i.qo
  %i.qq = load ptr, ptr %i.fb, align 8, !tbaa !22
  %i.qr = sext i32 %i.qp to i64                   ; 2 uses
  %i.qs = getelementptr inbounds i8, ptr %i.qq, i64 %i.qr
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !44
  %i.qu = and i8 %i.qt, 12
  %or.cond80.not.i = icmp eq i8 %i.qu, 12
  br i1 %or.cond80.not.i, label %bb.cd, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.qv = add nsw i32 %.16485.i, 1                ; 5 uses
  %i.qw = srem i32 %i.qv, %i.pw
  %.not76.i = icmp eq i32 %i.qw, 0
  br i1 %.not76.i, label %bb.bw, label %bb.cd

bb.bw:                                            ; preds = %bb.bv
  %i.qx = load ptr, ptr %i.q, align 8, !tbaa !55  ; 3 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 120
  %i.qz = load i32, ptr %i.qy, align 8, !tbaa !88
  %i.ra = icmp eq i32 %i.qz, 1
  br i1 %i.ra, label %bb.bx, label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qx, i64 64 ; 3 uses
  %i.rc = load ptr, ptr %i.qx, align 8, !tbaa !74
  %i.rd = shl nuw nsw i64 %indvars.iv98.i, 4      ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.rd
  %i.rf = load i32, ptr %i.rb, align 8, !tbaa !48 ; 2 uses
  %i.rg = mul nsw i32 %i.qj, %i.rf
  %i.rh = sext i32 %i.rg to i64                   ; 2 uses
  %i.ri = getelementptr inbounds i8, ptr %i.re, i64 %i.rh
  %i.rj = load ptr, ptr %i.bq, align 8, !tbaa !64
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !74
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 %i.rd
  %i.rm = getelementptr inbounds i8, ptr %i.rl, i64 %i.rh ; 3 uses
  %i.rn = load ptr, ptr %0, align 8, !tbaa !24
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 24
  %i.rp = load i32, ptr %i.ro, align 8, !tbaa !61
  %i.rq = icmp eq i32 %i.rp, 27
  br i1 %i.rq, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.rr = load ptr, ptr %i.qb, align 8, !tbaa !91
  tail call void @ff_thread_progress_await(ptr noundef %i.rr, i32 noundef %.093.i) #10
  %.pre.i = load i32, ptr %i.rb, align 8, !tbaa !48
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.rs = phi i32 [ %i.rf, %bb.bx ], [ %.pre.i, %bb.by ]
  %i.rt = load ptr, ptr %i.qc, align 8, !tbaa !26
  %i.ru = sext i32 %i.rs to i64
  %i.rv = tail call i32 %i.rt(ptr noundef null, ptr noundef %i.rm, ptr noundef %i.ri, i64 noundef %i.ru, i32 noundef 16) #10, !inline_history !92
  %i.rw = add nsw i32 %i.rv, %.16784.i
  %i.rx = load ptr, ptr %i.qc, align 8, !tbaa !26
  %i.ry = load i32, ptr %i.rb, align 8, !tbaa !48 ; 2 uses
  %i.rz = shl nsw i32 %i.ry, 4
  %i.sa = sext i32 %i.rz to i64
  %i.sb = getelementptr inbounds i8, ptr %i.rm, i64 %i.sa
  %i.sc = sext i32 %i.ry to i64
  %i.sd = tail call i32 %i.rx(ptr noundef null, ptr noundef %i.rm, ptr noundef %i.sb, i64 noundef %i.sc, i32 noundef 16) #10, !inline_history !92
  %i.se = sub i32 %i.rw, %i.sd
  %.pre101.i = load i32, ptr %i.v, align 4, !tbaa !46
  br label %bb.cd

bb.ca:                                            ; preds = %bb.bw
  %i.sf = load ptr, ptr %i.qa, align 8, !tbaa !93
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.sf, i64 %i.qr
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !48
  %i.si = and i32 %i.sh, 7
  %.not77.i = icmp eq i32 %i.si, 0
  br i1 %.not77.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.sj = add nsw i32 %.16784.i, 1
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.sk = add nsw i32 %.16784.i, -1
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %bb.bz, %bb.bv, %bb.bu
  %i.sl = phi i32 [ %i.qk, %bb.bv ], [ %i.qk, %bb.bu ], [ %.pre101.i, %bb.bz ], [ %i.qk, %bb.cb ], [ %i.qk, %bb.cc ] ; 4 uses
  %.3.i = phi i32 [ %.16784.i, %bb.bv ], [ %.16784.i, %bb.bu ], [ %i.se, %bb.bz ], [ %i.sj, %bb.cb ], [ %i.sk, %bb.cc ] ; 2 uses
  %.2.i = phi i32 [ %i.qv, %bb.bv ], [ %.16485.i, %bb.bu ], [ %i.qv, %bb.bz ], [ %i.qv, %bb.cb ], [ %i.qv, %bb.cc ] ; 2 uses
  %indvars.iv.next99.i = add nuw nsw i64 %indvars.iv98.i, 1 ; 2 uses
  %i.sm = sext i32 %i.sl to i64
  %i.sn = icmp slt i64 %indvars.iv.next99.i, %i.sm
  br i1 %i.sn, label %bb.bu, label %._crit_edge88.loopexit.i, !llvm.loop !94

._crit_edge88.loopexit.i:                         ; preds = %bb.cd
  %.pre102.i = load i32, ptr %i.c, align 8, !tbaa !9
  br label %._crit_edge88.i

._crit_edge88.i:                                  ; preds = %._crit_edge88.loopexit.i, %.preheader.i
  %i.so = phi i32 [ %i.qf, %.preheader.i ], [ %.pre102.i, %._crit_edge88.loopexit.i ] ; 2 uses
  %i.sp = phi i32 [ %i.qg, %.preheader.i ], [ %i.sl, %._crit_edge88.loopexit.i ]
  %i.sq = phi i32 [ %i.qh, %.preheader.i ], [ %i.sl, %._crit_edge88.loopexit.i ]
  %.167.lcssa.i = phi i32 [ %.06691.i, %.preheader.i ], [ %.3.i, %._crit_edge88.loopexit.i ] ; 2 uses
  %.164.lcssa.i = phi i32 [ %.06392.i, %.preheader.i ], [ %.2.i, %._crit_edge88.loopexit.i ]
  %i.sr = add nuw nsw i32 %.093.i, 1              ; 2 uses
  %i.ss = add nsw i32 %i.so, -1
  %i.st = icmp slt i32 %i.sr, %i.ss
  br i1 %i.st, label %.preheader.i, label %is_intra_more_likely.exit, !llvm.loop !95

is_intra_more_likely.exit:                        ; preds = %._crit_edge88.i
  %i.su = icmp slt i32 %.167.lcssa.i, 1
  br i1 %i.su, label %is_intra_more_likely.exit.is_intra_more_likely.exit.thread_crit_edge, label %is_intra_more_likely.exit.thread753

is_intra_more_likely.exit.is_intra_more_likely.exit.thread_crit_edge: ; preds = %is_intra_more_likely.exit
  %.pre992 = load ptr, ptr %0, align 8, !tbaa !24
  br label %is_intra_more_likely.exit.thread

is_intra_more_likely.exit.thread:                 ; preds = %is_intra_more_likely.exit.is_intra_more_likely.exit.thread_crit_edge, %.preheader81.i, %bb.bt, %._crit_edge.i, %.preheader.lr.ph.i, %bb.br
  %i.sv = phi ptr [ %.pre992, %is_intra_more_likely.exit.is_intra_more_likely.exit.thread_crit_edge ], [ %i.oo, %.preheader81.i ], [ %i.oo, %bb.bt ], [ %i.oo, %._crit_edge.i ], [ %i.oo, %.preheader.lr.ph.i ], [ %i.oo, %bb.br ]
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 24
  %i.sx = load i32, ptr %i.sw, align 8, !tbaa !61
  %i.sy = icmp eq i32 %i.sx, 27
  %i.sz = select i1 %i.sy, i32 12296, i32 4104
  br label %is_intra_more_likely.exit.thread753

is_intra_more_likely.exit.thread753:              ; preds = %bb.bq, %bb.bp, %is_intra_more_likely.exit, %is_intra_more_likely.exit.thread
  %i.ta = phi i32 [ %i.sz, %is_intra_more_likely.exit.thread ], [ 1, %is_intra_more_likely.exit ], [ 1, %bb.bp ], [ 1, %bb.bq ]
  %i.tb = load i32, ptr %i.ez, align 8, !tbaa !43 ; 3 uses
  %i.tc = icmp sgt i32 %i.tb, 0
  br i1 %i.tc, label %.lr.ph843, label %._crit_edge844

.lr.ph843:                                        ; preds = %is_intra_more_likely.exit.thread753
  %i.td = load ptr, ptr %i.fa, align 8, !tbaa !47
  %i.te = load ptr, ptr %i.fb, align 8, !tbaa !22
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 240
  br label %bb.ce

bb.ce:                                            ; preds = %.lr.ph843, %bb.cg
  %i.tg = phi i32 [ %i.tb, %.lr.ph843 ], [ %i.tp, %bb.cg ]
  %indvars.iv929 = phi i64 [ 0, %.lr.ph843 ], [ %indvars.iv.next930, %bb.cg ] ; 2 uses
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %indvars.iv929
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !48
  %i.tj = sext i32 %i.ti to i64                   ; 2 uses
  %i.tk = getelementptr inbounds i8, ptr %i.te, i64 %i.tj
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !44
  %i.tm = and i8 %i.tl, 12
  %or.cond723.not = icmp eq i8 %i.tm, 12
  br i1 %or.cond723.not, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.tn = load ptr, ptr %i.tf, align 8, !tbaa !93
  %i.to = getelementptr inbounds [4 x i8], ptr %i.tn, i64 %i.tj
  store i32 %i.ta, ptr %i.to, align 4, !tbaa !48
  %.pre993 = load i32, ptr %i.ez, align 8, !tbaa !43
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ce, %bb.cf
  %i.tp = phi i32 [ %i.tg, %bb.ce ], [ %.pre993, %bb.cf ] ; 3 uses
  %indvars.iv.next930 = add nuw nsw i64 %indvars.iv929, 1 ; 2 uses
  %i.tq = sext i32 %i.tp to i64
  %i.tr = icmp slt i64 %indvars.iv.next930, %i.tq
  br i1 %i.tr, label %bb.ce, label %._crit_edge844, !llvm.loop !97

._crit_edge844:                                   ; preds = %bb.cg, %is_intra_more_likely.exit.thread753
  %i.ts = phi i32 [ %i.tb, %is_intra_more_likely.exit.thread753 ], [ %i.tp, %bb.cg ] ; 3 uses
  %i.tt = load ptr, ptr %i.bq, align 8, !tbaa !64 ; 2 uses
  %.not653 = icmp eq ptr %i.tt, null
  br i1 %.not653, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %._crit_edge844
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !74
  %.not654 = icmp eq ptr %i.tu, null
  br i1 %.not654, label %bb.ci, label %.loopexit777

bb.ci:                                            ; preds = %bb.ch, %._crit_edge844
  %i.tv = load ptr, ptr %i.cf, align 8, !tbaa !72 ; 2 uses
  %.not655 = icmp eq ptr %i.tv, null
  br i1 %.not655, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !74
  %.not656 = icmp eq ptr %i.tw, null
  %i.tx = icmp sgt i32 %i.ts, 0
  %or.cond1101 = and i1 %.not656, %i.tx
  br i1 %or.cond1101, label %.lr.ph847, label %.loopexit777

bb.ck:                                            ; preds = %bb.ci
  %.old = icmp sgt i32 %i.ts, 0
  br i1 %.old, label %.lr.ph847, label %.loopexit777

.lr.ph847:                                        ; preds = %bb.cj, %bb.ck
  %i.ty = load ptr, ptr %i.fa, align 8, !tbaa !47
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !93
end_hunk_0
begin_hunk_1_@ff_er_frame_end:bb.a
  %i.xf = load ptr, ptr %i.q, align 8, !tbaa !55
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 120
  %i.xh = load i32, ptr %i.xg, align 8, !tbaa !88
  %i.xi = icmp eq i32 %i.xh, 3
  br i1 %i.xi, label %.preheader774, label %bb.dg

.preheader774:                                    ; preds = %._crit_edge854
  %i.xj = icmp sgt i32 %i.xe, 0
  %.pre1003.pre1008 = load i32, ptr %i.v, align 4, !tbaa !46 ; 3 uses
  br i1 %i.xj, label %.preheader773.lr.ph, label %._crit_edge874.split

.preheader773.lr.ph:                              ; preds = %.preheader774
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.xm = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 434
  %i.xo = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 456
  br label %.preheader773

.preheader773:                                    ; preds = %.preheader773.lr.ph, %._crit_edge857
  %i.xw = phi i32 [ %i.xe, %.preheader773.lr.ph ], [ %i.aab, %._crit_edge857 ]
  %i.xx = phi i32 [ %.pre1003.pre1008, %.preheader773.lr.ph ], [ %i.aac, %._crit_edge857 ] ; 2 uses
  %i.xy = phi i32 [ %.pre1003.pre1008, %.preheader773.lr.ph ], [ %i.aad, %._crit_edge857 ] ; 2 uses
  %.2594858 = phi i32 [ 0, %.preheader773.lr.ph ], [ %i.aae, %._crit_edge857 ] ; 5 uses
  %i.xz = icmp sgt i32 %i.xy, 0
  br i1 %i.xz, label %.lr.ph856, label %._crit_edge857

.lr.ph856:                                        ; preds = %.preheader773, %bb.df
  %i.ya = phi i32 [ %i.zy, %bb.df ], [ %i.xx, %.preheader773 ]
  %.3589855 = phi i32 [ %i.zz, %bb.df ], [ 0, %.preheader773 ] ; 4 uses
  %i.yb = load i64, ptr %i.a, align 8, !tbaa !58
  %i.yc = trunc i64 %i.yb to i32
  %i.yd = mul i32 %.2594858, %i.yc
  %reass.add = add i32 %i.yd, %.3589855
  %reass.mul = shl i32 %reass.add, 1
  %i.ye = load i64, ptr %i.xk, align 8, !tbaa !21
  %i.yf = trunc i64 %i.ye to i32
  %i.yg = mul i32 %.2594858, %i.yf
  %i.yh = add i32 %i.yg, %.3589855
  %i.yi = load ptr, ptr %i.xl, align 8, !tbaa !93
  %i.yj = sext i32 %i.yh to i64                   ; 2 uses
  %i.yk = getelementptr inbounds [4 x i8], ptr %i.yi, i64 %i.yj
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !48
  %i.ym = load ptr, ptr %i.fb, align 8, !tbaa !22
  %i.yn = getelementptr inbounds i8, ptr %i.ym, i64 %i.yj
  %i.yo = load i8, ptr %i.yn, align 1, !tbaa !44
  %i.yp = and i32 %i.yl, 7
  %.not670 = icmp ne i32 %i.yp, 0
  %i.yq = and i8 %i.yo, 10
  %i.yr = icmp ne i8 %i.yq, 10
  %or.cond731 = select i1 %.not670, i1 true, i1 %i.yr
  br i1 %or.cond731, label %bb.df, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph856
  %i.ys = load ptr, ptr %i.bq, align 8, !tbaa !64 ; 2 uses
  %.not673 = icmp eq ptr %i.ys, null
  br i1 %.not673, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !74
  %.not674 = icmp eq ptr %i.yt, null
  br i1 %.not674, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.0567 = phi i32 [ 3, %bb.cu ], [ 2, %bb.cv ]   ; 2 uses
  %i.yu = load ptr, ptr %i.cf, align 8, !tbaa !72 ; 2 uses
  %.not675 = icmp eq ptr %i.yu, null
  br i1 %.not675, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !74
  %.not676 = icmp eq ptr %i.yv, null
  br i1 %.not676, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %i.yw = and i32 %.0567, 1
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.1568 = phi i32 [ %.0567, %bb.cx ], [ %i.yw, %bb.cy ]
  %i.yx = load i16, ptr %i.xm, align 8, !tbaa !104 ; 2 uses
  %.not677 = icmp eq i16 %i.yx, 0
  br i1 %.not677, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.yy = load ptr, ptr %0, align 8, !tbaa !24
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 24
  %i.za = load i32, ptr %i.yz, align 8, !tbaa !61
  %.not678 = icmp eq i32 %i.za, 27
  br i1 %.not678, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 1219) #10
  tail call void @abort() #11
  unreachable

bb.dc:                                            ; preds = %bb.da
  %i.zb = load i16, ptr %i.xn, align 2, !tbaa !105
  %i.zc = zext i16 %i.zb to i32                   ; 3 uses
  %i.zd = zext i16 %i.yx to i32                   ; 5 uses
  %i.ze = load ptr, ptr %i.xo, align 8, !tbaa !106
  tail call void @ff_thread_progress_await(ptr noundef %i.ze, i32 noundef %.2594858) #10
  %i.zf = load ptr, ptr %i.xp, align 8, !tbaa !73
  %i.zg = sext i32 %reass.mul to i64
  %i.zh = getelementptr inbounds [4 x i8], ptr %i.zf, i64 %i.zg ; 2 uses
  %i.zi = load i16, ptr %i.zh, align 2, !tbaa !99
  %i.zj = sext i16 %i.zi to i32                   ; 2 uses
  %i.zk = mul nsw i32 %i.zj, %i.zc
  %i.zl = sdiv i32 %i.zk, %i.zd
  store i32 %i.zl, ptr %i.xq, align 8, !tbaa !48
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zh, i64 2
  %i.zn = load i16, ptr %i.zm, align 2, !tbaa !99
  %i.zo = sext i16 %i.zn to i32                   ; 2 uses
  %i.zp = mul nsw i32 %i.zo, %i.zc
  %i.zq = sdiv i32 %i.zp, %i.zd
  store i32 %i.zq, ptr %i.xr, align 4, !tbaa !48
  %i.zr = sub nsw i32 %i.zc, %i.zd                ; 2 uses
  %i.zs = mul nsw i32 %i.zr, %i.zj
  %i.zt = sdiv i32 %i.zs, %i.zd
  store i32 %i.zt, ptr %i.xs, align 8, !tbaa !48
  %i.zu = mul nsw i32 %i.zr, %i.zo
  %i.zv = sdiv i32 %i.zu, %i.zd
  br label %bb.de

bb.dd:                                            ; preds = %bb.cz
  store i32 0, ptr %i.xq, align 8, !tbaa !48
  store i32 0, ptr %i.xr, align 4, !tbaa !48
  store i32 0, ptr %i.xs, align 8, !tbaa !48
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %storemerge = phi i32 [ %i.zv, %bb.dc ], [ 0, %bb.dd ]
  store i32 %storemerge, ptr %i.xt, align 4, !tbaa !48
  %i.zw = load ptr, ptr %i.xu, align 8, !tbaa !100
  %i.zx = load ptr, ptr %i.xv, align 8, !tbaa !101
  tail call void %i.zw(ptr noundef %i.zx, i32 noundef 0, i32 noundef %.1568, i32 noundef 0, ptr noundef nonnull %i.xq, i32 noundef %.3589855, i32 noundef %.2594858, i32 noundef 0, i32 noundef 0) #10
  %.pre999 = load i32, ptr %i.v, align 4, !tbaa !46
  br label %bb.df

bb.df:                                            ; preds = %.lr.ph856, %bb.de
  %i.zy = phi i32 [ %i.ya, %.lr.ph856 ], [ %.pre999, %bb.de ] ; 4 uses
  %i.zz = add nuw nsw i32 %.3589855, 1            ; 2 uses
  %i.aaa = icmp slt i32 %i.zz, %i.zy
  br i1 %i.aaa, label %.lr.ph856, label %._crit_edge857.loopexit, !llvm.loop !107

._crit_edge857.loopexit:                          ; preds = %bb.df
  %.pre1000 = load i32, ptr %i.c, align 8, !tbaa !9
  br label %._crit_edge857

._crit_edge857:                                   ; preds = %._crit_edge857.loopexit, %.preheader773
  %i.aab = phi i32 [ %.pre1000, %._crit_edge857.loopexit ], [ %i.xw, %.preheader773 ] ; 3 uses
  %i.aac = phi i32 [ %i.zy, %._crit_edge857.loopexit ], [ %i.xx, %.preheader773 ] ; 2 uses
  %i.aad = phi i32 [ %i.zy, %._crit_edge857.loopexit ], [ %i.xy, %.preheader773 ]
  %i.aae = add nuw nsw i32 %.2594858, 1           ; 2 uses
  %i.aaf = icmp slt i32 %i.aae, %i.aab
  br i1 %i.aaf, label %.preheader773, label %.loopexit, !llvm.loop !108

bb.dg:                                            ; preds = %._crit_edge854
  tail call fastcc void @guess_mv(ptr noundef nonnull %0)
  %.pre1001 = load i32, ptr %i.c, align 8, !tbaa !9
  %.pre1003.pre = load i32, ptr %i.v, align 4, !tbaa !46
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge857, %bb.dg
  %.pre1003 = phi i32 [ %.pre1003.pre, %bb.dg ], [ %i.aac, %._crit_edge857 ] ; 4 uses
  %i.aag = phi i32 [ %.pre1001, %bb.dg ], [ %i.aab, %._crit_edge857 ] ; 5 uses
  %i.aah = icmp sgt i32 %i.aag, 0
  br i1 %i.aah, label %.preheader772.lr.ph, label %._crit_edge874.split

.preheader772.lr.ph:                              ; preds = %.loopexit
  %i.aai = icmp sgt i32 %.pre1003, 0
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.ag, i64 68
  %i.aak = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.aal = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aam = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aan = getelementptr inbounds nuw i8, ptr %0, i64 96
  br i1 %i.aai, label %.preheader772.lr.ph.split, label %._crit_edge874.split

.preheader772.lr.ph.split:                        ; preds = %.preheader772.lr.ph
  %i.aao = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.aap = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aaq = load i64, ptr %i.aap, align 8, !tbaa !21 ; 2 uses
  %i.aar = load ptr, ptr %i.aao, align 8, !tbaa !93
  %wide.trip.count970 = zext nneg i32 %i.aag to i64
  %wide.trip.count965 = zext nneg i32 %.pre1003 to i64
  br label %.preheader772

.preheader772:                                    ; preds = %.preheader772.lr.ph.split, %._crit_edge872
  %indvars.iv967 = phi i64 [ 0, %.preheader772.lr.ph.split ], [ %indvars.iv.next968, %._crit_edge872 ] ; 6 uses
  %i.aas = mul i64 %indvars.iv967, %i.aaq
  %i.aat = shl nuw nsw i64 %indvars.iv967, 4
  %2 = shl nuw nsw i64 %indvars.iv967, 3          ; 2 uses
  %3 = shl nuw nsw i64 %indvars.iv967, 1
  %4 = mul nsw i64 %i.aaq, %indvars.iv967         ; 2 uses
  br label %bb.dh

bb.dh:                                            ; preds = %.preheader772, %bb.dl
  %indvars.iv962 = phi i64 [ 0, %.preheader772 ], [ %indvars.iv.next963, %bb.dl ] ; 7 uses
  %i.aau = add i64 %i.aas, %indvars.iv962
  %sext1074 = shl i64 %i.aau, 32
  %i.aav = ashr exact i64 %sext1074, 30
  %i.aaw = getelementptr inbounds i8, ptr %i.aar, i64 %i.aav
  %i.aax = load i32, ptr %i.aaw, align 4, !tbaa !48
  %i.aay = and i32 %i.aax, 7
  %.not667 = icmp eq i32 %i.aay, 0
  br i1 %.not667, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.aaz = load i32, ptr %i.gw, align 8, !tbaa !79
  %.not668 = icmp eq i32 %i.aaz, 0
  br i1 %.not668, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.aba = load ptr, ptr %i.q, align 8, !tbaa !55 ; 3 uses
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !74
  %i.abc = shl nuw nsw i64 %indvars.iv962, 4
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abb, i64 %i.abc
  %i.abe = load i32, ptr %i.ah, align 4, !tbaa !48 ; 9 uses
  %5 = sext i32 %i.abe to i64
  %6 = mul nsw i64 %i.aat, %5
  %i.abf = getelementptr inbounds i8, ptr %i.abd, i64 %6 ; 64 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !74
  %i.abi = load i32, ptr %i.aaj, align 4, !tbaa !48
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aba, i64 16
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !74 ; 2 uses
  %i.abl = load i32, ptr %i.aak, align 4, !tbaa !48
  %i.abm = load ptr, ptr %i.aal, align 8, !tbaa !73
  %i.abn = load i64, ptr %i.a, align 8, !tbaa !58 ; 2 uses
  %i.abo = mul nsw i64 %i.abn, %3
  %i.abp = getelementptr [2 x i8], ptr %i.abm, i64 %i.abo
  %.idx1075 = shl i64 %indvars.iv962, 2
  %i.abq = getelementptr i8, ptr %i.abp, i64 %.idx1075
  br label %.preheader770

.preheader770:                                    ; preds = %bb.dj, %.preheader770
  %.0559863 = phi i32 [ 0, %bb.dj ], [ %i.arn, %.preheader770 ] ; 5 uses
  %i.abr = shl nuw nsw i32 %.0559863, 3
  %i.abs = and i32 %i.abr, 8                      ; 8 uses
  %i.abt = shl nuw nsw i32 %.0559863, 2
  %i.abu = and i32 %i.abt, 8                      ; 8 uses
  %i.abv = mul i32 %i.abu, %i.abe
  %i.abw = add i32 %i.abv, %i.abs                 ; 8 uses
  %i.abx = sext i32 %i.abw to i64
  %i.aby = getelementptr inbounds i8, ptr %i.abf, i64 %i.abx
  %i.abz = load i8, ptr %i.aby, align 1, !tbaa !44
  %i.aca = zext i8 %i.abz to i32
  %i.acb = sext i32 %i.abw to i64
  %i.acc = getelementptr i8, ptr %i.abf, i64 %i.acb
  %i.acd = getelementptr i8, ptr %i.acc, i64 1
  %i.ace = load i8, ptr %i.acd, align 1, !tbaa !44
  %i.acf = zext i8 %i.ace to i32
  %i.acg = add nuw nsw i32 %i.aca, %i.acf
  %i.ach = sext i32 %i.abw to i64
  %i.aci = getelementptr i8, ptr %i.abf, i64 %i.ach
  %i.acj = getelementptr i8, ptr %i.aci, i64 2
  %i.ack = load i8, ptr %i.acj, align 1, !tbaa !44
  %i.acl = zext i8 %i.ack to i32
  %i.acm = add nuw nsw i32 %i.acg, %i.acl
  %i.acn = sext i32 %i.abw to i64
  %i.aco = getelementptr i8, ptr %i.abf, i64 %i.acn
  %i.acp = getelementptr i8, ptr %i.aco, i64 3
  %i.acq = load i8, ptr %i.acp, align 1, !tbaa !44
  %i.acr = zext i8 %i.acq to i32
  %i.acs = add nuw nsw i32 %i.acm, %i.acr
  %i.act = sext i32 %i.abw to i64
  %i.acu = getelementptr i8, ptr %i.abf, i64 %i.act
  %i.acv = getelementptr i8, ptr %i.acu, i64 4
  %i.acw = load i8, ptr %i.acv, align 1, !tbaa !44
  %i.acx = zext i8 %i.acw to i32
  %i.acy = add nuw nsw i32 %i.acs, %i.acx
  %i.acz = sext i32 %i.abw to i64
  %i.ada = getelementptr i8, ptr %i.abf, i64 %i.acz
  %i.adb = getelementptr i8, ptr %i.ada, i64 5
  %i.adc = load i8, ptr %i.adb, align 1, !tbaa !44
  %i.add = zext i8 %i.adc to i32
  %i.ade = add nuw nsw i32 %i.acy, %i.add
  %i.adf = sext i32 %i.abw to i64
  %i.adg = getelementptr i8, ptr %i.abf, i64 %i.adf
  %i.adh = getelementptr i8, ptr %i.adg, i64 6
  %i.adi = load i8, ptr %i.adh, align 1, !tbaa !44
  %i.adj = zext i8 %i.adi to i32
  %i.adk = add nuw nsw i32 %i.ade, %i.adj
  %i.adl = sext i32 %i.abw to i64
  %i.adm = getelementptr i8, ptr %i.abf, i64 %i.adl
  %i.adn = getelementptr i8, ptr %i.adm, i64 7
  %i.ado = load i8, ptr %i.adn, align 1, !tbaa !44
  %i.adp = zext i8 %i.ado to i32
  %i.adq = add nuw nsw i32 %i.adk, %i.adp
  %i.adr = or disjoint i32 %i.abu, 1
  %i.ads = mul i32 %i.adr, %i.abe
  %i.adt = add i32 %i.ads, %i.abs                 ; 8 uses
  %i.adu = sext i32 %i.adt to i64
  %i.adv = getelementptr inbounds i8, ptr %i.abf, i64 %i.adu
  %i.adw = load i8, ptr %i.adv, align 1, !tbaa !44
  %i.adx = zext i8 %i.adw to i32
  %i.ady = add nuw nsw i32 %i.adq, %i.adx
  %i.adz = add i32 %i.adt, 1
  %i.aea = sext i32 %i.adz to i64
  %i.aeb = getelementptr inbounds i8, ptr %i.abf, i64 %i.aea
  %i.aec = load i8, ptr %i.aeb, align 1, !tbaa !44
  %i.aed = zext i8 %i.aec to i32
  %i.aee = add nuw nsw i32 %i.ady, %i.aed
  %i.aef = add i32 %i.adt, 2
  %i.aeg = sext i32 %i.aef to i64
  %i.aeh = getelementptr inbounds i8, ptr %i.abf, i64 %i.aeg
  %i.aei = load i8, ptr %i.aeh, align 1, !tbaa !44
  %i.aej = zext i8 %i.aei to i32
  %i.aek = add nuw nsw i32 %i.aee, %i.aej
  %i.ael = add i32 %i.adt, 3
  %i.aem = sext i32 %i.ael to i64
  %i.aen = getelementptr inbounds i8, ptr %i.abf, i64 %i.aem
  %i.aeo = load i8, ptr %i.aen, align 1, !tbaa !44
  %i.aep = zext i8 %i.aeo to i32
  %i.aeq = add nuw nsw i32 %i.aek, %i.aep
  %i.aer = add i32 %i.adt, 4
  %i.aes = sext i32 %i.aer to i64
  %i.aet = getelementptr inbounds i8, ptr %i.abf, i64 %i.aes
  %i.aeu = load i8, ptr %i.aet, align 1, !tbaa !44
  %i.aev = zext i8 %i.aeu to i32
  %i.aew = add nuw nsw i32 %i.aeq, %i.aev
  %i.aex = add i32 %i.adt, 5
  %i.aey = sext i32 %i.aex to i64
  %i.aez = getelementptr inbounds i8, ptr %i.abf, i64 %i.aey
  %i.afa = load i8, ptr %i.aez, align 1, !tbaa !44
  %i.afb = zext i8 %i.afa to i32
  %i.afc = add nuw nsw i32 %i.aew, %i.afb
  %i.afd = add i32 %i.adt, 6
  %i.afe = sext i32 %i.afd to i64
  %i.aff = getelementptr inbounds i8, ptr %i.abf, i64 %i.afe
  %i.afg = load i8, ptr %i.aff, align 1, !tbaa !44
  %i.afh = zext i8 %i.afg to i32
  %i.afi = add nuw nsw i32 %i.afc, %i.afh
  %i.afj = add i32 %i.adt, 7
  %i.afk = sext i32 %i.afj to i64
  %i.afl = getelementptr inbounds i8, ptr %i.abf, i64 %i.afk
  %i.afm = load i8, ptr %i.afl, align 1, !tbaa !44
  %i.afn = zext i8 %i.afm to i32
  %i.afo = add nuw nsw i32 %i.afi, %i.afn
  %i.afp = or disjoint i32 %i.abu, 2
  %i.afq = mul i32 %i.afp, %i.abe
  %i.afr = add i32 %i.afq, %i.abs                 ; 8 uses
  %i.afs = sext i32 %i.afr to i64
  %i.aft = getelementptr inbounds i8, ptr %i.abf, i64 %i.afs
  %i.afu = load i8, ptr %i.aft, align 1, !tbaa !44
  %i.afv = zext i8 %i.afu to i32
  %i.afw = add nuw nsw i32 %i.afo, %i.afv
  %i.afx = sext i32 %i.afr to i64
  %i.afy = getelementptr i8, ptr %i.abf, i64 %i.afx
  %i.afz = getelementptr i8, ptr %i.afy, i64 1
  %i.aga = load i8, ptr %i.afz, align 1, !tbaa !44
  %i.agb = zext i8 %i.aga to i32
  %i.agc = add nuw nsw i32 %i.afw, %i.agb
  %i.agd = add i32 %i.afr, 2
  %i.age = sext i32 %i.agd to i64
  %i.agf = getelementptr inbounds i8, ptr %i.abf, i64 %i.age
  %i.agg = load i8, ptr %i.agf, align 1, !tbaa !44
  %i.agh = zext i8 %i.agg to i32
  %i.agi = add nuw nsw i32 %i.agc, %i.agh
  %i.agj = add i32 %i.afr, 3
  %i.agk = sext i32 %i.agj to i64
  %i.agl = getelementptr inbounds i8, ptr %i.abf, i64 %i.agk
  %i.agm = load i8, ptr %i.agl, align 1, !tbaa !44
  %i.agn = zext i8 %i.agm to i32
  %i.ago = add nuw nsw i32 %i.agi, %i.agn
  %i.agp = add i32 %i.afr, 4
  %i.agq = sext i32 %i.agp to i64
  %i.agr = getelementptr inbounds i8, ptr %i.abf, i64 %i.agq
  %i.ags = load i8, ptr %i.agr, align 1, !tbaa !44
  %i.agt = zext i8 %i.ags to i32
  %i.agu = add nuw nsw i32 %i.ago, %i.agt
  %i.agv = add i32 %i.afr, 5
  %i.agw = sext i32 %i.agv to i64
  %i.agx = getelementptr inbounds i8, ptr %i.abf, i64 %i.agw
  %i.agy = load i8, ptr %i.agx, align 1, !tbaa !44
  %i.agz = zext i8 %i.agy to i32
  %i.aha = add nuw nsw i32 %i.agu, %i.agz
  %i.ahb = add i32 %i.afr, 6
  %i.ahc = sext i32 %i.ahb to i64
  %i.ahd = getelementptr inbounds i8, ptr %i.abf, i64 %i.ahc
  %i.ahe = load i8, ptr %i.ahd, align 1, !tbaa !44
  %i.ahf = zext i8 %i.ahe to i32
  %i.ahg = add nuw nsw i32 %i.aha, %i.ahf
  %i.ahh = add i32 %i.afr, 7
  %i.ahi = sext i32 %i.ahh to i64
  %i.ahj = getelementptr inbounds i8, ptr %i.abf, i64 %i.ahi
  %i.ahk = load i8, ptr %i.ahj, align 1, !tbaa !44
  %i.ahl = zext i8 %i.ahk to i32
  %i.ahm = add nuw nsw i32 %i.ahg, %i.ahl
  %i.ahn = or disjoint i32 %i.abu, 3
  %i.aho = mul i32 %i.ahn, %i.abe
  %i.ahp = add i32 %i.aho, %i.abs                 ; 8 uses
  %i.ahq = sext i32 %i.ahp to i64
  %i.ahr = getelementptr inbounds i8, ptr %i.abf, i64 %i.ahq
  %i.ahs = load i8, ptr %i.ahr, align 1, !tbaa !44
  %i.aht = zext i8 %i.ahs to i32
  %i.ahu = add nuw nsw i32 %i.ahm, %i.aht
  %i.ahv = add i32 %i.ahp, 1
  %i.ahw = sext i32 %i.ahv to i64
  %i.ahx = getelementptr inbounds i8, ptr %i.abf, i64 %i.ahw
  %i.ahy = load i8, ptr %i.ahx, align 1, !tbaa !44
  %i.ahz = zext i8 %i.ahy to i32
  %i.aia = add nuw nsw i32 %i.ahu, %i.ahz
  %i.aib = add i32 %i.ahp, 2
  %i.aic = sext i32 %i.aib to i64
  %i.aid = getelementptr inbounds i8, ptr %i.abf, i64 %i.aic
  %i.aie = load i8, ptr %i.aid, align 1, !tbaa !44
  %i.aif = zext i8 %i.aie to i32
  %i.aig = add nuw nsw i32 %i.aia, %i.aif
  %i.aih = add i32 %i.ahp, 3
  %i.aii = sext i32 %i.aih to i64
  %i.aij = getelementptr inbounds i8, ptr %i.abf, i64 %i.aii
  %i.aik = load i8, ptr %i.aij, align 1, !tbaa !44
  %i.ail = zext i8 %i.aik to i32
  %i.aim = add nuw nsw i32 %i.aig, %i.ail
  %i.ain = add i32 %i.ahp, 4
  %i.aio = sext i32 %i.ain to i64
  %i.aip = getelementptr inbounds i8, ptr %i.abf, i64 %i.aio
  %i.aiq = load i8, ptr %i.aip, align 1, !tbaa !44
  %i.air = zext i8 %i.aiq to i32
  %i.ais = add nuw nsw i32 %i.aim, %i.air
  %i.ait = add i32 %i.ahp, 5
  %i.aiu = sext i32 %i.ait to i64
  %i.aiv = getelementptr inbounds i8, ptr %i.abf, i64 %i.aiu
  %i.aiw = load i8, ptr %i.aiv, align 1, !tbaa !44
  %i.aix = zext i8 %i.aiw to i32
  %i.aiy = add nuw nsw i32 %i.ais, %i.aix
  %i.aiz = add i32 %i.ahp, 6
  %i.aja = sext i32 %i.aiz to i64
  %i.ajb = getelementptr inbounds i8, ptr %i.abf, i64 %i.aja
end_hunk_1
begin_hunk_2_@ff_er_frame_end:bb.a
  %i.akd = zext i8 %i.akc to i32
  %i.ake = add nuw nsw i32 %i.ajy, %i.akd
  %i.akf = sext i32 %i.ajn to i64
  %i.akg = getelementptr i8, ptr %i.abf, i64 %i.akf
  %i.akh = getelementptr i8, ptr %i.akg, i64 3
  %i.aki = load i8, ptr %i.akh, align 1, !tbaa !44
  %i.akj = zext i8 %i.aki to i32
  %i.akk = add nuw nsw i32 %i.ake, %i.akj
  %i.akl = add i32 %i.ajn, 4
  %i.akm = sext i32 %i.akl to i64
  %i.akn = getelementptr inbounds i8, ptr %i.abf, i64 %i.akm
  %i.ako = load i8, ptr %i.akn, align 1, !tbaa !44
  %i.akp = zext i8 %i.ako to i32
  %i.akq = add nuw nsw i32 %i.akk, %i.akp
  %i.akr = add i32 %i.ajn, 5
  %i.aks = sext i32 %i.akr to i64
  %i.akt = getelementptr inbounds i8, ptr %i.abf, i64 %i.aks
  %i.aku = load i8, ptr %i.akt, align 1, !tbaa !44
  %i.akv = zext i8 %i.aku to i32
  %i.akw = add nuw nsw i32 %i.akq, %i.akv
  %i.akx = add i32 %i.ajn, 6
  %i.aky = sext i32 %i.akx to i64
  %i.akz = getelementptr inbounds i8, ptr %i.abf, i64 %i.aky
  %i.ala = load i8, ptr %i.akz, align 1, !tbaa !44
  %i.alb = zext i8 %i.ala to i32
  %i.alc = add nuw nsw i32 %i.akw, %i.alb
  %i.ald = add i32 %i.ajn, 7
  %i.ale = sext i32 %i.ald to i64
  %i.alf = getelementptr inbounds i8, ptr %i.abf, i64 %i.ale
  %i.alg = load i8, ptr %i.alf, align 1, !tbaa !44
  %i.alh = zext i8 %i.alg to i32
  %i.ali = add nuw nsw i32 %i.alc, %i.alh
  %i.alj = or disjoint i32 %i.abu, 5
  %i.alk = mul i32 %i.alj, %i.abe
  %i.all = add i32 %i.alk, %i.abs                 ; 8 uses
  %i.alm = sext i32 %i.all to i64
  %i.aln = getelementptr inbounds i8, ptr %i.abf, i64 %i.alm
  %i.alo = load i8, ptr %i.aln, align 1, !tbaa !44
  %i.alp = zext i8 %i.alo to i32
  %i.alq = add nuw nsw i32 %i.ali, %i.alp
  %i.alr = add i32 %i.all, 1
  %i.als = sext i32 %i.alr to i64
  %i.alt = getelementptr inbounds i8, ptr %i.abf, i64 %i.als
  %i.alu = load i8, ptr %i.alt, align 1, !tbaa !44
  %i.alv = zext i8 %i.alu to i32
  %i.alw = add nuw nsw i32 %i.alq, %i.alv
  %i.alx = add i32 %i.all, 2
  %i.aly = sext i32 %i.alx to i64
  %i.alz = getelementptr inbounds i8, ptr %i.abf, i64 %i.aly
  %i.ama = load i8, ptr %i.alz, align 1, !tbaa !44
  %i.amb = zext i8 %i.ama to i32
  %i.amc = add nuw nsw i32 %i.alw, %i.amb
  %i.amd = add i32 %i.all, 3
  %i.ame = sext i32 %i.amd to i64
  %i.amf = getelementptr inbounds i8, ptr %i.abf, i64 %i.ame
  %i.amg = load i8, ptr %i.amf, align 1, !tbaa !44
  %i.amh = zext i8 %i.amg to i32
  %i.ami = add nuw nsw i32 %i.amc, %i.amh
  %i.amj = add i32 %i.all, 4
  %i.amk = sext i32 %i.amj to i64
  %i.aml = getelementptr inbounds i8, ptr %i.abf, i64 %i.amk
  %i.amm = load i8, ptr %i.aml, align 1, !tbaa !44
  %i.amn = zext i8 %i.amm to i32
  %i.amo = add nuw nsw i32 %i.ami, %i.amn
  %i.amp = add i32 %i.all, 5
  %i.amq = sext i32 %i.amp to i64
  %i.amr = getelementptr inbounds i8, ptr %i.abf, i64 %i.amq
  %i.ams = load i8, ptr %i.amr, align 1, !tbaa !44
  %i.amt = zext i8 %i.ams to i32
  %i.amu = add nuw nsw i32 %i.amo, %i.amt
  %i.amv = add i32 %i.all, 6
  %i.amw = sext i32 %i.amv to i64
  %i.amx = getelementptr inbounds i8, ptr %i.abf, i64 %i.amw
  %i.amy = load i8, ptr %i.amx, align 1, !tbaa !44
  %i.amz = zext i8 %i.amy to i32
  %i.ana = add nuw nsw i32 %i.amu, %i.amz
  %i.anb = add i32 %i.all, 7
  %i.anc = sext i32 %i.anb to i64
  %i.and = getelementptr inbounds i8, ptr %i.abf, i64 %i.anc
  %i.ane = load i8, ptr %i.and, align 1, !tbaa !44
  %i.anf = zext i8 %i.ane to i32
  %i.ang = add nuw nsw i32 %i.ana, %i.anf
  %i.anh = or disjoint i32 %i.abu, 6
  %i.ani = mul i32 %i.anh, %i.abe
  %i.anj = add i32 %i.ani, %i.abs                 ; 8 uses
  %i.ank = sext i32 %i.anj to i64
  %i.anl = getelementptr inbounds i8, ptr %i.abf, i64 %i.ank
  %i.anm = load i8, ptr %i.anl, align 1, !tbaa !44
  %i.ann = zext i8 %i.anm to i32
  %i.ano = add nuw nsw i32 %i.ang, %i.ann
  %i.anp = sext i32 %i.anj to i64
  %i.anq = getelementptr i8, ptr %i.abf, i64 %i.anp
  %i.anr = getelementptr i8, ptr %i.anq, i64 1
  %i.ans = load i8, ptr %i.anr, align 1, !tbaa !44
  %i.ant = zext i8 %i.ans to i32
  %i.anu = add nuw nsw i32 %i.ano, %i.ant
  %i.anv = add i32 %i.anj, 2
  %i.anw = sext i32 %i.anv to i64
  %i.anx = getelementptr inbounds i8, ptr %i.abf, i64 %i.anw
  %i.any = load i8, ptr %i.anx, align 1, !tbaa !44
  %i.anz = zext i8 %i.any to i32
  %i.aoa = add nuw nsw i32 %i.anu, %i.anz
  %i.aob = add i32 %i.anj, 3
  %i.aoc = sext i32 %i.aob to i64
  %i.aod = getelementptr inbounds i8, ptr %i.abf, i64 %i.aoc
  %i.aoe = load i8, ptr %i.aod, align 1, !tbaa !44
  %i.aof = zext i8 %i.aoe to i32
  %i.aog = add nuw nsw i32 %i.aoa, %i.aof
  %i.aoh = add i32 %i.anj, 4
  %i.aoi = sext i32 %i.aoh to i64
  %i.aoj = getelementptr inbounds i8, ptr %i.abf, i64 %i.aoi
  %i.aok = load i8, ptr %i.aoj, align 1, !tbaa !44
  %i.aol = zext i8 %i.aok to i32
  %i.aom = add nuw nsw i32 %i.aog, %i.aol
  %i.aon = add i32 %i.anj, 5
  %i.aoo = sext i32 %i.aon to i64
  %i.aop = getelementptr inbounds i8, ptr %i.abf, i64 %i.aoo
  %i.aoq = load i8, ptr %i.aop, align 1, !tbaa !44
  %i.aor = zext i8 %i.aoq to i32
  %i.aos = add nuw nsw i32 %i.aom, %i.aor
  %i.aot = add i32 %i.anj, 6
  %i.aou = sext i32 %i.aot to i64
  %i.aov = getelementptr inbounds i8, ptr %i.abf, i64 %i.aou
  %i.aow = load i8, ptr %i.aov, align 1, !tbaa !44
  %i.aox = zext i8 %i.aow to i32
  %i.aoy = add nuw nsw i32 %i.aos, %i.aox
  %i.aoz = add i32 %i.anj, 7
  %i.apa = sext i32 %i.aoz to i64
  %i.apb = getelementptr inbounds i8, ptr %i.abf, i64 %i.apa
  %i.apc = load i8, ptr %i.apb, align 1, !tbaa !44
  %i.apd = zext i8 %i.apc to i32
  %i.ape = add nuw nsw i32 %i.aoy, %i.apd
  %i.apf = or disjoint i32 %i.abu, 7
  %i.apg = mul i32 %i.apf, %i.abe
  %i.aph = add i32 %i.apg, %i.abs                 ; 8 uses
  %i.api = sext i32 %i.aph to i64
  %i.apj = getelementptr inbounds i8, ptr %i.abf, i64 %i.api
  %i.apk = load i8, ptr %i.apj, align 1, !tbaa !44
  %i.apl = zext i8 %i.apk to i32
  %i.apm = add nuw nsw i32 %i.ape, %i.apl
  %i.apn = add i32 %i.aph, 1
  %i.apo = sext i32 %i.apn to i64
  %i.app = getelementptr inbounds i8, ptr %i.abf, i64 %i.apo
  %i.apq = load i8, ptr %i.app, align 1, !tbaa !44
  %i.apr = zext i8 %i.apq to i32
  %i.aps = add nuw nsw i32 %i.apm, %i.apr
  %i.apt = add i32 %i.aph, 2
  %i.apu = sext i32 %i.apt to i64
  %i.apv = getelementptr inbounds i8, ptr %i.abf, i64 %i.apu
  %i.apw = load i8, ptr %i.apv, align 1, !tbaa !44
  %i.apx = zext i8 %i.apw to i32
  %i.apy = add nuw nsw i32 %i.aps, %i.apx
  %i.apz = add i32 %i.aph, 3
  %i.aqa = sext i32 %i.apz to i64
  %i.aqb = getelementptr inbounds i8, ptr %i.abf, i64 %i.aqa
  %i.aqc = load i8, ptr %i.aqb, align 1, !tbaa !44
  %i.aqd = zext i8 %i.aqc to i32
  %i.aqe = add nuw nsw i32 %i.apy, %i.aqd
  %i.aqf = add i32 %i.aph, 4
  %i.aqg = sext i32 %i.aqf to i64
  %i.aqh = getelementptr inbounds i8, ptr %i.abf, i64 %i.aqg
  %i.aqi = load i8, ptr %i.aqh, align 1, !tbaa !44
  %i.aqj = zext i8 %i.aqi to i32
  %i.aqk = add nuw nsw i32 %i.aqe, %i.aqj
  %i.aql = add i32 %i.aph, 5
  %i.aqm = sext i32 %i.aql to i64
  %i.aqn = getelementptr inbounds i8, ptr %i.abf, i64 %i.aqm
  %i.aqo = load i8, ptr %i.aqn, align 1, !tbaa !44
  %i.aqp = zext i8 %i.aqo to i32
  %i.aqq = add nuw nsw i32 %i.aqk, %i.aqp
  %i.aqr = add i32 %i.aph, 6
  %i.aqs = sext i32 %i.aqr to i64
  %i.aqt = getelementptr inbounds i8, ptr %i.abf, i64 %i.aqs
  %i.aqu = load i8, ptr %i.aqt, align 1, !tbaa !44
  %i.aqv = zext i8 %i.aqu to i32
  %i.aqw = add nuw nsw i32 %i.aqq, %i.aqv
  %i.aqx = add i32 %i.aph, 7
  %i.aqy = sext i32 %i.aqx to i64
  %i.aqz = getelementptr inbounds i8, ptr %i.abf, i64 %i.aqy
  %i.ara = load i8, ptr %i.aqz, align 1, !tbaa !44
  %i.arb = zext i8 %i.ara to i32
  %i.arc = add nuw nsw i32 %i.aqw, %i.arb
  %i.ard = add nuw nsw i32 %i.arc, 4
  %i.are = lshr i32 %i.ard, 3
  %i.arf = trunc nuw nsw i32 %i.are to i16
  %i.arg = and i32 %.0559863, 1
  %i.arh = zext nneg i32 %i.arg to i64
  %i.ari = lshr i32 %.0559863, 1
  %i.arj = zext nneg i32 %i.ari to i64
  %i.ark = mul nuw nsw i64 %i.abn, %i.arj
  %i.arl = getelementptr [2 x i8], ptr %i.abq, i64 %i.ark
  %i.arm = getelementptr [2 x i8], ptr %i.arl, i64 %i.arh
  store i16 %i.arf, ptr %i.arm, align 2, !tbaa !99
  %i.arn = add nuw nsw i32 %.0559863, 1           ; 2 uses
  %exitcond953.not = icmp eq i32 %i.arn, 4
  br i1 %exitcond953.not, label %bb.dk, label %.preheader770, !llvm.loop !109

bb.dk:                                            ; preds = %.preheader770
  %i.aro = shl nuw nsw i64 %indvars.iv962, 3      ; 2 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %i.abh, i64 %i.aro
  %7 = sext i32 %i.abi to i64                     ; 8 uses
  %8 = mul nsw i64 %2, %7
  %i.arq = getelementptr inbounds i8, ptr %i.arp, i64 %8 ; 8 uses
  %i.arr = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.aro
  %9 = sext i32 %i.abl to i64                     ; 8 uses
  %10 = mul nsw i64 %2, %9
  %i.ars = getelementptr inbounds i8, ptr %i.arr, i64 %10 ; 8 uses
  %.not669 = icmp eq ptr %i.abk, null
  br i1 %.not669, label %bb.dl, label %.preheader769

.preheader769:                                    ; preds = %bb.dk
  %i.art = load <8 x i8>, ptr %i.arq, align 1, !tbaa !44
  %i.aru = zext <8 x i8> %i.art to <8 x i32>
  %i.arv = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.aru)
  %i.arw = load <8 x i8>, ptr %i.ars, align 1, !tbaa !44
  %i.arx = zext <8 x i8> %i.arw to <8 x i32>
  %i.ary = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.arx)
  %i.arz = getelementptr inbounds i8, ptr %i.arq, i64 %7
  %i.asa = getelementptr inbounds i8, ptr %i.ars, i64 %9
  %i.asb = load <8 x i8>, ptr %i.arz, align 1, !tbaa !44
  %i.asc = zext <8 x i8> %i.asb to <8 x i32>
  %i.asd = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.asc)
  %op.rdx1137.1 = add nuw nsw i32 %i.asd, %i.arv
  %i.ase = load <8 x i8>, ptr %i.asa, align 1, !tbaa !44
  %i.asf = zext <8 x i8> %i.ase to <8 x i32>
  %i.asg = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.asf)
  %op.rdx.1 = add nuw nsw i32 %i.asg, %i.ary
  %i.ash = shl nsw i64 %7, 1
  %i.asi = shl nsw i64 %9, 1
  %i.asj = getelementptr inbounds i8, ptr %i.arq, i64 %i.ash
  %i.ask = getelementptr inbounds i8, ptr %i.ars, i64 %i.asi
  %i.asl = load <8 x i8>, ptr %i.asj, align 1, !tbaa !44
  %i.asm = zext <8 x i8> %i.asl to <8 x i32>
  %i.asn = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.asm)
  %op.rdx1137.2 = add nuw nsw i32 %i.asn, %op.rdx1137.1
  %i.aso = load <8 x i8>, ptr %i.ask, align 1, !tbaa !44
  %i.asp = zext <8 x i8> %i.aso to <8 x i32>
  %i.asq = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.asp)
  %op.rdx.2 = add nuw nsw i32 %i.asq, %op.rdx.1
  %i.asr = mul nsw i64 %7, 3
  %i.ass = mul nsw i64 %9, 3
  %i.ast = getelementptr inbounds i8, ptr %i.arq, i64 %i.asr
  %i.asu = getelementptr inbounds i8, ptr %i.ars, i64 %i.ass
  %i.asv = load <8 x i8>, ptr %i.ast, align 1, !tbaa !44
  %i.asw = zext <8 x i8> %i.asv to <8 x i32>
  %i.asx = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.asw)
  %op.rdx1137.3 = add nuw nsw i32 %i.asx, %op.rdx1137.2
  %i.asy = load <8 x i8>, ptr %i.asu, align 1, !tbaa !44
  %i.asz = zext <8 x i8> %i.asy to <8 x i32>
  %i.ata = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.asz)
  %op.rdx.3 = add nuw nsw i32 %i.ata, %op.rdx.2
  %i.atb = shl nsw i64 %7, 2
  %i.atc = shl nsw i64 %9, 2
  %i.atd = getelementptr inbounds i8, ptr %i.arq, i64 %i.atb
  %i.ate = getelementptr inbounds i8, ptr %i.ars, i64 %i.atc
  %i.atf = load <8 x i8>, ptr %i.atd, align 1, !tbaa !44
  %i.atg = zext <8 x i8> %i.atf to <8 x i32>
  %i.ath = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.atg)
  %op.rdx1137.4 = add nuw nsw i32 %i.ath, %op.rdx1137.3
  %i.ati = load <8 x i8>, ptr %i.ate, align 1, !tbaa !44
  %i.atj = zext <8 x i8> %i.ati to <8 x i32>
  %i.atk = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.atj)
  %op.rdx.4 = add nuw nsw i32 %i.atk, %op.rdx.3
  %i.atl = mul nsw i64 %7, 5
  %i.atm = mul nsw i64 %9, 5
  %i.atn = getelementptr inbounds i8, ptr %i.arq, i64 %i.atl
  %i.ato = getelementptr inbounds i8, ptr %i.ars, i64 %i.atm
  %i.atp = load <8 x i8>, ptr %i.atn, align 1, !tbaa !44
  %i.atq = zext <8 x i8> %i.atp to <8 x i32>
  %i.atr = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.atq)
  %op.rdx1137.5 = add nuw nsw i32 %i.atr, %op.rdx1137.4
  %i.ats = load <8 x i8>, ptr %i.ato, align 1, !tbaa !44
  %i.att = zext <8 x i8> %i.ats to <8 x i32>
  %i.atu = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.att)
  %op.rdx.5 = add nuw nsw i32 %i.atu, %op.rdx.4
  %i.atv = mul nsw i64 %7, 6
  %i.atw = mul nsw i64 %9, 6
  %i.atx = getelementptr inbounds i8, ptr %i.arq, i64 %i.atv
  %i.aty = getelementptr inbounds i8, ptr %i.ars, i64 %i.atw
  %i.atz = load <8 x i8>, ptr %i.atx, align 1, !tbaa !44
  %i.aua = zext <8 x i8> %i.atz to <8 x i32>
  %i.aub = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.aua)
  %op.rdx1137.6 = add i32 %i.aub, %op.rdx1137.5
  %i.auc = load <8 x i8>, ptr %i.aty, align 1, !tbaa !44
  %i.aud = zext <8 x i8> %i.auc to <8 x i32>
  %i.aue = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.aud)
  %op.rdx.6 = add i32 %i.aue, %op.rdx.5
  %i.auf = mul nsw i64 %7, 7
  %i.aug = mul nsw i64 %9, 7
  %i.auh = getelementptr inbounds i8, ptr %i.arq, i64 %i.auf
  %i.aui = getelementptr inbounds i8, ptr %i.ars, i64 %i.aug
  %i.auj = load <8 x i8>, ptr %i.auh, align 1, !tbaa !44
  %i.auk = zext <8 x i8> %i.auj to <8 x i32>
  %i.aul = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.auk)
  %op.rdx1137.7 = add i32 %i.aul, %op.rdx1137.6
  %i.aum = load <8 x i8>, ptr %i.aui, align 1, !tbaa !44
  %i.aun = zext <8 x i8> %i.aum to <8 x i32>
  %i.auo = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.aun)
  %op.rdx.7 = add i32 %i.auo, %op.rdx.6
  %i.aup = add nsw i32 %op.rdx1137.7, 4
  %i.auq = lshr i32 %i.aup, 3
  %i.aur = trunc i32 %i.auq to i16
  %i.aus = load ptr, ptr %i.aam, align 8, !tbaa !73
  %i.aut = getelementptr [2 x i8], ptr %i.aus, i64 %4
  %i.auu = getelementptr [2 x i8], ptr %i.aut, i64 %indvars.iv962
  store i16 %i.aur, ptr %i.auu, align 2, !tbaa !99
  %i.auv = add nsw i32 %op.rdx.7, 4
  %i.auw = lshr i32 %i.auv, 3
  %i.aux = trunc i32 %i.auw to i16
  %i.auy = load ptr, ptr %i.aan, align 8, !tbaa !73
  %i.auz = getelementptr [2 x i8], ptr %i.auy, i64 %4
  %i.ava = getelementptr [2 x i8], ptr %i.auz, i64 %indvars.iv962
  store i16 %i.aux, ptr %i.ava, align 2, !tbaa !99
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.di, %.preheader769
  %indvars.iv.next963 = add nuw nsw i64 %indvars.iv962, 1 ; 2 uses
  %exitcond966.not = icmp eq i64 %indvars.iv.next963, %wide.trip.count965
  br i1 %exitcond966.not, label %._crit_edge872, label %bb.dh, !llvm.loop !110

._crit_edge872:                                   ; preds = %bb.dl
  %indvars.iv.next968 = add nuw nsw i64 %indvars.iv967, 1 ; 2 uses
  %exitcond971.not = icmp eq i64 %indvars.iv.next968, %wide.trip.count970
  br i1 %exitcond971.not, label %._crit_edge874.split.loopexit, label %.preheader772, !llvm.loop !111

._crit_edge874.split.loopexit:                    ; preds = %._crit_edge872
  %.pre1002 = load i32, ptr %i.v, align 4, !tbaa !46
  br label %._crit_edge874.split

._crit_edge874.split:                             ; preds = %.preheader774, %._crit_edge874.split.loopexit, %.preheader772.lr.ph, %.loopexit
  %i.avb = phi i32 [ %i.aag, %._crit_edge874.split.loopexit ], [ %i.aag, %.preheader772.lr.ph ], [ %i.aag, %.loopexit ], [ %i.xe, %.preheader774 ]
  %i.avc = phi i32 [ %.pre1002, %._crit_edge874.split.loopexit ], [ %.pre1003, %.preheader772.lr.ph ], [ %.pre1003, %.loopexit ], [ %.pre1003.pre1008, %.preheader774 ]
  %i.avd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ave = load ptr, ptr %i.avd, align 8, !tbaa !73
  %i.avf = shl nsw i32 %i.avc, 1
  %i.avg = shl nsw i32 %i.avb, 1
  %i.avh = load i64, ptr %i.a, align 8, !tbaa !58
  tail call fastcc void @guess_dc(ptr noundef nonnull %0, ptr noundef %i.ave, i32 noundef %i.avf, i32 noundef %i.avg, i64 noundef %i.avh, i32 noundef 1)
  %i.avi = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.avj = load ptr, ptr %i.avi, align 8, !tbaa !73
  %i.avk = load i32, ptr %i.v, align 4, !tbaa !46
  %i.avl = load i32, ptr %i.c, align 8, !tbaa !9
  %i.avm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.avn = load i64, ptr %i.avm, align 8, !tbaa !21
  tail call fastcc void @guess_dc(ptr noundef nonnull %0, ptr noundef %i.avj, i32 noundef %i.avk, i32 noundef %i.avl, i64 noundef %i.avn, i32 noundef 0)
  %i.avo = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.avp = load ptr, ptr %i.avo, align 8, !tbaa !73
  %i.avq = load i32, ptr %i.v, align 4, !tbaa !46
  %i.avr = load i32, ptr %i.c, align 8, !tbaa !9
  %i.avs = load i64, ptr %i.avm, align 8, !tbaa !21
  tail call fastcc void @guess_dc(ptr noundef nonnull %0, ptr noundef %i.avp, i32 noundef %i.avq, i32 noundef %i.avr, i64 noundef %i.avs, i32 noundef 0)
  %i.avt = load ptr, ptr %i.avd, align 8, !tbaa !73 ; 2 uses
  %i.avu = load i32, ptr %i.c, align 8, !tbaa !9  ; 5 uses
  %i.avv = shl i32 %i.avu, 1                      ; 2 uses
  %i.avw = load i64, ptr %i.a, align 8, !tbaa !58 ; 4 uses
  %i.avx = add nsw i32 %i.avv, -1
  %i.avy = icmp sgt i32 %i.avu, 1
  br i1 %i.avy, label %.lr.ph68.i, label %filter181.exit

.lr.ph68.i:                                       ; preds = %._crit_edge874.split
  %i.avz = load i32, ptr %i.v, align 4, !tbaa !46 ; 2 uses
  %i.awa = icmp sgt i32 %i.avz, 1
  br i1 %i.awa, label %.lr.ph.preheader.i, label %.preheader.lr.ph

.lr.ph.preheader.i:                               ; preds = %.lr.ph68.i
  %i.awb = shl nuw nsw i32 %i.avz, 1              ; 2 uses
  %i.awc = add nsw i32 %i.awb, -1
  %wide.trip.count83.i = zext nneg i32 %i.avx to i64 ; 2 uses
  %wide.trip.count.i733 = zext nneg i32 %i.awc to i64 ; 2 uses
  %i.awd = add nsw i32 %i.awb, -2                 ; 2 uses
  %i.awe = zext i32 %i.awd to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %i.awd, 8
  %n.vec = and i64 %i.awe, 4294967288             ; 3 uses
  %i.awf = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.awe
  br label %.lr.ph.i734

.lr.ph.i734:                                      ; preds = %._crit_edge.i739, %.lr.ph.preheader.i
  %indvars.iv80.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next81.i, %._crit_edge.i739 ] ; 2 uses
  %i.awg = mul nsw i64 %indvars.iv80.i, %i.avw
  %i.awh = getelementptr inbounds [2 x i8], ptr %i.avt, i64 %i.awg ; 6 uses
  %i.awi = load i16, ptr %i.awh, align 2, !tbaa !99
  %i.awj = sext i16 %i.awi to i32                 ; 2 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %i.awh, i64 2
  %.pre.i735 = load i16, ptr %.phi.trans.insert.i, align 2, !tbaa !99 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i734
  %vector.recur.init = insertelement <8 x i16> poison, i16 %.pre.i735, i64 7
  %vector.recur.init1116 = insertelement <8 x i32> poison, i32 %i.awj, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <8 x i16> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %vector.recur1117 = phi <8 x i32> [ %vector.recur.init1116, %vector.ph ], [ %i.awp, %vector.body ]
  %i.awk = getelementptr [2 x i8], ptr %i.awh, i64 %index
  %i.awl = getelementptr i8, ptr %i.awk, i64 2
  %i.awm = getelementptr [2 x i8], ptr %i.awh, i64 %index
  %i.awn = getelementptr i8, ptr %i.awm, i64 4
  %wide.load = load <8 x i16>, ptr %i.awn, align 2, !tbaa !99 ; 4 uses
  %i.awo = shufflevector <8 x i16> %vector.recur, <8 x i16> %wide.load, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.awp = sext <8 x i16> %i.awo to <8 x i32>     ; 4 uses
  %i.awq = shufflevector <8 x i32> %vector.recur1117, <8 x i32> %i.awp, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.awr = shl nsw <8 x i32> %i.awp, splat (i32 3)
  %i.aws = sext <8 x i16> %wide.load to <8 x i32>
  %i.awt = add nsw <8 x i32> %i.awq, %i.aws
  %i.awu = sub nsw <8 x i32> %i.awr, %i.awt
  %i.awv = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.awu, <8 x i32> splat (i32 -196602))
  %i.aww = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.awv, <8 x i32> splat (i32 163834))
  %i.awx = mul nsw <8 x i32> %i.aww, splat (i32 10923)
  %i.awy = add nsw <8 x i32> %i.awx, splat (i32 32768)
  %i.awz = lshr <8 x i32> %i.awy, splat (i32 16)
  %i.axa = trunc nuw <8 x i32> %i.awz to <8 x i16>
  store <8 x i16> %i.axa, ptr %i.awl, align 2, !tbaa !99
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.axb = icmp eq i64 %index.next, %n.vec
  br i1 %i.axb, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <8 x i16> %wide.load, i64 7
  %vector.recur.extract1118 = extractelement <8 x i32> %i.awp, i64 7
  br i1 %cmp.n, label %._crit_edge.i739, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i734, %middle.block
  %.ph = phi i16 [ %.pre.i735, %.lr.ph.i734 ], [ %vector.recur.extract, %middle.block ]
  %indvars.iv.i736.ph = phi i64 [ 1, %.lr.ph.i734 ], [ %i.awf, %middle.block ]
  %.05764.i.ph = phi i32 [ %i.awj, %.lr.ph.i734 ], [ %vector.recur.extract1118, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.axc = phi i16 [ %i.axh, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %indvars.iv.i736 = phi i64 [ %indvars.iv.next.i737, %scalar.ph ], [ %indvars.iv.i736.ph, %scalar.ph.preheader ] ; 2 uses
  %.05764.i = phi i32 [ %i.axe, %scalar.ph ], [ %.05764.i.ph, %scalar.ph.preheader ]
  %i.axd = getelementptr [2 x i8], ptr %i.awh, i64 %indvars.iv.i736
  %i.axe = sext i16 %i.axc to i32                 ; 2 uses
  %i.axf = shl nsw i32 %i.axe, 3
  %indvars.iv.next.i737 = add nuw nsw i64 %indvars.iv.i736, 1 ; 3 uses
  %i.axg = getelementptr [2 x i8], ptr %i.awh, i64 %indvars.iv.next.i737
  %i.axh = load i16, ptr %i.axg, align 2, !tbaa !99 ; 2 uses
  %i.axi = sext i16 %i.axh to i32
  %i.axj = add nsw i32 %.05764.i, %i.axi
  %i.axk = sub nsw i32 %i.axf, %i.axj
  %i.axl = tail call i32 @llvm.smax.i32(i32 %i.axk, i32 -196602)
  %.0.i60.i = tail call i32 @llvm.smin.i32(i32 %i.axl, i32 163834)
  %i.axm = mul nsw i32 %.0.i60.i, 10923
  %i.axn = add nsw i32 %i.axm, 32768
  %i.axo = lshr i32 %i.axn, 16
  %i.axp = trunc nuw i32 %i.axo to i16
  store i16 %i.axp, ptr %i.axd, align 2, !tbaa !99
  %exitcond.not.i738 = icmp eq i64 %indvars.iv.next.i737, %wide.trip.count.i733
  br i1 %exitcond.not.i738, label %._crit_edge.i739, label %scalar.ph, !llvm.loop !115

._crit_edge.i739:                                 ; preds = %scalar.ph, %middle.block
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1 ; 2 uses
  %exitcond84.not.i = icmp eq i64 %indvars.iv.next81.i, %wide.trip.count83.i
  br i1 %exitcond84.not.i, label %.lr.ph74.i.preheader, label %.lr.ph.i734, !llvm.loop !116

.lr.ph74.i.preheader:                             ; preds = %._crit_edge.i739
  %i.axq = add i32 %i.avv, -2                     ; 2 uses
  %i.axr = zext i32 %i.axq to i64                 ; 2 uses
  %min.iters.check1121 = icmp ugt i32 %i.axq, 7
  %ident.check.not = icmp eq i64 %i.avw, 1
  %or.cond1136 = select i1 %min.iters.check1121, i1 %ident.check.not, i1 false
  %n.vec1123 = and i64 %i.axr, 4294967288         ; 3 uses
  %i.axs = or disjoint i64 %n.vec1123, 1
  %cmp.n1133 = icmp eq i64 %n.vec1123, %i.axr
  br label %.lr.ph74.i

.lr.ph74.i:                                       ; preds = %.lr.ph74.i.preheader, %._crit_edge75.i
  %indvars.iv90.i = phi i64 [ %indvars.iv.next91.i, %._crit_edge75.i ], [ 1, %.lr.ph74.i.preheader ] ; 2 uses
  %i.axt = getelementptr [2 x i8], ptr %i.avt, i64 %indvars.iv90.i ; 5 uses
  %i.axu = load i16, ptr %i.axt, align 2, !tbaa !99
  %i.axv = sext i16 %i.axu to i32                 ; 2 uses
  br i1 %or.cond1136, label %vector.ph1122, label %scalar.ph1120.preheader

vector.ph1122:                                    ; preds = %.lr.ph74.i
  %vector.recur.init1126 = insertelement <8 x i32> poison, i32 %i.axv, i64 7
  br label %vector.body1124

vector.body1124:                                  ; preds = %vector.body1124, %vector.ph1122
  %index1125 = phi i64 [ 0, %vector.ph1122 ], [ %index.next1130, %vector.body1124 ] ; 3 uses
  %vector.recur1127 = phi <8 x i32> [ %vector.recur.init1126, %vector.ph1122 ], [ %i.axy, %vector.body1124 ]
  %i.axw = getelementptr [2 x i8], ptr %i.axt, i64 %index1125
  %i.axx = getelementptr i8, ptr %i.axw, i64 2    ; 2 uses
  %wide.load1128 = load <8 x i16>, ptr %i.axx, align 2, !tbaa !99
  %i.axy = sext <8 x i16> %wide.load1128 to <8 x i32> ; 4 uses
  %i.axz = shufflevector <8 x i32> %vector.recur1127, <8 x i32> %i.axy, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.aya = shl nsw <8 x i32> %i.axy, splat (i32 3)
  %i.ayb = getelementptr [2 x i8], ptr %i.axt, i64 %index1125
  %i.ayc = getelementptr i8, ptr %i.ayb, i64 4
  %wide.load1129 = load <8 x i16>, ptr %i.ayc, align 2, !tbaa !99
  %i.ayd = sext <8 x i16> %wide.load1129 to <8 x i32>
  %i.aye = add nsw <8 x i32> %i.axz, %i.ayd
  %i.ayf = sub nsw <8 x i32> %i.aya, %i.aye
  %i.ayg = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ayf, <8 x i32> splat (i32 -196602))
  %i.ayh = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ayg, <8 x i32> splat (i32 163834))
  %i.ayi = mul nsw <8 x i32> %i.ayh, splat (i32 10923)
  %i.ayj = add nsw <8 x i32> %i.ayi, splat (i32 32768)
  %i.ayk = lshr <8 x i32> %i.ayj, splat (i32 16)
  %i.ayl = trunc nuw <8 x i32> %i.ayk to <8 x i16>
  store <8 x i16> %i.ayl, ptr %i.axx, align 2, !tbaa !99
  %index.next1130 = add nuw i64 %index1125, 8     ; 2 uses
  %i.aym = icmp eq i64 %index.next1130, %n.vec1123
  br i1 %i.aym, label %middle.block1131, label %vector.body1124, !llvm.loop !117

middle.block1131:                                 ; preds = %vector.body1124
  %vector.recur.extract1132 = extractelement <8 x i32> %i.axy, i64 7
  br i1 %cmp.n1133, label %._crit_edge75.i, label %scalar.ph1120.preheader

scalar.ph1120.preheader:                          ; preds = %.lr.ph74.i, %middle.block1131
  %indvars.iv85.i.ph = phi i64 [ 1, %.lr.ph74.i ], [ %i.axs, %middle.block1131 ]
  %.05472.i.ph = phi i32 [ %i.axv, %.lr.ph74.i ], [ %vector.recur.extract1132, %middle.block1131 ]
  br label %scalar.ph1120

scalar.ph1120:                                    ; preds = %scalar.ph1120.preheader, %scalar.ph1120
  %indvars.iv85.i = phi i64 [ %indvars.iv.next86.i, %scalar.ph1120 ], [ %indvars.iv85.i.ph, %scalar.ph1120.preheader ] ; 2 uses
  %.05472.i = phi i32 [ %i.ayp, %scalar.ph1120 ], [ %.05472.i.ph, %scalar.ph1120.preheader ]
  %i.ayn = mul nsw i64 %indvars.iv85.i, %i.avw
  %gep.i = getelementptr [2 x i8], ptr %i.axt, i64 %i.ayn ; 2 uses
  %i.ayo = load i16, ptr %gep.i, align 2, !tbaa !99
  %i.ayp = sext i16 %i.ayo to i32                 ; 2 uses
  %i.ayq = shl nsw i32 %i.ayp, 3
  %indvars.iv.next86.i = add nuw nsw i64 %indvars.iv85.i, 1 ; 3 uses
  %i.ayr = mul nsw i64 %indvars.iv.next86.i, %i.avw
  %gep70.i = getelementptr [2 x i8], ptr %i.axt, i64 %i.ayr
  %i.ays = load i16, ptr %gep70.i, align 2, !tbaa !99
  %i.ayt = sext i16 %i.ays to i32
  %i.ayu = add nsw i32 %.05472.i, %i.ayt
  %i.ayv = sub nsw i32 %i.ayq, %i.ayu
  %i.ayw = tail call i32 @llvm.smax.i32(i32 %i.ayv, i32 -196602)
  %.0.i.i = tail call i32 @llvm.smin.i32(i32 %i.ayw, i32 163834)
  %i.ayx = mul nsw i32 %.0.i.i, 10923
  %i.ayy = add nsw i32 %i.ayx, 32768
  %i.ayz = lshr i32 %i.ayy, 16
  %i.aza = trunc nuw i32 %i.ayz to i16
  store i16 %i.aza, ptr %gep.i, align 2, !tbaa !99
  %exitcond89.not.i = icmp eq i64 %indvars.iv.next86.i, %wide.trip.count83.i
  br i1 %exitcond89.not.i, label %._crit_edge75.i, label %scalar.ph1120, !llvm.loop !118

._crit_edge75.i:                                  ; preds = %scalar.ph1120, %middle.block1131
  %indvars.iv.next91.i = add nuw nsw i64 %indvars.iv90.i, 1 ; 2 uses
  %exitcond94.not.i = icmp eq i64 %indvars.iv.next91.i, %wide.trip.count.i733
  br i1 %exitcond94.not.i, label %filter181.exit, label %.lr.ph74.i, !llvm.loop !119

filter181.exit:                                   ; preds = %._crit_edge75.i, %._crit_edge874.split
  %i.azb = icmp sgt i32 %i.avu, 0
  br i1 %i.azb, label %.preheader.lr.ph, label %._crit_edge880

.preheader.lr.ph:                                 ; preds = %.lr.ph68.i, %filter181.exit
  %i.azc = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.azd = getelementptr inbounds nuw i8, ptr %i.ag, i64 68
  %i.aze = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %.pre1004 = load i32, ptr %i.v, align 4, !tbaa !46
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge878
  %i.azf = phi i32 [ %i.avu, %.preheader.lr.ph ], [ %i.bhb, %._crit_edge878 ]
  %i.azg = phi i32 [ %.pre1004, %.preheader.lr.ph ], [ %i.bhc, %._crit_edge878 ] ; 2 uses
  %indvars.iv975 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next976, %._crit_edge878 ] ; 6 uses
  %i.azh = icmp sgt i32 %i.azg, 0
  br i1 %i.azh, label %.lr.ph877, label %._crit_edge878

.lr.ph877:                                        ; preds = %.preheader
  %i.azi = shl nuw nsw i64 %indvars.iv975, 4
  %11 = shl nuw nsw i64 %indvars.iv975, 3         ; 2 uses
  %12 = shl nuw nsw i64 %indvars.iv975, 1
  br label %bb.dm

bb.dm:                                            ; preds = %.lr.ph877, %put_dc.exit
  %indvars.iv972 = phi i64 [ 0, %.lr.ph877 ], [ %indvars.iv.next973, %put_dc.exit ] ; 6 uses
  %i.azj = load i64, ptr %i.avm, align 8, !tbaa !21
  %i.azk = mul i64 %indvars.iv975, %i.azj
  %i.azl = add i64 %i.azk, %indvars.iv972
  %i.azm = load ptr, ptr %i.azc, align 8, !tbaa !93
  %sext1076 = shl i64 %i.azl, 32
  %i.azn = ashr exact i64 %sext1076, 32           ; 2 uses
  %i.azo = getelementptr inbounds [4 x i8], ptr %i.azm, i64 %i.azn
  %i.azp = load i32, ptr %i.azo, align 4, !tbaa !48
  %i.azq = and i32 %i.azp, 120
  %.not664 = icmp eq i32 %i.azq, 0
  br i1 %.not664, label %bb.dn, label %put_dc.exit

bb.dn:                                            ; preds = %bb.dm
  %i.azr = load ptr, ptr %i.fb, align 8, !tbaa !22
  %i.azs = getelementptr inbounds i8, ptr %i.azr, i64 %i.azn
  %i.azt = load i8, ptr %i.azs, align 1, !tbaa !44
  %i.azu = and i8 %i.azt, 2
  %.not665 = icmp eq i8 %i.azu, 0
  br i1 %.not665, label %put_dc.exit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.azv = load ptr, ptr %i.q, align 8, !tbaa !55 ; 6 uses
  %i.azw = load ptr, ptr %i.azv, align 8, !tbaa !74
  %i.azx = shl nuw nsw i64 %indvars.iv972, 4
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azw, i64 %i.azx
  %i.azz = load i32, ptr %i.ah, align 4, !tbaa !48
  %13 = sext i32 %i.azz to i64
  %14 = mul nsw i64 %i.azi, %13
  %i.baa = getelementptr inbounds i8, ptr %i.azy, i64 %14 ; 8 uses
  %i.bab = getelementptr inbounds nuw i8, ptr %i.azv, i64 8
  %i.bac = load ptr, ptr %i.bab, align 8, !tbaa !74
  %i.bad = load i32, ptr %i.azd, align 4, !tbaa !48
  %i.bae = getelementptr inbounds nuw i8, ptr %i.azv, i64 16
  %i.baf = load ptr, ptr %i.bae, align 8, !tbaa !74 ; 2 uses
  %i.bag = load i32, ptr %i.aze, align 4, !tbaa !48
  %i.bah = getelementptr inbounds nuw i8, ptr %i.azv, i64 64 ; 8 uses
  %indvars.iv972.tr = trunc nuw i64 %indvars.iv972 to i32
  %i.bai = shl nuw i32 %indvars.iv972.tr, 1
  br label %bb.dp

bb.dp:                                            ; preds = %bb.ds, %bb.do
  %.05164.i = phi i32 [ 0, %bb.do ], [ %i.bcy, %bb.ds ] ; 3 uses
  %i.baj = load ptr, ptr %i.avd, align 8, !tbaa !73
  %i.bak = and i32 %.05164.i, 1                   ; 2 uses
  %i.bal = or disjoint i32 %i.bak, %i.bai
  %i.bam = zext nneg i32 %i.bal to i64
  %i.ban = lshr i32 %.05164.i, 1                  ; 2 uses
  %i.bao = zext nneg i32 %i.ban to i64
  %i.bap = add nuw nsw i64 %12, %i.bao
  %i.baq = load i64, ptr %i.a, align 8, !tbaa !58
  %i.bar = mul nsw i64 %i.baq, %i.bap
  %i.bas = getelementptr [2 x i8], ptr %i.baj, i64 %i.bar
  %i.bat = getelementptr [2 x i8], ptr %i.bas, i64 %i.bam
  %i.bau = load i16, ptr %i.bat, align 2, !tbaa !99 ; 2 uses
  %i.bav = icmp slt i16 %i.bau, 0
  br i1 %i.bav, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.baw = tail call i16 @llvm.umin.i16(i16 %i.bau, i16 2040)
  %i.bax = lshr i16 %i.baw, 3
  %i.bay = trunc nuw i16 %i.bax to i8
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.055.i = phi i8 [ %i.bay, %bb.dq ], [ 0, %bb.dp ] ; 8 uses
  %i.baz = shl nuw nsw i32 %i.bak, 3              ; 8 uses
  %i.bba = shl nuw nsw i32 %i.ban, 3
  %i.bbb = or disjoint i32 %i.baz, 1
  %i.bbc = or disjoint i32 %i.baz, 2
  %i.bbd = or disjoint i32 %i.baz, 3
  %i.bbe = or disjoint i32 %i.baz, 4
  %i.bbf = or disjoint i32 %i.baz, 5
  %i.bbg = or disjoint i32 %i.baz, 6
  %i.bbh = or disjoint i32 %i.baz, 7
  br label %.preheader61.i

.preheader61.i:                                   ; preds = %.preheader61.i, %bb.dr
  %.05263.i = phi i32 [ 0, %bb.dr ], [ %i.bcx, %.preheader61.i ] ; 2 uses
  %i.bbi = add nuw nsw i32 %.05263.i, %i.bba      ; 8 uses
  %i.bbj = load i32, ptr %i.bah, align 8, !tbaa !48
  %i.bbk = mul nsw i32 %i.bbj, %i.bbi
  %i.bbl = add nsw i32 %i.bbk, %i.baz
  %i.bbm = sext i32 %i.bbl to i64
  %i.bbn = getelementptr inbounds i8, ptr %i.baa, i64 %i.bbm
  store i8 %.055.i, ptr %i.bbn, align 1, !tbaa !44
  %i.bbo = load i32, ptr %i.bah, align 8, !tbaa !48
  %i.bbp = mul nsw i32 %i.bbo, %i.bbi
  %i.bbq = add nsw i32 %i.bbb, %i.bbp
  %i.bbr = sext i32 %i.bbq to i64
  %i.bbs = getelementptr inbounds i8, ptr %i.baa, i64 %i.bbr
  store i8 %.055.i, ptr %i.bbs, align 1, !tbaa !44
  %i.bbt = load i32, ptr %i.bah, align 8, !tbaa !48
  %i.bbu = mul nsw i32 %i.bbt, %i.bbi
  %i.bbv = add nsw i32 %i.bbc, %i.bbu
  %i.bbw = sext i32 %i.bbv to i64
  %i.bbx = getelementptr inbounds i8, ptr %i.baa, i64 %i.bbw
  store i8 %.055.i, ptr %i.bbx, align 1, !tbaa !44
  %i.bby = load i32, ptr %i.bah, align 8, !tbaa !48
  %i.bbz = mul nsw i32 %i.bby, %i.bbi
  %i.bca = add nsw i32 %i.bbd, %i.bbz
  %i.bcb = sext i32 %i.bca to i64
  %i.bcc = getelementptr inbounds i8, ptr %i.baa, i64 %i.bcb
  store i8 %.055.i, ptr %i.bcc, align 1, !tbaa !44
  %i.bcd = load i32, ptr %i.bah, align 8, !tbaa !48
  %i.bce = mul nsw i32 %i.bcd, %i.bbi
  %i.bcf = add nsw i32 %i.bbe, %i.bce
  %i.bcg = sext i32 %i.bcf to i64
  %i.bch = getelementptr inbounds i8, ptr %i.baa, i64 %i.bcg
  store i8 %.055.i, ptr %i.bch, align 1, !tbaa !44
  %i.bci = load i32, ptr %i.bah, align 8, !tbaa !48
  %i.bcj = mul nsw i32 %i.bci, %i.bbi
  %i.bck = add nsw i32 %i.bbf, %i.bcj
  %i.bcl = sext i32 %i.bck to i64
  %i.bcm = getelementptr inbounds i8, ptr %i.baa, i64 %i.bcl
  store i8 %.055.i, ptr %i.bcm, align 1, !tbaa !44
  %i.bcn = load i32, ptr %i.bah, align 8, !tbaa !48
  %i.bco = mul nsw i32 %i.bcn, %i.bbi
  %i.bcp = add nsw i32 %i.bbg, %i.bco
  %i.bcq = sext i32 %i.bcp to i64
  %i.bcr = getelementptr inbounds i8, ptr %i.baa, i64 %i.bcq
  store i8 %.055.i, ptr %i.bcr, align 1, !tbaa !44
  %i.bcs = load i32, ptr %i.bah, align 8, !tbaa !48
  %i.bct = mul nsw i32 %i.bcs, %i.bbi
  %i.bcu = add nsw i32 %i.bbh, %i.bct
  %i.bcv = sext i32 %i.bcu to i64
  %i.bcw = getelementptr inbounds i8, ptr %i.baa, i64 %i.bcv
  store i8 %.055.i, ptr %i.bcw, align 1, !tbaa !44
  %i.bcx = add nuw nsw i32 %.05263.i, 1           ; 2 uses
  %exitcond.not.i741 = icmp eq i32 %i.bcx, 8
  br i1 %exitcond.not.i741, label %bb.ds, label %.preheader61.i, !llvm.loop !120

bb.ds:                                            ; preds = %.preheader61.i
  %i.bcy = add nuw nsw i32 %.05164.i, 1           ; 2 uses
  %exitcond67.not.i = icmp eq i32 %i.bcy, 4
  br i1 %exitcond67.not.i, label %bb.dt, label %bb.dp, !llvm.loop !121

bb.dt:                                            ; preds = %bb.ds
  %i.bcz = shl nuw nsw i64 %indvars.iv972, 3      ; 2 uses
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bac, i64 %i.bcz
  %15 = sext i32 %i.bad to i64
  %16 = mul nsw i64 %11, %15
  %i.bdb = getelementptr inbounds i8, ptr %i.bda, i64 %16 ; 8 uses
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.baf, i64 %i.bcz
  %17 = sext i32 %i.bag to i64
  %18 = mul nsw i64 %11, %17
  %i.bdd = getelementptr inbounds i8, ptr %i.bdc, i64 %18 ; 8 uses
  %i.bde = load ptr, ptr %i.avi, align 8, !tbaa !73
  %i.bdf = load i64, ptr %i.avm, align 8, !tbaa !21
  %i.bdg = mul nsw i64 %i.bdf, %indvars.iv975
  %i.bdh = add nsw i64 %i.bdg, %indvars.iv972     ; 2 uses
  %i.bdi = getelementptr inbounds [2 x i8], ptr %i.bde, i64 %i.bdh
  %i.bdj = load i16, ptr %i.bdi, align 2, !tbaa !99 ; 2 uses
  %i.bdk = load ptr, ptr %i.avo, align 8, !tbaa !73
  %i.bdl = getelementptr inbounds [2 x i8], ptr %i.bdk, i64 %i.bdh
  %i.bdm = load i16, ptr %i.bdl, align 2, !tbaa !99 ; 2 uses
  %i.bdn = icmp slt i16 %i.bdj, 0
  br i1 %i.bdn, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.bdo = tail call i16 @llvm.umin.i16(i16 %i.bdj, i16 2040)
  %i.bdp = lshr i16 %i.bdo, 3
  %i.bdq = trunc nuw i16 %i.bdp to i8
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.054.i = phi i8 [ %i.bdq, %bb.du ], [ 0, %bb.dt ] ; 8 uses
  %i.bdr = icmp slt i16 %i.bdm, 0
  br i1 %i.bdr, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.bds = tail call i16 @llvm.umin.i16(i16 %i.bdm, i16 2040)
  %i.bdt = lshr i16 %i.bds, 3
  %i.bdu = trunc nuw i16 %i.bdt to i8
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.053.i = phi i8 [ %i.bdu, %bb.dw ], [ 0, %bb.dv ] ; 8 uses
  %.not.i742760 = icmp eq ptr %i.baf, null
  br i1 %.not.i742760, label %put_dc.exit, label %.preheader60.i

.preheader60.i:                                   ; preds = %bb.dx
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.azv, i64 68 ; 8 uses
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.azv, i64 72 ; 8 uses
  br label %.preheader.i743

.preheader.i743:                                  ; preds = %.preheader.i743, %.preheader60.i
  %.166.i = phi i32 [ 0, %.preheader60.i ], [ %i.bgx, %.preheader.i743 ] ; 17 uses
  %i.bdx = load i32, ptr %i.bdv, align 4, !tbaa !48
  %i.bdy = mul nsw i32 %i.bdx, %.166.i
  %i.bdz = sext i32 %i.bdy to i64
  %i.bea = getelementptr inbounds i8, ptr %i.bdb, i64 %i.bdz
  store i8 %.054.i, ptr %i.bea, align 1, !tbaa !44
  %i.beb = load i32, ptr %i.bdw, align 8, !tbaa !48
  %i.bec = mul nsw i32 %i.beb, %.166.i
  %i.bed = sext i32 %i.bec to i64
  %i.bee = getelementptr inbounds i8, ptr %i.bdd, i64 %i.bed
  store i8 %.053.i, ptr %i.bee, align 1, !tbaa !44
  %i.bef = load i32, ptr %i.bdv, align 4, !tbaa !48
  %i.beg = mul nsw i32 %i.bef, %.166.i
  %i.beh = sext i32 %i.beg to i64
  %i.bei = getelementptr i8, ptr %i.bdb, i64 %i.beh
  %i.bej = getelementptr i8, ptr %i.bei, i64 1
  store i8 %.054.i, ptr %i.bej, align 1, !tbaa !44
  %i.bek = load i32, ptr %i.bdw, align 8, !tbaa !48
  %i.bel = mul nsw i32 %i.bek, %.166.i
  %i.bem = sext i32 %i.bel to i64
  %i.ben = getelementptr i8, ptr %i.bdd, i64 %i.bem
  %i.beo = getelementptr i8, ptr %i.ben, i64 1
  store i8 %.053.i, ptr %i.beo, align 1, !tbaa !44
  %i.bep = load i32, ptr %i.bdv, align 4, !tbaa !48
  %i.beq = mul nsw i32 %i.bep, %.166.i
  %i.ber = sext i32 %i.beq to i64
  %i.bes = getelementptr i8, ptr %i.bdb, i64 %i.ber
  %i.bet = getelementptr i8, ptr %i.bes, i64 2
  store i8 %.054.i, ptr %i.bet, align 1, !tbaa !44
  %i.beu = load i32, ptr %i.bdw, align 8, !tbaa !48
  %i.bev = mul nsw i32 %i.beu, %.166.i
  %i.bew = sext i32 %i.bev to i64
  %i.bex = getelementptr i8, ptr %i.bdd, i64 %i.bew
  %i.bey = getelementptr i8, ptr %i.bex, i64 2
  store i8 %.053.i, ptr %i.bey, align 1, !tbaa !44
  %i.bez = load i32, ptr %i.bdv, align 4, !tbaa !48
  %i.bfa = mul nsw i32 %i.bez, %.166.i
  %i.bfb = sext i32 %i.bfa to i64
  %i.bfc = getelementptr i8, ptr %i.bdb, i64 %i.bfb
  %i.bfd = getelementptr i8, ptr %i.bfc, i64 3
  store i8 %.054.i, ptr %i.bfd, align 1, !tbaa !44
  %i.bfe = load i32, ptr %i.bdw, align 8, !tbaa !48
  %i.bff = mul nsw i32 %i.bfe, %.166.i
  %i.bfg = sext i32 %i.bff to i64
  %i.bfh = getelementptr i8, ptr %i.bdd, i64 %i.bfg
  %i.bfi = getelementptr i8, ptr %i.bfh, i64 3
  store i8 %.053.i, ptr %i.bfi, align 1, !tbaa !44
  %i.bfj = load i32, ptr %i.bdv, align 4, !tbaa !48
  %i.bfk = mul nsw i32 %i.bfj, %.166.i
  %i.bfl = sext i32 %i.bfk to i64
  %i.bfm = getelementptr i8, ptr %i.bdb, i64 %i.bfl
  %i.bfn = getelementptr i8, ptr %i.bfm, i64 4
  store i8 %.054.i, ptr %i.bfn, align 1, !tbaa !44
  %i.bfo = load i32, ptr %i.bdw, align 8, !tbaa !48
  %i.bfp = mul nsw i32 %i.bfo, %.166.i
  %i.bfq = sext i32 %i.bfp to i64
  %i.bfr = getelementptr i8, ptr %i.bdd, i64 %i.bfq
  %i.bfs = getelementptr i8, ptr %i.bfr, i64 4
  store i8 %.053.i, ptr %i.bfs, align 1, !tbaa !44
  %i.bft = load i32, ptr %i.bdv, align 4, !tbaa !48
  %i.bfu = mul nsw i32 %i.bft, %.166.i
  %i.bfv = sext i32 %i.bfu to i64
  %i.bfw = getelementptr i8, ptr %i.bdb, i64 %i.bfv
  %i.bfx = getelementptr i8, ptr %i.bfw, i64 5
  store i8 %.054.i, ptr %i.bfx, align 1, !tbaa !44
  %i.bfy = load i32, ptr %i.bdw, align 8, !tbaa !48
  %i.bfz = mul nsw i32 %i.bfy, %.166.i
  %i.bga = sext i32 %i.bfz to i64
  %i.bgb = getelementptr i8, ptr %i.bdd, i64 %i.bga
  %i.bgc = getelementptr i8, ptr %i.bgb, i64 5
  store i8 %.053.i, ptr %i.bgc, align 1, !tbaa !44
  %i.bgd = load i32, ptr %i.bdv, align 4, !tbaa !48
  %i.bge = mul nsw i32 %i.bgd, %.166.i
  %i.bgf = sext i32 %i.bge to i64
  %i.bgg = getelementptr i8, ptr %i.bdb, i64 %i.bgf
  %i.bgh = getelementptr i8, ptr %i.bgg, i64 6
  store i8 %.054.i, ptr %i.bgh, align 1, !tbaa !44
  %i.bgi = load i32, ptr %i.bdw, align 8, !tbaa !48
  %i.bgj = mul nsw i32 %i.bgi, %.166.i
  %i.bgk = sext i32 %i.bgj to i64
  %i.bgl = getelementptr i8, ptr %i.bdd, i64 %i.bgk
  %i.bgm = getelementptr i8, ptr %i.bgl, i64 6
  store i8 %.053.i, ptr %i.bgm, align 1, !tbaa !44
  %i.bgn = load i32, ptr %i.bdv, align 4, !tbaa !48
  %i.bgo = mul nsw i32 %i.bgn, %.166.i
  %i.bgp = sext i32 %i.bgo to i64
  %i.bgq = getelementptr i8, ptr %i.bdb, i64 %i.bgp
  %i.bgr = getelementptr i8, ptr %i.bgq, i64 7
  store i8 %.054.i, ptr %i.bgr, align 1, !tbaa !44
  %i.bgs = load i32, ptr %i.bdw, align 8, !tbaa !48
  %i.bgt = mul nsw i32 %i.bgs, %.166.i
  %i.bgu = sext i32 %i.bgt to i64
  %i.bgv = getelementptr i8, ptr %i.bdd, i64 %i.bgu
  %i.bgw = getelementptr i8, ptr %i.bgv, i64 7
  store i8 %.053.i, ptr %i.bgw, align 1, !tbaa !44
  %i.bgx = add nuw nsw i32 %.166.i, 1             ; 2 uses
  %exitcond69.not.i = icmp eq i32 %i.bgx, 8
  br i1 %exitcond69.not.i, label %put_dc.exit, label %.preheader.i743, !llvm.loop !122

put_dc.exit:                                      ; preds = %.preheader.i743, %bb.dx, %bb.dn, %bb.dm
  %indvars.iv.next973 = add nuw nsw i64 %indvars.iv972, 1 ; 2 uses
  %i.bgy = load i32, ptr %i.v, align 4, !tbaa !46 ; 2 uses
  %i.bgz = sext i32 %i.bgy to i64
  %i.bha = icmp slt i64 %indvars.iv.next973, %i.bgz
  br i1 %i.bha, label %bb.dm, label %._crit_edge878.loopexit, !llvm.loop !123

._crit_edge878.loopexit:                          ; preds = %put_dc.exit
  %.pre1005 = load i32, ptr %i.c, align 8, !tbaa !9
  br label %._crit_edge878

._crit_edge878:                                   ; preds = %._crit_edge878.loopexit, %.preheader
  %i.bhb = phi i32 [ %.pre1005, %._crit_edge878.loopexit ], [ %i.azf, %.preheader ] ; 3 uses
  %i.bhc = phi i32 [ %i.bgy, %._crit_edge878.loopexit ], [ %i.azg, %.preheader ]
  %indvars.iv.next976 = add nuw nsw i64 %indvars.iv975, 1 ; 2 uses
  %i.bhd = sext i32 %i.bhb to i64
  %i.bhe = icmp slt i64 %indvars.iv.next976, %i.bhd
  br i1 %i.bhe, label %.preheader, label %._crit_edge880, !llvm.loop !124

._crit_edge880:                                   ; preds = %._crit_edge878, %filter181.exit
  %.lcssa = phi i32 [ %i.avu, %filter181.exit ], [ %i.bhb, %._crit_edge878 ]
  %i.bhf = load ptr, ptr %0, align 8, !tbaa !24
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bhf, i64 520
  %i.bhh = load i32, ptr %i.bhg, align 8, !tbaa !27
  %i.bhi = and i32 %i.bhh, 2
  %.not658 = icmp eq i32 %i.bhi, 0
  br i1 %.not658, label %bb.ea, label %bb.dy

bb.dy:                                            ; preds = %._crit_edge880
  %i.bhj = load ptr, ptr %i.q, align 8, !tbaa !55
  %i.bhk = load ptr, ptr %i.bhj, align 8, !tbaa !74
  %i.bhl = load i32, ptr %i.v, align 4, !tbaa !46
  %i.bhm = shl nsw i32 %i.bhl, 1
  %i.bhn = shl nsw i32 %.lcssa, 1
  %i.bho = load i32, ptr %i.ah, align 4, !tbaa !48
  %i.bhp = sext i32 %i.bho to i64
  tail call fastcc void @h_block_filter(ptr noundef nonnull %0, ptr noundef %i.bhk, i32 noundef %i.bhm, i32 noundef %i.bhn, i64 noundef %i.bhp, i32 noundef 1)
  %i.bhq = load ptr, ptr %i.q, align 8, !tbaa !55
  %i.bhr = load ptr, ptr %i.bhq, align 8, !tbaa !74
  %i.bhs = load i32, ptr %i.v, align 4, !tbaa !46
  %i.bht = shl nsw i32 %i.bhs, 1
  %i.bhu = load i32, ptr %i.c, align 8, !tbaa !9
  %i.bhv = shl nsw i32 %i.bhu, 1
  %i.bhw = load i32, ptr %i.ah, align 4, !tbaa !48
  %i.bhx = sext i32 %i.bhw to i64
  tail call fastcc void @v_block_filter(ptr noundef nonnull %0, ptr noundef %i.bhr, i32 noundef %i.bht, i32 noundef %i.bhv, i64 noundef %i.bhx, i32 noundef 1)
  %i.bhy = load ptr, ptr %i.q, align 8, !tbaa !55 ; 2 uses
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bhy, i64 16
  %i.bia = load ptr, ptr %i.bhz, align 8, !tbaa !74
  %.not659 = icmp eq ptr %i.bia, null
  br i1 %.not659, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bhy, i64 8
  %i.bic = load ptr, ptr %i.bib, align 8, !tbaa !74
  %i.bid = load i32, ptr %i.v, align 4, !tbaa !46
  %i.bie = load i32, ptr %i.c, align 8, !tbaa !9
  %i.bif = getelementptr inbounds nuw i8, ptr %i.ag, i64 68 ; 2 uses
  %i.big = load i32, ptr %i.bif, align 4, !tbaa !48
  %i.bih = sext i32 %i.big to i64
  tail call fastcc void @h_block_filter(ptr noundef nonnull %0, ptr noundef %i.bic, i32 noundef %i.bid, i32 noundef %i.bie, i64 noundef %i.bih, i32 noundef 0)
end_hunk_2
