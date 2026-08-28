Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_polystat?download=true
inline.NumInlined: 306
inline.NumDeleted: 140
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_Z12gmx_polystatiPPc:._crit_edge.i.i
  %i.nw = add i32 %i.nt, %i.nv
  %i.nx = sext i32 %i.nw to i64
  %i.ny = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.45, i32 noundef 278, i64 noundef range(i64 -2147483648, 2147483647) %i.nx, i64 noundef 8)
          to label %_ZL13gmx_snew_implIdEvPKcS1_iRPT_m.exit483 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bo:                                            ; preds = %bb.bl, %bb.bk
  %i.nz = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bp:                                            ; preds = %._crit_edge.i.i463
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit486

bb.bq:                                            ; preds = %.noexc469
  %i.ob = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oc = load ptr, ptr %19, align 8, !tbaa !31   ; 2 uses
  %i.od = icmp eq ptr %i.oc, %i.mv
  br i1 %i.od, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit486, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i484

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i484: ; preds = %bb.bq
  %i.oe = load i64, ptr %i.mv, align 8, !tbaa !27
  %i.of = add i64 %i.oe, 1
  call void @_ZdlPvm(ptr noundef %i.oc, i64 noundef %i.of) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit486

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit486: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i484, %bb.bp
  %.pn339 = phi { ptr, i32 } [ %i.oa, %bb.bp ], [ %i.ob, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i484 ], [ %i.ob, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  %i.og = load ptr, ptr %18, align 8, !tbaa !31   ; 2 uses
  %i.oh = icmp eq ptr %i.og, %i.ms
  br i1 %i.oh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i487

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i487: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit486
  %i.oi = load i64, ptr %i.ms, align 8, !tbaa !27
  %i.oj = add i64 %i.oi, 1
  call void @_ZdlPvm(ptr noundef %i.og, i64 noundef %i.oj) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit486, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i487
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %17) #18
  br label %bb.br

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489, %bb.bo
  %.pn339.pn.pn = phi { ptr, i32 } [ %.pn339, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit489 ], [ %i.nz, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18
  br label %.loopexit.split-lp

_ZL13gmx_snew_implIdEvPKcS1_iRPT_m.exit483:       ; preds = %bb.bj, %_ZNSt10filesystem7__cxx114pathD2Ev.exit481
  %.0628 = phi ptr [ %i.ny, %_ZNSt10filesystem7__cxx114pathD2Ev.exit481 ], [ null, %bb.bj ] ; 7 uses
  %.0265 = phi ptr [ %i.nc, %_ZNSt10filesystem7__cxx114pathD2Ev.exit481 ], [ null, %bb.bj ] ; 5 uses
  %i.ok = load ptr, ptr %i.f, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #18
  %i.ol = invoke noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 1, i32 noundef 7, ptr noundef nonnull %3)
          to label %bb.bs unwind label %bb.cc

bb.bs:                                            ; preds = %_ZL13gmx_snew_implIdEvPKcS1_iRPT_m.exit483
  store ptr %i.ol, ptr %i.v, align 8, !tbaa !28
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.v, i8 noundef zeroext 2)
          to label %bb.bt unwind label %bb.cc

bb.bt:                                            ; preds = %bb.bs
  %i.om = invoke noundef i32 @_Z12read_first_xPK16gmx_output_env_tPP11t_trxstatusRKNSt10filesystem7__cxx114pathEPfPPA3_fSC_(ptr noundef %i.ok, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m)
          to label %bb.bu unwind label %bb.cd

bb.bu:                                            ; preds = %bb.bt
  store i32 %i.om, ptr %i.n, align 4, !tbaa !9
  %i.on = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 2 uses
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i490 = icmp eq ptr %i.oo, null
  br i1 %.not.i.i.i490, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i491, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.on, ptr noundef nonnull %i.oo) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i491

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i491: ; preds = %bb.bv, %bb.bu
  %i.op = load ptr, ptr %20, align 8, !tbaa !31   ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.or = icmp eq ptr %i.op, %i.oq
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
  %21 = insertelement <2 x double> poison, double %i.pv, i64 0
  %22 = shufflevector <2 x double> %21, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %23 = add nsw i64 %i.qd, -1
  %24 = lshr i64 %23, 1
  br label %bb.cf

bb.cf:                                            ; preds = %.preheader647, %bb.cy
  %.sroa.13.0 = phi i32 [ 0, %.preheader647 ], [ %.sroa.13.6, %bb.cy ] ; 2 uses
  %.sroa.0.0 = phi double [ 0.000000e+00, %.preheader647 ], [ %.sroa.0.4, %bb.cy ]
  %.sroa.8.0 = phi double [ 0.000000e+00, %.preheader647 ], [ %.sroa.8.4, %bb.cy ]
  %.sroa.11.0 = phi double [ 0.000000e+00, %.preheader647 ], [ %.sroa.11.4, %bb.cy ]
  %.0296 = phi i32 [ 0, %.preheader647 ], [ %i.ajv, %bb.cy ]
  %.0275 = phi double [ 0.000000e+00, %.preheader647 ], [ %.1276, %bb.cy ] ; 2 uses
  %i.qe = phi <2 x double> [ zeroinitializer, %.preheader647 ], [ %i.aif, %bb.cy ]
  %i.qf = load i32, ptr %i.n, align 4, !tbaa !9
  %i.qg = load ptr, ptr %i.l, align 8, !tbaa !74
  invoke void @_Z15gmx_rmpbc_applyP9gmx_rmpbciPA3_KfPA3_f(ptr noundef %i.po, i32 noundef %i.qf, ptr noundef nonnull %i.m, ptr noundef %i.qg)
          to label %.preheader646.preheader unwind label %.loopexit.split-lp.loopexit

.preheader646.preheader:                          ; preds = %bb.cf
  %i.qh = load ptr, ptr %i.ov, align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qh, i8 0, i64 24, i1 false)
  %i.qi = load ptr, ptr %i.pd, align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qi, i8 0, i64 24, i1 false)
  %i.qj = load ptr, ptr %i.pj, align 8, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qj, i8 0, i64 24, i1 false)
  %i.qk = load i8, ptr @_ZZ12gmx_polystatiPPcE3bPC, align 1, !tbaa !64, !range !65, !noundef !66
  %i.ql = trunc nuw i8 %i.qk to i1                ; 3 uses
  %.sroa.0.1 = select i1 %i.ql, double 0.000000e+00, double %.sroa.0.0 ; 2 uses
  %.sroa.8.1 = select i1 %i.ql, double 0.000000e+00, double %.sroa.8.0 ; 2 uses
  %.sroa.11.1 = select i1 %i.ql, double 0.000000e+00, double %.sroa.11.0 ; 2 uses
  br i1 %brmerge, label %.loopexit645, label %.lr.ph676.preheader

.lr.ph676.preheader:                              ; preds = %.preheader646.preheader
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.0627, i8 0, i64 %i.qa, i1 false), !tbaa !76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.0626, i8 0, i64 %i.qc, i1 false), !tbaa !9
  br label %.loopexit645

.loopexit645:                                     ; preds = %.lr.ph676.preheader, %.preheader646.preheader
  br i1 %i.fk, label %.lr.ph696, label %._crit_edge697

