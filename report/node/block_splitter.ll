inline.NumInlined: 26
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 41
begin_hunk_0_@BrotliSplitBlock:bb.a
  br i1 %i.ia, label %ClearHistogramsLiteral.exit.i.i.epil.preheader, label %ClearHistogramsLiteral.exit.i.i

ClearHistogramsLiteral.exit.i.i:                  ; preds = %ClearHistogramsLiteral.exit.i.i.preheader, %ClearHistogramsLiteral.exit.i.i
  %.010.i.i = phi i64 [ %i.qb, %ClearHistogramsLiteral.exit.i.i ], [ 0, %ClearHistogramsLiteral.exit.i.i.preheader ] ; 4 uses
  %niter926 = phi i64 [ %niter926.next.1, %ClearHistogramsLiteral.exit.i.i ], [ 0, %ClearHistogramsLiteral.exit.i.i.preheader ]
  %i.pa = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.010.i.i
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !32
  %i.pc = zext i8 %i.pb to i64
  %i.pd = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %i.pc ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.ph, i64 %.010.i.i
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !32
  %i.pg = zext i8 %i.pf to i64
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.pg ; 2 uses
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !33
  %i.pj = add i32 %i.pi, 1
  store i32 %i.pj, ptr %i.ph, align 4, !tbaa !33
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pd, i64 1024 ; 2 uses
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !39
  %i.pm = add i64 %i.pl, 1
  store i64 %i.pm, ptr %i.pk, align 8, !tbaa !39
  %i.pn = or disjoint i64 %.010.i.i, 1            ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.pn
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !32
  %i.pq = zext i8 %i.pp to i64
  %i.pr = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %i.pq ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.ph, i64 %i.pn
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !32
  %i.pu = zext i8 %i.pt to i64
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %i.pu ; 2 uses
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !33
  %i.px = add i32 %i.pw, 1
  store i32 %i.px, ptr %i.pv, align 4, !tbaa !33
  %i.py = getelementptr inbounds nuw i8, ptr %i.pr, i64 1024 ; 2 uses
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !39
  %i.qa = add i64 %i.pz, 1
  store i64 %i.qa, ptr %i.py, align 8, !tbaa !39
  %i.qb = add nuw i64 %.010.i.i, 2                ; 2 uses
  %niter926.next.1 = add i64 %niter926, 2         ; 2 uses
  %niter926.ncmp.1 = icmp eq i64 %niter926.next.1, %unroll_iter925
  br i1 %niter926.ncmp.1, label %BuildBlockHistogramsLiteral.exit.i.unr-lcssa, label %ClearHistogramsLiteral.exit.i.i, !llvm.loop !85

BuildBlockHistogramsLiteral.exit.i.unr-lcssa:     ; preds = %ClearHistogramsLiteral.exit.i.i
  br i1 %lcmp.mod923.not, label %BuildBlockHistogramsLiteral.exit.i, label %ClearHistogramsLiteral.exit.i.i.epil.preheader

ClearHistogramsLiteral.exit.i.i.epil.preheader:   ; preds = %BuildBlockHistogramsLiteral.exit.i.unr-lcssa, %ClearHistogramsLiteral.exit.i.i.preheader
  %.010.i.i.epil.init = phi i64 [ 0, %ClearHistogramsLiteral.exit.i.i.preheader ], [ %i.qb, %BuildBlockHistogramsLiteral.exit.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod924)
  %i.qc = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.010.i.i.epil.init
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !32
  %i.qe = zext i8 %i.qd to i64
  %i.qf = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %i.qe ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %.ph, i64 %.010.i.i.epil.init
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !32
  %i.qi = zext i8 %i.qh to i64
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.qf, i64 %i.qi ; 2 uses
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !33
  %i.ql = add i32 %i.qk, 1
  store i32 %i.ql, ptr %i.qj, align 4, !tbaa !33
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qf, i64 1024 ; 2 uses
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !39
  %i.qo = add i64 %i.qn, 1
  store i64 %i.qo, ptr %i.qm, align 8, !tbaa !39
  br label %BuildBlockHistogramsLiteral.exit.i

BuildBlockHistogramsLiteral.exit.i:               ; preds = %BuildBlockHistogramsLiteral.exit.i.unr-lcssa, %ClearHistogramsLiteral.exit.i.i.epil.preheader
  %i.qp = add nuw nsw i64 %.0180.i, 1             ; 2 uses
  %exitcond.not.i65 = icmp eq i64 %i.qp, %i.hw
  br i1 %exitcond.not.i65, label %bb.bf, label %bb.af, !llvm.loop !86

bb.bf:                                            ; preds = %BuildBlockHistogramsLiteral.exit.i
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.hm) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.ho) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.hr) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef nonnull %i.ht) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef nonnull %i.cs) #8
  %.not.i168.i = icmp eq i64 %.0108.i.i, 0        ; 5 uses
  br i1 %.not.i168.i, label %.thread.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.qq = shl i64 %.0108.i.i, 2
  %i.qr = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.qq) #8 ; 2 uses
  %i.qs = add i64 %.0108.i.i, 256                 ; 2 uses
  %.not388.i.i = icmp eq i64 %i.qs, 0
  br i1 %.not388.i.i, label %.thread411.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.bg, %bb.bf
  %i.qt = phi i64 [ %i.qs, %bb.bg ], [ 256, %bb.bf ] ; 3 uses
  %i.qu = phi ptr [ %i.qr, %bb.bg ], [ null, %bb.bf ] ; 2 uses
  %i.qv = shl i64 %i.qt, 2
  %i.qw = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.qv) #8 ; 2 uses
  %i.qx = shl i64 %.0108.i.i, 4
  %i.qy = add i64 %i.qx, 1008
  %i.qz = lshr i64 %i.qy, 6                       ; 2 uses
  %.not389.i.i = icmp eq i64 %i.qz, 0
  br i1 %.not389.i.i, label %.thread409.i.i, label %.thread411.i.i

.thread411.i.i:                                   ; preds = %.thread.i.i, %bb.bg
  %.sink558.i.i = phi i64 [ %i.qz, %.thread.i.i ], [ 288230376151711695, %bb.bg ] ; 3 uses
  %i.ra = phi i64 [ %i.qt, %.thread.i.i ], [ 0, %bb.bg ]
  %i.rb = phi ptr [ %i.qu, %.thread.i.i ], [ %i.qr, %bb.bg ]
  %i.rc = phi ptr [ %i.qw, %.thread.i.i ], [ null, %bb.bg ]
  %i.rd = mul i64 %.sink558.i.i, 1040
  %i.re = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.rd) #8
  %i.rf = shl nuw nsw i64 %.sink558.i.i, 2
  %i.rg = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.rf) #8
  br label %.thread409.i.i

.thread409.i.i:                                   ; preds = %.thread411.i.i, %.thread.i.i
  %i.rh = phi ptr [ %i.re, %.thread411.i.i ], [ null, %.thread.i.i ] ; 2 uses
  %i.ri = phi i64 [ %i.ra, %.thread411.i.i ], [ %i.qt, %.thread.i.i ]
  %i.rj = phi ptr [ %i.rb, %.thread411.i.i ], [ %i.qu, %.thread.i.i ] ; 9 uses
  %i.rk = phi ptr [ %i.rc, %.thread411.i.i ], [ %i.qw, %.thread.i.i ] ; 10 uses
  %i.rl = phi i64 [ %.sink558.i.i, %.thread411.i.i ], [ 0, %.thread.i.i ] ; 2 uses
  %i.rm = phi ptr [ %i.rg, %.thread411.i.i ], [ null, %.thread.i.i ] ; 2 uses
  br i1 %.not.i168.i, label %.new927, label %bb.bh

bb.bh:                                            ; preds = %.thread409.i.i
  %i.rn = tail call i64 @llvm.umin.i64(i64 %.0108.i.i, i64 64)
  %i.ro = mul nuw nsw i64 %i.rn, 1040
  %i.rp = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.ro) #8
  br label %.new927

.new927:                                          ; preds = %bb.bh, %.thread409.i.i
  %i.rq = phi ptr [ %i.rp, %bb.bh ], [ null, %.thread409.i.i ] ; 4 uses
  %i.rr = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef 49176) #8 ; 3 uses
  %.not391.i.i = icmp eq ptr %i.rk, null
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rk, i64 1024 ; 5 uses
  %i.rt = select i1 %.not391.i.i, ptr null, ptr %i.rs ; 4 uses
  %i.ru = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef 2080) #8 ; 10 uses
  %i.rv = shl i64 %i.ri, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.rk, i8 0, i64 %i.rv, i1 false)
  %xtraiter929 = and i64 %i.hx, 1
  %unroll_iter934 = and i64 %i.hx, -2
  br label %bb.bi

.preheader414.peel.begin.i.i.unr-lcssa:           ; preds = %bb.bi
  %lcmp.mod931.not = icmp eq i64 %xtraiter929, 0
  br i1 %lcmp.mod931.not, label %.preheader414.peel.begin.i.i, label %.epil.preheader928

.epil.preheader928:                               ; preds = %.preheader414.peel.begin.i.i.unr-lcssa
  %lcmp.mod933 = trunc i64 %i.hx to i1
  tail call void @llvm.assume(i1 %lcmp.mod933)
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %spec.select.i169.i.1 ; 2 uses
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !33
  %i.ry = add i32 %i.rx, 1
  store i32 %i.ry, ptr %i.rw, align 4, !tbaa !33
  %i.rz = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.sx
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !32
  %i.sb = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.sx
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 1
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !32
  %.not402.i.i.epil = icmp ne i8 %i.sa, %i.sd
  %i.se = zext i1 %.not402.i.i.epil to i64
  %spec.select.i169.i.epil = add i64 %spec.select.i169.i.1, %i.se
  br label %.preheader414.peel.begin.i.i

.preheader414.peel.begin.i.i:                     ; preds = %.preheader414.peel.begin.i.i.unr-lcssa, %.epil.preheader928
  %spec.select.i169.i.lcssa = phi i64 [ %spec.select.i169.i.1, %.preheader414.peel.begin.i.i.unr-lcssa ], [ %spec.select.i169.i.epil, %.epil.preheader928 ]
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %spec.select.i169.i.lcssa ; 2 uses
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !33
  %i.sh = add i32 %i.sg, 1
  store i32 %i.sh, ptr %i.sf, align 4, !tbaa !33
  %i.si = getelementptr inbounds nuw i8, ptr %i.rk, i64 256 ; 3 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rk, i64 512 ; 7 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.rk, i64 768 ; 6 uses
  br i1 %.not.i168.i, label %._crit_edge445.i.i, label %.lr.ph422.i.i

bb.bi:                                            ; preds = %bb.bi, %.new927
  %.0345416.i.i = phi i64 [ 0, %.new927 ], [ %spec.select.i169.i.1, %bb.bi ] ; 2 uses
  %.0347415.i.i = phi i64 [ 0, %.new927 ], [ %i.sx, %bb.bi ] ; 3 uses
  %niter935 = phi i64 [ 0, %.new927 ], [ %niter935.next.1, %bb.bi ]
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %.0345416.i.i ; 2 uses
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !33
  %i.sn = add i32 %i.sm, 1
  store i32 %i.sn, ptr %i.sl, align 4, !tbaa !33
  %i.so = or disjoint i64 %.0347415.i.i, 1        ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.0347415.i.i
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !32
  %i.sr = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.so
  %i.ss = load i8, ptr %i.sr, align 1, !tbaa !32
  %.not402.i.i = icmp ne i8 %i.sq, %i.ss
  %i.st = zext i1 %.not402.i.i to i64
  %spec.select.i169.i = add i64 %.0345416.i.i, %i.st ; 2 uses
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %spec.select.i169.i ; 2 uses
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !33
  %i.sw = add i32 %i.sv, 1
  store i32 %i.sw, ptr %i.su, align 4, !tbaa !33
  %i.sx = add nuw i64 %.0347415.i.i, 2            ; 4 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.so
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !32
  %i.ta = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.sx
  %i.tb = load i8, ptr %i.ta, align 1, !tbaa !32
  %.not402.i.i.1 = icmp ne i8 %i.sz, %i.tb
  %i.tc = zext i1 %.not402.i.i.1 to i64
  %spec.select.i169.i.1 = add i64 %spec.select.i169.i, %i.tc ; 4 uses
  %niter935.next.1 = add nuw i64 %niter935, 2     ; 2 uses
  %niter935.ncmp.1 = icmp eq i64 %niter935.next.1, %unroll_iter934
  br i1 %niter935.ncmp.1, label %.preheader414.peel.begin.i.i.unr-lcssa, label %bb.bi, !llvm.loop !87

.lr.ph422.i.i:                                    ; preds = %.preheader414.peel.begin.i.i, %._crit_edge434.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %._crit_edge434.i.i ], [ %.0108.i.i, %.preheader414.peel.begin.i.i ] ; 4 uses
  %.1348443.i.i = phi i64 [ %i.xv, %._crit_edge434.i.i ], [ 0, %.preheader414.peel.begin.i.i ] ; 4 uses
  %.0350442.i.i = phi i64 [ %.2352.lcssa.i.i, %._crit_edge434.i.i ], [ 0, %.preheader414.peel.begin.i.i ]
  %.0356441.i.i = phi i64 [ %i.xu, %._crit_edge434.i.i ], [ 0, %.preheader414.peel.begin.i.i ] ; 2 uses
  %.0357440.i.i = phi ptr [ %.1358.i.i, %._crit_edge434.i.i ], [ %i.rm, %.preheader414.peel.begin.i.i ] ; 3 uses
  %.0359439.i.i = phi i64 [ %.1360.i.i, %._crit_edge434.i.i ], [ %i.rl, %.preheader414.peel.begin.i.i ] ; 5 uses
  %.0361438.i.i = phi i64 [ %.1362.lcssa.i.i, %._crit_edge434.i.i ], [ 0, %.preheader414.peel.begin.i.i ] ; 3 uses
  %.0363437.i.i = phi ptr [ %.1364.i.i, %._crit_edge434.i.i ], [ %i.rh, %.preheader414.peel.begin.i.i ] ; 3 uses
  %.0365436.i.i = phi i64 [ %.1366.i.i, %._crit_edge434.i.i ], [ %i.rl, %.preheader414.peel.begin.i.i ] ; 5 uses
  %.0367435.i.i = phi i64 [ %.1368.lcssa.i.i, %._crit_edge434.i.i ], [ 0, %.preheader414.peel.begin.i.i ] ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.i, i64 1)
  %umin = tail call i64 @llvm.umin.i64(i64 %umax, i64 64) ; 2 uses
  %i.td = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.i, i64 1)
  %umax503.i.i = tail call i64 @llvm.umin.i64(i64 %i.td, i64 64)
  %i.te = getelementptr [4 x i8], ptr %i.rs, i64 %.1348443.i.i
  br label %bb.bj

