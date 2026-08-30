Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/sweep?download=true
inline.NumInlined: 129
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@kissat_sweep:bb.a
bb.aq:                                            ; preds = %.lr.ph174.i.3.i
  %i.oc = lshr i32 %.2.i14.i, 24                  ; 2 uses
  %i.od = trunc nuw i8 %.1121.i.3.i to i1
  br i1 %i.od, label %.split32.us.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.oe = lshr i32 %.2128.i.i, 24
  %.not153178.i.3.i = icmp samesign ugt i32 %i.oc, %i.oe
  br i1 %.not153178.i.3.i, label %._crit_edge183.i.3.i, label %.lr.ph182.preheader.i.3.i

.lr.ph182.preheader.i.3.i:                        ; preds = %bb.ar
  %i.of = zext nneg i32 %i.oc to i64              ; 4 uses
  %i.og = lshr i32 %.2128.i.i, 24
  %i.oh = zext nneg i32 %i.og to i64              ; 2 uses
  %i.oi = add nuw nsw i64 %i.oh, 1
  %i.oj = sub nsw i64 %i.oi, %i.of                ; 2 uses
  %i.ok = sub nsw i64 %i.oh, %i.of
  %xtraiter427 = and i64 %i.oj, 3                 ; 3 uses
  %i.ol = icmp ult i64 %i.ok, 3
  br i1 %i.ol, label %.lr.ph182.i.3.i.epil.preheader, label %.lr.ph182.preheader.i.3.i.new

.lr.ph182.preheader.i.3.i.new:                    ; preds = %.lr.ph182.preheader.i.3.i
  %unroll_iter431 = and i64 %i.oj, -4
  br label %.lr.ph182.i.3.i

.lr.ph182.i.3.i:                                  ; preds = %.lr.ph182.i.3.i, %.lr.ph182.preheader.i.3.i.new
  %.0116180.i.3.i = phi i64 [ %i.of, %.lr.ph182.preheader.i.3.i.new ], [ %i.pb, %.lr.ph182.i.3.i ] ; 5 uses
  %.0117179.i.3.i = phi i64 [ 0, %.lr.ph182.preheader.i.3.i.new ], [ %i.pa, %.lr.ph182.i.3.i ] ; 2 uses
  %niter432 = phi i64 [ 0, %.lr.ph182.preheader.i.3.i.new ], [ %niter432.next.3, %.lr.ph182.i.3.i ]
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0116180.i.3.i ; 2 uses
  %i.on = load i64, ptr %i.om, align 8, !tbaa !94
  store i64 %.0117179.i.3.i, ptr %i.om, align 8, !tbaa !94
  %i.oo = add i64 %i.on, %.0117179.i.3.i          ; 2 uses
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0116180.i.3.i
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8 ; 2 uses
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !94
  store i64 %i.oo, ptr %i.oq, align 8, !tbaa !94
  %i.os = add i64 %i.or, %i.oo                    ; 2 uses
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0116180.i.3.i
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 16 ; 2 uses
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !94
  store i64 %i.os, ptr %i.ou, align 8, !tbaa !94
  %i.ow = add i64 %i.ov, %i.os                    ; 2 uses
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0116180.i.3.i
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 24 ; 2 uses
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !94
  store i64 %i.ow, ptr %i.oy, align 8, !tbaa !94
  %i.pa = add i64 %i.oz, %i.ow                    ; 2 uses
  %i.pb = add nuw nsw i64 %.0116180.i.3.i, 4      ; 2 uses
  %niter432.next.3 = add i64 %niter432, 4         ; 2 uses
  %niter432.ncmp.3 = icmp eq i64 %niter432.next.3, %unroll_iter431
  br i1 %niter432.ncmp.3, label %._crit_edge183.i.3.i.loopexit.unr-lcssa, label %.lr.ph182.i.3.i, !llvm.loop !114

._crit_edge183.i.3.i.loopexit.unr-lcssa:          ; preds = %.lr.ph182.i.3.i
  %lcmp.mod429.not = icmp eq i64 %xtraiter427, 0
  br i1 %lcmp.mod429.not, label %._crit_edge183.i.3.i, label %.lr.ph182.i.3.i.epil.preheader

.lr.ph182.i.3.i.epil.preheader:                   ; preds = %._crit_edge183.i.3.i.loopexit.unr-lcssa, %.lr.ph182.preheader.i.3.i
  %.0116180.i.3.i.epil.init = phi i64 [ %i.of, %.lr.ph182.preheader.i.3.i ], [ %i.pb, %._crit_edge183.i.3.i.loopexit.unr-lcssa ]
  %.0117179.i.3.i.epil.init = phi i64 [ 0, %.lr.ph182.preheader.i.3.i ], [ %i.pa, %._crit_edge183.i.3.i.loopexit.unr-lcssa ]
  %lcmp.mod430 = icmp ne i64 %xtraiter427, 0
  call void @llvm.assume(i1 %lcmp.mod430)
  br label %.lr.ph182.i.3.i.epil

.lr.ph182.i.3.i.epil:                             ; preds = %.lr.ph182.i.3.i.epil, %.lr.ph182.i.3.i.epil.preheader
  %.0116180.i.3.i.epil = phi i64 [ %i.pf, %.lr.ph182.i.3.i.epil ], [ %.0116180.i.3.i.epil.init, %.lr.ph182.i.3.i.epil.preheader ] ; 2 uses
  %.0117179.i.3.i.epil = phi i64 [ %i.pe, %.lr.ph182.i.3.i.epil ], [ %.0117179.i.3.i.epil.init, %.lr.ph182.i.3.i.epil.preheader ] ; 2 uses
  %epil.iter428 = phi i64 [ %epil.iter428.next, %.lr.ph182.i.3.i.epil ], [ 0, %.lr.ph182.i.3.i.epil.preheader ]
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0116180.i.3.i.epil ; 2 uses
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !94
  store i64 %.0117179.i.3.i.epil, ptr %i.pc, align 8, !tbaa !94
  %i.pe = add i64 %i.pd, %.0117179.i.3.i.epil
  %i.pf = add nuw nsw i64 %.0116180.i.3.i.epil, 1
  %epil.iter428.next = add i64 %epil.iter428, 1   ; 2 uses
  %epil.iter428.cmp.not = icmp eq i64 %epil.iter428.next, %xtraiter427
  br i1 %epil.iter428.cmp.not, label %._crit_edge183.i.3.i, label %.lr.ph182.i.3.i.epil, !llvm.loop !120

._crit_edge183.i.3.i:                             ; preds = %._crit_edge183.i.3.i.loopexit.unr-lcssa, %.lr.ph182.i.3.i.epil, %bb.ar
  %.not154.i.3.i = icmp eq ptr %.3148.i.2.i, null
  br i1 %.not154.i.3.i, label %bb.as, label %.lr.ph187.preheader.i.3.i

bb.as:                                            ; preds = %._crit_edge183.i.3.i
  %i.pg = call ptr @kissat_malloc(ptr noundef %i.ei, i64 noundef %i.fe) #6
  br label %.lr.ph187.preheader.i.3.i

