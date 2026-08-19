inline.NumInlined: 26
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN13duckdb_brotli16BrotliSplitBlockEPNS_13MemoryManagerEPKNS_7CommandEmPKhmmPK19BrotliEncoderParamsPNS_10BlockSplitESB_SB_:bb.a

_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i.preheader: ; preds = %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i.preheader.loopexit.unr-lcssa, %.lr.ph.i165.i.epil, %_ZL20RemapBlockIdsLiteralPhmPtm.exit.i
  br i1 %i.ia, label %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i.epil.preheader, label %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i

_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i: ; preds = %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i.preheader, %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i
  %.010.i.i = phi i64 [ %i.qd, %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i ], [ 0, %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i.preheader ] ; 4 uses
  %niter924 = phi i64 [ %niter924.next.1, %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i ], [ 0, %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i.preheader ]
  %i.pc = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.010.i.i
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !29
  %i.pe = zext i8 %i.pd to i64
  %i.pf = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %i.pe ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.ph, i64 %.010.i.i
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !29
  %i.pi = zext i8 %i.ph to i64
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.pi ; 2 uses
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !3
  %i.pl = add i32 %i.pk, 1
  store i32 %i.pl, ptr %i.pj, align 4, !tbaa !3
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pf, i64 1024 ; 2 uses
  %i.pn = load i64, ptr %i.pm, align 8, !tbaa !35
  %i.po = add i64 %i.pn, 1
  store i64 %i.po, ptr %i.pm, align 8, !tbaa !35
  %i.pp = or disjoint i64 %.010.i.i, 1            ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.pp
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !29
  %i.ps = zext i8 %i.pr to i64
  %i.pt = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %i.ps ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.ph, i64 %i.pp
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !29
  %i.pw = zext i8 %i.pv to i64
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %i.pw ; 2 uses
  %i.py = load i32, ptr %i.px, align 4, !tbaa !3
  %i.pz = add i32 %i.py, 1
  store i32 %i.pz, ptr %i.px, align 4, !tbaa !3
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pt, i64 1024 ; 2 uses
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !35
  %i.qc = add i64 %i.qb, 1
  store i64 %i.qc, ptr %i.qa, align 8, !tbaa !35
  %i.qd = add nuw i64 %.010.i.i, 2                ; 2 uses
  %niter924.next.1 = add i64 %niter924, 2         ; 2 uses
  %niter924.ncmp.1 = icmp eq i64 %niter924.next.1, %unroll_iter923
  br i1 %niter924.ncmp.1, label %_ZL27BuildBlockHistogramsLiteralPKhmS0_mPN13duckdb_brotli16HistogramLiteralE.exit.i.unr-lcssa, label %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i, !llvm.loop !82

_ZL27BuildBlockHistogramsLiteralPKhmS0_mPN13duckdb_brotli16HistogramLiteralE.exit.i.unr-lcssa: ; preds = %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i
  br i1 %lcmp.mod921.not, label %_ZL27BuildBlockHistogramsLiteralPKhmS0_mPN13duckdb_brotli16HistogramLiteralE.exit.i, label %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i.epil.preheader

_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i.epil.preheader: ; preds = %_ZL27BuildBlockHistogramsLiteralPKhmS0_mPN13duckdb_brotli16HistogramLiteralE.exit.i.unr-lcssa, %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i.preheader
  %.010.i.i.epil.init = phi i64 [ 0, %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i.preheader ], [ %i.qd, %_ZL27BuildBlockHistogramsLiteralPKhmS0_mPN13duckdb_brotli16HistogramLiteralE.exit.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod922)
  %i.qe = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.010.i.i.epil.init
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !29
  %i.qg = zext i8 %i.qf to i64
  %i.qh = getelementptr inbounds nuw [1040 x i8], ptr %i.cs, i64 %i.qg ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.ph, i64 %.010.i.i.epil.init
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !29
  %i.qk = zext i8 %i.qj to i64
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %i.qk ; 2 uses
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !3
  %i.qn = add i32 %i.qm, 1
  store i32 %i.qn, ptr %i.ql, align 4, !tbaa !3
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qh, i64 1024 ; 2 uses
  %i.qp = load i64, ptr %i.qo, align 8, !tbaa !35
  %i.qq = add i64 %i.qp, 1
  store i64 %i.qq, ptr %i.qo, align 8, !tbaa !35
  br label %_ZL27BuildBlockHistogramsLiteralPKhmS0_mPN13duckdb_brotli16HistogramLiteralE.exit.i

_ZL27BuildBlockHistogramsLiteralPKhmS0_mPN13duckdb_brotli16HistogramLiteralE.exit.i: ; preds = %_ZL27BuildBlockHistogramsLiteralPKhmS0_mPN13duckdb_brotli16HistogramLiteralE.exit.i.unr-lcssa, %_ZN13duckdb_brotliL22ClearHistogramsLiteralEPNS_16HistogramLiteralEm.exit.i.i.epil.preheader
  %i.qr = add nuw nsw i64 %.0180.i, 1             ; 2 uses
  %exitcond.not.i65 = icmp eq i64 %i.qr, %i.hw
  br i1 %exitcond.not.i65, label %bb.bh, label %bb.af, !llvm.loop !83

bb.bh:                                            ; preds = %_ZL27BuildBlockHistogramsLiteralPKhmS0_mPN13duckdb_brotli16HistogramLiteralE.exit.i
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.hm)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.ho)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.hr)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef nonnull %i.ht)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef nonnull %i.cs)
  %.not.i168.i = icmp eq i64 %.0108.i.i, 0        ; 5 uses
  br i1 %.not.i168.i, label %.thread.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.qs = shl i64 %.0108.i.i, 2
  %i.qt = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.qs) ; 2 uses
  %i.qu = add i64 %.0108.i.i, 256                 ; 2 uses
  %.not383.i.i = icmp eq i64 %i.qu, 0
  br i1 %.not383.i.i, label %.thread405.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.bi, %bb.bh
  %i.qv = phi i64 [ %i.qu, %bb.bi ], [ 256, %bb.bh ] ; 3 uses
  %i.qw = phi ptr [ %i.qt, %bb.bi ], [ null, %bb.bh ] ; 2 uses
  %i.qx = shl i64 %i.qv, 2
  %i.qy = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.qx) ; 2 uses
  %i.qz = shl i64 %.0108.i.i, 4
  %i.ra = add i64 %i.qz, 1008
  %i.rb = lshr i64 %i.ra, 6                       ; 2 uses
  %.not384.i.i = icmp eq i64 %i.rb, 0
  br i1 %.not384.i.i, label %.thread403.i.i, label %.thread405.i.i

.thread405.i.i:                                   ; preds = %.thread.i.i, %bb.bi
  %.sink552.i.i = phi i64 [ %i.rb, %.thread.i.i ], [ 288230376151711695, %bb.bi ] ; 3 uses
  %i.rc = phi i64 [ %i.qv, %.thread.i.i ], [ 0, %bb.bi ]
  %i.rd = phi ptr [ %i.qw, %.thread.i.i ], [ %i.qt, %bb.bi ]
  %i.re = phi ptr [ %i.qy, %.thread.i.i ], [ null, %bb.bi ]
  %i.rf = mul i64 %.sink552.i.i, 1040
  %i.rg = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.rf)
  %i.rh = shl nuw nsw i64 %.sink552.i.i, 2
  %i.ri = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.rh)
  br label %.thread403.i.i

.thread403.i.i:                                   ; preds = %.thread405.i.i, %.thread.i.i
  %i.rj = phi ptr [ %i.rg, %.thread405.i.i ], [ null, %.thread.i.i ] ; 2 uses
  %i.rk = phi i64 [ %i.rc, %.thread405.i.i ], [ %i.qv, %.thread.i.i ]
  %i.rl = phi ptr [ %i.rd, %.thread405.i.i ], [ %i.qw, %.thread.i.i ] ; 9 uses
  %i.rm = phi ptr [ %i.re, %.thread405.i.i ], [ %i.qy, %.thread.i.i ] ; 9 uses
  %i.rn = phi i64 [ %.sink552.i.i, %.thread405.i.i ], [ 0, %.thread.i.i ] ; 2 uses
  %i.ro = phi ptr [ %i.ri, %.thread405.i.i ], [ null, %.thread.i.i ] ; 2 uses
  br i1 %.not.i168.i, label %.new925, label %bb.bj

bb.bj:                                            ; preds = %.thread403.i.i
  %i.rp = tail call noundef i64 @llvm.umin.i64(i64 %.0108.i.i, i64 64)
  %i.rq = mul nuw nsw i64 %i.rp, 1040
  %i.rr = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.rq)
  br label %.new925

.new925:                                          ; preds = %bb.bj, %.thread403.i.i
  %i.rs = phi ptr [ %i.rr, %bb.bj ], [ null, %.thread403.i.i ] ; 4 uses
  %i.rt = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef 49176) ; 3 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rm, i64 1024 ; 8 uses
  %i.rv = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef 2080) ; 10 uses
  %i.rw = shl i64 %i.rk, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.rm, i8 0, i64 %i.rw, i1 false)
  %xtraiter927 = and i64 %i.hx, 1
  %unroll_iter932 = and i64 %i.hx, -2
  br label %bb.bk

.preheader408.peel.begin.i.i.unr-lcssa:           ; preds = %bb.bk
  %lcmp.mod929.not = icmp eq i64 %xtraiter927, 0
  br i1 %lcmp.mod929.not, label %.preheader408.peel.begin.i.i, label %.epil.preheader926

.epil.preheader926:                               ; preds = %.preheader408.peel.begin.i.i.unr-lcssa
  %lcmp.mod931 = trunc i64 %i.hx to i1
  tail call void @llvm.assume(i1 %lcmp.mod931)
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %spec.select.i169.i.1 ; 2 uses
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !3
  %i.rz = add i32 %i.ry, 1
  store i32 %i.rz, ptr %i.rx, align 4, !tbaa !3
  %i.sa = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.sy
  %i.sb = load i8, ptr %i.sa, align 1, !tbaa !29
  %i.sc = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.sy
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 1
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !29
  %.not396.i.i.epil = icmp ne i8 %i.sb, %i.se
  %i.sf = zext i1 %.not396.i.i.epil to i64
  %spec.select.i169.i.epil = add i64 %spec.select.i169.i.1, %i.sf
  br label %.preheader408.peel.begin.i.i

.preheader408.peel.begin.i.i:                     ; preds = %.preheader408.peel.begin.i.i.unr-lcssa, %.epil.preheader926
  %spec.select.i169.i.lcssa = phi i64 [ %spec.select.i169.i.1, %.preheader408.peel.begin.i.i.unr-lcssa ], [ %spec.select.i169.i.epil, %.epil.preheader926 ]
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %spec.select.i169.i.lcssa ; 2 uses
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !3
  %i.si = add i32 %i.sh, 1
  store i32 %i.si, ptr %i.sg, align 4, !tbaa !3
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rm, i64 256 ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.rm, i64 512 ; 7 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.rm, i64 768 ; 6 uses
  br i1 %.not.i168.i, label %._crit_edge439.i.i, label %.lr.ph416.i.i

bb.bk:                                            ; preds = %bb.bk, %.new925
  %.0340410.i.i = phi i64 [ 0, %.new925 ], [ %spec.select.i169.i.1, %bb.bk ] ; 2 uses
  %.0342409.i.i = phi i64 [ 0, %.new925 ], [ %i.sy, %bb.bk ] ; 3 uses
  %niter933 = phi i64 [ 0, %.new925 ], [ %niter933.next.1, %bb.bk ]
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %.0340410.i.i ; 2 uses
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !3
  %i.so = add i32 %i.sn, 1
  store i32 %i.so, ptr %i.sm, align 4, !tbaa !3
  %i.sp = or disjoint i64 %.0342409.i.i, 1        ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.0342409.i.i
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !29
  %i.ss = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.sp
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !29
  %.not396.i.i = icmp ne i8 %i.sr, %i.st
  %i.su = zext i1 %.not396.i.i to i64
  %spec.select.i169.i = add i64 %.0340410.i.i, %i.su ; 2 uses
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %spec.select.i169.i ; 2 uses
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !3
  %i.sx = add i32 %i.sw, 1
  store i32 %i.sx, ptr %i.sv, align 4, !tbaa !3
  %i.sy = add nuw i64 %.0342409.i.i, 2            ; 4 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.sp
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !29
  %i.tb = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.sy
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !29
  %.not396.i.i.1 = icmp ne i8 %i.ta, %i.tc
  %i.td = zext i1 %.not396.i.i.1 to i64
  %spec.select.i169.i.1 = add i64 %spec.select.i169.i, %i.td ; 4 uses
  %niter933.next.1 = add nuw i64 %niter933, 2     ; 2 uses
  %niter933.ncmp.1 = icmp eq i64 %niter933.next.1, %unroll_iter932
  br i1 %niter933.ncmp.1, label %.preheader408.peel.begin.i.i.unr-lcssa, label %bb.bk, !llvm.loop !84

.lr.ph416.i.i:                                    ; preds = %.preheader408.peel.begin.i.i, %._crit_edge428.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %._crit_edge428.i.i ], [ %.0108.i.i, %.preheader408.peel.begin.i.i ] ; 3 uses
  %.1343437.i.i = phi i64 [ %i.xw, %._crit_edge428.i.i ], [ 0, %.preheader408.peel.begin.i.i ] ; 4 uses
  %.0345436.i.i = phi i64 [ %.2347.lcssa.i.i, %._crit_edge428.i.i ], [ 0, %.preheader408.peel.begin.i.i ]
  %.0351435.i.i = phi i64 [ %i.xv, %._crit_edge428.i.i ], [ 0, %.preheader408.peel.begin.i.i ] ; 2 uses
  %.0352434.i.i = phi ptr [ %.1353.i.i, %._crit_edge428.i.i ], [ %i.ro, %.preheader408.peel.begin.i.i ] ; 3 uses
  %.0354433.i.i = phi i64 [ %.1355.i.i, %._crit_edge428.i.i ], [ %i.rn, %.preheader408.peel.begin.i.i ] ; 5 uses
  %.0356432.i.i = phi i64 [ %.1357.lcssa.i.i, %._crit_edge428.i.i ], [ 0, %.preheader408.peel.begin.i.i ] ; 3 uses
  %.0358431.i.i = phi ptr [ %.1359.i.i, %._crit_edge428.i.i ], [ %i.rj, %.preheader408.peel.begin.i.i ] ; 3 uses
  %.0360430.i.i = phi i64 [ %.1361.i.i, %._crit_edge428.i.i ], [ %i.rn, %.preheader408.peel.begin.i.i ] ; 5 uses
  %.0362429.i.i = phi i64 [ %.1363.lcssa.i.i, %._crit_edge428.i.i ], [ 0, %.preheader408.peel.begin.i.i ] ; 3 uses
  %i.te = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.i, i64 1)
  %umax497.i.i = tail call i64 @llvm.umin.i64(i64 %i.te, i64 64) ; 3 uses
  %i.tf = getelementptr [4 x i8], ptr %i.ru, i64 %.1343437.i.i
  br label %bb.bl

