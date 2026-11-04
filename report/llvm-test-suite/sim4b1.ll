Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sim4b1?download=true
inline.NumInlined: 64
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@SIM4:bb.a
.critedge15.i:                                    ; preds = %bb.ax, %bb.aw
  %.2233.lcssa.i = phi i32 [ %i.nd, %bb.ax ], [ %.2233306.i, %bb.aw ] ; 2 uses
  %i.nn = sext i32 %.2233.lcssa.i to i64          ; 2 uses
  %i.no = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %i.nn
  %i.np = load i32, ptr %i.no, align 4, !tbaa !10 ; 2 uses
  %i.nq = add nsw i32 %i.np, %i.gk
  %i.nr = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.nn
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !10
  %i.nt = sub i32 %i.gm, %spec.select346
  %i.nu = add i32 %i.nt, %i.np
  %i.nv = add i32 %i.nu, %i.ns
  call void @free(ptr noundef nonnull %i.hw) #18
  call void @free(ptr noundef %i.hx) #18
  call void @free(ptr noundef %i.hl) #18
  call void @free(ptr noundef %i.hn) #18
  br label %extend_bw.exit

extend_bw.exit:                                   ; preds = %bb.u, %bb.am, %bb.ao, %bb.aq, %.critedge15.i
  %.0545 = phi i32 [ %i.hf, %bb.u ], [ %i.nq, %.critedge15.i ], [ %i.gk, %bb.am ], [ %i.gk, %bb.ao ], [ %i.lf, %bb.aq ] ; 2 uses
  %.0544 = phi i32 [ %i.hg, %bb.u ], [ %i.nv, %.critedge15.i ], [ %i.gm, %bb.am ], [ %i.ld, %bb.ao ], [ %i.gm, %bb.aq ]
  %.0239.i = phi i32 [ 0, %bb.u ], [ %.2233.lcssa.i, %.critedge15.i ], [ %i.lb, %bb.am ], [ %i.lc, %bb.ao ], [ %i.le, %bb.aq ]
  %i.nw = load i32, ptr %i.fo, align 4, !tbaa !31
  %i.nx = xor i32 %.0545, -1
  %i.ny = add i32 %i.nw, %i.nx
  %i.nz = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 56), align 8, !tbaa !143
  %i.oa = mul nsw i32 %i.ny, %i.nz
  %i.ob = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 48), align 8, !tbaa !144
  %i.oc = mul nsw i32 %i.ob, %.0239.i
  %i.od = add nsw i32 %i.oc, %i.oa
  %i.oe = icmp sgt i32 %i.od, -1
  br i1 %i.oe, label %bb.ay, label %.thread548

bb.ay:                                            ; preds = %extend_bw.exit
  %i.of = add nsw i32 %.0545, 1
  store i32 %i.of, ptr %i.fo, align 4, !tbaa !31
  %i.og = add nsw i32 %.0544, 1
  store i32 %i.og, ptr %.3299, align 4, !tbaa !32
  br label %.thread548

.thread548:                                       ; preds = %extend_bw.exit, %bb.ay, %.critedge.thread, %bb.f, %bb.e
  %i.oh = load i32, ptr %i.bh, align 8, !tbaa !137
  %.not333 = icmp eq i32 %i.oh, 0
  br i1 %.not333, label %bb.az, label %.thread555

bb.az:                                            ; preds = %.thread548
  %i.oi = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.oj = load i32, ptr %i.bl, align 8, !tbaa !19 ; 3 uses
  %i.ok = add i32 %i.oj, -1
  %i.ol = zext i32 %i.ok to i64
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.oi, i64 %i.ol
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !29 ; 5 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 12 ; 2 uses
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !44 ; 3 uses
  %i.oq = load i32, ptr %i.i, align 4, !tbaa !135 ; 2 uses
  %i.or = icmp ult i32 %i.op, %i.oq
  br i1 %i.or, label %bb.ba, label %.thread555

bb.ba:                                            ; preds = %bb.az
  %i.os = sub nuw i32 %i.oq, %i.op                ; 3 uses
  %i.ot = icmp ugt i32 %i.os, 60
  br i1 %i.ot, label %bb.bb, label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  %i.ou = getelementptr inbounds nuw i8, ptr %i.on, i64 8 ; 2 uses
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !43
  %i.ow = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  %i.ox = load i32, ptr %i.ow, align 8, !tbaa !35
  %i.oy = getelementptr inbounds nuw i8, ptr %i.be, i64 28 ; 2 uses
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !45
  %i.pa = add i32 %i.oz, %i.ox
  %i.pb = icmp ult i32 %i.ov, %i.pa
  br i1 %i.pb, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.pc = load i32, ptr %i.x, align 4, !tbaa !36
  %spec.select347 = call i32 @llvm.umin.i32(i32 %i.pc, i32 10) ; 2 uses
  %i.pd = load ptr, ptr %i.o, align 8, !tbaa !136
  %i.pe = zext i32 %i.op to i64
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pd, i64 %i.pe
  store i32 %spec.select347, ptr %i.ad, align 4, !tbaa !36
  store ptr %i.pf, ptr %i.ae, align 8, !tbaa !27
  store i32 %i.os, ptr %i.af, align 8, !tbaa !16
  %i.pg = shl nuw nsw i32 %spec.select347, 1
  %i.ph = add nsw i32 %i.pg, -2
  %notmask.i366 = shl nsw i32 -1, %i.ph
  %i.pi = xor i32 %notmask.i366, -1
  store i32 %i.pi, ptr %i.ag, align 8, !tbaa !37
  %i.pj = add i32 %i.os, 1
  %i.pk = zext i32 %i.pj to i64
  %i.pl = shl nuw nsw i64 %i.pk, 2
  %i.pm = call ptr @xmalloc(i64 noundef %i.pl) #18 ; 2 uses
  store ptr %i.pm, ptr %i.ah, align 8, !tbaa !38
  %i.pn = call ptr @xcalloc(i64 noundef 524288, i64 noundef 8) #18 ; 3 uses
  store ptr %i.pn, ptr %9, align 8, !tbaa !39
  call void @bld_table(ptr noundef nonnull %9)
  %i.po = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.pp = load i32, ptr %i.ou, align 4, !tbaa !43 ; 3 uses
  %i.pq = zext i32 %i.pp to i64
  %i.pr = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.pq
  %i.ps = load i32, ptr %i.ow, align 8, !tbaa !35
  %i.pt = load i32, ptr %i.oy, align 4, !tbaa !45
  %i.pu = sub i32 %i.ps, %i.pp
  %i.pv = add i32 %i.pu, %i.pt
  %i.pw = load i32, ptr %i.oo, align 4, !tbaa !44
  %i.px = add i32 %i.pw, 1
  %i.py = add i32 %i.pp, 1
  %i.pz = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 24), align 8, !tbaa !139
  call fastcc void @exon_cores(ptr noundef nonnull %9, ptr noundef %i.pr, i32 noundef %i.pv, i32 noundef %i.px, i32 noundef %i.py, i32 noundef %i.pz, ptr noundef %6, ptr noundef null, ptr noundef nonnull %7)
  call void @free(ptr noundef %i.pm) #18
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %bb.bc
  %indvars.iv.i367 = phi i64 [ 0, %bb.bc ], [ %indvars.iv.next.i368, %bb.bd ] ; 2 uses
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %indvars.iv.i367
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !40
  call void @tdestroy(ptr noundef %i.qb, ptr noundef nonnull @free) #18
  %indvars.iv.next.i368 = add nuw nsw i64 %indvars.iv.i367, 1 ; 2 uses
  %exitcond.not.i369 = icmp eq i64 %indvars.iv.next.i368, 524288
  br i1 %exitcond.not.i369, label %free_hash_env.exit370, label %bb.bd, !llvm.loop !0

free_hash_env.exit370:                            ; preds = %bb.bd
  call void @free(ptr noundef nonnull %i.pn) #18
  %i.qc = load i32, ptr %i.t, align 8, !tbaa !19  ; 3 uses
  %.not334 = icmp eq i32 %i.qc, 0
  br i1 %.not334, label %free_hash_env.exit370._crit_edge, label %.lr.ph.preheader.i372

free_hash_env.exit370._crit_edge:                 ; preds = %free_hash_env.exit370
  %.pre757.pre = load i32, ptr %i.bl, align 8, !tbaa !19
  br label %bb.bf

