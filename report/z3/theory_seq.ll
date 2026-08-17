inline.NumInlined: 5630
inline.NumDeleted: 2057
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN3smt10theory_seq16reduce_length_eqERK10ref_vectorI4expr11ast_managerES6_PN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyE:bb.a
bb.by:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  store i32 0, ptr %13, align 8, !tbaa !870
  %i.ox = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 6 uses
  %i.oy = load i8, ptr %i.ox, align 4
  %i.oz = and i8 %i.oy, -4
  store i8 %i.oz, ptr %i.ox, align 4
  %i.pa = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr null, ptr %i.pa, align 8, !tbaa !869
  %i.pb = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store i32 1, ptr %i.pb, align 8, !tbaa !870
  %i.pc = getelementptr inbounds nuw i8, ptr %13, i64 20 ; 6 uses
  %i.pd = load i8, ptr %i.pc, align 4
  %i.pe = and i8 %i.pd, -4
  store i8 %i.pe, ptr %i.pc, align 4
  %i.pf = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr null, ptr %i.pf, align 8, !tbaa !869
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  store i32 0, ptr %14, align 8, !tbaa !870
  %i.pg = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 6 uses
  %i.ph = load i8, ptr %i.pg, align 4
  %i.pi = and i8 %i.ph, -4
  store i8 %i.pi, ptr %i.pg, align 4
  %i.pj = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr null, ptr %i.pj, align 8, !tbaa !869
  %i.pk = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store i32 1, ptr %i.pk, align 8, !tbaa !870
  %i.pl = getelementptr inbounds nuw i8, ptr %14, i64 20 ; 6 uses
  %i.pm = load i8, ptr %i.pl, align 4
  %i.pn = and i8 %i.pm, -4
  store i8 %i.pn, ptr %i.pl, align 4
  %i.po = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr null, ptr %i.po, align 8, !tbaa !869
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  store i32 0, ptr %15, align 8, !tbaa !870
  %i.pp = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 2 uses
  %i.pq = load i8, ptr %i.pp, align 4
  %i.pr = and i8 %i.pq, -4
  store i8 %i.pr, ptr %i.pp, align 4
  %i.ps = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr null, ptr %i.ps, align 8, !tbaa !869
  %i.pt = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store i32 1, ptr %i.pt, align 8, !tbaa !870
  %i.pu = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 2 uses
  %i.pv = load i8, ptr %i.pu, align 4
  %i.pw = and i8 %i.pv, -4
  store i8 %i.pw, ptr %i.pu, align 4
  %i.px = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr null, ptr %i.px, align 8, !tbaa !869
  %i.py = load ptr, ptr %i.a, align 8, !tbaa !13  ; 3 uses
  %i.pz = icmp eq ptr %i.py, null
  br i1 %i.pz, label %.critedge156, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit289

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit289: ; preds = %bb.by
  %i.qa = getelementptr inbounds i8, ptr %i.py, i64 -4
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !12
  %i.qc = icmp ugt i32 %i.qb, 1
  br i1 %i.qc, label %bb.bz, label %.critedge156

