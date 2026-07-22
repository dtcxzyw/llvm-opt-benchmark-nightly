inline.NumInlined: 10069
inline.NumDeleted: 2207
loop-unroll.NumCompletelyUnrolled: 129
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 143
begin_hunk_0_@_ZN5arrow17DictionaryUnifier17UnifyChunkedArrayERKSt10shared_ptrINS_12ChunkedArrayEEPNS_10MemoryPoolE:bb.a
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fx = add nsw i32 %i.fo, -1
  store i32 %i.fx, ptr %i.fl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.ax
  %i.fy = atomicrmw volatile add ptr %i.fl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.fo, %bb.ay ], [ %i.fy, %bb.az ]
  %i.fz = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.fz, label %bb.ba, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i, !prof !98

bb.ba:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fk) #25
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i: ; preds = %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.aw, %.lr.ph.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %i.ga, %i.fi
  br i1 %.not.i.i.i62, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !908

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5ArrayEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !888
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gb = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.fh, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gb, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i
  %i.gc = load ptr, ptr %i.di, align 8, !tbaa !900
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = ptrtoint ptr %i.gb to i64
  %i.gf = sub i64 %i.gd, %i.ge
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.gf) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RSaIT0_E.exit.i, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEEC2IRKS3_vEEOT_.exit40

bb.bc:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i42, %bb.ah
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bd:                                            ; preds = %bb.ai
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.be:                                            ; preds = %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow9ArrayDataEESt6vectorIS5_SaIS5_EEEENS1_IPS2_INS3_5ArrayEES7_ISC_SaISC_EEEEZNS3_17DictionaryUnifier17UnifyChunkedArrayERKS2_INS3_12ChunkedArrayEEPNS3_10MemoryPoolEE3$_1ET0_T_SQ_SP_T1_.exit"
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.be, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, %bb.bd
  %.pn = phi { ptr, i32 } [ %i.gh, %bb.bd ], [ %i.gi, %bb.be ], [ %i.fe, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #25
  br label %bb.bf

bb.bf:                                            ; preds = %.body, %bb.bc
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.gg, %bb.bc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.gj = load ptr, ptr %5, align 8, !tbaa !140   ; 2 uses
  %.not.i.i63 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i63, label %_ZN5arrow6ResultIbED2Ev.exit, label %bb.bg, !prof !97

bb.bg:                                            ; preds = %bb.bf
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 1
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !143, !range !129, !noundef !130
  %i.gm = trunc nuw i8 %i.gl to i1
  br i1 %i.gm, label %_ZN5arrow6ResultIbED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(9) %5) #25
  br label %_ZN5arrow6ResultIbED2Ev.exit

_ZN5arrow6ResultIbED2Ev.exit:                     ; preds = %bb.bf, %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.br

_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEEC2IRKS3_vEEOT_.exit40: ; preds = %bb.af, %bb.ae, %bb.ac, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, %bb.z
  %i.gn = load ptr, ptr %5, align 8, !tbaa !140   ; 2 uses
  %.not.i.i64 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i64, label %_ZN5arrow6ResultIbED2Ev.exit65, label %bb.bi, !prof !97

bb.bi:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEEC2IRKS3_vEEOT_.exit40
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 1
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !143, !range !129, !noundef !130
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %_ZN5arrow6ResultIbED2Ev.exit65, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(9) %5) #25
  br label %_ZN5arrow6ResultIbED2Ev.exit65

_ZN5arrow6ResultIbED2Ev.exit65:                   ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEEC2IRKS3_vEEOT_.exit40, %bb.bi, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.gr = load ptr, ptr %4, align 8, !tbaa !889   ; 3 uses
  %i.gs = load ptr, ptr %i.z, align 8, !tbaa !891 ; 2 uses
  %.not4.i.i.i66 = icmp eq ptr %i.gr, %i.gs
  br i1 %.not4.i.i.i66, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i67

.lr.ph.i.i.i67:                                   ; preds = %_ZN5arrow6ResultIbED2Ev.exit65, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.05.i.i.i68 = phi ptr [ %i.hk, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i ], [ %i.gr, %_ZN5arrow6ResultIbED2Ev.exit65 ] ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.05.i.i.i68, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !112 ; 8 uses
  %.not.i.i.i.i.i.i.i69 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i.i.i.i.i69, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i.i.i67
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 4 uses
  %i.gw = load atomic i64, ptr %i.gv acquire, align 8 ; 2 uses
  %i.gx = icmp eq i64 %i.gw, 4294967297
  %i.gy = trunc i64 %i.gw to i32                  ; 2 uses
  br i1 %i.gx, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  store i32 0, ptr %i.gv, align 8, !tbaa !108
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 12
  store i32 0, ptr %i.gz, align 4, !tbaa !111
  %i.ha = load ptr, ptr %i.gu, align 8, !tbaa !87
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #25, !inline_history !909
  %i.hd = load ptr, ptr %i.gu, align 8, !tbaa !87
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 24
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #25, !inline_history !909
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

