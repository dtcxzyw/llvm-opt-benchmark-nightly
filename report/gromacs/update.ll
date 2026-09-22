Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/update?download=true
inline.NumInlined: 2061
inline.NumDeleted: 830
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 51
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@_ZN3gmx6Update4Impl13update_coordsERK10t_inputreclibNS_8ArrayRefIK12ParticleTypeEENS5_IKfEENS5_IKNS_11BasicVectorIfEEEEP7t_stateRKNS_19ArrayRefWithPaddingISD_EEP8t_fcdataPK14gmx_ekindata_tRKNS_14BasicMatrix3x3IfEEiPK12gmx_domdec_tb.omp_outlined:bb.a
  %i.vy = load i64, ptr %i.vw, align 8, !tbaa !177, !noalias !702
  %i.vz = add i64 %i.vy, 1
  call void @_ZdlPvm(ptr noundef %i.vv, i64 noundef %i.vz) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20, !noalias !702
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20, !noalias !702
  %i.wa = call ptr @__cxa_allocate_exception(i64 24) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20, !noalias !702
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %26, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.an unwind label %.thread.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i.i.i.i.i.i.i
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(56) %26)
          to label %bb.ao unwind label %.thread5.i.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx13InternalErrorE, i64 16), ptr %25, align 8, !tbaa !273, !noalias !702
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20, !noalias !702
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %27, align 8, !tbaa !273, !noalias !702
  %i.wb = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr @"__PRETTY_FUNCTION__._ZN3gmx6compatL13mp_with_indexILm1EZZNS_25dispatchTemplatedFunctionIZL12do_update_mdiiflPKNS_11BasicVectorIfEEPS4_S7_S6_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeSC_NSA_IS5_EEPA3_KfNSA_ISF_EESE_PK14gmx_ekindata_tSH_PKdRKNS_14BasicMatrix3x3IfEEbE3$_0SD_JEEEDaOT_T0_DpT1_ENKUlDpT_E_clIJEEEDaSZ_EUlST_E_TnPNSt9enable_ifIXleT_Li1EEvE4typeELPv0EEEDamOSV_", ptr %i.wb, align 8, !tbaa !328, !noalias !702
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %27, i64 16
  store ptr @.str.74, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !328, !noalias !702
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %27, i64 24
  store i32 87, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !68, !noalias !702
  invoke void @_ZN3gmxlsINS_13InternalErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InternalError") align 8 %i.wa, ptr noundef nonnull align 8 %25, ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %bb.ao
  invoke void @__cxa_throw(ptr %i.wa, ptr nonnull @_ZTIN3gmx13InternalErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #33
          to label %bb.av unwind label %bb.as

bb.aq:                                            ; preds = %.noexc120
  %i.wc = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i.i.i.i.i.i.i

bb.ar:                                            ; preds = %bb.al
  %i.wd = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.we = load ptr, ptr %23, align 8, !tbaa !176, !noalias !702 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.wg = icmp eq ptr %i.we, %i.wf
  br i1 %i.wg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i.i.i.i.i.i.i: ; preds = %bb.ar
  %i.wh = load i64, ptr %i.wf, align 8, !tbaa !177, !noalias !702
  %i.wi = add i64 %i.wh, 1
  call void @_ZdlPvm(ptr noundef %i.we, i64 noundef %i.wi) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i.i.i.i.i.i.i: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i.i.i.i.i.i.i, %bb.aq
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.wc, %bb.aq ], [ %i.wd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i.i.i.i.i.i.i ], [ %i.wd, %bb.ar ]
  %i.wj = load ptr, ptr %24, align 8, !tbaa !176, !noalias !702 ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.wl = icmp eq ptr %i.wj, %i.wk
  br i1 %i.wl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i.i.i.i.i.i.i
  %i.wm = load i64, ptr %i.wk, align 8, !tbaa !177, !noalias !702
  %i.wn = add i64 %i.wm, 1
  call void @_ZdlPvm(ptr noundef %i.wj, i64 noundef %i.wn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20, !noalias !702
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20, !noalias !702
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i.i.i.i.i.i.i
  %i.wo = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.sink.split.i.i.i.i.i.i.i.i

.thread5.i.i.i.i.i.i.i.i:                         ; preds = %bb.an
  %i.wp = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %26) #20
  br label %.sink.split.i.i.i.i.i.i.i.i

bb.as:                                            ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i.i.i = phi i1 [ false, %bb.ap ], [ true, %bb.ao ]
  %i.wq = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20, !noalias !702
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #20
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %26) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20, !noalias !702
  br i1 %.0.i.i.i.i.i.i.i.i, label %bb.at, label %bb.au

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %.thread5.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i
  %.pn14.pn4.ph.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.wp, %.thread5.i.i.i.i.i.i.i.i ], [ %i.wo, %.thread.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20, !noalias !702
  br label %bb.at

bb.at:                                            ; preds = %.sink.split.i.i.i.i.i.i.i.i, %bb.as
  %.pn14.pn4.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.wq, %bb.as ], [ %.pn14.pn4.ph.i.i.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.wa) #20
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn14.pn3.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn14.pn4.i.i.i.i.i.i.i.i, %bb.at ], [ %i.wq, %bb.as ] ; 2 uses
  %i.wr = load ptr, ptr %22, align 8, !tbaa !176, !noalias !702 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.wt = icmp eq ptr %i.wr, %i.ws
  br i1 %i.wt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i.i.i.i.i.i.i.i: ; preds = %bb.au
  %i.wu = load i64, ptr %i.ws, align 8, !tbaa !177, !noalias !702
  %i.wv = add i64 %i.wu, 1
  call void @_ZdlPvm(ptr noundef %i.wr, i64 noundef %i.wv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i.i.i.i.i.i.i.i: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i.i.i.i.i.i.i.i
  %.pn14.pn.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i.i.i.i.i.i.i.i ], [ %.pn14.pn3.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i.i.i.i.i.i.i.i ], [ %.pn14.pn3.i.i.i.i.i.i.i.i, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20, !noalias !702
  br label %.body

bb.av:                                            ; preds = %bb.ap
  unreachable

"_ZN3gmx6compatL13mp_with_indexILm1EZZNS_25dispatchTemplatedFunctionIZL12do_update_mdiiflPKNS_11BasicVectorIfEEPS4_S7_S6_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeSC_NSA_IS5_EEPA3_KfNSA_ISF_EESE_PK14gmx_ekindata_tSH_PKdRKNS_14BasicMatrix3x3IfEEbE3$_0SD_JEEEDaOT_T0_DpT1_ENKUlDpT_E_clIJEEEDaSZ_EUlST_E_TnPNSt9enable_ifIXleT_Li1EEvE4typeELPv0EEEDamOSV_.exit.i.i.i.i.i.i.i": ; preds = %bb.aj, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %25), !noalias !702
  br label %"_ZN3gmx25dispatchTemplatedFunctionIZL12do_update_mdiiflPKNS_11BasicVectorIfEEPS2_S5_S4_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeSA_NS8_IS3_EEPA3_KfNS8_ISD_EESC_PK14gmx_ekindata_tSF_PKdRKNS_14BasicMatrix3x3IfEEbE3$_0SB_JEEEDaOT_T0_DpT1_.exit.i"

"_ZN3gmx25dispatchTemplatedFunctionIZL12do_update_mdiiflPKNS_11BasicVectorIfEEPS2_S5_S4_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeSA_NS8_IS3_EEPA3_KfNS8_ISD_EESC_PK14gmx_ekindata_tSF_PKdRKNS_14BasicMatrix3x3IfEEbE3$_0SB_JEEEDaOT_T0_DpT1_.exit.i": ; preds = %bb.ac, %bb.u, %"_ZN3gmx6compatL13mp_with_indexILm1EZZNS_25dispatchTemplatedFunctionIZL12do_update_mdiiflPKNS_11BasicVectorIfEEPS4_S7_S6_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeSC_NSA_IS5_EEPA3_KfNSA_ISF_EESE_PK14gmx_ekindata_tSH_PKdRKNS_14BasicMatrix3x3IfEEbE3$_0SD_JEEEDaOT_T0_DpT1_ENKUlDpT_E_clIJEEEDaSZ_EUlST_E_TnPNSt9enable_ifIXleT_Li1EEvE4typeELPv0EEEDamOSV_.exit.i.i.i.i.i.i.i", %bb.v, %bb.p, %"_ZZZN3gmx25dispatchTemplatedFunctionIZL12do_update_mdiiflPKNS_11BasicVectorIfEEPS2_S5_S4_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeSA_NS8_IS3_EEPA3_KfNS8_ISD_EESC_PK14gmx_ekindata_tSF_PKdRKNS_14BasicMatrix3x3IfEEbE3$_0SB_JEEEDaOT_T0_DpT1_ENKUlDpT_E_clIJEEEDaSX_ENKUlSR_E_clISt17integral_constantImLm3EEEEDaSR_.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20, !noalias !702
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20, !noalias !702
  br label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit

bb.aw:                                            ; preds = %.critedge.i
  %i.ww = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !255, !noalias !702
  %i.wy = load ptr, ptr %i.ef, align 8, !tbaa !19, !noalias !702
  %i.wz = ptrtoint ptr %i.wx to i64
  %i.xa = ptrtoint ptr %i.wy to i64
  %i.xb = sub i64 %i.wz, %i.xa
  %i.xc = lshr exact i64 %i.xb, 2
  %i.xd = trunc i64 %i.xc to i32                  ; 2 uses
  %i.xe = icmp ne i32 %i.xd, 0
  %or.cond7.not.i = and i1 %i.eq, %i.xe
  %i.xf = icmp eq i32 %i.xd, 1                    ; 2 uses
  %i.xg = select i1 %i.xf, i32 1, i32 2
  %i.xh = select i1 %or.cond7.not.i, i32 %i.xg, i32 0 ; 3 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !290, !noalias !702 ; 7 uses
  br i1 %.not96.i, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.xk = load ptr, ptr %.sroa.gep45.i, align 8, !tbaa !251, !noalias !702 ; 3 uses
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !179 ; 3 uses
  %i.xm = getelementptr i8, ptr %i.xk, i64 16
  %i.xn = load float, ptr %i.xm, align 4, !tbaa !179 ; 3 uses
  %i.xo = getelementptr i8, ptr %i.xk, i64 32
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !179 ; 3 uses
  switch i32 %i.xh, label %bb.ba [
    i32 2, label %bb.ay
    i32 1, label %bb.az
  ]

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !799)
  call void @llvm.experimental.noalias.scope.decl(metadata !800)
  call void @llvm.experimental.noalias.scope.decl(metadata !801)
  call void @llvm.experimental.noalias.scope.decl(metadata !802)
  call void @llvm.experimental.noalias.scope.decl(metadata !803)
  %i.xq = icmp slt i32 %i.cm, %spec.select.i
  br i1 %i.xq, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.ay
  %i.xr = sext i32 %i.cm to i64                   ; 4 uses
  %wide.trip.count.i.i.i.i.i.i.i12.i.i.i.i.i.i = sext i32 %spec.select.i to i64 ; 3 uses
  %i.xs = insertelement <2 x float> poison, float %i.xl, i64 0
  %i.xt = insertelement <2 x float> %i.xs, float %i.xn, i64 1
  %i.xu = fneg <2 x float> %i.xt
  %i.xv = insertelement <2 x float> poison, float %i.fn, i64 0
  %i.xw = shufflevector <2 x float> %i.xv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xx = fmul <2 x float> %i.xw, %i.xu           ; 3 uses
  %i.xy = fneg float %i.xp
  %i.xz = fmul float %i.fn, %i.xy                 ; 2 uses
  %i.ya = sub nsw i64 %wide.trip.count.i.i.i.i.i.i.i12.i.i.i.i.i.i, %i.xr ; 2 uses
  %min.iters.check489 = icmp ult i64 %i.ya, 8
  br i1 %min.iters.check489, label %scalar.ph488.preheader, label %vector.ph490

vector.ph490:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.yb = and i64 %wide.trip.count.i.i.i.i.i.i.i12.i.i.i.i.i.i, 7
  %n.vec491 = sub nuw nsw i64 %i.ya, %i.yb        ; 2 uses
  %i.yc = add nsw i64 %n.vec491, %i.xr
  %broadcast.splat493 = shufflevector <2 x float> %i.xx, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat495 = shufflevector <2 x float> %i.xx, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert496 = insertelement <8 x float> poison, float %i.xz, i64 0
  %broadcast.splat497 = shufflevector <8 x float> %broadcast.splatinsert496, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert498 = insertelement <8 x float> poison, float %i.cz, i64 0
  %broadcast.splat499 = shufflevector <8 x float> %broadcast.splatinsert498, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  br label %vector.body500

vector.body500:                                   ; preds = %vector.body500, %vector.ph490
  %index501 = phi i64 [ 0, %vector.ph490 ], [ %index.next524, %vector.body500 ] ; 2 uses
  %i.yd = add i64 %index501, %i.xr                ; 6 uses
  %i.ye = getelementptr inbounds [2 x i8], ptr %i.df, i64 %i.yd
  %wide.load502 = load <8 x i16>, ptr %i.ye, align 2, !tbaa !241, !noalias !804
  %i.yf = zext <8 x i16> %wide.load502 to <8 x i64>
  %wide.gep503 = getelementptr inbounds nuw [144 x i8], ptr %i.xj, <8 x i64> %i.yf
  %wide.gep504 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep503, i64 116
  %wide.masked.gather505 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep504, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !353, !noalias !805 ; 3 uses
  %i.yg = getelementptr inbounds [12 x i8], ptr %i.cw, i64 %i.yd ; 2 uses
  %i.yh = getelementptr inbounds [12 x i8], ptr %i.cx, i64 %i.yd
  %i.yi = getelementptr inbounds [12 x i8], ptr %i.dz, i64 %i.yd
  %i.yj = getelementptr inbounds [12 x i8], ptr %i.ct, i64 %i.yd
  %i.yk = getelementptr inbounds [12 x i8], ptr %i.cu, i64 %i.yd
  %wide.vec506 = load <24 x float>, ptr %i.yg, align 4, !tbaa !179, !alias.scope !806, !noalias !807 ; 3 uses
  %strided.vec507 = shufflevector <24 x float> %wide.vec506, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec508 = shufflevector <24 x float> %wide.vec506, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22> ; 2 uses
  %strided.vec509 = shufflevector <24 x float> %wide.vec506, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23> ; 2 uses
  %wide.vec510 = load <24 x float>, ptr %i.yh, align 4, !tbaa !179, !alias.scope !808, !noalias !809 ; 3 uses
  %strided.vec511 = shufflevector <24 x float> %wide.vec510, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec512 = shufflevector <24 x float> %wide.vec510, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec513 = shufflevector <24 x float> %wide.vec510, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec514 = load <24 x float>, ptr %i.yi, align 4, !tbaa !179, !alias.scope !799, !noalias !810 ; 3 uses
  %strided.vec515 = shufflevector <24 x float> %wide.vec514, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec516 = shufflevector <24 x float> %wide.vec514, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec517 = shufflevector <24 x float> %wide.vec514, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.yl = fmul <8 x float> %strided.vec511, %strided.vec515
  %i.ym = fmul <8 x float> %broadcast.splat499, %i.yl
  %i.yn = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather505, <8 x float> %strided.vec507, <8 x float> %i.ym)
  %i.yo = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat493, <8 x float> %strided.vec507, <8 x float> %i.yn) ; 2 uses
  %wide.vec518 = load <24 x float>, ptr %i.yj, align 4, !tbaa !179, !alias.scope !811, !noalias !812 ; 3 uses
  %strided.vec519 = shufflevector <24 x float> %wide.vec518, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec520 = shufflevector <24 x float> %wide.vec518, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec521 = shufflevector <24 x float> %wide.vec518, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %31 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.yo, <8 x float> %broadcast.splat499, <8 x float> %strided.vec519)
  %i.yp = fmul <8 x float> %strided.vec512, %strided.vec516
  %i.yq = fmul <8 x float> %broadcast.splat499, %i.yp
  %32 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather505, <8 x float> %strided.vec508, <8 x float> %i.yq)
  %i.yr = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat495, <8 x float> %strided.vec508, <8 x float> %32) ; 2 uses
  %i.ys = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.yr, <8 x float> %broadcast.splat499, <8 x float> %strided.vec520)
  %i.yt = fmul <8 x float> %strided.vec513, %strided.vec517
  %i.yu = fmul <8 x float> %broadcast.splat499, %i.yt
  %i.yv = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather505, <8 x float> %strided.vec509, <8 x float> %i.yu)
  %i.yw = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat497, <8 x float> %strided.vec509, <8 x float> %i.yv) ; 2 uses
  %i.yx = shufflevector <8 x float> %i.yo, <8 x float> %i.yr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yy = shufflevector <8 x float> %i.yw, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec522 = shufflevector <16 x float> %i.yx, <16 x float> %i.yy, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec522, ptr %i.yg, align 4, !tbaa !179, !alias.scope !806, !noalias !807
  %i.yz = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.yw, <8 x float> %broadcast.splat499, <8 x float> %strided.vec521)
  %33 = shufflevector <8 x float> %31, <8 x float> %i.ys, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.za = shufflevector <8 x float> %i.yz, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec523 = shufflevector <16 x float> %33, <16 x float> %i.za, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec523, ptr %i.yk, align 4, !tbaa !179, !alias.scope !813, !noalias !814
  %index.next524 = add nuw i64 %index501, 8       ; 2 uses
  %i.zb = icmp eq i64 %index.next524, %n.vec491
  br i1 %i.zb, label %middle.block525, label %vector.body500, !llvm.loop !603

