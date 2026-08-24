Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_polystat?download=true
inline.NumInlined: 306
inline.NumDeleted: 140
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_Z12gmx_polystatiPPc:._crit_edge.i.i

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
  %i.qf = lshr i64 %i.qe, 1                       ; 2 uses
  %i.qg = insertelement <2 x double> poison, double %i.pv, i64 0
  %i.qh = shufflevector <2 x double> %i.qg, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  br label %bb.cf

bb.cf:                                            ; preds = %.preheader647, %bb.cy
  %.sroa.13.0 = phi i32 [ 0, %.preheader647 ], [ %.sroa.13.6, %bb.cy ] ; 2 uses
  %.sroa.0.0 = phi double [ 0.000000e+00, %.preheader647 ], [ %.sroa.0.4, %bb.cy ]
  %.sroa.8.0 = phi double [ 0.000000e+00, %.preheader647 ], [ %.sroa.8.4, %bb.cy ]
  %.sroa.11.0 = phi double [ 0.000000e+00, %.preheader647 ], [ %.sroa.11.4, %bb.cy ]
  %.0296 = phi i32 [ 0, %.preheader647 ], [ %i.akt, %bb.cy ]
  %.0275 = phi double [ 0.000000e+00, %.preheader647 ], [ %.1276, %bb.cy ] ; 2 uses
  %i.qi = phi <2 x double> [ zeroinitializer, %.preheader647 ], [ %i.ajd, %bb.cy ]
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
  %i.qq = phi i32 [ %i.aax, %.loopexit ], [ %.sroa.13.0, %.loopexit645 ] ; 3 uses
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
  %i.rd = sext i32 %i.rc to i64                   ; 6 uses
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
  %21 = zext nneg i32 %i.rw to i64
  %i.ry = sub i32 %i.qs, %i.qu
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i.loopexit, %.preheader.preheader.i
  %indvar1174 = phi i32 [ %indvar.next1175, %._crit_edge.i.loopexit ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i, %._crit_edge.i.loopexit ], [ 1, %.preheader.preheader.i ] ; 4 uses
  %indvars.iv29.in.i = phi i32 [ %indvars.iv29.i, %._crit_edge.i.loopexit ], [ %i.rw, %.preheader.preheader.i ]
  %indvars.iv29.i = add i32 %indvars.iv29.in.i, -1 ; 3 uses
  %wide.trip.count.i = zext i32 %indvars.iv29.i to i64 ; 2 uses
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv31.i ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %22 = add i32 %i.ry, %indvar1174
  %23 = icmp eq i32 %22, -2
  br i1 %23, label %.lr.ph.i.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 4 uses
  %.024.i = phi double [ 0.000000e+00, %.preheader.i.new ], [ %i.to, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv.i
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !9
  %i.sb = sext i32 %i.sa to i64
  %i.sc = getelementptr inbounds [12 x i8], ptr %i.qv, i64 %i.sb ; 2 uses
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.sd = load i32, ptr %gep.i, align 4, !tbaa !9
  %i.se = sext i32 %i.sd to i64
  %i.sf = getelementptr inbounds [12 x i8], ptr %i.qv, i64 %i.se ; 2 uses
  %i.sg = load <2 x float>, ptr %i.sf, align 4, !tbaa !79
  %i.sh = load <2 x float>, ptr %i.sc, align 4, !tbaa !79
  %i.si = fsub <2 x float> %i.sg, %i.sh           ; 2 uses
  %i.sj = fmul <2 x float> %i.si, %i.si           ; 2 uses
  %shift1150 = shufflevector <2 x float> %i.sj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1151 = fadd <2 x float> %i.sj, %shift1150
  %i.sk = extractelement <2 x float> %foldExtExtBinop1151, i64 0
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !79
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  %i.so = load float, ptr %i.sn, align 4, !tbaa !79
  %i.sp = fsub float %i.sm, %i.so                 ; 2 uses
  %i.sq = fmul float %i.sp, %i.sp
  %i.sr = fadd float %i.sk, %i.sq
  %i.ss = fpext float %i.sr to double
  %i.st = fadd double %.024.i, %i.ss
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv.next.i
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !9
  %i.sw = sext i32 %i.sv to i64
  %i.sx = getelementptr inbounds [12 x i8], ptr %i.qv, i64 %i.sw ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.sy = load i32, ptr %gep.i.1, align 4, !tbaa !9
  %i.sz = sext i32 %i.sy to i64
  %i.ta = getelementptr inbounds [12 x i8], ptr %i.qv, i64 %i.sz ; 2 uses
  %i.tb = load <2 x float>, ptr %i.ta, align 4, !tbaa !79
  %i.tc = load <2 x float>, ptr %i.sx, align 4, !tbaa !79
  %i.td = fsub <2 x float> %i.tb, %i.tc           ; 2 uses
  %i.te = fmul <2 x float> %i.td, %i.td           ; 2 uses
  %shift1150.1 = shufflevector <2 x float> %i.te, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1151.1 = fadd <2 x float> %i.te, %shift1150.1
  %i.tf = extractelement <2 x float> %foldExtExtBinop1151.1, i64 0
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.th = load float, ptr %i.tg, align 4, !tbaa !79
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !79
  %i.tk = fsub float %i.th, %i.tj                 ; 2 uses
  %i.tl = fmul float %i.tk, %i.tk
  %i.tm = fadd float %i.tf, %i.tl
  %i.tn = fpext float %i.tm to double
  %i.to = fadd double %i.st, %i.tn                ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !80

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.024.i.epil.init = phi double [ 0.000000e+00, %.preheader.i ], [ %i.to, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod1177 = trunc i32 %indvars.iv29.i to i1
  call void @llvm.assume(i1 %lcmp.mod1177)
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv.i.epil.init
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !9
  %i.tr = sext i32 %i.tq to i64
  %i.ts = getelementptr inbounds [12 x i8], ptr %i.qv, i64 %i.tr ; 2 uses
  %gep.i.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil.init
  %i.tt = load i32, ptr %gep.i.epil, align 4, !tbaa !9
  %i.tu = sext i32 %i.tt to i64
  %i.tv = getelementptr inbounds [12 x i8], ptr %i.qv, i64 %i.tu ; 2 uses
  %i.tw = load <2 x float>, ptr %i.tv, align 4, !tbaa !79
  %i.tx = load <2 x float>, ptr %i.ts, align 4, !tbaa !79
  %i.ty = fsub <2 x float> %i.tw, %i.tx           ; 2 uses
  %i.tz = fmul <2 x float> %i.ty, %i.ty           ; 2 uses
  %shift1150.epil = shufflevector <2 x float> %i.tz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1151.epil = fadd <2 x float> %i.tz, %shift1150.epil
  %i.ua = extractelement <2 x float> %foldExtExtBinop1151.epil, i64 0
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !79
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  %i.ue = load float, ptr %i.ud, align 4, !tbaa !79
  %i.uf = fsub float %i.uc, %i.ue                 ; 2 uses
  %i.ug = fmul float %i.uf, %i.uf
  %i.uh = fadd float %i.ua, %i.ug
  %i.ui = fpext float %i.uh to double
  %i.uj = fadd double %.024.i.epil.init, %i.ui
  br label %._crit_edge.i.loopexit

._crit_edge.i.loopexit:                           ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa = phi double [ %i.to, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.uj, %.lr.ph.i.epil.preheader ]
  %24 = trunc i64 %indvars.iv31.i to i32
  %25 = sub i32 %i.rw, %24
  %26 = sitofp i32 %25 to double
  %i.uk = fdiv double %.lcssa, %26
  %i.ul = getelementptr [8 x i8], ptr %.0628, i64 %indvars.iv31.i
  %i.um = getelementptr i8, ptr %i.ul, i64 -8     ; 2 uses
  %i.un = load double, ptr %i.um, align 8, !tbaa !76
  %i.uo = fadd double %i.uk, %i.un
  store double %i.uo, ptr %i.um, align 8, !tbaa !76
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next32.i, %21
  %indvar.next1175 = add i32 %indvar1174, 1
  br i1 %exitcond35.not.i, label %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit, label %.preheader.i, !llvm.loop !81

_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit: ; preds = %._crit_edge.i.loopexit, %bb.cg, %.lr.ph696
  %i.up = load ptr, ptr %i.ou, align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.up, i8 0, i64 24, i1 false)
  %i.uq = load ptr, ptr %i.pb, align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uq, i8 0, i64 24, i1 false)
  %i.ur = load ptr, ptr %i.ph, align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ur, i8 0, i64 24, i1 false)
  %i.us = icmp slt i32 %i.qs, %i.qu
  br i1 %i.us, label %.lr.ph682, label %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit.._crit_edge683_crit_edge