bb.bj:                                            ; preds = %._crit_edge.i.i, %.lr.ph422.i.i
  %.0343420.i.i = phi i64 [ 0, %.lr.ph422.i.i ], [ %i.uq, %._crit_edge.i.i ] ; 7 uses
  %.1351419.i.i = phi i64 [ %.0350442.i.i, %.lr.ph422.i.i ], [ %.2352.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.tf = getelementptr [4 x i8], ptr %i.te, i64 %.0343420.i.i
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !33 ; 4 uses
  %i.th = zext i32 %i.tg to i64                   ; 2 uses
  %i.ti = getelementptr inbounds nuw [1040 x i8], ptr %i.rq, i64 %.0343420.i.i ; 7 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 1024 ; 3 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ti, i64 1032 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ti, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.tk, align 8, !tbaa !34
  %.not486.i.i = icmp eq i32 %i.tg, 0
  br i1 %.not486.i.i, label %._crit_edge.i.i, label %.lr.ph.i171.i.preheader

.lr.ph.i171.i.preheader:                          ; preds = %bb.bj
  %xtraiter936 = and i64 %i.th, 1
  %i.tl = icmp eq i32 %i.tg, 1
  br i1 %i.tl, label %.lr.ph.i171.i.epil.preheader, label %.lr.ph.i171.i.preheader.new

.lr.ph.i171.i.preheader.new:                      ; preds = %.lr.ph.i171.i.preheader
  %unroll_iter941 = and i64 %i.th, 4294967294
  br label %.lr.ph.i171.i

.lr.ph.i171.i:                                    ; preds = %.lr.ph.i171.i, %.lr.ph.i171.i.preheader.new
  %i.tm = phi i64 [ 0, %.lr.ph.i171.i.preheader.new ], [ %i.uc, %.lr.ph.i171.i ] ; 2 uses
  %.2352417.i.i = phi i64 [ %.1351419.i.i, %.lr.ph.i171.i.preheader.new ], [ %i.tu, %.lr.ph.i171.i ] ; 3 uses
  %niter942 = phi i64 [ 0, %.lr.ph.i171.i.preheader.new ], [ %niter942.next.1, %.lr.ph.i171.i ]
  %i.tn = getelementptr inbounds nuw i8, ptr %.ph, i64 %.2352417.i.i
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !32
  %i.tp = zext i8 %i.to to i64
  %i.tq = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.tp ; 2 uses
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !33
  %i.ts = add i32 %i.tr, 1
  store i32 %i.ts, ptr %i.tq, align 4, !tbaa !33
  %i.tt = or disjoint i64 %i.tm, 1
  store i64 %i.tt, ptr %i.tj, align 8, !tbaa !39
  %i.tu = add i64 %.2352417.i.i, 2                ; 3 uses
  %i.tv = getelementptr i8, ptr %.ph, i64 %.2352417.i.i
  %i.tw = getelementptr i8, ptr %i.tv, i64 1
  %i.tx = load i8, ptr %i.tw, align 1, !tbaa !32
  %i.ty = zext i8 %i.tx to i64
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.ty ; 2 uses
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !33
  %i.ub = add i32 %i.ua, 1
  store i32 %i.ub, ptr %i.tz, align 4, !tbaa !33
  %i.uc = add nuw nsw i64 %i.tm, 2                ; 3 uses
  store i64 %i.uc, ptr %i.tj, align 8, !tbaa !39
  %niter942.next.1 = add i64 %niter942, 2         ; 2 uses
  %niter942.ncmp.1 = icmp eq i64 %niter942.next.1, %unroll_iter941
  br i1 %niter942.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i171.i, !llvm.loop !89

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i171.i
  %lcmp.mod938.not = icmp eq i64 %xtraiter936, 0
  br i1 %lcmp.mod938.not, label %._crit_edge.i.i, label %.lr.ph.i171.i.epil.preheader

.lr.ph.i171.i.epil.preheader:                     ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i171.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i171.i.preheader ], [ %i.uc, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.2352417.i.i.epil.init = phi i64 [ %.1351419.i.i, %.lr.ph.i171.i.preheader ], [ %i.tu, %._crit_edge.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod940 = trunc i32 %i.tg to i1
  tail call void @llvm.assume(i1 %lcmp.mod940)
  %i.ud = add i64 %.2352417.i.i.epil.init, 1
  %i.ue = getelementptr inbounds nuw i8, ptr %.ph, i64 %.2352417.i.i.epil.init
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !32
  %i.ug = zext i8 %i.uf to i64
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %i.ug ; 2 uses
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !33
  %i.uj = add i32 %i.ui, 1
  store i32 %i.uj, ptr %i.uh, align 4, !tbaa !33
  %i.uk = add nuw nsw i64 %.epil.init, 1
  store i64 %i.uk, ptr %i.tj, align 8, !tbaa !39
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i171.i.epil.preheader, %._crit_edge.i.i.loopexit.unr-lcssa, %bb.bj
  %.2352.lcssa.i.i = phi i64 [ %.1351419.i.i, %bb.bj ], [ %i.tu, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %i.ud, %.lr.ph.i171.i.epil.preheader ] ; 2 uses
  %i.ul = tail call double @BrotliPopulationCostLiteral(ptr noundef nonnull %i.ti) #8
  store double %i.ul, ptr %i.tk, align 8, !tbaa !34
  %i.um = trunc i64 %.0343420.i.i to i32          ; 2 uses
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %.0343420.i.i
  store i32 %i.um, ptr %i.un, align 4, !tbaa !33
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %.0343420.i.i
  store i32 %i.um, ptr %i.uo, align 4, !tbaa !33
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %.0343420.i.i
  store i32 1, ptr %i.up, align 4, !tbaa !33
  %i.uq = add nuw nsw i64 %.0343420.i.i, 1        ; 2 uses
  %exitcond500.not.i.i = icmp eq i64 %i.uq, %umax503.i.i
  br i1 %exitcond500.not.i.i, label %._crit_edge423.i.i, label %bb.bj, !llvm.loop !90

._crit_edge423.i.i:                               ; preds = %._crit_edge.i.i
  %i.ur = sub nuw i64 %.0108.i.i, %.1348443.i.i
  %i.us = tail call i64 @llvm.umin.i64(i64 %i.ur, i64 64) ; 2 uses
  %i.ut = tail call i64 @BrotliHistogramCombineLiteral(ptr noundef nonnull %i.rq, ptr noundef %i.ru, ptr noundef nonnull %i.rk, ptr noundef nonnull %i.sj, ptr noundef nonnull %i.si, ptr noundef %i.rr, i64 noundef %i.us, i64 noundef %i.us, i64 noundef 64, i64 noundef 2048) #8 ; 5 uses
  %i.uu = add i64 %i.ut, %.0367435.i.i            ; 3 uses
  %i.uv = icmp ult i64 %.0365436.i.i, %i.uu
  br i1 %i.uv, label %bb.bk, label %bb.bp

bb.bk:                                            ; preds = %._crit_edge423.i.i
  %i.uw = icmp eq i64 %.0365436.i.i, 0            ; 2 uses
  %i.ux = select i1 %i.uw, i64 %i.uu, i64 %.0365436.i.i
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bl, %bb.bk
  %.0341.i.i = phi i64 [ %i.ux, %bb.bk ], [ %i.uz, %bb.bl ] ; 4 uses
  %i.uy = icmp ult i64 %.0341.i.i, %i.uu
  %i.uz = shl i64 %.0341.i.i, 1
  br i1 %i.uy, label %bb.bl, label %bb.bm, !llvm.loop !91

bb.bm:                                            ; preds = %bb.bl
  %i.va = mul i64 %.0341.i.i, 1040
  %i.vb = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.va) #8 ; 2 uses
  br i1 %i.uw, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.vc = mul i64 %.0365436.i.i, 1040
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.vb, ptr align 8 %.0363437.i.i, i64 %i.vc, i1 false)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %.0363437.i.i) #8
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %._crit_edge423.i.i
  %.1366.i.i = phi i64 [ %.0341.i.i, %bb.bo ], [ %.0365436.i.i, %._crit_edge423.i.i ]
  %.1364.i.i = phi ptr [ %i.vb, %bb.bo ], [ %.0363437.i.i, %._crit_edge423.i.i ] ; 3 uses
  %i.vd = add i64 %i.ut, %.0361438.i.i            ; 3 uses
  %i.ve = icmp ult i64 %.0359439.i.i, %i.vd
  br i1 %i.ve, label %bb.bq, label %bb.bv

bb.bq:                                            ; preds = %bb.bp
  %i.vf = icmp eq i64 %.0359439.i.i, 0            ; 2 uses
  %i.vg = select i1 %i.vf, i64 %i.vd, i64 %.0359439.i.i
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %bb.bq
  %.0340.i.i = phi i64 [ %i.vg, %bb.bq ], [ %i.vi, %bb.br ] ; 4 uses
  %i.vh = icmp ult i64 %.0340.i.i, %i.vd
  %i.vi = shl i64 %.0340.i.i, 1
  br i1 %i.vh, label %bb.br, label %bb.bs, !llvm.loop !92

bb.bs:                                            ; preds = %bb.br
  %i.vj = shl i64 %.0340.i.i, 2
  %i.vk = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.vj) #8 ; 2 uses
  br i1 %i.vf, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.vl = shl i64 %.0359439.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.vk, ptr align 4 %.0357440.i.i, i64 %i.vl, i1 false)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %.0357440.i.i) #8
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bp
  %.1360.i.i = phi i64 [ %.0340.i.i, %bb.bu ], [ %.0359439.i.i, %bb.bp ]
  %.1358.i.i = phi ptr [ %i.vk, %bb.bu ], [ %.0357440.i.i, %bb.bp ] ; 3 uses
  %.not487.i.i = icmp eq i64 %i.ut, 0
  br i1 %.not487.i.i, label %.lr.ph433.i.i, label %.lr.ph429.i.i

.lr.ph433.i.i:                                    ; preds = %.lr.ph429.i.i, %bb.bv
  %.1368.lcssa.i.i = phi i64 [ %.0367435.i.i, %bb.bv ], [ %i.vp, %.lr.ph429.i.i ]
  %.1362.lcssa.i.i = phi i64 [ %.0361438.i.i, %bb.bv ], [ %i.vz, %.lr.ph429.i.i ]
  %i.vm = trunc i64 %.0356441.i.i to i32          ; 5 uses
  %i.vn = getelementptr [4 x i8], ptr %i.rj, i64 %.1348443.i.i ; 5 uses
  %xtraiter944 = and i64 %umin, 3                 ; 3 uses
  %i.vo = icmp ult i64 %indvars.iv.i.i, 4
  br i1 %i.vo, label %.epil.preheader943, label %.lr.ph433.i.i.new

.lr.ph433.i.i.new:                                ; preds = %.lr.ph433.i.i
  %unroll_iter948 = and i64 %umin, 124
  br label %bb.bw

.lr.ph429.i.i:                                    ; preds = %bb.bv, %.lr.ph429.i.i
  %.1344427.i.i = phi i64 [ %i.wf, %.lr.ph429.i.i ], [ 0, %bb.bv ] ; 3 uses
  %.1362426.i.i = phi i64 [ %i.vz, %.lr.ph429.i.i ], [ %.0361438.i.i, %bb.bv ] ; 2 uses
  %.1368425.i.i = phi i64 [ %i.vp, %.lr.ph429.i.i ], [ %.0367435.i.i, %bb.bv ] ; 2 uses
  %i.vp = add i64 %.1368425.i.i, 1                ; 2 uses
  %i.vq = getelementptr inbounds nuw [1040 x i8], ptr %.1364.i.i, i64 %.1368425.i.i
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.si, i64 %.1344427.i.i ; 3 uses
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !33
  %i.vt = zext i32 %i.vs to i64
  %i.vu = getelementptr inbounds nuw [1040 x i8], ptr %i.rq, i64 %i.vt
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.vq, ptr noundef nonnull align 8 dereferenceable(1040) %i.vu, i64 1040, i1 false), !tbaa.struct !93
  %i.vv = load i32, ptr %i.vr, align 4, !tbaa !33
  %i.vw = zext i32 %i.vv to i64
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.vw
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !33
  %i.vz = add i64 %.1362426.i.i, 1                ; 2 uses
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %.1358.i.i, i64 %.1362426.i.i
  store i32 %i.vy, ptr %i.wa, align 4, !tbaa !33
  %i.wb = trunc i64 %.1344427.i.i to i32
  %i.wc = load i32, ptr %i.vr, align 4, !tbaa !33
  %i.wd = zext i32 %i.wc to i64
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %i.wd
  store i32 %i.wb, ptr %i.we, align 4, !tbaa !33
  %i.wf = add nuw i64 %.1344427.i.i, 1            ; 2 uses
  %exitcond501.not.i.i = icmp eq i64 %i.wf, %i.ut
  br i1 %exitcond501.not.i.i, label %.lr.ph433.i.i, label %.lr.ph429.i.i, !llvm.loop !95

bb.bw:                                            ; preds = %bb.bw, %.lr.ph433.i.i.new
  %.2432.i.i = phi i64 [ 0, %.lr.ph433.i.i.new ], [ %i.xl, %bb.bw ] ; 6 uses
  %niter949 = phi i64 [ 0, %.lr.ph433.i.i.new ], [ %niter949.next.3, %bb.bw ]
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %.2432.i.i
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !33
  %i.wi = zext i32 %i.wh to i64
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %i.wi
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !33
  %i.wl = add i32 %i.wk, %i.vm
  %i.wm = getelementptr [4 x i8], ptr %i.vn, i64 %.2432.i.i
  store i32 %i.wl, ptr %i.wm, align 4, !tbaa !33
  %i.wn = or disjoint i64 %.2432.i.i, 1           ; 2 uses
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %i.wn
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !33
  %i.wq = zext i32 %i.wp to i64
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %i.wq
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !33
  %i.wt = add i32 %i.ws, %i.vm
  %i.wu = getelementptr [4 x i8], ptr %i.vn, i64 %i.wn
  store i32 %i.wt, ptr %i.wu, align 4, !tbaa !33
  %i.wv = or disjoint i64 %.2432.i.i, 2           ; 2 uses
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %i.wv
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !33
  %i.wy = zext i32 %i.wx to i64
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %i.wy
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !33
  %i.xb = add i32 %i.xa, %i.vm
  %i.xc = getelementptr [4 x i8], ptr %i.vn, i64 %i.wv
  store i32 %i.xb, ptr %i.xc, align 4, !tbaa !33
  %i.xd = or disjoint i64 %.2432.i.i, 3           ; 2 uses
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %i.xd
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !33
  %i.xg = zext i32 %i.xf to i64
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %i.xg
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !33
  %i.xj = add i32 %i.xi, %i.vm
  %i.xk = getelementptr [4 x i8], ptr %i.vn, i64 %i.xd
  store i32 %i.xj, ptr %i.xk, align 4, !tbaa !33
  %i.xl = add nuw nsw i64 %.2432.i.i, 4           ; 2 uses
  %niter949.next.3 = add i64 %niter949, 4         ; 2 uses
  %niter949.ncmp.3 = icmp eq i64 %niter949.next.3, %unroll_iter948
  br i1 %niter949.ncmp.3, label %._crit_edge434.i.i.unr-lcssa, label %bb.bw, !llvm.loop !96

._crit_edge434.i.i.unr-lcssa:                     ; preds = %bb.bw
  %lcmp.mod946.not = icmp eq i64 %xtraiter944, 0
  br i1 %lcmp.mod946.not, label %._crit_edge434.i.i, label %.epil.preheader943

.epil.preheader943:                               ; preds = %._crit_edge434.i.i.unr-lcssa, %.lr.ph433.i.i
  %.2432.i.i.epil.init = phi i64 [ 0, %.lr.ph433.i.i ], [ %i.xl, %._crit_edge434.i.i.unr-lcssa ]
  %lcmp.mod947 = icmp ne i64 %xtraiter944, 0
  tail call void @llvm.assume(i1 %lcmp.mod947)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bx, %.epil.preheader943
  %.2432.i.i.epil = phi i64 [ %.2432.i.i.epil.init, %.epil.preheader943 ], [ %i.xt, %bb.bx ] ; 3 uses
  %epil.iter945 = phi i64 [ 0, %.epil.preheader943 ], [ %epil.iter945.next, %bb.bx ]
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %.2432.i.i.epil
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !33
  %i.xo = zext i32 %i.xn to i64
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %i.xo
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !33
  %i.xr = add i32 %i.xq, %i.vm
  %i.xs = getelementptr [4 x i8], ptr %i.vn, i64 %.2432.i.i.epil
  store i32 %i.xr, ptr %i.xs, align 4, !tbaa !33
  %i.xt = add nuw nsw i64 %.2432.i.i.epil, 1
  %epil.iter945.next = add i64 %epil.iter945, 1   ; 2 uses
  %epil.iter945.cmp.not = icmp eq i64 %epil.iter945.next, %xtraiter944
  br i1 %epil.iter945.cmp.not, label %._crit_edge434.i.i, label %bb.bx, !llvm.loop !97

._crit_edge434.i.i:                               ; preds = %bb.bx, %._crit_edge434.i.i.unr-lcssa
  %i.xu = add i64 %i.ut, %.0356441.i.i            ; 2 uses
  %i.xv = add i64 %.1348443.i.i, 64               ; 2 uses
  %i.xw = icmp ult i64 %i.xv, %.0108.i.i
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, -64
  br i1 %i.xw, label %.lr.ph422.i.i, label %._crit_edge445.i.i, !llvm.loop !98

._crit_edge445.i.i:                               ; preds = %._crit_edge434.i.i, %.preheader414.peel.begin.i.i
  %.0363.lcssa.i.i = phi ptr [ %i.rh, %.preheader414.peel.begin.i.i ], [ %.1364.i.i, %._crit_edge434.i.i ] ; 4 uses
  %.0357.lcssa.i.i = phi ptr [ %i.rm, %.preheader414.peel.begin.i.i ], [ %.1358.i.i, %._crit_edge434.i.i ] ; 2 uses
  %.0356.lcssa.i.i = phi i64 [ 0, %.preheader414.peel.begin.i.i ], [ %i.xu, %._crit_edge434.i.i ] ; 11 uses
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.rq) #8
  %i.xx = shl i64 %.0356.lcssa.i.i, 6
  %i.xy = lshr i64 %.0356.lcssa.i.i, 1
  %i.xz = mul i64 %i.xy, %.0356.lcssa.i.i
  %i.ya = tail call i64 @llvm.umin.i64(i64 %i.xx, i64 %i.xz) ; 3 uses
  %i.yb = icmp ugt i64 %i.ya, 2048
  br i1 %i.yb, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %._crit_edge445.i.i
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.rr) #8
  %i.yc = mul i64 %i.ya, 24
  %i.yd = add i64 %i.yc, 24
  %i.ye = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.yd) #8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %._crit_edge445.i.i
  %.0355.i.i = phi ptr [ %i.ye, %bb.by ], [ %i.rr, %._crit_edge445.i.i ] ; 2 uses
  %.not392.i.i = icmp eq i64 %.0356.lcssa.i.i, 0  ; 2 uses
  br i1 %.not392.i.i, label %._crit_edge452.i.i, label %.lr.ph451.preheader.i.i

.lr.ph451.preheader.i.i:                          ; preds = %bb.bz
  %i.yf = shl i64 %.0356.lcssa.i.i, 2
  %i.yg = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.yf) #8 ; 4 uses
  %min.iters.check727 = icmp ult i64 %.0356.lcssa.i.i, 8
  br i1 %min.iters.check727, label %.lr.ph451.i.i.preheader, label %vector.ph728

