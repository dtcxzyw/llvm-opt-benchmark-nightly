inline.NumInlined: 306
inline.NumDeleted: 140
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_Z12gmx_polystatiPPc:._crit_edge.i.i
  br i1 %i.or, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit494, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i492

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i492: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i491
  %i.os = load i64, ptr %i.oq, align 8, !tbaa !27
  %i.ot = add i64 %i.os, 1
  call void @_ZdlPvm(ptr noundef %i.op, i64 noundef %i.ot) #19
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit494

_ZNSt10filesystem7__cxx114pathD2Ev.exit494:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i491, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  %i.ou = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.45, i32 noundef 288, i64 noundef 3, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit:         ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit494
  %i.ov = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.45, i32 noundef 289, i64 noundef 3, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit497 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit497:      ; preds = %_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit
  %i.ow = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.45, i32 noundef 290, i64 noundef 3, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit499.preheader.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 8 uses

_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit499.preheader.preheader: ; preds = %_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit497
  %i.ox = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.45, i32 noundef 293, i64 noundef 3, i64 noundef 8)
          to label %bb.bw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bw:                                            ; preds = %_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit499.preheader.preheader
  store ptr %i.ox, ptr %i.ou, align 8, !tbaa !72
  %i.oy = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.45, i32 noundef 294, i64 noundef 3, i64 noundef 8)
          to label %bb.bx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bx:                                            ; preds = %bb.bw
  store ptr %i.oy, ptr %i.ov, align 8, !tbaa !72
  %i.oz = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.45, i32 noundef 295, i64 noundef 3, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit499 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit499:      ; preds = %bb.bx
  store ptr %i.oz, ptr %i.ow, align 8, !tbaa !72
  %i.pa = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.45, i32 noundef 293, i64 noundef 3, i64 noundef 8)
          to label %bb.by unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.by:                                            ; preds = %_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit499
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ou, i64 8 ; 4 uses
  store ptr %i.pa, ptr %i.pb, align 8, !tbaa !72
  %i.pc = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.45, i32 noundef 294, i64 noundef 3, i64 noundef 8)
          to label %bb.bz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bz:                                            ; preds = %bb.by
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ov, i64 8 ; 4 uses
  store ptr %i.pc, ptr %i.pd, align 8, !tbaa !72
  %i.pe = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.45, i32 noundef 295, i64 noundef 3, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit499.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit499.1:    ; preds = %bb.bz
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  store ptr %i.pe, ptr %i.pf, align 8, !tbaa !72
  %i.pg = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.45, i32 noundef 293, i64 noundef 3, i64 noundef 8)
          to label %bb.ca unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ca:                                            ; preds = %_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit499.1
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ou, i64 16 ; 4 uses
  store ptr %i.pg, ptr %i.ph, align 8, !tbaa !72
  %i.pi = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.45, i32 noundef 294, i64 noundef 3, i64 noundef 8)
          to label %bb.cb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.cb:                                            ; preds = %bb.ca
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ov, i64 16 ; 4 uses
  store ptr %i.pi, ptr %i.pj, align 8, !tbaa !72
  %i.pk = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.45, i32 noundef 295, i64 noundef 3, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit499.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit499.2:    ; preds = %bb.cb
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  store ptr %i.pk, ptr %i.pl, align 8, !tbaa !72
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.pn = load i32, ptr %i.n, align 4, !tbaa !9
  %i.po = invoke noundef ptr @_Z14gmx_rmpbc_initPK6t_idef7PbcTypei(ptr noundef nonnull %i.pm, i32 noundef %i.ck, i32 noundef %i.pn)
          to label %.preheader647 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cc:                                            ; preds = %bb.bs, %_ZL13gmx_snew_implIdEvPKcS1_iRPT_m.exit483
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.cd:                                            ; preds = %bb.bt
  %i.pq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %20) #18
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.pn343 = phi { ptr, i32 } [ %i.pq, %bb.cd ], [ %i.pp, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18
  br label %.loopexit.split-lp

.preheader647:                                    ; preds = %_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit499.2
  %.not = icmp eq ptr %.0266, null                ; 4 uses
  %i.pr = sdiv i32 %.0.lcssa.fr, 2                ; 2 uses
  %i.ps = icmp slt i32 %.0.lcssa.fr, 2            ; 2 uses
  %.not348 = icmp eq ptr %.0265, null             ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ci, i64 2352
  %i.pu = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.pv = sitofp i32 %.0313.lcssa1065 to double   ; 8 uses
  %.not345 = icmp eq ptr %.0267, null             ; 2 uses
  %i.pw = icmp sgt i32 %.0.lcssa.fr, 1
  %i.px = add nsw i32 %i.pr, -1
  %i.py = zext i32 %i.px to i64                   ; 2 uses
  %i.pz = shl nuw nsw i64 %i.py, 3
  %i.qa = add nuw nsw i64 %i.pz, 8
  %i.qb = shl nuw nsw i64 %i.py, 2
  %i.qc = add nuw nsw i64 %i.qb, 4
  %i.qd = sext i32 %i.pr to i64                   ; 4 uses
  %brmerge = or i1 %.not, %i.ps
  %wide.trip.count801 = zext nneg i32 %.0313.lcssa1065 to i64
  %i.qe = add nsw i64 %i.qd, -1
  %i.qf = lshr i64 %i.qe, 1
  %i.qg = insertelement <2 x double> poison, double %i.pv, i64 0
  %i.qh = shufflevector <2 x double> %i.qg, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  br label %bb.cf

bb.cf:                                            ; preds = %.preheader647, %bb.cy
  %.sroa.13.0 = phi i32 [ 0, %.preheader647 ], [ %.sroa.13.6, %bb.cy ] ; 2 uses
  %.sroa.0.0 = phi double [ 0.000000e+00, %.preheader647 ], [ %.sroa.0.4, %bb.cy ]
  %.sroa.8.0 = phi double [ 0.000000e+00, %.preheader647 ], [ %.sroa.8.4, %bb.cy ]
  %.sroa.11.0 = phi double [ 0.000000e+00, %.preheader647 ], [ %.sroa.11.4, %bb.cy ]
  %.0296 = phi i32 [ 0, %.preheader647 ], [ %i.aki, %bb.cy ]
  %.0275 = phi double [ 0.000000e+00, %.preheader647 ], [ %.1276, %bb.cy ] ; 2 uses
  %i.qi = phi <2 x double> [ zeroinitializer, %.preheader647 ], [ %i.ais, %bb.cy ]
  %i.qj = load i32, ptr %i.n, align 4, !tbaa !9
  %i.qk = load ptr, ptr %i.l, align 8, !tbaa !74
  invoke void @_Z15gmx_rmpbc_applyP9gmx_rmpbciPA3_KfPA3_f(ptr noundef %i.po, i32 noundef %i.qj, ptr noundef nonnull %i.m, ptr noundef %i.qk)
          to label %.preheader646.preheader unwind label %.loopexit.split-lp.loopexit

.preheader646.preheader:                          ; preds = %bb.cf
  %i.ql = load ptr, ptr %i.ov, align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ql, i8 0, i64 24, i1 false)
  %i.qm = load ptr, ptr %i.pd, align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qm, i8 0, i64 24, i1 false)
  %i.qn = load ptr, ptr %i.pj, align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qn, i8 0, i64 24, i1 false)
  %i.qo = load i8, ptr @_ZZ12gmx_polystatiPPcE3bPC, align 1, !tbaa !64, !range !65, !noundef !66
  %i.qp = trunc nuw i8 %i.qo to i1                ; 3 uses
  %.sroa.0.1 = select i1 %i.qp, double 0.000000e+00, double %.sroa.0.0 ; 2 uses
  %.sroa.8.1 = select i1 %i.qp, double 0.000000e+00, double %.sroa.8.0 ; 2 uses
  %.sroa.11.1 = select i1 %i.qp, double 0.000000e+00, double %.sroa.11.0 ; 2 uses
  br i1 %brmerge, label %.loopexit645, label %.lr.ph676.preheader

