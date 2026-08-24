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
  %.0296 = phi i32 [ 0, %.preheader647 ], [ %i.aju, %bb.cy ]
  %.0275 = phi double [ 0.000000e+00, %.preheader647 ], [ %.1276, %bb.cy ] ; 2 uses
  %i.qe = phi <2 x double> [ zeroinitializer, %.preheader647 ], [ %i.aie, %bb.cy ]
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
  %i.qm = phi i32 [ %i.aaz, %.loopexit ], [ %.sroa.13.0, %.loopexit645 ] ; 3 uses
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
  %i.rt = icmp sgt i32 %i.rs, 1
  br i1 %i.rt, label %.preheader.preheader.i, label %_ZL13calc_int_distPdPA3_fN3gmx8ArrayRefIKiEE.exit

.preheader.preheader.i:                           ; preds = %bb.cg
  %i.ru = zext nneg i32 %i.rs to i64
  %i.rv = sub i32 %i.qo, %i.qq
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i.loopexit, %.preheader.preheader.i
  %indvar1172 = phi i32 [ %indvar.next1173, %._crit_edge.i.loopexit ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i, %._crit_edge.i.loopexit ], [ 1, %.preheader.preheader.i ] ; 4 uses
  %indvars.iv29.in.i = phi i32 [ %indvars.iv29.i, %._crit_edge.i.loopexit ], [ %i.rs, %.preheader.preheader.i ]
  %indvars.iv29.i = add i32 %indvars.iv29.in.i, -1 ; 3 uses
  %wide.trip.count.i = zext i32 %indvars.iv29.i to i64 ; 2 uses
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv31.i ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.rw = add i32 %i.rv, %indvar1172
  %i.rx = icmp eq i32 %i.rw, -2
  br i1 %i.rx, label %.lr.ph.i.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 4 uses
  %.024.i = phi double [ 0.000000e+00, %.preheader.i.new ], [ %i.tn, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv.i
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !9
  %i.sa = sext i32 %i.rz to i64
  %i.sb = getelementptr inbounds [12 x i8], ptr %i.qr, i64 %i.sa ; 2 uses
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.sc = load i32, ptr %gep.i, align 4, !tbaa !9
  %i.sd = sext i32 %i.sc to i64
  %i.se = getelementptr inbounds [12 x i8], ptr %i.qr, i64 %i.sd ; 2 uses
  %i.sf = load <2 x float>, ptr %i.se, align 4, !tbaa !79
  %i.sg = load <2 x float>, ptr %i.sb, align 4, !tbaa !79
  %i.sh = fsub <2 x float> %i.sf, %i.sg           ; 2 uses
  %i.si = fmul <2 x float> %i.sh, %i.sh           ; 2 uses
  %shift1148 = shufflevector <2 x float> %i.si, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1149 = fadd <2 x float> %i.si, %shift1148
  %i.sj = extractelement <2 x float> %foldExtExtBinop1149, i64 0
  %i.sk = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !79
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !79
  %i.so = fsub float %i.sl, %i.sn                 ; 2 uses
  %i.sp = fmul float %i.so, %i.so
  %i.sq = fadd float %i.sj, %i.sp
  %i.sr = fpext float %i.sq to double
  %i.ss = fadd double %.024.i, %i.sr
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv.next.i
  %i.su = load i32, ptr %i.st, align 4, !tbaa !9
  %i.sv = sext i32 %i.su to i64
  %i.sw = getelementptr inbounds [12 x i8], ptr %i.qr, i64 %i.sv ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.sx = load i32, ptr %gep.i.1, align 4, !tbaa !9
  %i.sy = sext i32 %i.sx to i64
  %i.sz = getelementptr inbounds [12 x i8], ptr %i.qr, i64 %i.sy ; 2 uses
  %i.ta = load <2 x float>, ptr %i.sz, align 4, !tbaa !79
  %i.tb = load <2 x float>, ptr %i.sw, align 4, !tbaa !79
  %i.tc = fsub <2 x float> %i.ta, %i.tb           ; 2 uses
  %i.td = fmul <2 x float> %i.tc, %i.tc           ; 2 uses
  %shift1148.1 = shufflevector <2 x float> %i.td, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1149.1 = fadd <2 x float> %i.td, %shift1148.1
  %i.te = extractelement <2 x float> %foldExtExtBinop1149.1, i64 0
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !79
  %i.th = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  %i.ti = load float, ptr %i.th, align 4, !tbaa !79
  %i.tj = fsub float %i.tg, %i.ti                 ; 2 uses
  %i.tk = fmul float %i.tj, %i.tj
  %i.tl = fadd float %i.te, %i.tk
  %i.tm = fpext float %i.tl to double
  %i.tn = fadd double %i.ss, %i.tm                ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !80

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.024.i.epil.init = phi double [ 0.000000e+00, %.preheader.i ], [ %i.tn, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod1175 = trunc i32 %indvars.iv29.i to i1
  call void @llvm.assume(i1 %lcmp.mod1175)
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.qu, i64 %indvars.iv.i.epil.init
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !9
  %i.tq = sext i32 %i.tp to i64
  %i.tr = getelementptr inbounds [12 x i8], ptr %i.qr, i64 %i.tq ; 2 uses
  %gep.i.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil.init
  %i.ts = load i32, ptr %gep.i.epil, align 4, !tbaa !9
  %i.tt = sext i32 %i.ts to i64
  %i.tu = getelementptr inbounds [12 x i8], ptr %i.qr, i64 %i.tt ; 2 uses
  %i.tv = load <2 x float>, ptr %i.tu, align 4, !tbaa !79
  %i.tw = load <2 x float>, ptr %i.tr, align 4, !tbaa !79
  %i.tx = fsub <2 x float> %i.tv, %i.tw           ; 2 uses
  %i.ty = fmul <2 x float> %i.tx, %i.tx           ; 2 uses
  %shift1148.epil = shufflevector <2 x float> %i.ty, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1149.epil = fadd <2 x float> %i.ty, %shift1148.epil
  %i.tz = extractelement <2 x float> %foldExtExtBinop1149.epil, i64 0
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !79
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !79
  %i.ue = fsub float %i.ub, %i.ud                 ; 2 uses
  %i.uf = fmul float %i.ue, %i.ue
  %i.ug = fadd float %i.tz, %i.uf
  %i.uh = fpext float %i.ug to double
  %i.ui = fadd double %.024.i.epil.init, %i.uh
  br label %._crit_edge.i.loopexit

._crit_edge.i.loopexit:                           ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
end_hunk_0
begin_hunk_1_@_Z12gmx_polystatiPPc:._crit_edge.i.i
  %i.xi = load double, ptr %i.xe, align 8, !tbaa !76
  %i.xj = fadd double %i.xh, %i.xi
  store double %i.xj, ptr %i.xe, align 8, !tbaa !76
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wv, i64 8 ; 2 uses
  %i.xl = load double, ptr %i.xk, align 8, !tbaa !76
  %i.xm = fdiv double %i.xl, %.0269.lcssa
  %i.xn = call double @llvm.fmuladd.f64(double %i.xd, double %i.xa, double %i.xm) ; 2 uses
  store double %i.xn, ptr %i.xk, align 8, !tbaa !76
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xe, i64 8 ; 2 uses
  %i.xp = load double, ptr %i.xo, align 8, !tbaa !76
  %i.xq = fadd double %i.xn, %i.xp
  store double %i.xq, ptr %i.xo, align 8, !tbaa !76
  %i.xr = getelementptr inbounds nuw i8, ptr %i.wv, i64 16 ; 2 uses
  %i.xs = load double, ptr %i.xr, align 8, !tbaa !76
  %i.xt = fdiv double %i.xs, %.0269.lcssa
  %i.xu = call double @llvm.fmuladd.f64(double %i.xd, double %i.xc, double %i.xt) ; 2 uses
  store double %i.xu, ptr %i.xr, align 8, !tbaa !76
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xe, i64 16 ; 2 uses
  %i.xw = load double, ptr %i.xv, align 8, !tbaa !76
  %i.xx = fadd double %i.xu, %i.xw
  store double %i.xx, ptr %i.xv, align 8, !tbaa !76
  %i.xy = fneg double %i.xa                       ; 3 uses
  %i.xz = load ptr, ptr %i.pd, align 8, !tbaa !72 ; 4 uses
  %i.ya = load double, ptr %i.wu, align 8, !tbaa !76
  %i.yb = fdiv double %i.ya, %.0269.lcssa
  %i.yc = call double @llvm.fmuladd.f64(double %i.xy, double %i.wy, double %i.yb) ; 2 uses
  store double %i.yc, ptr %i.wu, align 8, !tbaa !76
  %i.yd = load double, ptr %i.xz, align 8, !tbaa !76
  %i.ye = fadd double %i.yc, %i.yd
  store double %i.ye, ptr %i.xz, align 8, !tbaa !76
  %i.yf = getelementptr inbounds nuw i8, ptr %i.wu, i64 8 ; 2 uses
  %i.yg = load double, ptr %i.yf, align 8, !tbaa !76
  %i.yh = fdiv double %i.yg, %.0269.lcssa
  %i.yi = call double @llvm.fmuladd.f64(double %i.xy, double %i.xa, double %i.yh) ; 2 uses
  store double %i.yi, ptr %i.yf, align 8, !tbaa !76
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xz, i64 8 ; 2 uses
  %i.yk = load double, ptr %i.yj, align 8, !tbaa !76
  %i.yl = fadd double %i.yi, %i.yk
  store double %i.yl, ptr %i.yj, align 8, !tbaa !76
  %i.ym = getelementptr inbounds nuw i8, ptr %i.wu, i64 16 ; 2 uses
  %i.yn = load double, ptr %i.ym, align 8, !tbaa !76
  %i.yo = fdiv double %i.yn, %.0269.lcssa
  %i.yp = call double @llvm.fmuladd.f64(double %i.xy, double %i.xc, double %i.yo) ; 2 uses
  store double %i.yp, ptr %i.ym, align 8, !tbaa !76
  %i.yq = getelementptr inbounds nuw i8, ptr %i.xz, i64 16 ; 2 uses
  %i.yr = load double, ptr %i.yq, align 8, !tbaa !76
  %i.ys = fadd double %i.yp, %i.yr
  store double %i.ys, ptr %i.yq, align 8, !tbaa !76
  %i.yt = fneg double %i.xc                       ; 3 uses
  %i.yu = load ptr, ptr %i.pj, align 8, !tbaa !72 ; 4 uses
  %i.yv = load double, ptr %i.wt, align 8, !tbaa !76
  %i.yw = fdiv double %i.yv, %.0269.lcssa
  %i.yx = call double @llvm.fmuladd.f64(double %i.yt, double %i.wy, double %i.yw) ; 2 uses
  store double %i.yx, ptr %i.wt, align 8, !tbaa !76
  %i.yy = load double, ptr %i.yu, align 8, !tbaa !76
  %i.yz = fadd double %i.yx, %i.yy
  store double %i.yz, ptr %i.yu, align 8, !tbaa !76
  %i.za = getelementptr inbounds nuw i8, ptr %i.wt, i64 8 ; 2 uses
  %i.zb = load double, ptr %i.za, align 8, !tbaa !76
  %i.zc = fdiv double %i.zb, %.0269.lcssa
  %i.zd = call double @llvm.fmuladd.f64(double %i.yt, double %i.xa, double %i.zc) ; 2 uses
  store double %i.zd, ptr %i.za, align 8, !tbaa !76
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yu, i64 8 ; 2 uses
  %i.zf = load double, ptr %i.ze, align 8, !tbaa !76
  %i.zg = fadd double %i.zd, %i.zf
  store double %i.zg, ptr %i.ze, align 8, !tbaa !76
  %i.zh = getelementptr inbounds nuw i8, ptr %i.wt, i64 16 ; 2 uses
  %i.zi = load double, ptr %i.zh, align 8, !tbaa !76
  %i.zj = fdiv double %i.zi, %.0269.lcssa
  %i.zk = call double @llvm.fmuladd.f64(double %i.yt, double %i.xc, double %i.zj) ; 2 uses
  store double %i.zk, ptr %i.zh, align 8, !tbaa !76
  %i.zl = getelementptr inbounds nuw i8, ptr %i.yu, i64 16 ; 2 uses
  %i.zm = load double, ptr %i.zl, align 8, !tbaa !76
  %i.zn = fadd double %i.zk, %i.zm
  store double %i.zn, ptr %i.zl, align 8, !tbaa !76
  %i.zo = load i8, ptr @_ZZ12gmx_polystatiPPcE3bPC, align 1, !tbaa !64, !range !65, !noundef !66
  %i.zp = trunc nuw i8 %i.zo to i1
  br i1 %i.zp, label %bb.ck, label %.loopexit638

bb.ck:                                            ; preds = %._crit_edge683
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  invoke void @_Z6jacobiPPdiS_S0_Pi(ptr noundef nonnull %i.ou, i32 noundef 3, ptr noundef nonnull %i.o, ptr noundef nonnull %i.ow, ptr noundef nonnull %i.b)
          to label %.noexc510 unwind label %.loopexit643

.noexc510:                                        ; preds = %bb.ck
  %i.zq = load double, ptr %i.o, align 16, !tbaa !76 ; 2 uses
  %i.zr = load double, ptr %i.pu, align 16, !tbaa !76 ; 3 uses
  %i.zs = fcmp olt double %i.zq, %i.zr            ; 2 uses
  %.sroa.28.0 = select i1 %i.zs, i32 0, i32 2     ; 2 uses
  %i.zt = load double, ptr %.027.1.i.sroa.gep, align 8, !tbaa !76 ; 2 uses
  %i.zu = fcmp ogt double %i.zt, %i.zq            ; 4 uses
  %.sroa.0856.0 = zext i1 %i.zu to i32            ; 4 uses
  %i.zv = zext nneg i32 %.sroa.28.0 to i64
  %i.zw = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.zv
  %i.zx = load double, ptr %i.zw, align 16, !tbaa !76
  %i.zy = fcmp uge double %i.zt, %i.zx            ; 2 uses
  %.sroa.28.1 = select i1 %i.zy, i32 %.sroa.28.0, i32 1 ; 3 uses
  %.027.1.i.sroa.gep.val = load double, ptr %.027.1.i.sroa.gep, align 8
  %.val = load double, ptr %i.o, align 16
  %i.zz = select i1 %i.zu, double %.027.1.i.sroa.gep.val, double %.val
  %i.aaa = fcmp ule double %i.zr, %i.zz           ; 2 uses
  %i.aab = zext nneg i32 %.sroa.28.1 to i64
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aab
  %i.aad = load double, ptr %i.aac, align 8, !tbaa !76
  %i.aae = fcmp olt double %i.zr, %i.aad          ; 2 uses
  br i1 %i.aaa, label %bb.cl, label %.thread41.i

bb.cl:                                            ; preds = %.noexc510
  br i1 %i.aae, label %.preheader.thread.i, label %.preheader.i509

.thread41.i:                                      ; preds = %.noexc510
  br i1 %i.aae, label %.thread.i, label %.preheader.thread42.i

.preheader.i509:                                  ; preds = %bb.cl
  br i1 %i.zu, label %.preheader.thread42.i, label %.thread37.i

.preheader.thread.i:                              ; preds = %bb.cl
  br i1 %i.zu, label %.thread.i, label %.thread37.thread.i

.preheader.thread42.i:                            ; preds = %.thread41.i, %.preheader.i509
  %.sroa.0856.1 = phi i32 [ 2, %.thread41.i ], [ %.sroa.0856.0, %.preheader.i509 ]
  %.not26.i = and i1 %i.zy, %i.zs                 ; 2 uses
  %spec.select1090 = select i1 %.not26.i, i32 %i.qm, i32 0
  %spec.select1091 = select i1 %.not26.i, i32 0, i32 %.sroa.28.1
  br label %.thread.i

.thread.i:                                        ; preds = %.preheader.thread42.i, %.preheader.thread.i, %.thread41.i
  %i.aaf = phi i32 [ %spec.select1090, %.preheader.thread42.i ], [ 0, %.thread41.i ], [ 0, %.preheader.thread.i ] ; 2 uses
  %.sroa.0856.3 = phi i32 [ %.sroa.0856.1, %.preheader.thread42.i ], [ 2, %.thread41.i ], [ %.sroa.0856.0, %.preheader.thread.i ] ; 2 uses
  %.sroa.28.3 = phi i32 [ %spec.select1091, %.preheader.thread42.i ], [ 2, %.thread41.i ], [ 2, %.preheader.thread.i ] ; 2 uses
  %.not.1.i = phi i1 [ %i.aaa, %.preheader.thread42.i ], [ false, %.thread41.i ], [ true, %.preheader.thread.i ]
  br i1 %.not.1.i, label %.thread39.i, label %.thread37.i

.thread37.i:                                      ; preds = %.thread.i, %.preheader.i509
  %i.aag = phi i32 [ %i.aaf, %.thread.i ], [ %i.qm, %.preheader.i509 ]
  %.sroa.0856.4 = phi i32 [ %.sroa.0856.3, %.thread.i ], [ %.sroa.0856.0, %.preheader.i509 ]
  %.sroa.28.4 = phi i32 [ %.sroa.28.3, %.thread.i ], [ %.sroa.28.1, %.preheader.i509 ] ; 2 uses
  %i.aah = phi i1 [ true, %.thread.i ], [ false, %.preheader.i509 ]
  %.not26.1.i = icmp eq i32 %.sroa.28.4, 1
  %spec.select1092 = select i1 %.not26.1.i, i32 %i.aag, i32 1
  br label %.thread37.thread.i

.thread37.thread.i:                               ; preds = %.thread37.i, %.preheader.thread.i
  %i.aai = phi i32 [ %spec.select1092, %.thread37.i ], [ 1, %.preheader.thread.i ] ; 2 uses
  %.sroa.0856.6 = phi i32 [ %.sroa.0856.4, %.thread37.i ], [ %.sroa.0856.0, %.preheader.thread.i ] ; 2 uses
  %.not.2.i = phi i1 [ %i.aah, %.thread37.i ], [ false, %.preheader.thread.i ]
  %i.aaj = phi i32 [ %.sroa.28.4, %.thread37.i ], [ 2, %.preheader.thread.i ] ; 2 uses
  br i1 %.not.2.i, label %_ZL10gyro_eigenPPdS_S0_Pi.exit, label %.thread39.i

.thread39.i:                                      ; preds = %.thread37.thread.i, %.thread.i
  %i.aak = phi i32 [ %i.aaf, %.thread.i ], [ %i.aai, %.thread37.thread.i ]
  %.sroa.0856.7 = phi i32 [ %.sroa.0856.3, %.thread.i ], [ %.sroa.0856.6, %.thread37.thread.i ]
  %i.aal = phi i32 [ %.sroa.28.3, %.thread.i ], [ %i.aaj, %.thread37.thread.i ] ; 2 uses
  %.not26.2.i = icmp eq i32 %i.aal, 2
  %spec.select = select i1 %.not26.2.i, i32 %i.aak, i32 2
  br label %_ZL10gyro_eigenPPdS_S0_Pi.exit

_ZL10gyro_eigenPPdS_S0_Pi.exit:                   ; preds = %.thread39.i, %.thread37.thread.i
  %i.aam = phi i32 [ %spec.select, %.thread39.i ], [ %i.aai, %.thread37.thread.i ] ; 2 uses
  %.sroa.0856.8 = phi i32 [ %.sroa.0856.7, %.thread39.i ], [ %.sroa.0856.6, %.thread37.thread.i ]
  %.sroa.28.8 = phi i32 [ %i.aal, %.thread39.i ], [ %i.aaj, %.thread37.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.aan = zext nneg i32 %.sroa.0856.8 to i64
  %i.aao = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aan
  %i.aap = load double, ptr %i.aao, align 8, !tbaa !76
  %i.aaq = fadd double %i.aap, %.sroa.0.2
  %i.aar = sext i32 %i.aam to i64
  %i.aas = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.aar
  %i.aat = load double, ptr %i.aas, align 8, !tbaa !76
  %i.aau = fadd double %i.aat, %.sroa.8.2
  %i.aav = zext nneg i32 %.sroa.28.8 to i64
  %i.aaw = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aav
  %i.aax = load double, ptr %i.aaw, align 8, !tbaa !76
  %i.aay = fadd double %i.aax, %.sroa.11.2
  br label %.loopexit638

.loopexit638:                                     ; preds = %_ZL10gyro_eigenPPdS_S0_Pi.exit, %._crit_edge683
  %i.aaz = phi i32 [ %i.aam, %_ZL10gyro_eigenPPdS_S0_Pi.exit ], [ %i.qm, %._crit_edge683 ] ; 2 uses
  %.sroa.0.3 = phi double [ %i.aaq, %_ZL10gyro_eigenPPdS_S0_Pi.exit ], [ %.sroa.0.2, %._crit_edge683 ] ; 2 uses
  %.sroa.8.3 = phi double [ %i.aau, %_ZL10gyro_eigenPPdS_S0_Pi.exit ], [ %.sroa.8.2, %._crit_edge683 ] ; 2 uses
  %.sroa.11.3 = phi double [ %i.aay, %_ZL10gyro_eigenPPdS_S0_Pi.exit ], [ %.sroa.11.2, %._crit_edge683 ] ; 2 uses
  br i1 %.not, label %.loopexit, label %.preheader637

.preheader637:                                    ; preds = %.loopexit638
  %i.aba = icmp slt i32 %i.qo, %i.qy
  br i1 %i.aba, label %.lr.ph689, label %.preheader636

.lr.ph689:                                        ; preds = %.preheader637
  %i.abb = load ptr, ptr %i.l, align 8, !tbaa !74 ; 2 uses
  %i.abc = load ptr, ptr %i.h, align 8, !tbaa !78 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %i.abc, i64 %i.qt
  %.pre876 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !9
  br label %bb.cm

.preheader636:                                    ; preds = %bb.cm, %.preheader637
  %i.abd = icmp sge i32 %i.qo, %i.qy
  %brmerge725 = or i1 %i.abd, %i.ps
  br i1 %brmerge725, label %.loopexit, label %.preheader632.preheader

.preheader632.preheader:                          ; preds = %.preheader636
  %25 = xor i64 %i.qt, -1
  %26 = add nsw i64 %i.qt, 2
  br label %.preheader632

bb.cm:                                            ; preds = %.lr.ph689, %bb.cm
  %i.abe = phi i32 [ %.pre876, %.lr.ph689 ], [ %i.abg, %bb.cm ]
  %indvars.iv785 = phi i64 [ %i.qt, %.lr.ph689 ], [ %indvars.iv.next786, %bb.cm ] ; 2 uses
  %indvars.iv.next786 = add nsw i64 %indvars.iv785, 1 ; 3 uses
  %i.abf = getelementptr inbounds [4 x i8], ptr %i.abc, i64 %indvars.iv.next786
  %i.abg = load i32, ptr %i.abf, align 4, !tbaa !9 ; 2 uses
  %i.abh = sext i32 %i.abg to i64
  %i.abi = getelementptr inbounds [12 x i8], ptr %i.abb, i64 %i.abh ; 2 uses
  %i.abj = sext i32 %i.abe to i64
  %i.abk = getelementptr inbounds [12 x i8], ptr %i.abb, i64 %i.abj ; 2 uses
  %i.abl = sub nsw i64 %indvars.iv785, %i.qt
  %i.abm = getelementptr inbounds [12 x i8], ptr %.0625, i64 %i.abl ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abi, i64 8
  %i.abo = load float, ptr %i.abn, align 4, !tbaa !79
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abk, i64 8
  %i.abq = load float, ptr %i.abp, align 4, !tbaa !79
  %i.abr = fsub float %i.abo, %i.abq              ; 3 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  %i.abt = load <2 x float>, ptr %i.abi, align 4, !tbaa !79
  %i.abu = load <2 x float>, ptr %i.abk, align 4, !tbaa !79
  %i.abv = fsub <2 x float> %i.abt, %i.abu        ; 4 uses
  %foldExtExtBinop1151 = fmul <2 x float> %i.abv, %i.abv
  %i.abw = extractelement <2 x float> %foldExtExtBinop1151, i64 1
  %i.abx = extractelement <2 x float> %i.abv, i64 0 ; 2 uses
  %i.aby = call float @llvm.fmuladd.f32(float %i.abx, float %i.abx, float %i.abw)
  %i.abz = call noundef float @llvm.fmuladd.f32(float %i.abr, float %i.abr, float %i.aby)
  %sqrt.i = call float @llvm.sqrt.f32(float %i.abz)
  %i.aca = fdiv float 1.000000e+00, %sqrt.i       ; 2 uses
  %i.acb = insertelement <2 x float> poison, float %i.aca, i64 0
  %i.acc = shufflevector <2 x float> %i.acb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acd = fmul <2 x float> %i.abv, %i.acc
  store <2 x float> %i.acd, ptr %i.abm, align 4, !tbaa !79
  %i.ace = fmul float %i.abr, %i.aca
  store float %i.ace, ptr %i.abs, align 4, !tbaa !79
  %exitcond789.not = icmp eq i64 %indvars.iv.next786, %i.qz
  br i1 %exitcond789.not, label %.preheader636, label %bb.cm

.preheader632:                                    ; preds = %.preheader632.preheader, %..critedge_crit_edge
  %indvar = phi i64 [ 0, %.preheader632.preheader ], [ %indvar.next, %..critedge_crit_edge ] ; 3 uses
  %indvars.iv793 = phi i64 [ %i.qt, %.preheader632.preheader ], [ %indvars.iv.next794, %..critedge_crit_edge ] ; 3 uses
  %27 = sub i64 %25, %indvar
  %28 = add i64 %26, %indvar
  %i.acf = sub nsw i64 %indvars.iv793, %i.qt      ; 2 uses
  %29 = getelementptr inbounds [12 x i8], ptr %.0625, i64 %i.acf ; 3 uses
  %30 = load float, ptr %29, align 4, !tbaa !79   ; 2 uses
  %31 = getelementptr inbounds nuw i8, ptr %29, i64 4
  %32 = load float, ptr %31, align 4, !tbaa !79   ; 2 uses
  %33 = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.acg = load float, ptr %33, align 4, !tbaa !79 ; 2 uses
  %invariant.gep = getelementptr [12 x i8], ptr %.0625, i64 %i.acf ; 2 uses
  %34 = call i64 @llvm.smax.i64(i64 %28, i64 %i.qz)
  %35 = add i64 %34, %27
  %36 = lshr i64 %35, 1
  %37 = call i64 @llvm.umin.i64(i64 %24, i64 %36) ; 2 uses
  %min.iters.check1125 = icmp samesign ult i64 %37, 4
  br i1 %min.iters.check1125, label %scalar.ph1124.preheader, label %vector.ph1126

vector.ph1126:                                    ; preds = %.preheader632
  %i.ach = add nuw i64 %37, 1                     ; 2 uses
  %i.aci = and i64 %i.ach, 3                      ; 2 uses
  %i.acj = icmp eq i64 %i.aci, 0
  %i.ack = select i1 %i.acj, i64 4, i64 %i.aci
  %n.vec1127 = sub i64 %i.ach, %i.ack             ; 2 uses
  %i.acl = shl i64 %n.vec1127, 1
  %broadcast.splatinsert1128 = insertelement <4 x float> poison, float %30, i64 0
  %broadcast.splat1129 = shufflevector <4 x float> %broadcast.splatinsert1128, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1130 = insertelement <4 x float> poison, float %32, i64 0
  %broadcast.splat1131 = shufflevector <4 x float> %broadcast.splatinsert1130, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1132 = insertelement <4 x float> poison, float %i.acg, i64 0
  %broadcast.splat1133 = shufflevector <4 x float> %broadcast.splatinsert1132, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1134

vector.body1134:                                  ; preds = %vector.body1134, %vector.ph1126
  %index1135 = phi i64 [ 0, %vector.ph1126 ], [ %index.next1143, %vector.body1134 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 2, i64 4, i64 6>, %vector.ph1126 ], [ %vec.ind.next, %vector.body1134 ] ; 3 uses
  %.idx = mul i64 %index1135, 24
  %i.acm = getelementptr i8, ptr %invariant.gep, i64 %.idx
  %wide.vec = load <24 x float>, ptr %i.acm, align 4, !tbaa !79 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <4 x i32> <i32 0, i32 6, i32 12, i32 18>
  %strided.vec1136 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <4 x i32> <i32 1, i32 7, i32 13, i32 19>
  %strided.vec1137 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <4 x i32> <i32 2, i32 8, i32 14, i32 20>
  %i.acn = fmul <4 x float> %broadcast.splat1131, %strided.vec1136
  %i.aco = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1129, <4 x float> %strided.vec, <4 x float> %i.acn)
  %i.acp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1133, <4 x float> %strided.vec1137, <4 x float> %i.aco)
  %i.acq = fpext <4 x float> %i.acp to <4 x double>
  %wide.gep = getelementptr inbounds nuw [8 x i8], ptr %.0627, <4 x i64> %vec.ind ; 2 uses
  %i.acr = extractelement <4 x ptr> %wide.gep, i64 0
  %wide.vec1138 = load <8 x double>, ptr %i.acr, align 8, !tbaa !76
  %strided.vec1139 = shufflevector <8 x double> %wide.vec1138, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.acs = fadd <4 x double> %strided.vec1139, %i.acq
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.acs, <4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !76
  %wide.gep1140 = getelementptr inbounds nuw [4 x i8], ptr %.0626, <4 x i64> %vec.ind ; 2 uses
  %i.act = extractelement <4 x ptr> %wide.gep1140, i64 0
  %wide.vec1141 = load <8 x i32>, ptr %i.act, align 4, !tbaa !9
  %strided.vec1142 = shufflevector <8 x i32> %wide.vec1141, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.acu = add nsw <4 x i32> %strided.vec1142, splat (i32 1)
  call void @llvm.masked.scatter.v4i32.v4p0(<4 x i32> %i.acu, <4 x ptr> align 4 %wide.gep1140, <4 x i1> splat (i1 true)), !tbaa !9
  %index.next1143 = add nuw i64 %index1135, 4     ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 8)
  %i.acv = icmp eq i64 %index.next1143, %n.vec1127
  br i1 %i.acv, label %scalar.ph1124.preheader, label %vector.body1134, !llvm.loop !88

