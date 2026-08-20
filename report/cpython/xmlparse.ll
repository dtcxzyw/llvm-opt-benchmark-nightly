inline.NumInlined: 273
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@storeAtts:bb.a
keylen.exit:                                      ; preds = %bb.br, %.lr.ph.preheader.i
  %.0.lcssa.i = phi i64 [ 0, %bb.br ], [ %i.mp, %.lr.ph.preheader.i ]
  %i.mq = call fastcc ptr @sip24_update(ptr noundef %6, ptr noundef nonnull %i.mm, i64 noundef %.0.lcssa.i) ; 0 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bu, %keylen.exit
  %.1406 = phi ptr [ %i.mm, %keylen.exit ], [ %i.my, %bb.bu ] ; 3 uses
  %i.mr = load ptr, ptr %i.ji, align 8, !tbaa !175 ; 2 uses
  %i.ms = load ptr, ptr %i.jj, align 8, !tbaa !176
  %i.mt = icmp eq ptr %i.mr, %i.ms
  br i1 %i.mt, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.mu = call fastcc zeroext i8 @poolGrow(ptr noundef %i.jk)
  %.not527 = icmp eq i8 %i.mu, 0
  br i1 %.not527, label %.thread664, label %._crit_edge864

._crit_edge864:                                   ; preds = %bb.bt
  %.pre865 = load ptr, ptr %i.ji, align 8, !tbaa !175
  br label %bb.bu

bb.bu:                                            ; preds = %._crit_edge864, %bb.bs
  %i.mv = phi ptr [ %.pre865, %._crit_edge864 ], [ %i.mr, %bb.bs ] ; 2 uses
  %i.mw = load i8, ptr %.1406, align 1, !tbaa !10
  %i.mx = getelementptr i8, ptr %i.mv, i64 1
  store ptr %i.mx, ptr %i.ji, align 8, !tbaa !175
  store i8 %i.mw, ptr %i.mv, align 1, !tbaa !10
  %i.my = getelementptr i8, ptr %.1406, i64 1
  %i.mz = load i8, ptr %.1406, align 1, !tbaa !10
  %.not528 = icmp eq i8 %i.mz, 0
  br i1 %.not528, label %bb.bv, label %bb.bs, !llvm.loop !377

bb.bv:                                            ; preds = %bb.bu
  %i.na = call fastcc i64 @sip24_final(ptr noundef %6) ; 4 uses
  %i.nb = trunc i64 %i.na to i32
  %i.nc = and i32 %i.jl, %i.nb                    ; 2 uses
  %i.nd = load ptr, ptr %i.jn, align 8, !tbaa !183 ; 3 uses
  %i.ne = zext nneg i32 %i.nc to i64              ; 2 uses
  %i.nf = getelementptr [24 x i8], ptr %i.nd, i64 %i.ne ; 2 uses
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !370
  %.not531783 = icmp eq i64 %i.ng, %i.ix
  br i1 %.not531783, label %.lr.ph787, label %.thread641

.lr.ph787:                                        ; preds = %bb.bv
  %i.nh = and i64 %i.na, %i.jp
  br label %bb.bw

bb.bw:                                            ; preds = %.lr.ph787, %bb.ca
  %i.ni = phi ptr [ %i.nf, %.lr.ph787 ], [ %i.oi, %bb.ca ] ; 2 uses
  %.0404785 = phi i8 [ 0, %.lr.ph787 ], [ %.1, %bb.ca ] ; 2 uses
  %.2414784 = phi i32 [ %i.nc, %.lr.ph787 ], [ %.3, %bb.ca ] ; 2 uses
  %i.nj = getelementptr i8, ptr %i.ni, i64 8
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !378
  %i.nl = icmp eq i64 %i.na, %i.nk
  br i1 %i.nl, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.nm = load ptr, ptr %i.jo, align 8, !tbaa !177 ; 2 uses
  %i.nn = getelementptr i8, ptr %i.ni, i64 16
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !379 ; 2 uses
  %i.np = load i8, ptr %i.nm, align 1, !tbaa !10  ; 2 uses
  %i.nq = load i8, ptr %i.no, align 1, !tbaa !10
  %i.nr = icmp ne i8 %i.np, %i.nq
  %.not529776 = icmp eq i8 %i.np, 0               ; 2 uses
  %or.cond569777 = or i1 %.not529776, %i.nr
  br i1 %or.cond569777, label %.critedge, label %.lr.ph781

