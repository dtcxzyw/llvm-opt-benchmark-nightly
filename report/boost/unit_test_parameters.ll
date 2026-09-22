Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/unit_test_parameters?download=true
inline.NumInlined: 6148
inline.NumDeleted: 1984
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN5boost7runtime3cla6parser16locate_parameterENS_10shared_ptrINS1_13rt_cla_detail14parameter_trieEEENS_9unit_test13basic_cstringIKcEESA_:bb.a
  %i.kq = ashr exact i64 %i.kp, 4
  invoke void @_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %10, i64 noundef %i.kq)
          to label %bb.bi unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bi:                                            ; preds = %bb.bg
  %i.ks = load ptr, ptr %5, align 16, !tbaa !1037 ; 2 uses
  %i.kt = load ptr, ptr %i.kk, align 8, !tbaa !1037 ; 2 uses
  %i.ku = icmp eq ptr %i.ks, %i.kt
  br i1 %i.ku, label %._crit_edge449, label %.lr.ph448

.lr.ph448:                                        ; preds = %bb.bi
  %i.kv = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.kw = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.bj

bb.bj:                                            ; preds = %.lr.ph448, %.critedge8
  %.sroa.0338.0446 = phi ptr [ %i.ks, %.lr.ph448 ], [ %i.lx, %.critedge8 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  %i.kx = load ptr, ptr %.sroa.0338.0446, align 8, !tbaa !183, !noalias !1042 ; 3 uses
  store ptr %i.kx, ptr %12, align 8, !tbaa !183, !alias.scope !1042
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.0338.0446, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !78, !noalias !1042 ; 3 uses
  store ptr %i.kz, ptr %i.kv, align 8, !tbaa !78, !alias.scope !1042
  %.not.i.i.i220 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i.i220, label %_ZN5boost9unit_test8for_each5derefINS_10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEEESt6vectorIS8_SaIS8_EEEET_RKNS1_15static_any_baseERT0_NS_4typeISC_EEN4mpl_5bool_ILb0EEE.exit222, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.lb = atomicrmw add ptr %i.la, i32 1 monotonic, align 4, !noalias !1042 ; 0 uses
  br label %_ZN5boost9unit_test8for_each5derefINS_10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEEESt6vectorIS8_SaIS8_EEEET_RKNS1_15static_any_baseERT0_NS_4typeISC_EEN4mpl_5bool_ILb0EEE.exit222

_ZN5boost9unit_test8for_each5derefINS_10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEEESt6vectorIS8_SaIS8_EEEET_RKNS1_15static_any_baseERT0_NS_4typeISC_EEN4mpl_5bool_ILb0EEE.exit222: ; preds = %bb.bk, %bb.bj
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kx, i64 48
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kx, i64 56
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !321 ; 3 uses
  %i.lf = load ptr, ptr %i.lc, align 8, !tbaa !322 ; 3 uses
  %i.lg = ptrtoint ptr %i.le to i64
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = sub i64 %i.lg, %i.lh
  %i.lj = icmp ugt i64 %i.li, 8
  %i.lk = icmp eq ptr %i.lf, %i.le
  %or.cond = or i1 %i.lj, %i.lk
  br i1 %or.cond, label %.critedge8, label %.lr.ph445

.lr.ph445:                                        ; preds = %_ZN5boost9unit_test8for_each5derefINS_10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEEESt6vectorIS8_SaIS8_EEEET_RKNS1_15static_any_baseERT0_NS_4typeISC_EEN4mpl_5bool_ILb0EEE.exit222, %bb.bp
  %.sroa.0330.0444 = phi ptr [ %i.lu, %bb.bp ], [ %i.lf, %_ZN5boost9unit_test8for_each5derefINS_10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEEESt6vectorIS8_SaIS8_EEEET_RKNS1_15static_any_baseERT0_NS_4typeISC_EEN4mpl_5bool_ILb0EEE.exit222 ] ; 2 uses
  %i.ll = load ptr, ptr %.sroa.0330.0444, align 8, !tbaa !324 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store ptr %i.ll, ptr %i.a, align 8, !tbaa !225
  %i.lo = invoke { ptr, i8 } @_ZNSt3setIPKN5boost7runtime16parameter_cla_idESt4lessIS4_ESaIS4_EE6insertEOS4_(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %.lr.ph445
  %.fca.1.extract = extractvalue { ptr, i8 } %i.lo, 1
  %i.lp = trunc i8 %.fca.1.extract to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br i1 %i.lp, label %bb.bn, label %bb.bp

bb.bm:                                            ; preds = %.lr.ph445
  %i.lq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.br

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  %i.lr = load ptr, ptr %i.lm, align 8, !tbaa !71 ; 2 uses
  store ptr %i.lr, ptr %13, align 8, !tbaa !63
  %i.ls = load i64, ptr %i.ln, align 8, !tbaa !68
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.ls
  store ptr %i.lt, ptr %i.kw, align 8, !tbaa !64
  invoke void @_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EE9push_backEOS4_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %bb.bo unwind label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bl, %bb.bo
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.0330.0444, i64 8 ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.le
  br i1 %i.lv, label %.critedge8, label %.lr.ph445, !llvm.loop !1026

bb.bq:                                            ; preds = %bb.bn
  %i.lw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  br label %bb.br

.critedge8:                                       ; preds = %bb.bp, %_ZN5boost9unit_test8for_each5derefINS_10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEEESt6vectorIS8_SaIS8_EEEET_RKNS1_15static_any_baseERT0_NS_4typeISC_EEN4mpl_5bool_ILb0EEE.exit222
  call void @_ZN5boost10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.0338.0446, i64 16 ; 2 uses
  %i.ly = icmp eq ptr %i.lx, %i.kt
  br i1 %i.ly, label %._crit_edge449, label %bb.bj, !llvm.loop !1027

bb.br:                                            ; preds = %bb.bm, %bb.bq
  %.pn131.pn.pn.pn = phi { ptr, i32 } [ %i.lq, %bb.bm ], [ %i.lw, %bb.bq ]
  call void @_ZN5boost10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.ca

._crit_edge449:                                   ; preds = %.critedge8, %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  %i.lz = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr @.str.219, ptr %i.lz, align 8, !tbaa !63
  %i.ma = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr @.str.219, ptr %i.ma, align 8, !tbaa !64
  %i.mb = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.mc = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 2 uses
  store ptr %i.mc, ptr %i.mb, align 8, !tbaa !66
  %i.md = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i64 0, ptr %i.md, align 8, !tbaa !68
  store i8 0, ptr %i.mc, align 8, !tbaa !69
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost7runtime18unrecognized_paramE, i64 16), ptr %16, align 8, !tbaa !74
  %i.me = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.mf = load <2 x ptr>, ptr %10, align 16, !tbaa !88
  store <2 x ptr> %i.mf, ptr %i.me, align 8, !tbaa !88
  %i.mg = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.mh = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.mi = load ptr, ptr %i.mh, align 16, !tbaa !136
  store ptr %i.mi, ptr %i.mg, align 8, !tbaa !136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_18unrecognized_paramENS0_11input_errorEElsEPKc(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::unrecognized_param") align 8 %15, ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull @.str.259)
          to label %bb.bs unwind label %bb.bv

bb.bs:                                            ; preds = %._crit_edge449
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_18unrecognized_paramENS0_11input_errorEElsINS_9unit_test13basic_cstringIKcEEEES2_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::unrecognized_param") align 8 %14, ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.bt unwind label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  invoke void @_ZN5boost9unit_test9ut_detail15throw_exceptionINS_7runtime18unrecognized_paramEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(80) %14) #32
          to label %bb.bu unwind label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  unreachable

bb.bv:                                            ; preds = %._crit_edge449
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bw:                                            ; preds = %bb.bs
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bx:                                            ; preds = %bb.bt
  %i.ml = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7runtime18unrecognized_paramD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %14) #30
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.pn139 = phi { ptr, i32 } [ %i.ml, %bb.bx ], [ %i.mk, %bb.bw ]
  call void @_ZN5boost7runtime18unrecognized_paramD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %15) #30
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bv
  %.pn139.pn = phi { ptr, i32 } [ %.pn139, %bb.by ], [ %i.mj, %bb.bv ]
  call void @_ZN5boost7runtime18unrecognized_paramD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.ca

