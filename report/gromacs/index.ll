Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/index?download=true
inline.NumInlined: 1449
inline.NumDeleted: 578
begin_hunk_0_@_Z7analysePK7t_atomsbb:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hq, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.35.1.lcssa.i, %.sroa.0299.1.lcssa.i
  br i1 %.not.i.i.i.i.i, label %.thread.i, label %bb.bz

.thread.i:                                        ; preds = %bb.by
  %i.ps = getelementptr inbounds i8, ptr null, i64 %i.pr ; 2 uses
  store ptr %i.ps, ptr %i.hs, align 8, !tbaa !48
  br label %bb.cd

bb.bz:                                            ; preds = %bb.by
  %i.pt = icmp ugt i64 %i.pr, 9223372036854775804
  br i1 %i.pt, label %.noexc.i.i.i202, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !115

.noexc.i.i.i202:                                  ; preds = %bb.bz
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc169.i unwind label %.loopexit.split-lp416.i.loopexit.split-lp.loopexit.split-lp

.noexc169.i:                                      ; preds = %.noexc.i.i.i202
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.bz
  %i.pu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pr) #26
          to label %.noexc170.i unwind label %.loopexit.split-lp416.i.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc170.i:                                      ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.pu, ptr %i.hq, align 8, !tbaa !47
  store ptr %i.pu, ptr %i.hr, align 8, !tbaa !50
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 %i.pr ; 4 uses
  store ptr %i.pv, ptr %i.hs, align 8, !tbaa !48
  %i.pw = icmp samesign ugt i64 %i.pr, 4
  br i1 %i.pw, label %bb.ca, label %bb.cb, !prof !132

bb.ca:                                            ; preds = %.noexc170.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.pu, ptr align 4 %.sroa.0299.1.lcssa.i, i64 %i.pr, i1 false)
  br label %bb.cd

bb.cb:                                            ; preds = %.noexc170.i
  %i.px = icmp eq i64 %i.pr, 4
  br i1 %i.px, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.py = load i32, ptr %.sroa.0299.1.lcssa.i, align 4, !tbaa !29
  store i32 %i.py, ptr %i.pu, align 4, !tbaa !29
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb, %bb.ca, %.thread.i
  %i.pz = phi ptr [ %i.pv, %bb.ca ], [ %i.pv, %bb.cb ], [ %i.pv, %bb.cc ], [ %i.ps, %.thread.i ]
  store ptr %i.pz, ptr %i.hr, align 8, !tbaa !50
  %i.qa = load ptr, ptr %i.bi, align 8, !tbaa !53 ; 8 uses
  %i.qb = load ptr, ptr %i.bk, align 8, !tbaa !54
  %.not.i.i.i = icmp eq ptr %i.qa, %i.qb
  br i1 %.not.i.i.i, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qa, i64 16 ; 3 uses
  store ptr %i.qc, ptr %i.qa, align 8, !tbaa !30
  %i.qd = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.qe = icmp eq ptr %i.qd, %i.ho
  br i1 %i.qe, label %bb.cf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.cf:                                            ; preds = %bb.ce
  %i.qf = load i64, ptr %i.hp, align 8, !tbaa !32 ; 3 uses
  %i.qg = icmp ult i64 %i.qf, 16
  call void @llvm.assume(i1 %i.qg)
  %i.qh = add nuw nsw i64 %i.qf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.qc, ptr noundef nonnull align 8 dereferenceable(1) %i.ho, i64 %i.qh, i1 false)
  br label %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ce
  store ptr %i.qd, ptr %i.qa, align 8, !tbaa !23
  %i.qi = load i64, ptr %i.ho, align 8, !tbaa !24
  store i64 %i.qi, ptr %i.qc, align 8, !tbaa !24
  %.pre.i198 = load i64, ptr %i.hp, align 8, !tbaa !32
  br label %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit.thread.i

_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.cf
  %i.qj = phi i64 [ %.pre.i198, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.qf, %bb.cf ]
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  store i64 %i.qj, ptr %i.qk, align 8, !tbaa !32
  store ptr %i.ho, ptr %7, align 8, !tbaa !23
  store i64 0, ptr %i.hp, align 8, !tbaa !32
  store i8 0, ptr %i.ho, align 8, !tbaa !24
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qa, i64 32
  %i.qm = load <2 x ptr>, ptr %i.hq, align 8, !tbaa !28
  store <2 x ptr> %i.qm, ptr %i.ql, align 8, !tbaa !28
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qa, i64 48
  %i.qo = load ptr, ptr %i.hs, align 8, !tbaa !48
  store ptr %i.qo, ptr %i.qn, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hq, i8 0, i64 24, i1 false)
  %i.qp = load ptr, ptr %i.bi, align 8, !tbaa !53
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 56
  store ptr %i.qq, ptr %i.bi, align 8, !tbaa !53
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i

bb.cg:                                            ; preds = %bb.cd
  invoke void @_ZNSt6vectorI10IndexGroupSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.qa, ptr noundef nonnull align 8 dereferenceable(56) %7)
          to label %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit.i unwind label %bb.cj

_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit.i: ; preds = %bb.cg
  %.pr.i = load ptr, ptr %i.hq, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i.i172.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i172.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i, label %bb.ch

bb.ch:                                            ; preds = %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit.i
  %i.qr = load ptr, ptr %i.hs, align 8, !tbaa !48
  %i.qs = ptrtoint ptr %i.qr to i64
  %i.qt = ptrtoint ptr %.pr.i to i64
  %i.qu = sub i64 %i.qs, %i.qt
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.qu) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i.i:                ; preds = %bb.ch, %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit.i, %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit.thread.i
  %i.qv = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.qw = icmp eq ptr %i.qv, %i.ho
  br i1 %i.qw, label %_ZN10IndexGroupD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i199: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i
  %i.qx = load i64, ptr %i.ho, align 8, !tbaa !24
  %i.qy = add i64 %i.qx, 1
  call void @_ZdlPvm(ptr noundef %i.qv, i64 noundef %i.qy) #22
  br label %_ZN10IndexGroupD2Ev.exit.i

_ZN10IndexGroupD2Ev.exit.i:                       ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %_ZL7grp_cmpN3gmx8ArrayRefIK10IndexGroupEENS0_IKiEEi.exit.thread.i

bb.ci:                                            ; preds = %.noexc.i.i203
  %i.qz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

.loopexit.split-lp416.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i202
  %lpad.loopexit.split-lp2568 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ra = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.rb = icmp eq ptr %i.ra, %i.ho
  br i1 %i.rb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i196: ; preds = %.loopexit.split-lp416.i.loopexit.split-lp.loopexit.split-lp
  %i.rc = load i64, ptr %i.ho, align 8, !tbaa !24
  %i.rd = add i64 %i.rc, 1
  call void @_ZdlPvm(ptr noundef %i.ra, i64 noundef %i.rd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.cj:                                            ; preds = %bb.cg
  %i.re = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10IndexGroupD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %7) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %.loopexit.split-lp416.i.loopexit.split-lp.loopexit.split-lp, %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i196, %bb.ci
  %.pn150.i = phi { ptr, i32 } [ %i.re, %bb.cj ], [ %i.qz, %bb.ci ], [ %lpad.loopexit.split-lp2568, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i196 ], [ %lpad.loopexit.split-lp2568, %.loopexit.split-lp416.i.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %.body.i

_ZL7grp_cmpN3gmx8ArrayRefIK10IndexGroupEENS0_IKiEEi.exit.thread.i: ; preds = %bb.bv, %_ZN10IndexGroupD2Ev.exit.i
  %.not.i.i173.i = icmp eq ptr %.sroa.35.1.lcssa.i, %.sroa.0299.1.lcssa.i
  %spec.select365.i = select i1 %.not.i.i173.i, ptr %.sroa.35.1.lcssa.i, ptr %.sroa.0299.1.lcssa.i ; 2 uses
  %indvars.iv.next805.i = add nuw nsw i64 %indvars.iv804.i, 1 ; 2 uses
  %exitcond807.not.i = icmp eq i64 %indvars.iv.next805.i, 10
  br i1 %exitcond807.not.i, label %.loopexit913.i, label %.preheader410.i, !llvm.loop !95

bb.ck:                                            ; preds = %.critedge.i
  %i.rf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60) ; 0 uses
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cl, %bb.ck
  %i.rg = load ptr, ptr @stdin, align 8, !tbaa !26
  %i.rh = call i32 @fgetc(ptr noundef %i.rg)
  %i.ri = call i32 @toupper(i32 noundef %i.rh) #27
  %trunc.i = trunc i32 %i.ri to i8
  switch i8 %trunc.i, label %bb.cl [
    i8 89, label %_ZNSt6vectorIiSaIiEE5clearEv.exit216.i
    i8 78, label %.loopexit386.i
  ]

.preheader403.i:                                  ; preds = %.loopexit913.i, %.critedge.i
  %indvars.iv816.i = phi i64 [ %indvars.iv.next817.i, %.critedge.i ], [ 0, %.loopexit913.i ] ; 3 uses
  %.sroa.0299.3694.i = phi ptr [ %.sroa.0299.8.i, %.critedge.i ], [ %.sroa.0299.1.lcssa.i, %.loopexit913.i ] ; 5 uses
  %.sroa.35.3693.i = phi ptr [ %.sroa.35.8.i, %.critedge.i ], [ %spec.select365893.i, %.loopexit913.i ] ; 3 uses
  %.sroa.71.3692.i = phi ptr [ %.sroa.71.8.i, %.critedge.i ], [ %.sroa.71.1.lcssa.i, %.loopexit913.i ] ; 3 uses
  %i.rj = getelementptr inbounds nuw [40 x i8], ptr @_ZZL12analyse_protN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPK7t_atomsPSt6vectorI10IndexGroupSaISD_EEbbE17constructing_data, i64 %indvars.iv816.i ; 4 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !131 ; 2 uses
  %i.rm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.58, ptr noundef %i.rl, i32 noundef %.0119.lcssa.i) ; 0 uses
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cm, %.preheader403.i
  %i.rn = load ptr, ptr @stdin, align 8, !tbaa !26
  %i.ro = call i32 @fgetc(ptr noundef %i.rn)
  %i.rp = call i32 @toupper(i32 noundef %i.ro) #27
  %trunc370.i = trunc i32 %i.rp to i8
  switch i8 %trunc370.i, label %bb.cm [
    i8 89, label %_ZNSt6vectorIiSaIiEE5clearEv.exit177.i
    i8 78, label %.critedge.i
  ]

_ZNSt6vectorIiSaIiEE5clearEv.exit177.i:           ; preds = %bb.cm
  %.not.i.i175.i = icmp eq ptr %.sroa.35.3693.i, %.sroa.0299.3694.i
  %spec.select366.i = select i1 %.not.i.i175.i, ptr %.sroa.35.3693.i, ptr %.sroa.0299.3694.i ; 2 uses
  %i.rq = load i32, ptr %1, align 8, !tbaa !41    ; 2 uses
  %i.rr = icmp sgt i32 %i.rq, 0
  br i1 %i.rr, label %.lr.ph684.i, label %.critedge.i

.lr.ph684.i:                                      ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit177.i
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rj, i64 24
  %.not725.i = icmp eq i64 %indvars.iv816.i, 0
  br label %bb.cn

