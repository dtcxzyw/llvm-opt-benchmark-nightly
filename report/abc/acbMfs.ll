Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/acbMfs?download=true
inline.NumInlined: 593
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 19
begin_hunk_0_@Acb_NtkOpt:bb.a
  %i.oc = sext i32 %i.ob to i64                   ; 2 uses
  %i.od = getelementptr inbounds i8, ptr %.val109.2, i64 %i.oc
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !25
  %.not.i39.i.2.1 = icmp eq i8 %i.oe, 3
  br i1 %.not.i39.i.2.1, label %Acb_ObjIsAreaCritical.exit42.thread.i.2.1, label %Acb_ObjIsAreaCritical.exit42.i.2.1

Acb_ObjIsAreaCritical.exit42.i.2.1:               ; preds = %bb.bd
  %.val3.i40.i.2.1 = load ptr, ptr %i.dy, align 8, !tbaa !34
  %i.of = getelementptr inbounds [16 x i8], ptr %.val3.i40.i.2.1, i64 %i.oc
  %i.og = getelementptr i8, ptr %i.of, i64 4
  %.val.i.i41.i.2.1 = load i32, ptr %i.og, align 4, !tbaa !28
  %.val.i.i41.fr.i.2.1 = freeze i32 %.val.i.i41.i.2.1
  %.not45.i.2.1 = icmp eq i32 %.val.i.i41.fr.i.2.1, 1
  %i.oh = add nsw i32 %i.nz, 1
  br i1 %.not45.i.2.1, label %bb.be, label %Acb_ObjIsAreaCritical.exit42.thread.i.2.1

Acb_ObjIsAreaCritical.exit42.thread.i.2.1:        ; preds = %Acb_ObjIsAreaCritical.exit42.i.2.1, %bb.bd
  br label %bb.be

bb.be:                                            ; preds = %Acb_ObjIsAreaCritical.exit42.thread.i.2.1, %Acb_ObjIsAreaCritical.exit42.i.2.1
  %i.oi = phi i32 [ %i.nz, %Acb_ObjIsAreaCritical.exit42.thread.i.2.1 ], [ %i.oh, %Acb_ObjIsAreaCritical.exit42.i.2.1 ] ; 3 uses
  %niter271.next.1 = add i64 %niter271, 2         ; 2 uses
  %niter271.ncmp.1 = icmp eq i64 %niter271.next.1, %unroll_iter270
  br i1 %niter271.ncmp.1, label %Acb_NtkObjMffcEstimate.exit.2.loopexit.unr-lcssa, label %bb.bc, !llvm.loop !8

Acb_NtkObjMffcEstimate.exit.2.loopexit.unr-lcssa: ; preds = %bb.be
  %lcmp.mod267.not = icmp eq i64 %xtraiter266, 0
  br i1 %lcmp.mod267.not, label %Acb_NtkObjMffcEstimate.exit.2, label %.epil.preheader265