vector.ph728:                                     ; preds = %.lr.ph451.preheader.i.i
  %n.vec729 = and i64 %.0356.lcssa.i.i, -8        ; 3 uses
  br label %vector.body730

vector.body730:                                   ; preds = %vector.body730, %vector.ph728
  %index731 = phi i64 [ 0, %vector.ph728 ], [ %index.next732, %vector.body730 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph728 ], [ %vec.ind.next, %vector.body730 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %index731 ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 16
  store <4 x i32> %vec.ind, ptr %i.yh, align 4, !tbaa !33
  store <4 x i32> %step.add, ptr %i.yi, align 4, !tbaa !33
  %index.next732 = add nuw i64 %index731, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.yj = icmp eq i64 %index.next732, %n.vec729
  br i1 %i.yj, label %middle.block733, label %vector.body730, !llvm.loop !99

middle.block733:                                  ; preds = %vector.body730
  %cmp.n734 = icmp eq i64 %.0356.lcssa.i.i, %n.vec729
  br i1 %cmp.n734, label %._crit_edge452.i.i, label %.lr.ph451.i.i.preheader

.lr.ph451.i.i.preheader:                          ; preds = %.lr.ph451.preheader.i.i, %middle.block733
  %.2349449.i.i.ph = phi i64 [ 0, %.lr.ph451.preheader.i.i ], [ %n.vec729, %middle.block733 ]
  br label %.lr.ph451.i.i

.lr.ph451.i.i:                                    ; preds = %.lr.ph451.i.i.preheader, %.lr.ph451.i.i
  %.2349449.i.i = phi i64 [ %i.ym, %.lr.ph451.i.i ], [ %.2349449.i.i.ph, %.lr.ph451.i.i.preheader ] ; 3 uses
  %i.yk = trunc i64 %.2349449.i.i to i32
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %.2349449.i.i
  store i32 %i.yk, ptr %i.yl, align 4, !tbaa !33
  %i.ym = add nuw i64 %.2349449.i.i, 1            ; 2 uses
  %exitcond505.not.i.i = icmp eq i64 %i.ym, %.0356.lcssa.i.i
  br i1 %exitcond505.not.i.i, label %._crit_edge452.i.i, label %.lr.ph451.i.i, !llvm.loop !100

._crit_edge452.i.i:                               ; preds = %.lr.ph451.i.i, %middle.block733, %bb.bz
  %i.yn = phi ptr [ null, %bb.bz ], [ %i.yg, %middle.block733 ], [ %i.yg, %.lr.ph451.i.i ] ; 3 uses
  %i.yo = tail call i64 @BrotliHistogramCombineLiteral(ptr noundef %.0363.lcssa.i.i, ptr noundef %i.ru, ptr noundef %.0357.lcssa.i.i, ptr noundef %i.rj, ptr noundef %i.yn, ptr noundef %.0355.i.i, i64 noundef %.0356.lcssa.i.i, i64 noundef %.0108.i.i, i64 noundef 256, i64 noundef %i.ya) #8 ; 2 uses
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %.0355.i.i) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %.0357.lcssa.i.i) #8
  br i1 %.not392.i.i, label %.preheader.i172.i, label %.lr.ph455.preheader.i.i

.lr.ph455.preheader.i.i:                          ; preds = %._crit_edge452.i.i
  %i.yp = shl i64 %.0356.lcssa.i.i, 2             ; 2 uses
  %i.yq = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.yp) #8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.yq, i8 -1, i64 %i.yp, i1 false), !tbaa !33
  br label %.preheader.i172.i

.preheader.i172.i:                                ; preds = %.lr.ph455.preheader.i.i, %._crit_edge452.i.i
  %i.yr = phi ptr [ %i.yq, %.lr.ph455.preheader.i.i ], [ null, %._crit_edge452.i.i ] ; 4 uses
  br i1 %.not.i168.i, label %._crit_edge474.i.i, label %.lr.ph473.i.i

.lr.ph473.i.i:                                    ; preds = %.preheader.i172.i
  %i.ys = getelementptr inbounds nuw i8, ptr %i.ru, i64 1024
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ru, i64 1032
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ru, i64 1040 ; 2 uses
  %.not492.i.i = icmp eq i64 %i.yo, 0
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ce, %.lr.ph473.i.i
  %.0338472.i.i = phi i32 [ 0, %.lr.ph473.i.i ], [ %.1339.i.i, %bb.ce ] ; 3 uses
  %.4471.i.i = phi i64 [ 0, %.lr.ph473.i.i ], [ %i.aac, %bb.ce ] ; 4 uses
  %.3353470.i.i = phi i64 [ 0, %.lr.ph473.i.i ], [ %.4354.lcssa.i.i, %bb.ce ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ru, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.yt, align 8, !tbaa !34
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.rs, i64 %.4471.i.i ; 2 uses
end_hunk_0
begin_hunk_1_@BrotliSplitBlock:bb.a
  br i1 %i.bdy, label %ClearHistogramsCommand.exit.i.i.epil.preheader, label %ClearHistogramsCommand.exit.i.i

ClearHistogramsCommand.exit.i.i:                  ; preds = %ClearHistogramsCommand.exit.i.i.preheader, %ClearHistogramsCommand.exit.i.i
  %.010.i.i139 = phi i64 [ %i.blz, %ClearHistogramsCommand.exit.i.i ], [ 0, %ClearHistogramsCommand.exit.i.i.preheader ] ; 4 uses
  %niter996 = phi i64 [ %niter996.next.1, %ClearHistogramsCommand.exit.i.i ], [ 0, %ClearHistogramsCommand.exit.i.i.preheader ]
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bdf, i64 %.010.i.i139
  %i.bkz = load i8, ptr %i.bky, align 1, !tbaa !32
  %i.bla = zext i8 %i.bkz to i64
  %i.blb = getelementptr inbounds nuw [2832 x i8], ptr %i.ahh, i64 %i.bla ; 2 uses
  %i.blc = getelementptr inbounds nuw [2 x i8], ptr %i.acv, i64 %.010.i.i139
  %i.bld = load i16, ptr %i.blc, align 2, !tbaa !76
  %i.ble = zext i16 %i.bld to i64
  %i.blf = getelementptr inbounds nuw [4 x i8], ptr %i.blb, i64 %i.ble ; 2 uses
  %i.blg = load i32, ptr %i.blf, align 4, !tbaa !33
  %i.blh = add i32 %i.blg, 1
  store i32 %i.blh, ptr %i.blf, align 4, !tbaa !33
  %i.bli = getelementptr inbounds nuw i8, ptr %i.blb, i64 2816 ; 2 uses
  %i.blj = load i64, ptr %i.bli, align 8, !tbaa !122
  %i.blk = add i64 %i.blj, 1
  store i64 %i.blk, ptr %i.bli, align 8, !tbaa !122
  %i.bll = or disjoint i64 %.010.i.i139, 1        ; 2 uses
  %i.blm = getelementptr inbounds nuw i8, ptr %i.bdf, i64 %i.bll
  %i.bln = load i8, ptr %i.blm, align 1, !tbaa !32
  %i.blo = zext i8 %i.bln to i64
  %i.blp = getelementptr inbounds nuw [2832 x i8], ptr %i.ahh, i64 %i.blo ; 2 uses
  %i.blq = getelementptr inbounds nuw [2 x i8], ptr %i.acv, i64 %i.bll
  %i.blr = load i16, ptr %i.blq, align 2, !tbaa !76
  %i.bls = zext i16 %i.blr to i64
  %i.blt = getelementptr inbounds nuw [4 x i8], ptr %i.blp, i64 %i.bls ; 2 uses
  %i.blu = load i32, ptr %i.blt, align 4, !tbaa !33
  %i.blv = add i32 %i.blu, 1
  store i32 %i.blv, ptr %i.blt, align 4, !tbaa !33
  %i.blw = getelementptr inbounds nuw i8, ptr %i.blp, i64 2816 ; 2 uses
  %i.blx = load i64, ptr %i.blw, align 8, !tbaa !122
  %i.bly = add i64 %i.blx, 1
  store i64 %i.bly, ptr %i.blw, align 8, !tbaa !122
  %i.blz = add nuw i64 %.010.i.i139, 2            ; 2 uses
  %niter996.next.1 = add i64 %niter996, 2         ; 2 uses
  %niter996.ncmp.1 = icmp eq i64 %niter996.next.1, %unroll_iter995
  br i1 %niter996.ncmp.1, label %BuildBlockHistogramsCommand.exit.i.unr-lcssa, label %ClearHistogramsCommand.exit.i.i, !llvm.loop !146

BuildBlockHistogramsCommand.exit.i.unr-lcssa:     ; preds = %ClearHistogramsCommand.exit.i.i
  br i1 %lcmp.mod993.not, label %BuildBlockHistogramsCommand.exit.i, label %ClearHistogramsCommand.exit.i.i.epil.preheader

ClearHistogramsCommand.exit.i.i.epil.preheader:   ; preds = %BuildBlockHistogramsCommand.exit.i.unr-lcssa, %ClearHistogramsCommand.exit.i.i.preheader
  %.010.i.i139.epil.init = phi i64 [ 0, %ClearHistogramsCommand.exit.i.i.preheader ], [ %i.blz, %BuildBlockHistogramsCommand.exit.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod994)
  %i.bma = getelementptr inbounds nuw i8, ptr %i.bdf, i64 %.010.i.i139.epil.init
  %i.bmb = load i8, ptr %i.bma, align 1, !tbaa !32
  %i.bmc = zext i8 %i.bmb to i64
  %i.bmd = getelementptr inbounds nuw [2832 x i8], ptr %i.ahh, i64 %i.bmc ; 2 uses
  %i.bme = getelementptr inbounds nuw [2 x i8], ptr %i.acv, i64 %.010.i.i139.epil.init
  %i.bmf = load i16, ptr %i.bme, align 2, !tbaa !76
  %i.bmg = zext i16 %i.bmf to i64
  %i.bmh = getelementptr inbounds nuw [4 x i8], ptr %i.bmd, i64 %i.bmg ; 2 uses
  %i.bmi = load i32, ptr %i.bmh, align 4, !tbaa !33
  %i.bmj = add i32 %i.bmi, 1
  store i32 %i.bmj, ptr %i.bmh, align 4, !tbaa !33
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.bmd, i64 2816 ; 2 uses
  %i.bml = load i64, ptr %i.bmk, align 8, !tbaa !122
  %i.bmm = add i64 %i.bml, 1
  store i64 %i.bmm, ptr %i.bmk, align 8, !tbaa !122
  br label %BuildBlockHistogramsCommand.exit.i

BuildBlockHistogramsCommand.exit.i:               ; preds = %BuildBlockHistogramsCommand.exit.i.unr-lcssa, %ClearHistogramsCommand.exit.i.i.epil.preheader
  %i.bmn = add nuw nsw i64 %.0181.i, 1            ; 2 uses
  %exitcond.not.i141 = icmp eq i64 %i.bmn, %i.bdt
  br i1 %exitcond.not.i141, label %bb.em, label %bb.dm, !llvm.loop !147

bb.em:                                            ; preds = %BuildBlockHistogramsCommand.exit.i
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.bdj) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.bdl) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.bdo) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef nonnull %i.bdq) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef nonnull %i.ahh) #8
  %.not.i168.i142 = icmp eq i64 %.0108.i.i121, 0  ; 5 uses
  br i1 %.not.i168.i142, label %.thread.i.i144, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.bmo = shl i64 %.0108.i.i121, 2
  %i.bmp = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.bmo) #8 ; 2 uses
  %i.bmq = add i64 %.0108.i.i121, 256             ; 2 uses
  %.not388.i.i143 = icmp eq i64 %i.bmq, 0
  br i1 %.not388.i.i143, label %.thread411.i.i146, label %.thread.i.i144

.thread.i.i144:                                   ; preds = %bb.en, %bb.em
  %i.bmr = phi i64 [ %i.bmq, %bb.en ], [ 256, %bb.em ] ; 3 uses
  %i.bms = phi ptr [ %i.bmp, %bb.en ], [ null, %bb.em ] ; 2 uses
  %i.bmt = shl i64 %i.bmr, 2
  %i.bmu = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.bmt) #8 ; 2 uses
  %i.bmv = shl i64 %.0108.i.i121, 4
  %i.bmw = add i64 %i.bmv, 1008
  %i.bmx = lshr i64 %i.bmw, 6                     ; 2 uses
  %.not389.i.i145 = icmp eq i64 %i.bmx, 0
  br i1 %.not389.i.i145, label %.thread409.i.i147, label %.thread411.i.i146

.thread411.i.i146:                                ; preds = %.thread.i.i144, %bb.en
  %.sink563.i.i = phi i64 [ %i.bmx, %.thread.i.i144 ], [ 288230376151711695, %bb.en ] ; 3 uses
  %i.bmy = phi i64 [ %i.bmr, %.thread.i.i144 ], [ 0, %bb.en ]
  %i.bmz = phi ptr [ %i.bms, %.thread.i.i144 ], [ %i.bmp, %bb.en ]
  %i.bna = phi ptr [ %i.bmu, %.thread.i.i144 ], [ null, %bb.en ]
  %i.bnb = mul i64 %.sink563.i.i, 2832
  %i.bnc = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.bnb) #8
  %i.bnd = shl nuw nsw i64 %.sink563.i.i, 2
  %i.bne = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.bnd) #8
  br label %.thread409.i.i147

.thread409.i.i147:                                ; preds = %.thread411.i.i146, %.thread.i.i144
  %i.bnf = phi ptr [ %i.bnc, %.thread411.i.i146 ], [ null, %.thread.i.i144 ] ; 2 uses
  %i.bng = phi i64 [ %i.bmy, %.thread411.i.i146 ], [ %i.bmr, %.thread.i.i144 ]
  %i.bnh = phi ptr [ %i.bmz, %.thread411.i.i146 ], [ %i.bms, %.thread.i.i144 ] ; 9 uses
  %i.bni = phi ptr [ %i.bna, %.thread411.i.i146 ], [ %i.bmu, %.thread.i.i144 ] ; 10 uses
  %i.bnj = phi i64 [ %.sink563.i.i, %.thread411.i.i146 ], [ 0, %.thread.i.i144 ] ; 2 uses
  %i.bnk = phi ptr [ %i.bne, %.thread411.i.i146 ], [ null, %.thread.i.i144 ] ; 2 uses
  br i1 %.not.i168.i142, label %.new997, label %bb.eo

bb.eo:                                            ; preds = %.thread409.i.i147
  %i.bnl = tail call i64 @llvm.umin.i64(i64 %.0108.i.i121, i64 64)
  %i.bnm = mul nuw nsw i64 %i.bnl, 2832
  %i.bnn = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.bnm) #8
  br label %.new997

.new997:                                          ; preds = %bb.eo, %.thread409.i.i147
  %i.bno = phi ptr [ %i.bnn, %bb.eo ], [ null, %.thread409.i.i147 ] ; 4 uses
  %i.bnp = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef 49176) #8 ; 3 uses
  %.not391.i.i148 = icmp eq ptr %i.bni, null
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.bni, i64 1024 ; 5 uses
  %i.bnr = select i1 %.not391.i.i148, ptr null, ptr %i.bnq ; 4 uses
  %i.bns = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef 5664) #8 ; 10 uses
  %i.bnt = shl i64 %i.bng, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bni, i8 0, i64 %i.bnt, i1 false)
  %xtraiter999 = and i64 %i.aek, 1
  %unroll_iter1004 = and i64 %i.aek, -2
  br label %bb.ep

.preheader414.peel.begin.i.i154.unr-lcssa:        ; preds = %bb.ep
  %lcmp.mod1001.not = icmp eq i64 %xtraiter999, 0
  br i1 %lcmp.mod1001.not, label %.preheader414.peel.begin.i.i154, label %.epil.preheader998

.epil.preheader998:                               ; preds = %.preheader414.peel.begin.i.i154.unr-lcssa
  %lcmp.mod1003 = trunc i64 %i.aek to i1
  tail call void @llvm.assume(i1 %lcmp.mod1003)
  %i.bnu = getelementptr inbounds nuw [4 x i8], ptr %i.bnr, i64 %spec.select.i169.i152.1 ; 2 uses
  %i.bnv = load i32, ptr %i.bnu, align 4, !tbaa !33
  %i.bnw = add i32 %i.bnv, 1
  store i32 %i.bnw, ptr %i.bnu, align 4, !tbaa !33
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bdf, i64 %i.bov
  %i.bny = load i8, ptr %i.bnx, align 1, !tbaa !32
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bdf, i64 %i.bov
  %i.boa = getelementptr inbounds nuw i8, ptr %i.bnz, i64 1
  %i.bob = load i8, ptr %i.boa, align 1, !tbaa !32
  %.not402.i.i151.epil = icmp ne i8 %i.bny, %i.bob
  %i.boc = zext i1 %.not402.i.i151.epil to i64
  %spec.select.i169.i152.epil = add i64 %spec.select.i169.i152.1, %i.boc
  br label %.preheader414.peel.begin.i.i154