bb.bl:                                            ; preds = %._crit_edge.i.i, %.lr.ph416.i.i
  %.0338414.i.i = phi i64 [ 0, %.lr.ph416.i.i ], [ %i.ur, %._crit_edge.i.i ] ; 7 uses
  %.1346413.i.i = phi i64 [ %.0345436.i.i, %.lr.ph416.i.i ], [ %.2347.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.tg = getelementptr [4 x i8], ptr %i.tf, i64 %.0338414.i.i
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !3  ; 4 uses
  %i.ti = zext i32 %i.th to i64                   ; 2 uses
  %i.tj = getelementptr inbounds nuw [1040 x i8], ptr %i.rs, i64 %.0338414.i.i ; 7 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 1024 ; 3 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tj, i64 1032 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.tj, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.tl, align 8, !tbaa !30
  %.not480.i.i = icmp eq i32 %i.th, 0
  br i1 %.not480.i.i, label %._crit_edge.i.i, label %.lr.ph.i171.i.preheader

.lr.ph.i171.i.preheader:                          ; preds = %bb.bl
  %xtraiter934 = and i64 %i.ti, 1
  %i.tm = icmp eq i32 %i.th, 1
  br i1 %i.tm, label %.lr.ph.i171.i.epil.preheader, label %.lr.ph.i171.i.preheader.new

.lr.ph.i171.i.preheader.new:                      ; preds = %.lr.ph.i171.i.preheader
  %unroll_iter939 = and i64 %i.ti, 4294967294
  br label %.lr.ph.i171.i

.lr.ph.i171.i:                                    ; preds = %.lr.ph.i171.i, %.lr.ph.i171.i.preheader.new
  %i.tn = phi i64 [ 0, %.lr.ph.i171.i.preheader.new ], [ %i.ud, %.lr.ph.i171.i ] ; 2 uses
  %.2347411.i.i = phi i64 [ %.1346413.i.i, %.lr.ph.i171.i.preheader.new ], [ %i.tv, %.lr.ph.i171.i ] ; 3 uses
  %niter940 = phi i64 [ 0, %.lr.ph.i171.i.preheader.new ], [ %niter940.next.1, %.lr.ph.i171.i ]
  %i.to = getelementptr inbounds nuw i8, ptr %.ph, i64 %.2347411.i.i
  %i.tp = load i8, ptr %i.to, align 1, !tbaa !29
  %i.tq = zext i8 %i.tp to i64
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.tj, i64 %i.tq ; 2 uses
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !3
  %i.tt = add i32 %i.ts, 1
  store i32 %i.tt, ptr %i.tr, align 4, !tbaa !3
  %i.tu = or disjoint i64 %i.tn, 1
  store i64 %i.tu, ptr %i.tk, align 8, !tbaa !35
  %i.tv = add i64 %.2347411.i.i, 2                ; 3 uses
  %i.tw = getelementptr i8, ptr %.ph, i64 %.2347411.i.i
  %i.tx = getelementptr i8, ptr %i.tw, i64 1
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !29
  %i.tz = zext i8 %i.ty to i64
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.tj, i64 %i.tz ; 2 uses
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !3
  %i.uc = add i32 %i.ub, 1
  store i32 %i.uc, ptr %i.ua, align 4, !tbaa !3
  %i.ud = add nuw nsw i64 %i.tn, 2                ; 3 uses
  store i64 %i.ud, ptr %i.tk, align 8, !tbaa !35
  %niter940.next.1 = add i64 %niter940, 2         ; 2 uses
  %niter940.ncmp.1 = icmp eq i64 %niter940.next.1, %unroll_iter939
  br i1 %niter940.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i171.i, !llvm.loop !86

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i171.i
  %lcmp.mod936.not = icmp eq i64 %xtraiter934, 0
  br i1 %lcmp.mod936.not, label %._crit_edge.i.i, label %.lr.ph.i171.i.epil.preheader

.lr.ph.i171.i.epil.preheader:                     ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i171.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i171.i.preheader ], [ %i.ud, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.2347411.i.i.epil.init = phi i64 [ %.1346413.i.i, %.lr.ph.i171.i.preheader ], [ %i.tv, %._crit_edge.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod938 = trunc i32 %i.th to i1
  tail call void @llvm.assume(i1 %lcmp.mod938)
  %i.ue = add i64 %.2347411.i.i.epil.init, 1
  %i.uf = getelementptr inbounds nuw i8, ptr %.ph, i64 %.2347411.i.i.epil.init
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !29
  %i.uh = zext i8 %i.ug to i64
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.tj, i64 %i.uh ; 2 uses
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !3
  %i.uk = add i32 %i.uj, 1
  store i32 %i.uk, ptr %i.ui, align 4, !tbaa !3
  %i.ul = add nuw nsw i64 %.epil.init, 1
  store i64 %i.ul, ptr %i.tk, align 8, !tbaa !35
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i171.i.epil.preheader, %._crit_edge.i.i.loopexit.unr-lcssa, %bb.bl
  %.2347.lcssa.i.i = phi i64 [ %.1346413.i.i, %bb.bl ], [ %i.tv, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %i.ue, %.lr.ph.i171.i.epil.preheader ] ; 2 uses
  %i.um = tail call noundef double @_ZN13duckdb_brotli27BrotliPopulationCostLiteralEPKNS_16HistogramLiteralE(ptr noundef nonnull %i.tj)
  store double %i.um, ptr %i.tl, align 8, !tbaa !30
  %i.un = trunc i64 %.0338414.i.i to i32          ; 2 uses
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %.0338414.i.i
  store i32 %i.un, ptr %i.uo, align 4, !tbaa !3
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %.0338414.i.i
  store i32 %i.un, ptr %i.up, align 4, !tbaa !3
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.rm, i64 %.0338414.i.i
  store i32 1, ptr %i.uq, align 4, !tbaa !3
  %i.ur = add nuw nsw i64 %.0338414.i.i, 1        ; 2 uses
  %exitcond494.not.i.i = icmp eq i64 %i.ur, %umax497.i.i
  br i1 %exitcond494.not.i.i, label %._crit_edge417.i.i, label %bb.bl, !llvm.loop !87

._crit_edge417.i.i:                               ; preds = %._crit_edge.i.i
  %i.us = sub nuw i64 %.0108.i.i, %.1343437.i.i
  %i.ut = tail call noundef i64 @llvm.umin.i64(i64 %i.us, i64 64) ; 2 uses
  %i.uu = tail call noundef i64 @_ZN13duckdb_brotli29BrotliHistogramCombineLiteralEPNS_16HistogramLiteralES1_PjS2_S2_PNS_13HistogramPairEmmmm(ptr noundef nonnull %i.rs, ptr noundef %i.rv, ptr noundef nonnull %i.rm, ptr noundef nonnull %i.sk, ptr noundef nonnull %i.sj, ptr noundef %i.rt, i64 noundef %i.ut, i64 noundef %i.ut, i64 noundef 64, i64 noundef 2048) ; 5 uses
  %i.uv = add i64 %i.uu, %.0362429.i.i            ; 3 uses
  %i.uw = icmp ult i64 %.0360430.i.i, %i.uv
  br i1 %i.uw, label %bb.bm, label %bb.br

bb.bm:                                            ; preds = %._crit_edge417.i.i
  %i.ux = icmp eq i64 %.0360430.i.i, 0            ; 2 uses
  %i.uy = select i1 %i.ux, i64 %i.uv, i64 %.0360430.i.i
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %bb.bm
  %.0336.i.i = phi i64 [ %i.uy, %bb.bm ], [ %i.va, %bb.bn ] ; 4 uses
  %i.uz = icmp ult i64 %.0336.i.i, %i.uv
  %i.va = shl i64 %.0336.i.i, 1
  br i1 %i.uz, label %bb.bn, label %bb.bo, !llvm.loop !88

bb.bo:                                            ; preds = %bb.bn
  %i.vb = mul i64 %.0336.i.i, 1040
  %i.vc = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.vb) ; 2 uses
  br i1 %i.ux, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.vd = mul i64 %.0360430.i.i, 1040
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.vc, ptr align 8 %.0358431.i.i, i64 %i.vd, i1 false)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %.0358431.i.i)
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %._crit_edge417.i.i
  %.1361.i.i = phi i64 [ %.0336.i.i, %bb.bq ], [ %.0360430.i.i, %._crit_edge417.i.i ]
  %.1359.i.i = phi ptr [ %i.vc, %bb.bq ], [ %.0358431.i.i, %._crit_edge417.i.i ] ; 3 uses
  %i.ve = add i64 %i.uu, %.0356432.i.i            ; 3 uses
  %i.vf = icmp ult i64 %.0354433.i.i, %i.ve
  br i1 %i.vf, label %bb.bs, label %bb.bx

bb.bs:                                            ; preds = %bb.br
  %i.vg = icmp eq i64 %.0354433.i.i, 0            ; 2 uses
  %i.vh = select i1 %i.vg, i64 %i.ve, i64 %.0354433.i.i
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bt, %bb.bs
  %.0335.i.i = phi i64 [ %i.vh, %bb.bs ], [ %i.vj, %bb.bt ] ; 4 uses
  %i.vi = icmp ult i64 %.0335.i.i, %i.ve
  %i.vj = shl i64 %.0335.i.i, 1
  br i1 %i.vi, label %bb.bt, label %bb.bu, !llvm.loop !89

bb.bu:                                            ; preds = %bb.bt
  %i.vk = shl i64 %.0335.i.i, 2
  %i.vl = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.vk) ; 2 uses
  br i1 %i.vg, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.vm = shl i64 %.0354433.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.vl, ptr align 4 %.0352434.i.i, i64 %i.vm, i1 false)
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %.0352434.i.i)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.br
  %.1355.i.i = phi i64 [ %.0335.i.i, %bb.bw ], [ %.0354433.i.i, %bb.br ]
  %.1353.i.i = phi ptr [ %i.vl, %bb.bw ], [ %.0352434.i.i, %bb.br ] ; 3 uses
  %.not481.i.i = icmp eq i64 %i.uu, 0
  br i1 %.not481.i.i, label %.lr.ph427.i.i, label %.lr.ph423.i.i

.lr.ph427.i.i:                                    ; preds = %.lr.ph423.i.i, %bb.bx
  %.1363.lcssa.i.i = phi i64 [ %.0362429.i.i, %bb.bx ], [ %i.vu, %.lr.ph423.i.i ]
  %.1357.lcssa.i.i = phi i64 [ %.0356432.i.i, %bb.bx ], [ %i.wa, %.lr.ph423.i.i ]
  %i.vn = trunc i64 %.0351435.i.i to i32          ; 5 uses
  %i.vo = getelementptr [4 x i8], ptr %i.rl, i64 %.1343437.i.i ; 5 uses
  %xtraiter942 = and i64 %umax497.i.i, 3          ; 3 uses
  %i.vp = icmp ult i64 %indvars.iv.i.i, 4
  br i1 %i.vp, label %.epil.preheader941, label %.lr.ph427.i.i.new

.lr.ph427.i.i.new:                                ; preds = %.lr.ph427.i.i
  %unroll_iter946 = and i64 %umax497.i.i, 124
  br label %bb.by

.lr.ph423.i.i:                                    ; preds = %bb.bx, %.lr.ph423.i.i
  %.1339421.i.i = phi i64 [ %i.wg, %.lr.ph423.i.i ], [ 0, %bb.bx ] ; 3 uses
  %.1357420.i.i = phi i64 [ %i.wa, %.lr.ph423.i.i ], [ %.0356432.i.i, %bb.bx ] ; 2 uses
  %.1363419.i.i = phi i64 [ %i.vu, %.lr.ph423.i.i ], [ %.0362429.i.i, %bb.bx ] ; 2 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %.1339421.i.i ; 3 uses
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !3
  %i.vs = zext i32 %i.vr to i64
  %i.vt = getelementptr inbounds nuw [1040 x i8], ptr %i.rs, i64 %i.vs
  %i.vu = add i64 %.1363419.i.i, 1                ; 2 uses
  %i.vv = getelementptr inbounds nuw [1040 x i8], ptr %.1359.i.i, i64 %.1363419.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.vv, ptr noundef nonnull align 8 dereferenceable(1040) %i.vt, i64 1040, i1 false), !tbaa.struct !90
  %i.vw = load i32, ptr %i.vq, align 4, !tbaa !3
  %i.vx = zext i32 %i.vw to i64
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.rm, i64 %i.vx
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !3
  %i.wa = add i64 %.1357420.i.i, 1                ; 2 uses
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %.1353.i.i, i64 %.1357420.i.i
  store i32 %i.vz, ptr %i.wb, align 4, !tbaa !3
  %i.wc = trunc i64 %.1339421.i.i to i32
  %i.wd = load i32, ptr %i.vq, align 4, !tbaa !3
  %i.we = zext i32 %i.wd to i64
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %i.we
  store i32 %i.wc, ptr %i.wf, align 4, !tbaa !3
  %i.wg = add nuw i64 %.1339421.i.i, 1            ; 2 uses
  %exitcond495.not.i.i = icmp eq i64 %i.wg, %i.uu
  br i1 %exitcond495.not.i.i, label %.lr.ph427.i.i, label %.lr.ph423.i.i, !llvm.loop !92

bb.by:                                            ; preds = %bb.by, %.lr.ph427.i.i.new
  %.2426.i.i = phi i64 [ 0, %.lr.ph427.i.i.new ], [ %i.xm, %bb.by ] ; 6 uses
  %niter947 = phi i64 [ 0, %.lr.ph427.i.i.new ], [ %niter947.next.3, %bb.by ]
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %.2426.i.i
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !3
  %i.wj = zext i32 %i.wi to i64
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %i.wj
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !3
  %i.wm = add i32 %i.wl, %i.vn
  %i.wn = getelementptr [4 x i8], ptr %i.vo, i64 %.2426.i.i
  store i32 %i.wm, ptr %i.wn, align 4, !tbaa !3
  %i.wo = or disjoint i64 %.2426.i.i, 1           ; 2 uses
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %i.wo
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !3
  %i.wr = zext i32 %i.wq to i64
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %i.wr
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !3
  %i.wu = add i32 %i.wt, %i.vn
  %i.wv = getelementptr [4 x i8], ptr %i.vo, i64 %i.wo
  store i32 %i.wu, ptr %i.wv, align 4, !tbaa !3
  %i.ww = or disjoint i64 %.2426.i.i, 2           ; 2 uses
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %i.ww
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !3
  %i.wz = zext i32 %i.wy to i64
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %i.wz
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !3
  %i.xc = add i32 %i.xb, %i.vn
  %i.xd = getelementptr [4 x i8], ptr %i.vo, i64 %i.ww
  store i32 %i.xc, ptr %i.xd, align 4, !tbaa !3
  %i.xe = or disjoint i64 %.2426.i.i, 3           ; 2 uses
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %i.xe
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !3
  %i.xh = zext i32 %i.xg to i64
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %i.xh
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !3
  %i.xk = add i32 %i.xj, %i.vn
  %i.xl = getelementptr [4 x i8], ptr %i.vo, i64 %i.xe
  store i32 %i.xk, ptr %i.xl, align 4, !tbaa !3
  %i.xm = add nuw nsw i64 %.2426.i.i, 4           ; 2 uses
  %niter947.next.3 = add i64 %niter947, 4         ; 2 uses
  %niter947.ncmp.3 = icmp eq i64 %niter947.next.3, %unroll_iter946
  br i1 %niter947.ncmp.3, label %._crit_edge428.i.i.unr-lcssa, label %bb.by, !llvm.loop !93

._crit_edge428.i.i.unr-lcssa:                     ; preds = %bb.by
  %lcmp.mod944.not = icmp eq i64 %xtraiter942, 0
  br i1 %lcmp.mod944.not, label %._crit_edge428.i.i, label %.epil.preheader941

.epil.preheader941:                               ; preds = %._crit_edge428.i.i.unr-lcssa, %.lr.ph427.i.i
  %.2426.i.i.epil.init = phi i64 [ 0, %.lr.ph427.i.i ], [ %i.xm, %._crit_edge428.i.i.unr-lcssa ]
  %lcmp.mod945 = icmp ne i64 %xtraiter942, 0
  tail call void @llvm.assume(i1 %lcmp.mod945)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bz, %.epil.preheader941
  %.2426.i.i.epil = phi i64 [ %.2426.i.i.epil.init, %.epil.preheader941 ], [ %i.xu, %bb.bz ] ; 3 uses
  %epil.iter943 = phi i64 [ 0, %.epil.preheader941 ], [ %epil.iter943.next, %bb.bz ]
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.sk, i64 %.2426.i.i.epil
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !3
  %i.xp = zext i32 %i.xo to i64
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %i.xp
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !3
  %i.xs = add i32 %i.xr, %i.vn
  %i.xt = getelementptr [4 x i8], ptr %i.vo, i64 %.2426.i.i.epil
  store i32 %i.xs, ptr %i.xt, align 4, !tbaa !3
  %i.xu = add nuw nsw i64 %.2426.i.i.epil, 1
  %epil.iter943.next = add i64 %epil.iter943, 1   ; 2 uses
  %epil.iter943.cmp.not = icmp eq i64 %epil.iter943.next, %xtraiter942
  br i1 %epil.iter943.cmp.not, label %._crit_edge428.i.i, label %bb.bz, !llvm.loop !94

._crit_edge428.i.i:                               ; preds = %bb.bz, %._crit_edge428.i.i.unr-lcssa
  %i.xv = add i64 %i.uu, %.0351435.i.i            ; 2 uses
  %i.xw = add i64 %.1343437.i.i, 64               ; 2 uses
  %i.xx = icmp ult i64 %i.xw, %.0108.i.i
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, -64
  br i1 %i.xx, label %.lr.ph416.i.i, label %._crit_edge439.i.i, !llvm.loop !95

._crit_edge439.i.i:                               ; preds = %._crit_edge428.i.i, %.preheader408.peel.begin.i.i
  %.0358.lcssa.i.i = phi ptr [ %i.rj, %.preheader408.peel.begin.i.i ], [ %.1359.i.i, %._crit_edge428.i.i ] ; 4 uses
  %.0352.lcssa.i.i = phi ptr [ %i.ro, %.preheader408.peel.begin.i.i ], [ %.1353.i.i, %._crit_edge428.i.i ] ; 2 uses
  %.0351.lcssa.i.i = phi i64 [ 0, %.preheader408.peel.begin.i.i ], [ %i.xv, %._crit_edge428.i.i ] ; 11 uses
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.rs)
  %i.xy = shl i64 %.0351.lcssa.i.i, 6
  %i.xz = lshr i64 %.0351.lcssa.i.i, 1
  %i.ya = mul i64 %i.xz, %.0351.lcssa.i.i
  %i.yb = tail call noundef i64 @llvm.umin.i64(i64 %i.xy, i64 %i.ya) ; 3 uses
  %i.yc = icmp ugt i64 %i.yb, 2048
  br i1 %i.yc, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %._crit_edge439.i.i
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.rt)
  %i.yd = mul i64 %i.yb, 24
  %i.ye = add i64 %i.yd, 24
  %i.yf = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.ye)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %._crit_edge439.i.i
  %.0350.i.i = phi ptr [ %i.yf, %bb.ca ], [ %i.rt, %._crit_edge439.i.i ] ; 2 uses
  %.not386.i.i = icmp eq i64 %.0351.lcssa.i.i, 0  ; 2 uses
  br i1 %.not386.i.i, label %._crit_edge446.i.i, label %.lr.ph445.preheader.i.i

.lr.ph445.preheader.i.i:                          ; preds = %bb.cb
  %i.yg = shl i64 %.0351.lcssa.i.i, 2
  %i.yh = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.yg) ; 4 uses
  %min.iters.check725 = icmp ult i64 %.0351.lcssa.i.i, 8
  br i1 %min.iters.check725, label %.lr.ph445.i.i.preheader, label %vector.ph726