middle.block525:                                  ; preds = %vector.body500
  %i.zc = and i32 %spec.select.i, 7
  %cmp.n526 = icmp eq i32 %i.zc, 0
  br i1 %cmp.n526, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit, label %scalar.ph488.preheader

scalar.ph488.preheader:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block525
  %indvars.iv.i.i.i.i.i.i.i13.i.i.i.i.i.i.ph = phi i64 [ %i.xr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.yc, %middle.block525 ]
  %i.zd = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.ze = shufflevector <2 x float> %i.zd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %scalar.ph488

scalar.ph488:                                     ; preds = %scalar.ph488.preheader, %scalar.ph488
  %indvars.iv.i.i.i.i.i.i.i13.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i14.i.i.i.i.i.i, %scalar.ph488 ], [ %indvars.iv.i.i.i.i.i.i.i13.i.i.i.i.i.i.ph, %scalar.ph488.preheader ] ; 7 uses
  %i.zf = getelementptr inbounds [2 x i8], ptr %i.df, i64 %indvars.iv.i.i.i.i.i.i.i13.i.i.i.i.i.i
  %i.zg = load i16, ptr %i.zf, align 2, !tbaa !241, !noalias !804
  %i.zh = zext i16 %i.zg to i64
  %i.zi = getelementptr inbounds nuw [144 x i8], ptr %i.xj, i64 %i.zh
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 116
  %i.zk = load float, ptr %i.zj, align 4, !tbaa !353, !noalias !805 ; 2 uses
  %i.zl = getelementptr inbounds [12 x i8], ptr %i.cw, i64 %indvars.iv.i.i.i.i.i.i.i13.i.i.i.i.i.i ; 3 uses
  %i.zm = getelementptr inbounds [12 x i8], ptr %i.cx, i64 %indvars.iv.i.i.i.i.i.i.i13.i.i.i.i.i.i ; 2 uses
  %i.zn = getelementptr inbounds [12 x i8], ptr %i.dz, i64 %indvars.iv.i.i.i.i.i.i.i13.i.i.i.i.i.i ; 2 uses
  %i.zo = getelementptr inbounds [12 x i8], ptr %i.ct, i64 %indvars.iv.i.i.i.i.i.i.i13.i.i.i.i.i.i ; 2 uses
  %i.zp = getelementptr inbounds [12 x i8], ptr %i.cu, i64 %indvars.iv.i.i.i.i.i.i.i13.i.i.i.i.i.i ; 2 uses
  %i.zq = load <2 x float>, ptr %i.zl, align 4, !tbaa !179, !alias.scope !806, !noalias !807 ; 2 uses
  %i.zr = load <2 x float>, ptr %i.zm, align 4, !tbaa !179, !alias.scope !808, !noalias !809
  %i.zs = load <2 x float>, ptr %i.zn, align 4, !tbaa !179, !alias.scope !799, !noalias !810
  %i.zt = fmul <2 x float> %i.zr, %i.zs
  %i.zu = fmul <2 x float> %i.ze, %i.zt
  %i.zv = insertelement <2 x float> poison, float %i.zk, i64 0
  %i.zw = shufflevector <2 x float> %i.zv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zw, <2 x float> %i.zq, <2 x float> %i.zu)
  %i.zy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xx, <2 x float> %i.zq, <2 x float> %i.zx) ; 2 uses
  store <2 x float> %i.zy, ptr %i.zl, align 4, !tbaa !179, !alias.scope !806, !noalias !807
  %i.zz = load <2 x float>, ptr %i.zo, align 4, !tbaa !179, !alias.scope !811, !noalias !812
  %i.aaa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zy, <2 x float> %i.ze, <2 x float> %i.zz)
  store <2 x float> %i.aaa, ptr %i.zp, align 4, !tbaa !179, !alias.scope !813, !noalias !814
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zl, i64 8 ; 2 uses
  %i.aac = load float, ptr %i.aab, align 4, !tbaa !179, !alias.scope !806, !noalias !807 ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zm, i64 8
  %i.aae = load float, ptr %i.aad, align 4, !tbaa !179, !alias.scope !808, !noalias !809
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zn, i64 8
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !179, !alias.scope !799, !noalias !810
  %i.aah = fmul float %i.aae, %i.aag
  %i.aai = fmul float %i.cz, %i.aah
  %i.aaj = call float @llvm.fmuladd.f32(float %i.zk, float %i.aac, float %i.aai)
  %i.aak = call float @llvm.fmuladd.f32(float %i.xz, float %i.aac, float %i.aaj) ; 2 uses
  store float %i.aak, ptr %i.aab, align 4, !tbaa !179, !alias.scope !806, !noalias !807
  %i.aal = getelementptr inbounds nuw i8, ptr %i.zo, i64 8
  %i.aam = load float, ptr %i.aal, align 4, !tbaa !179, !alias.scope !811, !noalias !812
  %i.aan = call float @llvm.fmuladd.f32(float %i.aak, float %i.cz, float %i.aam)
  %i.aao = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  store float %i.aan, ptr %i.aao, align 4, !tbaa !179, !alias.scope !813, !noalias !814
  %indvars.iv.next.i.i.i.i.i.i.i14.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i13.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i15.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i14.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i.i12.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i15.i.i.i.i.i.i, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit, label %scalar.ph488, !llvm.loop !604

bb.az:                                            ; preds = %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !815)
  call void @llvm.experimental.noalias.scope.decl(metadata !816)
  call void @llvm.experimental.noalias.scope.decl(metadata !817)
  call void @llvm.experimental.noalias.scope.decl(metadata !818)
  call void @llvm.experimental.noalias.scope.decl(metadata !819)
  %i.aap = getelementptr inbounds nuw i8, ptr %i.xj, i64 116
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !353, !noalias !820 ; 3 uses
  %i.aar = icmp slt i32 %i.cm, %spec.select.i
  br i1 %i.aar, label %.preheader.preheader.i.i.i.i.i.i.i.i5.i.i.i.i.i.i, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit

.preheader.preheader.i.i.i.i.i.i.i.i5.i.i.i.i.i.i: ; preds = %bb.az
  %i.aas = sext i32 %i.cm to i64                  ; 4 uses
  %wide.trip.count.i.i.i.i.i.i.i.i6.i.i.i.i.i.i = sext i32 %spec.select.i to i64 ; 3 uses
  %i.aat = insertelement <2 x float> poison, float %i.xl, i64 0
  %i.aau = insertelement <2 x float> %i.aat, float %i.xn, i64 1
  %i.aav = fneg <2 x float> %i.aau
  %i.aaw = insertelement <2 x float> poison, float %i.fn, i64 0
  %i.aax = shufflevector <2 x float> %i.aaw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aay = fmul <2 x float> %i.aax, %i.aav        ; 3 uses
  %i.aaz = fneg float %i.xp
  %i.aba = fmul float %i.fn, %i.aaz               ; 2 uses
  %i.abb = sub nsw i64 %wide.trip.count.i.i.i.i.i.i.i.i6.i.i.i.i.i.i, %i.aas ; 2 uses
  %min.iters.check529 = icmp ult i64 %i.abb, 8
  br i1 %min.iters.check529, label %.preheader.i.i.i.i.i.i.i.i7.i.i.i.i.i.i.preheader, label %vector.ph530

vector.ph530:                                     ; preds = %.preheader.preheader.i.i.i.i.i.i.i.i5.i.i.i.i.i.i
  %i.abc = and i64 %wide.trip.count.i.i.i.i.i.i.i.i6.i.i.i.i.i.i, 7
  %n.vec531 = sub nuw nsw i64 %i.abb, %i.abc      ; 2 uses
  %i.abd = add nsw i64 %n.vec531, %i.aas
  %broadcast.splat533 = shufflevector <2 x float> %i.aay, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat535 = shufflevector <2 x float> %i.aay, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert536 = insertelement <8 x float> poison, float %i.aba, i64 0
  %broadcast.splat537 = shufflevector <8 x float> %broadcast.splatinsert536, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert538 = insertelement <8 x float> poison, float %i.cz, i64 0
  %broadcast.splat539 = shufflevector <8 x float> %broadcast.splatinsert538, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %broadcast.splatinsert540 = insertelement <8 x float> poison, float %i.aaq, i64 0
  %broadcast.splat541 = shufflevector <8 x float> %broadcast.splatinsert540, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vector.body542

vector.body542:                                   ; preds = %vector.body542, %vector.ph530
  %index543 = phi i64 [ 0, %vector.ph530 ], [ %index.next562, %vector.body542 ] ; 2 uses
  %i.abe = add i64 %index543, %i.aas              ; 5 uses
  %i.abf = getelementptr inbounds [12 x i8], ptr %i.cw, i64 %i.abe ; 2 uses
  %i.abg = getelementptr inbounds [12 x i8], ptr %i.cx, i64 %i.abe
  %i.abh = getelementptr inbounds [12 x i8], ptr %i.dz, i64 %i.abe
  %i.abi = getelementptr inbounds [12 x i8], ptr %i.ct, i64 %i.abe
  %i.abj = getelementptr inbounds [12 x i8], ptr %i.cu, i64 %i.abe
  %wide.vec544 = load <24 x float>, ptr %i.abf, align 4, !tbaa !179, !alias.scope !821, !noalias !822 ; 3 uses
  %strided.vec545 = shufflevector <24 x float> %wide.vec544, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec546 = shufflevector <24 x float> %wide.vec544, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22> ; 2 uses
  %strided.vec547 = shufflevector <24 x float> %wide.vec544, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23> ; 2 uses
  %wide.vec548 = load <24 x float>, ptr %i.abg, align 4, !tbaa !179, !alias.scope !823, !noalias !824 ; 3 uses
  %strided.vec549 = shufflevector <24 x float> %wide.vec548, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec550 = shufflevector <24 x float> %wide.vec548, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec551 = shufflevector <24 x float> %wide.vec548, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec552 = load <24 x float>, ptr %i.abh, align 4, !tbaa !179, !alias.scope !815, !noalias !825 ; 3 uses
  %strided.vec553 = shufflevector <24 x float> %wide.vec552, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec554 = shufflevector <24 x float> %wide.vec552, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec555 = shufflevector <24 x float> %wide.vec552, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.abk = fmul <8 x float> %strided.vec549, %strided.vec553
  %i.abl = fmul <8 x float> %broadcast.splat539, %i.abk
  %i.abm = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat541, <8 x float> %strided.vec545, <8 x float> %i.abl)
  %i.abn = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat533, <8 x float> %strided.vec545, <8 x float> %i.abm) ; 2 uses
  %wide.vec556 = load <24 x float>, ptr %i.abi, align 4, !tbaa !179, !alias.scope !826, !noalias !827 ; 3 uses
  %strided.vec557 = shufflevector <24 x float> %wide.vec556, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec558 = shufflevector <24 x float> %wide.vec556, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec559 = shufflevector <24 x float> %wide.vec556, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %34 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.abn, <8 x float> %broadcast.splat539, <8 x float> %strided.vec557)
  %i.abo = fmul <8 x float> %strided.vec550, %strided.vec554
  %i.abp = fmul <8 x float> %broadcast.splat539, %i.abo
  %35 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat541, <8 x float> %strided.vec546, <8 x float> %i.abp)
  %i.abq = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat535, <8 x float> %strided.vec546, <8 x float> %35) ; 2 uses
  %i.abr = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.abq, <8 x float> %broadcast.splat539, <8 x float> %strided.vec558)
  %i.abs = fmul <8 x float> %strided.vec551, %strided.vec555
  %i.abt = fmul <8 x float> %broadcast.splat539, %i.abs
  %i.abu = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat541, <8 x float> %strided.vec547, <8 x float> %i.abt)
  %i.abv = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat537, <8 x float> %strided.vec547, <8 x float> %i.abu) ; 2 uses
  %i.abw = shufflevector <8 x float> %i.abn, <8 x float> %i.abq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abx = shufflevector <8 x float> %i.abv, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec560 = shufflevector <16 x float> %i.abw, <16 x float> %i.abx, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec560, ptr %i.abf, align 4, !tbaa !179, !alias.scope !821, !noalias !822
  %i.aby = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.abv, <8 x float> %broadcast.splat539, <8 x float> %strided.vec559)
  %36 = shufflevector <8 x float> %34, <8 x float> %i.abr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.abz = shufflevector <8 x float> %i.aby, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec561 = shufflevector <16 x float> %36, <16 x float> %i.abz, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec561, ptr %i.abj, align 4, !tbaa !179, !alias.scope !828, !noalias !829
  %index.next562 = add nuw i64 %index543, 8       ; 2 uses
  %i.aca = icmp eq i64 %index.next562, %n.vec531
  br i1 %i.aca, label %middle.block563, label %vector.body542, !llvm.loop !611

