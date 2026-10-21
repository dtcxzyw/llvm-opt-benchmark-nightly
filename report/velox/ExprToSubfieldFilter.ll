Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/ExprToSubfieldFilter?download=true
inline.NumInlined: 6844
inline.NumDeleted: 2832
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN8facebook5velox4exec26ExprToSubfieldFilterParser12makeOrFilterESt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE:bb.a
  %i.yr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i36.i, i64 8 ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i35.i, i64 8 ; 2 uses
  %.not.i.i.i.i37.i = icmp eq ptr %i.yr, %i.wz
  br i1 %.not.i.i.i.i37.i, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i34.i, !llvm.loop !768

_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i34.i, %middle.block1382, %vec.epilog.middle.block1398, %.noexc41.i
  %.0.lcssa.i.i.i.i.i63 = phi ptr [ %i.xn, %.noexc41.i ], [ %i.ym, %vec.epilog.middle.block1398 ], [ %i.xy, %middle.block1382 ], [ %i.ys, %.lr.ph.i.i.i.i34.i ]
  %i.yt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i63, i64 8 ; 2 uses
  %.not.i23.i.i64 = icmp eq ptr %i.wy, null
  br i1 %.not.i23.i.i64, label %.noexc20.i, label %bb.dq

bb.dq:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.wy, i64 noundef %i.xf) #39, !noalias !891
  br label %.noexc20.i

.noexc20.i:                                       ; preds = %bb.dq, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.xn, ptr %10, align 8, !tbaa !209, !noalias !891
  store ptr %i.yt, ptr %i.vu, align 8, !tbaa !210, !noalias !891
  %i.yu = getelementptr inbounds nuw [8 x i8], ptr %i.xn, i64 %i.xl ; 2 uses
  store ptr %i.yu, ptr %i.vl, align 8, !tbaa !211, !noalias !891
  br label %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit.i

_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit.i: ; preds = %.noexc20.i, %bb.dn
  %.pre115.i = phi ptr [ %i.xn, %.noexc20.i ], [ %i.wy, %bb.dn ] ; 11 uses
  %i.yv = phi ptr [ %i.yu, %.noexc20.i ], [ %i.wz, %bb.dn ]
  %i.yw = phi ptr [ %i.yt, %.noexc20.i ], [ %i.xc, %bb.dn ] ; 7 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %.sroa.049.090.i, i64 8 ; 2 uses
  %i.yy = icmp eq ptr %i.yx, %i.vr
  br i1 %i.yy, label %._crit_edge.i30, label %.lr.ph.i28

.loopexit.split-lp.i65.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i, %bb.dp
  %lpad.loopexit.split-lp1698 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i23.i = icmp eq i64 %i.xb, 0
  br i1 %.not.i23.i, label %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit28.i, label %_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIdEEEclEPS4_.exit.i24.i

_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIdEEEclEPS4_.exit.i24.i: ; preds = %.loopexit.split-lp.i65.loopexit.split-lp.loopexit.split-lp
  %i.yz = inttoptr i64 %i.xb to ptr
  call void @_ZdlPvm(ptr noundef nonnull %i.yz, i64 noundef 40) #39, !noalias !891
  br label %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit28.i

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEEZNS4_4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIdEES2_INS5_6FilterES8_ISJ_EERSC_ISL_SaISL_EEEUlRKT_RKT0_E_EvSP_SP_SS_.exit.i: ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS4_4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIdEES2_INS5_6FilterES8_ISL_EERSC_ISN_SaISN_EEEUlRKT_RKT0_E_EEEvSR_SU_.exit.i.i.i.i.i, %bb.dl, %bb.di, %._crit_edge.i30, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS5_EESaIS8_EE7reserveEm.exit.i
  %i.za = phi ptr [ %i.vq, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS5_EESaIS8_EE7reserveEm.exit.i ], [ %.pre115.i, %._crit_edge.i30 ], [ %.pre115.i, %bb.dl ], [ %.pre115.i, %bb.di ], [ %.pre115.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS4_4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIdEES2_INS5_6FilterES8_ISL_EERSC_ISN_SaISN_EEEUlRKT_RKT0_E_EEEvSR_SU_.exit.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !897)
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !891
  %i.zb = zext i1 %i.vj to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37, !noalias !898
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false), !noalias !898
  %i.zc = load ptr, ptr %i.za, align 8, !tbaa !198, !noalias !898
  %.sroa.011.0.insert.ext.i.i31 = zext i1 %i.vj to i16
  %.sroa.011.0.insert.insert.i.i = or disjoint i16 %.sroa.011.0.insert.ext.i.i31, 256
  invoke void @_ZNK8facebook5velox6common18FloatingPointRangeIdE5cloneESt8optionalIbE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.27") align 8 %9, ptr noundef nonnull align 8 dereferenceable(40) %i.zc, i16 %.sroa.011.0.insert.insert.i.i)
          to label %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !898

_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEEZNS4_4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIdEES2_INS5_6FilterES8_ISJ_EERSC_ISL_SaISL_EEEUlRKT_RKT0_E_EvSP_SP_SS_.exit.i
  %i.zd = load ptr, ptr %9, align 8, !tbaa !94, !noalias !899 ; 3 uses
  store ptr null, ptr %9, align 8, !tbaa !94, !noalias !899
  %i.ze = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.zg = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #38
          to label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS4_EED2Ev.exit.i.i unwind label %bb.dr, !noalias !898 ; 5 uses

_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS4_EED2Ev.exit.i.i: ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.zh = ptrtoint ptr %i.zd to i64
  store i64 %i.zh, ptr %i.zg, align 8, !tbaa !198, !noalias !898
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zg, i64 8 ; 5 uses
  %.pre.pre.i.i = load ptr, ptr %9, align 8, !tbaa !94, !noalias !898 ; 3 uses
  store ptr %i.zg, ptr %8, align 8, !tbaa !209, !noalias !898
  store ptr %i.zi, ptr %i.ze, align 8, !tbaa !210, !noalias !898
  store ptr %i.zi, ptr %i.zf, align 8, !tbaa !211, !noalias !898
  %.not.i32.i.i = icmp eq ptr %.pre.pre.i.i, null
  br i1 %.not.i32.i.i, label %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit.i.i35, label %_ZNKSt14default_deleteIN8facebook5velox6common6FilterEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN8facebook5velox6common6FilterEEclEPS3_.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS4_EED2Ev.exit.i.i
  %i.zj = load ptr, ptr %.pre.pre.i.i, align 8, !tbaa !41, !noalias !898
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 16
  %i.zl = load ptr, ptr %i.zk, align 8, !noalias !898
  call void %i.zl(ptr noundef nonnull align 8 dereferenceable(16) %.pre.pre.i.i) #37, !noalias !898, !inline_history !773
  br label %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit.i.i35

_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit.i.i35: ; preds = %_ZNKSt14default_deleteIN8facebook5velox6common6FilterEEclEPS3_.exit.i.i.i, %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS4_EED2Ev.exit.i.i
  %i.zm = load ptr, ptr %i.vu, align 8, !tbaa !210, !noalias !898 ; 2 uses
  %i.zn = load ptr, ptr %10, align 8, !tbaa !209, !noalias !898 ; 2 uses
  %i.zo = ptrtoint ptr %i.zm to i64
  %i.zp = ptrtoint ptr %i.zn to i64
  %i.zq = sub i64 %i.zo, %i.zp
  %.not31.i.i = icmp ugt i64 %i.zq, 8
  br i1 %.not31.i.i, label %.lr.ph.i.i48, label %.critedge30.i.i36

bb.dr:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.zr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i33.i.i = icmp eq ptr %i.zd, null
  br i1 %.not.i33.i.i, label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS4_EED2Ev.exit35.i.i, label %_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIdEEEclEPS4_.exit.i34.i.i

_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIdEEEclEPS4_.exit.i34.i.i: ; preds = %bb.dr
  call void @_ZdlPvm(ptr noundef nonnull %i.zd, i64 noundef 40) #39, !noalias !898
  br label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS4_EED2Ev.exit35.i.i

_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS4_EED2Ev.exit35.i.i: ; preds = %_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIdEEEclEPS4_.exit.i34.i.i, %bb.dr
  %i.zs = load ptr, ptr %9, align 8, !tbaa !94, !noalias !898 ; 3 uses
  %.not.i36.i.i = icmp eq ptr %i.zs, null
  br i1 %.not.i36.i.i, label %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit38.i.i, label %_ZNKSt14default_deleteIN8facebook5velox6common6FilterEEclEPS3_.exit.i37.i.i

_ZNKSt14default_deleteIN8facebook5velox6common6FilterEEclEPS3_.exit.i37.i.i: ; preds = %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS4_EED2Ev.exit35.i.i
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !41, !noalias !898
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 16
  %i.zv = load ptr, ptr %i.zu, align 8, !noalias !898
  call void %i.zv(ptr noundef nonnull align 8 dereferenceable(16) %i.zs) #37, !noalias !898, !inline_history !773
  br label %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit38.i.i

.lr.ph.i.i48:                                     ; preds = %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit.i.i35, %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS4_EED2Ev.exit50.i.i
  %i.zw = phi ptr [ %i.afb, %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS4_EED2Ev.exit50.i.i ], [ %i.zm, %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit.i.i35 ] ; 3 uses
  %i.zx = phi ptr [ %i.afc, %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS4_EED2Ev.exit50.i.i ], [ %i.zi, %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit.i.i35 ] ; 11 uses
  %i.zy = phi ptr [ %i.afd, %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS4_EED2Ev.exit50.i.i ], [ %i.zg, %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit.i.i35 ] ; 16 uses
  %i.zz = phi ptr [ %i.afe, %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS4_EED2Ev.exit50.i.i ], [ %i.zi, %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit.i.i35 ] ; 4 uses
  %indvars.iv.i.i49 = phi i64 [ %indvars.iv.next.i.i52, %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS4_EED2Ev.exit50.i.i ], [ 1, %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit.i.i35 ] ; 2 uses
  %i.aaa = phi ptr [ %i.aff, %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS4_EED2Ev.exit50.i.i ], [ %i.zn, %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit.i.i35 ]
  %i.aab = getelementptr inbounds i8, ptr %i.zx, i64 -8 ; 3 uses
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !198, !noalias !898 ; 9 uses
  %i.aad = getelementptr inbounds nuw [8 x i8], ptr %i.aaa, i64 %indvars.iv.i.i49 ; 4 uses
  %i.aae = load ptr, ptr %i.aad, align 8, !noalias !898 ; 10 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aac, i64 18
  %i.aag = load i8, ptr %i.aaf, align 2, !tbaa !213, !range !205, !noalias !900, !noundef !206
  %i.aah = trunc nuw i8 %i.aag to i1              ; 2 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aae, i64 16
  %i.aaj = load i8, ptr %i.aai, align 8, !range !205, !noalias !900 ; 2 uses
  %i.aak = trunc nuw i8 %i.aaj to i1
  %or.cond57.i.i.i = select i1 %i.aah, i1 true, i1 %i.aak
  %i.aal = ptrtoint ptr %i.aae to i64
  br i1 %or.cond57.i.i.i, label %bb.du, label %bb.ds

bb.ds:                                            ; preds = %.lr.ph.i.i48
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aac, i64 32
  %i.aan = load double, ptr %i.aam, align 8, !tbaa !166, !noalias !900 ; 2 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aae, i64 24
  %i.aap = load double, ptr %i.aao, align 8, !tbaa !165, !noalias !900 ; 2 uses
  %i.aaq = fcmp olt double %i.aan, %i.aap
  br i1 %i.aaq, label %bb.ef, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.aar = fcmp oeq double %i.aan, %i.aap
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aac, i64 19
  %i.aat = load i8, ptr %i.aas, align 1, !range !205, !noalias !900
  %i.aau = trunc nuw i8 %i.aat to i1
  %or.cond60.i.i.i = select i1 %i.aar, i1 %i.aau, i1 false
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aae, i64 17
  %i.aaw = load i8, ptr %i.aav, align 1, !range !205, !noalias !900
  %i.aax = trunc nuw i8 %i.aaw to i1
  %or.cond63.i.i.i = select i1 %or.cond60.i.i.i, i1 %i.aax, i1 false
  br i1 %or.cond63.i.i.i, label %bb.ef, label %bb.du

