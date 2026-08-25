Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/walk?download=true
inline.NumInlined: 68
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@kissat_walk:bb.a
  br i1 %.not64.i.i.i.i, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.or = xor i32 %i.on, 1
  %i.os = load ptr, ptr %i.mb, align 8, !tbaa !85
  %i.ot = zext i32 %i.or to i64
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.os, i64 %i.ot ; 2 uses
  %.val.i65.i.i.i.i = load ptr, ptr %i.mc, align 8, !tbaa !135
  %.val20.i.i.i.i.i = load i32, ptr %i.ou, align 4, !tbaa !104
  %i.ov = zext i32 %.val20.i.i.i.i.i to i64
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %.val.i65.i.i.i.i, i64 %i.ov ; 2 uses
  %i.ox = getelementptr i8, ptr %i.ou, i64 4
  %.val23.i.i.i.i.i = load i32, ptr %i.ox, align 4, !tbaa !102 ; 3 uses
  %.not1.i.i.i.i.i = icmp eq i32 %.val23.i.i.i.i.i, 0
  br i1 %.not1.i.i.i.i.i, label %break_value.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.aw
  %i.oy = zext i32 %.val23.i.i.i.i.i to i64
  %i.oz = load ptr, ptr %i.bs, align 8, !tbaa !83 ; 5 uses
  %i.pa = add nuw nsw i64 %i.oy, 4611686018427387903
  %i.pb = and i64 %i.pa, 4611686018427387903      ; 2 uses
  %i.pc = add nuw nsw i64 %i.pb, 1                ; 2 uses
  %xtraiter = and i64 %i.pc, 3                    ; 3 uses
  %i.pd = icmp samesign ult i64 %i.pb, 3
  br i1 %i.pd, label %.epil.preheader, label %.lr.ph.i.i.i.i.i.new

.lr.ph.i.i.i.i.i.new:                             ; preds = %.lr.ph.i.i.i.i.i
  %unroll_iter = and i64 %i.pc, 9223372036854775804
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.lr.ph.i.i.i.i.i.new
  %.04.i.i.i.i.i = phi ptr [ %i.ow, %.lr.ph.i.i.i.i.i.new ], [ %i.qj, %bb.ax ] ; 5 uses
  %.0183.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i.new ], [ %i.qi, %bb.ax ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.new ], [ %niter.next.3, %bb.ax ]
  %.sroa.0.0.copyload.i66.i.i.i.i = load i32, ptr %.04.i.i.i.i.i, align 4, !tbaa !80
  %i.pe = and i32 %.sroa.0.0.copyload.i66.i.i.i.i, 2147483647
  %i.pf = zext nneg i32 %i.pe to i64
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.oz, i64 %i.pf
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !91
  %i.pi = icmp eq i32 %i.ph, 1
  %i.pj = zext i1 %i.pi to i32
  %i.pk = add i32 %.0183.i.i.i.i.i, %i.pj
  %i.pl = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i, i64 4
  %.sroa.0.0.copyload.i66.i.i.i.i.1 = load i32, ptr %i.pl, align 4, !tbaa !80
  %i.pm = and i32 %.sroa.0.0.copyload.i66.i.i.i.i.1, 2147483647
  %i.pn = zext nneg i32 %i.pm to i64
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.oz, i64 %i.pn
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !91
  %i.pq = icmp eq i32 %i.pp, 1
  %i.pr = zext i1 %i.pq to i32
  %i.ps = add i32 %i.pk, %i.pr
  %i.pt = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i, i64 8
  %.sroa.0.0.copyload.i66.i.i.i.i.2 = load i32, ptr %i.pt, align 4, !tbaa !80
  %i.pu = and i32 %.sroa.0.0.copyload.i66.i.i.i.i.2, 2147483647
  %i.pv = zext nneg i32 %i.pu to i64
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.oz, i64 %i.pv
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !91
  %i.py = icmp eq i32 %i.px, 1
  %i.pz = zext i1 %i.py to i32
  %i.qa = add i32 %i.ps, %i.pz
  %i.qb = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i, i64 12
  %.sroa.0.0.copyload.i66.i.i.i.i.3 = load i32, ptr %i.qb, align 4, !tbaa !80
  %i.qc = and i32 %.sroa.0.0.copyload.i66.i.i.i.i.3, 2147483647
  %i.qd = zext nneg i32 %i.qc to i64
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.oz, i64 %i.qd
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !91
  %i.qg = icmp eq i32 %i.qf, 1
  %i.qh = zext i1 %i.qg to i32
  %i.qi = add i32 %i.qa, %i.qh                    ; 3 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i, i64 16 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge.loopexit.i.i.i.i.i.unr-lcssa, label %bb.ax, !llvm.loop !136