middle.block563:                                  ; preds = %vector.body542
  %i.acb = and i32 %spec.select.i, 7
  %cmp.n564 = icmp eq i32 %i.acb, 0
  br i1 %cmp.n564, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit, label %.preheader.i.i.i.i.i.i.i.i7.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i7.i.i.i.i.i.i.preheader: ; preds = %.preheader.preheader.i.i.i.i.i.i.i.i5.i.i.i.i.i.i, %middle.block563
  %indvars.iv.i.i.i.i.i.i.i.i8.i.i.i.i.i.i.ph = phi i64 [ %i.aas, %.preheader.preheader.i.i.i.i.i.i.i.i5.i.i.i.i.i.i ], [ %i.abd, %middle.block563 ]
  %i.acc = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.acd = shufflevector <2 x float> %i.acc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ace = insertelement <2 x float> poison, float %i.aaq, i64 0
  %i.acf = shufflevector <2 x float> %i.ace, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader.i.i.i.i.i.i.i.i7.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i7.i.i.i.i.i.i:          ; preds = %.preheader.i.i.i.i.i.i.i.i7.i.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i.i.i.i7.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i8.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.i9.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i7.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.i8.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.i.i7.i.i.i.i.i.i.preheader ] ; 6 uses
  %i.acg = getelementptr inbounds [12 x i8], ptr %i.cw, i64 %indvars.iv.i.i.i.i.i.i.i.i8.i.i.i.i.i.i ; 3 uses
  %i.ach = getelementptr inbounds [12 x i8], ptr %i.cx, i64 %indvars.iv.i.i.i.i.i.i.i.i8.i.i.i.i.i.i ; 2 uses
  %i.aci = getelementptr inbounds [12 x i8], ptr %i.dz, i64 %indvars.iv.i.i.i.i.i.i.i.i8.i.i.i.i.i.i ; 2 uses
  %i.acj = getelementptr inbounds [12 x i8], ptr %i.ct, i64 %indvars.iv.i.i.i.i.i.i.i.i8.i.i.i.i.i.i ; 2 uses
  %i.ack = getelementptr inbounds [12 x i8], ptr %i.cu, i64 %indvars.iv.i.i.i.i.i.i.i.i8.i.i.i.i.i.i ; 2 uses
  %i.acl = load <2 x float>, ptr %i.acg, align 4, !tbaa !179, !alias.scope !821, !noalias !822 ; 2 uses
  %i.acm = load <2 x float>, ptr %i.ach, align 4, !tbaa !179, !alias.scope !823, !noalias !824
  %i.acn = load <2 x float>, ptr %i.aci, align 4, !tbaa !179, !alias.scope !815, !noalias !825
  %i.aco = fmul <2 x float> %i.acm, %i.acn
  %i.acp = fmul <2 x float> %i.acd, %i.aco
  %i.acq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acf, <2 x float> %i.acl, <2 x float> %i.acp)
  %i.acr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aay, <2 x float> %i.acl, <2 x float> %i.acq) ; 2 uses
  store <2 x float> %i.acr, ptr %i.acg, align 4, !tbaa !179, !alias.scope !821, !noalias !822
  %i.acs = load <2 x float>, ptr %i.acj, align 4, !tbaa !179, !alias.scope !826, !noalias !827
  %i.act = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acr, <2 x float> %i.acd, <2 x float> %i.acs)
  store <2 x float> %i.act, ptr %i.ack, align 4, !tbaa !179, !alias.scope !828, !noalias !829
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acg, i64 8 ; 2 uses
  %i.acv = load float, ptr %i.acu, align 4, !tbaa !179, !alias.scope !821, !noalias !822 ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.ach, i64 8
  %i.acx = load float, ptr %i.acw, align 4, !tbaa !179, !alias.scope !823, !noalias !824
  %i.acy = getelementptr inbounds nuw i8, ptr %i.aci, i64 8
  %i.acz = load float, ptr %i.acy, align 4, !tbaa !179, !alias.scope !815, !noalias !825
  %i.ada = fmul float %i.acx, %i.acz
  %i.adb = fmul float %i.cz, %i.ada
  %i.adc = call float @llvm.fmuladd.f32(float %i.aaq, float %i.acv, float %i.adb)
  %i.add = call float @llvm.fmuladd.f32(float %i.aba, float %i.acv, float %i.adc) ; 2 uses
  store float %i.add, ptr %i.acu, align 4, !tbaa !179, !alias.scope !821, !noalias !822
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acj, i64 8
  %i.adf = load float, ptr %i.ade, align 4, !tbaa !179, !alias.scope !826, !noalias !827
  %i.adg = call float @llvm.fmuladd.f32(float %i.add, float %i.cz, float %i.adf)
  %i.adh = getelementptr inbounds nuw i8, ptr %i.ack, i64 8
  store float %i.adg, ptr %i.adh, align 4, !tbaa !179, !alias.scope !828, !noalias !829
  %indvars.iv.next.i.i.i.i.i.i.i.i9.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i8.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i10.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i.i9.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i.i.i6.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i10.i.i.i.i.i.i, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit, label %.preheader.i.i.i.i.i.i.i.i7.i.i.i.i.i.i, !llvm.loop !612

bb.ba:                                            ; preds = %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !830)
  call void @llvm.experimental.noalias.scope.decl(metadata !831)
  call void @llvm.experimental.noalias.scope.decl(metadata !832)
  call void @llvm.experimental.noalias.scope.decl(metadata !833)
  call void @llvm.experimental.noalias.scope.decl(metadata !834)
  %i.adi = icmp slt i32 %i.cm, %spec.select.i
  br i1 %i.adi, label %.preheader.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit

.preheader.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ba
  %i.adj = sext i32 %i.cm to i64                  ; 4 uses
  %wide.trip.count.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = sext i32 %spec.select.i to i64 ; 3 uses
  %i.adk = insertelement <2 x float> poison, float %i.xl, i64 0
  %i.adl = insertelement <2 x float> %i.adk, float %i.xn, i64 1
  %i.adm = fneg <2 x float> %i.adl
  %i.adn = insertelement <2 x float> poison, float %i.fn, i64 0
  %i.ado = shufflevector <2 x float> %i.adn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adp = fmul <2 x float> %i.ado, %i.adm        ; 3 uses
  %i.adq = fneg float %i.xp
  %i.adr = fmul float %i.fn, %i.adq               ; 2 uses
  %i.ads = sub nsw i64 %wide.trip.count.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.adj ; 2 uses
  %min.iters.check453 = icmp ult i64 %i.ads, 8
  br i1 %min.iters.check453, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph454

vector.ph454:                                     ; preds = %.preheader.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.adt = and i64 %wide.trip.count.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  %n.vec455 = sub nuw nsw i64 %i.ads, %i.adt      ; 2 uses
  %i.adu = add nsw i64 %n.vec455, %i.adj
  %broadcast.splat457 = shufflevector <2 x float> %i.adp, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat459 = shufflevector <2 x float> %i.adp, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert460 = insertelement <8 x float> poison, float %i.adr, i64 0
  %broadcast.splat461 = shufflevector <8 x float> %broadcast.splatinsert460, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert462 = insertelement <8 x float> poison, float %i.cz, i64 0
  %broadcast.splat463 = shufflevector <8 x float> %broadcast.splatinsert462, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  br label %vector.body464

vector.body464:                                   ; preds = %vector.body464, %vector.ph454
  %index465 = phi i64 [ 0, %vector.ph454 ], [ %index.next484, %vector.body464 ] ; 2 uses
  %i.adv = add i64 %index465, %i.adj              ; 5 uses
  %i.adw = getelementptr inbounds [12 x i8], ptr %i.cw, i64 %i.adv ; 2 uses
  %i.adx = getelementptr inbounds [12 x i8], ptr %i.cx, i64 %i.adv
  %i.ady = getelementptr inbounds [12 x i8], ptr %i.dz, i64 %i.adv
  %i.adz = getelementptr inbounds [12 x i8], ptr %i.ct, i64 %i.adv
  %i.aea = getelementptr inbounds [12 x i8], ptr %i.cu, i64 %i.adv
  %wide.vec466 = load <24 x float>, ptr %i.adw, align 4, !tbaa !179, !alias.scope !835, !noalias !836 ; 3 uses
  %strided.vec467 = shufflevector <24 x float> %wide.vec466, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec468 = shufflevector <24 x float> %wide.vec466, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22> ; 2 uses
  %strided.vec469 = shufflevector <24 x float> %wide.vec466, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23> ; 2 uses
  %wide.vec470 = load <24 x float>, ptr %i.adx, align 4, !tbaa !179, !alias.scope !837, !noalias !838 ; 3 uses
  %strided.vec471 = shufflevector <24 x float> %wide.vec470, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec472 = shufflevector <24 x float> %wide.vec470, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec473 = shufflevector <24 x float> %wide.vec470, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec474 = load <24 x float>, ptr %i.ady, align 4, !tbaa !179, !alias.scope !830, !noalias !839 ; 3 uses
  %strided.vec475 = shufflevector <24 x float> %wide.vec474, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec476 = shufflevector <24 x float> %wide.vec474, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec477 = shufflevector <24 x float> %wide.vec474, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.aeb = fmul <8 x float> %strided.vec471, %strided.vec475
  %i.aec = fmul <8 x float> %broadcast.splat463, %i.aeb
  %i.aed = fadd <8 x float> %strided.vec467, %i.aec
  %i.aee = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat457, <8 x float> %strided.vec467, <8 x float> %i.aed) ; 2 uses
  %wide.vec478 = load <24 x float>, ptr %i.adz, align 4, !tbaa !179, !alias.scope !840, !noalias !841 ; 3 uses
  %strided.vec479 = shufflevector <24 x float> %wide.vec478, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec480 = shufflevector <24 x float> %wide.vec478, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec481 = shufflevector <24 x float> %wide.vec478, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %37 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.aee, <8 x float> %broadcast.splat463, <8 x float> %strided.vec479)
  %i.aef = fmul <8 x float> %strided.vec472, %strided.vec476
  %i.aeg = fmul <8 x float> %broadcast.splat463, %i.aef
  %i.aeh = fadd <8 x float> %strided.vec468, %i.aeg
  %38 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat459, <8 x float> %strided.vec468, <8 x float> %i.aeh) ; 2 uses
  %i.aei = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %38, <8 x float> %broadcast.splat463, <8 x float> %strided.vec480)
  %i.aej = fmul <8 x float> %strided.vec473, %strided.vec477
  %i.aek = fmul <8 x float> %broadcast.splat463, %i.aej
  %i.ael = fadd <8 x float> %strided.vec469, %i.aek
  %i.aem = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat461, <8 x float> %strided.vec469, <8 x float> %i.ael) ; 2 uses
  %i.aen = shufflevector <8 x float> %i.aee, <8 x float> %38, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aeo = shufflevector <8 x float> %i.aem, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec482 = shufflevector <16 x float> %i.aen, <16 x float> %i.aeo, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec482, ptr %i.adw, align 4, !tbaa !179, !alias.scope !835, !noalias !836
  %i.aep = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.aem, <8 x float> %broadcast.splat463, <8 x float> %strided.vec481)
  %39 = shufflevector <8 x float> %37, <8 x float> %i.aei, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aeq = shufflevector <8 x float> %i.aep, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec483 = shufflevector <16 x float> %39, <16 x float> %i.aeq, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec483, ptr %i.aea, align 4, !tbaa !179, !alias.scope !842, !noalias !843
  %index.next484 = add nuw i64 %index465, 8       ; 2 uses
  %i.aer = icmp eq i64 %index.next484, %n.vec455
  br i1 %i.aer, label %middle.block485, label %vector.body464, !llvm.loop !619

middle.block485:                                  ; preds = %vector.body464
  %i.aes = and i32 %spec.select.i, 7
  %cmp.n486 = icmp eq i32 %i.aes, 0
  br i1 %cmp.n486, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.preheader.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block485
  %indvars.iv.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.adj, %.preheader.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.adu, %middle.block485 ]
  %i.aet = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.aeu = shufflevector <2 x float> %i.aet, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 6 uses
  %i.aev = getelementptr inbounds [12 x i8], ptr %i.cw, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.aew = getelementptr inbounds [12 x i8], ptr %i.cx, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.aex = getelementptr inbounds [12 x i8], ptr %i.dz, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.aey = getelementptr inbounds [12 x i8], ptr %i.ct, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.aez = getelementptr inbounds [12 x i8], ptr %i.cu, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.afa = load <2 x float>, ptr %i.aev, align 4, !tbaa !179, !alias.scope !835, !noalias !836 ; 2 uses
  %i.afb = load <2 x float>, ptr %i.aew, align 4, !tbaa !179, !alias.scope !837, !noalias !838
  %i.afc = load <2 x float>, ptr %i.aex, align 4, !tbaa !179, !alias.scope !830, !noalias !839
  %i.afd = fmul <2 x float> %i.afb, %i.afc
  %i.afe = fmul <2 x float> %i.aeu, %i.afd
  %i.aff = fadd <2 x float> %i.afa, %i.afe
  %i.afg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adp, <2 x float> %i.afa, <2 x float> %i.aff) ; 2 uses
  store <2 x float> %i.afg, ptr %i.aev, align 4, !tbaa !179, !alias.scope !835, !noalias !836
  %i.afh = load <2 x float>, ptr %i.aey, align 4, !tbaa !179, !alias.scope !840, !noalias !841
  %i.afi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afg, <2 x float> %i.aeu, <2 x float> %i.afh)
  store <2 x float> %i.afi, ptr %i.aez, align 4, !tbaa !179, !alias.scope !842, !noalias !843
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aev, i64 8 ; 2 uses
  %i.afk = load float, ptr %i.afj, align 4, !tbaa !179, !alias.scope !835, !noalias !836 ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %i.aew, i64 8
  %i.afm = load float, ptr %i.afl, align 4, !tbaa !179, !alias.scope !837, !noalias !838
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aex, i64 8
  %i.afo = load float, ptr %i.afn, align 4, !tbaa !179, !alias.scope !830, !noalias !839
  %i.afp = fmul float %i.afm, %i.afo
  %i.afq = fmul float %i.cz, %i.afp
  %i.afr = fadd float %i.afk, %i.afq
  %i.afs = call float @llvm.fmuladd.f32(float %i.adr, float %i.afk, float %i.afr) ; 2 uses
  store float %i.afs, ptr %i.afj, align 4, !tbaa !179, !alias.scope !835, !noalias !836
  %i.aft = getelementptr inbounds nuw i8, ptr %i.aey, i64 8
  %i.afu = load float, ptr %i.aft, align 4, !tbaa !179, !alias.scope !840, !noalias !841
  %i.afv = call float @llvm.fmuladd.f32(float %i.afs, float %i.cz, float %i.afu)
  %i.afw = getelementptr inbounds nuw i8, ptr %i.aez, i64 8
  store float %i.afv, ptr %i.afw, align 4, !tbaa !179, !alias.scope !842, !noalias !843
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !620