bb.du:                                            ; preds = %bb.dt, %.lr.ph.i.i48
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aac, i64 16
  %i.aaz = load i8, ptr %i.aay, align 8, !tbaa !212, !range !205, !noalias !900, !noundef !206
  %i.aba = trunc nuw i8 %i.aaz to i1
  %i.abb = select i1 %i.aba, i8 1, i8 %i.aaj      ; 4 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aae, i64 18
  %i.abd = load i8, ptr %i.abc, align 2, !range !205, !noalias !900
  %i.abe = select i1 %i.aah, i8 1, i8 %i.abd      ; 5 uses
  %i.abf = trunc nuw i8 %i.abb to i1              ; 2 uses
  br i1 %i.abf, label %.thread.thread.i.i.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aac, i64 24
  %i.abh = load double, ptr %i.abg, align 8, !tbaa !165, !noalias !900 ; 3 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aae, i64 24
  %i.abj = load double, ptr %i.abi, align 8, !tbaa !165, !noalias !900 ; 3 uses
  %i.abk = fcmp olt double %i.abj, %i.abh
  %.sroa.speculated36.i.i.i = select i1 %i.abk, double %i.abj, double %i.abh ; 2 uses
  %i.abl = fcmp olt double %i.abh, %i.abj
  %i.abm = getelementptr inbounds nuw i8, ptr %i.aac, i64 17
  %i.abn = load i8, ptr %i.abm, align 1, !tbaa !214, !range !205, !noalias !900, !noundef !206 ; 2 uses
  br i1 %i.abl, label %.thread.i.i.i50, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.abo = trunc nuw i8 %i.abn to i1
  br i1 %i.abo, label %bb.dx, label %.thread.i.i.i50

bb.dx:                                            ; preds = %bb.dw
  %i.abp = getelementptr inbounds nuw i8, ptr %i.aae, i64 17
  %i.abq = load i8, ptr %i.abp, align 1, !tbaa !214, !range !205, !noalias !900, !noundef !206
  br label %.thread.i.i.i50

.thread.i.i.i50:                                  ; preds = %bb.dx, %bb.dw, %bb.dv
  %.049.i.i.i = phi i8 [ 0, %bb.dw ], [ %i.abq, %bb.dx ], [ %i.abn, %bb.dv ] ; 2 uses
  %i.abr = trunc nuw i8 %i.abe to i1
  br i1 %i.abr, label %.thread51.i.i.i, label %bb.dy

.thread.thread.i.i.i:                             ; preds = %bb.du
  %i.abs = trunc nuw i8 %i.abe to i1
  br i1 %i.abs, label %bb.ec, label %bb.dy

bb.dy:                                            ; preds = %.thread.thread.i.i.i, %.thread.i.i.i50
  %.04967.i.i.i = phi i8 [ 1, %.thread.thread.i.i.i ], [ %.049.i.i.i, %.thread.i.i.i50 ] ; 2 uses
  %i.abt = phi double [ f0xFFEFFFFFFFFFFFFF, %.thread.thread.i.i.i ], [ %.sroa.speculated36.i.i.i, %.thread.i.i.i50 ] ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.aac, i64 32
  %i.abv = load double, ptr %i.abu, align 8, !tbaa !166, !noalias !900 ; 5 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.aae, i64 32
  %i.abx = load double, ptr %i.abw, align 8, !tbaa !166, !noalias !900 ; 3 uses
  %i.aby = fcmp ogt double %i.abv, %i.abx         ; 2 uses
  %brmerge.i.i.i = fcmp ueq double %i.abv, %i.abx
  %.mux.i.i.i = select i1 %i.aby, ptr %i.aac, ptr %i.aae
  %.sroa.speculated.mux.i.i.i = select i1 %i.aby, double %i.abv, double %i.abx
  br i1 %brmerge.i.i.i, label %bb.dz, label %.thread51.sink.split.i.i.i

bb.dz:                                            ; preds = %bb.dy
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aac, i64 19
  %i.aca = load i8, ptr %i.abz, align 1, !tbaa !215, !range !205, !noalias !900, !noundef !206
  %i.acb = trunc nuw i8 %i.aca to i1
  br i1 %i.acb, label %.thread51.sink.split.i.i.i, label %.thread51.i.i.i

.thread51.sink.split.i.i.i:                       ; preds = %bb.dz, %bb.dy
  %.sink71.i.i.i = phi ptr [ %.mux.i.i.i, %bb.dy ], [ %i.aae, %bb.dz ]
  %.ph.i.i.i = phi double [ %.sroa.speculated.mux.i.i.i, %bb.dy ], [ %i.abv, %bb.dz ]
  %i.acc = getelementptr inbounds nuw i8, ptr %.sink71.i.i.i, i64 19
  %i.acd = load i8, ptr %i.acc, align 1, !tbaa !215, !range !205, !noalias !900, !noundef !206
  br label %.thread51.i.i.i

.thread51.i.i.i:                                  ; preds = %.thread51.sink.split.i.i.i, %bb.dz, %.thread.i.i.i50
  %i.ace = phi i1 [ false, %.thread51.sink.split.i.i.i ], [ false, %bb.dz ], [ true, %.thread.i.i.i50 ]
  %.04966.i.i.i = phi i8 [ %.04967.i.i.i, %.thread51.sink.split.i.i.i ], [ %.04967.i.i.i, %bb.dz ], [ %.049.i.i.i, %.thread.i.i.i50 ]
  %i.acf = phi double [ %i.abt, %.thread51.sink.split.i.i.i ], [ %i.abt, %bb.dz ], [ %.sroa.speculated36.i.i.i, %.thread.i.i.i50 ] ; 2 uses
  %.054.i.i.i = phi i8 [ %i.acd, %.thread51.sink.split.i.i.i ], [ 0, %bb.dz ], [ 1, %.thread.i.i.i50 ]
  %i.acg = phi double [ %.ph.i.i.i, %.thread51.sink.split.i.i.i ], [ %i.abv, %bb.dz ], [ f0x7FEFFFFFFFFFFFFF, %.thread.i.i.i50 ] ; 2 uses
  %i.ach = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38
          to label %.noexc39.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !898 ; 13 uses

.noexc39.i.i:                                     ; preds = %.thread51.i.i.i
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 8
  store i8 0, ptr %i.aci, align 8, !tbaa !91, !noalias !901
  %i.acj = getelementptr inbounds nuw i8, ptr %i.ach, i64 9
  store i8 1, ptr %i.acj, align 1, !tbaa !92, !noalias !901
  %i.ack = getelementptr inbounds nuw i8, ptr %i.ach, i64 12
  store i32 11, ptr %i.ack, align 4, !tbaa !93, !noalias !901
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common13AbstractRangeE, i64 16), ptr %i.ach, align 8, !tbaa !41, !noalias !901
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ach, i64 16
  store i8 %i.abb, ptr %i.acl, align 8, !tbaa !212, !noalias !901
  %i.acm = getelementptr inbounds nuw i8, ptr %i.ach, i64 17
  %i.acn = or i8 %.04966.i.i.i, %i.abb
  store i8 %i.acn, ptr %i.acm, align 1, !tbaa !214, !noalias !901
  %i.aco = getelementptr inbounds nuw i8, ptr %i.ach, i64 18
  store i8 %i.abe, ptr %i.aco, align 2, !tbaa !213, !noalias !901
  %i.acp = getelementptr inbounds nuw i8, ptr %i.ach, i64 19
  %i.acq = or i8 %.054.i.i.i, %i.abe
  store i8 %i.acq, ptr %i.acp, align 1, !tbaa !215, !noalias !901
  %i.acr = and i8 %i.abe, %i.abb
  %brmerge.demorgan.i.i.not.i.i.i.i = icmp eq i8 %i.acr, 0
  br i1 %brmerge.demorgan.i.i.not.i.i.i.i, label %_ZN8facebook5velox6common13AbstractRangeC2EbbbbbNS1_10FilterKindE.exit.i.i.i.i.i, label %bb.ea, !prof !167

bb.ea:                                            ; preds = %.noexc39.i.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6common13AbstractRangeC1EbbbbbNS1_10FilterKindEE18veloxCheckFailArgs, ptr noundef nonnull @.str.44) #40
          to label %.noexc.i.i.i.i unwind label %bb.eb, !noalias !901, !inline_history !14

.noexc.i.i.i.i:                                   ; preds = %bb.ea
  unreachable

_ZN8facebook5velox6common13AbstractRangeC2EbbbbbNS1_10FilterKindE.exit.i.i.i.i.i: ; preds = %.noexc39.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common18FloatingPointRangeIdEE, i64 16), ptr %i.ach, align 8, !tbaa !41, !noalias !901
  %i.acs = getelementptr inbounds nuw i8, ptr %i.ach, i64 24
  store double %i.acf, ptr %i.acs, align 8, !tbaa !165, !noalias !901
  %i.act = getelementptr inbounds nuw i8, ptr %i.ach, i64 32
  store double %i.acg, ptr %i.act, align 8, !tbaa !166, !noalias !901
  %i.acu = fcmp ord double %i.acf, 0.000000e+00
  %or.cond.not.i.i.i.i.i = or i1 %i.acu, %i.abf
  br i1 %or.cond.not.i.i.i.i.i, label %.critedge.i.i.i.i.i, label %.invoke.i.i.i.i, !prof !167

.critedge.i.i.i.i.i:                              ; preds = %_ZN8facebook5velox6common13AbstractRangeC2EbbbbbNS1_10FilterKindE.exit.i.i.i.i.i
  %i.acv = fcmp ord double %i.acg, 0.000000e+00
  %or.cond16.not.i.i.i.i.i = or i1 %i.ace, %i.acv
  br i1 %or.cond16.not.i.i.i.i.i, label %_ZN8facebook5velox4exec12_GLOBAL__N_125tryMergeOverlappingRangesIdEESt10unique_ptrINS0_6common18FloatingPointRangeIT_EESt14default_deleteIS8_EERKS8_SD_Rb.exit.i.i, label %.invoke.i.i.i.i, !prof !167

.invoke.i.i.i.i:                                  ; preds = %.critedge.i.i.i.i.i, %_ZN8facebook5velox6common13AbstractRangeC2EbbbbbNS1_10FilterKindE.exit.i.i.i.i.i
  %i.acw = phi ptr [ @_ZZN8facebook5velox6common18FloatingPointRangeIdEC1EdbbdbbbE18veloxCheckFailArgs, %_ZN8facebook5velox6common13AbstractRangeC2EbbbbbNS1_10FilterKindE.exit.i.i.i.i.i ], [ @_ZZN8facebook5velox6common18FloatingPointRangeIdEC1EdbbdbbbE18veloxCheckFailArgs_0, %.critedge.i.i.i.i.i ]
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) %i.acw) #40
          to label %.cont.i.i.i.i unwind label %bb.eb, !noalias !901, !inline_history !14

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.eb:                                            ; preds = %.invoke.i.i.i.i, %bb.ea
  %i.acx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ach, i64 noundef 40) #39, !noalias !901
  br label %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit38.i.i

