inline.NumInlined: 150
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 26
begin_hunk_0_@VP8LEncodeStream:bb.a
  br i1 %or.cond.i, label %.loopexit.3.i, label %._crit_edge.i

.loopexit.3.i:                                    ; preds = %bb.u
  store i32 0, ptr %3, align 16, !tbaa !33
  %i.nd = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 3, ptr %i.nd, align 4, !tbaa !35
  %i.ne = getelementptr inbounds nuw i8, ptr %3, i64 28
  store i32 1, ptr %i.ne, align 4, !tbaa !33
  %i.nf = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 3, ptr %i.nf, align 16, !tbaa !35
  %i.ng = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 2, ptr %i.ng, align 8, !tbaa !33
  %i.nh = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 3, ptr %i.nh, align 4, !tbaa !35
  %i.ni = getelementptr inbounds nuw i8, ptr %3, i64 84
  store i32 3, ptr %i.ni, align 4, !tbaa !33
  %i.nj = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i32 3, ptr %i.nj, align 8, !tbaa !35
  br i1 %i.ad, label %.loopexit.loopexit.5.i, label %.preheader.preheader.i

.loopexit.loopexit.5.i:                           ; preds = %.loopexit.3.i
  %i.nk = getelementptr inbounds nuw i8, ptr %3, i64 112
  store i32 4, ptr %i.nk, align 16, !tbaa !33
  %i.nl = getelementptr inbounds nuw i8, ptr %3, i64 116
  store i32 1, ptr %i.nl, align 4, !tbaa !35
  %i.nm = getelementptr inbounds nuw i8, ptr %3, i64 140
  store i32 4, ptr %i.nm, align 4, !tbaa !33
  %i.nn = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i32 2, ptr %i.nn, align 16, !tbaa !35
  %i.no = getelementptr inbounds nuw i8, ptr %3, i64 168
  store i32 5, ptr %i.no, align 8, !tbaa !33
  %i.np = getelementptr inbounds nuw i8, ptr %3, i64 172
  store i32 1, ptr %i.np, align 4, !tbaa !35
  br label %.preheader.preheader.i.sink.split

._crit_edge.i:                                    ; preds = %bb.u
  store i32 %.2120.ph.i, ptr %3, align 16, !tbaa !33
  %i.nq = select i1 %i.ad, i32 1, i32 3
  %i.nr = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.nq, ptr %i.nr, align 4, !tbaa !35
  %i.ns = fcmp oge float %i.nb, 7.500000e+01
  %i.nt = icmp eq i32 %i.y, 5
  %or.cond9.i = select i1 %i.ns, i1 %i.nt, i1 false
  br i1 %or.cond9.i, label %bb.v, label %.preheader.preheader.i

bb.v:                                             ; preds = %._crit_edge.i
  %i.nu = icmp eq i32 %.2120.ph.i, 4
  br i1 %i.nu, label %.preheader.preheader.i.sink.split, label %.preheader.preheader.i

.preheader.preheader.i.sink.split:                ; preds = %bb.v, %.loopexit.loopexit.5.i
  %.sink282.sroa.phi = phi ptr [ %.sink282.sroa.gep, %.loopexit.loopexit.5.i ], [ %.sink282.sroa.gep313, %bb.v ]
  %.sink280.sroa.phi = phi ptr [ %.sink280.sroa.gep, %.loopexit.loopexit.5.i ], [ %.sink280.sroa.gep312, %bb.v ]
  %.sink = phi i32 [ 2, %.loopexit.loopexit.5.i ], [ 1, %bb.v ]
  %.2197.ph = phi i32 [ 8, %.loopexit.loopexit.5.i ], [ 2, %bb.v ]
  store i32 5, ptr %.sink282.sroa.phi, align 4, !tbaa !33
  store i32 %.sink, ptr %.sink280.sroa.phi, align 8, !tbaa !35
  br label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i.sink.split, %.loopexit.3.i, %bb.v, %._crit_edge.i
  %.2197 = phi i32 [ 1, %._crit_edge.i ], [ 1, %bb.v ], [ 4, %.loopexit.3.i ], [ %.2197.ph, %.preheader.preheader.i.sink.split ] ; 6 uses
  %.2155.i = phi i32 [ 0, %._crit_edge.i ], [ 1, %bb.v ], [ 1, %.loopexit.3.i ], [ 1, %.preheader.preheader.i.sink.split ] ; 7 uses
  %i.nv = zext i32 %.2197 to i64                  ; 5 uses
  br i1 %.not.i125, label %.preheader.i.us.preheader, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.preheader.preheader.i
  %xtraiter = and i64 %i.nv, 1
  %i.nw = icmp eq i32 %.2197, 1
  br i1 %i.nw, label %.preheader.i.epil.preheader, label %.preheader.i.preheader.new