.lr.ph781:                                        ; preds = %bb.bx, %.lr.ph781
  %.0402779 = phi ptr [ %i.nt, %.lr.ph781 ], [ %i.no, %bb.bx ]
  %.0403778 = phi ptr [ %i.ns, %.lr.ph781 ], [ %i.nm, %bb.bx ]
  %i.ns = getelementptr i8, ptr %.0403778, i64 1  ; 2 uses
  %i.nt = getelementptr i8, ptr %.0402779, i64 1  ; 2 uses
  %i.nu = load i8, ptr %i.ns, align 1, !tbaa !10  ; 2 uses
  %i.nv = load i8, ptr %i.nt, align 1, !tbaa !10
  %i.nw = icmp ne i8 %i.nu, %i.nv
  %.not529 = icmp eq i8 %i.nu, 0                  ; 2 uses
  %or.cond569 = or i1 %.not529, %i.nw
  br i1 %or.cond569, label %.critedge, label %.lr.ph781, !llvm.loop !380

.critedge:                                        ; preds = %.lr.ph781, %bb.bx
  %.not529.lcssa = phi i1 [ %.not529776, %bb.bx ], [ %.not529, %.lr.ph781 ]
  br i1 %.not529.lcssa, label %.thread664, label %bb.by

bb.by:                                            ; preds = %.critedge, %bb.bw
  %.not536 = icmp eq i8 %.0404785, 0
  br i1 %.not536, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.nx = load i8, ptr %i.hl, align 8, !tbaa !367
  %i.ny = zext i8 %i.nx to i64
  %i.nz = add nuw nsw i64 %i.ny, 4294967295
  %i.oa = and i64 %i.nz, 4294967295
  %i.ob = lshr i64 %i.nh, %i.oa
  %i.oc = and i64 %i.ob, %i.jq
  %i.od = trunc i64 %i.oc to i8
  %i.oe = or i8 %i.od, 1
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.1 = phi i8 [ %.0404785, %bb.by ], [ %i.oe, %bb.bz ] ; 2 uses
  %i.of = zext i8 %.1 to i32                      ; 2 uses
  %i.og = icmp ult i32 %.2414784, %i.of
  %.3.p.v = select i1 %i.og, i32 %.1408926, i32 0
  %.3.p = sub i32 %.2414784, %i.of
  %.3 = add i32 %.3.p, %.3.p.v                    ; 2 uses
  %i.oh = zext i32 %.3 to i64                     ; 2 uses
  %i.oi = getelementptr [24 x i8], ptr %i.nd, i64 %i.oh ; 2 uses
  %i.oj = load i64, ptr %i.oi, align 8, !tbaa !370
  %.not531 = icmp eq i64 %i.oj, %i.ix
  br i1 %.not531, label %bb.bw, label %.thread641, !llvm.loop !381

.thread641:                                       ; preds = %bb.ca, %bb.bv
  %.lcssa717 = phi i64 [ %i.ne, %bb.bv ], [ %i.oh, %bb.ca ]
  %i.ok = load i8, ptr %i.jr, align 1, !tbaa !76
  %.not532 = icmp eq i8 %i.ok, 0
  br i1 %.not532, label %.loopexit686, label %bb.cb

bb.cb:                                            ; preds = %.thread641
  %i.ol = load i8, ptr %i.js, align 4, !tbaa !74
  %i.om = load ptr, ptr %i.ji, align 8, !tbaa !175
  %i.on = getelementptr i8, ptr %i.om, i64 -1
  store i8 %i.ol, ptr %i.on, align 1, !tbaa !10
  %i.oo = load ptr, ptr %i.ls, align 8, !tbaa !339
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !148
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ce, %bb.cb
  %.2 = phi ptr [ %i.op, %bb.cb ], [ %i.ox, %bb.ce ] ; 3 uses
  %i.oq = load ptr, ptr %i.ji, align 8, !tbaa !175 ; 2 uses
  %i.or = load ptr, ptr %i.jj, align 8, !tbaa !176
  %i.os = icmp eq ptr %i.oq, %i.or
  br i1 %i.os, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.ot = call fastcc zeroext i8 @poolGrow(ptr noundef %i.jk)
  %.not533 = icmp eq i8 %i.ot, 0
  br i1 %.not533, label %.thread664, label %._crit_edge866