scalar.ph1124.preheader:                          ; preds = %vector.body1134, %.preheader632
  %indvars.iv790.ph = phi i64 [ 0, %.preheader632 ], [ %i.acl, %vector.body1134 ]
  br label %scalar.ph1124

scalar.ph1124:                                    ; preds = %scalar.ph1124.preheader, %scalar.ph1124
  %indvars.iv790 = phi i64 [ %indvars.iv.next791, %scalar.ph1124 ], [ %indvars.iv790.ph, %scalar.ph1124.preheader ] ; 4 uses
  %gep = getelementptr [12 x i8], ptr %invariant.gep, i64 %indvars.iv790 ; 3 uses
  %i.acw = load float, ptr %gep, align 4, !tbaa !79
  %i.acx = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.acy = load float, ptr %i.acx, align 4, !tbaa !79
  %i.acz = fmul float %32, %i.acy
  %i.ada = call float @llvm.fmuladd.f32(float %30, float %i.acw, float %i.acz)
  %i.adb = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.adc = load float, ptr %i.adb, align 4, !tbaa !79
  %i.add = call noundef float @llvm.fmuladd.f32(float %i.acg, float %i.adc, float %i.ada)
  %i.ade = fpext float %i.add to double
  %i.adf = getelementptr inbounds nuw [8 x i8], ptr %.0627, i64 %indvars.iv790 ; 2 uses
  %i.adg = load double, ptr %i.adf, align 8, !tbaa !76
  %i.adh = fadd double %i.adg, %i.ade
  store double %i.adh, ptr %i.adf, align 8, !tbaa !76
  %i.adi = getelementptr inbounds nuw [4 x i8], ptr %.0626, i64 %indvars.iv790 ; 2 uses
  %i.adj = load i32, ptr %i.adi, align 4, !tbaa !9
  %i.adk = add nsw i32 %i.adj, 1
  store i32 %i.adk, ptr %i.adi, align 4, !tbaa !9
  %indvars.iv.next791 = add nuw nsw i64 %indvars.iv790, 2 ; 3 uses
  %i.adl = add nsw i64 %indvars.iv.next791, %indvars.iv793
  %i.adm = icmp slt i64 %i.adl, %i.qz
  %i.adn = icmp slt i64 %indvars.iv.next791, %i.qd
  %or.cond = and i1 %i.adm, %i.adn
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
  %.sroa.13.1 = phi i32 [ %.sroa.13.0, %.loopexit645 ], [ %i.aaz, %.loopexit ] ; 2 uses
  %.sroa.0.4 = phi double [ %.sroa.0.1, %.loopexit645 ], [ %.sroa.0.3, %.loopexit ] ; 2 uses
  %.sroa.8.4 = phi double [ %.sroa.8.1, %.loopexit645 ], [ %.sroa.8.3, %.loopexit ] ; 2 uses
  %.sroa.11.4 = phi double [ %.sroa.11.1, %.loopexit645 ], [ %.sroa.11.3, %.loopexit ] ; 2 uses
  %.0280.lcssa = phi double [ 0.000000e+00, %.loopexit645 ], [ %i.rr, %.loopexit ]
  %i.ado = load ptr, ptr %i.ov, align 8, !tbaa !72 ; 3 uses
  %i.adp = load <2 x double>, ptr %i.ado, align 8, !tbaa !76
  %i.adq = fdiv <2 x double> %i.adp, %22          ; 2 uses
  store <2 x double> %i.adq, ptr %i.ado, align 8, !tbaa !76
  %i.adr = getelementptr inbounds nuw i8, ptr %i.ado, i64 16 ; 2 uses
  %i.ads = load double, ptr %i.adr, align 8, !tbaa !76
  %i.adt = fdiv double %i.ads, %i.pv
  store double %i.adt, ptr %i.adr, align 8, !tbaa !76
  %i.adu = extractelement <2 x double> %i.adq, i64 0
  %i.adv = fadd double %i.adu, 0.000000e+00
  %i.adw = load ptr, ptr %i.pd, align 8, !tbaa !72 ; 3 uses
  %i.adx = load <2 x double>, ptr %i.adw, align 8, !tbaa !76
  %i.ady = fdiv <2 x double> %i.adx, %22          ; 2 uses
  store <2 x double> %i.ady, ptr %i.adw, align 8, !tbaa !76
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adw, i64 16 ; 2 uses
  %i.aea = load double, ptr %i.adz, align 8, !tbaa !76
  %i.aeb = fdiv double %i.aea, %i.pv
  store double %i.aeb, ptr %i.adz, align 8, !tbaa !76
  %i.aec = extractelement <2 x double> %i.ady, i64 1
  %i.aed = fadd double %i.adv, %i.aec
  %i.aee = load ptr, ptr %i.pj, align 8, !tbaa !72 ; 3 uses
  %i.aef = load <2 x double>, ptr %i.aee, align 8, !tbaa !76
  %i.aeg = fdiv <2 x double> %i.aef, %22
  store <2 x double> %i.aeg, ptr %i.aee, align 8, !tbaa !76
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aee, i64 16 ; 2 uses
  %i.aei = load double, ptr %i.aeh, align 8, !tbaa !76
  %i.aej = fdiv double %i.aei, %i.pv              ; 2 uses
  store double %i.aej, ptr %i.aeh, align 8, !tbaa !76
  %i.aek = fadd double %i.aed, %i.aej             ; 2 uses
  %i.ael = fdiv double %.0280.lcssa, %i.pv        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  invoke void @_Z6jacobiPPdiS_S0_Pi(ptr noundef nonnull %i.ov, i32 noundef 3, ptr noundef nonnull %i.o, ptr noundef nonnull %i.ow, ptr noundef nonnull %i.a)
          to label %.noexc526 unwind label %.loopexit.split-lp.loopexit