.lr.ph187.preheader.i.3.i:                        ; preds = %bb.as, %._crit_edge183.i.3.i
  %.1146.i.3.i = phi ptr [ %.3148.i.2.i, %._crit_edge183.i.3.i ], [ %i.pg, %bb.as ] ; 2 uses
  %i.ph = icmp eq ptr %.2140.i.2.i, %i.fa
  %i.pi = select i1 %i.ph, ptr %.1146.i.3.i, ptr %i.fa ; 2 uses
  br label %.lr.ph187.i.3.i

.lr.ph187.i.3.i:                                  ; preds = %.lr.ph187.i.3.i, %.lr.ph187.preheader.i.3.i
  %.0115185.i.3.i = phi ptr [ %i.pr, %.lr.ph187.i.3.i ], [ %.2140.i.2.i, %.lr.ph187.preheader.i.3.i ] ; 3 uses
  %i.pj = load i32, ptr %.0115185.i.3.i, align 4, !tbaa !111
  %i.pk = lshr i32 %i.pj, 24
  %i.pl = zext nneg i32 %i.pk to i64
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.pl ; 2 uses
  %i.pn = load i64, ptr %i.pm, align 8, !tbaa !94 ; 2 uses
  %i.po = add i64 %i.pn, 1
  store i64 %i.po, ptr %i.pm, align 8, !tbaa !94
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %i.pn
  %i.pq = load i64, ptr %.0115185.i.3.i, align 4
  store i64 %i.pq, ptr %i.pp, align 4
  %i.pr = getelementptr inbounds nuw i8, ptr %.0115185.i.3.i, i64 8 ; 2 uses
  %.not155.i.3.i = icmp eq ptr %i.pr, %i.ns
  br i1 %.not155.i.3.i, label %.split32.us.i, label %.lr.ph187.i.3.i, !llvm.loop !117

bb.at:                                            ; preds = %.split32.us.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fa, ptr align 4 %.us-phi.i, i64 %i.fe, i1 false)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.split32.us.i
  %.not151.i.i = icmp eq ptr %.us-phi.i, null
  br i1 %.not151.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @kissat_free(ptr noundef %i.ei, ptr noundef nonnull %.us-phi.i, i64 noundef %i.fe) #6
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %.pre206.i.i = load ptr, ptr %1, align 8, !tbaa !108
  %.pre207.i.i = load ptr, ptr %i.er, align 8, !tbaa !105
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %._crit_edge.i.i
  %i.ps = phi ptr [ %i.fb, %._crit_edge.i.i ], [ %.pre207.i.i, %bb.aw ] ; 2 uses
  %i.pt = phi ptr [ %i.fa, %._crit_edge.i.i ], [ %.pre206.i.i, %bb.aw ] ; 4 uses
  %.not156199.i.i = icmp eq ptr %i.pt, %i.ps
  br i1 %.not156199.i.i, label %schedule_all_other_not_scheduled_yet.exit.i, label %.lr.ph202.i.i

.lr.ph202.i.i:                                    ; preds = %bb.ax
  %i.pu = load ptr, ptr %i.ba, align 8, !tbaa !83
  %.pre208.i.i = load i32, ptr %i.bf, align 8, !tbaa !85
  %i.pv = load ptr, ptr %i.at, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %schedule_outer.exit.i.i, %.lr.ph202.i.i
  %i.pw = phi i32 [ %.pre208.i.i, %.lr.ph202.i.i ], [ %.sroa.3.0.copyload.i.i, %schedule_outer.exit.i.i ] ; 3 uses
  %.0200.i.i = phi ptr [ %i.pt, %.lr.ph202.i.i ], [ %i.qc, %schedule_outer.exit.i.i ] ; 2 uses
  %.sroa.3.0..0.2.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0200.i.i, i64 4
  %.sroa.3.0.copyload.i.i = load i32, ptr %.sroa.3.0..0.2.sroa_idx.i.i, align 4, !tbaa !76 ; 5 uses
  %i.px = icmp eq i32 %i.pw, -1
  br i1 %i.px, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 %.sroa.3.0.copyload.i.i, ptr %i.be, align 4, !tbaa !84
  br label %schedule_outer.exit.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.py = zext i32 %i.pw to i64
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %i.py
  store i32 %.sroa.3.0.copyload.i.i, ptr %i.pz, align 4, !tbaa !76
  br label %schedule_outer.exit.i.i

schedule_outer.exit.i.i:                          ; preds = %bb.ba, %bb.az
  %i.qa = zext i32 %.sroa.3.0.copyload.i.i to i64
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.pu, i64 %i.qa
  store i32 %i.pw, ptr %i.qb, align 4, !tbaa !76
  store i32 %.sroa.3.0.copyload.i.i, ptr %i.bf, align 8, !tbaa !85
  %i.qc = getelementptr inbounds nuw i8, ptr %.0200.i.i, i64 8 ; 2 uses
  %.not156.i.i = icmp eq ptr %i.qc, %i.ps
  br i1 %.not156.i.i, label %schedule_all_other_not_scheduled_yet.exit.i, label %bb.ay, !llvm.loop !121

schedule_all_other_not_scheduled_yet.exit.i:      ; preds = %schedule_outer.exit.i.i, %bb.ax
  %i.qd = load ptr, ptr %i.eq, align 8, !tbaa !109
  %i.qe = ptrtoint ptr %i.qd to i64
  %i.qf = ptrtoint ptr %i.pt to i64
  %i.qg = sub i64 %i.qe, %i.qf
  %i.qh = ashr exact i64 %i.qg, 3
  call void @kissat_dealloc(ptr noundef %i.ei, ptr noundef %i.pt, i64 noundef %i.qh, i64 noundef 8) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  %.val.i46 = load ptr, ptr %2, align 8, !tbaa !68 ; 4 uses
  %i.qi = getelementptr i8, ptr %.val.i46, i64 40
  %.val.val.i47 = load i32, ptr %i.qi, align 8, !tbaa !73 ; 3 uses
  %i.qj = getelementptr i8, ptr %.val.i46, i64 184
  %.val.val10.i = load ptr, ptr %i.qj, align 8, !tbaa !96 ; 4 uses
  %.not1.i.i = icmp eq i32 %.val.val.i47, 0
  br i1 %.not1.i.i, label %incomplete_variables.exit.thread.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %schedule_all_other_not_scheduled_yet.exit.i
  %i.qk = zext i32 %.val.val.i47 to i64           ; 3 uses
  %min.iters.check325 = icmp ult i32 %.val.val.i47, 9
  br i1 %min.iters.check325, label %.lr.ph.i21.i.preheader, label %vector.ph326

vector.ph326:                                     ; preds = %.lr.ph.preheader.i.i
  %i.ql = and i64 %i.qk, 7                        ; 2 uses
  %i.qm = icmp eq i64 %i.ql, 0
  %i.qn = select i1 %i.qm, i64 8, i64 %i.ql
  %n.vec327 = sub nsw i64 %i.qk, %i.qn            ; 2 uses
  br label %vector.body328