.preheader.i.preheader.new:                       ; preds = %.preheader.i.preheader
  %unroll_iter = and i64 %i.nv, 4294967294
  br label %.preheader.i

.preheader.i.us.preheader:                        ; preds = %.preheader.preheader.i.thread, %.preheader.preheader.i
  %i.nx = phi i64 [ 1, %.preheader.preheader.i.thread ], [ %i.nv, %.preheader.preheader.i ] ; 5 uses
  %.2155.i270 = phi i32 [ 0, %.preheader.preheader.i.thread ], [ %.2155.i, %.preheader.preheader.i ] ; 5 uses
  %.2269 = phi i32 [ 0, %.preheader.preheader.i.thread ], [ %.1193, %.preheader.preheader.i ] ; 2 uses
  %.2197267 = phi i32 [ 1, %.preheader.preheader.i.thread ], [ %.2197, %.preheader.preheader.i ] ; 2 uses
  %i.ny = add nsw i64 %i.nx, -1
  %xtraiter304 = and i64 %i.nx, 3                 ; 3 uses
  %i.nz = icmp ult i64 %i.ny, 3
  br i1 %i.nz, label %.preheader.i.us.epil.preheader, label %.preheader.i.us.preheader.new

.preheader.i.us.preheader.new:                    ; preds = %.preheader.i.us.preheader
  %unroll_iter307 = and i64 %i.nx, 4294967292
  br label %.preheader.i.us