.lr.ph.preheader.i372:                            ; preds = %free_hash_env.exit370
  %wide.trip.count.i373 = zext i32 %i.qc to i64   ; 2 uses
  %i.qd = load ptr, ptr %7, align 8, !tbaa !20    ; 6 uses
  %xtraiter1194 = and i64 %wide.trip.count.i373, 3 ; 3 uses
  %i.qe = icmp ult i32 %i.qc, 4
  br i1 %i.qe, label %.lr.ph.i374.epil.preheader, label %.lr.ph.preheader.i372.new

.lr.ph.preheader.i372.new:                        ; preds = %.lr.ph.preheader.i372
  %unroll_iter1198 = and i64 %wide.trip.count.i373, 4294967292
  br label %.lr.ph.i374

.lr.ph.i374:                                      ; preds = %.lr.ph.i374, %.lr.ph.preheader.i372.new
  %indvars.iv.i375 = phi i64 [ 0, %.lr.ph.preheader.i372.new ], [ %indvars.iv.next.i376.3, %.lr.ph.i374 ] ; 5 uses
  %niter1199 = phi i64 [ 0, %.lr.ph.preheader.i372.new ], [ %niter1199.next.3, %.lr.ph.i374 ]
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.qd, i64 %indvars.iv.i375
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !29 ; 2 uses
  %i.qh = load <4 x i32>, ptr %i.qg, align 4, !tbaa !10
  %i.qi = shufflevector <4 x i32> %i.qh, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %i.qi, ptr %i.qg, align 4, !tbaa !10
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.qd, i64 %indvars.iv.i375
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !29 ; 2 uses
  %i.qm = load <4 x i32>, ptr %i.ql, align 4, !tbaa !10
  %i.qn = shufflevector <4 x i32> %i.qm, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %i.qn, ptr %i.ql, align 4, !tbaa !10
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.qd, i64 %indvars.iv.i375
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !29 ; 2 uses
  %i.qr = load <4 x i32>, ptr %i.qq, align 4, !tbaa !10
  %i.qs = shufflevector <4 x i32> %i.qr, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %i.qs, ptr %i.qq, align 4, !tbaa !10
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.qd, i64 %indvars.iv.i375
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 24
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !29 ; 2 uses
  %i.qw = load <4 x i32>, ptr %i.qv, align 4, !tbaa !10
  %i.qx = shufflevector <4 x i32> %i.qw, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %i.qx, ptr %i.qv, align 4, !tbaa !10
  %indvars.iv.next.i376.3 = add nuw nsw i64 %indvars.iv.i375, 4 ; 2 uses
  %niter1199.next.3 = add i64 %niter1199, 4       ; 2 uses
  %niter1199.ncmp.3 = icmp eq i64 %niter1199.next.3, %unroll_iter1198
  br i1 %niter1199.ncmp.3, label %swap_seqs.exit379.unr-lcssa, label %.lr.ph.i374, !llvm.loop !67

swap_seqs.exit379.unr-lcssa:                      ; preds = %.lr.ph.i374
  %lcmp.mod1196.not = icmp eq i64 %xtraiter1194, 0
  br i1 %lcmp.mod1196.not, label %swap_seqs.exit379, label %.lr.ph.i374.epil.preheader

.lr.ph.i374.epil.preheader:                       ; preds = %swap_seqs.exit379.unr-lcssa, %.lr.ph.preheader.i372
  %indvars.iv.i375.epil.init = phi i64 [ 0, %.lr.ph.preheader.i372 ], [ %indvars.iv.next.i376.3, %swap_seqs.exit379.unr-lcssa ]
  %lcmp.mod1197 = icmp ne i64 %xtraiter1194, 0
  call void @llvm.assume(i1 %lcmp.mod1197)
  br label %.lr.ph.i374.epil

.lr.ph.i374.epil:                                 ; preds = %.lr.ph.i374.epil, %.lr.ph.i374.epil.preheader
  %indvars.iv.i375.epil = phi i64 [ %indvars.iv.i375.epil.init, %.lr.ph.i374.epil.preheader ], [ %indvars.iv.next.i376.epil, %.lr.ph.i374.epil ] ; 2 uses
  %epil.iter1195 = phi i64 [ 0, %.lr.ph.i374.epil.preheader ], [ %epil.iter1195.next, %.lr.ph.i374.epil ]
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.qd, i64 %indvars.iv.i375.epil
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !29 ; 2 uses
  %i.ra = load <4 x i32>, ptr %i.qz, align 4, !tbaa !10
  %i.rb = shufflevector <4 x i32> %i.ra, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %i.rb, ptr %i.qz, align 4, !tbaa !10
  %indvars.iv.next.i376.epil = add nuw nsw i64 %indvars.iv.i375.epil, 1
  %epil.iter1195.next = add i64 %epil.iter1195, 1 ; 2 uses
  %epil.iter1195.cmp.not = icmp eq i64 %epil.iter1195.next, %xtraiter1194
  br i1 %epil.iter1195.cmp.not, label %swap_seqs.exit379, label %.lr.ph.i374.epil, !llvm.loop !85

swap_seqs.exit379:                                ; preds = %.lr.ph.i374.epil, %swap_seqs.exit379.unr-lcssa
  %i.rc = load ptr, ptr %i.qd, align 8, !tbaa !29 ; 2 uses
  %i.rd = load ptr, ptr %i.w, align 8, !tbaa !27  ; 2 uses
  %i.re = load ptr, ptr %i.o, align 8, !tbaa !136 ; 2 uses
  %i.rf = load <2 x i32>, ptr %i.rc, align 4, !tbaa !10 ; 4 uses
  %11 = icmp ult <2 x i32> %i.rf, splat (i32 2)   ; 2 uses
  %12 = extractelement <2 x i1> %11, i64 0
  %13 = extractelement <2 x i1> %11, i64 1
  %or.cond18.i = select i1 %12, i1 true, i1 %13
  br i1 %or.cond18.i, label %grow_exon_left.exit, label %.lr.ph.preheader.i380

.lr.ph.preheader.i380:                            ; preds = %swap_seqs.exit379
  %i.rg = extractelement <2 x i32> %i.rf, i64 1
  %i.rh = zext i32 %i.rg to i64
  %i.ri = getelementptr i8, ptr %i.re, i64 %i.rh
  %i.rj = getelementptr i8, ptr %i.ri, i64 -2
  %i.rk = extractelement <2 x i32> %i.rf, i64 0
  %i.rl = zext i32 %i.rk to i64
  %i.rm = getelementptr i8, ptr %i.rd, i64 %i.rl
  %i.rn = getelementptr i8, ptr %i.rm, i64 -2
  br label %.lr.ph.i381

.lr.ph.i381:                                      ; preds = %bb.be, %.lr.ph.preheader.i380
  %.020.i = phi ptr [ %i.rt, %bb.be ], [ %i.rj, %.lr.ph.preheader.i380 ] ; 2 uses
  %.01419.i = phi ptr [ %i.rs, %bb.be ], [ %i.rn, %.lr.ph.preheader.i380 ] ; 2 uses
  %i.ro = phi <2 x i32> [ %i.ru, %bb.be ], [ %i.rf, %.lr.ph.preheader.i380 ]
  %i.rp = load i8, ptr %.01419.i, align 1, !tbaa !20
  %i.rq = load i8, ptr %.020.i, align 1, !tbaa !20
  %i.rr = icmp eq i8 %i.rp, %i.rq
  br i1 %i.rr, label %bb.be, label %grow_exon_left.exit

bb.be:                                            ; preds = %.lr.ph.i381
  %i.rs = getelementptr inbounds i8, ptr %.01419.i, i64 -1 ; 2 uses
  %i.rt = getelementptr inbounds i8, ptr %.020.i, i64 -1 ; 2 uses
  %i.ru = add <2 x i32> %i.ro, splat (i32 -1)     ; 2 uses
  store <2 x i32> %i.ru, ptr %i.rc, align 4, !tbaa !10
  %.not.i383 = icmp ult ptr %i.rs, %i.rd
  %.not15.i = icmp ult ptr %i.rt, %i.re
  %or.cond.i384 = select i1 %.not.i383, i1 true, i1 %.not15.i
  br i1 %or.cond.i384, label %grow_exon_left.exit, label %.lr.ph.i381, !llvm.loop !86

grow_exon_left.exit:                              ; preds = %.lr.ph.i381, %bb.be, %swap_seqs.exit379
  %i.rv = load i32, ptr %i.bl, align 8, !tbaa !19
  %i.rw = load i32, ptr %i.x, align 4, !tbaa !36
  call fastcc void @merge(ptr noundef nonnull %i.bf, ptr noundef %7, i32 noundef %i.rv, i32 noundef %i.rw)
  store i32 0, ptr %i.t, align 8, !tbaa !19
  %i.rx = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.ry = load i32, ptr %i.bl, align 8, !tbaa !19 ; 2 uses
  %i.rz = add i32 %i.ry, -1
  %i.sa = zext i32 %i.rz to i64
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.rx, i64 %i.sa
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !29
  br label %bb.bf