vector.ph726:                                     ; preds = %.lr.ph445.preheader.i.i
  %n.vec727 = and i64 %.0351.lcssa.i.i, -8        ; 3 uses
  br label %vector.body728

vector.body728:                                   ; preds = %vector.body728, %vector.ph726
  %index729 = phi i64 [ 0, %vector.ph726 ], [ %index.next730, %vector.body728 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph726 ], [ %vec.ind.next, %vector.body728 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %index729 ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 16
  store <4 x i32> %vec.ind, ptr %i.yi, align 4, !tbaa !3
  store <4 x i32> %step.add, ptr %i.yj, align 4, !tbaa !3
  %index.next730 = add nuw i64 %index729, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.yk = icmp eq i64 %index.next730, %n.vec727
  br i1 %i.yk, label %middle.block731, label %vector.body728, !llvm.loop !96

middle.block731:                                  ; preds = %vector.body728
  %cmp.n732 = icmp eq i64 %.0351.lcssa.i.i, %n.vec727
  br i1 %cmp.n732, label %._crit_edge446.i.i, label %.lr.ph445.i.i.preheader

.lr.ph445.i.i.preheader:                          ; preds = %.lr.ph445.preheader.i.i, %middle.block731
  %.2344443.i.i.ph = phi i64 [ 0, %.lr.ph445.preheader.i.i ], [ %n.vec727, %middle.block731 ]
  br label %.lr.ph445.i.i

.lr.ph445.i.i:                                    ; preds = %.lr.ph445.i.i.preheader, %.lr.ph445.i.i
  %.2344443.i.i = phi i64 [ %i.yn, %.lr.ph445.i.i ], [ %.2344443.i.i.ph, %.lr.ph445.i.i.preheader ] ; 3 uses
  %i.yl = trunc i64 %.2344443.i.i to i32
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %.2344443.i.i
  store i32 %i.yl, ptr %i.ym, align 4, !tbaa !3
  %i.yn = add nuw i64 %.2344443.i.i, 1            ; 2 uses
  %exitcond499.not.i.i = icmp eq i64 %i.yn, %.0351.lcssa.i.i
  br i1 %exitcond499.not.i.i, label %._crit_edge446.i.i, label %.lr.ph445.i.i, !llvm.loop !97

._crit_edge446.i.i:                               ; preds = %.lr.ph445.i.i, %middle.block731, %bb.cb
  %i.yo = phi ptr [ null, %bb.cb ], [ %i.yh, %middle.block731 ], [ %i.yh, %.lr.ph445.i.i ] ; 3 uses
  %i.yp = tail call noundef i64 @_ZN13duckdb_brotli29BrotliHistogramCombineLiteralEPNS_16HistogramLiteralES1_PjS2_S2_PNS_13HistogramPairEmmmm(ptr noundef %.0358.lcssa.i.i, ptr noundef %i.rv, ptr noundef %.0352.lcssa.i.i, ptr noundef %i.rl, ptr noundef %i.yo, ptr noundef %.0350.i.i, i64 noundef %.0351.lcssa.i.i, i64 noundef %.0108.i.i, i64 noundef 256, i64 noundef %i.yb) ; 2 uses
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %.0350.i.i)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %.0352.lcssa.i.i)
  br i1 %.not386.i.i, label %.preheader.i172.i, label %.lr.ph449.preheader.i.i

.lr.ph449.preheader.i.i:                          ; preds = %._crit_edge446.i.i
  %i.yq = shl i64 %.0351.lcssa.i.i, 2             ; 2 uses
  %i.yr = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.yq) ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.yr, i8 -1, i64 %i.yq, i1 false), !tbaa !3
  br label %.preheader.i172.i

.preheader.i172.i:                                ; preds = %.lr.ph449.preheader.i.i, %._crit_edge446.i.i
  %i.ys = phi ptr [ %i.yr, %.lr.ph449.preheader.i.i ], [ null, %._crit_edge446.i.i ] ; 4 uses
  br i1 %.not.i168.i, label %._crit_edge468.i.i, label %.lr.ph467.i.i

.lr.ph467.i.i:                                    ; preds = %.preheader.i172.i
  %i.yt = getelementptr inbounds nuw i8, ptr %i.rv, i64 1024
  %i.yu = getelementptr inbounds nuw i8, ptr %i.rv, i64 1032
  %i.yv = getelementptr inbounds nuw i8, ptr %i.rv, i64 1040 ; 2 uses
  %.not486.i.i = icmp eq i64 %i.yp, 0
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cg, %.lr.ph467.i.i
  %.0333466.i.i = phi i32 [ 0, %.lr.ph467.i.i ], [ %.1334.i.i, %bb.cg ] ; 3 uses
  %.4465.i.i = phi i64 [ 0, %.lr.ph467.i.i ], [ %i.aad, %bb.cg ] ; 4 uses
  %.3348464.i.i = phi i64 [ 0, %.lr.ph467.i.i ], [ %.4349.lcssa.i.i, %bb.cg ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.rv, i8 0, i64 1032, i1 false)
  store double +inf, ptr %i.yu, align 8, !tbaa !30
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %.4465.i.i ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN13duckdb_brotli16BrotliSplitBlockEPNS_13MemoryManagerEPKNS_7CommandEmPKhmmPK19BrotliEncoderParamsPNS_10BlockSplitESB_SB_:bb.a

_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i.preheader: ; preds = %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i.preheader.loopexit.unr-lcssa, %.lr.ph.i165.i136.epil, %_ZL20RemapBlockIdsCommandPhmPtm.exit.i
  br i1 %i.bdz, label %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i.epil.preheader, label %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i

_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i: ; preds = %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i.preheader, %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i
  %.010.i.i139 = phi i64 [ %i.bmc, %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i ], [ 0, %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i.preheader ] ; 4 uses
  %niter994 = phi i64 [ %niter994.next.1, %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i ], [ 0, %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i.preheader ]
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bdg, i64 %.010.i.i139
  %i.blc = load i8, ptr %i.blb, align 1, !tbaa !29
  %i.bld = zext i8 %i.blc to i64
  %i.ble = getelementptr inbounds nuw [2832 x i8], ptr %i.ahi, i64 %i.bld ; 2 uses
  %i.blf = getelementptr inbounds nuw [2 x i8], ptr %i.acw, i64 %.010.i.i139
  %i.blg = load i16, ptr %i.blf, align 2, !tbaa !73
  %i.blh = zext i16 %i.blg to i64
  %i.bli = getelementptr inbounds nuw [4 x i8], ptr %i.ble, i64 %i.blh ; 2 uses
  %i.blj = load i32, ptr %i.bli, align 4, !tbaa !3
  %i.blk = add i32 %i.blj, 1
  store i32 %i.blk, ptr %i.bli, align 4, !tbaa !3
  %i.bll = getelementptr inbounds nuw i8, ptr %i.ble, i64 2816 ; 2 uses
  %i.blm = load i64, ptr %i.bll, align 8, !tbaa !119
  %i.bln = add i64 %i.blm, 1
  store i64 %i.bln, ptr %i.bll, align 8, !tbaa !119
  %i.blo = or disjoint i64 %.010.i.i139, 1        ; 2 uses
  %i.blp = getelementptr inbounds nuw i8, ptr %i.bdg, i64 %i.blo
  %i.blq = load i8, ptr %i.blp, align 1, !tbaa !29
  %i.blr = zext i8 %i.blq to i64
  %i.bls = getelementptr inbounds nuw [2832 x i8], ptr %i.ahi, i64 %i.blr ; 2 uses
  %i.blt = getelementptr inbounds nuw [2 x i8], ptr %i.acw, i64 %i.blo
  %i.blu = load i16, ptr %i.blt, align 2, !tbaa !73
  %i.blv = zext i16 %i.blu to i64
  %i.blw = getelementptr inbounds nuw [4 x i8], ptr %i.bls, i64 %i.blv ; 2 uses
  %i.blx = load i32, ptr %i.blw, align 4, !tbaa !3
  %i.bly = add i32 %i.blx, 1
  store i32 %i.bly, ptr %i.blw, align 4, !tbaa !3
  %i.blz = getelementptr inbounds nuw i8, ptr %i.bls, i64 2816 ; 2 uses
  %i.bma = load i64, ptr %i.blz, align 8, !tbaa !119
  %i.bmb = add i64 %i.bma, 1
  store i64 %i.bmb, ptr %i.blz, align 8, !tbaa !119
  %i.bmc = add nuw i64 %.010.i.i139, 2            ; 2 uses
  %niter994.next.1 = add i64 %niter994, 2         ; 2 uses
  %niter994.ncmp.1 = icmp eq i64 %niter994.next.1, %unroll_iter993
  br i1 %niter994.ncmp.1, label %_ZL27BuildBlockHistogramsCommandPKtmPKhmPN13duckdb_brotli16HistogramCommandE.exit.i.unr-lcssa, label %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i, !llvm.loop !143

_ZL27BuildBlockHistogramsCommandPKtmPKhmPN13duckdb_brotli16HistogramCommandE.exit.i.unr-lcssa: ; preds = %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i
  br i1 %lcmp.mod991.not, label %_ZL27BuildBlockHistogramsCommandPKtmPKhmPN13duckdb_brotli16HistogramCommandE.exit.i, label %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i.epil.preheader

_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i.epil.preheader: ; preds = %_ZL27BuildBlockHistogramsCommandPKtmPKhmPN13duckdb_brotli16HistogramCommandE.exit.i.unr-lcssa, %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i.preheader
  %.010.i.i139.epil.init = phi i64 [ 0, %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i.preheader ], [ %i.bmc, %_ZL27BuildBlockHistogramsCommandPKtmPKhmPN13duckdb_brotli16HistogramCommandE.exit.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod992)
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.bdg, i64 %.010.i.i139.epil.init
  %i.bme = load i8, ptr %i.bmd, align 1, !tbaa !29
  %i.bmf = zext i8 %i.bme to i64
  %i.bmg = getelementptr inbounds nuw [2832 x i8], ptr %i.ahi, i64 %i.bmf ; 2 uses
  %i.bmh = getelementptr inbounds nuw [2 x i8], ptr %i.acw, i64 %.010.i.i139.epil.init
  %i.bmi = load i16, ptr %i.bmh, align 2, !tbaa !73
  %i.bmj = zext i16 %i.bmi to i64
  %i.bmk = getelementptr inbounds nuw [4 x i8], ptr %i.bmg, i64 %i.bmj ; 2 uses
  %i.bml = load i32, ptr %i.bmk, align 4, !tbaa !3
  %i.bmm = add i32 %i.bml, 1
  store i32 %i.bmm, ptr %i.bmk, align 4, !tbaa !3
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.bmg, i64 2816 ; 2 uses
  %i.bmo = load i64, ptr %i.bmn, align 8, !tbaa !119
  %i.bmp = add i64 %i.bmo, 1
  store i64 %i.bmp, ptr %i.bmn, align 8, !tbaa !119
  br label %_ZL27BuildBlockHistogramsCommandPKtmPKhmPN13duckdb_brotli16HistogramCommandE.exit.i

_ZL27BuildBlockHistogramsCommandPKtmPKhmPN13duckdb_brotli16HistogramCommandE.exit.i: ; preds = %_ZL27BuildBlockHistogramsCommandPKtmPKhmPN13duckdb_brotli16HistogramCommandE.exit.i.unr-lcssa, %_ZN13duckdb_brotliL22ClearHistogramsCommandEPNS_16HistogramCommandEm.exit.i.i.epil.preheader
  %i.bmq = add nuw nsw i64 %.0181.i, 1            ; 2 uses
  %exitcond.not.i141 = icmp eq i64 %i.bmq, %i.bdu
  br i1 %exitcond.not.i141, label %bb.eq, label %bb.do, !llvm.loop !144

bb.eq:                                            ; preds = %_ZL27BuildBlockHistogramsCommandPKtmPKhmPN13duckdb_brotli16HistogramCommandE.exit.i
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.bdk)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.bdm)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.bdp)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef nonnull %i.bdr)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef nonnull %i.ahi)
  %.not.i168.i142 = icmp eq i64 %.0108.i.i121, 0  ; 5 uses
  br i1 %.not.i168.i142, label %.thread.i.i144, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.bmr = shl i64 %.0108.i.i121, 2
  %i.bms = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.bmr) ; 2 uses
  %i.bmt = add i64 %.0108.i.i121, 256             ; 2 uses
  %.not383.i.i143 = icmp eq i64 %i.bmt, 0
  br i1 %.not383.i.i143, label %.thread405.i.i146, label %.thread.i.i144

.thread.i.i144:                                   ; preds = %bb.er, %bb.eq
  %i.bmu = phi i64 [ %i.bmt, %bb.er ], [ 256, %bb.eq ] ; 3 uses
  %i.bmv = phi ptr [ %i.bms, %bb.er ], [ null, %bb.eq ] ; 2 uses
  %i.bmw = shl i64 %i.bmu, 2
  %i.bmx = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.bmw) ; 2 uses
  %i.bmy = shl i64 %.0108.i.i121, 4
  %i.bmz = add i64 %i.bmy, 1008
  %i.bna = lshr i64 %i.bmz, 6                     ; 2 uses
  %.not384.i.i145 = icmp eq i64 %i.bna, 0
  br i1 %.not384.i.i145, label %.thread403.i.i147, label %.thread405.i.i146

.thread405.i.i146:                                ; preds = %.thread.i.i144, %bb.er
  %.sink557.i.i = phi i64 [ %i.bna, %.thread.i.i144 ], [ 288230376151711695, %bb.er ] ; 3 uses
  %i.bnb = phi i64 [ %i.bmu, %.thread.i.i144 ], [ 0, %bb.er ]
  %i.bnc = phi ptr [ %i.bmv, %.thread.i.i144 ], [ %i.bms, %bb.er ]
  %i.bnd = phi ptr [ %i.bmx, %.thread.i.i144 ], [ null, %bb.er ]
  %i.bne = mul i64 %.sink557.i.i, 2832
  %i.bnf = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.bne)
  %i.bng = shl nuw nsw i64 %.sink557.i.i, 2
  %i.bnh = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.bng)
  br label %.thread403.i.i147

.thread403.i.i147:                                ; preds = %.thread405.i.i146, %.thread.i.i144
  %i.bni = phi ptr [ %i.bnf, %.thread405.i.i146 ], [ null, %.thread.i.i144 ] ; 2 uses
  %i.bnj = phi i64 [ %i.bnb, %.thread405.i.i146 ], [ %i.bmu, %.thread.i.i144 ]
  %i.bnk = phi ptr [ %i.bnc, %.thread405.i.i146 ], [ %i.bmv, %.thread.i.i144 ] ; 9 uses
  %i.bnl = phi ptr [ %i.bnd, %.thread405.i.i146 ], [ %i.bmx, %.thread.i.i144 ] ; 9 uses
  %i.bnm = phi i64 [ %.sink557.i.i, %.thread405.i.i146 ], [ 0, %.thread.i.i144 ] ; 2 uses
  %i.bnn = phi ptr [ %i.bnh, %.thread405.i.i146 ], [ null, %.thread.i.i144 ] ; 2 uses
  br i1 %.not.i168.i142, label %.new995, label %bb.es

bb.es:                                            ; preds = %.thread403.i.i147
  %i.bno = tail call noundef i64 @llvm.umin.i64(i64 %.0108.i.i121, i64 64)
  %i.bnp = mul nuw nsw i64 %i.bno, 2832
  %i.bnq = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.bnp)
  br label %.new995

.new995:                                          ; preds = %bb.es, %.thread403.i.i147
  %i.bnr = phi ptr [ %i.bnq, %bb.es ], [ null, %.thread403.i.i147 ] ; 4 uses
  %i.bns = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef 49176) ; 3 uses
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.bnl, i64 1024 ; 8 uses
  %i.bnu = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef 5664) ; 10 uses
  %i.bnv = shl i64 %i.bnj, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bnl, i8 0, i64 %i.bnv, i1 false)
  %xtraiter997 = and i64 %i.ael, 1
  %unroll_iter1002 = and i64 %i.ael, -2
  br label %bb.et

.preheader408.peel.begin.i.i153.unr-lcssa:        ; preds = %bb.et
  %lcmp.mod999.not = icmp eq i64 %xtraiter997, 0
  br i1 %lcmp.mod999.not, label %.preheader408.peel.begin.i.i153, label %.epil.preheader996

.epil.preheader996:                               ; preds = %.preheader408.peel.begin.i.i153.unr-lcssa
  %lcmp.mod1001 = trunc i64 %i.ael to i1
  tail call void @llvm.assume(i1 %lcmp.mod1001)
  %i.bnw = getelementptr inbounds nuw [4 x i8], ptr %i.bnt, i64 %spec.select.i169.i151.1 ; 2 uses
  %i.bnx = load i32, ptr %i.bnw, align 4, !tbaa !3
  %i.bny = add i32 %i.bnx, 1
  store i32 %i.bny, ptr %i.bnw, align 4, !tbaa !3
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bdg, i64 %i.box
  %i.boa = load i8, ptr %i.bnz, align 1, !tbaa !29
  %i.bob = getelementptr inbounds nuw i8, ptr %i.bdg, i64 %i.box
  %i.boc = getelementptr inbounds nuw i8, ptr %i.bob, i64 1
  %i.bod = load i8, ptr %i.boc, align 1, !tbaa !29
  %.not396.i.i150.epil = icmp ne i8 %i.boa, %i.bod
  %i.boe = zext i1 %.not396.i.i150.epil to i64
  %spec.select.i169.i151.epil = add i64 %spec.select.i169.i151.1, %i.boe
  br label %.preheader408.peel.begin.i.i153