bb.bm:                                            ; preds = %bb.bk
  %i.hg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i.i.i.i70 = icmp eq i8 %i.hg, 0
  br i1 %.not.i.i.i.i.i.i.i.i70, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hh = add nsw i32 %i.gy, -1
  store i32 %i.hh, ptr %i.gv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i71

bb.bo:                                            ; preds = %bb.bm
  %i.hi = atomicrmw volatile add ptr %i.gv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i71

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i71: ; preds = %bb.bo, %bb.bn
  %.0.i.i.i.i.i.i.i.i.i72 = phi i32 [ %i.gy, %bb.bn ], [ %i.hi, %bb.bo ]
  %i.hj = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i72, 1
  br i1 %i.hj, label %bb.bp, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, !prof !98

bb.bp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i71
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gu) #25
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i: ; preds = %bb.bp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i71, %bb.bl, %.lr.ph.i.i.i67
  %i.hk = getelementptr inbounds nuw i8, ptr %.05.i.i.i68, i64 16 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.hk, %i.gs
  br i1 %.not.i.i.i73, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i67, !llvm.loop !910

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.pr.i74 = load ptr, ptr %4, align 8, !tbaa !889
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZN5arrow6ResultIbED2Ev.exit65
  %i.hl = phi ptr [ %.pr.i74, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.gr, %_ZN5arrow6ResultIbED2Ev.exit65 ] ; 3 uses
  %.not.i.i1.i75 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i1.i75, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, label %bb.bq

bb.bq:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i
  %i.hm = load ptr, ptr %i.aa, align 8, !tbaa !890
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = ptrtoint ptr %i.hl to i64
  %i.hp = sub i64 %i.hn, %i.ho
  call void @_ZdlPvm(ptr noundef nonnull %i.hl, i64 noundef %i.hp) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEEC2IRKS3_vEEOT_.exit