.lr.ph696:                                        ; preds = %.loopexit645, %.loopexit
  %i.qm = phi i32 [ %i.aba, %.loopexit ], [ %.sroa.13.0, %.loopexit645 ] ; 3 uses
  %.sroa.0.2 = phi double [ %.sroa.0.3, %.loopexit ], [ %.sroa.0.1, %.loopexit645 ] ; 2 uses
  %.sroa.8.2 = phi double [ %.sroa.8.3, %.loopexit ], [ %.sroa.8.1, %.loopexit645 ] ; 2 uses
  %.sroa.11.2 = phi double [ %.sroa.11.3, %.loopexit ], [ %.sroa.11.1, %.loopexit645 ] ; 2 uses
  %indvars.iv798 = phi i64 [ %indvars.iv.next799, %.loopexit ], [ 0, %.loopexit645 ] ; 2 uses
  %.0280694 = phi double [ %i.rr, %.loopexit ], [ 0.000000e+00, %.loopexit645 ]
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv798
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !9  ; 6 uses
  %indvars.iv.next799 = add nuw nsw i64 %indvars.iv798, 1 ; 3 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.next799
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !9  ; 5 uses
  %i.qr = load ptr, ptr %i.l, align 8, !tbaa !74  ; 9 uses
  %i.qs = load ptr, ptr %i.h, align 8, !tbaa !78  ; 3 uses
  %i.qt = sext i32 %i.qo to i64                   ; 9 uses
  %i.qu = getelementptr inbounds [4 x i8], ptr %i.qs, i64 %i.qt ; 5 uses
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !9
  %i.qw = sext i32 %i.qv to i64
  %i.qx = getelementptr inbounds [12 x i8], ptr %i.qr, i64 %i.qw ; 2 uses
  %i.qy = add nsw i32 %i.qq, -1                   ; 3 uses
  %i.qz = sext i32 %i.qy to i64                   ; 5 uses
  %i.ra = getelementptr inbounds [4 x i8], ptr %i.qs, i64 %i.qz
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !9
  %i.rc = sext i32 %i.rb to i64
  %i.rd = getelementptr inbounds [12 x i8], ptr %i.qr, i64 %i.rc ; 2 uses
  %i.re = load <2 x float>, ptr %i.rd, align 4, !tbaa !79
  %i.rf = load <2 x float>, ptr %i.qx, align 4, !tbaa !79
  %i.rg = fsub <2 x float> %i.re, %i.rf           ; 2 uses
  %i.rh = fmul <2 x float> %i.rg, %i.rg           ; 2 uses
  %shift = shufflevector <2 x float> %i.rh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.rh, %shift
  %i.ri = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !79
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !79
  %i.rn = fsub float %i.rk, %i.rm                 ; 2 uses
  %i.ro = fmul float %i.rn, %i.rn
  %i.rp = fadd float %i.ri, %i.ro
  %i.rq = fpext float %i.rp to double
  %i.rr = fadd double %.0280694, %i.rq            ; 2 uses
  br i1 %.not348, label %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph696
  %i.rs = sub nsw i32 %i.qq, %i.qo                ; 4 uses
  %i.rt = sext i32 %i.rs to i64
  %i.ru = icmp sgt i32 %i.rs, 1
  br i1 %i.ru, label %.preheader.i.preheader, label %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit

.preheader.i.preheader:                           ; preds = %bb.cg
  %i.rv = sub i32 %i.qo, %i.qq
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %._crit_edge.i
  %indvar1172 = phi i32 [ 0, %.preheader.i.preheader ], [ %indvar.next1173, %._crit_edge.i ] ; 2 uses
  %indvars.iv31.i = phi i64 [ 1, %.preheader.i.preheader ], [ %indvars.iv.next32.i, %._crit_edge.i ] ; 4 uses
  %indvars.iv29.in.i = phi i32 [ %i.rs, %.preheader.i.preheader ], [ %indvars.iv29.i, %._crit_edge.i ]
  %indvars.iv29.i = add i32 %indvars.iv29.in.i, -1 ; 3 uses
  %i.rw = trunc i64 %indvars.iv31.i to i32
  %i.rx = sub i32 %i.rs, %i.rw                    ; 2 uses
  %i.ry = icmp sgt i32 %i.rx, 0
  br i1 %i.ry, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext i32 %indvars.iv29.i to i64 ; 2 uses
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv31.i ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.rz = add i32 %i.rv, %indvar1172
  %i.sa = icmp eq i32 %i.rz, -2
  br i1 %i.sa, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 4 uses
  %.024.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.new ], [ %i.tq, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv.i
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !9
  %i.sd = sext i32 %i.sc to i64
  %i.se = getelementptr inbounds [12 x i8], ptr %i.qr, i64 %i.sd ; 2 uses
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.sf = load i32, ptr %gep.i, align 4, !tbaa !9
  %i.sg = sext i32 %i.sf to i64
  %i.sh = getelementptr inbounds [12 x i8], ptr %i.qr, i64 %i.sg ; 2 uses
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
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv.next.i
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !9
  %i.sy = sext i32 %i.sx to i64
  %i.sz = getelementptr inbounds [12 x i8], ptr %i.qr, i64 %i.sy ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.ta = load i32, ptr %gep.i.1, align 4, !tbaa !9
  %i.tb = sext i32 %i.ta to i64
  %i.tc = getelementptr inbounds [12 x i8], ptr %i.qr, i64 %i.tb ; 2 uses
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
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.024.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.tq, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod1175 = trunc i32 %indvars.iv29.i to i1
  call void @llvm.assume(i1 %lcmp.mod1175)
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv.i.epil.init
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !9
  %i.tt = sext i32 %i.ts to i64
  %i.tu = getelementptr inbounds [12 x i8], ptr %i.qr, i64 %i.tt ; 2 uses
  %gep.i.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil.init
  %i.tv = load i32, ptr %gep.i.epil, align 4, !tbaa !9
  %i.tw = sext i32 %i.tv to i64
  %i.tx = getelementptr inbounds [12 x i8], ptr %i.qr, i64 %i.tw ; 2 uses
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
end_hunk_0
begin_hunk_1_@_Z12gmx_polystatiPPc:._crit_edge.i.i
  %i.xj = load double, ptr %i.xf, align 8, !tbaa !76
  %i.xk = fadd double %i.xi, %i.xj
  store double %i.xk, ptr %i.xf, align 8, !tbaa !76
  %i.xl = getelementptr inbounds nuw i8, ptr %i.ww, i64 8 ; 2 uses
  %i.xm = load double, ptr %i.xl, align 8, !tbaa !76
  %i.xn = fdiv double %i.xm, %.0269.lcssa
  %i.xo = call double @llvm.fmuladd.f64(double %i.xe, double %i.xb, double %i.xn) ; 2 uses
  store double %i.xo, ptr %i.xl, align 8, !tbaa !76
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xf, i64 8 ; 2 uses
  %i.xq = load double, ptr %i.xp, align 8, !tbaa !76
  %i.xr = fadd double %i.xo, %i.xq
  store double %i.xr, ptr %i.xp, align 8, !tbaa !76
  %i.xs = getelementptr inbounds nuw i8, ptr %i.ww, i64 16 ; 2 uses
  %i.xt = load double, ptr %i.xs, align 8, !tbaa !76
  %i.xu = fdiv double %i.xt, %.0269.lcssa
  %i.xv = call double @llvm.fmuladd.f64(double %i.xe, double %i.xd, double %i.xu) ; 2 uses
  store double %i.xv, ptr %i.xs, align 8, !tbaa !76
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xf, i64 16 ; 2 uses
  %i.xx = load double, ptr %i.xw, align 8, !tbaa !76
  %i.xy = fadd double %i.xv, %i.xx
  store double %i.xy, ptr %i.xw, align 8, !tbaa !76
  %i.xz = fneg double %i.xb                       ; 3 uses
  %i.ya = load ptr, ptr %i.pd, align 8, !tbaa !72 ; 4 uses
  %i.yb = load double, ptr %i.wv, align 8, !tbaa !76
  %i.yc = fdiv double %i.yb, %.0269.lcssa
  %i.yd = call double @llvm.fmuladd.f64(double %i.xz, double %i.wz, double %i.yc) ; 2 uses
  store double %i.yd, ptr %i.wv, align 8, !tbaa !76
  %i.ye = load double, ptr %i.ya, align 8, !tbaa !76
  %i.yf = fadd double %i.yd, %i.ye
  store double %i.yf, ptr %i.ya, align 8, !tbaa !76
  %i.yg = getelementptr inbounds nuw i8, ptr %i.wv, i64 8 ; 2 uses
  %i.yh = load double, ptr %i.yg, align 8, !tbaa !76
  %i.yi = fdiv double %i.yh, %.0269.lcssa
  %i.yj = call double @llvm.fmuladd.f64(double %i.xz, double %i.xb, double %i.yi) ; 2 uses
  store double %i.yj, ptr %i.yg, align 8, !tbaa !76
  %i.yk = getelementptr inbounds nuw i8, ptr %i.ya, i64 8 ; 2 uses
  %i.yl = load double, ptr %i.yk, align 8, !tbaa !76
  %i.ym = fadd double %i.yj, %i.yl
  store double %i.ym, ptr %i.yk, align 8, !tbaa !76
  %i.yn = getelementptr inbounds nuw i8, ptr %i.wv, i64 16 ; 2 uses
  %i.yo = load double, ptr %i.yn, align 8, !tbaa !76
  %i.yp = fdiv double %i.yo, %.0269.lcssa
  %i.yq = call double @llvm.fmuladd.f64(double %i.xz, double %i.xd, double %i.yp) ; 2 uses
  store double %i.yq, ptr %i.yn, align 8, !tbaa !76
  %i.yr = getelementptr inbounds nuw i8, ptr %i.ya, i64 16 ; 2 uses
  %i.ys = load double, ptr %i.yr, align 8, !tbaa !76
  %i.yt = fadd double %i.yq, %i.ys
  store double %i.yt, ptr %i.yr, align 8, !tbaa !76
  %i.yu = fneg double %i.xd                       ; 3 uses
  %i.yv = load ptr, ptr %i.pj, align 8, !tbaa !72 ; 4 uses
  %i.yw = load double, ptr %i.wu, align 8, !tbaa !76
  %i.yx = fdiv double %i.yw, %.0269.lcssa
  %i.yy = call double @llvm.fmuladd.f64(double %i.yu, double %i.wz, double %i.yx) ; 2 uses
  store double %i.yy, ptr %i.wu, align 8, !tbaa !76
  %i.yz = load double, ptr %i.yv, align 8, !tbaa !76
  %i.za = fadd double %i.yy, %i.yz
  store double %i.za, ptr %i.yv, align 8, !tbaa !76
  %i.zb = getelementptr inbounds nuw i8, ptr %i.wu, i64 8 ; 2 uses
  %i.zc = load double, ptr %i.zb, align 8, !tbaa !76
  %i.zd = fdiv double %i.zc, %.0269.lcssa
  %i.ze = call double @llvm.fmuladd.f64(double %i.yu, double %i.xb, double %i.zd) ; 2 uses
  store double %i.ze, ptr %i.zb, align 8, !tbaa !76
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yv, i64 8 ; 2 uses
  %i.zg = load double, ptr %i.zf, align 8, !tbaa !76
  %i.zh = fadd double %i.ze, %i.zg
  store double %i.zh, ptr %i.zf, align 8, !tbaa !76
  %i.zi = getelementptr inbounds nuw i8, ptr %i.wu, i64 16 ; 2 uses
  %i.zj = load double, ptr %i.zi, align 8, !tbaa !76
  %i.zk = fdiv double %i.zj, %.0269.lcssa
  %i.zl = call double @llvm.fmuladd.f64(double %i.yu, double %i.xd, double %i.zk) ; 2 uses
  store double %i.zl, ptr %i.zi, align 8, !tbaa !76
  %i.zm = getelementptr inbounds nuw i8, ptr %i.yv, i64 16 ; 2 uses
  %i.zn = load double, ptr %i.zm, align 8, !tbaa !76
  %i.zo = fadd double %i.zl, %i.zn
  store double %i.zo, ptr %i.zm, align 8, !tbaa !76
  %i.zp = load i8, ptr @_ZZ12gmx_polystatiPPcE3bPC, align 1, !tbaa !64, !range !65, !noundef !66
  %i.zq = trunc nuw i8 %i.zp to i1
  br i1 %i.zq, label %bb.ck, label %.loopexit638

bb.ck:                                            ; preds = %._crit_edge683
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  invoke void @_Z6jacobiPPdiS_S0_Pi(ptr noundef nonnull %i.ou, i32 noundef 3, ptr noundef nonnull %i.o, ptr noundef nonnull %i.ow, ptr noundef nonnull %i.b)
          to label %.noexc510 unwind label %.loopexit643

.noexc510:                                        ; preds = %bb.ck
  %i.zr = load double, ptr %i.o, align 16, !tbaa !76 ; 2 uses
  %i.zs = load double, ptr %i.pu, align 16, !tbaa !76 ; 3 uses
  %i.zt = fcmp olt double %i.zr, %i.zs            ; 2 uses
  %.sroa.28.0 = select i1 %i.zt, i32 0, i32 2     ; 2 uses
  %i.zu = load double, ptr %.027.1.i.sroa.gep, align 8, !tbaa !76 ; 2 uses
  %i.zv = fcmp ogt double %i.zu, %i.zr            ; 4 uses
  %.sroa.0856.0 = zext i1 %i.zv to i32            ; 4 uses
  %i.zw = zext nneg i32 %.sroa.28.0 to i64
  %i.zx = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.zw
  %i.zy = load double, ptr %i.zx, align 16, !tbaa !76
  %i.zz = fcmp uge double %i.zu, %i.zy            ; 2 uses
  %.sroa.28.1 = select i1 %i.zz, i32 %.sroa.28.0, i32 1 ; 3 uses
  %.027.1.i.sroa.gep.val = load double, ptr %.027.1.i.sroa.gep, align 8
  %.val = load double, ptr %i.o, align 16
  %i.aaa = select i1 %i.zv, double %.027.1.i.sroa.gep.val, double %.val
  %i.aab = fcmp ule double %i.zs, %i.aaa          ; 2 uses
  %i.aac = zext nneg i32 %.sroa.28.1 to i64
  %i.aad = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aac
  %i.aae = load double, ptr %i.aad, align 8, !tbaa !76
  %i.aaf = fcmp olt double %i.zs, %i.aae          ; 2 uses
  br i1 %i.aab, label %bb.cl, label %.thread41.i

bb.cl:                                            ; preds = %.noexc510
  br i1 %i.aaf, label %.preheader.thread.i, label %.preheader.i509

.thread41.i:                                      ; preds = %.noexc510
  br i1 %i.aaf, label %.thread.i, label %.preheader.thread42.i

.preheader.i509:                                  ; preds = %bb.cl
  br i1 %i.zv, label %.preheader.thread42.i, label %.thread37.i

.preheader.thread.i:                              ; preds = %bb.cl
  br i1 %i.zv, label %.thread.i, label %.thread37.thread.i

.preheader.thread42.i:                            ; preds = %.thread41.i, %.preheader.i509
  %.sroa.0856.1 = phi i32 [ 2, %.thread41.i ], [ %.sroa.0856.0, %.preheader.i509 ]
  %.not26.i = and i1 %i.zz, %i.zt                 ; 2 uses
  %spec.select1090 = select i1 %.not26.i, i32 %i.qm, i32 0
  %spec.select1091 = select i1 %.not26.i, i32 0, i32 %.sroa.28.1
  br label %.thread.i

.thread.i:                                        ; preds = %.preheader.thread42.i, %.preheader.thread.i, %.thread41.i
  %i.aag = phi i32 [ %spec.select1090, %.preheader.thread42.i ], [ 0, %.thread41.i ], [ 0, %.preheader.thread.i ] ; 2 uses
  %.sroa.0856.3 = phi i32 [ %.sroa.0856.1, %.preheader.thread42.i ], [ 2, %.thread41.i ], [ %.sroa.0856.0, %.preheader.thread.i ] ; 2 uses
  %.sroa.28.3 = phi i32 [ %spec.select1091, %.preheader.thread42.i ], [ 2, %.thread41.i ], [ 2, %.preheader.thread.i ] ; 2 uses
  %.not.1.i = phi i1 [ %i.aab, %.preheader.thread42.i ], [ false, %.thread41.i ], [ true, %.preheader.thread.i ]
  br i1 %.not.1.i, label %.thread39.i, label %.thread37.i

.thread37.i:                                      ; preds = %.thread.i, %.preheader.i509
  %i.aah = phi i32 [ %i.aag, %.thread.i ], [ %i.qm, %.preheader.i509 ]
  %.sroa.0856.4 = phi i32 [ %.sroa.0856.3, %.thread.i ], [ %.sroa.0856.0, %.preheader.i509 ]
  %.sroa.28.4 = phi i32 [ %.sroa.28.3, %.thread.i ], [ %.sroa.28.1, %.preheader.i509 ] ; 2 uses
  %i.aai = phi i1 [ true, %.thread.i ], [ false, %.preheader.i509 ]
  %.not26.1.i = icmp eq i32 %.sroa.28.4, 1
  %spec.select1092 = select i1 %.not26.1.i, i32 %i.aah, i32 1
  br label %.thread37.thread.i

.thread37.thread.i:                               ; preds = %.thread37.i, %.preheader.thread.i
  %i.aaj = phi i32 [ %spec.select1092, %.thread37.i ], [ 1, %.preheader.thread.i ] ; 2 uses
  %.sroa.0856.6 = phi i32 [ %.sroa.0856.4, %.thread37.i ], [ %.sroa.0856.0, %.preheader.thread.i ] ; 2 uses
  %.not.2.i = phi i1 [ %i.aai, %.thread37.i ], [ false, %.preheader.thread.i ]
  %i.aak = phi i32 [ %.sroa.28.4, %.thread37.i ], [ 2, %.preheader.thread.i ] ; 2 uses
  br i1 %.not.2.i, label %_ZL10gyro_eigenPPdS_S0_Pi.exit, label %.thread39.i

.thread39.i:                                      ; preds = %.thread37.thread.i, %.thread.i
  %i.aal = phi i32 [ %i.aag, %.thread.i ], [ %i.aaj, %.thread37.thread.i ]
  %.sroa.0856.7 = phi i32 [ %.sroa.0856.3, %.thread.i ], [ %.sroa.0856.6, %.thread37.thread.i ]
  %i.aam = phi i32 [ %.sroa.28.3, %.thread.i ], [ %i.aak, %.thread37.thread.i ] ; 2 uses
  %.not26.2.i = icmp eq i32 %i.aam, 2
  %spec.select = select i1 %.not26.2.i, i32 %i.aal, i32 2
  br label %_ZL10gyro_eigenPPdS_S0_Pi.exit

_ZL10gyro_eigenPPdS_S0_Pi.exit:                   ; preds = %.thread39.i, %.thread37.thread.i
  %i.aan = phi i32 [ %spec.select, %.thread39.i ], [ %i.aaj, %.thread37.thread.i ] ; 2 uses
  %.sroa.0856.8 = phi i32 [ %.sroa.0856.7, %.thread39.i ], [ %.sroa.0856.6, %.thread37.thread.i ]
  %.sroa.28.8 = phi i32 [ %i.aam, %.thread39.i ], [ %i.aak, %.thread37.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.aao = zext nneg i32 %.sroa.0856.8 to i64
  %i.aap = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aao
  %i.aaq = load double, ptr %i.aap, align 8, !tbaa !76
  %i.aar = fadd double %i.aaq, %.sroa.0.2
  %i.aas = sext i32 %i.aan to i64
  %i.aat = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.aas
  %i.aau = load double, ptr %i.aat, align 8, !tbaa !76
  %i.aav = fadd double %i.aau, %.sroa.8.2
  %i.aaw = zext nneg i32 %.sroa.28.8 to i64
  %i.aax = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aaw
  %i.aay = load double, ptr %i.aax, align 8, !tbaa !76
  %i.aaz = fadd double %i.aay, %.sroa.11.2
  br label %.loopexit638

.loopexit638:                                     ; preds = %_ZL10gyro_eigenPPdS_S0_Pi.exit, %._crit_edge683
  %i.aba = phi i32 [ %i.aan, %_ZL10gyro_eigenPPdS_S0_Pi.exit ], [ %i.qm, %._crit_edge683 ] ; 2 uses
  %.sroa.0.3 = phi double [ %i.aar, %_ZL10gyro_eigenPPdS_S0_Pi.exit ], [ %.sroa.0.2, %._crit_edge683 ] ; 2 uses
  %.sroa.8.3 = phi double [ %i.aav, %_ZL10gyro_eigenPPdS_S0_Pi.exit ], [ %.sroa.8.2, %._crit_edge683 ] ; 2 uses
  %.sroa.11.3 = phi double [ %i.aaz, %_ZL10gyro_eigenPPdS_S0_Pi.exit ], [ %.sroa.11.2, %._crit_edge683 ] ; 2 uses
  br i1 %.not, label %.loopexit, label %.preheader637

.preheader637:                                    ; preds = %.loopexit638
  %i.abb = icmp slt i32 %i.qo, %i.qy
  br i1 %i.abb, label %.lr.ph689, label %.preheader636

.lr.ph689:                                        ; preds = %.preheader637
  %i.abc = load ptr, ptr %i.l, align 8, !tbaa !74 ; 2 uses
  %i.abd = load ptr, ptr %i.h, align 8, !tbaa !78 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %i.abd, i64 %i.qt
  %.pre876 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !9
  br label %bb.cm

.preheader636:                                    ; preds = %bb.cm, %.preheader637
  %i.abe = icmp sge i32 %i.qo, %i.qy
  %brmerge725 = or i1 %i.abe, %i.ps
  br i1 %brmerge725, label %.loopexit, label %.preheader632.preheader

.preheader632.preheader:                          ; preds = %.preheader636
  %25 = xor i64 %i.qt, -1
  %26 = add nsw i64 %i.qt, 2
  br label %.preheader632

bb.cm:                                            ; preds = %.lr.ph689, %bb.cm
  %i.abf = phi i32 [ %.pre876, %.lr.ph689 ], [ %i.abh, %bb.cm ]
  %indvars.iv785 = phi i64 [ %i.qt, %.lr.ph689 ], [ %indvars.iv.next786, %bb.cm ] ; 2 uses
  %indvars.iv.next786 = add nsw i64 %indvars.iv785, 1 ; 3 uses
  %i.abg = getelementptr inbounds [4 x i8], ptr %i.abd, i64 %indvars.iv.next786
  %i.abh = load i32, ptr %i.abg, align 4, !tbaa !9 ; 2 uses
  %i.abi = sext i32 %i.abh to i64
  %i.abj = getelementptr inbounds [12 x i8], ptr %i.abc, i64 %i.abi ; 2 uses
  %i.abk = sext i32 %i.abf to i64
  %i.abl = getelementptr inbounds [12 x i8], ptr %i.abc, i64 %i.abk ; 2 uses
  %i.abm = sub nsw i64 %indvars.iv785, %i.qt
  %i.abn = getelementptr inbounds [12 x i8], ptr %.0625, i64 %i.abm ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abj, i64 8
  %i.abp = load float, ptr %i.abo, align 4, !tbaa !79
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abl, i64 8
  %i.abr = load float, ptr %i.abq, align 4, !tbaa !79
  %i.abs = fsub float %i.abp, %i.abr              ; 3 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abn, i64 8
  %i.abu = load <2 x float>, ptr %i.abj, align 4, !tbaa !79
  %i.abv = load <2 x float>, ptr %i.abl, align 4, !tbaa !79
  %i.abw = fsub <2 x float> %i.abu, %i.abv        ; 4 uses
  %foldExtExtBinop1151 = fmul <2 x float> %i.abw, %i.abw
  %i.abx = extractelement <2 x float> %foldExtExtBinop1151, i64 1
  %i.aby = extractelement <2 x float> %i.abw, i64 0 ; 2 uses
  %i.abz = call float @llvm.fmuladd.f32(float %i.aby, float %i.aby, float %i.abx)
  %i.aca = call noundef float @llvm.fmuladd.f32(float %i.abs, float %i.abs, float %i.abz)
  %sqrt.i = call float @llvm.sqrt.f32(float %i.aca)
  %i.acb = fdiv float 1.000000e+00, %sqrt.i       ; 2 uses
  %i.acc = insertelement <2 x float> poison, float %i.acb, i64 0
  %i.acd = shufflevector <2 x float> %i.acc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ace = fmul <2 x float> %i.abw, %i.acd
  store <2 x float> %i.ace, ptr %i.abn, align 4, !tbaa !79
  %i.acf = fmul float %i.abs, %i.acb
  store float %i.acf, ptr %i.abt, align 4, !tbaa !79
  %exitcond789.not = icmp eq i64 %indvars.iv.next786, %i.qz
  br i1 %exitcond789.not, label %.preheader636, label %bb.cm

.preheader632:                                    ; preds = %.preheader632.preheader, %..critedge_crit_edge
  %indvar = phi i64 [ 0, %.preheader632.preheader ], [ %indvar.next, %..critedge_crit_edge ] ; 3 uses
  %indvars.iv793 = phi i64 [ %i.qt, %.preheader632.preheader ], [ %indvars.iv.next794, %..critedge_crit_edge ] ; 3 uses
  %27 = sub i64 %25, %indvar
  %28 = add i64 %26, %indvar
  %i.acg = sub nsw i64 %indvars.iv793, %i.qt      ; 2 uses
  %29 = getelementptr inbounds [12 x i8], ptr %.0625, i64 %i.acg ; 3 uses
  %30 = load float, ptr %29, align 4, !tbaa !79   ; 2 uses
  %31 = getelementptr inbounds nuw i8, ptr %29, i64 4
  %32 = load float, ptr %31, align 4, !tbaa !79   ; 2 uses
  %33 = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.ach = load float, ptr %33, align 4, !tbaa !79 ; 2 uses
  %invariant.gep = getelementptr [12 x i8], ptr %.0625, i64 %i.acg ; 2 uses
  %34 = call i64 @llvm.smax.i64(i64 %28, i64 %i.qz)
  %35 = add i64 %34, %27
  %36 = lshr i64 %35, 1
  %37 = call i64 @llvm.umin.i64(i64 %24, i64 %36) ; 2 uses
  %min.iters.check1125 = icmp samesign ult i64 %37, 4
  br i1 %min.iters.check1125, label %scalar.ph1124.preheader, label %vector.ph1126

vector.ph1126:                                    ; preds = %.preheader632
  %i.aci = add nuw i64 %37, 1                     ; 2 uses
  %i.acj = and i64 %i.aci, 3                      ; 2 uses
  %i.ack = icmp eq i64 %i.acj, 0
  %i.acl = select i1 %i.ack, i64 4, i64 %i.acj
  %n.vec1127 = sub i64 %i.aci, %i.acl             ; 2 uses
  %i.acm = shl i64 %n.vec1127, 1
  %broadcast.splatinsert1128 = insertelement <4 x float> poison, float %30, i64 0
  %broadcast.splat1129 = shufflevector <4 x float> %broadcast.splatinsert1128, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1130 = insertelement <4 x float> poison, float %32, i64 0
  %broadcast.splat1131 = shufflevector <4 x float> %broadcast.splatinsert1130, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1132 = insertelement <4 x float> poison, float %i.ach, i64 0
  %broadcast.splat1133 = shufflevector <4 x float> %broadcast.splatinsert1132, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1134

vector.body1134:                                  ; preds = %vector.body1134, %vector.ph1126
  %index1135 = phi i64 [ 0, %vector.ph1126 ], [ %index.next1143, %vector.body1134 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 2, i64 4, i64 6>, %vector.ph1126 ], [ %vec.ind.next, %vector.body1134 ] ; 3 uses
  %.idx = mul i64 %index1135, 24
  %i.acn = getelementptr i8, ptr %invariant.gep, i64 %.idx
  %wide.vec = load <24 x float>, ptr %i.acn, align 4, !tbaa !79 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <4 x i32> <i32 0, i32 6, i32 12, i32 18>
  %strided.vec1136 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <4 x i32> <i32 1, i32 7, i32 13, i32 19>
  %strided.vec1137 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <4 x i32> <i32 2, i32 8, i32 14, i32 20>
  %i.aco = fmul <4 x float> %broadcast.splat1131, %strided.vec1136
  %i.acp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1129, <4 x float> %strided.vec, <4 x float> %i.aco)
  %i.acq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1133, <4 x float> %strided.vec1137, <4 x float> %i.acp)
  %i.acr = fpext <4 x float> %i.acq to <4 x double>
  %wide.gep = getelementptr inbounds nuw [8 x i8], ptr %.0627, <4 x i64> %vec.ind ; 2 uses
  %i.acs = extractelement <4 x ptr> %wide.gep, i64 0
  %wide.vec1138 = load <8 x double>, ptr %i.acs, align 8, !tbaa !76
  %strided.vec1139 = shufflevector <8 x double> %wide.vec1138, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.act = fadd <4 x double> %strided.vec1139, %i.acr
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.act, <4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !76
  %wide.gep1140 = getelementptr inbounds nuw [4 x i8], ptr %.0626, <4 x i64> %vec.ind ; 2 uses
  %i.acu = extractelement <4 x ptr> %wide.gep1140, i64 0
  %wide.vec1141 = load <8 x i32>, ptr %i.acu, align 4, !tbaa !9
  %strided.vec1142 = shufflevector <8 x i32> %wide.vec1141, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.acv = add nsw <4 x i32> %strided.vec1142, splat (i32 1)
  call void @llvm.masked.scatter.v4i32.v4p0(<4 x i32> %i.acv, <4 x ptr> align 4 %wide.gep1140, <4 x i1> splat (i1 true)), !tbaa !9
  %index.next1143 = add nuw i64 %index1135, 4     ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 8)
  %i.acw = icmp eq i64 %index.next1143, %n.vec1127
  br i1 %i.acw, label %scalar.ph1124.preheader, label %vector.body1134, !llvm.loop !88