.preheader408.peel.begin.i.i153:                  ; preds = %.preheader408.peel.begin.i.i153.unr-lcssa, %.epil.preheader996
  %spec.select.i169.i151.lcssa = phi i64 [ %spec.select.i169.i151.1, %.preheader408.peel.begin.i.i153.unr-lcssa ], [ %spec.select.i169.i151.epil, %.epil.preheader996 ]
  %i.bof = getelementptr inbounds nuw [4 x i8], ptr %i.bnt, i64 %spec.select.i169.i151.lcssa ; 2 uses
  %i.bog = load i32, ptr %i.bof, align 4, !tbaa !3
  %i.boh = add i32 %i.bog, 1
  store i32 %i.boh, ptr %i.bof, align 4, !tbaa !3
  %i.boi = getelementptr inbounds nuw i8, ptr %i.bnl, i64 256 ; 3 uses
  %i.boj = getelementptr inbounds nuw i8, ptr %i.bnl, i64 512 ; 7 uses
  %i.bok = getelementptr inbounds nuw i8, ptr %i.bnl, i64 768 ; 6 uses
  br i1 %.not.i168.i142, label %._crit_edge439.i.i189, label %.lr.ph416.i.i154

bb.et:                                            ; preds = %bb.et, %.new995
  %.0340410.i.i148 = phi i64 [ 0, %.new995 ], [ %spec.select.i169.i151.1, %bb.et ] ; 2 uses
  %.0342409.i.i149 = phi i64 [ 0, %.new995 ], [ %i.box, %bb.et ] ; 3 uses
  %niter1003 = phi i64 [ 0, %.new995 ], [ %niter1003.next.1, %bb.et ]
  %i.bol = getelementptr inbounds nuw [4 x i8], ptr %i.bnt, i64 %.0340410.i.i148 ; 2 uses
  %i.bom = load i32, ptr %i.bol, align 4, !tbaa !3
  %i.bon = add i32 %i.bom, 1
  store i32 %i.bon, ptr %i.bol, align 4, !tbaa !3
  %i.boo = or disjoint i64 %.0342409.i.i149, 1    ; 2 uses
  %i.bop = getelementptr inbounds nuw i8, ptr %i.bdg, i64 %.0342409.i.i149
  %i.boq = load i8, ptr %i.bop, align 1, !tbaa !29
  %i.bor = getelementptr inbounds nuw i8, ptr %i.bdg, i64 %i.boo
  %i.bos = load i8, ptr %i.bor, align 1, !tbaa !29
  %.not396.i.i150 = icmp ne i8 %i.boq, %i.bos
  %i.bot = zext i1 %.not396.i.i150 to i64
  %spec.select.i169.i151 = add i64 %.0340410.i.i148, %i.bot ; 2 uses
  %i.bou = getelementptr inbounds nuw [4 x i8], ptr %i.bnt, i64 %spec.select.i169.i151 ; 2 uses
  %i.bov = load i32, ptr %i.bou, align 4, !tbaa !3
  %i.bow = add i32 %i.bov, 1
  store i32 %i.bow, ptr %i.bou, align 4, !tbaa !3
  %i.box = add nuw i64 %.0342409.i.i149, 2        ; 4 uses
  %i.boy = getelementptr inbounds nuw i8, ptr %i.bdg, i64 %i.boo
  %i.boz = load i8, ptr %i.boy, align 1, !tbaa !29
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.bdg, i64 %i.box
  %i.bpb = load i8, ptr %i.bpa, align 1, !tbaa !29
  %.not396.i.i150.1 = icmp ne i8 %i.boz, %i.bpb
  %i.bpc = zext i1 %.not396.i.i150.1 to i64
  %spec.select.i169.i151.1 = add i64 %spec.select.i169.i151, %i.bpc ; 4 uses
  %niter1003.next.1 = add nuw i64 %niter1003, 2   ; 2 uses
  %niter1003.ncmp.1 = icmp eq i64 %niter1003.next.1, %unroll_iter1002
  br i1 %niter1003.ncmp.1, label %.preheader408.peel.begin.i.i153.unr-lcssa, label %bb.et, !llvm.loop !145

.lr.ph416.i.i154:                                 ; preds = %.preheader408.peel.begin.i.i153, %._crit_edge428.i.i187
  %indvars.iv.i.i155 = phi i64 [ %indvars.iv.next.i.i188, %._crit_edge428.i.i187 ], [ %.0108.i.i121, %.preheader408.peel.begin.i.i153 ] ; 3 uses
  %.1343437.i.i156 = phi i64 [ %i.btr, %._crit_edge428.i.i187 ], [ 0, %.preheader408.peel.begin.i.i153 ] ; 4 uses
  %.0345436.i.i157 = phi i64 [ %.2347.lcssa.i.i171, %._crit_edge428.i.i187 ], [ 0, %.preheader408.peel.begin.i.i153 ]
  %.0351435.i.i158 = phi i64 [ %i.btq, %._crit_edge428.i.i187 ], [ 0, %.preheader408.peel.begin.i.i153 ] ; 2 uses
  %.0352434.i.i159 = phi ptr [ %.1353.i.i176, %._crit_edge428.i.i187 ], [ %i.bnn, %.preheader408.peel.begin.i.i153 ] ; 3 uses
  %.0354433.i.i160 = phi i64 [ %.1355.i.i175, %._crit_edge428.i.i187 ], [ %i.bnm, %.preheader408.peel.begin.i.i153 ] ; 5 uses
  %.0356432.i.i161 = phi i64 [ %.1357.lcssa.i.i184, %._crit_edge428.i.i187 ], [ 0, %.preheader408.peel.begin.i.i153 ] ; 3 uses
  %.0358431.i.i162 = phi ptr [ %.1359.i.i174, %._crit_edge428.i.i187 ], [ %i.bni, %.preheader408.peel.begin.i.i153 ] ; 3 uses
  %.0360430.i.i163 = phi i64 [ %.1361.i.i173, %._crit_edge428.i.i187 ], [ %i.bnm, %.preheader408.peel.begin.i.i153 ] ; 5 uses
  %.0362429.i.i164 = phi i64 [ %.1363.lcssa.i.i183, %._crit_edge428.i.i187 ], [ 0, %.preheader408.peel.begin.i.i153 ] ; 3 uses
  %i.bpd = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.i155, i64 1)
  %umax500.i.i = tail call i64 @llvm.umin.i64(i64 %i.bpd, i64 64) ; 3 uses
  %i.bpe = getelementptr [4 x i8], ptr %i.bnt, i64 %.1343437.i.i156
  br label %bb.eu

bb.eu:                                            ; preds = %bb.ev, %.lr.ph416.i.i154
  %.0338414.i.i165 = phi i64 [ 0, %.lr.ph416.i.i154 ], [ %i.bqm, %bb.ev ] ; 7 uses
  %.1346413.i.i166 = phi i64 [ %.0345436.i.i157, %.lr.ph416.i.i154 ], [ %.2347.lcssa.i.i171, %bb.ev ] ; 3 uses
  %i.bpf = getelementptr [4 x i8], ptr %i.bpe, i64 %.0338414.i.i165
  %i.bpg = load i32, ptr %i.bpf, align 4, !tbaa !3 ; 4 uses
  %i.bph = zext i32 %i.bpg to i64                 ; 3 uses
  %i.bpi = getelementptr inbounds nuw [2832 x i8], ptr %i.bnr, i64 %.0338414.i.i165 ; 7 uses
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.bpi, i64 2816
  %i.bpk = getelementptr inbounds nuw i8, ptr %i.bpi, i64 2824 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bpi, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.bpk, align 8, !tbaa !115
  %.not481.i.i167 = icmp eq i32 %i.bpg, 0
  br i1 %.not481.i.i167, label %bb.ev, label %.lr.ph.i171.i168.preheader

.lr.ph.i171.i168.preheader:                       ; preds = %bb.eu
  %xtraiter1004 = and i64 %i.bph, 1
  %i.bpl = icmp eq i32 %i.bpg, 1
  br i1 %i.bpl, label %.lr.ph.i171.i168.epil.preheader, label %.lr.ph.i171.i168.preheader.new

.lr.ph.i171.i168.preheader.new:                   ; preds = %.lr.ph.i171.i168.preheader
  %unroll_iter1009 = and i64 %i.bph, 4294967294
  br label %.lr.ph.i171.i168

.lr.ph.i171.i168:                                 ; preds = %.lr.ph.i171.i168, %.lr.ph.i171.i168.preheader.new
  %.2347411.i.i169 = phi i64 [ %.1346413.i.i166, %.lr.ph.i171.i168.preheader.new ], [ %i.bps, %.lr.ph.i171.i168 ] ; 3 uses
  %niter1010 = phi i64 [ 0, %.lr.ph.i171.i168.preheader.new ], [ %niter1010.next.1, %.lr.ph.i171.i168 ]
  %i.bpm = getelementptr inbounds nuw [2 x i8], ptr %i.acw, i64 %.2347411.i.i169
  %i.bpn = load i16, ptr %i.bpm, align 2, !tbaa !73
  %i.bpo = zext i16 %i.bpn to i64
  %i.bpp = getelementptr inbounds nuw [4 x i8], ptr %i.bpi, i64 %i.bpo ; 2 uses
  %i.bpq = load i32, ptr %i.bpp, align 4, !tbaa !3
  %i.bpr = add i32 %i.bpq, 1
  store i32 %i.bpr, ptr %i.bpp, align 4, !tbaa !3
  %i.bps = add i64 %.2347411.i.i169, 2            ; 3 uses
  %i.bpt = getelementptr [2 x i8], ptr %i.acw, i64 %.2347411.i.i169
  %i.bpu = getelementptr i8, ptr %i.bpt, i64 2
  %i.bpv = load i16, ptr %i.bpu, align 2, !tbaa !73
  %i.bpw = zext i16 %i.bpv to i64
  %i.bpx = getelementptr inbounds nuw [4 x i8], ptr %i.bpi, i64 %i.bpw ; 2 uses
  %i.bpy = load i32, ptr %i.bpx, align 4, !tbaa !3
  %i.bpz = add i32 %i.bpy, 1
  store i32 %i.bpz, ptr %i.bpx, align 4, !tbaa !3
  %niter1010.next.1 = add i64 %niter1010, 2       ; 2 uses
  %niter1010.ncmp.1 = icmp eq i64 %niter1010.next.1, %unroll_iter1009
  br i1 %niter1010.ncmp.1, label %._crit_edge.i.i170.unr-lcssa, label %.lr.ph.i171.i168, !llvm.loop !146

._crit_edge.i.i170.unr-lcssa:                     ; preds = %.lr.ph.i171.i168
  %lcmp.mod1006.not = icmp eq i64 %xtraiter1004, 0
  br i1 %lcmp.mod1006.not, label %._crit_edge.i.i170, label %.lr.ph.i171.i168.epil.preheader

.lr.ph.i171.i168.epil.preheader:                  ; preds = %._crit_edge.i.i170.unr-lcssa, %.lr.ph.i171.i168.preheader
  %.2347411.i.i169.epil.init = phi i64 [ %.1346413.i.i166, %.lr.ph.i171.i168.preheader ], [ %i.bps, %._crit_edge.i.i170.unr-lcssa ] ; 2 uses
  %lcmp.mod1008 = trunc i32 %i.bpg to i1
  tail call void @llvm.assume(i1 %lcmp.mod1008)
  %i.bqa = add i64 %.2347411.i.i169.epil.init, 1
  %i.bqb = getelementptr inbounds nuw [2 x i8], ptr %i.acw, i64 %.2347411.i.i169.epil.init
  %i.bqc = load i16, ptr %i.bqb, align 2, !tbaa !73
  %i.bqd = zext i16 %i.bqc to i64
  %i.bqe = getelementptr inbounds nuw [4 x i8], ptr %i.bpi, i64 %i.bqd ; 2 uses
  %i.bqf = load i32, ptr %i.bqe, align 4, !tbaa !3
  %i.bqg = add i32 %i.bqf, 1
  store i32 %i.bqg, ptr %i.bqe, align 4, !tbaa !3
  br label %._crit_edge.i.i170

._crit_edge.i.i170:                               ; preds = %._crit_edge.i.i170.unr-lcssa, %.lr.ph.i171.i168.epil.preheader
  %.lcssa869 = phi i64 [ %i.bps, %._crit_edge.i.i170.unr-lcssa ], [ %i.bqa, %.lr.ph.i171.i168.epil.preheader ]
  store i64 %i.bph, ptr %i.bpj, align 8, !tbaa !119
  br label %bb.ev

bb.ev:                                            ; preds = %._crit_edge.i.i170, %bb.eu
  %.2347.lcssa.i.i171 = phi i64 [ %.lcssa869, %._crit_edge.i.i170 ], [ %.1346413.i.i166, %bb.eu ] ; 2 uses
  %i.bqh = tail call noundef double @_ZN13duckdb_brotli27BrotliPopulationCostCommandEPKNS_16HistogramCommandE(ptr noundef nonnull %i.bpi)
  store double %i.bqh, ptr %i.bpk, align 8, !tbaa !115
  %i.bqi = trunc i64 %.0338414.i.i165 to i32      ; 2 uses
  %i.bqj = getelementptr inbounds nuw [4 x i8], ptr %i.boi, i64 %.0338414.i.i165
  store i32 %i.bqi, ptr %i.bqj, align 4, !tbaa !3
  %i.bqk = getelementptr inbounds nuw [4 x i8], ptr %i.boj, i64 %.0338414.i.i165
  store i32 %i.bqi, ptr %i.bqk, align 4, !tbaa !3
  %i.bql = getelementptr inbounds nuw [4 x i8], ptr %i.bnl, i64 %.0338414.i.i165
  store i32 1, ptr %i.bql, align 4, !tbaa !3
  %i.bqm = add nuw nsw i64 %.0338414.i.i165, 1    ; 2 uses
  %exitcond497.not.i.i = icmp eq i64 %i.bqm, %umax500.i.i
  br i1 %exitcond497.not.i.i, label %._crit_edge417.i.i172, label %bb.eu, !llvm.loop !147

._crit_edge417.i.i172:                            ; preds = %bb.ev
  %i.bqn = sub nuw i64 %.0108.i.i121, %.1343437.i.i156
  %i.bqo = tail call noundef i64 @llvm.umin.i64(i64 %i.bqn, i64 64) ; 2 uses
  %i.bqp = tail call noundef i64 @_ZN13duckdb_brotli29BrotliHistogramCombineCommandEPNS_16HistogramCommandES1_PjS2_S2_PNS_13HistogramPairEmmmm(ptr noundef nonnull %i.bnr, ptr noundef %i.bnu, ptr noundef nonnull %i.bnl, ptr noundef nonnull %i.boj, ptr noundef nonnull %i.boi, ptr noundef %i.bns, i64 noundef %i.bqo, i64 noundef %i.bqo, i64 noundef 64, i64 noundef 2048) ; 5 uses
  %i.bqq = add i64 %i.bqp, %.0362429.i.i164       ; 3 uses
  %i.bqr = icmp ult i64 %.0360430.i.i163, %i.bqq
  br i1 %i.bqr, label %bb.ew, label %bb.fb

bb.ew:                                            ; preds = %._crit_edge417.i.i172
  %i.bqs = icmp eq i64 %.0360430.i.i163, 0        ; 2 uses
  %i.bqt = select i1 %i.bqs, i64 %i.bqq, i64 %.0360430.i.i163
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ex, %bb.ew
  %.0336.i.i229 = phi i64 [ %i.bqt, %bb.ew ], [ %i.bqv, %bb.ex ] ; 4 uses
  %i.bqu = icmp ult i64 %.0336.i.i229, %i.bqq
  %i.bqv = shl i64 %.0336.i.i229, 1
  br i1 %i.bqu, label %bb.ex, label %bb.ey, !llvm.loop !148

bb.ey:                                            ; preds = %bb.ex
  %i.bqw = mul i64 %.0336.i.i229, 2832
  %i.bqx = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.bqw) ; 2 uses
  br i1 %i.bqs, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.bqy = mul i64 %.0360430.i.i163, 2832
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bqx, ptr align 8 %.0358431.i.i162, i64 %i.bqy, i1 false)
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %.0358431.i.i162)
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %._crit_edge417.i.i172
  %.1361.i.i173 = phi i64 [ %.0336.i.i229, %bb.fa ], [ %.0360430.i.i163, %._crit_edge417.i.i172 ]
  %.1359.i.i174 = phi ptr [ %i.bqx, %bb.fa ], [ %.0358431.i.i162, %._crit_edge417.i.i172 ] ; 3 uses
  %i.bqz = add i64 %i.bqp, %.0356432.i.i161       ; 3 uses
  %i.bra = icmp ult i64 %.0354433.i.i160, %i.bqz
  br i1 %i.bra, label %bb.fc, label %bb.fh

bb.fc:                                            ; preds = %bb.fb
  %i.brb = icmp eq i64 %.0354433.i.i160, 0        ; 2 uses
  %i.brc = select i1 %i.brb, i64 %i.bqz, i64 %.0354433.i.i160
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fd, %bb.fc
  %.0335.i.i228 = phi i64 [ %i.brc, %bb.fc ], [ %i.bre, %bb.fd ] ; 4 uses
  %i.brd = icmp ult i64 %.0335.i.i228, %i.bqz
  %i.bre = shl i64 %.0335.i.i228, 1
  br i1 %i.brd, label %bb.fd, label %bb.fe, !llvm.loop !149