bb.br:                                            ; preds = %bb.aa, %_ZN5arrow6ResultIbED2Ev.exit
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ch, %bb.aa ], [ %.pn.pn, %_ZN5arrow6ResultIbED2Ev.exit ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn.pn.pn.pn.pn

_ZN5arrow6ResultISt10shared_ptrINS_12ChunkedArrayEEEC2IRKS3_vEEOT_.exit: ; preds = %bb.e, %bb.d, %bb.b, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_116RecursiveUnifier5UnifyESt10shared_ptrINS_8DataTypeEEPSt6vectorIS2_INS_9ArrayDataEESaIS7_EE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.10", align 8 ; 10 uses
  %5 = alloca %"class.std::vector.13", align 8    ; 16 uses
  %6 = alloca %"class.arrow::Result.88", align 8  ; 9 uses
  %7 = alloca %"class.std::shared_ptr.10", align 16 ; 4 uses
  %8 = alloca %"class.arrow::Result.56", align 8  ; 19 uses
  %9 = alloca %"class.std::shared_ptr.10", align 16 ; 4 uses
  %10 = alloca %"class.std::vector", align 8      ; 19 uses
  %11 = alloca %"class.arrow::Status", align 8    ; 9 uses
  %12 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %13 = alloca %"class.std::shared_ptr.7", align 8 ; 7 uses
  %14 = alloca %"class.std::shared_ptr.7", align 8 ; 10 uses
  %15 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %16 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %17 = alloca %"class.arrow::Result.46", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.a = load ptr, ptr %2, align 8, !tbaa !48     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !51
  %i.d = icmp eq i32 %i.c, 31
  br i1 %i.d, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %i.a, ptr %4, align 8, !tbaa !911
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !112
  %.phi.trans.insert297 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.pre298 = load ptr, ptr %.phi.trans.insert297, align 8, !tbaa !112 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !48 ; 2 uses
  store ptr %.pre, ptr %2, align 8, !tbaa !48
  %.not.i.i.i = icmp eq ptr %.pre298, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.pre298, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i125 = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i125, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread: ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.b
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !112 ; 8 uses
  %.not8.i.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.m, align 8, !tbaa !108
  %i.q = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !111
  %i.r = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !87
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #25, !inline_history !114
  %i.u = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !87
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #25, !inline_history !114
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i9.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i9.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.p, %bb.f ], [ %i.z, %bb.g ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.h, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !98

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #25
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.d, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %.pre298, ptr %i.e, align 8, !tbaa !112
  %.pre299 = load ptr, ptr %2, align 8, !tbaa !48
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit, %bb.a
  %i.ab = phi ptr [ %.pre299, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i ], [ %.pre, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSEOS2_.exit ], [ %i.a, %bb.a ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 56 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !912
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !913
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = lshr exact i64 %i.ai, 4
  %i.ak = trunc i64 %i.aj to i32
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %bb.i, label %bb.bj

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !891 ; 2 uses
  %i.ao = load ptr, ptr %3, align 8, !tbaa !889   ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 4 uses
  %i.as = icmp ugt i64 %i.ar, 9223372036854775792
  br i1 %i.as, label %bb.j, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #29
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.i
  store i64 0, ptr %5, align 8
  %.not.i.i.i.i126 = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i.i.i.i126, label %bb.k, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %18 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #26
          to label %.thread.a unwind label %bb.m  ; 4 uses

.thread.a:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %18, ptr %5, align 8, !tbaa !889
  %i.at = getelementptr i8, ptr %18, i64 %i.ar
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %18, i8 0, i64 %i.ar, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i, %.thread.a
  %19 = phi ptr [ %18, %.thread.a ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %.sink.i = phi ptr [ %i.at, %.thread.a ], [ null, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ] ; 3 uses
  %20 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %.sink.i, ptr %i.au, align 8, !tbaa !890
  store ptr %.sink.i, ptr %20, align 8, !tbaa !891
  %.pre300.a = load ptr, ptr %i.ad, align 8, !tbaa !912
  %.pre301.a = load ptr, ptr %i.ac, align 8, !tbaa !913
  %.pre306 = ptrtoint ptr %.pre300.a to i64
  %.pre307 = ptrtoint ptr %.pre301.a to i64
  %.pre309 = sub i64 %.pre306, %.pre307
  %.pre311 = lshr exact i64 %.pre309, 4
  %.pre313 = trunc i64 %.pre311 to i32
  %i.av = icmp sgt i32 %.pre313, 0
  br i1 %i.av, label %.lr.ph288, label %.critedge

.lr.ph288:                                        ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.n

bb.l:                                             ; preds = %_ZN5arrow6ResultIbED2Ev.exit138.thread, %_ZN5arrow6ResultIbED2Ev.exit138
  %.1383385 = phi i8 [ %.0285, %_ZN5arrow6ResultIbED2Ev.exit138.thread ], [ %.1.ph, %_ZN5arrow6ResultIbED2Ev.exit138 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = load ptr, ptr %2, align 8, !tbaa !48    ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !912
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !913
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %sext = shl i64 %i.bf, 28
  %i.bg = ashr i64 %sext, 32
  %.not = icmp slt i64 %indvars.iv.next, %i.bg
  br i1 %.not, label %bb.n, label %.critedge.loopexit, !llvm.loop !914

bb.m:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.j
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.n:                                             ; preds = %.lr.ph288, %bb.l
  %i.bi = phi ptr [ %i.ab, %.lr.ph288 ], [ %i.ay, %bb.l ]
  %indvars.iv = phi i64 [ 0, %.lr.ph288 ], [ %indvars.iv.next, %bb.l ] ; 4 uses
  %.0285 = phi i8 [ 0, %.lr.ph288 ], [ %.1383385, %bb.l ] ; 2 uses
  %i.bj = load ptr, ptr %3, align 8, !tbaa !220   ; 2 uses
  %i.bk = load ptr, ptr %i.am, align 8, !tbaa !220 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow9ArrayDataEESt6vectorIS5_SaIS5_EEEESA_ZNS3_12_GLOBAL__N_116RecursiveUnifier5UnifyES2_INS3_8DataTypeEEPS9_EUlRKS5_E_ET0_T_SK_SJ_T1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n
  %i.bm = load ptr, ptr %5, align 8, !tbaa !220
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %.lr.ph.i
  %.sroa.09.013.i = phi ptr [ %i.bj, %.lr.ph.i ], [ %i.co, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 2 uses
  %.sroa.06.012.i = phi ptr [ %i.bm, %.lr.ph.i ], [ %i.cp, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ] ; 3 uses
  %.val1.i = load ptr, ptr %.sroa.09.013.i, align 8, !tbaa !33
  %i.bn = getelementptr i8, ptr %.val1.i, i64 64
  %.val1.val.i = load ptr, ptr %i.bn, align 8, !tbaa !889
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.val1.val.i, i64 %indvars.iv ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !112, !noalias !915 ; 2 uses
  %i.br = load <2 x ptr>, ptr %i.bo, align 8, !tbaa !116, !noalias !915
  %.not.i.i.i.i.i128 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i128, label %_ZZN5arrow12_GLOBAL__N_116RecursiveUnifier5UnifyESt10shared_ptrINS_8DataTypeEEPSt6vectorIS2_INS_9ArrayDataEESaIS7_EEENKUlRKS7_E_clESC_.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 3 uses
  %i.bt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84, !noalias !915
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !3, !noalias !915
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !3, !noalias !915
  br label %_ZZN5arrow12_GLOBAL__N_116RecursiveUnifier5UnifyESt10shared_ptrINS_8DataTypeEEPSt6vectorIS2_INS_9ArrayDataEESaIS7_EEENKUlRKS7_E_clESC_.exit.i

bb.r:                                             ; preds = %bb.p
  %i.bw = atomicrmw volatile add ptr %i.bs, i32 1 acq_rel, align 4, !noalias !915 ; 0 uses
  br label %_ZZN5arrow12_GLOBAL__N_116RecursiveUnifier5UnifyESt10shared_ptrINS_8DataTypeEEPSt6vectorIS2_INS_9ArrayDataEESaIS7_EEENKUlRKS7_E_clESC_.exit.i

_ZZN5arrow12_GLOBAL__N_116RecursiveUnifier5UnifyESt10shared_ptrINS_8DataTypeEEPSt6vectorIS2_INS_9ArrayDataEESaIS7_EEENKUlRKS7_E_clESC_.exit.i: ; preds = %bb.r, %bb.q, %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !112 ; 8 uses
  store <2 x ptr> %i.br, ptr %.sroa.06.012.i, align 8, !tbaa !116
  %.not.i.i.i.i2.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i2.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZZN5arrow12_GLOBAL__N_116RecursiveUnifier5UnifyESt10shared_ptrINS_8DataTypeEEPSt6vectorIS2_INS_9ArrayDataEESaIS7_EEENKUlRKS7_E_clESC_.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 4 uses
  %i.ca = load atomic i64, ptr %i.bz acquire, align 8 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 4294967297
  %i.cc = trunc i64 %i.ca to i32                  ; 2 uses
  br i1 %i.cb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bz, align 8, !tbaa !108
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 0, ptr %i.cd, align 4, !tbaa !111
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !87
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #25, !inline_history !918
  %i.ch = load ptr, ptr %i.by, align 8, !tbaa !87
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #25, !inline_history !918
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.u:                                             ; preds = %bb.s
  %i.ck = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i3.i = icmp eq i8 %i.ck, 0
  br i1 %.not.i.i.i.i.i3.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cl = add nsw i32 %i.cc, -1
  store i32 %i.cl, ptr %i.bz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.cm = atomicrmw volatile add ptr %i.bz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cc, %bb.v ], [ %i.cm, %bb.w ]
  %i.cn = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.cn, label %bb.x, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !98

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.by) #25
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.t, %_ZZN5arrow12_GLOBAL__N_116RecursiveUnifier5UnifyESt10shared_ptrINS_8DataTypeEEPSt6vectorIS2_INS_9ArrayDataEESaIS7_EEENKUlRKS7_E_clESC_.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i, i64 16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i, i64 16
  %i.cq = icmp eq ptr %i.co, %i.bk
  br i1 %i.cq, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow9ArrayDataEESt6vectorIS5_SaIS5_EEEESA_ZNS3_12_GLOBAL__N_116RecursiveUnifier5UnifyES2_INS3_8DataTypeEEPS9_EUlRKS5_E_ET0_T_SK_SJ_T1_.exit.loopexit, label %bb.o, !llvm.loop !919

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow9ArrayDataEESt6vectorIS5_SaIS5_EEEESA_ZNS3_12_GLOBAL__N_116RecursiveUnifier5UnifyES2_INS3_8DataTypeEEPS9_EUlRKS5_E_ET0_T_SK_SJ_T1_.exit.loopexit: ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %.pre302.a = load ptr, ptr %2, align 8, !tbaa !48
  br label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow9ArrayDataEESt6vectorIS5_SaIS5_EEEESA_ZNS3_12_GLOBAL__N_116RecursiveUnifier5UnifyES2_INS3_8DataTypeEEPS9_EUlRKS5_E_ET0_T_SK_SJ_T1_.exit

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow9ArrayDataEESt6vectorIS5_SaIS5_EEEESA_ZNS3_12_GLOBAL__N_116RecursiveUnifier5UnifyES2_INS3_8DataTypeEEPS9_EUlRKS5_E_ET0_T_SK_SJ_T1_.exit: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow9ArrayDataEESt6vectorIS5_SaIS5_EEEESA_ZNS3_12_GLOBAL__N_116RecursiveUnifier5UnifyES2_INS3_8DataTypeEEPS9_EUlRKS5_E_ET0_T_SK_SJ_T1_.exit.loopexit, %bb.n
  %i.cr = phi ptr [ %.pre302.a, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow9ArrayDataEESt6vectorIS5_SaIS5_EEEESA_ZNS3_12_GLOBAL__N_116RecursiveUnifier5UnifyES2_INS3_8DataTypeEEPS9_EUlRKS5_E_ET0_T_SK_SJ_T1_.exit.loopexit ], [ %i.bi, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 48
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !913
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %indvars.iv
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !920 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !112 ; 2 uses
  %i.cz = load <2 x ptr>, ptr %i.cw, align 8, !tbaa !116
  store <2 x ptr> %i.cz, ptr %7, align 16, !tbaa !116
  %.not.i.i.i129 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i129, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.y

bb.y:                                             ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow9ArrayDataEESt6vectorIS5_SaIS5_EEEESA_ZNS3_12_GLOBAL__N_116RecursiveUnifier5UnifyES2_INS3_8DataTypeEEPS9_EUlRKS5_E_ET0_T_SK_SJ_T1_.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 3 uses
  %i.db = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i130 = icmp eq i8 %i.db, 0
  br i1 %.not.i.i.i.i130, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !3
  %i.dd = add nsw i32 %i.dc, 1
  store i32 %i.dd, ptr %i.da, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.aa:                                            ; preds = %bb.y
  %i.de = atomicrmw volatile add ptr %i.da, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPSt10shared_ptrIN5arrow9ArrayDataEESt6vectorIS5_SaIS5_EEEESA_ZNS3_12_GLOBAL__N_116RecursiveUnifier5UnifyES2_INS3_8DataTypeEEPS9_EUlRKS5_E_ET0_T_SK_SJ_T1_.exit, %bb.z, %bb.aa
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_116RecursiveUnifier5UnifyESt10shared_ptrINS_8DataTypeEEPSt6vectorIS2_INS_9ArrayDataEESaIS7_EE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %7, ptr noundef %5)
          to label %bb.ab unwind label %bb.aj

bb.ab:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.df = load ptr, ptr %i.aw, align 8, !tbaa !112 ; 8 uses
  %.not.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 4 uses
  %i.dh = load atomic i64, ptr %i.dg acquire, align 8 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 4294967297
  %i.dj = trunc i64 %i.dh to i32                  ; 2 uses
  br i1 %i.di, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.dg, align 8, !tbaa !108
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  store i32 0, ptr %i.dk, align 4, !tbaa !111
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !87
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #25, !inline_history !197
  %i.do = load ptr, ptr %i.df, align 8, !tbaa !87
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #25, !inline_history !197
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ae:                                            ; preds = %bb.ac
  %i.dr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i131 = icmp eq i8 %i.dr, 0
  br i1 %.not.i.i.i131, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ds = add nsw i32 %i.dj, -1
  store i32 %i.ds, ptr %i.dg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.dt = atomicrmw volatile add ptr %i.dg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i = phi i32 [ %i.dj, %bb.af ], [ %i.dt, %bb.ag ]
  %i.du = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.du, label %bb.ah, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !98

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #25
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ab, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ah
  %i.dv = load ptr, ptr %6, align 8, !tbaa !140
  %i.dw = icmp eq ptr %i.dv, null                 ; 2 uses
  br i1 %i.dw, label %bb.ak, label %bb.ai, !prof !97

bb.ai:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZN5arrow6ResultIbEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #25
  br label %.loopexit280

bb.aj:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #25
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #25
  br label %bb.bb

bb.ak:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dy = load i8, ptr %i.ax, align 8, !tbaa !899, !range !129, !noundef !130
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %.preheader, label %_ZN5arrow6ResultIbED2Ev.exit138.thread

_ZN5arrow6ResultIbED2Ev.exit138.thread:           ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.l

.preheader:                                       ; preds = %bb.ak
  %i.ea = load ptr, ptr %i.am, align 8, !tbaa !891
  %i.eb = load ptr, ptr %3, align 8, !tbaa !889   ; 2 uses
  %.not295 = icmp eq ptr %i.ea, %i.eb
  br i1 %.not295, label %.loopexit280, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit
  %i.ec = phi ptr [ %i.fe, %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit ], [ %i.eb, %.preheader ]
  %.082283 = phi i64 [ %i.fc, %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit ], [ 0, %.preheader ] ; 3 uses
  %i.ed = load ptr, ptr %5, align 8, !tbaa !889
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %.082283 ; 2 uses
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %.082283
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !33
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 64
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !889
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %indvars.iv ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load <2 x ptr>, ptr %i.ee, align 8, !tbaa !116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i8 0, i64 16, i1 false)
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !112 ; 8 uses
  store <2 x ptr> %i.el, ptr %i.ej, align 8, !tbaa !116
  %.not.i.i.i.i133 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i.i133, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit, label %bb.al

bb.al:                                            ; preds = %.lr.ph
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 4 uses
  %i.eo = load atomic i64, ptr %i.en acquire, align 8 ; 2 uses
  %i.ep = icmp eq i64 %i.eo, 4294967297
  %i.eq = trunc i64 %i.eo to i32                  ; 2 uses
  br i1 %i.ep, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.en, align 8, !tbaa !108
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  store i32 0, ptr %i.er, align 4, !tbaa !111
  %i.es = load ptr, ptr %i.em, align 8, !tbaa !87
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #25, !inline_history !115
  %i.ev = load ptr, ptr %i.em, align 8, !tbaa !87
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #25, !inline_history !115
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

bb.an:                                            ; preds = %bb.al
  %i.ey = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i134 = icmp eq i8 %i.ey, 0
  br i1 %.not.i.i.i.i.i134, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ez = add nsw i32 %i.eq, -1
  store i32 %i.ez, ptr %i.en, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i135

bb.ap:                                            ; preds = %bb.an
  %i.fa = atomicrmw volatile add ptr %i.en, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i135

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i135: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i136 = phi i32 [ %i.eq, %bb.ao ], [ %i.fa, %bb.ap ]
  %i.fb = icmp eq i32 %.0.i.i.i.i.i.i136, 1
  br i1 %i.fb, label %bb.aq, label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit, !prof !98

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i135
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #25
  br label %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit: ; preds = %.lr.ph, %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i135, %bb.aq
  %i.fc = add nuw i64 %.082283, 1                 ; 2 uses
  %i.fd = load ptr, ptr %i.am, align 8, !tbaa !891
  %i.fe = load ptr, ptr %3, align 8, !tbaa !889   ; 2 uses
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = ashr exact i64 %i.fh, 4
  %i.fj = icmp ult i64 %i.fc, %i.fi
  br i1 %i.fj, label %.lr.ph, label %.loopexit280, !llvm.loop !923

.loopexit280:                                     ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit, %.preheader, %bb.ai
  %.1.ph = phi i8 [ %.0285, %bb.ai ], [ 1, %.preheader ], [ 1, %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit ]
  %.pr380 = load ptr, ptr %6, align 8, !tbaa !140 ; 2 uses
  %.not.i.i137 = icmp eq ptr %.pr380, null
  br i1 %.not.i.i137, label %_ZN5arrow6ResultIbED2Ev.exit138, label %bb.ar, !prof !924

bb.ar:                                            ; preds = %.loopexit280
  %i.fk = getelementptr inbounds nuw i8, ptr %.pr380, i64 1
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !143, !range !129, !noundef !130
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %_ZN5arrow6ResultIbED2Ev.exit138, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(9) %6) #25
  br label %_ZN5arrow6ResultIbED2Ev.exit138

_ZN5arrow6ResultIbED2Ev.exit138:                  ; preds = %.loopexit280, %bb.ar, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %i.dw, label %bb.l, label %bb.at

bb.at:                                            ; preds = %_ZN5arrow6ResultIbED2Ev.exit138
  %i.fn = load ptr, ptr %5, align 8, !tbaa !889   ; 3 uses
  %i.fo = load ptr, ptr %20, align 8, !tbaa !891  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fn, %i.fo
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.at, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.gg, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i ], [ %i.fn, %bb.at ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !112 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fq, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8 ; 4 uses
  %i.fs = load atomic i64, ptr %i.fr acquire, align 8 ; 2 uses
  %i.ft = icmp eq i64 %i.fs, 4294967297
  %i.fu = trunc i64 %i.fs to i32                  ; 2 uses
  br i1 %i.ft, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.fr, align 8, !tbaa !108
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 12
  store i32 0, ptr %i.fv, align 4, !tbaa !111
  %i.fw = load ptr, ptr %i.fq, align 8, !tbaa !87
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #25, !inline_history !909
  %i.fz = load ptr, ptr %i.fq, align 8, !tbaa !87
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #25, !inline_history !909
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.gc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.gc, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gd = add nsw i32 %i.fu, -1
  store i32 %i.gd, ptr %i.fr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.ge = atomicrmw volatile add ptr %i.fr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.fu, %bb.ax ], [ %i.ge, %bb.ay ]
  %i.gf = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.gf, label %bb.az, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i, !prof !98

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #25
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i: ; preds = %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.av, %.lr.ph.i.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i139 = icmp eq ptr %i.gg, %i.fo
  br i1 %.not.i.i.i139, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !910

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !889
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.at
  %i.gh = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.fn, %bb.at ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i
  %i.gi = load ptr, ptr %i.au, align 8, !tbaa !890
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = ptrtoint ptr %i.gh to i64
  %i.gl = sub i64 %i.gj, %i.gk
  call void @_ZdlPvm(ptr noundef nonnull %i.gh, i64 noundef %i.gl) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.fe

