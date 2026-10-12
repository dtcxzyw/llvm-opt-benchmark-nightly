Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_polystat?download=true
inline.NumInlined: 306
inline.NumDeleted: 140
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_Z12gmx_polystatiPPc:._crit_edge.i.i
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.v, i8 noundef zeroext 2)
          to label %bb.bt unwind label %bb.cc

bb.bt:                                            ; preds = %bb.bs
  %i.ol = invoke noundef i32 @_Z12read_first_xPK16gmx_output_env_tPP11t_trxstatusRKNSt10filesystem7__cxx114pathEPfPPA3_fSC_(ptr noundef %i.oj, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m)
          to label %bb.bu unwind label %bb.cd

bb.bu:                                            ; preds = %bb.bt
  store i32 %i.ol, ptr %i.n, align 4, !tbaa !47
  %i.om = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 2 uses
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i494 = icmp eq ptr %i.on, null
  br i1 %.not.i.i.i494, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i495, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.om, ptr noundef nonnull %i.on) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i495

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i495: ; preds = %bb.bv, %bb.bu
  %i.oo = load ptr, ptr %20, align 8, !tbaa !23   ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.oq = icmp eq ptr %i.oo, %i.op
  br i1 %i.oq, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit498, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i496

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i496: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i495
  %i.or = load i64, ptr %i.op, align 8, !tbaa !19
  %i.os = add i64 %i.or, 1
  call void @_ZdlPvm(ptr noundef %i.oo, i64 noundef %i.os) #19
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit498

_ZNSt10filesystem7__cxx114pathD2Ev.exit498:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i495, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %i.ot = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.45, i32 noundef 288, i64 noundef 3, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit:         ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit498
  %i.ou = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.45, i32 noundef 289, i64 noundef 3, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit501 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit501:      ; preds = %_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit
  %i.ov = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.45, i32 noundef 290, i64 noundef 3, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit503.preheader.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit503.preheader.preheader: ; preds = %_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit501
  %i.ow = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.45, i32 noundef 293, i64 noundef 3, i64 noundef 8)
          to label %bb.bw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bw:                                            ; preds = %_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit503.preheader.preheader
  store ptr %i.ow, ptr %i.ot, align 8, !tbaa !87
  %i.ox = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.45, i32 noundef 294, i64 noundef 3, i64 noundef 8)
          to label %bb.bx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bx:                                            ; preds = %bb.bw
  store ptr %i.ox, ptr %i.ou, align 8, !tbaa !87
  %i.oy = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.45, i32 noundef 295, i64 noundef 3, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit503 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit503:      ; preds = %bb.bx
  store ptr %i.oy, ptr %i.ov, align 8, !tbaa !87
  %i.oz = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.45, i32 noundef 293, i64 noundef 3, i64 noundef 8)
          to label %bb.by unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.by:                                            ; preds = %_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit503
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ot, i64 8 ; 4 uses
  store ptr %i.oz, ptr %i.pa, align 8, !tbaa !87
  %i.pb = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.45, i32 noundef 294, i64 noundef 3, i64 noundef 8)
          to label %bb.bz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bz:                                            ; preds = %bb.by
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ou, i64 8 ; 4 uses
  store ptr %i.pb, ptr %i.pc, align 8, !tbaa !87
  %i.pd = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.45, i32 noundef 295, i64 noundef 3, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit503.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit503.1:    ; preds = %bb.bz
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  store ptr %i.pd, ptr %i.pe, align 8, !tbaa !87
  %i.pf = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.45, i32 noundef 293, i64 noundef 3, i64 noundef 8)
          to label %bb.ca unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ca:                                            ; preds = %_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit503.1
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ot, i64 16 ; 4 uses
  store ptr %i.pf, ptr %i.pg, align 8, !tbaa !87
  %i.ph = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.45, i32 noundef 294, i64 noundef 3, i64 noundef 8)
          to label %bb.cb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.cb:                                            ; preds = %bb.ca
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ou, i64 16 ; 4 uses
  store ptr %i.ph, ptr %i.pi, align 8, !tbaa !87
  %i.pj = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.45, i32 noundef 295, i64 noundef 3, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit503.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit503.2:    ; preds = %bb.cb
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  store ptr %i.pj, ptr %i.pk, align 8, !tbaa !87
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.pm = load i32, ptr %i.n, align 4, !tbaa !47
  %i.pn = invoke noundef ptr @_Z14gmx_rmpbc_initPK6t_idef7PbcTypei(ptr noundef nonnull %i.pl, i32 noundef %i.ck, i32 noundef %i.pm)
          to label %.preheader654 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cc:                                            ; preds = %bb.bs, %_ZL13gmx_snew_implIdEvPKcS1_iRPT_m.exit487
  %i.po = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.cd:                                            ; preds = %bb.bt
  %i.pp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %20) #18
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.pn343 = phi { ptr, i32 } [ %i.pp, %bb.cd ], [ %i.po, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %.loopexit.split-lp

.preheader654:                                    ; preds = %_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit503.2
  %.not = icmp eq ptr %.0266, null                ; 4 uses
  %i.pq = sdiv i32 %.0.lcssa.fr, 2                ; 2 uses
  %i.pr = icmp slt i32 %.0.lcssa.fr, 2            ; 2 uses
  %.not351 = icmp eq ptr %.0265, null             ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.ci, i64 2352
  %i.pt = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.pu = sitofp i32 %.0313.lcssa1074 to double   ; 8 uses
  %.not346 = icmp eq ptr %.0267, null             ; 2 uses
  %i.pv = icmp sgt i32 %.0.lcssa.fr, 1
  %i.pw = add nsw i32 %i.pq, -1
  %i.px = zext i32 %i.pw to i64                   ; 2 uses
  %i.py = shl nuw nsw i64 %i.px, 3
  %i.pz = add nuw nsw i64 %i.py, 8
  %i.qa = shl nuw nsw i64 %i.px, 2
  %i.qb = add nuw nsw i64 %i.qa, 4
  %i.qc = sext i32 %i.pq to i64                   ; 3 uses
  %brmerge = or i1 %.not, %i.pr
  %wide.trip.count808 = zext nneg i32 %.0313.lcssa1074 to i64
  %i.qd = insertelement <2 x double> poison, double %i.pu, i64 0
  %i.qe = shufflevector <2 x double> %i.qd, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.qf = add nsw i64 %i.qc, -1                   ; 2 uses
  %i.qg = lshr i64 %i.qf, 1
  %i.qh = add nuw i64 %i.qg, 1                    ; 2 uses
  %i.qi = add nsw i64 %i.qc, -1
  %i.qj = lshr i64 %i.qi, 1
  %xtraiter1189 = and i64 %i.qh, 3                ; 3 uses
  %i.qk = icmp ult i64 %i.qf, 6
  %unroll_iter1196 = and i64 %i.qh, -4
  %lcmp.mod1190.not = icmp eq i64 %xtraiter1189, 0
  %lcmp.mod1195 = icmp ne i64 %xtraiter1189, 0
  br label %bb.cf

bb.cf:                                            ; preds = %.preheader654, %bb.cv
  %.sroa.13.0 = phi i32 [ 0, %.preheader654 ], [ %.sroa.13.6, %bb.cv ] ; 2 uses
  %.sroa.0.0 = phi double [ 0.000000e+00, %.preheader654 ], [ %.sroa.0.4, %bb.cv ]
  %.sroa.8.0 = phi double [ 0.000000e+00, %.preheader654 ], [ %.sroa.8.4, %bb.cv ]
  %.sroa.11.0 = phi double [ 0.000000e+00, %.preheader654 ], [ %.sroa.11.4, %bb.cv ]
  %.0296 = phi i32 [ 0, %.preheader654 ], [ %i.aln, %bb.cv ]
  %.0275 = phi double [ 0.000000e+00, %.preheader654 ], [ %.1276, %bb.cv ] ; 2 uses
  %i.ql = phi <2 x double> [ zeroinitializer, %.preheader654 ], [ %i.ais, %bb.cv ]
  %i.qm = load i32, ptr %i.n, align 4, !tbaa !47
  %i.qn = load ptr, ptr %i.l, align 8, !tbaa !89
  invoke void @_Z15gmx_rmpbc_applyP9gmx_rmpbciPA3_KfPA3_f(ptr noundef %i.pn, i32 noundef %i.qm, ptr noundef nonnull %i.m, ptr noundef %i.qn)
          to label %.preheader653.preheader unwind label %.loopexit.split-lp.loopexit

.preheader653.preheader:                          ; preds = %bb.cf
  %i.qo = load ptr, ptr %i.ou, align 8, !tbaa !87
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qo, i8 0, i64 24, i1 false)
  %i.qp = load ptr, ptr %i.pc, align 8, !tbaa !87
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qp, i8 0, i64 24, i1 false)
  %i.qq = load ptr, ptr %i.pi, align 8, !tbaa !87
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qq, i8 0, i64 24, i1 false)
  %i.qr = load i8, ptr @_ZZ12gmx_polystatiPPcE3bPC, align 1, !tbaa !83, !range !84, !noundef !85
  %i.qs = trunc nuw i8 %i.qr to i1                ; 3 uses
  %.sroa.0.1 = select i1 %i.qs, double 0.000000e+00, double %.sroa.0.0 ; 2 uses
  %.sroa.8.1 = select i1 %i.qs, double 0.000000e+00, double %.sroa.8.0 ; 2 uses
  %.sroa.11.1 = select i1 %i.qs, double 0.000000e+00, double %.sroa.11.0 ; 2 uses
  br i1 %brmerge, label %.loopexit652, label %.lr.ph683.preheader