.lr.ph676.preheader:                              ; preds = %.preheader646.preheader
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.0627, i8 0, i64 %i.qa, i1 false), !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.0626, i8 0, i64 %i.qc, i1 false), !tbaa !9
  br label %.loopexit645

.loopexit645:                                     ; preds = %.lr.ph676.preheader, %.preheader646.preheader
  br i1 %i.fk, label %.lr.ph696, label %._crit_edge697

.lr.ph696:                                        ; preds = %.loopexit645, %.loopexit
  %i.qq = phi i32 [ %i.abc, %.loopexit ], [ %.sroa.13.0, %.loopexit645 ] ; 3 uses
  %.sroa.0.2 = phi double [ %.sroa.0.3, %.loopexit ], [ %.sroa.0.1, %.loopexit645 ] ; 2 uses
  %.sroa.8.2 = phi double [ %.sroa.8.3, %.loopexit ], [ %.sroa.8.1, %.loopexit645 ] ; 2 uses
  %.sroa.11.2 = phi double [ %.sroa.11.3, %.loopexit ], [ %.sroa.11.1, %.loopexit645 ] ; 2 uses
  %indvars.iv798 = phi i64 [ %indvars.iv.next799, %.loopexit ], [ 0, %.loopexit645 ] ; 2 uses
  %.0280694 = phi double [ %i.rv, %.loopexit ], [ 0.000000e+00, %.loopexit645 ]
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv798
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !9  ; 6 uses
  %indvars.iv.next799 = add nuw nsw i64 %indvars.iv798, 1 ; 3 uses
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.next799
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !9  ; 5 uses
  %i.qv = load ptr, ptr %i.l, align 8, !tbaa !74  ; 9 uses
  %i.qw = load ptr, ptr %i.h, align 8, !tbaa !78  ; 3 uses
  %i.qx = sext i32 %i.qs to i64                   ; 9 uses
  %i.qy = getelementptr inbounds [4 x i8], ptr %i.qw, i64 %i.qx ; 5 uses
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !9
  %i.ra = sext i32 %i.qz to i64
  %i.rb = getelementptr inbounds [12 x i8], ptr %i.qv, i64 %i.ra ; 2 uses
  %i.rc = add nsw i32 %i.qu, -1                   ; 3 uses
  %i.rd = sext i32 %i.rc to i64                   ; 5 uses
  %i.re = getelementptr inbounds [4 x i8], ptr %i.qw, i64 %i.rd
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !9
  %i.rg = sext i32 %i.rf to i64
  %i.rh = getelementptr inbounds [12 x i8], ptr %i.qv, i64 %i.rg ; 2 uses
  %i.ri = load <2 x float>, ptr %i.rh, align 4, !tbaa !79
  %i.rj = load <2 x float>, ptr %i.rb, align 4, !tbaa !79
  %i.rk = fsub <2 x float> %i.ri, %i.rj           ; 2 uses
  %i.rl = fmul <2 x float> %i.rk, %i.rk           ; 2 uses
  %shift = shufflevector <2 x float> %i.rl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.rl, %shift
  %i.rm = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !79
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.rq = load float, ptr %i.rp, align 4, !tbaa !79
  %i.rr = fsub float %i.ro, %i.rq                 ; 2 uses
  %i.rs = fmul float %i.rr, %i.rr
  %i.rt = fadd float %i.rm, %i.rs
  %i.ru = fpext float %i.rt to double
  %i.rv = fadd double %.0280694, %i.ru            ; 2 uses
  br i1 %.not348, label %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph696
  %i.rw = sub nsw i32 %i.qu, %i.qs                ; 4 uses
  %i.rx = icmp sgt i32 %i.rw, 1
  br i1 %i.rx, label %.preheader.preheader.i, label %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit

.preheader.preheader.i:                           ; preds = %bb.cg
  %i.ry = zext nneg i32 %i.rw to i64
  %21 = sub i32 %i.qs, %i.qu
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i.loopexit, %.preheader.preheader.i
  %indvar1172 = phi i32 [ %indvar.next1173, %._crit_edge.i.loopexit ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i, %._crit_edge.i.loopexit ], [ 1, %.preheader.preheader.i ] ; 4 uses
  %indvars.iv29.in.i = phi i32 [ %indvars.iv29.i, %._crit_edge.i.loopexit ], [ %i.rw, %.preheader.preheader.i ]
  %indvars.iv29.i = add i32 %indvars.iv29.in.i, -1 ; 3 uses
  %i.rz = zext i32 %indvars.iv29.i to i64         ; 2 uses
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv31.i ; 3 uses
  %xtraiter = and i64 %i.rz, 1
  %22 = add i32 %21, %indvar1172
  %i.sa = icmp eq i32 %22, -2
  br i1 %i.sa, label %.lr.ph.i.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i
  %unroll_iter = and i64 %i.rz, 4294967294
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 4 uses
  %.024.i = phi double [ 0.000000e+00, %.preheader.i.new ], [ %i.tq, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv.i
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !9
  %i.sd = sext i32 %i.sc to i64
  %i.se = getelementptr inbounds [12 x i8], ptr %i.qv, i64 %i.sd ; 2 uses
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.sf = load i32, ptr %gep.i, align 4, !tbaa !9
  %i.sg = sext i32 %i.sf to i64
  %i.sh = getelementptr inbounds [12 x i8], ptr %i.qv, i64 %i.sg ; 2 uses
  %i.si = load <2 x float>, ptr %i.sh, align 4, !tbaa !79
  %i.sj = load <2 x float>, ptr %i.se, align 4, !tbaa !79
  %i.sk = fsub <2 x float> %i.si, %i.sj           ; 2 uses
  %i.sl = fmul <2 x float> %i.sk, %i.sk           ; 2 uses
  %shift1148 = shufflevector <2 x float> %i.sl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1149 = fadd <2 x float> %i.sl, %shift1148
  %i.sm = extractelement <2 x float> %foldExtExtBinop1149, i64 0
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sh, i64 8
  %i.so = load float, ptr %i.sn, align 4, !tbaa !79
  %i.sp = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  %i.sq = load float, ptr %i.sp, align 4, !tbaa !79
  %i.sr = fsub float %i.so, %i.sq                 ; 2 uses
  %i.ss = fmul float %i.sr, %i.sr
  %i.st = fadd float %i.sm, %i.ss
  %i.su = fpext float %i.st to double
  %i.sv = fadd double %.024.i, %i.su
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv.next.i
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !9
  %i.sy = sext i32 %i.sx to i64
  %i.sz = getelementptr inbounds [12 x i8], ptr %i.qv, i64 %i.sy ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.ta = load i32, ptr %gep.i.1, align 4, !tbaa !9
  %i.tb = sext i32 %i.ta to i64
  %i.tc = getelementptr inbounds [12 x i8], ptr %i.qv, i64 %i.tb ; 2 uses
  %i.td = load <2 x float>, ptr %i.tc, align 4, !tbaa !79
  %i.te = load <2 x float>, ptr %i.sz, align 4, !tbaa !79
  %i.tf = fsub <2 x float> %i.td, %i.te           ; 2 uses
  %i.tg = fmul <2 x float> %i.tf, %i.tf           ; 2 uses
  %shift1148.1 = shufflevector <2 x float> %i.tg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1149.1 = fadd <2 x float> %i.tg, %shift1148.1
  %i.th = extractelement <2 x float> %foldExtExtBinop1149.1, i64 0
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !79
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !79
  %i.tm = fsub float %i.tj, %i.tl                 ; 2 uses
  %i.tn = fmul float %i.tm, %i.tm
  %i.to = fadd float %i.th, %i.tn
  %i.tp = fpext float %i.to to double
  %i.tq = fadd double %i.sv, %i.tp                ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !80

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.024.i.epil.init = phi double [ 0.000000e+00, %.preheader.i ], [ %i.tq, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod1175 = trunc i32 %indvars.iv29.i to i1
  call void @llvm.assume(i1 %lcmp.mod1175)
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv.i.epil.init
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !9
  %i.tt = sext i32 %i.ts to i64
  %i.tu = getelementptr inbounds [12 x i8], ptr %i.qv, i64 %i.tt ; 2 uses
  %gep.i.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil.init
  %i.tv = load i32, ptr %gep.i.epil, align 4, !tbaa !9
  %i.tw = sext i32 %i.tv to i64
  %i.tx = getelementptr inbounds [12 x i8], ptr %i.qv, i64 %i.tw ; 2 uses
  %i.ty = load <2 x float>, ptr %i.tx, align 4, !tbaa !79
  %i.tz = load <2 x float>, ptr %i.tu, align 4, !tbaa !79
  %i.ua = fsub <2 x float> %i.ty, %i.tz           ; 2 uses
  %i.ub = fmul <2 x float> %i.ua, %i.ua           ; 2 uses
  %shift1148.epil = shufflevector <2 x float> %i.ub, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1149.epil = fadd <2 x float> %i.ub, %shift1148.epil
  %i.uc = extractelement <2 x float> %foldExtExtBinop1149.epil, i64 0
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.ue = load float, ptr %i.ud, align 4, !tbaa !79
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  %i.ug = load float, ptr %i.uf, align 4, !tbaa !79
  %i.uh = fsub float %i.ue, %i.ug                 ; 2 uses
  %i.ui = fmul float %i.uh, %i.uh
  %i.uj = fadd float %i.uc, %i.ui
  %i.uk = fpext float %i.uj to double
  %i.ul = fadd double %.024.i.epil.init, %i.uk
  br label %._crit_edge.i.loopexit

._crit_edge.i.loopexit:                           ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa = phi double [ %i.tq, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ul, %.lr.ph.i.epil.preheader ]
  %i.um = trunc i64 %indvars.iv31.i to i32
  %i.un = sub i32 %i.rw, %i.um
  %i.uo = sitofp i32 %i.un to double
  %i.up = fdiv double %.lcssa, %i.uo
  %i.uq = getelementptr [8 x i8], ptr %.0628, i64 %indvars.iv31.i
  %i.ur = getelementptr i8, ptr %i.uq, i64 -8     ; 2 uses
  %i.us = load double, ptr %i.ur, align 8, !tbaa !76
  %i.ut = fadd double %i.up, %i.us
  store double %i.ut, ptr %i.ur, align 8, !tbaa !76
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next32.i, %i.ry
  %indvar.next1173 = add i32 %indvar1172, 1
  br i1 %exitcond35.not.i, label %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit, label %.preheader.i, !llvm.loop !81

_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit: ; preds = %._crit_edge.i.loopexit, %bb.cg, %.lr.ph696
  %i.uu = load ptr, ptr %i.ou, align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uu, i8 0, i64 24, i1 false)
  %i.uv = load ptr, ptr %i.pb, align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uv, i8 0, i64 24, i1 false)
  %i.uw = load ptr, ptr %i.ph, align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uw, i8 0, i64 24, i1 false)
  %i.ux = icmp slt i32 %i.qs, %i.qu
  br i1 %i.ux, label %.lr.ph682, label %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit.._crit_edge683_crit_edge