.preheader.i.us:                                  ; preds = %.preheader.i.us, %.preheader.i.us.preheader.new
  %indvars.iv143.i.us = phi i64 [ 0, %.preheader.i.us.preheader.new ], [ %indvars.iv.next144.i.us.3, %.preheader.i.us ] ; 5 uses
  %niter308 = phi i64 [ 0, %.preheader.i.us.preheader.new ], [ %niter308.next.3, %.preheader.i.us ]
  %i.oa = getelementptr inbounds nuw [28 x i8], ptr %3, i64 %indvars.iv143.i.us ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  store i32 3, ptr %i.ob, align 8, !tbaa !43
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 12
  store i32 %.2155.i270, ptr %i.oc, align 4, !tbaa !45
  %i.od = getelementptr inbounds nuw i8, ptr %i.oa, i64 24
  store i32 1, ptr %i.od, align 8, !tbaa !46
  %i.oe = getelementptr inbounds nuw [28 x i8], ptr %3, i64 %indvars.iv143.i.us ; 3 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 36
  store i32 3, ptr %i.of, align 4, !tbaa !43
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 40
  store i32 %.2155.i270, ptr %i.og, align 8, !tbaa !45
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 52
  store i32 1, ptr %i.oh, align 4, !tbaa !46
  %i.oi = getelementptr inbounds nuw [28 x i8], ptr %3, i64 %indvars.iv143.i.us ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 64
  store i32 3, ptr %i.oj, align 16, !tbaa !43
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oi, i64 68
  store i32 %.2155.i270, ptr %i.ok, align 4, !tbaa !45
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oi, i64 80
  store i32 1, ptr %i.ol, align 16, !tbaa !46
  %i.om = getelementptr inbounds nuw [28 x i8], ptr %3, i64 %indvars.iv143.i.us ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 92
  store i32 3, ptr %i.on, align 4, !tbaa !43
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 96
  store i32 %.2155.i270, ptr %i.oo, align 16, !tbaa !45
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 108
  store i32 1, ptr %i.op, align 4, !tbaa !46
  %indvars.iv.next144.i.us.3 = add nuw nsw i64 %indvars.iv143.i.us, 4 ; 2 uses
  %niter308.next.3 = add i64 %niter308, 4         ; 2 uses
  %niter308.ncmp.3 = icmp eq i64 %niter308.next.3, %unroll_iter307
  br i1 %niter308.ncmp.3, label %EncoderAnalyze.exit.loopexit.unr-lcssa, label %.preheader.i.us, !llvm.loop !47

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.i.preheader.new
  %indvars.iv143.i = phi i64 [ 0, %.preheader.i.preheader.new ], [ %indvars.iv.next144.i.1, %.preheader.i ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.i.preheader.new ], [ %niter.next.1, %.preheader.i ]
  %i.oq = getelementptr inbounds nuw [28 x i8], ptr %3, i64 %indvars.iv143.i ; 5 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  store i32 3, ptr %i.or, align 8, !tbaa !43
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 12
  store i32 %.2155.i, ptr %i.os, align 4, !tbaa !45
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  store i32 4, ptr %i.ot, align 8, !tbaa !43
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oq, i64 20
  store i32 %.2155.i, ptr %i.ou, align 4, !tbaa !45
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oq, i64 24
  store i32 2, ptr %i.ov, align 8, !tbaa !46
  %i.ow = getelementptr inbounds nuw [28 x i8], ptr %3, i64 %indvars.iv143.i ; 5 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 36
  store i32 3, ptr %i.ox, align 4, !tbaa !43
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 40
  store i32 %.2155.i, ptr %i.oy, align 8, !tbaa !45
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 44
  store i32 4, ptr %i.oz, align 4, !tbaa !43
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ow, i64 48
  store i32 %.2155.i, ptr %i.pa, align 8, !tbaa !45
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ow, i64 52
  store i32 2, ptr %i.pb, align 4, !tbaa !46
  %indvars.iv.next144.i.1 = add nuw nsw i64 %indvars.iv143.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %EncoderAnalyze.exit.loopexit298.unr-lcssa, label %.preheader.i, !llvm.loop !47

EncoderAnalyze.exit.loopexit.unr-lcssa:           ; preds = %.preheader.i.us
  %lcmp.mod305.not = icmp eq i64 %xtraiter304, 0
  br i1 %lcmp.mod305.not, label %EncoderAnalyze.exit, label %.preheader.i.us.epil.preheader

.preheader.i.us.epil.preheader:                   ; preds = %EncoderAnalyze.exit.loopexit.unr-lcssa, %.preheader.i.us.preheader
  %indvars.iv143.i.us.epil.init = phi i64 [ 0, %.preheader.i.us.preheader ], [ %indvars.iv.next144.i.us.3, %EncoderAnalyze.exit.loopexit.unr-lcssa ]
  %lcmp.mod306 = icmp ne i64 %xtraiter304, 0
  call void @llvm.assume(i1 %lcmp.mod306)
  br label %.preheader.i.us.epil

.preheader.i.us.epil:                             ; preds = %.preheader.i.us.epil, %.preheader.i.us.epil.preheader
  %indvars.iv143.i.us.epil = phi i64 [ %indvars.iv.next144.i.us.epil, %.preheader.i.us.epil ], [ %indvars.iv143.i.us.epil.init, %.preheader.i.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.us.epil ], [ 0, %.preheader.i.us.epil.preheader ]
  %i.pc = getelementptr inbounds nuw [28 x i8], ptr %3, i64 %indvars.iv143.i.us.epil ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  store i32 3, ptr %i.pd, align 4, !tbaa !43
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 12
  store i32 %.2155.i270, ptr %i.pe, align 4, !tbaa !45
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pc, i64 24
  store i32 1, ptr %i.pf, align 4, !tbaa !46
  %indvars.iv.next144.i.us.epil = add nuw nsw i64 %indvars.iv143.i.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter304
  br i1 %epil.iter.cmp.not, label %EncoderAnalyze.exit, label %.preheader.i.us.epil, !llvm.loop !48