bb.cn:                                            ; preds = %bb.dn, %.lr.ph684.i
  %38 = phi i32 [ %i.rq, %.lr.ph684.i ], [ %i.xp, %bb.dn ] ; 2 uses
  %.sroa.0299.4683.i = phi ptr [ %.sroa.0299.3694.i, %.lr.ph684.i ], [ %.sroa.0299.6.lcssa.i, %bb.dn ] ; 3 uses
  %.sroa.35.4682.i = phi ptr [ %spec.select366.i, %.lr.ph684.i ], [ %.sroa.35.7.i, %bb.dn ] ; 3 uses
  %.0360681.i = phi i32 [ 0, %.lr.ph684.i ], [ %.1361.lcssa.i, %bb.dn ] ; 3 uses
  %.sroa.71.4680.i = phi ptr [ %.sroa.71.3692.i, %.lr.ph684.i ], [ %.sroa.71.6.lcssa.i, %bb.dn ] ; 3 uses
  %i.ru = load ptr, ptr %i.hm, align 8, !tbaa !67
  %39 = sext i32 %.0360681.i to i64               ; 2 uses
  %i.rv = getelementptr inbounds [36 x i8], ptr %i.ru, i64 %39
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 24
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !72 ; 3 uses
  %i.ry = icmp slt i32 %i.rx, %.0119.lcssa.i
  br i1 %i.ry, label %.preheader393.i, label %.critedge.i

.preheader393.i:                                  ; preds = %bb.cn
  %40 = icmp slt i32 %.0360681.i, %38
  br i1 %40, label %.preheader387.i, label %.critedge2.i

.loopexit.split-lp421.i:                          ; preds = %bb.bt, %bb.bp
  %lpad.loopexit.split-lp423.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.lr.ph670.i:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit187.i
  %i.rz = load ptr, ptr %i.hm, align 8, !tbaa !67
  %i.sa = getelementptr inbounds [36 x i8], ptr %i.rz, i64 %indvars.iv.next814.i
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 24
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !72
  %i.sd = icmp eq i32 %i.sc, %i.rx
  br i1 %i.sd, label %.preheader387.i, label %.critedge2.i.loopexit, !llvm.loop !96

.preheader387.i:                                  ; preds = %.preheader393.i, %.lr.ph670.i
  %.sroa.71.6666.i1283 = phi ptr [ %.sroa.71.7.i, %.lr.ph670.i ], [ %.sroa.71.4680.i, %.preheader393.i ] ; 5 uses
  %.sroa.35.5668.i1282 = phi ptr [ %.sroa.35.6.i, %.lr.ph670.i ], [ %.sroa.35.4682.i, %.preheader393.i ] ; 4 uses
  %.sroa.0299.6669.i1281 = phi ptr [ %.sroa.0299.7.i, %.lr.ph670.i ], [ %.sroa.0299.4683.i, %.preheader393.i ] ; 7 uses
  %indvars.iv813.i1280 = phi i64 [ %indvars.iv.next814.i, %.lr.ph670.i ], [ %39, %.preheader393.i ] ; 3 uses
  %indvars1644 = trunc i64 %indvars.iv813.i1280 to i32 ; 2 uses
  br i1 %.not725.i, label %._crit_edge664.i, label %.lr.ph663.i

.lr.ph663.i:                                      ; preds = %.preheader387.i
  %i.se = load i32, ptr %i.rs, align 8, !tbaa !124
  %i.sf = load ptr, ptr %i.rj, align 8, !tbaa !126
  %smax810.i = call i32 @llvm.smax.i32(i32 %i.se, i32 1)
  %wide.trip.count811.i = zext nneg i32 %smax810.i to i64
  br label %bb.co

._crit_edge664.i:                                 ; preds = %bb.cp, %.preheader387.i
  %.091.lcssa.i = phi i8 [ 0, %.preheader387.i ], [ %spec.select161.i, %bb.cp ]
  %i.sg = load i8, ptr %i.rt, align 8, !tbaa !129, !range !73, !noundef !74
  %.not.i201 = icmp eq i8 %i.sg, %.091.lcssa.i
  br i1 %.not.i201, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit187.i, label %bb.cq

bb.co:                                            ; preds = %bb.cp, %.lr.ph663.i
  %indvars.iv808.i = phi i64 [ 0, %.lr.ph663.i ], [ %indvars.iv.next809.i, %bb.cp ] ; 2 uses
  %.091661.i = phi i8 [ 0, %.lr.ph663.i ], [ %spec.select161.i, %bb.cp ]
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %indvars.iv808.i
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !17
  %i.sj = load ptr, ptr %i.hn, align 8, !tbaa !127
  %i.sk = getelementptr inbounds [8 x i8], ptr %i.sj, i64 %indvars.iv813.i1280
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !128
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !17
  %i.sn = invoke noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.si, ptr noundef %i.sm)
          to label %bb.cp unwind label %.loopexit.split-lp389.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cp:                                            ; preds = %bb.co
  %i.so = icmp eq i32 %i.sn, 0
  %spec.select161.i = select i1 %i.so, i8 1, i8 %.091661.i ; 2 uses
  %indvars.iv.next809.i = add nuw nsw i64 %indvars.iv808.i, 1 ; 2 uses
  %exitcond812.not.i = icmp eq i64 %indvars.iv.next809.i, %wide.trip.count811.i
  br i1 %exitcond812.not.i, label %._crit_edge664.i, label %bb.co, !llvm.loop !97

bb.cq:                                            ; preds = %._crit_edge664.i
  %.not.i178.i = icmp eq ptr %.sroa.35.5668.i1282, %.sroa.71.6666.i1283
  br i1 %.not.i178.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  store i32 %indvars1644, ptr %.sroa.35.5668.i1282, align 4, !tbaa !29
  %i.sp = getelementptr inbounds nuw i8, ptr %.sroa.35.5668.i1282, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit187.i

bb.cs:                                            ; preds = %bb.cq
  %i.sq = ptrtoint ptr %.sroa.71.6666.i1283 to i64
  %i.sr = ptrtoint ptr %.sroa.0299.6669.i1281 to i64
  %i.ss = sub i64 %i.sq, %i.sr                    ; 6 uses
  %i.st = icmp eq i64 %i.ss, 9223372036854775804
  br i1 %i.st, label %bb.ct, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i179.i

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #25
          to label %.noexc185.i unwind label %.loopexit.split-lp389.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc185.i:                                      ; preds = %bb.ct
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i179.i: ; preds = %bb.cs
  %i.su = ashr exact i64 %i.ss, 2                 ; 3 uses
  %.sroa.speculated.i.i.i180.i = call i64 @llvm.umax.i64(i64 %i.su, i64 1)
  %i.sv = add nsw i64 %.sroa.speculated.i.i.i180.i, %i.su ; 2 uses
  %i.sw = icmp ult i64 %i.sv, %i.su
  %i.sx = call i64 @llvm.umin.i64(i64 %i.sv, i64 2305843009213693951)
  %i.sy = select i1 %i.sw, i64 2305843009213693951, i64 %i.sx ; 3 uses
  %.not.i.i.i181.i = icmp ne i64 %i.sy, 0
  call void @llvm.assume(i1 %.not.i.i.i181.i)
  %i.sz = shl nuw nsw i64 %i.sy, 2
  %i.ta = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.sz) #26
          to label %.noexc186.i unwind label %.loopexit.split-lp389.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc186.i:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i179.i
  %i.tb = getelementptr inbounds i8, ptr %i.ta, i64 %i.ss ; 2 uses
  store i32 %indvars1644, ptr %i.tb, align 4, !tbaa !29
  %i.tc = icmp sgt i64 %i.ss, 0
  br i1 %i.tc, label %bb.cu, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i182.i

bb.cu:                                            ; preds = %.noexc186.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ta, ptr align 4 %.sroa.0299.6669.i1281, i64 %i.ss, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i182.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i182.i: ; preds = %bb.cu, %.noexc186.i
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 4
  %.not.i17.i.i183.i = icmp eq ptr %.sroa.0299.6669.i1281, null
  br i1 %.not.i17.i.i183.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i184.i, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i182.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0299.6669.i1281, i64 noundef %i.ss) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i184.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i184.i: ; preds = %bb.cv, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i182.i
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.ta, i64 %i.sy
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit187.i

.loopexit.split-lp389.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.co, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i179.i, %bb.ct
  %lpad.loopexit.split-lp2533 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_ZNSt6vectorIiSaIiEE9push_backERKi.exit187.i:     ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i184.i, %bb.cr, %._crit_edge664.i
  %.sroa.71.7.i = phi ptr [ %.sroa.71.6666.i1283, %._crit_edge664.i ], [ %i.te, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i184.i ], [ %.sroa.71.6666.i1283, %bb.cr ] ; 2 uses
  %.sroa.35.6.i = phi ptr [ %.sroa.35.5668.i1282, %._crit_edge664.i ], [ %i.td, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i184.i ], [ %i.sp, %bb.cr ] ; 2 uses
  %.sroa.0299.7.i = phi ptr [ %.sroa.0299.6669.i1281, %._crit_edge664.i ], [ %i.ta, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i184.i ], [ %.sroa.0299.6669.i1281, %bb.cr ] ; 2 uses
  %indvars.iv.next814.i = add nsw i64 %indvars.iv813.i1280, 1 ; 4 uses
  %i.tf = load i32, ptr %1, align 8, !tbaa !41    ; 2 uses
  %i.tg = sext i32 %i.tf to i64
  %i.th = icmp slt i64 %indvars.iv.next814.i, %i.tg
  br i1 %i.th, label %.lr.ph670.i, label %.critedge2.i.loopexit, !llvm.loop !96

.critedge2.i.loopexit:                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit187.i, %.lr.ph670.i
  %indvars.le = trunc i64 %indvars.iv.next814.i to i32
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %.critedge2.i.loopexit, %.preheader393.i
  %41 = phi i32 [ %38, %.preheader393.i ], [ %i.tf, %.critedge2.i.loopexit ]
  %.sroa.71.6.lcssa.i = phi ptr [ %.sroa.71.4680.i, %.preheader393.i ], [ %.sroa.71.7.i, %.critedge2.i.loopexit ] ; 3 uses
  %.1361.lcssa.i = phi i32 [ %.0360681.i, %.preheader393.i ], [ %indvars.le, %.critedge2.i.loopexit ] ; 2 uses
  %.sroa.35.5.lcssa.i = phi ptr [ %.sroa.35.4682.i, %.preheader393.i ], [ %.sroa.35.6.i, %.critedge2.i.loopexit ] ; 3 uses
  %.sroa.0299.6.lcssa.i = phi ptr [ %.sroa.0299.4683.i, %.preheader393.i ], [ %.sroa.0299.7.i, %.critedge2.i.loopexit ] ; 8 uses
  %i.ti = icmp eq ptr %.sroa.0299.6.lcssa.i, %.sroa.35.5.lcssa.i
  br i1 %i.ti, label %bb.dn, label %bb.cw

bb.cw:                                            ; preds = %.critedge2.i
  %i.tj = load ptr, ptr %i.ht, align 8, !tbaa !117
  %i.tk = sext i32 %i.rx to i64
  %i.tl = getelementptr inbounds [32 x i8], ptr %i.tj, i64 %i.tk ; 3 uses
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !120
  %i.tn = load ptr, ptr %i.tm, align 8, !tbaa !17
  %i.to = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %i.tp = load i32, ptr %i.to, align 8, !tbaa !133
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tl, i64 12
  %i.tr = load i8, ptr %i.tq, align 4, !tbaa !134 ; 2 uses
  %i.ts = icmp eq i8 %i.tr, 32
  %narrow.i = select i1 %i.ts, i8 0, i8 %i.tr
  %spec.select162.i = zext i8 %narrow.i to i32
  %i.tt = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) @.str.59, ptr noundef %i.rl, ptr noundef %i.tn, i32 noundef %i.tp, i32 noundef %spec.select162.i) #21 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %i.hu, ptr %8, align 8, !tbaa !30
  %i.tu = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  store i64 %i.tu, ptr %i.f, align 8, !tbaa !31
  %i.tv = icmp ugt i64 %i.tu, 15
  br i1 %i.tv, label %.noexc.i189.i, label %._crit_edge.i.i188.i