.critedge.loopexit.i.i.i.i.i.unr-lcssa:           ; preds = %bb.ax
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge.loopexit.i.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.loopexit.i.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i
  %.04.i.i.i.i.i.epil.init = phi ptr [ %i.ow, %.lr.ph.i.i.i.i.i ], [ %i.qj, %.critedge.loopexit.i.i.i.i.i.unr-lcssa ]
  %.0183.i.i.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.qi, %.critedge.loopexit.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod139 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod139)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ay, %.epil.preheader
  %.04.i.i.i.i.i.epil = phi ptr [ %.04.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.qr, %bb.ay ] ; 2 uses
  %.0183.i.i.i.i.i.epil = phi i32 [ %.0183.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.qq, %bb.ay ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ay ]
  %.sroa.0.0.copyload.i66.i.i.i.i.epil = load i32, ptr %.04.i.i.i.i.i.epil, align 4, !tbaa !80
  %i.qk = and i32 %.sroa.0.0.copyload.i66.i.i.i.i.epil, 2147483647
  %i.ql = zext nneg i32 %i.qk to i64
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.oz, i64 %i.ql
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !91
  %i.qo = icmp eq i32 %i.qn, 1
  %i.qp = zext i1 %i.qo to i32
  %i.qq = add i32 %.0183.i.i.i.i.i.epil, %i.qp    ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge.loopexit.i.i.i.i.i, label %bb.ay, !llvm.loop !137

.critedge.loopexit.i.i.i.i.i:                     ; preds = %bb.ay, %.critedge.loopexit.i.i.i.i.i.unr-lcssa
  %.lcssa = phi i32 [ %i.qi, %.critedge.loopexit.i.i.i.i.i.unr-lcssa ], [ %i.qq, %bb.ay ]
  %i.qs = add i32 %.val23.i.i.i.i.i, 1
  %i.qt = zext i32 %i.qs to i64
  br label %break_value.exit.i.i.i.i