EncoderAnalyze.exit.loopexit298.unr-lcssa:        ; preds = %.preheader.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %EncoderAnalyze.exit, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %EncoderAnalyze.exit.loopexit298.unr-lcssa, %.preheader.i.preheader
  %indvars.iv143.i.epil.init = phi i64 [ 0, %.preheader.i.preheader ], [ %indvars.iv.next144.i.1, %EncoderAnalyze.exit.loopexit298.unr-lcssa ]
  %lcmp.mod303 = trunc i32 %.2197 to i1
  call void @llvm.assume(i1 %lcmp.mod303)
  %i.pg = getelementptr inbounds nuw [28 x i8], ptr %3, i64 %indvars.iv143.i.epil.init ; 5 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  store i32 3, ptr %i.ph, align 4, !tbaa !43
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pg, i64 12
  store i32 %.2155.i, ptr %i.pi, align 4, !tbaa !45
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  store i32 4, ptr %i.pj, align 4, !tbaa !43
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pg, i64 20
  store i32 %.2155.i, ptr %i.pk, align 4, !tbaa !45
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pg, i64 24
  store i32 2, ptr %i.pl, align 4, !tbaa !46
  br label %EncoderAnalyze.exit

EncoderAnalyze.exit:                              ; preds = %.preheader.i.epil.preheader, %EncoderAnalyze.exit.loopexit298.unr-lcssa, %EncoderAnalyze.exit.loopexit.unr-lcssa, %.preheader.i.us.epil
  %i.pm = phi i64 [ %i.nx, %EncoderAnalyze.exit.loopexit.unr-lcssa ], [ %i.nx, %.preheader.i.us.epil ], [ %i.nv, %EncoderAnalyze.exit.loopexit298.unr-lcssa ], [ %i.nv, %.preheader.i.epil.preheader ]
  %.2268 = phi i32 [ %.2269, %EncoderAnalyze.exit.loopexit.unr-lcssa ], [ %.2269, %.preheader.i.us.epil ], [ %.1193, %EncoderAnalyze.exit.loopexit298.unr-lcssa ], [ %.1193, %.preheader.i.epil.preheader ] ; 2 uses
  %.2197266 = phi i32 [ %.2197267, %EncoderAnalyze.exit.loopexit.unr-lcssa ], [ %.2197267, %.preheader.i.us.epil ], [ %.2197, %EncoderAnalyze.exit.loopexit298.unr-lcssa ], [ %.2197, %.preheader.i.epil.preheader ] ; 3 uses
  %i.pn = load ptr, ptr %i.e, align 8, !tbaa !15  ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  %i.pp = load i32, ptr %i.po, align 8, !tbaa !18
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pn, i64 12
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !22
  %i.ps = mul nsw i32 %i.pr, %i.pp                ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.a, i64 2312
  %i.pu = call i32 @VP8LHashChainInit(ptr noundef nonnull %i.pt, i32 noundef %i.ps) #7
  %.not.i126 = icmp eq i32 %i.pu, 0
  br i1 %.not.i126, label %EncoderAnalyze.exit.thread, label %bb.w

EncoderAnalyze.exit.thread:                       ; preds = %EncoderAnalyze.exit, %bb.h
  %i.pv = call i32 @WebPEncodingSetError(ptr noundef %1, i32 noundef 1) #7 ; 0 uses
  br label %VP8LEncoderDelete.exit134