bb.ca:                                            ; preds = %bb.br, %bb.bz, %bb.bh
  %.pn139.pn.pn.pn = phi { ptr, i32 } [ %.pn139.pn, %bb.bz ], [ %i.kr, %bb.bh ], [ %.pn131.pn.pn.pn, %bb.br ]
  call void @_ZNSt3setIPKN5boost7runtime16parameter_cla_idESt4lessIS4_ESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %i.mm = load ptr, ptr %10, align 16, !tbaa !134 ; 3 uses
  %.not.i.i.i223 = icmp eq ptr %i.mm, null
  br i1 %.not.i.i.i223, label %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.mn = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.mo = load ptr, ptr %i.mn, align 16, !tbaa !136
  %i.mp = ptrtoint ptr %i.mo to i64
  %i.mq = ptrtoint ptr %i.mm to i64
  %i.mr = sub i64 %i.mp, %i.mq
  call void @_ZdlPvm(ptr noundef nonnull %i.mm, i64 noundef %i.mr) #34
  br label %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EED2Ev.exit

_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EED2Ev.exit: ; preds = %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EED2Ev.exit227

bb.cc:                                            ; preds = %.critedge
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ke, i64 48
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ke, i64 56
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !321 ; 4 uses
  %i.mv = load ptr, ptr %i.ms, align 8, !tbaa !322 ; 3 uses
  %i.mw = ptrtoint ptr %i.mu to i64
  %i.mx = ptrtoint ptr %i.mv to i64
  %i.my = sub i64 %i.mw, %i.mx
  %i.mz = icmp ugt i64 %i.my, 8
  br i1 %i.mz, label %.preheader401, label %bb.cp

