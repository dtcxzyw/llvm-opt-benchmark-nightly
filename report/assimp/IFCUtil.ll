inline.NumInlined: 1656
inline.NumDeleted: 752
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6Assimp3IFC8TempMesh20FixupFaceOrientationEv:bb.a
  %i.om = fsub double %i.oj, %i.ol
  %i.on = fcmp olt double %i.oc, f0xBEB0C6F7A0000000
  br i1 %i.on, label %.thread.i366, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.oo = call noundef double @llvm.fabs.f64(double %i.oc)
  %i.op = fcmp olt double %i.oo, f0x3EB0C6F7A0000000 ; 2 uses
  %i.oq = fcmp olt double %i.oh, f0xBEB0C6F7A0000000 ; 2 uses
  %or.cond.i.i.i.i363 = select i1 %i.op, i1 %i.oq, i1 false
  %.not.i.i.i.i364 = xor i1 %i.op, true
  %brmerge.i.i.i.i365 = select i1 %.not.i.i.i.i364, i1 true, i1 %i.oq
  br i1 %brmerge.i.i.i.i365, label %.thread.i366, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.or = call noundef double @llvm.fabs.f64(double %i.oh)
  %i.os = fcmp olt double %i.or, f0x3EB0C6F7A0000000
  br i1 %i.os, label %bb.bf, label %.thread.i366

bb.bf:                                            ; preds = %bb.be
  %i.ot = fcmp olt double %i.om, f0xBEB0C6F7A0000000
  br label %.thread.i366

.thread.i366:                                     ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb
  %i.ou = phi i1 [ %i.ot, %bb.bf ], [ true, %bb.bb ], [ %or.cond.i.i.i.i363, %bb.bd ], [ true, %bb.bc ], [ false, %bb.be ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ou, ptr noundef nonnull %i.ns, ptr noundef nonnull %i.nx, ptr noundef nonnull align 8 dereferenceable(32) %i.cj) #25
  %i.ov = load i64, ptr %i.ch, align 8
  %i.ow = add i64 %i.ov, 1
  store i64 %i.ow, ptr %i.ch, align 8
  br label %.noexc248

bb.bg:                                            ; preds = %.noexc370
  %i.ox = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit335

bb.bh:                                            ; preds = %bb.ba
  %i.oy = load ptr, ptr %i.nu, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i368 = icmp eq ptr %i.oy, null
  br i1 %.not.i.i.i.i.i.i.i.i368, label %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i369, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ns, i64 72
  %i.pa = load ptr, ptr %i.oz, align 8
  %i.pb = ptrtoint ptr %i.pa to i64
  %i.pc = ptrtoint ptr %i.oy to i64
  %i.pd = sub i64 %i.pb, %i.pc
  call void @_ZdlPvm(ptr noundef nonnull %i.oy, i64 noundef %i.pd) #27
  br label %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i369

_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i369: ; preds = %bb.bi, %bb.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.ns, i64 noundef 80) #27
  br label %.noexc248

.noexc248:                                        ; preds = %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i369, %.thread.i366
  %.sroa.0.010.i367 = phi ptr [ %i.ns, %.thread.i366 ], [ %i.nw, %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit.i.i369 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.bj

bb.bj:                                            ; preds = %.noexc248, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i243, %bb.az
  %.sroa.06.0.i240 = phi ptr [ %.sroa.0.010.i367, %.noexc248 ], [ %.19.i.i.i.i233, %_ZNK6Assimp3IFC13CompareVectorclERK10aiVector3tIdES5_.exit.i243 ], [ %.19.i.i.i.i233, %bb.az ] ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i240, i64 56
  %i.pf = load ptr, ptr %i.mb, align 8            ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i214, i64 64
  %i.ph = load ptr, ptr %i.pg, align 8            ; 2 uses
  %i.pi = load ptr, ptr %i.pe, align 8            ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i240, i64 64
  %i.pk = load ptr, ptr %i.pj, align 8            ; 2 uses
  %i.pl = icmp ne ptr %i.pf, %i.ph
  %i.pm = icmp ne ptr %i.pi, %i.pk
  %or.cond15.i.i = select i1 %i.pl, i1 %i.pm, i1 false
  br i1 %or.cond15.i.i, label %.lr.ph.i.i250, label %.loopexit569

.lr.ph.i.i250:                                    ; preds = %bb.bj, %bb.bo
  %.sroa.0.018.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.bo ], [ %i.hm, %bb.bj ] ; 4 uses
  %.sroa.011.017.i.i = phi ptr [ %.sroa.011.1.i.i, %bb.bo ], [ %i.pf, %bb.bj ] ; 4 uses
  %.sroa.07.016.i.i = phi ptr [ %.sroa.07.1.i.i, %bb.bo ], [ %i.pi, %bb.bj ] ; 4 uses
  %i.pn = load i64, ptr %.sroa.011.017.i.i, align 8 ; 3 uses
  %i.po = load i64, ptr %.sroa.07.016.i.i, align 8 ; 2 uses
  %i.pp = icmp ult i64 %i.pn, %i.po
  br i1 %i.pp, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.lr.ph.i.i250
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i.i, i64 8
  br label %bb.bo

bb.bl:                                            ; preds = %.lr.ph.i.i250
  %i.pr = icmp ult i64 %i.po, %i.pn
  br i1 %i.pr, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.07.016.i.i, i64 8
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  store i64 %i.pn, ptr %.sroa.0.018.i.i, align 8
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i.i, i64 8
  %i.pu = getelementptr inbounds nuw i8, ptr %.sroa.07.016.i.i, i64 8
  %i.pv = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i.i, i64 8
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bk
  %.sroa.07.1.i.i = phi ptr [ %.sroa.07.016.i.i, %bb.bk ], [ %i.ps, %bb.bm ], [ %i.pu, %bb.bn ] ; 2 uses
  %.sroa.011.1.i.i = phi ptr [ %i.pq, %bb.bk ], [ %.sroa.011.017.i.i, %bb.bm ], [ %i.pt, %bb.bn ] ; 2 uses
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.018.i.i, %bb.bk ], [ %.sroa.0.018.i.i, %bb.bm ], [ %i.pv, %bb.bn ] ; 2 uses
  %i.pw = icmp ne ptr %.sroa.011.1.i.i, %i.ph
  %i.px = icmp ne ptr %.sroa.07.1.i.i, %i.pk
  %or.cond.i.i251 = select i1 %i.pw, i1 %i.px, i1 false
  br i1 %or.cond.i.i251, label %.lr.ph.i.i250, label %.loopexit569.loopexit, !llvm.loop !122

.loopexit569.loopexit:                            ; preds = %bb.bo
  %.pre701 = ptrtoint ptr %.sroa.0.1.i.i to i64
  br label %.loopexit569