bb.bz:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit289
  %i.qd = load ptr, ptr %i.py, align 8, !tbaa !17
  %i.qe = load ptr, ptr %0, align 8, !tbaa !66
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 432
  %i.qg = load ptr, ptr %i.qf, align 8
  %i.qh = invoke noundef zeroext i1 %i.qg(ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef %i.qd, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.ca unwind label %bb.co

bb.ca:                                            ; preds = %bb.bz
  br i1 %i.qh, label %bb.cb, label %.critedge156

bb.cb:                                            ; preds = %bb.ca
  %i.qi = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !17
  %i.qk = load ptr, ptr %0, align 8, !tbaa !66
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 432
  %i.qm = load ptr, ptr %i.ql, align 8
  %i.qn = invoke noundef zeroext i1 %i.qm(ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef %i.qj, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.cc unwind label %bb.co

bb.cc:                                            ; preds = %bb.cb
  br i1 %i.qn, label %bb.cd, label %.critedge156

bb.cd:                                            ; preds = %bb.cc
  %i.qo = invoke noundef zeroext i1 @_ZgeRK8rationalS1_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.ce unwind label %bb.co

bb.ce:                                            ; preds = %bb.cd
  br i1 %i.qo, label %.preheader422, label %.critedge156

.preheader422:                                    ; preds = %bb.ce
  %i.qp = load ptr, ptr %i.g, align 8, !tbaa !13  ; 2 uses
  %i.qq = icmp eq ptr %i.qp, null
  br i1 %i.qq, label %.critedge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit292

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit292: ; preds = %.preheader422, %_ZN8rationalpLERKS_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN8rationalpLERKS_.exit ], [ 1, %.preheader422 ] ; 8 uses
  %i.qr = phi ptr [ %i.sd, %_ZN8rationalpLERKS_.exit ], [ %i.qp, %.preheader422 ]
  %i.qs = getelementptr inbounds i8, ptr %i.qr, i64 -4
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !12
  %i.qu = zext i32 %i.qt to i64
  %i.qv = icmp samesign ult i64 %indvars.iv, %i.qu
  br i1 %i.qv, label %bb.cf, label %.critedge.loopexit

bb.cf:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit292
  %i.qw = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !871 ; 2 uses
  %i.qx = load i8, ptr %i.pl, align 4
  %i.qy = and i8 %i.qx, 1
  %i.qz = icmp eq i8 %i.qy, 0
  %i.ra = load i32, ptr %i.pk, align 8
  %i.rb = icmp eq i32 %i.ra, 1
  %i.rc = select i1 %i.qz, i1 %i.rb, i1 false
  br i1 %i.rc, label %bb.cg, label %bb.ck

bb.cg:                                            ; preds = %bb.cf
  %i.rd = load i8, ptr %i.pc, align 4
  %i.re = and i8 %i.rd, 1
  %i.rf = icmp eq i8 %i.re, 0
  %i.rg = load i32, ptr %i.pb, align 8
  %i.rh = icmp eq i32 %i.rg, 1
  %i.ri = select i1 %i.rf, i1 %i.rh, i1 false
  br i1 %i.ri, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  %i.rj = load i8, ptr %i.pg, align 4
  %i.rk = and i8 %i.rj, 1
  %i.rl = icmp eq i8 %i.rk, 0
  br i1 %i.rl, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.rm = load i8, ptr %i.ox, align 4
  %i.rn = and i8 %i.rm, 1
  %i.ro = icmp eq i8 %i.rn, 0
  br i1 %i.ro, label %.split, label %bb.cj

.split:                                           ; preds = %bb.ci
  %i.rp = load i32, ptr %14, align 8, !tbaa !870
  %i.rq = load i32, ptr %13, align 8, !tbaa !870
  %i.rr = icmp slt i32 %i.rp, %i.rq
  br i1 %i.rr, label %bb.cl, label %.critedge.loopexit

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.rs = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.qw, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %.noexc294 unwind label %.loopexit423

.noexc294:                                        ; preds = %bb.cj
  %i.rt = icmp slt i32 %i.rs, 0
  br i1 %i.rt, label %bb.cl, label %.critedge.loopexit

bb.ck:                                            ; preds = %bb.cg, %bb.cf
  %i.ru = invoke noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.qw, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %_ZgtRK8rationalS1_.exit unwind label %.loopexit423

_ZgtRK8rationalS1_.exit:                          ; preds = %bb.ck
  br i1 %i.ru, label %bb.cl, label %.critedge.loopexit

bb.cl:                                            ; preds = %_ZgtRK8rationalS1_.exit, %.noexc294, %.split
  %i.rv = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.rv, i64 %indvars.iv
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !17
  %i.ry = load ptr, ptr %0, align 8, !tbaa !66
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 432
  %i.sa = load ptr, ptr %i.rz, align 8
  %i.sb = invoke noundef zeroext i1 %i.sa(ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef %i.rx, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.cm unwind label %.loopexit423

bb.cm:                                            ; preds = %bb.cl
  br i1 %i.sb, label %bb.cn, label %.critedge.loopexit

bb.cn:                                            ; preds = %bb.cm
  %i.sc = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !871
  invoke void @_ZN11mpq_managerILb1EE3addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.sc, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %_ZN8rationalpLERKS_.exit unwind label %.loopexit423

_ZN8rationalpLERKS_.exit:                         ; preds = %bb.cn
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.sd = load ptr, ptr %i.g, align 8, !tbaa !13  ; 2 uses
  %i.se = icmp eq ptr %i.sd, null
  br i1 %i.se, label %.critedge.loopexit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit292, !llvm.loop !1023

bb.co:                                            ; preds = %bb.eq, %bb.eo, %bb.ek, %bb.ds, %bb.dq, %bb.dm, %bb.cx, %bb.cv, %bb.ct, %bb.cd, %bb.cb, %bb.bz
  %i.sf = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

.loopexit423:                                     ; preds = %bb.cl, %bb.cj, %bb.ck, %bb.cn
  %lpad.loopexit425 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

.loopexit.split-lp424:                            ; preds = %.critedge, %bb.cr
  %lpad.loopexit.split-lp426 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

.critedge.loopexit:                               ; preds = %_ZN8rationalpLERKS_.exit, %.split, %.noexc294, %_ZgtRK8rationalS1_.exit, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit292, %bb.cm
  %.0111.lcssa.ph.in = phi i64 [ %indvars.iv, %bb.cm ], [ %indvars.iv, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit292 ], [ %indvars.iv, %_ZgtRK8rationalS1_.exit ], [ %indvars.iv, %.noexc294 ], [ %indvars.iv, %.split ], [ %indvars.iv.next, %_ZN8rationalpLERKS_.exit ]
  %.0111.lcssa.ph = trunc i64 %.0111.lcssa.ph.in to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader422
  %.0111.lcssa = phi i32 [ 1, %.preheader422 ], [ %.0111.lcssa.ph, %.critedge.loopexit ] ; 2 uses
  %i.sg = invoke noundef zeroext i1 @_ZeqRK8rationalS1_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.cp unwind label %.loopexit.split-lp424

bb.cp:                                            ; preds = %.critedge
  br i1 %i.sg, label %bb.cq, label %.critedge156

bb.cq:                                            ; preds = %bb.cp
  %i.sh = load ptr, ptr %i.g, align 8, !tbaa !13  ; 2 uses
  %i.si = icmp eq ptr %i.sh, null
  br i1 %i.si, label %.critedge158, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit299

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit299: ; preds = %bb.cq
  %i.sj = getelementptr inbounds i8, ptr %i.sh, i64 -4
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !12
  %i.sl = icmp ult i32 %.0111.lcssa, %i.sk
  br i1 %i.sl, label %bb.cr, label %.critedge156

bb.cr:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit299
  %i.sm = invoke noundef zeroext i1 @_ZN3smt10theory_seq13reduce_lengthEjjbRK10ref_vectorI4expr11ast_managerES6_PN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(5688) %0, i32 noundef 1, i32 noundef %.0111.lcssa, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3)
          to label %bb.cs unwind label %.loopexit.split-lp424

bb.cs:                                            ; preds = %bb.cr
  br i1 %i.sm, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit342.thread, label %.critedge156

.critedge156:                                     ; preds = %bb.by, %bb.cp, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit299, %bb.cs, %bb.ce, %bb.cc, %bb.ca, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit289
  %.pr539 = load ptr, ptr %i.g, align 8, !tbaa !13 ; 3 uses
  %i.sn = icmp eq ptr %.pr539, null
  br i1 %i.sn, label %.critedge158, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit302

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit302: ; preds = %.critedge156
  %i.so = getelementptr inbounds i8, ptr %.pr539, i64 -4
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !12
  %i.sq = icmp ugt i32 %i.sp, 1
  br i1 %i.sq, label %bb.ct, label %.critedge158

bb.ct:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit302
  %i.sr = load ptr, ptr %.pr539, align 8, !tbaa !17
  %i.ss = load ptr, ptr %0, align 8, !tbaa !66
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 432
  %i.su = load ptr, ptr %i.st, align 8
  %i.sv = invoke noundef zeroext i1 %i.su(ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef %i.sr, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.cu unwind label %bb.co

bb.cu:                                            ; preds = %bb.ct
  br i1 %i.sv, label %bb.cv, label %.critedge158

bb.cv:                                            ; preds = %bb.cu
  %i.sw = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !17
  %i.sy = load ptr, ptr %0, align 8, !tbaa !66
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 432
  %i.ta = load ptr, ptr %i.sz, align 8
  %i.tb = invoke noundef zeroext i1 %i.ta(ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef %i.sx, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.cw unwind label %bb.co

bb.cw:                                            ; preds = %bb.cv
  br i1 %i.tb, label %bb.cx, label %.critedge158

bb.cx:                                            ; preds = %bb.cw
  %i.tc = invoke noundef zeroext i1 @_ZgtRK8rationalS1_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.cy unwind label %bb.co

bb.cy:                                            ; preds = %bb.cx
  br i1 %i.tc, label %.preheader, label %.critedge158

.preheader:                                       ; preds = %bb.cy
  %i.td = load ptr, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.te = icmp eq ptr %i.td, null
  br i1 %i.te, label %.critedge6, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit305

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit305: ; preds = %.preheader, %_ZN8rationalpLERKS_.exit311
  %indvars.iv456 = phi i64 [ %indvars.iv.next457, %_ZN8rationalpLERKS_.exit311 ], [ 1, %.preheader ] ; 8 uses
  %i.tf = phi ptr [ %i.ur, %_ZN8rationalpLERKS_.exit311 ], [ %i.td, %.preheader ]
  %i.tg = getelementptr inbounds i8, ptr %i.tf, i64 -4
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !12
  %i.ti = zext i32 %i.th to i64
  %i.tj = icmp samesign ult i64 %indvars.iv456, %i.ti
  br i1 %i.tj, label %bb.cz, label %.critedge6.loopexit

bb.cz:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit305
  %i.tk = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !871 ; 2 uses
  %i.tl = load i8, ptr %i.pl, align 4
  %i.tm = and i8 %i.tl, 1
  %i.tn = icmp eq i8 %i.tm, 0
  %i.to = load i32, ptr %i.pk, align 8
  %i.tp = icmp eq i32 %i.to, 1
  %i.tq = select i1 %i.tn, i1 %i.tp, i1 false
  br i1 %i.tq, label %bb.da, label %bb.de

bb.da:                                            ; preds = %bb.cz
  %i.tr = load i8, ptr %i.pc, align 4
  %i.ts = and i8 %i.tr, 1
  %i.tt = icmp eq i8 %i.ts, 0
  %i.tu = load i32, ptr %i.pb, align 8
  %i.tv = icmp eq i32 %i.tu, 1
  %i.tw = select i1 %i.tt, i1 %i.tv, i1 false
  br i1 %i.tw, label %bb.db, label %bb.de

bb.db:                                            ; preds = %bb.da
  %i.tx = load i8, ptr %i.pg, align 4
  %i.ty = and i8 %i.tx, 1
  %i.tz = icmp eq i8 %i.ty, 0
  br i1 %i.tz, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.ua = load i8, ptr %i.ox, align 4
  %i.ub = and i8 %i.ua, 1
  %i.uc = icmp eq i8 %i.ub, 0
  br i1 %i.uc, label %.split383, label %bb.dd

.split383:                                        ; preds = %bb.dc
  %i.ud = load i32, ptr %14, align 8, !tbaa !870
  %i.ue = load i32, ptr %13, align 8, !tbaa !870
  %i.uf = icmp slt i32 %i.ud, %i.ue
  br i1 %i.uf, label %bb.df, label %.critedge6.loopexit

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.ug = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.tk, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %.noexc307 unwind label %.loopexit417

.noexc307:                                        ; preds = %bb.dd
  %i.uh = icmp slt i32 %i.ug, 0
  br i1 %i.uh, label %bb.df, label %.critedge6.loopexit

bb.de:                                            ; preds = %bb.da, %bb.cz
  %i.ui = invoke noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.tk, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %_ZgtRK8rationalS1_.exit309 unwind label %.loopexit417

_ZgtRK8rationalS1_.exit309:                       ; preds = %bb.de
  br i1 %i.ui, label %bb.df, label %.critedge6.loopexit

bb.df:                                            ; preds = %_ZgtRK8rationalS1_.exit309, %.noexc307, %.split383
  %i.uj = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.uj, i64 %indvars.iv456
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !17
  %i.um = load ptr, ptr %0, align 8, !tbaa !66
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 432
  %i.uo = load ptr, ptr %i.un, align 8
  %i.up = invoke noundef zeroext i1 %i.uo(ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef %i.ul, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.dg unwind label %.loopexit417

bb.dg:                                            ; preds = %bb.df
  br i1 %i.up, label %bb.dh, label %.critedge6.loopexit

bb.dh:                                            ; preds = %bb.dg
  %i.uq = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !871
  invoke void @_ZN11mpq_managerILb1EE3addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.uq, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %_ZN8rationalpLERKS_.exit311 unwind label %.loopexit417

_ZN8rationalpLERKS_.exit311:                      ; preds = %bb.dh
  %indvars.iv.next457 = add nuw nsw i64 %indvars.iv456, 1 ; 2 uses
  %i.ur = load ptr, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.us = icmp eq ptr %i.ur, null
  br i1 %i.us, label %.critedge6.loopexit, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit305, !llvm.loop !1024

.loopexit417:                                     ; preds = %bb.df, %bb.dd, %bb.de, %bb.dh
  %lpad.loopexit419 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

.loopexit.split-lp418:                            ; preds = %.critedge6, %bb.dk
  %lpad.loopexit.split-lp420 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

.critedge6.loopexit:                              ; preds = %_ZN8rationalpLERKS_.exit311, %.split383, %.noexc307, %_ZgtRK8rationalS1_.exit309, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit305, %bb.dg
  %.0110.lcssa.ph.in = phi i64 [ %indvars.iv456, %bb.dg ], [ %indvars.iv456, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit305 ], [ %indvars.iv456, %_ZgtRK8rationalS1_.exit309 ], [ %indvars.iv456, %.noexc307 ], [ %indvars.iv456, %.split383 ], [ %indvars.iv.next457, %_ZN8rationalpLERKS_.exit311 ]
  %.0110.lcssa.ph = trunc i64 %.0110.lcssa.ph.in to i32
  br label %.critedge6

.critedge6:                                       ; preds = %.critedge6.loopexit, %.preheader
  %.0110.lcssa = phi i32 [ 1, %.preheader ], [ %.0110.lcssa.ph, %.critedge6.loopexit ] ; 2 uses
  %i.ut = invoke noundef zeroext i1 @_ZeqRK8rationalS1_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.di unwind label %.loopexit.split-lp418

bb.di:                                            ; preds = %.critedge6
  br i1 %i.ut, label %bb.dj, label %.critedge158

bb.dj:                                            ; preds = %bb.di
  %i.uu = load ptr, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.uv = icmp eq ptr %i.uu, null
  br i1 %i.uv, label %.critedge160, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit314

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit314: ; preds = %bb.dj
  %i.uw = getelementptr inbounds i8, ptr %i.uu, i64 -4
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !12
  %i.uy = icmp ult i32 %.0110.lcssa, %i.ux
  br i1 %i.uy, label %bb.dk, label %.critedge158

bb.dk:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit314
  %i.uz = invoke noundef zeroext i1 @_ZN3smt10theory_seq13reduce_lengthEjjbRK10ref_vectorI4expr11ast_managerES6_PN18dependency_managerIN25scoped_dependency_managerINS0_10assumptionEE6configEE10dependencyE(ptr noundef nonnull align 8 dereferenceable(5688) %0, i32 noundef %.0110.lcssa, i32 noundef 1, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3)
          to label %bb.dl unwind label %.loopexit.split-lp418

bb.dl:                                            ; preds = %bb.dk
  br i1 %i.uz, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit342.thread, label %.critedge158

.critedge158:                                     ; preds = %bb.cq, %.critedge156, %bb.di, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit314, %bb.dl, %bb.cy, %bb.cw, %bb.cu, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit302
  %.pr540 = load ptr, ptr %i.a, align 8, !tbaa !13 ; 3 uses
  %i.va = icmp eq ptr %.pr540, null
  br i1 %i.va, label %.critedge160, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit317

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit317: ; preds = %.critedge158
  %i.vb = getelementptr inbounds i8, ptr %.pr540, i64 -4
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !12 ; 2 uses
  %i.vd = icmp ugt i32 %i.vc, 1
  br i1 %i.vd, label %bb.dm, label %.critedge160

bb.dm:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit317
  %i.ve = add i32 %i.vc, -1
  %i.vf = zext i32 %i.ve to i64
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %.pr540, i64 %i.vf
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !17
  %i.vi = load ptr, ptr %0, align 8, !tbaa !66
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 432
  %i.vk = load ptr, ptr %i.vj, align 8
  %i.vl = invoke noundef zeroext i1 %i.vk(ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef %i.vh, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.dn unwind label %bb.co

bb.dn:                                            ; preds = %bb.dm
  br i1 %i.vl, label %bb.do, label %.critedge160

bb.do:                                            ; preds = %bb.dn
  %i.vm = load ptr, ptr %i.g, align 8, !tbaa !13  ; 3 uses
  %i.vn = icmp eq ptr %i.vm, null
  br i1 %i.vn, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.vo = getelementptr inbounds i8, ptr %i.vm, i64 -4
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !12
  %i.vq = add i32 %i.vp, -1
  %i.vr = zext i32 %i.vq to i64
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.0.i.i.i320 = phi i64 [ %i.vr, %bb.dp ], [ 4294967295, %bb.do ]
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.vm, i64 %.0.i.i.i320
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !17
  %i.vu = load ptr, ptr %0, align 8, !tbaa !66
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 432
  %i.vw = load ptr, ptr %i.vv, align 8
  %i.vx = invoke noundef zeroext i1 %i.vw(ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef %i.vt, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.dr unwind label %bb.co

bb.dr:                                            ; preds = %bb.dq
  br i1 %i.vx, label %bb.ds, label %.critedge160

bb.ds:                                            ; preds = %bb.dr
  %i.vy = invoke noundef zeroext i1 @_ZgeRK8rationalS1_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.dt unwind label %bb.co

bb.dt:                                            ; preds = %bb.ds
  br i1 %i.vy, label %bb.du, label %.critedge160

bb.du:                                            ; preds = %bb.dt
  %i.vz = load ptr, ptr %i.g, align 8, !tbaa !13  ; 2 uses
  %i.wa = icmp eq ptr %i.vz, null
  br i1 %i.wa, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit324, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.wb = getelementptr inbounds i8, ptr %i.vz, i64 -4
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !12
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit324

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit324: ; preds = %bb.du, %bb.dv
  %.0.i.i323 = phi i32 [ %i.wc, %bb.dv ], [ 0, %bb.du ] ; 2 uses
  %.0109550 = add i32 %.0.i.i323, -1              ; 3 uses
  %.not.not.not551.not = icmp eq i32 %.0109550, 0
  br i1 %.not.not.not551.not, label %.critedge10, label %.lr.ph

_ZN8rationalpLERKS_.exit330:                      ; preds = %bb.ed
  %.0109 = add i32 %.0109553, -1                  ; 3 uses
  %.not.not.not.not = icmp eq i32 %.0109, 0
  br i1 %.not.not.not.not, label %.critedge10, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit324, %_ZN8rationalpLERKS_.exit330
  %.0109553 = phi i32 [ %.0109, %_ZN8rationalpLERKS_.exit330 ], [ %.0109550, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit324 ] ; 6 uses
  %.0109.in552 = phi i32 [ %.0109553, %_ZN8rationalpLERKS_.exit330 ], [ %.0.i.i323, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit324 ]
  %i.wd = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !871 ; 2 uses
  %i.we = load i8, ptr %i.pl, align 4
  %i.wf = and i8 %i.we, 1
  %i.wg = icmp eq i8 %i.wf, 0
  %i.wh = load i32, ptr %i.pk, align 8
  %i.wi = icmp eq i32 %i.wh, 1
  %i.wj = select i1 %i.wg, i1 %i.wi, i1 false
  br i1 %i.wj, label %bb.dw, label %bb.ea

bb.dw:                                            ; preds = %.lr.ph
  %i.wk = load i8, ptr %i.pc, align 4
  %i.wl = and i8 %i.wk, 1
  %i.wm = icmp eq i8 %i.wl, 0
  %i.wn = load i32, ptr %i.pb, align 8
  %i.wo = icmp eq i32 %i.wn, 1
  %i.wp = select i1 %i.wm, i1 %i.wo, i1 false
  br i1 %i.wp, label %bb.dx, label %bb.ea

bb.dx:                                            ; preds = %bb.dw
  %i.wq = load i8, ptr %i.pg, align 4
  %i.wr = and i8 %i.wq, 1
  %i.ws = icmp eq i8 %i.wr, 0
  br i1 %i.ws, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.wt = load i8, ptr %i.ox, align 4
  %i.wu = and i8 %i.wt, 1
  %i.wv = icmp eq i8 %i.wu, 0
  br i1 %i.wv, label %.split385, label %bb.dz

.split385:                                        ; preds = %bb.dy
  %i.ww = load i32, ptr %14, align 8, !tbaa !870
  %i.wx = load i32, ptr %13, align 8, !tbaa !870
  %i.wy = icmp slt i32 %i.ww, %i.wx
  br i1 %i.wy, label %bb.eb, label %.critedge10

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.wz = invoke noundef i32 @_ZN11mpz_managerILb1EE11big_compareERK3mpzS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.wd, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %.noexc326 unwind label %.loopexit412

.noexc326:                                        ; preds = %bb.dz
  %i.xa = icmp slt i32 %i.wz, 0
  br i1 %i.xa, label %bb.eb, label %.critedge10

bb.ea:                                            ; preds = %bb.dw, %.lr.ph
  %i.xb = invoke noundef zeroext i1 @_ZN11mpq_managerILb1EE6rat_ltERK3mpqS3_(ptr noundef nonnull align 8 dereferenceable(728) %i.wd, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %_ZgtRK8rationalS1_.exit328 unwind label %.loopexit412

_ZgtRK8rationalS1_.exit328:                       ; preds = %bb.ea
  br i1 %i.xb, label %bb.eb, label %.critedge10

bb.eb:                                            ; preds = %_ZgtRK8rationalS1_.exit328, %.noexc326, %.split385
  %i.xc = add i32 %.0109.in552, -2
  %i.xd = load ptr, ptr %i.g, align 8, !tbaa !13
  %i.xe = zext i32 %i.xc to i64
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %i.xe
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !17
  %i.xh = load ptr, ptr %0, align 8, !tbaa !66
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 432
  %i.xj = load ptr, ptr %i.xi, align 8
  %i.xk = invoke noundef zeroext i1 %i.xj(ptr noundef nonnull align 8 dereferenceable(5688) %0, ptr noundef %i.xg, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.ec unwind label %.loopexit412

bb.ec:                                            ; preds = %bb.eb
  br i1 %i.xk, label %bb.ed, label %.critedge10

bb.ed:                                            ; preds = %bb.ec
  %i.xl = load ptr, ptr @_ZN8rational13g_mpq_managerE, align 8, !tbaa !871
  invoke void @_ZN11mpq_managerILb1EE3addERK3mpqS3_RS1_(ptr noundef nonnull align 8 dereferenceable(728) %i.xl, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %_ZN8rationalpLERKS_.exit330 unwind label %.loopexit412

.loopexit412:                                     ; preds = %bb.eb, %bb.dz, %bb.ea, %bb.ed
  %lpad.loopexit414 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

.loopexit.split-lp413:                            ; preds = %.critedge10, %bb.ei
  %lpad.loopexit.split-lp415 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

.critedge10:                                      ; preds = %bb.ec, %_ZN8rationalpLERKS_.exit330, %_ZgtRK8rationalS1_.exit328, %.noexc326, %.split385, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit324
  %.0109.lcssa = phi i32 [ %.0109550, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit324 ], [ %.0109553, %bb.ec ], [ %.0109, %_ZN8rationalpLERKS_.exit330 ], [ %.0109553, %_ZgtRK8rationalS1_.exit328 ], [ %.0109553, %.noexc326 ], [ %.0109553, %.split385 ] ; 2 uses
  %.not.not.not.lcssa = phi i1 [ false, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit324 ], [ true, %bb.ec ], [ false, %_ZN8rationalpLERKS_.exit330 ], [ true, %_ZgtRK8rationalS1_.exit328 ], [ true, %.noexc326 ], [ true, %.split385 ]
  %i.xm = invoke noundef zeroext i1 @_ZeqRK8rationalS1_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.ee unwind label %.loopexit.split-lp413

bb.ee:                                            ; preds = %.critedge10
  %or.cond12 = and i1 %.not.not.not.lcssa, %i.xm
  br i1 %or.cond12, label %bb.ef, label %.critedge160

bb.ef:                                            ; preds = %bb.ee
  %i.xn = load ptr, ptr %i.g, align 8, !tbaa !13  ; 2 uses
  %i.xo = icmp eq ptr %i.xn, null
  br i1 %i.xo, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit342.thread, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit333

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit333: ; preds = %bb.ef
  %i.xp = getelementptr inbounds i8, ptr %i.xn, i64 -4
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !12 ; 2 uses
  %i.xr = icmp ult i32 %.0109.lcssa, %i.xq
end_hunk_0