.preheader414.peel.begin.i.i154:                  ; preds = %.preheader414.peel.begin.i.i154.unr-lcssa, %.epil.preheader998
  %spec.select.i169.i152.lcssa = phi i64 [ %spec.select.i169.i152.1, %.preheader414.peel.begin.i.i154.unr-lcssa ], [ %spec.select.i169.i152.epil, %.epil.preheader998 ]
  %i.bod = getelementptr inbounds nuw [4 x i8], ptr %i.bnr, i64 %spec.select.i169.i152.lcssa ; 2 uses
  %i.boe = load i32, ptr %i.bod, align 4, !tbaa !33
  %i.bof = add i32 %i.boe, 1
  store i32 %i.bof, ptr %i.bod, align 4, !tbaa !33
  %i.bog = getelementptr inbounds nuw i8, ptr %i.bni, i64 256 ; 3 uses
  %i.boh = getelementptr inbounds nuw i8, ptr %i.bni, i64 512 ; 7 uses
  %i.boi = getelementptr inbounds nuw i8, ptr %i.bni, i64 768 ; 6 uses
  br i1 %.not.i168.i142, label %._crit_edge445.i.i190, label %.lr.ph422.i.i155

bb.ep:                                            ; preds = %bb.ep, %.new997
  %.0345416.i.i149 = phi i64 [ 0, %.new997 ], [ %spec.select.i169.i152.1, %bb.ep ] ; 2 uses
  %.0347415.i.i150 = phi i64 [ 0, %.new997 ], [ %i.bov, %bb.ep ] ; 3 uses
  %niter1005 = phi i64 [ 0, %.new997 ], [ %niter1005.next.1, %bb.ep ]
  %i.boj = getelementptr inbounds nuw [4 x i8], ptr %i.bnr, i64 %.0345416.i.i149 ; 2 uses
  %i.bok = load i32, ptr %i.boj, align 4, !tbaa !33
  %i.bol = add i32 %i.bok, 1
  store i32 %i.bol, ptr %i.boj, align 4, !tbaa !33
  %i.bom = or disjoint i64 %.0347415.i.i150, 1    ; 2 uses
  %i.bon = getelementptr inbounds nuw i8, ptr %i.bdf, i64 %.0347415.i.i150
  %i.boo = load i8, ptr %i.bon, align 1, !tbaa !32
  %i.bop = getelementptr inbounds nuw i8, ptr %i.bdf, i64 %i.bom
  %i.boq = load i8, ptr %i.bop, align 1, !tbaa !32
  %.not402.i.i151 = icmp ne i8 %i.boo, %i.boq
  %i.bor = zext i1 %.not402.i.i151 to i64
  %spec.select.i169.i152 = add i64 %.0345416.i.i149, %i.bor ; 2 uses
  %i.bos = getelementptr inbounds nuw [4 x i8], ptr %i.bnr, i64 %spec.select.i169.i152 ; 2 uses
  %i.bot = load i32, ptr %i.bos, align 4, !tbaa !33
  %i.bou = add i32 %i.bot, 1
  store i32 %i.bou, ptr %i.bos, align 4, !tbaa !33
  %i.bov = add nuw i64 %.0347415.i.i150, 2        ; 4 uses
  %i.bow = getelementptr inbounds nuw i8, ptr %i.bdf, i64 %i.bom
  %i.box = load i8, ptr %i.bow, align 1, !tbaa !32
  %i.boy = getelementptr inbounds nuw i8, ptr %i.bdf, i64 %i.bov
  %i.boz = load i8, ptr %i.boy, align 1, !tbaa !32
  %.not402.i.i151.1 = icmp ne i8 %i.box, %i.boz
  %i.bpa = zext i1 %.not402.i.i151.1 to i64
  %spec.select.i169.i152.1 = add i64 %spec.select.i169.i152, %i.bpa ; 4 uses
  %niter1005.next.1 = add nuw i64 %niter1005, 2   ; 2 uses
  %niter1005.ncmp.1 = icmp eq i64 %niter1005.next.1, %unroll_iter1004
  br i1 %niter1005.ncmp.1, label %.preheader414.peel.begin.i.i154.unr-lcssa, label %bb.ep, !llvm.loop !148

.lr.ph422.i.i155:                                 ; preds = %.preheader414.peel.begin.i.i154, %._crit_edge434.i.i188
  %indvars.iv.i.i156 = phi i64 [ %indvars.iv.next.i.i189, %._crit_edge434.i.i188 ], [ %.0108.i.i121, %.preheader414.peel.begin.i.i154 ] ; 4 uses
  %.1348443.i.i157 = phi i64 [ %i.btp, %._crit_edge434.i.i188 ], [ 0, %.preheader414.peel.begin.i.i154 ] ; 4 uses
  %.0350442.i.i158 = phi i64 [ %.2352.lcssa.i.i172, %._crit_edge434.i.i188 ], [ 0, %.preheader414.peel.begin.i.i154 ]
  %.0356441.i.i159 = phi i64 [ %i.bto, %._crit_edge434.i.i188 ], [ 0, %.preheader414.peel.begin.i.i154 ] ; 2 uses
  %.0357440.i.i160 = phi ptr [ %.1358.i.i177, %._crit_edge434.i.i188 ], [ %i.bnk, %.preheader414.peel.begin.i.i154 ] ; 3 uses
  %.0359439.i.i161 = phi i64 [ %.1360.i.i176, %._crit_edge434.i.i188 ], [ %i.bnj, %.preheader414.peel.begin.i.i154 ] ; 5 uses
  %.0361438.i.i162 = phi i64 [ %.1362.lcssa.i.i185, %._crit_edge434.i.i188 ], [ 0, %.preheader414.peel.begin.i.i154 ] ; 3 uses
  %.0363437.i.i163 = phi ptr [ %.1364.i.i175, %._crit_edge434.i.i188 ], [ %i.bnf, %.preheader414.peel.begin.i.i154 ] ; 3 uses
  %.0365436.i.i164 = phi i64 [ %.1366.i.i174, %._crit_edge434.i.i188 ], [ %i.bnj, %.preheader414.peel.begin.i.i154 ] ; 5 uses
  %.0367435.i.i165 = phi i64 [ %.1368.lcssa.i.i184, %._crit_edge434.i.i188 ], [ 0, %.preheader414.peel.begin.i.i154 ] ; 3 uses
  %umax1014 = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.i156, i64 1)
  %umin1015 = tail call i64 @llvm.umin.i64(i64 %umax1014, i64 64) ; 2 uses
  %i.bpb = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.i156, i64 1)
  %umax506.i.i = tail call i64 @llvm.umin.i64(i64 %i.bpb, i64 64)
  %i.bpc = getelementptr [4 x i8], ptr %i.bnq, i64 %.1348443.i.i157
  br label %bb.eq

bb.eq:                                            ; preds = %bb.er, %.lr.ph422.i.i155
  %.0343420.i.i166 = phi i64 [ 0, %.lr.ph422.i.i155 ], [ %i.bqk, %bb.er ] ; 7 uses
  %.1351419.i.i167 = phi i64 [ %.0350442.i.i158, %.lr.ph422.i.i155 ], [ %.2352.lcssa.i.i172, %bb.er ] ; 3 uses
  %i.bpd = getelementptr [4 x i8], ptr %i.bpc, i64 %.0343420.i.i166
  %i.bpe = load i32, ptr %i.bpd, align 4, !tbaa !33 ; 4 uses
  %i.bpf = zext i32 %i.bpe to i64                 ; 3 uses
  %i.bpg = getelementptr inbounds nuw [2832 x i8], ptr %i.bno, i64 %.0343420.i.i166 ; 7 uses
  %i.bph = getelementptr inbounds nuw i8, ptr %i.bpg, i64 2816
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bpg, i64 2824 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bpg, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.bpi, align 8, !tbaa !118
  %.not487.i.i168 = icmp eq i32 %i.bpe, 0
  br i1 %.not487.i.i168, label %bb.er, label %.lr.ph.i171.i169.preheader

.lr.ph.i171.i169.preheader:                       ; preds = %bb.eq
  %xtraiter1006 = and i64 %i.bpf, 1
  %i.bpj = icmp eq i32 %i.bpe, 1
  br i1 %i.bpj, label %.lr.ph.i171.i169.epil.preheader, label %.lr.ph.i171.i169.preheader.new

.lr.ph.i171.i169.preheader.new:                   ; preds = %.lr.ph.i171.i169.preheader
  %unroll_iter1011 = and i64 %i.bpf, 4294967294
  br label %.lr.ph.i171.i169

.lr.ph.i171.i169:                                 ; preds = %.lr.ph.i171.i169, %.lr.ph.i171.i169.preheader.new
  %.2352417.i.i170 = phi i64 [ %.1351419.i.i167, %.lr.ph.i171.i169.preheader.new ], [ %i.bpq, %.lr.ph.i171.i169 ] ; 3 uses
  %niter1012 = phi i64 [ 0, %.lr.ph.i171.i169.preheader.new ], [ %niter1012.next.1, %.lr.ph.i171.i169 ]
  %i.bpk = getelementptr inbounds nuw [2 x i8], ptr %i.acv, i64 %.2352417.i.i170
  %i.bpl = load i16, ptr %i.bpk, align 2, !tbaa !76
  %i.bpm = zext i16 %i.bpl to i64
  %i.bpn = getelementptr inbounds nuw [4 x i8], ptr %i.bpg, i64 %i.bpm ; 2 uses
  %i.bpo = load i32, ptr %i.bpn, align 4, !tbaa !33
  %i.bpp = add i32 %i.bpo, 1
  store i32 %i.bpp, ptr %i.bpn, align 4, !tbaa !33
  %i.bpq = add i64 %.2352417.i.i170, 2            ; 3 uses
  %i.bpr = getelementptr [2 x i8], ptr %i.acv, i64 %.2352417.i.i170
  %i.bps = getelementptr i8, ptr %i.bpr, i64 2
  %i.bpt = load i16, ptr %i.bps, align 2, !tbaa !76
  %i.bpu = zext i16 %i.bpt to i64
  %i.bpv = getelementptr inbounds nuw [4 x i8], ptr %i.bpg, i64 %i.bpu ; 2 uses
  %i.bpw = load i32, ptr %i.bpv, align 4, !tbaa !33
  %i.bpx = add i32 %i.bpw, 1
  store i32 %i.bpx, ptr %i.bpv, align 4, !tbaa !33
  %niter1012.next.1 = add i64 %niter1012, 2       ; 2 uses
  %niter1012.ncmp.1 = icmp eq i64 %niter1012.next.1, %unroll_iter1011
  br i1 %niter1012.ncmp.1, label %._crit_edge.i.i171.unr-lcssa, label %.lr.ph.i171.i169, !llvm.loop !149

._crit_edge.i.i171.unr-lcssa:                     ; preds = %.lr.ph.i171.i169
  %lcmp.mod1008.not = icmp eq i64 %xtraiter1006, 0
  br i1 %lcmp.mod1008.not, label %._crit_edge.i.i171, label %.lr.ph.i171.i169.epil.preheader

.lr.ph.i171.i169.epil.preheader:                  ; preds = %._crit_edge.i.i171.unr-lcssa, %.lr.ph.i171.i169.preheader
  %.2352417.i.i170.epil.init = phi i64 [ %.1351419.i.i167, %.lr.ph.i171.i169.preheader ], [ %i.bpq, %._crit_edge.i.i171.unr-lcssa ] ; 2 uses
  %lcmp.mod1010 = trunc i32 %i.bpe to i1
  tail call void @llvm.assume(i1 %lcmp.mod1010)
  %i.bpy = add i64 %.2352417.i.i170.epil.init, 1
  %i.bpz = getelementptr inbounds nuw [2 x i8], ptr %i.acv, i64 %.2352417.i.i170.epil.init
  %i.bqa = load i16, ptr %i.bpz, align 2, !tbaa !76
  %i.bqb = zext i16 %i.bqa to i64
  %i.bqc = getelementptr inbounds nuw [4 x i8], ptr %i.bpg, i64 %i.bqb ; 2 uses
  %i.bqd = load i32, ptr %i.bqc, align 4, !tbaa !33
  %i.bqe = add i32 %i.bqd, 1
  store i32 %i.bqe, ptr %i.bqc, align 4, !tbaa !33
  br label %._crit_edge.i.i171

._crit_edge.i.i171:                               ; preds = %._crit_edge.i.i171.unr-lcssa, %.lr.ph.i171.i169.epil.preheader
  %.lcssa871 = phi i64 [ %i.bpq, %._crit_edge.i.i171.unr-lcssa ], [ %i.bpy, %.lr.ph.i171.i169.epil.preheader ]
  store i64 %i.bpf, ptr %i.bph, align 8, !tbaa !122
  br label %bb.er

bb.er:                                            ; preds = %._crit_edge.i.i171, %bb.eq
  %.2352.lcssa.i.i172 = phi i64 [ %.lcssa871, %._crit_edge.i.i171 ], [ %.1351419.i.i167, %bb.eq ] ; 2 uses
  %i.bqf = tail call double @BrotliPopulationCostCommand(ptr noundef nonnull %i.bpg) #8
  store double %i.bqf, ptr %i.bpi, align 8, !tbaa !118
  %i.bqg = trunc i64 %.0343420.i.i166 to i32      ; 2 uses
  %i.bqh = getelementptr inbounds nuw [4 x i8], ptr %i.bog, i64 %.0343420.i.i166
  store i32 %i.bqg, ptr %i.bqh, align 4, !tbaa !33
  %i.bqi = getelementptr inbounds nuw [4 x i8], ptr %i.boh, i64 %.0343420.i.i166
  store i32 %i.bqg, ptr %i.bqi, align 4, !tbaa !33
  %i.bqj = getelementptr inbounds nuw [4 x i8], ptr %i.bni, i64 %.0343420.i.i166
  store i32 1, ptr %i.bqj, align 4, !tbaa !33
  %i.bqk = add nuw nsw i64 %.0343420.i.i166, 1    ; 2 uses
  %exitcond503.not.i.i = icmp eq i64 %i.bqk, %umax506.i.i
  br i1 %exitcond503.not.i.i, label %._crit_edge423.i.i173, label %bb.eq, !llvm.loop !150

._crit_edge423.i.i173:                            ; preds = %bb.er
  %i.bql = sub nuw i64 %.0108.i.i121, %.1348443.i.i157
  %i.bqm = tail call i64 @llvm.umin.i64(i64 %i.bql, i64 64) ; 2 uses
  %i.bqn = tail call i64 @BrotliHistogramCombineCommand(ptr noundef nonnull %i.bno, ptr noundef %i.bns, ptr noundef nonnull %i.bni, ptr noundef nonnull %i.boh, ptr noundef nonnull %i.bog, ptr noundef %i.bnp, i64 noundef %i.bqm, i64 noundef %i.bqm, i64 noundef 64, i64 noundef 2048) #8 ; 5 uses
  %i.bqo = add i64 %i.bqn, %.0367435.i.i165       ; 3 uses
  %i.bqp = icmp ult i64 %.0365436.i.i164, %i.bqo
  br i1 %i.bqp, label %bb.es, label %bb.ex

bb.es:                                            ; preds = %._crit_edge423.i.i173
  %i.bqq = icmp eq i64 %.0365436.i.i164, 0        ; 2 uses
  %i.bqr = select i1 %i.bqq, i64 %i.bqo, i64 %.0365436.i.i164
  br label %bb.et

bb.et:                                            ; preds = %bb.et, %bb.es
  %.0341.i.i230 = phi i64 [ %i.bqr, %bb.es ], [ %i.bqt, %bb.et ] ; 4 uses
  %i.bqs = icmp ult i64 %.0341.i.i230, %i.bqo
  %i.bqt = shl i64 %.0341.i.i230, 1
  br i1 %i.bqs, label %bb.et, label %bb.eu, !llvm.loop !151

bb.eu:                                            ; preds = %bb.et
  %i.bqu = mul i64 %.0341.i.i230, 2832
  %i.bqv = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.bqu) #8 ; 2 uses
  br i1 %i.bqq, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.bqw = mul i64 %.0365436.i.i164, 2832
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bqv, ptr align 8 %.0363437.i.i163, i64 %i.bqw, i1 false)
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %.0363437.i.i163) #8
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %._crit_edge423.i.i173
  %.1366.i.i174 = phi i64 [ %.0341.i.i230, %bb.ew ], [ %.0365436.i.i164, %._crit_edge423.i.i173 ]
  %.1364.i.i175 = phi ptr [ %i.bqv, %bb.ew ], [ %.0363437.i.i163, %._crit_edge423.i.i173 ] ; 3 uses
  %i.bqx = add i64 %i.bqn, %.0361438.i.i162       ; 3 uses
  %i.bqy = icmp ult i64 %.0359439.i.i161, %i.bqx
  br i1 %i.bqy, label %bb.ey, label %bb.fd

bb.ey:                                            ; preds = %bb.ex
  %i.bqz = icmp eq i64 %.0359439.i.i161, 0        ; 2 uses
  %i.bra = select i1 %i.bqz, i64 %i.bqx, i64 %.0359439.i.i161
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ez, %bb.ey
  %.0340.i.i229 = phi i64 [ %i.bra, %bb.ey ], [ %i.brc, %bb.ez ] ; 4 uses
  %i.brb = icmp ult i64 %.0340.i.i229, %i.bqx
  %i.brc = shl i64 %.0340.i.i229, 1
  br i1 %i.brb, label %bb.ez, label %bb.fa, !llvm.loop !152