.loopexit569:                                     ; preds = %.loopexit569.loopexit, %bb.bj
  %.pre-phi = phi i64 [ %.pre701, %.loopexit569.loopexit ], [ %i.hp, %bb.bj ]
  %i.py = sub i64 %.pre-phi, %i.hp
  %.not176 = icmp eq i64 %i.py, 16
  br i1 %.not176, label %bb.br, label %bb.bs

bb.bp:                                            ; preds = %.critedge.i215
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit335

bb.bq:                                            ; preds = %.critedge.i241
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit335

bb.br:                                            ; preds = %.loopexit569
  %i.qb = load i64, ptr %i.hm, align 8
  %i.qc = icmp eq i64 %i.qb, %.0145623
  %spec.select.idx = select i1 %i.qc, i64 8, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %i.hm, i64 %spec.select.idx
  %i.qd = load i64, ptr %spec.select, align 8
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0482.0, i64 %i.iv
  store i64 %i.qd, ptr %i.qe, align 8
  br label %bb.bs

bb.bs:                                            ; preds = %.loopexit569, %bb.br
  %i.qf = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.qf, i64 %.0145623
  %i.qh = load i32, ptr %i.qg, align 4
  %i.qi = zext i32 %i.qh to i64                   ; 2 uses
  %i.qj = icmp samesign ult i64 %i.iw, %i.qi
  br i1 %i.qj, label %bb.ad, label %._crit_edge622.loopexit, !llvm.loop !123

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %bb.z, %.noexc197, %._crit_edge624
  %.sroa.0462.0 = phi ptr [ null, %._crit_edge624 ], [ %i.ia, %.noexc197 ], [ null, %bb.z ] ; 10 uses
  %.sroa.14469.0 = phi ptr [ null, %._crit_edge624 ], [ %storemerge.i.i.i.i.i, %.noexc197 ], [ null, %bb.z ] ; 2 uses
  %.sroa.17.0 = phi i32 [ 0, %._crit_edge624 ], [ %i.ii, %.noexc197 ], [ 0, %bb.z ] ; 2 uses
  %.sroa.20470.0 = phi ptr [ null, %._crit_edge624 ], [ %i.ic, %.noexc197 ], [ null, %bb.z ] ; 4 uses
  %i.qk = icmp ne ptr %.sroa.0462.0, %.sroa.14469.0
  %i.ql = icmp ne i32 %.sroa.17.0, 0
  %.not3.i9.i.i = or i1 %i.qk, %i.ql
  br i1 %.not3.i9.i.i, label %_ZNSt13_Bit_iteratorppEv.exit.i.i.preheader.lr.ph, label %_ZSt5countISt13_Bit_iteratorbENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_.exit.thread

_ZNSt13_Bit_iteratorppEv.exit.i.i.preheader.lr.ph: ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.qm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.qn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.qo = extractelement <2 x double> %i.w, i64 0 ; 2 uses
  %i.qp = extractelement <2 x double> %i.w, i64 1 ; 2 uses
  br label %_ZNSt13_Bit_iteratorppEv.exit.i.i

_ZNSt13_Bit_iteratorppEv.exit.i.i:                ; preds = %_ZNSt13_Bit_iteratorppEv.exit.i.i.backedge, %_ZNSt13_Bit_iteratorppEv.exit.i.i.preheader.lr.ph
  %.012.i.i = phi i64 [ 0, %_ZNSt13_Bit_iteratorppEv.exit.i.i.preheader.lr.ph ], [ %.012.i.i.be, %_ZNSt13_Bit_iteratorppEv.exit.i.i.backedge ]
  %.sroa.5.011.i.i = phi i32 [ 0, %_ZNSt13_Bit_iteratorppEv.exit.i.i.preheader.lr.ph ], [ %.sroa.5.011.i.i.be, %_ZNSt13_Bit_iteratorppEv.exit.i.i.backedge ] ; 3 uses
  %.sroa.03.010.i.i = phi ptr [ %.sroa.0462.0, %_ZNSt13_Bit_iteratorppEv.exit.i.i.preheader.lr.ph ], [ %.sroa.03.010.i.i.be, %_ZNSt13_Bit_iteratorppEv.exit.i.i.backedge ] ; 2 uses
  %i.qq = zext nneg i32 %.sroa.5.011.i.i to i64
  %i.qr = load i64, ptr %.sroa.03.010.i.i, align 8
  %i.qs = xor i64 %i.qr, -1
  %i.qt = lshr i64 %i.qs, %i.qq
  %i.qu = and i64 %i.qt, 1
  %spec.select.i.i = add nuw nsw i64 %i.qu, %.012.i.i ; 2 uses
  %i.qv = add i32 %.sroa.5.011.i.i, 1
  %i.qw = icmp eq i32 %.sroa.5.011.i.i, 63        ; 2 uses
  %spec.select7.idx.i.i = select i1 %i.qw, i64 8, i64 0
  %spec.select7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.010.i.i, i64 %spec.select7.idx.i.i ; 2 uses
  %spec.select8.i.i = select i1 %i.qw, i32 0, i32 %i.qv ; 2 uses
  %i.qx = icmp ne ptr %spec.select7.i.i, %.sroa.14469.0
  %i.qy = icmp ne i32 %spec.select8.i.i, %.sroa.17.0
  %.not3.i.i.i = or i1 %i.qy, %i.qx
  br i1 %.not3.i.i.i, label %_ZNSt13_Bit_iteratorppEv.exit.i.i.backedge, label %_ZSt5countISt13_Bit_iteratorbENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_.exit

_ZNSt13_Bit_iteratorppEv.exit.i.i.backedge:       ; preds = %_ZNSt13_Bit_iteratorppEv.exit.i.i, %_ZNSt6vectorImSaImEED2Ev.exit
  %.012.i.i.be = phi i64 [ %spec.select.i.i, %_ZNSt13_Bit_iteratorppEv.exit.i.i ], [ 0, %_ZNSt6vectorImSaImEED2Ev.exit ]
  %.sroa.5.011.i.i.be = phi i32 [ %spec.select8.i.i, %_ZNSt13_Bit_iteratorppEv.exit.i.i ], [ 0, %_ZNSt6vectorImSaImEED2Ev.exit ]
  %.sroa.03.010.i.i.be = phi ptr [ %spec.select7.i.i, %_ZNSt13_Bit_iteratorppEv.exit.i.i ], [ %.sroa.0462.0, %_ZNSt6vectorImSaImEED2Ev.exit ]
  br label %_ZNSt13_Bit_iteratorppEv.exit.i.i, !llvm.loop !124