vector.body328:                                   ; preds = %vector.body328, %vector.ph326
  %index329 = phi i64 [ 0, %vector.ph326 ], [ %index.next333, %vector.body328 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph326 ], [ %i.qt, %vector.body328 ]
  %vec.phi330 = phi <4 x i32> [ zeroinitializer, %vector.ph326 ], [ %i.qu, %vector.body328 ]
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %.val.val10.i, i64 %index329
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %.val.val10.i, i64 %index329
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %wide.vec = load <8 x i16>, ptr %i.qo, align 4
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %wide.vec331 = load <8 x i16>, ptr %i.qq, align 4
  %strided.vec332 = shufflevector <8 x i16> %wide.vec331, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %3 = trunc <4 x i16> %strided.vec to <4 x i1>
  %4 = trunc <4 x i16> %strided.vec332 to <4 x i1>
  %5 = lshr <4 x i16> %strided.vec, splat (i16 9)
  %6 = lshr <4 x i16> %strided.vec332, splat (i16 9)
  %i.qr = and <4 x i16> %5, splat (i16 1)
  %i.qs = and <4 x i16> %6, splat (i16 1)
  %7 = zext nneg <4 x i16> %i.qr to <4 x i32>
  %8 = zext nneg <4 x i16> %i.qs to <4 x i32>
  %9 = select <4 x i1> %3, <4 x i32> %7, <4 x i32> zeroinitializer
  %10 = select <4 x i1> %4, <4 x i32> %8, <4 x i32> zeroinitializer
  %i.qt = add <4 x i32> %9, %vec.phi              ; 2 uses
  %i.qu = add <4 x i32> %10, %vec.phi330          ; 2 uses
  %index.next333 = add nuw i64 %index329, 8       ; 2 uses
  %i.qv = icmp eq i64 %index.next333, %n.vec327
  br i1 %i.qv, label %middle.block334, label %vector.body328, !llvm.loop !122

middle.block334:                                  ; preds = %vector.body328
  %bin.rdx = add <4 x i32> %i.qu, %i.qt
  %i.qw = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %.lr.ph.i21.i.preheader

.lr.ph.i21.i.preheader:                           ; preds = %.lr.ph.preheader.i.i, %middle.block334
  %indvars.iv.i22.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec327, %middle.block334 ]
  %.0112.i.i.ph = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.qw, %middle.block334 ]
  br label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %.lr.ph.i21.i.preheader, %.lr.ph.i21.i
  %indvars.iv.i22.i = phi i64 [ %indvars.iv.next.i24.i, %.lr.ph.i21.i ], [ %indvars.iv.i22.i.ph, %.lr.ph.i21.i.preheader ] ; 2 uses
  %.0112.i.i = phi i32 [ %.2.i23.i, %.lr.ph.i21.i ], [ %.0112.i.i.ph, %.lr.ph.i21.i.preheader ]
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %.val.val10.i, i64 %indvars.iv.i22.i
  %i.qy = load i16, ptr %i.qx, align 4            ; 2 uses
  %11 = trunc i16 %i.qy to i1
  %12 = lshr i16 %i.qy, 9
  %i.qz = and i16 %12, 1
  %13 = zext nneg i16 %i.qz to i32
  %spec.select.i.i48 = select i1 %11, i32 %13, i32 0
  %.2.i23.i = add i32 %spec.select.i.i48, %.0112.i.i ; 2 uses
  %indvars.iv.next.i24.i = add nuw nsw i64 %indvars.iv.i22.i, 1 ; 2 uses
  %.not.i25.i = icmp eq i64 %indvars.iv.next.i24.i, %i.qk
  br i1 %.not.i25.i, label %incomplete_variables.exit.i, label %.lr.ph.i21.i, !llvm.loop !123

incomplete_variables.exit.i:                      ; preds = %.lr.ph.i21.i
  %.not.i49 = icmp eq i32 %.2.i23.i, 0
  br i1 %.not.i49, label %incomplete_variables.exit.thread.i, label %schedule_sweeping.exit

incomplete_variables.exit.thread.i:               ; preds = %incomplete_variables.exit.i, %schedule_all_other_not_scheduled_yet.exit.i
  %i.ra = getelementptr inbounds nuw i8, ptr %.val.i46, i64 3777 ; 2 uses
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !104, !range !59, !noundef !60
  %i.rc = trunc nuw i8 %i.rb to i1
  br i1 %i.rc, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %incomplete_variables.exit.thread.i
  %i.rd = getelementptr inbounds nuw i8, ptr %.val.i46, i64 4264 ; 2 uses
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !124
  %i.rf = add i64 %i.re, 1
  store i64 %i.rf, ptr %i.rd, align 8, !tbaa !124
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %incomplete_variables.exit.thread.i
  %i.rg = load i32, ptr %i.bf, align 8, !tbaa !85 ; 2 uses
  %.not14.i.i = icmp eq i32 %i.rg, -1
  br i1 %.not14.i.i, label %mark_incomplete.exit.i, label %.lr.ph.i27.i

.lr.ph.i27.i:                                     ; preds = %bb.bc, %bb.be
  %.016.i.i = phi i32 [ %i.rk, %bb.be ], [ %i.rg, %bb.bc ]
  %i.rh = load ptr, ptr %i.ba, align 8, !tbaa !83
  %i.ri = zext i32 %.016.i.i to i64               ; 2 uses
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.rh, i64 %i.ri
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !76 ; 2 uses
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %.val.val10.i, i64 %i.ri ; 2 uses
  %i.rm = load i16, ptr %i.rl, align 4            ; 2 uses
  %i.rn = and i16 %i.rm, 512
  %.not13.i.i = icmp eq i16 %i.rn, 0
  br i1 %.not13.i.i, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph.i27.i
  %i.ro = or disjoint i16 %i.rm, 512
  store i16 %i.ro, ptr %i.rl, align 4
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.lr.ph.i27.i
  %.not.i28.i = icmp eq i32 %i.rk, -1
  br i1 %.not.i28.i, label %mark_incomplete.exit.i, label %.lr.ph.i27.i, !llvm.loop !125

mark_incomplete.exit.i:                           ; preds = %bb.be, %bb.bc
  store i8 1, ptr %i.ra, align 1, !tbaa !104
  br label %schedule_sweeping.exit

schedule_sweeping.exit:                           ; preds = %incomplete_variables.exit.i, %mark_incomplete.exit.i
  %i.rp = load i8, ptr %i.b, align 1, !tbaa !8, !range !59, !noundef !60
  %i.rq = trunc nuw i8 %i.rp to i1
  br i1 %i.rq, label %.thread, label %.lr.ph136

