inline.NumInlined: 47
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 27
begin_hunk_0_@utrie2_freeze_78:bb.a
.lr.ph152.i.i:                                    ; preds = %.lr.ph152.i.i.preheader, %.lr.ph152.i.i
  %indvars.iv207.i.i = phi i64 [ %indvars.iv.next208.i.i, %.lr.ph152.i.i ], [ %indvars.iv207.i.i.ph, %.lr.ph152.i.i.preheader ] ; 2 uses
  %.293150.i.i = phi i32 [ %i.mm, %.lr.ph152.i.i ], [ %.293150.i.i.ph, %.lr.ph152.i.i.preheader ] ; 2 uses
  %.198149.i.i = phi i32 [ %i.ml, %.lr.ph152.i.i ], [ %.198149.i.i.ph, %.lr.ph152.i.i.preheader ] ; 2 uses
  %indvars.iv.next208.i.i = add nsw i64 %indvars.iv207.i.i, 1
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %indvars.iv207.i.i
  store i32 %.198149.i.i, ptr %i.mk, align 4
  %i.ml = add nsw i32 %.198149.i.i, 32
  %i.mm = add nsw i32 %.293150.i.i, -1
  %i.mn = icmp sgt i32 %.293150.i.i, 1
  br i1 %i.mn, label %.lr.ph152.i.i, label %._crit_edge153.i.i, !llvm.loop !23

._crit_edge153.i.i:                               ; preds = %.lr.ph152.i.i, %middle.block
  %i.mo = add i32 %.094129.i.i, %.1104135.i.i     ; 2 uses
  %i.mp = sub nsw i32 %spec.select.i.i, %.094129.i.i ; 4 uses
  %i.mq = icmp sgt i32 %i.mp, 0
  br i1 %i.mq, label %.lr.ph158.preheader.i.i, label %.outer.i31.i

.lr.ph158.preheader.i.i:                          ; preds = %._crit_edge153.i.i
  %i.mr = sext i32 %i.mo to i64                   ; 3 uses
  %.neg = add i32 %.094129.i.i, 1
  %xtraiter = and i32 %i.mp, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph158.i.i.prol.loopexit, label %.lr.ph158.i.i.prol

.lr.ph158.i.i.prol:                               ; preds = %.lr.ph158.preheader.i.i
  %i.ms = load ptr, ptr %i.n, align 8             ; 2 uses
  %indvars.iv.next213.i.i.prol = add nsw i64 %i.mr, 1 ; 2 uses
  %i.mt = getelementptr inbounds [4 x i8], ptr %i.ms, i64 %i.mr
  %i.mu = load i32, ptr %i.mt, align 4
  %indvars.iv.next211.i.i.prol = add nsw i64 %i.kw, 1 ; 2 uses
  %i.mv = getelementptr inbounds [4 x i8], ptr %i.ms, i64 %i.kw
  store i32 %i.mu, ptr %i.mv, align 4
  %i.mw = add nsw i32 %i.mp, -1
  br label %.lr.ph158.i.i.prol.loopexit

.lr.ph158.i.i.prol.loopexit:                      ; preds = %.lr.ph158.i.i.prol, %.lr.ph158.preheader.i.i
  %indvars.iv212.i.i.unr = phi i64 [ %i.mr, %.lr.ph158.preheader.i.i ], [ %indvars.iv.next213.i.i.prol, %.lr.ph158.i.i.prol ]
  %indvars.iv210.i.i.unr = phi i64 [ %i.kw, %.lr.ph158.preheader.i.i ], [ %indvars.iv.next211.i.i.prol, %.lr.ph158.i.i.prol ]
  %.3156.i.i.unr = phi i32 [ %i.mp, %.lr.ph158.preheader.i.i ], [ %i.mw, %.lr.ph158.i.i.prol ]
  %indvars.iv.next213.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph158.preheader.i.i ], [ %indvars.iv.next213.i.i.prol, %.lr.ph158.i.i.prol ]
  %indvars.iv.next211.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph158.preheader.i.i ], [ %indvars.iv.next211.i.i.prol, %.lr.ph158.i.i.prol ]
  %i.mx = icmp eq i32 %spec.select.i.i, %.neg
  br i1 %i.mx, label %.outer.loopexit.i.i, label %.lr.ph158.i.i

.lr.ph158.i.i:                                    ; preds = %.lr.ph158.i.i.prol.loopexit, %.lr.ph158.i.i
  %indvars.iv212.i.i = phi i64 [ %indvars.iv.next213.i.i.1, %.lr.ph158.i.i ], [ %indvars.iv212.i.i.unr, %.lr.ph158.i.i.prol.loopexit ] ; 3 uses
  %indvars.iv210.i.i = phi i64 [ %indvars.iv.next211.i.i.1, %.lr.ph158.i.i ], [ %indvars.iv210.i.i.unr, %.lr.ph158.i.i.prol.loopexit ] ; 3 uses
  %.3156.i.i = phi i32 [ %i.ni, %.lr.ph158.i.i ], [ %.3156.i.i.unr, %.lr.ph158.i.i.prol.loopexit ] ; 2 uses
  %i.my = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.my, i64 %indvars.iv212.i.i
  %i.na = load i32, ptr %i.mz, align 4
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.my, i64 %indvars.iv210.i.i
  store i32 %i.na, ptr %i.nb, align 4
  %i.nc = load ptr, ptr %i.n, align 8             ; 2 uses
  %indvars.iv.next213.i.i.1 = add nsw i64 %indvars.iv212.i.i, 2 ; 2 uses
  %i.nd = getelementptr [4 x i8], ptr %i.nc, i64 %indvars.iv212.i.i
  %i.ne = getelementptr i8, ptr %i.nd, i64 4
  %i.nf = load i32, ptr %i.ne, align 4
  %indvars.iv.next211.i.i.1 = add nsw i64 %indvars.iv210.i.i, 2 ; 2 uses
  %i.ng = getelementptr [4 x i8], ptr %i.nc, i64 %indvars.iv210.i.i
  %i.nh = getelementptr i8, ptr %i.ng, i64 4
  store i32 %i.nf, ptr %i.nh, align 4
  %i.ni = add nsw i32 %.3156.i.i, -2
  %i.nj = icmp sgt i32 %.3156.i.i, 2
  br i1 %i.nj, label %.lr.ph158.i.i, label %.outer.loopexit.i.i, !llvm.loop !24