bb.bb:                                            ; preds = %bb.aj, %bb.m
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dx, %bb.aj ], [ %i.bh, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.fl

.critedge.loopexit:                               ; preds = %bb.l
  %.pre303.a = load ptr, ptr %5, align 8, !tbaa !889
  %.pre304 = load ptr, ptr %20, align 8, !tbaa !891
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.k
  %i.gm = phi ptr [ %.sink.i, %bb.k ], [ %.pre304, %.critedge.loopexit ] ; 2 uses
  %i.gn = phi ptr [ %19, %bb.k ], [ %.pre303.a, %.critedge.loopexit ] ; 3 uses
  %.0.lcssa = phi i8 [ 0, %bb.k ], [ %.1383385, %.critedge.loopexit ]
  %.not4.i.i.i140 = icmp eq ptr %i.gn, %i.gm
  br i1 %.not4.i.i.i140, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i151, label %.lr.ph.i.i.i141

.lr.ph.i.i.i141:                                  ; preds = %.critedge, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i147
  %.05.i.i.i142 = phi ptr [ %i.hf, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i147 ], [ %i.gn, %.critedge ] ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.05.i.i.i142, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !112 ; 8 uses
  %.not.i.i.i.i.i.i.i143 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i.i.i.i143, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i147, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i.i141
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 4 uses
  %i.gr = load atomic i64, ptr %i.gq acquire, align 8 ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 4294967297
  %i.gt = trunc i64 %i.gr to i32                  ; 2 uses
  br i1 %i.gs, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.gq, align 8, !tbaa !108
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store i32 0, ptr %i.gu, align 4, !tbaa !111
  %i.gv = load ptr, ptr %i.gp, align 8, !tbaa !87
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #25, !inline_history !909
  %i.gy = load ptr, ptr %i.gp, align 8, !tbaa !87
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #25, !inline_history !909
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i147

bb.be:                                            ; preds = %bb.bc
  %i.hb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i.i.i.i.i144 = icmp eq i8 %i.hb, 0
  br i1 %.not.i.i.i.i.i.i.i.i144, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hc = add nsw i32 %i.gt, -1
  store i32 %i.hc, ptr %i.gq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i145

bb.bg:                                            ; preds = %bb.be
  %i.hd = atomicrmw volatile add ptr %i.gq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i145

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i145: ; preds = %bb.bg, %bb.bf
  %.0.i.i.i.i.i.i.i.i.i146 = phi i32 [ %i.gt, %bb.bf ], [ %i.hd, %bb.bg ]
  %i.he = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i146, 1
  br i1 %i.he, label %bb.bh, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i147, !prof !98

bb.bh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i145
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #25
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i147

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i147: ; preds = %bb.bh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i145, %bb.bd, %.lr.ph.i.i.i141
  %i.hf = getelementptr inbounds nuw i8, ptr %.05.i.i.i142, i64 16 ; 2 uses
  %.not.i.i.i148 = icmp eq ptr %i.hf, %i.gm
  br i1 %.not.i.i.i148, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i149, label %.lr.ph.i.i.i141, !llvm.loop !910

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i149: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i.i147
  %.pr.i150 = load ptr, ptr %5, align 8, !tbaa !889
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i151

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i151: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i149, %.critedge
  %i.hg = phi ptr [ %.pr.i150, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i149 ], [ %i.gn, %.critedge ] ; 3 uses
  %.not.i.i1.i152 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i1.i152, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit153, label %bb.bi

bb.bi:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i151
  %i.hh = load ptr, ptr %i.au, align 8, !tbaa !890
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hg to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef %i.hk) #27
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit153

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit153: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit.i151, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.pre305 = load ptr, ptr %2, align 8, !tbaa !48
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit153, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit
  %i.hl = phi ptr [ %i.ab, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit ], [ %.pre305, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit153 ] ; 4 uses
  %.2 = phi i8 [ 0, %_ZNSt10shared_ptrIN5arrow8DataTypeEEaSERKS2_.exit ], [ %.0.lcssa, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit153 ]
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 40
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !51
  %i.ho = icmp eq i32 %i.hn, 29
  br i1 %i.ho, label %bb.bk, label %bb.fd

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 88
  %i.hq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hl, i64 96
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !112 ; 2 uses
  %i.ht = load <2 x ptr>, ptr %i.hp, align 8, !tbaa !116
  store <2 x ptr> %i.ht, ptr %9, align 16, !tbaa !116
  %.not.i.i.i154 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i154, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit156, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 3 uses
  %i.hv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i.i155 = icmp eq i8 %i.hv, 0
  br i1 %.not.i.i.i.i155, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hw = load i32, ptr %i.hu, align 4, !tbaa !3
  %i.hx = add nsw i32 %i.hw, 1
  store i32 %i.hx, ptr %i.hu, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit156