_ZN8facebook5velox4exec12_GLOBAL__N_125tryMergeOverlappingRangesIdEESt10unique_ptrINS0_6common18FloatingPointRangeIT_EESt14default_deleteIS8_EERKS8_SD_Rb.exit.i.i: ; preds = %.critedge.i.i.i.i.i
  %i.acy = load ptr, ptr %i.aab, align 8, !tbaa !198, !noalias !898 ; 2 uses
  store ptr %i.ach, ptr %i.aab, align 8, !tbaa !198, !noalias !898
  %.not.i.i.i.i.i.i51 = icmp eq ptr %i.acy, null
  br i1 %.not.i.i.i.i.i.i51, label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS4_EED2Ev.exit50.i.i, label %_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIdEEEclEPS4_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIdEEEclEPS4_.exit.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_125tryMergeOverlappingRangesIdEESt10unique_ptrINS0_6common18FloatingPointRangeIT_EESt14default_deleteIS8_EERKS8_SD_Rb.exit.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.acy, i64 noundef 40) #39, !noalias !898
  br label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS4_EED2Ev.exit50.i.i

bb.ec:                                            ; preds = %.thread.thread.i.i.i
  br i1 %i.vj, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.acz = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38
          to label %_ZNSt10unique_ptrIN8facebook5velox6common10AlwaysTrueESt14default_deleteIS3_EED2Ev.exit.i.i54 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !898 ; 5 uses

_ZNSt10unique_ptrIN8facebook5velox6common10AlwaysTrueESt14default_deleteIS3_EED2Ev.exit.i.i54: ; preds = %bb.ed
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 8
  store i8 1, ptr %i.ada, align 8, !tbaa !91, !noalias !902
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acz, i64 9
  store i8 1, ptr %i.adb, align 1, !tbaa !92, !noalias !902
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acz, i64 12
  store i32 1, ptr %i.adc, align 4, !tbaa !93, !noalias !902
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common10AlwaysTrueE, i64 16), ptr %i.acz, align 8, !tbaa !41, !noalias !902
  br label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS4_EED2Ev.exit56.i.i

bb.ee:                                            ; preds = %bb.ec
  %i.add = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38
          to label %_ZNSt10unique_ptrIN8facebook5velox6common9IsNotNullESt14default_deleteIS3_EED2Ev.exit.i.i53 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !898 ; 5 uses

_ZNSt10unique_ptrIN8facebook5velox6common9IsNotNullESt14default_deleteIS3_EED2Ev.exit.i.i53: ; preds = %bb.ee
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 8
  store i8 0, ptr %i.ade, align 8, !tbaa !91, !noalias !903
  %i.adf = getelementptr inbounds nuw i8, ptr %i.add, i64 9
  store i8 1, ptr %i.adf, align 1, !tbaa !92, !noalias !903
  %i.adg = getelementptr inbounds nuw i8, ptr %i.add, i64 12
  store i32 3, ptr %i.adg, align 4, !tbaa !93, !noalias !903
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common9IsNotNullE, i64 16), ptr %i.add, align 8, !tbaa !41, !noalias !903
  br label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS4_EED2Ev.exit56.i.i

bb.ef:                                            ; preds = %bb.dt, %bb.ds
  %.not.i44.i.i = icmp eq ptr %i.zx, %i.zz
  br i1 %.not.i44.i.i, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  store i64 %i.aal, ptr %i.zx, align 8, !tbaa !198, !noalias !898
  store ptr null, ptr %i.aad, align 8, !tbaa !198, !noalias !898
  %i.adh = getelementptr inbounds nuw i8, ptr %i.zx, i64 8 ; 2 uses
  store ptr %i.adh, ptr %i.ze, align 8, !tbaa !210, !noalias !898
  br label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS4_EED2Ev.exit50.i.i

bb.eh:                                            ; preds = %bb.ef
  %i.adi = ptrtoint ptr %i.zx to i64              ; 3 uses
  %i.adj = ptrtoint ptr %i.zy to i64              ; 3 uses
  %i.adk = sub i64 %i.adi, %i.adj                 ; 4 uses
  %i.adl = icmp eq i64 %i.adk, 9223372036854775800
  br i1 %i.adl, label %bb.ei, label %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i67.i.i

bb.ei:                                            ; preds = %bb.eh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #40
          to label %.noexc85.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !898

.noexc85.i.i:                                     ; preds = %bb.ei
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i67.i.i: ; preds = %bb.eh
  %i.adm = ashr exact i64 %i.adk, 3               ; 3 uses
  %.sroa.speculated.i.i68.i.i = call i64 @llvm.umax.i64(i64 %i.adm, i64 1)
  %i.adn = add nsw i64 %.sroa.speculated.i.i68.i.i, %i.adm ; 2 uses
  %i.ado = icmp ult i64 %i.adn, %i.adm
  %i.adp = call i64 @llvm.umin.i64(i64 %i.adn, i64 1152921504606846975)
  %i.adq = select i1 %i.ado, i64 1152921504606846975, i64 %i.adp ; 3 uses
  %.not.i.i69.i.i = icmp ne i64 %i.adq, 0
  call void @llvm.assume(i1 %.not.i.i69.i.i)
  %i.adr = shl nuw nsw i64 %i.adq, 3
  %i.ads = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.adr) #38
          to label %.noexc86.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !898 ; 13 uses

.noexc86.i.i:                                     ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIdEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i67.i.i
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 %i.adk
  %i.adu = load i64, ptr %i.aad, align 8, !tbaa !198, !noalias !898
  store i64 %i.adu, ptr %i.adt, align 8, !tbaa !198, !noalias !898
  store ptr null, ptr %i.aad, align 8, !tbaa !198, !noalias !898
  %.not10.i.i.i.i70.i.i = icmp eq ptr %i.zy, %i.zx
  br i1 %.not10.i.i.i.i70.i.i, label %.noexc46.i.i, label %iter.check1428

iter.check1428:                                   ; preds = %.noexc86.i.i
  %i.adv = add i64 %i.adi, -8
  %i.adw = sub i64 %i.adv, %i.adj                 ; 3 uses
  %i.adx = lshr i64 %i.adw, 3
  %i.ady = add nuw nsw i64 %i.adx, 1              ; 5 uses
  %min.iters.check1410 = icmp ult i64 %i.adw, 24
  br i1 %min.iters.check1410, label %.lr.ph.i.i.i.i71.i.i.preheader, label %vector.memcheck1402

vector.memcheck1402:                              ; preds = %iter.check1428
  %scevgep1403 = getelementptr i8, ptr %i.ads, i64 8
  %i.adz = add i64 %i.adi, -8
  %i.aea = sub i64 %i.adz, %i.adj
  %i.aeb = and i64 %i.aea, -8                     ; 2 uses
  %scevgep1404 = getelementptr i8, ptr %scevgep1403, i64 %i.aeb
  %scevgep1405 = getelementptr i8, ptr %i.zy, i64 8
  %scevgep1406 = getelementptr i8, ptr %scevgep1405, i64 %i.aeb
  %bound01407 = icmp ult ptr %i.ads, %scevgep1406
  %bound11408 = icmp ult ptr %i.zy, %scevgep1404
  %found.conflict1409 = and i1 %bound01407, %bound11408
  br i1 %found.conflict1409, label %.lr.ph.i.i.i.i71.i.i.preheader, label %vector.main.loop.iter.check1411

vector.main.loop.iter.check1411:                  ; preds = %vector.memcheck1402
  %min.iters.check1412 = icmp ult i64 %i.adw, 120
  br i1 %min.iters.check1412, label %vec.epilog.ph1432, label %vector.ph1413

vector.ph1413:                                    ; preds = %vector.main.loop.iter.check1411
  %i.aec = and i64 %i.ady, 12
  %n.vec1414 = and i64 %i.ady, 4611686018427387888 ; 4 uses
  %i.aed = shl i64 %n.vec1414, 3                  ; 2 uses
  %i.aee = getelementptr i8, ptr %i.ads, i64 %i.aed ; 2 uses
  %i.aef = getelementptr i8, ptr %i.zy, i64 %i.aed
  br label %vector.body1415

vector.body1415:                                  ; preds = %vector.ph1413, %vector.body1415
  %index1416 = phi i64 [ 0, %vector.ph1413 ], [ %index.next1423, %vector.body1415 ] ; 2 uses
  %i.aeg = shl i64 %index1416, 3                  ; 2 uses
  %next.gep1417 = getelementptr i8, ptr %i.ads, i64 %i.aeg ; 4 uses
  %next.gep1418 = getelementptr i8, ptr %i.zy, i64 %i.aeg ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !904)
  call void @llvm.experimental.noalias.scope.decl(metadata !905)
  %i.aeh = getelementptr i8, ptr %next.gep1418, i64 32
  %i.aei = getelementptr i8, ptr %next.gep1418, i64 64
  %i.aej = getelementptr i8, ptr %next.gep1418, i64 96
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4exec26ExprToSubfieldFilterParser12makeOrFilterESt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE:bb.a
  %i.aof = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i36.i248, i64 8 ; 2 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i35.i247, i64 8 ; 2 uses
  %.not.i.i.i.i37.i249 = icmp eq ptr %i.aof, %i.amn
  br i1 %.not.i.i.i.i37.i249, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i, label %.lr.ph.i.i.i.i34.i246, !llvm.loop !819

_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i34.i246, %middle.block1508, %vec.epilog.middle.block1524, %.noexc41.i244
  %.0.lcssa.i.i.i.i.i250 = phi ptr [ %i.anb, %.noexc41.i244 ], [ %i.aoa, %vec.epilog.middle.block1524 ], [ %i.anm, %middle.block1508 ], [ %i.aog, %.lr.ph.i.i.i.i34.i246 ]
  %i.aoh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i250, i64 8 ; 2 uses
  %.not.i23.i.i251 = icmp eq ptr %i.amm, null
  br i1 %.not.i23.i.i251, label %.noexc20.i252, label %bb.fx

bb.fx:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.amm, i64 noundef %i.amt) #39, !noalias !916
  br label %.noexc20.i252

.noexc20.i252:                                    ; preds = %bb.fx, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS5_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit22.i.i
  store ptr %i.anb, ptr %6, align 8, !tbaa !218, !noalias !916
  store ptr %i.aoh, ptr %i.ali, align 8, !tbaa !219, !noalias !916
  %i.aoi = getelementptr inbounds nuw [8 x i8], ptr %i.anb, i64 %i.amz ; 2 uses
  store ptr %i.aoi, ptr %i.akz, align 8, !tbaa !220, !noalias !916
  br label %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit.i130

_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit.i130: ; preds = %.noexc20.i252, %bb.fu
  %.pre115.i132 = phi ptr [ %i.anb, %.noexc20.i252 ], [ %i.amm, %bb.fu ] ; 11 uses
  %i.aoj = phi ptr [ %i.aoi, %.noexc20.i252 ], [ %i.amn, %bb.fu ]
  %i.aok = phi ptr [ %i.aoh, %.noexc20.i252 ], [ %i.amq, %bb.fu ] ; 7 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %.sroa.049.090.i128, i64 8 ; 2 uses
  %i.aom = icmp eq ptr %i.aol, %i.alf
  br i1 %i.aom, label %._crit_edge.i131, label %.lr.ph.i127

.loopexit.split-lp.i253.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i, %bb.fw
  %lpad.loopexit.split-lp1656 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i23.i243 = icmp eq i64 %i.amp, 0
  br i1 %.not.i23.i243, label %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit28.i123, label %_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIfEEEclEPS4_.exit.i24.i