.noexc.i189.i:                                    ; preds = %bb.cw
  %i.tw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc190.i unwind label %bb.dm ; 2 uses

.noexc190.i:                                      ; preds = %.noexc.i189.i
  store ptr %i.tw, ptr %8, align 8, !tbaa !23
  %i.tx = load i64, ptr %i.f, align 8, !tbaa !31
  store i64 %i.tx, ptr %i.hu, align 8, !tbaa !24
  br label %._crit_edge.i.i188.i

._crit_edge.i.i188.i:                             ; preds = %.noexc190.i, %bb.cw
  %i.ty = phi ptr [ %i.tw, %.noexc190.i ], [ %i.hu, %bb.cw ] ; 2 uses
  switch i64 %i.tu, label %bb.cy [
    i64 1, label %bb.cx
    i64 0, label %bb.cz
  ]

bb.cx:                                            ; preds = %._crit_edge.i.i188.i
  %i.tz = load i8, ptr %i.h, align 16, !tbaa !24
  store i8 %i.tz, ptr %i.ty, align 1, !tbaa !24
  br label %bb.cz

bb.cy:                                            ; preds = %._crit_edge.i.i188.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ty, ptr nonnull align 16 %i.h, i64 %i.tu, i1 false)
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %._crit_edge.i.i188.i
  %i.ua = load i64, ptr %i.f, align 8, !tbaa !31  ; 2 uses
  store i64 %i.ua, ptr %i.hv, align 8, !tbaa !32
  %i.ub = load ptr, ptr %8, align 8, !tbaa !23
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 %i.ua
  store i8 0, ptr %i.uc, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  %i.ud = ptrtoint ptr %.sroa.35.5.lcssa.i to i64
  %i.ue = ptrtoint ptr %.sroa.0299.6.lcssa.i to i64
  %i.uf = sub i64 %i.ud, %i.ue                    ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, i8 0, i64 24, i1 false)
  %i.ug = icmp ugt i64 %i.uf, 9223372036854775804
  br i1 %i.ug, label %.noexc.i.i194.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i193.i, !prof !115

.noexc.i.i194.i:                                  ; preds = %bb.cz
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc195.i unwind label %.loopexit.split-lp398.i.loopexit.split-lp.loopexit.split-lp

.noexc195.i:                                      ; preds = %.noexc.i.i194.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i193.i: ; preds = %bb.cz
  %i.uh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uf) #26
          to label %.noexc196.i unwind label %.loopexit.split-lp398.i.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc196.i:                                      ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i193.i
  store ptr %i.uh, ptr %i.hw, align 8, !tbaa !47
  store ptr %i.uh, ptr %i.hx, align 8, !tbaa !50
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 %i.uf ; 2 uses
  store ptr %i.ui, ptr %i.hy, align 8, !tbaa !48
  %i.uj = icmp samesign ugt i64 %i.uf, 4
  br i1 %i.uj, label %bb.da, label %bb.db, !prof !49

bb.da:                                            ; preds = %.noexc196.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.uh, ptr align 4 %.sroa.0299.6.lcssa.i, i64 %i.uf, i1 false)
  br label %bb.dd

bb.db:                                            ; preds = %.noexc196.i
  %i.uk = icmp eq i64 %i.uf, 4
  br i1 %i.uk, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.ul = load i32, ptr %.sroa.0299.6.lcssa.i, align 4, !tbaa !29
  store i32 %i.ul, ptr %i.uh, align 4, !tbaa !29
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.da
  store ptr %i.ui, ptr %i.hx, align 8, !tbaa !50
  %i.um = load ptr, ptr %i.bi, align 8, !tbaa !53 ; 10 uses
  %i.un = load ptr, ptr %i.bk, align 8, !tbaa !54
  %.not.i.i198.i = icmp eq ptr %i.um, %i.un
  br i1 %.not.i.i198.i, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.uo = getelementptr inbounds nuw i8, ptr %i.um, i64 16 ; 3 uses
  store ptr %i.uo, ptr %i.um, align 8, !tbaa !30
  %i.up = load ptr, ptr %8, align 8, !tbaa !23    ; 2 uses
  %i.uq = icmp eq ptr %i.up, %i.hu
  br i1 %i.uq, label %bb.df, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i199.i

bb.df:                                            ; preds = %bb.de
  %i.ur = load i64, ptr %i.hv, align 8, !tbaa !32 ; 3 uses
  %i.us = icmp ult i64 %i.ur, 16
  call void @llvm.assume(i1 %i.us)
  %i.ut = add nuw nsw i64 %i.ur, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.uo, ptr noundef nonnull align 8 dereferenceable(1) %i.hu, i64 %i.ut, i1 false)
  br label %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit202.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i199.i: ; preds = %bb.de
  store ptr %i.up, ptr %i.um, align 8, !tbaa !23
  %i.uu = load i64, ptr %i.hu, align 8, !tbaa !24
  store i64 %i.uu, ptr %i.uo, align 8, !tbaa !24
  %.pre825.i = load i64, ptr %i.hv, align 8, !tbaa !32
  br label %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit202.thread.i

_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit202.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i199.i, %bb.df
  %i.uv = phi i64 [ %.pre825.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i199.i ], [ %i.ur, %bb.df ]
  %i.uw = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  store i64 %i.uv, ptr %i.uw, align 8, !tbaa !32
  store ptr %i.hu, ptr %8, align 8, !tbaa !23
  store i64 0, ptr %i.hv, align 8, !tbaa !32
  store i8 0, ptr %i.hu, align 8, !tbaa !24
  %i.ux = getelementptr inbounds nuw i8, ptr %i.um, i64 32
  %i.uy = load <2 x ptr>, ptr %i.hw, align 8, !tbaa !28
  store <2 x ptr> %i.uy, ptr %i.ux, align 8, !tbaa !28
  %i.uz = getelementptr inbounds nuw i8, ptr %i.um, i64 48
  %i.va = load ptr, ptr %i.hy, align 8, !tbaa !48
  store ptr %i.va, ptr %i.uz, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, i8 0, i64 24, i1 false)
  %i.vb = load ptr, ptr %i.bi, align 8, !tbaa !53
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 56
  store ptr %i.vc, ptr %i.bi, align 8, !tbaa !53
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i204.i

bb.dg:                                            ; preds = %bb.dd
  %i.vd = load ptr, ptr %0, align 8, !tbaa !65    ; 5 uses
  %i.ve = ptrtoint ptr %i.um to i64
  %i.vf = ptrtoint ptr %i.vd to i64               ; 2 uses
  %i.vg = sub i64 %i.ve, %i.vf                    ; 3 uses
  %i.vh = icmp eq i64 %i.vg, 9223372036854775800
  br i1 %i.vh, label %bb.dh, label %_ZNKSt6vectorI10IndexGroupSaIS0_EE12_M_check_lenEmPKc.exit.i

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #25
          to label %.noexc469 unwind label %.loopexit.split-lp579.loopexit.split-lp

.noexc469:                                        ; preds = %bb.dh
  unreachable

_ZNKSt6vectorI10IndexGroupSaIS0_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.dg
  %i.vi = sdiv exact i64 %i.vg, 56                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.vi, i64 1)
  %i.vj = add nsw i64 %.sroa.speculated.i.i, %i.vi ; 2 uses
  %i.vk = icmp ult i64 %i.vj, %i.vi
  %i.vl = call i64 @llvm.umin.i64(i64 %i.vj, i64 164703072086692425)
  %i.vm = select i1 %i.vk, i64 164703072086692425, i64 %i.vl ; 3 uses
  %.not.i.i463 = icmp ne i64 %i.vm, 0
  call void @llvm.assume(i1 %.not.i.i463)
  %i.vn = mul nuw nsw i64 %i.vm, 56
  %i.vo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vn) #26
          to label %.noexc470 unwind label %.loopexit.split-lp579.loopexit.split-lp ; 5 uses

.noexc470:                                        ; preds = %_ZNKSt6vectorI10IndexGroupSaIS0_EE12_M_check_lenEmPKc.exit.i
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 %i.vg ; 6 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 16 ; 3 uses
  store ptr %i.vq, ptr %i.vp, align 8, !tbaa !30
  %i.vr = load ptr, ptr %8, align 8, !tbaa !23    ; 2 uses
  %i.vs = icmp eq ptr %i.vr, %i.hu
  br i1 %i.vs, label %bb.di, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i464

bb.di:                                            ; preds = %.noexc470
  %i.vt = load i64, ptr %i.hv, align 8, !tbaa !32 ; 3 uses
  %i.vu = icmp ult i64 %i.vt, 16
  call void @llvm.assume(i1 %i.vu)
  %i.vv = add nuw nsw i64 %i.vt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.vq, ptr noundef nonnull align 8 dereferenceable(1) %i.hu, i64 %i.vv, i1 false)
  br label %_ZN10IndexGroupC2EOS_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i464: ; preds = %.noexc470
  store ptr %i.vr, ptr %i.vp, align 8, !tbaa !23
  %i.vw = load i64, ptr %i.hu, align 8, !tbaa !24
  store i64 %i.vw, ptr %i.vq, align 8, !tbaa !24
  %.pre.i465 = load i64, ptr %i.hv, align 8, !tbaa !32
  br label %_ZN10IndexGroupC2EOS_.exit.i

_ZN10IndexGroupC2EOS_.exit.i:                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i464, %bb.di
  %i.vx = phi i64 [ %i.vt, %bb.di ], [ %.pre.i465, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i464 ]
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  store i64 %i.vx, ptr %i.vy, align 8, !tbaa !32
  store ptr %i.hu, ptr %8, align 8, !tbaa !23
  store i64 0, ptr %i.hv, align 8, !tbaa !32
  store i8 0, ptr %i.hu, align 8, !tbaa !24
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vp, i64 32
  %i.wa = load <2 x ptr>, ptr %i.hw, align 8, !tbaa !28
  store <2 x ptr> %i.wa, ptr %i.vz, align 8, !tbaa !28
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vp, i64 48
  %i.wc = load ptr, ptr %i.hy, align 8, !tbaa !48
  store ptr %i.wc, ptr %i.wb, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, i8 0, i64 24, i1 false)
  %.not10.i.i.i.i = icmp eq ptr %i.vd, %i.um
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10IndexGroupSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit26.i, label %.lr.ph.i.i.i.i466

.lr.ph.i.i.i.i466:                                ; preds = %_ZN10IndexGroupC2EOS_.exit.i, %_ZSt19__relocate_object_aI10IndexGroupS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ww, %_ZSt19__relocate_object_aI10IndexGroupS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.vo, %_ZN10IndexGroupC2EOS_.exit.i ] ; 7 uses
  %.0911.i.i.i.i = phi ptr [ %i.wv, %_ZSt19__relocate_object_aI10IndexGroupS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.vd, %_ZN10IndexGroupC2EOS_.exit.i ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !135)
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.wd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.wd, ptr %.012.i.i.i.i, align 8, !tbaa !30, !alias.scope !135
  %i.we = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !23, !alias.scope !136 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.wg = icmp eq ptr %i.we, %i.wf
  br i1 %i.wg, label %bb.dj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i467