bb.fe:                                            ; preds = %bb.fd
  %i.brf = shl i64 %.0335.i.i228, 2
  %i.brg = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.brf) ; 2 uses
  br i1 %i.brb, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.brh = shl i64 %.0354433.i.i160, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.brg, ptr align 4 %.0352434.i.i159, i64 %i.brh, i1 false)
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %.0352434.i.i159)
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.fb
  %.1355.i.i175 = phi i64 [ %.0335.i.i228, %bb.fg ], [ %.0354433.i.i160, %bb.fb ]
  %.1353.i.i176 = phi ptr [ %i.brg, %bb.fg ], [ %.0352434.i.i159, %bb.fb ] ; 3 uses
  %.not482.i.i = icmp eq i64 %i.bqp, 0
  br i1 %.not482.i.i, label %.lr.ph427.i.i182, label %.lr.ph423.i.i177

.lr.ph427.i.i182:                                 ; preds = %.lr.ph423.i.i177, %bb.fh
  %.1363.lcssa.i.i183 = phi i64 [ %.0362429.i.i164, %bb.fh ], [ %i.brp, %.lr.ph423.i.i177 ]
  %.1357.lcssa.i.i184 = phi i64 [ %.0356432.i.i161, %bb.fh ], [ %i.brv, %.lr.ph423.i.i177 ]
  %i.bri = trunc i64 %.0351435.i.i158 to i32      ; 5 uses
  %i.brj = getelementptr [4 x i8], ptr %i.bnk, i64 %.1343437.i.i156 ; 5 uses
  %xtraiter1014 = and i64 %umax500.i.i, 3         ; 3 uses
  %i.brk = icmp ult i64 %indvars.iv.i.i155, 4
  br i1 %i.brk, label %.epil.preheader1011, label %.lr.ph427.i.i182.new

.lr.ph427.i.i182.new:                             ; preds = %.lr.ph427.i.i182
  %unroll_iter1018 = and i64 %umax500.i.i, 124
  br label %bb.fi

.lr.ph423.i.i177:                                 ; preds = %bb.fh, %.lr.ph423.i.i177
  %.1339421.i.i178 = phi i64 [ %i.bsb, %.lr.ph423.i.i177 ], [ 0, %bb.fh ] ; 3 uses
  %.1357420.i.i179 = phi i64 [ %i.brv, %.lr.ph423.i.i177 ], [ %.0356432.i.i161, %bb.fh ] ; 2 uses
  %.1363419.i.i180 = phi i64 [ %i.brp, %.lr.ph423.i.i177 ], [ %.0362429.i.i164, %bb.fh ] ; 2 uses
  %i.brl = getelementptr inbounds nuw [4 x i8], ptr %i.boi, i64 %.1339421.i.i178 ; 3 uses
  %i.brm = load i32, ptr %i.brl, align 4, !tbaa !3
  %i.brn = zext i32 %i.brm to i64
  %i.bro = getelementptr inbounds nuw [2832 x i8], ptr %i.bnr, i64 %i.brn
  %i.brp = add i64 %.1363419.i.i180, 1            ; 2 uses
  %i.brq = getelementptr inbounds nuw [2832 x i8], ptr %.1359.i.i174, i64 %.1363419.i.i180
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2832) %i.brq, ptr noundef nonnull align 8 dereferenceable(2832) %i.bro, i64 2832, i1 false), !tbaa.struct !150
  %i.brr = load i32, ptr %i.brl, align 4, !tbaa !3
  %i.brs = zext i32 %i.brr to i64
  %i.brt = getelementptr inbounds nuw [4 x i8], ptr %i.bnl, i64 %i.brs
  %i.bru = load i32, ptr %i.brt, align 4, !tbaa !3
  %i.brv = add i64 %.1357420.i.i179, 1            ; 2 uses
  %i.brw = getelementptr inbounds nuw [4 x i8], ptr %.1353.i.i176, i64 %.1357420.i.i179
  store i32 %i.bru, ptr %i.brw, align 4, !tbaa !3
  %i.brx = trunc i64 %.1339421.i.i178 to i32
  %i.bry = load i32, ptr %i.brl, align 4, !tbaa !3
  %i.brz = zext i32 %i.bry to i64
  %i.bsa = getelementptr inbounds nuw [4 x i8], ptr %i.bok, i64 %i.brz
  store i32 %i.brx, ptr %i.bsa, align 4, !tbaa !3
  %i.bsb = add nuw i64 %.1339421.i.i178, 1        ; 2 uses
  %exitcond498.not.i.i181 = icmp eq i64 %i.bsb, %i.bqp
  br i1 %exitcond498.not.i.i181, label %.lr.ph427.i.i182, label %.lr.ph423.i.i177, !llvm.loop !151

bb.fi:                                            ; preds = %bb.fi, %.lr.ph427.i.i182.new
  %.2426.i.i185 = phi i64 [ 0, %.lr.ph427.i.i182.new ], [ %i.bth, %bb.fi ] ; 6 uses
  %niter1019 = phi i64 [ 0, %.lr.ph427.i.i182.new ], [ %niter1019.next.3, %bb.fi ]
  %i.bsc = getelementptr inbounds nuw [4 x i8], ptr %i.boj, i64 %.2426.i.i185
  %i.bsd = load i32, ptr %i.bsc, align 4, !tbaa !3
  %i.bse = zext i32 %i.bsd to i64
  %i.bsf = getelementptr inbounds nuw [4 x i8], ptr %i.bok, i64 %i.bse
  %i.bsg = load i32, ptr %i.bsf, align 4, !tbaa !3
  %i.bsh = add i32 %i.bsg, %i.bri
  %i.bsi = getelementptr [4 x i8], ptr %i.brj, i64 %.2426.i.i185
  store i32 %i.bsh, ptr %i.bsi, align 4, !tbaa !3
  %i.bsj = or disjoint i64 %.2426.i.i185, 1       ; 2 uses
  %i.bsk = getelementptr inbounds nuw [4 x i8], ptr %i.boj, i64 %i.bsj
  %i.bsl = load i32, ptr %i.bsk, align 4, !tbaa !3
  %i.bsm = zext i32 %i.bsl to i64
  %i.bsn = getelementptr inbounds nuw [4 x i8], ptr %i.bok, i64 %i.bsm
  %i.bso = load i32, ptr %i.bsn, align 4, !tbaa !3
  %i.bsp = add i32 %i.bso, %i.bri
  %i.bsq = getelementptr [4 x i8], ptr %i.brj, i64 %i.bsj
  store i32 %i.bsp, ptr %i.bsq, align 4, !tbaa !3
  %i.bsr = or disjoint i64 %.2426.i.i185, 2       ; 2 uses
  %i.bss = getelementptr inbounds nuw [4 x i8], ptr %i.boj, i64 %i.bsr
  %i.bst = load i32, ptr %i.bss, align 4, !tbaa !3
  %i.bsu = zext i32 %i.bst to i64
  %i.bsv = getelementptr inbounds nuw [4 x i8], ptr %i.bok, i64 %i.bsu
  %i.bsw = load i32, ptr %i.bsv, align 4, !tbaa !3
  %i.bsx = add i32 %i.bsw, %i.bri
  %i.bsy = getelementptr [4 x i8], ptr %i.brj, i64 %i.bsr
  store i32 %i.bsx, ptr %i.bsy, align 4, !tbaa !3
  %i.bsz = or disjoint i64 %.2426.i.i185, 3       ; 2 uses
  %i.bta = getelementptr inbounds nuw [4 x i8], ptr %i.boj, i64 %i.bsz
  %i.btb = load i32, ptr %i.bta, align 4, !tbaa !3
  %i.btc = zext i32 %i.btb to i64
  %i.btd = getelementptr inbounds nuw [4 x i8], ptr %i.bok, i64 %i.btc
  %i.bte = load i32, ptr %i.btd, align 4, !tbaa !3
  %i.btf = add i32 %i.bte, %i.bri
  %i.btg = getelementptr [4 x i8], ptr %i.brj, i64 %i.bsz
  store i32 %i.btf, ptr %i.btg, align 4, !tbaa !3
  %i.bth = add nuw nsw i64 %.2426.i.i185, 4       ; 2 uses
  %niter1019.next.3 = add i64 %niter1019, 4       ; 2 uses
  %niter1019.ncmp.3 = icmp eq i64 %niter1019.next.3, %unroll_iter1018
  br i1 %niter1019.ncmp.3, label %._crit_edge428.i.i187.unr-lcssa, label %bb.fi, !llvm.loop !152

._crit_edge428.i.i187.unr-lcssa:                  ; preds = %bb.fi
  %lcmp.mod1016.not = icmp eq i64 %xtraiter1014, 0
  br i1 %lcmp.mod1016.not, label %._crit_edge428.i.i187, label %.epil.preheader1011

.epil.preheader1011:                              ; preds = %._crit_edge428.i.i187.unr-lcssa, %.lr.ph427.i.i182
  %.2426.i.i185.epil.init = phi i64 [ 0, %.lr.ph427.i.i182 ], [ %i.bth, %._crit_edge428.i.i187.unr-lcssa ]
  %lcmp.mod1017 = icmp ne i64 %xtraiter1014, 0
  tail call void @llvm.assume(i1 %lcmp.mod1017)
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fj, %.epil.preheader1011
  %.2426.i.i185.epil = phi i64 [ %.2426.i.i185.epil.init, %.epil.preheader1011 ], [ %i.btp, %bb.fj ] ; 3 uses
  %epil.iter1015 = phi i64 [ 0, %.epil.preheader1011 ], [ %epil.iter1015.next, %bb.fj ]
  %i.bti = getelementptr inbounds nuw [4 x i8], ptr %i.boj, i64 %.2426.i.i185.epil
  %i.btj = load i32, ptr %i.bti, align 4, !tbaa !3
  %i.btk = zext i32 %i.btj to i64
  %i.btl = getelementptr inbounds nuw [4 x i8], ptr %i.bok, i64 %i.btk
  %i.btm = load i32, ptr %i.btl, align 4, !tbaa !3
  %i.btn = add i32 %i.btm, %i.bri
  %i.bto = getelementptr [4 x i8], ptr %i.brj, i64 %.2426.i.i185.epil
  store i32 %i.btn, ptr %i.bto, align 4, !tbaa !3
  %i.btp = add nuw nsw i64 %.2426.i.i185.epil, 1
  %epil.iter1015.next = add i64 %epil.iter1015, 1 ; 2 uses
  %epil.iter1015.cmp.not = icmp eq i64 %epil.iter1015.next, %xtraiter1014
  br i1 %epil.iter1015.cmp.not, label %._crit_edge428.i.i187, label %bb.fj, !llvm.loop !153

._crit_edge428.i.i187:                            ; preds = %bb.fj, %._crit_edge428.i.i187.unr-lcssa
  %i.btq = add i64 %i.bqp, %.0351435.i.i158       ; 2 uses
  %i.btr = add i64 %.1343437.i.i156, 64           ; 2 uses
  %i.bts = icmp ult i64 %i.btr, %.0108.i.i121
  %indvars.iv.next.i.i188 = add i64 %indvars.iv.i.i155, -64
  br i1 %i.bts, label %.lr.ph416.i.i154, label %._crit_edge439.i.i189, !llvm.loop !154

._crit_edge439.i.i189:                            ; preds = %._crit_edge428.i.i187, %.preheader408.peel.begin.i.i153
  %.0358.lcssa.i.i190 = phi ptr [ %i.bni, %.preheader408.peel.begin.i.i153 ], [ %.1359.i.i174, %._crit_edge428.i.i187 ] ; 4 uses
  %.0352.lcssa.i.i191 = phi ptr [ %i.bnn, %.preheader408.peel.begin.i.i153 ], [ %.1353.i.i176, %._crit_edge428.i.i187 ] ; 2 uses
  %.0351.lcssa.i.i192 = phi i64 [ 0, %.preheader408.peel.begin.i.i153 ], [ %i.btq, %._crit_edge428.i.i187 ] ; 11 uses
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.bnr)
  %i.btt = shl i64 %.0351.lcssa.i.i192, 6
  %i.btu = lshr i64 %.0351.lcssa.i.i192, 1
  %i.btv = mul i64 %i.btu, %.0351.lcssa.i.i192
  %i.btw = tail call noundef i64 @llvm.umin.i64(i64 %i.btt, i64 %i.btv) ; 3 uses
  %i.btx = icmp ugt i64 %i.btw, 2048
  br i1 %i.btx, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %._crit_edge439.i.i189
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.bns)
  %i.bty = mul i64 %i.btw, 24
  %i.btz = add i64 %i.bty, 24
  %i.bua = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.btz)
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %._crit_edge439.i.i189
  %.0350.i.i193 = phi ptr [ %i.bua, %bb.fk ], [ %i.bns, %._crit_edge439.i.i189 ] ; 2 uses
  %.not386.i.i194 = icmp eq i64 %.0351.lcssa.i.i192, 0 ; 2 uses
  br i1 %.not386.i.i194, label %._crit_edge446.i.i199, label %.lr.ph445.preheader.i.i195

.lr.ph445.preheader.i.i195:                       ; preds = %bb.fl
  %i.bub = shl i64 %.0351.lcssa.i.i192, 2
  %i.buc = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.bub) ; 4 uses
  %min.iters.check790 = icmp ult i64 %.0351.lcssa.i.i192, 8
  br i1 %min.iters.check790, label %.lr.ph445.i.i196.preheader, label %vector.ph791

vector.ph791:                                     ; preds = %.lr.ph445.preheader.i.i195
  %n.vec792 = and i64 %.0351.lcssa.i.i192, -8     ; 3 uses
  br label %vector.body793

vector.body793:                                   ; preds = %vector.body793, %vector.ph791
  %index794 = phi i64 [ 0, %vector.ph791 ], [ %index.next797, %vector.body793 ] ; 2 uses
  %vec.ind795 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph791 ], [ %vec.ind.next798, %vector.body793 ] ; 3 uses
  %step.add796 = add <4 x i32> %vec.ind795, splat (i32 4)
  %i.bud = getelementptr inbounds nuw [4 x i8], ptr %i.buc, i64 %index794 ; 2 uses
  %i.bue = getelementptr inbounds nuw i8, ptr %i.bud, i64 16
  store <4 x i32> %vec.ind795, ptr %i.bud, align 4, !tbaa !3
  store <4 x i32> %step.add796, ptr %i.bue, align 4, !tbaa !3
  %index.next797 = add nuw i64 %index794, 8       ; 2 uses
  %vec.ind.next798 = add <4 x i32> %vec.ind795, splat (i32 8)
  %i.buf = icmp eq i64 %index.next797, %n.vec792
  br i1 %i.buf, label %middle.block799, label %vector.body793, !llvm.loop !155

middle.block799:                                  ; preds = %vector.body793
  %cmp.n800 = icmp eq i64 %.0351.lcssa.i.i192, %n.vec792
  br i1 %cmp.n800, label %._crit_edge446.i.i199, label %.lr.ph445.i.i196.preheader

.lr.ph445.i.i196.preheader:                       ; preds = %.lr.ph445.preheader.i.i195, %middle.block799
  %.2344443.i.i197.ph = phi i64 [ 0, %.lr.ph445.preheader.i.i195 ], [ %n.vec792, %middle.block799 ]
  br label %.lr.ph445.i.i196

.lr.ph445.i.i196:                                 ; preds = %.lr.ph445.i.i196.preheader, %.lr.ph445.i.i196
  %.2344443.i.i197 = phi i64 [ %i.bui, %.lr.ph445.i.i196 ], [ %.2344443.i.i197.ph, %.lr.ph445.i.i196.preheader ] ; 3 uses
  %i.bug = trunc i64 %.2344443.i.i197 to i32
  %i.buh = getelementptr inbounds nuw [4 x i8], ptr %i.buc, i64 %.2344443.i.i197
  store i32 %i.bug, ptr %i.buh, align 4, !tbaa !3
  %i.bui = add nuw i64 %.2344443.i.i197, 1        ; 2 uses
  %exitcond502.not.i.i198 = icmp eq i64 %i.bui, %.0351.lcssa.i.i192
  br i1 %exitcond502.not.i.i198, label %._crit_edge446.i.i199, label %.lr.ph445.i.i196, !llvm.loop !156

._crit_edge446.i.i199:                            ; preds = %.lr.ph445.i.i196, %middle.block799, %bb.fl
  %i.buj = phi ptr [ null, %bb.fl ], [ %i.buc, %middle.block799 ], [ %i.buc, %.lr.ph445.i.i196 ] ; 3 uses
  %i.buk = tail call noundef i64 @_ZN13duckdb_brotli29BrotliHistogramCombineCommandEPNS_16HistogramCommandES1_PjS2_S2_PNS_13HistogramPairEmmmm(ptr noundef %.0358.lcssa.i.i190, ptr noundef %i.bnu, ptr noundef %.0352.lcssa.i.i191, ptr noundef %i.bnk, ptr noundef %i.buj, ptr noundef %.0350.i.i193, i64 noundef %.0351.lcssa.i.i192, i64 noundef %.0108.i.i121, i64 noundef 256, i64 noundef %i.btw) ; 2 uses
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %.0350.i.i193)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %.0352.lcssa.i.i191)
  br i1 %.not386.i.i194, label %.preheader.i172.i201, label %.lr.ph449.preheader.i.i200

.lr.ph449.preheader.i.i200:                       ; preds = %._crit_edge446.i.i199
  %i.bul = shl i64 %.0351.lcssa.i.i192, 2         ; 2 uses
  %i.bum = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.bul) ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bum, i8 -1, i64 %i.bul, i1 false), !tbaa !3
  br label %.preheader.i172.i201

