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
  br i1 %i.pw, label %bb.ca, label %bb.cb, !prof !131

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
  %indvars.iv.next802.i = add nuw nsw i64 %indvars.iv801.i, 1 ; 2 uses
  %exitcond804.not.i = icmp eq i64 %indvars.iv.next802.i, 10
  br i1 %exitcond804.not.i, label %.loopexit911.i, label %.preheader410.i, !llvm.loop !95

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

.preheader403.i:                                  ; preds = %.loopexit911.i, %.critedge.i
  %indvars.iv813.i = phi i64 [ %indvars.iv.next814.i, %.critedge.i ], [ 0, %.loopexit911.i ] ; 4 uses
  %.sroa.0299.3690.i = phi ptr [ %.sroa.0299.8.i, %.critedge.i ], [ %.sroa.0299.1.lcssa.i, %.loopexit911.i ] ; 5 uses
  %.sroa.35.3689.i = phi ptr [ %.sroa.35.8.i, %.critedge.i ], [ %spec.select365891.i, %.loopexit911.i ] ; 3 uses
  %.sroa.71.3688.i = phi ptr [ %.sroa.71.8.i, %.critedge.i ], [ %.sroa.71.1.lcssa.i, %.loopexit911.i ] ; 3 uses
  %i.rj = getelementptr inbounds nuw [40 x i8], ptr @_ZZL12analyse_protN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPK7t_atomsPSt6vectorI10IndexGroupSaISD_EEbbE17constructing_data, i64 %indvars.iv813.i ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !130 ; 2 uses
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
  %.not.i.i175.i = icmp eq ptr %.sroa.35.3689.i, %.sroa.0299.3690.i
  %spec.select366.i = select i1 %.not.i.i175.i, ptr %.sroa.35.3689.i, ptr %.sroa.0299.3690.i ; 2 uses
  %i.rq = load i32, ptr %1, align 8, !tbaa !41    ; 2 uses
  %i.rr = icmp sgt i32 %i.rq, 0
  br i1 %i.rr, label %.lr.ph680.i, label %.critedge.i

.lr.ph680.i:                                      ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit177.i
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  %i.rt = trunc i64 %indvars.iv813.i to i32
  %i.ru = add i32 %i.rt, -7
  %i.rv = icmp ult i32 %i.ru, -5
  %i.rw = zext i1 %i.rv to i8
  %.not722.i = icmp eq i64 %indvars.iv813.i, 0
  br label %bb.cn

bb.cn:                                            ; preds = %bb.dn, %.lr.ph680.i
  %38 = phi i32 [ %i.rq, %.lr.ph680.i ], [ %i.xr, %bb.dn ] ; 2 uses
  %.sroa.0299.4679.i = phi ptr [ %.sroa.0299.3690.i, %.lr.ph680.i ], [ %.sroa.0299.6.lcssa.i, %bb.dn ] ; 3 uses
  %.sroa.35.4678.i = phi ptr [ %spec.select366.i, %.lr.ph680.i ], [ %.sroa.35.7.i, %bb.dn ] ; 3 uses
  %.0360677.i = phi i32 [ 0, %.lr.ph680.i ], [ %.1361.lcssa.i, %bb.dn ] ; 3 uses
  %.sroa.71.4676.i = phi ptr [ %.sroa.71.3688.i, %.lr.ph680.i ], [ %.sroa.71.6.lcssa.i, %bb.dn ] ; 3 uses
  %i.rx = load ptr, ptr %i.hm, align 8, !tbaa !67
  %39 = sext i32 %.0360677.i to i64               ; 2 uses
  %i.ry = getelementptr inbounds [36 x i8], ptr %i.rx, i64 %39
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 24
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !72 ; 3 uses
  %i.sb = icmp slt i32 %i.sa, %.0119.lcssa.i
  br i1 %i.sb, label %.preheader393.i, label %.critedge.i

.preheader393.i:                                  ; preds = %bb.cn
  %40 = icmp slt i32 %.0360677.i, %38
  br i1 %40, label %.preheader387.i, label %.critedge2.i

.loopexit.split-lp421.i:                          ; preds = %bb.bt, %bb.bp
  %lpad.loopexit.split-lp423.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.lr.ph666.i:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit187.i
  %i.sc = load ptr, ptr %i.hm, align 8, !tbaa !67
  %i.sd = getelementptr inbounds [36 x i8], ptr %i.sc, i64 %indvars.iv.next811.i
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 24
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !72
  %i.sg = icmp eq i32 %i.sf, %i.sa
  br i1 %i.sg, label %.preheader387.i, label %.critedge2.i.loopexit, !llvm.loop !96

.preheader387.i:                                  ; preds = %.preheader393.i, %.lr.ph666.i
  %.sroa.71.6662.i1283 = phi ptr [ %.sroa.71.7.i, %.lr.ph666.i ], [ %.sroa.71.4676.i, %.preheader393.i ] ; 5 uses
  %.sroa.35.5664.i1282 = phi ptr [ %.sroa.35.6.i, %.lr.ph666.i ], [ %.sroa.35.4678.i, %.preheader393.i ] ; 4 uses
  %.sroa.0299.6665.i1281 = phi ptr [ %.sroa.0299.7.i, %.lr.ph666.i ], [ %.sroa.0299.4679.i, %.preheader393.i ] ; 7 uses
  %indvars.iv810.i1280 = phi i64 [ %indvars.iv.next811.i, %.lr.ph666.i ], [ %39, %.preheader393.i ] ; 3 uses
  %indvars1644 = trunc i64 %indvars.iv810.i1280 to i32 ; 2 uses
  br i1 %.not722.i, label %._crit_edge660.i, label %.lr.ph659.i

.lr.ph659.i:                                      ; preds = %.preheader387.i
  %i.sh = load i32, ptr %i.rs, align 8, !tbaa !124
  %i.si = load ptr, ptr %i.rj, align 8, !tbaa !126
  %smax807.i = call i32 @llvm.smax.i32(i32 %i.sh, i32 1)
  %wide.trip.count808.i = zext nneg i32 %smax807.i to i64
  br label %bb.co

._crit_edge660.i:                                 ; preds = %bb.cp, %.preheader387.i
  %.091.lcssa.i = phi i8 [ 0, %.preheader387.i ], [ %spec.select161.i, %bb.cp ]
  %.not.i201 = icmp eq i8 %.091.lcssa.i, %i.rw
  br i1 %.not.i201, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit187.i, label %bb.cq

bb.co:                                            ; preds = %bb.cp, %.lr.ph659.i
  %indvars.iv805.i = phi i64 [ 0, %.lr.ph659.i ], [ %indvars.iv.next806.i, %bb.cp ] ; 2 uses
  %.091657.i = phi i8 [ 0, %.lr.ph659.i ], [ %spec.select161.i, %bb.cp ]
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.si, i64 %indvars.iv805.i
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !17
  %i.sl = load ptr, ptr %i.hn, align 8, !tbaa !127
  %i.sm = getelementptr inbounds [8 x i8], ptr %i.sl, i64 %indvars.iv810.i1280
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !128
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !17
  %i.sp = invoke noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.sk, ptr noundef %i.so)
          to label %bb.cp unwind label %.loopexit.split-lp389.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cp:                                            ; preds = %bb.co
  %i.sq = icmp eq i32 %i.sp, 0
  %spec.select161.i = select i1 %i.sq, i8 1, i8 %.091657.i ; 2 uses
  %indvars.iv.next806.i = add nuw nsw i64 %indvars.iv805.i, 1 ; 2 uses
  %exitcond809.not.i = icmp eq i64 %indvars.iv.next806.i, %wide.trip.count808.i
  br i1 %exitcond809.not.i, label %._crit_edge660.i, label %bb.co, !llvm.loop !97

bb.cq:                                            ; preds = %._crit_edge660.i
  %.not.i178.i = icmp eq ptr %.sroa.35.5664.i1282, %.sroa.71.6662.i1283
  br i1 %.not.i178.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  store i32 %indvars1644, ptr %.sroa.35.5664.i1282, align 4, !tbaa !29
  %i.sr = getelementptr inbounds nuw i8, ptr %.sroa.35.5664.i1282, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit187.i

bb.cs:                                            ; preds = %bb.cq
  %i.ss = ptrtoint ptr %.sroa.71.6662.i1283 to i64
  %i.st = ptrtoint ptr %.sroa.0299.6665.i1281 to i64
  %i.su = sub i64 %i.ss, %i.st                    ; 6 uses
  %i.sv = icmp eq i64 %i.su, 9223372036854775804
  br i1 %i.sv, label %bb.ct, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i179.i

bb.ct:                                            ; preds = %bb.cs
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #25
          to label %.noexc185.i unwind label %.loopexit.split-lp389.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc185.i:                                      ; preds = %bb.ct
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i179.i: ; preds = %bb.cs
  %i.sw = ashr exact i64 %i.su, 2                 ; 3 uses
  %.sroa.speculated.i.i.i180.i = call i64 @llvm.umax.i64(i64 %i.sw, i64 1)
  %i.sx = add nsw i64 %.sroa.speculated.i.i.i180.i, %i.sw ; 2 uses
  %i.sy = icmp ult i64 %i.sx, %i.sw
  %i.sz = call i64 @llvm.umin.i64(i64 %i.sx, i64 2305843009213693951)
  %i.ta = select i1 %i.sy, i64 2305843009213693951, i64 %i.sz ; 3 uses
  %.not.i.i.i181.i = icmp ne i64 %i.ta, 0
  call void @llvm.assume(i1 %.not.i.i.i181.i)
  %i.tb = shl nuw nsw i64 %i.ta, 2
  %i.tc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tb) #26
          to label %.noexc186.i unwind label %.loopexit.split-lp389.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc186.i:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i179.i
  %i.td = getelementptr inbounds i8, ptr %i.tc, i64 %i.su ; 2 uses
  store i32 %indvars1644, ptr %i.td, align 4, !tbaa !29
  %i.te = icmp sgt i64 %i.su, 0
  br i1 %i.te, label %bb.cu, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i182.i