bb.bb:                                            ; preds = %bb.aw
  %i.afx = icmp eq i32 %i.xh, 2
  %or.cond9.i = or i1 %i.afx, %i.ek
  br i1 %or.cond9.i, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.afy = and i1 %i.eq, %i.xf
  %i.afz = insertelement <16 x float> poison, float %i.cz, i64 0
  %i.aga = shufflevector <16 x float> %i.afz, <16 x float> poison, <16 x i32> zeroinitializer ; 12 uses
  br i1 %i.afy, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.experimental.noalias.scope.decl(metadata !844)
  call void @llvm.experimental.noalias.scope.decl(metadata !845)
  call void @llvm.experimental.noalias.scope.decl(metadata !846)
  call void @llvm.experimental.noalias.scope.decl(metadata !847)
  %i.agb = getelementptr inbounds nuw i8, ptr %i.xj, i64 116
  %i.agc = load float, ptr %i.agb, align 4, !tbaa !353, !noalias !848
  %i.agd = insertelement <16 x float> poison, float %i.agc, i64 0
  %i.age = shufflevector <16 x float> %i.agd, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.agf = icmp slt i32 %i.cm, %spec.select.i
  br i1 %i.agf, label %.lr.ph.preheader.i.i, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.bd
  %i.agg = sext i32 %i.cm to i64
  %i.agh = sext i32 %spec.select.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.agg, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 6 uses
  %i.agi = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %indvars.iv.i.i
  %.val.i.i = load <16 x float>, ptr %i.agi, align 64, !tbaa !177, !noalias !849 ; 3 uses
  %i.agj = shufflevector <16 x float> %.val.i.i, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5>
  %i.agk = shufflevector <16 x float> %.val.i.i, <16 x float> poison, <16 x i32> <i32 5, i32 5, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 8, i32 8, i32 8, i32 9, i32 9, i32 9, i32 10, i32 10>
  %i.agl = shufflevector <16 x float> %.val.i.i, <16 x float> poison, <16 x i32> <i32 10, i32 11, i32 11, i32 11, i32 12, i32 12, i32 12, i32 13, i32 13, i32 13, i32 14, i32 14, i32 14, i32 15, i32 15, i32 15>
  %i.agm = getelementptr inbounds [12 x i8], ptr %i.cw, i64 %indvars.iv.i.i ; 4 uses
  %.val10.i.i.i = load <16 x float>, ptr %i.agm, align 64, !tbaa !177, !alias.scope !850, !noalias !851
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 64 ; 2 uses
  %.val9.i.i.i = load <16 x float>, ptr %i.agn, align 64, !tbaa !177, !alias.scope !850, !noalias !851
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agm, i64 128 ; 2 uses
  %.val.i.i.i = load <16 x float>, ptr %i.ago, align 64, !tbaa !177, !alias.scope !850, !noalias !851
  %i.agp = getelementptr inbounds [12 x i8], ptr %i.cx, i64 %indvars.iv.i.i ; 3 uses
  %.val10.i57.i.i = load <16 x float>, ptr %i.agp, align 64, !tbaa !177, !alias.scope !852, !noalias !853
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 64
  %.val9.i58.i.i = load <16 x float>, ptr %i.agq, align 64, !tbaa !177, !alias.scope !852, !noalias !853
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agp, i64 128
  %.val.i59.i.i = load <16 x float>, ptr %i.agr, align 64, !tbaa !177, !alias.scope !852, !noalias !853
  %i.ags = fmul <16 x float> %i.agj, %.val10.i57.i.i
  %i.agt = fmul <16 x float> %i.age, %.val10.i.i.i
  %i.agu = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ags, <16 x float> %i.aga, <16 x float> %i.agt) ; 2 uses
  %i.agv = fmul <16 x float> %i.agk, %.val9.i58.i.i
  %i.agw = fmul <16 x float> %i.age, %.val9.i.i.i
  %i.agx = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.agv, <16 x float> %i.aga, <16 x float> %i.agw) ; 2 uses
  %i.agy = fmul <16 x float> %i.agl, %.val.i59.i.i
  %i.agz = fmul <16 x float> %i.age, %.val.i.i.i
  %i.aha = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.agy, <16 x float> %i.aga, <16 x float> %i.agz) ; 2 uses
  store <16 x float> %i.agu, ptr %i.agm, align 64, !tbaa !177, !alias.scope !850, !noalias !851
  store <16 x float> %i.agx, ptr %i.agn, align 64, !tbaa !177, !alias.scope !850, !noalias !851
  store <16 x float> %i.aha, ptr %i.ago, align 64, !tbaa !177, !alias.scope !850, !noalias !851
  %i.ahb = getelementptr inbounds [12 x i8], ptr %i.ct, i64 %indvars.iv.i.i ; 3 uses
  %.val10.i60.i.i = load <16 x float>, ptr %i.ahb, align 64, !tbaa !177, !alias.scope !854, !noalias !855
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 64
  %.val9.i61.i.i = load <16 x float>, ptr %i.ahc, align 64, !tbaa !177, !alias.scope !854, !noalias !855
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahb, i64 128
  %.val.i62.i.i = load <16 x float>, ptr %i.ahd, align 64, !tbaa !177, !alias.scope !854, !noalias !855
  %i.ahe = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.agu, <16 x float> %i.aga, <16 x float> %.val10.i60.i.i)
  %i.ahf = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.agx, <16 x float> %i.aga, <16 x float> %.val9.i61.i.i)
  %i.ahg = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aha, <16 x float> %i.aga, <16 x float> %.val.i62.i.i)
  %i.ahh = getelementptr inbounds [12 x i8], ptr %i.cu, i64 %indvars.iv.i.i ; 3 uses
  store <16 x float> %i.ahe, ptr %i.ahh, align 64, !tbaa !177, !alias.scope !856, !noalias !857
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 64
  store <16 x float> %i.ahf, ptr %i.ahi, align 64, !tbaa !177, !alias.scope !856, !noalias !857
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahh, i64 128
  store <16 x float> %i.ahg, ptr %i.ahj, align 64, !tbaa !177, !alias.scope !856, !noalias !857
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 16 ; 2 uses
  %i.ahk = icmp slt i64 %indvars.iv.next.i.i, %i.agh
  br i1 %i.ahk, label %.lr.ph.i.i, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit, !llvm.loop !626

bb.be:                                            ; preds = %bb.bc
  call void @llvm.experimental.noalias.scope.decl(metadata !858)
  call void @llvm.experimental.noalias.scope.decl(metadata !859)
  call void @llvm.experimental.noalias.scope.decl(metadata !860)
  call void @llvm.experimental.noalias.scope.decl(metadata !861)
  %i.ahl = icmp slt i32 %i.cm, %spec.select.i
  br i1 %i.ahl, label %.lr.ph.preheader.i101.i, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit

.lr.ph.preheader.i101.i:                          ; preds = %bb.be
  %i.ahm = sext i32 %i.cm to i64
  %i.ahn = sext i32 %spec.select.i to i64
  br label %.lr.ph.i102.i

.lr.ph.i102.i:                                    ; preds = %.lr.ph.i102.i, %.lr.ph.preheader.i101.i
  %indvars.iv.i103.i = phi i64 [ %i.ahm, %.lr.ph.preheader.i101.i ], [ %indvars.iv.next.i108.i, %.lr.ph.i102.i ] ; 6 uses
  %i.aho = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %indvars.iv.i103.i
  %.val.i104.i = load <16 x float>, ptr %i.aho, align 64, !tbaa !177, !noalias !862 ; 3 uses
  %i.ahp = shufflevector <16 x float> %.val.i104.i, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5>
  %i.ahq = shufflevector <16 x float> %.val.i104.i, <16 x float> poison, <16 x i32> <i32 5, i32 5, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 8, i32 8, i32 8, i32 9, i32 9, i32 9, i32 10, i32 10>
  %i.ahr = shufflevector <16 x float> %.val.i104.i, <16 x float> poison, <16 x i32> <i32 10, i32 11, i32 11, i32 11, i32 12, i32 12, i32 12, i32 13, i32 13, i32 13, i32 14, i32 14, i32 14, i32 15, i32 15, i32 15>
  %i.ahs = getelementptr inbounds [12 x i8], ptr %i.cw, i64 %indvars.iv.i103.i ; 4 uses
  %.val10.i.i105.i = load <16 x float>, ptr %i.ahs, align 64, !tbaa !177, !alias.scope !863, !noalias !864
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 64 ; 2 uses
  %.val9.i.i106.i = load <16 x float>, ptr %i.aht, align 64, !tbaa !177, !alias.scope !863, !noalias !864
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahs, i64 128 ; 2 uses
  %.val.i.i107.i = load <16 x float>, ptr %i.ahu, align 64, !tbaa !177, !alias.scope !863, !noalias !864
  %i.ahv = getelementptr inbounds [12 x i8], ptr %i.cx, i64 %indvars.iv.i103.i ; 3 uses
  %.val10.i51.i.i = load <16 x float>, ptr %i.ahv, align 64, !tbaa !177, !alias.scope !865, !noalias !866
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 64
  %.val9.i52.i.i = load <16 x float>, ptr %i.ahw, align 64, !tbaa !177, !alias.scope !865, !noalias !866
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahv, i64 128
  %.val.i53.i.i = load <16 x float>, ptr %i.ahx, align 64, !tbaa !177, !alias.scope !865, !noalias !866
  %i.ahy = fmul <16 x float> %i.ahp, %.val10.i51.i.i
  %i.ahz = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ahy, <16 x float> %i.aga, <16 x float> %.val10.i.i105.i) ; 2 uses
  %i.aia = fmul <16 x float> %i.ahq, %.val9.i52.i.i
  %i.aib = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aia, <16 x float> %i.aga, <16 x float> %.val9.i.i106.i) ; 2 uses
  %i.aic = fmul <16 x float> %i.ahr, %.val.i53.i.i
  %i.aid = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aic, <16 x float> %i.aga, <16 x float> %.val.i.i107.i) ; 2 uses
  store <16 x float> %i.ahz, ptr %i.ahs, align 64, !tbaa !177, !alias.scope !863, !noalias !864
  store <16 x float> %i.aib, ptr %i.aht, align 64, !tbaa !177, !alias.scope !863, !noalias !864
  store <16 x float> %i.aid, ptr %i.ahu, align 64, !tbaa !177, !alias.scope !863, !noalias !864
  %i.aie = getelementptr inbounds [12 x i8], ptr %i.ct, i64 %indvars.iv.i103.i ; 3 uses
  %.val10.i54.i.i = load <16 x float>, ptr %i.aie, align 64, !tbaa !177, !alias.scope !867, !noalias !868
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 64
  %.val9.i55.i.i = load <16 x float>, ptr %i.aif, align 64, !tbaa !177, !alias.scope !867, !noalias !868
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aie, i64 128
  %.val.i56.i.i = load <16 x float>, ptr %i.aig, align 64, !tbaa !177, !alias.scope !867, !noalias !868
  %i.aih = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ahz, <16 x float> %i.aga, <16 x float> %.val10.i54.i.i)
  %i.aii = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aib, <16 x float> %i.aga, <16 x float> %.val9.i55.i.i)
  %i.aij = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.aid, <16 x float> %i.aga, <16 x float> %.val.i56.i.i)
  %i.aik = getelementptr inbounds [12 x i8], ptr %i.cu, i64 %indvars.iv.i103.i ; 3 uses
  store <16 x float> %i.aih, ptr %i.aik, align 64, !tbaa !177, !alias.scope !869, !noalias !870
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 64
  store <16 x float> %i.aii, ptr %i.ail, align 64, !tbaa !177, !alias.scope !869, !noalias !870
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aik, i64 128
  store <16 x float> %i.aij, ptr %i.aim, align 64, !tbaa !177, !alias.scope !869, !noalias !870
  %indvars.iv.next.i108.i = add nsw i64 %indvars.iv.i103.i, 16 ; 2 uses
  %i.ain = icmp slt i64 %indvars.iv.next.i108.i, %i.ahn
  br i1 %i.ain, label %.lr.ph.i102.i, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit, !llvm.loop !632

bb.bf:                                            ; preds = %bb.bb
  switch i32 %i.xh, label %bb.bi [
    i32 2, label %bb.bg
    i32 1, label %bb.bh
  ]

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.experimental.noalias.scope.decl(metadata !871)
  call void @llvm.experimental.noalias.scope.decl(metadata !872)
  call void @llvm.experimental.noalias.scope.decl(metadata !873)
  call void @llvm.experimental.noalias.scope.decl(metadata !874)
  call void @llvm.experimental.noalias.scope.decl(metadata !875)
  %i.aio = icmp slt i32 %i.cm, %spec.select.i
  br i1 %i.aio, label %.lr.ph.i.i.i.i.i.i.i113.i, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit

.lr.ph.i.i.i.i.i.i.i113.i:                        ; preds = %bb.bg
  %i.aip = sext i32 %i.cm to i64                  ; 4 uses
  %wide.trip.count.i.i.i.i.i.i.i114.i = sext i32 %spec.select.i to i64 ; 3 uses
  %i.aiq = sub nsw i64 %wide.trip.count.i.i.i.i.i.i.i114.i, %i.aip ; 2 uses
  %min.iters.check390 = icmp ult i64 %i.aiq, 8
  br i1 %min.iters.check390, label %scalar.ph389.preheader, label %vector.ph391

vector.ph391:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i113.i
  %i.air = and i64 %wide.trip.count.i.i.i.i.i.i.i114.i, 7
  %n.vec392 = sub nuw nsw i64 %i.aiq, %i.air      ; 2 uses
  %i.ais = add nsw i64 %n.vec392, %i.aip
  %broadcast.splatinsert393 = insertelement <8 x float> poison, float %i.cz, i64 0
  %broadcast.splat394 = shufflevector <8 x float> %broadcast.splatinsert393, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  br label %vector.body395

vector.body395:                                   ; preds = %vector.body395, %vector.ph391
  %index396 = phi i64 [ 0, %vector.ph391 ], [ %index.next416, %vector.body395 ] ; 2 uses
  %i.ait = add i64 %index396, %i.aip              ; 6 uses
  %i.aiu = getelementptr inbounds [2 x i8], ptr %i.df, i64 %i.ait
  %wide.load = load <8 x i16>, ptr %i.aiu, align 2, !tbaa !241, !noalias !876
  %i.aiv = zext <8 x i16> %wide.load to <8 x i64>
  %wide.gep = getelementptr inbounds nuw [144 x i8], ptr %i.xj, <8 x i64> %i.aiv
  %wide.gep397 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 116
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep397, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !353, !noalias !877 ; 3 uses
  %i.aiw = getelementptr inbounds [12 x i8], ptr %i.cw, i64 %i.ait ; 2 uses
  %i.aix = getelementptr inbounds [12 x i8], ptr %i.cx, i64 %i.ait
  %i.aiy = getelementptr inbounds [12 x i8], ptr %i.dz, i64 %i.ait
  %i.aiz = getelementptr inbounds [12 x i8], ptr %i.ct, i64 %i.ait
  %i.aja = getelementptr inbounds [12 x i8], ptr %i.cu, i64 %i.ait
  %wide.vec398 = load <24 x float>, ptr %i.aiw, align 4, !tbaa !179, !alias.scope !878, !noalias !879 ; 3 uses
  %strided.vec399 = shufflevector <24 x float> %wide.vec398, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec400 = shufflevector <24 x float> %wide.vec398, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec401 = shufflevector <24 x float> %wide.vec398, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec402 = load <24 x float>, ptr %i.aix, align 4, !tbaa !179, !alias.scope !880, !noalias !881 ; 3 uses
  %strided.vec403 = shufflevector <24 x float> %wide.vec402, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec404 = shufflevector <24 x float> %wide.vec402, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec405 = shufflevector <24 x float> %wide.vec402, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec406 = load <24 x float>, ptr %i.aiy, align 4, !tbaa !179, !alias.scope !871, !noalias !882 ; 3 uses
  %strided.vec407 = shufflevector <24 x float> %wide.vec406, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec408 = shufflevector <24 x float> %wide.vec406, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec409 = shufflevector <24 x float> %wide.vec406, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.ajb = fmul <8 x float> %strided.vec403, %strided.vec407
  %i.ajc = fmul <8 x float> %broadcast.splat394, %i.ajb
  %i.ajd = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather, <8 x float> %strided.vec399, <8 x float> %i.ajc) ; 2 uses
  %wide.vec410 = load <24 x float>, ptr %i.aiz, align 4, !tbaa !179, !alias.scope !883, !noalias !884 ; 3 uses
  %strided.vec411 = shufflevector <24 x float> %wide.vec410, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec412 = shufflevector <24 x float> %wide.vec410, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec413 = shufflevector <24 x float> %wide.vec410, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %40 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ajd, <8 x float> %broadcast.splat394, <8 x float> %strided.vec411)
  %i.aje = fmul <8 x float> %strided.vec404, %strided.vec408
  %i.ajf = fmul <8 x float> %broadcast.splat394, %i.aje
  %41 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather, <8 x float> %strided.vec400, <8 x float> %i.ajf) ; 2 uses
  %i.ajg = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %41, <8 x float> %broadcast.splat394, <8 x float> %strided.vec412)
  %i.ajh = fmul <8 x float> %strided.vec405, %strided.vec409
  %i.aji = fmul <8 x float> %broadcast.splat394, %i.ajh
  %i.ajj = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather, <8 x float> %strided.vec401, <8 x float> %i.aji) ; 2 uses
  %i.ajk = shufflevector <8 x float> %i.ajd, <8 x float> %41, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ajl = shufflevector <8 x float> %i.ajj, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec414 = shufflevector <16 x float> %i.ajk, <16 x float> %i.ajl, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec414, ptr %i.aiw, align 4, !tbaa !179, !alias.scope !878, !noalias !879
  %i.ajm = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ajj, <8 x float> %broadcast.splat394, <8 x float> %strided.vec413)
  %42 = shufflevector <8 x float> %40, <8 x float> %i.ajg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ajn = shufflevector <8 x float> %i.ajm, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec415 = shufflevector <16 x float> %42, <16 x float> %i.ajn, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec415, ptr %i.aja, align 4, !tbaa !179, !alias.scope !885, !noalias !886
  %index.next416 = add nuw i64 %index396, 8       ; 2 uses
  %i.ajo = icmp eq i64 %index.next416, %n.vec392
  br i1 %i.ajo, label %middle.block417, label %vector.body395, !llvm.loop !639