_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit.._crit_edge683_crit_edge: ; preds = %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit
  %.pre873 = load ptr, ptr %i.ou, align 8, !tbaa !72
  %.pre874 = load ptr, ptr %i.pb, align 8, !tbaa !72
  %.pre875 = load ptr, ptr %i.ph, align 8, !tbaa !72
  br label %._crit_edge683

.lr.ph682:                                        ; preds = %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit
  %i.ut = load i8, ptr @_ZZ12gmx_polystatiPPcE3bMW, align 1, !tbaa !64, !range !65, !noundef !66
  %i.uu = trunc nuw i8 %i.ut to i1
  %wide.trip.count771 = sext i32 %i.qu to i64
  %i.uv = load ptr, ptr %i.ou, align 8, !tbaa !72 ; 4 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 8 ; 2 uses
  %i.ux = load ptr, ptr %i.pb, align 8, !tbaa !72 ; 4 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 8 ; 2 uses
  %i.uz = load ptr, ptr %i.ph, align 8, !tbaa !72 ; 4 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 8 ; 2 uses
  br label %bb.ch

bb.ch:                                            ; preds = %.lr.ph682, %bb.cj
  %.sroa.0840.0 = phi double [ 0.000000e+00, %.lr.ph682 ], [ %i.vm, %bb.cj ]
  %indvars.iv768 = phi i64 [ %i.qx, %.lr.ph682 ], [ %indvars.iv.next769, %bb.cj ] ; 2 uses
  %.0269681 = phi double [ 0.000000e+00, %.lr.ph682 ], [ %i.wq, %bb.cj ]
  %i.vb = phi <2 x double> [ zeroinitializer, %.lr.ph682 ], [ %i.wi, %bb.cj ]
  %i.vc = getelementptr inbounds [4 x i8], ptr %i.qw, i64 %indvars.iv768
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !9  ; 2 uses
  br i1 %i.uu, label %bb.ci, label %._crit_edge877