.noexc526:                                        ; preds = %._crit_edge697
  %i.aem = load double, ptr %i.o, align 16, !tbaa !76 ; 2 uses
  %i.aen = load double, ptr %i.pu, align 16, !tbaa !76 ; 3 uses
  %i.aeo = fcmp olt double %i.aem, %i.aen         ; 2 uses
  %.sroa.28.9 = select i1 %i.aeo, i32 0, i32 2    ; 2 uses
  %i.aep = load double, ptr %.027.1.i.sroa.gep, align 8, !tbaa !76 ; 2 uses
  %i.aeq = fcmp ogt double %i.aep, %i.aem         ; 4 uses
  %.sroa.0856.9 = zext i1 %i.aeq to i32           ; 4 uses
  %i.aer = zext nneg i32 %.sroa.28.9 to i64
  %i.aes = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aer
  %i.aet = load double, ptr %i.aes, align 16, !tbaa !76
  %i.aeu = fcmp uge double %i.aep, %i.aet         ; 2 uses
  %.sroa.28.10 = select i1 %i.aeu, i32 %.sroa.28.9, i32 1 ; 3 uses
  %.027.1.i.sroa.gep.val1094 = load double, ptr %.027.1.i.sroa.gep, align 8
  %.val1095 = load double, ptr %i.o, align 16
  %i.aev = select i1 %i.aeq, double %.027.1.i.sroa.gep.val1094, double %.val1095
  %i.aew = fcmp ogt double %i.aen, %i.aev
  %i.aex = zext nneg i32 %.sroa.28.10 to i64
  %i.aey = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aex
  %i.aez = load double, ptr %i.aey, align 8, !tbaa !76
  %i.afa = fcmp olt double %i.aen, %i.aez         ; 2 uses
  br i1 %i.aew, label %.thread41.i523, label %bb.cn