.lr.ph683.preheader:                              ; preds = %.preheader653.preheader
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.0634, i8 0, i64 %i.pz, i1 false), !tbaa !91
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.0633, i8 0, i64 %i.qb, i1 false), !tbaa !47
  br label %.loopexit652

.loopexit652:                                     ; preds = %.lr.ph683.preheader, %.preheader653.preheader
  br i1 %i.fj, label %.lr.ph703, label %._crit_edge704

.lr.ph703:                                        ; preds = %.loopexit652, %.loopexit
  %i.qt = phi i32 [ %i.abg, %.loopexit ], [ %.sroa.13.0, %.loopexit652 ] ; 3 uses
  %.sroa.0.2 = phi double [ %.sroa.0.3, %.loopexit ], [ %.sroa.0.1, %.loopexit652 ] ; 2 uses
  %.sroa.8.2 = phi double [ %.sroa.8.3, %.loopexit ], [ %.sroa.8.1, %.loopexit652 ] ; 2 uses
  %.sroa.11.2 = phi double [ %.sroa.11.3, %.loopexit ], [ %.sroa.11.1, %.loopexit652 ] ; 2 uses
  %indvars.iv805 = phi i64 [ %indvars.iv.next806, %.loopexit ], [ 0, %.loopexit652 ] ; 2 uses
  %.0280701 = phi double [ %i.ry, %.loopexit ], [ 0.000000e+00, %.loopexit652 ]
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv805
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !47 ; 5 uses
  %indvars.iv.next806 = add nuw nsw i64 %indvars.iv805, 1 ; 3 uses
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next806
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !47 ; 5 uses
  %i.qy = load ptr, ptr %i.l, align 8, !tbaa !89  ; 9 uses
  %i.qz = load ptr, ptr %i.h, align 8, !tbaa !92  ; 3 uses
  %i.ra = sext i32 %i.qv to i64                   ; 9 uses
  %i.rb = getelementptr inbounds [4 x i8], ptr %i.qz, i64 %i.ra ; 5 uses
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !47
  %i.rd = sext i32 %i.rc to i64
  %i.re = getelementptr inbounds [12 x i8], ptr %i.qy, i64 %i.rd ; 2 uses
  %i.rf = add nsw i32 %i.qx, -1                   ; 2 uses
  %i.rg = sext i32 %i.rf to i64                   ; 5 uses
  %i.rh = getelementptr inbounds [4 x i8], ptr %i.qz, i64 %i.rg
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !47
  %i.rj = sext i32 %i.ri to i64
  %i.rk = getelementptr inbounds [12 x i8], ptr %i.qy, i64 %i.rj ; 2 uses
  %i.rl = load <2 x float>, ptr %i.rk, align 4, !tbaa !93
  %i.rm = load <2 x float>, ptr %i.re, align 4, !tbaa !93
  %i.rn = fsub <2 x float> %i.rl, %i.rm           ; 2 uses
  %i.ro = fmul <2 x float> %i.rn, %i.rn           ; 2 uses
  %shift = shufflevector <2 x float> %i.ro, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ro, %shift
  %i.rp = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !93
  %i.rs = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !93
  %i.ru = fsub float %i.rr, %i.rt                 ; 2 uses
  %i.rv = fmul float %i.ru, %i.ru
  %i.rw = fadd float %i.rp, %i.rv
  %i.rx = fpext float %i.rw to double
  %i.ry = fadd double %.0280701, %i.rx            ; 2 uses
  br i1 %.not351, label %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph703
  %i.rz = sub nsw i32 %i.qx, %i.qv                ; 4 uses
  %i.sa = sext i32 %i.rz to i64
  %i.sb = icmp sgt i32 %i.rz, 1
  br i1 %i.sb, label %.preheader.i.preheader, label %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit

.preheader.i.preheader:                           ; preds = %bb.cg
  %i.sc = sub i32 %i.qv, %i.qx
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i
  %indvar1185 = phi i32 [ 0, %.preheader.i.preheader ], [ %indvar.next1186, %._crit_edge.i ] ; 2 uses
  %indvars.iv31.i = phi i64 [ 1, %.preheader.i.preheader ], [ %indvars.iv.next32.i, %._crit_edge.i ] ; 4 uses
  %indvars.iv29.in.i = phi i32 [ %i.rz, %.preheader.i.preheader ], [ %indvars.iv29.i, %._crit_edge.i ]
  %indvars.iv29.i = add i32 %indvars.iv29.in.i, -1 ; 3 uses
  %i.sd = trunc i64 %indvars.iv31.i to i32
  %i.se = sub i32 %i.rz, %i.sd                    ; 2 uses
  %i.sf = icmp sgt i32 %i.se, 0
  br i1 %i.sf, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext i32 %indvars.iv29.i to i64 ; 2 uses
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %indvars.iv31.i ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.sg = add i32 %i.sc, %indvar1185
  %i.sh = icmp eq i32 %i.sg, -2
  br i1 %i.sh, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 4 uses
  %.024.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.new ], [ %i.tx, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %indvars.iv.i
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !47
  %i.sk = sext i32 %i.sj to i64
  %i.sl = getelementptr inbounds [12 x i8], ptr %i.qy, i64 %i.sk ; 2 uses
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.sm = load i32, ptr %gep.i, align 4, !tbaa !47
  %i.sn = sext i32 %i.sm to i64
  %i.so = getelementptr inbounds [12 x i8], ptr %i.qy, i64 %i.sn ; 2 uses
  %i.sp = load <2 x float>, ptr %i.so, align 4, !tbaa !93
  %i.sq = load <2 x float>, ptr %i.sl, align 4, !tbaa !93
  %i.sr = fsub <2 x float> %i.sp, %i.sq           ; 2 uses
  %i.ss = fmul <2 x float> %i.sr, %i.sr           ; 2 uses
  %shift1159 = shufflevector <2 x float> %i.ss, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1160 = fadd <2 x float> %i.ss, %shift1159
  %i.st = extractelement <2 x float> %foldExtExtBinop1160, i64 0
  %i.su = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  %i.sv = load float, ptr %i.su, align 4, !tbaa !93
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !93
  %i.sy = fsub float %i.sv, %i.sx                 ; 2 uses
  %i.sz = fmul float %i.sy, %i.sy
  %i.ta = fadd float %i.st, %i.sz
  %i.tb = fpext float %i.ta to double
  %i.tc = fadd double %.024.i, %i.tb
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %indvars.iv.next.i
  %i.te = load i32, ptr %i.td, align 4, !tbaa !47
  %i.tf = sext i32 %i.te to i64
  %i.tg = getelementptr inbounds [12 x i8], ptr %i.qy, i64 %i.tf ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.th = load i32, ptr %gep.i.1, align 4, !tbaa !47
  %i.ti = sext i32 %i.th to i64
  %i.tj = getelementptr inbounds [12 x i8], ptr %i.qy, i64 %i.ti ; 2 uses
  %i.tk = load <2 x float>, ptr %i.tj, align 4, !tbaa !93
  %i.tl = load <2 x float>, ptr %i.tg, align 4, !tbaa !93
  %i.tm = fsub <2 x float> %i.tk, %i.tl           ; 2 uses
  %i.tn = fmul <2 x float> %i.tm, %i.tm           ; 2 uses
  %shift1159.1 = shufflevector <2 x float> %i.tn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1160.1 = fadd <2 x float> %i.tn, %shift1159.1
  %i.to = extractelement <2 x float> %foldExtExtBinop1160.1, i64 0
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !93
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.ts = load float, ptr %i.tr, align 4, !tbaa !93
  %i.tt = fsub float %i.tq, %i.ts                 ; 2 uses
  %i.tu = fmul float %i.tt, %i.tt
  %i.tv = fadd float %i.to, %i.tu
  %i.tw = fpext float %i.tv to double
  %i.tx = fadd double %i.tc, %i.tw                ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !34

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.024.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.tx, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod1188 = trunc i32 %indvars.iv29.i to i1
  call void @llvm.assume(i1 %lcmp.mod1188)
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %indvars.iv.i.epil.init
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !47
  %i.ua = sext i32 %i.tz to i64
  %i.ub = getelementptr inbounds [12 x i8], ptr %i.qy, i64 %i.ua ; 2 uses
  %gep.i.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil.init
  %i.uc = load i32, ptr %gep.i.epil, align 4, !tbaa !47
  %i.ud = sext i32 %i.uc to i64
  %i.ue = getelementptr inbounds [12 x i8], ptr %i.qy, i64 %i.ud ; 2 uses
  %i.uf = load <2 x float>, ptr %i.ue, align 4, !tbaa !93
  %i.ug = load <2 x float>, ptr %i.ub, align 4, !tbaa !93
  %i.uh = fsub <2 x float> %i.uf, %i.ug           ; 2 uses
  %i.ui = fmul <2 x float> %i.uh, %i.uh           ; 2 uses
  %shift1159.epil = shufflevector <2 x float> %i.ui, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1160.epil = fadd <2 x float> %i.ui, %shift1159.epil
  %i.uj = extractelement <2 x float> %foldExtExtBinop1160.epil, i64 0
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ue, i64 8
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !93
  %i.um = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %i.un = load float, ptr %i.um, align 4, !tbaa !93
  %i.uo = fsub float %i.ul, %i.un                 ; 2 uses
  %i.up = fmul float %i.uo, %i.uo
  %i.uq = fadd float %i.uj, %i.up
  %i.ur = fpext float %i.uq to double
  %i.us = fadd double %.024.i.epil.init, %i.ur
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %.preheader.i
  %.0.lcssa.i = phi double [ 0.000000e+00, %.preheader.i ], [ %i.tx, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.us, %.lr.ph.i.epil.preheader ]
  %i.ut = uitofp nneg i32 %i.se to double
  %i.uu = fdiv double %.0.lcssa.i, %i.ut
  %i.uv = getelementptr [8 x i8], ptr %.0635, i64 %indvars.iv31.i
  %i.uw = getelementptr i8, ptr %i.uv, i64 -8     ; 2 uses
  %i.ux = load double, ptr %i.uw, align 8, !tbaa !91
  %i.uy = fadd double %i.uu, %i.ux
  store double %i.uy, ptr %i.uw, align 8, !tbaa !91
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next32.i, %i.sa
  %indvar.next1186 = add i32 %indvar1185, 1
  br i1 %exitcond35.not.i, label %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit, label %.preheader.i, !llvm.loop !35

_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit: ; preds = %._crit_edge.i, %bb.cg, %.lr.ph703
  %i.uz = load ptr, ptr %i.ot, align 8, !tbaa !87
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uz, i8 0, i64 24, i1 false)
  %i.va = load ptr, ptr %i.pa, align 8, !tbaa !87
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.va, i8 0, i64 24, i1 false)
  %i.vb = load ptr, ptr %i.pg, align 8, !tbaa !87
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vb, i8 0, i64 24, i1 false)
  %i.vc = icmp slt i32 %i.qv, %i.qx
  br i1 %i.vc, label %.lr.ph689, label %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit.._crit_edge690_crit_edge

_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit.._crit_edge690_crit_edge: ; preds = %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit
  %.pre880 = load ptr, ptr %i.ot, align 8, !tbaa !87
  %.pre881 = load ptr, ptr %i.pa, align 8, !tbaa !87
  %.pre882 = load ptr, ptr %i.pg, align 8, !tbaa !87
  br label %._crit_edge690

.lr.ph689:                                        ; preds = %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit
  %i.vd = load i8, ptr @_ZZ12gmx_polystatiPPcE3bMW, align 1, !tbaa !83, !range !84, !noundef !85
  %i.ve = trunc nuw i8 %i.vd to i1
  %wide.trip.count778 = sext i32 %i.qx to i64
  %i.vf = load ptr, ptr %i.ot, align 8, !tbaa !87 ; 4 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 8 ; 2 uses
  %i.vh = load ptr, ptr %i.pa, align 8, !tbaa !87 ; 4 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 8 ; 2 uses
  %i.vj = load ptr, ptr %i.pg, align 8, !tbaa !87 ; 4 uses
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 8 ; 2 uses
  br label %bb.ch

bb.ch:                                            ; preds = %.lr.ph689, %bb.cj
  %.sroa.0847.0 = phi double [ 0.000000e+00, %.lr.ph689 ], [ %i.vw, %bb.cj ]
  %indvars.iv775 = phi i64 [ %i.ra, %.lr.ph689 ], [ %indvars.iv.next776, %bb.cj ] ; 2 uses
  %.0269688 = phi double [ 0.000000e+00, %.lr.ph689 ], [ %i.xa, %bb.cj ]
  %i.vl = phi <2 x double> [ zeroinitializer, %.lr.ph689 ], [ %i.ws, %bb.cj ]