scalar.ph1124.preheader:                          ; preds = %vector.body1134, %.preheader632
  %indvars.iv790.ph = phi i64 [ 0, %.preheader632 ], [ %i.acm, %vector.body1134 ]
  br label %scalar.ph1124

scalar.ph1124:                                    ; preds = %scalar.ph1124.preheader, %scalar.ph1124
  %indvars.iv790 = phi i64 [ %indvars.iv.next791, %scalar.ph1124 ], [ %indvars.iv790.ph, %scalar.ph1124.preheader ] ; 4 uses
  %gep = getelementptr [12 x i8], ptr %invariant.gep, i64 %indvars.iv790 ; 3 uses
  %i.acx = load float, ptr %gep, align 4, !tbaa !79
  %i.acy = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.acz = load float, ptr %i.acy, align 4, !tbaa !79
  %i.ada = fmul float %32, %i.acz
  %i.adb = call float @llvm.fmuladd.f32(float %30, float %i.acx, float %i.ada)
  %i.adc = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.add = load float, ptr %i.adc, align 4, !tbaa !79
  %i.ade = call noundef float @llvm.fmuladd.f32(float %i.ach, float %i.add, float %i.adb)
  %i.adf = fpext float %i.ade to double
  %i.adg = getelementptr inbounds nuw [8 x i8], ptr %.0627, i64 %indvars.iv790 ; 2 uses
  %i.adh = load double, ptr %i.adg, align 8, !tbaa !76
  %i.adi = fadd double %i.adh, %i.adf
  store double %i.adi, ptr %i.adg, align 8, !tbaa !76
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %.0626, i64 %indvars.iv790 ; 2 uses
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !9
  %i.adl = add nsw i32 %i.adk, 1
  store i32 %i.adl, ptr %i.adj, align 4, !tbaa !9
  %indvars.iv.next791 = add nuw nsw i64 %indvars.iv790, 2 ; 3 uses
  %i.adm = add nsw i64 %indvars.iv.next791, %indvars.iv793
  %i.adn = icmp slt i64 %i.adm, %i.qz
  %i.ado = icmp slt i64 %indvars.iv.next791, %i.qd
  %or.cond = and i1 %i.adn, %i.ado
  br i1 %or.cond, label %scalar.ph1124, label %..critedge_crit_edge, !llvm.loop !89