bb.w:                                             ; preds = %EncoderAnalyze.exit
  %i.pw = add nsw i32 %i.ps, -1
  %i.px = sdiv i32 %i.pw, 16
  %i.py = add nsw i32 %i.px, 1                    ; 4 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.a, i64 2152
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.pz, i32 noundef %i.py) #7
  %i.qa = getelementptr inbounds nuw i8, ptr %i.a, i64 2192
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.qa, i32 noundef %i.py) #7
  %i.qb = getelementptr inbounds nuw i8, ptr %i.a, i64 2232
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.qb, i32 noundef %i.py) #7
  %i.qc = getelementptr inbounds nuw i8, ptr %i.a, i64 2272
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.qc, i32 noundef %i.py) #7
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !50
  %i.qf = icmp sgt i32 %i.qe, 0
  br i1 %i.qf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.qg = lshr i32 %.2197266, 1                   ; 4 uses
  %.not230 = icmp eq i32 %i.qg, 0
  br i1 %.not230, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  %i.qh = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.qi = sub nsw i32 %.2197266, %i.qg
  %narrow = mul nsw i32 %i.qi, 28
  %11 = sext i32 %narrow to i64
  %scevgep = getelementptr i8, ptr %3, i64 %11
  %i.qj = lshr i64 %i.pm, 1
  %i.qk = mul nuw nsw i64 %i.qj, 28
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.qh, ptr align 4 %scevgep, i64 %i.qk, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.x
  %i.ql = getelementptr inbounds nuw i8, ptr %7, i64 424
  store i32 %i.qg, ptr %i.ql, align 8, !tbaa !51
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %bb.w
  %.0102 = phi i32 [ %i.qg, %._crit_edge ], [ 0, %bb.w ] ; 3 uses
  %i.qm = sub nsw i32 %.2197266, %.0102           ; 3 uses
  %i.qn = icmp sgt i32 %i.qm, 0
  br i1 %i.qn, label %.lr.ph226, label %._crit_edge227

.lr.ph226:                                        ; preds = %bb.y
  %i.qo = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.qp = zext nneg i32 %i.qm to i64
  %i.qq = mul nuw nsw i64 %i.qp, 28
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.qo, ptr nonnull align 16 %3, i64 %i.qq, i1 false)
  br label %._crit_edge227

._crit_edge227:                                   ; preds = %.lr.ph226, %bb.y
  %i.qr = getelementptr inbounds nuw i8, ptr %6, i64 424
  store i32 %i.qm, ptr %i.qr, align 8, !tbaa !51
  %.inv.not = icmp eq i32 %.0102, 0
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.qu = getelementptr inbounds nuw i8, ptr %10, i64 144
  %.sroa.gep139 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %.sroa.gep142 = getelementptr inbounds nuw i8, ptr %7, i64 432
  %.sroa.gep145 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.qw = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.gep148 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.gep150 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.gep153 = getelementptr inbounds nuw i8, ptr %6, i64 432
  %.sroa.gep156 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.gep159 = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %0, ptr %6, align 8, !tbaa !53
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %6, i64 428
  store i32 %.2268, ptr %.sroa.gep, align 4, !tbaa !54
  store ptr %1, ptr %.sroa.gep150, align 8, !tbaa !55
  %i.qx = load ptr, ptr %i.qv, align 8, !tbaa !56
  store ptr %i.qx, ptr %.sroa.gep153, align 8, !tbaa !57
  store ptr %2, ptr %.sroa.gep156, align 8, !tbaa !58
  store ptr %i.a, ptr %.sroa.gep159, align 8, !tbaa !59
  %i.qy = load ptr, ptr %i.g, align 8, !tbaa !60
  call void %i.qy(ptr noundef nonnull %4) #7
  store ptr %6, ptr %..sroa.sel.v.sroa.gep, align 8, !tbaa !62
  store ptr null, ptr %..sroa.sel.v.sroa.gep245, align 8, !tbaa !64
  store ptr @EncodeStreamHook, ptr %..sroa.sel.v.sroa.gep248, align 8, !tbaa !65
  br i1 %.inv.not, label %bb.ab, label %._crit_edge227.peel.newph