bb.bn:                                            ; preds = %bb.bl
  %i.hy = atomicrmw volatile add ptr %i.hu, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit156

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit156: ; preds = %bb.bk, %bb.bm, %bb.bn
  %i.hz = load ptr, ptr %1, align 8, !tbaa !897
  invoke void @_ZN5arrow17DictionaryUnifier4MakeESt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.56") align 8 %8, ptr noundef nonnull %9, ptr noundef %i.hz)
          to label %bb.bo unwind label %bb.bv

bb.bo:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit156
  %i.ia = load ptr, ptr %i.hq, align 8, !tbaa !112 ; 8 uses
  %.not.i.i157 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i157, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit161, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8 ; 4 uses
  %i.ic = load atomic i64, ptr %i.ib acquire, align 8 ; 2 uses
  %i.id = icmp eq i64 %i.ic, 4294967297
  %i.ie = trunc i64 %i.ic to i32                  ; 2 uses
  br i1 %i.id, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.ib, align 8, !tbaa !108
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 12
  store i32 0, ptr %i.if, align 4, !tbaa !111
  %i.ig = load ptr, ptr %i.ia, align 8, !tbaa !87
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8
  call void %i.ii(ptr noundef nonnull align 8 dereferenceable(16) %i.ia) #25, !inline_history !197
  %i.ij = load ptr, ptr %i.ia, align 8, !tbaa !87
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.il = load ptr, ptr %i.ik, align 8
  call void %i.il(ptr noundef nonnull align 8 dereferenceable(16) %i.ia) #25, !inline_history !197
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit161