bb.cn:                                            ; preds = %.noexc526
  br i1 %i.afa, label %.preheader.thread.i522, label %.preheader.i512

.thread41.i523:                                   ; preds = %.noexc526
  br i1 %i.afa, label %.thread.i514, label %.preheader.thread42.i524

.preheader.i512:                                  ; preds = %bb.cn
  br i1 %i.aeq, label %.preheader.thread42.i524, label %.thread37.i516

.preheader.thread.i522:                           ; preds = %bb.cn
  br i1 %i.aeq, label %.thread.i514, label %.thread37.thread.i518

.preheader.thread42.i524:                         ; preds = %.thread41.i523, %.preheader.i512
  %.sroa.0856.10 = phi i32 [ 2, %.thread41.i523 ], [ %.sroa.0856.9, %.preheader.i512 ]
  %i.afb = phi i32 [ 2, %.thread41.i523 ], [ 1, %.preheader.i512 ]
  %.not26.i513 = and i1 %i.aeu, %i.aeo            ; 2 uses
  %spec.select1202 = select i1 %.not26.i513, i32 %.sroa.13.1, i32 0
  %spec.select1203 = select i1 %.not26.i513, i32 0, i32 %.sroa.28.10
  br label %.thread.i514

.thread.i514:                                     ; preds = %.preheader.thread42.i524, %.preheader.thread.i522, %.thread41.i523
  %.sroa.13.2 = phi i32 [ %spec.select1202, %.preheader.thread42.i524 ], [ 0, %.thread41.i523 ], [ 0, %.preheader.thread.i522 ] ; 2 uses
  %.sroa.0856.12 = phi i32 [ %.sroa.0856.10, %.preheader.thread42.i524 ], [ %.sroa.0856.9, %.preheader.thread.i522 ], [ 2, %.thread41.i523 ] ; 2 uses
  %.sroa.28.12 = phi i32 [ %spec.select1203, %.preheader.thread42.i524 ], [ 2, %.preheader.thread.i522 ], [ 2, %.thread41.i523 ] ; 3 uses
  %i.afc = phi i32 [ %i.afb, %.preheader.thread42.i524 ], [ 1, %.preheader.thread.i522 ], [ 2, %.thread41.i523 ]
  %.not.1.i515 = icmp eq i32 %i.afc, 1
  br i1 %.not.1.i515, label %.thread39.i520, label %.thread37.i516