._crit_edge227.peel.newph:                        ; preds = %._crit_edge227
  %.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %7, i64 428
  store ptr %0, ptr %7, align 8, !tbaa !53
  store i32 %.2268, ptr %.sroa.sel.v.sroa.sel, align 4, !tbaa !54
  %i.qz = load i32, ptr %i.qs, align 8, !tbaa !18
  %i.ra = load i32, ptr %i.qt, align 4, !tbaa !22
  %i.rb = call i32 @WebPPictureView(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %i.qz, i32 noundef %i.ra, ptr noundef nonnull %10) #7 ; 0 uses
  store ptr null, ptr %i.qu, align 8, !tbaa !66
  store ptr %10, ptr %.sroa.gep139, align 8, !tbaa !55
  %i.rc = load ptr, ptr %i.qv, align 8, !tbaa !56
  %i.rd = icmp eq ptr %i.rc, null
  %i.re = select i1 %i.rd, ptr null, ptr %8
  store ptr %i.re, ptr %.sroa.gep142, align 8, !tbaa !57
  %i.rf = call i32 @VP8LBitWriterClone(ptr noundef %2, ptr noundef nonnull %9) #7
  %.not118 = icmp eq i32 %i.rf, 0
  br i1 %.not118, label %.loopexit, label %bb.z

.loopexit:                                        ; preds = %._crit_edge227.peel.newph
  %i.rg = call i32 @WebPEncodingSetError(ptr noundef nonnull %1, i32 noundef 1) #7 ; 0 uses
  br label %VP8LEncoderDelete.exit134

bb.z:                                             ; preds = %._crit_edge227.peel.newph
  store ptr %9, ptr %.sroa.gep145, align 8, !tbaa !58
  %i.rh = call ptr @WebPSafeCalloc(i64 noundef 1, i64 noundef 2328) #7 ; 18 uses
  %i.ri = icmp eq ptr %i.rh, null
  br i1 %i.ri, label %VP8LEncoderNew.exit128.thread, label %bb.aa

VP8LEncoderNew.exit128.thread:                    ; preds = %bb.z
  %i.rj = call i32 @WebPEncodingSetError(ptr noundef nonnull %10, i32 noundef 1) #7 ; 0 uses
  br label %EncoderInit.exit132.thread

bb.aa:                                            ; preds = %bb.z
  store ptr %0, ptr %i.rh, align 8, !tbaa !7
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rh, i64 8 ; 2 uses
  store ptr %10, ptr %i.rk, align 8, !tbaa !15
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rh, i64 24
  store i32 0, ptr %i.rl, align 8, !tbaa !16
  call void @VP8LEncDspInit() #7
  %i.rm = load ptr, ptr %i.rk, align 8, !tbaa !15 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  %i.ro = load i32, ptr %i.rn, align 8, !tbaa !18
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rm, i64 12
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !22
  %i.rr = mul nsw i32 %i.rq, %i.ro                ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rh, i64 2312
  %i.rt = call i32 @VP8LHashChainInit(ptr noundef nonnull %i.rs, i32 noundef %i.rr) #7
  %.not.i129 = icmp eq i32 %i.rt, 0
  br i1 %.not.i129, label %EncoderInit.exit132.thread, label %.loopexit310

EncoderInit.exit132.thread:                       ; preds = %bb.aa, %VP8LEncoderNew.exit128.thread
  %i.ru = phi ptr [ %i.rh, %VP8LEncoderNew.exit128.thread ], [ %i.rh, %bb.aa ]
  %i.rv = call i32 @WebPEncodingSetError(ptr noundef nonnull %1, i32 noundef 1) #7 ; 0 uses
  br label %VP8LEncoderDelete.exit134