.lr.ph136:                                        ; preds = %schedule_sweeping.exit
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.rt = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 14 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 14 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 10 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 5 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.sa = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 10 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.sd = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 5 uses
  %i.se = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 25 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 9 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 4 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 5 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 3 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 4 uses
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph136, %bb.if
  %.040134 = phi i64 [ 0, %.lr.ph136 ], [ %i.atw, %bb.if ] ; 4 uses
  %i.sm = load volatile i8, ptr %i.e, align 8, !tbaa !61, !range !59, !noundef !60
  %i.sn = trunc nuw i8 %i.sm to i1
  br i1 %i.sn, label %kissat_terminated.exit52, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.so = load volatile ptr, ptr %i.rr, align 8, !tbaa !62 ; 2 uses
  %.not.i50 = icmp eq ptr %i.so, null
  br i1 %.not.i50, label %kissat_terminated.exit52, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.sp = load ptr, ptr %i.rs, align 8, !tbaa !63
  %i.sq = call i32 %i.so(ptr noundef %i.sp) #6, !inline_history !64
  %.not10.i51 = icmp eq i32 %i.sq, 0
  br i1 %.not10.i51, label %kissat_terminated.exit52, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store volatile i8 1, ptr %i.e, align 8, !tbaa !61
  br label %kissat_terminated.exit52

kissat_terminated.exit52:                         ; preds = %bb.bf, %bb.bg, %bb.bh, %bb.bi
  %i.sr = load volatile i8, ptr %i.e, align 8, !tbaa !61, !range !59, !noundef !60
  %i.ss = trunc nuw i8 %i.sr to i1
  br i1 %i.ss, label %.thread, label %bb.bj

bb.bj:                                            ; preds = %kissat_terminated.exit52
  %i.st = load i64, ptr %i.bw, align 8, !tbaa !91
  %i.su = load i64, ptr %i.ce, align 8, !tbaa !95
  %i.sv = icmp ugt i64 %i.st, %i.su
  br i1 %i.sv, label %.thread, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.sw = load i32, ptr %i.be, align 4, !tbaa !84 ; 4 uses
  %i.sx = icmp eq i32 %i.sw, -1
  br i1 %i.sx, label %.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.sy = load ptr, ptr %i.at, align 8, !tbaa !82
  %i.sz = zext i32 %i.sw to i64                   ; 3 uses
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %i.sz ; 2 uses
  %i.tb = load i32, ptr %i.ta, align 4, !tbaa !76 ; 3 uses
  store i32 -1, ptr %i.ta, align 4, !tbaa !76
  %i.tc = icmp eq i32 %i.tb, -1
  br i1 %i.tc, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 -1, ptr %i.bf, align 8, !tbaa !85
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.td = load ptr, ptr %i.ba, align 8, !tbaa !83
  %i.te = zext i32 %i.tb to i64
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.td, i64 %i.te
  store i32 -1, ptr %i.tf, align 4, !tbaa !76
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  store i32 %i.tb, ptr %i.be, align 4, !tbaa !84
  %i.tg = load ptr, ptr %i.ck, align 8, !tbaa !96
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.tg, i64 %i.sz ; 2 uses
  %i.ti = load i16, ptr %i.th, align 4
  %i.tj = and i16 %i.ti, -513
  store i16 %i.tj, ptr %i.th, align 4
  %i.tk = load ptr, ptr %2, align 8, !tbaa !68    ; 12 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 184 ; 2 uses
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !96
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.tm, i64 %i.sz
  %i.to = load i16, ptr %i.tn, align 4
  %i.tp = trunc i16 %i.to to i1
  br i1 %i.tp, label %bb.bp, label %bb.if

bb.bp:                                            ; preds = %bb.bo
  %i.tq = shl i32 %i.sw, 1                        ; 6 uses
  %i.tr = load ptr, ptr %i.ah, align 8, !tbaa !75 ; 4 uses
  %i.ts = zext i32 %i.tq to i64
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %i.ts ; 2 uses
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !76
  %.not140.i = icmp eq i32 %i.tu, %i.tq
  br i1 %.not140.i, label %.preheader.i, label %bb.if

.preheader.i:                                     ; preds = %bb.bp, %.preheader.i
  %.023.i.i.i = phi i32 [ %i.tx, %.preheader.i ], [ %i.tq, %bb.bp ] ; 6 uses
  %i.tv = zext i32 %.023.i.i.i to i64
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %i.tv
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !76 ; 2 uses
  %.not.i.i.i53 = icmp eq i32 %i.tx, %.023.i.i.i
  br i1 %.not.i.i.i53, label %bb.bq, label %.preheader.i, !llvm.loop !126