.preheader401:                                    ; preds = %bb.cc
  %20 = icmp eq ptr %i.mv, %i.mu
  br i1 %20, label %._crit_edge, label %.lr.ph441

.lr.ph441:                                        ; preds = %.preheader401, %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EE9push_backEOS4_.exit
  %.sroa.0312.0440 = phi ptr [ %i.ny, %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EE9push_backEOS4_.exit ], [ %i.mv, %.preheader401 ] ; 2 uses
  %.sroa.13.0439 = phi ptr [ %.sroa.13.5, %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EE9push_backEOS4_.exit ], [ null, %.preheader401 ] ; 5 uses
  %.sroa.8.0438 = phi ptr [ %.sroa.8.4, %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EE9push_backEOS4_.exit ], [ null, %.preheader401 ] ; 4 uses
  %.sroa.0315.0437 = phi ptr [ %.sroa.0315.5, %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EE9push_backEOS4_.exit ], [ null, %.preheader401 ] ; 8 uses
  %i.na = load ptr, ptr %.sroa.0312.0440, align 8, !tbaa !324 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 32
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 40
  %i.nd = load ptr, ptr %i.nb, align 8, !tbaa !71 ; 3 uses
  %i.ne = load i64, ptr %i.nc, align 8, !tbaa !68
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.ne ; 2 uses
  %.not.i.i224 = icmp eq ptr %.sroa.8.0438, %.sroa.13.0439
  br i1 %.not.i.i224, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph441
  store ptr %i.nd, ptr %.sroa.8.0438, align 8, !tbaa !63
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.8.0438, i64 8
  store ptr %i.nf, ptr %i.ng, align 8, !tbaa !64
  br label %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EE9push_backEOS4_.exit

bb.ce:                                            ; preds = %.lr.ph441
  %i.nh = ptrtoint ptr %.sroa.13.0439 to i64
  %i.ni = ptrtoint ptr %.sroa.0315.0437 to i64
  %i.nj = sub i64 %i.nh, %i.ni                    ; 5 uses
  %i.nk = icmp eq i64 %i.nj, 9223372036854775792
  br i1 %i.nk, label %bb.cf, label %_ZNKSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EE12_M_check_lenEmPS3_.exit.i

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.229) #32
          to label %.noexc302 unwind label %.loopexit.split-lp

.noexc302:                                        ; preds = %bb.cf
  unreachable

_ZNKSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EE12_M_check_lenEmPS3_.exit.i: ; preds = %bb.ce
  %i.nl = ashr exact i64 %i.nj, 4                 ; 3 uses
  %.sroa.speculated.i.i299 = call i64 @llvm.umax.i64(i64 %i.nl, i64 1)
  %i.nm = add nsw i64 %.sroa.speculated.i.i299, %i.nl ; 2 uses
  %i.nn = icmp ult i64 %i.nm, %i.nl
  %i.no = call i64 @llvm.umin.i64(i64 %i.nm, i64 576460752303423487)
  %i.np = select i1 %i.nn, i64 576460752303423487, i64 %i.no ; 3 uses
  %.not.i.i300 = icmp ne i64 %i.np, 0
  call void @llvm.assume(i1 %.not.i.i300)
  %i.nq = shl nuw nsw i64 %i.np, 4
  %i.nr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nq) #31
          to label %.noexc303 unwind label %.loopexit ; 5 uses