_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit.._crit_edge683_crit_edge: ; preds = %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit
  %.pre873 = load ptr, ptr %i.ou, align 8, !tbaa !72
  %.pre874 = load ptr, ptr %i.pb, align 8, !tbaa !72
  %.pre875 = load ptr, ptr %i.ph, align 8, !tbaa !72
  br label %._crit_edge683

.lr.ph682:                                        ; preds = %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit
  %i.uy = load i8, ptr @_ZZ12gmx_polystatiPPcE3bMW, align 1, !tbaa !64, !range !65, !noundef !66
  %i.uz = trunc nuw i8 %i.uy to i1
  %wide.trip.count771 = sext i32 %i.qu to i64
  %i.va = load ptr, ptr %i.ou, align 8, !tbaa !72 ; 4 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 8 ; 2 uses
  %i.vc = load ptr, ptr %i.pb, align 8, !tbaa !72 ; 4 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 8 ; 2 uses
  %i.ve = load ptr, ptr %i.ph, align 8, !tbaa !72 ; 4 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 8 ; 2 uses
  br label %bb.ch

bb.ch:                                            ; preds = %.lr.ph682, %bb.cj
  %.sroa.0840.0 = phi double [ 0.000000e+00, %.lr.ph682 ], [ %i.vr, %bb.cj ]
  %indvars.iv768 = phi i64 [ %i.qx, %.lr.ph682 ], [ %indvars.iv.next769, %bb.cj ] ; 2 uses
  %.0269681 = phi double [ 0.000000e+00, %.lr.ph682 ], [ %i.wv, %bb.cj ]
  %i.vg = phi <2 x double> [ zeroinitializer, %.lr.ph682 ], [ %i.wn, %bb.cj ]
  %i.vh = getelementptr inbounds [4 x i8], ptr %i.qw, i64 %indvars.iv768
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !9  ; 2 uses
  br i1 %i.uz, label %bb.ci, label %._crit_edge877