_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIfEEEclEPS4_.exit.i24.i: ; preds = %.loopexit.split-lp.i253.loopexit.split-lp.loopexit.split-lp
  %i.aon = inttoptr i64 %i.amp to ptr
  call void @_ZdlPvm(ptr noundef nonnull %i.aon, i64 noundef 32) #39, !noalias !916
  br label %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit28.i123

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEEZNS4_4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEES2_INS5_6FilterES8_ISJ_EERSC_ISL_SaISL_EEEUlRKT_RKT0_E_EvSP_SP_SS_.exit.i: ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS4_4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEES2_INS5_6FilterES8_ISL_EERSC_ISN_SaISN_EEEUlRKT_RKT0_E_EEEvSR_SU_.exit.i.i.i.i.i, %bb.fs, %bb.fp, %._crit_edge.i131, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS5_EESaIS8_EE7reserveEm.exit.i
  %i.aoo = phi ptr [ %i.ale, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS5_EESaIS8_EE7reserveEm.exit.i ], [ %.pre115.i132, %._crit_edge.i131 ], [ %.pre115.i132, %bb.fs ], [ %.pre115.i132, %bb.fp ], [ %.pre115.i132, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEENS0_5__ops14_Val_comp_iterIZNS4_4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEES2_INS5_6FilterES8_ISL_EERSC_ISN_SaISN_EEEUlRKT_RKT0_E_EEEvSR_SU_.exit.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !922)
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !916
  %i.aop = zext i1 %i.akx to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37, !noalias !923
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !923
  %i.aoq = load ptr, ptr %i.aoo, align 8, !tbaa !200, !noalias !923
  %.sroa.011.0.insert.ext.i.i133 = zext i1 %i.akx to i16
  %.sroa.011.0.insert.insert.i.i134 = or disjoint i16 %.sroa.011.0.insert.ext.i.i133, 256
  invoke void @_ZNK8facebook5velox6common18FloatingPointRangeIfE5cloneESt8optionalIbE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.27") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.aoq, i16 %.sroa.011.0.insert.insert.i.i134)
          to label %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i135.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !923

_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS7_EESt6vectorISA_SaISA_EEEEZNS4_4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEES2_INS5_6FilterES8_ISJ_EERSC_ISL_SaISL_EEEUlRKT_RKT0_E_EvSP_SP_SS_.exit.i
  %i.aor = load ptr, ptr %5, align 8, !tbaa !94, !noalias !924 ; 3 uses
  store ptr null, ptr %5, align 8, !tbaa !94, !noalias !924
  %i.aos = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.aou = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #38
          to label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit.i.i unwind label %bb.fy, !noalias !923 ; 5 uses

_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit.i.i: ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aov = ptrtoint ptr %i.aor to i64
  store i64 %i.aov, ptr %i.aou, align 8, !tbaa !200, !noalias !923
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aou, i64 8 ; 5 uses
  %.pre.pre.i.i142 = load ptr, ptr %5, align 8, !tbaa !94, !noalias !923 ; 3 uses
  store ptr %i.aou, ptr %4, align 8, !tbaa !218, !noalias !923
  store ptr %i.aow, ptr %i.aos, align 8, !tbaa !219, !noalias !923
  store ptr %i.aow, ptr %i.aot, align 8, !tbaa !220, !noalias !923
  %.not.i32.i.i143 = icmp eq ptr %.pre.pre.i.i142, null
  br i1 %.not.i32.i.i143, label %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit.i.i145, label %_ZNKSt14default_deleteIN8facebook5velox6common6FilterEEclEPS3_.exit.i.i.i144

_ZNKSt14default_deleteIN8facebook5velox6common6FilterEEclEPS3_.exit.i.i.i144: ; preds = %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit.i.i
  %i.aox = load ptr, ptr %.pre.pre.i.i142, align 8, !tbaa !41, !noalias !923
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 16
  %i.aoz = load ptr, ptr %i.aoy, align 8, !noalias !923
  call void %i.aoz(ptr noundef nonnull align 8 dereferenceable(16) %.pre.pre.i.i142) #37, !noalias !923, !inline_history !824
  br label %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit.i.i145

_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit.i.i145: ; preds = %_ZNKSt14default_deleteIN8facebook5velox6common6FilterEEclEPS3_.exit.i.i.i144, %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit.i.i
  %i.apa = load ptr, ptr %i.ali, align 8, !tbaa !219, !noalias !923 ; 2 uses
  %i.apb = load ptr, ptr %6, align 8, !tbaa !218, !noalias !923 ; 2 uses
  %i.apc = ptrtoint ptr %i.apa to i64
  %i.apd = ptrtoint ptr %i.apb to i64
  %i.ape = sub i64 %i.apc, %i.apd
  %.not31.i.i146 = icmp ugt i64 %i.ape, 8
  br i1 %.not31.i.i146, label %.lr.ph.i.i187, label %.critedge30.i.i147

bb.fy:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.apf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i33.i.i139 = icmp eq ptr %i.aor, null
  br i1 %.not.i33.i.i139, label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit35.i.i, label %_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIfEEEclEPS4_.exit.i34.i.i

_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIfEEEclEPS4_.exit.i34.i.i: ; preds = %bb.fy
  call void @_ZdlPvm(ptr noundef nonnull %i.aor, i64 noundef 32) #39, !noalias !923
  br label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit35.i.i

_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit35.i.i: ; preds = %_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIfEEEclEPS4_.exit.i34.i.i, %bb.fy
  %i.apg = load ptr, ptr %5, align 8, !tbaa !94, !noalias !923 ; 3 uses
  %.not.i36.i.i140 = icmp eq ptr %i.apg, null
  br i1 %.not.i36.i.i140, label %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit38.i.i137, label %_ZNKSt14default_deleteIN8facebook5velox6common6FilterEEclEPS3_.exit.i37.i.i141

_ZNKSt14default_deleteIN8facebook5velox6common6FilterEEclEPS3_.exit.i37.i.i141: ; preds = %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit35.i.i
  %i.aph = load ptr, ptr %i.apg, align 8, !tbaa !41, !noalias !923
  %i.api = getelementptr inbounds nuw i8, ptr %i.aph, i64 16
  %i.apj = load ptr, ptr %i.api, align 8, !noalias !923
  call void %i.apj(ptr noundef nonnull align 8 dereferenceable(16) %i.apg) #37, !noalias !923, !inline_history !824
  br label %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit38.i.i137

.lr.ph.i.i187:                                    ; preds = %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit.i.i145, %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit50.i.i
  %i.apk = phi ptr [ %i.aup, %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit50.i.i ], [ %i.apa, %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit.i.i145 ] ; 3 uses
  %i.apl = phi ptr [ %i.auq, %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit50.i.i ], [ %i.aow, %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit.i.i145 ] ; 11 uses
  %i.apm = phi ptr [ %i.aur, %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit50.i.i ], [ %i.aou, %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit.i.i145 ] ; 16 uses
  %i.apn = phi ptr [ %i.aus, %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit50.i.i ], [ %i.aow, %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit.i.i145 ] ; 4 uses
  %indvars.iv.i.i188 = phi i64 [ %indvars.iv.next.i.i213, %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit50.i.i ], [ 1, %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit.i.i145 ] ; 2 uses
  %i.apo = phi ptr [ %i.aut, %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit50.i.i ], [ %i.apb, %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit.i.i145 ]
  %i.app = getelementptr inbounds i8, ptr %i.apl, i64 -8 ; 3 uses
  %i.apq = load ptr, ptr %i.app, align 8, !tbaa !200, !noalias !923 ; 9 uses
  %i.apr = getelementptr inbounds nuw [8 x i8], ptr %i.apo, i64 %indvars.iv.i.i188 ; 4 uses
  %i.aps = load ptr, ptr %i.apr, align 8, !noalias !923 ; 10 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apq, i64 18
  %i.apu = load i8, ptr %i.apt, align 2, !tbaa !213, !range !205, !noalias !925, !noundef !206
  %i.apv = trunc nuw i8 %i.apu to i1              ; 2 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %i.aps, i64 16
  %i.apx = load i8, ptr %i.apw, align 8, !range !205, !noalias !925 ; 2 uses
  %i.apy = trunc nuw i8 %i.apx to i1
  %or.cond57.i.i.i189 = select i1 %i.apv, i1 true, i1 %i.apy
  %i.apz = ptrtoint ptr %i.aps to i64
  br i1 %or.cond57.i.i.i189, label %bb.gb, label %bb.fz

bb.fz:                                            ; preds = %.lr.ph.i.i187
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apq, i64 24
  %i.aqb = load float, ptr %i.aqa, align 8, !tbaa !172, !noalias !925 ; 2 uses
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aps, i64 20
  %i.aqd = load float, ptr %i.aqc, align 4, !tbaa !171, !noalias !925 ; 2 uses
  %i.aqe = fcmp olt float %i.aqb, %i.aqd
  br i1 %i.aqe, label %bb.gm, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.aqf = fcmp oeq float %i.aqb, %i.aqd
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.apq, i64 19
  %i.aqh = load i8, ptr %i.aqg, align 1, !range !205, !noalias !925
  %i.aqi = trunc nuw i8 %i.aqh to i1
  %or.cond60.i.i.i190 = select i1 %i.aqf, i1 %i.aqi, i1 false
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aps, i64 17
  %i.aqk = load i8, ptr %i.aqj, align 1, !range !205, !noalias !925
  %i.aql = trunc nuw i8 %i.aqk to i1
  %or.cond63.i.i.i191 = select i1 %or.cond60.i.i.i190, i1 %i.aql, i1 false
  br i1 %or.cond63.i.i.i191, label %bb.gm, label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %.lr.ph.i.i187
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.apq, i64 16
  %i.aqn = load i8, ptr %i.aqm, align 8, !tbaa !212, !range !205, !noalias !925, !noundef !206
  %i.aqo = trunc nuw i8 %i.aqn to i1
  %i.aqp = select i1 %i.aqo, i8 1, i8 %i.apx      ; 4 uses
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aps, i64 18
  %i.aqr = load i8, ptr %i.aqq, align 2, !range !205, !noalias !925
  %i.aqs = select i1 %i.apv, i8 1, i8 %i.aqr      ; 5 uses
  %i.aqt = trunc nuw i8 %i.aqp to i1              ; 2 uses
  br i1 %i.aqt, label %.thread.thread.i.i.i215, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.apq, i64 20
  %i.aqv = load float, ptr %i.aqu, align 4, !tbaa !171, !noalias !925 ; 3 uses
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aps, i64 20
  %i.aqx = load float, ptr %i.aqw, align 4, !tbaa !171, !noalias !925 ; 3 uses
  %i.aqy = fcmp olt float %i.aqx, %i.aqv
  %.sroa.speculated36.v.i.i.i = select i1 %i.aqy, float %i.aqx, float %i.aqv ; 2 uses
  %i.aqz = fcmp olt float %i.aqv, %i.aqx
  %i.ara = getelementptr inbounds nuw i8, ptr %i.apq, i64 17
  %i.arb = load i8, ptr %i.ara, align 1, !tbaa !214, !range !205, !noalias !925, !noundef !206 ; 2 uses
  br i1 %i.aqz, label %.thread.i.i.i192, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.arc = trunc nuw i8 %i.arb to i1
  br i1 %i.arc, label %bb.ge, label %.thread.i.i.i192

bb.ge:                                            ; preds = %bb.gd
  %i.ard = getelementptr inbounds nuw i8, ptr %i.aps, i64 17
  %i.are = load i8, ptr %i.ard, align 1, !tbaa !214, !range !205, !noalias !925, !noundef !206
  br label %.thread.i.i.i192

.thread.i.i.i192:                                 ; preds = %bb.ge, %bb.gd, %bb.gc
  %.049.i.i.i193 = phi i8 [ 0, %bb.gd ], [ %i.are, %bb.ge ], [ %i.arb, %bb.gc ] ; 2 uses
  %i.arf = trunc nuw i8 %i.aqs to i1
  br i1 %i.arf, label %.thread51.i.i.i200, label %bb.gf

.thread.thread.i.i.i215:                          ; preds = %bb.gb
  %i.arg = trunc nuw i8 %i.aqs to i1
  br i1 %i.arg, label %bb.gj, label %bb.gf