.loopexit310:                                     ; preds = %bb.aa
  %i.rw = add nsw i32 %i.rr, -1
  %i.rx = sdiv i32 %i.rw, 16
  %i.ry = add nsw i32 %i.rx, 1                    ; 4 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rh, i64 2152
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.rz, i32 noundef %i.ry) #7
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rh, i64 2192
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.sa, i32 noundef %i.ry) #7
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rh, i64 2232
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.sb, i32 noundef %i.ry) #7
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rh, i64 2272
  call void @VP8LBackwardRefsInit(ptr noundef nonnull %i.sc, i32 noundef %i.ry) #7
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rh, i64 68
  %i.se = load <2 x i32>, ptr %i.ed, align 4, !tbaa !3
  store <2 x i32> %i.se, ptr %i.sd, align 4, !tbaa !3
  %i.sf = load i32, ptr %i.ek, align 4, !tbaa !32
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rh, i64 76
  store i32 %i.sf, ptr %i.sg, align 4, !tbaa !32
  %i.sh = load i32, ptr %i.ac, align 4, !tbaa !26
  %i.si = getelementptr inbounds nuw i8, ptr %i.rh, i64 100
  store i32 %i.sh, ptr %i.si, align 4, !tbaa !26
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rh, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.sj, ptr noundef nonnull align 8 dereferenceable(1024) %i.qw, i64 1024, i1 false)
  %i.sk = getelementptr inbounds nuw i8, ptr %i.rh, i64 1128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.sk, ptr noundef nonnull align 8 dereferenceable(1024) %i.aa, i64 1024, i1 false)
  store ptr %i.rh, ptr %.sroa.gep148, align 8, !tbaa !59
  %i.sl = load ptr, ptr %i.g, align 8, !tbaa !60
  call void %i.sl(ptr noundef nonnull %5) #7
  store ptr %7, ptr %..sroa.sel.v.sroa.gep243, align 8, !tbaa !62
  store ptr null, ptr %..sroa.sel.v.sroa.gep246, align 8, !tbaa !64
  store ptr @EncodeStreamHook, ptr %..sroa.sel.v.sroa.gep249, align 8, !tbaa !65
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit310, %._crit_edge227
  %.1104.lcssa = phi ptr [ null, %._crit_edge227 ], [ %i.rh, %.loopexit310 ] ; 7 uses
  %.not120 = icmp eq i32 %.0102, 0
  br i1 %.not120, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.sm = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !67
  %i.so = call i32 %i.sn(ptr noundef nonnull %5) #7
  %.not121 = icmp eq i32 %i.so, 0
  br i1 %.not121, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.sp = call i32 @WebPEncodingSetError(ptr noundef nonnull %1, i32 noundef 1) #7 ; 0 uses
  br label %VP8LEncoderDelete.exit134

bb.ae:                                            ; preds = %bb.ac
  %i.sq = load ptr, ptr %i.qv, align 8, !tbaa !56 ; 2 uses
  %.not122 = icmp eq ptr %i.sq, null
  br i1 %.not122, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(188) %8, ptr noundef nonnull align 4 dereferenceable(188) %i.sq, i64 188, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.sr = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !68
  call void %i.ss(ptr noundef nonnull %5) #7
  %i.st = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !69
  call void %i.su(ptr noundef nonnull %4) #7
  %i.sv = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !70
  %i.sx = call i32 %i.sw(ptr noundef nonnull %4) #7
  %i.sy = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !71
  call void %i.sz(ptr noundef nonnull %4) #7
  %i.ta = load ptr, ptr %i.sv, align 8, !tbaa !70
  %i.tb = call i32 %i.ta(ptr noundef nonnull %5) #7
  %i.tc = load ptr, ptr %i.sy, align 8, !tbaa !71
  call void %i.tc(ptr noundef nonnull %5) #7
  %i.td = icmp ne i32 %i.sx, 0
  %i.te = icmp ne i32 %i.tb, 0
  %or.cond = select i1 %i.td, i1 %i.te, i1 false
  br i1 %or.cond, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.tf = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.tg = load i32, ptr %i.tf, align 8, !tbaa !72
  %i.th = icmp eq i32 %i.tg, 0
  br i1 %i.th, label %bb.ai, label %VP8LEncoderDelete.exit134

bb.ai:                                            ; preds = %bb.ah
  %i.ti = getelementptr inbounds nuw i8, ptr %10, i64 136
  %i.tj = load i32, ptr %i.ti, align 8, !tbaa !72
  %i.tk = call i32 @WebPEncodingSetError(ptr noundef nonnull %1, i32 noundef %i.tj) #7 ; 0 uses
  br label %VP8LEncoderDelete.exit134
end_hunk_0