._crit_edge877:                                   ; preds = %bb.ch
  %.pre879 = sext i32 %i.vd to i64
  br label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.ve = load ptr, ptr %i.pt, align 8, !tbaa !82
  %i.vf = sext i32 %i.vd to i64                   ; 2 uses
  %i.vg = getelementptr inbounds [36 x i8], ptr %i.ve, i64 %i.vf
  %i.vh = load float, ptr %i.vg, align 4, !tbaa !83
  %i.vi = fpext float %i.vh to double
  br label %bb.cj

bb.cj:                                            ; preds = %._crit_edge877, %bb.ci
  %.pre-phi880 = phi i64 [ %.pre879, %._crit_edge877 ], [ %i.vf, %bb.ci ]
  %.0268 = phi double [ 1.000000e+00, %._crit_edge877 ], [ %i.vi, %bb.ci ] ; 6 uses
  %i.vj = getelementptr inbounds [12 x i8], ptr %i.qv, i64 %.pre-phi880 ; 2 uses
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !79
  %i.vl = fpext float %i.vk to double             ; 5 uses
  %i.vm = call double @llvm.fmuladd.f64(double %.0268, double %i.vl, double %.sroa.0840.0) ; 2 uses
  %i.vn = fmul double %.0268, %i.vl               ; 2 uses
  %i.vo = load double, ptr %i.uv, align 8, !tbaa !76
  %i.vp = call double @llvm.fmuladd.f64(double %i.vn, double %i.vl, double %i.vo)
  store double %i.vp, ptr %i.uv, align 8, !tbaa !76
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vj, i64 4
  %i.vr = load <2 x float>, ptr %i.vq, align 4, !tbaa !79
  %i.vs = fpext <2 x float> %i.vr to <2 x double> ; 6 uses
  %i.vt = extractelement <2 x double> %i.vs, i64 0
  %i.vu = extractelement <2 x double> %i.vs, i64 1
  %i.vv = load <2 x double>, ptr %i.uw, align 8, !tbaa !76
  %i.vw = insertelement <2 x double> poison, double %i.vn, i64 0
  %i.vx = shufflevector <2 x double> %i.vw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vx, <2 x double> %i.vs, <2 x double> %i.vv)
  store <2 x double> %i.vy, ptr %i.uw, align 8, !tbaa !76
  %i.vz = fmul double %.0268, %i.vt               ; 2 uses
  %i.wa = load double, ptr %i.ux, align 8, !tbaa !76
  %i.wb = call double @llvm.fmuladd.f64(double %i.vz, double %i.vl, double %i.wa)
  store double %i.wb, ptr %i.ux, align 8, !tbaa !76
  %i.wc = load <2 x double>, ptr %i.uy, align 8, !tbaa !76
  %i.wd = insertelement <2 x double> poison, double %i.vz, i64 0
  %i.we = shufflevector <2 x double> %i.wd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.we, <2 x double> %i.vs, <2 x double> %i.wc)
  store <2 x double> %i.wf, ptr %i.uy, align 8, !tbaa !76
  %i.wg = insertelement <2 x double> poison, double %.0268, i64 0
  %i.wh = shufflevector <2 x double> %i.wg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wh, <2 x double> %i.vs, <2 x double> %i.vb) ; 2 uses
  %i.wj = fmul double %.0268, %i.vu               ; 2 uses
  %i.wk = load double, ptr %i.uz, align 8, !tbaa !76
  %i.wl = call double @llvm.fmuladd.f64(double %i.wj, double %i.vl, double %i.wk)
  store double %i.wl, ptr %i.uz, align 8, !tbaa !76
  %i.wm = load <2 x double>, ptr %i.va, align 8, !tbaa !76
  %i.wn = insertelement <2 x double> poison, double %i.wj, i64 0
  %i.wo = shufflevector <2 x double> %i.wn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wo, <2 x double> %i.vs, <2 x double> %i.wm)
  store <2 x double> %i.wp, ptr %i.va, align 8, !tbaa !76
  %i.wq = fadd double %.0269681, %.0268           ; 2 uses
  %indvars.iv.next769 = add nsw i64 %indvars.iv768, 1 ; 2 uses
  %exitcond772.not = icmp eq i64 %indvars.iv.next769, %wide.trip.count771
  br i1 %exitcond772.not, label %._crit_edge683, label %bb.ch, !llvm.loop !87