bb.cu:                                            ; preds = %.noexc186.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.tc, ptr align 4 %.sroa.0299.6665.i1281, i64 %i.su, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i182.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i182.i: ; preds = %bb.cu, %.noexc186.i
  %i.tf = getelementptr inbounds nuw i8, ptr %i.td, i64 4
  %.not.i17.i.i183.i = icmp eq ptr %.sroa.0299.6665.i1281, null
  br i1 %.not.i17.i.i183.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i184.i, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i182.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0299.6665.i1281, i64 noundef %i.su) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i184.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i184.i: ; preds = %bb.cv, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i182.i
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.ta
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit187.i

.loopexit.split-lp389.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.co, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i179.i, %bb.ct
  %lpad.loopexit.split-lp2533 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_ZNSt6vectorIiSaIiEE9push_backERKi.exit187.i:     ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i184.i, %bb.cr, %._crit_edge660.i
  %.sroa.71.7.i = phi ptr [ %.sroa.71.6662.i1283, %._crit_edge660.i ], [ %i.tg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i184.i ], [ %.sroa.71.6662.i1283, %bb.cr ] ; 2 uses
  %.sroa.35.6.i = phi ptr [ %.sroa.35.5664.i1282, %._crit_edge660.i ], [ %i.tf, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i184.i ], [ %i.sr, %bb.cr ] ; 2 uses
  %.sroa.0299.7.i = phi ptr [ %.sroa.0299.6665.i1281, %._crit_edge660.i ], [ %i.tc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i184.i ], [ %.sroa.0299.6665.i1281, %bb.cr ] ; 2 uses
  %indvars.iv.next811.i = add nsw i64 %indvars.iv810.i1280, 1 ; 4 uses
  %i.th = load i32, ptr %1, align 8, !tbaa !41    ; 2 uses
  %i.ti = sext i32 %i.th to i64
  %i.tj = icmp slt i64 %indvars.iv.next811.i, %i.ti
  br i1 %i.tj, label %.lr.ph666.i, label %.critedge2.i.loopexit, !llvm.loop !96

.critedge2.i.loopexit:                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit187.i, %.lr.ph666.i
  %indvars.le = trunc i64 %indvars.iv.next811.i to i32
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %.critedge2.i.loopexit, %.preheader393.i
  %41 = phi i32 [ %38, %.preheader393.i ], [ %i.th, %.critedge2.i.loopexit ]
  %.sroa.71.6.lcssa.i = phi ptr [ %.sroa.71.4676.i, %.preheader393.i ], [ %.sroa.71.7.i, %.critedge2.i.loopexit ] ; 3 uses
  %.1361.lcssa.i = phi i32 [ %.0360677.i, %.preheader393.i ], [ %indvars.le, %.critedge2.i.loopexit ] ; 2 uses
  %.sroa.35.5.lcssa.i = phi ptr [ %.sroa.35.4678.i, %.preheader393.i ], [ %.sroa.35.6.i, %.critedge2.i.loopexit ] ; 3 uses
  %.sroa.0299.6.lcssa.i = phi ptr [ %.sroa.0299.4679.i, %.preheader393.i ], [ %.sroa.0299.7.i, %.critedge2.i.loopexit ] ; 8 uses
  %i.tk = icmp eq ptr %.sroa.0299.6.lcssa.i, %.sroa.35.5.lcssa.i
  br i1 %i.tk, label %bb.dn, label %bb.cw

bb.cw:                                            ; preds = %.critedge2.i
  %i.tl = load ptr, ptr %i.ht, align 8, !tbaa !117
  %i.tm = sext i32 %i.sa to i64
  %i.tn = getelementptr inbounds [32 x i8], ptr %i.tl, i64 %i.tm ; 3 uses
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !120
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !17
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %i.tr = load i32, ptr %i.tq, align 8, !tbaa !132
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tn, i64 12
  %i.tt = load i8, ptr %i.ts, align 4, !tbaa !133 ; 2 uses
  %i.tu = icmp eq i8 %i.tt, 32
  %narrow.i = select i1 %i.tu, i8 0, i8 %i.tt
  %spec.select162.i = zext i8 %narrow.i to i32
  %i.tv = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) @.str.59, ptr noundef %i.rl, ptr noundef %i.tp, i32 noundef %i.tr, i32 noundef %spec.select162.i) #21 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %i.hu, ptr %8, align 8, !tbaa !30
  %i.tw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  store i64 %i.tw, ptr %i.f, align 8, !tbaa !31
  %i.tx = icmp ugt i64 %i.tw, 15
  br i1 %i.tx, label %.noexc.i189.i, label %._crit_edge.i.i188.i

.noexc.i189.i:                                    ; preds = %bb.cw
  %i.ty = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc190.i unwind label %bb.dm ; 2 uses

.noexc190.i:                                      ; preds = %.noexc.i189.i
  store ptr %i.ty, ptr %8, align 8, !tbaa !23
  %i.tz = load i64, ptr %i.f, align 8, !tbaa !31
  store i64 %i.tz, ptr %i.hu, align 8, !tbaa !24
  br label %._crit_edge.i.i188.i

._crit_edge.i.i188.i:                             ; preds = %.noexc190.i, %bb.cw
  %i.ua = phi ptr [ %i.ty, %.noexc190.i ], [ %i.hu, %bb.cw ] ; 2 uses
  switch i64 %i.tw, label %bb.cy [
    i64 1, label %bb.cx
    i64 0, label %bb.cz
  ]

bb.cx:                                            ; preds = %._crit_edge.i.i188.i
  %i.ub = load i8, ptr %i.h, align 16, !tbaa !24
  store i8 %i.ub, ptr %i.ua, align 1, !tbaa !24
  br label %bb.cz

bb.cy:                                            ; preds = %._crit_edge.i.i188.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ua, ptr nonnull align 16 %i.h, i64 %i.tw, i1 false)
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %._crit_edge.i.i188.i
  %i.uc = load i64, ptr %i.f, align 8, !tbaa !31  ; 2 uses
  store i64 %i.uc, ptr %i.hv, align 8, !tbaa !32
  %i.ud = load ptr, ptr %8, align 8, !tbaa !23
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 %i.uc
  store i8 0, ptr %i.ue, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  %i.uf = ptrtoint ptr %.sroa.35.5.lcssa.i to i64
  %i.ug = ptrtoint ptr %.sroa.0299.6.lcssa.i to i64
  %i.uh = sub i64 %i.uf, %i.ug                    ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, i8 0, i64 24, i1 false)
  %i.ui = icmp ugt i64 %i.uh, 9223372036854775804
  br i1 %i.ui, label %.noexc.i.i194.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i193.i, !prof !115

.noexc.i.i194.i:                                  ; preds = %bb.cz
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc195.i unwind label %.loopexit.split-lp398.i.loopexit.split-lp.loopexit.split-lp

.noexc195.i:                                      ; preds = %.noexc.i.i194.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i193.i: ; preds = %bb.cz
  %i.uj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uh) #26
          to label %.noexc196.i unwind label %.loopexit.split-lp398.i.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc196.i:                                      ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i193.i
  store ptr %i.uj, ptr %i.hw, align 8, !tbaa !47
  store ptr %i.uj, ptr %i.hx, align 8, !tbaa !50
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 %i.uh ; 2 uses
  store ptr %i.uk, ptr %i.hy, align 8, !tbaa !48
  %i.ul = icmp samesign ugt i64 %i.uh, 4
  br i1 %i.ul, label %bb.da, label %bb.db, !prof !49

bb.da:                                            ; preds = %.noexc196.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.uj, ptr align 4 %.sroa.0299.6.lcssa.i, i64 %i.uh, i1 false)
  br label %bb.dd

bb.db:                                            ; preds = %.noexc196.i
  %i.um = icmp eq i64 %i.uh, 4
  br i1 %i.um, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.un = load i32, ptr %.sroa.0299.6.lcssa.i, align 4, !tbaa !29
  store i32 %i.un, ptr %i.uj, align 4, !tbaa !29
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.da
  store ptr %i.uk, ptr %i.hx, align 8, !tbaa !50
  %i.uo = load ptr, ptr %i.bi, align 8, !tbaa !53 ; 10 uses
  %i.up = load ptr, ptr %i.bk, align 8, !tbaa !54
  %.not.i.i198.i = icmp eq ptr %i.uo, %i.up
  br i1 %.not.i.i198.i, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uo, i64 16 ; 3 uses
  store ptr %i.uq, ptr %i.uo, align 8, !tbaa !30
  %i.ur = load ptr, ptr %8, align 8, !tbaa !23    ; 2 uses
  %i.us = icmp eq ptr %i.ur, %i.hu
  br i1 %i.us, label %bb.df, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i199.i

bb.df:                                            ; preds = %bb.de
  %i.ut = load i64, ptr %i.hv, align 8, !tbaa !32 ; 3 uses
  %i.uu = icmp ult i64 %i.ut, 16
  call void @llvm.assume(i1 %i.uu)
  %i.uv = add nuw nsw i64 %i.ut, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.uq, ptr noundef nonnull align 8 dereferenceable(1) %i.hu, i64 %i.uv, i1 false)
  br label %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit202.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i199.i: ; preds = %bb.de
  store ptr %i.ur, ptr %i.uo, align 8, !tbaa !23
  %i.uw = load i64, ptr %i.hu, align 8, !tbaa !24
  store i64 %i.uw, ptr %i.uq, align 8, !tbaa !24
  %.pre822.i = load i64, ptr %i.hv, align 8, !tbaa !32
  br label %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit202.thread.i

_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit202.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i199.i, %bb.df
  %i.ux = phi i64 [ %.pre822.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i199.i ], [ %i.ut, %bb.df ]
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uo, i64 8
  store i64 %i.ux, ptr %i.uy, align 8, !tbaa !32
  store ptr %i.hu, ptr %8, align 8, !tbaa !23
  store i64 0, ptr %i.hv, align 8, !tbaa !32
  store i8 0, ptr %i.hu, align 8, !tbaa !24
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uo, i64 32
  %i.va = load <2 x ptr>, ptr %i.hw, align 8, !tbaa !28
  store <2 x ptr> %i.va, ptr %i.uz, align 8, !tbaa !28
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uo, i64 48
  %i.vc = load ptr, ptr %i.hy, align 8, !tbaa !48
  store ptr %i.vc, ptr %i.vb, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, i8 0, i64 24, i1 false)
  %i.vd = load ptr, ptr %i.bi, align 8, !tbaa !53
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 56
  store ptr %i.ve, ptr %i.bi, align 8, !tbaa !53
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i204.i