bb.bf:                                            ; preds = %free_hash_env.exit370._crit_edge, %grow_exon_left.exit
  %.pre757 = phi i32 [ %i.ry, %grow_exon_left.exit ], [ %.pre757.pre, %free_hash_env.exit370._crit_edge ]
  %.0290 = phi ptr [ %i.sc, %grow_exon_left.exit ], [ %i.on, %free_hash_env.exit370._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bb, %bb.ba
  %i.sd = phi i32 [ %.pre757, %bb.bf ], [ %i.oj, %bb.bb ], [ %i.oj, %bb.ba ] ; 6 uses
  %.1291 = phi ptr [ %.0290, %bb.bf ], [ %i.on, %bb.bb ], [ %i.on, %bb.ba ] ; 2 uses
  %.not679 = icmp eq i32 %i.sd, 0
  br i1 %.not679, label %.critedge7.thread, label %.lr.ph653

.lr.ph653:                                        ; preds = %bb.bg
  %i.se = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.sf = load ptr, ptr %i.o, align 8, !tbaa !136
  %wide.trip.count740 = zext i32 %i.sd to i64
  br label %bb.bh

bb.bh:                                            ; preds = %.lr.ph653, %bb.bi
  %indvars.iv737 = phi i64 [ 0, %.lr.ph653 ], [ %indvars.iv.next738, %bb.bi ] ; 2 uses
  %i.sg = trunc nuw i64 %indvars.iv737 to i32     ; 2 uses
  %i.sh = xor i32 %i.sg, -1
  %i.si = add i32 %i.sd, %i.sh
  %i.sj = zext i32 %i.si to i64
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.se, i64 %i.sj
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !29 ; 2 uses
  %i.sm = getelementptr i8, ptr %i.sl, i64 4
  %.val = load i32, ptr %i.sm, align 4, !tbaa !31
  %i.sn = getelementptr i8, ptr %i.sl, i64 12
  %.val350 = load i32, ptr %i.sn, align 4, !tbaa !44
  %i.so = call fastcc i32 @is_polyAT_exon_p(i32 %.val, i32 %.val350, ptr noundef %i.sf)
  %.not335 = icmp eq i32 %i.so, 0
  br i1 %.not335, label %.critedge7, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %indvars.iv.next738 = add nuw nsw i64 %indvars.iv737, 1 ; 2 uses
  %exitcond741.not = icmp eq i64 %indvars.iv.next738, %wide.trip.count740
  br i1 %exitcond741.not, label %.critedge7, label %bb.bh, !llvm.loop !87

.critedge7:                                       ; preds = %bb.bh, %bb.bi
  %.0289.lcssa = phi i32 [ %i.sd, %bb.bi ], [ %i.sg, %bb.bh ] ; 5 uses
  %.not336 = icmp eq i32 %.0289.lcssa, 0
  br i1 %.not336, label %.critedge7.thread, label %bb.bj

bb.bj:                                            ; preds = %.critedge7
  %i.sp = sub i32 %i.sd, %.0289.lcssa             ; 3 uses
  %.not893 = icmp ugt i32 %.0289.lcssa, %i.sd
  br i1 %.not893, label %._crit_edge.thread, label %.lr.ph660.preheader

._crit_edge.thread:                               ; preds = %bb.bj
  store i32 %i.sp, ptr %i.bl, align 8, !tbaa !19
  br label %bb.bk

.lr.ph660.preheader:                              ; preds = %bb.bj
  %i.sq = zext i32 %i.sp to i64
  br label %.lr.ph660

.lr.ph660:                                        ; preds = %.lr.ph660.preheader, %.lr.ph660
  %indvars.iv742 = phi i64 [ %i.sq, %.lr.ph660.preheader ], [ %indvars.iv.next743, %.lr.ph660 ] ; 2 uses
  %i.sr = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.sr, i64 %indvars.iv742
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !29
  call void @free(ptr noundef %i.st) #18
  %indvars.iv.next743 = add nuw nsw i64 %indvars.iv742, 1 ; 2 uses
  %i.su = load i32, ptr %i.bl, align 8, !tbaa !19 ; 3 uses
  %i.sv = zext i32 %i.su to i64
  %i.sw = icmp samesign ult i64 %indvars.iv.next743, %i.sv
  br i1 %i.sw, label %.lr.ph660, label %._crit_edge, !llvm.loop !88

._crit_edge:                                      ; preds = %.lr.ph660
  %.pre771 = sub i32 %i.su, %.0289.lcssa          ; 2 uses
  %i.sx = icmp eq i32 %i.su, %.0289.lcssa
  store i32 %.pre771, ptr %i.bl, align 8, !tbaa !19
  br i1 %i.sx, label %bb.if, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge.thread, %._crit_edge
  %.pre-phi905 = phi i32 [ %i.sp, %._crit_edge.thread ], [ %.pre771, %._crit_edge ]
  %i.sy = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.sz = add i32 %.pre-phi905, -1
  %i.ta = zext i32 %i.sz to i64
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.sy, i64 %i.ta
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !29
  br label %.critedge7.thread

.critedge7.thread:                                ; preds = %bb.bg, %bb.bk, %.critedge7
  %.3293 = phi ptr [ %i.tc, %bb.bk ], [ %.1291, %.critedge7 ], [ %.1291, %bb.bg ] ; 2 uses
  %i.td = load i32, ptr %i.i, align 4, !tbaa !135 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.3293, i64 12 ; 3 uses
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !44 ; 4 uses
  %.not338 = icmp eq i32 %i.td, %i.tf
  br i1 %.not338, label %.thread555, label %bb.bl

bb.bl:                                            ; preds = %.critedge7.thread
  %i.tg = sub i32 %i.td, %i.tf
  %spec.select348 = call i32 @llvm.umin.i32(i32 %i.tg, i32 250) ; 18 uses
  %i.th = load ptr, ptr %i.o, align 8, !tbaa !136
  %i.ti = zext i32 %i.tf to i64
  %i.tj = getelementptr inbounds nuw i8, ptr %i.th, i64 %i.ti ; 2 uses
  %i.tk = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.tl = getelementptr inbounds nuw i8, ptr %.3293, i64 8 ; 2 uses
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !43 ; 8 uses
  %i.tn = zext i32 %i.tm to i64
  %i.to = getelementptr inbounds nuw i8, ptr %i.tk, i64 %i.tn ; 2 uses
  %i.tp = shl nuw nsw i32 %spec.select348, 2
  %i.tq = load i32, ptr %i.f, align 8, !tbaa !16
  %i.tr = sub i32 %i.tq, %i.tm                    ; 2 uses
  %i.ts = call i32 @llvm.smin.i32(i32 %i.tp, i32 %i.tr) ; 10 uses
  %i.tt = load i32, ptr %i.x, align 4, !tbaa !36  ; 2 uses
  %i.tu = add nuw nsw i32 %spec.select348, 1      ; 2 uses
  %i.tv = icmp sgt i32 %i.tr, 0
  br i1 %i.tv, label %.lr.ph.preheader.i401, label %.critedge.thread.i

.lr.ph.preheader.i401:                            ; preds = %bb.bl
  %i.tw = add nsw i32 %i.ts, -1
  %i.tx = add nsw i32 %spec.select348, -1
  %umin.i = call i32 @llvm.umin.i32(i32 %i.tw, i32 %i.tx)
  %i.ty = add nsw i32 %umin.i, 1
  %wide.trip.count.i402 = zext i32 %i.ty to i64   ; 2 uses
  br label %.lr.ph.i403

.lr.ph.i403:                                      ; preds = %bb.bm, %.lr.ph.preheader.i401
  %indvars.iv.i404 = phi i64 [ 0, %.lr.ph.preheader.i401 ], [ %indvars.iv.next.i406, %bb.bm ] ; 4 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tj, i64 %indvars.iv.i404
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !20
  %i.ub = getelementptr inbounds nuw i8, ptr %i.to, i64 %indvars.iv.i404
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !20
  %i.ud = icmp eq i8 %i.ua, %i.uc
  br i1 %i.ud, label %bb.bm, label %.critedge.i405

bb.bm:                                            ; preds = %.lr.ph.i403
  %indvars.iv.next.i406 = add nuw nsw i64 %indvars.iv.i404, 1 ; 2 uses
  %exitcond.not.i407 = icmp eq i64 %indvars.iv.next.i406, %wide.trip.count.i402
  br i1 %exitcond.not.i407, label %.critedge.i405, label %.lr.ph.i403, !llvm.loop !89

.critedge.i405:                                   ; preds = %bb.bm, %.lr.ph.i403
  %.0231.lcssa.ph.in.i = phi i64 [ %indvars.iv.i404, %.lr.ph.i403 ], [ %wide.trip.count.i402, %bb.bm ]
  %.0231.lcssa.ph.i = trunc i64 %.0231.lcssa.ph.in.i to i32 ; 2 uses
  %i.ue = icmp eq i32 %spec.select348, %.0231.lcssa.ph.i
  br i1 %i.ue, label %bb.bn, label %.critedge.thread.i

bb.bn:                                            ; preds = %.critedge.i405
  %i.uf = add nsw i32 %i.tm, %spec.select348
  br label %extend_fw.exit

.critedge.thread.i:                               ; preds = %.critedge.i405, %bb.bl
  %.0231.lcssa391.i = phi i32 [ %.0231.lcssa.ph.i, %.critedge.i405 ], [ 0, %bb.bl ] ; 2 uses
  %i.ug = icmp eq i32 %.0231.lcssa391.i, %i.ts
  br i1 %i.ug, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.critedge.thread.i
  %i.uh = add nsw i32 %i.ts, %i.tm
  br label %extend_fw.exit

bb.bp:                                            ; preds = %.critedge.thread.i
  %i.ui = add nsw i32 %i.ts, %spec.select348      ; 2 uses
  %i.uj = add nsw i32 %i.ui, 1                    ; 2 uses
  %i.uk = sext i32 %i.uj to i64
  %i.ul = shl nsw i64 %i.uk, 2                    ; 2 uses
  %i.um = call ptr @xmalloc(i64 noundef %i.ul) #18 ; 16 uses
  %i.un = ptrtoaddr ptr %i.um to i64
  %i.uo = call ptr @xmalloc(i64 noundef %i.ul) #18 ; 15 uses
  %i.up = ptrtoaddr ptr %i.uo to i64
  %.not274.i = icmp slt i32 %i.ui, 0
  br i1 %.not274.i, label %._crit_edge.i385, label %.lr.ph276.preheader.i

.lr.ph276.preheader.i:                            ; preds = %bb.bp
  %i.uq = zext nneg i32 %i.uj to i64
  %i.ur = shl nuw nsw i64 %i.uq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.um, i8 -1, i64 range(i64 0, 5005) %i.ur, i1 false), !tbaa !10
  br label %._crit_edge.i385