end_hunk_0
begin_hunk_1_@_Z12gmx_polystatiPPc:._crit_edge.i.i
  %i.xn = load double, ptr %i.xd, align 8, !tbaa !91
  %i.xo = fdiv double %i.xn, %.0269.lcssa
  %i.xp = call double @llvm.fmuladd.f64(double %i.xl, double %i.xg, double %i.xo) ; 2 uses
  store double %i.xp, ptr %i.xd, align 8, !tbaa !91
  %i.xq = load double, ptr %i.xm, align 8, !tbaa !91
  %i.xr = fadd double %i.xp, %i.xq
  store double %i.xr, ptr %i.xm, align 8, !tbaa !91
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xd, i64 8 ; 2 uses
  %i.xt = load double, ptr %i.xs, align 8, !tbaa !91
  %i.xu = fdiv double %i.xt, %.0269.lcssa
  %i.xv = call double @llvm.fmuladd.f64(double %i.xl, double %i.xi, double %i.xu) ; 2 uses
  store double %i.xv, ptr %i.xs, align 8, !tbaa !91
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xm, i64 8 ; 2 uses
  %i.xx = load double, ptr %i.xw, align 8, !tbaa !91
  %i.xy = fadd double %i.xv, %i.xx
  store double %i.xy, ptr %i.xw, align 8, !tbaa !91
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xd, i64 16 ; 2 uses
  %i.ya = load double, ptr %i.xz, align 8, !tbaa !91
  %i.yb = fdiv double %i.ya, %.0269.lcssa
  %i.yc = call double @llvm.fmuladd.f64(double %i.xl, double %i.xk, double %i.yb) ; 2 uses
  store double %i.yc, ptr %i.xz, align 8, !tbaa !91
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xm, i64 16 ; 2 uses
  %i.ye = load double, ptr %i.yd, align 8, !tbaa !91
  %i.yf = fadd double %i.yc, %i.ye
  store double %i.yf, ptr %i.yd, align 8, !tbaa !91
  %i.yg = fneg double %i.xi                       ; 3 uses
  %i.yh = load ptr, ptr %i.pc, align 8, !tbaa !87 ; 4 uses
  %i.yi = load double, ptr %i.xc, align 8, !tbaa !91
  %i.yj = fdiv double %i.yi, %.0269.lcssa
  %i.yk = call double @llvm.fmuladd.f64(double %i.yg, double %i.xg, double %i.yj) ; 2 uses
  store double %i.yk, ptr %i.xc, align 8, !tbaa !91
  %i.yl = load double, ptr %i.yh, align 8, !tbaa !91
  %i.ym = fadd double %i.yk, %i.yl
  store double %i.ym, ptr %i.yh, align 8, !tbaa !91
  %i.yn = getelementptr inbounds nuw i8, ptr %i.xc, i64 8 ; 2 uses
  %i.yo = load double, ptr %i.yn, align 8, !tbaa !91
  %i.yp = fdiv double %i.yo, %.0269.lcssa
  %i.yq = call double @llvm.fmuladd.f64(double %i.yg, double %i.xi, double %i.yp) ; 2 uses
  store double %i.yq, ptr %i.yn, align 8, !tbaa !91
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yh, i64 8 ; 2 uses
  %i.ys = load double, ptr %i.yr, align 8, !tbaa !91
  %i.yt = fadd double %i.yq, %i.ys
  store double %i.yt, ptr %i.yr, align 8, !tbaa !91
  %i.yu = getelementptr inbounds nuw i8, ptr %i.xc, i64 16 ; 2 uses
  %i.yv = load double, ptr %i.yu, align 8, !tbaa !91
  %i.yw = fdiv double %i.yv, %.0269.lcssa
  %i.yx = call double @llvm.fmuladd.f64(double %i.yg, double %i.xk, double %i.yw) ; 2 uses
  store double %i.yx, ptr %i.yu, align 8, !tbaa !91
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yh, i64 16 ; 2 uses
  %i.yz = load double, ptr %i.yy, align 8, !tbaa !91
  %i.za = fadd double %i.yx, %i.yz
  store double %i.za, ptr %i.yy, align 8, !tbaa !91
  %i.zb = fneg double %i.xk                       ; 3 uses
  %i.zc = load ptr, ptr %i.pi, align 8, !tbaa !87 ; 4 uses
  %i.zd = load double, ptr %i.xb, align 8, !tbaa !91
  %i.ze = fdiv double %i.zd, %.0269.lcssa
  %i.zf = call double @llvm.fmuladd.f64(double %i.zb, double %i.xg, double %i.ze) ; 2 uses
  store double %i.zf, ptr %i.xb, align 8, !tbaa !91
  %i.zg = load double, ptr %i.zc, align 8, !tbaa !91
  %i.zh = fadd double %i.zf, %i.zg
  store double %i.zh, ptr %i.zc, align 8, !tbaa !91
  %i.zi = getelementptr inbounds nuw i8, ptr %i.xb, i64 8 ; 2 uses
  %i.zj = load double, ptr %i.zi, align 8, !tbaa !91
  %i.zk = fdiv double %i.zj, %.0269.lcssa
  %i.zl = call double @llvm.fmuladd.f64(double %i.zb, double %i.xi, double %i.zk) ; 2 uses
  store double %i.zl, ptr %i.zi, align 8, !tbaa !91
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zc, i64 8 ; 2 uses
  %i.zn = load double, ptr %i.zm, align 8, !tbaa !91
  %i.zo = fadd double %i.zl, %i.zn
  store double %i.zo, ptr %i.zm, align 8, !tbaa !91
  %i.zp = getelementptr inbounds nuw i8, ptr %i.xb, i64 16 ; 2 uses
  %i.zq = load double, ptr %i.zp, align 8, !tbaa !91
  %i.zr = fdiv double %i.zq, %.0269.lcssa
  %i.zs = call double @llvm.fmuladd.f64(double %i.zb, double %i.xk, double %i.zr) ; 2 uses
  store double %i.zs, ptr %i.zp, align 8, !tbaa !91
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zc, i64 16 ; 2 uses
  %i.zu = load double, ptr %i.zt, align 8, !tbaa !91
  %i.zv = fadd double %i.zs, %i.zu
  store double %i.zv, ptr %i.zt, align 8, !tbaa !91
  %i.zw = load i8, ptr @_ZZ12gmx_polystatiPPcE3bPC, align 1, !tbaa !83, !range !84, !noundef !85
  %i.zx = trunc nuw i8 %i.zw to i1
  br i1 %i.zx, label %bb.ck, label %.loopexit645

bb.ck:                                            ; preds = %._crit_edge690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  invoke void @_Z6jacobiPPdiS_S0_Pi(ptr noundef nonnull %i.ot, i32 noundef 3, ptr noundef nonnull %i.o, ptr noundef nonnull %i.ov, ptr noundef nonnull %i.b)
          to label %.noexc515 unwind label %.loopexit650

.noexc515:                                        ; preds = %bb.ck
  %i.zy = load double, ptr %i.o, align 16, !tbaa !91 ; 2 uses
  %i.zz = load double, ptr %i.pt, align 16, !tbaa !91 ; 3 uses
  %i.aaa = fcmp olt double %i.zy, %i.zz           ; 2 uses
  %spec.store.select.i = select i1 %i.aaa, i32 0, i32 2 ; 2 uses
  %i.aab = load double, ptr %.027.1.i.sroa.gep, align 8, !tbaa !91 ; 2 uses
  %i.aac = fcmp ogt double %i.aab, %i.zy          ; 4 uses
  %spec.select1093 = zext i1 %i.aac to i64        ; 4 uses
  %i.aad = zext nneg i32 %spec.store.select.i to i64
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aad
  %i.aaf = load double, ptr %i.aae, align 16, !tbaa !91
  %i.aag = fcmp uge double %i.aab, %i.aaf         ; 2 uses
  %.sroa.28.0 = select i1 %i.aag, i32 %spec.store.select.i, i32 1 ; 3 uses
  %.027.1.i.sroa.gep.val = load double, ptr %.027.1.i.sroa.gep, align 8
  %.val = load double, ptr %i.o, align 16
  %i.aah = select i1 %i.aac, double %.027.1.i.sroa.gep.val, double %.val
  %i.aai = fcmp ule double %i.zz, %i.aah          ; 2 uses
  %i.aaj = zext nneg i32 %.sroa.28.0 to i64
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aaj
  %i.aal = load double, ptr %i.aak, align 8, !tbaa !91
  %i.aam = fcmp olt double %i.zz, %i.aal          ; 2 uses
  br i1 %i.aai, label %bb.cl, label %.thread41.i

bb.cl:                                            ; preds = %.noexc515
  br i1 %i.aam, label %.preheader.thread.i, label %.preheader.i514

.thread41.i:                                      ; preds = %.noexc515
  br i1 %i.aam, label %.thread.i, label %.preheader.thread42.i

.preheader.i514:                                  ; preds = %bb.cl
  br i1 %i.aac, label %.preheader.thread42.i, label %.thread37.i

.preheader.thread.i:                              ; preds = %bb.cl
  br i1 %i.aac, label %.thread.i, label %.thread37.thread.i

.preheader.thread42.i:                            ; preds = %.thread41.i, %.preheader.i514
  %.sroa.0863.1 = phi i64 [ 2, %.thread41.i ], [ %spec.select1093, %.preheader.i514 ]
  %.not26.i = and i1 %i.aag, %i.aaa               ; 2 uses
  %spec.select1099 = select i1 %.not26.i, i32 %i.qt, i32 0
  %spec.select1100 = select i1 %.not26.i, i32 0, i32 %.sroa.28.0
  br label %.thread.i

.thread.i:                                        ; preds = %.preheader.thread42.i, %.preheader.thread.i, %.thread41.i
  %i.aan = phi i32 [ %spec.select1099, %.preheader.thread42.i ], [ 0, %.thread41.i ], [ 0, %.preheader.thread.i ] ; 2 uses
  %.sroa.0863.3 = phi i64 [ %.sroa.0863.1, %.preheader.thread42.i ], [ 2, %.thread41.i ], [ %spec.select1093, %.preheader.thread.i ] ; 2 uses
  %.sroa.28.2 = phi i32 [ %spec.select1100, %.preheader.thread42.i ], [ 2, %.thread41.i ], [ 2, %.preheader.thread.i ] ; 2 uses
  %.not.1.i = phi i1 [ %i.aai, %.preheader.thread42.i ], [ false, %.thread41.i ], [ true, %.preheader.thread.i ]
  br i1 %.not.1.i, label %.thread39.i, label %.thread37.i