bb.fa:                                            ; preds = %bb.ez
  %i.brd = shl i64 %.0340.i.i229, 2
  %i.bre = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.brd) #8 ; 2 uses
  br i1 %i.bqz, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.brf = shl i64 %.0359439.i.i161, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bre, ptr align 4 %.0357440.i.i160, i64 %i.brf, i1 false)
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %.0357440.i.i160) #8
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.ex
  %.1360.i.i176 = phi i64 [ %.0340.i.i229, %bb.fc ], [ %.0359439.i.i161, %bb.ex ]
  %.1358.i.i177 = phi ptr [ %i.bre, %bb.fc ], [ %.0357440.i.i160, %bb.ex ] ; 3 uses
  %.not488.i.i = icmp eq i64 %i.bqn, 0
  br i1 %.not488.i.i, label %.lr.ph433.i.i183, label %.lr.ph429.i.i178

.lr.ph433.i.i183:                                 ; preds = %.lr.ph429.i.i178, %bb.fd
  %.1368.lcssa.i.i184 = phi i64 [ %.0367435.i.i165, %bb.fd ], [ %i.brj, %.lr.ph429.i.i178 ]
  %.1362.lcssa.i.i185 = phi i64 [ %.0361438.i.i162, %bb.fd ], [ %i.brt, %.lr.ph429.i.i178 ]
  %i.brg = trunc i64 %.0356441.i.i159 to i32      ; 5 uses
  %i.brh = getelementptr [4 x i8], ptr %i.bnh, i64 %.1348443.i.i157 ; 5 uses
  %xtraiter1016 = and i64 %umin1015, 3            ; 3 uses
  %i.bri = icmp ult i64 %indvars.iv.i.i156, 4
  br i1 %i.bri, label %.epil.preheader1013, label %.lr.ph433.i.i183.new

.lr.ph433.i.i183.new:                             ; preds = %.lr.ph433.i.i183
  %unroll_iter1020 = and i64 %umin1015, 124
  br label %bb.fe

.lr.ph429.i.i178:                                 ; preds = %bb.fd, %.lr.ph429.i.i178
  %.1344427.i.i179 = phi i64 [ %i.brz, %.lr.ph429.i.i178 ], [ 0, %bb.fd ] ; 3 uses
  %.1362426.i.i180 = phi i64 [ %i.brt, %.lr.ph429.i.i178 ], [ %.0361438.i.i162, %bb.fd ] ; 2 uses
  %.1368425.i.i181 = phi i64 [ %i.brj, %.lr.ph429.i.i178 ], [ %.0367435.i.i165, %bb.fd ] ; 2 uses
  %i.brj = add i64 %.1368425.i.i181, 1            ; 2 uses
  %i.brk = getelementptr inbounds nuw [2832 x i8], ptr %.1364.i.i175, i64 %.1368425.i.i181
  %i.brl = getelementptr inbounds nuw [4 x i8], ptr %i.bog, i64 %.1344427.i.i179 ; 3 uses
  %i.brm = load i32, ptr %i.brl, align 4, !tbaa !33
  %i.brn = zext i32 %i.brm to i64
  %i.bro = getelementptr inbounds nuw [2832 x i8], ptr %i.bno, i64 %i.brn
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2832) %i.brk, ptr noundef nonnull align 8 dereferenceable(2832) %i.bro, i64 2832, i1 false), !tbaa.struct !153
  %i.brp = load i32, ptr %i.brl, align 4, !tbaa !33
  %i.brq = zext i32 %i.brp to i64
  %i.brr = getelementptr inbounds nuw [4 x i8], ptr %i.bni, i64 %i.brq
  %i.brs = load i32, ptr %i.brr, align 4, !tbaa !33
  %i.brt = add i64 %.1362426.i.i180, 1            ; 2 uses
  %i.bru = getelementptr inbounds nuw [4 x i8], ptr %.1358.i.i177, i64 %.1362426.i.i180
  store i32 %i.brs, ptr %i.bru, align 4, !tbaa !33
  %i.brv = trunc i64 %.1344427.i.i179 to i32
  %i.brw = load i32, ptr %i.brl, align 4, !tbaa !33
  %i.brx = zext i32 %i.brw to i64
  %i.bry = getelementptr inbounds nuw [4 x i8], ptr %i.boi, i64 %i.brx
  store i32 %i.brv, ptr %i.bry, align 4, !tbaa !33
  %i.brz = add nuw i64 %.1344427.i.i179, 1        ; 2 uses
  %exitcond504.not.i.i182 = icmp eq i64 %i.brz, %i.bqn
  br i1 %exitcond504.not.i.i182, label %.lr.ph433.i.i183, label %.lr.ph429.i.i178, !llvm.loop !154

bb.fe:                                            ; preds = %bb.fe, %.lr.ph433.i.i183.new
  %.2432.i.i186 = phi i64 [ 0, %.lr.ph433.i.i183.new ], [ %i.btf, %bb.fe ] ; 6 uses
  %niter1021 = phi i64 [ 0, %.lr.ph433.i.i183.new ], [ %niter1021.next.3, %bb.fe ]
  %i.bsa = getelementptr inbounds nuw [4 x i8], ptr %i.boh, i64 %.2432.i.i186
  %i.bsb = load i32, ptr %i.bsa, align 4, !tbaa !33
  %i.bsc = zext i32 %i.bsb to i64
  %i.bsd = getelementptr inbounds nuw [4 x i8], ptr %i.boi, i64 %i.bsc
  %i.bse = load i32, ptr %i.bsd, align 4, !tbaa !33
  %i.bsf = add i32 %i.bse, %i.brg
  %i.bsg = getelementptr [4 x i8], ptr %i.brh, i64 %.2432.i.i186
  store i32 %i.bsf, ptr %i.bsg, align 4, !tbaa !33
  %i.bsh = or disjoint i64 %.2432.i.i186, 1       ; 2 uses
  %i.bsi = getelementptr inbounds nuw [4 x i8], ptr %i.boh, i64 %i.bsh
  %i.bsj = load i32, ptr %i.bsi, align 4, !tbaa !33
  %i.bsk = zext i32 %i.bsj to i64
  %i.bsl = getelementptr inbounds nuw [4 x i8], ptr %i.boi, i64 %i.bsk
  %i.bsm = load i32, ptr %i.bsl, align 4, !tbaa !33
  %i.bsn = add i32 %i.bsm, %i.brg
  %i.bso = getelementptr [4 x i8], ptr %i.brh, i64 %i.bsh
  store i32 %i.bsn, ptr %i.bso, align 4, !tbaa !33
  %i.bsp = or disjoint i64 %.2432.i.i186, 2       ; 2 uses
  %i.bsq = getelementptr inbounds nuw [4 x i8], ptr %i.boh, i64 %i.bsp
  %i.bsr = load i32, ptr %i.bsq, align 4, !tbaa !33
  %i.bss = zext i32 %i.bsr to i64
  %i.bst = getelementptr inbounds nuw [4 x i8], ptr %i.boi, i64 %i.bss
  %i.bsu = load i32, ptr %i.bst, align 4, !tbaa !33
  %i.bsv = add i32 %i.bsu, %i.brg
  %i.bsw = getelementptr [4 x i8], ptr %i.brh, i64 %i.bsp
  store i32 %i.bsv, ptr %i.bsw, align 4, !tbaa !33
  %i.bsx = or disjoint i64 %.2432.i.i186, 3       ; 2 uses
  %i.bsy = getelementptr inbounds nuw [4 x i8], ptr %i.boh, i64 %i.bsx
  %i.bsz = load i32, ptr %i.bsy, align 4, !tbaa !33
  %i.bta = zext i32 %i.bsz to i64
  %i.btb = getelementptr inbounds nuw [4 x i8], ptr %i.boi, i64 %i.bta
  %i.btc = load i32, ptr %i.btb, align 4, !tbaa !33
  %i.btd = add i32 %i.btc, %i.brg
  %i.bte = getelementptr [4 x i8], ptr %i.brh, i64 %i.bsx
  store i32 %i.btd, ptr %i.bte, align 4, !tbaa !33
  %i.btf = add nuw nsw i64 %.2432.i.i186, 4       ; 2 uses
  %niter1021.next.3 = add i64 %niter1021, 4       ; 2 uses
  %niter1021.ncmp.3 = icmp eq i64 %niter1021.next.3, %unroll_iter1020
  br i1 %niter1021.ncmp.3, label %._crit_edge434.i.i188.unr-lcssa, label %bb.fe, !llvm.loop !155

._crit_edge434.i.i188.unr-lcssa:                  ; preds = %bb.fe
  %lcmp.mod1018.not = icmp eq i64 %xtraiter1016, 0
  br i1 %lcmp.mod1018.not, label %._crit_edge434.i.i188, label %.epil.preheader1013

.epil.preheader1013:                              ; preds = %._crit_edge434.i.i188.unr-lcssa, %.lr.ph433.i.i183
  %.2432.i.i186.epil.init = phi i64 [ 0, %.lr.ph433.i.i183 ], [ %i.btf, %._crit_edge434.i.i188.unr-lcssa ]
  %lcmp.mod1019 = icmp ne i64 %xtraiter1016, 0
  tail call void @llvm.assume(i1 %lcmp.mod1019)
  br label %bb.ff

bb.ff:                                            ; preds = %bb.ff, %.epil.preheader1013
  %.2432.i.i186.epil = phi i64 [ %.2432.i.i186.epil.init, %.epil.preheader1013 ], [ %i.btn, %bb.ff ] ; 3 uses
  %epil.iter1017 = phi i64 [ 0, %.epil.preheader1013 ], [ %epil.iter1017.next, %bb.ff ]
  %i.btg = getelementptr inbounds nuw [4 x i8], ptr %i.boh, i64 %.2432.i.i186.epil
  %i.bth = load i32, ptr %i.btg, align 4, !tbaa !33
  %i.bti = zext i32 %i.bth to i64
  %i.btj = getelementptr inbounds nuw [4 x i8], ptr %i.boi, i64 %i.bti
  %i.btk = load i32, ptr %i.btj, align 4, !tbaa !33
  %i.btl = add i32 %i.btk, %i.brg
  %i.btm = getelementptr [4 x i8], ptr %i.brh, i64 %.2432.i.i186.epil
  store i32 %i.btl, ptr %i.btm, align 4, !tbaa !33
  %i.btn = add nuw nsw i64 %.2432.i.i186.epil, 1
  %epil.iter1017.next = add i64 %epil.iter1017, 1 ; 2 uses
  %epil.iter1017.cmp.not = icmp eq i64 %epil.iter1017.next, %xtraiter1016
  br i1 %epil.iter1017.cmp.not, label %._crit_edge434.i.i188, label %bb.ff, !llvm.loop !156

._crit_edge434.i.i188:                            ; preds = %bb.ff, %._crit_edge434.i.i188.unr-lcssa
  %i.bto = add i64 %i.bqn, %.0356441.i.i159       ; 2 uses
  %i.btp = add i64 %.1348443.i.i157, 64           ; 2 uses
  %i.btq = icmp ult i64 %i.btp, %.0108.i.i121
  %indvars.iv.next.i.i189 = add i64 %indvars.iv.i.i156, -64
  br i1 %i.btq, label %.lr.ph422.i.i155, label %._crit_edge445.i.i190, !llvm.loop !157

._crit_edge445.i.i190:                            ; preds = %._crit_edge434.i.i188, %.preheader414.peel.begin.i.i154
  %.0363.lcssa.i.i191 = phi ptr [ %i.bnf, %.preheader414.peel.begin.i.i154 ], [ %.1364.i.i175, %._crit_edge434.i.i188 ] ; 4 uses
  %.0357.lcssa.i.i192 = phi ptr [ %i.bnk, %.preheader414.peel.begin.i.i154 ], [ %.1358.i.i177, %._crit_edge434.i.i188 ] ; 2 uses
  %.0356.lcssa.i.i193 = phi i64 [ 0, %.preheader414.peel.begin.i.i154 ], [ %i.bto, %._crit_edge434.i.i188 ] ; 11 uses
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.bno) #8
  %i.btr = shl i64 %.0356.lcssa.i.i193, 6
  %i.bts = lshr i64 %.0356.lcssa.i.i193, 1
  %i.btt = mul i64 %i.bts, %.0356.lcssa.i.i193
  %i.btu = tail call i64 @llvm.umin.i64(i64 %i.btr, i64 %i.btt) ; 3 uses
  %i.btv = icmp ugt i64 %i.btu, 2048
  br i1 %i.btv, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %._crit_edge445.i.i190
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.bnp) #8
  %i.btw = mul i64 %i.btu, 24
  %i.btx = add i64 %i.btw, 24
  %i.bty = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.btx) #8
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %._crit_edge445.i.i190
  %.0355.i.i194 = phi ptr [ %i.bty, %bb.fg ], [ %i.bnp, %._crit_edge445.i.i190 ] ; 2 uses
  %.not392.i.i195 = icmp eq i64 %.0356.lcssa.i.i193, 0 ; 2 uses
  br i1 %.not392.i.i195, label %._crit_edge452.i.i200, label %.lr.ph451.preheader.i.i196

.lr.ph451.preheader.i.i196:                       ; preds = %bb.fh
  %i.btz = shl i64 %.0356.lcssa.i.i193, 2
  %i.bua = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.btz) #8 ; 4 uses
  %min.iters.check792 = icmp ult i64 %.0356.lcssa.i.i193, 8
  br i1 %min.iters.check792, label %.lr.ph451.i.i197.preheader, label %vector.ph793

vector.ph793:                                     ; preds = %.lr.ph451.preheader.i.i196
  %n.vec794 = and i64 %.0356.lcssa.i.i193, -8     ; 3 uses
  br label %vector.body795

vector.body795:                                   ; preds = %vector.body795, %vector.ph793
  %index796 = phi i64 [ 0, %vector.ph793 ], [ %index.next799, %vector.body795 ] ; 2 uses
  %vec.ind797 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph793 ], [ %vec.ind.next800, %vector.body795 ] ; 3 uses
  %step.add798 = add <4 x i32> %vec.ind797, splat (i32 4)
  %i.bub = getelementptr inbounds nuw [4 x i8], ptr %i.bua, i64 %index796 ; 2 uses
  %i.buc = getelementptr inbounds nuw i8, ptr %i.bub, i64 16
  store <4 x i32> %vec.ind797, ptr %i.bub, align 4, !tbaa !33
  store <4 x i32> %step.add798, ptr %i.buc, align 4, !tbaa !33
  %index.next799 = add nuw i64 %index796, 8       ; 2 uses
  %vec.ind.next800 = add <4 x i32> %vec.ind797, splat (i32 8)
  %i.bud = icmp eq i64 %index.next799, %n.vec794
  br i1 %i.bud, label %middle.block801, label %vector.body795, !llvm.loop !158

middle.block801:                                  ; preds = %vector.body795
  %cmp.n802 = icmp eq i64 %.0356.lcssa.i.i193, %n.vec794
  br i1 %cmp.n802, label %._crit_edge452.i.i200, label %.lr.ph451.i.i197.preheader

.lr.ph451.i.i197.preheader:                       ; preds = %.lr.ph451.preheader.i.i196, %middle.block801
  %.2349449.i.i198.ph = phi i64 [ 0, %.lr.ph451.preheader.i.i196 ], [ %n.vec794, %middle.block801 ]
  br label %.lr.ph451.i.i197

.lr.ph451.i.i197:                                 ; preds = %.lr.ph451.i.i197.preheader, %.lr.ph451.i.i197
  %.2349449.i.i198 = phi i64 [ %i.bug, %.lr.ph451.i.i197 ], [ %.2349449.i.i198.ph, %.lr.ph451.i.i197.preheader ] ; 3 uses
  %i.bue = trunc i64 %.2349449.i.i198 to i32
  %i.buf = getelementptr inbounds nuw [4 x i8], ptr %i.bua, i64 %.2349449.i.i198
  store i32 %i.bue, ptr %i.buf, align 4, !tbaa !33
  %i.bug = add nuw i64 %.2349449.i.i198, 1        ; 2 uses
  %exitcond508.not.i.i199 = icmp eq i64 %i.bug, %.0356.lcssa.i.i193
  br i1 %exitcond508.not.i.i199, label %._crit_edge452.i.i200, label %.lr.ph451.i.i197, !llvm.loop !159

._crit_edge452.i.i200:                            ; preds = %.lr.ph451.i.i197, %middle.block801, %bb.fh
  %i.buh = phi ptr [ null, %bb.fh ], [ %i.bua, %middle.block801 ], [ %i.bua, %.lr.ph451.i.i197 ] ; 3 uses
  %i.bui = tail call i64 @BrotliHistogramCombineCommand(ptr noundef %.0363.lcssa.i.i191, ptr noundef %i.bns, ptr noundef %.0357.lcssa.i.i192, ptr noundef %i.bnh, ptr noundef %i.buh, ptr noundef %.0355.i.i194, i64 noundef %.0356.lcssa.i.i193, i64 noundef %.0108.i.i121, i64 noundef 256, i64 noundef %i.btu) #8 ; 2 uses
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %.0355.i.i194) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %.0357.lcssa.i.i192) #8
  br i1 %.not392.i.i195, label %.preheader.i172.i202, label %.lr.ph455.preheader.i.i201