._crit_edge.i385:                                 ; preds = %.lr.ph276.preheader.i, %bb.bp
end_hunk_0
begin_hunk_1_@SIM4:bb.a
  %i.amq = trunc nsw i64 %indvars.iv663.i to i32
  store i32 %i.amq, ptr %i.amg, align 4, !tbaa !10
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %.lr.ph589.i
  %indvars.iv.next664.i = add nsw i64 %indvars.iv663.i, 1 ; 2 uses
  %lftr.wideiv667.i = trunc i64 %indvars.iv.next664.i to i32
  %exitcond668.not.i = icmp eq i32 %indvars.iv631.i, %lftr.wideiv667.i
  br i1 %exitcond668.not.i, label %.preheader526.i, label %.lr.ph589.i, !llvm.loop !112

bb.eh:                                            ; preds = %bb.ej, %.preheader526.i
  %.1436590.i = phi i32 [ 0, %.preheader526.i ], [ %i.amx, %bb.ej ] ; 4 uses
  %i.amr = zext i32 %.1436590.i to i64
  %i.ams = getelementptr inbounds nuw [4 x i8], ptr %i.ags, i64 %i.amr
  %i.amt = load i32, ptr %i.ams, align 4, !tbaa !10
  %.not492.i = icmp sgt i32 %i.amt, %i.ami
  br i1 %.not492.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.amu = add i32 %.1436590.i, %.1441596.i       ; 3 uses
  %i.amv = icmp ugt i32 %.1438.i, %i.amu
  %i.amw = icmp eq i32 %.1438.i, %i.amu
  %or.cond13.i418 = select i1 %i.amw, i1 %i.amj, i1 false
  %or.cond604.i = select i1 %i.amv, i1 true, i1 %or.cond13.i418
  br i1 %or.cond604.i, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %i.amx = add i32 %.1436590.i, 1                 ; 2 uses
  %.not491.i = icmp ugt i32 %i.amx, %.1441596.i
  br i1 %.not491.i, label %bb.ek, label %bb.eh, !llvm.loop !113

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.2439.i = phi i32 [ %.1438.i, %bb.ej ], [ %i.amu, %bb.ei ] ; 2 uses
  %.2432.i = phi i32 [ %.1431.i, %bb.ej ], [ %.1436590.i, %bb.ei ] ; 2 uses
  %.2.i = phi i32 [ %.1.i, %bb.ej ], [ %.1441596.i, %bb.ei ] ; 2 uses
  %i.amy = add i32 %.1441596.i, 1                 ; 3 uses
  %.not482.i = icmp ugt i32 %i.amy, %.2439.i
  %indvars.iv.next632.i = add i32 %indvars.iv631.i, 1
  %indvars.iv.next647.i = add i32 %indvars.iv646.i, -1
  %indvars.iv.next748 = add i32 %indvars.iv747, 1
  br i1 %.not482.i, label %._crit_edge600.i, label %.preheader528.i, !llvm.loop !114

._crit_edge600.i:                                 ; preds = %bb.ek, %._crit_edge.thread.i
  %.1441.lcssa.i = phi i32 [ 1, %._crit_edge.thread.i ], [ %i.amy, %bb.ek ] ; 2 uses
  %.0430.lcssa.i = phi i32 [ -1, %._crit_edge.thread.i ], [ %.2432.i, %bb.ek ] ; 2 uses
  %.0429.lcssa.i = phi i32 [ -1, %._crit_edge.thread.i ], [ %.2.i, %bb.ek ] ; 2 uses
  %i.amz = icmp ugt i32 %.1441.lcssa.i, %..i
  br i1 %i.amz, label %bb.el, label %bb.em

bb.el:                                            ; preds = %._crit_edge600.i
  call void @free(ptr noundef %i.aek) #18
  call void @free(ptr noundef %i.ael) #18
  call void @free(ptr noundef %i.agl) #18
  call void @free(ptr noundef %i.agm) #18
  call void @free(ptr noundef nonnull %i.ags) #18
  call void @free(ptr noundef %i.agu) #18
  call void @free(ptr noundef %i.agr) #18
  call void @free(ptr noundef %i.agt) #18
  br label %greedy.exitthread-pre-split

bb.em:                                            ; preds = %._crit_edge600.i
  %i.ana = sext i32 %.0430.lcssa.i to i64         ; 2 uses
  %i.anb = getelementptr inbounds [4 x i8], ptr %i.ags, i64 %i.ana
  %i.anc = load i32, ptr %i.anb, align 4, !tbaa !10 ; 2 uses
  %i.and = sub nsw i32 %i.abg, %i.anc
  %i.ane = sext i32 %.0429.lcssa.i to i64         ; 2 uses
  %i.anf = getelementptr inbounds [4 x i8], ptr %i.agr, i64 %i.ane
  %i.ang = load i32, ptr %i.anf, align 4, !tbaa !10 ; 2 uses
  %.not483.i = icmp slt i32 %i.and, %i.ang
  %i.anh = getelementptr inbounds [4 x i8], ptr %i.agu, i64 %i.ana
  %i.ani = load i32, ptr %i.anh, align 4, !tbaa !10
  %.714.i = select i1 %.not483.i, i32 %i.ang, i32 %i.anc ; 6 uses
  %.not485.i = icmp eq i32 %.714.i, 0
  br i1 %.not485.i, label %bb.ep, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.anj = getelementptr inbounds [4 x i8], ptr %i.agt, i64 %i.ane
  %i.ank = load i32, ptr %i.anj, align 4, !tbaa !10
  %i.anl = add <2 x i32> %i.abm, splat (i32 1)
  %i.anm = sub i32 %i.abl, %..i
  %.0427.i = add i32 %i.anm, %.714.i
  %i.ann = add i32 %.0427.i, %i.ank
  %i.ano = add i32 %.714.i, %i.abe
  %i.anp = call ptr @xmalloc(i64 noundef 32) #18  ; 4 uses
  store <2 x i32> %i.anl, ptr %i.anp, align 4, !tbaa !10
  %i.anq = getelementptr inbounds nuw i8, ptr %i.anp, i64 8
  store i32 %i.ann, ptr %i.anq, align 4, !tbaa !43
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anp, i64 12
  store i32 %i.ano, ptr %i.anr, align 4, !tbaa !44
  %i.ans = load i32, ptr %i.s, align 4, !tbaa !18 ; 2 uses
  %i.ant = load i32, ptr %i.t, align 8, !tbaa !19 ; 3 uses
  %.not.i513.i = icmp ugt i32 %i.ans, %i.ant
  %.pre.i514.i = load ptr, ptr %7, align 8, !tbaa !20 ; 2 uses
  br i1 %.not.i513.i, label %add_col_elt.exit516.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.anu = add i32 %i.ans, 5                      ; 2 uses
  store i32 %i.anu, ptr %i.s, align 4, !tbaa !18
  %i.anv = zext i32 %i.anu to i64
  %i.anw = shl nuw nsw i64 %i.anv, 3
  %i.anx = call ptr @xrealloc(ptr noundef %.pre.i514.i, i64 noundef %i.anw) #18 ; 2 uses
  store ptr %i.anx, ptr %7, align 8, !tbaa !20
  br label %add_col_elt.exit516.i