bb.br:                                            ; preds = %bb.bp
  %i.im = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84
  %.not.i.i.i158 = icmp eq i8 %i.im, 0
  br i1 %.not.i.i.i158, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.in = add nsw i32 %i.ie, -1
  store i32 %i.in, ptr %i.ib, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i159

bb.bt:                                            ; preds = %bb.br
  %i.io = atomicrmw volatile add ptr %i.ib, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i159

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i159: ; preds = %bb.bt, %bb.bs
  %.0.i.i.i.i160 = phi i32 [ %i.ie, %bb.bs ], [ %i.io, %bb.bt ]
  %i.ip = icmp eq i32 %.0.i.i.i.i160, 1
  br i1 %i.ip, label %bb.bu, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit161, !prof !98

bb.bu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i159
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ia) #25
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit161

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit161: ; preds = %bb.bo, %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i159, %bb.bu
  %i.iq = load ptr, ptr %8, align 8, !tbaa !140
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %bb.bw, label %.critedge120, !prof !97

.critedge120:                                     ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit161
  call void @_ZN5arrow6ResultIbEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #25
  call void @_ZN5arrow6ResultISt10unique_ptrINS_17DictionaryUnifierESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.fe

bb.bv:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit156
  %i.is = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #25
  br label %bb.fl

bb.bw:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit161
  %i.it = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !252, !noalias !925 ; 2 uses
  %i.iv = inttoptr i64 %i.iu to ptr               ; 12 uses
  store ptr null, ptr %i.it, align 8, !tbaa !252, !noalias !925
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.iw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !891 ; 2 uses
  %i.iy = load ptr, ptr %3, align 8, !tbaa !889   ; 3 uses
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = sub i64 %i.iz, %i.ja                    ; 4 uses
  %i.jc = icmp ugt i64 %i.jb, 9223372036854775792
  br i1 %i.jc, label %bb.bx, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.bx:                                            ; preds = %bb.bw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #29
          to label %.noexc167 unwind label %bb.by