bb.gf:                                            ; preds = %.thread.thread.i.i.i215, %.thread.i.i.i192
  %.04967.i.i.i194 = phi i8 [ 1, %.thread.thread.i.i.i215 ], [ %.049.i.i.i193, %.thread.i.i.i192 ] ; 2 uses
  %i.arh = phi float [ f0xFF7FFFFF, %.thread.thread.i.i.i215 ], [ %.sroa.speculated36.v.i.i.i, %.thread.i.i.i192 ] ; 2 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %i.apq, i64 24
  %i.arj = load float, ptr %i.ari, align 8, !tbaa !172, !noalias !925 ; 5 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %i.aps, i64 24
  %i.arl = load float, ptr %i.ark, align 8, !tbaa !172, !noalias !925 ; 3 uses
  %i.arm = fcmp ogt float %i.arj, %i.arl          ; 2 uses
  %brmerge.i.i.i195 = fcmp ueq float %i.arj, %i.arl
  %.mux.i.i.i196 = select i1 %i.arm, ptr %i.apq, ptr %i.aps
  %.sroa.speculated.v.mux.i.i.i = select i1 %i.arm, float %i.arj, float %i.arl
  br i1 %brmerge.i.i.i195, label %bb.gg, label %.thread51.sink.split.i.i.i197

bb.gg:                                            ; preds = %bb.gf
  %i.arn = getelementptr inbounds nuw i8, ptr %i.apq, i64 19
  %i.aro = load i8, ptr %i.arn, align 1, !tbaa !215, !range !205, !noalias !925, !noundef !206
  %i.arp = trunc nuw i8 %i.aro to i1
  br i1 %i.arp, label %.thread51.sink.split.i.i.i197, label %.thread51.i.i.i200

.thread51.sink.split.i.i.i197:                    ; preds = %bb.gg, %bb.gf
  %.sink71.i.i.i198 = phi ptr [ %.mux.i.i.i196, %bb.gf ], [ %i.aps, %bb.gg ]
  %.ph.i.i.i199 = phi float [ %.sroa.speculated.v.mux.i.i.i, %bb.gf ], [ %i.arj, %bb.gg ]
  %i.arq = getelementptr inbounds nuw i8, ptr %.sink71.i.i.i198, i64 19
  %i.arr = load i8, ptr %i.arq, align 1, !tbaa !215, !range !205, !noalias !925, !noundef !206
  br label %.thread51.i.i.i200

.thread51.i.i.i200:                               ; preds = %.thread51.sink.split.i.i.i197, %bb.gg, %.thread.i.i.i192
  %i.ars = phi i1 [ false, %.thread51.sink.split.i.i.i197 ], [ false, %bb.gg ], [ true, %.thread.i.i.i192 ]
  %.04966.i.i.i201 = phi i8 [ %.04967.i.i.i194, %.thread51.sink.split.i.i.i197 ], [ %.04967.i.i.i194, %bb.gg ], [ %.049.i.i.i193, %.thread.i.i.i192 ]
  %i.art = phi float [ %i.arh, %.thread51.sink.split.i.i.i197 ], [ %i.arh, %bb.gg ], [ %.sroa.speculated36.v.i.i.i, %.thread.i.i.i192 ] ; 2 uses
  %.054.i.i.i202 = phi i8 [ %i.arr, %.thread51.sink.split.i.i.i197 ], [ 0, %bb.gg ], [ 1, %.thread.i.i.i192 ]
  %i.aru = phi float [ %.ph.i.i.i199, %.thread51.sink.split.i.i.i197 ], [ %i.arj, %bb.gg ], [ f0x7F7FFFFF, %.thread.i.i.i192 ] ; 2 uses
  %i.arv = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #38
          to label %.noexc39.i.i203 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i135.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !923 ; 13 uses

.noexc39.i.i203:                                  ; preds = %.thread51.i.i.i200
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arv, i64 8
  store i8 0, ptr %i.arw, align 8, !tbaa !91, !noalias !926
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arv, i64 9
  store i8 1, ptr %i.arx, align 1, !tbaa !92, !noalias !926
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arv, i64 12
  store i32 12, ptr %i.ary, align 4, !tbaa !93, !noalias !926
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common13AbstractRangeE, i64 16), ptr %i.arv, align 8, !tbaa !41, !noalias !926
  %i.arz = getelementptr inbounds nuw i8, ptr %i.arv, i64 16
  store i8 %i.aqp, ptr %i.arz, align 8, !tbaa !212, !noalias !926
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arv, i64 17
  %i.asb = or i8 %.04966.i.i.i201, %i.aqp
  store i8 %i.asb, ptr %i.asa, align 1, !tbaa !214, !noalias !926
  %i.asc = getelementptr inbounds nuw i8, ptr %i.arv, i64 18
  store i8 %i.aqs, ptr %i.asc, align 2, !tbaa !213, !noalias !926
  %i.asd = getelementptr inbounds nuw i8, ptr %i.arv, i64 19
  %i.ase = or i8 %.054.i.i.i202, %i.aqs
  store i8 %i.ase, ptr %i.asd, align 1, !tbaa !215, !noalias !926
  %i.asf = and i8 %i.aqs, %i.aqp
  %brmerge.demorgan.i.i.not.i.i.i.i204 = icmp eq i8 %i.asf, 0
  br i1 %brmerge.demorgan.i.i.not.i.i.i.i204, label %_ZN8facebook5velox6common13AbstractRangeC2EbbbbbNS1_10FilterKindE.exit.i.i.i.i.i206, label %bb.gh, !prof !167

bb.gh:                                            ; preds = %.noexc39.i.i203
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6common13AbstractRangeC1EbbbbbNS1_10FilterKindEE18veloxCheckFailArgs, ptr noundef nonnull @.str.44) #40
          to label %.noexc.i.i.i.i205 unwind label %bb.gi, !noalias !926, !inline_history !15

.noexc.i.i.i.i205:                                ; preds = %bb.gh
  unreachable

_ZN8facebook5velox6common13AbstractRangeC2EbbbbbNS1_10FilterKindE.exit.i.i.i.i.i206: ; preds = %.noexc39.i.i203
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common18FloatingPointRangeIfEE, i64 16), ptr %i.arv, align 8, !tbaa !41, !noalias !926
  %i.asg = getelementptr inbounds nuw i8, ptr %i.arv, i64 20
  store float %i.art, ptr %i.asg, align 4, !tbaa !171, !noalias !926
  %i.ash = getelementptr inbounds nuw i8, ptr %i.arv, i64 24
  store float %i.aru, ptr %i.ash, align 8, !tbaa !172, !noalias !926
  %i.asi = fcmp ord float %i.art, 0.000000e+00
  %or.cond.not.i.i.i.i.i207 = or i1 %i.asi, %i.aqt
  br i1 %or.cond.not.i.i.i.i.i207, label %.critedge.i.i.i.i.i210, label %.invoke.i.i.i.i208, !prof !167

.critedge.i.i.i.i.i210:                           ; preds = %_ZN8facebook5velox6common13AbstractRangeC2EbbbbbNS1_10FilterKindE.exit.i.i.i.i.i206
  %i.asj = fcmp ord float %i.aru, 0.000000e+00
  %or.cond16.not.i.i.i.i.i211 = or i1 %i.ars, %i.asj
  br i1 %or.cond16.not.i.i.i.i.i211, label %_ZN8facebook5velox4exec12_GLOBAL__N_125tryMergeOverlappingRangesIfEESt10unique_ptrINS0_6common18FloatingPointRangeIT_EESt14default_deleteIS8_EERKS8_SD_Rb.exit.i.i, label %.invoke.i.i.i.i208, !prof !167

.invoke.i.i.i.i208:                               ; preds = %.critedge.i.i.i.i.i210, %_ZN8facebook5velox6common13AbstractRangeC2EbbbbbNS1_10FilterKindE.exit.i.i.i.i.i206
  %i.ask = phi ptr [ @_ZZN8facebook5velox6common18FloatingPointRangeIfEC1EfbbfbbbE18veloxCheckFailArgs, %_ZN8facebook5velox6common13AbstractRangeC2EbbbbbNS1_10FilterKindE.exit.i.i.i.i.i206 ], [ @_ZZN8facebook5velox6common18FloatingPointRangeIfEC1EfbbfbbbE18veloxCheckFailArgs_0, %.critedge.i.i.i.i.i210 ]
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) %i.ask) #40
          to label %.cont.i.i.i.i209 unwind label %bb.gi, !noalias !926, !inline_history !15

.cont.i.i.i.i209:                                 ; preds = %.invoke.i.i.i.i208
  unreachable

bb.gi:                                            ; preds = %.invoke.i.i.i.i208, %bb.gh
  %i.asl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.arv, i64 noundef 32) #39, !noalias !926
  br label %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit38.i.i137

_ZN8facebook5velox4exec12_GLOBAL__N_125tryMergeOverlappingRangesIfEESt10unique_ptrINS0_6common18FloatingPointRangeIT_EESt14default_deleteIS8_EERKS8_SD_Rb.exit.i.i: ; preds = %.critedge.i.i.i.i.i210
  %i.asm = load ptr, ptr %i.app, align 8, !tbaa !200, !noalias !923 ; 2 uses
  store ptr %i.arv, ptr %i.app, align 8, !tbaa !200, !noalias !923
  %.not.i.i.i.i.i.i212 = icmp eq ptr %i.asm, null
  br i1 %.not.i.i.i.i.i.i212, label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit50.i.i, label %_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIfEEEclEPS4_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN8facebook5velox6common18FloatingPointRangeIfEEEclEPS4_.exit.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_125tryMergeOverlappingRangesIfEESt10unique_ptrINS0_6common18FloatingPointRangeIT_EESt14default_deleteIS8_EERKS8_SD_Rb.exit.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.asm, i64 noundef 32) #39, !noalias !923
  br label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit50.i.i

bb.gj:                                            ; preds = %.thread.thread.i.i.i215
  br i1 %i.akx, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.asn = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38
          to label %_ZNSt10unique_ptrIN8facebook5velox6common10AlwaysTrueESt14default_deleteIS3_EED2Ev.exit.i.i217 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i135.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !923 ; 5 uses

_ZNSt10unique_ptrIN8facebook5velox6common10AlwaysTrueESt14default_deleteIS3_EED2Ev.exit.i.i217: ; preds = %bb.gk
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 8
  store i8 1, ptr %i.aso, align 8, !tbaa !91, !noalias !927
  %i.asp = getelementptr inbounds nuw i8, ptr %i.asn, i64 9
  store i8 1, ptr %i.asp, align 1, !tbaa !92, !noalias !927
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asn, i64 12
  store i32 1, ptr %i.asq, align 4, !tbaa !93, !noalias !927
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common10AlwaysTrueE, i64 16), ptr %i.asn, align 8, !tbaa !41, !noalias !927
  br label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit56.i.i

bb.gl:                                            ; preds = %bb.gj
  %i.asr = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #38
          to label %_ZNSt10unique_ptrIN8facebook5velox6common9IsNotNullESt14default_deleteIS3_EED2Ev.exit.i.i216 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i135.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !923 ; 5 uses

_ZNSt10unique_ptrIN8facebook5velox6common9IsNotNullESt14default_deleteIS3_EED2Ev.exit.i.i216: ; preds = %bb.gl
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asr, i64 8
  store i8 0, ptr %i.ass, align 8, !tbaa !91, !noalias !928
  %i.ast = getelementptr inbounds nuw i8, ptr %i.asr, i64 9
  store i8 1, ptr %i.ast, align 1, !tbaa !92, !noalias !928
  %i.asu = getelementptr inbounds nuw i8, ptr %i.asr, i64 12
  store i32 3, ptr %i.asu, align 4, !tbaa !93, !noalias !928
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN8facebook5velox6common9IsNotNullE, i64 16), ptr %i.asr, align 8, !tbaa !41, !noalias !928
  br label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit56.i.i