.thread37.i:                                      ; preds = %.thread.i, %.preheader.i514
  %i.aao = phi i32 [ %i.aan, %.thread.i ], [ %i.qt, %.preheader.i514 ]
  %.sroa.0863.4 = phi i64 [ %.sroa.0863.3, %.thread.i ], [ %spec.select1093, %.preheader.i514 ]
  %.sroa.28.3 = phi i32 [ %.sroa.28.2, %.thread.i ], [ %.sroa.28.0, %.preheader.i514 ] ; 2 uses
  %i.aap = phi i1 [ true, %.thread.i ], [ false, %.preheader.i514 ]
  %.not26.1.i = icmp eq i32 %.sroa.28.3, 1
  %spec.select1101 = select i1 %.not26.1.i, i32 %i.aao, i32 1
  br label %.thread37.thread.i

.thread37.thread.i:                               ; preds = %.thread37.i, %.preheader.thread.i
  %i.aaq = phi i32 [ %spec.select1101, %.thread37.i ], [ 1, %.preheader.thread.i ] ; 2 uses
  %.sroa.0863.6 = phi i64 [ %.sroa.0863.4, %.thread37.i ], [ %spec.select1093, %.preheader.thread.i ] ; 2 uses
  %.not.2.i = phi i1 [ %i.aap, %.thread37.i ], [ false, %.preheader.thread.i ]
  %i.aar = phi i32 [ %.sroa.28.3, %.thread37.i ], [ 2, %.preheader.thread.i ] ; 2 uses
  br i1 %.not.2.i, label %_ZL10gyro_eigenPPdS_S0_Pi.exit, label %.thread39.i

.thread39.i:                                      ; preds = %.thread37.thread.i, %.thread.i
  %i.aas = phi i32 [ %i.aan, %.thread.i ], [ %i.aaq, %.thread37.thread.i ]
  %.sroa.0863.7 = phi i64 [ %.sroa.0863.3, %.thread.i ], [ %.sroa.0863.6, %.thread37.thread.i ]
  %i.aat = phi i32 [ %.sroa.28.2, %.thread.i ], [ %i.aar, %.thread37.thread.i ] ; 2 uses
  %.not26.2.i = icmp eq i32 %i.aat, 2
  %spec.select1095 = select i1 %.not26.2.i, i32 %i.aas, i32 2
  br label %_ZL10gyro_eigenPPdS_S0_Pi.exit