bb.dg:                                            ; preds = %bb.dd
  %i.vf = load ptr, ptr %0, align 8, !tbaa !65    ; 5 uses
  %i.vg = ptrtoint ptr %i.uo to i64
  %i.vh = ptrtoint ptr %i.vf to i64               ; 2 uses
  %i.vi = sub i64 %i.vg, %i.vh                    ; 3 uses
  %i.vj = icmp eq i64 %i.vi, 9223372036854775800
  br i1 %i.vj, label %bb.dh, label %_ZNKSt6vectorI10IndexGroupSaIS0_EE12_M_check_lenEmPKc.exit.i

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #25
          to label %.noexc469 unwind label %.loopexit.split-lp579.loopexit.split-lp

.noexc469:                                        ; preds = %bb.dh
  unreachable

_ZNKSt6vectorI10IndexGroupSaIS0_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.dg
  %i.vk = sdiv exact i64 %i.vi, 56                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.vk, i64 1)
  %i.vl = add nsw i64 %.sroa.speculated.i.i, %i.vk ; 2 uses
  %i.vm = icmp ult i64 %i.vl, %i.vk
  %i.vn = call i64 @llvm.umin.i64(i64 %i.vl, i64 164703072086692425)
  %i.vo = select i1 %i.vm, i64 164703072086692425, i64 %i.vn ; 3 uses
  %.not.i.i463 = icmp ne i64 %i.vo, 0
  call void @llvm.assume(i1 %.not.i.i463)
  %i.vp = mul nuw nsw i64 %i.vo, 56
  %i.vq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vp) #26
          to label %.noexc470 unwind label %.loopexit.split-lp579.loopexit.split-lp ; 5 uses

.noexc470:                                        ; preds = %_ZNKSt6vectorI10IndexGroupSaIS0_EE12_M_check_lenEmPKc.exit.i
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 %i.vi ; 6 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 16 ; 3 uses
  store ptr %i.vs, ptr %i.vr, align 8, !tbaa !30
  %i.vt = load ptr, ptr %8, align 8, !tbaa !23    ; 2 uses
  %i.vu = icmp eq ptr %i.vt, %i.hu
  br i1 %i.vu, label %bb.di, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i464

bb.di:                                            ; preds = %.noexc470
  %i.vv = load i64, ptr %i.hv, align 8, !tbaa !32 ; 3 uses
  %i.vw = icmp ult i64 %i.vv, 16
  call void @llvm.assume(i1 %i.vw)
  %i.vx = add nuw nsw i64 %i.vv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.vs, ptr noundef nonnull align 8 dereferenceable(1) %i.hu, i64 %i.vx, i1 false)
  br label %_ZN10IndexGroupC2EOS_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i464: ; preds = %.noexc470
  store ptr %i.vt, ptr %i.vr, align 8, !tbaa !23
  %i.vy = load i64, ptr %i.hu, align 8, !tbaa !24
  store i64 %i.vy, ptr %i.vs, align 8, !tbaa !24
  %.pre.i465 = load i64, ptr %i.hv, align 8, !tbaa !32
  br label %_ZN10IndexGroupC2EOS_.exit.i

_ZN10IndexGroupC2EOS_.exit.i:                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i464, %bb.di
  %i.vz = phi i64 [ %i.vv, %bb.di ], [ %.pre.i465, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i464 ]
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  store i64 %i.vz, ptr %i.wa, align 8, !tbaa !32
  store ptr %i.hu, ptr %8, align 8, !tbaa !23
  store i64 0, ptr %i.hv, align 8, !tbaa !32
  store i8 0, ptr %i.hu, align 8, !tbaa !24
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vr, i64 32
  %i.wc = load <2 x ptr>, ptr %i.hw, align 8, !tbaa !28
  store <2 x ptr> %i.wc, ptr %i.wb, align 8, !tbaa !28
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vr, i64 48
  %i.we = load ptr, ptr %i.hy, align 8, !tbaa !48
  store ptr %i.we, ptr %i.wd, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, i8 0, i64 24, i1 false)
  %.not10.i.i.i.i = icmp eq ptr %i.vf, %i.uo
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10IndexGroupSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit26.i, label %.lr.ph.i.i.i.i466

.lr.ph.i.i.i.i466:                                ; preds = %_ZN10IndexGroupC2EOS_.exit.i, %_ZSt19__relocate_object_aI10IndexGroupS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.wy, %_ZSt19__relocate_object_aI10IndexGroupS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.vq, %_ZN10IndexGroupC2EOS_.exit.i ] ; 7 uses
  %.0911.i.i.i.i = phi ptr [ %i.wx, %_ZSt19__relocate_object_aI10IndexGroupS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.vf, %_ZN10IndexGroupC2EOS_.exit.i ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.wf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.wf, ptr %.012.i.i.i.i, align 8, !tbaa !30, !alias.scope !134
  %i.wg = load ptr, ptr %.0911.i.i.i.i, align 8, !tbaa !23, !alias.scope !135 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 5 uses
  %i.wi = icmp eq ptr %i.wg, %i.wh
  br i1 %i.wi, label %bb.dj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i467

bb.dj:                                            ; preds = %.lr.ph.i.i.i.i466
  %i.wj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.wk = load i64, ptr %i.wj, align 8, !tbaa !32, !alias.scope !135 ; 3 uses
  %i.wl = icmp ult i64 %i.wk, 16
  call void @llvm.assume(i1 %i.wl)
  %i.wm = add nuw nsw i64 %i.wk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.wf, ptr noundef nonnull align 8 dereferenceable(1) %i.wh, i64 %i.wm, i1 false), !alias.scope !136
  br label %_ZSt19__relocate_object_aI10IndexGroupS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i467: ; preds = %.lr.ph.i.i.i.i466
  store ptr %i.wg, ptr %.012.i.i.i.i, align 8, !tbaa !23, !alias.scope !134
  %i.wn = load i64, ptr %i.wh, align 8, !tbaa !24, !alias.scope !135
  store i64 %i.wn, ptr %i.wf, align 8, !tbaa !24, !alias.scope !134
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !32, !alias.scope !135
  br label %_ZSt19__relocate_object_aI10IndexGroupS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aI10IndexGroupS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i467, %bb.dj
  %i.wo = phi i64 [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i467 ], [ %i.wk, %bb.dj ]
  %i.wp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.wq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  store i64 %i.wo, ptr %i.wq, align 8, !tbaa !32, !alias.scope !134
  store ptr %i.wh, ptr %.0911.i.i.i.i, align 8, !tbaa !23, !alias.scope !135
  store i64 0, ptr %i.wp, align 8, !tbaa !32, !alias.scope !135
  store i8 0, ptr %i.wh, align 8, !tbaa !24, !alias.scope !135
  %i.wr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ws = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.wt = load <2 x ptr>, ptr %i.ws, align 8, !tbaa !28, !alias.scope !135
  store <2 x ptr> %i.wt, ptr %i.wr, align 8, !tbaa !28, !alias.scope !134
  %i.wu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48
  %i.wv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !48, !alias.scope !135
  store ptr %i.ww, ptr %i.wu, align 8, !tbaa !48, !alias.scope !134
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ws, i8 0, i64 24, i1 false), !alias.scope !135
  %i.wx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 56 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i468 = icmp eq ptr %i.wx, %i.uo
  br i1 %.not.i.i.i.i468, label %_ZNSt6vectorI10IndexGroupSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit26.i, label %.lr.ph.i.i.i.i466, !llvm.loop !0