add_col_elt.exit516.i:                            ; preds = %bb.eo, %bb.en
  %i.any = phi ptr [ %i.anx, %bb.eo ], [ %.pre.i514.i, %bb.en ]
  %i.anz = add i32 %i.ant, 1
  store i32 %i.anz, ptr %i.t, align 8, !tbaa !19
  %i.aoa = zext i32 %i.ant to i64
  %i.aob = getelementptr inbounds nuw [8 x i8], ptr %i.any, i64 %i.aoa
  store ptr %i.anp, ptr %i.aob, align 8, !tbaa !40
  br label %bb.ep

bb.ep:                                            ; preds = %add_col_elt.exit516.i, %bb.em
  %i.aoc = icmp ult i32 %.714.i, %i.abg
  br i1 %i.aoc, label %bb.eq, label %bb.es

bb.eq:                                            ; preds = %bb.ep
  %i.aod = add nuw i32 %i.abl, 1
  %.0.i = add i32 %i.aod, %.neg606.i
  %i.aoe = add i32 %.0.i, %i.ani
  %i.aof = add i32 %i.aoe, %.714.i
  %i.aog = add i32 %i.abe, 1
  %i.aoh = add i32 %i.aog, %.714.i
  %i.aoi = add i32 %i.abc, -1
  %i.aoj = call ptr @xmalloc(i64 noundef 32) #18  ; 5 uses
  store i32 %i.aof, ptr %i.aoj, align 4, !tbaa !32
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoj, i64 4
  store i32 %i.aoh, ptr %i.aok, align 4, !tbaa !31
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aoj, i64 8
  store i32 %i.abj, ptr %i.aol, align 4, !tbaa !43
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aoj, i64 12
  store i32 %i.aoi, ptr %i.aom, align 4, !tbaa !44
  %i.aon = load i32, ptr %i.s, align 4, !tbaa !18 ; 2 uses
  %i.aoo = load i32, ptr %i.t, align 8, !tbaa !19 ; 3 uses
  %.not.i517.i = icmp ugt i32 %i.aon, %i.aoo
  %.pre.i518.i = load ptr, ptr %7, align 8, !tbaa !20 ; 2 uses
  br i1 %.not.i517.i, label %add_col_elt.exit520.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.aop = add i32 %i.aon, 5                      ; 2 uses
  store i32 %i.aop, ptr %i.s, align 4, !tbaa !18
  %i.aoq = zext i32 %i.aop to i64
  %i.aor = shl nuw nsw i64 %i.aoq, 3
  %i.aos = call ptr @xrealloc(ptr noundef %.pre.i518.i, i64 noundef %i.aor) #18 ; 2 uses
  store ptr %i.aos, ptr %7, align 8, !tbaa !20
  br label %add_col_elt.exit520.i

add_col_elt.exit520.i:                            ; preds = %bb.er, %bb.eq
  %i.aot = phi ptr [ %i.aos, %bb.er ], [ %.pre.i518.i, %bb.eq ]
  %i.aou = add i32 %i.aoo, 1
  store i32 %i.aou, ptr %i.t, align 8, !tbaa !19
  %i.aov = zext i32 %i.aoo to i64
  %i.aow = getelementptr inbounds nuw [8 x i8], ptr %i.aot, i64 %i.aov
  store ptr %i.aoj, ptr %i.aow, align 8, !tbaa !40
  br label %bb.es

bb.es:                                            ; preds = %add_col_elt.exit520.i, %bb.ep
  call void @free(ptr noundef %i.aek) #18
  call void @free(ptr noundef %i.ael) #18
  call void @free(ptr noundef %i.agl) #18
  call void @free(ptr noundef %i.agm) #18
  call void @free(ptr noundef nonnull %i.ags) #18
  call void @free(ptr noundef nonnull %i.agu) #18
  call void @free(ptr noundef nonnull %i.agr) #18
  call void @free(ptr noundef nonnull %i.agt) #18
  %i.aox = add nsw i32 %.0429.lcssa.i, %.0430.lcssa.i
  br label %greedy.exitthread-pre-split

greedy.exitthread-pre-split:                      ; preds = %bb.es, %bb.el, %add_col_elt.exit512.i, %bb.dc, %add_col_elt.exit.i, %bb.cx
  %.0456.i.ph = phi i32 [ 0, %bb.cx ], [ %.1441.lcssa.i, %bb.el ], [ 0, %add_col_elt.exit512.i ], [ %i.ada, %bb.dc ], [ %i.acz, %add_col_elt.exit.i ], [ %i.aox, %bb.es ]
  %.pr = load i32, ptr %i.t, align 8, !tbaa !19
  %i.aoy = sitofp i32 %.0456.i.ph to double
  br label %greedy.exit

greedy.exit:                                      ; preds = %greedy.exitthread-pre-split, %add_col_elt.exit508.i
  %i.aoz = phi i32 [ %.pr, %greedy.exitthread-pre-split ], [ %i.aed, %add_col_elt.exit508.i ] ; 2 uses
  %.0456.i = phi double [ %i.aoy, %greedy.exitthread-pre-split ], [ 0.000000e+00, %add_col_elt.exit508.i ]
  %.not344 = icmp eq i32 %i.aoz, 0
  %.pre759 = load i32, ptr %i.x, align 4, !tbaa !36 ; 7 uses
  br i1 %.not344, label %greedy.exit..thread559_crit_edge, label %bb.et

greedy.exit..thread559_crit_edge:                 ; preds = %greedy.exit
  %.pre761 = load ptr, ptr %i.w, align 8, !tbaa !27
  br label %.thread559

bb.et:                                            ; preds = %greedy.exit
  %i.apa = uitofp i32 %.pre759 to double          ; 2 uses
  %i.apb = uitofp nneg i32 %i.abg to double
  %i.apc = call double @llvm.fmuladd.f64(double %i.apb, double 2.000000e-01, double 1.000000e+00) ; 2 uses
  %i.apd = fcmp ogt double %i.apc, %i.apa
  %. = select i1 %i.apd, double %i.apc, double %i.apa
  %i.ape = fcmp ult double %., %.0456.i
  %.pre762 = load ptr, ptr %i.w, align 8, !tbaa !27 ; 4 uses
  br i1 %i.ape, label %.thread559, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.apf = load ptr, ptr %7, align 8, !tbaa !20   ; 2 uses
  %i.apg = load ptr, ptr %i.apf, align 8, !tbaa !29 ; 2 uses
  %i.aph = load ptr, ptr %i.o, align 8, !tbaa !136 ; 3 uses
  %i.api = load <2 x i32>, ptr %i.apg, align 4, !tbaa !10 ; 4 uses
  %14 = icmp ult <2 x i32> %i.api, splat (i32 2)  ; 2 uses
  %15 = extractelement <2 x i1> %14, i64 0
  %16 = extractelement <2 x i1> %14, i64 1
  %or.cond18.i429 = select i1 %15, i1 true, i1 %16
  br i1 %or.cond18.i429, label %grow_exon_left.exit438, label %.lr.ph.preheader.i430

.lr.ph.preheader.i430:                            ; preds = %bb.eu
  %i.apj = extractelement <2 x i32> %i.api, i64 1
  %i.apk = zext i32 %i.apj to i64
  %i.apl = getelementptr i8, ptr %i.aph, i64 %i.apk
  %i.apm = getelementptr i8, ptr %i.apl, i64 -2
  %i.apn = extractelement <2 x i32> %i.api, i64 0
  %i.apo = zext i32 %i.apn to i64
  %i.app = getelementptr i8, ptr %.pre762, i64 %i.apo
  %i.apq = getelementptr i8, ptr %i.app, i64 -2
  br label %.lr.ph.i431