bb.gm:                                            ; preds = %bb.ga, %bb.fz
  %.not.i44.i.i218 = icmp eq ptr %i.apl, %i.apn
  br i1 %.not.i44.i.i218, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  store i64 %i.apz, ptr %i.apl, align 8, !tbaa !200, !noalias !923
  store ptr null, ptr %i.apr, align 8, !tbaa !200, !noalias !923
  %i.asv = getelementptr inbounds nuw i8, ptr %i.apl, i64 8 ; 2 uses
  store ptr %i.asv, ptr %i.aos, align 8, !tbaa !219, !noalias !923
  br label %_ZNSt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS4_EED2Ev.exit50.i.i

bb.go:                                            ; preds = %bb.gm
  %i.asw = ptrtoint ptr %i.apl to i64             ; 3 uses
  %i.asx = ptrtoint ptr %i.apm to i64             ; 3 uses
  %i.asy = sub i64 %i.asw, %i.asx                 ; 4 uses
  %i.asz = icmp eq i64 %i.asy, 9223372036854775800
  br i1 %i.asz, label %bb.gp, label %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i67.i.i

bb.gp:                                            ; preds = %bb.go
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #40
          to label %.noexc85.i.i229 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i135.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !923

.noexc85.i.i229:                                  ; preds = %bb.gp
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i67.i.i: ; preds = %bb.go
  %i.ata = ashr exact i64 %i.asy, 3               ; 3 uses
  %.sroa.speculated.i.i68.i.i219 = call i64 @llvm.umax.i64(i64 %i.ata, i64 1)
  %i.atb = add nsw i64 %.sroa.speculated.i.i68.i.i219, %i.ata ; 2 uses
  %i.atc = icmp ult i64 %i.atb, %i.ata
  %i.atd = call i64 @llvm.umin.i64(i64 %i.atb, i64 1152921504606846975)
  %i.ate = select i1 %i.atc, i64 1152921504606846975, i64 %i.atd ; 3 uses
  %.not.i.i69.i.i220 = icmp ne i64 %i.ate, 0
  call void @llvm.assume(i1 %.not.i.i69.i.i220)
  %i.atf = shl nuw nsw i64 %i.ate, 3
  %i.atg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.atf) #38
          to label %.noexc86.i.i221 unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i135.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !923 ; 13 uses

.noexc86.i.i221:                                  ; preds = %_ZNKSt6vectorISt10unique_ptrIN8facebook5velox6common18FloatingPointRangeIfEESt14default_deleteIS5_EESaIS8_EE12_M_check_lenEmPKc.exit.i67.i.i
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atg, i64 %i.asy
  %i.ati = load i64, ptr %i.apr, align 8, !tbaa !200, !noalias !923
  store i64 %i.ati, ptr %i.ath, align 8, !tbaa !200, !noalias !923
  store ptr null, ptr %i.apr, align 8, !tbaa !200, !noalias !923
  %.not10.i.i.i.i70.i.i222 = icmp eq ptr %i.apm, %i.apl
  br i1 %.not10.i.i.i.i70.i.i222, label %.noexc46.i.i227, label %iter.check1554

iter.check1554:                                   ; preds = %.noexc86.i.i221
  %i.atj = add i64 %i.asw, -8
  %i.atk = sub i64 %i.atj, %i.asx                 ; 3 uses
  %i.atl = lshr i64 %i.atk, 3
  %i.atm = add nuw nsw i64 %i.atl, 1              ; 5 uses
  %min.iters.check1536 = icmp ult i64 %i.atk, 24
  br i1 %min.iters.check1536, label %.lr.ph.i.i.i.i71.i.i223.preheader, label %vector.memcheck1528

vector.memcheck1528:                              ; preds = %iter.check1554
  %scevgep1529 = getelementptr i8, ptr %i.atg, i64 8
  %i.atn = add i64 %i.asw, -8
  %i.ato = sub i64 %i.atn, %i.asx
  %i.atp = and i64 %i.ato, -8                     ; 2 uses
  %scevgep1530 = getelementptr i8, ptr %scevgep1529, i64 %i.atp
  %scevgep1531 = getelementptr i8, ptr %i.apm, i64 8
  %scevgep1532 = getelementptr i8, ptr %scevgep1531, i64 %i.atp
  %bound01533 = icmp ult ptr %i.atg, %scevgep1532
  %bound11534 = icmp ult ptr %i.apm, %scevgep1530
  %found.conflict1535 = and i1 %bound01533, %bound11534
  br i1 %found.conflict1535, label %.lr.ph.i.i.i.i71.i.i223.preheader, label %vector.main.loop.iter.check1537

vector.main.loop.iter.check1537:                  ; preds = %vector.memcheck1528
  %min.iters.check1538 = icmp ult i64 %i.atk, 120
  br i1 %min.iters.check1538, label %vec.epilog.ph1558, label %vector.ph1539

vector.ph1539:                                    ; preds = %vector.main.loop.iter.check1537
  %i.atq = and i64 %i.atm, 12
  %n.vec1540 = and i64 %i.atm, 4611686018427387888 ; 4 uses
  %i.atr = shl i64 %n.vec1540, 3                  ; 2 uses
  %i.ats = getelementptr i8, ptr %i.atg, i64 %i.atr ; 2 uses
  %i.att = getelementptr i8, ptr %i.apm, i64 %i.atr
  br label %vector.body1541

vector.body1541:                                  ; preds = %vector.ph1539, %vector.body1541
  %index1542 = phi i64 [ 0, %vector.ph1539 ], [ %index.next1549, %vector.body1541 ] ; 2 uses
  %i.atu = shl i64 %index1542, 3                  ; 2 uses
  %next.gep1543 = getelementptr i8, ptr %i.atg, i64 %i.atu ; 4 uses
  %next.gep1544 = getelementptr i8, ptr %i.apm, i64 %i.atu ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !929)
  call void @llvm.experimental.noalias.scope.decl(metadata !930)
  %i.atv = getelementptr i8, ptr %next.gep1544, i64 32
  %i.atw = getelementptr i8, ptr %next.gep1544, i64 64
  %i.atx = getelementptr i8, ptr %next.gep1544, i64 96
  %wide.load1545 = load <4 x i64>, ptr %next.gep1544, align 8, !tbaa !200, !alias.scope !931, !noalias !923
  %wide.load1546 = load <4 x i64>, ptr %i.atv, align 8, !tbaa !200, !alias.scope !931, !noalias !923
  %wide.load1547 = load <4 x i64>, ptr %i.atw, align 8, !tbaa !200, !alias.scope !931, !noalias !923
  %wide.load1548 = load <4 x i64>, ptr %i.atx, align 8, !tbaa !200, !alias.scope !931, !noalias !923
  %i.aty = getelementptr i8, ptr %next.gep1543, i64 32
  %i.atz = getelementptr i8, ptr %next.gep1543, i64 64
  %i.aua = getelementptr i8, ptr %next.gep1543, i64 96
  store <4 x i64> %wide.load1545, ptr %next.gep1543, align 8, !tbaa !200, !alias.scope !932, !noalias !933
  store <4 x i64> %wide.load1546, ptr %i.aty, align 8, !tbaa !200, !alias.scope !932, !noalias !933
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox4exec26ExprToSubfieldFilterParser12makeOrFilterESt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE:bb.a
  %i.bak = getelementptr i8, ptr %.val.i16.i.i.i.i.i.i.i344, i64 8
  %.val.val.i17.i.i.i.i.i.i.i345 = load i8, ptr %i.bak, align 8, !tbaa !91, !range !205, !noalias !941, !noundef !206
  %i.bal = trunc nuw i8 %.val.val.i17.i.i.i.i.i.i.i345 to i1
  br i1 %i.bal, label %_ZN8facebook5velox4exec12_GLOBAL__N_113isNullAllowedERKSt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE.exit.i320.loopexit.split.loop.exit, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.bam = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i.i.i.i.i341, i64 16
  %.val.i18.i.i.i.i.i.i.i346 = load ptr, ptr %i.bam, align 8, !tbaa !94, !noalias !941
  %i.ban = getelementptr i8, ptr %.val.i18.i.i.i.i.i.i.i346, i64 8
  %.val.val.i19.i.i.i.i.i.i.i347 = load i8, ptr %i.ban, align 8, !tbaa !91, !range !205, !noalias !941, !noundef !206
  %i.bao = trunc nuw i8 %.val.val.i19.i.i.i.i.i.i.i347 to i1
  br i1 %i.bao, label %_ZN8facebook5velox4exec12_GLOBAL__N_113isNullAllowedERKSt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE.exit.i320.loopexit.split.loop.exit1097, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.bap = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i.i.i.i.i341, i64 24
  %.val.i20.i.i.i.i.i.i.i348 = load ptr, ptr %i.bap, align 8, !tbaa !94, !noalias !941
  %i.baq = getelementptr i8, ptr %.val.i20.i.i.i.i.i.i.i348, i64 8
  %.val.val.i21.i.i.i.i.i.i.i349 = load i8, ptr %i.baq, align 8, !tbaa !91, !range !205, !noalias !941, !noundef !206
  %i.bar = trunc nuw i8 %.val.val.i21.i.i.i.i.i.i.i349 to i1
  br i1 %i.bar, label %_ZN8facebook5velox4exec12_GLOBAL__N_113isNullAllowedERKSt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE.exit.i320.loopexit.split.loop.exit1099, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.bas = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i.i.i.i.i341, i64 32
  %i.bat = add nsw i64 %.057.i.i.i.i.i.i.i340, -1
  %i.bau = icmp sgt i64 %.057.i.i.i.i.i.i.i340, 1
  br i1 %i.bau, label %.lr.ph.i.i.i.i.i.i.i339, label %._crit_edge.loopexit.i.i.i.i.i.i.i350, !llvm.loop !701

._crit_edge.loopexit.i.i.i.i.i.i.i350:            ; preds = %bb.hh
  %.pre.i.i.i.i.i.i.i351 = ptrtoint ptr %scevgep.i.i.i.i.i.i.i338 to i64
  %.pre62.i.i.i.i.i.i.i352 = sub i64 %.pre-phi736, %.pre.i.i.i.i.i.i.i351
  br label %._crit_edge.i.i.i.i.i.i.i313