.epil.preheader265:                               ; preds = %Acb_NtkObjMffcEstimate.exit.2.loopexit.unr-lcssa, %.lr.ph52.i.2
  %indvars.iv55.i.2.epil.init = phi i64 [ 0, %.lr.ph52.i.2 ], [ %indvars.iv.next56.i.2.1, %Acb_NtkObjMffcEstimate.exit.2.loopexit.unr-lcssa ]
  %.251.i.2.epil.init = phi i32 [ 1, %.lr.ph52.i.2 ], [ %i.oi, %Acb_NtkObjMffcEstimate.exit.2.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod269 = trunc i32 %i.nn to i1
  tail call void @llvm.assume(i1 %lcmp.mod269)
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.nm, i64 %indvars.iv55.i.2.epil.init
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !30
  %i.om = sext i32 %i.ol to i64                   ; 2 uses
  %i.on = getelementptr inbounds i8, ptr %.val109.2, i64 %i.om
  %i.oo = load i8, ptr %i.on, align 1, !tbaa !25
  %.not.i39.i.2.epil = icmp eq i8 %i.oo, 3
  br i1 %.not.i39.i.2.epil, label %Acb_ObjIsAreaCritical.exit42.thread.i.2.epil, label %Acb_ObjIsAreaCritical.exit42.i.2.epil

Acb_ObjIsAreaCritical.exit42.i.2.epil:            ; preds = %.epil.preheader265
  %.val3.i40.i.2.epil = load ptr, ptr %i.dy, align 8, !tbaa !34
  %i.op = getelementptr inbounds [16 x i8], ptr %.val3.i40.i.2.epil, i64 %i.om
  %i.oq = getelementptr i8, ptr %i.op, i64 4
  %.val.i.i41.i.2.epil = load i32, ptr %i.oq, align 4, !tbaa !28
  %.val.i.i41.fr.i.2.epil = freeze i32 %.val.i.i41.i.2.epil
  %.not45.i.2.epil = icmp eq i32 %.val.i.i41.fr.i.2.epil, 1
  %i.or = add nsw i32 %.251.i.2.epil.init, 1
  br i1 %.not45.i.2.epil, label %Acb_NtkObjMffcEstimate.exit.2, label %Acb_ObjIsAreaCritical.exit42.thread.i.2.epil

Acb_ObjIsAreaCritical.exit42.thread.i.2.epil:     ; preds = %Acb_ObjIsAreaCritical.exit42.i.2.epil, %.epil.preheader265
  br label %Acb_NtkObjMffcEstimate.exit.2

Acb_NtkObjMffcEstimate.exit.2:                    ; preds = %Acb_NtkObjMffcEstimate.exit.2.loopexit.unr-lcssa, %Acb_ObjIsAreaCritical.exit42.thread.i.2.epil, %Acb_ObjIsAreaCritical.exit42.i.2.epil, %.critedge.i.2
  %.030.i.2 = phi i32 [ %spec.select65.i.2.lcssa, %.critedge.i.2 ], [ %i.oi, %Acb_NtkObjMffcEstimate.exit.2.loopexit.unr-lcssa ], [ %.251.i.2.epil.init, %Acb_ObjIsAreaCritical.exit42.thread.i.2.epil ], [ %i.or, %Acb_ObjIsAreaCritical.exit42.i.2.epil ]
  %.not103.2 = icmp slt i32 %.030.i.2, 0
  br i1 %.not103.2, label %bb.bh, label %Acb_NtkObjMffcEstimate.exit.2.thread

Acb_NtkObjMffcEstimate.exit.2.thread:             ; preds = %bb.az, %bb.bb, %Acb_NtkObjMffcEstimate.exit.2
  %i.os = load i32, ptr %i.dz, align 8, !tbaa !203
  %i.ot = add nsw i32 %i.os, 1
  store i32 %i.ot, ptr %i.dz, align 8, !tbaa !203
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bg, %Acb_NtkObjMffcEstimate.exit.2.thread
  %i.ou = tail call i32 @Acb_NtkOptNode(ptr noundef %i.a, i32 noundef %i.lr)
  %.not104.2 = icmp eq i32 %i.ou, 0
  br i1 %.not104.2, label %.critedge.2, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.val.2 = load ptr, ptr %i.dw, align 8, !tbaa !29
  %.val106.2 = load ptr, ptr %i.dx, align 8, !tbaa !29
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %.val.2, i64 %indvars.iv.2
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !30
  %i.ox = sext i32 %i.ow to i64
  %i.oy = getelementptr inbounds [4 x i8], ptr %.val106.2, i64 %i.ox
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !30
  %.not105.2 = icmp eq i32 %i.oz, 0
  br i1 %.not105.2, label %.critedge.2, label %bb.bf, !llvm.loop !197

.critedge.2:                                      ; preds = %bb.bg, %bb.bf
  %i.pa = load i32, ptr %i.lu, align 4, !tbaa !30
  %i.pb = or i32 %i.pa, %i.lx
  store i32 %i.pb, ptr %i.lu, align 4, !tbaa !30
  %.val107.2.pre = load i32, ptr %i.ah, align 4, !tbaa !22
  br label %bb.bh

bb.bh:                                            ; preds = %.critedge.2, %Acb_NtkObjMffcEstimate.exit.2, %bb.ay, %bb.ax, %.lr.ph.2
  %.val107.2 = phi i32 [ %.val107.2.pre, %.critedge.2 ], [ %.val107.2147, %Acb_NtkObjMffcEstimate.exit.2 ], [ %.val107.2147, %bb.ay ], [ %.val107.2147, %bb.ax ], [ %.val107.2147, %.lr.ph.2 ] ; 2 uses
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 2 uses
  %i.pc = sext i32 %.val107.2 to i64
  %i.pd = icmp slt i64 %indvars.iv.next.2, %i.pc
  br i1 %i.pd, label %.lr.ph.2, label %.split.us, !llvm.loop !198

.split.us:                                        ; preds = %bb.bh, %._crit_edge, %._crit_edge.1, %Vec_BitStart.exit
  %.not.i125 = icmp eq ptr %i.du, null
  br i1 %.not.i125, label %Vec_BitFree.exit, label %bb.bi

bb.bi:                                            ; preds = %.split.us
  tail call void @free(ptr noundef nonnull %i.du) #26
  br label %Vec_BitFree.exit

bb.bj:                                            ; preds = %Acb_NtkCleanObjCnfs.exit
  tail call void @Acb_NtkUpdateTiming(ptr noundef nonnull %0, i32 noundef -1) #26
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.pf = getelementptr i8, ptr %0, i64 120
  br label %bb.bk

bb.bk:                                            ; preds = %.backedge, %bb.bj
  %i.pg = load ptr, ptr %i.pe, align 8, !tbaa !204 ; 6 uses
  %i.ph = getelementptr i8, ptr %i.pg, i64 4      ; 7 uses
  %.val.i126 = load i32, ptr %i.ph, align 4, !tbaa !207
  %i.pi = icmp sgt i32 %.val.i126, 1
  br i1 %i.pi, label %bb.bl, label %Vec_QueTopPriority.exit

bb.bl:                                            ; preds = %bb.bk
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !208
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 4
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !30 ; 2 uses
  %i.pn = getelementptr i8, ptr %i.pg, i64 24
  %.val3.i = load ptr, ptr %i.pn, align 8, !tbaa !209
  %.val3.val.i = load ptr, ptr %.val3.i, align 8, !tbaa !210 ; 2 uses
  %.not.i.i127 = icmp eq ptr %.val3.val.i, null
  br i1 %.not.i.i127, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.po = sext i32 %i.pm to i64
  %i.pp = getelementptr inbounds [4 x i8], ptr %.val3.val.i, i64 %i.po
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !212
  br label %Vec_QueTopPriority.exit

bb.bn:                                            ; preds = %bb.bl
  %i.pr = sitofp i32 %i.pm to float
  br label %Vec_QueTopPriority.exit

Vec_QueTopPriority.exit:                          ; preds = %bb.bk, %bb.bm, %bb.bn
  %i.ps = phi float [ -1.000000e+09, %bb.bk ], [ %i.pq, %bb.bm ], [ %i.pr, %bb.bn ]
  %i.pt = fptosi float %i.ps to i32
  %i.pu = icmp sgt i32 %i.pt, 0
  br i1 %i.pu, label %bb.bo, label %Vec_BitFree.exit

bb.bo:                                            ; preds = %Vec_QueTopPriority.exit
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !208 ; 9 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 4 ; 3 uses
  %i.py = load i32, ptr %i.px, align 4, !tbaa !30 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !213 ; 4 uses
  %i.qb = sext i32 %i.py to i64                   ; 2 uses
  %i.qc = getelementptr inbounds [4 x i8], ptr %i.qa, i64 %i.qb
  store i32 -1, ptr %i.qc, align 4, !tbaa !30
  %i.qd = load i32, ptr %i.ph, align 4, !tbaa !207
  %i.qe = add nsw i32 %i.qd, -1                   ; 3 uses
  store i32 %i.qe, ptr %i.ph, align 4, !tbaa !207
  %i.qf = icmp eq i32 %i.qe, 1
  br i1 %i.qf, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i32 -1, ptr %i.px, align 4, !tbaa !30
  br label %Vec_QuePop.exit

bb.bq:                                            ; preds = %bb.bo
  %i.qg = sext i32 %i.qe to i64
  %i.qh = getelementptr inbounds [4 x i8], ptr %i.pw, i64 %i.qg ; 2 uses
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !30 ; 4 uses
  store i32 -1, ptr %i.qh, align 4, !tbaa !30
  store i32 %i.qi, ptr %i.px, align 4, !tbaa !30
  %i.qj = sext i32 %i.qi to i64                   ; 2 uses
  %i.qk = getelementptr inbounds [4 x i8], ptr %i.qa, i64 %i.qj ; 2 uses
  store i32 1, ptr %i.qk, align 4, !tbaa !30
  %i.ql = getelementptr i8, ptr %i.pg, i64 24
  %.val40.i.i = load ptr, ptr %i.ql, align 8, !tbaa !209
  %.val40.val.i.i = load ptr, ptr %.val40.i.i, align 8, !tbaa !210 ; 4 uses
  %.not.i.i.i128 = icmp eq ptr %.val40.val.i.i, null
  br i1 %.not.i.i.i128, label %Vec_QuePrio.exit.i.i, label %Vec_QuePrio.exit.thread.i.i

Vec_QuePrio.exit.i.i:                             ; preds = %bb.bq
  %i.qm = sitofp i32 %i.qi to float
  %i.qn = load i32, ptr %i.ph, align 4, !tbaa !207 ; 2 uses
  %i.qo = icmp sgt i32 %i.qn, 2
  br i1 %i.qo, label %.lr.ph.split.us.i.i, label %Vec_QueMoveDown.exit.i

Vec_QuePrio.exit.thread.i.i:                      ; preds = %bb.bq
  %i.qp = getelementptr inbounds [4 x i8], ptr %.val40.val.i.i, i64 %i.qj
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !212
  %i.qr = load i32, ptr %i.ph, align 4, !tbaa !207 ; 2 uses
  %i.qs = icmp sgt i32 %i.qr, 2
  br i1 %i.qs, label %.lr.ph.split.i.i, label %Vec_QueMoveDown.exit.i

.lr.ph.split.us.i.i:                              ; preds = %Vec_QuePrio.exit.i.i, %bb.br
  %i.qt = phi i32 [ %i.rl, %bb.br ], [ %i.qn, %Vec_QuePrio.exit.i.i ]
  %.049.us.i.i = phi i32 [ %.0.us.i.i, %bb.br ], [ 2, %Vec_QuePrio.exit.i.i ] ; 4 uses
  %.03548.us.i.i = phi i32 [ %.1.us.i.i, %bb.br ], [ 1, %Vec_QuePrio.exit.i.i ] ; 3 uses
  %i.qu = or disjoint i32 %.049.us.i.i, 1         ; 3 uses
  %i.qv = icmp slt i32 %i.qu, %i.qt
  %i.qw = sext i32 %.049.us.i.i to i64
  %i.qx = getelementptr inbounds [4 x i8], ptr %i.pw, i64 %i.qw ; 2 uses
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !30 ; 2 uses
  br i1 %i.qv, label %Vec_QuePrio.exit44.us.i.i, label %Vec_QuePrio.exit46.us.i.i

Vec_QuePrio.exit44.us.i.i:                        ; preds = %.lr.ph.split.us.i.i
  %i.qz = sext i32 %i.qu to i64
  %i.ra = getelementptr inbounds [4 x i8], ptr %i.pw, i64 %i.qz
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !30
  %3 = load <2 x i32>, ptr %i.qx, align 4, !tbaa !30
  %4 = sitofp <2 x i32> %3 to <2 x float>         ; 2 uses
  %5 = extractelement <2 x float> %4, i64 0
  %6 = extractelement <2 x float> %4, i64 1
  %i.rc = fcmp olt float %5, %6                   ; 2 uses
  %spec.select.us.i.i = select i1 %i.rc, i32 %i.qu, i32 %.049.us.i.i
  %i.rd = select i1 %i.rc, i32 %i.rb, i32 %i.qy
  br label %Vec_QuePrio.exit46.us.i.i

Vec_QuePrio.exit46.us.i.i:                        ; preds = %Vec_QuePrio.exit44.us.i.i, %.lr.ph.split.us.i.i
  %i.re = phi i32 [ %i.rd, %Vec_QuePrio.exit44.us.i.i ], [ %i.qy, %.lr.ph.split.us.i.i ] ; 3 uses
  %.1.us.i.i = phi i32 [ %spec.select.us.i.i, %Vec_QuePrio.exit44.us.i.i ], [ %.049.us.i.i, %.lr.ph.split.us.i.i ] ; 3 uses
  %i.rf = sitofp i32 %i.re to float
  %i.rg = fcmp ult float %i.qm, %i.rf
  br i1 %i.rg, label %bb.br, label %Vec_QueMoveDown.exit.i

bb.br:                                            ; preds = %Vec_QuePrio.exit46.us.i.i
  %i.rh = sext i32 %.03548.us.i.i to i64
  %i.ri = getelementptr inbounds [4 x i8], ptr %i.pw, i64 %i.rh
  store i32 %i.re, ptr %i.ri, align 4, !tbaa !30
  %i.rj = sext i32 %i.re to i64
  %i.rk = getelementptr inbounds [4 x i8], ptr %i.qa, i64 %i.rj
  store i32 %.03548.us.i.i, ptr %i.rk, align 4, !tbaa !30
  %.0.us.i.i = shl i32 %.1.us.i.i, 1              ; 2 uses
  %i.rl = load i32, ptr %i.ph, align 4, !tbaa !207 ; 2 uses
  %i.rm = icmp slt i32 %.0.us.i.i, %i.rl
  br i1 %i.rm, label %.lr.ph.split.us.i.i, label %Vec_QueMoveDown.exit.i, !llvm.loop !199

.lr.ph.split.i.i:                                 ; preds = %Vec_QuePrio.exit.thread.i.i, %bb.bs
  %i.rn = phi i32 [ %i.sl, %bb.bs ], [ %i.qr, %Vec_QuePrio.exit.thread.i.i ]
  %.049.i.i = phi i32 [ %.0.i.i, %bb.bs ], [ 2, %Vec_QuePrio.exit.thread.i.i ] ; 4 uses
  %.03548.i.i = phi i32 [ %.1.i.i, %bb.bs ], [ 1, %Vec_QuePrio.exit.thread.i.i ] ; 3 uses
  %i.ro = or disjoint i32 %.049.i.i, 1            ; 3 uses
  %i.rp = icmp slt i32 %i.ro, %i.rn
  %i.rq = sext i32 %.049.i.i to i64
  %i.rr = getelementptr inbounds [4 x i8], ptr %i.pw, i64 %i.rq
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !30 ; 3 uses
  %i.rt = sext i32 %i.rs to i64                   ; 2 uses
  %i.ru = getelementptr inbounds [4 x i8], ptr %.val40.val.i.i, i64 %i.rt
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !212 ; 3 uses
  br i1 %i.rp, label %Vec_QuePrio.exit44.i.i, label %Vec_QuePrio.exit46.i.i

Vec_QuePrio.exit44.i.i:                           ; preds = %.lr.ph.split.i.i
  %i.rw = sext i32 %i.ro to i64
  %i.rx = getelementptr inbounds [4 x i8], ptr %i.pw, i64 %i.rw
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !30 ; 2 uses
  %i.rz = sext i32 %i.ry to i64
  %i.sa = getelementptr inbounds [4 x i8], ptr %.val40.val.i.i, i64 %i.rz
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !212 ; 2 uses
  %i.sc = fcmp olt float %i.rv, %i.sb             ; 3 uses
  %spec.select.i.i = select i1 %i.sc, i32 %i.ro, i32 %.049.i.i
  %i.sd = select i1 %i.sc, i32 %i.ry, i32 %i.rs   ; 2 uses
  %i.se = select i1 %i.sc, float %i.sb, float %i.rv
  %.pre68.i.i = sext i32 %i.sd to i64
  br label %Vec_QuePrio.exit46.i.i

Vec_QuePrio.exit46.i.i:                           ; preds = %Vec_QuePrio.exit44.i.i, %.lr.ph.split.i.i
  %.pre-phi69.i.i = phi i64 [ %.pre68.i.i, %Vec_QuePrio.exit44.i.i ], [ %i.rt, %.lr.ph.split.i.i ]
  %i.sf = phi float [ %i.se, %Vec_QuePrio.exit44.i.i ], [ %i.rv, %.lr.ph.split.i.i ]
  %i.sg = phi i32 [ %i.sd, %Vec_QuePrio.exit44.i.i ], [ %i.rs, %.lr.ph.split.i.i ]
  %.1.i.i = phi i32 [ %spec.select.i.i, %Vec_QuePrio.exit44.i.i ], [ %.049.i.i, %.lr.ph.split.i.i ] ; 3 uses
  %i.sh = fcmp ult float %i.qq, %i.sf
  br i1 %i.sh, label %bb.bs, label %Vec_QueMoveDown.exit.i

bb.bs:                                            ; preds = %Vec_QuePrio.exit46.i.i
  %i.si = sext i32 %.03548.i.i to i64
  %i.sj = getelementptr inbounds [4 x i8], ptr %i.pw, i64 %i.si
  store i32 %i.sg, ptr %i.sj, align 4, !tbaa !30
  %i.sk = getelementptr inbounds [4 x i8], ptr %i.qa, i64 %.pre-phi69.i.i
  store i32 %.03548.i.i, ptr %i.sk, align 4, !tbaa !30
  %.0.i.i = shl i32 %.1.i.i, 1                    ; 2 uses
  %i.sl = load i32, ptr %i.ph, align 4, !tbaa !207 ; 2 uses
  %i.sm = icmp slt i32 %.0.i.i, %i.sl
  br i1 %i.sm, label %.lr.ph.split.i.i, label %Vec_QueMoveDown.exit.i, !llvm.loop !199

Vec_QueMoveDown.exit.i:                           ; preds = %bb.bs, %Vec_QuePrio.exit46.i.i, %bb.br, %Vec_QuePrio.exit46.us.i.i, %Vec_QuePrio.exit.thread.i.i, %Vec_QuePrio.exit.i.i
  %.035.lcssa.i.i = phi i32 [ %.1.us.i.i, %bb.br ], [ 1, %Vec_QuePrio.exit.thread.i.i ], [ 1, %Vec_QuePrio.exit.i.i ], [ %.03548.us.i.i, %Vec_QuePrio.exit46.us.i.i ], [ %.1.i.i, %bb.bs ], [ %.03548.i.i, %Vec_QuePrio.exit46.i.i ] ; 2 uses
  %i.sn = sext i32 %.035.lcssa.i.i to i64
  %i.so = getelementptr inbounds [4 x i8], ptr %i.pw, i64 %i.sn
  store i32 %i.qi, ptr %i.so, align 4, !tbaa !30
  store i32 %.035.lcssa.i.i, ptr %i.qk, align 4, !tbaa !30
  br label %Vec_QuePop.exit

Vec_QuePop.exit:                                  ; preds = %bb.bp, %Vec_QueMoveDown.exit.i
  %.val108 = load ptr, ptr %i.pf, align 8, !tbaa !24
  %i.sp = getelementptr inbounds i8, ptr %.val108, i64 %i.qb
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !25
  %.not93 = icmp eq i8 %i.sq, 0
  br i1 %.not93, label %.backedge, label %bb.bt

.backedge:                                        ; preds = %Vec_QuePop.exit, %bb.bt
  br label %bb.bk, !llvm.loop !200

bb.bt:                                            ; preds = %Vec_QuePop.exit
  %i.sr = tail call i32 @Acb_NtkOptNode(ptr noundef %i.a, i32 noundef %i.py) ; 0 uses
  br label %.backedge

Vec_BitFree.exit:                                 ; preds = %Vec_QueTopPriority.exit, %bb.bi, %.split.us
  %i.ss = load i32, ptr %i.b, align 4, !tbaa !87
  %.not94 = icmp eq i32 %i.ss, 0
  br i1 %.not94, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %Vec_BitFree.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.st = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #26
  %i.su = icmp slt i32 %i.st, 0
  br i1 %i.su, label %Abc_Clock.exit, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.sv = load i64, ptr %2, align 8, !tbaa !74
  %i.sw = mul nsw i64 %i.sv, 1000000
  %i.sx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !75
  %i.sz = sdiv i64 %i.sy, 1000
  %i.ta = add nsw i64 %i.sz, %i.sw
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.bu, %bb.bv
  %.0.i = phi i64 [ %i.ta, %bb.bv ], [ -1, %bb.bu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.tb = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 2 uses
  %i.tc = load i64, ptr %i.tb, align 8, !tbaa !76 ; 2 uses
  %i.td = sub nsw i64 %.0.i, %i.tc                ; 2 uses
  store i64 %i.td, ptr %i.tb, align 8, !tbaa !76
  %i.te = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.tf = load i32, ptr %i.te, align 8, !tbaa !203
  %i.tg = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !82 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.tj = call noundef range(i32 1, -2147483648) i32 @llvm.smax.i32(i32 %i.th, i32 1)
  %i.tk = load <2 x i32>, ptr %i.ti, align 8, !tbaa !30
  %i.tl = insertelement <2 x i32> poison, i32 %i.tj, i64 0
  %i.tm = shufflevector <2 x i32> %i.tl, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.tn = sdiv <2 x i32> %i.tk, %i.tm             ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.tp = load i32, ptr %i.to, align 8, !tbaa !30 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !30 ; 2 uses
  %i.ts = add nsw i32 %i.tr, %i.tp
  %i.tt = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.tu = load i32, ptr %i.tt, align 8, !tbaa !30 ; 2 uses
  %i.tv = add nsw i32 %i.ts, %i.tu
  %i.tw = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !30 ; 2 uses
  %i.ty = add nsw i32 %i.tv, %i.tx
  %i.tz = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.ua = load i32, ptr %i.tz, align 8, !tbaa !89
  %i.ub = load i32, ptr @StrCount, align 4, !tbaa !30
  %i.uc = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !96
  %i.ue = extractelement <2 x i32> %i.tn, i64 0
  %i.uf = extractelement <2 x i32> %i.tn, i64 1
  %i.ug = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %i.tf, i32 noundef %i.th, i32 noundef %i.ue, i32 noundef %i.uf, i32 noundef %i.ty, i32 noundef %i.tp, i32 noundef %i.tr, i32 noundef %i.tu, i32 noundef %i.tx, i32 noundef %i.ua, i32 noundef %i.ub, i32 noundef %i.ud) ; 0 uses
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33)
  %i.uh = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.ui = load i64, ptr %i.uh, align 8, !tbaa !86
  %.not95 = icmp eq i64 %.0.i, %i.tc              ; 5 uses
  %i.uj = sitofp i64 %i.ui to double
  %i.uk = insertelement <2 x double> poison, double %i.uj, i64 0
  %i.ul = shufflevector <2 x double> %i.uk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.um = fmul nnan <2 x double> %i.ul, <double 1.000000e+00, double 1.000000e+02>
  %i.un = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.uo = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.up = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.uq = sitofp i64 %i.td to double              ; 3 uses
  %i.ur = insertelement <2 x double> <double 1.000000e+06, double poison>, double %i.uq, i64 1 ; 4 uses
  %i.us = fdiv <2 x double> %i.um, %i.ur          ; 2 uses
  %i.ut = extractelement <2 x double> %i.us, i64 1
  %i.uu = select i1 %.not95, double 0.000000e+00, double %i.ut
  %i.uv = extractelement <2 x double> %i.us, i64 0
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.34, double noundef %i.uv, double noundef %i.uu)
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.35)
  %i.uw = load i64, ptr %i.un, align 8, !tbaa !90
  %i.ux = sitofp i64 %i.uw to double
  %i.uy = insertelement <2 x double> poison, double %i.ux, i64 0
  %i.uz = shufflevector <2 x double> %i.uy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.va = fmul nnan <2 x double> %i.uz, <double 1.000000e+00, double 1.000000e+02>
  %i.vb = fdiv <2 x double> %i.va, %i.ur          ; 2 uses
  %i.vc = extractelement <2 x double> %i.vb, i64 1
  %i.vd = select i1 %.not95, double 0.000000e+00, double %i.vc
  %i.ve = extractelement <2 x double> %i.vb, i64 0
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.34, double noundef %i.ve, double noundef %i.vd)
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.36)
  %i.vf = load i64, ptr %i.uo, align 8, !tbaa !91
  %i.vg = sitofp i64 %i.vf to double
  %i.vh = insertelement <2 x double> poison, double %i.vg, i64 0
  %i.vi = shufflevector <2 x double> %i.vh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vj = fmul nnan <2 x double> %i.vi, <double 1.000000e+00, double 1.000000e+02>
  %i.vk = fdiv <2 x double> %i.vj, %i.ur          ; 2 uses
  %i.vl = extractelement <2 x double> %i.vk, i64 1
  %i.vm = select i1 %.not95, double 0.000000e+00, double %i.vl
  %i.vn = extractelement <2 x double> %i.vk, i64 0
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.34, double noundef %i.vn, double noundef %i.vm)
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.37)
  %i.vo = load i64, ptr %i.up, align 8, !tbaa !93
  %i.vp = sitofp i64 %i.vo to double
  %i.vq = insertelement <2 x double> poison, double %i.vp, i64 0
  %i.vr = shufflevector <2 x double> %i.vq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vs = fmul nnan <2 x double> %i.vr, <double 1.000000e+00, double 1.000000e+02>
  %i.vt = fdiv <2 x double> %i.vs, %i.ur          ; 2 uses
  %i.vu = extractelement <2 x double> %i.vt, i64 1
  %i.vv = select i1 %.not95, double 0.000000e+00, double %i.vu
  %i.vw = extractelement <2 x double> %i.vt, i64 0
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.34, double noundef %i.vw, double noundef %i.vv)
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.38)
end_hunk_0