.preheader.i172.i201:                             ; preds = %.lr.ph449.preheader.i.i200, %._crit_edge446.i.i199
  %i.bun = phi ptr [ %i.bum, %.lr.ph449.preheader.i.i200 ], [ null, %._crit_edge446.i.i199 ] ; 4 uses
  br i1 %.not.i168.i142, label %._crit_edge469.i.i, label %.lr.ph468.i.i

.lr.ph468.i.i:                                    ; preds = %.preheader.i172.i201
  %i.buo = getelementptr inbounds nuw i8, ptr %i.bnu, i64 2816
  %i.bup = getelementptr inbounds nuw i8, ptr %i.bnu, i64 2824
  %i.buq = getelementptr inbounds nuw i8, ptr %i.bnu, i64 2832 ; 2 uses
  %.not487.i.i202 = icmp eq i64 %i.buk, 0
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fr, %.lr.ph468.i.i
  %.0333467.i.i = phi i32 [ 0, %.lr.ph468.i.i ], [ %.1334.i.i211, %bb.fr ] ; 3 uses
  %.4466.i.i = phi i64 [ 0, %.lr.ph468.i.i ], [ %i.bvy, %bb.fr ] ; 4 uses
  %.3348465.i.i = phi i64 [ 0, %.lr.ph468.i.i ], [ %.4349.lcssa.i.i206, %bb.fr ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bnu, i8 0, i64 2824, i1 false)
  store double +inf, ptr %i.bup, align 8, !tbaa !115
  %i.bur = getelementptr inbounds nuw [4 x i8], ptr %i.bnt, i64 %.4466.i.i ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN13duckdb_brotli16BrotliSplitBlockEPNS_13MemoryManagerEPKNS_7CommandEmPKhmmPK19BrotliEncoderParamsPNS_10BlockSplitESB_SB_:bb.a

_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i.preheader: ; preds = %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i.preheader.loopexit.unr-lcssa, %.lr.ph.i165.i311.epil, %_ZL21RemapBlockIdsDistancePhmPtm.exit.i
  br i1 %i.cxq, label %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i.epil.preheader, label %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i

_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i: ; preds = %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i.preheader, %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i
  %.010.i.i314 = phi i64 [ %i.dft, %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i ], [ 0, %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i.preheader ] ; 4 uses
  %niter1066 = phi i64 [ %niter1066.next.1, %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i ], [ 0, %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i.preheader ]
  %i.des = getelementptr inbounds nuw i8, ptr %i.cwy, i64 %.010.i.i314
  %i.det = load i8, ptr %i.des, align 1, !tbaa !29
  %i.deu = zext i8 %i.det to i64
  %i.dev = getelementptr inbounds nuw [2192 x i8], ptr %i.cba, i64 %i.deu ; 2 uses
  %i.dew = getelementptr inbounds nuw [2 x i8], ptr %i.byq, i64 %.010.i.i314
  %i.dex = load i16, ptr %i.dew, align 2, !tbaa !73
  %i.dey = zext i16 %i.dex to i64
  %i.dez = getelementptr inbounds nuw [4 x i8], ptr %i.dev, i64 %i.dey ; 2 uses
  %i.dfa = load i32, ptr %i.dez, align 4, !tbaa !3
  %i.dfb = add i32 %i.dfa, 1
  store i32 %i.dfb, ptr %i.dez, align 4, !tbaa !3
  %i.dfc = getelementptr inbounds nuw i8, ptr %i.dev, i64 2176 ; 2 uses
  %i.dfd = load i64, ptr %i.dfc, align 8, !tbaa !171
  %i.dfe = add i64 %i.dfd, 1
  store i64 %i.dfe, ptr %i.dfc, align 8, !tbaa !171
  %i.dff = or disjoint i64 %.010.i.i314, 1        ; 2 uses
  %i.dfg = getelementptr inbounds nuw i8, ptr %i.cwy, i64 %i.dff
  %i.dfh = load i8, ptr %i.dfg, align 1, !tbaa !29
  %i.dfi = zext i8 %i.dfh to i64
  %i.dfj = getelementptr inbounds nuw [2192 x i8], ptr %i.cba, i64 %i.dfi ; 2 uses
  %i.dfk = getelementptr inbounds nuw [2 x i8], ptr %i.byq, i64 %i.dff
  %i.dfl = load i16, ptr %i.dfk, align 2, !tbaa !73
  %i.dfm = zext i16 %i.dfl to i64
  %i.dfn = getelementptr inbounds nuw [4 x i8], ptr %i.dfj, i64 %i.dfm ; 2 uses
  %i.dfo = load i32, ptr %i.dfn, align 4, !tbaa !3
  %i.dfp = add i32 %i.dfo, 1
  store i32 %i.dfp, ptr %i.dfn, align 4, !tbaa !3
  %i.dfq = getelementptr inbounds nuw i8, ptr %i.dfj, i64 2176 ; 2 uses
  %i.dfr = load i64, ptr %i.dfq, align 8, !tbaa !171
  %i.dfs = add i64 %i.dfr, 1
  store i64 %i.dfs, ptr %i.dfq, align 8, !tbaa !171
  %i.dft = add nuw i64 %.010.i.i314, 2            ; 2 uses
  %niter1066.next.1 = add i64 %niter1066, 2       ; 2 uses
  %niter1066.ncmp.1 = icmp eq i64 %niter1066.next.1, %unroll_iter1065
  br i1 %niter1066.ncmp.1, label %_ZL28BuildBlockHistogramsDistancePKtmPKhmPN13duckdb_brotli17HistogramDistanceE.exit.i.unr-lcssa, label %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i, !llvm.loop !195

_ZL28BuildBlockHistogramsDistancePKtmPKhmPN13duckdb_brotli17HistogramDistanceE.exit.i.unr-lcssa: ; preds = %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i
  br i1 %lcmp.mod1063.not, label %_ZL28BuildBlockHistogramsDistancePKtmPKhmPN13duckdb_brotli17HistogramDistanceE.exit.i, label %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i.epil.preheader

_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i.epil.preheader: ; preds = %_ZL28BuildBlockHistogramsDistancePKtmPKhmPN13duckdb_brotli17HistogramDistanceE.exit.i.unr-lcssa, %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i.preheader
  %.010.i.i314.epil.init = phi i64 [ 0, %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i.preheader ], [ %i.dft, %_ZL28BuildBlockHistogramsDistancePKtmPKhmPN13duckdb_brotli17HistogramDistanceE.exit.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1064)
  %i.dfu = getelementptr inbounds nuw i8, ptr %i.cwy, i64 %.010.i.i314.epil.init
  %i.dfv = load i8, ptr %i.dfu, align 1, !tbaa !29
  %i.dfw = zext i8 %i.dfv to i64
  %i.dfx = getelementptr inbounds nuw [2192 x i8], ptr %i.cba, i64 %i.dfw ; 2 uses
  %i.dfy = getelementptr inbounds nuw [2 x i8], ptr %i.byq, i64 %.010.i.i314.epil.init
  %i.dfz = load i16, ptr %i.dfy, align 2, !tbaa !73
  %i.dga = zext i16 %i.dfz to i64
  %i.dgb = getelementptr inbounds nuw [4 x i8], ptr %i.dfx, i64 %i.dga ; 2 uses
  %i.dgc = load i32, ptr %i.dgb, align 4, !tbaa !3
  %i.dgd = add i32 %i.dgc, 1
  store i32 %i.dgd, ptr %i.dgb, align 4, !tbaa !3
  %i.dge = getelementptr inbounds nuw i8, ptr %i.dfx, i64 2176 ; 2 uses
  %i.dgf = load i64, ptr %i.dge, align 8, !tbaa !171
  %i.dgg = add i64 %i.dgf, 1
  store i64 %i.dgg, ptr %i.dge, align 8, !tbaa !171
  br label %_ZL28BuildBlockHistogramsDistancePKtmPKhmPN13duckdb_brotli17HistogramDistanceE.exit.i

_ZL28BuildBlockHistogramsDistancePKtmPKhmPN13duckdb_brotli17HistogramDistanceE.exit.i: ; preds = %_ZL28BuildBlockHistogramsDistancePKtmPKhmPN13duckdb_brotli17HistogramDistanceE.exit.i.unr-lcssa, %_ZN13duckdb_brotliL23ClearHistogramsDistanceEPNS_17HistogramDistanceEm.exit.i.i.epil.preheader
  %i.dgh = add nuw nsw i64 %.0181.i260, 1         ; 2 uses
  %exitcond.not.i316 = icmp eq i64 %i.dgh, %i.cxm
  br i1 %exitcond.not.i316, label %bb.ih, label %bb.hf, !llvm.loop !196

bb.ih:                                            ; preds = %_ZL28BuildBlockHistogramsDistancePKtmPKhmPN13duckdb_brotli17HistogramDistanceE.exit.i
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.cxc)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.cxe)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.cxh)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef nonnull %i.cxj)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef nonnull %i.cba)
  %.not.i168.i317 = icmp eq i64 %.0108.i.i296, 0  ; 5 uses
  br i1 %.not.i168.i317, label %.thread.i.i319, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %i.dgi = shl i64 %.0108.i.i296, 2
  %i.dgj = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.dgi) ; 2 uses
  %i.dgk = add i64 %.0108.i.i296, 256             ; 2 uses
  %.not383.i.i318 = icmp eq i64 %i.dgk, 0
  br i1 %.not383.i.i318, label %.thread405.i.i321, label %.thread.i.i319

.thread.i.i319:                                   ; preds = %bb.ii, %bb.ih
  %i.dgl = phi i64 [ %i.dgk, %bb.ii ], [ 256, %bb.ih ] ; 3 uses
  %i.dgm = phi ptr [ %i.dgj, %bb.ii ], [ null, %bb.ih ] ; 2 uses
  %i.dgn = shl i64 %i.dgl, 2
  %i.dgo = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.dgn) ; 2 uses
  %i.dgp = shl i64 %.0108.i.i296, 4
  %i.dgq = add i64 %i.dgp, 1008
  %i.dgr = lshr i64 %i.dgq, 6                     ; 2 uses
  %.not384.i.i320 = icmp eq i64 %i.dgr, 0
  br i1 %.not384.i.i320, label %.thread403.i.i323, label %.thread405.i.i321

.thread405.i.i321:                                ; preds = %.thread.i.i319, %bb.ii
  %.sink557.i.i322 = phi i64 [ %i.dgr, %.thread.i.i319 ], [ 288230376151711695, %bb.ii ] ; 3 uses
  %i.dgs = phi i64 [ %i.dgl, %.thread.i.i319 ], [ 0, %bb.ii ]
  %i.dgt = phi ptr [ %i.dgm, %.thread.i.i319 ], [ %i.dgj, %bb.ii ]
  %i.dgu = phi ptr [ %i.dgo, %.thread.i.i319 ], [ null, %bb.ii ]
  %i.dgv = mul i64 %.sink557.i.i322, 2192
  %i.dgw = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.dgv)
  %i.dgx = shl nuw nsw i64 %.sink557.i.i322, 2
  %i.dgy = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.dgx)
  br label %.thread403.i.i323

.thread403.i.i323:                                ; preds = %.thread405.i.i321, %.thread.i.i319
  %i.dgz = phi ptr [ %i.dgw, %.thread405.i.i321 ], [ null, %.thread.i.i319 ] ; 2 uses
  %i.dha = phi i64 [ %i.dgs, %.thread405.i.i321 ], [ %i.dgl, %.thread.i.i319 ]
  %i.dhb = phi ptr [ %i.dgt, %.thread405.i.i321 ], [ %i.dgm, %.thread.i.i319 ] ; 9 uses
  %i.dhc = phi ptr [ %i.dgu, %.thread405.i.i321 ], [ %i.dgo, %.thread.i.i319 ] ; 9 uses
  %i.dhd = phi i64 [ %.sink557.i.i322, %.thread405.i.i321 ], [ 0, %.thread.i.i319 ] ; 2 uses
  %i.dhe = phi ptr [ %i.dgy, %.thread405.i.i321 ], [ null, %.thread.i.i319 ] ; 2 uses
  br i1 %.not.i168.i317, label %.new1067, label %bb.ij

bb.ij:                                            ; preds = %.thread403.i.i323
  %i.dhf = tail call noundef i64 @llvm.umin.i64(i64 %.0108.i.i296, i64 64)
  %i.dhg = mul nuw nsw i64 %i.dhf, 2192
  %i.dhh = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.dhg)
  br label %.new1067

.new1067:                                         ; preds = %bb.ij, %.thread403.i.i323
  %i.dhi = phi ptr [ %i.dhh, %bb.ij ], [ null, %.thread403.i.i323 ] ; 4 uses
  %i.dhj = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef 49176) ; 3 uses
  %i.dhk = getelementptr inbounds nuw i8, ptr %i.dhc, i64 1024 ; 8 uses
  %i.dhl = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef 4384) ; 10 uses
  %i.dhm = shl i64 %i.dha, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dhc, i8 0, i64 %i.dhm, i1 false)
  %xtraiter1069 = and i64 %i.cxn, 1
  %unroll_iter1074 = and i64 %i.cxn, -2
  br label %bb.ik

.preheader408.peel.begin.i.i329.unr-lcssa:        ; preds = %bb.ik
  %lcmp.mod1071.not = icmp eq i64 %xtraiter1069, 0
  br i1 %lcmp.mod1071.not, label %.preheader408.peel.begin.i.i329, label %.epil.preheader1068

.epil.preheader1068:                              ; preds = %.preheader408.peel.begin.i.i329.unr-lcssa
  %lcmp.mod1073 = trunc i64 %i.cxn to i1
  tail call void @llvm.assume(i1 %lcmp.mod1073)
  %i.dhn = getelementptr inbounds nuw [4 x i8], ptr %i.dhk, i64 %spec.select.i169.i327.1 ; 2 uses
  %i.dho = load i32, ptr %i.dhn, align 4, !tbaa !3
  %i.dhp = add i32 %i.dho, 1
  store i32 %i.dhp, ptr %i.dhn, align 4, !tbaa !3
  %i.dhq = getelementptr inbounds nuw i8, ptr %i.cwy, i64 %i.dio
  %i.dhr = load i8, ptr %i.dhq, align 1, !tbaa !29
  %i.dhs = getelementptr inbounds nuw i8, ptr %i.cwy, i64 %i.dio
  %i.dht = getelementptr inbounds nuw i8, ptr %i.dhs, i64 1
  %i.dhu = load i8, ptr %i.dht, align 1, !tbaa !29
  %.not396.i.i326.epil = icmp ne i8 %i.dhr, %i.dhu
  %i.dhv = zext i1 %.not396.i.i326.epil to i64
  %spec.select.i169.i327.epil = add i64 %spec.select.i169.i327.1, %i.dhv
  br label %.preheader408.peel.begin.i.i329

.preheader408.peel.begin.i.i329:                  ; preds = %.preheader408.peel.begin.i.i329.unr-lcssa, %.epil.preheader1068
  %spec.select.i169.i327.lcssa = phi i64 [ %spec.select.i169.i327.1, %.preheader408.peel.begin.i.i329.unr-lcssa ], [ %spec.select.i169.i327.epil, %.epil.preheader1068 ]
  %i.dhw = getelementptr inbounds nuw [4 x i8], ptr %i.dhk, i64 %spec.select.i169.i327.lcssa ; 2 uses
  %i.dhx = load i32, ptr %i.dhw, align 4, !tbaa !3
  %i.dhy = add i32 %i.dhx, 1
  store i32 %i.dhy, ptr %i.dhw, align 4, !tbaa !3
  %i.dhz = getelementptr inbounds nuw i8, ptr %i.dhc, i64 256 ; 3 uses
  %i.dia = getelementptr inbounds nuw i8, ptr %i.dhc, i64 512 ; 7 uses
  %i.dib = getelementptr inbounds nuw i8, ptr %i.dhc, i64 768 ; 6 uses
  br i1 %.not.i168.i317, label %._crit_edge439.i.i370, label %.lr.ph416.i.i330