bb.dj:                                            ; preds = %.lr.ph.i.i.i.i466
  %i.wh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.wi = load i64, ptr %i.wh, align 8, !tbaa !32, !alias.scope !136 ; 3 uses
  %i.wj = icmp ult i64 %i.wi, 16
  call void @llvm.assume(i1 %i.wj)
  %i.wk = add nuw nsw i64 %i.wi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.wd, ptr noundef nonnull align 8 dereferenceable(1) %i.wf, i64 %i.wk, i1 false), !alias.scope !137
  br label %_ZSt19__relocate_object_aI10IndexGroupS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i467: ; preds = %.lr.ph.i.i.i.i466
  store ptr %i.we, ptr %.012.i.i.i.i, align 8, !tbaa !23, !alias.scope !135
  %i.wl = load i64, ptr %i.wf, align 8, !tbaa !24, !alias.scope !136
  store i64 %i.wl, ptr %i.wd, align 8, !tbaa !24, !alias.scope !135
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !32, !alias.scope !136
  br label %_ZSt19__relocate_object_aI10IndexGroupS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aI10IndexGroupS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i467, %bb.dj
  %i.wm = phi i64 [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i467 ], [ %i.wi, %bb.dj ]
  %i.wn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.wo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.wm, ptr %i.wo, align 8, !tbaa !32, !alias.scope !135
  store ptr %i.wf, ptr %.0911.i.i.i.i, align 8, !tbaa !23, !alias.scope !136
  store i64 0, ptr %i.wn, align 8, !tbaa !32, !alias.scope !136
  store i8 0, ptr %i.wf, align 8, !tbaa !24, !alias.scope !136
  %i.wp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.wq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.wr = load <2 x ptr>, ptr %i.wq, align 8, !tbaa !28, !alias.scope !136
  store <2 x ptr> %i.wr, ptr %i.wp, align 8, !tbaa !28, !alias.scope !135
  %i.ws = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48
  %i.wt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !48, !alias.scope !136
  store ptr %i.wu, ptr %i.ws, align 8, !tbaa !48, !alias.scope !135
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wq, i8 0, i64 24, i1 false), !alias.scope !136
  %i.wv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 56 ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i468 = icmp eq ptr %i.wv, %i.um
  br i1 %.not.i.i.i.i468, label %_ZNSt6vectorI10IndexGroupSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit26.i, label %.lr.ph.i.i.i.i466, !llvm.loop !0

_ZNSt6vectorI10IndexGroupSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit26.i: ; preds = %_ZSt19__relocate_object_aI10IndexGroupS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZN10IndexGroupC2EOS_.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.vo, %_ZN10IndexGroupC2EOS_.exit.i ], [ %i.ww, %_ZSt19__relocate_object_aI10IndexGroupS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.wx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 56
  %.not.i27.i = icmp eq ptr %i.vd, null
  br i1 %.not.i27.i, label %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit202.i, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt6vectorI10IndexGroupSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit26.i
  %i.wy = load ptr, ptr %i.bk, align 8, !tbaa !54
  %i.wz = ptrtoint ptr %i.wy to i64
  %i.xa = sub i64 %i.wz, %i.vf
  call void @_ZdlPvm(ptr noundef nonnull %i.vd, i64 noundef %i.xa) #22
  br label %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit202.i

_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit202.i: ; preds = %bb.dk, %_ZNSt6vectorI10IndexGroupSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit26.i
  store ptr %i.vo, ptr %0, align 8, !tbaa !65
  store ptr %i.wx, ptr %i.bi, align 8, !tbaa !53
  %i.xb = getelementptr inbounds nuw [56 x i8], ptr %i.vo, i64 %i.vm
  store ptr %i.xb, ptr %i.bk, align 8, !tbaa !54
  %.pr363.i = load ptr, ptr %i.hw, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i.i203.i = icmp eq ptr %.pr363.i, null
  br i1 %.not.i.i.i.i203.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i204.i, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit202.i
  %i.xc = load ptr, ptr %i.hy, align 8, !tbaa !48
  %i.xd = ptrtoint ptr %i.xc to i64
  %i.xe = ptrtoint ptr %.pr363.i to i64
  %i.xf = sub i64 %i.xd, %i.xe
  call void @_ZdlPvm(ptr noundef nonnull %.pr363.i, i64 noundef %i.xf) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i204.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i204.i:             ; preds = %bb.dl, %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit202.i, %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit202.thread.i
  %i.xg = load ptr, ptr %8, align 8, !tbaa !23    ; 2 uses
  %i.xh = icmp eq ptr %i.xg, %i.hu
  br i1 %i.xh, label %_ZNSt6vectorIiSaIiEE5clearEv.exit210.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i205.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i205.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i204.i
  %i.xi = load i64, ptr %i.hu, align 8, !tbaa !24
  %i.xj = add i64 %i.xi, 1
  call void @_ZdlPvm(ptr noundef %i.xg, i64 noundef %i.xj) #22
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit210.i

_ZNSt6vectorIiSaIiEE5clearEv.exit210.i:           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i204.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i205.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %.pre826.i = load i32, ptr %1, align 8, !tbaa !41
  br label %bb.dn

bb.dm:                                            ; preds = %.noexc.i189.i
  %i.xk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.i

.loopexit.split-lp398.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i193.i, %.noexc.i.i194.i
  %lpad.loopexit.split-lp2552 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xl = load ptr, ptr %8, align 8, !tbaa !23    ; 2 uses
  %i.xm = icmp eq ptr %i.xl, %i.hu
  br i1 %i.xm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211.i: ; preds = %.loopexit.split-lp398.i.loopexit.split-lp.loopexit.split-lp
  %i.xn = load i64, ptr %i.hu, align 8, !tbaa !24
  %i.xo = add i64 %i.xn, 1
  call void @_ZdlPvm(ptr noundef %i.xl, i64 noundef %i.xo) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.i

.loopexit.split-lp579.loopexit.split-lp:          ; preds = %_ZNKSt6vectorI10IndexGroupSaIS0_EE12_M_check_lenEmPKc.exit.i, %bb.dh
  %lpad.loopexit.split-lp2555 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10IndexGroupD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.i: ; preds = %.loopexit.split-lp398.i.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp579.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211.i, %bb.dm
  %.pn143.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp2555, %.loopexit.split-lp579.loopexit.split-lp ], [ %i.xk, %bb.dm ], [ %lpad.loopexit.split-lp2552, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211.i ], [ %lpad.loopexit.split-lp2552, %.loopexit.split-lp398.i.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %.body.i

bb.dn:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit210.i, %.critedge2.i
  %i.xp = phi i32 [ %41, %.critedge2.i ], [ %.pre826.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit210.i ] ; 2 uses
  %.sroa.35.7.i = phi ptr [ %.sroa.35.5.lcssa.i, %.critedge2.i ], [ %.sroa.0299.6.lcssa.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit210.i ] ; 2 uses
  %42 = icmp slt i32 %.1361.lcssa.i, %i.xp
  br i1 %42, label %bb.cn, label %.critedge.i, !llvm.loop !101

.critedge.i:                                      ; preds = %bb.cm, %bb.dn, %bb.cn, %_ZNSt6vectorIiSaIiEE5clearEv.exit177.i
  %.sroa.71.8.i = phi ptr [ %.sroa.71.4680.i, %bb.cn ], [ %.sroa.71.3692.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit177.i ], [ %.sroa.71.6.lcssa.i, %bb.dn ], [ %.sroa.71.3692.i, %bb.cm ] ; 4 uses
  %.sroa.35.8.i = phi ptr [ %.sroa.35.4682.i, %bb.cn ], [ %spec.select366.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit177.i ], [ %.sroa.35.7.i, %bb.dn ], [ %.sroa.35.3693.i, %bb.cm ] ; 3 uses
  %.sroa.0299.8.i = phi ptr [ %.sroa.0299.4683.i, %bb.cn ], [ %.sroa.0299.3694.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit177.i ], [ %.sroa.0299.6.lcssa.i, %bb.dn ], [ %.sroa.0299.3694.i, %bb.cm ] ; 6 uses
  %indvars.iv.next817.i = add nuw nsw i64 %indvars.iv816.i, 1 ; 2 uses
  %exitcond820.not.i = icmp eq i64 %indvars.iv.next817.i, 10
  br i1 %exitcond820.not.i, label %bb.ck, label %.preheader403.i, !llvm.loop !102

_ZNSt6vectorIiSaIiEE5clearEv.exit216.i:           ; preds = %bb.cl
  %i.xq = load i32, ptr %1, align 8, !tbaa !41    ; 2 uses
  %i.xr = icmp sgt i32 %i.xq, 0
  br i1 %i.xr, label %.lr.ph716.i.preheader, label %.loopexit386.i

.lr.ph716.i.preheader:                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit216.i
  %.not.i.i214.i = icmp eq ptr %.sroa.35.8.i, %.sroa.0299.8.i
  %spec.select367.i = select i1 %.not.i.i214.i, ptr %.sroa.35.8.i, ptr %.sroa.0299.8.i
  br label %.lr.ph716.i

.lr.ph716.i:                                      ; preds = %.lr.ph716.i.preheader, %.critedge6.i
  %43 = phi i32 [ %46, %.critedge6.i ], [ %i.xq, %.lr.ph716.i.preheader ] ; 2 uses
  %.sroa.0299.9715.i = phi ptr [ %.sroa.0299.10.lcssa.i, %.critedge6.i ], [ %.sroa.0299.8.i, %.lr.ph716.i.preheader ] ; 3 uses
  %.0358714.i = phi i32 [ %.1359.lcssa.i, %.critedge6.i ], [ 0, %.lr.ph716.i.preheader ] ; 3 uses
  %.sroa.35.9713.i = phi ptr [ %.sroa.35.10.lcssa.i, %.critedge6.i ], [ %spec.select367.i, %.lr.ph716.i.preheader ] ; 3 uses
  %.sroa.71.9712.i = phi ptr [ %.sroa.71.10.lcssa.i, %.critedge6.i ], [ %.sroa.71.8.i, %.lr.ph716.i.preheader ] ; 3 uses
  %i.xs = load ptr, ptr %i.hm, align 8, !tbaa !67
  %44 = sext i32 %.0358714.i to i64               ; 2 uses
  %i.xt = getelementptr inbounds [36 x i8], ptr %i.xs, i64 %44
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 24
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !72 ; 2 uses
  %i.xw = icmp slt i32 %i.xv, %.0119.lcssa.i
  br i1 %i.xw, label %.preheader.i, label %.critedge4.i

.preheader.i:                                     ; preds = %.lr.ph716.i
  %45 = icmp slt i32 %.0358714.i, %43
  br i1 %45, label %sub_0.i, label %.critedge6.i

.critedge4.i:                                     ; preds = %.critedge6.i, %.lr.ph716.i
  %.sroa.71.9.lcssa.i = phi ptr [ %.sroa.71.10.lcssa.i, %.critedge6.i ], [ %.sroa.71.9712.i, %.lr.ph716.i ] ; 3 uses
  %.sroa.35.9.lcssa.i = phi ptr [ %.sroa.35.10.lcssa.i, %.critedge6.i ], [ %.sroa.35.9713.i, %.lr.ph716.i ] ; 2 uses
  %.sroa.0299.9.lcssa.i = phi ptr [ %.sroa.0299.10.lcssa.i, %.critedge6.i ], [ %.sroa.0299.9715.i, %.lr.ph716.i ] ; 7 uses
  %i.xx = icmp eq ptr %.sroa.0299.9.lcssa.i, %.sroa.35.9.lcssa.i
  br i1 %i.xx, label %.loopexit386.i, label %._crit_edge.i.i249.i

.lr.ph702.i:                                      ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %i.xy = load ptr, ptr %i.hm, align 8, !tbaa !67
  %i.xz = getelementptr inbounds [36 x i8], ptr %i.xy, i64 %indvars.iv.next822.i
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 24
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !72
  %i.yc = icmp eq i32 %i.yb, %i.xv
  br i1 %i.yc, label %sub_0.i, label %.critedge6.i.loopexit, !llvm.loop !103

sub_0.i:                                          ; preds = %.preheader.i, %.lr.ph702.i
  %.sroa.71.10696.i1292 = phi ptr [ %.sroa.71.12.i, %.lr.ph702.i ], [ %.sroa.71.9712.i, %.preheader.i ] ; 15 uses
  %.sroa.35.10697.i1291 = phi ptr [ %.sroa.35.11.i, %.lr.ph702.i ], [ %.sroa.35.9713.i, %.preheader.i ] ; 9 uses
  %.sroa.0299.10700.i1290 = phi ptr [ %.sroa.0299.12.i, %.lr.ph702.i ], [ %.sroa.0299.9715.i, %.preheader.i ] ; 22 uses
  %.0701.i1289 = phi i32 [ %.1.i, %.lr.ph702.i ], [ -1, %.preheader.i ] ; 11 uses
  %indvars.iv821.i1288 = phi i64 [ %indvars.iv.next822.i, %.lr.ph702.i ], [ %44, %.preheader.i ] ; 3 uses
  %indvars1646 = trunc i64 %indvars.iv821.i1288 to i32 ; 7 uses
  %i.yd = load ptr, ptr %i.hn, align 8, !tbaa !127
  %i.ye = getelementptr inbounds [8 x i8], ptr %i.yd, i64 %indvars.iv821.i1288
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !128
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !17 ; 5 uses
  %i.yh = load i8, ptr %i.yg, align 1             ; 2 uses
  switch i8 %i.yh, label %.tail375.i.thread [
    i8 67, label %sub_1.i
    i8 79, label %.tail375.i
  ]

sub_1.i:                                          ; preds = %sub_0.i
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yg, i64 1
  %i.yj = load i8, ptr %i.yi, align 1
  switch i8 %i.yj, label %.tail379.thread.i [
    i8 65, label %.tail.i.thread
    i8 0, label %bb.dz
  ]

.tail.i.thread:                                   ; preds = %sub_1.i
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yg, i64 2
  %i.yl = load i8, ptr %i.yk, align 1
  %i.ym = icmp eq i8 %i.yl, 0
  br i1 %i.ym, label %bb.do, label %.tail379.thread.i

bb.do:                                            ; preds = %.tail.i.thread
  %.not.i217.i = icmp eq ptr %.sroa.35.10697.i1291, %.sroa.71.10696.i1292
  br i1 %.not.i217.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  store i32 %indvars1646, ptr %.sroa.35.10697.i1291, align 4, !tbaa !29
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit226.i

bb.dq:                                            ; preds = %bb.do
  %i.yn = ptrtoint ptr %.sroa.71.10696.i1292 to i64
  %i.yo = ptrtoint ptr %.sroa.0299.10700.i1290 to i64
  %i.yp = sub i64 %i.yn, %i.yo                    ; 6 uses
  %i.yq = icmp eq i64 %i.yp, 9223372036854775804
  br i1 %i.yq, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i218.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i218.i: ; preds = %bb.dq
  %i.yr = ashr exact i64 %i.yp, 2                 ; 3 uses
  %.sroa.speculated.i.i.i219.i = call i64 @llvm.umax.i64(i64 %i.yr, i64 1)
  %i.ys = add nsw i64 %.sroa.speculated.i.i.i219.i, %i.yr ; 2 uses
  %i.yt = icmp ult i64 %i.ys, %i.yr
  %i.yu = call i64 @llvm.umin.i64(i64 %i.ys, i64 2305843009213693951)
  %i.yv = select i1 %i.yt, i64 2305843009213693951, i64 %i.yu ; 3 uses
  %.not.i.i.i220.i = icmp ne i64 %i.yv, 0
  call void @llvm.assume(i1 %.not.i.i.i220.i)
  %i.yw = shl nuw nsw i64 %i.yv, 2
  %i.yx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yw) #26
          to label %.noexc225.i unwind label %.loopexit.i ; 4 uses