.lr.ph455.preheader.i.i201:                       ; preds = %._crit_edge452.i.i200
  %i.buj = shl i64 %.0356.lcssa.i.i193, 2         ; 2 uses
  %i.buk = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.buj) #8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.buk, i8 -1, i64 %i.buj, i1 false), !tbaa !33
  br label %.preheader.i172.i202

.preheader.i172.i202:                             ; preds = %.lr.ph455.preheader.i.i201, %._crit_edge452.i.i200
  %i.bul = phi ptr [ %i.buk, %.lr.ph455.preheader.i.i201 ], [ null, %._crit_edge452.i.i200 ] ; 4 uses
  br i1 %.not.i168.i142, label %._crit_edge475.i.i, label %.lr.ph474.i.i

.lr.ph474.i.i:                                    ; preds = %.preheader.i172.i202
  %i.bum = getelementptr inbounds nuw i8, ptr %i.bns, i64 2816
  %i.bun = getelementptr inbounds nuw i8, ptr %i.bns, i64 2824
  %i.buo = getelementptr inbounds nuw i8, ptr %i.bns, i64 2832 ; 2 uses
  %.not493.i.i203 = icmp eq i64 %i.bui, 0
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fn, %.lr.ph474.i.i
  %.0338473.i.i = phi i32 [ 0, %.lr.ph474.i.i ], [ %.1339.i.i212, %bb.fn ] ; 3 uses
  %.4472.i.i = phi i64 [ 0, %.lr.ph474.i.i ], [ %i.bvw, %bb.fn ] ; 4 uses
  %.3353471.i.i = phi i64 [ 0, %.lr.ph474.i.i ], [ %.4354.lcssa.i.i207, %bb.fn ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bns, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.bun, align 8, !tbaa !118
  %i.bup = getelementptr inbounds nuw [4 x i8], ptr %i.bnq, i64 %.4472.i.i ; 2 uses
end_hunk_1
begin_hunk_2_@BrotliSplitBlock:bb.a
  br i1 %i.cxo, label %ClearHistogramsDistance.exit.i.i.epil.preheader, label %ClearHistogramsDistance.exit.i.i

ClearHistogramsDistance.exit.i.i:                 ; preds = %ClearHistogramsDistance.exit.i.i.preheader, %ClearHistogramsDistance.exit.i.i
  %.010.i.i315 = phi i64 [ %i.dfp, %ClearHistogramsDistance.exit.i.i ], [ 0, %ClearHistogramsDistance.exit.i.i.preheader ] ; 4 uses
  %niter1068 = phi i64 [ %niter1068.next.1, %ClearHistogramsDistance.exit.i.i ], [ 0, %ClearHistogramsDistance.exit.i.i.preheader ]
  %i.deo = getelementptr inbounds nuw i8, ptr %i.cww, i64 %.010.i.i315
  %i.dep = load i8, ptr %i.deo, align 1, !tbaa !32
  %i.deq = zext i8 %i.dep to i64
  %i.der = getelementptr inbounds nuw [2192 x i8], ptr %i.cay, i64 %i.deq ; 2 uses
  %i.des = getelementptr inbounds nuw [2 x i8], ptr %i.byo, i64 %.010.i.i315
  %i.det = load i16, ptr %i.des, align 2, !tbaa !76
  %i.deu = zext i16 %i.det to i64
  %i.dev = getelementptr inbounds nuw [4 x i8], ptr %i.der, i64 %i.deu ; 2 uses
  %i.dew = load i32, ptr %i.dev, align 4, !tbaa !33
  %i.dex = add i32 %i.dew, 1
  store i32 %i.dex, ptr %i.dev, align 4, !tbaa !33
  %i.dey = getelementptr inbounds nuw i8, ptr %i.der, i64 2176 ; 2 uses
  %i.dez = load i64, ptr %i.dey, align 8, !tbaa !174
  %i.dfa = add i64 %i.dez, 1
  store i64 %i.dfa, ptr %i.dey, align 8, !tbaa !174
  %i.dfb = or disjoint i64 %.010.i.i315, 1        ; 2 uses
  %i.dfc = getelementptr inbounds nuw i8, ptr %i.cww, i64 %i.dfb
  %i.dfd = load i8, ptr %i.dfc, align 1, !tbaa !32
  %i.dfe = zext i8 %i.dfd to i64
  %i.dff = getelementptr inbounds nuw [2192 x i8], ptr %i.cay, i64 %i.dfe ; 2 uses
  %i.dfg = getelementptr inbounds nuw [2 x i8], ptr %i.byo, i64 %i.dfb
  %i.dfh = load i16, ptr %i.dfg, align 2, !tbaa !76
  %i.dfi = zext i16 %i.dfh to i64
  %i.dfj = getelementptr inbounds nuw [4 x i8], ptr %i.dff, i64 %i.dfi ; 2 uses
  %i.dfk = load i32, ptr %i.dfj, align 4, !tbaa !33
  %i.dfl = add i32 %i.dfk, 1
  store i32 %i.dfl, ptr %i.dfj, align 4, !tbaa !33
  %i.dfm = getelementptr inbounds nuw i8, ptr %i.dff, i64 2176 ; 2 uses
  %i.dfn = load i64, ptr %i.dfm, align 8, !tbaa !174
  %i.dfo = add i64 %i.dfn, 1
  store i64 %i.dfo, ptr %i.dfm, align 8, !tbaa !174
  %i.dfp = add nuw i64 %.010.i.i315, 2            ; 2 uses
  %niter1068.next.1 = add i64 %niter1068, 2       ; 2 uses
  %niter1068.ncmp.1 = icmp eq i64 %niter1068.next.1, %unroll_iter1067
  br i1 %niter1068.ncmp.1, label %BuildBlockHistogramsDistance.exit.i.unr-lcssa, label %ClearHistogramsDistance.exit.i.i, !llvm.loop !198

BuildBlockHistogramsDistance.exit.i.unr-lcssa:    ; preds = %ClearHistogramsDistance.exit.i.i
  br i1 %lcmp.mod1065.not, label %BuildBlockHistogramsDistance.exit.i, label %ClearHistogramsDistance.exit.i.i.epil.preheader

ClearHistogramsDistance.exit.i.i.epil.preheader:  ; preds = %BuildBlockHistogramsDistance.exit.i.unr-lcssa, %ClearHistogramsDistance.exit.i.i.preheader
  %.010.i.i315.epil.init = phi i64 [ 0, %ClearHistogramsDistance.exit.i.i.preheader ], [ %i.dfp, %BuildBlockHistogramsDistance.exit.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1066)
  %i.dfq = getelementptr inbounds nuw i8, ptr %i.cww, i64 %.010.i.i315.epil.init
  %i.dfr = load i8, ptr %i.dfq, align 1, !tbaa !32
  %i.dfs = zext i8 %i.dfr to i64
  %i.dft = getelementptr inbounds nuw [2192 x i8], ptr %i.cay, i64 %i.dfs ; 2 uses
  %i.dfu = getelementptr inbounds nuw [2 x i8], ptr %i.byo, i64 %.010.i.i315.epil.init
  %i.dfv = load i16, ptr %i.dfu, align 2, !tbaa !76
  %i.dfw = zext i16 %i.dfv to i64
  %i.dfx = getelementptr inbounds nuw [4 x i8], ptr %i.dft, i64 %i.dfw ; 2 uses
  %i.dfy = load i32, ptr %i.dfx, align 4, !tbaa !33
  %i.dfz = add i32 %i.dfy, 1
  store i32 %i.dfz, ptr %i.dfx, align 4, !tbaa !33
  %i.dga = getelementptr inbounds nuw i8, ptr %i.dft, i64 2176 ; 2 uses
  %i.dgb = load i64, ptr %i.dga, align 8, !tbaa !174
  %i.dgc = add i64 %i.dgb, 1
  store i64 %i.dgc, ptr %i.dga, align 8, !tbaa !174
  br label %BuildBlockHistogramsDistance.exit.i

BuildBlockHistogramsDistance.exit.i:              ; preds = %BuildBlockHistogramsDistance.exit.i.unr-lcssa, %ClearHistogramsDistance.exit.i.i.epil.preheader
  %i.dgd = add nuw nsw i64 %.0181.i261, 1         ; 2 uses
  %exitcond.not.i317 = icmp eq i64 %i.dgd, %i.cxk
  br i1 %exitcond.not.i317, label %bb.ib, label %bb.hb, !llvm.loop !199

bb.ib:                                            ; preds = %BuildBlockHistogramsDistance.exit.i
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.cxa) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.cxc) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.cxf) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef nonnull %i.cxh) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef nonnull %i.cay) #8
  %.not.i168.i318 = icmp eq i64 %.0108.i.i297, 0  ; 5 uses
  br i1 %.not.i168.i318, label %.thread.i.i320, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.dge = shl i64 %.0108.i.i297, 2
  %i.dgf = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.dge) #8 ; 2 uses
  %i.dgg = add i64 %.0108.i.i297, 256             ; 2 uses
  %.not388.i.i319 = icmp eq i64 %i.dgg, 0
  br i1 %.not388.i.i319, label %.thread411.i.i322, label %.thread.i.i320

.thread.i.i320:                                   ; preds = %bb.ic, %bb.ib
  %i.dgh = phi i64 [ %i.dgg, %bb.ic ], [ 256, %bb.ib ] ; 3 uses
  %i.dgi = phi ptr [ %i.dgf, %bb.ic ], [ null, %bb.ib ] ; 2 uses
  %i.dgj = shl i64 %i.dgh, 2
  %i.dgk = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.dgj) #8 ; 2 uses
  %i.dgl = shl i64 %.0108.i.i297, 4
  %i.dgm = add i64 %i.dgl, 1008
  %i.dgn = lshr i64 %i.dgm, 6                     ; 2 uses
  %.not389.i.i321 = icmp eq i64 %i.dgn, 0
  br i1 %.not389.i.i321, label %.thread409.i.i324, label %.thread411.i.i322

.thread411.i.i322:                                ; preds = %.thread.i.i320, %bb.ic
  %.sink563.i.i323 = phi i64 [ %i.dgn, %.thread.i.i320 ], [ 288230376151711695, %bb.ic ] ; 3 uses
  %i.dgo = phi i64 [ %i.dgh, %.thread.i.i320 ], [ 0, %bb.ic ]
  %i.dgp = phi ptr [ %i.dgi, %.thread.i.i320 ], [ %i.dgf, %bb.ic ]
  %i.dgq = phi ptr [ %i.dgk, %.thread.i.i320 ], [ null, %bb.ic ]
  %i.dgr = mul i64 %.sink563.i.i323, 2192
  %i.dgs = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.dgr) #8
  %i.dgt = shl nuw nsw i64 %.sink563.i.i323, 2
  %i.dgu = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.dgt) #8
  br label %.thread409.i.i324

.thread409.i.i324:                                ; preds = %.thread411.i.i322, %.thread.i.i320
  %i.dgv = phi ptr [ %i.dgs, %.thread411.i.i322 ], [ null, %.thread.i.i320 ] ; 2 uses
  %i.dgw = phi i64 [ %i.dgo, %.thread411.i.i322 ], [ %i.dgh, %.thread.i.i320 ]
  %i.dgx = phi ptr [ %i.dgp, %.thread411.i.i322 ], [ %i.dgi, %.thread.i.i320 ] ; 9 uses
  %i.dgy = phi ptr [ %i.dgq, %.thread411.i.i322 ], [ %i.dgk, %.thread.i.i320 ] ; 10 uses
  %i.dgz = phi i64 [ %.sink563.i.i323, %.thread411.i.i322 ], [ 0, %.thread.i.i320 ] ; 2 uses
  %i.dha = phi ptr [ %i.dgu, %.thread411.i.i322 ], [ null, %.thread.i.i320 ] ; 2 uses
  br i1 %.not.i168.i318, label %.new1069, label %bb.id

bb.id:                                            ; preds = %.thread409.i.i324
  %i.dhb = tail call i64 @llvm.umin.i64(i64 %.0108.i.i297, i64 64)
  %i.dhc = mul nuw nsw i64 %i.dhb, 2192
  %i.dhd = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.dhc) #8
  br label %.new1069

.new1069:                                         ; preds = %bb.id, %.thread409.i.i324
  %i.dhe = phi ptr [ %i.dhd, %bb.id ], [ null, %.thread409.i.i324 ] ; 4 uses
  %i.dhf = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef 49176) #8 ; 3 uses
  %.not391.i.i325 = icmp eq ptr %i.dgy, null
  %i.dhg = getelementptr inbounds nuw i8, ptr %i.dgy, i64 1024 ; 5 uses
  %i.dhh = select i1 %.not391.i.i325, ptr null, ptr %i.dhg ; 4 uses
  %i.dhi = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef 4384) #8 ; 10 uses
  %i.dhj = shl i64 %i.dgw, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dgy, i8 0, i64 %i.dhj, i1 false)
  %xtraiter1071 = and i64 %i.cxl, 1
  %unroll_iter1076 = and i64 %i.cxl, -2
  br label %bb.ie

.preheader414.peel.begin.i.i331.unr-lcssa:        ; preds = %bb.ie
  %lcmp.mod1073.not = icmp eq i64 %xtraiter1071, 0
  br i1 %lcmp.mod1073.not, label %.preheader414.peel.begin.i.i331, label %.epil.preheader1070

.epil.preheader1070:                              ; preds = %.preheader414.peel.begin.i.i331.unr-lcssa
  %lcmp.mod1075 = trunc i64 %i.cxl to i1
  tail call void @llvm.assume(i1 %lcmp.mod1075)
  %i.dhk = getelementptr inbounds nuw [4 x i8], ptr %i.dhh, i64 %spec.select.i169.i329.1 ; 2 uses
  %i.dhl = load i32, ptr %i.dhk, align 4, !tbaa !33
  %i.dhm = add i32 %i.dhl, 1
  store i32 %i.dhm, ptr %i.dhk, align 4, !tbaa !33
  %i.dhn = getelementptr inbounds nuw i8, ptr %i.cww, i64 %i.dil
  %i.dho = load i8, ptr %i.dhn, align 1, !tbaa !32
  %i.dhp = getelementptr inbounds nuw i8, ptr %i.cww, i64 %i.dil
  %i.dhq = getelementptr inbounds nuw i8, ptr %i.dhp, i64 1
  %i.dhr = load i8, ptr %i.dhq, align 1, !tbaa !32
  %.not402.i.i328.epil = icmp ne i8 %i.dho, %i.dhr
  %i.dhs = zext i1 %.not402.i.i328.epil to i64
  %spec.select.i169.i329.epil = add i64 %spec.select.i169.i329.1, %i.dhs
  br label %.preheader414.peel.begin.i.i331

.preheader414.peel.begin.i.i331:                  ; preds = %.preheader414.peel.begin.i.i331.unr-lcssa, %.epil.preheader1070
  %spec.select.i169.i329.lcssa = phi i64 [ %spec.select.i169.i329.1, %.preheader414.peel.begin.i.i331.unr-lcssa ], [ %spec.select.i169.i329.epil, %.epil.preheader1070 ]
  %i.dht = getelementptr inbounds nuw [4 x i8], ptr %i.dhh, i64 %spec.select.i169.i329.lcssa ; 2 uses
  %i.dhu = load i32, ptr %i.dht, align 4, !tbaa !33
  %i.dhv = add i32 %i.dhu, 1
  store i32 %i.dhv, ptr %i.dht, align 4, !tbaa !33
  %i.dhw = getelementptr inbounds nuw i8, ptr %i.dgy, i64 256 ; 3 uses
  %i.dhx = getelementptr inbounds nuw i8, ptr %i.dgy, i64 512 ; 7 uses
  %i.dhy = getelementptr inbounds nuw i8, ptr %i.dgy, i64 768 ; 6 uses
  br i1 %.not.i168.i318, label %._crit_edge445.i.i372, label %.lr.ph422.i.i332

bb.ie:                                            ; preds = %bb.ie, %.new1069
  %.0345416.i.i326 = phi i64 [ 0, %.new1069 ], [ %spec.select.i169.i329.1, %bb.ie ] ; 2 uses
  %.0347415.i.i327 = phi i64 [ 0, %.new1069 ], [ %i.dil, %bb.ie ] ; 3 uses
  %niter1077 = phi i64 [ 0, %.new1069 ], [ %niter1077.next.1, %bb.ie ]
  %i.dhz = getelementptr inbounds nuw [4 x i8], ptr %i.dhh, i64 %.0345416.i.i326 ; 2 uses
  %i.dia = load i32, ptr %i.dhz, align 4, !tbaa !33
  %i.dib = add i32 %i.dia, 1
  store i32 %i.dib, ptr %i.dhz, align 4, !tbaa !33
  %i.dic = or disjoint i64 %.0347415.i.i327, 1    ; 2 uses
  %i.did = getelementptr inbounds nuw i8, ptr %i.cww, i64 %.0347415.i.i327
  %i.die = load i8, ptr %i.did, align 1, !tbaa !32
  %i.dif = getelementptr inbounds nuw i8, ptr %i.cww, i64 %i.dic
  %i.dig = load i8, ptr %i.dif, align 1, !tbaa !32
  %.not402.i.i328 = icmp ne i8 %i.die, %i.dig
  %i.dih = zext i1 %.not402.i.i328 to i64
  %spec.select.i169.i329 = add i64 %.0345416.i.i326, %i.dih ; 2 uses
  %i.dii = getelementptr inbounds nuw [4 x i8], ptr %i.dhh, i64 %spec.select.i169.i329 ; 2 uses
  %i.dij = load i32, ptr %i.dii, align 4, !tbaa !33
  %i.dik = add i32 %i.dij, 1
  store i32 %i.dik, ptr %i.dii, align 4, !tbaa !33
  %i.dil = add nuw i64 %.0347415.i.i327, 2        ; 4 uses
  %i.dim = getelementptr inbounds nuw i8, ptr %i.cww, i64 %i.dic
  %i.din = load i8, ptr %i.dim, align 1, !tbaa !32
  %i.dio = getelementptr inbounds nuw i8, ptr %i.cww, i64 %i.dil
  %i.dip = load i8, ptr %i.dio, align 1, !tbaa !32
  %.not402.i.i328.1 = icmp ne i8 %i.din, %i.dip
  %i.diq = zext i1 %.not402.i.i328.1 to i64
  %spec.select.i169.i329.1 = add i64 %spec.select.i169.i329, %i.diq ; 4 uses
  %niter1077.next.1 = add nuw i64 %niter1077, 2   ; 2 uses
  %niter1077.ncmp.1 = icmp eq i64 %niter1077.next.1, %unroll_iter1076
  br i1 %niter1077.ncmp.1, label %.preheader414.peel.begin.i.i331.unr-lcssa, label %bb.ie, !llvm.loop !200