bb.ik:                                            ; preds = %bb.ik, %.new1067
  %.0340410.i.i324 = phi i64 [ 0, %.new1067 ], [ %spec.select.i169.i327.1, %bb.ik ] ; 2 uses
  %.0342409.i.i325 = phi i64 [ 0, %.new1067 ], [ %i.dio, %bb.ik ] ; 3 uses
  %niter1075 = phi i64 [ 0, %.new1067 ], [ %niter1075.next.1, %bb.ik ]
  %i.dic = getelementptr inbounds nuw [4 x i8], ptr %i.dhk, i64 %.0340410.i.i324 ; 2 uses
  %i.did = load i32, ptr %i.dic, align 4, !tbaa !3
  %i.die = add i32 %i.did, 1
  store i32 %i.die, ptr %i.dic, align 4, !tbaa !3
  %i.dif = or disjoint i64 %.0342409.i.i325, 1    ; 2 uses
  %i.dig = getelementptr inbounds nuw i8, ptr %i.cwy, i64 %.0342409.i.i325
  %i.dih = load i8, ptr %i.dig, align 1, !tbaa !29
  %i.dii = getelementptr inbounds nuw i8, ptr %i.cwy, i64 %i.dif
  %i.dij = load i8, ptr %i.dii, align 1, !tbaa !29
  %.not396.i.i326 = icmp ne i8 %i.dih, %i.dij
  %i.dik = zext i1 %.not396.i.i326 to i64
  %spec.select.i169.i327 = add i64 %.0340410.i.i324, %i.dik ; 2 uses
  %i.dil = getelementptr inbounds nuw [4 x i8], ptr %i.dhk, i64 %spec.select.i169.i327 ; 2 uses
  %i.dim = load i32, ptr %i.dil, align 4, !tbaa !3
  %i.din = add i32 %i.dim, 1
  store i32 %i.din, ptr %i.dil, align 4, !tbaa !3
  %i.dio = add nuw i64 %.0342409.i.i325, 2        ; 4 uses
  %i.dip = getelementptr inbounds nuw i8, ptr %i.cwy, i64 %i.dif
  %i.diq = load i8, ptr %i.dip, align 1, !tbaa !29
  %i.dir = getelementptr inbounds nuw i8, ptr %i.cwy, i64 %i.dio
  %i.dis = load i8, ptr %i.dir, align 1, !tbaa !29
  %.not396.i.i326.1 = icmp ne i8 %i.diq, %i.dis
  %i.dit = zext i1 %.not396.i.i326.1 to i64
  %spec.select.i169.i327.1 = add i64 %spec.select.i169.i327, %i.dit ; 4 uses
  %niter1075.next.1 = add nuw i64 %niter1075, 2   ; 2 uses
  %niter1075.ncmp.1 = icmp eq i64 %niter1075.next.1, %unroll_iter1074
  br i1 %niter1075.ncmp.1, label %.preheader408.peel.begin.i.i329.unr-lcssa, label %bb.ik, !llvm.loop !197

.lr.ph416.i.i330:                                 ; preds = %.preheader408.peel.begin.i.i329, %._crit_edge428.i.i368
  %indvars.iv.i.i331 = phi i64 [ %indvars.iv.next.i.i369, %._crit_edge428.i.i368 ], [ %.0108.i.i296, %.preheader408.peel.begin.i.i329 ] ; 3 uses
  %.1343437.i.i332 = phi i64 [ %i.dni, %._crit_edge428.i.i368 ], [ 0, %.preheader408.peel.begin.i.i329 ] ; 4 uses
  %.0345436.i.i333 = phi i64 [ %.2347.lcssa.i.i350, %._crit_edge428.i.i368 ], [ 0, %.preheader408.peel.begin.i.i329 ]
  %.0351435.i.i334 = phi i64 [ %i.dnh, %._crit_edge428.i.i368 ], [ 0, %.preheader408.peel.begin.i.i329 ] ; 2 uses
  %.0352434.i.i335 = phi ptr [ %.1353.i.i356, %._crit_edge428.i.i368 ], [ %i.dhe, %.preheader408.peel.begin.i.i329 ] ; 3 uses
  %.0354433.i.i336 = phi i64 [ %.1355.i.i355, %._crit_edge428.i.i368 ], [ %i.dhd, %.preheader408.peel.begin.i.i329 ] ; 5 uses
  %.0356432.i.i337 = phi i64 [ %.1357.lcssa.i.i365, %._crit_edge428.i.i368 ], [ 0, %.preheader408.peel.begin.i.i329 ] ; 3 uses
  %.0358431.i.i338 = phi ptr [ %.1359.i.i354, %._crit_edge428.i.i368 ], [ %i.dgz, %.preheader408.peel.begin.i.i329 ] ; 3 uses
  %.0360430.i.i339 = phi i64 [ %.1361.i.i353, %._crit_edge428.i.i368 ], [ %i.dhd, %.preheader408.peel.begin.i.i329 ] ; 5 uses
  %.0362429.i.i340 = phi i64 [ %.1363.lcssa.i.i364, %._crit_edge428.i.i368 ], [ 0, %.preheader408.peel.begin.i.i329 ] ; 3 uses
  %i.diu = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.i331, i64 1)
  %umax500.i.i341 = tail call i64 @llvm.umin.i64(i64 %i.diu, i64 64) ; 3 uses
  %i.div = getelementptr [4 x i8], ptr %i.dhk, i64 %.1343437.i.i332
  br label %bb.il

bb.il:                                            ; preds = %bb.im, %.lr.ph416.i.i330
  %.0338414.i.i342 = phi i64 [ 0, %.lr.ph416.i.i330 ], [ %i.dkd, %bb.im ] ; 7 uses
  %.1346413.i.i343 = phi i64 [ %.0345436.i.i333, %.lr.ph416.i.i330 ], [ %.2347.lcssa.i.i350, %bb.im ] ; 3 uses
  %i.diw = getelementptr [4 x i8], ptr %i.div, i64 %.0338414.i.i342
  %i.dix = load i32, ptr %i.diw, align 4, !tbaa !3 ; 4 uses
  %i.diy = zext i32 %i.dix to i64                 ; 3 uses
  %i.diz = getelementptr inbounds nuw [2192 x i8], ptr %i.dhi, i64 %.0338414.i.i342 ; 7 uses
  %i.dja = getelementptr inbounds nuw i8, ptr %i.diz, i64 2176
  %i.djb = getelementptr inbounds nuw i8, ptr %i.diz, i64 2184 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.diz, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.djb, align 8, !tbaa !167
  %.not481.i.i344 = icmp eq i32 %i.dix, 0
  br i1 %.not481.i.i344, label %bb.im, label %.lr.ph.i171.i345.preheader

.lr.ph.i171.i345.preheader:                       ; preds = %bb.il
  %xtraiter1076 = and i64 %i.diy, 1
  %i.djc = icmp eq i32 %i.dix, 1
  br i1 %i.djc, label %.lr.ph.i171.i345.epil.preheader, label %.lr.ph.i171.i345.preheader.new

.lr.ph.i171.i345.preheader.new:                   ; preds = %.lr.ph.i171.i345.preheader
  %unroll_iter1081 = and i64 %i.diy, 4294967294
  br label %.lr.ph.i171.i345

.lr.ph.i171.i345:                                 ; preds = %.lr.ph.i171.i345, %.lr.ph.i171.i345.preheader.new
  %.2347411.i.i347 = phi i64 [ %.1346413.i.i343, %.lr.ph.i171.i345.preheader.new ], [ %i.djj, %.lr.ph.i171.i345 ] ; 3 uses
  %niter1082 = phi i64 [ 0, %.lr.ph.i171.i345.preheader.new ], [ %niter1082.next.1, %.lr.ph.i171.i345 ]
  %i.djd = getelementptr inbounds nuw [2 x i8], ptr %i.byq, i64 %.2347411.i.i347
  %i.dje = load i16, ptr %i.djd, align 2, !tbaa !73
  %i.djf = zext i16 %i.dje to i64
  %i.djg = getelementptr inbounds nuw [4 x i8], ptr %i.diz, i64 %i.djf ; 2 uses
  %i.djh = load i32, ptr %i.djg, align 4, !tbaa !3
  %i.dji = add i32 %i.djh, 1
  store i32 %i.dji, ptr %i.djg, align 4, !tbaa !3
  %i.djj = add i64 %.2347411.i.i347, 2            ; 3 uses
  %i.djk = getelementptr [2 x i8], ptr %i.byq, i64 %.2347411.i.i347
  %i.djl = getelementptr i8, ptr %i.djk, i64 2
  %i.djm = load i16, ptr %i.djl, align 2, !tbaa !73
  %i.djn = zext i16 %i.djm to i64
  %i.djo = getelementptr inbounds nuw [4 x i8], ptr %i.diz, i64 %i.djn ; 2 uses
  %i.djp = load i32, ptr %i.djo, align 4, !tbaa !3
  %i.djq = add i32 %i.djp, 1
  store i32 %i.djq, ptr %i.djo, align 4, !tbaa !3
  %niter1082.next.1 = add i64 %niter1082, 2       ; 2 uses
  %niter1082.ncmp.1 = icmp eq i64 %niter1082.next.1, %unroll_iter1081
  br i1 %niter1082.ncmp.1, label %._crit_edge.i.i349.unr-lcssa, label %.lr.ph.i171.i345, !llvm.loop !198

._crit_edge.i.i349.unr-lcssa:                     ; preds = %.lr.ph.i171.i345
  %lcmp.mod1078.not = icmp eq i64 %xtraiter1076, 0
  br i1 %lcmp.mod1078.not, label %._crit_edge.i.i349, label %.lr.ph.i171.i345.epil.preheader

.lr.ph.i171.i345.epil.preheader:                  ; preds = %._crit_edge.i.i349.unr-lcssa, %.lr.ph.i171.i345.preheader
  %.2347411.i.i347.epil.init = phi i64 [ %.1346413.i.i343, %.lr.ph.i171.i345.preheader ], [ %i.djj, %._crit_edge.i.i349.unr-lcssa ] ; 2 uses
  %lcmp.mod1080 = trunc i32 %i.dix to i1
  tail call void @llvm.assume(i1 %lcmp.mod1080)
  %i.djr = add i64 %.2347411.i.i347.epil.init, 1
  %i.djs = getelementptr inbounds nuw [2 x i8], ptr %i.byq, i64 %.2347411.i.i347.epil.init
  %i.djt = load i16, ptr %i.djs, align 2, !tbaa !73
  %i.dju = zext i16 %i.djt to i64
  %i.djv = getelementptr inbounds nuw [4 x i8], ptr %i.diz, i64 %i.dju ; 2 uses
  %i.djw = load i32, ptr %i.djv, align 4, !tbaa !3
  %i.djx = add i32 %i.djw, 1
  store i32 %i.djx, ptr %i.djv, align 4, !tbaa !3
  br label %._crit_edge.i.i349

._crit_edge.i.i349:                               ; preds = %._crit_edge.i.i349.unr-lcssa, %.lr.ph.i171.i345.epil.preheader
  %.lcssa861 = phi i64 [ %i.djj, %._crit_edge.i.i349.unr-lcssa ], [ %i.djr, %.lr.ph.i171.i345.epil.preheader ]
  store i64 %i.diy, ptr %i.dja, align 8, !tbaa !171
  br label %bb.im

bb.im:                                            ; preds = %._crit_edge.i.i349, %bb.il
  %.2347.lcssa.i.i350 = phi i64 [ %.lcssa861, %._crit_edge.i.i349 ], [ %.1346413.i.i343, %bb.il ] ; 2 uses
  %i.djy = tail call noundef double @_ZN13duckdb_brotli28BrotliPopulationCostDistanceEPKNS_17HistogramDistanceE(ptr noundef nonnull %i.diz)
  store double %i.djy, ptr %i.djb, align 8, !tbaa !167
  %i.djz = trunc i64 %.0338414.i.i342 to i32      ; 2 uses
  %i.dka = getelementptr inbounds nuw [4 x i8], ptr %i.dhz, i64 %.0338414.i.i342
  store i32 %i.djz, ptr %i.dka, align 4, !tbaa !3
  %i.dkb = getelementptr inbounds nuw [4 x i8], ptr %i.dia, i64 %.0338414.i.i342
  store i32 %i.djz, ptr %i.dkb, align 4, !tbaa !3
  %i.dkc = getelementptr inbounds nuw [4 x i8], ptr %i.dhc, i64 %.0338414.i.i342
  store i32 1, ptr %i.dkc, align 4, !tbaa !3
  %i.dkd = add nuw nsw i64 %.0338414.i.i342, 1    ; 2 uses
  %exitcond497.not.i.i351 = icmp eq i64 %i.dkd, %umax500.i.i341
  br i1 %exitcond497.not.i.i351, label %._crit_edge417.i.i352, label %bb.il, !llvm.loop !199

._crit_edge417.i.i352:                            ; preds = %bb.im
  %i.dke = sub nuw i64 %.0108.i.i296, %.1343437.i.i332
  %i.dkf = tail call noundef i64 @llvm.umin.i64(i64 %i.dke, i64 64) ; 2 uses
  %i.dkg = tail call noundef i64 @_ZN13duckdb_brotli30BrotliHistogramCombineDistanceEPNS_17HistogramDistanceES1_PjS2_S2_PNS_13HistogramPairEmmmm(ptr noundef nonnull %i.dhi, ptr noundef %i.dhl, ptr noundef nonnull %i.dhc, ptr noundef nonnull %i.dia, ptr noundef nonnull %i.dhz, ptr noundef %i.dhj, i64 noundef %i.dkf, i64 noundef %i.dkf, i64 noundef 64, i64 noundef 2048) ; 5 uses
  %i.dkh = add i64 %i.dkg, %.0362429.i.i340       ; 3 uses
  %i.dki = icmp ult i64 %.0360430.i.i339, %i.dkh
  br i1 %i.dki, label %bb.in, label %bb.is

bb.in:                                            ; preds = %._crit_edge417.i.i352
  %i.dkj = icmp eq i64 %.0360430.i.i339, 0        ; 2 uses
  %i.dkk = select i1 %i.dkj, i64 %i.dkh, i64 %.0360430.i.i339
  br label %bb.io

bb.io:                                            ; preds = %bb.io, %bb.in
  %.0336.i.i443 = phi i64 [ %i.dkk, %bb.in ], [ %i.dkm, %bb.io ] ; 4 uses
  %i.dkl = icmp ult i64 %.0336.i.i443, %i.dkh
  %i.dkm = shl i64 %.0336.i.i443, 1
  br i1 %i.dkl, label %bb.io, label %bb.ip, !llvm.loop !200

bb.ip:                                            ; preds = %bb.io
  %i.dkn = mul i64 %.0336.i.i443, 2192
  %i.dko = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.dkn) ; 2 uses
  br i1 %i.dkj, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.dkp = mul i64 %.0360430.i.i339, 2192
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.dko, ptr align 8 %.0358431.i.i338, i64 %i.dkp, i1 false)
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %bb.ip
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %.0358431.i.i338)
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %._crit_edge417.i.i352
  %.1361.i.i353 = phi i64 [ %.0336.i.i443, %bb.ir ], [ %.0360430.i.i339, %._crit_edge417.i.i352 ]
  %.1359.i.i354 = phi ptr [ %i.dko, %bb.ir ], [ %.0358431.i.i338, %._crit_edge417.i.i352 ] ; 3 uses
  %i.dkq = add i64 %i.dkg, %.0356432.i.i337       ; 3 uses
  %i.dkr = icmp ult i64 %.0354433.i.i336, %i.dkq
  br i1 %i.dkr, label %bb.it, label %bb.iy

bb.it:                                            ; preds = %bb.is
  %i.dks = icmp eq i64 %.0354433.i.i336, 0        ; 2 uses
  %i.dkt = select i1 %i.dks, i64 %i.dkq, i64 %.0354433.i.i336
  br label %bb.iu

bb.iu:                                            ; preds = %bb.iu, %bb.it
  %.0335.i.i442 = phi i64 [ %i.dkt, %bb.it ], [ %i.dkv, %bb.iu ] ; 4 uses
  %i.dku = icmp ult i64 %.0335.i.i442, %i.dkq
  %i.dkv = shl i64 %.0335.i.i442, 1
  br i1 %i.dku, label %bb.iu, label %bb.iv, !llvm.loop !201

bb.iv:                                            ; preds = %bb.iu
  %i.dkw = shl i64 %.0335.i.i442, 2
  %i.dkx = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.dkw) ; 2 uses
  br i1 %i.dks, label %bb.ix, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.dky = shl i64 %.0354433.i.i336, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dkx, ptr align 4 %.0352434.i.i335, i64 %i.dky, i1 false)
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iv
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %.0352434.i.i335)
  br label %bb.iy

bb.iy:                                            ; preds = %bb.ix, %bb.is
  %.1355.i.i355 = phi i64 [ %.0335.i.i442, %bb.ix ], [ %.0354433.i.i336, %bb.is ]
  %.1353.i.i356 = phi ptr [ %i.dkx, %bb.ix ], [ %.0352434.i.i335, %bb.is ] ; 3 uses
  %.not482.i.i357 = icmp eq i64 %i.dkg, 0
  br i1 %.not482.i.i357, label %.lr.ph427.i.i363, label %.lr.ph423.i.i358

.lr.ph427.i.i363:                                 ; preds = %.lr.ph423.i.i358, %bb.iy
  %.1363.lcssa.i.i364 = phi i64 [ %.0362429.i.i340, %bb.iy ], [ %i.dlg, %.lr.ph423.i.i358 ]
  %.1357.lcssa.i.i365 = phi i64 [ %.0356432.i.i337, %bb.iy ], [ %i.dlm, %.lr.ph423.i.i358 ]
  %i.dkz = trunc i64 %.0351435.i.i334 to i32      ; 5 uses
  %i.dla = getelementptr [4 x i8], ptr %i.dhb, i64 %.1343437.i.i332 ; 5 uses
  %xtraiter1086 = and i64 %umax500.i.i341, 3      ; 3 uses
  %i.dlb = icmp ult i64 %indvars.iv.i.i331, 4
  br i1 %i.dlb, label %.epil.preheader1083, label %.lr.ph427.i.i363.new

.lr.ph427.i.i363.new:                             ; preds = %.lr.ph427.i.i363
  %unroll_iter1090 = and i64 %umax500.i.i341, 124
  br label %bb.iz