._crit_edge683:                                   ; preds = %bb.cj, %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit.._crit_edge683_crit_edge
  %i.wr = phi ptr [ %.pre875, %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit.._crit_edge683_crit_edge ], [ %i.uz, %bb.cj ] ; 4 uses
  %i.ws = phi ptr [ %.pre874, %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit.._crit_edge683_crit_edge ], [ %i.ux, %bb.cj ] ; 4 uses
  %i.wt = phi ptr [ %.pre873, %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit.._crit_edge683_crit_edge ], [ %i.uv, %bb.cj ] ; 4 uses
  %.sroa.0840.1 = phi double [ 0.000000e+00, %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit.._crit_edge683_crit_edge ], [ %i.vm, %bb.cj ]
  %.0269.lcssa = phi double [ 0.000000e+00, %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit.._crit_edge683_crit_edge ], [ %i.wq, %bb.cj ] ; 10 uses
  %i.wu = phi <2 x double> [ zeroinitializer, %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit.._crit_edge683_crit_edge ], [ %i.wi, %bb.cj ] ; 2 uses
  %i.wv = fdiv double 1.000000e+00, %.0269.lcssa  ; 3 uses
  %i.ww = fmul double %i.wv, %.sroa.0840.1        ; 4 uses
  %i.wx = extractelement <2 x double> %i.wu, i64 0
  %i.wy = fmul double %i.wv, %i.wx                ; 4 uses
  %i.wz = extractelement <2 x double> %i.wu, i64 1
  %i.xa = fmul double %i.wv, %i.wz                ; 4 uses
  %i.xb = fneg double %i.ww                       ; 3 uses
  %i.xc = load ptr, ptr %i.ov, align 8, !tbaa !72 ; 4 uses
  %i.xd = load double, ptr %i.wt, align 8, !tbaa !76
  %i.xe = fdiv double %i.xd, %.0269.lcssa
  %i.xf = call double @llvm.fmuladd.f64(double %i.xb, double %i.ww, double %i.xe) ; 2 uses
  store double %i.xf, ptr %i.wt, align 8, !tbaa !76
  %i.xg = load double, ptr %i.xc, align 8, !tbaa !76
  %i.xh = fadd double %i.xf, %i.xg
  store double %i.xh, ptr %i.xc, align 8, !tbaa !76
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wt, i64 8 ; 2 uses
  %i.xj = load double, ptr %i.xi, align 8, !tbaa !76
  %i.xk = fdiv double %i.xj, %.0269.lcssa
  %i.xl = call double @llvm.fmuladd.f64(double %i.xb, double %i.wy, double %i.xk) ; 2 uses
  store double %i.xl, ptr %i.xi, align 8, !tbaa !76
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xc, i64 8 ; 2 uses
  %i.xn = load double, ptr %i.xm, align 8, !tbaa !76
  %i.xo = fadd double %i.xl, %i.xn
  store double %i.xo, ptr %i.xm, align 8, !tbaa !76
  %i.xp = getelementptr inbounds nuw i8, ptr %i.wt, i64 16 ; 2 uses
  %i.xq = load double, ptr %i.xp, align 8, !tbaa !76
  %i.xr = fdiv double %i.xq, %.0269.lcssa
  %i.xs = call double @llvm.fmuladd.f64(double %i.xb, double %i.xa, double %i.xr) ; 2 uses
  store double %i.xs, ptr %i.xp, align 8, !tbaa !76
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xc, i64 16 ; 2 uses
  %i.xu = load double, ptr %i.xt, align 8, !tbaa !76
  %i.xv = fadd double %i.xs, %i.xu
  store double %i.xv, ptr %i.xt, align 8, !tbaa !76
  %i.xw = fneg double %i.wy                       ; 3 uses
  %i.xx = load ptr, ptr %i.pd, align 8, !tbaa !72 ; 4 uses
  %i.xy = load double, ptr %i.ws, align 8, !tbaa !76
  %i.xz = fdiv double %i.xy, %.0269.lcssa
  %i.ya = call double @llvm.fmuladd.f64(double %i.xw, double %i.ww, double %i.xz) ; 2 uses
  store double %i.ya, ptr %i.ws, align 8, !tbaa !76
  %i.yb = load double, ptr %i.xx, align 8, !tbaa !76
  %i.yc = fadd double %i.ya, %i.yb
  store double %i.yc, ptr %i.xx, align 8, !tbaa !76
  %i.yd = getelementptr inbounds nuw i8, ptr %i.ws, i64 8 ; 2 uses
  %i.ye = load double, ptr %i.yd, align 8, !tbaa !76
  %i.yf = fdiv double %i.ye, %.0269.lcssa
  %i.yg = call double @llvm.fmuladd.f64(double %i.xw, double %i.wy, double %i.yf) ; 2 uses
  store double %i.yg, ptr %i.yd, align 8, !tbaa !76
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xx, i64 8 ; 2 uses
  %i.yi = load double, ptr %i.yh, align 8, !tbaa !76
  %i.yj = fadd double %i.yg, %i.yi
  store double %i.yj, ptr %i.yh, align 8, !tbaa !76
  %i.yk = getelementptr inbounds nuw i8, ptr %i.ws, i64 16 ; 2 uses
  %i.yl = load double, ptr %i.yk, align 8, !tbaa !76
  %i.ym = fdiv double %i.yl, %.0269.lcssa
  %i.yn = call double @llvm.fmuladd.f64(double %i.xw, double %i.xa, double %i.ym) ; 2 uses
  store double %i.yn, ptr %i.yk, align 8, !tbaa !76
  %i.yo = getelementptr inbounds nuw i8, ptr %i.xx, i64 16 ; 2 uses
  %i.yp = load double, ptr %i.yo, align 8, !tbaa !76
  %i.yq = fadd double %i.yn, %i.yp
  store double %i.yq, ptr %i.yo, align 8, !tbaa !76
  %i.yr = fneg double %i.xa                       ; 3 uses
  %i.ys = load ptr, ptr %i.pj, align 8, !tbaa !72 ; 4 uses
  %i.yt = load double, ptr %i.wr, align 8, !tbaa !76
  %i.yu = fdiv double %i.yt, %.0269.lcssa
  %i.yv = call double @llvm.fmuladd.f64(double %i.yr, double %i.ww, double %i.yu) ; 2 uses
  store double %i.yv, ptr %i.wr, align 8, !tbaa !76
  %i.yw = load double, ptr %i.ys, align 8, !tbaa !76
  %i.yx = fadd double %i.yv, %i.yw
  store double %i.yx, ptr %i.ys, align 8, !tbaa !76
  %i.yy = getelementptr inbounds nuw i8, ptr %i.wr, i64 8 ; 2 uses
  %i.yz = load double, ptr %i.yy, align 8, !tbaa !76
  %i.za = fdiv double %i.yz, %.0269.lcssa
  %i.zb = call double @llvm.fmuladd.f64(double %i.yr, double %i.wy, double %i.za) ; 2 uses
  store double %i.zb, ptr %i.yy, align 8, !tbaa !76
  %i.zc = getelementptr inbounds nuw i8, ptr %i.ys, i64 8 ; 2 uses
  %i.zd = load double, ptr %i.zc, align 8, !tbaa !76
  %i.ze = fadd double %i.zb, %i.zd
  store double %i.ze, ptr %i.zc, align 8, !tbaa !76
  %i.zf = getelementptr inbounds nuw i8, ptr %i.wr, i64 16 ; 2 uses
  %i.zg = load double, ptr %i.zf, align 8, !tbaa !76
  %i.zh = fdiv double %i.zg, %.0269.lcssa
  %i.zi = call double @llvm.fmuladd.f64(double %i.yr, double %i.xa, double %i.zh) ; 2 uses
  store double %i.zi, ptr %i.zf, align 8, !tbaa !76
  %i.zj = getelementptr inbounds nuw i8, ptr %i.ys, i64 16 ; 2 uses
  %i.zk = load double, ptr %i.zj, align 8, !tbaa !76
  %i.zl = fadd double %i.zi, %i.zk
  store double %i.zl, ptr %i.zj, align 8, !tbaa !76
end_hunk_0