.noexc225.i:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i218.i
  %i.yy = getelementptr inbounds i8, ptr %i.yx, i64 %i.yp ; 2 uses
  store i32 %indvars1646, ptr %i.yy, align 4, !tbaa !29
  %i.yz = icmp sgt i64 %i.yp, 0
  br i1 %i.yz, label %bb.dr, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i221.i

bb.dr:                                            ; preds = %.noexc225.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.yx, ptr align 4 %.sroa.0299.10700.i1290, i64 %i.yp, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i221.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i221.i: ; preds = %bb.dr, %.noexc225.i
  %.not.i17.i.i222.i = icmp eq ptr %.sroa.0299.10700.i1290, null
  br i1 %.not.i17.i.i222.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i223.i, label %bb.ds

bb.ds:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i221.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0299.10700.i1290, i64 noundef %i.yp) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i223.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i223.i: ; preds = %bb.ds, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i221.i
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %i.yx, i64 %i.yv
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit226.i

_ZNSt6vectorIiSaIiEE9push_backERKi.exit226.i:     ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i223.i, %bb.dp
  %.sroa.71.19.i = phi ptr [ %i.za, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i223.i ], [ %.sroa.71.10696.i1292, %bb.dp ] ; 5 uses
  %.pn369.i = phi ptr [ %i.yy, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i223.i ], [ %.sroa.35.10697.i1291, %bb.dp ] ; 3 uses
  %.sroa.0299.19.i = phi ptr [ %i.yx, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i223.i ], [ %.sroa.0299.10700.i1290, %bb.dp ] ; 9 uses
  %.sroa.35.18.i = getelementptr inbounds nuw i8, ptr %.pn369.i, i64 4 ; 4 uses
  %i.zb = ptrtoint ptr %.sroa.35.18.i to i64      ; 2 uses
  %i.zc = ptrtoint ptr %.sroa.0299.19.i to i64    ; 2 uses
  %i.zd = sub i64 %i.zb, %i.zc                    ; 5 uses
  %i.ze = ashr exact i64 %i.zd, 2                 ; 6 uses
  %i.zf = trunc i64 %i.ze to i32                  ; 3 uses
  %i.zg = icmp ult i64 %i.ze, -3
  br i1 %i.zg, label %bb.dt, label %bb.dy

bb.dt:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit226.i
  %i.zh = ptrtoint ptr %.sroa.71.19.i to i64      ; 2 uses
  %i.zi = sub i64 %i.zh, %i.zb
  %i.zj = ashr exact i64 %i.zi, 2                 ; 2 uses
  %i.zk = icmp ult i64 %i.ze, 2305843009213693952
  call void @llvm.assume(i1 %i.zk)
  %i.zl = xor i64 %i.ze, 2305843009213693951      ; 2 uses
  %i.zm = icmp ule i64 %i.zj, %i.zl
  call void @llvm.assume(i1 %i.zm)
  %.not28.i.i = icmp ult i64 %i.zj, 3
  br i1 %.not28.i.i, label %bb.du, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i: ; preds = %bb.dt
  store i32 0, ptr %.sroa.35.18.i, align 4, !tbaa !29
  %i.zn = getelementptr i8, ptr %.pn369.i, i64 8
  store i64 0, ptr %i.zn, align 4
  %i.zo = getelementptr i8, ptr %.pn369.i, i64 16
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.du:                                            ; preds = %bb.dt
  %i.zp = icmp samesign ult i64 %i.zl, 3
  br i1 %i.zp, label %bb.dv, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #25
          to label %.noexc276.i unwind label %.loopexit.split-lp.i

.noexc276.i:                                      ; preds = %bb.dv
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.du
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ze, i64 3)
  %i.zq = add nuw nsw i64 %.sroa.speculated.i.i.i, %i.ze
  %i.zr = call i64 @llvm.umin.i64(i64 %i.zq, i64 2305843009213693951) ; 2 uses
  %i.zs = shl nuw nsw i64 %i.zr, 2
  %i.zt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zs) #26
          to label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i unwind label %.loopexit.i ; 4 uses

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 %i.zd ; 3 uses
  store i32 0, ptr %i.zu, align 4, !tbaa !29
  %i.zv = getelementptr i8, ptr %i.zu, i64 4
  store i64 0, ptr %i.zv, align 4
  %i.zw = icmp sgt i64 %i.zd, 0
  br i1 %i.zw, label %bb.dw, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i

bb.dw:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.zt, ptr align 4 %.sroa.0299.19.i, i64 %i.zd, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i: ; preds = %bb.dw, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i
  %.not.i35.i.i = icmp eq ptr %.sroa.0299.19.i, null
  br i1 %.not.i35.i.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i, label %bb.dx

bb.dx:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
  %i.zx = sub i64 %i.zh, %i.zc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0299.19.i, i64 noundef %i.zx) #22
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i: ; preds = %bb.dx, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zu, i64 12
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.zt, i64 %i.zr
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.dy:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit226.i
  %i.aaa = getelementptr i8, ptr %.sroa.0299.19.i, i64 %i.zd
  %i.aab = getelementptr i8, ptr %i.aaa, i64 12   ; 2 uses
  %.not.i.i227.i = icmp eq ptr %.sroa.35.18.i, %i.aab
  %spec.select368.i = select i1 %.not.i.i227.i, ptr %.sroa.35.18.i, ptr %i.aab
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i240.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i218.i
  %.sroa.71.11.ph.i = phi ptr [ %.sroa.71.10696.i1292, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i240.i ], [ %.sroa.71.10696.i1292, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i218.i ], [ %.sroa.71.19.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ]
  %.sroa.0299.11.ph.i = phi ptr [ %.sroa.0299.10700.i1290, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i240.i ], [ %.sroa.0299.10700.i1290, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i218.i ], [ %.sroa.0299.19.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %.invoke, %bb.dv
  %.sroa.71.11.ph384.i = phi ptr [ %.sroa.71.10696.i1292, %.invoke ], [ %.sroa.71.19.i, %bb.dv ]
  %.sroa.0299.11.ph385.i = phi ptr [ %.sroa.0299.10700.i1290, %.invoke ], [ %.sroa.0299.19.i, %bb.dv ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.dz:                                            ; preds = %sub_1.i
  %i.aac = icmp eq i32 %.0701.i1289, -1
  br i1 %i.aac, label %bb.ea, label %bb.ei

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.62, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.eb unwind label %bb.ee

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 1 dereferenceable(63) @.str.63, i8 noundef zeroext 2)
          to label %bb.ec unwind label %bb.ef

bb.ec:                                            ; preds = %bb.eb
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.61, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef 508) #25
          to label %bb.ed unwind label %bb.eg

bb.ed:                                            ; preds = %bb.ec
  unreachable