_ZNSt6vectorI10IndexGroupSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit26.i: ; preds = %_ZSt19__relocate_object_aI10IndexGroupS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZN10IndexGroupC2EOS_.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.vq, %_ZN10IndexGroupC2EOS_.exit.i ], [ %i.wy, %_ZSt19__relocate_object_aI10IndexGroupS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.wz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 56
  %.not.i27.i = icmp eq ptr %i.vf, null
  br i1 %.not.i27.i, label %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit202.i, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt6vectorI10IndexGroupSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit26.i
  %i.xa = load ptr, ptr %i.bk, align 8, !tbaa !54
  %i.xb = ptrtoint ptr %i.xa to i64
  %i.xc = sub i64 %i.xb, %i.vh
  call void @_ZdlPvm(ptr noundef nonnull %i.vf, i64 noundef %i.xc) #22
  br label %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit202.i

_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit202.i: ; preds = %bb.dk, %_ZNSt6vectorI10IndexGroupSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit26.i
  store ptr %i.vq, ptr %0, align 8, !tbaa !65
  store ptr %i.wz, ptr %i.bi, align 8, !tbaa !53
  %i.xd = getelementptr inbounds nuw [56 x i8], ptr %i.vq, i64 %i.vo
  store ptr %i.xd, ptr %i.bk, align 8, !tbaa !54
  %.pr363.i = load ptr, ptr %i.hw, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i.i203.i = icmp eq ptr %.pr363.i, null
  br i1 %.not.i.i.i.i203.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i204.i, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit202.i
  %i.xe = load ptr, ptr %i.hy, align 8, !tbaa !48
  %i.xf = ptrtoint ptr %i.xe to i64
  %i.xg = ptrtoint ptr %.pr363.i to i64
  %i.xh = sub i64 %i.xf, %i.xg
  call void @_ZdlPvm(ptr noundef nonnull %.pr363.i, i64 noundef %i.xh) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i204.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i204.i:             ; preds = %bb.dl, %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit202.i, %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit202.thread.i
  %i.xi = load ptr, ptr %8, align 8, !tbaa !23    ; 2 uses
  %i.xj = icmp eq ptr %i.xi, %i.hu
  br i1 %i.xj, label %_ZNSt6vectorIiSaIiEE5clearEv.exit210.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i205.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i205.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i204.i
  %i.xk = load i64, ptr %i.hu, align 8, !tbaa !24
  %i.xl = add i64 %i.xk, 1
  call void @_ZdlPvm(ptr noundef %i.xi, i64 noundef %i.xl) #22
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit210.i

_ZNSt6vectorIiSaIiEE5clearEv.exit210.i:           ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i204.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i205.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %.pre823.i = load i32, ptr %1, align 8, !tbaa !41
  br label %bb.dn

bb.dm:                                            ; preds = %.noexc.i189.i
  %i.xm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.i

.loopexit.split-lp398.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i193.i, %.noexc.i.i194.i
  %lpad.loopexit.split-lp2552 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xn = load ptr, ptr %8, align 8, !tbaa !23    ; 2 uses
  %i.xo = icmp eq ptr %i.xn, %i.hu
  br i1 %i.xo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211.i: ; preds = %.loopexit.split-lp398.i.loopexit.split-lp.loopexit.split-lp
  %i.xp = load i64, ptr %i.hu, align 8, !tbaa !24
  %i.xq = add i64 %i.xp, 1
  call void @_ZdlPvm(ptr noundef %i.xn, i64 noundef %i.xq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.i

.loopexit.split-lp579.loopexit.split-lp:          ; preds = %_ZNKSt6vectorI10IndexGroupSaIS0_EE12_M_check_lenEmPKc.exit.i, %bb.dh
  %lpad.loopexit.split-lp2555 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10IndexGroupD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %8) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.i: ; preds = %.loopexit.split-lp398.i.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp579.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211.i, %bb.dm
  %.pn143.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp2555, %.loopexit.split-lp579.loopexit.split-lp ], [ %i.xm, %bb.dm ], [ %lpad.loopexit.split-lp2552, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211.i ], [ %lpad.loopexit.split-lp2552, %.loopexit.split-lp398.i.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %.body.i

bb.dn:                                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit210.i, %.critedge2.i
  %i.xr = phi i32 [ %41, %.critedge2.i ], [ %.pre823.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit210.i ] ; 2 uses
  %.sroa.35.7.i = phi ptr [ %.sroa.35.5.lcssa.i, %.critedge2.i ], [ %.sroa.0299.6.lcssa.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit210.i ] ; 2 uses
  %42 = icmp slt i32 %.1361.lcssa.i, %i.xr
  br i1 %42, label %bb.cn, label %.critedge.i, !llvm.loop !101

.critedge.i:                                      ; preds = %bb.cm, %bb.dn, %bb.cn, %_ZNSt6vectorIiSaIiEE5clearEv.exit177.i
  %.sroa.71.8.i = phi ptr [ %.sroa.71.4676.i, %bb.cn ], [ %.sroa.71.3688.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit177.i ], [ %.sroa.71.6.lcssa.i, %bb.dn ], [ %.sroa.71.3688.i, %bb.cm ] ; 4 uses
  %.sroa.35.8.i = phi ptr [ %.sroa.35.4678.i, %bb.cn ], [ %spec.select366.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit177.i ], [ %.sroa.35.7.i, %bb.dn ], [ %.sroa.35.3689.i, %bb.cm ] ; 3 uses
  %.sroa.0299.8.i = phi ptr [ %.sroa.0299.4679.i, %bb.cn ], [ %.sroa.0299.3690.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit177.i ], [ %.sroa.0299.6.lcssa.i, %bb.dn ], [ %.sroa.0299.3690.i, %bb.cm ] ; 6 uses
  %indvars.iv.next814.i = add nuw nsw i64 %indvars.iv813.i, 1 ; 2 uses
  %exitcond817.not.i = icmp eq i64 %indvars.iv.next814.i, 10
  br i1 %exitcond817.not.i, label %bb.ck, label %.preheader403.i, !llvm.loop !102

_ZNSt6vectorIiSaIiEE5clearEv.exit216.i:           ; preds = %bb.cl
  %i.xs = load i32, ptr %1, align 8, !tbaa !41    ; 2 uses
  %i.xt = icmp sgt i32 %i.xs, 0
  br i1 %i.xt, label %.lr.ph713.i.preheader, label %.loopexit386.i

.lr.ph713.i.preheader:                            ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit216.i
  %.not.i.i214.i = icmp eq ptr %.sroa.35.8.i, %.sroa.0299.8.i
  %spec.select367.i = select i1 %.not.i.i214.i, ptr %.sroa.35.8.i, ptr %.sroa.0299.8.i
  br label %.lr.ph713.i

.lr.ph713.i:                                      ; preds = %.lr.ph713.i.preheader, %.critedge6.i
  %43 = phi i32 [ %46, %.critedge6.i ], [ %i.xs, %.lr.ph713.i.preheader ] ; 2 uses
  %.sroa.0299.9712.i = phi ptr [ %.sroa.0299.10.lcssa.i, %.critedge6.i ], [ %.sroa.0299.8.i, %.lr.ph713.i.preheader ] ; 3 uses
  %.0358711.i = phi i32 [ %.1359.lcssa.i, %.critedge6.i ], [ 0, %.lr.ph713.i.preheader ] ; 3 uses
  %.sroa.35.9710.i = phi ptr [ %.sroa.35.10.lcssa.i, %.critedge6.i ], [ %spec.select367.i, %.lr.ph713.i.preheader ] ; 3 uses
  %.sroa.71.9709.i = phi ptr [ %.sroa.71.10.lcssa.i, %.critedge6.i ], [ %.sroa.71.8.i, %.lr.ph713.i.preheader ] ; 3 uses
  %i.xu = load ptr, ptr %i.hm, align 8, !tbaa !67
  %44 = sext i32 %.0358711.i to i64               ; 2 uses
  %i.xv = getelementptr inbounds [36 x i8], ptr %i.xu, i64 %44
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 24
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !72 ; 2 uses
  %i.xy = icmp slt i32 %i.xx, %.0119.lcssa.i
  br i1 %i.xy, label %.preheader.i, label %.critedge4.i

.preheader.i:                                     ; preds = %.lr.ph713.i
  %45 = icmp slt i32 %.0358711.i, %43
  br i1 %45, label %sub_0.i, label %.critedge6.i

.critedge4.i:                                     ; preds = %.critedge6.i, %.lr.ph713.i
  %.sroa.71.9.lcssa.i = phi ptr [ %.sroa.71.10.lcssa.i, %.critedge6.i ], [ %.sroa.71.9709.i, %.lr.ph713.i ] ; 3 uses
  %.sroa.35.9.lcssa.i = phi ptr [ %.sroa.35.10.lcssa.i, %.critedge6.i ], [ %.sroa.35.9710.i, %.lr.ph713.i ] ; 2 uses
  %.sroa.0299.9.lcssa.i = phi ptr [ %.sroa.0299.10.lcssa.i, %.critedge6.i ], [ %.sroa.0299.9712.i, %.lr.ph713.i ] ; 7 uses
  %i.xz = icmp eq ptr %.sroa.0299.9.lcssa.i, %.sroa.35.9.lcssa.i
  br i1 %i.xz, label %.loopexit386.i, label %._crit_edge.i.i249.i

.lr.ph699.i:                                      ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %i.ya = load ptr, ptr %i.hm, align 8, !tbaa !67
  %i.yb = getelementptr inbounds [36 x i8], ptr %i.ya, i64 %indvars.iv.next819.i
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 24
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !72
  %i.ye = icmp eq i32 %i.yd, %i.xx
  br i1 %i.ye, label %sub_0.i, label %.critedge6.i.loopexit, !llvm.loop !103

sub_0.i:                                          ; preds = %.preheader.i, %.lr.ph699.i
  %.sroa.71.10693.i1292 = phi ptr [ %.sroa.71.12.i, %.lr.ph699.i ], [ %.sroa.71.9709.i, %.preheader.i ] ; 15 uses
  %.sroa.35.10694.i1291 = phi ptr [ %.sroa.35.11.i, %.lr.ph699.i ], [ %.sroa.35.9710.i, %.preheader.i ] ; 9 uses
  %.sroa.0299.10697.i1290 = phi ptr [ %.sroa.0299.12.i, %.lr.ph699.i ], [ %.sroa.0299.9712.i, %.preheader.i ] ; 22 uses
  %.0698.i1289 = phi i32 [ %.1.i, %.lr.ph699.i ], [ -1, %.preheader.i ] ; 11 uses
  %indvars.iv818.i1288 = phi i64 [ %indvars.iv.next819.i, %.lr.ph699.i ], [ %44, %.preheader.i ] ; 3 uses
  %indvars1646 = trunc i64 %indvars.iv818.i1288 to i32 ; 7 uses
  %i.yf = load ptr, ptr %i.hn, align 8, !tbaa !127
  %i.yg = getelementptr inbounds [8 x i8], ptr %i.yf, i64 %indvars.iv818.i1288
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !128
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !17 ; 5 uses
  %i.yj = load i8, ptr %i.yi, align 1             ; 2 uses
  switch i8 %i.yj, label %.tail375.i.thread [
    i8 67, label %sub_1.i
    i8 79, label %.tail375.i
  ]

sub_1.i:                                          ; preds = %sub_0.i
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yi, i64 1
  %i.yl = load i8, ptr %i.yk, align 1
  switch i8 %i.yl, label %.tail379.thread.i [
    i8 65, label %.tail.i.thread
    i8 0, label %bb.dz
  ]

.tail.i.thread:                                   ; preds = %sub_1.i
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yi, i64 2
  %i.yn = load i8, ptr %i.ym, align 1
  %i.yo = icmp eq i8 %i.yn, 0
  br i1 %i.yo, label %bb.do, label %.tail379.thread.i

bb.do:                                            ; preds = %.tail.i.thread
  %.not.i217.i = icmp eq ptr %.sroa.35.10694.i1291, %.sroa.71.10693.i1292
  br i1 %.not.i217.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  store i32 %indvars1646, ptr %.sroa.35.10694.i1291, align 4, !tbaa !29
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit226.i

bb.dq:                                            ; preds = %bb.do
  %i.yp = ptrtoint ptr %.sroa.71.10693.i1292 to i64
  %i.yq = ptrtoint ptr %.sroa.0299.10697.i1290 to i64
  %i.yr = sub i64 %i.yp, %i.yq                    ; 6 uses
  %i.ys = icmp eq i64 %i.yr, 9223372036854775804
  br i1 %i.ys, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i218.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i218.i: ; preds = %bb.dq
  %i.yt = ashr exact i64 %i.yr, 2                 ; 3 uses
  %.sroa.speculated.i.i.i219.i = call i64 @llvm.umax.i64(i64 %i.yt, i64 1)
  %i.yu = add nsw i64 %.sroa.speculated.i.i.i219.i, %i.yt ; 2 uses
  %i.yv = icmp ult i64 %i.yu, %i.yt
  %i.yw = call i64 @llvm.umin.i64(i64 %i.yu, i64 2305843009213693951)
  %i.yx = select i1 %i.yv, i64 2305843009213693951, i64 %i.yw ; 3 uses
  %.not.i.i.i220.i = icmp ne i64 %i.yx, 0
  call void @llvm.assume(i1 %.not.i.i.i220.i)
  %i.yy = shl nuw nsw i64 %i.yx, 2
  %i.yz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yy) #26
          to label %.noexc225.i unwind label %.loopexit.i ; 4 uses