bb.bq:                                            ; preds = %.preheader.i
  %i.ty = icmp eq i32 %.023.i.i.i, %i.tq
  br i1 %i.ty, label %sweep_repr.exit.i.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.bq
  %i.tz = xor i32 %.023.i.i.i, 1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i
  %i.ua = phi i32 [ %i.uh, %.lr.ph.i.i.i ], [ %i.tq, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %i.ub = phi ptr [ %i.ug, %.lr.ph.i.i.i ], [ %i.tt, %.lr.ph.i.i.preheader.i ]
  %.02229.i.i.i = phi i32 [ %i.ua, %.lr.ph.i.i.i ], [ %i.tq, %.lr.ph.i.i.preheader.i ]
  %i.uc = xor i32 %.02229.i.i.i, 1
  %i.ud = zext i32 %i.uc to i64
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %i.ud
  store i32 %i.tz, ptr %i.ue, align 4, !tbaa !76
  store i32 %.023.i.i.i, ptr %i.ub, align 4, !tbaa !76
  %i.uf = zext i32 %i.ua to i64
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %i.uf ; 2 uses
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !76 ; 2 uses
  %.not26.i.i.i = icmp eq i32 %i.uh, %.023.i.i.i
  br i1 %.not26.i.i.i, label %add_literal_to_environment.exit.i, label %.lr.ph.i.i.i, !llvm.loop !127

sweep_repr.exit.i.i:                              ; preds = %bb.bq
  %i.ui = and i32 %i.sw, 2147483647               ; 2 uses
  %i.uj = load ptr, ptr %i.ac, align 8, !tbaa !74
  %i.uk = zext nneg i32 %i.ui to i64
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.uj, i64 %i.uk ; 2 uses
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !76
  %.not16.i.i = icmp eq i32 %i.um, 0
  br i1 %.not16.i.i, label %bb.br, label %add_literal_to_environment.exit.i
end_hunk_0
begin_hunk_1_@kissat_sweep:bb.a
  %i.asj = icmp eq i32 %i.asi, -1
  br i1 %i.asj, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  store i32 %i.arl, ptr %i.bf, align 8, !tbaa !85
  br label %bb.hy

bb.hx:                                            ; preds = %bb.hv
  %i.ask = zext i32 %i.asi to i64
  %i.asl = getelementptr inbounds nuw [4 x i8], ptr %i.art, i64 %i.ask
  store i32 %i.arl, ptr %i.asl, align 4, !tbaa !76
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hw
  %i.asm = load ptr, ptr %i.at, align 8, !tbaa !82
  %i.asn = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.arp
  store i32 %i.asi, ptr %i.asn, align 4, !tbaa !76
  store i32 %i.arl, ptr %i.be, align 4, !tbaa !84
  br label %sweep_equivalence_candidates.exit.i

bb.hz:                                            ; preds = %bb.fo
  store ptr %i.ajf, ptr %i.se, align 8, !tbaa !148
  br label %sweep_equivalence_candidates.exit.i

sweep_equivalence_candidates.exit.i:              ; preds = %bb.hz, %bb.hy, %bb.hu, %bb.ht, %sweep_remove.exit.i.i, %bb.gh, %bb.ge, %.critedge132.i.i, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fx, %bb.fw, %bb.fv, %bb.fu
  %i.aso = load ptr, ptr %i.sg, align 8, !tbaa !158
  %i.asp = load ptr, ptr %i.se, align 8, !tbaa !148
  %.not146.i = icmp eq ptr %i.aso, %i.asp
  br i1 %.not146.i, label %.loopexit.i, label %.lr.ph244.i, !llvm.loop !175

bb.ia:                                            ; preds = %.critedge262.i
  call fastcc void @save_add_clear_core(ptr noundef nonnull %2)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %sweep_equivalence_candidates.exit.i, %bb.fn, %bb.fm, %kissat_terminated.exit202.i, %bb.ex, %kissat_terminated.exit190.i, %.lr.ph244.i, %bb.ej, %kissat_terminated.exit183.i, %bb.dx, %kissat_terminated.exit.i, %bb.ds, %bb.ia, %bb.es, %.critedge262.i
  %i.asq = load ptr, ptr %2, align 8, !tbaa !68   ; 2 uses
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asq, i64 3768 ; 2 uses
  %i.ass = load ptr, ptr %i.asr, align 8, !tbaa !86
  call void @kitten_clear(ptr noundef %i.ass) #6
  %i.ast = load ptr, ptr %i.asr, align 8, !tbaa !86
  call void @kitten_track_antecedents(ptr noundef %i.ast) #6
  %i.asu = load ptr, ptr %i.bg, align 8, !tbaa !130 ; 3 uses
  %i.asv = load ptr, ptr %i.rt, align 8, !tbaa !128 ; 2 uses
  %.not36.i.i = icmp eq ptr %i.asu, %i.asv
  br i1 %.not36.i.i, label %.critedge.i210.i, label %.lr.ph.i208.i

.lr.ph.i208.i:                                    ; preds = %.loopexit.i
  %i.asw = load ptr, ptr %i.ac, align 8, !tbaa !74
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ib, %.lr.ph.i208.i
  %.03137.i.i = phi ptr [ %i.asu, %.lr.ph.i208.i ], [ %i.ata, %bb.ib ] ; 2 uses
  %i.asx = load i32, ptr %.03137.i.i, align 4, !tbaa !76
  %i.asy = zext i32 %i.asx to i64
  %i.asz = getelementptr inbounds nuw [4 x i8], ptr %i.asw, i64 %i.asy
  store i32 0, ptr %i.asz, align 4, !tbaa !76
  %i.ata = getelementptr inbounds nuw i8, ptr %.03137.i.i, i64 4 ; 2 uses
  %.not.i209.i = icmp eq ptr %i.ata, %i.asv
  br i1 %.not.i209.i, label %.critedge.i210.i, label %bb.ib, !llvm.loop !176

.critedge.i210.i:                                 ; preds = %bb.ib, %.loopexit.i
  store ptr %i.asu, ptr %i.rt, align 8, !tbaa !128
  %i.atb = load ptr, ptr %i.sa, align 8, !tbaa !177 ; 3 uses
  %i.atc = load ptr, ptr %i.ry, align 8, !tbaa !143 ; 2 uses
  %.not3238.i.i = icmp eq ptr %i.atb, %i.atc
  br i1 %.not3238.i.i, label %clear_sweeper.exit.i, label %.lr.ph40.i.i

.lr.ph40.i.i:                                     ; preds = %.critedge.i210.i
  %i.atd = getelementptr i8, ptr %i.asq, i64 816
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ic, %.lr.ph40.i.i
  %.039.i.i = phi ptr [ %i.atb, %.lr.ph40.i.i ], [ %i.atj, %bb.ic ] ; 2 uses
  %i.ate = load i32, ptr %.039.i.i, align 4, !tbaa !76
  %.val35.i.i = load ptr, ptr %i.atd, align 8, !tbaa !140
  %i.atf = zext i32 %i.ate to i64
  %i.atg = getelementptr inbounds nuw [8 x i8], ptr %.val35.i.i, i64 %i.atf ; 2 uses
  %i.ath = load i32, ptr %i.atg, align 4
  %i.ati = and i32 %i.ath, -33554433
  store i32 %i.ati, ptr %i.atg, align 4
  %i.atj = getelementptr inbounds nuw i8, ptr %.039.i.i, i64 4 ; 2 uses
  %.not32.i211.i = icmp eq ptr %i.atj, %i.atc
  br i1 %.not32.i211.i, label %.critedge2.loopexit.i.i, label %bb.ic, !llvm.loop !178

.critedge2.loopexit.i.i:                          ; preds = %bb.ic
  %.pre.i212.i = load ptr, ptr %i.sa, align 8, !tbaa !177
  br label %clear_sweeper.exit.i

clear_sweeper.exit.i:                             ; preds = %.critedge2.loopexit.i.i, %.critedge.i210.i
  %i.atk = phi ptr [ %.pre.i212.i, %.critedge2.loopexit.i.i ], [ %i.atb, %.critedge.i210.i ]
  store ptr %i.atk, ptr %i.ry, align 8, !tbaa !143
  %i.atl = load ptr, ptr %i.sd, align 8, !tbaa !153
  store ptr %i.atl, ptr %i.sb, align 8, !tbaa !150
  %i.atm = load ptr, ptr %i.sg, align 8, !tbaa !158
  store ptr %i.atm, ptr %i.se, align 8, !tbaa !148
  store i32 0, ptr %i.x, align 8, !tbaa !72
  %.val.i213.i = load ptr, ptr %2, align 8, !tbaa !68 ; 2 uses
  %.val33.i.i = load i64, ptr %i.ce, align 8, !tbaa !95
  %i.atn = getelementptr i8, ptr %.val.i213.i, i64 3768
  %.val.val.i.i = load ptr, ptr %i.atn, align 8, !tbaa !86
  %i.ato = getelementptr i8, ptr %.val.i213.i, i64 4112
  %.val.val34.i.i = load i64, ptr %i.ato, align 8, !tbaa !91
  %spec.select.i.i.i = call i64 @llvm.usub.sat.i64(i64 %.val33.i.i, i64 %.val.val34.i.i)
  call void @kitten_set_ticks_limit(ptr noundef %.val.val.i.i, i64 noundef %spec.select.i.i.i) #6
  %i.atp = getelementptr inbounds nuw i8, ptr %i.tk, i64 1
  %i.atq = load i8, ptr %i.atp, align 1, !tbaa !8, !range !59, !noundef !60
  %i.atr = trunc nuw i8 %i.atq to i1
  br i1 %i.atr, label %bb.if, label %bb.id

bb.id:                                            ; preds = %clear_sweeper.exit.i
  %i.ats = getelementptr i8, ptr %i.tk, i64 480
  %.val161.i = load ptr, ptr %i.ats, align 8, !tbaa !179
  %i.att = getelementptr i8, ptr %i.tk, i64 488
  %.val162.i = load ptr, ptr %i.att, align 8, !tbaa !180
  %i.atu = icmp eq ptr %.val162.i, %.val161.i
  br i1 %i.atu, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.atv = call zeroext i1 @kissat_dense_propagate(ptr noundef nonnull %i.tk) #6 ; 0 uses
  br label %bb.if

bb.if:                                            ; preds = %clear_sweeper.exit.i, %bb.id, %bb.ie, %bb.bp, %bb.bo
  %i.atw = add i64 %.040134, 1                    ; 2 uses
  %i.atx = load i8, ptr %i.b, align 1, !tbaa !8, !range !59, !noundef !60
  %i.aty = trunc nuw i8 %i.atx to i1
  br i1 %i.aty, label %.thread, label %bb.bf

.thread:                                          ; preds = %bb.bj, %kissat_terminated.exit52, %bb.if, %bb.bk, %schedule_sweeping.exit
  %.040.lcssa = phi i64 [ 0, %schedule_sweeping.exit ], [ %.040134, %bb.bk ], [ %i.atw, %bb.if ], [ %.040134, %kissat_terminated.exit52 ], [ %.040134, %bb.bj ] ; 2 uses
  %i.atz = load i64, ptr %i.t, align 8, !tbaa !66
  %i.aua = sub i64 %i.atz, %i.u
  %i.aub = load i64, ptr %i.v, align 8, !tbaa !181
  %i.auc = sub i64 %i.aub, %i.w
  %i.aud = load ptr, ptr %2, align 8, !tbaa !68   ; 10 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 184
  %i.auf = load ptr, ptr %i.aue, align 8, !tbaa !96 ; 2 uses
  %i.aug = load i32, ptr %i.bf, align 8, !tbaa !85 ; 2 uses
  %.not22.i = icmp eq i32 %i.aug, -1
  br i1 %.not22.i, label %.critedge.i71, label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %.thread
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aud, i64 3792 ; 3 uses
  %i.aui = getelementptr inbounds nuw i8, ptr %i.aud, i64 3800
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aud, i64 3784
  br label %bb.ig

bb.ig:                                            ; preds = %bb.ik, %.lr.ph.i69
  %.023.i = phi i32 [ %i.aug, %.lr.ph.i69 ], [ %i.aun, %bb.ik ] ; 2 uses
  %i.auk = load ptr, ptr %i.ba, align 8, !tbaa !83
  %i.aul = zext i32 %.023.i to i64                ; 2 uses
  %i.aum = getelementptr inbounds nuw [4 x i8], ptr %i.auk, i64 %i.aul
  %i.aun = load i32, ptr %i.aum, align 4, !tbaa !76 ; 2 uses
  %i.auo = getelementptr inbounds nuw [4 x i8], ptr %i.auf, i64 %i.aul
  %i.aup = load i16, ptr %i.auo, align 4
  %i.auq = trunc i16 %i.aup to i1
  br i1 %i.auq, label %bb.ih, label %bb.ik

.critedge.loopexit.i:                             ; preds = %bb.ik
  %.val.pre.i = load ptr, ptr %2, align 8, !tbaa !68 ; 2 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %.val.pre.i, i64 184
  %.val.val19.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !96
  br label %.critedge.i71

.critedge.i71:                                    ; preds = %.critedge.loopexit.i, %.thread
  %.val.val19.i = phi ptr [ %.val.val19.pre.i, %.critedge.loopexit.i ], [ %i.auf, %.thread ] ; 3 uses
  %i.aur = phi ptr [ %.val.pre.i, %.critedge.loopexit.i ], [ %i.aud, %.thread ] ; 14 uses
  %i.aus = getelementptr i8, ptr %i.aur, i64 40   ; 4 uses
  %.val.val.i73 = load i32, ptr %i.aus, align 8, !tbaa !73 ; 4 uses
  %.not1.i.i74 = icmp eq i32 %.val.val.i73, 0
  br i1 %.not1.i.i74, label %unschedule_sweeping.exit.thread288, label %.lr.ph.preheader.i.i75

unschedule_sweeping.exit.thread288:               ; preds = %.critedge.i71
  %i.aut = getelementptr inbounds nuw i8, ptr %i.aud, i64 3777
  store i8 0, ptr %i.aut, align 1, !tbaa !104
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aud, i64 4264 ; 2 uses
  %i.auv = load i64, ptr %i.auu, align 8, !tbaa !124
  %i.auw = add i64 %i.auv, 1
  store i64 %i.auw, ptr %i.auu, align 8, !tbaa !124
  br label %release_sweeper.exit

.lr.ph.preheader.i.i75:                           ; preds = %.critedge.i71
  %i.aux = zext i32 %.val.val.i73 to i64          ; 3 uses
  %min.iters.check373 = icmp ult i32 %.val.val.i73, 9
  br i1 %min.iters.check373, label %.lr.ph.i.i76.preheader, label %vector.ph374

vector.ph374:                                     ; preds = %.lr.ph.preheader.i.i75
  %i.auy = and i64 %i.aux, 7                      ; 2 uses
  %i.auz = icmp eq i64 %i.auy, 0
  %i.ava = select i1 %i.auz, i64 8, i64 %i.auy
  %n.vec375 = sub nsw i64 %i.aux, %i.ava          ; 2 uses
  br label %vector.body376

vector.body376:                                   ; preds = %vector.body376, %vector.ph374
  %index377 = phi i64 [ 0, %vector.ph374 ], [ %index.next384, %vector.body376 ] ; 3 uses
  %vec.phi378 = phi <4 x i32> [ zeroinitializer, %vector.ph374 ], [ %i.avg, %vector.body376 ]
  %vec.phi379 = phi <4 x i32> [ zeroinitializer, %vector.ph374 ], [ %i.avh, %vector.body376 ]
  %i.avb = getelementptr inbounds nuw [4 x i8], ptr %.val.val19.i, i64 %index377
  %i.avc = getelementptr inbounds nuw [4 x i8], ptr %.val.val19.i, i64 %index377
  %i.avd = getelementptr inbounds nuw i8, ptr %i.avc, i64 16
  %wide.vec380 = load <8 x i16>, ptr %i.avb, align 4
  %strided.vec381 = shufflevector <8 x i16> %wide.vec380, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %wide.vec382 = load <8 x i16>, ptr %i.avd, align 4
  %strided.vec383 = shufflevector <8 x i16> %wide.vec382, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %14 = trunc <4 x i16> %strided.vec381 to <4 x i1>
  %15 = trunc <4 x i16> %strided.vec383 to <4 x i1>
  %16 = lshr <4 x i16> %strided.vec381, splat (i16 9)
  %17 = lshr <4 x i16> %strided.vec383, splat (i16 9)
  %i.ave = and <4 x i16> %16, splat (i16 1)
  %i.avf = and <4 x i16> %17, splat (i16 1)
  %18 = zext nneg <4 x i16> %i.ave to <4 x i32>
  %19 = zext nneg <4 x i16> %i.avf to <4 x i32>
  %20 = select <4 x i1> %14, <4 x i32> %18, <4 x i32> zeroinitializer
  %21 = select <4 x i1> %15, <4 x i32> %19, <4 x i32> zeroinitializer
  %i.avg = add <4 x i32> %20, %vec.phi378         ; 2 uses
  %i.avh = add <4 x i32> %21, %vec.phi379         ; 2 uses
  %index.next384 = add nuw i64 %index377, 8       ; 2 uses
  %i.avi = icmp eq i64 %index.next384, %n.vec375
  br i1 %i.avi, label %middle.block385, label %vector.body376, !llvm.loop !182

middle.block385:                                  ; preds = %vector.body376
  %bin.rdx386 = add <4 x i32> %i.avh, %i.avg
  %i.avj = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx386)
  br label %.lr.ph.i.i76.preheader