bb.ee:                                            ; preds = %bb.ea
  %i.aad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232.i

end_hunk_0
begin_hunk_1_@_Z7analysePK7t_atomsbb:bb.a
          to label %bb.el unwind label %bb.eo

bb.el:                                            ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 1 dereferenceable(63) @.str.63, i8 noundef zeroext 2)
          to label %bb.em unwind label %bb.ep

bb.em:                                            ; preds = %bb.el
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.61, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef 516) #25
          to label %bb.en unwind label %bb.eq

bb.en:                                            ; preds = %bb.em
  unreachable

bb.eo:                                            ; preds = %bb.ek
  %i.aat = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235.i

bb.ep:                                            ; preds = %bb.el
  %i.aau = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.eq:                                            ; preds = %bb.em
  %i.aav = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #21
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %.pn135.i = phi { ptr, i32 } [ %i.aav, %bb.eq ], [ %i.aau, %bb.ep ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.aaw = load ptr, ptr %12, align 8, !tbaa !23  ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.aay = icmp eq ptr %i.aaw, %i.aax
  br i1 %i.aay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233.i: ; preds = %bb.er
  %i.aaz = load i64, ptr %i.aax, align 8, !tbaa !24
  %i.aba = add i64 %i.aaz, 1
  call void @_ZdlPvm(ptr noundef %i.aaw, i64 noundef %i.aba) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235.i: ; preds = %bb.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233.i, %bb.eo
  %.pn135.pn.i = phi { ptr, i32 } [ %i.aat, %bb.eo ], [ %.pn135.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233.i ], [ %.pn135.i, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %.body.i

bb.es:                                            ; preds = %bb.ej
  %i.abb = sext i32 %.0701.i1289 to i64
  %i.abc = getelementptr [4 x i8], ptr %.sroa.0299.10700.i1290, i64 %i.abb
  %i.abd = getelementptr i8, ptr %i.abc, i64 4
  store i32 %indvars1646, ptr %i.abd, align 4, !tbaa !29
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

sub_1381.i:                                       ; preds = %.tail375.i
  %i.abe = zext i8 %i.aao to i32
  %i.abf = sub nsw i32 49, %i.abe
  %.not731.i = icmp eq i8 %i.aao, 49
  br i1 %.not731.i, label %sub_2382.i, label %.tail379.i

sub_2382.i:                                       ; preds = %sub_1381.i
  %i.abg = getelementptr inbounds nuw i8, ptr %i.yg, i64 2
  %i.abh = load i8, ptr %i.abg, align 1
  %i.abi = zext i8 %i.abh to i32
  %i.abj = sub nsw i32 0, %i.abi
  br label %.tail379.i

.tail379.i:                                       ; preds = %.tail375.i.thread, %sub_2382.i, %sub_1381.i
  %i.abk = phi i32 [ %i.aar, %.tail375.i.thread ], [ %i.abf, %sub_1381.i ], [ %i.abj, %sub_2382.i ]
  %i.abl = icmp eq i32 %i.abk, 0
  br i1 %i.abl, label %bb.et, label %.tail379.thread.i

bb.et:                                            ; preds = %.tail379.i
  %i.abm = icmp eq i32 %.0701.i1289, -1
  br i1 %i.abm, label %bb.eu, label %bb.fc

bb.eu:                                            ; preds = %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.62, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.ev unwind label %bb.ey

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA63_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull align 1 dereferenceable(63) @.str.63, i8 noundef zeroext 2)
          to label %bb.ew unwind label %bb.ez

bb.ew:                                            ; preds = %bb.ev
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.61, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(40) %17, i32 noundef 524) #25
          to label %bb.ex unwind label %bb.fa

bb.ex:                                            ; preds = %bb.ew
  unreachable

bb.ey:                                            ; preds = %bb.eu
  %i.abn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238.i

bb.ez:                                            ; preds = %bb.ev
  %i.abo = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ew
  %i.abp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %17) #21
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %.pn132.i = phi { ptr, i32 } [ %i.abp, %bb.fa ], [ %i.abo, %bb.ez ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  %i.abq = load ptr, ptr %15, align 8, !tbaa !23  ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.abs = icmp eq ptr %i.abq, %i.abr
  br i1 %i.abs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236.i: ; preds = %bb.fb
  %i.abt = load i64, ptr %i.abr, align 8, !tbaa !24
  %i.abu = add i64 %i.abt, 1
  call void @_ZdlPvm(ptr noundef %i.abq, i64 noundef %i.abu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238.i: ; preds = %bb.fb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236.i, %bb.ey
  %.pn132.pn.i = phi { ptr, i32 } [ %i.abn, %bb.ey ], [ %.pn132.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236.i ], [ %.pn132.i, %bb.fb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %.body.i

bb.fc:                                            ; preds = %bb.et
  %i.abv = sext i32 %.0701.i1289 to i64
  %i.abw = getelementptr [4 x i8], ptr %.sroa.0299.10700.i1290, i64 %i.abv
  %i.abx = getelementptr i8, ptr %i.abw, i64 4
  store i32 %indvars1646, ptr %i.abx, align 4, !tbaa !29
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

.tail379.thread.i:                                ; preds = %sub_1.i, %.tail.i.thread, %.tail379.i
  %.not.i239.i = icmp eq ptr %.sroa.35.10697.i1291, %.sroa.71.10696.i1292
  br i1 %.not.i239.i, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %.tail379.thread.i
  store i32 %indvars1646, ptr %.sroa.35.10697.i1291, align 4, !tbaa !29
  %i.aby = getelementptr inbounds nuw i8, ptr %.sroa.35.10697.i1291, i64 4
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.fe:                                            ; preds = %.tail379.thread.i
  %i.abz = ptrtoint ptr %.sroa.71.10696.i1292 to i64
  %i.aca = ptrtoint ptr %.sroa.0299.10700.i1290 to i64
  %i.acb = sub i64 %i.abz, %i.aca                 ; 6 uses
  %i.acc = icmp eq i64 %i.acb, 9223372036854775804
  br i1 %i.acc, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i240.i

.invoke:                                          ; preds = %bb.dq, %bb.fe
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #25
          to label %.cont unwind label %.loopexit.split-lp.i

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i240.i: ; preds = %bb.fe
  %i.acd = ashr exact i64 %i.acb, 2               ; 3 uses
  %.sroa.speculated.i.i.i241.i = call i64 @llvm.umax.i64(i64 %i.acd, i64 1)
  %i.ace = add nsw i64 %.sroa.speculated.i.i.i241.i, %i.acd ; 2 uses
  %i.acf = icmp ult i64 %i.ace, %i.acd
  %i.acg = call i64 @llvm.umin.i64(i64 %i.ace, i64 2305843009213693951)
  %i.ach = select i1 %i.acf, i64 2305843009213693951, i64 %i.acg ; 3 uses
  %.not.i.i.i242.i = icmp ne i64 %i.ach, 0
  call void @llvm.assume(i1 %.not.i.i.i242.i)
  %i.aci = shl nuw nsw i64 %i.ach, 2
  %i.acj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aci) #26
          to label %.noexc247.i unwind label %.loopexit.i ; 4 uses

.noexc247.i:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i240.i
  %i.ack = getelementptr inbounds i8, ptr %i.acj, i64 %i.acb ; 2 uses
  store i32 %indvars1646, ptr %i.ack, align 4, !tbaa !29
  %i.acl = icmp sgt i64 %i.acb, 0
  br i1 %i.acl, label %bb.ff, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i243.i

bb.ff:                                            ; preds = %.noexc247.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.acj, ptr align 4 %.sroa.0299.10700.i1290, i64 %i.acb, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i243.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i243.i: ; preds = %bb.ff, %.noexc247.i
  %i.acm = getelementptr inbounds nuw i8, ptr %i.ack, i64 4
  %.not.i17.i.i244.i = icmp eq ptr %.sroa.0299.10700.i1290, null
  br i1 %.not.i17.i.i244.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i245.i, label %bb.fg

bb.fg:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i243.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0299.10700.i1290, i64 noundef %i.acb) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i245.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i245.i: ; preds = %bb.fg, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i243.i
  %i.acn = getelementptr inbounds nuw [4 x i8], ptr %i.acj, i64 %i.ach
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i:             ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i245.i, %bb.fd, %bb.fc, %bb.es, %bb.ei, %bb.dy, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i
  %.sroa.71.12.i = phi ptr [ %i.zz, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i ], [ %.sroa.71.10696.i1292, %bb.ei ], [ %.sroa.71.10696.i1292, %bb.es ], [ %.sroa.71.10696.i1292, %bb.fc ], [ %i.acn, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i245.i ], [ %.sroa.71.19.i, %bb.dy ], [ %.sroa.71.10696.i1292, %bb.fd ], [ %.sroa.71.19.i, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i ] ; 2 uses
  %.sroa.35.11.i = phi ptr [ %i.zy, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i ], [ %.sroa.35.10697.i1291, %bb.ei ], [ %.sroa.35.10697.i1291, %bb.es ], [ %.sroa.35.10697.i1291, %bb.fc ], [ %i.acm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i245.i ], [ %spec.select368.i, %bb.dy ], [ %i.aby, %bb.fd ], [ %i.zo, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i ] ; 2 uses
  %.sroa.0299.12.i = phi ptr [ %i.zt, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i ], [ %.sroa.0299.10700.i1290, %bb.ei ], [ %.sroa.0299.10700.i1290, %bb.es ], [ %.sroa.0299.10700.i1290, %bb.fc ], [ %i.acj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i245.i ], [ %.sroa.0299.19.i, %bb.dy ], [ %.sroa.0299.10700.i1290, %bb.fd ], [ %.sroa.0299.19.i, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i ] ; 2 uses
  %.1.i = phi i32 [ %i.zf, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i ], [ %.0701.i1289, %bb.ei ], [ %.0701.i1289, %bb.es ], [ %.0701.i1289, %bb.fc ], [ %.0701.i1289, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i245.i ], [ %i.zf, %bb.dy ], [ %.0701.i1289, %bb.fd ], [ %i.zf, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i ]
  %indvars.iv.next822.i = add nsw i64 %indvars.iv821.i1288, 1 ; 4 uses
  %i.aco = load i32, ptr %1, align 8, !tbaa !41   ; 2 uses
  %i.acp = sext i32 %i.aco to i64
  %i.acq = icmp slt i64 %indvars.iv.next822.i, %i.acp
  br i1 %i.acq, label %.lr.ph702.i, label %.critedge6.i.loopexit, !llvm.loop !103

.critedge6.i.loopexit:                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, %.lr.ph702.i
  %indvars1645.le = trunc i64 %indvars.iv.next822.i to i32
  br label %.critedge6.i

.critedge6.i:                                     ; preds = %.critedge6.i.loopexit, %.preheader.i
  %46 = phi i32 [ %43, %.preheader.i ], [ %i.aco, %.critedge6.i.loopexit ] ; 2 uses
  %.sroa.71.10.lcssa.i = phi ptr [ %.sroa.71.9712.i, %.preheader.i ], [ %.sroa.71.12.i, %.critedge6.i.loopexit ] ; 2 uses
  %.sroa.35.10.lcssa.i = phi ptr [ %.sroa.35.9713.i, %.preheader.i ], [ %.sroa.35.11.i, %.critedge6.i.loopexit ] ; 2 uses
  %.1359.lcssa.i = phi i32 [ %.0358714.i, %.preheader.i ], [ %indvars1645.le, %.critedge6.i.loopexit ] ; 2 uses
  %.sroa.0299.10.lcssa.i = phi ptr [ %.sroa.0299.9715.i, %.preheader.i ], [ %.sroa.0299.12.i, %.critedge6.i.loopexit ] ; 2 uses
  %47 = icmp slt i32 %.1359.lcssa.i, %46
  br i1 %47, label %.lr.ph716.i, label %.critedge4.i, !llvm.loop !104

._crit_edge.i.i249.i:                             ; preds = %.critedge4.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  store ptr %i.hz, ptr %18, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.hz, ptr noundef nonnull align 1 dereferenceable(9) @.str.64, i64 9, i1 false)
  store i64 9, ptr %i.ia, align 8, !tbaa !32
  store i8 0, ptr %i.ib, align 1, !tbaa !24
  %i.acr = ptrtoint ptr %.sroa.35.9.lcssa.i to i64
  %i.acs = ptrtoint ptr %.sroa.0299.9.lcssa.i to i64
  %i.act = sub i64 %i.acr, %i.acs                 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ic, i8 0, i64 24, i1 false)
  %i.acu = icmp ugt i64 %i.act, 9223372036854775804
  br i1 %i.acu, label %.noexc.i.i255.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i254.i, !prof !115