middle.block417:                                  ; preds = %vector.body395
  %i.ajp = and i32 %spec.select.i, 7
  %cmp.n418 = icmp eq i32 %i.ajp, 0
  br i1 %cmp.n418, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit, label %scalar.ph389.preheader

scalar.ph389.preheader:                           ; preds = %.lr.ph.i.i.i.i.i.i.i113.i, %middle.block417
  %indvars.iv.i.i.i.i.i.i.i115.i.ph = phi i64 [ %i.aip, %.lr.ph.i.i.i.i.i.i.i113.i ], [ %i.ais, %middle.block417 ]
  %i.ajq = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.ajr = shufflevector <2 x float> %i.ajq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %scalar.ph389

scalar.ph389:                                     ; preds = %scalar.ph389.preheader, %scalar.ph389
  %indvars.iv.i.i.i.i.i.i.i115.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i116.i, %scalar.ph389 ], [ %indvars.iv.i.i.i.i.i.i.i115.i.ph, %scalar.ph389.preheader ] ; 7 uses
  %i.ajs = getelementptr inbounds [2 x i8], ptr %i.df, i64 %indvars.iv.i.i.i.i.i.i.i115.i
  %i.ajt = load i16, ptr %i.ajs, align 2, !tbaa !241, !noalias !876
  %i.aju = zext i16 %i.ajt to i64
  %i.ajv = getelementptr inbounds nuw [144 x i8], ptr %i.xj, i64 %i.aju
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 116
  %i.ajx = load float, ptr %i.ajw, align 4, !tbaa !353, !noalias !877 ; 2 uses
  %i.ajy = getelementptr inbounds [12 x i8], ptr %i.cw, i64 %indvars.iv.i.i.i.i.i.i.i115.i ; 3 uses
  %i.ajz = getelementptr inbounds [12 x i8], ptr %i.cx, i64 %indvars.iv.i.i.i.i.i.i.i115.i ; 2 uses
  %i.aka = getelementptr inbounds [12 x i8], ptr %i.dz, i64 %indvars.iv.i.i.i.i.i.i.i115.i ; 2 uses
  %i.akb = getelementptr inbounds [12 x i8], ptr %i.ct, i64 %indvars.iv.i.i.i.i.i.i.i115.i ; 2 uses
  %i.akc = getelementptr inbounds [12 x i8], ptr %i.cu, i64 %indvars.iv.i.i.i.i.i.i.i115.i ; 2 uses
  %i.akd = load <2 x float>, ptr %i.ajy, align 4, !tbaa !179, !alias.scope !878, !noalias !879
  %i.ake = load <2 x float>, ptr %i.ajz, align 4, !tbaa !179, !alias.scope !880, !noalias !881
  %i.akf = load <2 x float>, ptr %i.aka, align 4, !tbaa !179, !alias.scope !871, !noalias !882
  %i.akg = fmul <2 x float> %i.ake, %i.akf
  %i.akh = fmul <2 x float> %i.ajr, %i.akg
  %i.aki = insertelement <2 x float> poison, float %i.ajx, i64 0
  %i.akj = shufflevector <2 x float> %i.aki, <2 x float> poison, <2 x i32> zeroinitializer
  %i.akk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.akj, <2 x float> %i.akd, <2 x float> %i.akh) ; 2 uses
  store <2 x float> %i.akk, ptr %i.ajy, align 4, !tbaa !179, !alias.scope !878, !noalias !879
  %i.akl = load <2 x float>, ptr %i.akb, align 4, !tbaa !179, !alias.scope !883, !noalias !884
  %i.akm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.akk, <2 x float> %i.ajr, <2 x float> %i.akl)
  store <2 x float> %i.akm, ptr %i.akc, align 4, !tbaa !179, !alias.scope !885, !noalias !886
  %i.akn = getelementptr inbounds nuw i8, ptr %i.ajy, i64 8 ; 2 uses
  %i.ako = load float, ptr %i.akn, align 4, !tbaa !179, !alias.scope !878, !noalias !879
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ajz, i64 8
  %i.akq = load float, ptr %i.akp, align 4, !tbaa !179, !alias.scope !880, !noalias !881
  %i.akr = getelementptr inbounds nuw i8, ptr %i.aka, i64 8
  %i.aks = load float, ptr %i.akr, align 4, !tbaa !179, !alias.scope !871, !noalias !882
  %i.akt = fmul float %i.akq, %i.aks
  %i.aku = fmul float %i.cz, %i.akt
  %i.akv = call float @llvm.fmuladd.f32(float %i.ajx, float %i.ako, float %i.aku) ; 2 uses
  store float %i.akv, ptr %i.akn, align 4, !tbaa !179, !alias.scope !878, !noalias !879
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akb, i64 8
  %i.akx = load float, ptr %i.akw, align 4, !tbaa !179, !alias.scope !883, !noalias !884
  %i.aky = call float @llvm.fmuladd.f32(float %i.akv, float %i.cz, float %i.akx)
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akc, i64 8
  store float %i.aky, ptr %i.akz, align 4, !tbaa !179, !alias.scope !885, !noalias !886
  %indvars.iv.next.i.i.i.i.i.i.i116.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i115.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i117.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i116.i, %wide.trip.count.i.i.i.i.i.i.i114.i
  br i1 %exitcond.not.i.i.i.i.i.i.i117.i, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit, label %scalar.ph389, !llvm.loop !640

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.experimental.noalias.scope.decl(metadata !887)
  call void @llvm.experimental.noalias.scope.decl(metadata !888)
  call void @llvm.experimental.noalias.scope.decl(metadata !889)
  call void @llvm.experimental.noalias.scope.decl(metadata !890)
  call void @llvm.experimental.noalias.scope.decl(metadata !891)
  %i.ala = getelementptr inbounds nuw i8, ptr %i.xj, i64 116
  %i.alb = load float, ptr %i.ala, align 4, !tbaa !353, !noalias !892 ; 3 uses
  %i.alc = icmp slt i32 %i.cm, %spec.select.i
  br i1 %i.alc, label %.preheader.preheader.i.i.i.i.i.i.i.i.i, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit

.preheader.preheader.i.i.i.i.i.i.i.i.i:           ; preds = %bb.bh
  %i.ald = sext i32 %i.cm to i64                  ; 4 uses
  %wide.trip.count.i.i.i.i.i.i.i.i109.i = sext i32 %spec.select.i to i64 ; 3 uses
  %i.ale = sub nsw i64 %wide.trip.count.i.i.i.i.i.i.i.i109.i, %i.ald ; 2 uses
  %min.iters.check421 = icmp ult i64 %i.ale, 8
  br i1 %min.iters.check421, label %.preheader.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph422

vector.ph422:                                     ; preds = %.preheader.preheader.i.i.i.i.i.i.i.i.i
  %i.alf = and i64 %wide.trip.count.i.i.i.i.i.i.i.i109.i, 7
  %n.vec423 = sub nuw nsw i64 %i.ale, %i.alf      ; 2 uses
  %i.alg = add nsw i64 %n.vec423, %i.ald
  %broadcast.splatinsert424 = insertelement <8 x float> poison, float %i.cz, i64 0
  %broadcast.splat425 = shufflevector <8 x float> %broadcast.splatinsert424, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  %broadcast.splatinsert426 = insertelement <8 x float> poison, float %i.alb, i64 0
  %broadcast.splat427 = shufflevector <8 x float> %broadcast.splatinsert426, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vector.body428

vector.body428:                                   ; preds = %vector.body428, %vector.ph422
  %index429 = phi i64 [ 0, %vector.ph422 ], [ %index.next448, %vector.body428 ] ; 2 uses
  %i.alh = add i64 %index429, %i.ald              ; 5 uses
  %i.ali = getelementptr inbounds [12 x i8], ptr %i.cw, i64 %i.alh ; 2 uses
  %i.alj = getelementptr inbounds [12 x i8], ptr %i.cx, i64 %i.alh
  %i.alk = getelementptr inbounds [12 x i8], ptr %i.dz, i64 %i.alh
  %i.all = getelementptr inbounds [12 x i8], ptr %i.ct, i64 %i.alh
  %i.alm = getelementptr inbounds [12 x i8], ptr %i.cu, i64 %i.alh
  %wide.vec430 = load <24 x float>, ptr %i.ali, align 4, !tbaa !179, !alias.scope !893, !noalias !894 ; 3 uses
  %strided.vec431 = shufflevector <24 x float> %wide.vec430, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec432 = shufflevector <24 x float> %wide.vec430, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec433 = shufflevector <24 x float> %wide.vec430, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec434 = load <24 x float>, ptr %i.alj, align 4, !tbaa !179, !alias.scope !895, !noalias !896 ; 3 uses
  %strided.vec435 = shufflevector <24 x float> %wide.vec434, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec436 = shufflevector <24 x float> %wide.vec434, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec437 = shufflevector <24 x float> %wide.vec434, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec438 = load <24 x float>, ptr %i.alk, align 4, !tbaa !179, !alias.scope !887, !noalias !897 ; 3 uses
  %strided.vec439 = shufflevector <24 x float> %wide.vec438, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec440 = shufflevector <24 x float> %wide.vec438, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec441 = shufflevector <24 x float> %wide.vec438, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.aln = fmul <8 x float> %strided.vec435, %strided.vec439
  %i.alo = fmul <8 x float> %broadcast.splat425, %i.aln
  %i.alp = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat427, <8 x float> %strided.vec431, <8 x float> %i.alo) ; 2 uses
  %wide.vec442 = load <24 x float>, ptr %i.all, align 4, !tbaa !179, !alias.scope !898, !noalias !899 ; 3 uses
  %strided.vec443 = shufflevector <24 x float> %wide.vec442, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec444 = shufflevector <24 x float> %wide.vec442, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec445 = shufflevector <24 x float> %wide.vec442, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %43 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.alp, <8 x float> %broadcast.splat425, <8 x float> %strided.vec443)
  %i.alq = fmul <8 x float> %strided.vec436, %strided.vec440
  %i.alr = fmul <8 x float> %broadcast.splat425, %i.alq
  %44 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat427, <8 x float> %strided.vec432, <8 x float> %i.alr) ; 2 uses
  %i.als = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %44, <8 x float> %broadcast.splat425, <8 x float> %strided.vec444)
  %i.alt = fmul <8 x float> %strided.vec437, %strided.vec441
  %i.alu = fmul <8 x float> %broadcast.splat425, %i.alt
  %i.alv = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat427, <8 x float> %strided.vec433, <8 x float> %i.alu) ; 2 uses
  %i.alw = shufflevector <8 x float> %i.alp, <8 x float> %44, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.alx = shufflevector <8 x float> %i.alv, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec446 = shufflevector <16 x float> %i.alw, <16 x float> %i.alx, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec446, ptr %i.ali, align 4, !tbaa !179, !alias.scope !893, !noalias !894
  %i.aly = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.alv, <8 x float> %broadcast.splat425, <8 x float> %strided.vec445)
  %45 = shufflevector <8 x float> %43, <8 x float> %i.als, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.alz = shufflevector <8 x float> %i.aly, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec447 = shufflevector <16 x float> %45, <16 x float> %i.alz, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec447, ptr %i.alm, align 4, !tbaa !179, !alias.scope !900, !noalias !901
  %index.next448 = add nuw i64 %index429, 8       ; 2 uses
  %i.ama = icmp eq i64 %index.next448, %n.vec423
  br i1 %i.ama, label %middle.block449, label %vector.body428, !llvm.loop !647

middle.block449:                                  ; preds = %vector.body428
  %i.amb = and i32 %spec.select.i, 7
  %cmp.n450 = icmp eq i32 %i.amb, 0
  br i1 %cmp.n450, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit, label %.preheader.i.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %.preheader.preheader.i.i.i.i.i.i.i.i.i, %middle.block449
  %indvars.iv.i.i.i.i.i.i.i.i110.i.ph = phi i64 [ %i.ald, %.preheader.preheader.i.i.i.i.i.i.i.i.i ], [ %i.alg, %middle.block449 ]
  %i.amc = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.amd = shufflevector <2 x float> %i.amc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ame = insertelement <2 x float> poison, float %i.alb, i64 0
  %i.amf = shufflevector <2 x float> %i.ame, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %.preheader.i.i.i.i.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i110.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.i111.i, %.preheader.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.i110.i.ph, %.preheader.i.i.i.i.i.i.i.i.i.preheader ] ; 6 uses
  %i.amg = getelementptr inbounds [12 x i8], ptr %i.cw, i64 %indvars.iv.i.i.i.i.i.i.i.i110.i ; 3 uses
  %i.amh = getelementptr inbounds [12 x i8], ptr %i.cx, i64 %indvars.iv.i.i.i.i.i.i.i.i110.i ; 2 uses
  %i.ami = getelementptr inbounds [12 x i8], ptr %i.dz, i64 %indvars.iv.i.i.i.i.i.i.i.i110.i ; 2 uses
  %i.amj = getelementptr inbounds [12 x i8], ptr %i.ct, i64 %indvars.iv.i.i.i.i.i.i.i.i110.i ; 2 uses
  %i.amk = getelementptr inbounds [12 x i8], ptr %i.cu, i64 %indvars.iv.i.i.i.i.i.i.i.i110.i ; 2 uses
  %i.aml = load <2 x float>, ptr %i.amg, align 4, !tbaa !179, !alias.scope !893, !noalias !894
  %i.amm = load <2 x float>, ptr %i.amh, align 4, !tbaa !179, !alias.scope !895, !noalias !896
  %i.amn = load <2 x float>, ptr %i.ami, align 4, !tbaa !179, !alias.scope !887, !noalias !897
  %i.amo = fmul <2 x float> %i.amm, %i.amn
  %i.amp = fmul <2 x float> %i.amd, %i.amo
  %i.amq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.amf, <2 x float> %i.aml, <2 x float> %i.amp) ; 2 uses
  store <2 x float> %i.amq, ptr %i.amg, align 4, !tbaa !179, !alias.scope !893, !noalias !894
  %i.amr = load <2 x float>, ptr %i.amj, align 4, !tbaa !179, !alias.scope !898, !noalias !899
  %i.ams = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.amq, <2 x float> %i.amd, <2 x float> %i.amr)
  store <2 x float> %i.ams, ptr %i.amk, align 4, !tbaa !179, !alias.scope !900, !noalias !901
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amg, i64 8 ; 2 uses
  %i.amu = load float, ptr %i.amt, align 4, !tbaa !179, !alias.scope !893, !noalias !894
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amh, i64 8
  %i.amw = load float, ptr %i.amv, align 4, !tbaa !179, !alias.scope !895, !noalias !896
  %i.amx = getelementptr inbounds nuw i8, ptr %i.ami, i64 8
  %i.amy = load float, ptr %i.amx, align 4, !tbaa !179, !alias.scope !887, !noalias !897
  %i.amz = fmul float %i.amw, %i.amy
  %i.ana = fmul float %i.cz, %i.amz
  %i.anb = call float @llvm.fmuladd.f32(float %i.alb, float %i.amu, float %i.ana) ; 2 uses
  store float %i.anb, ptr %i.amt, align 4, !tbaa !179, !alias.scope !893, !noalias !894
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amj, i64 8
  %i.and = load float, ptr %i.anc, align 4, !tbaa !179, !alias.scope !898, !noalias !899
  %i.ane = call float @llvm.fmuladd.f32(float %i.anb, float %i.cz, float %i.and)
  %i.anf = getelementptr inbounds nuw i8, ptr %i.amk, i64 8
  store float %i.ane, ptr %i.anf, align 4, !tbaa !179, !alias.scope !900, !noalias !901
  %indvars.iv.next.i.i.i.i.i.i.i.i111.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i110.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i112.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i.i111.i, %wide.trip.count.i.i.i.i.i.i.i.i109.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i112.i, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit, label %.preheader.i.i.i.i.i.i.i.i.i, !llvm.loop !648