..critedge_crit_edge:                             ; preds = %scalar.ph1124
  %indvars.iv.next794 = add nsw i64 %indvars.iv793, 1 ; 2 uses
  %exitcond797.not = icmp eq i64 %indvars.iv.next794, %i.qz
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond797.not, label %.loopexit, label %.preheader632, !llvm.loop !90

.loopexit:                                        ; preds = %..critedge_crit_edge, %.preheader636, %.loopexit638
  %exitcond802.not = icmp eq i64 %indvars.iv.next799, %wide.trip.count801
  br i1 %exitcond802.not, label %._crit_edge697, label %.lr.ph696, !llvm.loop !91

._crit_edge697:                                   ; preds = %.loopexit, %.loopexit645
  %.sroa.13.1 = phi i32 [ %.sroa.13.0, %.loopexit645 ], [ %i.aba, %.loopexit ] ; 2 uses
  %.sroa.0.4 = phi double [ %.sroa.0.1, %.loopexit645 ], [ %.sroa.0.3, %.loopexit ] ; 2 uses
  %.sroa.8.4 = phi double [ %.sroa.8.1, %.loopexit645 ], [ %.sroa.8.3, %.loopexit ] ; 2 uses
  %.sroa.11.4 = phi double [ %.sroa.11.1, %.loopexit645 ], [ %.sroa.11.3, %.loopexit ] ; 2 uses
  %.0280.lcssa = phi double [ 0.000000e+00, %.loopexit645 ], [ %i.rr, %.loopexit ]
  %i.adp = load ptr, ptr %i.ov, align 8, !tbaa !72 ; 3 uses
  %i.adq = load <2 x double>, ptr %i.adp, align 8, !tbaa !76
  %i.adr = fdiv <2 x double> %i.adq, %22          ; 2 uses
  store <2 x double> %i.adr, ptr %i.adp, align 8, !tbaa !76
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adp, i64 16 ; 2 uses
  %i.adt = load double, ptr %i.ads, align 8, !tbaa !76
  %i.adu = fdiv double %i.adt, %i.pv
  store double %i.adu, ptr %i.ads, align 8, !tbaa !76
  %i.adv = extractelement <2 x double> %i.adr, i64 0
  %i.adw = fadd double %i.adv, 0.000000e+00
  %i.adx = load ptr, ptr %i.pd, align 8, !tbaa !72 ; 3 uses
  %i.ady = load <2 x double>, ptr %i.adx, align 8, !tbaa !76
  %i.adz = fdiv <2 x double> %i.ady, %22          ; 2 uses
  store <2 x double> %i.adz, ptr %i.adx, align 8, !tbaa !76
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adx, i64 16 ; 2 uses
  %i.aeb = load double, ptr %i.aea, align 8, !tbaa !76
  %i.aec = fdiv double %i.aeb, %i.pv
  store double %i.aec, ptr %i.aea, align 8, !tbaa !76
  %i.aed = extractelement <2 x double> %i.adz, i64 1
  %i.aee = fadd double %i.adw, %i.aed
  %i.aef = load ptr, ptr %i.pj, align 8, !tbaa !72 ; 3 uses
  %i.aeg = load <2 x double>, ptr %i.aef, align 8, !tbaa !76
  %i.aeh = fdiv <2 x double> %i.aeg, %22
  store <2 x double> %i.aeh, ptr %i.aef, align 8, !tbaa !76
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aef, i64 16 ; 2 uses
  %i.aej = load double, ptr %i.aei, align 8, !tbaa !76
  %i.aek = fdiv double %i.aej, %i.pv              ; 2 uses
  store double %i.aek, ptr %i.aei, align 8, !tbaa !76
  %i.ael = fadd double %i.aee, %i.aek             ; 2 uses
  %i.aem = fdiv double %.0280.lcssa, %i.pv        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  invoke void @_Z6jacobiPPdiS_S0_Pi(ptr noundef nonnull %i.ov, i32 noundef 3, ptr noundef nonnull %i.o, ptr noundef nonnull %i.ow, ptr noundef nonnull %i.a)
          to label %.noexc526 unwind label %.loopexit.split-lp.loopexit