.noexc.i.i255.i:                                  ; preds = %._crit_edge.i.i249.i
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc256.i unwind label %.loopexit.split-lp602.loopexit.split-lp

.noexc256.i:                                      ; preds = %.noexc.i.i255.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i254.i: ; preds = %._crit_edge.i.i249.i
  %i.acv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.act) #26
          to label %.noexc257.i unwind label %.loopexit.split-lp602.loopexit.split-lp ; 5 uses

.noexc257.i:                                      ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i254.i
  store ptr %i.acv, ptr %i.ic, align 8, !tbaa !47
  store ptr %i.acv, ptr %i.id, align 8, !tbaa !50
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 %i.act ; 2 uses
  store ptr %i.acw, ptr %i.ie, align 8, !tbaa !48
  %i.acx = icmp samesign ugt i64 %i.act, 4
  br i1 %i.acx, label %bb.fh, label %bb.fi, !prof !49

bb.fh:                                            ; preds = %.noexc257.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.acv, ptr align 4 %.sroa.0299.9.lcssa.i, i64 %i.act, i1 false)
  br label %bb.fk

bb.fi:                                            ; preds = %.noexc257.i
  %i.acy = icmp eq i64 %i.act, 4
  br i1 %i.acy, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.acz = load i32, ptr %.sroa.0299.9.lcssa.i, align 4, !tbaa !29
  store i32 %i.acz, ptr %i.acv, align 4, !tbaa !29
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi, %bb.fh
  store ptr %i.acw, ptr %i.id, align 8, !tbaa !50
  %i.ada = load ptr, ptr %i.bi, align 8, !tbaa !53 ; 8 uses
  %i.adb = load ptr, ptr %i.bk, align 8, !tbaa !54
  %.not.i.i259.i = icmp eq ptr %i.ada, %i.adb
  br i1 %.not.i.i259.i, label %bb.fn, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.adc = getelementptr inbounds nuw i8, ptr %i.ada, i64 16 ; 3 uses
  store ptr %i.adc, ptr %i.ada, align 8, !tbaa !30
  %i.add = load ptr, ptr %18, align 8, !tbaa !23  ; 2 uses
  %i.ade = icmp eq ptr %i.add, %i.hz
  br i1 %i.ade, label %bb.fm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i260.i

bb.fm:                                            ; preds = %bb.fl
  %i.adf = load i64, ptr %i.ia, align 8, !tbaa !32 ; 3 uses
  %i.adg = icmp ult i64 %i.adf, 16
  call void @llvm.assume(i1 %i.adg)
  %i.adh = add nuw nsw i64 %i.adf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.adc, ptr noundef nonnull align 8 dereferenceable(1) %i.hz, i64 %i.adh, i1 false)
  br label %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit263.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i260.i: ; preds = %bb.fl
  store ptr %i.add, ptr %i.ada, align 8, !tbaa !23
  %i.adi = load i64, ptr %i.hz, align 8, !tbaa !24
  store i64 %i.adi, ptr %i.adc, align 8, !tbaa !24
  %.pre827.i = load i64, ptr %i.ia, align 8, !tbaa !32
  br label %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit263.thread.i

_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit263.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i260.i, %bb.fm
  %i.adj = phi i64 [ %.pre827.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i260.i ], [ %i.adf, %bb.fm ]
  %i.adk = getelementptr inbounds nuw i8, ptr %i.ada, i64 8
  store i64 %i.adj, ptr %i.adk, align 8, !tbaa !32
  store ptr %i.hz, ptr %18, align 8, !tbaa !23
  store i64 0, ptr %i.ia, align 8, !tbaa !32
  store i8 0, ptr %i.hz, align 8, !tbaa !24
  %i.adl = getelementptr inbounds nuw i8, ptr %i.ada, i64 32
  %i.adm = load <2 x ptr>, ptr %i.ic, align 8, !tbaa !28
  store <2 x ptr> %i.adm, ptr %i.adl, align 8, !tbaa !28
  %i.adn = getelementptr inbounds nuw i8, ptr %i.ada, i64 48
  %i.ado = load ptr, ptr %i.ie, align 8, !tbaa !48
  store ptr %i.ado, ptr %i.adn, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ic, i8 0, i64 24, i1 false)
  %i.adp = load ptr, ptr %i.bi, align 8, !tbaa !53
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 56
  store ptr %i.adq, ptr %i.bi, align 8, !tbaa !53
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i265.i

bb.fn:                                            ; preds = %bb.fk
  invoke void @_ZNSt6vectorI10IndexGroupSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ada, ptr noundef nonnull align 8 dereferenceable(56) %18)
          to label %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit263.i unwind label %bb.fp

_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit263.i: ; preds = %bb.fn
  %.pr364.i = load ptr, ptr %i.ic, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i.i264.i = icmp eq ptr %.pr364.i, null
  br i1 %.not.i.i.i.i264.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i265.i, label %bb.fo

bb.fo:                                            ; preds = %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit263.i
  %i.adr = load ptr, ptr %i.ie, align 8, !tbaa !48
  %i.ads = ptrtoint ptr %i.adr to i64
  %i.adt = ptrtoint ptr %.pr364.i to i64
  %i.adu = sub i64 %i.ads, %i.adt
  call void @_ZdlPvm(ptr noundef nonnull %.pr364.i, i64 noundef %i.adu) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i265.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i265.i:             ; preds = %bb.fo, %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit263.i, %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit263.thread.i
  %i.adv = load ptr, ptr %18, align 8, !tbaa !23  ; 2 uses
  %i.adw = icmp eq ptr %i.adv, %i.hz
  br i1 %i.adw, label %_ZN10IndexGroupD2Ev.exit268.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i265.i
  %i.adx = load i64, ptr %i.hz, align 8, !tbaa !24
  %i.ady = add i64 %i.adx, 1
  call void @_ZdlPvm(ptr noundef %i.adv, i64 noundef %i.ady) #22
  br label %_ZN10IndexGroupD2Ev.exit268.i

_ZN10IndexGroupD2Ev.exit268.i:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i265.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %.loopexit386.i

.loopexit.split-lp602.loopexit.split-lp:          ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i254.i, %.noexc.i.i255.i
  %lpad.loopexit.split-lp2574 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adz = load ptr, ptr %18, align 8, !tbaa !23  ; 2 uses
  %i.aea = icmp eq ptr %i.adz, %i.hz
  br i1 %i.aea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269.i: ; preds = %.loopexit.split-lp602.loopexit.split-lp
  %i.aeb = load i64, ptr %i.hz, align 8, !tbaa !24
  %i.aec = add i64 %i.aeb, 1
  call void @_ZdlPvm(ptr noundef %i.adz, i64 noundef %i.aec) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i

bb.fp:                                            ; preds = %bb.fn
  %i.aed = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10IndexGroupD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %18) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i: ; preds = %.loopexit.split-lp602.loopexit.split-lp, %bb.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269.i
  %.pn.i = phi { ptr, i32 } [ %i.aed, %bb.fp ], [ %lpad.loopexit.split-lp2574, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269.i ], [ %lpad.loopexit.split-lp2574, %.loopexit.split-lp602.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %.body.i

.loopexit386.i:                                   ; preds = %bb.cl, %_ZN10IndexGroupD2Ev.exit268.i, %.critedge4.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit216.i, %.loopexit913.i
  %.sroa.71.14.i = phi ptr [ %.sroa.71.9.lcssa.i, %.critedge4.i ], [ %.sroa.71.9.lcssa.i, %_ZN10IndexGroupD2Ev.exit268.i ], [ %.sroa.71.1.lcssa.i, %.loopexit913.i ], [ %.sroa.71.8.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit216.i ], [ %.sroa.71.8.i, %bb.cl ]
  %.sroa.0299.14.i = phi ptr [ %.sroa.0299.9.lcssa.i, %.critedge4.i ], [ %.sroa.0299.9.lcssa.i, %_ZN10IndexGroupD2Ev.exit268.i ], [ %.sroa.0299.1.lcssa.i, %.loopexit913.i ], [ %.sroa.0299.8.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit216.i ], [ %.sroa.0299.8.i, %bb.cl ] ; 3 uses
  %.not.i.i.i272.i = icmp eq ptr %.sroa.0299.14.i, null
  br i1 %.not.i.i.i272.i, label %._crit_edge.i.i209, label %bb.fq

bb.fq:                                            ; preds = %.loopexit386.i
  %i.aee = ptrtoint ptr %.sroa.71.14.i to i64
  %i.aef = ptrtoint ptr %.sroa.0299.14.i to i64
  %i.aeg = sub i64 %i.aee, %i.aef
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0299.14.i, i64 noundef %i.aeg) #22
  br label %._crit_edge.i.i209