.thread37.i516:                                   ; preds = %.thread.i514, %.preheader.i512
  %.sroa.13.3 = phi i32 [ %.sroa.13.2, %.thread.i514 ], [ %.sroa.13.1, %.preheader.i512 ]
  %.sroa.0856.13 = phi i32 [ %.sroa.0856.12, %.thread.i514 ], [ %.sroa.0856.9, %.preheader.i512 ]
  %.sroa.28.13 = phi i32 [ %.sroa.28.12, %.thread.i514 ], [ %.sroa.28.10, %.preheader.i512 ] ; 3 uses
  %i.afd = phi i32 [ 2, %.thread.i514 ], [ 0, %.preheader.i512 ]
  %.not26.1.i517 = icmp eq i32 %.sroa.28.13, 1    ; 2 uses
  %spec.select1204 = select i1 %.not26.1.i517, i32 %.sroa.13.3, i32 1
  %spec.select1205 = select i1 %.not26.1.i517, i32 1, i32 %.sroa.28.13
  br label %.thread37.thread.i518

.thread37.thread.i518:                            ; preds = %.thread37.i516, %.preheader.thread.i522
  %.sroa.13.4 = phi i32 [ %spec.select1204, %.thread37.i516 ], [ 1, %.preheader.thread.i522 ] ; 2 uses
  %.sroa.0856.15 = phi i32 [ %.sroa.0856.13, %.thread37.i516 ], [ %.sroa.0856.9, %.preheader.thread.i522 ] ; 2 uses
  %.sroa.28.15 = phi i32 [ %.sroa.28.13, %.thread37.i516 ], [ 2, %.preheader.thread.i522 ] ; 2 uses
  %i.afe = phi i32 [ %i.afd, %.thread37.i516 ], [ 0, %.preheader.thread.i522 ]
  %i.aff = phi i32 [ %spec.select1205, %.thread37.i516 ], [ 2, %.preheader.thread.i522 ]
  %.not.2.i519 = icmp eq i32 %i.afe, 2
  br i1 %.not.2.i519, label %bb.co, label %.thread39.i520