.lr.ph.i.i76.preheader:                           ; preds = %.lr.ph.preheader.i.i75, %middle.block385
  %indvars.iv.i.i77.ph = phi i64 [ 0, %.lr.ph.preheader.i.i75 ], [ %n.vec375, %middle.block385 ]
  %.0112.i.i78.ph = phi i32 [ 0, %.lr.ph.preheader.i.i75 ], [ %i.avj, %middle.block385 ]
  br label %.lr.ph.i.i76

.lr.ph.i.i76:                                     ; preds = %.lr.ph.i.i76.preheader, %.lr.ph.i.i76
  %indvars.iv.i.i77 = phi i64 [ %indvars.iv.next.i.i81, %.lr.ph.i.i76 ], [ %indvars.iv.i.i77.ph, %.lr.ph.i.i76.preheader ] ; 2 uses
  %.0112.i.i78 = phi i32 [ %.2.i.i80, %.lr.ph.i.i76 ], [ %.0112.i.i78.ph, %.lr.ph.i.i76.preheader ]
  %i.avk = getelementptr inbounds nuw [4 x i8], ptr %.val.val19.i, i64 %indvars.iv.i.i77
  %i.avl = load i16, ptr %i.avk, align 4          ; 2 uses
  %22 = trunc i16 %i.avl to i1
  %23 = lshr i16 %i.avl, 9
  %i.avm = and i16 %23, 1
  %24 = zext nneg i16 %i.avm to i32
  %spec.select.i.i79 = select i1 %22, i32 %24, i32 0
  %.2.i.i80 = add i32 %spec.select.i.i79, %.0112.i.i78 ; 2 uses
  %indvars.iv.next.i.i81 = add nuw nsw i64 %indvars.iv.i.i77, 1 ; 2 uses
  %.not.i.i82 = icmp eq i64 %indvars.iv.next.i.i81, %i.aux
  br i1 %.not.i.i82, label %incomplete_variables.exit.i83, label %.lr.ph.i.i76, !llvm.loop !183