._crit_edge866:                                   ; preds = %bb.cd
  %.pre867 = load ptr, ptr %i.ji, align 8, !tbaa !175
  br label %bb.ce

bb.ce:                                            ; preds = %._crit_edge866, %bb.cc
  %i.ou = phi ptr [ %.pre867, %._crit_edge866 ], [ %i.oq, %bb.cc ] ; 2 uses
  %i.ov = load i8, ptr %.2, align 1, !tbaa !10
  %i.ow = getelementptr i8, ptr %i.ou, i64 1
  store ptr %i.ow, ptr %i.ji, align 8, !tbaa !175
  store i8 %i.ov, ptr %i.ou, align 1, !tbaa !10
  %i.ox = getelementptr i8, ptr %.2, i64 1
  %i.oy = load i8, ptr %.2, align 1, !tbaa !10
  %.not534 = icmp eq i8 %i.oy, 0
  br i1 %.not534, label %.loopexit686.loopexit, label %bb.cc, !llvm.loop !382

.loopexit686.loopexit:                            ; preds = %bb.ce
  %.pre868 = load ptr, ptr %i.jn, align 8, !tbaa !183
  br label %.loopexit686

.loopexit686:                                     ; preds = %.loopexit686.loopexit, %.thread641
  %i.oz = phi ptr [ %.pre868, %.loopexit686.loopexit ], [ %i.nd, %.thread641 ]
  %i.pa = load ptr, ptr %i.jo, align 8, !tbaa !177 ; 2 uses
  %i.pb = load ptr, ptr %i.ji, align 8, !tbaa !175
  store ptr %i.pb, ptr %i.jo, align 8, !tbaa !177
  store ptr %i.pa, ptr %i.ju, align 8, !tbaa !49
  %i.pc = getelementptr [24 x i8], ptr %i.oz, i64 %.lcssa717 ; 3 uses
  store i64 %i.ix, ptr %i.pc, align 8, !tbaa !370
  %i.pd = getelementptr i8, ptr %i.pc, i64 8
  store i64 %i.na, ptr %i.pd, align 8, !tbaa !378
  %i.pe = getelementptr i8, ptr %i.pc, i64 16
  store ptr %i.pa, ptr %i.pe, align 8, !tbaa !379
  %i.pf = add i32 %.6432790, -1                   ; 2 uses
  %.not535 = icmp eq i32 %i.pf, 0
  br i1 %.not535, label %bb.ci, label %bb.cf

bb.cf:                                            ; preds = %.loopexit686
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.ch

bb.cg:                                            ; preds = %bb.be
  store i8 0, ptr %i.jw, align 1, !tbaa !10
  br label %bb.ch