.thread39.i520:                                   ; preds = %.thread37.thread.i518, %.thread.i514
  %.sroa.13.5 = phi i32 [ %.sroa.13.2, %.thread.i514 ], [ %.sroa.13.4, %.thread37.thread.i518 ]
  %.sroa.0856.16 = phi i32 [ %.sroa.0856.12, %.thread.i514 ], [ %.sroa.0856.15, %.thread37.thread.i518 ]
  %.sroa.28.16 = phi i32 [ %.sroa.28.12, %.thread.i514 ], [ %.sroa.28.15, %.thread37.thread.i518 ]
  %i.afg = phi i32 [ %.sroa.28.12, %.thread.i514 ], [ %i.aff, %.thread37.thread.i518 ]
  %.not26.2.i521 = icmp eq i32 %i.afg, 2
  %spec.select1201 = select i1 %.not26.2.i521, i32 %.sroa.13.5, i32 2
  br label %bb.co

bb.co:                                            ; preds = %.thread39.i520, %.thread37.thread.i518
  %.sroa.13.6 = phi i32 [ %spec.select1201, %.thread39.i520 ], [ %.sroa.13.4, %.thread37.thread.i518 ] ; 2 uses
  %.sroa.0856.17 = phi i32 [ %.sroa.0856.16, %.thread39.i520 ], [ %.sroa.0856.15, %.thread37.thread.i518 ]
  %.sroa.28.17 = phi i32 [ %.sroa.28.16, %.thread39.i520 ], [ %.sroa.28.15, %.thread37.thread.i518 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.afh = load float, ptr %i.k, align 4, !tbaa !79
  %i.afi = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.afj = invoke noundef float @_Z26output_env_get_time_factorPK16gmx_output_env_t(ptr noundef %i.afi)
          to label %bb.cp unwind label %.loopexit.split-lp.loopexit

bb.cp:                                            ; preds = %bb.co
  %i.afk = fmul float %i.afh, %i.afj
  %i.afl = fpext float %i.afk to double
  %i.afm = call double @sqrt(double noundef %i.ael) #18
  %i.afn = call double @sqrt(double noundef %i.aek) #18
  %i.afo = zext nneg i32 %.sroa.0856.17 to i64    ; 2 uses
  %i.afp = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.afo
  %i.afq = load double, ptr %i.afp, align 8, !tbaa !76
  %i.afr = call double @sqrt(double noundef %i.afq) #18
  %i.afs = sext i32 %.sroa.13.6 to i64            ; 2 uses
  %i.aft = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.afs
  %i.afu = load double, ptr %i.aft, align 8, !tbaa !76
  %i.afv = call double @sqrt(double noundef %i.afu) #18
  %i.afw = zext nneg i32 %.sroa.28.17 to i64      ; 2 uses
  %i.afx = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.afw
  %i.afy = load double, ptr %i.afx, align 8, !tbaa !76
  %i.afz = call double @sqrt(double noundef %i.afy) #18
  %i.aga = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fx, ptr noundef nonnull @.str.69, double noundef %i.afl, double noundef %i.afm, double noundef %i.afn, double noundef %i.afr, double noundef %i.afv, double noundef %i.afz) #18 ; 0 uses
  %i.agb = load i8, ptr @_ZZ12gmx_polystatiPPcE3bPC, align 1, !tbaa !64, !range !65, !noundef !66
  %i.agc = trunc nuw i8 %i.agb to i1
  br i1 %i.agc, label %.preheader641.preheader, label %.loopexit642