.noexc303:                                        ; preds = %_ZNKSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EE12_M_check_lenEmPS3_.exit.i
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.nj ; 2 uses
  store ptr %i.nd, ptr %i.ns, align 8, !tbaa !63
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  store ptr %i.nf, ptr %i.nt, align 8, !tbaa !64
  %.not13.i.i.i.i.i.i = icmp eq ptr %.sroa.0315.0437, %.sroa.13.0439
  br i1 %.not13.i.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9unit_test13basic_cstringIKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc303, %.lr.ph.i.i.i.i.i.i
  %.015.i.i.i.i.i.i = phi ptr [ %i.nw, %.lr.ph.i.i.i.i.i.i ], [ %i.nr, %.noexc303 ] ; 2 uses
  %.01214.i.i.i.i.i.i = phi ptr [ %i.nv, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0315.0437, %.noexc303 ] ; 2 uses
  %i.nu = load <2 x ptr>, ptr %.01214.i.i.i.i.i.i, align 8, !tbaa !89
  store <2 x ptr> %i.nu, ptr %.015.i.i.i.i.i.i, align 8, !tbaa !89
  %i.nv = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i301 = icmp eq ptr %i.nv, %.sroa.13.0439
  br i1 %.not.i.i.i.i.i.i301, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9unit_test13basic_cstringIKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit34.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !4

_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9unit_test13basic_cstringIKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit34.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc303
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.nr, %.noexc303 ], [ %i.nw, %.lr.ph.i.i.i.i.i.i ]
  %.not.i35.i = icmp eq ptr %.sroa.0315.0437, null
  br i1 %.not.i35.i, label %.noexc225, label %bb.cg

bb.cg:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9unit_test13basic_cstringIKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit34.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0315.0437, i64 noundef %i.nj) #34
  br label %.noexc225

.noexc225:                                        ; preds = %bb.cg, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9unit_test13basic_cstringIKcEES5_SaIS4_EET0_T_S8_S7_RT1_.exit34.i
  %i.nx = getelementptr inbounds nuw [16 x i8], ptr %i.nr, i64 %i.np
  br label %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EE9push_backEOS4_.exit: ; preds = %.noexc225, %bb.cd
  %.sroa.0315.5 = phi ptr [ %i.nr, %.noexc225 ], [ %.sroa.0315.0437, %bb.cd ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %.noexc225 ], [ %.sroa.8.0438, %bb.cd ]
  %.sroa.13.5 = phi ptr [ %i.nx, %.noexc225 ], [ %.sroa.13.0439, %bb.cd ] ; 2 uses
  %.sroa.8.4 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 16 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.0312.0440, i64 8 ; 2 uses
  %i.nz = icmp eq ptr %i.ny, %i.mu
  br i1 %i.nz, label %._crit_edge, label %.lr.ph441, !llvm.loop !1028

.loopexit:                                        ; preds = %_ZNKSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EE12_M_check_lenEmPS3_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

.loopexit.split-lp:                               ; preds = %bb.cf
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.ch:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i226 = icmp eq ptr %.sroa.0315.0437, null
  br i1 %.not.i.i.i226, label %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EED2Ev.exit227, label %.thread380