.thread664:                                       ; preds = %lookup.exit597, %bb.bm, %copy_salt_to_sipkey.exit, %bb.bh, %bb.bl, %bb.bo, %bb.bt, %.critedge, %bb.cd
  %.23.ph.ph = phi i32 [ 1, %bb.bo ], [ 8, %.critedge ], [ 1, %bb.bt ], [ 1, %bb.bl ], [ 1, %bb.cd ], [ 1, %copy_salt_to_sipkey.exit ], [ 1, %lookup.exit597 ], [ 1, %bb.bh ], [ 27, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.critedge565

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.9435.ph = phi i32 [ %i.pf, %bb.cf ], [ %.6432790, %bb.cg ]
  %i.pg = add i32 %.3439789, 2                    ; 3 uses
  %i.ph = icmp slt i32 %i.pg, %.4455.lcssa
  br i1 %i.ph, label %bb.be, label %.thread674, !llvm.loop !383

bb.ci:                                            ; preds = %.loopexit686
  %i.pi = add i32 %.3439789, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.thread674

.thread674:                                       ; preds = %bb.ch, %.loopexit694, %bb.ci, %._crit_edge767
  %.10446 = phi i32 [ 0, %._crit_edge767 ], [ %i.pi, %bb.ci ], [ 0, %.loopexit694 ], [ %i.pg, %bb.ch ] ; 2 uses
  %i.pj = icmp slt i32 %.10446, %.4455.lcssa
  br i1 %i.pj, label %.lr.ph795, label %.preheader685

.preheader685:                                    ; preds = %.lr.ph795, %.thread674
  %.0424796 = load ptr, ptr %4, align 8, !tbaa !336 ; 2 uses
  %.not538797 = icmp eq ptr %.0424796, null
  br i1 %.not538797, label %._crit_edge800, label %.lr.ph799

.lr.ph795:                                        ; preds = %.thread674, %.lr.ph795
  %.11447794 = phi i32 [ %8, %.lr.ph795 ], [ %.10446, %.thread674 ] ; 2 uses
  %7 = sext i32 %.11447794 to i64
  %i.pk = getelementptr [8 x i8], ptr %i.cl, i64 %7
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !49
  %i.pm = getelementptr i8, ptr %i.pl, i64 -1
  store i8 0, ptr %i.pm, align 1, !tbaa !10
  %8 = add i32 %.11447794, 2                      ; 2 uses
  %9 = icmp slt i32 %8, %.4455.lcssa
  br i1 %9, label %.lr.ph795, label %.preheader685, !llvm.loop !384

.lr.ph799:                                        ; preds = %.preheader685, %.lr.ph799
  %.0424798 = phi ptr [ %.0424, %.lr.ph799 ], [ %.0424796, %.preheader685 ] ; 2 uses
  %i.pn = getelementptr i8, ptr %.0424798, i64 24
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !385
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !155
  %i.pq = getelementptr i8, ptr %i.pp, i64 -1
  store i8 0, ptr %i.pq, align 1, !tbaa !10
  %i.pr = getelementptr i8, ptr %.0424798, i64 8
  %.0424 = load ptr, ptr %i.pr, align 8, !tbaa !336 ; 2 uses
  %.not538 = icmp eq ptr %.0424, null
  br i1 %.not538, label %._crit_edge800, label %.lr.ph799, !llvm.loop !386

._crit_edge800:                                   ; preds = %.lr.ph799, %.preheader685
  %i.ps = getelementptr i8, ptr %0, i64 472
  %i.pt = load i8, ptr %i.ps, align 8, !tbaa !75
  %.not539 = icmp eq i8 %i.pt, 0
  br i1 %.not539, label %.critedge565, label %bb.cj

bb.cj:                                            ; preds = %._crit_edge800
  %i.pu = getelementptr i8, ptr %.1459, i64 8
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !167 ; 2 uses
  %.not540 = icmp eq ptr %i.pv, null
  br i1 %.not540, label %bb.cn, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.pw = getelementptr i8, ptr %i.pv, i64 8
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !340 ; 2 uses
  %.not542 = icmp eq ptr %i.px, null
  br i1 %.not542, label %.critedge565, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.py = load ptr, ptr %3, align 8, !tbaa !337
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cm, %bb.cl
  %.0422 = phi ptr [ %i.py, %bb.cl ], [ %i.pz, %bb.cm ] ; 2 uses
  %i.pz = getelementptr i8, ptr %.0422, i64 1     ; 2 uses
  %i.qa = load i8, ptr %.0422, align 1, !tbaa !10
  %.not543 = icmp eq i8 %i.qa, 58
  br i1 %.not543, label %.loopexit684, label %bb.cm, !llvm.loop !387

bb.cn:                                            ; preds = %bb.cj
  %i.qb = getelementptr i8, ptr %i.c, i64 312
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !351 ; 2 uses
  %.not541 = icmp eq ptr %i.qc, null
  br i1 %.not541, label %.critedge565, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.qd = load ptr, ptr %3, align 8, !tbaa !337
  br label %.loopexit684

.loopexit684:                                     ; preds = %bb.cm, %bb.co
  %.1425 = phi ptr [ %i.qc, %bb.co ], [ %i.px, %bb.cm ] ; 7 uses
  %.1423 = phi ptr [ %i.qd, %bb.co ], [ %i.pz, %bb.cm ] ; 3 uses
  %i.qe = getelementptr i8, ptr %0, i64 473
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !76
  %.not544 = icmp eq i8 %i.qf, 0
  %.pre869 = load ptr, ptr %.1425, align 8, !tbaa !339
  %.pre870 = load ptr, ptr %.pre869, align 8, !tbaa !148 ; 3 uses
  %.not545 = icmp eq ptr %.pre870, null
  %or.cond975 = select i1 %.not544, i1 true, i1 %.not545
  br i1 %or.cond975, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit684, %.preheader
  %.0449 = phi i32 [ %i.qg, %.preheader ], [ 0, %.loopexit684 ] ; 2 uses
  %i.qg = add i32 %.0449, 1                       ; 2 uses
  %i.qh = sext i32 %.0449 to i64
  %i.qi = getelementptr i8, ptr %.pre870, i64 %i.qh
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !10
  %.not546 = icmp eq i8 %i.qj, 0
  br i1 %.not546, label %.loopexit, label %.preheader, !llvm.loop !388

.loopexit:                                        ; preds = %.preheader, %.loopexit684
  %.1450 = phi i32 [ 0, %.loopexit684 ], [ %i.qg, %.preheader ] ; 5 uses
  %i.qk = getelementptr i8, ptr %3, i64 8
  store ptr %.1423, ptr %i.qk, align 8, !tbaa !389
  %i.ql = getelementptr i8, ptr %.1425, i64 40    ; 3 uses
  %i.qm = load i32, ptr %i.ql, align 8, !tbaa !352 ; 4 uses
  %i.qn = getelementptr i8, ptr %3, i64 28
  store i32 %i.qm, ptr %i.qn, align 4, !tbaa !390
  %i.qo = getelementptr i8, ptr %3, i64 16
  store ptr %.pre870, ptr %i.qo, align 8, !tbaa !391
  %i.qp = getelementptr i8, ptr %3, i64 32
  store i32 %.1450, ptr %i.qp, align 8, !tbaa !392
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cp, %.loopexit
  %.12448 = phi i32 [ 0, %.loopexit ], [ %i.qq, %bb.cp ] ; 2 uses
  %i.qq = add i32 %.12448, 1                      ; 4 uses
  %i.qr = sext i32 %.12448 to i64                 ; 2 uses
  %i.qs = getelementptr i8, ptr %.1423, i64 %i.qr
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !10
  %.not547 = icmp eq i8 %i.qt, 0
  br i1 %.not547, label %bb.cq, label %bb.cp, !llvm.loop !393

bb.cq:                                            ; preds = %bb.cp
  %i.qu = sub i32 2147483647, %.1450
  %i.qv = icmp sgt i32 %i.qm, %i.qu
  br i1 %i.qv, label %.critedge565, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qw = add i32 %.1450, %i.qm                   ; 2 uses
  %i.qx = sub i32 2147483647, %i.qw
  %i.qy = icmp sgt i32 %i.qq, %i.qx
  br i1 %i.qy, label %.critedge565, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.qz = add i32 %i.qw, %i.qq                    ; 3 uses
  %i.ra = getelementptr i8, ptr %.1425, i64 44    ; 2 uses
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !394
  %i.rc = icmp sgt i32 %i.qz, %i.rb
  br i1 %i.rc, label %bb.ct, label %._crit_edge872

._crit_edge872:                                   ; preds = %bb.cs
  %.phi.trans.insert = getelementptr i8, ptr %.1425, i64 32
  %.pre873 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !186
  br label %bb.cy

bb.ct:                                            ; preds = %bb.cs
  %i.rd = icmp sgt i32 %i.qz, 2147483623
  br i1 %i.rd, label %.critedge565, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.re = add nsw i32 %i.qz, 24                   ; 2 uses
  %i.rf = sext i32 %i.re to i64
  %i.rg = call fastcc ptr @expat_malloc(ptr noundef nonnull %0, i64 noundef %i.rf, i32 noundef 4270) ; 5 uses
  %.not548 = icmp eq ptr %i.rg, null
  br i1 %.not548, label %.critedge565, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  store i32 %i.re, ptr %i.ra, align 4, !tbaa !394
  %i.rh = getelementptr i8, ptr %.1425, i64 32    ; 3 uses
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !186
  %i.rj = load i32, ptr %i.ql, align 8, !tbaa !352
  %i.rk = sext i32 %i.rj to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rg, ptr align 1 %i.ri, i64 %i.rk, i1 false)
  %i.rl = getelementptr i8, ptr %0, i64 736
  %.0801 = load ptr, ptr %i.rl, align 8, !tbaa !307 ; 2 uses
  %.not549802 = icmp eq ptr %.0801, null
  %.pre871 = load ptr, ptr %i.rh, align 8, !tbaa !186 ; 2 uses
  br i1 %.not549802, label %._crit_edge806, label %.lr.ph805