.preheader641.preheader:                          ; preds = %bb.cp
  %i.agd = fdiv double %.sroa.0.4, %i.pv
  %i.age = call double @sqrt(double noundef %i.agd) #18
  %i.agf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fx, ptr noundef nonnull @.str.70, double noundef %i.age) #18 ; 0 uses
  %i.agg = fdiv double %.sroa.8.4, %i.pv
  %i.agh = call double @sqrt(double noundef %i.agg) #18
  %i.agi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fx, ptr noundef nonnull @.str.70, double noundef %i.agh) #18 ; 0 uses
  %i.agj = fdiv double %.sroa.11.4, %i.pv
  %i.agk = call double @sqrt(double noundef %i.agj) #18
  %i.agl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fx, ptr noundef nonnull @.str.70, double noundef %i.agk) #18 ; 0 uses
  br label %.loopexit642

.loopexit642:                                     ; preds = %.preheader641.preheader, %bb.cp
  %fputc = call i32 @fputc(i32 10, ptr %i.fx)     ; 0 uses
  br i1 %.not345, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %.loopexit642
  %i.agm = load float, ptr %i.k, align 4, !tbaa !79
  %i.agn = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.ago = invoke noundef float @_Z26output_env_get_time_factorPK16gmx_output_env_t(ptr noundef %i.agn)
          to label %.preheader634 unwind label %.loopexit.split-lp.loopexit