.lr.ph422.i.i332:                                 ; preds = %.preheader414.peel.begin.i.i331, %._crit_edge434.i.i370
  %indvars.iv.i.i333 = phi i64 [ %indvars.iv.next.i.i371, %._crit_edge434.i.i370 ], [ %.0108.i.i297, %.preheader414.peel.begin.i.i331 ] ; 4 uses
  %.1348443.i.i334 = phi i64 [ %i.dnf, %._crit_edge434.i.i370 ], [ 0, %.preheader414.peel.begin.i.i331 ] ; 4 uses
  %.0350442.i.i335 = phi i64 [ %.2352.lcssa.i.i352, %._crit_edge434.i.i370 ], [ 0, %.preheader414.peel.begin.i.i331 ]
  %.0356441.i.i336 = phi i64 [ %i.dne, %._crit_edge434.i.i370 ], [ 0, %.preheader414.peel.begin.i.i331 ] ; 2 uses
  %.0357440.i.i337 = phi ptr [ %.1358.i.i358, %._crit_edge434.i.i370 ], [ %i.dha, %.preheader414.peel.begin.i.i331 ] ; 3 uses
  %.0359439.i.i338 = phi i64 [ %.1360.i.i357, %._crit_edge434.i.i370 ], [ %i.dgz, %.preheader414.peel.begin.i.i331 ] ; 5 uses
  %.0361438.i.i339 = phi i64 [ %.1362.lcssa.i.i367, %._crit_edge434.i.i370 ], [ 0, %.preheader414.peel.begin.i.i331 ] ; 3 uses
  %.0363437.i.i340 = phi ptr [ %.1364.i.i356, %._crit_edge434.i.i370 ], [ %i.dgv, %.preheader414.peel.begin.i.i331 ] ; 3 uses
  %.0365436.i.i341 = phi i64 [ %.1366.i.i355, %._crit_edge434.i.i370 ], [ %i.dgz, %.preheader414.peel.begin.i.i331 ] ; 5 uses
  %.0367435.i.i342 = phi i64 [ %.1368.lcssa.i.i366, %._crit_edge434.i.i370 ], [ 0, %.preheader414.peel.begin.i.i331 ] ; 3 uses
  %umax1086 = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.i333, i64 1)
  %umin1087 = tail call i64 @llvm.umin.i64(i64 %umax1086, i64 64) ; 2 uses
  %i.dir = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.i333, i64 1)
  %umax506.i.i343 = tail call i64 @llvm.umin.i64(i64 %i.dir, i64 64)
  %i.dis = getelementptr [4 x i8], ptr %i.dhg, i64 %.1348443.i.i334
  br label %bb.if

bb.if:                                            ; preds = %bb.ig, %.lr.ph422.i.i332
  %.0343420.i.i344 = phi i64 [ 0, %.lr.ph422.i.i332 ], [ %i.dka, %bb.ig ] ; 7 uses
  %.1351419.i.i345 = phi i64 [ %.0350442.i.i335, %.lr.ph422.i.i332 ], [ %.2352.lcssa.i.i352, %bb.ig ] ; 3 uses
  %i.dit = getelementptr [4 x i8], ptr %i.dis, i64 %.0343420.i.i344
  %i.diu = load i32, ptr %i.dit, align 4, !tbaa !33 ; 4 uses
  %i.div = zext i32 %i.diu to i64                 ; 3 uses
  %i.diw = getelementptr inbounds nuw [2192 x i8], ptr %i.dhe, i64 %.0343420.i.i344 ; 7 uses
  %i.dix = getelementptr inbounds nuw i8, ptr %i.diw, i64 2176
  %i.diy = getelementptr inbounds nuw i8, ptr %i.diw, i64 2184 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.diw, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.diy, align 8, !tbaa !170
  %.not487.i.i346 = icmp eq i32 %i.diu, 0
  br i1 %.not487.i.i346, label %bb.ig, label %.lr.ph.i171.i347.preheader

.lr.ph.i171.i347.preheader:                       ; preds = %bb.if
  %xtraiter1078 = and i64 %i.div, 1
  %i.diz = icmp eq i32 %i.diu, 1
  br i1 %i.diz, label %.lr.ph.i171.i347.epil.preheader, label %.lr.ph.i171.i347.preheader.new

.lr.ph.i171.i347.preheader.new:                   ; preds = %.lr.ph.i171.i347.preheader
  %unroll_iter1083 = and i64 %i.div, 4294967294
  br label %.lr.ph.i171.i347

.lr.ph.i171.i347:                                 ; preds = %.lr.ph.i171.i347, %.lr.ph.i171.i347.preheader.new
  %.2352417.i.i349 = phi i64 [ %.1351419.i.i345, %.lr.ph.i171.i347.preheader.new ], [ %i.djg, %.lr.ph.i171.i347 ] ; 3 uses
  %niter1084 = phi i64 [ 0, %.lr.ph.i171.i347.preheader.new ], [ %niter1084.next.1, %.lr.ph.i171.i347 ]
  %i.dja = getelementptr inbounds nuw [2 x i8], ptr %i.byo, i64 %.2352417.i.i349
  %i.djb = load i16, ptr %i.dja, align 2, !tbaa !76
  %i.djc = zext i16 %i.djb to i64
  %i.djd = getelementptr inbounds nuw [4 x i8], ptr %i.diw, i64 %i.djc ; 2 uses
  %i.dje = load i32, ptr %i.djd, align 4, !tbaa !33
  %i.djf = add i32 %i.dje, 1
  store i32 %i.djf, ptr %i.djd, align 4, !tbaa !33
  %i.djg = add i64 %.2352417.i.i349, 2            ; 3 uses
  %i.djh = getelementptr [2 x i8], ptr %i.byo, i64 %.2352417.i.i349
  %i.dji = getelementptr i8, ptr %i.djh, i64 2
  %i.djj = load i16, ptr %i.dji, align 2, !tbaa !76
  %i.djk = zext i16 %i.djj to i64
  %i.djl = getelementptr inbounds nuw [4 x i8], ptr %i.diw, i64 %i.djk ; 2 uses
  %i.djm = load i32, ptr %i.djl, align 4, !tbaa !33
  %i.djn = add i32 %i.djm, 1
  store i32 %i.djn, ptr %i.djl, align 4, !tbaa !33
  %niter1084.next.1 = add i64 %niter1084, 2       ; 2 uses
  %niter1084.ncmp.1 = icmp eq i64 %niter1084.next.1, %unroll_iter1083
  br i1 %niter1084.ncmp.1, label %._crit_edge.i.i351.unr-lcssa, label %.lr.ph.i171.i347, !llvm.loop !201

._crit_edge.i.i351.unr-lcssa:                     ; preds = %.lr.ph.i171.i347
  %lcmp.mod1080.not = icmp eq i64 %xtraiter1078, 0
  br i1 %lcmp.mod1080.not, label %._crit_edge.i.i351, label %.lr.ph.i171.i347.epil.preheader

.lr.ph.i171.i347.epil.preheader:                  ; preds = %._crit_edge.i.i351.unr-lcssa, %.lr.ph.i171.i347.preheader
  %.2352417.i.i349.epil.init = phi i64 [ %.1351419.i.i345, %.lr.ph.i171.i347.preheader ], [ %i.djg, %._crit_edge.i.i351.unr-lcssa ] ; 2 uses
  %lcmp.mod1082 = trunc i32 %i.diu to i1
  tail call void @llvm.assume(i1 %lcmp.mod1082)
  %i.djo = add i64 %.2352417.i.i349.epil.init, 1
  %i.djp = getelementptr inbounds nuw [2 x i8], ptr %i.byo, i64 %.2352417.i.i349.epil.init
  %i.djq = load i16, ptr %i.djp, align 2, !tbaa !76
  %i.djr = zext i16 %i.djq to i64
  %i.djs = getelementptr inbounds nuw [4 x i8], ptr %i.diw, i64 %i.djr ; 2 uses
  %i.djt = load i32, ptr %i.djs, align 4, !tbaa !33
  %i.dju = add i32 %i.djt, 1
  store i32 %i.dju, ptr %i.djs, align 4, !tbaa !33
  br label %._crit_edge.i.i351

._crit_edge.i.i351:                               ; preds = %._crit_edge.i.i351.unr-lcssa, %.lr.ph.i171.i347.epil.preheader
  %.lcssa863 = phi i64 [ %i.djg, %._crit_edge.i.i351.unr-lcssa ], [ %i.djo, %.lr.ph.i171.i347.epil.preheader ]
  store i64 %i.div, ptr %i.dix, align 8, !tbaa !174
  br label %bb.ig

bb.ig:                                            ; preds = %._crit_edge.i.i351, %bb.if
  %.2352.lcssa.i.i352 = phi i64 [ %.lcssa863, %._crit_edge.i.i351 ], [ %.1351419.i.i345, %bb.if ] ; 2 uses
  %i.djv = tail call double @BrotliPopulationCostDistance(ptr noundef nonnull %i.diw) #8
  store double %i.djv, ptr %i.diy, align 8, !tbaa !170
  %i.djw = trunc i64 %.0343420.i.i344 to i32      ; 2 uses
  %i.djx = getelementptr inbounds nuw [4 x i8], ptr %i.dhw, i64 %.0343420.i.i344
  store i32 %i.djw, ptr %i.djx, align 4, !tbaa !33
  %i.djy = getelementptr inbounds nuw [4 x i8], ptr %i.dhx, i64 %.0343420.i.i344
  store i32 %i.djw, ptr %i.djy, align 4, !tbaa !33
  %i.djz = getelementptr inbounds nuw [4 x i8], ptr %i.dgy, i64 %.0343420.i.i344
  store i32 1, ptr %i.djz, align 4, !tbaa !33
  %i.dka = add nuw nsw i64 %.0343420.i.i344, 1    ; 2 uses
  %exitcond503.not.i.i353 = icmp eq i64 %i.dka, %umax506.i.i343
  br i1 %exitcond503.not.i.i353, label %._crit_edge423.i.i354, label %bb.if, !llvm.loop !202

._crit_edge423.i.i354:                            ; preds = %bb.ig
  %i.dkb = sub nuw i64 %.0108.i.i297, %.1348443.i.i334
  %i.dkc = tail call i64 @llvm.umin.i64(i64 %i.dkb, i64 64) ; 2 uses
  %i.dkd = tail call i64 @BrotliHistogramCombineDistance(ptr noundef nonnull %i.dhe, ptr noundef %i.dhi, ptr noundef nonnull %i.dgy, ptr noundef nonnull %i.dhx, ptr noundef nonnull %i.dhw, ptr noundef %i.dhf, i64 noundef %i.dkc, i64 noundef %i.dkc, i64 noundef 64, i64 noundef 2048) #8 ; 5 uses
  %i.dke = add i64 %i.dkd, %.0367435.i.i342       ; 3 uses
  %i.dkf = icmp ult i64 %.0365436.i.i341, %i.dke
  br i1 %i.dkf, label %bb.ih, label %bb.im

bb.ih:                                            ; preds = %._crit_edge423.i.i354
  %i.dkg = icmp eq i64 %.0365436.i.i341, 0        ; 2 uses
  %i.dkh = select i1 %i.dkg, i64 %i.dke, i64 %.0365436.i.i341
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ii, %bb.ih
  %.0341.i.i445 = phi i64 [ %i.dkh, %bb.ih ], [ %i.dkj, %bb.ii ] ; 4 uses
  %i.dki = icmp ult i64 %.0341.i.i445, %i.dke
  %i.dkj = shl i64 %.0341.i.i445, 1
  br i1 %i.dki, label %bb.ii, label %bb.ij, !llvm.loop !203

bb.ij:                                            ; preds = %bb.ii
  %i.dkk = mul i64 %.0341.i.i445, 2192
  %i.dkl = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.dkk) #8 ; 2 uses
  br i1 %i.dkg, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.dkm = mul i64 %.0365436.i.i341, 2192
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.dkl, ptr align 8 %.0363437.i.i340, i64 %i.dkm, i1 false)
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %bb.ij
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %.0363437.i.i340) #8
  br label %bb.im

bb.im:                                            ; preds = %bb.il, %._crit_edge423.i.i354
  %.1366.i.i355 = phi i64 [ %.0341.i.i445, %bb.il ], [ %.0365436.i.i341, %._crit_edge423.i.i354 ]
  %.1364.i.i356 = phi ptr [ %i.dkl, %bb.il ], [ %.0363437.i.i340, %._crit_edge423.i.i354 ] ; 3 uses
  %i.dkn = add i64 %i.dkd, %.0361438.i.i339       ; 3 uses
  %i.dko = icmp ult i64 %.0359439.i.i338, %i.dkn
  br i1 %i.dko, label %bb.in, label %bb.is

bb.in:                                            ; preds = %bb.im
  %i.dkp = icmp eq i64 %.0359439.i.i338, 0        ; 2 uses
  %i.dkq = select i1 %i.dkp, i64 %i.dkn, i64 %.0359439.i.i338
  br label %bb.io

bb.io:                                            ; preds = %bb.io, %bb.in
  %.0340.i.i444 = phi i64 [ %i.dkq, %bb.in ], [ %i.dks, %bb.io ] ; 4 uses
  %i.dkr = icmp ult i64 %.0340.i.i444, %i.dkn
  %i.dks = shl i64 %.0340.i.i444, 1
  br i1 %i.dkr, label %bb.io, label %bb.ip, !llvm.loop !204

bb.ip:                                            ; preds = %bb.io
  %i.dkt = shl i64 %.0340.i.i444, 2
  %i.dku = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.dkt) #8 ; 2 uses
  br i1 %i.dkp, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.dkv = shl i64 %.0359439.i.i338, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dku, ptr align 4 %.0357440.i.i337, i64 %i.dkv, i1 false)
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %bb.ip
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %.0357440.i.i337) #8
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.im
  %.1360.i.i357 = phi i64 [ %.0340.i.i444, %bb.ir ], [ %.0359439.i.i338, %bb.im ]
  %.1358.i.i358 = phi ptr [ %i.dku, %bb.ir ], [ %.0357440.i.i337, %bb.im ] ; 3 uses
  %.not488.i.i359 = icmp eq i64 %i.dkd, 0
  br i1 %.not488.i.i359, label %.lr.ph433.i.i365, label %.lr.ph429.i.i360

.lr.ph433.i.i365:                                 ; preds = %.lr.ph429.i.i360, %bb.is
  %.1368.lcssa.i.i366 = phi i64 [ %.0367435.i.i342, %bb.is ], [ %i.dkz, %.lr.ph429.i.i360 ]
  %.1362.lcssa.i.i367 = phi i64 [ %.0361438.i.i339, %bb.is ], [ %i.dlj, %.lr.ph429.i.i360 ]
  %i.dkw = trunc i64 %.0356441.i.i336 to i32      ; 5 uses
  %i.dkx = getelementptr [4 x i8], ptr %i.dgx, i64 %.1348443.i.i334 ; 5 uses
  %xtraiter1088 = and i64 %umin1087, 3            ; 3 uses
  %i.dky = icmp ult i64 %indvars.iv.i.i333, 4
  br i1 %i.dky, label %.epil.preheader1085, label %.lr.ph433.i.i365.new

.lr.ph433.i.i365.new:                             ; preds = %.lr.ph433.i.i365
  %unroll_iter1092 = and i64 %umin1087, 124
  br label %bb.it