bb.bi:                                            ; preds = %bb.bf
  call void @llvm.experimental.noalias.scope.decl(metadata !902)
  call void @llvm.experimental.noalias.scope.decl(metadata !903)
  call void @llvm.experimental.noalias.scope.decl(metadata !904)
  call void @llvm.experimental.noalias.scope.decl(metadata !905)
  call void @llvm.experimental.noalias.scope.decl(metadata !906)
  %i.ang = icmp slt i32 %i.cm, %spec.select.i
  br i1 %i.ang, label %.preheader.preheader.i.i.i.i.i.i.i.i.i.i, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit

.preheader.preheader.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.bi
  %i.anh = sext i32 %i.cm to i64                  ; 4 uses
  %wide.trip.count.i.i.i.i.i.i.i.i.i118.i = sext i32 %spec.select.i to i64 ; 3 uses
  %i.ani = sub nsw i64 %wide.trip.count.i.i.i.i.i.i.i.i.i118.i, %i.anh ; 2 uses
  %min.iters.check = icmp ult i64 %i.ani, 8
  br i1 %min.iters.check, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader.i.i.i.i.i.i.i.i.i.i
  %i.anj = and i64 %wide.trip.count.i.i.i.i.i.i.i.i.i118.i, 7
  %n.vec = sub nuw nsw i64 %i.ani, %i.anj         ; 2 uses
  %i.ank = add nsw i64 %n.vec, %i.anh
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.cz, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.anl = add i64 %index, %i.anh                 ; 5 uses
  %i.anm = getelementptr inbounds [12 x i8], ptr %i.cw, i64 %i.anl ; 2 uses
  %i.ann = getelementptr inbounds [12 x i8], ptr %i.cx, i64 %i.anl
  %i.ano = getelementptr inbounds [12 x i8], ptr %i.dz, i64 %i.anl
  %i.anp = getelementptr inbounds [12 x i8], ptr %i.ct, i64 %i.anl
  %i.anq = getelementptr inbounds [12 x i8], ptr %i.cu, i64 %i.anl
  %wide.vec = load <24 x float>, ptr %i.anm, align 4, !tbaa !179, !alias.scope !907, !noalias !908 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec374 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec375 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec376 = load <24 x float>, ptr %i.ann, align 4, !tbaa !179, !alias.scope !909, !noalias !910 ; 3 uses
  %strided.vec377 = shufflevector <24 x float> %wide.vec376, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec378 = shufflevector <24 x float> %wide.vec376, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec379 = shufflevector <24 x float> %wide.vec376, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec380 = load <24 x float>, ptr %i.ano, align 4, !tbaa !179, !alias.scope !902, !noalias !911 ; 3 uses
  %strided.vec381 = shufflevector <24 x float> %wide.vec380, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec382 = shufflevector <24 x float> %wide.vec380, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec383 = shufflevector <24 x float> %wide.vec380, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.anr = fmul <8 x float> %strided.vec377, %strided.vec381
  %i.ans = fmul <8 x float> %broadcast.splat, %i.anr
  %i.ant = fadd <8 x float> %strided.vec, %i.ans  ; 2 uses
  %wide.vec384 = load <24 x float>, ptr %i.anp, align 4, !tbaa !179, !alias.scope !912, !noalias !913 ; 3 uses
  %strided.vec385 = shufflevector <24 x float> %wide.vec384, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec386 = shufflevector <24 x float> %wide.vec384, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec387 = shufflevector <24 x float> %wide.vec384, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %46 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ant, <8 x float> %broadcast.splat, <8 x float> %strided.vec385)
  %i.anu = fmul <8 x float> %strided.vec378, %strided.vec382
  %i.anv = fmul <8 x float> %broadcast.splat, %i.anu
  %i.anw = fadd <8 x float> %strided.vec374, %i.anv ; 2 uses
  %47 = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.anw, <8 x float> %broadcast.splat, <8 x float> %strided.vec386)
  %i.anx = fmul <8 x float> %strided.vec379, %strided.vec383
  %i.any = fmul <8 x float> %broadcast.splat, %i.anx
  %i.anz = fadd <8 x float> %strided.vec375, %i.any ; 2 uses
  %i.aoa = shufflevector <8 x float> %i.ant, <8 x float> %i.anw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aob = shufflevector <8 x float> %i.anz, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.aoa, <16 x float> %i.aob, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %i.anm, align 4, !tbaa !179, !alias.scope !907, !noalias !908
  %i.aoc = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.anz, <8 x float> %broadcast.splat, <8 x float> %strided.vec387)
  %48 = shufflevector <8 x float> %46, <8 x float> %47, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aod = shufflevector <8 x float> %i.aoc, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec388 = shufflevector <16 x float> %48, <16 x float> %i.aod, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec388, ptr %i.anq, align 4, !tbaa !179, !alias.scope !914, !noalias !915
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aoe = icmp eq i64 %index.next, %n.vec
  br i1 %i.aoe, label %middle.block, label %vector.body, !llvm.loop !655

middle.block:                                     ; preds = %vector.body
  %i.aof = and i32 %spec.select.i, 7
  %cmp.n = icmp eq i32 %i.aof, 0
  br i1 %cmp.n, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %.preheader.preheader.i.i.i.i.i.i.i.i.i.i, %middle.block
  %indvars.iv.i.i.i.i.i.i.i.i.i119.i.ph = phi i64 [ %i.anh, %.preheader.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.ank, %middle.block ]
  %i.aog = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.aoh = shufflevector <2 x float> %i.aog, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.preheader.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i119.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.i.i120.i, %.preheader.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.i.i119.i.ph, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader ] ; 6 uses
  %i.aoi = getelementptr inbounds [12 x i8], ptr %i.cw, i64 %indvars.iv.i.i.i.i.i.i.i.i.i119.i ; 3 uses
  %i.aoj = getelementptr inbounds [12 x i8], ptr %i.cx, i64 %indvars.iv.i.i.i.i.i.i.i.i.i119.i ; 2 uses
  %i.aok = getelementptr inbounds [12 x i8], ptr %i.dz, i64 %indvars.iv.i.i.i.i.i.i.i.i.i119.i ; 2 uses
  %i.aol = getelementptr inbounds [12 x i8], ptr %i.ct, i64 %indvars.iv.i.i.i.i.i.i.i.i.i119.i ; 2 uses
  %i.aom = getelementptr inbounds [12 x i8], ptr %i.cu, i64 %indvars.iv.i.i.i.i.i.i.i.i.i119.i ; 2 uses
  %i.aon = load <2 x float>, ptr %i.aoi, align 4, !tbaa !179, !alias.scope !907, !noalias !908
  %i.aoo = load <2 x float>, ptr %i.aoj, align 4, !tbaa !179, !alias.scope !909, !noalias !910
  %i.aop = load <2 x float>, ptr %i.aok, align 4, !tbaa !179, !alias.scope !902, !noalias !911
  %i.aoq = fmul <2 x float> %i.aoo, %i.aop
  %i.aor = fmul <2 x float> %i.aoh, %i.aoq
  %i.aos = fadd <2 x float> %i.aon, %i.aor        ; 2 uses
  store <2 x float> %i.aos, ptr %i.aoi, align 4, !tbaa !179, !alias.scope !907, !noalias !908
  %i.aot = load <2 x float>, ptr %i.aol, align 4, !tbaa !179, !alias.scope !912, !noalias !913
  %i.aou = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aos, <2 x float> %i.aoh, <2 x float> %i.aot)
  store <2 x float> %i.aou, ptr %i.aom, align 4, !tbaa !179, !alias.scope !914, !noalias !915
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aoi, i64 8 ; 2 uses
  %i.aow = load float, ptr %i.aov, align 4, !tbaa !179, !alias.scope !907, !noalias !908
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aoj, i64 8
  %i.aoy = load float, ptr %i.aox, align 4, !tbaa !179, !alias.scope !909, !noalias !910
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aok, i64 8
  %i.apa = load float, ptr %i.aoz, align 4, !tbaa !179, !alias.scope !902, !noalias !911
  %i.apb = fmul float %i.aoy, %i.apa
  %i.apc = fmul float %i.cz, %i.apb
  %i.apd = fadd float %i.aow, %i.apc              ; 2 uses
  store float %i.apd, ptr %i.aov, align 4, !tbaa !179, !alias.scope !907, !noalias !908
  %i.ape = getelementptr inbounds nuw i8, ptr %i.aol, i64 8
  %i.apf = load float, ptr %i.ape, align 4, !tbaa !179, !alias.scope !912, !noalias !913
  %i.apg = call float @llvm.fmuladd.f32(float %i.apd, float %i.cz, float %i.apf)
  %i.aph = getelementptr inbounds nuw i8, ptr %i.aom, i64 8
  store float %i.apg, ptr %i.aph, align 4, !tbaa !179, !alias.scope !914, !noalias !915
  %indvars.iv.next.i.i.i.i.i.i.i.i.i120.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i119.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i121.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i120.i, %wide.trip.count.i.i.i.i.i.i.i.i.i118.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i121.i, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i, !llvm.loop !656

.loopexit265:                                     ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.ak
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.body

bb.bj:                                            ; preds = %bb.c
  %i.api = load float, ptr %8, align 4, !tbaa !179 ; 11 uses
  %i.apj = load i64, ptr %9, align 8, !tbaa !67   ; 3 uses
  %i.apk = load ptr, ptr %i.r, align 8, !tbaa !239 ; 2 uses
  %i.apl = load ptr, ptr %10, align 8, !tbaa !63  ; 2 uses
  %i.apm = load ptr, ptr %15, align 8, !tbaa !61  ; 2 uses
  %i.apn = load ptr, ptr %5, align 8, !tbaa !210  ; 4 uses
  %i.apo = load ptr, ptr %i.s, align 8, !tbaa !210 ; 2 uses
  %i.app = load ptr, ptr %i.w, align 8, !tbaa !210 ; 2 uses
  %i.apq = load ptr, ptr %i.x, align 8, !tbaa !210
  %i.apr = load ptr, ptr %i.t, align 8, !tbaa !210 ; 4 uses
  %i.aps = load ptr, ptr %i.u, align 8, !tbaa !210 ; 2 uses
  %i.apt = load ptr, ptr %i.v, align 8, !tbaa !695 ; 2 uses
  %i.apu = load i64, ptr %i.aa, align 8, !tbaa !319
  %i.apv = load ptr, ptr %16, align 8, !tbaa !76  ; 2 uses
  %i.apw = load i8, ptr %17, align 1, !tbaa !70, !range !268, !noundef !269
  %i.apx = trunc nuw i8 %i.apw to i1
  %i.apy = load i32, ptr %i.p, align 4, !tbaa !692
  %i.apz = load i32, ptr %i.ae, align 4, !tbaa !694 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !916)
  call void @llvm.experimental.noalias.scope.decl(metadata !917)
  call void @llvm.experimental.noalias.scope.decl(metadata !918)
  call void @llvm.experimental.noalias.scope.decl(metadata !919)
  %i.aqa = icmp ne i32 %i.apy, 2
  %.not.i.i124 = icmp eq i32 %i.apz, 0
  %or.cond.i125 = or i1 %i.aqa, %.not.i.i124
  br i1 %or.cond.i125, label %_Z11do_per_stepll.exit.i126.thread, label %_Z11do_per_stepll.exit.i126

_Z11do_per_stepll.exit.i126.thread:               ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20, !noalias !920
  store ptr %21, ptr %i.af, align 8, !tbaa !251, !noalias !920
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %21, i8 0, i64 36, i1 false), !noalias !920
  br label %bb.bk

_Z11do_per_stepll.exit.i126:                      ; preds = %bb.bj
  %i.aqb = sext i32 %i.apz to i64                 ; 2 uses
  %i.aqc = add i64 %i.apj, -1
  %i.aqd = add i64 %i.aqc, %i.aqb
  %i.aqe = srem i64 %i.aqd, %i.aqb
  %.fr = freeze i64 %i.aqe
  %i.aqf = icmp eq i64 %.fr, 0                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20, !noalias !920
  store ptr %21, ptr %i.af, align 8, !tbaa !251, !noalias !920
  %i.aqg = sitofp i32 %i.apz to float
  %i.aqh = fmul float %i.api, %i.aqg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %21, i8 0, i64 36, i1 false), !noalias !920
  %spec.select251 = select i1 %i.aqf, float %i.aqh, float 0.000000e+00
  %i.aqi = select i1 %i.aqf, ptr %.sroa.gep45.i, ptr %i.af
  br label %bb.bk

bb.bk:                                            ; preds = %_Z11do_per_stepll.exit.i126, %_Z11do_per_stepll.exit.i126.thread
  %cond.fr.i250 = phi ptr [ %i.af, %_Z11do_per_stepll.exit.i126.thread ], [ %i.aqi, %_Z11do_per_stepll.exit.i126 ] ; 2 uses
  %i.aqj = phi float [ 0.000000e+00, %_Z11do_per_stepll.exit.i126.thread ], [ %spec.select251, %_Z11do_per_stepll.exit.i126 ] ; 6 uses
  br i1 %i.apx, label %bb.bl, label %bb.bx

bb.bl:                                            ; preds = %bb.bk
  %.val37.i = load ptr, ptr %cond.fr.i250, align 8, !noalias !920 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !921)
  call void @llvm.experimental.noalias.scope.decl(metadata !922)
  call void @llvm.experimental.noalias.scope.decl(metadata !923)
  call void @llvm.experimental.noalias.scope.decl(metadata !924)
  call void @llvm.experimental.noalias.scope.decl(metadata !925)
  %i.aqk = icmp slt i32 %i.cm, %spec.select.i
  br i1 %i.aqk, label %.lr.ph.i.i129, label %.loopexit