.noexc225.i:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i218.i
  %i.za = getelementptr inbounds i8, ptr %i.yz, i64 %i.yr ; 2 uses
  store i32 %indvars1646, ptr %i.za, align 4, !tbaa !29
  %i.zb = icmp sgt i64 %i.yr, 0
  br i1 %i.zb, label %bb.dr, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i221.i

bb.dr:                                            ; preds = %.noexc225.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.yz, ptr align 4 %.sroa.0299.10697.i1290, i64 %i.yr, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i221.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i221.i: ; preds = %bb.dr, %.noexc225.i
  %.not.i17.i.i222.i = icmp eq ptr %.sroa.0299.10697.i1290, null
  br i1 %.not.i17.i.i222.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i223.i, label %bb.ds

bb.ds:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i221.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0299.10697.i1290, i64 noundef %i.yr) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i223.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i223.i: ; preds = %bb.ds, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i221.i
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %i.yx
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit226.i

_ZNSt6vectorIiSaIiEE9push_backERKi.exit226.i:     ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i223.i, %bb.dp
  %.sroa.71.19.i = phi ptr [ %i.zc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i223.i ], [ %.sroa.71.10693.i1292, %bb.dp ] ; 5 uses
  %.pn369.i = phi ptr [ %i.za, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i223.i ], [ %.sroa.35.10694.i1291, %bb.dp ] ; 3 uses
  %.sroa.0299.19.i = phi ptr [ %i.yz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i223.i ], [ %.sroa.0299.10697.i1290, %bb.dp ] ; 9 uses
  %.sroa.35.18.i = getelementptr inbounds nuw i8, ptr %.pn369.i, i64 4 ; 4 uses
  %i.zd = ptrtoint ptr %.sroa.35.18.i to i64      ; 2 uses
  %i.ze = ptrtoint ptr %.sroa.0299.19.i to i64    ; 2 uses
  %i.zf = sub i64 %i.zd, %i.ze                    ; 5 uses
  %i.zg = ashr exact i64 %i.zf, 2                 ; 6 uses
  %i.zh = trunc i64 %i.zg to i32                  ; 3 uses
  %i.zi = icmp ult i64 %i.zg, -3
  br i1 %i.zi, label %bb.dt, label %bb.dy

bb.dt:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit226.i
  %i.zj = ptrtoint ptr %.sroa.71.19.i to i64      ; 2 uses
  %i.zk = sub i64 %i.zj, %i.zd
  %i.zl = ashr exact i64 %i.zk, 2                 ; 2 uses
  %i.zm = icmp ult i64 %i.zg, 2305843009213693952
  call void @llvm.assume(i1 %i.zm)
  %i.zn = xor i64 %i.zg, 2305843009213693951      ; 2 uses
  %i.zo = icmp ule i64 %i.zl, %i.zn
  call void @llvm.assume(i1 %i.zo)
  %.not28.i.i = icmp ult i64 %i.zl, 3
  br i1 %.not28.i.i, label %bb.du, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i: ; preds = %bb.dt
  store i32 0, ptr %.sroa.35.18.i, align 4, !tbaa !29
  %i.zp = getelementptr i8, ptr %.pn369.i, i64 8
  store i64 0, ptr %i.zp, align 4
  %i.zq = getelementptr i8, ptr %.pn369.i, i64 16
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.du:                                            ; preds = %bb.dt
  %i.zr = icmp samesign ult i64 %i.zn, 3
  br i1 %i.zr, label %bb.dv, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #25
          to label %.noexc276.i unwind label %.loopexit.split-lp.i

.noexc276.i:                                      ; preds = %bb.dv
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.du
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.zg, i64 3)
  %i.zs = add nuw nsw i64 %.sroa.speculated.i.i.i, %i.zg
  %i.zt = call i64 @llvm.umin.i64(i64 %i.zs, i64 2305843009213693951) ; 2 uses
  %i.zu = shl nuw nsw i64 %i.zt, 2
  %i.zv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zu) #26
          to label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i unwind label %.loopexit.i ; 4 uses

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 %i.zf ; 3 uses
  store i32 0, ptr %i.zw, align 4, !tbaa !29
  %i.zx = getelementptr i8, ptr %i.zw, i64 4
  store i64 0, ptr %i.zx, align 4
  %i.zy = icmp sgt i64 %i.zf, 0
  br i1 %i.zy, label %bb.dw, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i

bb.dw:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.zv, ptr align 4 %.sroa.0299.19.i, i64 %i.zf, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i: ; preds = %bb.dw, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33.i.i
  %.not.i35.i.i = icmp eq ptr %.sroa.0299.19.i, null
  br i1 %.not.i35.i.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i, label %bb.dx