.lr.ph429.i.i360:                                 ; preds = %bb.is, %.lr.ph429.i.i360
  %.1344427.i.i361 = phi i64 [ %i.dlp, %.lr.ph429.i.i360 ], [ 0, %bb.is ] ; 3 uses
  %.1362426.i.i362 = phi i64 [ %i.dlj, %.lr.ph429.i.i360 ], [ %.0361438.i.i339, %bb.is ] ; 2 uses
  %.1368425.i.i363 = phi i64 [ %i.dkz, %.lr.ph429.i.i360 ], [ %.0367435.i.i342, %bb.is ] ; 2 uses
  %i.dkz = add i64 %.1368425.i.i363, 1            ; 2 uses
  %i.dla = getelementptr inbounds nuw [2192 x i8], ptr %.1364.i.i356, i64 %.1368425.i.i363
  %i.dlb = getelementptr inbounds nuw [4 x i8], ptr %i.dhw, i64 %.1344427.i.i361 ; 3 uses
  %i.dlc = load i32, ptr %i.dlb, align 4, !tbaa !33
  %i.dld = zext i32 %i.dlc to i64
  %i.dle = getelementptr inbounds nuw [2192 x i8], ptr %i.dhe, i64 %i.dld
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.dla, ptr noundef nonnull align 8 dereferenceable(2192) %i.dle, i64 2192, i1 false), !tbaa.struct !205
  %i.dlf = load i32, ptr %i.dlb, align 4, !tbaa !33
  %i.dlg = zext i32 %i.dlf to i64
  %i.dlh = getelementptr inbounds nuw [4 x i8], ptr %i.dgy, i64 %i.dlg
  %i.dli = load i32, ptr %i.dlh, align 4, !tbaa !33
  %i.dlj = add i64 %.1362426.i.i362, 1            ; 2 uses
  %i.dlk = getelementptr inbounds nuw [4 x i8], ptr %.1358.i.i358, i64 %.1362426.i.i362
  store i32 %i.dli, ptr %i.dlk, align 4, !tbaa !33
  %i.dll = trunc i64 %.1344427.i.i361 to i32
  %i.dlm = load i32, ptr %i.dlb, align 4, !tbaa !33
  %i.dln = zext i32 %i.dlm to i64
  %i.dlo = getelementptr inbounds nuw [4 x i8], ptr %i.dhy, i64 %i.dln
  store i32 %i.dll, ptr %i.dlo, align 4, !tbaa !33
  %i.dlp = add nuw i64 %.1344427.i.i361, 1        ; 2 uses
  %exitcond504.not.i.i364 = icmp eq i64 %i.dlp, %i.dkd
  br i1 %exitcond504.not.i.i364, label %.lr.ph433.i.i365, label %.lr.ph429.i.i360, !llvm.loop !206

bb.it:                                            ; preds = %bb.it, %.lr.ph433.i.i365.new
  %.2432.i.i368 = phi i64 [ 0, %.lr.ph433.i.i365.new ], [ %i.dmv, %bb.it ] ; 6 uses
  %niter1093 = phi i64 [ 0, %.lr.ph433.i.i365.new ], [ %niter1093.next.3, %bb.it ]
  %i.dlq = getelementptr inbounds nuw [4 x i8], ptr %i.dhx, i64 %.2432.i.i368
  %i.dlr = load i32, ptr %i.dlq, align 4, !tbaa !33
  %i.dls = zext i32 %i.dlr to i64
  %i.dlt = getelementptr inbounds nuw [4 x i8], ptr %i.dhy, i64 %i.dls
  %i.dlu = load i32, ptr %i.dlt, align 4, !tbaa !33
  %i.dlv = add i32 %i.dlu, %i.dkw
  %i.dlw = getelementptr [4 x i8], ptr %i.dkx, i64 %.2432.i.i368
  store i32 %i.dlv, ptr %i.dlw, align 4, !tbaa !33
  %i.dlx = or disjoint i64 %.2432.i.i368, 1       ; 2 uses
  %i.dly = getelementptr inbounds nuw [4 x i8], ptr %i.dhx, i64 %i.dlx
  %i.dlz = load i32, ptr %i.dly, align 4, !tbaa !33
  %i.dma = zext i32 %i.dlz to i64
  %i.dmb = getelementptr inbounds nuw [4 x i8], ptr %i.dhy, i64 %i.dma
  %i.dmc = load i32, ptr %i.dmb, align 4, !tbaa !33
  %i.dmd = add i32 %i.dmc, %i.dkw
  %i.dme = getelementptr [4 x i8], ptr %i.dkx, i64 %i.dlx
  store i32 %i.dmd, ptr %i.dme, align 4, !tbaa !33
  %i.dmf = or disjoint i64 %.2432.i.i368, 2       ; 2 uses
  %i.dmg = getelementptr inbounds nuw [4 x i8], ptr %i.dhx, i64 %i.dmf
  %i.dmh = load i32, ptr %i.dmg, align 4, !tbaa !33
  %i.dmi = zext i32 %i.dmh to i64
  %i.dmj = getelementptr inbounds nuw [4 x i8], ptr %i.dhy, i64 %i.dmi
  %i.dmk = load i32, ptr %i.dmj, align 4, !tbaa !33
  %i.dml = add i32 %i.dmk, %i.dkw
  %i.dmm = getelementptr [4 x i8], ptr %i.dkx, i64 %i.dmf
  store i32 %i.dml, ptr %i.dmm, align 4, !tbaa !33
  %i.dmn = or disjoint i64 %.2432.i.i368, 3       ; 2 uses
  %i.dmo = getelementptr inbounds nuw [4 x i8], ptr %i.dhx, i64 %i.dmn
  %i.dmp = load i32, ptr %i.dmo, align 4, !tbaa !33
  %i.dmq = zext i32 %i.dmp to i64
  %i.dmr = getelementptr inbounds nuw [4 x i8], ptr %i.dhy, i64 %i.dmq
  %i.dms = load i32, ptr %i.dmr, align 4, !tbaa !33
  %i.dmt = add i32 %i.dms, %i.dkw
  %i.dmu = getelementptr [4 x i8], ptr %i.dkx, i64 %i.dmn
  store i32 %i.dmt, ptr %i.dmu, align 4, !tbaa !33
  %i.dmv = add nuw nsw i64 %.2432.i.i368, 4       ; 2 uses
  %niter1093.next.3 = add i64 %niter1093, 4       ; 2 uses
  %niter1093.ncmp.3 = icmp eq i64 %niter1093.next.3, %unroll_iter1092
  br i1 %niter1093.ncmp.3, label %._crit_edge434.i.i370.unr-lcssa, label %bb.it, !llvm.loop !207

._crit_edge434.i.i370.unr-lcssa:                  ; preds = %bb.it
  %lcmp.mod1090.not = icmp eq i64 %xtraiter1088, 0
  br i1 %lcmp.mod1090.not, label %._crit_edge434.i.i370, label %.epil.preheader1085

.epil.preheader1085:                              ; preds = %._crit_edge434.i.i370.unr-lcssa, %.lr.ph433.i.i365
  %.2432.i.i368.epil.init = phi i64 [ 0, %.lr.ph433.i.i365 ], [ %i.dmv, %._crit_edge434.i.i370.unr-lcssa ]
  %lcmp.mod1091 = icmp ne i64 %xtraiter1088, 0
  tail call void @llvm.assume(i1 %lcmp.mod1091)
  br label %bb.iu

bb.iu:                                            ; preds = %bb.iu, %.epil.preheader1085
  %.2432.i.i368.epil = phi i64 [ %.2432.i.i368.epil.init, %.epil.preheader1085 ], [ %i.dnd, %bb.iu ] ; 3 uses
  %epil.iter1089 = phi i64 [ 0, %.epil.preheader1085 ], [ %epil.iter1089.next, %bb.iu ]
  %i.dmw = getelementptr inbounds nuw [4 x i8], ptr %i.dhx, i64 %.2432.i.i368.epil
  %i.dmx = load i32, ptr %i.dmw, align 4, !tbaa !33
  %i.dmy = zext i32 %i.dmx to i64
  %i.dmz = getelementptr inbounds nuw [4 x i8], ptr %i.dhy, i64 %i.dmy
  %i.dna = load i32, ptr %i.dmz, align 4, !tbaa !33
  %i.dnb = add i32 %i.dna, %i.dkw
  %i.dnc = getelementptr [4 x i8], ptr %i.dkx, i64 %.2432.i.i368.epil
  store i32 %i.dnb, ptr %i.dnc, align 4, !tbaa !33
  %i.dnd = add nuw nsw i64 %.2432.i.i368.epil, 1
  %epil.iter1089.next = add i64 %epil.iter1089, 1 ; 2 uses
  %epil.iter1089.cmp.not = icmp eq i64 %epil.iter1089.next, %xtraiter1088
  br i1 %epil.iter1089.cmp.not, label %._crit_edge434.i.i370, label %bb.iu, !llvm.loop !208

._crit_edge434.i.i370:                            ; preds = %bb.iu, %._crit_edge434.i.i370.unr-lcssa
  %i.dne = add i64 %i.dkd, %.0356441.i.i336       ; 2 uses
  %i.dnf = add i64 %.1348443.i.i334, 64           ; 2 uses
  %i.dng = icmp ult i64 %i.dnf, %.0108.i.i297
  %indvars.iv.next.i.i371 = add i64 %indvars.iv.i.i333, -64
  br i1 %i.dng, label %.lr.ph422.i.i332, label %._crit_edge445.i.i372, !llvm.loop !209

._crit_edge445.i.i372:                            ; preds = %._crit_edge434.i.i370, %.preheader414.peel.begin.i.i331
  %.0363.lcssa.i.i373 = phi ptr [ %i.dgv, %.preheader414.peel.begin.i.i331 ], [ %.1364.i.i356, %._crit_edge434.i.i370 ] ; 4 uses
  %.0357.lcssa.i.i374 = phi ptr [ %i.dha, %.preheader414.peel.begin.i.i331 ], [ %.1358.i.i358, %._crit_edge434.i.i370 ] ; 2 uses
  %.0356.lcssa.i.i375 = phi i64 [ 0, %.preheader414.peel.begin.i.i331 ], [ %i.dne, %._crit_edge434.i.i370 ] ; 11 uses
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.dhe) #8
  %i.dnh = shl i64 %.0356.lcssa.i.i375, 6
  %i.dni = lshr i64 %.0356.lcssa.i.i375, 1
  %i.dnj = mul i64 %i.dni, %.0356.lcssa.i.i375
  %i.dnk = tail call i64 @llvm.umin.i64(i64 %i.dnh, i64 %i.dnj) ; 3 uses
  %i.dnl = icmp ugt i64 %i.dnk, 2048
  br i1 %i.dnl, label %bb.iv, label %bb.iw

bb.iv:                                            ; preds = %._crit_edge445.i.i372
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %i.dhf) #8
  %i.dnm = mul i64 %i.dnk, 24
  %i.dnn = add i64 %i.dnm, 24
  %i.dno = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.dnn) #8
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %._crit_edge445.i.i372
  %.0355.i.i376 = phi ptr [ %i.dno, %bb.iv ], [ %i.dhf, %._crit_edge445.i.i372 ] ; 2 uses
  %.not392.i.i377 = icmp eq i64 %.0356.lcssa.i.i375, 0 ; 2 uses
  br i1 %.not392.i.i377, label %._crit_edge452.i.i382, label %.lr.ph451.preheader.i.i378

.lr.ph451.preheader.i.i378:                       ; preds = %bb.iw
  %i.dnp = shl i64 %.0356.lcssa.i.i375, 2
  %i.dnq = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.dnp) #8 ; 4 uses
  %min.iters.check844 = icmp ult i64 %.0356.lcssa.i.i375, 8
  br i1 %min.iters.check844, label %.lr.ph451.i.i379.preheader, label %vector.ph845

vector.ph845:                                     ; preds = %.lr.ph451.preheader.i.i378
  %n.vec846 = and i64 %.0356.lcssa.i.i375, -8     ; 3 uses
  br label %vector.body847

vector.body847:                                   ; preds = %vector.body847, %vector.ph845
  %index848 = phi i64 [ 0, %vector.ph845 ], [ %index.next851, %vector.body847 ] ; 2 uses
  %vec.ind849 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph845 ], [ %vec.ind.next852, %vector.body847 ] ; 3 uses
  %step.add850 = add <4 x i32> %vec.ind849, splat (i32 4)
  %i.dnr = getelementptr inbounds nuw [4 x i8], ptr %i.dnq, i64 %index848 ; 2 uses
  %i.dns = getelementptr inbounds nuw i8, ptr %i.dnr, i64 16
  store <4 x i32> %vec.ind849, ptr %i.dnr, align 4, !tbaa !33
  store <4 x i32> %step.add850, ptr %i.dns, align 4, !tbaa !33
  %index.next851 = add nuw i64 %index848, 8       ; 2 uses
  %vec.ind.next852 = add <4 x i32> %vec.ind849, splat (i32 8)
  %i.dnt = icmp eq i64 %index.next851, %n.vec846
  br i1 %i.dnt, label %middle.block853, label %vector.body847, !llvm.loop !210

middle.block853:                                  ; preds = %vector.body847
  %cmp.n854 = icmp eq i64 %.0356.lcssa.i.i375, %n.vec846
  br i1 %cmp.n854, label %._crit_edge452.i.i382, label %.lr.ph451.i.i379.preheader

.lr.ph451.i.i379.preheader:                       ; preds = %.lr.ph451.preheader.i.i378, %middle.block853
  %.2349449.i.i380.ph = phi i64 [ 0, %.lr.ph451.preheader.i.i378 ], [ %n.vec846, %middle.block853 ]
  br label %.lr.ph451.i.i379

.lr.ph451.i.i379:                                 ; preds = %.lr.ph451.i.i379.preheader, %.lr.ph451.i.i379
  %.2349449.i.i380 = phi i64 [ %i.dnw, %.lr.ph451.i.i379 ], [ %.2349449.i.i380.ph, %.lr.ph451.i.i379.preheader ] ; 3 uses
  %i.dnu = trunc i64 %.2349449.i.i380 to i32
  %i.dnv = getelementptr inbounds nuw [4 x i8], ptr %i.dnq, i64 %.2349449.i.i380
  store i32 %i.dnu, ptr %i.dnv, align 4, !tbaa !33
  %i.dnw = add nuw i64 %.2349449.i.i380, 1        ; 2 uses
  %exitcond508.not.i.i381 = icmp eq i64 %i.dnw, %.0356.lcssa.i.i375
  br i1 %exitcond508.not.i.i381, label %._crit_edge452.i.i382, label %.lr.ph451.i.i379, !llvm.loop !211

._crit_edge452.i.i382:                            ; preds = %.lr.ph451.i.i379, %middle.block853, %bb.iw
  %i.dnx = phi ptr [ null, %bb.iw ], [ %i.dnq, %middle.block853 ], [ %i.dnq, %.lr.ph451.i.i379 ] ; 3 uses
  %i.dny = tail call i64 @BrotliHistogramCombineDistance(ptr noundef %.0363.lcssa.i.i373, ptr noundef %i.dhi, ptr noundef %.0357.lcssa.i.i374, ptr noundef %i.dgx, ptr noundef %i.dnx, ptr noundef %.0355.i.i376, i64 noundef %.0356.lcssa.i.i375, i64 noundef %.0108.i.i297, i64 noundef 256, i64 noundef %i.dnk) #8 ; 2 uses
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %.0355.i.i376) #8
  tail call void @BrotliFree(ptr noundef %0, ptr noundef %.0357.lcssa.i.i374) #8
  br i1 %.not392.i.i377, label %.preheader.i172.i384, label %.lr.ph455.preheader.i.i383

.lr.ph455.preheader.i.i383:                       ; preds = %._crit_edge452.i.i382
  %i.dnz = shl i64 %.0356.lcssa.i.i375, 2         ; 2 uses
  %i.doa = tail call ptr @BrotliAllocate(ptr noundef %0, i64 noundef %i.dnz) #8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.doa, i8 -1, i64 %i.dnz, i1 false), !tbaa !33
  br label %.preheader.i172.i384

.preheader.i172.i384:                             ; preds = %.lr.ph455.preheader.i.i383, %._crit_edge452.i.i382
  %i.dob = phi ptr [ %i.doa, %.lr.ph455.preheader.i.i383 ], [ null, %._crit_edge452.i.i382 ] ; 4 uses
  br i1 %.not.i168.i318, label %._crit_edge475.i.i410, label %.lr.ph474.i.i385

.lr.ph474.i.i385:                                 ; preds = %.preheader.i172.i384
  %i.doc = getelementptr inbounds nuw i8, ptr %i.dhi, i64 2176
  %i.dod = getelementptr inbounds nuw i8, ptr %i.dhi, i64 2184
  %i.doe = getelementptr inbounds nuw i8, ptr %i.dhi, i64 2192 ; 2 uses
  %.not493.i.i386 = icmp eq i64 %i.dny, 0
  br label %bb.ix

bb.ix:                                            ; preds = %bb.jc, %.lr.ph474.i.i385
  %.0338473.i.i387 = phi i32 [ 0, %.lr.ph474.i.i385 ], [ %.1339.i.i408, %bb.jc ] ; 3 uses
  %.4472.i.i388 = phi i64 [ 0, %.lr.ph474.i.i385 ], [ %i.dpm, %bb.jc ] ; 4 uses
  %.3353471.i.i389 = phi i64 [ 0, %.lr.ph474.i.i385 ], [ %.4354.lcssa.i.i394, %bb.jc ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dhi, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.dod, align 8, !tbaa !170
  %i.dof = getelementptr inbounds nuw [4 x i8], ptr %i.dhg, i64 %.4472.i.i388 ; 2 uses
end_hunk_2