_ZL10gyro_eigenPPdS_S0_Pi.exit:                   ; preds = %.thread39.i, %.thread37.thread.i
  %i.aau = phi i32 [ %spec.select1095, %.thread39.i ], [ %i.aaq, %.thread37.thread.i ] ; 2 uses
  %.sroa.0863.8 = phi i64 [ %.sroa.0863.7, %.thread39.i ], [ %.sroa.0863.6, %.thread37.thread.i ]
  %.sroa.28.7 = phi i32 [ %i.aat, %.thread39.i ], [ %i.aar, %.thread37.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.aav = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0863.8
  %i.aaw = load double, ptr %i.aav, align 8, !tbaa !91
  %i.aax = fadd double %i.aaw, %.sroa.0.2
  %i.aay = sext i32 %i.aau to i64
  %i.aaz = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.aay
  %i.aba = load double, ptr %i.aaz, align 8, !tbaa !91
  %i.abb = fadd double %i.aba, %.sroa.8.2
  %i.abc = zext nneg i32 %.sroa.28.7 to i64
  %i.abd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.abc
  %i.abe = load double, ptr %i.abd, align 8, !tbaa !91
  %i.abf = fadd double %i.abe, %.sroa.11.2
  br label %.loopexit645

.loopexit645:                                     ; preds = %_ZL10gyro_eigenPPdS_S0_Pi.exit, %._crit_edge690
  %i.abg = phi i32 [ %i.aau, %_ZL10gyro_eigenPPdS_S0_Pi.exit ], [ %i.qt, %._crit_edge690 ] ; 2 uses
  %.sroa.0.3 = phi double [ %i.aax, %_ZL10gyro_eigenPPdS_S0_Pi.exit ], [ %.sroa.0.2, %._crit_edge690 ] ; 2 uses
  %.sroa.8.3 = phi double [ %i.abb, %_ZL10gyro_eigenPPdS_S0_Pi.exit ], [ %.sroa.8.2, %._crit_edge690 ] ; 2 uses
  %.sroa.11.3 = phi double [ %i.abf, %_ZL10gyro_eigenPPdS_S0_Pi.exit ], [ %.sroa.11.2, %._crit_edge690 ] ; 2 uses
  %.not1071 = icmp sge i32 %i.qv, %i.rf
  %or.cond1096.not = or i1 %.not1071, %.not
  br i1 %or.cond1096.not, label %.loopexit, label %.lr.ph696

.lr.ph696:                                        ; preds = %.loopexit645
  %i.abh = load ptr, ptr %i.l, align 8, !tbaa !89 ; 2 uses
  %i.abi = load ptr, ptr %i.h, align 8, !tbaa !92 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %i.abi, i64 %i.ra
  %.pre883 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !47
  br label %bb.cm

.preheader643:                                    ; preds = %bb.cm
  br i1 %i.pr, label %.loopexit, label %.preheader639.preheader

.preheader639.preheader:                          ; preds = %.preheader643
  %i.abj = xor i64 %i.ra, -1
  %21 = add nsw i64 %i.ra, 2
  br label %.preheader639

bb.cm:                                            ; preds = %.lr.ph696, %bb.cm
  %i.abk = phi i32 [ %.pre883, %.lr.ph696 ], [ %i.abm, %bb.cm ]
  %indvars.iv792 = phi i64 [ %i.ra, %.lr.ph696 ], [ %indvars.iv.next793, %bb.cm ] ; 2 uses
  %indvars.iv.next793 = add nsw i64 %indvars.iv792, 1 ; 3 uses
  %i.abl = getelementptr inbounds [4 x i8], ptr %i.abi, i64 %indvars.iv.next793
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !47 ; 2 uses
  %i.abn = sext i32 %i.abm to i64
  %i.abo = getelementptr inbounds [12 x i8], ptr %i.abh, i64 %i.abn ; 2 uses
  %i.abp = sext i32 %i.abk to i64
  %i.abq = getelementptr inbounds [12 x i8], ptr %i.abh, i64 %i.abp ; 2 uses
  %i.abr = sub nsw i64 %indvars.iv792, %i.ra
  %i.abs = getelementptr inbounds [12 x i8], ptr %.0632, i64 %i.abr ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abo, i64 8
  %i.abu = load float, ptr %i.abt, align 4, !tbaa !93
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abq, i64 8
  %i.abw = load float, ptr %i.abv, align 4, !tbaa !93
  %i.abx = fsub float %i.abu, %i.abw              ; 3 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abs, i64 8
  %i.abz = load <2 x float>, ptr %i.abo, align 4, !tbaa !93
  %i.aca = load <2 x float>, ptr %i.abq, align 4, !tbaa !93
  %i.acb = fsub <2 x float> %i.abz, %i.aca        ; 4 uses
  %foldExtExtBinop1162 = fmul <2 x float> %i.acb, %i.acb
  %i.acc = extractelement <2 x float> %foldExtExtBinop1162, i64 1
  %i.acd = extractelement <2 x float> %i.acb, i64 0 ; 2 uses
  %i.ace = call float @llvm.fmuladd.f32(float %i.acd, float %i.acd, float %i.acc)
  %i.acf = call noundef float @llvm.fmuladd.f32(float %i.abx, float %i.abx, float %i.ace)
  %sqrt.i = call float @llvm.sqrt.f32(float %i.acf)
  %i.acg = fdiv float 1.000000e+00, %sqrt.i       ; 2 uses
  %i.ach = insertelement <2 x float> poison, float %i.acg, i64 0
  %i.aci = shufflevector <2 x float> %i.ach, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acj = fmul <2 x float> %i.acb, %i.aci
  store <2 x float> %i.acj, ptr %i.abs, align 4, !tbaa !93
  %i.ack = fmul float %i.abx, %i.acg
  store float %i.ack, ptr %i.aby, align 4, !tbaa !93
  %exitcond796.not = icmp eq i64 %indvars.iv.next793, %i.rg
  br i1 %exitcond796.not, label %.preheader643, label %bb.cm

.preheader639:                                    ; preds = %.preheader639.preheader, %..critedge_crit_edge
  %indvar = phi i64 [ 0, %.preheader639.preheader ], [ %indvar.next, %..critedge_crit_edge ] ; 3 uses
  %indvars.iv800 = phi i64 [ %i.ra, %.preheader639.preheader ], [ %indvars.iv.next801, %..critedge_crit_edge ] ; 3 uses
  %22 = sub i64 %i.abj, %indvar
  %23 = add i64 %21, %indvar
  %i.acl = sub nsw i64 %indvars.iv800, %i.ra      ; 2 uses
  %i.acm = getelementptr inbounds [12 x i8], ptr %.0632, i64 %i.acl ; 3 uses
  %i.acn = load float, ptr %i.acm, align 4, !tbaa !93 ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acm, i64 4
  %i.acp = load float, ptr %i.aco, align 4, !tbaa !93 ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acm, i64 8
  %i.acr = load float, ptr %i.acq, align 4, !tbaa !93 ; 2 uses
  %invariant.gep = getelementptr [12 x i8], ptr %.0632, i64 %i.acl ; 2 uses
  %i.acs = call i64 @llvm.smax.i64(i64 %23, i64 %i.rg)
  %i.act = add i64 %i.acs, %22
  %i.acu = lshr i64 %i.act, 1
  %i.acv = call i64 @llvm.umin.i64(i64 %i.qj, i64 %i.acu) ; 2 uses
  %min.iters.check1136 = icmp samesign ult i64 %i.acv, 4
  br i1 %min.iters.check1136, label %scalar.ph1135.preheader, label %vector.ph1137

vector.ph1137:                                    ; preds = %.preheader639
  %i.acw = add nuw i64 %i.acv, 1                  ; 2 uses
  %i.acx = and i64 %i.acw, 3                      ; 2 uses
  %i.acy = icmp eq i64 %i.acx, 0
  %i.acz = select i1 %i.acy, i64 4, i64 %i.acx
  %n.vec1138 = sub i64 %i.acw, %i.acz             ; 2 uses
  %i.ada = shl i64 %n.vec1138, 1
  %broadcast.splatinsert1139 = insertelement <4 x float> poison, float %i.acn, i64 0
  %broadcast.splat1140 = shufflevector <4 x float> %broadcast.splatinsert1139, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1141 = insertelement <4 x float> poison, float %i.acp, i64 0
  %broadcast.splat1142 = shufflevector <4 x float> %broadcast.splatinsert1141, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1143 = insertelement <4 x float> poison, float %i.acr, i64 0
  %broadcast.splat1144 = shufflevector <4 x float> %broadcast.splatinsert1143, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1145

vector.body1145:                                  ; preds = %vector.body1145, %vector.ph1137
  %index1146 = phi i64 [ 0, %vector.ph1137 ], [ %index.next1154, %vector.body1145 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 2, i64 4, i64 6>, %vector.ph1137 ], [ %vec.ind.next, %vector.body1145 ] ; 3 uses
  %.idx = mul i64 %index1146, 24
  %i.adb = getelementptr i8, ptr %invariant.gep, i64 %.idx
  %wide.vec = load <24 x float>, ptr %i.adb, align 4, !tbaa !93 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <4 x i32> <i32 0, i32 6, i32 12, i32 18>
  %strided.vec1147 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <4 x i32> <i32 1, i32 7, i32 13, i32 19>
  %strided.vec1148 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <4 x i32> <i32 2, i32 8, i32 14, i32 20>
  %i.adc = fmul <4 x float> %broadcast.splat1142, %strided.vec1147
  %i.add = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1140, <4 x float> %strided.vec, <4 x float> %i.adc)
  %i.ade = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1144, <4 x float> %strided.vec1148, <4 x float> %i.add)
  %i.adf = fpext <4 x float> %i.ade to <4 x double>
  %wide.gep = getelementptr inbounds nuw [8 x i8], ptr %.0634, <4 x i64> %vec.ind ; 2 uses
  %i.adg = extractelement <4 x ptr> %wide.gep, i64 0
  %wide.vec1149 = load <8 x double>, ptr %i.adg, align 8, !tbaa !91
  %strided.vec1150 = shufflevector <8 x double> %wide.vec1149, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.adh = fadd <4 x double> %strided.vec1150, %i.adf
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.adh, <4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !91
  %wide.gep1151 = getelementptr inbounds nuw [4 x i8], ptr %.0633, <4 x i64> %vec.ind ; 2 uses
  %i.adi = extractelement <4 x ptr> %wide.gep1151, i64 0
  %wide.vec1152 = load <8 x i32>, ptr %i.adi, align 4, !tbaa !47
  %strided.vec1153 = shufflevector <8 x i32> %wide.vec1152, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.adj = add nsw <4 x i32> %strided.vec1153, splat (i32 1)
  call void @llvm.masked.scatter.v4i32.v4p0(<4 x i32> %i.adj, <4 x ptr> align 4 %wide.gep1151, <4 x i1> splat (i1 true)), !tbaa !47
  %index.next1154 = add nuw i64 %index1146, 4     ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 8)
  %i.adk = icmp eq i64 %index.next1154, %n.vec1138
  br i1 %i.adk, label %scalar.ph1135.preheader, label %vector.body1145, !llvm.loop !37

scalar.ph1135.preheader:                          ; preds = %vector.body1145, %.preheader639
  %indvars.iv797.ph = phi i64 [ 0, %.preheader639 ], [ %i.ada, %vector.body1145 ]
  br label %scalar.ph1135

scalar.ph1135:                                    ; preds = %scalar.ph1135.preheader, %scalar.ph1135
  %indvars.iv797 = phi i64 [ %indvars.iv.next798, %scalar.ph1135 ], [ %indvars.iv797.ph, %scalar.ph1135.preheader ] ; 4 uses
  %gep = getelementptr [12 x i8], ptr %invariant.gep, i64 %indvars.iv797 ; 3 uses
  %i.adl = load float, ptr %gep, align 4, !tbaa !93
  %i.adm = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.adn = load float, ptr %i.adm, align 4, !tbaa !93
  %i.ado = fmul float %i.acp, %i.adn
  %i.adp = call float @llvm.fmuladd.f32(float %i.acn, float %i.adl, float %i.ado)
  %i.adq = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.adr = load float, ptr %i.adq, align 4, !tbaa !93
  %i.ads = call noundef float @llvm.fmuladd.f32(float %i.acr, float %i.adr, float %i.adp)
  %i.adt = fpext float %i.ads to double
  %i.adu = getelementptr inbounds nuw [8 x i8], ptr %.0634, i64 %indvars.iv797 ; 2 uses
  %i.adv = load double, ptr %i.adu, align 8, !tbaa !91
  %i.adw = fadd double %i.adv, %i.adt
  store double %i.adw, ptr %i.adu, align 8, !tbaa !91
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %.0633, i64 %indvars.iv797 ; 2 uses
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !47
  %i.adz = add nsw i32 %i.ady, 1
  store i32 %i.adz, ptr %i.adx, align 4, !tbaa !47
  %indvars.iv.next798 = add nuw nsw i64 %indvars.iv797, 2 ; 3 uses
  %i.aea = add nsw i64 %indvars.iv.next798, %indvars.iv800
  %i.aeb = icmp slt i64 %i.aea, %i.rg
  %i.aec = icmp slt i64 %indvars.iv.next798, %i.qc
  %or.cond = and i1 %i.aeb, %i.aec
  br i1 %or.cond, label %scalar.ph1135, label %..critedge_crit_edge, !llvm.loop !38

..critedge_crit_edge:                             ; preds = %scalar.ph1135
  %indvars.iv.next801 = add nsw i64 %indvars.iv800, 1 ; 2 uses
  %exitcond804.not = icmp eq i64 %indvars.iv.next801, %i.rg
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond804.not, label %.loopexit, label %.preheader639, !llvm.loop !39