_ZSt5countISt13_Bit_iteratorbENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_.exit: ; preds = %_ZNSt13_Bit_iteratorppEv.exit.i.i
  %.not = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not, label %_ZSt5countISt13_Bit_iteratorbENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_.exit.thread, label %.preheader

.preheader:                                       ; preds = %_ZSt5countISt13_Bit_iteratorbENSt15iterator_traitsIT_E15difference_typeES2_S2_RKT0_.exit
  %i.qz = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.ra = load ptr, ptr %i.x, align 8             ; 4 uses
  %.not663 = icmp eq ptr %i.qz, %i.ra
  %.pre700 = load ptr, ptr %0, align 8            ; 2 uses
  br i1 %.not663, label %._crit_edge631, label %.lr.ph630.a

.lr.ph630.a:                                      ; preds = %.preheader
  %i.rb = ptrtoint ptr %i.qz to i64
  %i.rc = ptrtoint ptr %i.ra to i64
  %i.rd = sub i64 %i.rb, %i.rc
  %i.re = ashr exact i64 %i.rd, 2
  br label %bb.bu

._crit_edge631:                                   ; preds = %bb.bx, %.preheader
  %.0548.lcssa = phi i64 [ -1, %.preheader ], [ %.2, %bb.bx ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0501.0772776, i64 %.0548.lcssa ; 2 uses
  %i.rg = load i64, ptr %i.rf, align 8
  %i.rh = getelementptr inbounds nuw [24 x i8], ptr %.pre700, i64 %i.rg
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %.0548.lcssa
  %i.rj = load i32, ptr %i.ri, align 4
  %i.rk = zext i32 %i.rj to i64
  invoke void @_ZN6Assimp3IFC8TempMesh20ComputePolygonNormalEPK10aiVector3tIdEmb(ptr dead_on_unwind nonnull writable sret(%class.aiVector3t) align 8 %5, ptr noundef %i.rh, i64 noundef %i.rk, i1 noundef zeroext true)
          to label %bb.by unwind label %_ZNSt6vectorImSaImEED2Ev.exit324

bb.bt:                                            ; preds = %bb.aa
  %i.rl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit335

bb.bu:                                            ; preds = %.lr.ph630.a, %bb.bx
  %.0147629 = phi double [ -1.000000e+00, %.lr.ph630.a ], [ %.2149, %bb.bx ] ; 3 uses
  %.0150628 = phi i64 [ 0, %.lr.ph630.a ], [ %i.uc, %bb.bx ] ; 7 uses
  %.0548627 = phi i64 [ -1, %.lr.ph630.a ], [ %.2, %bb.bx ] ; 2 uses
  %i.rm = sdiv i64 %.0150628, 64
  %i.rn = getelementptr inbounds [8 x i8], ptr %.sroa.0462.0, i64 %i.rm
  %i.ro = and i64 %.0150628, -9223372036854775745
  %i.rp = icmp ugt i64 %i.ro, -9223372036854775808
  %storemerge.idx.i.i.i.i.i254 = select i1 %i.rp, i64 -8, i64 0
  %storemerge.i.i.i.i.i255 = getelementptr inbounds i8, ptr %i.rn, i64 %storemerge.idx.i.i.i.i.i254
  %i.rq = and i64 %.0150628, 63
  %i.rr = shl nuw i64 1, %i.rq
  %i.rs = load i64, ptr %storemerge.i.i.i.i.i255, align 8
  %i.rt = and i64 %i.rs, %i.rr
  %.not562 = icmp eq i64 %i.rt, 0
  br i1 %.not562, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0501.0772776, i64 %.0150628
  %i.rv = load i64, ptr %i.ru, align 8
  %i.rw = getelementptr inbounds [24 x i8], ptr %.pre700, i64 %i.rv ; 3 uses
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %.0150628
  %i.ry = load i32, ptr %i.rx, align 4            ; 3 uses
  %i.rz = zext i32 %i.ry to i64
  %.idx563 = mul nuw nsw i64 %i.rz, 24            ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rw, i64 %.idx563
  %.not5.i = icmp eq i32 %i.ry, 0
  br i1 %.not5.i, label %.loopexit567, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.bv
  %i.sb = add nsw i64 %.idx563, -24               ; 2 uses
  %i.sc = udiv i64 %i.sb, 24
  %i.sd = add nuw nsw i64 %i.sc, 1
  %xtraiter864 = and i64 %i.sd, 3                 ; 2 uses
  %lcmp.mod865.not = icmp eq i64 %xtraiter864, 0
  br i1 %lcmp.mod865.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.02.06.i.prol = phi ptr [ %i.sl, %.lr.ph.i.prol ], [ %i.rw, %.lr.ph.i.preheader ] ; 3 uses
  %i.se = phi double [ %i.sh, %.lr.ph.i.prol ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %i.sf = phi <2 x double> [ %i.sk, %.lr.ph.i.prol ], [ zeroinitializer, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.sg = load double, ptr %.sroa.02.06.i.prol, align 8, !noalias !125
  %i.sh = fadd double %i.se, %i.sg                ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.prol, i64 8
  %i.sj = load <2 x double>, ptr %i.si, align 8, !noalias !125
  %i.sk = fadd <2 x double> %i.sf, %i.sj          ; 3 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.prol, i64 24 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter864
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !130

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa842.unr.a = phi double [ poison, %.lr.ph.i.preheader ], [ %i.sh, %.lr.ph.i.prol ]
  %.lcssa.unr = phi <2 x double> [ poison, %.lr.ph.i.preheader ], [ %i.sk, %.lr.ph.i.prol ]
  %.sroa.02.06.i.unr = phi ptr [ %i.rw, %.lr.ph.i.preheader ], [ %i.sl, %.lr.ph.i.prol ]
  %.unr = phi double [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.sh, %.lr.ph.i.prol ]
  %.unr866 = phi <2 x double> [ zeroinitializer, %.lr.ph.i.preheader ], [ %i.sk, %.lr.ph.i.prol ]
  %i.sm = icmp ult i64 %i.sb, 72
  br i1 %i.sm, label %.loopexit567, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.02.06.i = phi ptr [ %i.tm, %.lr.ph.i ], [ %.sroa.02.06.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.sn = phi double [ %i.ti, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ]
  %i.so = phi <2 x double> [ %i.tl, %.lr.ph.i ], [ %.unr866, %.lr.ph.i.prol.loopexit ]
  %i.sp = load double, ptr %.sroa.02.06.i, align 8, !noalias !125
  %i.sq = fadd double %i.sn, %i.sp
  %i.sr = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 8
  %i.ss = load <2 x double>, ptr %i.sr, align 8, !noalias !125
  %i.st = fadd <2 x double> %i.so, %i.ss
  %i.su = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 24
  %i.sv = load double, ptr %i.su, align 8, !noalias !125
  %i.sw = fadd double %i.sq, %i.sv
  %i.sx = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 32
  %i.sy = load <2 x double>, ptr %i.sx, align 8, !noalias !125
  %i.sz = fadd <2 x double> %i.st, %i.sy
  %i.ta = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 48
  %i.tb = load double, ptr %i.ta, align 8, !noalias !125
  %i.tc = fadd double %i.sw, %i.tb
  %i.td = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 56
  %i.te = load <2 x double>, ptr %i.td, align 8, !noalias !125
  %i.tf = fadd <2 x double> %i.sz, %i.te
  %i.tg = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 72
  %i.th = load double, ptr %i.tg, align 8, !noalias !125
  %i.ti = fadd double %i.tc, %i.th                ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 80
  %i.tk = load <2 x double>, ptr %i.tj, align 8, !noalias !125
  %i.tl = fadd <2 x double> %i.tf, %i.tk          ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 96 ; 2 uses
  %.not.i256.3 = icmp eq ptr %i.tm, %i.sa
  br i1 %.not.i256.3, label %.loopexit567, label %.lr.ph.i, !llvm.loop !131

.loopexit567:                                     ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.bv
  %.lcssa.i = phi double [ 0.000000e+00, %bb.bv ], [ %.lcssa842.unr.a, %.lr.ph.i.prol.loopexit ], [ %i.ti, %.lr.ph.i ]
  %i.tn = phi <2 x double> [ zeroinitializer, %bb.bv ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.tl, %.lr.ph.i ] ; 2 uses
  %i.to = uitofp i32 %i.ry to double
  %i.tp = fdiv double 1.000000e+00, %i.to         ; 3 uses
  %i.tq = fmul double %i.tp, %.lcssa.i
  %i.tr = extractelement <2 x double> %i.tn, i64 0
  %i.ts = fmul double %i.tp, %i.tr
  %i.tt = extractelement <2 x double> %i.tn, i64 1
  %i.tu = fmul double %i.tp, %i.tt
  %i.tv = fsub double %i.tq, %.sroa.0518.0        ; 2 uses
  %i.tw = fsub double %i.ts, %i.qo                ; 2 uses
  %i.tx = fsub double %i.tu, %i.qp                ; 2 uses
  %i.ty = fmul double %i.tw, %i.tw
  %i.tz = call double @llvm.fmuladd.f64(double %i.tv, double %i.tv, double %i.ty)
  %i.ua = call noundef double @llvm.fmuladd.f64(double %i.tx, double %i.tx, double %i.tz) ; 2 uses
  %i.ub = fcmp ogt double %i.ua, %.0147629
  br i1 %i.ub, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %.loopexit567
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit567, %bb.bw, %bb.bu
  %.2 = phi i64 [ %.0548627, %bb.bu ], [ %.0150628, %bb.bw ], [ %.0548627, %.loopexit567 ] ; 2 uses
  %.2149 = phi double [ %.0147629, %bb.bu ], [ %i.ua, %bb.bw ], [ %.0147629, %.loopexit567 ]
  %i.uc = add nuw i64 %.0150628, 1                ; 2 uses
  %exitcond689.not = icmp eq i64 %i.uc, %i.re
  br i1 %exitcond689.not, label %._crit_edge631, label %bb.bu, !llvm.loop !132

bb.by:                                            ; preds = %._crit_edge631
  %i.ud = load ptr, ptr %0, align 8
  %i.ue = load i64, ptr %i.rf, align 8            ; 3 uses
  %i.uf = getelementptr inbounds [24 x i8], ptr %i.ud, i64 %i.ue ; 4 uses
  %i.ug = load ptr, ptr %i.x, align 8
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.ug, i64 %.0548.lcssa
  %i.ui = load i32, ptr %i.uh, align 4            ; 5 uses
  %i.uj = zext i32 %i.ui to i64                   ; 3 uses
  %.idx = mul nuw nsw i64 %i.uj, 24               ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uf, i64 %.idx ; 2 uses
  %.not5.i258 = icmp eq i32 %i.ui, 0
  br i1 %.not5.i258, label %.loopexit568, label %.lr.ph.i259.preheader

.lr.ph.i259.preheader:                            ; preds = %bb.by
  %i.ul = add nsw i64 %.idx, -24                  ; 2 uses
  %i.um = udiv i64 %i.ul, 24
  %i.un = add nuw nsw i64 %i.um, 1
  %xtraiter867 = and i64 %i.un, 3                 ; 2 uses
  %lcmp.mod868.not = icmp eq i64 %xtraiter867, 0
  br i1 %lcmp.mod868.not, label %.lr.ph.i259.prol.loopexit, label %.lr.ph.i259.prol

.lr.ph.i259.prol:                                 ; preds = %.lr.ph.i259.preheader, %.lr.ph.i259.prol
  %.sroa.02.06.i262.prol = phi ptr [ %i.uv, %.lr.ph.i259.prol ], [ %i.uf, %.lr.ph.i259.preheader ] ; 3 uses
  %i.uo = phi double [ %i.ur, %.lr.ph.i259.prol ], [ 0.000000e+00, %.lr.ph.i259.preheader ]
  %i.up = phi <2 x double> [ %i.uu, %.lr.ph.i259.prol ], [ zeroinitializer, %.lr.ph.i259.preheader ]
  %prol.iter869 = phi i64 [ %prol.iter869.next, %.lr.ph.i259.prol ], [ 0, %.lr.ph.i259.preheader ]
  %i.uq = load double, ptr %.sroa.02.06.i262.prol, align 8, !noalias !133
  %i.ur = fadd double %i.uo, %i.uq                ; 3 uses
  %i.us = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i262.prol, i64 8
  %i.ut = load <2 x double>, ptr %i.us, align 8, !noalias !133
  %i.uu = fadd <2 x double> %i.up, %i.ut          ; 3 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i262.prol, i64 24 ; 2 uses
  %prol.iter869.next = add i64 %prol.iter869, 1   ; 2 uses
  %prol.iter869.cmp.not = icmp eq i64 %prol.iter869.next, %xtraiter867
  br i1 %prol.iter869.cmp.not, label %.lr.ph.i259.prol.loopexit, label %.lr.ph.i259.prol, !llvm.loop !138

.lr.ph.i259.prol.loopexit:                        ; preds = %.lr.ph.i259.prol, %.lr.ph.i259.preheader
  %.lcssa844.unr = phi double [ poison, %.lr.ph.i259.preheader ], [ %i.ur, %.lr.ph.i259.prol ]
  %.lcssa843.unr = phi <2 x double> [ poison, %.lr.ph.i259.preheader ], [ %i.uu, %.lr.ph.i259.prol ]
  %.sroa.02.06.i262.unr = phi ptr [ %i.uf, %.lr.ph.i259.preheader ], [ %i.uv, %.lr.ph.i259.prol ]
  %.unr870.a = phi double [ 0.000000e+00, %.lr.ph.i259.preheader ], [ %i.ur, %.lr.ph.i259.prol ]
  %.unr871 = phi <2 x double> [ zeroinitializer, %.lr.ph.i259.preheader ], [ %i.uu, %.lr.ph.i259.prol ]
  %i.uw = icmp ult i64 %i.ul, 72
  br i1 %i.uw, label %.loopexit568, label %.lr.ph.i259

.lr.ph.i259:                                      ; preds = %.lr.ph.i259.prol.loopexit, %.lr.ph.i259
  %.sroa.02.06.i262 = phi ptr [ %i.vw, %.lr.ph.i259 ], [ %.sroa.02.06.i262.unr, %.lr.ph.i259.prol.loopexit ] ; 9 uses
  %i.ux = phi double [ %i.vs, %.lr.ph.i259 ], [ %.unr870.a, %.lr.ph.i259.prol.loopexit ]
  %i.uy = phi <2 x double> [ %i.vv, %.lr.ph.i259 ], [ %.unr871, %.lr.ph.i259.prol.loopexit ]
  %i.uz = load double, ptr %.sroa.02.06.i262, align 8, !noalias !133
  %i.va = fadd double %i.ux, %i.uz
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i262, i64 8
  %i.vc = load <2 x double>, ptr %i.vb, align 8, !noalias !133
  %i.vd = fadd <2 x double> %i.uy, %i.vc
  %i.ve = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i262, i64 24
  %i.vf = load double, ptr %i.ve, align 8, !noalias !133
  %i.vg = fadd double %i.va, %i.vf
  %i.vh = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i262, i64 32
  %i.vi = load <2 x double>, ptr %i.vh, align 8, !noalias !133
  %i.vj = fadd <2 x double> %i.vd, %i.vi
  %i.vk = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i262, i64 48
  %i.vl = load double, ptr %i.vk, align 8, !noalias !133
  %i.vm = fadd double %i.vg, %i.vl
  %i.vn = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i262, i64 56
  %i.vo = load <2 x double>, ptr %i.vn, align 8, !noalias !133
  %i.vp = fadd <2 x double> %i.vj, %i.vo
  %i.vq = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i262, i64 72
  %i.vr = load double, ptr %i.vq, align 8, !noalias !133
  %i.vs = fadd double %i.vm, %i.vr                ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i262, i64 80
  %i.vu = load <2 x double>, ptr %i.vt, align 8, !noalias !133
  %i.vv = fadd <2 x double> %i.vp, %i.vu          ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i262, i64 96 ; 2 uses
  %.not.i263.3 = icmp eq ptr %i.vw, %i.uk
  br i1 %.not.i263.3, label %.loopexit568, label %.lr.ph.i259, !llvm.loop !131

.loopexit568:                                     ; preds = %.lr.ph.i259.prol.loopexit, %.lr.ph.i259, %bb.by
  %.lcssa.i265 = phi double [ 0.000000e+00, %bb.by ], [ %.lcssa844.unr, %.lr.ph.i259.prol.loopexit ], [ %i.vs, %.lr.ph.i259 ]
  %i.vx = phi <2 x double> [ zeroinitializer, %bb.by ], [ %.lcssa843.unr, %.lr.ph.i259.prol.loopexit ], [ %i.vv, %.lr.ph.i259 ] ; 2 uses
  %i.vy = uitofp i32 %i.ui to double
  %i.vz = fdiv double 1.000000e+00, %i.vy         ; 3 uses
  %i.wa = fmul double %i.vz, %.lcssa.i265
  %i.wb = extractelement <2 x double> %i.vx, i64 0
  %i.wc = fmul double %i.vz, %i.wb
  %i.wd = extractelement <2 x double> %i.vx, i64 1
  %i.we = fmul double %i.vz, %i.wd
  %i.wf = fsub double %i.wa, %.sroa.0518.0        ; 4 uses
  %i.wg = fsub double %i.wc, %i.qo                ; 4 uses
  %i.wh = fsub double %i.we, %i.qp                ; 4 uses
  %i.wi = fmul double %i.wg, %i.wg
  %i.wj = call double @llvm.fmuladd.f64(double %i.wf, double %i.wf, double %i.wi)
  %i.wk = call noundef double @llvm.fmuladd.f64(double %i.wh, double %i.wh, double %i.wj) ; 2 uses
  %i.wl = fcmp oeq double %i.wk, 0.000000e+00
  br i1 %i.wl, label %_ZN10aiVector3tIdE9NormalizeEv.exit, label %_ZN10aiVector3tIdEdVEd.exit.i

_ZN10aiVector3tIdEdVEd.exit.i:                    ; preds = %.loopexit568
  %sqrt.i.i = call noundef double @llvm.sqrt.f64(double %i.wk)
  %i.wm = fdiv double 1.000000e+00, %sqrt.i.i     ; 3 uses
  %i.wn = fmul double %i.wf, %i.wm
  %i.wo = fmul double %i.wg, %i.wm
end_hunk_0
begin_hunk_1_@_ZN6Assimp3IFC20ConvertAxisPlacementER12aiMatrix4x4tIdERKNS_4STEP7EXPRESS8DataTypeERNS0_14ConversionDataE:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC24ConvertTransformOperatorER12aiMatrix4x4tIdERKNS0_10Schema_2x334IfcCartesianTransformationOperatorE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(104) %1) local_unnamed_addr #7 {
bb.a:
  %.sroa.0101 = alloca double, align 8            ; 9 uses
  %.sroa.6102 = alloca double, align 8            ; 6 uses
  %.sroa.8103 = alloca double, align 8            ; 6 uses
  %2 = alloca %class.aiVector3t, align 8          ; 7 uses
  %3 = alloca %class.aiVector3t, align 16         ; 7 uses
  %4 = alloca %class.aiVector3t, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0101)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6102)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8103)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcCartesianPointEEcvRKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  store double 0.000000e+00, ptr %.sroa.0101, align 8
  store double 0.000000e+00, ptr %.sroa.6102, align 8
  store double 0.000000e+00, ptr %.sroa.8103, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8              ; 7 uses
  %.not.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i, label %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3                   ; 3 uses
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.k = icmp ult i64 %i.j, 4
  br i1 %i.k, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.j, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.07.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.y, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.07.i
  %i.m = load double, ptr %i.l, align 8
  store double %i.m, ptr %.sroa.0101, align 8
  %i.n = or disjoint i64 %.07.i, 1                ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n
  %i.p = load double, ptr %i.o, align 8
  %i.q = trunc i64 %i.n to i32
  %cond111 = icmp eq i32 %i.q, 1
  %spec.select112 = select i1 %cond111, ptr %.sroa.6102, ptr %.sroa.0101
  store double %i.p, ptr %spec.select112, align 8
  %i.r = or disjoint i64 %.07.i, 2                ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.r
  %i.t = load double, ptr %i.s, align 8
  %i.u = trunc i64 %i.r to i32
  %cond = icmp eq i32 %i.u, 2
  %spec.select = select i1 %cond, ptr %.sroa.8103, ptr %.sroa.0101
  store double %i.t, ptr %spec.select, align 8
  %i.v = or disjoint i64 %.07.i, 3
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  %i.x = load double, ptr %i.w, align 8
  store double %i.x, ptr %.sroa.0101, align 8
  %i.y = add nuw i64 %.07.i, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !189