bb.dx:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
  %i.zz = sub i64 %i.zj, %i.ze
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0299.19.i, i64 noundef %i.zz) #22
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i: ; preds = %bb.dx, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zw, i64 12
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.zv, i64 %i.zt
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.dy:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit226.i
  %i.aac = getelementptr i8, ptr %.sroa.0299.19.i, i64 %i.zf
  %i.aad = getelementptr i8, ptr %i.aac, i64 12   ; 2 uses
  %.not.i.i227.i = icmp eq ptr %.sroa.35.18.i, %i.aad
  %spec.select368.i = select i1 %.not.i.i227.i, ptr %.sroa.35.18.i, ptr %i.aad
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i240.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i218.i
  %.sroa.71.11.ph.i = phi ptr [ %.sroa.71.10693.i1292, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i240.i ], [ %.sroa.71.10693.i1292, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i218.i ], [ %.sroa.71.19.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ]
  %.sroa.0299.11.ph.i = phi ptr [ %.sroa.0299.10697.i1290, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i240.i ], [ %.sroa.0299.10697.i1290, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i218.i ], [ %.sroa.0299.19.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %.invoke, %bb.dv
  %.sroa.71.11.ph384.i = phi ptr [ %.sroa.71.10693.i1292, %.invoke ], [ %.sroa.71.19.i, %bb.dv ]
  %.sroa.0299.11.ph385.i = phi ptr [ %.sroa.0299.10697.i1290, %.invoke ], [ %.sroa.0299.19.i, %bb.dv ]
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.dz:                                            ; preds = %sub_1.i
  %i.aae = icmp eq i32 %.0698.i1289, -1
  br i1 %i.aae, label %bb.ea, label %bb.ei

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
  %i.aaf = landingpad { ptr, i32 }
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
  %i.aav = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235.i

bb.ep:                                            ; preds = %bb.el
  %i.aaw = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.eq:                                            ; preds = %bb.em
  %i.aax = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #21
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %.pn135.i = phi { ptr, i32 } [ %i.aax, %bb.eq ], [ %i.aaw, %bb.ep ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %i.aay = load ptr, ptr %12, align 8, !tbaa !23  ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.aba = icmp eq ptr %i.aay, %i.aaz
  br i1 %i.aba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233.i: ; preds = %bb.er
  %i.abb = load i64, ptr %i.aaz, align 8, !tbaa !24
  %i.abc = add i64 %i.abb, 1
  call void @_ZdlPvm(ptr noundef %i.aay, i64 noundef %i.abc) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235.i: ; preds = %bb.er, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233.i, %bb.eo
  %.pn135.pn.i = phi { ptr, i32 } [ %i.aav, %bb.eo ], [ %.pn135.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233.i ], [ %.pn135.i, %bb.er ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %.body.i

bb.es:                                            ; preds = %bb.ej
  %i.abd = sext i32 %.0698.i1289 to i64
  %i.abe = getelementptr [4 x i8], ptr %.sroa.0299.10697.i1290, i64 %i.abd
  %i.abf = getelementptr i8, ptr %i.abe, i64 4
  store i32 %indvars1646, ptr %i.abf, align 4, !tbaa !29
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

sub_1381.i:                                       ; preds = %.tail375.i
  %i.abg = zext i8 %i.aaq to i32
  %i.abh = sub nsw i32 49, %i.abg
  %.not728.i = icmp eq i8 %i.aaq, 49
  br i1 %.not728.i, label %sub_2382.i, label %.tail379.i

sub_2382.i:                                       ; preds = %sub_1381.i
  %i.abi = getelementptr inbounds nuw i8, ptr %i.yi, i64 2
  %i.abj = load i8, ptr %i.abi, align 1
  %i.abk = zext i8 %i.abj to i32
  %i.abl = sub nsw i32 0, %i.abk
  br label %.tail379.i

.tail379.i:                                       ; preds = %.tail375.i.thread, %sub_2382.i, %sub_1381.i
  %i.abm = phi i32 [ %i.aat, %.tail375.i.thread ], [ %i.abh, %sub_1381.i ], [ %i.abl, %sub_2382.i ]
  %i.abn = icmp eq i32 %i.abm, 0
  br i1 %i.abn, label %bb.et, label %.tail379.thread.i

bb.et:                                            ; preds = %.tail379.i
  %i.abo = icmp eq i32 %.0698.i1289, -1
  br i1 %i.abo, label %bb.eu, label %bb.fc

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
  %i.abp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238.i

bb.ez:                                            ; preds = %bb.ev
  %i.abq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ew
  %i.abr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %17) #21
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %.pn132.i = phi { ptr, i32 } [ %i.abr, %bb.fa ], [ %i.abq, %bb.ez ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  %i.abs = load ptr, ptr %15, align 8, !tbaa !23  ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.abu = icmp eq ptr %i.abs, %i.abt
  br i1 %i.abu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236.i: ; preds = %bb.fb
  %i.abv = load i64, ptr %i.abt, align 8, !tbaa !24
  %i.abw = add i64 %i.abv, 1
  call void @_ZdlPvm(ptr noundef %i.abs, i64 noundef %i.abw) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238.i: ; preds = %bb.fb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236.i, %bb.ey
  %.pn132.pn.i = phi { ptr, i32 } [ %i.abp, %bb.ey ], [ %.pn132.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i236.i ], [ %.pn132.i, %bb.fb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %.body.i

bb.fc:                                            ; preds = %bb.et
  %i.abx = sext i32 %.0698.i1289 to i64
  %i.aby = getelementptr [4 x i8], ptr %.sroa.0299.10697.i1290, i64 %i.abx
  %i.abz = getelementptr i8, ptr %i.aby, i64 4
  store i32 %indvars1646, ptr %i.abz, align 4, !tbaa !29
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

.tail379.thread.i:                                ; preds = %sub_1.i, %.tail.i.thread, %.tail379.i
  %.not.i239.i = icmp eq ptr %.sroa.35.10694.i1291, %.sroa.71.10693.i1292
  br i1 %.not.i239.i, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %.tail379.thread.i
  store i32 %indvars1646, ptr %.sroa.35.10694.i1291, align 4, !tbaa !29
  %i.aca = getelementptr inbounds nuw i8, ptr %.sroa.35.10694.i1291, i64 4
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.fe:                                            ; preds = %.tail379.thread.i
  %i.acb = ptrtoint ptr %.sroa.71.10693.i1292 to i64
  %i.acc = ptrtoint ptr %.sroa.0299.10697.i1290 to i64
  %i.acd = sub i64 %i.acb, %i.acc                 ; 6 uses
  %i.ace = icmp eq i64 %i.acd, 9223372036854775804
  br i1 %i.ace, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i240.i

.invoke:                                          ; preds = %bb.dq, %bb.fe
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #25
          to label %.cont unwind label %.loopexit.split-lp.i

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i240.i: ; preds = %bb.fe
  %i.acf = ashr exact i64 %i.acd, 2               ; 3 uses
  %.sroa.speculated.i.i.i241.i = call i64 @llvm.umax.i64(i64 %i.acf, i64 1)
  %i.acg = add nsw i64 %.sroa.speculated.i.i.i241.i, %i.acf ; 2 uses
  %i.ach = icmp ult i64 %i.acg, %i.acf
  %i.aci = call i64 @llvm.umin.i64(i64 %i.acg, i64 2305843009213693951)
  %i.acj = select i1 %i.ach, i64 2305843009213693951, i64 %i.aci ; 3 uses
  %.not.i.i.i242.i = icmp ne i64 %i.acj, 0
  call void @llvm.assume(i1 %.not.i.i.i242.i)
  %i.ack = shl nuw nsw i64 %i.acj, 2
  %i.acl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ack) #26
          to label %.noexc247.i unwind label %.loopexit.i ; 4 uses

.noexc247.i:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i240.i
  %i.acm = getelementptr inbounds i8, ptr %i.acl, i64 %i.acd ; 2 uses
  store i32 %indvars1646, ptr %i.acm, align 4, !tbaa !29
  %i.acn = icmp sgt i64 %i.acd, 0
  br i1 %i.acn, label %bb.ff, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i243.i

bb.ff:                                            ; preds = %.noexc247.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.acl, ptr align 4 %.sroa.0299.10697.i1290, i64 %i.acd, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i243.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i243.i: ; preds = %bb.ff, %.noexc247.i
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acm, i64 4
  %.not.i17.i.i244.i = icmp eq ptr %.sroa.0299.10697.i1290, null
  br i1 %.not.i17.i.i244.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i245.i, label %bb.fg

bb.fg:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i243.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0299.10697.i1290, i64 noundef %i.acd) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i245.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i245.i: ; preds = %bb.fg, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i243.i
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.acl, i64 %i.acj
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i:             ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i245.i, %bb.fd, %bb.fc, %bb.es, %bb.ei, %bb.dy, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i
  %.sroa.71.12.i = phi ptr [ %i.aab, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i ], [ %.sroa.71.10693.i1292, %bb.ei ], [ %.sroa.71.10693.i1292, %bb.es ], [ %.sroa.71.10693.i1292, %bb.fc ], [ %i.acp, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i245.i ], [ %.sroa.71.19.i, %bb.dy ], [ %.sroa.71.10693.i1292, %bb.fd ], [ %.sroa.71.19.i, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i ] ; 2 uses
  %.sroa.35.11.i = phi ptr [ %i.aaa, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i ], [ %.sroa.35.10694.i1291, %bb.ei ], [ %.sroa.35.10694.i1291, %bb.es ], [ %.sroa.35.10694.i1291, %bb.fc ], [ %i.aco, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i245.i ], [ %spec.select368.i, %bb.dy ], [ %i.aca, %bb.fd ], [ %i.zq, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i ] ; 2 uses
  %.sroa.0299.12.i = phi ptr [ %i.zv, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i ], [ %.sroa.0299.10697.i1290, %bb.ei ], [ %.sroa.0299.10697.i1290, %bb.es ], [ %.sroa.0299.10697.i1290, %bb.fc ], [ %i.acl, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i245.i ], [ %.sroa.0299.19.i, %bb.dy ], [ %.sroa.0299.10697.i1290, %bb.fd ], [ %.sroa.0299.19.i, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i ] ; 2 uses
  %.1.i = phi i32 [ %i.zh, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i.i ], [ %.0698.i1289, %bb.ei ], [ %.0698.i1289, %bb.es ], [ %.0698.i1289, %bb.fc ], [ %.0698.i1289, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i245.i ], [ %i.zh, %bb.dy ], [ %.0698.i1289, %bb.fd ], [ %i.zh, %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit.i.i ]
  %indvars.iv.next819.i = add nsw i64 %indvars.iv818.i1288, 1 ; 4 uses
  %i.acq = load i32, ptr %1, align 8, !tbaa !41   ; 2 uses
  %i.acr = sext i32 %i.acq to i64
  %i.acs = icmp slt i64 %indvars.iv.next819.i, %i.acr
  br i1 %i.acs, label %.lr.ph699.i, label %.critedge6.i.loopexit, !llvm.loop !103

.critedge6.i.loopexit:                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, %.lr.ph699.i
  %indvars1645.le = trunc i64 %indvars.iv.next819.i to i32
  br label %.critedge6.i

.critedge6.i:                                     ; preds = %.critedge6.i.loopexit, %.preheader.i
  %46 = phi i32 [ %43, %.preheader.i ], [ %i.acq, %.critedge6.i.loopexit ] ; 2 uses
  %.sroa.71.10.lcssa.i = phi ptr [ %.sroa.71.9709.i, %.preheader.i ], [ %.sroa.71.12.i, %.critedge6.i.loopexit ] ; 2 uses
  %.sroa.35.10.lcssa.i = phi ptr [ %.sroa.35.9710.i, %.preheader.i ], [ %.sroa.35.11.i, %.critedge6.i.loopexit ] ; 2 uses
  %.1359.lcssa.i = phi i32 [ %.0358711.i, %.preheader.i ], [ %indvars1645.le, %.critedge6.i.loopexit ] ; 2 uses
  %.sroa.0299.10.lcssa.i = phi ptr [ %.sroa.0299.9712.i, %.preheader.i ], [ %.sroa.0299.12.i, %.critedge6.i.loopexit ] ; 2 uses
  %47 = icmp slt i32 %.1359.lcssa.i, %46
  br i1 %47, label %.lr.ph713.i, label %.critedge4.i, !llvm.loop !104

._crit_edge.i.i249.i:                             ; preds = %.critedge4.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  store ptr %i.hz, ptr %18, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.hz, ptr noundef nonnull align 1 dereferenceable(9) @.str.64, i64 9, i1 false)
  store i64 9, ptr %i.ia, align 8, !tbaa !32
  store i8 0, ptr %i.ib, align 1, !tbaa !24
  %i.act = ptrtoint ptr %.sroa.35.9.lcssa.i to i64
  %i.acu = ptrtoint ptr %.sroa.0299.9.lcssa.i to i64
  %i.acv = sub i64 %i.act, %i.acu                 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ic, i8 0, i64 24, i1 false)
  %i.acw = icmp ugt i64 %i.acv, 9223372036854775804
  br i1 %i.acw, label %.noexc.i.i255.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i254.i, !prof !115

.noexc.i.i255.i:                                  ; preds = %._crit_edge.i.i249.i
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc256.i unwind label %.loopexit.split-lp602.loopexit.split-lp

.noexc256.i:                                      ; preds = %.noexc.i.i255.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i254.i: ; preds = %._crit_edge.i.i249.i
  %i.acx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acv) #26
          to label %.noexc257.i unwind label %.loopexit.split-lp602.loopexit.split-lp ; 5 uses

.noexc257.i:                                      ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i254.i
  store ptr %i.acx, ptr %i.ic, align 8, !tbaa !47
  store ptr %i.acx, ptr %i.id, align 8, !tbaa !50
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 %i.acv ; 2 uses
  store ptr %i.acy, ptr %i.ie, align 8, !tbaa !48
  %i.acz = icmp samesign ugt i64 %i.acv, 4
  br i1 %i.acz, label %bb.fh, label %bb.fi, !prof !49

bb.fh:                                            ; preds = %.noexc257.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.acx, ptr align 4 %.sroa.0299.9.lcssa.i, i64 %i.acv, i1 false)
  br label %bb.fk