.body.i:                                          ; preds = %.loopexit.split-lp389.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit405.split.i.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232.i, %.loopexit.split-lp.i, %.loopexit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.i, %.loopexit.split-lp421.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.br, %.loopexit.split-lp406.loopexit.split-lp.i, %.loopexit.split-lp406.loopexit.i
  %.sroa.71.15.i = phi ptr [ %.sroa.71.9.lcssa.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i ], [ %.sroa.71.10696.i1292, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238.i ], [ %.sroa.71.1.lcssa.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.sroa.71.1.lcssa.i, %bb.br ], [ %.sroa.71.1.lcssa.i, %.loopexit.split-lp421.i ], [ %.sroa.35.1648.i, %.loopexit.split-lp406.loopexit.split-lp.i ], [ %.sroa.71.6.lcssa.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.i ], [ %.sroa.71.1646.i, %.loopexit405.split.i.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.71.10696.i1292, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232.i ], [ %.sroa.71.10696.i1292, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235.i ], [ %.sroa.71.11.ph.i, %.loopexit.i ], [ %.sroa.71.11.ph384.i, %.loopexit.split-lp.i ], [ %.sroa.71.1646.lcssa.i, %.loopexit.split-lp406.loopexit.i ], [ %.sroa.71.6666.i1283, %.loopexit.split-lp389.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0299.15.i = phi ptr [ %.sroa.0299.9.lcssa.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i ], [ %.sroa.0299.10700.i1290, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238.i ], [ %.sroa.0299.1.lcssa.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.sroa.0299.1.lcssa.i, %bb.br ], [ %.sroa.0299.1.lcssa.i, %.loopexit.split-lp421.i ], [ %.sroa.0299.1649.i, %.loopexit.split-lp406.loopexit.split-lp.i ], [ %.sroa.0299.6.lcssa.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.i ], [ %.sroa.0299.1649.i, %.loopexit405.split.i.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0299.10700.i1290, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232.i ], [ %.sroa.0299.10700.i1290, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235.i ], [ %.sroa.0299.11.ph.i, %.loopexit.i ], [ %.sroa.0299.11.ph385.i, %.loopexit.split-lp.i ], [ %.sroa.0299.1649.i, %.loopexit.split-lp406.loopexit.i ], [ %.sroa.0299.6669.i1281, %.loopexit.split-lp389.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.pn157.i = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i ], [ %.pn132.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238.i ], [ %.pn150.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.oh, %bb.br ], [ %lpad.loopexit.split-lp423.i, %.loopexit.split-lp421.i ], [ %lpad.loopexit.split-lp412.i, %.loopexit.split-lp406.loopexit.split-lp.i ], [ %.pn143.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.i ], [ %lpad.loopexit.split-lp2536, %.loopexit405.split.i.loopexit.split-lp.loopexit.split-lp ], [ %.pn138.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232.i ], [ %.pn135.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit411.i, %.loopexit.split-lp406.loopexit.i ], [ %lpad.loopexit.split-lp2533, %.loopexit.split-lp389.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i273.i = icmp eq ptr %.sroa.0299.15.i, null
  br i1 %.not.i.i.i273.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit274.i, label %bb.fr

bb.fr:                                            ; preds = %.body.i
  %i.aeh = ptrtoint ptr %.sroa.71.15.i to i64
  %i.aei = ptrtoint ptr %.sroa.0299.15.i to i64
  %i.aej = sub i64 %i.aeh, %i.aei
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0299.15.i, i64 noundef %i.aej) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit274.i

_ZNSt6vectorIiSaIiEED2Ev.exit274.i:               ; preds = %bb.fr, %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  br label %.body

._crit_edge.i.i209:                               ; preds = %bb.fq, %.loopexit386.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21
  %i.aek = load ptr, ptr %22, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21
  store ptr %i.if, ptr %28, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.if, ptr noundef nonnull align 1 dereferenceable(7) @.str.10, i64 7, i1 false)
  store i64 7, ptr %i.ig, align 8, !tbaa !32
  store i8 0, ptr %i.kc, align 1, !tbaa !24
  invoke fastcc void @_ZL6mk_aidPK7t_atomsN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERSA_b(ptr dead_on_unwind noalias writable align 8 %27, ptr noundef nonnull %1, ptr %i.aek, ptr noundef nonnull align 8 dereferenceable(32) %28, i1 noundef zeroext false)
          to label %bb.fs unwind label %bb.gd

bb.fs:                                            ; preds = %._crit_edge.i.i209
  %i.ael = load ptr, ptr %28, align 8, !tbaa !23  ; 2 uses
  %i.aem = icmp eq ptr %i.ael, %i.if
  br i1 %i.aem, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %bb.fs
  %i.aen = load i64, ptr %i.if, align 8, !tbaa !24
  %i.aeo = add i64 %i.aen, 1
  call void @_ZdlPvm(ptr noundef %i.ael, i64 noundef %i.aeo) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %bb.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  %i.aep = load ptr, ptr %27, align 8, !tbaa !28  ; 9 uses
  %i.aeq = load ptr, ptr %i.ih, align 8, !tbaa !28 ; 2 uses
  %i.aer = icmp eq ptr %i.aep, %i.aeq
  br i1 %i.aer, label %bb.gg, label %bb.ft

bb.ft:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  %i.aes = ptrtoint ptr %i.aeq to i64
  %i.aet = ptrtoint ptr %i.aep to i64             ; 2 uses
  %i.aeu = sub i64 %i.aes, %i.aet                 ; 7 uses
  %i.aev = ashr exact i64 %i.aeu, 2
  %i.aew = load i32, ptr %1, align 8, !tbaa !41
  %i.aex = sext i32 %i.aew to i64
  %i.aey = icmp slt i64 %i.aev, %i.aex
  br i1 %i.aey, label %._crit_edge.i.i216, label %bb.gg

._crit_edge.i.i216:                               ; preds = %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #21
  store ptr %i.ii, ptr %29, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ii, ptr noundef nonnull align 1 dereferenceable(11) @.str.11, i64 11, i1 false)
  store i64 11, ptr %i.ij, align 8, !tbaa !32
  store i8 0, ptr %i.kd, align 1, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ik, i8 0, i64 24, i1 false)
  %i.aez = icmp ugt i64 %i.aeu, 9223372036854775804
  br i1 %i.aez, label %.noexc.i.i222, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i221, !prof !115

.noexc.i.i222:                                    ; preds = %._crit_edge.i.i216
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc223 unwind label %.loopexit.split-lp607.loopexit.split-lp

.noexc223:                                        ; preds = %.noexc.i.i222
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i221: ; preds = %._crit_edge.i.i216
  %i.afa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aeu) #26
          to label %.noexc224 unwind label %.loopexit.split-lp607.loopexit.split-lp ; 5 uses

.noexc224:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i221
  store ptr %i.afa, ptr %i.ik, align 8, !tbaa !47
  store ptr %i.afa, ptr %i.il, align 8, !tbaa !50
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 %i.aeu ; 2 uses
  store ptr %i.afb, ptr %i.im, align 8, !tbaa !48
  %i.afc = icmp samesign ugt i64 %i.aeu, 4
  br i1 %i.afc, label %bb.fu, label %bb.fv, !prof !49

bb.fu:                                            ; preds = %.noexc224
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.afa, ptr align 4 %i.aep, i64 %i.aeu, i1 false)
  br label %bb.fx

bb.fv:                                            ; preds = %.noexc224
  %i.afd = icmp eq i64 %i.aeu, 4
  br i1 %i.afd, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.afe = load i32, ptr %i.aep, align 4, !tbaa !29
  store i32 %i.afe, ptr %i.afa, align 4, !tbaa !29
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv, %bb.fu
  store ptr %i.afb, ptr %i.il, align 8, !tbaa !50
  %i.aff = load ptr, ptr %i.bi, align 8, !tbaa !53 ; 8 uses
  %i.afg = load ptr, ptr %i.bk, align 8, !tbaa !54
  %.not.i.i226 = icmp eq ptr %i.aff, %i.afg
  br i1 %.not.i.i226, label %bb.ga, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aff, i64 16 ; 3 uses
  store ptr %i.afh, ptr %i.aff, align 8, !tbaa !30
  %i.afi = load ptr, ptr %29, align 8, !tbaa !23  ; 2 uses
  %i.afj = icmp eq ptr %i.afi, %i.ii
  br i1 %i.afj, label %bb.fz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i227

bb.fz:                                            ; preds = %bb.fy
  %i.afk = load i64, ptr %i.ij, align 8, !tbaa !32 ; 3 uses
  %i.afl = icmp ult i64 %i.afk, 16
  call void @llvm.assume(i1 %i.afl)
  %i.afm = add nuw nsw i64 %i.afk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.afh, ptr noundef nonnull align 8 dereferenceable(1) %i.ii, i64 %i.afm, i1 false)
  br label %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit230.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i227: ; preds = %bb.fy
  store ptr %i.afi, ptr %i.aff, align 8, !tbaa !23
  %i.afn = load i64, ptr %i.ii, align 8, !tbaa !24
  store i64 %i.afn, ptr %i.afh, align 8, !tbaa !24
  %.pre1652 = load i64, ptr %i.ij, align 8, !tbaa !32
  br label %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit230.thread

_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit230.thread: ; preds = %bb.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i227
  %i.afo = phi i64 [ %.pre1652, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i227 ], [ %i.afk, %bb.fz ]
  %i.afp = getelementptr inbounds nuw i8, ptr %i.aff, i64 8
  store i64 %i.afo, ptr %i.afp, align 8, !tbaa !32
  store ptr %i.ii, ptr %29, align 8, !tbaa !23
  store i64 0, ptr %i.ij, align 8, !tbaa !32
  store i8 0, ptr %i.ii, align 8, !tbaa !24
  %i.afq = getelementptr inbounds nuw i8, ptr %i.aff, i64 32
  %i.afr = load <2 x ptr>, ptr %i.ik, align 8, !tbaa !28
  store <2 x ptr> %i.afr, ptr %i.afq, align 8, !tbaa !28
  %i.afs = getelementptr inbounds nuw i8, ptr %i.aff, i64 48
  %i.aft = load ptr, ptr %i.im, align 8, !tbaa !48
  store ptr %i.aft, ptr %i.afs, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ik, i8 0, i64 24, i1 false)
  %i.afu = load ptr, ptr %i.bi, align 8, !tbaa !53
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 56
  store ptr %i.afv, ptr %i.bi, align 8, !tbaa !53
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i232

bb.ga:                                            ; preds = %bb.fx
  invoke void @_ZNSt6vectorI10IndexGroupSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.aff, ptr noundef nonnull align 8 dereferenceable(56) %29)
          to label %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit230 unwind label %bb.ge

_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit230: ; preds = %bb.ga
  %.pr527 = load ptr, ptr %i.ik, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i.i231 = icmp eq ptr %.pr527, null
  br i1 %.not.i.i.i.i231, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i232, label %bb.gb

bb.gb:                                            ; preds = %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit230
  %i.afw = load ptr, ptr %i.im, align 8, !tbaa !48
  %i.afx = ptrtoint ptr %i.afw to i64
  %i.afy = ptrtoint ptr %.pr527 to i64
  %i.afz = sub i64 %i.afx, %i.afy
  call void @_ZdlPvm(ptr noundef nonnull %.pr527, i64 noundef %i.afz) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i232

_ZNSt6vectorIiSaIiEED2Ev.exit.i232:               ; preds = %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit230.thread, %bb.gb, %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit230
  %i.aga = load ptr, ptr %29, align 8, !tbaa !23  ; 2 uses
  %i.agb = icmp eq ptr %i.aga, %i.ii
  br i1 %i.agb, label %_ZN10IndexGroupD2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i233: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i232
  %i.agc = load i64, ptr %i.ii, align 8, !tbaa !24
  %i.agd = add i64 %i.agc, 1
  call void @_ZdlPvm(ptr noundef %i.aga, i64 noundef %i.agd) #22
  br label %_ZN10IndexGroupD2Ev.exit236

_ZN10IndexGroupD2Ev.exit236:                      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i232, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i233
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  br label %bb.gg

bb.gc:                                            ; preds = %bb.ap
  %i.age = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit432

.loopexit.split-lp591.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.jd, %bb.jc, %bb.jb, %.lr.ph.i376, %.lr.ph.i207, %bb.hy, %bb.gi, %bb.aq
  %lpad.loopexit.split-lp2571 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.gd:                                            ; preds = %._crit_edge.i.i209
  %i.agf = landingpad { ptr, i32 }
          cleanup
  %i.agg = load ptr, ptr %28, align 8, !tbaa !23  ; 2 uses
  %i.agh = icmp eq ptr %i.agg, %i.if
  br i1 %i.agh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237: ; preds = %bb.gd
  %i.agi = load i64, ptr %i.if, align 8, !tbaa !24
  %i.agj = add i64 %i.agi, 1
  call void @_ZdlPvm(ptr noundef %i.agg, i64 noundef %i.agj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

end_hunk_1