incomplete_variables.exit.i83:                    ; preds = %.lr.ph.i.i76
  %.not18.i = icmp eq i32 %.2.i.i80, 0
  br i1 %.not18.i, label %unschedule_sweeping.exit, label %.lr.ph.i86

bb.ih:                                            ; preds = %bb.ig
  %i.avn = load ptr, ptr %i.auh, align 8, !tbaa !184 ; 2 uses
  %i.avo = load ptr, ptr %i.aui, align 8, !tbaa !185
  %i.avp = icmp eq ptr %i.avn, %i.avo
  br i1 %i.avp, label %bb.ii, label %bb.ij

bb.ii:                                            ; preds = %bb.ih
  call void @kissat_stack_enlarge(ptr noundef nonnull %i.aud, ptr noundef nonnull %i.auj, i64 noundef 4) #6
  %.pre.i85 = load ptr, ptr %i.auh, align 8, !tbaa !184
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih
  %i.avq = phi ptr [ %.pre.i85, %bb.ii ], [ %i.avn, %bb.ih ] ; 2 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avq, i64 4
  store ptr %i.avr, ptr %i.auh, align 8, !tbaa !184
  store i32 %.023.i, ptr %i.avq, align 4, !tbaa !76
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.ig
  %.not.i70 = icmp eq i32 %i.aun, -1
  br i1 %.not.i70, label %.critedge.loopexit.i, label %bb.ig, !llvm.loop !186

unschedule_sweeping.exit:                         ; preds = %incomplete_variables.exit.i83
  %i.avs = getelementptr inbounds nuw i8, ptr %i.aud, i64 3777
  store i8 0, ptr %i.avs, align 1, !tbaa !104
  %i.avt = getelementptr inbounds nuw i8, ptr %i.aud, i64 4264 ; 2 uses
  %i.avu = load i64, ptr %i.avt, align 8, !tbaa !124
  %i.avv = add i64 %i.avu, 1
  store i64 %i.avv, ptr %i.avt, align 8, !tbaa !124
  br label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %incomplete_variables.exit.i83, %unschedule_sweeping.exit
  %i.avw = zext i32 %.val.val.i73 to i64
  br label %release_sweeper.exit