.noexc526:                                        ; preds = %._crit_edge697
  %i.aen = load double, ptr %i.o, align 16, !tbaa !76 ; 2 uses
  %i.aeo = load double, ptr %i.pu, align 16, !tbaa !76 ; 3 uses
  %i.aep = fcmp olt double %i.aen, %i.aeo         ; 2 uses
  %.sroa.28.9 = select i1 %i.aep, i32 0, i32 2    ; 2 uses
  %i.aeq = load double, ptr %.027.1.i.sroa.gep, align 8, !tbaa !76 ; 2 uses
  %i.aer = fcmp ogt double %i.aeq, %i.aen         ; 4 uses
  %.sroa.0856.9 = zext i1 %i.aer to i32           ; 4 uses
  %i.aes = zext nneg i32 %.sroa.28.9 to i64
  %i.aet = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aes
  %i.aeu = load double, ptr %i.aet, align 16, !tbaa !76
  %i.aev = fcmp uge double %i.aeq, %i.aeu         ; 2 uses
  %.sroa.28.10 = select i1 %i.aev, i32 %.sroa.28.9, i32 1 ; 3 uses
  %.027.1.i.sroa.gep.val1094 = load double, ptr %.027.1.i.sroa.gep, align 8
  %.val1095 = load double, ptr %i.o, align 16
  %i.aew = select i1 %i.aer, double %.027.1.i.sroa.gep.val1094, double %.val1095
  %i.aex = fcmp ogt double %i.aeo, %i.aew
  %i.aey = zext nneg i32 %.sroa.28.10 to i64
  %i.aez = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aey
  %i.afa = load double, ptr %i.aez, align 8, !tbaa !76
  %i.afb = fcmp olt double %i.aeo, %i.afa         ; 2 uses
  br i1 %i.aex, label %.thread41.i523, label %bb.cn