.noexc167:                                        ; preds = %bb.bx
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.bw
  %.not.i.i.i.i162 = icmp eq ptr %i.ix, %i.iy
  br i1 %.not.i.i.i.i162, label %.thread386, label %.lr.ph.preheader.i.i.i.i.i163

.thread386:                                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.jd = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br label %.critedge114

.lr.ph.preheader.i.i.i.i.i163:                    ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.jf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jb) #26
          to label %.lr.ph291 unwind label %bb.by ; 3 uses

.lr.ph291:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i163
  store ptr %i.jf, ptr %10, align 8, !tbaa !39
  %i.jg = getelementptr i8, ptr %i.jf, i64 %i.jb  ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.jf, i8 0, i64 %i.jb, i1 false)
  %i.jh = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.jg, ptr %i.ji, align 8, !tbaa !193
  store ptr %i.jg, ptr %i.jh, align 8, !tbaa !120
  %i.jj = getelementptr inbounds nuw i8, ptr %13, i64 8
  br label %bb.bz

bb.by:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i163, %bb.bx
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.bz:                                            ; preds = %.lr.ph291, %_ZN5arrow6StatusD2Ev.exit178
  %i.jl = phi ptr [ %i.iy, %.lr.ph291 ], [ %i.kw, %_ZN5arrow6StatusD2Ev.exit178 ]
  %.067290 = phi i64 [ 0, %.lr.ph291 ], [ %i.ku, %_ZN5arrow6StatusD2Ev.exit178 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.jm = getelementptr inbounds nuw [16 x i8], ptr %i.jl, i64 %.067290
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !33
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 88
  invoke void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.7") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %i.jo)
          to label %bb.ca unwind label %bb.ck

bb.ca:                                            ; preds = %bb.bz
  %i.jp = load ptr, ptr %13, align 8, !tbaa !45
  %i.jq = load ptr, ptr %10, align 8, !tbaa !39
  %i.jr = getelementptr inbounds nuw [16 x i8], ptr %i.jq, i64 %.067290
  %i.js = load ptr, ptr %i.iv, align 8, !tbaa !87
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  %i.ju = load ptr, ptr %i.jt, align 8
  invoke void %i.ju(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.iv, ptr noundef nonnull align 8 dereferenceable(32) %i.jp, ptr noundef nonnull %i.jr)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.cl

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.ca
  %i.jv = load ptr, ptr %12, align 8, !tbaa !140  ; 2 uses
  store ptr %i.jv, ptr %11, align 8, !tbaa !140
  store ptr null, ptr %12, align 8, !tbaa !140
  %i.jw = load ptr, ptr %i.jj, align 8, !tbaa !112 ; 8 uses
  %.not.i.i169 = icmp eq ptr %i.jw, null
  br i1 %.not.i.i169, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit
end_hunk_0