_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.07.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.y, %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit.loopexit.unr-lcssa ]
  %lcmp.mod110 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod110)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %_ZN10aiVector3tIdEixEj.exit.i.epil, %.lr.ph.i.epil.preheader
  %.07.i.epil = phi i64 [ %i.ac, %_ZN10aiVector3tIdEixEj.exit.i.epil ], [ %.07.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZN10aiVector3tIdEixEj.exit.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.07.i.epil
  %i.aa = load double, ptr %i.z, align 8
  %i.ab = trunc i64 %.07.i.epil to i32
  switch i32 %i.ab, label %_ZN10aiVector3tIdEixEj.exit.i.epil [
    i32 2, label %bb.c
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i.epil
  br label %_ZN10aiVector3tIdEixEj.exit.i.epil

bb.c:                                             ; preds = %.lr.ph.i.epil
  br label %_ZN10aiVector3tIdEixEj.exit.i.epil

_ZN10aiVector3tIdEixEj.exit.i.epil:               ; preds = %bb.c, %bb.b, %.lr.ph.i.epil
  %.0.i.i.epil = phi ptr [ %.sroa.6102, %bb.b ], [ %.sroa.8103, %bb.c ], [ %.sroa.0101, %.lr.ph.i.epil ]
  store double %i.aa, ptr %.0.i.i.epil, align 8
  %i.ac = add nuw i64 %.07.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit, label %.lr.ph.i.epil, !llvm.loop !194

_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit: ; preds = %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit.loopexit.unr-lcssa, %_ZN10aiVector3tIdEixEj.exit.i.epil, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store double 1.000000e+00, ptr %2, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %3, align 16
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store double 0.000000e+00, ptr %i.ag, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aj = load i8, ptr %i.ai, align 8, !range !192, !noundef !187
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x312IfcDirectionEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
  call void @_ZN6Assimp3IFC16ConvertDirectionER10aiVector3tIdERKNS0_10Schema_2x312IfcDirectionE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(72) %i.am)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN6Assimp3IFC21ConvertCartesianPointER10aiVector3tIdERKNS0_10Schema_2x317IfcCartesianPointE.exit
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ao = load i8, ptr %i.an, align 8, !range !192, !noundef !187
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ar = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x312IfcDirectionEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
  call void @_ZN6Assimp3IFC16ConvertDirectionER10aiVector3tIdERKNS0_10Schema_2x312IfcDirectionE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.ar)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.as = load ptr, ptr %1, align 8
  %i.at = getelementptr i8, ptr %i.as, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %1, i64 %i.au
  %i.aw = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.av, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x336IfcCartesianTransformationOperator3DE, i64 -1) #25 ; 3 uses
  %.not = icmp eq ptr %i.aw, null
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 128
  %i.ay = load i8, ptr %i.ax, align 8, !range !192, !noundef !187
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 120
  %i.bb = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x312IfcDirectionEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
  call void @_ZN6Assimp3IFC16ConvertDirectionER10aiVector3tIdERKNS0_10Schema_2x312IfcDirectionE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.bb)
  %.pre = load double, ptr %4, align 8
  %i.bc = load <2 x double>, ptr %i.ah, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.bd = phi double [ 0.000000e+00, %bb.h ], [ %.pre, %bb.i ], [ 0.000000e+00, %bb.g ] ; 2 uses
  %i.be = phi <2 x double> [ <double 0.000000e+00, double 1.000000e+00>, %bb.h ], [ %i.bc, %bb.i ], [ <double 0.000000e+00, double 1.000000e+00>, %bb.g ] ; 3 uses
  %i.bf = extractelement <2 x double> %i.be, i64 1 ; 2 uses
  %.sroa.0101.0..sroa.0101.0..sroa.0101.0..sroa.0101.0. = load double, ptr %.sroa.0101, align 8 ; 3 uses
  %.sroa.6102.0..sroa.6102.0..sroa.6102.0..sroa.6102.8. = load double, ptr %.sroa.6102, align 8 ; 3 uses
  %.sroa.8103.0..sroa.8103.0..sroa.8103.0..sroa.8103.16. = load double, ptr %.sroa.8103, align 8 ; 3 uses
  %i.bg = load double, ptr %2, align 8            ; 4 uses
  store double %i.bg, ptr %0, align 8
  %i.bh = load double, ptr %i.ad, align 8         ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store double %i.bh, ptr %i.bi, align 8
  %i.bj = load double, ptr %i.ae, align 8         ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store double %i.bj, ptr %i.bk, align 8
  %i.bl = load double, ptr %3, align 16           ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.bl, ptr %i.bm, align 8
  %i.bn = load double, ptr %i.af, align 8         ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.bn, ptr %i.bo, align 8
  %i.bp = load double, ptr %i.ag, align 16        ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %i.bp, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.bd, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bt = extractelement <2 x double> %i.be, i64 0
  store double %i.bt, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.bf, ptr %i.bu, align 8
  %i.bv = load ptr, ptr %1, align 8
  %i.bw = getelementptr i8, ptr %i.bv, i64 -24
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = getelementptr inbounds i8, ptr %1, i64 %i.bx
  %i.bz = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(24) %i.by, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x346IfcCartesianTransformationOperator3DnonUniformE, i64 -1) #25 ; 6 uses
  %.not26 = icmp eq ptr %i.bz, null
  br i1 %.not26, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %5 = getelementptr inbounds nuw i8, ptr %i.bz, i64 96
  %6 = load i8, ptr %5, align 8, !range !192, !noundef !187
  %7 = trunc nuw i8 %6 to i1
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %9 = load double, ptr %8, align 8
  %10 = select i1 %7, double %9, double 1.000000e+00 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 160
  %i.cb = load i8, ptr %i.ca, align 8, !range !192, !noundef !187
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 152
  %i.ce = load double, ptr %i.cd, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.cf = phi double [ %i.ce, %bb.l ], [ 1.000000e+00, %bb.k ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 176
  %i.ch = load i8, ptr %i.cg, align 8, !range !192, !noundef !187
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 168
  %i.ck = load double, ptr %i.cj, align 8
  br label %bb.q

bb.o:                                             ; preds = %bb.j
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cm = load i8, ptr %i.cl, align 8, !range !192, !noundef !187
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cp = load double, ptr %i.co, align 8         ; 3 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %.sroa.985.0 = phi double [ 1.000000e+00, %bb.m ], [ %i.ck, %bb.n ], [ %i.cp, %bb.p ], [ 1.000000e+00, %bb.o ] ; 4 uses
  %.sroa.684.0 = phi double [ %i.cf, %bb.m ], [ %i.cf, %bb.n ], [ %i.cp, %bb.p ], [ 1.000000e+00, %bb.o ] ; 4 uses
  %.sroa.083.0 = phi double [ %10, %bb.m ], [ %10, %bb.n ], [ %i.cp, %bb.p ], [ 1.000000e+00, %bb.o ] ; 4 uses
  %i.cq = fmul double %i.bh, 0.000000e+00         ; 2 uses
  %i.cr = fadd double %i.bg, %i.cq
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.bj, double 0.000000e+00, double %i.cr)
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.cu = load double, ptr %i.ct, align 8         ; 4 uses
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.cu, double %.sroa.0101.0..sroa.0101.0..sroa.0101.0..sroa.0101.0., double %i.cs) ; 3 uses
  %i.cw = fmul double %i.bn, 0.000000e+00         ; 2 uses
  %i.cx = fadd double %i.bl, %i.cw
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.bp, double 0.000000e+00, double %i.cx)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.da = load double, ptr %i.cz, align 8         ; 4 uses
  %i.db = tail call double @llvm.fmuladd.f64(double %i.da, double %.sroa.0101.0..sroa.0101.0..sroa.0101.0..sroa.0101.0., double %i.cy) ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.de = load double, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dg = load double, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.di = load double, ptr %i.dh, align 8
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.bg, double 0.000000e+00, double %i.bh)
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.bj, double 0.000000e+00, double %i.dj)
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.cu, double %.sroa.6102.0..sroa.6102.0..sroa.6102.0..sroa.6102.8., double %i.dk) ; 3 uses
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.bl, double 0.000000e+00, double %i.bn)
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.bp, double 0.000000e+00, double %i.dm)
  %i.do = tail call double @llvm.fmuladd.f64(double %i.da, double %.sroa.6102.0..sroa.6102.0..sroa.6102.0..sroa.6102.8., double %i.dn) ; 2 uses
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.bg, double 0.000000e+00, double %i.cq) ; 2 uses
  %i.dq = fadd double %i.bj, %i.dp
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.cu, double %.sroa.8103.0..sroa.8103.0..sroa.8103.0..sroa.8103.16., double %i.dq) ; 3 uses
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.bl, double 0.000000e+00, double %i.cw) ; 2 uses
  %i.dt = fadd double %i.bp, %i.ds
  %i.du = tail call double @llvm.fmuladd.f64(double %i.da, double %.sroa.8103.0..sroa.8103.0..sroa.8103.0..sroa.8103.16., double %i.dt) ; 2 uses
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.bj, double 0.000000e+00, double %i.dp)
  %i.dw = fadd double %i.dv, %i.cu                ; 3 uses
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.bp, double 0.000000e+00, double %i.ds)
  %i.dy = fadd double %i.dx, %i.da                ; 2 uses
  %i.dz = fmul double %i.db, 0.000000e+00         ; 2 uses
  %i.ea = tail call double @llvm.fmuladd.f64(double %.sroa.083.0, double %i.cv, double %i.dz)
  %i.eb = fmul double %.sroa.684.0, %i.db
  %i.ec = tail call double @llvm.fmuladd.f64(double %i.cv, double 0.000000e+00, double %i.eb)
  %i.ed = fmul double %i.do, 0.000000e+00         ; 2 uses
  %i.ee = tail call double @llvm.fmuladd.f64(double %.sroa.083.0, double %i.dl, double %i.ed)
  %i.ef = fmul double %.sroa.684.0, %i.do
  %i.eg = tail call double @llvm.fmuladd.f64(double %i.dl, double 0.000000e+00, double %i.ef)
  %i.eh = fmul double %i.du, 0.000000e+00         ; 2 uses
  %i.ei = tail call double @llvm.fmuladd.f64(double %.sroa.083.0, double %i.dr, double %i.eh)
  %i.ej = fmul double %.sroa.684.0, %i.du
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.dr, double 0.000000e+00, double %i.ej)
  %i.el = fmul double %i.dy, 0.000000e+00         ; 2 uses
  %i.em = tail call double @llvm.fmuladd.f64(double %.sroa.083.0, double %i.dw, double %i.el)
  %i.en = fmul double %.sroa.684.0, %i.dy
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.dw, double 0.000000e+00, double %i.en)
  %i.ep = insertelement <2 x double> %i.be, double %i.dg, i64 1 ; 2 uses
  %i.eq = fmul <2 x double> %i.ep, zeroinitializer ; 2 uses
  %i.er = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.es = insertelement <2 x double> %i.er, double %i.de, i64 1 ; 3 uses
  %i.et = fadd <2 x double> %i.es, %i.eq
  %i.eu = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.ev = insertelement <2 x double> %i.eu, double %i.di, i64 1 ; 4 uses
  %i.ew = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ev, <2 x double> zeroinitializer, <2 x double> %i.et)
  %i.ex = load <2 x double>, ptr %i.dc, align 8   ; 4 uses
  %i.ey = insertelement <2 x double> poison, double %.sroa.0101.0..sroa.0101.0..sroa.0101.0..sroa.0101.0., i64 0
  %i.ez = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ex, <2 x double> %i.ez, <2 x double> %i.ew) ; 3 uses
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.fc = extractelement <2 x double> %i.fa, i64 0 ; 3 uses
  %i.fd = tail call double @llvm.fmuladd.f64(double %i.fc, double 0.000000e+00, double %i.ea)
  %i.fe = tail call double @llvm.fmuladd.f64(double %i.fc, double 0.000000e+00, double %i.ec)
  %i.ff = tail call double @llvm.fmuladd.f64(double %i.cv, double 0.000000e+00, double %i.dz) ; 2 uses
  %i.fg = tail call double @llvm.fmuladd.f64(double %.sroa.985.0, double %i.fc, double %i.ff)
  %i.fh = insertelement <4 x double> poison, double %i.fd, i64 0
  %i.fi = insertelement <4 x double> %i.fh, double %i.fe, i64 1
  %i.fj = insertelement <4 x double> %i.fi, double %i.fg, i64 2
  %i.fk = insertelement <4 x double> %i.fj, double %i.ff, i64 3
  %i.fl = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fb, <4 x double> zeroinitializer, <4 x double> %i.fk)
  %i.fm = shufflevector <2 x double> %i.fa, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fn = shufflevector <4 x double> %i.fm, <4 x double> <double -0.000000e+00, double -0.000000e+00, double -0.000000e+00, double poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 1>
  %i.fo = fadd <4 x double> %i.fl, %i.fn
  store <4 x double> %i.fo, ptr %0, align 8
  %i.fp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> zeroinitializer, <2 x double> %i.ep)
  %i.fq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ev, <2 x double> zeroinitializer, <2 x double> %i.fp)
  %i.fr = tail call double @llvm.fmuladd.f64(double %i.dl, double 0.000000e+00, double %i.ed) ; 2 uses
  %i.fs = insertelement <2 x double> poison, double %.sroa.6102.0..sroa.6102.0..sroa.6102.0..sroa.6102.8., i64 0
  %i.ft = shufflevector <2 x double> %i.fs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ex, <2 x double> %i.ft, <2 x double> %i.fq) ; 3 uses
  %i.fv = shufflevector <2 x double> %i.fu, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.fw = extractelement <2 x double> %i.fu, i64 0 ; 3 uses
  %i.fx = tail call double @llvm.fmuladd.f64(double %i.fw, double 0.000000e+00, double %i.ee)
  %i.fy = tail call double @llvm.fmuladd.f64(double %i.fw, double 0.000000e+00, double %i.eg)
  %i.fz = tail call double @llvm.fmuladd.f64(double %.sroa.985.0, double %i.fw, double %i.fr)
  %i.ga = insertelement <4 x double> poison, double %i.fx, i64 0
  %i.gb = insertelement <4 x double> %i.ga, double %i.fy, i64 1
  %i.gc = insertelement <4 x double> %i.gb, double %i.fz, i64 2
  %i.gd = insertelement <4 x double> %i.gc, double %i.fr, i64 3
  %i.ge = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fv, <4 x double> zeroinitializer, <4 x double> %i.gd)
  %i.gf = shufflevector <2 x double> %i.fu, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.gg = shufflevector <4 x double> %i.gf, <4 x double> <double -0.000000e+00, double -0.000000e+00, double -0.000000e+00, double poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 1>
  %i.gh = fadd <4 x double> %i.ge, %i.gg
  store <4 x double> %i.gh, ptr %i.bi, align 8
  %i.gi = tail call double @llvm.fmuladd.f64(double %i.dr, double 0.000000e+00, double %i.eh) ; 2 uses
  %i.gj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> zeroinitializer, <2 x double> %i.eq) ; 2 uses
  %i.gk = fadd <2 x double> %i.ev, %i.gj
  %i.gl = insertelement <2 x double> poison, double %.sroa.8103.0..sroa.8103.0..sroa.8103.0..sroa.8103.16., i64 0
  %i.gm = shufflevector <2 x double> %i.gl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ex, <2 x double> %i.gm, <2 x double> %i.gk) ; 3 uses
  %i.go = shufflevector <2 x double> %i.gn, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.gp = extractelement <2 x double> %i.gn, i64 0 ; 3 uses
  %i.gq = tail call double @llvm.fmuladd.f64(double %i.gp, double 0.000000e+00, double %i.ei)
  %i.gr = tail call double @llvm.fmuladd.f64(double %i.gp, double 0.000000e+00, double %i.ek)
  %i.gs = tail call double @llvm.fmuladd.f64(double %.sroa.985.0, double %i.gp, double %i.gi)
  %i.gt = insertelement <4 x double> poison, double %i.gq, i64 0
  %i.gu = insertelement <4 x double> %i.gt, double %i.gr, i64 1
  %i.gv = insertelement <4 x double> %i.gu, double %i.gs, i64 2
  %i.gw = insertelement <4 x double> %i.gv, double %i.gi, i64 3
  %i.gx = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.go, <4 x double> zeroinitializer, <4 x double> %i.gw)
  %i.gy = shufflevector <2 x double> %i.gn, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.gz = shufflevector <4 x double> %i.gy, <4 x double> <double -0.000000e+00, double -0.000000e+00, double -0.000000e+00, double poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 1>
  %i.ha = fadd <4 x double> %i.gx, %i.gz
  store <4 x double> %i.ha, ptr %i.bk, align 8
  %i.hb = tail call double @llvm.fmuladd.f64(double %i.dw, double 0.000000e+00, double %i.el) ; 2 uses
  %i.hc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ev, <2 x double> zeroinitializer, <2 x double> %i.gj)
  %i.hd = fadd <2 x double> %i.ex, %i.hc          ; 3 uses
  %i.he = shufflevector <2 x double> %i.hd, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.hf = extractelement <2 x double> %i.hd, i64 0 ; 3 uses
  %i.hg = tail call double @llvm.fmuladd.f64(double %i.hf, double 0.000000e+00, double %i.em)
  %i.hh = tail call double @llvm.fmuladd.f64(double %i.hf, double 0.000000e+00, double %i.eo)
  %i.hi = tail call double @llvm.fmuladd.f64(double %.sroa.985.0, double %i.hf, double %i.hb)
  %i.hj = insertelement <4 x double> poison, double %i.hg, i64 0
  %i.hk = insertelement <4 x double> %i.hj, double %i.hh, i64 1
  %i.hl = insertelement <4 x double> %i.hk, double %i.hi, i64 2
  %i.hm = insertelement <4 x double> %i.hl, double %i.hb, i64 3
  %i.hn = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.he, <4 x double> zeroinitializer, <4 x double> %i.hm)
  %i.ho = shufflevector <2 x double> %i.hd, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.hp = shufflevector <4 x double> %i.ho, <4 x double> <double -0.000000e+00, double -0.000000e+00, double -0.000000e+00, double poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 1>
  %i.hq = fadd <4 x double> %i.hn, %i.hp
  store <4 x double> %i.hq, ptr %i.ct, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0101)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6102)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8103)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #12

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 56
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 72
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #27
  br label %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit

_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit: ; preds = %.lr.ph, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 80) #27
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !195

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeI10aiVector3tIdESt4pairIKS1_St6vectorImSaImEEESt10_Select1stIS7_EN6Assimp3IFC13CompareVectorESaIS7_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS7_E.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
end_hunk_1