.lr.ph.i.i129:                                    ; preds = %bb.bl
  %i.aql = icmp eq ptr %i.apn, %i.apo
  %i.aqm = icmp eq ptr %i.apr, %i.aps
  %i.aqn = load float, ptr %.val37.i, align 4, !tbaa !179, !noalias !926
  %i.aqo = getelementptr i8, ptr %.val37.i, i64 4
  %i.aqp = load float, ptr %i.aqo, align 4, !tbaa !179, !noalias !926
  %i.aqq = getelementptr i8, ptr %.val37.i, i64 8
  %i.aqr = load float, ptr %i.aqq, align 4, !tbaa !179, !noalias !926
  %i.aqs = getelementptr i8, ptr %.val37.i, i64 12
  %i.aqt = load float, ptr %i.aqs, align 4, !tbaa !179, !noalias !926
  %i.aqu = getelementptr i8, ptr %.val37.i, i64 16
  %i.aqv = load float, ptr %i.aqu, align 4, !tbaa !179, !noalias !926
  %i.aqw = getelementptr i8, ptr %.val37.i, i64 20
  %i.aqx = load float, ptr %i.aqw, align 4, !tbaa !179, !noalias !926
  %i.aqy = getelementptr i8, ptr %.val37.i, i64 24
  %i.aqz = load float, ptr %i.aqy, align 4, !tbaa !179, !noalias !926
  %i.ara = getelementptr i8, ptr %.val37.i, i64 28
  %i.arb = load float, ptr %i.ara, align 4, !tbaa !179, !noalias !926
  %i.arc = getelementptr i8, ptr %.val37.i, i64 32
  %i.ard = load float, ptr %i.arc, align 4, !tbaa !179, !noalias !926
  %i.are = sext i32 %i.cm to i64
  %wide.trip.count.i.i = sext i32 %spec.select.i to i64
  br label %bb.bm

bb.bm:                                            ; preds = %.split14.us.i.i, %.lr.ph.i.i129
  %indvars.iv.i.i130 = phi i64 [ %i.are, %.lr.ph.i.i129 ], [ %indvars.iv.next.i.i131, %.split14.us.i.i ] ; 9 uses
  %i.arf = getelementptr inbounds [4 x i8], ptr %i.apl, i64 %indvars.iv.i.i130
  %i.arg = load float, ptr %i.arf, align 4, !tbaa !179, !noalias !926 ; 5 uses
  %i.arh = fcmp olt float %i.arg, 0.000000e+00
  br i1 %i.arh, label %cdce.call, label %cdce.end.i.i, !prof !927

cdce.call:                                        ; preds = %bb.bm
  %i.ari = call noundef float @sqrtf(float noundef %i.arg) #20, !noalias !926 ; 0 uses
  br label %cdce.end.i.i

cdce.end.i.i:                                     ; preds = %cdce.call, %bb.bm
  br i1 %i.aql, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %cdce.end.i.i
  %i.arj = getelementptr inbounds [2 x i8], ptr %i.apn, i64 %indvars.iv.i.i130
  %i.ark = load i16, ptr %i.arj, align 2, !tbaa !241, !noalias !926
  %i.arl = zext i16 %i.ark to i64
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %cdce.end.i.i
  %i.arm = phi i64 [ %i.arl, %bb.bn ], [ 0, %cdce.end.i.i ]
  br i1 %i.aqm, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.arn = getelementptr inbounds [2 x i8], ptr %i.apr, i64 %indvars.iv.i.i130
  %i.aro = load i16, ptr %i.arn, align 2, !tbaa !241, !noalias !926
  %i.arp = zext i16 %i.aro to i64
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.arq = phi i64 [ %i.arp, %bb.bp ], [ 0, %bb.bo ]
  %i.arr = getelementptr inbounds [12 x i8], ptr %i.cw, i64 %indvars.iv.i.i130 ; 5 uses
  %i.ars = load float, ptr %i.arr, align 4, !tbaa !179, !alias.scope !928, !noalias !929 ; 4 uses
  %i.art = call float @llvm.fmuladd.f32(float %i.aqn, float %i.ars, float 0.000000e+00)
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arr, i64 4 ; 2 uses
  %i.arv = load float, ptr %i.aru, align 4, !tbaa !179, !alias.scope !928, !noalias !929 ; 4 uses
  %i.arw = call float @llvm.fmuladd.f32(float %i.aqp, float %i.arv, float %i.art)
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arr, i64 8 ; 3 uses
  %i.ary = load float, ptr %i.arx, align 4, !tbaa !179, !alias.scope !928, !noalias !929 ; 4 uses
  %i.arz = call float @llvm.fmuladd.f32(float %i.aqr, float %i.ary, float %i.arw)
  %i.asa = call float @llvm.fmuladd.f32(float %i.aqt, float %i.ars, float 0.000000e+00)
  %i.asb = call float @llvm.fmuladd.f32(float %i.aqv, float %i.arv, float %i.asa)
  %i.asc = call float @llvm.fmuladd.f32(float %i.aqx, float %i.ary, float %i.asb)
  %i.asd = call float @llvm.fmuladd.f32(float %i.aqz, float %i.ars, float 0.000000e+00)
end_hunk_0
begin_hunk_1_@_ZN3gmx6Update4Impl28update_for_constraint_virialERK10t_inputrecibNS_8ArrayRefIKfEENS5_IKNS_11BasicVectorIfEEEERK7t_stateRKNS_19ArrayRefWithPaddingISA_EERK14gmx_ekindata_t.omp_outlined:bb.a
  %i.ay = sext i32 %spec.select.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.ax, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 6 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv.i.i
  %.val.i.i = load <16 x float>, ptr %i.az, align 64, !tbaa !177, !noalias !1012 ; 3 uses
  %i.ba = shufflevector <16 x float> %.val.i.i, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5>
  %i.bb = shufflevector <16 x float> %.val.i.i, <16 x float> poison, <16 x i32> <i32 5, i32 5, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 8, i32 8, i32 8, i32 9, i32 9, i32 9, i32 10, i32 10>
  %i.bc = shufflevector <16 x float> %.val.i.i, <16 x float> poison, <16 x i32> <i32 10, i32 11, i32 11, i32 11, i32 12, i32 12, i32 12, i32 13, i32 13, i32 13, i32 14, i32 14, i32 14, i32 15, i32 15, i32 15>
  %i.bd = getelementptr inbounds [12 x i8], ptr %i.aj, i64 %indvars.iv.i.i ; 3 uses
  %.val10.i.i.i = load <16 x float>, ptr %i.bd, align 64, !tbaa !177, !alias.scope !1013, !noalias !1014
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %.val9.i.i.i = load <16 x float>, ptr %i.be, align 64, !tbaa !177, !alias.scope !1013, !noalias !1014
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 128
  %.val.i.i.i = load <16 x float>, ptr %i.bf, align 64, !tbaa !177, !alias.scope !1013, !noalias !1014
  %i.bg = getelementptr inbounds [12 x i8], ptr %i.ak, i64 %indvars.iv.i.i ; 3 uses
  %.val10.i52.i.i = load <16 x float>, ptr %i.bg, align 64, !tbaa !177, !alias.scope !1015, !noalias !1016
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %.val9.i53.i.i = load <16 x float>, ptr %i.bh, align 64, !tbaa !177, !alias.scope !1015, !noalias !1016
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  %.val.i54.i.i = load <16 x float>, ptr %i.bi, align 64, !tbaa !177, !alias.scope !1015, !noalias !1016
  %i.bj = fmul <16 x float> %i.ba, %.val10.i52.i.i
  %i.bk = fmul <16 x float> %i.av, %.val10.i.i.i
  %i.bl = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bj, <16 x float> %i.ar, <16 x float> %i.bk)
  %i.bm = fmul <16 x float> %i.bb, %.val9.i53.i.i
  %i.bn = fmul <16 x float> %i.av, %.val9.i.i.i
  %i.bo = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bm, <16 x float> %i.ar, <16 x float> %i.bn)
  %i.bp = fmul <16 x float> %i.bc, %.val.i54.i.i
  %i.bq = fmul <16 x float> %i.av, %.val.i.i.i
  %i.br = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bp, <16 x float> %i.ar, <16 x float> %i.bq)
  %i.bs = getelementptr inbounds [12 x i8], ptr %i.ah, i64 %indvars.iv.i.i ; 3 uses
  %.val10.i55.i.i = load <16 x float>, ptr %i.bs, align 64, !tbaa !177, !alias.scope !1017, !noalias !1018
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %.val9.i56.i.i = load <16 x float>, ptr %i.bt, align 64, !tbaa !177, !alias.scope !1017, !noalias !1018
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 128
  %.val.i57.i.i = load <16 x float>, ptr %i.bu, align 64, !tbaa !177, !alias.scope !1017, !noalias !1018
  %i.bv = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bl, <16 x float> %i.ar, <16 x float> %.val10.i55.i.i)
  %i.bw = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bo, <16 x float> %i.ar, <16 x float> %.val9.i56.i.i)
  %i.bx = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.br, <16 x float> %i.ar, <16 x float> %.val.i57.i.i)
  %i.by = getelementptr inbounds [12 x i8], ptr %i.ai, i64 %indvars.iv.i.i ; 3 uses
  store <16 x float> %i.bv, ptr %i.by, align 64, !tbaa !177, !alias.scope !1019, !noalias !1020
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  store <16 x float> %i.bw, ptr %i.bz, align 64, !tbaa !177, !alias.scope !1019, !noalias !1020
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 128
  store <16 x float> %i.bx, ptr %i.ca, align 64, !tbaa !177, !alias.scope !1019, !noalias !1020
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 16 ; 2 uses
  %i.cb = icmp slt i64 %indvars.iv.next.i.i, %i.ay
  br i1 %i.cb, label %.lr.ph.i.i, label %_ZL31doUpdateMDDoNotUpdateVelocitiesiifPKN3gmx11BasicVectorIfEEPS1_S3_S3_bNS_8ArrayRefIKfEENS5_IS2_EERK14gmx_ekindata_t.exit, !llvm.loop !995

bb.e:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  call void @llvm.experimental.noalias.scope.decl(metadata !1024)
  call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  %i.cc = getelementptr inbounds nuw i8, ptr %.val39, i64 116
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !353, !noalias !1026 ; 3 uses
  %i.ce = icmp slt i32 %i.ac, %spec.select.i
  br i1 %i.ce, label %.preheader.preheader.i.i, label %_ZL31doUpdateMDDoNotUpdateVelocitiesiifPKN3gmx11BasicVectorIfEEPS1_S3_S3_bNS_8ArrayRefIKfEENS5_IS2_EERK14gmx_ekindata_t.exit

.preheader.preheader.i.i:                         ; preds = %bb.e
  %i.cf = sext i32 %i.ac to i64                   ; 4 uses
  %wide.trip.count.i.i = sext i32 %spec.select.i to i64 ; 3 uses
  %i.cg = sub nsw i64 %wide.trip.count.i.i, %i.cf ; 2 uses
  %min.iters.check = icmp ult i64 %i.cg, 8
  br i1 %min.iters.check, label %.preheader.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader.i.i
  %i.ch = and i64 %wide.trip.count.i.i, 7
  %n.vec = sub nuw nsw i64 %i.cg, %i.ch           ; 2 uses
  %i.ci = add nsw i64 %n.vec, %i.cf
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.al, i64 0 ; 2 uses
  %broadcast.splatinsert55 = insertelement <8 x float> poison, float %i.cd, i64 0
  %i.cj = shufflevector <8 x float> %broadcast.splatinsert55, <8 x float> poison, <24 x i32> zeroinitializer
  %i.ck = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <24 x i32> zeroinitializer
  %i.cl = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <24 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cm = add i64 %index, %i.cf                   ; 5 uses
  %i.cn = getelementptr inbounds [12 x i8], ptr %i.aj, i64 %i.cm
  %i.co = getelementptr inbounds [12 x i8], ptr %i.ak, i64 %i.cm
  %i.cp = getelementptr inbounds [12 x i8], ptr %i.ap, i64 %i.cm
  %i.cq = getelementptr inbounds [12 x i8], ptr %i.ah, i64 %i.cm
  %i.cr = getelementptr inbounds [12 x i8], ptr %i.ai, i64 %i.cm
  %wide.vec = load <24 x float>, ptr %i.cn, align 4, !tbaa !179, !alias.scope !1027, !noalias !1028
  %wide.vec59 = load <24 x float>, ptr %i.co, align 4, !tbaa !179, !alias.scope !1029, !noalias !1030
  %wide.vec63 = load <24 x float>, ptr %i.cp, align 4, !tbaa !179, !alias.scope !1021, !noalias !1031
  %wide.vec67 = load <24 x float>, ptr %i.cq, align 4, !tbaa !179, !alias.scope !1032, !noalias !1033
  %i.cs = fmul <24 x float> %wide.vec59, %wide.vec63
  %i.ct = fmul <24 x float> %i.ck, %i.cs
  %i.cu = call <24 x float> @llvm.fmuladd.v24f32(<24 x float> %i.cj, <24 x float> %wide.vec, <24 x float> %i.ct)
  %interleaved.vec = call <24 x float> @llvm.fmuladd.v24f32(<24 x float> %i.cu, <24 x float> %i.cl, <24 x float> %wide.vec67)
  store <24 x float> %interleaved.vec, ptr %i.cr, align 4, !tbaa !179, !alias.scope !1034, !noalias !1035
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !1002

middle.block:                                     ; preds = %vector.body
  %i.cw = and i32 %spec.select.i, 7
  %cmp.n = icmp eq i32 %i.cw, 0
  br i1 %cmp.n, label %_ZL31doUpdateMDDoNotUpdateVelocitiesiifPKN3gmx11BasicVectorIfEEPS1_S3_S3_bNS_8ArrayRefIKfEENS5_IS2_EERK14gmx_ekindata_t.exit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.preheader.preheader.i.i, %middle.block
  %indvars.iv.i16.i.ph = phi i64 [ %i.cf, %.preheader.preheader.i.i ], [ %i.ci, %middle.block ]
  %i.cx = insertelement <2 x float> poison, float %i.al, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cz = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %indvars.iv.i16.i = phi i64 [ %indvars.iv.next.i17.i, %.preheader.i.i ], [ %indvars.iv.i16.i.ph, %.preheader.i.i.preheader ] ; 6 uses
  %i.db = getelementptr inbounds [12 x i8], ptr %i.aj, i64 %indvars.iv.i16.i ; 2 uses
  %i.dc = getelementptr inbounds [12 x i8], ptr %i.ak, i64 %indvars.iv.i16.i ; 2 uses
  %i.dd = getelementptr inbounds [12 x i8], ptr %i.ap, i64 %indvars.iv.i16.i ; 2 uses
  %i.de = getelementptr inbounds [12 x i8], ptr %i.ah, i64 %indvars.iv.i16.i ; 2 uses
  %i.df = getelementptr inbounds [12 x i8], ptr %i.ai, i64 %indvars.iv.i16.i ; 2 uses
  %i.dg = load <2 x float>, ptr %i.db, align 4, !tbaa !179, !alias.scope !1027, !noalias !1028
  %i.dh = load <2 x float>, ptr %i.dc, align 4, !tbaa !179, !alias.scope !1029, !noalias !1030
  %i.di = load <2 x float>, ptr %i.dd, align 4, !tbaa !179, !alias.scope !1021, !noalias !1031
  %i.dj = fmul <2 x float> %i.dh, %i.di
  %i.dk = fmul <2 x float> %i.cy, %i.dj
  %i.dl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.da, <2 x float> %i.dg, <2 x float> %i.dk)
  %i.dm = load <2 x float>, ptr %i.de, align 4, !tbaa !179, !alias.scope !1032, !noalias !1033
  %i.dn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.cy, <2 x float> %i.dm)
  store <2 x float> %i.dn, ptr %i.df, align 4, !tbaa !179, !alias.scope !1034, !noalias !1035
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dp = load float, ptr %i.do, align 4, !tbaa !179, !alias.scope !1027, !noalias !1028
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !179, !alias.scope !1029, !noalias !1030
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !179, !alias.scope !1021, !noalias !1031
  %i.du = fmul float %i.dr, %i.dt
  %i.dv = fmul float %i.al, %i.du
  %i.dw = call float @llvm.fmuladd.f32(float %i.cd, float %i.dp, float %i.dv)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !179, !alias.scope !1032, !noalias !1033
  %i.dz = call float @llvm.fmuladd.f32(float %i.dw, float %i.al, float %i.dy)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store float %i.dz, ptr %i.ea, align 4, !tbaa !179, !alias.scope !1034, !noalias !1035
  %indvars.iv.next.i17.i = add nsw i64 %indvars.iv.i16.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i17.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZL31doUpdateMDDoNotUpdateVelocitiesiifPKN3gmx11BasicVectorIfEEPS1_S3_S3_bNS_8ArrayRefIKfEENS5_IS2_EERK14gmx_ekindata_t.exit, label %.preheader.i.i, !llvm.loop !1003