break_value.exit.i.i.i.i:                         ; preds = %.critedge.loopexit.i.i.i.i.i, %bb.aw
  %.019.lcssa.i.i.i.i.i = phi i64 [ 1, %bb.aw ], [ %i.qt, %.critedge.loopexit.i.i.i.i.i ]
  %.018.lcssa.i.i.i.i.i = phi i32 [ 0, %bb.aw ], [ %.lcssa, %.critedge.loopexit.i.i.i.i.i ] ; 2 uses
  %i.qu = load i64, ptr %i.lv, align 8, !tbaa !128
  %i.qv = add i64 %i.qu, %.019.lcssa.i.i.i.i.i
  store i64 %i.qv, ptr %i.lv, align 8, !tbaa !128
  %i.qw = load i32, ptr %i.lc, align 4, !tbaa !118
  %i.qx = icmp ult i32 %.018.lcssa.i.i.i.i.i, %i.qw
  %i.qy = load ptr, ptr %i.kw, align 8
  %i.qz = zext i32 %.018.lcssa.i.i.i.i.i to i64
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %i.qz
  %.0.in.i.i.i.i.i = select i1 %i.qx, ptr %i.ra, ptr %i.ld
  %.0.i67.i.i.i.i = load double, ptr %.0.in.i.i.i.i.i, align 8, !tbaa !114 ; 2 uses
  %i.rb = load ptr, ptr %i.md, align 8, !tbaa !139 ; 2 uses
  %i.rc = load ptr, ptr %i.me, align 8, !tbaa !140
  %i.rd = icmp eq ptr %i.rb, %i.rc
  br i1 %i.rd, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %break_value.exit.i.i.i.i
  call void @kissat_stack_enlarge(ptr noundef nonnull %i.lt, ptr noundef nonnull %i.mf, i64 noundef 8) #8
  %.pre.i.i.i10.i = load ptr, ptr %i.md, align 8, !tbaa !139
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %break_value.exit.i.i.i.i
  %i.re = phi ptr [ %.pre.i.i.i10.i, %bb.az ], [ %i.rb, %break_value.exit.i.i.i.i ] ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  store ptr %i.rf, ptr %i.md, align 8, !tbaa !139
  store double %.0.i67.i.i.i.i, ptr %i.re, align 8, !tbaa !114
  %i.rg = fadd double %.05776.i.i.i.i, %.0.i67.i.i.i.i
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.av
  %.158.i.i.i.i = phi double [ %i.rg, %bb.ba ], [ %.05776.i.i.i.i, %bb.av ] ; 2 uses
  %.156.i.i.i.i = phi i32 [ %i.on, %bb.ba ], [ %.05577.i.i.i.i, %bb.av ] ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.05478.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.rh, %i.oa
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.av, !llvm.loop !141