.lr.ph.i431:                                      ; preds = %bb.ev, %.lr.ph.preheader.i430
  %.020.i432 = phi ptr [ %i.apw, %bb.ev ], [ %i.apm, %.lr.ph.preheader.i430 ] ; 2 uses
  %.01419.i433 = phi ptr [ %i.apv, %bb.ev ], [ %i.apq, %.lr.ph.preheader.i430 ] ; 2 uses
  %i.apr = phi <2 x i32> [ %i.apx, %bb.ev ], [ %i.api, %.lr.ph.preheader.i430 ]
  %i.aps = load i8, ptr %.01419.i433, align 1, !tbaa !20
  %i.apt = load i8, ptr %.020.i432, align 1, !tbaa !20
  %i.apu = icmp eq i8 %i.aps, %i.apt
  br i1 %i.apu, label %bb.ev, label %grow_exon_left.exit438

bb.ev:                                            ; preds = %.lr.ph.i431
  %i.apv = getelementptr inbounds i8, ptr %.01419.i433, i64 -1 ; 2 uses
  %i.apw = getelementptr inbounds i8, ptr %.020.i432, i64 -1 ; 2 uses
  %i.apx = add <2 x i32> %i.apr, splat (i32 -1)   ; 2 uses
  store <2 x i32> %i.apx, ptr %i.apg, align 4, !tbaa !10
  %.not.i435 = icmp ult ptr %i.apv, %.pre762
  %.not15.i436 = icmp ult ptr %i.apw, %i.aph
  %or.cond.i437 = select i1 %.not.i435, i1 true, i1 %.not15.i436
  br i1 %or.cond.i437, label %grow_exon_left.exit438, label %.lr.ph.i431, !llvm.loop !86

grow_exon_left.exit438:                           ; preds = %.lr.ph.i431, %bb.ev, %bb.eu
  %i.apy = add i32 %i.aoz, -1
  %i.apz = zext i32 %i.apy to i64
  %i.aqa = getelementptr inbounds nuw [8 x i8], ptr %i.apf, i64 %i.apz
  %i.aqb = load ptr, ptr %i.aqa, align 8, !tbaa !29 ; 2 uses
  %i.aqc = load i32, ptr %i.f, align 8, !tbaa !16 ; 2 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqb, i64 12 ; 2 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqb, i64 8 ; 2 uses
  %.promoted.i439 = load i32, ptr %i.aqe, align 4, !tbaa !43 ; 2 uses
  %i.aqf = icmp ult i32 %.promoted.i439, %i.aqc
  br i1 %i.aqf, label %.lr.ph.i441, label %.sink.split

.lr.ph.i441:                                      ; preds = %grow_exon_left.exit438
  %i.aqg = load i32, ptr %i.i, align 4, !tbaa !135
  %.promoted12.i442 = load i32, ptr %i.aqd, align 4, !tbaa !44 ; 2 uses
  %i.aqh = zext i32 %.promoted12.i442 to i64
  %i.aqi = zext i32 %.promoted.i439 to i64
  %umax.i443 = call i32 @llvm.umax.i32(i32 %.promoted12.i442, i32 %i.aqg)
  %wide.trip.count.i444 = zext i32 %umax.i443 to i64
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ey, %.lr.ph.i441
  %indvars.iv13.i445 = phi i64 [ %i.aqi, %.lr.ph.i441 ], [ %indvars.iv.next14.i448, %bb.ey ] ; 2 uses
  %indvars.iv.i446 = phi i64 [ %i.aqh, %.lr.ph.i441 ], [ %indvars.iv.next.i449, %bb.ey ] ; 3 uses
  %exitcond.not.i447 = icmp eq i64 %indvars.iv.i446, %wide.trip.count.i444
  br i1 %exitcond.not.i447, label %.sink.split, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.aqj = getelementptr inbounds nuw i8, ptr %.pre762, i64 %indvars.iv13.i445
  %i.aqk = load i8, ptr %i.aqj, align 1, !tbaa !20
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aph, i64 %indvars.iv.i446
  %i.aqm = load i8, ptr %i.aql, align 1, !tbaa !20
  %i.aqn = icmp eq i8 %i.aqk, %i.aqm
  br i1 %i.aqn, label %bb.ey, label %.sink.split

bb.ey:                                            ; preds = %bb.ex
  %indvars.iv.next14.i448 = add nuw nsw i64 %indvars.iv13.i445, 1 ; 2 uses
  %i.aqo = trunc i64 %indvars.iv.next14.i448 to i32 ; 2 uses
  store i32 %i.aqo, ptr %i.aqe, align 4, !tbaa !43
  %indvars.iv.next.i449 = add nuw nsw i64 %indvars.iv.i446, 1 ; 2 uses
  %i.aqp = trunc nuw i64 %indvars.iv.next.i449 to i32
  store i32 %i.aqp, ptr %i.aqd, align 4, !tbaa !44
  %exitcond18.not.i450 = icmp eq i32 %i.aqc, %i.aqo
  br i1 %exitcond18.not.i450, label %.sink.split, label %bb.ew, !llvm.loop !69

.thread559:                                       ; preds = %greedy.exit..thread559_crit_edge, %bb.et, %bb.cw
  %i.aqq = phi ptr [ %.pre761, %greedy.exit..thread559_crit_edge ], [ %.pre762, %bb.et ], [ %.pre763, %bb.cw ]
  %i.aqr = phi i32 [ %.pre759, %greedy.exit..thread559_crit_edge ], [ %.pre759, %bb.et ], [ %.pre760, %bb.cw ]
  %spec.select349 = call i32 @llvm.umin.i32(i32 %i.aqr, i32 8) ; 2 uses
  %i.aqs = load i32, ptr %i.abk, align 4, !tbaa !43 ; 3 uses
  %i.aqt = zext i32 %i.aqs to i64
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqq, i64 %i.aqt
  %i.aqv = load i32, ptr %i.aba, align 4, !tbaa !32 ; 2 uses
  %i.aqw = xor i32 %i.aqs, -1
  %i.aqx = add i32 %i.aqv, %i.aqw
  store i32 %spec.select349, ptr %i.ai, align 4, !tbaa !36
  store ptr %i.aqu, ptr %i.aj, align 8, !tbaa !27
  store i32 %i.aqx, ptr %i.ak, align 8, !tbaa !16
  %i.aqy = shl nuw nsw i32 %spec.select349, 1
  %i.aqz = add nsw i32 %i.aqy, -2
  %notmask.i452 = shl nsw i32 -1, %i.aqz
  %i.ara = xor i32 %notmask.i452, -1
  store i32 %i.ara, ptr %i.al, align 8, !tbaa !37
  %i.arb = sub i32 %i.aqv, %i.aqs
  %i.arc = zext i32 %i.arb to i64
  %i.ard = shl nuw nsw i64 %i.arc, 2
  %i.are = call ptr @xmalloc(i64 noundef %i.ard) #18 ; 2 uses
  store ptr %i.are, ptr %i.am, align 8, !tbaa !38
  %i.arf = call ptr @xcalloc(i64 noundef 524288, i64 noundef 8) #18 ; 3 uses
  store ptr %i.arf, ptr %10, align 8, !tbaa !39
  call void @bld_table(ptr noundef nonnull %10)
  %i.arg = load ptr, ptr %i.o, align 8, !tbaa !136
  %i.arh = load i32, ptr %i.abd, align 4, !tbaa !44 ; 2 uses
  %i.ari = zext i32 %i.arh to i64
  %i.arj = getelementptr inbounds nuw i8, ptr %i.arg, i64 %i.ari
  %i.ark = load i32, ptr %i.abk, align 4, !tbaa !43
  %i.arl = add i32 %i.ark, 1
  %i.arm = add i32 %i.arh, 1
  %i.arn = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 24), align 8, !tbaa !139
  call fastcc void @exon_cores(ptr noundef nonnull %10, ptr noundef %i.arj, i32 noundef %i.abg, i32 noundef %i.arl, i32 noundef %i.arm, i32 noundef %i.arn, ptr noundef %6, ptr noundef null, ptr noundef nonnull %7)
  call void @free(ptr noundef %i.are) #18
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ez, %.thread559
  %indvars.iv.i453 = phi i64 [ 0, %.thread559 ], [ %indvars.iv.next.i454, %bb.ez ] ; 2 uses
  %i.aro = getelementptr inbounds nuw [8 x i8], ptr %i.arf, i64 %indvars.iv.i453
  %i.arp = load ptr, ptr %i.aro, align 8, !tbaa !40
  call void @tdestroy(ptr noundef %i.arp, ptr noundef nonnull @free) #18
  %indvars.iv.next.i454 = add nuw nsw i64 %indvars.iv.i453, 1 ; 2 uses
  %exitcond.not.i455 = icmp eq i64 %indvars.iv.next.i454, 524288
  br i1 %exitcond.not.i455, label %free_hash_env.exit456, label %bb.ez, !llvm.loop !0