.lr.ph147.i.i:                                    ; preds = %.lr.ph147.i.i.preheader1769, %.lr.ph147.i.i
  %indvars.iv202.i.i = phi i64 [ %indvars.iv.next203.i.i, %.lr.ph147.i.i ], [ %indvars.iv202.i.i.ph, %.lr.ph147.i.i.preheader1769 ] ; 2 uses
  %.4145.i.i = phi i32 [ %i.nm, %.lr.ph147.i.i ], [ %.4145.i.i.ph, %.lr.ph147.i.i.preheader1769 ] ; 2 uses
  %.3106144.i.i = phi i32 [ %i.nl, %.lr.ph147.i.i ], [ %.3106144.i.i.ph, %.lr.ph147.i.i.preheader1769 ] ; 2 uses
  %indvars.iv.next203.i.i = add nsw i64 %indvars.iv202.i.i, 1
  %i.nk = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %indvars.iv202.i.i
  store i32 %.3106144.i.i, ptr %i.nk, align 4
  %i.nl = add nsw i32 %.3106144.i.i, 32           ; 3 uses
  %i.nm = add nsw i32 %.4145.i.i, -1
  %i.nn = icmp sgt i32 %.4145.i.i, 1
  br i1 %i.nn, label %.lr.ph147.i.i, label %.outer.i31.i, !llvm.loop !25

.outer.loopexit.i.i:                              ; preds = %.lr.ph158.i.i, %.lr.ph158.i.i.prol.loopexit
  %indvars.iv.next213.i.i.lcssa = phi i64 [ %indvars.iv.next213.i.i.lcssa.unr, %.lr.ph158.i.i.prol.loopexit ], [ %indvars.iv.next213.i.i.1, %.lr.ph158.i.i ]
  %indvars.iv.next211.i.i.lcssa = phi i64 [ %indvars.iv.next211.i.i.lcssa.unr, %.lr.ph158.i.i.prol.loopexit ], [ %indvars.iv.next211.i.i.1, %.lr.ph158.i.i ]
  %i.no = trunc nsw i64 %indvars.iv.next213.i.i.lcssa to i32
  %i.np = trunc nsw i64 %indvars.iv.next211.i.i.lcssa to i32
  br label %.outer.i31.i

.outer.i31.i:                                     ; preds = %.lr.ph147.i.i, %middle.block1634, %.outer.loopexit.i.i, %._crit_edge153.i.i
  %.4107.i.i = phi i32 [ %i.no, %.outer.loopexit.i.i ], [ %i.mo, %._crit_edge153.i.i ], [ %i.lv, %middle.block1634 ], [ %i.nl, %.lr.ph147.i.i ] ; 2 uses
  %.2101.i.i = phi i32 [ %i.np, %.outer.loopexit.i.i ], [ %.099.ph162.i.i, %._crit_edge153.i.i ], [ %i.lv, %middle.block1634 ], [ %i.nl, %.lr.ph147.i.i ] ; 2 uses
  %i.nq = load i32, ptr %i.jg, align 8            ; 2 uses
  %i.nr = icmp slt i32 %.4107.i.i, %i.nq
  br i1 %i.nr, label %.lr.ph138.i.i, label %.preheader.i.i, !llvm.loop !16

.lr.ph138.i.i:                                    ; preds = %bb.x, %.outer.i31.i
  %i.ns = phi i32 [ %i.nq, %.outer.i31.i ], [ %i.jh, %bb.x ]
  %.0.ph164.i.i = phi i32 [ %spec.select110.i.i, %.outer.i31.i ], [ 2, %bb.x ]
  %.095.ph163.i.i = phi i32 [ %spec.select.i.i, %.outer.i31.i ], [ 64, %bb.x ]
  %.099.ph162.i.i = phi i32 [ %.2101.i.i, %.outer.i31.i ], [ 192, %bb.x ] ; 6 uses
  %.1104.ph161.i.i = phi i32 [ %.4107.i.i, %.outer.i31.i ], [ 192, %bb.x ]
  br label %bb.y