bb.fi:                                            ; preds = %.noexc257.i
  %i.ada = icmp eq i64 %i.acv, 4
  br i1 %i.ada, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  %i.adb = load i32, ptr %.sroa.0299.9.lcssa.i, align 4, !tbaa !29
  store i32 %i.adb, ptr %i.acx, align 4, !tbaa !29
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi, %bb.fh
  store ptr %i.acy, ptr %i.id, align 8, !tbaa !50
  %i.adc = load ptr, ptr %i.bi, align 8, !tbaa !53 ; 8 uses
  %i.add = load ptr, ptr %i.bk, align 8, !tbaa !54
  %.not.i.i259.i = icmp eq ptr %i.adc, %i.add
  br i1 %.not.i.i259.i, label %bb.fn, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.ade = getelementptr inbounds nuw i8, ptr %i.adc, i64 16 ; 3 uses
  store ptr %i.ade, ptr %i.adc, align 8, !tbaa !30
  %i.adf = load ptr, ptr %18, align 8, !tbaa !23  ; 2 uses
  %i.adg = icmp eq ptr %i.adf, %i.hz
  br i1 %i.adg, label %bb.fm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i260.i

bb.fm:                                            ; preds = %bb.fl
  %i.adh = load i64, ptr %i.ia, align 8, !tbaa !32 ; 3 uses
  %i.adi = icmp ult i64 %i.adh, 16
  call void @llvm.assume(i1 %i.adi)
  %i.adj = add nuw nsw i64 %i.adh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ade, ptr noundef nonnull align 8 dereferenceable(1) %i.hz, i64 %i.adj, i1 false)
  br label %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit263.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i260.i: ; preds = %bb.fl
  store ptr %i.adf, ptr %i.adc, align 8, !tbaa !23
  %i.adk = load i64, ptr %i.hz, align 8, !tbaa !24
  store i64 %i.adk, ptr %i.ade, align 8, !tbaa !24
  %.pre824.i = load i64, ptr %i.ia, align 8, !tbaa !32
  br label %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit263.thread.i

_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit263.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i260.i, %bb.fm
  %i.adl = phi i64 [ %.pre824.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i260.i ], [ %i.adh, %bb.fm ]
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adc, i64 8
  store i64 %i.adl, ptr %i.adm, align 8, !tbaa !32
  store ptr %i.hz, ptr %18, align 8, !tbaa !23
  store i64 0, ptr %i.ia, align 8, !tbaa !32
  store i8 0, ptr %i.hz, align 8, !tbaa !24
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adc, i64 32
  %i.ado = load <2 x ptr>, ptr %i.ic, align 8, !tbaa !28
  store <2 x ptr> %i.ado, ptr %i.adn, align 8, !tbaa !28
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adc, i64 48
  %i.adq = load ptr, ptr %i.ie, align 8, !tbaa !48
  store ptr %i.adq, ptr %i.adp, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ic, i8 0, i64 24, i1 false)
  %i.adr = load ptr, ptr %i.bi, align 8, !tbaa !53
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 56
  store ptr %i.ads, ptr %i.bi, align 8, !tbaa !53
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i265.i

bb.fn:                                            ; preds = %bb.fk
  invoke void @_ZNSt6vectorI10IndexGroupSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.adc, ptr noundef nonnull align 8 dereferenceable(56) %18)
          to label %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit263.i unwind label %bb.fp

_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit263.i: ; preds = %bb.fn
  %.pr364.i = load ptr, ptr %i.ic, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i.i264.i = icmp eq ptr %.pr364.i, null
  br i1 %.not.i.i.i.i264.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i265.i, label %bb.fo

bb.fo:                                            ; preds = %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit263.i
  %i.adt = load ptr, ptr %i.ie, align 8, !tbaa !48
  %i.adu = ptrtoint ptr %i.adt to i64
  %i.adv = ptrtoint ptr %.pr364.i to i64
  %i.adw = sub i64 %i.adu, %i.adv
  call void @_ZdlPvm(ptr noundef nonnull %.pr364.i, i64 noundef %i.adw) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i265.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i265.i:             ; preds = %bb.fo, %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit263.i, %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit263.thread.i
  %i.adx = load ptr, ptr %18, align 8, !tbaa !23  ; 2 uses
  %i.ady = icmp eq ptr %i.adx, %i.hz
  br i1 %i.ady, label %_ZN10IndexGroupD2Ev.exit268.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266.i: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i265.i
  %i.adz = load i64, ptr %i.hz, align 8, !tbaa !24
  %i.aea = add i64 %i.adz, 1
  call void @_ZdlPvm(ptr noundef %i.adx, i64 noundef %i.aea) #22
  br label %_ZN10IndexGroupD2Ev.exit268.i

_ZN10IndexGroupD2Ev.exit268.i:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i265.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %.loopexit386.i

.loopexit.split-lp602.loopexit.split-lp:          ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i254.i, %.noexc.i.i255.i
  %lpad.loopexit.split-lp2574 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aeb = load ptr, ptr %18, align 8, !tbaa !23  ; 2 uses
  %i.aec = icmp eq ptr %i.aeb, %i.hz
  br i1 %i.aec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269.i: ; preds = %.loopexit.split-lp602.loopexit.split-lp
  %i.aed = load i64, ptr %i.hz, align 8, !tbaa !24
  %i.aee = add i64 %i.aed, 1
  call void @_ZdlPvm(ptr noundef %i.aeb, i64 noundef %i.aee) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i

bb.fp:                                            ; preds = %bb.fn
  %i.aef = landingpad { ptr, i32 }
          cleanup
  call void @_ZN10IndexGroupD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %18) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i: ; preds = %.loopexit.split-lp602.loopexit.split-lp, %bb.fp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269.i
  %.pn.i = phi { ptr, i32 } [ %i.aef, %bb.fp ], [ %lpad.loopexit.split-lp2574, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269.i ], [ %lpad.loopexit.split-lp2574, %.loopexit.split-lp602.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %.body.i

.loopexit386.i:                                   ; preds = %bb.cl, %_ZN10IndexGroupD2Ev.exit268.i, %.critedge4.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit216.i, %.loopexit911.i
  %.sroa.71.14.i = phi ptr [ %.sroa.71.9.lcssa.i, %.critedge4.i ], [ %.sroa.71.9.lcssa.i, %_ZN10IndexGroupD2Ev.exit268.i ], [ %.sroa.71.1.lcssa.i, %.loopexit911.i ], [ %.sroa.71.8.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit216.i ], [ %.sroa.71.8.i, %bb.cl ]
  %.sroa.0299.14.i = phi ptr [ %.sroa.0299.9.lcssa.i, %.critedge4.i ], [ %.sroa.0299.9.lcssa.i, %_ZN10IndexGroupD2Ev.exit268.i ], [ %.sroa.0299.1.lcssa.i, %.loopexit911.i ], [ %.sroa.0299.8.i, %_ZNSt6vectorIiSaIiEE5clearEv.exit216.i ], [ %.sroa.0299.8.i, %bb.cl ] ; 3 uses
  %.not.i.i.i272.i = icmp eq ptr %.sroa.0299.14.i, null
  br i1 %.not.i.i.i272.i, label %._crit_edge.i.i209, label %bb.fq

bb.fq:                                            ; preds = %.loopexit386.i
  %i.aeg = ptrtoint ptr %.sroa.71.14.i to i64
  %i.aeh = ptrtoint ptr %.sroa.0299.14.i to i64
  %i.aei = sub i64 %i.aeg, %i.aeh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0299.14.i, i64 noundef %i.aei) #22
  br label %._crit_edge.i.i209

.body.i:                                          ; preds = %.loopexit.split-lp389.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit405.split.i.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232.i, %.loopexit.split-lp.i, %.loopexit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.i, %.loopexit.split-lp421.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.br, %.loopexit.split-lp406.loopexit.split-lp.i, %.loopexit.split-lp406.loopexit.i
  %.sroa.71.15.i = phi ptr [ %.sroa.71.9.lcssa.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i ], [ %.sroa.71.10693.i1292, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238.i ], [ %.sroa.71.1.lcssa.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.sroa.71.1.lcssa.i, %bb.br ], [ %.sroa.71.1.lcssa.i, %.loopexit.split-lp421.i ], [ %.sroa.35.1644.i, %.loopexit.split-lp406.loopexit.split-lp.i ], [ %.sroa.71.6.lcssa.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.i ], [ %.sroa.71.1642.i, %.loopexit405.split.i.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.71.10693.i1292, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232.i ], [ %.sroa.71.10693.i1292, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235.i ], [ %.sroa.71.11.ph.i, %.loopexit.i ], [ %.sroa.71.11.ph384.i, %.loopexit.split-lp.i ], [ %.sroa.71.1642.lcssa.i, %.loopexit.split-lp406.loopexit.i ], [ %.sroa.71.6662.i1283, %.loopexit.split-lp389.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0299.15.i = phi ptr [ %.sroa.0299.9.lcssa.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i ], [ %.sroa.0299.10697.i1290, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238.i ], [ %.sroa.0299.1.lcssa.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.sroa.0299.1.lcssa.i, %bb.br ], [ %.sroa.0299.1.lcssa.i, %.loopexit.split-lp421.i ], [ %.sroa.0299.1645.i, %.loopexit.split-lp406.loopexit.split-lp.i ], [ %.sroa.0299.6.lcssa.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.i ], [ %.sroa.0299.1645.i, %.loopexit405.split.i.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0299.10697.i1290, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232.i ], [ %.sroa.0299.10697.i1290, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235.i ], [ %.sroa.0299.11.ph.i, %.loopexit.i ], [ %.sroa.0299.11.ph385.i, %.loopexit.split-lp.i ], [ %.sroa.0299.1645.i, %.loopexit.split-lp406.loopexit.i ], [ %.sroa.0299.6665.i1281, %.loopexit.split-lp389.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.pn157.i = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i ], [ %.pn132.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit238.i ], [ %.pn150.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.oh, %bb.br ], [ %lpad.loopexit.split-lp423.i, %.loopexit.split-lp421.i ], [ %lpad.loopexit.split-lp412.i, %.loopexit.split-lp406.loopexit.split-lp.i ], [ %.pn143.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit213.i ], [ %lpad.loopexit.split-lp2536, %.loopexit405.split.i.loopexit.split-lp.loopexit.split-lp ], [ %.pn138.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232.i ], [ %.pn135.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit411.i, %.loopexit.split-lp406.loopexit.i ], [ %lpad.loopexit.split-lp2533, %.loopexit.split-lp389.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i273.i = icmp eq ptr %.sroa.0299.15.i, null
  br i1 %.not.i.i.i273.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit274.i, label %bb.fr

bb.fr:                                            ; preds = %.body.i
  %i.aej = ptrtoint ptr %.sroa.71.15.i to i64
  %i.aek = ptrtoint ptr %.sroa.0299.15.i to i64
  %i.ael = sub i64 %i.aej, %i.aek
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0299.15.i, i64 noundef %i.ael) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit274.i

_ZNSt6vectorIiSaIiEED2Ev.exit274.i:               ; preds = %bb.fr, %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  br label %.body

._crit_edge.i.i209:                               ; preds = %bb.fq, %.loopexit386.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21
  %i.aem = load ptr, ptr %22, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21
  store ptr %i.if, ptr %28, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.if, ptr noundef nonnull align 1 dereferenceable(7) @.str.10, i64 7, i1 false)
  store i64 7, ptr %i.ig, align 8, !tbaa !32
  store i8 0, ptr %i.kc, align 1, !tbaa !24
  invoke fastcc void @_ZL6mk_aidPK7t_atomsN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERSA_b(ptr dead_on_unwind noalias writable align 8 %27, ptr noundef nonnull %1, ptr %i.aem, ptr noundef nonnull align 8 dereferenceable(32) %28, i1 noundef zeroext false)
          to label %bb.fs unwind label %bb.gd