._crit_edge:                                      ; preds = %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EE9push_backEOS4_.exit, %.preheader401
  %.sroa.0315.0.lcssa = phi ptr [ null, %.preheader401 ], [ %.sroa.0315.5, %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EE9push_backEOS4_.exit ]
  %.sroa.8.0.lcssa = phi ptr [ null, %.preheader401 ], [ %.sroa.8.4, %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EE9push_backEOS4_.exit ]
  %.sroa.13.0.lcssa = phi ptr [ null, %.preheader401 ], [ %.sroa.13.5, %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EE9push_backEOS4_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  %i.oa = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr @.str.219, ptr %i.oa, align 8, !tbaa !63
  %i.ob = getelementptr inbounds nuw i8, ptr %19, i64 16
  store ptr @.str.219, ptr %i.ob, align 8, !tbaa !64
  %i.oc = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.od = getelementptr inbounds nuw i8, ptr %19, i64 40 ; 2 uses
  store ptr %i.od, ptr %i.oc, align 8, !tbaa !66
  %i.oe = getelementptr inbounds nuw i8, ptr %19, i64 32
  store i64 0, ptr %i.oe, align 8, !tbaa !68
  store i8 0, ptr %i.od, align 8, !tbaa !69
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5boost7runtime15ambiguous_paramE, i64 16), ptr %19, align 8, !tbaa !74
  %i.of = getelementptr inbounds nuw i8, ptr %19, i64 56
  store ptr %.sroa.0315.0.lcssa, ptr %i.of, align 8, !tbaa !134
  %i.og = getelementptr inbounds nuw i8, ptr %19, i64 64
  store ptr %.sroa.8.0.lcssa, ptr %i.og, align 8, !tbaa !135
  %i.oh = getelementptr inbounds nuw i8, ptr %19, i64 72
  store ptr %.sroa.13.0.lcssa, ptr %i.oh, align 8, !tbaa !136
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_15ambiguous_paramENS0_11input_errorEElsEPKc(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::ambiguous_param") align 8 %18, ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull @.str.260)
          to label %bb.ci unwind label %bb.cl

bb.ci:                                            ; preds = %._crit_edge
  invoke void @_ZNO5boost7runtime20specific_param_errorINS0_15ambiguous_paramENS0_11input_errorEElsINS_9unit_test13basic_cstringIKcEEEES2_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.boost::runtime::ambiguous_param") align 8 %17, ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.cj unwind label %bb.cm

bb.cj:                                            ; preds = %bb.ci
  invoke void @_ZN5boost9unit_test9ut_detail15throw_exceptionINS_7runtime15ambiguous_paramEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(80) %17) #32
          to label %bb.ck unwind label %bb.cn

bb.ck:                                            ; preds = %bb.cj
  unreachable

bb.cl:                                            ; preds = %._crit_edge
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.cm:                                            ; preds = %bb.ci
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.cn:                                            ; preds = %bb.cj
  %i.ok = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost7runtime15ambiguous_paramD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %17) #30
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.pn148 = phi { ptr, i32 } [ %i.ok, %bb.cn ], [ %i.oj, %bb.cm ]
  call void @_ZN5boost7runtime15ambiguous_paramD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %18) #30
  br label %.thread

.thread:                                          ; preds = %bb.co, %bb.cl
  %.pn148.pn = phi { ptr, i32 } [ %.pn148, %bb.co ], [ %i.oi, %bb.cl ]
  call void @_ZN5boost7runtime15ambiguous_paramD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %19) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  br label %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EED2Ev.exit227

.thread380:                                       ; preds = %bb.ch
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0315.0437, i64 noundef %i.nj) #34
  br label %_ZNSt6vectorIN5boost9unit_test13basic_cstringIKcEESaIS4_EED2Ev.exit227

bb.cp:                                            ; preds = %bb.cc
  %i.ol = getelementptr inbounds i8, ptr %i.mu, i64 -8
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !324
  invoke void @_ZN5boost7runtime16parameter_cla_idC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(97) %i.om)
          to label %.noexc229 unwind label %bb.dc

.noexc229:                                        ; preds = %bb.cp
  %i.on = getelementptr inbounds nuw i8, ptr %i.ke, i64 72
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.op = getelementptr inbounds nuw i8, ptr %i.ke, i64 80
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !78 ; 2 uses
  %i.or = load <2 x ptr>, ptr %i.on, align 8, !tbaa !141
  store <2 x ptr> %i.or, ptr %i.oo, align 8, !tbaa !141
  %.not.i.i.i228 = icmp eq ptr %i.oq, null
  br i1 %.not.i.i.i228, label %_ZNSt4pairIN5boost7runtime16parameter_cla_idENS0_10shared_ptrINS1_11basic_paramEEEEC2IRKS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit, label %bb.cq

bb.cq:                                            ; preds = %.noexc229
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  %i.ot = atomicrmw add ptr %i.os, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZNSt4pairIN5boost7runtime16parameter_cla_idENS0_10shared_ptrINS1_11basic_paramEEEEC2IRKS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit

_ZNSt4pairIN5boost7runtime16parameter_cla_idENS0_10shared_ptrINS1_11basic_paramEEEEC2IRKS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit: ; preds = %bb.cq, %.noexc229
  %i.ou = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !78 ; 7 uses
  %.not.i.i230 = icmp eq ptr %i.ov, null
  br i1 %.not.i.i230, label %_ZN5boost10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEED2Ev.exit231, label %bb.cr

bb.cr:                                            ; preds = %_ZNSt4pairIN5boost7runtime16parameter_cla_idENS0_10shared_ptrINS1_11basic_paramEEEEC2IRKS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.ox = atomicrmw sub ptr %i.ow, i32 1 acq_rel, align 4
  %i.oy = icmp eq i32 %i.ox, 1
  br i1 %i.oy, label %bb.cs, label %_ZN5boost10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEED2Ev.exit231

bb.cs:                                            ; preds = %bb.cr
  %i.oz = load ptr, ptr %i.ov, align 8, !tbaa !74
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %i.pb = load ptr, ptr %i.pa, align 8
  call void %i.pb(ptr noundef nonnull align 8 dereferenceable(16) %i.ov) #30, !inline_history !5
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ov, i64 12
  %i.pd = atomicrmw sub ptr %i.pc, i32 1 acq_rel, align 4
  %i.pe = icmp eq i32 %i.pd, 1
  br i1 %i.pe, label %bb.ct, label %_ZN5boost10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEED2Ev.exit231

bb.ct:                                            ; preds = %bb.cs
  %i.pf = load ptr, ptr %i.ov, align 8, !tbaa !74
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 24
  %i.ph = load ptr, ptr %i.pg, align 8
  call void %i.ph(ptr noundef nonnull align 8 dereferenceable(16) %i.ov) #30, !inline_history !6
  br label %_ZN5boost10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEED2Ev.exit231

_ZN5boost10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEED2Ev.exit231: ; preds = %_ZNSt4pairIN5boost7runtime16parameter_cla_idENS0_10shared_ptrINS1_11basic_paramEEEEC2IRKS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOSC_OSD_.exit, %bb.cr, %bb.cs, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.pi = load ptr, ptr %6, align 16, !tbaa !318  ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !316 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.pi, %i.pk
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5boost10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEED2Ev.exit231, %_ZSt8_DestroyIN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.pz, %_ZSt8_DestroyIN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEEEvPT_.exit.i.i.i ], [ %i.pi, %_ZN5boost10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEED2Ev.exit231 ] ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !78 ; 7 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.pm, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEEEvPT_.exit.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph.i.i.i
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  %i.po = atomicrmw sub ptr %i.pn, i32 1 acq_rel, align 4
  %i.pp = icmp eq i32 %i.po, 1
  br i1 %i.pp, label %bb.cv, label %_ZSt8_DestroyIN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEEEvPT_.exit.i.i.i

bb.cv:                                            ; preds = %bb.cu
  %i.pq = load ptr, ptr %i.pm, align 8, !tbaa !74
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %i.ps = load ptr, ptr %i.pr, align 8
  call void %i.ps(ptr noundef nonnull align 8 dereferenceable(16) %i.pm) #30, !inline_history !1029
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pm, i64 12
  %i.pu = atomicrmw sub ptr %i.pt, i32 1 acq_rel, align 4
  %i.pv = icmp eq i32 %i.pu, 1
  br i1 %i.pv, label %bb.cw, label %_ZSt8_DestroyIN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEEEvPT_.exit.i.i.i

bb.cw:                                            ; preds = %bb.cv
  %i.pw = load ptr, ptr %i.pm, align 8, !tbaa !74
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 24
  %i.py = load ptr, ptr %i.px, align 8
  call void %i.py(ptr noundef nonnull align 8 dereferenceable(16) %i.pm) #30, !inline_history !1030
  br label %_ZSt8_DestroyIN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEEEvPT_.exit.i.i.i: ; preds = %bb.cw, %bb.cv, %bb.cu, %.lr.ph.i.i.i
  %i.pz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i232 = icmp eq ptr %i.pz, %i.pk
  br i1 %.not.i.i.i232, label %_ZSt8_DestroyIPN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !38