.preheader634:                                    ; preds = %bb.cq
  %i.agp = fmul float %i.agm, %i.ago
  %i.agq = fpext float %i.agp to double
  %i.agr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.72, double noundef %i.agq) #18 ; 0 uses
  %i.ags = getelementptr inbounds nuw [8 x i8], ptr %i.ow, i64 %i.afo ; 3 uses
  %i.agt = load ptr, ptr %i.ags, align 8, !tbaa !72
  %i.agu = load double, ptr %i.agt, align 8, !tbaa !76
  %i.agv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.agu) #18 ; 0 uses
  %i.agw = load ptr, ptr %i.ags, align 8, !tbaa !72
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 8
  %i.agy = load double, ptr %i.agx, align 8, !tbaa !76
  %i.agz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.agy) #18 ; 0 uses
  %i.aha = load ptr, ptr %i.ags, align 8, !tbaa !72
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.aha, i64 16
  %i.ahc = load double, ptr %i.ahb, align 8, !tbaa !76
  %i.ahd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.ahc) #18 ; 0 uses
  %i.ahe = getelementptr inbounds [8 x i8], ptr %i.ow, i64 %i.afs ; 3 uses
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !72
  %i.ahg = load double, ptr %i.ahf, align 8, !tbaa !76
  %i.ahh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.ahg) #18 ; 0 uses
  %i.ahi = load ptr, ptr %i.ahe, align 8, !tbaa !72
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 8
  %i.ahk = load double, ptr %i.ahj, align 8, !tbaa !76
  %i.ahl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.ahk) #18 ; 0 uses
  %i.ahm = load ptr, ptr %i.ahe, align 8, !tbaa !72
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 16
  %i.aho = load double, ptr %i.ahn, align 8, !tbaa !76
  %i.ahp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.aho) #18 ; 0 uses
  %i.ahq = getelementptr inbounds nuw [8 x i8], ptr %i.ow, i64 %i.afw ; 3 uses
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !72
  %i.ahs = load double, ptr %i.ahr, align 8, !tbaa !76
  %i.aht = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.ahs) #18 ; 0 uses
  %i.ahu = load ptr, ptr %i.ahq, align 8, !tbaa !72
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 8
  %i.ahw = load double, ptr %i.ahv, align 8, !tbaa !76
  %i.ahx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.ahw) #18 ; 0 uses
  %i.ahy = load ptr, ptr %i.ahq, align 8, !tbaa !72
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 16
  %i.aia = load double, ptr %i.ahz, align 8, !tbaa !76
  %i.aib = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.0267, ptr noundef nonnull @.str.73, double noundef %i.aia) #18 ; 0 uses
  %fputc346 = call i32 @fputc(i32 10, ptr nonnull %.0267) ; 0 uses
  br label %bb.cr

bb.cr:                                            ; preds = %.preheader634, %.loopexit642
  %i.aic = insertelement <2 x double> poison, double %i.ael, i64 0
  %i.aid = insertelement <2 x double> %i.aic, double %i.aek, i64 1
  %i.aie = fadd <2 x double> %i.qe, %i.aid        ; 2 uses
  br i1 %.not, label %bb.cx, label %.preheader640

.preheader640:                                    ; preds = %bb.cr
  br i1 %i.pw, label %.lr.ph707, label %._crit_edge708.thread

.lr.ph707:                                        ; preds = %.preheader640, %.lr.ph707.backedge
  %indvars.iv823 = phi i64 [ %indvars.iv823.be, %.lr.ph707.backedge ], [ 0, %.preheader640 ] ; 5 uses
  %.5304705 = phi i32 [ %.5304705.be, %.lr.ph707.backedge ], [ -1, %.preheader640 ] ; 2 uses
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %.0626, i64 %indvars.iv823
end_hunk_1