free_hash_env.exit456:                            ; preds = %bb.ez
  call void @free(ptr noundef nonnull %i.arf) #18
  %i.arq = load i32, ptr %i.t, align 8, !tbaa !19 ; 2 uses
  %.not345 = icmp eq i32 %i.arq, 0
  br i1 %.not345, label %bb.ff, label %bb.fa

bb.fa:                                            ; preds = %free_hash_env.exit456
  %i.arr = load ptr, ptr %7, align 8, !tbaa !20   ; 2 uses
  %i.ars = load ptr, ptr %i.arr, align 8, !tbaa !29 ; 2 uses
  %i.art = load ptr, ptr %i.w, align 8, !tbaa !27 ; 3 uses
  %i.aru = load ptr, ptr %i.o, align 8, !tbaa !136 ; 3 uses
  %i.arv = load <2 x i32>, ptr %i.ars, align 4, !tbaa !10 ; 4 uses
  %17 = icmp ult <2 x i32> %i.arv, splat (i32 2)  ; 2 uses
  %18 = extractelement <2 x i1> %17, i64 0
  %19 = extractelement <2 x i1> %17, i64 1
  %or.cond18.i459 = select i1 %18, i1 true, i1 %19
  br i1 %or.cond18.i459, label %grow_exon_left.exit468, label %.lr.ph.preheader.i460

.lr.ph.preheader.i460:                            ; preds = %bb.fa
  %i.arw = extractelement <2 x i32> %i.arv, i64 1
  %i.arx = zext i32 %i.arw to i64
  %i.ary = getelementptr i8, ptr %i.aru, i64 %i.arx
  %i.arz = getelementptr i8, ptr %i.ary, i64 -2
  %i.asa = extractelement <2 x i32> %i.arv, i64 0
  %i.asb = zext i32 %i.asa to i64
  %i.asc = getelementptr i8, ptr %i.art, i64 %i.asb
  %i.asd = getelementptr i8, ptr %i.asc, i64 -2
  br label %.lr.ph.i461

.lr.ph.i461:                                      ; preds = %bb.fb, %.lr.ph.preheader.i460
  %.020.i462 = phi ptr [ %i.asj, %bb.fb ], [ %i.arz, %.lr.ph.preheader.i460 ] ; 2 uses
  %.01419.i463 = phi ptr [ %i.asi, %bb.fb ], [ %i.asd, %.lr.ph.preheader.i460 ] ; 2 uses
  %i.ase = phi <2 x i32> [ %i.ask, %bb.fb ], [ %i.arv, %.lr.ph.preheader.i460 ]
  %i.asf = load i8, ptr %.01419.i463, align 1, !tbaa !20
  %i.asg = load i8, ptr %.020.i462, align 1, !tbaa !20
  %i.ash = icmp eq i8 %i.asf, %i.asg
  br i1 %i.ash, label %bb.fb, label %grow_exon_left.exit468

bb.fb:                                            ; preds = %.lr.ph.i461
  %i.asi = getelementptr inbounds i8, ptr %.01419.i463, i64 -1 ; 2 uses
  %i.asj = getelementptr inbounds i8, ptr %.020.i462, i64 -1 ; 2 uses
  %i.ask = add <2 x i32> %i.ase, splat (i32 -1)   ; 2 uses
  store <2 x i32> %i.ask, ptr %i.ars, align 4, !tbaa !10
  %.not.i465 = icmp ult ptr %i.asi, %i.art
  %.not15.i466 = icmp ult ptr %i.asj, %i.aru
  %or.cond.i467 = select i1 %.not.i465, i1 true, i1 %.not15.i466
  br i1 %or.cond.i467, label %grow_exon_left.exit468, label %.lr.ph.i461, !llvm.loop !86

grow_exon_left.exit468:                           ; preds = %.lr.ph.i461, %bb.fb, %bb.fa
  %i.asl = add i32 %i.arq, -1
  %i.asm = zext i32 %i.asl to i64
  %i.asn = getelementptr inbounds nuw [8 x i8], ptr %i.arr, i64 %i.asm
  %i.aso = load ptr, ptr %i.asn, align 8, !tbaa !29 ; 2 uses
  %i.asp = load i32, ptr %i.f, align 8, !tbaa !16 ; 2 uses
  %i.asq = getelementptr inbounds nuw i8, ptr %i.aso, i64 12 ; 2 uses
  %i.asr = getelementptr inbounds nuw i8, ptr %i.aso, i64 8 ; 2 uses
  %.promoted.i469 = load i32, ptr %i.asr, align 4, !tbaa !43 ; 2 uses
  %i.ass = icmp ult i32 %.promoted.i469, %i.asp
  br i1 %i.ass, label %.lr.ph.i471, label %grow_exon_right.exit481

.lr.ph.i471:                                      ; preds = %grow_exon_left.exit468
  %i.ast = load i32, ptr %i.i, align 4, !tbaa !135
  %.promoted12.i472 = load i32, ptr %i.asq, align 4, !tbaa !44 ; 2 uses
  %i.asu = zext i32 %.promoted12.i472 to i64
  %i.asv = zext i32 %.promoted.i469 to i64
  %umax.i473 = call i32 @llvm.umax.i32(i32 %.promoted12.i472, i32 %i.ast)
  %wide.trip.count.i474 = zext i32 %umax.i473 to i64
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fe, %.lr.ph.i471
  %indvars.iv13.i475 = phi i64 [ %i.asv, %.lr.ph.i471 ], [ %indvars.iv.next14.i478, %bb.fe ] ; 2 uses
  %indvars.iv.i476 = phi i64 [ %i.asu, %.lr.ph.i471 ], [ %indvars.iv.next.i479, %bb.fe ] ; 3 uses
  %exitcond.not.i477 = icmp eq i64 %indvars.iv.i476, %wide.trip.count.i474
  br i1 %exitcond.not.i477, label %grow_exon_right.exit481, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.asw = getelementptr inbounds nuw i8, ptr %i.art, i64 %indvars.iv13.i475
  %i.asx = load i8, ptr %i.asw, align 1, !tbaa !20
  %i.asy = getelementptr inbounds nuw i8, ptr %i.aru, i64 %indvars.iv.i476
  %i.asz = load i8, ptr %i.asy, align 1, !tbaa !20
  %i.ata = icmp eq i8 %i.asx, %i.asz
  br i1 %i.ata, label %bb.fe, label %grow_exon_right.exit481

bb.fe:                                            ; preds = %bb.fd
  %indvars.iv.next14.i478 = add nuw nsw i64 %indvars.iv13.i475, 1 ; 2 uses
  %i.atb = trunc i64 %indvars.iv.next14.i478 to i32 ; 2 uses
  store i32 %i.atb, ptr %i.asr, align 4, !tbaa !43
  %indvars.iv.next.i479 = add nuw nsw i64 %indvars.iv.i476, 1 ; 2 uses
  %i.atc = trunc nuw i64 %indvars.iv.next.i479 to i32
  store i32 %i.atc, ptr %i.asq, align 4, !tbaa !44
  %exitcond18.not.i480 = icmp eq i32 %i.asp, %i.atb
  br i1 %exitcond18.not.i480, label %grow_exon_right.exit481, label %bb.fc, !llvm.loop !69

grow_exon_right.exit481:                          ; preds = %bb.fc, %bb.fd, %bb.fe, %grow_exon_left.exit468
  %i.atd = load i32, ptr %i.x, align 4, !tbaa !36
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ew, %bb.ex, %bb.ey, %grow_exon_left.exit438, %grow_exon_right.exit481
  %.pre759.sink = phi i32 [ %i.atd, %grow_exon_right.exit481 ], [ %.pre759, %grow_exon_left.exit438 ], [ %.pre759, %bb.ey ], [ %.pre759, %bb.ex ], [ %.pre759, %bb.ew ]
  call fastcc void @merge(ptr noundef nonnull %i.bf, ptr noundef %7, i32 noundef %.0285662, i32 noundef %.pre759.sink)
  store i32 0, ptr %i.t, align 8, !tbaa !19
  br label %bb.ff