.lr.ph423.i.i358:                                 ; preds = %bb.iy, %.lr.ph423.i.i358
  %.1339421.i.i359 = phi i64 [ %i.dls, %.lr.ph423.i.i358 ], [ 0, %bb.iy ] ; 3 uses
  %.1357420.i.i360 = phi i64 [ %i.dlm, %.lr.ph423.i.i358 ], [ %.0356432.i.i337, %bb.iy ] ; 2 uses
  %.1363419.i.i361 = phi i64 [ %i.dlg, %.lr.ph423.i.i358 ], [ %.0362429.i.i340, %bb.iy ] ; 2 uses
  %i.dlc = getelementptr inbounds nuw [4 x i8], ptr %i.dhz, i64 %.1339421.i.i359 ; 3 uses
  %i.dld = load i32, ptr %i.dlc, align 4, !tbaa !3
  %i.dle = zext i32 %i.dld to i64
  %i.dlf = getelementptr inbounds nuw [2192 x i8], ptr %i.dhi, i64 %i.dle
  %i.dlg = add i64 %.1363419.i.i361, 1            ; 2 uses
  %i.dlh = getelementptr inbounds nuw [2192 x i8], ptr %.1359.i.i354, i64 %.1363419.i.i361
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.dlh, ptr noundef nonnull align 8 dereferenceable(2192) %i.dlf, i64 2192, i1 false), !tbaa.struct !202
  %i.dli = load i32, ptr %i.dlc, align 4, !tbaa !3
  %i.dlj = zext i32 %i.dli to i64
  %i.dlk = getelementptr inbounds nuw [4 x i8], ptr %i.dhc, i64 %i.dlj
  %i.dll = load i32, ptr %i.dlk, align 4, !tbaa !3
  %i.dlm = add i64 %.1357420.i.i360, 1            ; 2 uses
  %i.dln = getelementptr inbounds nuw [4 x i8], ptr %.1353.i.i356, i64 %.1357420.i.i360
  store i32 %i.dll, ptr %i.dln, align 4, !tbaa !3
  %i.dlo = trunc i64 %.1339421.i.i359 to i32
  %i.dlp = load i32, ptr %i.dlc, align 4, !tbaa !3
  %i.dlq = zext i32 %i.dlp to i64
  %i.dlr = getelementptr inbounds nuw [4 x i8], ptr %i.dib, i64 %i.dlq
  store i32 %i.dlo, ptr %i.dlr, align 4, !tbaa !3
  %i.dls = add nuw i64 %.1339421.i.i359, 1        ; 2 uses
  %exitcond498.not.i.i362 = icmp eq i64 %i.dls, %i.dkg
  br i1 %exitcond498.not.i.i362, label %.lr.ph427.i.i363, label %.lr.ph423.i.i358, !llvm.loop !203

bb.iz:                                            ; preds = %bb.iz, %.lr.ph427.i.i363.new
  %.2426.i.i366 = phi i64 [ 0, %.lr.ph427.i.i363.new ], [ %i.dmy, %bb.iz ] ; 6 uses
  %niter1091 = phi i64 [ 0, %.lr.ph427.i.i363.new ], [ %niter1091.next.3, %bb.iz ]
  %i.dlt = getelementptr inbounds nuw [4 x i8], ptr %i.dia, i64 %.2426.i.i366
  %i.dlu = load i32, ptr %i.dlt, align 4, !tbaa !3
  %i.dlv = zext i32 %i.dlu to i64
  %i.dlw = getelementptr inbounds nuw [4 x i8], ptr %i.dib, i64 %i.dlv
  %i.dlx = load i32, ptr %i.dlw, align 4, !tbaa !3
  %i.dly = add i32 %i.dlx, %i.dkz
  %i.dlz = getelementptr [4 x i8], ptr %i.dla, i64 %.2426.i.i366
  store i32 %i.dly, ptr %i.dlz, align 4, !tbaa !3
  %i.dma = or disjoint i64 %.2426.i.i366, 1       ; 2 uses
  %i.dmb = getelementptr inbounds nuw [4 x i8], ptr %i.dia, i64 %i.dma
  %i.dmc = load i32, ptr %i.dmb, align 4, !tbaa !3
  %i.dmd = zext i32 %i.dmc to i64
  %i.dme = getelementptr inbounds nuw [4 x i8], ptr %i.dib, i64 %i.dmd
  %i.dmf = load i32, ptr %i.dme, align 4, !tbaa !3
  %i.dmg = add i32 %i.dmf, %i.dkz
  %i.dmh = getelementptr [4 x i8], ptr %i.dla, i64 %i.dma
  store i32 %i.dmg, ptr %i.dmh, align 4, !tbaa !3
  %i.dmi = or disjoint i64 %.2426.i.i366, 2       ; 2 uses
  %i.dmj = getelementptr inbounds nuw [4 x i8], ptr %i.dia, i64 %i.dmi
  %i.dmk = load i32, ptr %i.dmj, align 4, !tbaa !3
  %i.dml = zext i32 %i.dmk to i64
  %i.dmm = getelementptr inbounds nuw [4 x i8], ptr %i.dib, i64 %i.dml
  %i.dmn = load i32, ptr %i.dmm, align 4, !tbaa !3
  %i.dmo = add i32 %i.dmn, %i.dkz
  %i.dmp = getelementptr [4 x i8], ptr %i.dla, i64 %i.dmi
  store i32 %i.dmo, ptr %i.dmp, align 4, !tbaa !3
  %i.dmq = or disjoint i64 %.2426.i.i366, 3       ; 2 uses
  %i.dmr = getelementptr inbounds nuw [4 x i8], ptr %i.dia, i64 %i.dmq
  %i.dms = load i32, ptr %i.dmr, align 4, !tbaa !3
  %i.dmt = zext i32 %i.dms to i64
  %i.dmu = getelementptr inbounds nuw [4 x i8], ptr %i.dib, i64 %i.dmt
  %i.dmv = load i32, ptr %i.dmu, align 4, !tbaa !3
  %i.dmw = add i32 %i.dmv, %i.dkz
  %i.dmx = getelementptr [4 x i8], ptr %i.dla, i64 %i.dmq
  store i32 %i.dmw, ptr %i.dmx, align 4, !tbaa !3
  %i.dmy = add nuw nsw i64 %.2426.i.i366, 4       ; 2 uses
  %niter1091.next.3 = add i64 %niter1091, 4       ; 2 uses
  %niter1091.ncmp.3 = icmp eq i64 %niter1091.next.3, %unroll_iter1090
  br i1 %niter1091.ncmp.3, label %._crit_edge428.i.i368.unr-lcssa, label %bb.iz, !llvm.loop !204

._crit_edge428.i.i368.unr-lcssa:                  ; preds = %bb.iz
  %lcmp.mod1088.not = icmp eq i64 %xtraiter1086, 0
  br i1 %lcmp.mod1088.not, label %._crit_edge428.i.i368, label %.epil.preheader1083

.epil.preheader1083:                              ; preds = %._crit_edge428.i.i368.unr-lcssa, %.lr.ph427.i.i363
  %.2426.i.i366.epil.init = phi i64 [ 0, %.lr.ph427.i.i363 ], [ %i.dmy, %._crit_edge428.i.i368.unr-lcssa ]
  %lcmp.mod1089 = icmp ne i64 %xtraiter1086, 0
  tail call void @llvm.assume(i1 %lcmp.mod1089)
  br label %bb.ja

bb.ja:                                            ; preds = %bb.ja, %.epil.preheader1083
  %.2426.i.i366.epil = phi i64 [ %.2426.i.i366.epil.init, %.epil.preheader1083 ], [ %i.dng, %bb.ja ] ; 3 uses
  %epil.iter1087 = phi i64 [ 0, %.epil.preheader1083 ], [ %epil.iter1087.next, %bb.ja ]
  %i.dmz = getelementptr inbounds nuw [4 x i8], ptr %i.dia, i64 %.2426.i.i366.epil
  %i.dna = load i32, ptr %i.dmz, align 4, !tbaa !3
  %i.dnb = zext i32 %i.dna to i64
  %i.dnc = getelementptr inbounds nuw [4 x i8], ptr %i.dib, i64 %i.dnb
  %i.dnd = load i32, ptr %i.dnc, align 4, !tbaa !3
  %i.dne = add i32 %i.dnd, %i.dkz
  %i.dnf = getelementptr [4 x i8], ptr %i.dla, i64 %.2426.i.i366.epil
  store i32 %i.dne, ptr %i.dnf, align 4, !tbaa !3
  %i.dng = add nuw nsw i64 %.2426.i.i366.epil, 1
  %epil.iter1087.next = add i64 %epil.iter1087, 1 ; 2 uses
  %epil.iter1087.cmp.not = icmp eq i64 %epil.iter1087.next, %xtraiter1086
  br i1 %epil.iter1087.cmp.not, label %._crit_edge428.i.i368, label %bb.ja, !llvm.loop !205

._crit_edge428.i.i368:                            ; preds = %bb.ja, %._crit_edge428.i.i368.unr-lcssa
  %i.dnh = add i64 %i.dkg, %.0351435.i.i334       ; 2 uses
  %i.dni = add i64 %.1343437.i.i332, 64           ; 2 uses
  %i.dnj = icmp ult i64 %i.dni, %.0108.i.i296
  %indvars.iv.next.i.i369 = add i64 %indvars.iv.i.i331, -64
  br i1 %i.dnj, label %.lr.ph416.i.i330, label %._crit_edge439.i.i370, !llvm.loop !206

._crit_edge439.i.i370:                            ; preds = %._crit_edge428.i.i368, %.preheader408.peel.begin.i.i329
  %.0358.lcssa.i.i371 = phi ptr [ %i.dgz, %.preheader408.peel.begin.i.i329 ], [ %.1359.i.i354, %._crit_edge428.i.i368 ] ; 4 uses
  %.0352.lcssa.i.i372 = phi ptr [ %i.dhe, %.preheader408.peel.begin.i.i329 ], [ %.1353.i.i356, %._crit_edge428.i.i368 ] ; 2 uses
  %.0351.lcssa.i.i373 = phi i64 [ 0, %.preheader408.peel.begin.i.i329 ], [ %i.dnh, %._crit_edge428.i.i368 ] ; 11 uses
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.dhi)
  %i.dnk = shl i64 %.0351.lcssa.i.i373, 6
  %i.dnl = lshr i64 %.0351.lcssa.i.i373, 1
  %i.dnm = mul i64 %i.dnl, %.0351.lcssa.i.i373
  %i.dnn = tail call noundef i64 @llvm.umin.i64(i64 %i.dnk, i64 %i.dnm) ; 3 uses
  %i.dno = icmp ugt i64 %i.dnn, 2048
  br i1 %i.dno, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %._crit_edge439.i.i370
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %i.dhj)
  %i.dnp = mul i64 %i.dnn, 24
  %i.dnq = add i64 %i.dnp, 24
  %i.dnr = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.dnq)
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %._crit_edge439.i.i370
  %.0350.i.i374 = phi ptr [ %i.dnr, %bb.jb ], [ %i.dhj, %._crit_edge439.i.i370 ] ; 2 uses
  %.not386.i.i375 = icmp eq i64 %.0351.lcssa.i.i373, 0 ; 2 uses
  br i1 %.not386.i.i375, label %._crit_edge446.i.i380, label %.lr.ph445.preheader.i.i376

.lr.ph445.preheader.i.i376:                       ; preds = %bb.jc
  %i.dns = shl i64 %.0351.lcssa.i.i373, 2
  %i.dnt = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.dns) ; 4 uses
  %min.iters.check842 = icmp ult i64 %.0351.lcssa.i.i373, 8
  br i1 %min.iters.check842, label %.lr.ph445.i.i377.preheader, label %vector.ph843

vector.ph843:                                     ; preds = %.lr.ph445.preheader.i.i376
  %n.vec844 = and i64 %.0351.lcssa.i.i373, -8     ; 3 uses
  br label %vector.body845

vector.body845:                                   ; preds = %vector.body845, %vector.ph843
  %index846 = phi i64 [ 0, %vector.ph843 ], [ %index.next849, %vector.body845 ] ; 2 uses
  %vec.ind847 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph843 ], [ %vec.ind.next850, %vector.body845 ] ; 3 uses
  %step.add848 = add <4 x i32> %vec.ind847, splat (i32 4)
  %i.dnu = getelementptr inbounds nuw [4 x i8], ptr %i.dnt, i64 %index846 ; 2 uses
  %i.dnv = getelementptr inbounds nuw i8, ptr %i.dnu, i64 16
  store <4 x i32> %vec.ind847, ptr %i.dnu, align 4, !tbaa !3
  store <4 x i32> %step.add848, ptr %i.dnv, align 4, !tbaa !3
  %index.next849 = add nuw i64 %index846, 8       ; 2 uses
  %vec.ind.next850 = add <4 x i32> %vec.ind847, splat (i32 8)
  %i.dnw = icmp eq i64 %index.next849, %n.vec844
  br i1 %i.dnw, label %middle.block851, label %vector.body845, !llvm.loop !207

middle.block851:                                  ; preds = %vector.body845
  %cmp.n852 = icmp eq i64 %.0351.lcssa.i.i373, %n.vec844
  br i1 %cmp.n852, label %._crit_edge446.i.i380, label %.lr.ph445.i.i377.preheader

.lr.ph445.i.i377.preheader:                       ; preds = %.lr.ph445.preheader.i.i376, %middle.block851
  %.2344443.i.i378.ph = phi i64 [ 0, %.lr.ph445.preheader.i.i376 ], [ %n.vec844, %middle.block851 ]
  br label %.lr.ph445.i.i377

.lr.ph445.i.i377:                                 ; preds = %.lr.ph445.i.i377.preheader, %.lr.ph445.i.i377
  %.2344443.i.i378 = phi i64 [ %i.dnz, %.lr.ph445.i.i377 ], [ %.2344443.i.i378.ph, %.lr.ph445.i.i377.preheader ] ; 3 uses
  %i.dnx = trunc i64 %.2344443.i.i378 to i32
  %i.dny = getelementptr inbounds nuw [4 x i8], ptr %i.dnt, i64 %.2344443.i.i378
  store i32 %i.dnx, ptr %i.dny, align 4, !tbaa !3
  %i.dnz = add nuw i64 %.2344443.i.i378, 1        ; 2 uses
  %exitcond502.not.i.i379 = icmp eq i64 %i.dnz, %.0351.lcssa.i.i373
  br i1 %exitcond502.not.i.i379, label %._crit_edge446.i.i380, label %.lr.ph445.i.i377, !llvm.loop !208

._crit_edge446.i.i380:                            ; preds = %.lr.ph445.i.i377, %middle.block851, %bb.jc
  %i.doa = phi ptr [ null, %bb.jc ], [ %i.dnt, %middle.block851 ], [ %i.dnt, %.lr.ph445.i.i377 ] ; 3 uses
  %i.dob = tail call noundef i64 @_ZN13duckdb_brotli30BrotliHistogramCombineDistanceEPNS_17HistogramDistanceES1_PjS2_S2_PNS_13HistogramPairEmmmm(ptr noundef %.0358.lcssa.i.i371, ptr noundef %i.dhl, ptr noundef %.0352.lcssa.i.i372, ptr noundef %i.dhb, ptr noundef %i.doa, ptr noundef %.0350.i.i374, i64 noundef %.0351.lcssa.i.i373, i64 noundef %.0108.i.i296, i64 noundef 256, i64 noundef %i.dnn) ; 2 uses
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %.0350.i.i374)
  tail call void @_ZN13duckdb_brotli10BrotliFreeEPNS_13MemoryManagerEPv(ptr noundef %0, ptr noundef %.0352.lcssa.i.i372)
  br i1 %.not386.i.i375, label %.preheader.i172.i382, label %.lr.ph449.preheader.i.i381

.lr.ph449.preheader.i.i381:                       ; preds = %._crit_edge446.i.i380
  %i.doc = shl i64 %.0351.lcssa.i.i373, 2         ; 2 uses
  %i.dod = tail call noundef ptr @_ZN13duckdb_brotli14BrotliAllocateEPNS_13MemoryManagerEm(ptr noundef %0, i64 noundef %i.doc) ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dod, i8 -1, i64 %i.doc, i1 false), !tbaa !3
  br label %.preheader.i172.i382

.preheader.i172.i382:                             ; preds = %.lr.ph449.preheader.i.i381, %._crit_edge446.i.i380
  %i.doe = phi ptr [ %i.dod, %.lr.ph449.preheader.i.i381 ], [ null, %._crit_edge446.i.i380 ] ; 4 uses
  br i1 %.not.i168.i317, label %._crit_edge469.i.i408, label %.lr.ph468.i.i383

.lr.ph468.i.i383:                                 ; preds = %.preheader.i172.i382
  %i.dof = getelementptr inbounds nuw i8, ptr %i.dhl, i64 2176
  %i.dog = getelementptr inbounds nuw i8, ptr %i.dhl, i64 2184
  %i.doh = getelementptr inbounds nuw i8, ptr %i.dhl, i64 2192 ; 2 uses
  %.not487.i.i384 = icmp eq i64 %i.dob, 0
  br label %bb.jd

bb.jd:                                            ; preds = %bb.ji, %.lr.ph468.i.i383
  %.0333467.i.i385 = phi i32 [ 0, %.lr.ph468.i.i383 ], [ %.1334.i.i406, %bb.ji ] ; 3 uses
  %.4466.i.i386 = phi i64 [ 0, %.lr.ph468.i.i383 ], [ %i.dpp, %bb.ji ] ; 4 uses
  %.3348465.i.i387 = phi i64 [ 0, %.lr.ph468.i.i383 ], [ %.4349.lcssa.i.i392, %bb.ji ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dhl, i8 0, i64 2184, i1 false)
  store double +inf, ptr %i.dog, align 8, !tbaa !167
  %i.doi = getelementptr inbounds nuw [4 x i8], ptr %i.dhk, i64 %.4466.i.i386 ; 2 uses
end_hunk_2