bb.cn:                                            ; preds = %.noexc526
  br i1 %i.afb, label %.preheader.thread.i522, label %.preheader.i512

.thread41.i523:                                   ; preds = %.noexc526
  br i1 %i.afb, label %.thread.i514, label %.preheader.thread42.i524

.preheader.i512:                                  ; preds = %bb.cn
  br i1 %i.aer, label %.preheader.thread42.i524, label %.thread37.i516

.preheader.thread.i522:                           ; preds = %bb.cn
  br i1 %i.aer, label %.thread.i514, label %.thread37.thread.i518

.preheader.thread42.i524:                         ; preds = %.thread41.i523, %.preheader.i512
  %.sroa.0856.10 = phi i32 [ 2, %.thread41.i523 ], [ %.sroa.0856.9, %.preheader.i512 ]
  %i.afc = phi i32 [ 2, %.thread41.i523 ], [ 1, %.preheader.i512 ]
  %.not26.i513 = and i1 %i.aev, %i.aep            ; 2 uses
  %spec.select1202 = select i1 %.not26.i513, i32 %.sroa.13.1, i32 0
  %spec.select1203 = select i1 %.not26.i513, i32 0, i32 %.sroa.28.10
  br label %.thread.i514

.thread.i514:                                     ; preds = %.preheader.thread42.i524, %.preheader.thread.i522, %.thread41.i523
  %.sroa.13.2 = phi i32 [ %spec.select1202, %.preheader.thread42.i524 ], [ 0, %.thread41.i523 ], [ 0, %.preheader.thread.i522 ] ; 2 uses
  %.sroa.0856.12 = phi i32 [ %.sroa.0856.10, %.preheader.thread42.i524 ], [ %.sroa.0856.9, %.preheader.thread.i522 ], [ 2, %.thread41.i523 ] ; 2 uses
  %.sroa.28.12 = phi i32 [ %spec.select1203, %.preheader.thread42.i524 ], [ 2, %.preheader.thread.i522 ], [ 2, %.thread41.i523 ] ; 3 uses
  %i.afd = phi i32 [ %i.afc, %.preheader.thread42.i524 ], [ 1, %.preheader.thread.i522 ], [ 2, %.thread41.i523 ]
  %.not.1.i515 = icmp eq i32 %i.afd, 1
  br i1 %.not.1.i515, label %.thread39.i520, label %.thread37.i516

.thread37.i516:                                   ; preds = %.thread.i514, %.preheader.i512
  %.sroa.13.3 = phi i32 [ %.sroa.13.2, %.thread.i514 ], [ %.sroa.13.1, %.preheader.i512 ]
  %.sroa.0856.13 = phi i32 [ %.sroa.0856.12, %.thread.i514 ], [ %.sroa.0856.9, %.preheader.i512 ]
  %.sroa.28.13 = phi i32 [ %.sroa.28.12, %.thread.i514 ], [ %.sroa.28.10, %.preheader.i512 ] ; 3 uses
  %i.afe = phi i32 [ 2, %.thread.i514 ], [ 0, %.preheader.i512 ]
  %.not26.1.i517 = icmp eq i32 %.sroa.28.13, 1    ; 2 uses
  %spec.select1204 = select i1 %.not26.1.i517, i32 %.sroa.13.3, i32 1
  %spec.select1205 = select i1 %.not26.1.i517, i32 1, i32 %.sroa.28.13
  br label %.thread37.thread.i518

.thread37.thread.i518:                            ; preds = %.thread37.i516, %.preheader.thread.i522
  %.sroa.13.4 = phi i32 [ %spec.select1204, %.thread37.i516 ], [ 1, %.preheader.thread.i522 ] ; 2 uses
  %.sroa.0856.15 = phi i32 [ %.sroa.0856.13, %.thread37.i516 ], [ %.sroa.0856.9, %.preheader.thread.i522 ] ; 2 uses
  %.sroa.28.15 = phi i32 [ %.sroa.28.13, %.thread37.i516 ], [ 2, %.preheader.thread.i522 ] ; 2 uses
  %i.aff = phi i32 [ %i.afe, %.thread37.i516 ], [ 0, %.preheader.thread.i522 ]
  %i.afg = phi i32 [ %spec.select1205, %.thread37.i516 ], [ 2, %.preheader.thread.i522 ]
  %.not.2.i519 = icmp eq i32 %i.aff, 2
  br i1 %.not.2.i519, label %bb.co, label %.thread39.i520

.thread39.i520:                                   ; preds = %.thread37.thread.i518, %.thread.i514
  %.sroa.13.5 = phi i32 [ %.sroa.13.2, %.thread.i514 ], [ %.sroa.13.4, %.thread37.thread.i518 ]
  %.sroa.0856.16 = phi i32 [ %.sroa.0856.12, %.thread.i514 ], [ %.sroa.0856.15, %.thread37.thread.i518 ]
  %.sroa.28.16 = phi i32 [ %.sroa.28.12, %.thread.i514 ], [ %.sroa.28.15, %.thread37.thread.i518 ]
  %i.afh = phi i32 [ %.sroa.28.12, %.thread.i514 ], [ %i.afg, %.thread37.thread.i518 ]
  %.not26.2.i521 = icmp eq i32 %i.afh, 2
  %spec.select1201 = select i1 %.not26.2.i521, i32 %.sroa.13.5, i32 2
  br label %bb.co