bb.ff:                                            ; preds = %.sink.split, %free_hash_env.exit456
  %.4 = phi i32 [ %.0285662, %free_hash_env.exit456 ], [ %i.aau, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  %.pre764 = load i32, ptr %i.bl, align 8, !tbaa !19
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %.lr.ph663, %bb.cv
  %i.ate = phi i32 [ %i.aas, %.lr.ph663 ], [ %.pre764, %bb.ff ], [ %i.aas, %bb.cv ] ; 2 uses
  %.6 = phi i32 [ %.0285662, %.lr.ph663 ], [ %.4, %bb.ff ], [ %.0285662, %bb.cv ]
  %i.atf = add i32 %.6, 1                         ; 2 uses
  %i.atg = icmp ult i32 %i.atf, %i.ate
  br i1 %i.atg, label %.lr.ph663, label %.loopexit599, !llvm.loop !115

.loopexit599:                                     ; preds = %bb.fg, %.thread555
  %i.ath = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.ati = load ptr, ptr %i.o, align 8, !tbaa !136
  call fastcc void @kill_polyA(ptr noundef nonnull %i.be, ptr noundef %i.ath, ptr noundef %i.ati)
  %i.atj = load i32, ptr %i.x, align 4, !tbaa !36
  %i.atk = load i32, ptr %i.bl, align 8, !tbaa !19 ; 3 uses
  %i.atl = icmp ugt i32 %i.atk, 1
  br i1 %i.atl, label %.lr.ph.i483, label %compact_exons.exit

.preheader.i485:                                  ; preds = %bb.fn
  %i.atm = icmp ugt i32 %i.avx, 1
  br i1 %i.atm, label %.lr.ph86.i, label %compact_exons.exit

.lr.ph86.i:                                       ; preds = %.preheader.i485
  %i.atn = add i32 %i.atj, 1
  br label %bb.fo

.lr.ph.i483:                                      ; preds = %.loopexit599, %bb.fn
  %i.ato = phi i32 [ %i.avx, %bb.fn ], [ %i.atk, %.loopexit599 ]
  %.084.i = phi i32 [ %.1.i484, %bb.fn ], [ 1, %.loopexit599 ] ; 12 uses
  %i.atp = load ptr, ptr %i.bf, align 8, !tbaa !20 ; 2 uses
  %i.atq = add i32 %.084.i, -1
  %i.atr = zext i32 %i.atq to i64
  %i.ats = getelementptr inbounds nuw [8 x i8], ptr %i.atp, i64 %i.atr
  %i.att = load ptr, ptr %i.ats, align 8, !tbaa !29 ; 4 uses
  %i.atu = zext i32 %.084.i to i64                ; 4 uses
  %i.atv = getelementptr inbounds nuw [8 x i8], ptr %i.atp, i64 %i.atu
  %i.atw = load ptr, ptr %i.atv, align 8, !tbaa !29 ; 5 uses
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atw, i64 4
  %i.aty = load i32, ptr %i.atx, align 4, !tbaa !31
  %i.atz = getelementptr inbounds nuw i8, ptr %i.att, i64 4
  %i.aua = load i32, ptr %i.atz, align 4, !tbaa !31
  %i.aub = sub i32 %i.aty, %i.aua                 ; 3 uses
  %i.auc = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 36), align 4, !tbaa !46
  %.not81.i = icmp ugt i32 %i.aub, %i.auc
  br i1 %.not81.i, label %bb.fm, label %bb.fh

bb.fh:                                            ; preds = %.lr.ph.i483
  %i.aud = add i32 %i.ato, -1
  store i32 %i.aud, ptr %i.bl, align 8, !tbaa !19
  %i.aue = getelementptr inbounds nuw i8, ptr %i.att, i64 12
  %i.auf = load i32, ptr %i.aue, align 4, !tbaa !44
  %i.aug = getelementptr inbounds nuw i8, ptr %i.atw, i64 12
  %i.auh = load i32, ptr %i.aug, align 4, !tbaa !44
  %i.aui = icmp ugt i32 %i.auf, %i.auh
  br i1 %i.aui, label %bb.fi, label %bb.fk

bb.fi:                                            ; preds = %bb.fh
  call void @free(ptr noundef nonnull %i.atw) #18
  %i.auj = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.auk = getelementptr inbounds nuw [8 x i8], ptr %i.auj, i64 %i.atu ; 2 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auk, i64 8
  %i.aum = load i32, ptr %i.bl, align 8, !tbaa !19
  %i.aun = sub i32 %i.aum, %.084.i
  %i.auo = zext i32 %i.aun to i64
  %i.aup = shl nuw nsw i64 %i.auo, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.auk, ptr nonnull align 8 %i.aul, i64 %i.aup, i1 false)
  %i.auq = load i32, ptr %i.bl, align 8, !tbaa !19 ; 2 uses
  %i.aur = icmp ult i32 %.084.i, %i.auq
  br i1 %i.aur, label %bb.fj, label %bb.fn

bb.fj:                                            ; preds = %bb.fi
  %i.aus = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.aut = getelementptr inbounds nuw [8 x i8], ptr %i.aus, i64 %i.atu
  %i.auu = load ptr, ptr %i.aut, align 8, !tbaa !29 ; 2 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %i.att, i64 8 ; 2 uses
  %i.auw = load <2 x i32>, ptr %i.auv, align 4, !tbaa !10
  %i.aux = insertelement <2 x i32> poison, i32 %i.aub, i64 0
  %i.auy = shufflevector <2 x i32> %i.aux, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.auz = add <2 x i32> %i.auw, %i.auy
  store <2 x i32> %i.auz, ptr %i.auv, align 4, !tbaa !10
  %i.ava = load <2 x i32>, ptr %i.auu, align 4, !tbaa !10
  %i.avb = sub <2 x i32> %i.ava, %i.auy
  store <2 x i32> %i.avb, ptr %i.auu, align 4, !tbaa !10
  br label %thread-pre-split

bb.fk:                                            ; preds = %bb.fh
  call void @free(ptr noundef nonnull %i.att) #18
  %i.avc = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.avd = getelementptr inbounds nuw [8 x i8], ptr %i.avc, i64 %i.atu ; 2 uses
  %i.ave = getelementptr inbounds i8, ptr %i.avd, i64 -8
  %i.avf = load i32, ptr %i.bl, align 8, !tbaa !19
  %reass.sub = sub i32 %i.avf, %.084.i
  %i.avg = add i32 %reass.sub, 1
  %i.avh = zext i32 %i.avg to i64
  %i.avi = shl nuw nsw i64 %i.avh, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ave, ptr align 8 %i.avd, i64 %i.avi, i1 false)
  %i.avj = icmp ugt i32 %.084.i, 1
  br i1 %i.avj, label %bb.fl, label %thread-pre-split

bb.fl:                                            ; preds = %bb.fk
  %i.avk = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.avl = add i32 %.084.i, -2
  %i.avm = zext i32 %i.avl to i64
  %i.avn = getelementptr inbounds nuw [8 x i8], ptr %i.avk, i64 %i.avm
  %i.avo = load ptr, ptr %i.avn, align 8, !tbaa !29
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avo, i64 8 ; 2 uses
  %i.avq = load <2 x i32>, ptr %i.avp, align 4, !tbaa !10
  %i.avr = insertelement <2 x i32> poison, i32 %i.aub, i64 0
  %i.avs = shufflevector <2 x i32> %i.avr, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.avt = add <2 x i32> %i.avq, %i.avs
  store <2 x i32> %i.avt, ptr %i.avp, align 4, !tbaa !10
  %i.avu = load <2 x i32>, ptr %i.atw, align 4, !tbaa !10
  %i.avv = sub <2 x i32> %i.avu, %i.avs
  store <2 x i32> %i.avv, ptr %i.atw, align 4, !tbaa !10
  br label %thread-pre-split

bb.fm:                                            ; preds = %.lr.ph.i483
  %i.avw = add nuw i32 %.084.i, 1
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.fj, %bb.fk, %bb.fl, %bb.fm
  %.1.i484.ph = phi i32 [ %i.avw, %bb.fm ], [ %.084.i, %bb.fk ], [ %.084.i, %bb.fl ], [ %.084.i, %bb.fj ]
  %.pr562 = load i32, ptr %i.bl, align 8, !tbaa !19
  br label %bb.fn

bb.fn:                                            ; preds = %thread-pre-split, %bb.fi
end_hunk_1