bb.fs:                                            ; preds = %._crit_edge.i.i209
  %i.aen = load ptr, ptr %28, align 8, !tbaa !23  ; 2 uses
  %i.aeo = icmp eq ptr %i.aen, %i.if
  br i1 %i.aeo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %bb.fs
  %i.aep = load i64, ptr %i.if, align 8, !tbaa !24
  %i.aeq = add i64 %i.aep, 1
  call void @_ZdlPvm(ptr noundef %i.aen, i64 noundef %i.aeq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %bb.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  %i.aer = load ptr, ptr %27, align 8, !tbaa !28  ; 9 uses
  %i.aes = load ptr, ptr %i.ih, align 8, !tbaa !28 ; 2 uses
  %i.aet = icmp eq ptr %i.aer, %i.aes
  br i1 %i.aet, label %bb.gg, label %bb.ft

bb.ft:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  %i.aeu = ptrtoint ptr %i.aes to i64
  %i.aev = ptrtoint ptr %i.aer to i64             ; 2 uses
  %i.aew = sub i64 %i.aeu, %i.aev                 ; 7 uses
  %i.aex = ashr exact i64 %i.aew, 2
  %i.aey = load i32, ptr %1, align 8, !tbaa !41
  %i.aez = sext i32 %i.aey to i64
  %i.afa = icmp slt i64 %i.aex, %i.aez
  br i1 %i.afa, label %._crit_edge.i.i216, label %bb.gg

._crit_edge.i.i216:                               ; preds = %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #21
  store ptr %i.ii, ptr %29, align 8, !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ii, ptr noundef nonnull align 1 dereferenceable(11) @.str.11, i64 11, i1 false)
  store i64 11, ptr %i.ij, align 8, !tbaa !32
  store i8 0, ptr %i.kd, align 1, !tbaa !24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ik, i8 0, i64 24, i1 false)
  %i.afb = icmp ugt i64 %i.aew, 9223372036854775804
  br i1 %i.afb, label %.noexc.i.i222, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i221, !prof !115

.noexc.i.i222:                                    ; preds = %._crit_edge.i.i216
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #25
          to label %.noexc223 unwind label %.loopexit.split-lp607.loopexit.split-lp

.noexc223:                                        ; preds = %.noexc.i.i222
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i221: ; preds = %._crit_edge.i.i216
  %i.afc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aew) #26
          to label %.noexc224 unwind label %.loopexit.split-lp607.loopexit.split-lp ; 5 uses

.noexc224:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i221
  store ptr %i.afc, ptr %i.ik, align 8, !tbaa !47
  store ptr %i.afc, ptr %i.il, align 8, !tbaa !50
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 %i.aew ; 2 uses
  store ptr %i.afd, ptr %i.im, align 8, !tbaa !48
  %i.afe = icmp samesign ugt i64 %i.aew, 4
  br i1 %i.afe, label %bb.fu, label %bb.fv, !prof !49

bb.fu:                                            ; preds = %.noexc224
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.afc, ptr align 4 %i.aer, i64 %i.aew, i1 false)
  br label %bb.fx

bb.fv:                                            ; preds = %.noexc224
  %i.aff = icmp eq i64 %i.aew, 4
  br i1 %i.aff, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.afg = load i32, ptr %i.aer, align 4, !tbaa !29
  store i32 %i.afg, ptr %i.afc, align 4, !tbaa !29
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv, %bb.fu
  store ptr %i.afd, ptr %i.il, align 8, !tbaa !50
  %i.afh = load ptr, ptr %i.bi, align 8, !tbaa !53 ; 8 uses
  %i.afi = load ptr, ptr %i.bk, align 8, !tbaa !54
  %.not.i.i226 = icmp eq ptr %i.afh, %i.afi
  br i1 %.not.i.i226, label %bb.ga, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afh, i64 16 ; 3 uses
  store ptr %i.afj, ptr %i.afh, align 8, !tbaa !30
  %i.afk = load ptr, ptr %29, align 8, !tbaa !23  ; 2 uses
  %i.afl = icmp eq ptr %i.afk, %i.ii
  br i1 %i.afl, label %bb.fz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i227

bb.fz:                                            ; preds = %bb.fy
  %i.afm = load i64, ptr %i.ij, align 8, !tbaa !32 ; 3 uses
  %i.afn = icmp ult i64 %i.afm, 16
  call void @llvm.assume(i1 %i.afn)
  %i.afo = add nuw nsw i64 %i.afm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.afj, ptr noundef nonnull align 8 dereferenceable(1) %i.ii, i64 %i.afo, i1 false)
  br label %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit230.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i227: ; preds = %bb.fy
  store ptr %i.afk, ptr %i.afh, align 8, !tbaa !23
  %i.afp = load i64, ptr %i.ii, align 8, !tbaa !24
  store i64 %i.afp, ptr %i.afj, align 8, !tbaa !24
  %.pre1652 = load i64, ptr %i.ij, align 8, !tbaa !32
  br label %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit230.thread

_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit230.thread: ; preds = %bb.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i227
  %i.afq = phi i64 [ %.pre1652, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i227 ], [ %i.afm, %bb.fz ]
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afh, i64 8
  store i64 %i.afq, ptr %i.afr, align 8, !tbaa !32
  store ptr %i.ii, ptr %29, align 8, !tbaa !23
  store i64 0, ptr %i.ij, align 8, !tbaa !32
  store i8 0, ptr %i.ii, align 8, !tbaa !24
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afh, i64 32
  %i.aft = load <2 x ptr>, ptr %i.ik, align 8, !tbaa !28
  store <2 x ptr> %i.aft, ptr %i.afs, align 8, !tbaa !28
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afh, i64 48
  %i.afv = load ptr, ptr %i.im, align 8, !tbaa !48
  store ptr %i.afv, ptr %i.afu, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ik, i8 0, i64 24, i1 false)
  %i.afw = load ptr, ptr %i.bi, align 8, !tbaa !53
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 56
  store ptr %i.afx, ptr %i.bi, align 8, !tbaa !53
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i232

bb.ga:                                            ; preds = %bb.fx
  invoke void @_ZNSt6vectorI10IndexGroupSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.afh, ptr noundef nonnull align 8 dereferenceable(56) %29)
          to label %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit230 unwind label %bb.ge

_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit230: ; preds = %bb.ga
  %.pr527 = load ptr, ptr %i.ik, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i.i231 = icmp eq ptr %.pr527, null
  br i1 %.not.i.i.i.i231, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i232, label %bb.gb

bb.gb:                                            ; preds = %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit230
  %i.afy = load ptr, ptr %i.im, align 8, !tbaa !48
  %i.afz = ptrtoint ptr %i.afy to i64
  %i.aga = ptrtoint ptr %.pr527 to i64
  %i.agb = sub i64 %i.afz, %i.aga
  call void @_ZdlPvm(ptr noundef nonnull %.pr527, i64 noundef %i.agb) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i232

_ZNSt6vectorIiSaIiEED2Ev.exit.i232:               ; preds = %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit230.thread, %bb.gb, %_ZNSt6vectorI10IndexGroupSaIS0_EE9push_backEOS0_.exit230
  %i.agc = load ptr, ptr %29, align 8, !tbaa !23  ; 2 uses
  %i.agd = icmp eq ptr %i.agc, %i.ii
  br i1 %i.agd, label %_ZN10IndexGroupD2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i233: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i232
  %i.age = load i64, ptr %i.ii, align 8, !tbaa !24
  %i.agf = add i64 %i.age, 1
  call void @_ZdlPvm(ptr noundef %i.agc, i64 noundef %i.agf) #22
  br label %_ZN10IndexGroupD2Ev.exit236

_ZN10IndexGroupD2Ev.exit236:                      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i232, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i233
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  br label %bb.gg

bb.gc:                                            ; preds = %bb.ap
  %i.agg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit432

.loopexit.split-lp591.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.jd, %bb.jc, %bb.jb, %.lr.ph.i376, %.lr.ph.i207, %bb.hy, %bb.gi, %bb.aq
  %lpad.loopexit.split-lp2571 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.gd:                                            ; preds = %._crit_edge.i.i209
  %i.agh = landingpad { ptr, i32 }
          cleanup
  %i.agi = load ptr, ptr %28, align 8, !tbaa !23  ; 2 uses
  %i.agj = icmp eq ptr %i.agi, %i.if
  br i1 %i.agj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237: ; preds = %bb.gd
  %i.agk = load i64, ptr %i.if, align 8, !tbaa !24
  %i.agl = add i64 %i.agk, 1
  call void @_ZdlPvm(ptr noundef %i.agi, i64 noundef %i.agl) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

end_hunk_1