.lr.ph85.i.i.i.i:                                 ; preds = %._crit_edge.i.i.i.i, %bb.bd
  %.083.i.i.i.i = phi ptr [ %i.rq, %bb.bd ], [ %.0.i97.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %.05182.i.i.i.i = phi ptr [ %.1.ph.i.i.i.i, %bb.bd ], [ %i.om, %._crit_edge.i.i.i.i ] ; 3 uses
  %.25981.i.i.i.i = phi double [ %.360.ph.i.i.i.i, %bb.bd ], [ 0.000000e+00, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ri = load i32, ptr %.083.i.i.i.i, align 4, !tbaa !90 ; 2 uses
  %i.rj = zext i32 %i.ri to i64
  %i.rk = getelementptr inbounds nuw i8, ptr %i.od, i64 %i.rj
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !80
  %.not63.i.i.i.i = icmp eq i8 %i.rl, 0
  br i1 %.not63.i.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph85.i.i.i.i
  %i.rm = getelementptr inbounds nuw i8, ptr %.05182.i.i.i.i, i64 8
  %i.rn = load double, ptr %.05182.i.i.i.i, align 8, !tbaa !114
  %i.ro = fadd double %.25981.i.i.i.i, %i.rn      ; 2 uses
  %i.rp = fcmp olt double %i.ol, %i.ro
  br i1 %i.rp, label %pick_literal.exit.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.lr.ph85.i.i.i.i
  %.360.ph.i.i.i.i = phi double [ %.25981.i.i.i.i, %.lr.ph85.i.i.i.i ], [ %i.ro, %bb.bc ]
  %.1.ph.i.i.i.i = phi ptr [ %.05182.i.i.i.i, %.lr.ph85.i.i.i.i ], [ %i.rm, %bb.bc ]
  %i.rq = getelementptr inbounds nuw i8, ptr %.083.i.i.i.i, i64 4 ; 2 uses
  %.not62.i.i.i.i = icmp eq ptr %i.rq, %i.oc
  br i1 %.not62.i.i.i.i, label %pick_literal.exit.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !142

pick_literal.exit.i.i.i:                          ; preds = %bb.bd, %bb.bc, %._crit_edge.i.i.i.i
  %.5.i.i.i.i = phi i32 [ %.055.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.ri, %bb.bc ], [ %.055.lcssa.i.i.i.i, %bb.bd ] ; 4 uses
  store ptr %i.om, ptr %i.md, align 8, !tbaa !139
  %i.rr = load ptr, ptr %i.ma, align 8, !tbaa !75 ; 2 uses
  %i.rs = zext i32 %.5.i.i.i.i to i64             ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rr, i64 %i.rs ; 2 uses
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !80  ; 2 uses
  %i.rv = sub i8 0, %i.ru
  store i8 %i.rv, ptr %i.rt, align 1, !tbaa !80
  %i.rw = xor i32 %.5.i.i.i.i, 1
  %i.rx = zext i32 %i.rw to i64                   ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rr, i64 %i.rx
  store i8 %i.ru, ptr %i.ry, align 1, !tbaa !80
  %i.rz = load ptr, ptr %i.mb, align 8, !tbaa !85 ; 2 uses
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %i.rs ; 2 uses
  %i.sb = load ptr, ptr %i.bs, align 8, !tbaa !83 ; 3 uses
  %.val.i.i13.i.i.i = load ptr, ptr %i.mc, align 8, !tbaa !135 ; 2 uses
  %.val24.i.i.i.i.i = load i32, ptr %i.sa, align 4, !tbaa !104
  %i.sc = zext i32 %.val24.i.i.i.i.i to i64
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i13.i.i.i, i64 %i.sc ; 2 uses
  %i.se = getelementptr i8, ptr %i.sa, i64 4
  %.val27.i.i.i.i.i = load i32, ptr %i.se, align 4, !tbaa !102 ; 2 uses
  %i.sf = zext i32 %.val27.i.i.i.i.i to i64
  %.idx.i.i14.i.i.i = shl nuw nsw i64 %i.sf, 2
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sd, i64 %.idx.i.i14.i.i.i
  %.not1.i.i15.i.i.i = icmp eq i32 %.val27.i.i.i.i.i, 0
  br i1 %.not1.i.i15.i.i.i, label %make_clauses.exit.i.i.i.i, label %.lr.ph.i.i16.i.i.preheader.i

.lr.ph.i.i16.i.i.preheader.i:                     ; preds = %pick_literal.exit.i.i.i
  %i.sh = load ptr, ptr %i.jd, align 8
  br label %.lr.ph.i.i16.i.i.i

.lr.ph.i.i16.i.i.i:                               ; preds = %bb.bg, %.lr.ph.i.i16.i.i.preheader.i
  %.03.i.i.i.i.i = phi ptr [ %i.tb, %bb.bg ], [ %i.sd, %.lr.ph.i.i16.i.i.preheader.i ] ; 2 uses
  %.0222.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i, %bb.bg ], [ 1, %.lr.ph.i.i16.i.i.preheader.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i17.i.i.i = load i32, ptr %.03.i.i.i.i.i, align 4, !tbaa !80
  %i.si = add i32 %.0222.i.i.i.i.i, 1             ; 2 uses
  %i.sj = and i32 %.sroa.0.0.copyload.i.i17.i.i.i, 2147483647 ; 2 uses
  %i.sk = zext nneg i32 %i.sj to i64
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.sb, i64 %i.sk ; 3 uses
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !91 ; 2 uses
  %i.sn = add i32 %i.sm, 1
  store i32 %i.sn, ptr %i.sl, align 4, !tbaa !91
  %.not23.i.i.i.i.i = icmp eq i32 %i.sm, 0
  br i1 %.not23.i.i.i.i.i, label %bb.be, label %bb.bg

.critedge.loopexit.i.i19.i.i.i:                   ; preds = %bb.bg
  %i.so = zext i32 %.2.i.i.i.i.i to i64
  br label %make_clauses.exit.i.i.i.i

bb.be:                                            ; preds = %.lr.ph.i.i16.i.i.i
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sl, i64 4
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !95 ; 2 uses
  %3 = load ptr, ptr %i.je, align 8, !tbaa !93
  %i.sr = getelementptr inbounds i8, ptr %3, i64 -4 ; 2 uses
  store ptr %i.sr, ptr %i.je, align 8, !tbaa !93
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !90 ; 3 uses
  %i.st = load i32, ptr %i.jl, align 8, !tbaa !112
  %i.su = add i32 %i.st, -1
  store i32 %i.su, ptr %i.jl, align 8, !tbaa !112
  %.not.i.not.i.i.i.i.i = icmp eq i32 %i.sj, %i.ss ; 2 uses
  br i1 %.not.i.not.i.i.i.i.i, label %pop_unsat.exit.i.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.sv = zext i32 %i.ss to i64
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %i.sb, i64 %i.sv
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 4
  store i32 %i.sq, ptr %i.sx, align 4, !tbaa !95
  %i.sy = zext i32 %i.sq to i64
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %i.sy
  store i32 %i.ss, ptr %i.sz, align 4, !tbaa !90
  br label %pop_unsat.exit.i.i.i.i.i

pop_unsat.exit.i.i.i.i.i:                         ; preds = %bb.bf, %bb.be
  %i.ta = add i32 %.0222.i.i.i.i.i, 2
  %spec.select.i.i.i.i.i = select i1 %.not.i.not.i.i.i.i.i, i32 %i.si, i32 %i.ta
  br label %bb.bg

bb.bg:                                            ; preds = %pop_unsat.exit.i.i.i.i.i, %.lr.ph.i.i16.i.i.i
  %.2.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %pop_unsat.exit.i.i.i.i.i ], [ %i.si, %.lr.ph.i.i16.i.i.i ] ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i18.i.i.i = icmp eq ptr %i.tb, %i.sg
  br i1 %.not.i.i18.i.i.i, label %.critedge.loopexit.i.i19.i.i.i, label %.lr.ph.i.i16.i.i.i, !llvm.loop !143

make_clauses.exit.i.i.i.i:                        ; preds = %.critedge.loopexit.i.i19.i.i.i, %pick_literal.exit.i.i.i
  %.022.lcssa.i.i.i.i.i = phi i64 [ 1, %pick_literal.exit.i.i.i ], [ %i.so, %.critedge.loopexit.i.i19.i.i.i ]
  %i.tc = load i64, ptr %i.lv, align 8, !tbaa !128
  %i.td = add i64 %i.tc, %.022.lcssa.i.i.i.i.i    ; 2 uses
  store i64 %i.td, ptr %i.lv, align 8, !tbaa !128
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %i.rx ; 2 uses
  %.val23.i.i20.i.i.i = load i32, ptr %i.te, align 4, !tbaa !104
  %i.tf = zext i32 %.val23.i.i20.i.i.i to i64
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i13.i.i.i, i64 %i.tf ; 2 uses
  %i.th = getelementptr i8, ptr %i.te, i64 4
  %.val26.i.i.i.i.i = load i32, ptr %i.th, align 4, !tbaa !102 ; 3 uses
  %i.ti = zext i32 %.val26.i.i.i.i.i to i64
  %.idx.i20.i.i.i.i = shl nuw nsw i64 %i.ti, 2
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tg, i64 %.idx.i20.i.i.i.i
  %.not1.i21.i.i.i.i = icmp eq i32 %.val26.i.i.i.i.i, 0
  br i1 %.not1.i21.i.i.i.i, label %flip_literal.exit.i.i.i, label %.lr.ph.i22.i.i.i.i

.lr.ph.i22.i.i.i.i:                               ; preds = %make_clauses.exit.i.i.i.i, %bb.bj
  %.03.i23.i.i.i.i = phi ptr [ %i.ud, %bb.bj ], [ %i.tg, %make_clauses.exit.i.i.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i24.i.i.i.i = load i32, ptr %.03.i23.i.i.i.i, align 4, !tbaa !80
  %i.tk = and i32 %.sroa.0.0.copyload.i24.i.i.i.i, 2147483647 ; 2 uses
  %i.tl = zext nneg i32 %i.tk to i64
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.sb, i64 %i.tl ; 3 uses
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !91
  %i.to = add i32 %i.tn, -1                       ; 2 uses
  store i32 %i.to, ptr %i.tm, align 4, !tbaa !91
  %.not22.i.i.i.i.i = icmp eq i32 %i.to, 0
  br i1 %.not22.i.i.i.i.i, label %bb.bh, label %bb.bj

.critedge.loopexit.i26.i.i.i.i:                   ; preds = %bb.bj
  %i.tp = add i32 %.val26.i.i.i.i.i, 1
  %i.tq = zext i32 %i.tp to i64
  %.pre.i21.i.i.i = load i64, ptr %i.lv, align 8, !tbaa !128
  br label %flip_literal.exit.i.i.i

bb.bh:                                            ; preds = %.lr.ph.i22.i.i.i.i
  %i.tr = load ptr, ptr %i.je, align 8, !tbaa !93 ; 3 uses
  %i.ts = load ptr, ptr %i.jd, align 8, !tbaa !94
  %i.tt = ptrtoint ptr %i.tr to i64
  %i.tu = ptrtoint ptr %i.ts to i64
  %i.tv = sub i64 %i.tt, %i.tu
  %i.tw = lshr exact i64 %i.tv, 2
  %i.tx = trunc i64 %i.tw to i32
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tm, i64 4
  store i32 %i.tx, ptr %i.ty, align 4, !tbaa !95
  %i.tz = load ptr, ptr %i.mg, align 8, !tbaa !96
  %i.ua = icmp eq ptr %i.tr, %i.tz
  br i1 %i.ua, label %bb.bi, label %push_unsat.exit.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bh
  call void @kissat_stack_enlarge(ptr noundef %i.lt, ptr noundef nonnull %i.jd, i64 noundef 4) #8
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.je, align 8, !tbaa !93
  br label %push_unsat.exit.i.i.i.i.i

push_unsat.exit.i.i.i.i.i:                        ; preds = %bb.bi, %bb.bh
  %i.ub = phi ptr [ %.pre.i.i.i.i.i.i, %bb.bi ], [ %i.tr, %bb.bh ] ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 4
  store ptr %i.uc, ptr %i.je, align 8, !tbaa !93
  store i32 %i.tk, ptr %i.ub, align 4, !tbaa !90
  br label %bb.bj

bb.bj:                                            ; preds = %push_unsat.exit.i.i.i.i.i, %.lr.ph.i22.i.i.i.i
  %i.ud = getelementptr inbounds nuw i8, ptr %.03.i23.i.i.i.i, i64 4 ; 2 uses
  %.not.i25.i.i.i.i = icmp eq ptr %i.ud, %i.tj
  br i1 %.not.i25.i.i.i.i, label %.critedge.loopexit.i26.i.i.i.i, label %.lr.ph.i22.i.i.i.i, !llvm.loop !144

flip_literal.exit.i.i.i:                          ; preds = %.critedge.loopexit.i26.i.i.i.i, %make_clauses.exit.i.i.i.i
  %i.ue = phi i64 [ %i.td, %make_clauses.exit.i.i.i.i ], [ %.pre.i21.i.i.i, %.critedge.loopexit.i26.i.i.i.i ]
  %.021.lcssa.i.i.i.i.i = phi i64 [ 1, %make_clauses.exit.i.i.i.i ], [ %i.tq, %.critedge.loopexit.i26.i.i.i.i ]
  %i.uf = add i64 %.021.lcssa.i.i.i.i.i, %i.ue
  store i64 %i.uf, ptr %i.lv, align 8, !tbaa !128
  %.val.i.i.i.i = load ptr, ptr %i.jd, align 8, !tbaa !94
  %.val18.i.i.i.i = load ptr, ptr %i.je, align 8, !tbaa !93
  %i.ug = ptrtoint ptr %.val18.i.i.i.i to i64
  %i.uh = ptrtoint ptr %.val.i.i.i.i to i64
  %i.ui = sub i64 %i.ug, %i.uh
  %i.uj = lshr exact i64 %i.ui, 2
  %i.uk = trunc i64 %i.uj to i32
  store i32 %i.uk, ptr %i.jl, align 8, !tbaa !112
  %i.ul = load i32, ptr %i.z, align 8, !tbaa !145 ; 3 uses
  %i.um = icmp eq i32 %i.ul, -1
  br i1 %i.um, label %push_flipped.exit.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %flip_literal.exit.i.i.i
  %i.un = load ptr, ptr %i.mi, align 8, !tbaa !146 ; 3 uses
  %i.uo = load ptr, ptr %i.mh, align 8, !tbaa !147 ; 10 uses
  %i.up = ptrtoint ptr %i.un to i64
  %i.uq = ptrtoint ptr %i.uo to i64               ; 2 uses
  %i.ur = sub i64 %i.up, %i.uq
  %i.us = lshr exact i64 %i.ur, 2
  %i.ut = trunc i64 %i.us to i32
  %i.uu = load i32, ptr %i.mj, align 8, !tbaa !77
  %i.uv = lshr i32 %i.uu, 2
  %.not.i22.i.i.i = icmp ult i32 %i.uv, %i.ut
  br i1 %.not.i22.i.i.i, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.uw = load ptr, ptr %i.mk, align 8, !tbaa !148
  %i.ux = icmp eq ptr %i.un, %i.uw
  br i1 %i.ux, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  call void @kissat_stack_enlarge(ptr noundef nonnull %i.lt, ptr noundef nonnull %i.mh, i64 noundef 4) #8
  %.pre.i23.i.i.i = load ptr, ptr %i.mi, align 8, !tbaa !146
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.uy = phi ptr [ %.pre.i23.i.i.i, %bb.bm ], [ %i.un, %bb.bl ] ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 4
  store ptr %i.uz, ptr %i.mi, align 8, !tbaa !146
  store i32 %.5.i.i.i.i, ptr %i.uy, align 4, !tbaa !90
  br label %push_flipped.exit.i.i.i

bb.bo:                                            ; preds = %bb.bk
  %.not23.i.i.i.i = icmp eq i32 %i.ul, 0
  br i1 %.not23.i.i.i.i, label %bb.bt, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.va = load ptr, ptr %i.az, align 8, !tbaa !79 ; 3 uses
  %i.vb = zext i32 %i.ul to i64
  %.idx.i.i24.i.i.i = shl nuw nsw i64 %i.vb, 2    ; 3 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uo, i64 %.idx.i.i24.i.i.i ; 5 uses
  %i.vd = add nsw i64 %.idx.i.i24.i.i.i, -4       ; 2 uses
  %i.ve = and i64 %i.vd, 4
  %lcmp.mod141.not.not = icmp eq i64 %i.ve, 0
  br i1 %lcmp.mod141.not.not, label %.lr.ph.i.i25.i.i.i.prol, label %.lr.ph.i.i25.i.i.i.prol.loopexit

.lr.ph.i.i25.i.i.i.prol:                          ; preds = %bb.bp
  %i.vf = load i32, ptr %i.uo, align 4, !tbaa !90 ; 2 uses
  %i.vg = and i32 %i.vf, 1
  %.not31.i.i.i.i.i.prol = icmp eq i32 %i.vg, 0
  %i.vh = select i1 %.not31.i.i.i.i.i.prol, i8 1, i8 -1
  %i.vi = lshr i32 %i.vf, 1
  %i.vj = zext nneg i32 %i.vi to i64
  %i.vk = getelementptr inbounds nuw i8, ptr %i.va, i64 %i.vj
  store i8 %i.vh, ptr %i.vk, align 1, !tbaa !80
  %i.vl = getelementptr inbounds nuw i8, ptr %i.uo, i64 4
  br label %.lr.ph.i.i25.i.i.i.prol.loopexit

.lr.ph.i.i25.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i25.i.i.i.prol, %bb.bp
  %.0282.i.i.i.i.i.unr = phi ptr [ %i.uo, %bb.bp ], [ %i.vl, %.lr.ph.i.i25.i.i.i.prol ]
  %i.vm = icmp eq i64 %i.vd, 0
  br i1 %i.vm, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i25.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i25.i.i.i, %.lr.ph.i.i25.i.i.i.prol.loopexit
  %i.vn = load ptr, ptr %i.mi, align 8, !tbaa !146 ; 5 uses
  %.not303.i.i.i.i.i = icmp eq ptr %i.vc, %i.vn
  br i1 %.not303.i.i.i.i.i, label %._crit_edge8.i.i.i.i.i, label %.lr.ph7.i.i.i.i.i.preheader

.lr.ph7.i.i.i.i.i.preheader:                      ; preds = %._crit_edge.i.i.i.i.i
  %i.vo = ptrtoaddr ptr %i.vn to i64
  %i.vp = add i64 %i.vo, -4
  %i.vq = add i64 %.idx.i.i24.i.i.i, %i.uq
  %i.vr = sub i64 %i.vp, %i.vq                    ; 2 uses
  %i.vs = lshr i64 %i.vr, 2
  %i.vt = add nuw nsw i64 %i.vs, 1                ; 2 uses
  %min.iters.check120 = icmp ult i64 %i.vr, 28
  br i1 %min.iters.check120, label %.lr.ph7.i.i.i.i.i.preheader132, label %vector.ph121

vector.ph121:                                     ; preds = %.lr.ph7.i.i.i.i.i.preheader
  %n.vec122 = and i64 %i.vt, 9223372036854775800  ; 3 uses
  %i.vu = shl i64 %n.vec122, 2                    ; 2 uses
  %i.vv = getelementptr i8, ptr %i.vc, i64 %i.vu
  %i.vw = getelementptr i8, ptr %i.uo, i64 %i.vu  ; 2 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph121
  %index124 = phi i64 [ 0, %vector.ph121 ], [ %index.next127, %vector.body123 ] ; 2 uses
  %i.vx = shl i64 %index124, 2                    ; 2 uses
  %next.gep = getelementptr i8, ptr %i.vc, i64 %i.vx ; 2 uses
  %next.gep125 = getelementptr i8, ptr %i.uo, i64 %i.vx ; 2 uses
  %i.vy = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !90
  %wide.load126 = load <4 x i32>, ptr %i.vy, align 4, !tbaa !90
  %i.vz = getelementptr i8, ptr %next.gep125, i64 16
  store <4 x i32> %wide.load, ptr %next.gep125, align 4, !tbaa !90
  store <4 x i32> %wide.load126, ptr %i.vz, align 4, !tbaa !90
  %index.next127 = add nuw i64 %index124, 8       ; 2 uses
  %i.wa = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.wa, label %middle.block128, label %vector.body123, !llvm.loop !149

middle.block128:                                  ; preds = %vector.body123
  %cmp.n = icmp eq i64 %i.vt, %n.vec122
  br i1 %cmp.n, label %._crit_edge8.i.i.i.i.i, label %.lr.ph7.i.i.i.i.i.preheader132

.lr.ph7.i.i.i.i.i.preheader132:                   ; preds = %.lr.ph7.i.i.i.i.i.preheader, %middle.block128
  %.05.i.i.i.i.i.ph = phi ptr [ %i.vc, %.lr.ph7.i.i.i.i.i.preheader ], [ %i.vv, %middle.block128 ]
  %.0274.i.i.i.i.i.ph = phi ptr [ %i.uo, %.lr.ph7.i.i.i.i.i.preheader ], [ %i.vw, %middle.block128 ]
  br label %.lr.ph7.i.i.i.i.i

.lr.ph.i.i25.i.i.i:                               ; preds = %.lr.ph.i.i25.i.i.i.prol.loopexit, %.lr.ph.i.i25.i.i.i
  %.0282.i.i.i.i.i = phi ptr [ %i.wo, %.lr.ph.i.i25.i.i.i ], [ %.0282.i.i.i.i.i.unr, %.lr.ph.i.i25.i.i.i.prol.loopexit ] ; 3 uses
  %i.wb = load i32, ptr %.0282.i.i.i.i.i, align 4, !tbaa !90 ; 2 uses
  %i.wc = and i32 %i.wb, 1
  %.not31.i.i.i.i.i = icmp eq i32 %i.wc, 0
end_hunk_0