._crit_edge.i.i.i.i.i.i.i313:                     ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i350, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEZNS4_4exec12_GLOBAL__N_119tryMergeBytesValuesERSD_E3$_0EbT_SJ_T0_.exit.thread.i"
  %.pre-phi63.i.i.i.i.i.i.i314 = phi i64 [ %.pre62.i.i.i.i.i.i.i352, %._crit_edge.loopexit.i.i.i.i.i.i.i350 ], [ %.pre-phi740, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEZNS4_4exec12_GLOBAL__N_119tryMergeBytesValuesERSD_E3$_0EbT_SJ_T0_.exit.thread.i" ]
  %.sroa.037.0.lcssa.i.i.i.i.i.i.i315 = phi ptr [ %scevgep.i.i.i.i.i.i.i338, %._crit_edge.loopexit.i.i.i.i.i.i.i350 ], [ %.val, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEZNS4_4exec12_GLOBAL__N_119tryMergeBytesValuesERSD_E3$_0EbT_SJ_T0_.exit.thread.i" ] ; 5 uses
  %i.bav = ashr exact i64 %.pre-phi63.i.i.i.i.i.i.i314, 3
  switch i64 %i.bav, label %_ZN8facebook5velox4exec12_GLOBAL__N_113isNullAllowedERKSt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE.exit.i320 [
    i64 3, label %bb.hi
    i64 2, label %bb.hk
    i64 1, label %bb.hm
  ]

bb.hi:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i313
  %.val.i22.i.i.i.i.i.i.i335 = load ptr, ptr %.sroa.037.0.lcssa.i.i.i.i.i.i.i315, align 8, !tbaa !94, !noalias !941
  %i.baw = getelementptr i8, ptr %.val.i22.i.i.i.i.i.i.i335, i64 8
  %.val.val.i23.i.i.i.i.i.i.i336 = load i8, ptr %i.baw, align 8, !tbaa !91, !range !205, !noalias !941, !noundef !206
  %i.bax = trunc nuw i8 %.val.val.i23.i.i.i.i.i.i.i336 to i1
  br i1 %i.bax, label %_ZN8facebook5velox4exec12_GLOBAL__N_113isNullAllowedERKSt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE.exit.i320, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.bay = getelementptr inbounds nuw i8, ptr %.sroa.037.0.lcssa.i.i.i.i.i.i.i315, i64 8
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %._crit_edge.i.i.i.i.i.i.i313
  %.sroa.037.1.i.i.i.i.i.i.i332 = phi ptr [ %i.bay, %bb.hj ], [ %.sroa.037.0.lcssa.i.i.i.i.i.i.i315, %._crit_edge.i.i.i.i.i.i.i313 ] ; 3 uses
  %.val.i24.i.i.i.i.i.i.i333 = load ptr, ptr %.sroa.037.1.i.i.i.i.i.i.i332, align 8, !tbaa !94, !noalias !941
  %i.baz = getelementptr i8, ptr %.val.i24.i.i.i.i.i.i.i333, i64 8
  %.val.val.i25.i.i.i.i.i.i.i334 = load i8, ptr %i.baz, align 8, !tbaa !91, !range !205, !noalias !941, !noundef !206
  %i.bba = trunc nuw i8 %.val.val.i25.i.i.i.i.i.i.i334 to i1
  br i1 %i.bba, label %_ZN8facebook5velox4exec12_GLOBAL__N_113isNullAllowedERKSt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE.exit.i320, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.bbb = getelementptr inbounds nuw i8, ptr %.sroa.037.1.i.i.i.i.i.i.i332, i64 8
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %._crit_edge.i.i.i.i.i.i.i313
  %.sroa.037.2.i.i.i.i.i.i.i316 = phi ptr [ %i.bbb, %bb.hl ], [ %.sroa.037.0.lcssa.i.i.i.i.i.i.i315, %._crit_edge.i.i.i.i.i.i.i313 ] ; 2 uses
  %.val.i26.i.i.i.i.i.i.i317 = load ptr, ptr %.sroa.037.2.i.i.i.i.i.i.i316, align 8, !tbaa !94, !noalias !941
  %i.bbc = getelementptr i8, ptr %.val.i26.i.i.i.i.i.i.i317, i64 8
  %.val.val.i27.i.i.i.i.i.i.i318 = load i8, ptr %i.bbc, align 8, !tbaa !91, !range !205, !noalias !941, !noundef !206
  %i.bbd = trunc nuw i8 %.val.val.i27.i.i.i.i.i.i.i318 to i1
  %spec.select.i.i.i.i.i.i.i319 = select i1 %i.bbd, ptr %.sroa.037.2.i.i.i.i.i.i.i316, ptr %.val13
  br label %_ZN8facebook5velox4exec12_GLOBAL__N_113isNullAllowedERKSt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE.exit.i320

_ZN8facebook5velox4exec12_GLOBAL__N_113isNullAllowedERKSt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE.exit.i320.loopexit.split.loop.exit: ; preds = %bb.he
  %i.bbe = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i.i.i.i.i341, i64 8
  br label %_ZN8facebook5velox4exec12_GLOBAL__N_113isNullAllowedERKSt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE.exit.i320

_ZN8facebook5velox4exec12_GLOBAL__N_113isNullAllowedERKSt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE.exit.i320.loopexit.split.loop.exit1097: ; preds = %bb.hf
  %i.bbf = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i.i.i.i.i341, i64 16
  br label %_ZN8facebook5velox4exec12_GLOBAL__N_113isNullAllowedERKSt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE.exit.i320

_ZN8facebook5velox4exec12_GLOBAL__N_113isNullAllowedERKSt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE.exit.i320.loopexit.split.loop.exit1099: ; preds = %bb.hg
  %i.bbg = getelementptr inbounds nuw i8, ptr %.sroa.037.056.i.i.i.i.i.i.i341, i64 24
  br label %_ZN8facebook5velox4exec12_GLOBAL__N_113isNullAllowedERKSt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE.exit.i320

_ZN8facebook5velox4exec12_GLOBAL__N_113isNullAllowedERKSt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE.exit.i320: ; preds = %.lr.ph.i.i.i.i.i.i.i339, %_ZN8facebook5velox4exec12_GLOBAL__N_113isNullAllowedERKSt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE.exit.i320.loopexit.split.loop.exit, %_ZN8facebook5velox4exec12_GLOBAL__N_113isNullAllowedERKSt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE.exit.i320.loopexit.split.loop.exit1097, %_ZN8facebook5velox4exec12_GLOBAL__N_113isNullAllowedERKSt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE.exit.i320.loopexit.split.loop.exit1099, %bb.hm, %bb.hk, %bb.hi, %._crit_edge.i.i.i.i.i.i.i313
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i321 = phi ptr [ %.sroa.037.1.i.i.i.i.i.i.i332, %bb.hk ], [ %spec.select.i.i.i.i.i.i.i319, %bb.hm ], [ %.val13, %._crit_edge.i.i.i.i.i.i.i313 ], [ %.sroa.037.0.lcssa.i.i.i.i.i.i.i315, %bb.hi ], [ %i.bbg, %_ZN8facebook5velox4exec12_GLOBAL__N_113isNullAllowedERKSt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE.exit.i320.loopexit.split.loop.exit1099 ], [ %i.bbf, %_ZN8facebook5velox4exec12_GLOBAL__N_113isNullAllowedERKSt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE.exit.i320.loopexit.split.loop.exit1097 ], [ %i.bbe, %_ZN8facebook5velox4exec12_GLOBAL__N_113isNullAllowedERKSt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE.exit.i320.loopexit.split.loop.exit ], [ %.sroa.037.056.i.i.i.i.i.i.i341, %.lr.ph.i.i.i.i.i.i.i339 ]
  %i.bbh = icmp ne ptr %.val13, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i321
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37, !noalias !941
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !noalias !941
  %i.bbi = icmp eq ptr %.val, %.val13
  br i1 %i.bbi, label %._crit_edge.i323, label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_113isNullAllowedERKSt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE.exit.i320
  %i.bbj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.bbk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.ho

._crit_edge.i323:                                 ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit41.i, %_ZN8facebook5velox4exec12_GLOBAL__N_113isNullAllowedERKSt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE.exit.i320
  %i.bbl = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #38
          to label %.noexc.i324 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !941 ; 3 uses

.noexc.i324:                                      ; preds = %._crit_edge.i323
  invoke void @_ZN8facebook5velox6common11BytesValuesC2ERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEb(ptr noundef nonnull align 8 dereferenceable(128) %i.bbl, ptr noundef nonnull align 8 dereferenceable(24) %2, i1 noundef zeroext %i.bbh)
          to label %_ZNSt10unique_ptrIN8facebook5velox6common11BytesValuesESt14default_deleteIS3_EED2Ev.exit.i unwind label %bb.hn, !noalias !942

bb.hn:                                            ; preds = %.noexc.i324
  %i.bbm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bbl, i64 noundef 128) #39, !noalias !942
  br label %.body.i

bb.ho:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit41.i, %.lr.ph41.i
  %.sroa.05.040.i = phi ptr [ %.val, %.lr.ph41.i ], [ %i.bdf, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit41.i ] ; 2 uses
  %.val25.i = load ptr, ptr %.sroa.05.040.i, align 8, !tbaa !94, !noalias !941 ; 5 uses
  %i.bbn = getelementptr i8, ptr %.val25.i, i64 12
  %.val25.val.i = load i32, ptr %i.bbn, align 4, !tbaa !93, !noalias !941
  %i.bbo = icmp eq i32 %.val25.val.i, 15
  br i1 %i.bbo, label %bb.hp, label %bb.hw

bb.hp:                                            ; preds = %bb.ho
  %i.bbp = getelementptr inbounds nuw i8, ptr %.val25.i, i64 80
  %i.bbq = getelementptr inbounds nuw i8, ptr %.val25.i, i64 96
  %i.bbr = load i64, ptr %i.bbq, align 8, !tbaa !224, !noalias !941
  %i.bbs = lshr i64 %i.bbr, 8                     ; 2 uses
  %.not.i.i.i.not.i = icmp eq i64 %i.bbs, 0
  %i.bbt = load ptr, ptr %i.bbp, align 8, !noalias !941 ; 2 uses
  br i1 %.not.i.i.i.not.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit41.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.hp
  %i.bbu = getelementptr inbounds nuw [32 x i8], ptr %i.bbt, i64 %i.bbs
  br label %.lr.ph.i329

.lr.ph.i329:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i, %.lr.ph.preheader.i
  %.pn.i330 = phi ptr [ %i.bbu, %.lr.ph.preheader.i ], [ %.sroa.01.039.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i ] ; 2 uses
  %.sroa.01.039.i = getelementptr inbounds i8, ptr %.pn.i330, i64 -32 ; 4 uses
  %i.bbv = load ptr, ptr %i.bbj, align 8, !tbaa !79, !noalias !941 ; 6 uses
  %i.bbw = load ptr, ptr %i.bbk, align 8, !tbaa !184, !noalias !941
  %.not.i.i331 = icmp eq ptr %i.bbv, %i.bbw
  br i1 %.not.i.i331, label %bb.hv, label %bb.hq

bb.hq:                                            ; preds = %.lr.ph.i329
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbv, i64 16 ; 3 uses
  store ptr %i.bbx, ptr %i.bbv, align 8, !tbaa !174, !noalias !941
  %i.bby = load ptr, ptr %.sroa.01.039.i, align 8, !tbaa !69, !noalias !941 ; 2 uses
  %i.bbz = getelementptr inbounds i8, ptr %.pn.i330, i64 -24
  %i.bca = load i64, ptr %i.bbz, align 8, !tbaa !62, !noalias !941 ; 8 uses
  %i.bcb = icmp ugt i64 %i.bca, 15
  br i1 %i.bcb, label %bb.hr, label %._crit_edge.i.i.i.i26.i

bb.hr:                                            ; preds = %bb.hq
  %i.bcc = icmp slt i64 %i.bca, 0
  br i1 %i.bcc, label %.noexc.i.i.i36.invoke.i, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.bcd = add nuw i64 %i.bca, 1                  ; 2 uses
  %i.bce = icmp slt i64 %i.bcd, 0
  br i1 %i.bce, label %.noexc6.i.i.i35.invoke.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.hs
  %i.bcf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bcd) #38
          to label %.noexc29.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !941 ; 2 uses

.noexc29.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  store ptr %i.bcf, ptr %i.bbv, align 8, !tbaa !69, !noalias !941
  store i64 %i.bca, ptr %i.bbx, align 8, !tbaa !42, !noalias !941
  br label %._crit_edge.i.i.i.i26.i

._crit_edge.i.i.i.i26.i:                          ; preds = %.noexc29.i, %bb.hq
  %i.bcg = phi ptr [ %i.bcf, %.noexc29.i ], [ %i.bbx, %bb.hq ] ; 3 uses
  switch i64 %i.bca, label %bb.hu [
    i64 1, label %bb.ht
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i
  ]

bb.ht:                                            ; preds = %._crit_edge.i.i.i.i26.i
  %i.bch = load i8, ptr %i.bby, align 1, !tbaa !42, !noalias !941
  store i8 %i.bch, ptr %i.bcg, align 1, !tbaa !42, !noalias !941
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i