.lr.ph805:                                        ; preds = %bb.cv, %bb.cx
  %.0803 = phi ptr [ %.0, %bb.cx ], [ %.0801, %bb.cv ] ; 2 uses
  %i.rm = getelementptr i8, ptr %.0803, i64 24    ; 2 uses
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !312
  %i.ro = icmp eq ptr %i.rn, %.pre871
  br i1 %i.ro, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %.lr.ph805
  store ptr %i.rg, ptr %i.rm, align 8, !tbaa !312
  br label %bb.cx

bb.cx:                                            ; preds = %.lr.ph805, %bb.cw
  %.0 = load ptr, ptr %.0803, align 8, !tbaa !307 ; 2 uses
  %.not549 = icmp eq ptr %.0, null
  br i1 %.not549, label %._crit_edge806, label %.lr.ph805, !llvm.loop !395

._crit_edge806:                                   ; preds = %bb.cx, %bb.cv
  call fastcc void @expat_free(ptr noundef %0, ptr noundef %.pre871, i32 noundef 4278)
  store ptr %i.rg, ptr %i.rh, align 8, !tbaa !186
  %.pre874 = load i32, ptr %i.ql, align 8, !tbaa !352
  br label %bb.cy

bb.cy:                                            ; preds = %._crit_edge872, %._crit_edge806
  %i.rp = phi i32 [ %i.qm, %._crit_edge872 ], [ %.pre874, %._crit_edge806 ]
  %i.rq = phi ptr [ %.pre873, %._crit_edge872 ], [ %i.rg, %._crit_edge806 ]
  %i.rr = getelementptr i8, ptr %.1425, i64 32
  %i.rs = sext i32 %i.rp to i64
  %i.rt = getelementptr i8, ptr %i.rq, i64 %i.rs  ; 2 uses
  %i.ru = sext i32 %i.qq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rt, ptr align 1 %.1423, i64 %i.ru, i1 false)
  %.not550 = icmp eq i32 %.1450, 0
  br i1 %.not550, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.rv = getelementptr i8, ptr %i.rt, i64 %i.qr  ; 2 uses
  %i.rw = getelementptr i8, ptr %0, i64 940
  %i.rx = load i8, ptr %i.rw, align 4, !tbaa !74
  store i8 %i.rx, ptr %i.rv, align 1, !tbaa !10
  %i.ry = getelementptr i8, ptr %i.rv, i64 1
  %i.rz = load ptr, ptr %.1425, align 8, !tbaa !339
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !148
  %i.sb = sext i32 %.1450 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ry, ptr align 1 %i.sa, i64 %i.sb, i1 false)
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.sc = load ptr, ptr %i.rr, align 8, !tbaa !186
  store ptr %i.sc, ptr %3, align 8, !tbaa !337
  br label %.critedge565