release_sweeper.exit:                             ; preds = %unschedule_sweeping.exit.thread288, %.lr.ph.i86
  %.pre-phi.i = phi i64 [ 0, %unschedule_sweeping.exit.thread288 ], [ %i.avw, %.lr.ph.i86 ]
  %i.avx = load ptr, ptr %i.ac, align 8, !tbaa !74
  call void @kissat_dealloc(ptr noundef nonnull %i.aur, ptr noundef %i.avx, i64 noundef %.pre-phi.i, i64 noundef 4) #6
  %i.avy = load ptr, ptr %i.ah, align 8, !tbaa !75
  %i.avz = load i32, ptr %i.aus, align 8, !tbaa !73
  %i.awa = shl i32 %i.avz, 1
  %i.awb = zext i32 %i.awa to i64
  call void @kissat_dealloc(ptr noundef nonnull %i.aur, ptr noundef %i.avy, i64 noundef %i.awb, i64 noundef 4) #6
  %i.awc = load ptr, ptr %i.at, align 8, !tbaa !82
  %i.awd = load i32, ptr %i.aus, align 8, !tbaa !73
  %i.awe = zext i32 %i.awd to i64
  call void @kissat_dealloc(ptr noundef nonnull %i.aur, ptr noundef %i.awc, i64 noundef %i.awe, i64 noundef 4) #6
  %i.awf = load ptr, ptr %i.ba, align 8, !tbaa !83
  %i.awg = load i32, ptr %i.aus, align 8, !tbaa !73
  %i.awh = zext i32 %i.awg to i64
  call void @kissat_dealloc(ptr noundef nonnull %i.aur, ptr noundef %i.awf, i64 noundef %i.awh, i64 noundef 4) #6
  %i.awi = load ptr, ptr %i.bg, align 8, !tbaa !130 ; 2 uses
  %i.awj = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.awk = load ptr, ptr %i.awj, align 8, !tbaa !129
  %i.awl = ptrtoint ptr %i.awk to i64
  %i.awm = ptrtoint ptr %i.awi to i64
  %i.awn = sub i64 %i.awl, %i.awm
  %i.awo = ashr exact i64 %i.awn, 2
  call void @kissat_dealloc(ptr noundef nonnull %i.aur, ptr noundef %i.awi, i64 noundef %i.awo, i64 noundef 4) #6
  %i.awp = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false)
  %i.awq = load ptr, ptr %i.awp, align 8, !tbaa !177 ; 2 uses
  %i.awr = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.aws = load ptr, ptr %i.awr, align 8, !tbaa !144
  %i.awt = ptrtoint ptr %i.aws to i64
  %i.awu = ptrtoint ptr %i.awq to i64
  %i.awv = sub i64 %i.awt, %i.awu
  %i.aww = ashr exact i64 %i.awv, 2
  call void @kissat_dealloc(ptr noundef nonnull %i.aur, ptr noundef %i.awq, i64 noundef %i.aww, i64 noundef 4) #6
  %i.awx = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.awp, i8 0, i64 24, i1 false)
  %i.awy = load ptr, ptr %i.awx, align 8, !tbaa !138 ; 2 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.axa = load ptr, ptr %i.awz, align 8, !tbaa !137
  %i.axb = ptrtoint ptr %i.axa to i64
  %i.axc = ptrtoint ptr %i.awy to i64
  %i.axd = sub i64 %i.axb, %i.axc
  %i.axe = ashr exact i64 %i.axd, 2
  call void @kissat_dealloc(ptr noundef nonnull %i.aur, ptr noundef %i.awy, i64 noundef %i.axe, i64 noundef 4) #6
  %i.axf = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.awx, i8 0, i64 24, i1 false)
  %i.axg = load ptr, ptr %i.axf, align 8, !tbaa !153 ; 2 uses
  %i.axh = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.axi = load ptr, ptr %i.axh, align 8, !tbaa !151
  %i.axj = ptrtoint ptr %i.axi to i64
  %i.axk = ptrtoint ptr %i.axg to i64
  %i.axl = sub i64 %i.axj, %i.axk
  %i.axm = ashr exact i64 %i.axl, 2
  call void @kissat_dealloc(ptr noundef nonnull %i.aur, ptr noundef %i.axg, i64 noundef %i.axm, i64 noundef 4) #6
  %i.axn = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.axf, i8 0, i64 24, i1 false)
  %i.axo = load ptr, ptr %i.axn, align 8, !tbaa !158 ; 2 uses
  %i.axp = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.axq = load ptr, ptr %i.axp, align 8, !tbaa !149
  %i.axr = ptrtoint ptr %i.axq to i64
  %i.axs = ptrtoint ptr %i.axo to i64
  %i.axt = sub i64 %i.axr, %i.axs
  %i.axu = ashr exact i64 %i.axt, 2
  call void @kissat_dealloc(ptr noundef nonnull %i.aur, ptr noundef %i.axo, i64 noundef %i.axu, i64 noundef 4) #6
  %i.axv = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.axn, i8 0, i64 24, i1 false)
  %i.axw = load ptr, ptr %i.axv, align 8, !tbaa !97 ; 2 uses
  %i.axx = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.axy = load ptr, ptr %i.axx, align 8, !tbaa !103
  %i.axz = ptrtoint ptr %i.axy to i64
  %i.aya = ptrtoint ptr %i.axw to i64
  %i.ayb = sub i64 %i.axz, %i.aya
  %i.ayc = ashr exact i64 %i.ayb, 2
  call void @kissat_dealloc(ptr noundef nonnull %i.aur, ptr noundef %i.axw, i64 noundef %i.ayc, i64 noundef 4) #6
  %i.ayd = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.axv, i8 0, i64 24, i1 false)
  %i.aye = load ptr, ptr %i.ayd, align 8, !tbaa !97 ; 2 uses
  %i.ayf = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.ayg = load ptr, ptr %i.ayf, align 8, !tbaa !103
  %i.ayh = ptrtoint ptr %i.ayg to i64
  %i.ayi = ptrtoint ptr %i.aye to i64
  %i.ayj = sub i64 %i.ayh, %i.ayi
  %i.ayk = ashr exact i64 %i.ayj, 2
  call void @kissat_dealloc(ptr noundef nonnull %i.aur, ptr noundef %i.aye, i64 noundef %i.ayk, i64 noundef 4) #6
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.aur, i64 3768 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ayd, i8 0, i64 24, i1 false)
  %i.aym = load ptr, ptr %i.ayl, align 8, !tbaa !86
  call void @kitten_release(ptr noundef %i.aym) #6
  store ptr null, ptr %i.ayl, align 8, !tbaa !86
  call void @kissat_resume_sparse_mode(ptr noundef nonnull %i.aur, i1 noundef zeroext false, ptr noundef null) #6
  %i.ayn = load i8, ptr %i.b, align 1, !tbaa !8, !range !59, !noundef !60
  %i.ayo = trunc nuw i8 %i.ayn to i1
  br i1 %i.ayo, label %bb.im, label %bb.il

bb.il:                                            ; preds = %release_sweeper.exit
  %i.ayp = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ayq = load ptr, ptr %i.ayp, align 8, !tbaa !187
  %i.ayr = getelementptr inbounds nuw i8, ptr %0, i64 488
  store ptr %i.ayq, ptr %i.ayr, align 8, !tbaa !180
  %i.ays = call ptr @kissat_probing_propagate(ptr noundef nonnull %0, ptr noundef null, i1 noundef zeroext true) #6 ; 0 uses
  br label %bb.im

bb.im:                                            ; preds = %bb.il, %release_sweeper.exit
  %i.ayt = add i64 %i.auc, %i.aua                 ; 2 uses
  %i.ayu = uitofp i64 %i.ayt to double
  %i.ayv = uitofp i64 %.040.lcssa to double
  %.not = icmp eq i64 %.040.lcssa, 0
  %i.ayw = fdiv double %i.ayu, %i.ayv
  %i.ayx = fcmp olt double %i.ayw, 1.000000e-03
  %i.ayy = select i1 %.not, i1 true, i1 %i.ayx
  br i1 %i.ayy, label %bb.in, label %bb.io

bb.in:                                            ; preds = %bb.im
  call void @kissat_bump_delay(ptr noundef nonnull %0, ptr noundef nonnull %i.o) #6
  br label %bb.ip

bb.io:                                            ; preds = %bb.im
  call void @kissat_reduce_delay(ptr noundef nonnull %0, ptr noundef nonnull %i.o) #6
  br label %bb.ip

bb.ip:                                            ; preds = %bb.in, %bb.io
  %i.ayz = icmp ne i64 %i.ayt, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %bb.iq

bb.iq:                                            ; preds = %bb.f, %kissat_terminated.exit, %bb.a, %bb.ip
  %.043 = phi i1 [ %i.ayz, %bb.ip ], [ false, %bb.a ], [ false, %kissat_terminated.exit ], [ false, %bb.f ]
  ret i1 %.043
}

declare zeroext i1 @kissat_delaying(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @kissat_probing_propagate(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @kissat_bump_delay(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @kissat_reduce_delay(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @kissat_calloc(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @kissat_nalloc(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @kitten_embedded(ptr noundef) local_unnamed_addr #1

declare void @kitten_track_antecedents(ptr noundef) local_unnamed_addr #1

declare void @kissat_enter_dense_mode(ptr noundef, ptr noundef) local_unnamed_addr #1
end_hunk_1