.lr.ph167.i.i:                                    ; preds = %.preheader.i.i, %.lr.ph167.i.i
  %.5166.i.i = phi i32 [ %i.ob, %.lr.ph167.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.nt = icmp eq i32 %.5166.i.i, 2080
  %spec.select112.i.i = select i1 %i.nt, i32 2656, i32 %.5166.i.i ; 2 uses
  %i.nu = sext i32 %spec.select112.i.i to i64
  %i.nv = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.nu ; 2 uses
  %i.nw = load i32, ptr %i.nv, align 4
  %i.nx = ashr i32 %i.nw, 5
  %i.ny = sext i32 %i.nx to i64
  %i.nz = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.ny
  %i.oa = load i32, ptr %i.nz, align 4
  store i32 %i.oa, ptr %i.nv, align 4
  %i.ob = add nsw i32 %spec.select112.i.i, 1      ; 2 uses
  %i.oc = load i32, ptr %i.jj, align 8
  %i.od = icmp slt i32 %i.ob, %i.oc
  br i1 %i.od, label %.lr.ph167.i.i, label %._crit_edge168.i.i, !llvm.loop !26

._crit_edge168.i.i:                               ; preds = %.lr.ph167.i.i, %.preheader.i.i
  %i.oe = load i32, ptr %i.t, align 4
  %i.of = ashr i32 %i.oe, 5
  %i.og = sext i32 %i.of to i64
  %i.oh = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.og
  %i.oi = load i32, ptr %i.oh, align 4
  store i32 %i.oi, ptr %i.t, align 4
  %i.oj = and i32 %.099.ph.lcssa.i.i, 3
  %.not169.i.i = icmp eq i32 %i.oj, 0
  br i1 %.not169.i.i, label %_ZL11compactDataP9UNewTrie2.exit.i, label %.lr.ph172.i.i

.lr.ph172.i.i:                                    ; preds = %._crit_edge168.i.i
  %i.ok = sext i32 %.099.ph.lcssa.i.i to i64      ; 4 uses
  %.pre220.i.i = load i32, ptr %i.p, align 8      ; 4 uses
  %i.ol = load ptr, ptr %i.n, align 8
  %indvars.iv.next218.i.i = add nsw i64 %i.ok, 1  ; 2 uses
  %i.om = getelementptr inbounds [4 x i8], ptr %i.ol, i64 %i.ok
  store i32 %.pre220.i.i, ptr %i.om, align 4
  %i.on = trunc nsw i64 %indvars.iv.next218.i.i to i32 ; 2 uses
  %i.oo = and i32 %i.on, 3
  %.not.i30.i = icmp eq i32 %i.oo, 0
  br i1 %.not.i30.i, label %_ZL11compactDataP9UNewTrie2.exit.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph172.i.i
  %i.op = load ptr, ptr %i.n, align 8
  %indvars.iv.next218.i.i.1 = add nsw i64 %i.ok, 2 ; 2 uses
  %i.oq = getelementptr inbounds [4 x i8], ptr %i.op, i64 %indvars.iv.next218.i.i
  store i32 %.pre220.i.i, ptr %i.oq, align 4
  %i.or = trunc nsw i64 %indvars.iv.next218.i.i.1 to i32 ; 2 uses
  %i.os = and i32 %i.or, 3
  %.not.i30.i.1 = icmp eq i32 %i.os, 0
  br i1 %.not.i30.i.1, label %_ZL11compactDataP9UNewTrie2.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ot = load ptr, ptr %i.n, align 8
  %indvars.iv.next218.i.i.2 = add nsw i64 %i.ok, 3 ; 2 uses
  %i.ou = getelementptr inbounds [4 x i8], ptr %i.ot, i64 %indvars.iv.next218.i.i.1
  store i32 %.pre220.i.i, ptr %i.ou, align 4
  %i.ov = trunc nsw i64 %indvars.iv.next218.i.i.2 to i32 ; 2 uses
  %i.ow = and i32 %i.ov, 3
  %.not.i30.i.2 = icmp eq i32 %i.ow, 0
  br i1 %.not.i30.i.2, label %_ZL11compactDataP9UNewTrie2.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ox = load ptr, ptr %i.n, align 8
  %indvars.iv.next218.i.i.3 = add i32 %.099.ph.lcssa.i.i, 4
  %i.oy = getelementptr inbounds [4 x i8], ptr %i.ox, i64 %indvars.iv.next218.i.i.2
  store i32 %.pre220.i.i, ptr %i.oy, align 4
  br label %_ZL11compactDataP9UNewTrie2.exit.i

_ZL11compactDataP9UNewTrie2.exit.i:               ; preds = %.lr.ph172.i.i, %bb.ah, %bb.ai, %bb.aj, %._crit_edge168.i.i
  %.3102.lcssa.i.i = phi i32 [ %.099.ph.lcssa.i.i, %._crit_edge168.i.i ], [ %i.on, %.lr.ph172.i.i ], [ %i.or, %bb.ah ], [ %i.ov, %bb.ai ], [ %indvars.iv.next218.i.i.3, %bb.aj ] ; 2 uses
  store i32 %.3102.lcssa.i.i, ptr %i.jg, align 8
  %i.oz = icmp sgt i32 %i.jc, 65536
  br i1 %i.oz, label %bb.ak, label %bb.bg

bb.ak:                                            ; preds = %_ZL11compactDataP9UNewTrie2.exit.i
  store <4 x i32> <i32 0, i32 64, i32 128, i32 192>, ptr %i.jd, align 8
  store <4 x i32> <i32 256, i32 320, i32 384, i32 448>, ptr %i.je, align 8
  %i.pa = getelementptr inbounds nuw i8, ptr %i.f, i64 144208
  store <4 x i32> <i32 512, i32 576, i32 640, i32 704>, ptr %i.pa, align 8
  %i.pb = getelementptr inbounds nuw i8, ptr %i.f, i64 144224
  store <4 x i32> <i32 768, i32 832, i32 896, i32 960>, ptr %i.pb, align 8
  %i.pc = getelementptr inbounds nuw i8, ptr %i.f, i64 144240
  store <4 x i32> <i32 1024, i32 1088, i32 1152, i32 1216>, ptr %i.pc, align 8
  %i.pd = getelementptr inbounds nuw i8, ptr %i.f, i64 144256
  store <4 x i32> <i32 1280, i32 1344, i32 1408, i32 1472>, ptr %i.pd, align 8
  %i.pe = getelementptr inbounds nuw i8, ptr %i.f, i64 144272
  store <4 x i32> <i32 1536, i32 1600, i32 1664, i32 1728>, ptr %i.pe, align 8
  %i.pf = getelementptr inbounds nuw i8, ptr %i.f, i64 144288
  store <4 x i32> <i32 1792, i32 1856, i32 1920, i32 1984>, ptr %i.pf, align 8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.f, i64 144304
  store i32 2048, ptr %i.pg, align 8
  %i.ph = load i32, ptr %i.jb, align 8
  %i.pi = add nsw i32 %i.ph, -65536
  %i.pj = ashr i32 %i.pi, 11
  %i.pk = add nsw i32 %i.pj, 2112                 ; 2 uses
  %i.pl = load i32, ptr %i.jj, align 8
  %i.pm = icmp sgt i32 %i.pl, 2656
  br i1 %i.pm, label %.lr.ph.i38.i, label %.preheader.i35.i

.lr.ph.i38.i:                                     ; preds = %bb.ak, %.outer.i51.i
  %.061.ph95.i.i = phi i32 [ %.2.i.i, %.outer.i51.i ], [ %i.pk, %bb.ak ] ; 7 uses
  %.163.ph94.i.i = phi i32 [ %.365.i.i, %.outer.i51.i ], [ 2656, %bb.ak ] ; 2 uses
  %.not15.i.i39.i = icmp slt i32 %.061.ph95.i.i, 64
  %i.pn = add nsw i32 %.061.ph95.i.i, -63
  %wide.trip.count.i.i.i = zext nneg i32 %i.pn to i64
  br i1 %.not15.i.i39.i, label %.preheader74.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %.lr.ph.i38.i
  %i.po = sext i32 %.163.ph94.i.i to i64
  br label %.lr.ph.i.i40.i

.preheader.i35.i:                                 ; preds = %.outer.i51.i, %_ZL19findSameIndex2BlockPKiii.exit.i.i, %bb.ak
  %.061.ph.lcssa.i.i = phi i32 [ %.061.ph95.i.i, %_ZL19findSameIndex2BlockPKiii.exit.i.i ], [ %i.pk, %bb.ak ], [ %.2.i.i, %.outer.i51.i ] ; 4 uses
  br label %bb.bb

.lr.ph.i.i40.i:                                   ; preds = %_ZL19findSameIndex2BlockPKiii.exit.i.i, %.lr.ph.i.preheader.i.i
  %indvars.iv.i41.i = phi i64 [ %i.po, %.lr.ph.i.preheader.i.i ], [ %indvars.iv.next.i53.i, %_ZL19findSameIndex2BlockPKiii.exit.i.i ] ; 4 uses
  %i.pp = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv.i41.i
  br label %bb.al

bb.al:                                            ; preds = %bb.ar, %.lr.ph.i.i40.i
  %indvars.iv.i.i42.i = phi i64 [ 0, %.lr.ph.i.i40.i ], [ %indvars.iv.next.i.i46.i, %bb.ar ] ; 3 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i.i42.i
  br label %bb.am

bb.am:                                            ; preds = %bb.aq, %bb.al
  %.010.i.i.i43.i = phi i32 [ 64, %bb.al ], [ %i.ql, %bb.aq ] ; 2 uses
  %.069.i.i.i44.i = phi ptr [ %i.pp, %bb.al ], [ %i.qk, %bb.aq ] ; 5 uses
  %.078.i.i.i45.i = phi ptr [ %i.pq, %bb.al ], [ %i.qj, %bb.aq ] ; 5 uses
  %i.pr = load i32, ptr %.078.i.i.i45.i, align 4
  %i.ps = load i32, ptr %.069.i.i.i44.i, align 4
  %i.pt = icmp eq i32 %i.pr, %i.ps
  br i1 %i.pt, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.pu = getelementptr inbounds nuw i8, ptr %.078.i.i.i45.i, i64 4
  %i.pv = getelementptr inbounds nuw i8, ptr %.069.i.i.i44.i, i64 4
  %i.pw = load i32, ptr %i.pu, align 4
  %i.px = load i32, ptr %i.pv, align 4
  %i.py = icmp eq i32 %i.pw, %i.px
  br i1 %i.py, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.pz = getelementptr inbounds nuw i8, ptr %.078.i.i.i45.i, i64 8
  %i.qa = getelementptr inbounds nuw i8, ptr %.069.i.i.i44.i, i64 8
  %i.qb = load i32, ptr %i.pz, align 4
  %i.qc = load i32, ptr %i.qa, align 4
  %i.qd = icmp eq i32 %i.qb, %i.qc
  br i1 %i.qd, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.qe = getelementptr inbounds nuw i8, ptr %.078.i.i.i45.i, i64 12
  %i.qf = getelementptr inbounds nuw i8, ptr %.069.i.i.i44.i, i64 12
  %i.qg = load i32, ptr %i.qe, align 4
  %i.qh = load i32, ptr %i.qf, align 4
  %i.qi = icmp eq i32 %i.qg, %i.qh
  br i1 %i.qi, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.qj = getelementptr inbounds nuw i8, ptr %.078.i.i.i45.i, i64 16
  %i.qk = getelementptr inbounds nuw i8, ptr %.069.i.i.i44.i, i64 16
  %i.ql = add nsw i32 %.010.i.i.i43.i, -4
  %.not2118 = icmp eq i32 %.010.i.i.i43.i, 4
  br i1 %.not2118, label %_ZL19findSameIndex2BlockPKiii.exit.i.i, label %bb.am, !llvm.loop !27

bb.ar:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am
  %indvars.iv.next.i.i46.i = add nuw nsw i64 %indvars.iv.i.i42.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i46.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.preheader74.loopexit.i.i, label %bb.al, !llvm.loop !28

_ZL19findSameIndex2BlockPKiii.exit.i.i:           ; preds = %bb.aq
  %i.qm = trunc nuw nsw i64 %indvars.iv.i.i42.i to i32
  %i.qn = trunc nsw i64 %indvars.iv.i41.i to i32
  %i.qo = ashr i32 %i.qn, 6
  %i.qp = sext i32 %i.qo to i64
  %i.qq = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.qp
  store i32 %i.qm, ptr %i.qq, align 4
  %indvars.iv.next.i53.i = add nsw i64 %indvars.iv.i41.i, 64 ; 2 uses
  %i.qr = load i32, ptr %i.jj, align 8
  %i.qs = sext i32 %i.qr to i64
  %i.qt = icmp slt i64 %indvars.iv.next.i53.i, %i.qs
  br i1 %i.qt, label %.lr.ph.i.i40.i, label %.preheader.i35.i, !llvm.loop !29

.preheader74.loopexit.i.i:                        ; preds = %bb.ar
  %i.qu = trunc nsw i64 %indvars.iv.i41.i to i32
  br label %.preheader74.i.i

.preheader74.i.i:                                 ; preds = %.preheader74.loopexit.i.i, %.lr.ph.i38.i
  %.us-phi85.i.i = phi i32 [ %.163.ph94.i.i, %.lr.ph.i38.i ], [ %i.qu, %.preheader74.loopexit.i.i ] ; 7 uses
  %i.qv = sext i32 %.us-phi85.i.i to i64          ; 2 uses
  %i.qw = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.qv ; 2 uses
  %i.qx = sext i32 %.061.ph95.i.i to i64          ; 7 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ay, %.preheader74.i.i
  %indvars.iv112.i.i = phi i64 [ 63, %.preheader74.i.i ], [ %indvars.iv.next113.i.i.1, %bb.ay ] ; 5 uses
  %i.qy = sub nsw i64 %i.qx, %indvars.iv112.i.i
  %i.qz = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.qy
  %i.ra = trunc nuw nsw i64 %indvars.iv112.i.i to i32 ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %bb.au, %bb.as
  %.010.i.i47.i = phi i32 [ %i.ra, %bb.as ], [ %i.rg, %bb.au ] ; 2 uses
  %.069.i.i48.i = phi ptr [ %i.qw, %bb.as ], [ %i.rf, %bb.au ] ; 2 uses
  %.078.i.i49.i = phi ptr [ %i.qz, %bb.as ], [ %i.re, %bb.au ] ; 2 uses
  %i.rb = load i32, ptr %.078.i.i49.i, align 4
  %i.rc = load i32, ptr %.069.i.i48.i, align 4
  %i.rd = icmp eq i32 %i.rb, %i.rc
  br i1 %i.rd, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.re = getelementptr inbounds nuw i8, ptr %.078.i.i49.i, i64 4
  %i.rf = getelementptr inbounds nuw i8, ptr %.069.i.i48.i, i64 4
  %i.rg = add nsw i32 %.010.i.i47.i, -1
  %i.rh = icmp sgt i32 %.010.i.i47.i, 1
  br i1 %i.rh, label %bb.at, label %.critedge.i.i, !llvm.loop !27

bb.av:                                            ; preds = %bb.at
  %i.ri = icmp samesign ugt i64 %indvars.iv112.i.i, 1
  br i1 %i.ri, label %bb.aw, label %.critedge71.i.i

bb.aw:                                            ; preds = %bb.av
  %indvars.iv.next113.i.i = add nsw i64 %indvars.iv112.i.i, -1 ; 2 uses
  %i.rj = sub nsw i64 %i.qx, %indvars.iv.next113.i.i
  %i.rk = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.rj
  %i.rl = trunc nuw nsw i64 %indvars.iv.next113.i.i to i32 ; 2 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.az, %bb.aw
  %.010.i.i47.i.1 = phi i32 [ %i.rl, %bb.aw ], [ %i.rr, %bb.az ] ; 2 uses
  %.069.i.i48.i.1 = phi ptr [ %i.qw, %bb.aw ], [ %i.rq, %bb.az ] ; 2 uses
  %.078.i.i49.i.1 = phi ptr [ %i.rk, %bb.aw ], [ %i.rp, %bb.az ] ; 2 uses
  %i.rm = load i32, ptr %.078.i.i49.i.1, align 4
  %i.rn = load i32, ptr %.069.i.i48.i.1, align 4
  %i.ro = icmp eq i32 %i.rm, %i.rn
  br i1 %i.ro, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %indvars.iv.next113.i.i.1 = add nsw i64 %indvars.iv112.i.i, -2
  br label %bb.as

bb.az:                                            ; preds = %bb.ax
  %i.rp = getelementptr inbounds nuw i8, ptr %.078.i.i49.i.1, i64 4
  %i.rq = getelementptr inbounds nuw i8, ptr %.069.i.i48.i.1, i64 4
  %i.rr = add nsw i32 %.010.i.i47.i.1, -1
  %i.rs = icmp sgt i32 %.010.i.i47.i.1, 1
  br i1 %i.rs, label %bb.ax, label %.critedge.i.i, !llvm.loop !27

.critedge71.i.i:                                  ; preds = %bb.av
  %.old.i50.i = icmp slt i32 %.061.ph95.i.i, %.us-phi85.i.i
  %i.rt = ashr i32 %.us-phi85.i.i, 6
  %i.ru = sext i32 %i.rt to i64
  %i.rv = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.ru ; 2 uses
  br i1 %.old.i50.i, label %.critedge.thread.i.i, label %bb.ba

.critedge.thread.i.i:                             ; preds = %.critedge71.i.i
  store i32 %.061.ph95.i.i, ptr %i.rv, align 4
  br label %.lr.ph91.preheader.i.i

.critedge.i.i:                                    ; preds = %bb.au, %bb.az
  %.lcssa1761 = phi i32 [ %i.rl, %bb.az ], [ %i.ra, %bb.au ] ; 3 uses
  %i.rw = sub nsw i32 %.061.ph95.i.i, %.lcssa1761
  %i.rx = ashr i32 %.us-phi85.i.i, 6
  %i.ry = sext i32 %i.rx to i64
  %i.rz = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.ry
  store i32 %i.rw, ptr %i.rz, align 4
  %i.sa = add i32 %.us-phi85.i.i, %.lcssa1761
  %3 = sub nuw nsw i32 64, %.lcssa1761
  %.pre705.i = sext i32 %i.sa to i64
  br label %.lr.ph91.preheader.i.i

.lr.ph91.preheader.i.i:                           ; preds = %.critedge.i.i, %.critedge.thread.i.i
  %.pre-phi709.i = phi i64 [ %.pre705.i, %.critedge.i.i ], [ %i.qv, %.critedge.thread.i.i ] ; 5 uses
  %.080133.i.i = phi i32 [ %3, %.critedge.i.i ], [ 64, %.critedge.thread.i.i ] ; 5 uses
  %i.sb = zext nneg i32 %.080133.i.i to i64       ; 2 uses
  %min.iters.check1658 = icmp samesign ult i32 %.080133.i.i, 8
  br i1 %min.iters.check1658, label %.lr.ph91.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph91.preheader.i.i
  %i.sc = sub nsw i64 %i.qx, %.pre-phi709.i
  %i.sd = shl nsw i64 %i.sc, 2
  %i.se = add nsw i64 %i.sd, -1
  %diff.check = icmp ult i64 %i.se, 31
  br i1 %diff.check, label %.lr.ph91.i.i.preheader, label %vector.ph1659

vector.ph1659:                                    ; preds = %vector.memcheck
  %n.vec1660 = and i64 %i.sb, 120                 ; 5 uses
  %i.sf = add nsw i64 %.pre-phi709.i, %n.vec1660  ; 2 uses
  %i.sg = add nsw i64 %n.vec1660, %i.qx           ; 2 uses
  %i.sh = trunc nuw nsw i64 %n.vec1660 to i32
  %i.si = sub nsw i32 %.080133.i.i, %i.sh
  %i.sj = getelementptr [4 x i8], ptr %i.w, i64 %.pre-phi709.i
  %invariant.gep2475 = getelementptr [4 x i8], ptr %i.w, i64 %i.qx
  br label %vector.body1661

vector.body1661:                                  ; preds = %vector.body1661, %vector.ph1659
  %index1662 = phi i64 [ 0, %vector.ph1659 ], [ %index.next1664, %vector.body1661 ] ; 3 uses
  %i.sk = getelementptr [4 x i8], ptr %i.sj, i64 %index1662 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  %wide.load = load <4 x i32>, ptr %i.sk, align 4
  %wide.load1663 = load <4 x i32>, ptr %i.sl, align 4
  %gep2476 = getelementptr [4 x i8], ptr %invariant.gep2475, i64 %index1662 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %gep2476, i64 16
  store <4 x i32> %wide.load, ptr %gep2476, align 4
  store <4 x i32> %wide.load1663, ptr %i.sm, align 4
  %index.next1664 = add nuw i64 %index1662, 8     ; 2 uses
  %i.sn = icmp eq i64 %index.next1664, %n.vec1660
  br i1 %i.sn, label %middle.block1665, label %vector.body1661, !llvm.loop !30

middle.block1665:                                 ; preds = %vector.body1661
  %cmp.n1666 = icmp eq i64 %n.vec1660, %i.sb
  br i1 %cmp.n1666, label %.outer.loopexit.i52.i, label %.lr.ph91.i.i.preheader

.lr.ph91.i.i.preheader:                           ; preds = %vector.memcheck, %.lr.ph91.preheader.i.i, %middle.block1665
  %indvars.iv120.i.i.ph = phi i64 [ %.pre-phi709.i, %vector.memcheck ], [ %.pre-phi709.i, %.lr.ph91.preheader.i.i ], [ %i.sf, %middle.block1665 ]
  %indvars.iv118.i.i.ph = phi i64 [ %i.qx, %vector.memcheck ], [ %i.qx, %.lr.ph91.preheader.i.i ], [ %i.sg, %middle.block1665 ]
  %.16788.i.i.ph = phi i32 [ %.080133.i.i, %vector.memcheck ], [ %.080133.i.i, %.lr.ph91.preheader.i.i ], [ %i.si, %middle.block1665 ]
  br label %.lr.ph91.i.i

.lr.ph91.i.i:                                     ; preds = %.lr.ph91.i.i.preheader, %.lr.ph91.i.i
  %indvars.iv120.i.i = phi i64 [ %indvars.iv.next121.i.i, %.lr.ph91.i.i ], [ %indvars.iv120.i.i.ph, %.lr.ph91.i.i.preheader ] ; 2 uses
  %indvars.iv118.i.i = phi i64 [ %indvars.iv.next119.i.i, %.lr.ph91.i.i ], [ %indvars.iv118.i.i.ph, %.lr.ph91.i.i.preheader ] ; 2 uses
  %.16788.i.i = phi i32 [ %i.sr, %.lr.ph91.i.i ], [ %.16788.i.i.ph, %.lr.ph91.i.i.preheader ] ; 2 uses
  %indvars.iv.next121.i.i = add nsw i64 %indvars.iv120.i.i, 1 ; 2 uses
  %i.so = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv120.i.i
  %i.sp = load i32, ptr %i.so, align 4
  %indvars.iv.next119.i.i = add nsw i64 %indvars.iv118.i.i, 1 ; 2 uses
  %i.sq = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv118.i.i
  store i32 %i.sp, ptr %i.sq, align 4
  %i.sr = add nsw i32 %.16788.i.i, -1
  %i.ss = icmp samesign ugt i32 %.16788.i.i, 1
  br i1 %i.ss, label %.lr.ph91.i.i, label %.outer.loopexit.i52.i, !llvm.loop !31

bb.ba:                                            ; preds = %.critedge71.i.i
  store i32 %.us-phi85.i.i, ptr %i.rv, align 4
  %i.st = add nsw i32 %.us-phi85.i.i, 64          ; 2 uses
  br label %.outer.i51.i

.outer.loopexit.i52.i:                            ; preds = %.lr.ph91.i.i, %middle.block1665
  %indvars.iv.next121.i.i.lcssa = phi i64 [ %i.sf, %middle.block1665 ], [ %indvars.iv.next121.i.i, %.lr.ph91.i.i ]
  %indvars.iv.next119.i.i.lcssa = phi i64 [ %i.sg, %middle.block1665 ], [ %indvars.iv.next119.i.i, %.lr.ph91.i.i ]
  %i.su = trunc nsw i64 %indvars.iv.next121.i.i.lcssa to i32
  %i.sv = trunc nsw i64 %indvars.iv.next119.i.i.lcssa to i32
  br label %.outer.i51.i

.outer.i51.i:                                     ; preds = %.outer.loopexit.i52.i, %bb.ba
  %.365.i.i = phi i32 [ %i.st, %bb.ba ], [ %i.su, %.outer.loopexit.i52.i ] ; 2 uses
  %.2.i.i = phi i32 [ %i.st, %bb.ba ], [ %i.sv, %.outer.loopexit.i52.i ] ; 2 uses
  %i.sw = load i32, ptr %i.jj, align 8
  %i.sx = icmp slt i32 %.365.i.i, %i.sw
  br i1 %i.sx, label %.lr.ph.i38.i, label %.preheader.i35.i, !llvm.loop !29

bb.bb:                                            ; preds = %bb.bb, %.preheader.i35.i
  %indvars.iv125.i.i = phi i64 [ 0, %.preheader.i35.i ], [ %indvars.iv.next126.i.i.1, %bb.bb ] ; 3 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv125.i.i ; 2 uses
  %i.sz = load i32, ptr %i.sy, align 4
  %i.ta = ashr i32 %i.sz, 6
  %i.tb = sext i32 %i.ta to i64
  %i.tc = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.tb
  %i.td = load i32, ptr %i.tc, align 4
  store i32 %i.td, ptr %i.sy, align 4
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv125.i.i
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 4 ; 2 uses
  %i.tg = load i32, ptr %i.tf, align 4
  %i.th = ashr i32 %i.tg, 6
  %i.ti = sext i32 %i.th to i64
  %i.tj = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.ti
  %i.tk = load i32, ptr %i.tj, align 4
  store i32 %i.tk, ptr %i.tf, align 4
  %indvars.iv.next126.i.i.1 = add nuw nsw i64 %indvars.iv125.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next126.i.i.1, 544
  br i1 %exitcond.not.i.i.1, label %bb.bc, label %bb.bb, !llvm.loop !32

bb.bc:                                            ; preds = %bb.bb
  %i.tl = load i32, ptr %i.r, align 8
  %i.tm = ashr i32 %i.tl, 6
  %i.tn = sext i32 %i.tm to i64
  %i.to = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.tn
  %i.tp = load i32, ptr %i.to, align 4
  store i32 %i.tp, ptr %i.r, align 8
  %i.tq = and i32 %.061.ph.lcssa.i.i, 3
  %.not98.i.i = icmp eq i32 %i.tq, 0
  br i1 %.not98.i.i, label %_ZL13compactIndex2P9UNewTrie2.exit.i, label %.lr.ph100.i.i

.lr.ph100.i.i:                                    ; preds = %bb.bc
  %i.tr = sext i32 %.061.ph.lcssa.i.i to i64      ; 4 uses
  %indvars.iv.next129.i.i = add nsw i64 %i.tr, 1  ; 2 uses
  %i.ts = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.tr
  store i32 262140, ptr %i.ts, align 4
  %i.tt = trunc nsw i64 %indvars.iv.next129.i.i to i32 ; 2 uses
  %i.tu = and i32 %i.tt, 3
  %.not.i36.i = icmp eq i32 %i.tu, 0
  br i1 %.not.i36.i, label %_ZL13compactIndex2P9UNewTrie2.exit.i, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph100.i.i
  %indvars.iv.next129.i.i.1 = add nsw i64 %i.tr, 2 ; 2 uses
  %i.tv = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv.next129.i.i
  store i32 262140, ptr %i.tv, align 4
  %i.tw = trunc nsw i64 %indvars.iv.next129.i.i.1 to i32 ; 2 uses
  %i.tx = and i32 %i.tw, 3
  %.not.i36.i.1 = icmp eq i32 %i.tx, 0
  br i1 %.not.i36.i.1, label %_ZL13compactIndex2P9UNewTrie2.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %indvars.iv.next129.i.i.2 = add nsw i64 %i.tr, 3 ; 2 uses
  %i.ty = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv.next129.i.i.1
  store i32 262140, ptr %i.ty, align 4
  %i.tz = trunc nsw i64 %indvars.iv.next129.i.i.2 to i32 ; 2 uses
  %i.ua = and i32 %i.tz, 3
  %.not.i36.i.2 = icmp eq i32 %i.ua, 0
  br i1 %.not.i36.i.2, label %_ZL13compactIndex2P9UNewTrie2.exit.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %indvars.iv.next129.i.i.3 = add i32 %.061.ph.lcssa.i.i, 4
  %i.ub = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv.next129.i.i.2
  store i32 262140, ptr %i.ub, align 4
  br label %_ZL13compactIndex2P9UNewTrie2.exit.i

_ZL13compactIndex2P9UNewTrie2.exit.i:             ; preds = %.lr.ph100.i.i, %bb.bd, %bb.be, %bb.bf, %bb.bc
  %.3.lcssa.i.i = phi i32 [ %.061.ph.lcssa.i.i, %bb.bc ], [ %i.tt, %.lr.ph100.i.i ], [ %i.tw, %bb.bd ], [ %i.tz, %bb.be ], [ %indvars.iv.next129.i.i.3, %bb.bf ]
  store i32 %.3.lcssa.i.i, ptr %i.jj, align 8
  %.pre.i = load i32, ptr %i.jg, align 8
  br label %bb.bg

bb.bg:                                            ; preds = %_ZL13compactIndex2P9UNewTrie2.exit.i, %_ZL11compactDataP9UNewTrie2.exit.i
  %i.uc = phi i32 [ %.pre.i, %_ZL13compactIndex2P9UNewTrie2.exit.i ], [ %.3102.lcssa.i.i, %_ZL11compactDataP9UNewTrie2.exit.i ] ; 2 uses
  %i.ud = load ptr, ptr %i.n, align 8
  %i.ue = add nsw i32 %i.uc, 1
  store i32 %i.ue, ptr %i.jg, align 8
  %i.uf = sext i32 %i.uc to i64
  %i.ug = getelementptr inbounds [4 x i8], ptr %i.ud, i64 %i.uf
  store i32 %.056.i, ptr %i.ug, align 4
  %i.uh = load i32, ptr %i.jg, align 8            ; 2 uses
  %i.ui = and i32 %i.uh, 3
  %.not29382.i = icmp eq i32 %i.ui, 0
  br i1 %.not29382.i, label %_ZL11compactTrieP6UTrie2P10UErrorCode.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bg
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.lr.ph.i
  %i.uk = phi i32 [ %i.uh, %.lr.ph.i ], [ %i.uq, %bb.bh ] ; 2 uses
  %i.ul = load i32, ptr %i.uj, align 4
  %i.um = load ptr, ptr %i.n, align 8
  %i.un = add nsw i32 %i.uk, 1
  store i32 %i.un, ptr %i.jg, align 8
  %i.uo = sext i32 %i.uk to i64
  %i.up = getelementptr inbounds [4 x i8], ptr %i.um, i64 %i.uo
  store i32 %i.ul, ptr %i.up, align 4
  %i.uq = load i32, ptr %i.jg, align 8            ; 2 uses
  %i.ur = and i32 %i.uq, 3
  %.not29.i = icmp eq i32 %i.ur, 0
  br i1 %.not29.i, label %_ZL11compactTrieP6UTrie2P10UErrorCode.exit, label %bb.bh, !llvm.loop !33

_ZL11compactTrieP6UTrie2P10UErrorCode.exit:       ; preds = %bb.bh, %bb.bg
  store i8 1, ptr %i.k, align 4
  %.pre = load i32, ptr %2, align 4
  %i.us = icmp slt i32 %.pre, 1
  br i1 %i.us, label %bb.bi, label %_ZL11compactTrieP6UTrie2P10UErrorCode.exit.thread

bb.bi:                                            ; preds = %_ZL11compactTrieP6UTrie2P10UErrorCode.exit, %bb.g
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.uu = load i32, ptr %i.ut, align 4            ; 4 uses
  %i.uv = icmp slt i32 %i.uu, 65537               ; 2 uses
  br i1 %i.uv, label %.thread, label %bb.bj

.thread:                                          ; preds = %bb.bi
  %i.uw = icmp eq i32 %1, 0                       ; 2 uses
  %.0127.149 = select i1 %i.uw, i32 2112, i32 0
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.ux = getelementptr inbounds nuw i8, ptr %i.f, i64 144144
  %i.uy = load i32, ptr %i.ux, align 8            ; 3 uses
  %i.uz = icmp eq i32 %1, 0                       ; 2 uses
  %.0127. = select i1 %i.uz, i32 %i.uy, i32 0
  %i.va = icmp sgt i32 %i.uy, 65535
  br i1 %i.va, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %.thread, %bb.bj
  %.0127.151 = phi i32 [ %.0127.149, %.thread ], [ %.0127., %bb.bj ] ; 44 uses
  %i.vb = phi i1 [ %i.uw, %.thread ], [ %i.uz, %bb.bj ]
  %.0127150 = phi i32 [ 2112, %.thread ], [ %i.uy, %bb.bj ] ; 3 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.f, i64 144164 ; 2 uses
  %i.vd = load i32, ptr %i.vc, align 4
  %i.ve = add nsw i32 %i.vd, %.0127.151
  %i.vf = icmp sgt i32 %i.ve, 65535
  %i.vg = icmp sgt i32 %.0127.151, 63359
  %or.cond = or i1 %i.vg, %i.vf
  br i1 %or.cond, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.vh = getelementptr inbounds nuw i8, ptr %i.f, i64 144152 ; 4 uses
  %i.vi = load i32, ptr %i.vh, align 8            ; 2 uses
  %i.vj = add nsw i32 %i.vi, %.0127.151
  %i.vk = icmp sgt i32 %i.vj, 262140
  br i1 %i.vk, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj
  store i32 8, ptr %2, align 4
  br label %_ZL11compactTrieP6UTrie2P10UErrorCode.exit.thread

bb.bn:                                            ; preds = %bb.bl
  %i.vl = shl nsw i32 %.0127150, 1
  %i.vm = add nsw i32 %i.vl, 16
  %.pn.v = select i1 %i.vb, i32 1, i32 2
  %.pn = shl nsw i32 %i.vi, %.pn.v
  %.0128 = add nsw i32 %i.vm, %.pn                ; 2 uses
  %i.vn = sext i32 %.0128 to i64
  %i.vo = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.vn) #7 ; 13 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.vo, ptr %i.vp, align 8
  %i.vq = icmp eq ptr %i.vo, null
  br i1 %i.vq, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i32 7, ptr %2, align 4
  br label %_ZL11compactTrieP6UTrie2P10UErrorCode.exit.thread

bb.bp:                                            ; preds = %bb.bn
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %.0128, ptr %i.vr, align 8
  %i.vs = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i8 1, ptr %i.vs, align 4
  %i.vt = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0127150, ptr %i.vt, align 8
  %i.vu = load i32, ptr %i.vh, align 8            ; 3 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.vu, ptr %i.vv, align 4
  br i1 %i.uv, label %vector.memcheck1670, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.vw = getelementptr inbounds nuw i8, ptr %i.f, i64 144160
  %i.vx = load i32, ptr %i.vw, align 8
  %i.vy = trunc i32 %i.vx to i16
  br label %vector.memcheck1670

vector.memcheck1670:                              ; preds = %bb.bp, %bb.bq
  %.sink = phi i16 [ %i.vy, %bb.bq ], [ -1, %bb.bp ] ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 %.sink, ptr %i.vz, align 8
  %i.wa = load i32, ptr %i.vc, align 4
  %i.wb = add nsw i32 %i.wa, %.0127.151
  %i.wc = trunc i32 %i.wb to i16                  ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i16 %i.wc, ptr %i.wd, align 2
  %i.we = add i32 %.0127.151, -4
end_hunk_0