.loopexit:                                        ; preds = %..critedge_crit_edge, %.preheader643, %.loopexit645
  %exitcond809.not = icmp eq i64 %indvars.iv.next806, %wide.trip.count808
  br i1 %exitcond809.not, label %._crit_edge704, label %.lr.ph703, !llvm.loop !40

._crit_edge704:                                   ; preds = %.loopexit, %.loopexit652
  %.sroa.13.1 = phi i32 [ %.sroa.13.0, %.loopexit652 ], [ %i.abg, %.loopexit ] ; 2 uses
  %.sroa.0.4 = phi double [ %.sroa.0.1, %.loopexit652 ], [ %.sroa.0.3, %.loopexit ] ; 2 uses
  %.sroa.8.4 = phi double [ %.sroa.8.1, %.loopexit652 ], [ %.sroa.8.3, %.loopexit ] ; 2 uses
  %.sroa.11.4 = phi double [ %.sroa.11.1, %.loopexit652 ], [ %.sroa.11.3, %.loopexit ] ; 2 uses
  %.0280.lcssa = phi double [ 0.000000e+00, %.loopexit652 ], [ %i.ry, %.loopexit ]
  %i.aed = load ptr, ptr %i.ou, align 8, !tbaa !87 ; 3 uses
  %i.aee = load <2 x double>, ptr %i.aed, align 8, !tbaa !91
  %i.aef = fdiv <2 x double> %i.aee, %i.qe        ; 2 uses
  store <2 x double> %i.aef, ptr %i.aed, align 8, !tbaa !91
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aed, i64 16 ; 2 uses
  %i.aeh = load double, ptr %i.aeg, align 8, !tbaa !91
  %i.aei = fdiv double %i.aeh, %i.pu
  store double %i.aei, ptr %i.aeg, align 8, !tbaa !91
  %i.aej = extractelement <2 x double> %i.aef, i64 0
  %i.aek = fadd double %i.aej, 0.000000e+00
  %i.ael = load ptr, ptr %i.pc, align 8, !tbaa !87 ; 3 uses
  %i.aem = load <2 x double>, ptr %i.ael, align 8, !tbaa !91
  %i.aen = fdiv <2 x double> %i.aem, %i.qe        ; 2 uses
  store <2 x double> %i.aen, ptr %i.ael, align 8, !tbaa !91
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.ael, i64 16 ; 2 uses
  %i.aep = load double, ptr %i.aeo, align 8, !tbaa !91
  %i.aeq = fdiv double %i.aep, %i.pu
  store double %i.aeq, ptr %i.aeo, align 8, !tbaa !91
  %i.aer = extractelement <2 x double> %i.aen, i64 1
  %i.aes = fadd double %i.aek, %i.aer
  %i.aet = load ptr, ptr %i.pi, align 8, !tbaa !87 ; 3 uses
  %i.aeu = load <2 x double>, ptr %i.aet, align 8, !tbaa !91
  %i.aev = fdiv <2 x double> %i.aeu, %i.qe
  store <2 x double> %i.aev, ptr %i.aet, align 8, !tbaa !91
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aet, i64 16 ; 2 uses
  %i.aex = load double, ptr %i.aew, align 8, !tbaa !91
  %i.aey = fdiv double %i.aex, %i.pu              ; 2 uses
  store double %i.aey, ptr %i.aew, align 8, !tbaa !91
  %i.aez = fadd double %i.aes, %i.aey             ; 2 uses
  %i.afa = fdiv double %.0280.lcssa, %i.pu        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  invoke void @_Z6jacobiPPdiS_S0_Pi(ptr noundef nonnull %i.ou, i32 noundef 3, ptr noundef nonnull %i.o, ptr noundef nonnull %i.ov, ptr noundef nonnull %i.a)
          to label %.noexc533 unwind label %.loopexit.split-lp.loopexit

.noexc533:                                        ; preds = %._crit_edge704
  %i.afb = load double, ptr %i.o, align 16, !tbaa !91 ; 2 uses
  %i.afc = load double, ptr %i.pt, align 16, !tbaa !91 ; 3 uses
  %i.afd = fcmp olt double %i.afb, %i.afc         ; 2 uses
  %spec.store.select.i516 = select i1 %i.afd, i32 0, i32 2 ; 2 uses
  %i.afe = load double, ptr %.027.1.i.sroa.gep, align 8, !tbaa !91 ; 2 uses
  %i.aff = fcmp ogt double %i.afe, %i.afb         ; 4 uses
  %spec.select1097 = zext i1 %i.aff to i64        ; 4 uses
  %i.afg = zext nneg i32 %spec.store.select.i516 to i64
  %i.afh = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.afg
  %i.afi = load double, ptr %i.afh, align 16, !tbaa !91
  %i.afj = fcmp uge double %i.afe, %i.afi         ; 2 uses
  %.sroa.28.8 = select i1 %i.afj, i32 %spec.store.select.i516, i32 1 ; 3 uses
  %.027.1.i.sroa.gep.val1103 = load double, ptr %.027.1.i.sroa.gep, align 8
  %.val1104 = load double, ptr %i.o, align 16
  %i.afk = select i1 %i.aff, double %.027.1.i.sroa.gep.val1103, double %.val1104
  %i.afl = fcmp ogt double %i.afc, %i.afk
  %i.afm = zext nneg i32 %.sroa.28.8 to i64
  %i.afn = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.afm
  %i.afo = load double, ptr %i.afn, align 8, !tbaa !91
  %i.afp = fcmp olt double %i.afc, %i.afo         ; 2 uses
  br i1 %i.afl, label %.thread41.i530, label %bb.cn

bb.cn:                                            ; preds = %.noexc533
  br i1 %i.afp, label %.preheader.thread.i529, label %.preheader.i519

.thread41.i530:                                   ; preds = %.noexc533
  br i1 %i.afp, label %.thread.i521, label %.preheader.thread42.i531

.preheader.i519:                                  ; preds = %bb.cn
  br i1 %i.aff, label %.preheader.thread42.i531, label %.thread37.i523

.preheader.thread.i529:                           ; preds = %bb.cn
  br i1 %i.aff, label %.thread.i521, label %.thread37.thread.i525

.preheader.thread42.i531:                         ; preds = %.thread41.i530, %.preheader.i519
  %.sroa.0863.10 = phi i64 [ 2, %.thread41.i530 ], [ %spec.select1097, %.preheader.i519 ]
  %i.afq = phi i32 [ 2, %.thread41.i530 ], [ 1, %.preheader.i519 ]
  %.not26.i520 = and i1 %i.afj, %i.afd            ; 2 uses
  %spec.select1229.a = select i1 %.not26.i520, i32 %.sroa.13.1, i32 0
  %spec.select1230.a = select i1 %.not26.i520, i32 0, i32 %.sroa.28.8
  br label %.thread.i521

.thread.i521:                                     ; preds = %.preheader.thread42.i531, %.preheader.thread.i529, %.thread41.i530
  %.sroa.13.2 = phi i32 [ %spec.select1229.a, %.preheader.thread42.i531 ], [ 0, %.thread41.i530 ], [ 0, %.preheader.thread.i529 ] ; 2 uses
  %.sroa.0863.12 = phi i64 [ %.sroa.0863.10, %.preheader.thread42.i531 ], [ %spec.select1097, %.preheader.thread.i529 ], [ 2, %.thread41.i530 ] ; 2 uses
  %.sroa.28.10 = phi i32 [ %spec.select1230.a, %.preheader.thread42.i531 ], [ 2, %.preheader.thread.i529 ], [ 2, %.thread41.i530 ] ; 3 uses
  %i.afr = phi i32 [ %i.afq, %.preheader.thread42.i531 ], [ 1, %.preheader.thread.i529 ], [ 2, %.thread41.i530 ]
  %.not.1.i522 = icmp eq i32 %i.afr, 1
  br i1 %.not.1.i522, label %.thread39.i527, label %.thread37.i523