._crit_edge877:                                   ; preds = %bb.ch
  %.pre879 = sext i32 %i.vi to i64
  br label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.vj = load ptr, ptr %i.pt, align 8, !tbaa !82
  %i.vk = sext i32 %i.vi to i64                   ; 2 uses
  %i.vl = getelementptr inbounds [36 x i8], ptr %i.vj, i64 %i.vk
  %i.vm = load float, ptr %i.vl, align 4, !tbaa !83
  %i.vn = fpext float %i.vm to double
  br label %bb.cj

bb.cj:                                            ; preds = %._crit_edge877, %bb.ci
  %.pre-phi880 = phi i64 [ %.pre879, %._crit_edge877 ], [ %i.vk, %bb.ci ]
  %.0268 = phi double [ 1.000000e+00, %._crit_edge877 ], [ %i.vn, %bb.ci ] ; 6 uses
  %i.vo = getelementptr inbounds [12 x i8], ptr %i.qv, i64 %.pre-phi880 ; 2 uses
  %i.vp = load float, ptr %i.vo, align 4, !tbaa !79
  %i.vq = fpext float %i.vp to double             ; 5 uses
  %i.vr = call double @llvm.fmuladd.f64(double %.0268, double %i.vq, double %.sroa.0840.0) ; 2 uses
  %i.vs = fmul double %.0268, %i.vq               ; 2 uses
  %i.vt = load double, ptr %i.va, align 8, !tbaa !76
  %i.vu = call double @llvm.fmuladd.f64(double %i.vs, double %i.vq, double %i.vt)
  store double %i.vu, ptr %i.va, align 8, !tbaa !76
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vo, i64 4
  %i.vw = load <2 x float>, ptr %i.vv, align 4, !tbaa !79
  %i.vx = fpext <2 x float> %i.vw to <2 x double> ; 6 uses
  %i.vy = extractelement <2 x double> %i.vx, i64 0
  %i.vz = extractelement <2 x double> %i.vx, i64 1
  %i.wa = load <2 x double>, ptr %i.vb, align 8, !tbaa !76
  %i.wb = insertelement <2 x double> poison, double %i.vs, i64 0
  %i.wc = shufflevector <2 x double> %i.wb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wc, <2 x double> %i.vx, <2 x double> %i.wa)
  store <2 x double> %i.wd, ptr %i.vb, align 8, !tbaa !76
  %i.we = fmul double %.0268, %i.vy               ; 2 uses
  %i.wf = load double, ptr %i.vc, align 8, !tbaa !76
  %i.wg = call double @llvm.fmuladd.f64(double %i.we, double %i.vq, double %i.wf)
  store double %i.wg, ptr %i.vc, align 8, !tbaa !76
  %i.wh = load <2 x double>, ptr %i.vd, align 8, !tbaa !76
  %i.wi = insertelement <2 x double> poison, double %i.we, i64 0
  %i.wj = shufflevector <2 x double> %i.wi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wj, <2 x double> %i.vx, <2 x double> %i.wh)
  store <2 x double> %i.wk, ptr %i.vd, align 8, !tbaa !76
  %i.wl = insertelement <2 x double> poison, double %.0268, i64 0
  %i.wm = shufflevector <2 x double> %i.wl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wm, <2 x double> %i.vx, <2 x double> %i.vg) ; 2 uses
  %i.wo = fmul double %.0268, %i.vz               ; 2 uses
  %i.wp = load double, ptr %i.ve, align 8, !tbaa !76
  %i.wq = call double @llvm.fmuladd.f64(double %i.wo, double %i.vq, double %i.wp)
  store double %i.wq, ptr %i.ve, align 8, !tbaa !76
  %i.wr = load <2 x double>, ptr %i.vf, align 8, !tbaa !76
  %i.ws = insertelement <2 x double> poison, double %i.wo, i64 0
  %i.wt = shufflevector <2 x double> %i.ws, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wt, <2 x double> %i.vx, <2 x double> %i.wr)
  store <2 x double> %i.wu, ptr %i.vf, align 8, !tbaa !76
  %i.wv = fadd double %.0269681, %.0268           ; 2 uses
  %indvars.iv.next769 = add nsw i64 %indvars.iv768, 1 ; 2 uses
  %exitcond772.not = icmp eq i64 %indvars.iv.next769, %wide.trip.count771
  br i1 %exitcond772.not, label %._crit_edge683, label %bb.ch, !llvm.loop !87