bb.co:                                            ; preds = %.thread39.i520, %.thread37.thread.i518
  %.sroa.13.6 = phi i32 [ %spec.select1201, %.thread39.i520 ], [ %.sroa.13.4, %.thread37.thread.i518 ] ; 2 uses
  %.sroa.0856.17 = phi i32 [ %.sroa.0856.16, %.thread39.i520 ], [ %.sroa.0856.15, %.thread37.thread.i518 ]
  %.sroa.28.17 = phi i32 [ %.sroa.28.16, %.thread39.i520 ], [ %.sroa.28.15, %.thread37.thread.i518 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.afi = load float, ptr %i.k, align 4, !tbaa !79
  %i.afj = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.afk = invoke noundef float @_Z26output_env_get_time_factorPK16gmx_output_env_t(ptr noundef %i.afj)
          to label %bb.cp unwind label %.loopexit.split-lp.loopexit

bb.cp:                                            ; preds = %bb.co
  %i.afl = fmul float %i.afi, %i.afk
  %i.afm = fpext float %i.afl to double
  %i.afn = call double @sqrt(double noundef %i.aem) #18
  %i.afo = call double @sqrt(double noundef %i.ael) #18
  %i.afp = zext nneg i32 %.sroa.0856.17 to i64    ; 2 uses
  %i.afq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.afp
  %i.afr = load double, ptr %i.afq, align 8, !tbaa !76
  %i.afs = call double @sqrt(double noundef %i.afr) #18
  %i.aft = sext i32 %.sroa.13.6 to i64            ; 2 uses
  %i.afu = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.aft
  %i.afv = load double, ptr %i.afu, align 8, !tbaa !76
  %i.afw = call double @sqrt(double noundef %i.afv) #18
  %i.afx = zext nneg i32 %.sroa.28.17 to i64      ; 2 uses
  %i.afy = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.afx
  %i.afz = load double, ptr %i.afy, align 8, !tbaa !76
  %i.aga = call double @sqrt(double noundef %i.afz) #18
  %i.agb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fx, ptr noundef nonnull @.str.69, double noundef %i.afm, double noundef %i.afn, double noundef %i.afo, double noundef %i.afs, double noundef %i.afw, double noundef %i.aga) #18 ; 0 uses
  %i.agc = load i8, ptr @_ZZ12gmx_polystatiPPcE3bPC, align 1, !tbaa !64, !range !65, !noundef !66
  %i.agd = trunc nuw i8 %i.agc to i1
  br i1 %i.agd, label %.preheader641.preheader, label %.loopexit642

.preheader641.preheader:                          ; preds = %bb.cp
  %i.age = fdiv double %.sroa.0.4, %i.pv
  %i.agf = call double @sqrt(double noundef %i.age) #18
  %i.agg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fx, ptr noundef nonnull @.str.70, double noundef %i.agf) #18 ; 0 uses
  %i.agh = fdiv double %.sroa.8.4, %i.pv
  %i.agi = call double @sqrt(double noundef %i.agh) #18
  %i.agj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fx, ptr noundef nonnull @.str.70, double noundef %i.agi) #18 ; 0 uses
  %i.agk = fdiv double %.sroa.11.4, %i.pv
  %i.agl = call double @sqrt(double noundef %i.agk) #18
  %i.agm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fx, ptr noundef nonnull @.str.70, double noundef %i.agl) #18 ; 0 uses
  br label %.loopexit642

.loopexit642:                                     ; preds = %.preheader641.preheader, %bb.cp
  %fputc = call i32 @fputc(i32 10, ptr %i.fx)     ; 0 uses
  br i1 %.not345, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %.loopexit642
  %i.agn = load float, ptr %i.k, align 4, !tbaa !79
  %i.ago = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.agp = invoke noundef float @_Z26output_env_get_time_factorPK16gmx_output_env_t(ptr noundef %i.ago)
          to label %.preheader634 unwind label %.loopexit.split-lp.loopexit

.preheader634:                                    ; preds = %bb.cq
  %i.agq = fmul float %i.agn, %i.agp
  %i.agr = fpext float %i.agq to double
  %i.ags = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.72, double noundef %i.agr) #18 ; 0 uses
  %i.agt = getelementptr inbounds nuw [8 x i8], ptr %i.ow, i64 %i.afp ; 3 uses
  %i.agu = load ptr, ptr %i.agt, align 8, !tbaa !72
  %i.agv = load double, ptr %i.agu, align 8, !tbaa !76
  %i.agw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.agv) #18 ; 0 uses
  %i.agx = load ptr, ptr %i.agt, align 8, !tbaa !72
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 8
  %i.agz = load double, ptr %i.agy, align 8, !tbaa !76
  %i.aha = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.agz) #18 ; 0 uses
  %i.ahb = load ptr, ptr %i.agt, align 8, !tbaa !72
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 16
  %i.ahd = load double, ptr %i.ahc, align 8, !tbaa !76
  %i.ahe = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.ahd) #18 ; 0 uses
  %i.ahf = getelementptr inbounds [8 x i8], ptr %i.ow, i64 %i.aft ; 3 uses
  %i.ahg = load ptr, ptr %i.ahf, align 8, !tbaa !72
  %i.ahh = load double, ptr %i.ahg, align 8, !tbaa !76
  %i.ahi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.ahh) #18 ; 0 uses
  %i.ahj = load ptr, ptr %i.ahf, align 8, !tbaa !72
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.ahj, i64 8
  %i.ahl = load double, ptr %i.ahk, align 8, !tbaa !76
  %i.ahm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.ahl) #18 ; 0 uses
  %i.ahn = load ptr, ptr %i.ahf, align 8, !tbaa !72
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 16
  %i.ahp = load double, ptr %i.aho, align 8, !tbaa !76
  %i.ahq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.ahp) #18 ; 0 uses
  %i.ahr = getelementptr inbounds nuw [8 x i8], ptr %i.ow, i64 %i.afx ; 3 uses
  %i.ahs = load ptr, ptr %i.ahr, align 8, !tbaa !72
  %i.aht = load double, ptr %i.ahs, align 8, !tbaa !76
  %i.ahu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.aht) #18 ; 0 uses
  %i.ahv = load ptr, ptr %i.ahr, align 8, !tbaa !72
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 8
  %i.ahx = load double, ptr %i.ahw, align 8, !tbaa !76
  %i.ahy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.ahx) #18 ; 0 uses
  %i.ahz = load ptr, ptr %i.ahr, align 8, !tbaa !72
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 16
  %i.aib = load double, ptr %i.aia, align 8, !tbaa !76
  %i.aic = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.aib) #18 ; 0 uses
  %fputc346 = call i32 @fputc(i32 10, ptr nonnull %.0267) ; 0 uses
  br label %bb.cr

bb.cr:                                            ; preds = %.preheader634, %.loopexit642
  %i.aid = insertelement <2 x double> poison, double %i.aem, i64 0
  %i.aie = insertelement <2 x double> %i.aid, double %i.ael, i64 1
  %i.aif = fadd <2 x double> %i.qe, %i.aie        ; 2 uses
  br i1 %.not, label %bb.cx, label %.preheader640

.preheader640:                                    ; preds = %bb.cr
  br i1 %i.pw, label %.lr.ph707, label %._crit_edge708.thread

.lr.ph707:                                        ; preds = %.preheader640, %.lr.ph707.backedge
  %indvars.iv823 = phi i64 [ %indvars.iv823.be, %.lr.ph707.backedge ], [ 0, %.preheader640 ] ; 5 uses
  %.5304705 = phi i32 [ %.5304705.be, %.lr.ph707.backedge ], [ -1, %.preheader640 ] ; 2 uses
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %.0626, i64 %indvars.iv823
end_hunk_1