.thread37.i523:                                   ; preds = %.thread.i521, %.preheader.i519
  %.sroa.13.3 = phi i32 [ %.sroa.13.2, %.thread.i521 ], [ %.sroa.13.1, %.preheader.i519 ]
  %.sroa.0863.13 = phi i64 [ %.sroa.0863.12, %.thread.i521 ], [ %spec.select1097, %.preheader.i519 ]
  %.sroa.28.11 = phi i32 [ %.sroa.28.10, %.thread.i521 ], [ %.sroa.28.8, %.preheader.i519 ] ; 3 uses
  %i.afs = phi i32 [ 2, %.thread.i521 ], [ 0, %.preheader.i519 ]
  %.not26.1.i524 = icmp eq i32 %.sroa.28.11, 1    ; 2 uses
  %spec.select1231 = select i1 %.not26.1.i524, i32 %.sroa.13.3, i32 1
  %spec.select1232 = select i1 %.not26.1.i524, i32 1, i32 %.sroa.28.11
  br label %.thread37.thread.i525

.thread37.thread.i525:                            ; preds = %.thread37.i523, %.preheader.thread.i529
  %.sroa.13.4 = phi i32 [ %spec.select1231, %.thread37.i523 ], [ 1, %.preheader.thread.i529 ] ; 2 uses
  %.sroa.0863.15 = phi i64 [ %.sroa.0863.13, %.thread37.i523 ], [ %spec.select1097, %.preheader.thread.i529 ] ; 2 uses
  %.sroa.28.13 = phi i32 [ %.sroa.28.11, %.thread37.i523 ], [ 2, %.preheader.thread.i529 ] ; 2 uses
  %i.aft = phi i32 [ %i.afs, %.thread37.i523 ], [ 0, %.preheader.thread.i529 ]
  %i.afu = phi i32 [ %spec.select1232, %.thread37.i523 ], [ 2, %.preheader.thread.i529 ]
  %.not.2.i526 = icmp eq i32 %i.aft, 2
  br i1 %.not.2.i526, label %bb.co, label %.thread39.i527

.thread39.i527:                                   ; preds = %.thread37.thread.i525, %.thread.i521
  %.sroa.13.5 = phi i32 [ %.sroa.13.2, %.thread.i521 ], [ %.sroa.13.4, %.thread37.thread.i525 ]
  %.sroa.0863.16 = phi i64 [ %.sroa.0863.12, %.thread.i521 ], [ %.sroa.0863.15, %.thread37.thread.i525 ]
  %.sroa.28.14 = phi i32 [ %.sroa.28.10, %.thread.i521 ], [ %.sroa.28.13, %.thread37.thread.i525 ]
  %i.afv = phi i32 [ %.sroa.28.10, %.thread.i521 ], [ %i.afu, %.thread37.thread.i525 ]
  %.not26.2.i528 = icmp eq i32 %i.afv, 2
  %spec.select = select i1 %.not26.2.i528, i32 %.sroa.13.5, i32 2
  br label %bb.co

bb.co:                                            ; preds = %.thread39.i527, %.thread37.thread.i525
  %.sroa.13.6 = phi i32 [ %spec.select, %.thread39.i527 ], [ %.sroa.13.4, %.thread37.thread.i525 ] ; 2 uses
  %.sroa.0863.17 = phi i64 [ %.sroa.0863.16, %.thread39.i527 ], [ %.sroa.0863.15, %.thread37.thread.i525 ] ; 2 uses
  %.sroa.28.15 = phi i32 [ %.sroa.28.14, %.thread39.i527 ], [ %.sroa.28.13, %.thread37.thread.i525 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.afw = load float, ptr %i.k, align 4, !tbaa !93
  %i.afx = load ptr, ptr %i.f, align 8, !tbaa !82
  %i.afy = invoke noundef float @_Z26output_env_get_time_factorPK16gmx_output_env_t(ptr noundef %i.afx)
          to label %bb.cp unwind label %.loopexit.split-lp.loopexit

bb.cp:                                            ; preds = %bb.co
  %i.afz = fmul float %i.afw, %i.afy
  %i.aga = fpext float %i.afz to double
  %i.agb = call double @sqrt(double noundef %i.afa) #18
  %i.agc = call double @sqrt(double noundef %i.aez) #18
  %i.agd = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0863.17
  %i.age = load double, ptr %i.agd, align 8, !tbaa !91
  %i.agf = call double @sqrt(double noundef %i.age) #18
  %i.agg = sext i32 %.sroa.13.6 to i64            ; 2 uses
  %i.agh = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.agg
  %i.agi = load double, ptr %i.agh, align 8, !tbaa !91
  %i.agj = call double @sqrt(double noundef %i.agi) #18
  %i.agk = zext nneg i32 %.sroa.28.15 to i64      ; 2 uses
  %i.agl = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.agk
  %i.agm = load double, ptr %i.agl, align 8, !tbaa !91
  %i.agn = call double @sqrt(double noundef %i.agm) #18
  %i.ago = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fw, ptr noundef nonnull @.str.69, double noundef %i.aga, double noundef %i.agb, double noundef %i.agc, double noundef %i.agf, double noundef %i.agj, double noundef %i.agn) #18 ; 0 uses
  %i.agp = load i8, ptr @_ZZ12gmx_polystatiPPcE3bPC, align 1, !tbaa !83, !range !84, !noundef !85
  %i.agq = trunc nuw i8 %i.agp to i1
  br i1 %i.agq, label %.preheader648.preheader, label %.loopexit649

.preheader648.preheader:                          ; preds = %bb.cp
  %i.agr = fdiv double %.sroa.0.4, %i.pu
  %i.ags = call double @sqrt(double noundef %i.agr) #18
  %i.agt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fw, ptr noundef nonnull @.str.70, double noundef %i.ags) #18 ; 0 uses
  %i.agu = fdiv double %.sroa.8.4, %i.pu
  %i.agv = call double @sqrt(double noundef %i.agu) #18
  %i.agw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fw, ptr noundef nonnull @.str.70, double noundef %i.agv) #18 ; 0 uses
  %i.agx = fdiv double %.sroa.11.4, %i.pu
  %i.agy = call double @sqrt(double noundef %i.agx) #18
  %i.agz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fw, ptr noundef nonnull @.str.70, double noundef %i.agy) #18 ; 0 uses
  br label %.loopexit649

.loopexit649:                                     ; preds = %.preheader648.preheader, %bb.cp
  %fputc = call i32 @fputc(i32 10, ptr %i.fw)     ; 0 uses
  br i1 %.not346, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %.loopexit649
  %i.aha = load float, ptr %i.k, align 4, !tbaa !93
  %i.ahb = load ptr, ptr %i.f, align 8, !tbaa !82
  %i.ahc = invoke noundef float @_Z26output_env_get_time_factorPK16gmx_output_env_t(ptr noundef %i.ahb)
          to label %.preheader641 unwind label %.loopexit.split-lp.loopexit

.preheader641:                                    ; preds = %bb.cq
  %i.ahd = fmul float %i.aha, %i.ahc
  %i.ahe = fpext float %i.ahd to double
  %i.ahf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.72, double noundef %i.ahe) #18 ; 0 uses
  %i.ahg = getelementptr inbounds nuw [8 x i8], ptr %i.ov, i64 %.sroa.0863.17 ; 3 uses
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !87
  %i.ahi = load double, ptr %i.ahh, align 8, !tbaa !91
  %i.ahj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.ahi) #18 ; 0 uses
  %i.ahk = load ptr, ptr %i.ahg, align 8, !tbaa !87
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 8
  %i.ahm = load double, ptr %i.ahl, align 8, !tbaa !91
  %i.ahn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.ahm) #18 ; 0 uses
  %i.aho = load ptr, ptr %i.ahg, align 8, !tbaa !87
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 16
  %i.ahq = load double, ptr %i.ahp, align 8, !tbaa !91
  %i.ahr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.ahq) #18 ; 0 uses
  %i.ahs = getelementptr inbounds [8 x i8], ptr %i.ov, i64 %i.agg ; 3 uses
  %i.aht = load ptr, ptr %i.ahs, align 8, !tbaa !87
  %i.ahu = load double, ptr %i.aht, align 8, !tbaa !91
  %i.ahv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.ahu) #18 ; 0 uses
  %i.ahw = load ptr, ptr %i.ahs, align 8, !tbaa !87
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahw, i64 8
end_hunk_1