_ZL31doUpdateMDDoNotUpdateVelocitiesiifPKN3gmx11BasicVectorIfEEPS1_S3_S3_bNS_8ArrayRefIKfEENS5_IS2_EERK14gmx_ekindata_t.exit: ; preds = %.lr.ph.i.i, %.preheader.i.i, %middle.block, %bb.e, %bb.d
  %exitcond.not = icmp eq i32 %.047, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %_ZL31doUpdateMDDoNotUpdateVelocitiesiifPKN3gmx11BasicVectorIfEEPS1_S3_S3_bNS_8ArrayRefIKfEENS5_IS2_EERK14gmx_ekindata_t.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, <4 x i1>, <4 x double>) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <13 x float> @llvm.masked.load.v13f32.p0(ptr captures(none), <13 x i1>, <13 x float>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <24 x float> @llvm.fmuladd.v24f32(<24 x float>, <24 x float>, <24 x float>) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { cold noreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { nounwind }
attributes #21 = { nounwind memory(none) }
attributes #22 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #24 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #25 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { builtin nounwind }
attributes #32 = { noreturn nounwind }
attributes #33 = { noreturn }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !242}
!1 = distinct !{!1, !242}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTSN3gmx6Update4ImplE", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !11, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!15, !14, i64 0}
!17 = !{!"p1 float", !11, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!19 = !{!18, !17, i64 0}
!20 = !{!18, !17, i64 16}
!21 = !{!"p1 long", !11, i64 0}
!22 = !{!"_ZTSSt18_Bit_iterator_base", !21, i64 0, !8, i64 8}
!23 = !{!22, !21, i64 0}
!24 = !{!"_ZTSSt13_Bit_iterator", !22, i64 0}
!25 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !24, i64 0, !24, i64 16, !21, i64 32}
!26 = !{!25, !21, i64 32}
!27 = !{!"p1 _ZTS14gmx_sd_sigma_t", !11, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseI14gmx_sd_sigma_tSaIS0_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!29 = !{!28, !27, i64 0}
!30 = !{!28, !27, i64 16}
!31 = !{!"p1 _ZTS14gmx_sd_const_t", !11, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseI14gmx_sd_const_tSaIS0_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!32, !31, i64 0}
!34 = !{!32, !31, i64 16}
!35 = !{!"p1 short", !11, i64 0}
!36 = !{!"_ZTSN3gmx12ArrayRefIterIKtEE", !35, i64 0}
!37 = !{!"_ZTSN3gmx8ArrayRefIKtEE", !36, i64 0, !36, i64 8}
!38 = !{!"_ZTS16AccelerationType", !7, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !18, i64 0}
!40 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !39, i64 0}
!41 = !{!"_ZTSSt6vectorIfSaIfEE", !40, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseI14gmx_sd_const_tSaIS0_EE12_Vector_implE", !32, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseI14gmx_sd_const_tSaIS0_EE", !42, i64 0}
!44 = !{!"_ZTSSt6vectorI14gmx_sd_const_tSaIS0_EE", !43, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseI14gmx_sd_sigma_tSaIS0_EE12_Vector_implE", !28, i64 0}
!46 = !{!"_ZTSSt12_Vector_baseI14gmx_sd_sigma_tSaIS0_EE", !45, i64 0}
!47 = !{!"_ZTSSt6vectorI14gmx_sd_sigma_tSaIS0_EE", !46, i64 0}
!48 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !25, i64 0}
!49 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !48, i64 0}
!50 = !{!"_ZTSSt6vectorIbSaIbEE", !49, i64 0}
!51 = !{!"_ZTS12gmx_stochd_t", !41, i64 0, !44, i64 24, !47, i64 48, !50, i64 72, !41, i64 112}
!52 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE12_Vector_implE", !15, i64 0}
!53 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE", !52, i64 0}
!54 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE", !53, i64 0}
!55 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIfEESt6vectorIS3_NS1_9AllocatorIS3_NS1_23AlignedAllocationPolicyEEEEEE", !14, i64 0}
!56 = !{!"_ZTSN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_23AlignedAllocationPolicyEEEEE", !54, i64 0, !55, i64 24}
!57 = !{!"p1 _ZTSN3gmx14BoxDeformationE", !11, i64 0}
!58 = !{!"_ZTSN3gmx6Update4ImplE", !37, i64 0, !37, i64 16, !37, i64 32, !38, i64 48, !51, i64 56, !56, i64 192, !57, i64 224}
!59 = !{!58, !57, i64 224}
!60 = !{!"_ZTSN3gmx12ArrayRefIterIK12ParticleTypeEE", !11, i64 0}
!61 = !{!60, !11, i64 0}
!62 = !{!"_ZTSN3gmx12ArrayRefIterIKfEE", !17, i64 0}
!63 = !{!62, !17, i64 0}
!64 = !{!"_ZTSN3gmx12ArrayRefIterIKNS_11BasicVectorIfEEEE", !14, i64 0}
!65 = !{!64, !14, i64 0}
!66 = !{!"long", !7, i64 0}
!67 = !{!66, !66, i64 0}
!68 = !{!8, !8, i64 0}
!69 = !{!"bool", !7, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!"p1 _ZTS7t_state", !11, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!"p1 _ZTS14gmx_ekindata_t", !11, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!"p1 _ZTS12gmx_domdec_t", !11, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!"_ZTS20IntegrationAlgorithm", !7, i64 0}
!78 = !{!"_ZTS12CutoffScheme", !7, i64 0}
!79 = !{!"_ZTS19ComRemovalAlgorithm", !7, i64 0}
!80 = !{!"double", !7, i64 0}
!81 = !{!"p1 _ZTSN3gmx8MtsLevelE", !11, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE17_Vector_impl_dataE", !81, i64 0, !81, i64 8, !81, i64 16}
!83 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE12_Vector_implE", !82, i64 0}
!84 = !{!"_ZTSSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE", !83, i64 0}
!85 = !{!"_ZTSSt6vectorIN3gmx8MtsLevelESaIS1_EE", !84, i64 0}
!86 = !{!"float", !7, i64 0}
!87 = !{!"_ZTS13EwaldGeometry", !7, i64 0}
!88 = !{!"_ZTS12LongRangeVdW", !7, i64 0}
!89 = !{!"_ZTS7PbcType", !7, i64 0}
!90 = !{!"_ZTS26EnsembleTemperatureSetting", !7, i64 0}
!91 = !{!"_ZTS19TemperatureCoupling", !7, i64 0}
!92 = !{!"_ZTS16PressureCoupling", !7, i64 0}
!93 = !{!"_ZTS20PressureCouplingType", !7, i64 0}
!94 = !{!"_ZTS15RefCoordScaling", !7, i64 0}
!95 = !{!"_ZTS23PressureCouplingOptions", !92, i64 0, !93, i64 4, !8, i64 8, !86, i64 12, !7, i64 16, !7, i64 52, !94, i64 88}
!96 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!97 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !96, i64 0}
!98 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !97, i64 0}
!99 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !98, i64 0}
!100 = !{!"_ZTS22CoulombInteractionType", !7, i64 0}
!101 = !{!"_ZTS20InteractionModifiers", !7, i64 0}
!102 = !{!"_ZTS15VanDerWaalsType", !7, i64 0}
!103 = !{!"_ZTS24DispersionCorrectionType", !7, i64 0}
!104 = !{!"_ZTS26FreeEnergyPerturbationType", !7, i64 0}
!105 = !{!"p1 _ZTS8t_lambda", !11, i64 0}
!106 = !{!"_ZTSSt10_Head_baseILm0EP8t_lambdaLb0EE", !105, i64 0}
!107 = !{!"_ZTSSt11_Tuple_implILm0EJP8t_lambdaSt14default_deleteIS0_EEE", !106, i64 0}
!108 = !{!"_ZTSSt5tupleIJP8t_lambdaSt14default_deleteIS0_EEE", !107, i64 0}
!109 = !{!"_ZTSSt15__uniq_ptr_implI8t_lambdaSt14default_deleteIS0_EE", !108, i64 0}
!110 = !{!"_ZTSSt15__uniq_ptr_dataI8t_lambdaSt14default_deleteIS0_ELb1ELb1EE", !109, i64 0}
!111 = !{!"_ZTSSt10unique_ptrI8t_lambdaSt14default_deleteIS0_EE", !110, i64 0}
!112 = !{!"p1 _ZTS9t_simtemp", !11, i64 0}
!113 = !{!"_ZTSSt10_Head_baseILm0EP9t_simtempLb0EE", !112, i64 0}
!114 = !{!"_ZTSSt11_Tuple_implILm0EJP9t_simtempSt14default_deleteIS0_EEE", !113, i64 0}
!115 = !{!"_ZTSSt5tupleIJP9t_simtempSt14default_deleteIS0_EEE", !114, i64 0}
!116 = !{!"_ZTSSt15__uniq_ptr_implI9t_simtempSt14default_deleteIS0_EE", !115, i64 0}
!117 = !{!"_ZTSSt15__uniq_ptr_dataI9t_simtempSt14default_deleteIS0_ELb1ELb1EE", !116, i64 0}
!118 = !{!"_ZTSSt10unique_ptrI9t_simtempSt14default_deleteIS0_EE", !117, i64 0}
!119 = !{!"p1 _ZTS10t_expanded", !11, i64 0}
!120 = !{!"_ZTSSt10_Head_baseILm0EP10t_expandedLb0EE", !119, i64 0}
!121 = !{!"_ZTSSt11_Tuple_implILm0EJP10t_expandedSt14default_deleteIS0_EEE", !120, i64 0}
!122 = !{!"_ZTSSt5tupleIJP10t_expandedSt14default_deleteIS0_EEE", !121, i64 0}
!123 = !{!"_ZTSSt15__uniq_ptr_implI10t_expandedSt14default_deleteIS0_EE", !122, i64 0}
!124 = !{!"_ZTSSt15__uniq_ptr_dataI10t_expandedSt14default_deleteIS0_ELb1ELb1EE", !123, i64 0}
!125 = !{!"_ZTSSt10unique_ptrI10t_expandedSt14default_deleteIS0_EE", !124, i64 0}
!126 = !{!"_ZTS27DistanceRestraintRefinement", !7, i64 0}
!127 = !{!"_ZTS26DistanceRestraintWeighting", !7, i64 0}
!128 = !{!"_ZTS19ConstraintAlgorithm", !7, i64 0}
!129 = !{!"_ZTS8WallType", !7, i64 0}
!130 = !{!"p1 _ZTS13pull_params_t", !11, i64 0}
!131 = !{!"_ZTSSt10_Head_baseILm0EP13pull_params_tLb0EE", !130, i64 0}
!132 = !{!"_ZTSSt11_Tuple_implILm0EJP13pull_params_tSt14default_deleteIS0_EEE", !131, i64 0}
!133 = !{!"_ZTSSt5tupleIJP13pull_params_tSt14default_deleteIS0_EEE", !132, i64 0}
!134 = !{!"_ZTSSt15__uniq_ptr_implI13pull_params_tSt14default_deleteIS0_EE", !133, i64 0}
!135 = !{!"_ZTSSt15__uniq_ptr_dataI13pull_params_tSt14default_deleteIS0_ELb1ELb1EE", !134, i64 0}
!136 = !{!"_ZTSSt10unique_ptrI13pull_params_tSt14default_deleteIS0_EE", !135, i64 0}
!137 = !{!"p1 _ZTSN3gmx9AwhParamsE", !11, i64 0}
!138 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx9AwhParamsELb0EE", !137, i64 0}
!139 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx9AwhParamsESt14default_deleteIS1_EEE", !138, i64 0}
!140 = !{!"_ZTSSt5tupleIJPN3gmx9AwhParamsESt14default_deleteIS1_EEE", !139, i64 0}
!141 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx9AwhParamsESt14default_deleteIS1_EE", !140, i64 0}
!142 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx9AwhParamsESt14default_deleteIS1_ELb1ELb1EE", !141, i64 0}
!143 = !{!"_ZTSSt10unique_ptrIN3gmx9AwhParamsESt14default_deleteIS1_EE", !142, i64 0}
!144 = !{!"p1 _ZTS5t_rot", !11, i64 0}
!145 = !{!"_ZTSSt10_Head_baseILm0EP5t_rotLb0EE", !144, i64 0}
!146 = !{!"_ZTSSt11_Tuple_implILm0EJP5t_rotSt14default_deleteIS0_EEE", !145, i64 0}
!147 = !{!"_ZTSSt5tupleIJP5t_rotSt14default_deleteIS0_EEE", !146, i64 0}
!148 = !{!"_ZTSSt15__uniq_ptr_implI5t_rotSt14default_deleteIS0_EE", !147, i64 0}
!149 = !{!"_ZTSSt15__uniq_ptr_dataI5t_rotSt14default_deleteIS0_ELb1ELb1EE", !148, i64 0}
!150 = !{!"_ZTSSt10unique_ptrI5t_rotSt14default_deleteIS0_EE", !149, i64 0}
!151 = !{!"_ZTS8SwapType", !7, i64 0}
!152 = !{!"p1 _ZTS12t_swapcoords", !11, i64 0}
!153 = !{!"_ZTSSt10_Head_baseILm0EP12t_swapcoordsLb0EE", !152, i64 0}
!154 = !{!"_ZTSSt11_Tuple_implILm0EJP12t_swapcoordsSt14default_deleteIS0_EEE", !153, i64 0}
!155 = !{!"_ZTSSt5tupleIJP12t_swapcoordsSt14default_deleteIS0_EEE", !154, i64 0}
!156 = !{!"_ZTSSt15__uniq_ptr_implI12t_swapcoordsSt14default_deleteIS0_EE", !155, i64 0}
!157 = !{!"_ZTSSt15__uniq_ptr_dataI12t_swapcoordsSt14default_deleteIS0_ELb1ELb1EE", !156, i64 0}
!158 = !{!"_ZTSSt10unique_ptrI12t_swapcoordsSt14default_deleteIS0_EE", !157, i64 0}
end_hunk_1