.critedge565:                                     ; preds = %bb.h, %.loopexit699, %poolStoreString.exit, %bb.t, %bb.am, %bb.av, %bb.cu, %bb.ct, %bb.bc, %bb.ba, %bb.aw, %poolStoreString.exit.thread, %bb.w, %bb.v, %.thread664, %bb.n, %bb.p, %bb.j, %poolCopyString.exit, %bb.l, %bb.cq, %bb.cr, %bb.cn, %bb.ck, %._crit_edge800, %lookup.exit, %bb.da
  %.31 = phi i32 [ 1, %bb.cq ], [ 8, %bb.v ], [ 1, %bb.cu ], [ 0, %bb.cn ], [ 0, %bb.da ], [ 1, %bb.bc ], [ 0, %._crit_edge800 ], [ 27, %bb.ck ], [ 1, %lookup.exit ], [ 1, %bb.ba ], [ 1, %bb.j ], [ 1, %bb.cr ], [ 1, %bb.l ], [ 1, %poolCopyString.exit ], [ 1, %bb.p ], [ 1, %bb.n ], [ 1, %bb.aw ], [ %i.gy, %bb.av ], [ %.23.ph.ph, %.thread664 ], [ 1, %poolStoreString.exit.thread ], [ 1, %bb.ct ], [ 8, %bb.w ], [ %i.fu, %bb.am ], [ 1, %poolStoreString.exit ], [ %i.eh, %.loopexit699 ], [ 1, %bb.t ], [ 1, %bb.h ]
  ret i32 %.31
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 44) i32 @epilogProcessor(ptr noundef initializes((544, 552), (560, 568)) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) #0 {
end_hunk_0