._crit_edge683:                                   ; preds = %bb.cj, %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit.._crit_edge683_crit_edge
  %i.ww = phi ptr [ %.pre875, %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit.._crit_edge683_crit_edge ], [ %i.ve, %bb.cj ] ; 4 uses
  %i.wx = phi ptr [ %.pre874, %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit.._crit_edge683_crit_edge ], [ %i.vc, %bb.cj ] ; 4 uses
  %i.wy = phi ptr [ %.pre873, %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit.._crit_edge683_crit_edge ], [ %i.va, %bb.cj ] ; 4 uses
  %.sroa.0840.1 = phi double [ 0.000000e+00, %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit.._crit_edge683_crit_edge ], [ %i.vr, %bb.cj ]
  %.0269.lcssa = phi double [ 0.000000e+00, %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit.._crit_edge683_crit_edge ], [ %i.wv, %bb.cj ] ; 10 uses
  %i.wz = phi <2 x double> [ zeroinitializer, %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit.._crit_edge683_crit_edge ], [ %i.wn, %bb.cj ] ; 2 uses
  %i.xa = fdiv double 1.000000e+00, %.0269.lcssa  ; 3 uses
  %i.xb = fmul double %i.xa, %.sroa.0840.1        ; 4 uses
  %i.xc = extractelement <2 x double> %i.wz, i64 0
  %i.xd = fmul double %i.xa, %i.xc                ; 4 uses
  %i.xe = extractelement <2 x double> %i.wz, i64 1
  %i.xf = fmul double %i.xa, %i.xe                ; 4 uses
  %i.xg = fneg double %i.xb                       ; 3 uses
  %i.xh = load ptr, ptr %i.ov, align 8, !tbaa !72 ; 4 uses
  %i.xi = load double, ptr %i.wy, align 8, !tbaa !76
  %i.xj = fdiv double %i.xi, %.0269.lcssa
  %i.xk = call double @llvm.fmuladd.f64(double %i.xg, double %i.xb, double %i.xj) ; 2 uses
  store double %i.xk, ptr %i.wy, align 8, !tbaa !76
  %i.xl = load double, ptr %i.xh, align 8, !tbaa !76
  %i.xm = fadd double %i.xk, %i.xl
  store double %i.xm, ptr %i.xh, align 8, !tbaa !76
  %i.xn = getelementptr inbounds nuw i8, ptr %i.wy, i64 8 ; 2 uses
  %i.xo = load double, ptr %i.xn, align 8, !tbaa !76
  %i.xp = fdiv double %i.xo, %.0269.lcssa
  %i.xq = call double @llvm.fmuladd.f64(double %i.xg, double %i.xd, double %i.xp) ; 2 uses
  store double %i.xq, ptr %i.xn, align 8, !tbaa !76
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xh, i64 8 ; 2 uses
  %i.xs = load double, ptr %i.xr, align 8, !tbaa !76
  %i.xt = fadd double %i.xq, %i.xs
  store double %i.xt, ptr %i.xr, align 8, !tbaa !76
  %i.xu = getelementptr inbounds nuw i8, ptr %i.wy, i64 16 ; 2 uses
  %i.xv = load double, ptr %i.xu, align 8, !tbaa !76
  %i.xw = fdiv double %i.xv, %.0269.lcssa
  %i.xx = call double @llvm.fmuladd.f64(double %i.xg, double %i.xf, double %i.xw) ; 2 uses
  store double %i.xx, ptr %i.xu, align 8, !tbaa !76
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xh, i64 16 ; 2 uses
  %i.xz = load double, ptr %i.xy, align 8, !tbaa !76
  %i.ya = fadd double %i.xx, %i.xz
  store double %i.ya, ptr %i.xy, align 8, !tbaa !76
  %i.yb = fneg double %i.xd                       ; 3 uses
  %i.yc = load ptr, ptr %i.pd, align 8, !tbaa !72 ; 4 uses
  %i.yd = load double, ptr %i.wx, align 8, !tbaa !76
  %i.ye = fdiv double %i.yd, %.0269.lcssa
  %i.yf = call double @llvm.fmuladd.f64(double %i.yb, double %i.xb, double %i.ye) ; 2 uses
  store double %i.yf, ptr %i.wx, align 8, !tbaa !76
  %i.yg = load double, ptr %i.yc, align 8, !tbaa !76
  %i.yh = fadd double %i.yf, %i.yg
  store double %i.yh, ptr %i.yc, align 8, !tbaa !76
  %i.yi = getelementptr inbounds nuw i8, ptr %i.wx, i64 8 ; 2 uses
  %i.yj = load double, ptr %i.yi, align 8, !tbaa !76
  %i.yk = fdiv double %i.yj, %.0269.lcssa
  %i.yl = call double @llvm.fmuladd.f64(double %i.yb, double %i.xd, double %i.yk) ; 2 uses
  store double %i.yl, ptr %i.yi, align 8, !tbaa !76
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yc, i64 8 ; 2 uses
  %i.yn = load double, ptr %i.ym, align 8, !tbaa !76
  %i.yo = fadd double %i.yl, %i.yn
  store double %i.yo, ptr %i.ym, align 8, !tbaa !76
  %i.yp = getelementptr inbounds nuw i8, ptr %i.wx, i64 16 ; 2 uses
  %i.yq = load double, ptr %i.yp, align 8, !tbaa !76
  %i.yr = fdiv double %i.yq, %.0269.lcssa
end_hunk_0