_ZSt8_DestroyIPN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 16, !tbaa !318
  br label %_ZSt8_DestroyIPN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %_ZN5boost10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEED2Ev.exit231
  %i.qa = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.pi, %_ZN5boost10shared_ptrINS_7runtime3cla13rt_cla_detail14parameter_trieEED2Ev.exit231 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.qa, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEESaIS6_EED2Ev.exit, label %bb.cx

bb.cx:                                            ; preds = %_ZSt8_DestroyIPN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEES6_EvT_S8_RSaIT0_E.exit.i
  %i.qb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.qc = load ptr, ptr %i.qb, align 16, !tbaa !317
  %i.qd = ptrtoint ptr %i.qc to i64
  %i.qe = ptrtoint ptr %i.qa to i64
  %i.qf = sub i64 %i.qd, %i.qe
  call void @_ZdlPvm(ptr noundef nonnull %i.qa, i64 noundef %i.qf) #34
  br label %_ZNSt6vectorIN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEESaIS6_EED2Ev.exit

_ZNSt6vectorIN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEES6_EvT_S8_RSaIT0_E.exit.i, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.qg = load ptr, ptr %5, align 16, !tbaa !318  ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !316 ; 2 uses
  %.not4.i.i.i233 = icmp eq ptr %i.qg, %i.qi
  br i1 %.not4.i.i.i233, label %_ZSt8_DestroyIPN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEES6_EvT_S8_RSaIT0_E.exit.i241, label %.lr.ph.i.i.i234

.lr.ph.i.i.i234:                                  ; preds = %_ZNSt6vectorIN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEESaIS6_EED2Ev.exit, %_ZSt8_DestroyIN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEEEvPT_.exit.i.i.i237
  %.05.i.i.i235 = phi ptr [ %i.qx, %_ZSt8_DestroyIN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEEEvPT_.exit.i.i.i237 ], [ %i.qg, %_ZNSt6vectorIN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEESaIS6_EED2Ev.exit ] ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %.05.i.i.i235, i64 8
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !78 ; 7 uses
  %.not.i.i.i.i.i.i236 = icmp eq ptr %i.qk, null
  br i1 %.not.i.i.i.i.i.i236, label %_ZSt8_DestroyIN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEEEvPT_.exit.i.i.i237, label %bb.cy

bb.cy:                                            ; preds = %.lr.ph.i.i.i234
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.qm = atomicrmw sub ptr %i.ql, i32 1 acq_rel, align 4
  %i.qn = icmp eq i32 %i.qm, 1
  br i1 %i.qn, label %bb.cz, label %_ZSt8_DestroyIN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEEEvPT_.exit.i.i.i237

bb.cz:                                            ; preds = %bb.cy
  %i.qo = load ptr, ptr %i.qk, align 8, !tbaa !74
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  %i.qq = load ptr, ptr %i.qp, align 8
  call void %i.qq(ptr noundef nonnull align 8 dereferenceable(16) %i.qk) #30, !inline_history !1029
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qk, i64 12
  %i.qs = atomicrmw sub ptr %i.qr, i32 1 acq_rel, align 4
  %i.qt = icmp eq i32 %i.qs, 1
  br i1 %i.qt, label %bb.da, label %_ZSt8_DestroyIN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEEEvPT_.exit.i.i.i237

bb.da:                                            ; preds = %bb.cz
  %i.qu = load ptr, ptr %i.qk, align 8, !tbaa !74
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 24
  %i.qw = load ptr, ptr %i.qv, align 8
  call void %i.qw(ptr noundef nonnull align 8 dereferenceable(16) %i.qk) #30, !inline_history !1030
  br label %_ZSt8_DestroyIN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEEEvPT_.exit.i.i.i237

_ZSt8_DestroyIN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEEEvPT_.exit.i.i.i237: ; preds = %bb.da, %bb.cz, %bb.cy, %.lr.ph.i.i.i234
  %i.qx = getelementptr inbounds nuw i8, ptr %.05.i.i.i235, i64 16 ; 2 uses
  %.not.i.i.i238 = icmp eq ptr %i.qx, %i.qi
  br i1 %.not.i.i.i238, label %_ZSt8_DestroyIPN5boost10shared_ptrINS0_7runtime3cla13rt_cla_detail14parameter_trieEEES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i239, label %.lr.ph.i.i.i234, !llvm.loop !38
end_hunk_0