bb.hu:                                            ; preds = %._crit_edge.i.i.i.i26.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bcg, ptr align 1 %i.bby, i64 %i.bca, i1 false), !noalias !941
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i: ; preds = %bb.hu, %bb.ht, %._crit_edge.i.i.i.i26.i
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bbv, i64 8
  store i64 %i.bca, ptr %i.bci, align 8, !tbaa !62, !noalias !941
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bcg, i64 %i.bca
  store i8 0, ptr %i.bcj, align 1, !tbaa !42, !noalias !941
  %i.bck = load ptr, ptr %i.bbj, align 8, !tbaa !79, !noalias !941
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bck, i64 32
  store ptr %i.bcl, ptr %i.bbj, align 8, !tbaa !79, !noalias !941
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i

bb.hv:                                            ; preds = %.lr.ph.i329
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.bbv, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.039.i)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !941

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i: ; preds = %bb.hv, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i.i
  %i.bcm = icmp eq ptr %i.bbt, %.sroa.01.039.i
  br i1 %i.bcm, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit41.i, label %.lr.ph.i329, !prof !44

bb.hw:                                            ; preds = %bb.ho
  %i.bcn = getelementptr inbounds nuw i8, ptr %.val25.i, i64 24 ; 2 uses
  %i.bco = load ptr, ptr %i.bbj, align 8, !tbaa !79, !noalias !941 ; 6 uses
  %i.bcp = load ptr, ptr %i.bbk, align 8, !tbaa !184, !noalias !941
  %.not.i31.i322 = icmp eq ptr %i.bco, %i.bcp
  br i1 %.not.i31.i322, label %bb.ic, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bco, i64 16 ; 3 uses
  store ptr %i.bcq, ptr %i.bco, align 8, !tbaa !174, !noalias !941
  %i.bcr = load ptr, ptr %i.bcn, align 8, !tbaa !69, !noalias !941 ; 2 uses
  %i.bcs = getelementptr inbounds nuw i8, ptr %.val25.i, i64 32
  %i.bct = load i64, ptr %i.bcs, align 8, !tbaa !62, !noalias !941 ; 8 uses
  %i.bcu = icmp ugt i64 %i.bct, 15
  br i1 %i.bcu, label %bb.hy, label %._crit_edge.i.i.i.i32.i

bb.hy:                                            ; preds = %bb.hx
  %i.bcv = icmp slt i64 %i.bct, 0
  br i1 %i.bcv, label %.noexc.i.i.i36.invoke.i, label %bb.hz

.noexc.i.i.i36.invoke.i:                          ; preds = %bb.hy, %bb.hr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.36) #40
          to label %.noexc.i.i.i36.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !941

.noexc.i.i.i36.cont.i:                            ; preds = %.noexc.i.i.i36.invoke.i
  unreachable

bb.hz:                                            ; preds = %bb.hy
  %i.bcw = add nuw i64 %i.bct, 1                  ; 2 uses
  %i.bcx = icmp slt i64 %i.bcw, 0
  br i1 %i.bcx, label %.noexc6.i.i.i35.invoke.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i34.i, !prof !44

.noexc6.i.i.i35.invoke.i:                         ; preds = %bb.hz, %bb.hs
  invoke void @_ZSt17__throw_bad_allocv() #40
          to label %.noexc6.i.i.i35.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !941

.noexc6.i.i.i35.cont.i:                           ; preds = %.noexc6.i.i.i35.invoke.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i34.i: ; preds = %bb.hz
  %i.bcy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bcw) #38
          to label %.noexc39.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !941 ; 2 uses

.noexc39.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i34.i
  store ptr %i.bcy, ptr %i.bco, align 8, !tbaa !69, !noalias !941
  store i64 %i.bct, ptr %i.bcq, align 8, !tbaa !42, !noalias !941
  br label %._crit_edge.i.i.i.i32.i

._crit_edge.i.i.i.i32.i:                          ; preds = %.noexc39.i, %bb.hx
  %i.bcz = phi ptr [ %i.bcy, %.noexc39.i ], [ %i.bcq, %bb.hx ] ; 3 uses
  switch i64 %i.bct, label %bb.ib [
    i64 1, label %bb.ia
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i33.i
  ]

bb.ia:                                            ; preds = %._crit_edge.i.i.i.i32.i
  %i.bda = load i8, ptr %i.bcr, align 1, !tbaa !42, !noalias !941
  store i8 %i.bda, ptr %i.bcz, align 1, !tbaa !42, !noalias !941
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i33.i

bb.ib:                                            ; preds = %._crit_edge.i.i.i.i32.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bcz, ptr align 1 %i.bcr, i64 %i.bct, i1 false), !noalias !941
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i33.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i33.i: ; preds = %bb.ib, %bb.ia, %._crit_edge.i.i.i.i32.i
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bco, i64 8
  store i64 %i.bct, ptr %i.bdb, align 8, !tbaa !62, !noalias !941
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bcz, i64 %i.bct
  store i8 0, ptr %i.bdc, align 1, !tbaa !42, !noalias !941
  %i.bdd = load ptr, ptr %i.bbj, align 8, !tbaa !79, !noalias !941
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdd, i64 32
  store ptr %i.bde, ptr %i.bbj, align 8, !tbaa !79, !noalias !941
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit41.i

bb.ic:                                            ; preds = %bb.hw
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.bco, ptr noundef nonnull align 8 dereferenceable(32) %i.bcn)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit41.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !941

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit41.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i, %bb.ic, %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i33.i, %bb.hp
  %i.bdf = getelementptr inbounds nuw i8, ptr %.sroa.05.040.i, i64 8 ; 2 uses
  %i.bdg = icmp eq ptr %i.bdf, %.val13
  br i1 %i.bdg, label %._crit_edge.i323, label %bb.ho

_ZNSt10unique_ptrIN8facebook5velox6common11BytesValuesESt14default_deleteIS3_EED2Ev.exit.i: ; preds = %.noexc.i324
  store ptr %i.bbl, ptr %0, align 8, !tbaa !87, !alias.scope !941
  %i.bdh = load ptr, ptr %2, align 8, !tbaa !80, !noalias !941 ; 3 uses
  %i.bdi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bdj = load ptr, ptr %i.bdi, align 8, !tbaa !79, !noalias !941 ; 2 uses
  %.not4.i.i.i.i325 = icmp eq ptr %i.bdh, %i.bdj
  br i1 %.not4.i.i.i.i325, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i326

.lr.ph.i.i.i.i326:                                ; preds = %_ZNSt10unique_ptrIN8facebook5velox6common11BytesValuesESt14default_deleteIS3_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i327 = phi ptr [ %i.bdp, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.bdh, %_ZNSt10unique_ptrIN8facebook5velox6common11BytesValuesESt14default_deleteIS3_EED2Ev.exit.i ] ; 3 uses
  %i.bdk = load ptr, ptr %.05.i.i.i.i327, align 8, !tbaa !69, !noalias !941 ; 2 uses
  %i.bdl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i327, i64 16 ; 2 uses
  %i.bdm = icmp eq ptr %i.bdk, %i.bdl
  br i1 %i.bdm, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i326
  %i.bdn = load i64, ptr %i.bdl, align 8, !tbaa !42, !noalias !941
  %i.bdo = add i64 %i.bdn, 1
  call void @_ZdlPvm(ptr noundef %i.bdk, i64 noundef %i.bdo) #39, !noalias !941
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i326, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.bdp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i327, i64 32 ; 2 uses
  %.not.i.i.i43.i = icmp eq ptr %i.bdp, %i.bdj
  br i1 %.not.i.i.i43.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i326, !llvm.loop !16

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %2, align 8, !tbaa !80, !noalias !941
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt10unique_ptrIN8facebook5velox6common11BytesValuesESt14default_deleteIS3_EED2Ev.exit.i
  %i.bdq = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.bdh, %_ZNSt10unique_ptrIN8facebook5velox6common11BytesValuesESt14default_deleteIS3_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i328 = icmp eq ptr %i.bdq, null
  br i1 %.not.i.i1.i.i328, label %_ZN8facebook5velox4exec12_GLOBAL__N_119tryMergeBytesValuesERSt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE.exit, label %bb.id

bb.id:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.bdr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bds = load ptr, ptr %i.bdr, align 8, !tbaa !184, !noalias !941
  %i.bdt = ptrtoint ptr %i.bds to i64
  %i.bdu = ptrtoint ptr %i.bdq to i64
  %i.bdv = sub i64 %i.bdt, %i.bdu
  call void @_ZdlPvm(ptr noundef nonnull %i.bdq, i64 noundef %i.bdv) #39, !noalias !941
  br label %_ZN8facebook5velox4exec12_GLOBAL__N_119tryMergeBytesValuesERSt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.hv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %bb.ic, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i34.i, %.noexc6.i.i.i35.invoke.i, %.noexc.i.i.i36.invoke.i, %._crit_edge.i323
  %lpad.loopexit.split-lp1616 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.hn
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.bbm, %bb.hn ], [ %lpad.loopexit.split-lp1616, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #37, !noalias !941
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37, !noalias !941
  br label %common.resume

_ZN8facebook5velox4exec12_GLOBAL__N_119tryMergeBytesValuesERSt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37, !noalias !941
  %.pr374 = load ptr, ptr %0, align 8, !tbaa !94
  %.not377 = icmp eq ptr %.pr374, null
  br i1 %.not377, label %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit369.thread, label %bb.ie

_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit369.thread: ; preds = %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEZNS4_4exec12_GLOBAL__N_119tryMergeBytesValuesERSD_E3$_0EbT_SJ_T0_.exit.i", %_ZN8facebook5velox4exec12_GLOBAL__N_119tryMergeBytesValuesERSt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE.exit
  store ptr null, ptr %0, align 8, !tbaa !87
  br label %bb.ie

bb.ie:                                            ; preds = %_ZN8facebook5velox4exec12_GLOBAL__N_119tryMergeBytesValuesERSt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE.exit, %_ZN8facebook5velox4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIfEESt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EERSt6vectorIS9_SaIS9_EE.exit, %_ZN8facebook5velox4exec12_GLOBAL__N_127tryMergeFloatingPointRangesIdEESt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EERSt6vectorIS9_SaIS9_EE.exit, %_ZN8facebook5velox4exec12_GLOBAL__N_120tryMergeBigintRangesERSt6vectorISt10unique_ptrINS0_6common6FilterESt14default_deleteIS6_EESaIS9_EE.exit, %_ZNSt10unique_ptrIN8facebook5velox6common6FilterESt14default_deleteIS3_EED2Ev.exit369.thread
  ret void
}

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32), ptr) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox4exec32PrestoExprToSubfieldFilterParser24leafCallToSubfieldFilterERKNS0_4core13CallTypedExprEPNS3_19ExpressionEvaluatorEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional.257") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.facebook::velox::common::Subfield", align 16 ; 47 uses
  %6 = alloca %"class.std::unique_ptr.27", align 8 ; 6 uses
  %7 = alloca %"class.std::unique_ptr.27", align 8 ; 6 uses
  %8 = alloca %"class.std::unique_ptr.27", align 8 ; 6 uses
  %9 = alloca %"class.std::unique_ptr.27", align 8 ; 6 uses
  %10 = alloca %"class.std::unique_ptr.27", align 8 ; 6 uses
  %11 = alloca %"class.std::unique_ptr.27", align 8 ; 6 uses
  %12 = alloca %"class.std::unique_ptr.27", align 8 ; 5 uses
  %13 = alloca %"class.std::unique_ptr.27", align 8 ; 5 uses
  %14 = alloca %"struct.std::pair.267", align 8   ; 5 uses
  %15 = alloca %"struct.std::pair.277", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.f, align 8, !tbaa !988
  br label %bb.ce

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !67   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.h = load ptr, ptr %2, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef nonnull align 8 dereferenceable(32) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(88) %2)
          to label %bb.d unwind label %bb.k       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !62
  %i.n = icmp eq i64 %i.m, 2
  br i1 %i.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread168

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.d
end_hunk_2
