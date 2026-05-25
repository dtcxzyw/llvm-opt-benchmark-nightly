inline.NumInlined: 45069
inline.NumDeleted: 11734
begin_hunk_0_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SL_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISV_EERKST_IKNS0_4TypeEERNS1_7EvalCtxERSV_:bb.a
bb.nl:                                            ; preds = %bb.nj
  %i.bga = atomicrmw volatile add ptr %i.bfn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.nl, %bb.nk
  %.0.i.i.i.i.i.i = phi i32 [ %i.bfq, %bb.nk ], [ %i.bga, %bb.nl ]
  %i.bgb = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bgb, label %bb.nm, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, !prof !80

bb.nm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bfm) #33
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit: ; preds = %bb.nm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ni, %bb.ng, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SL_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSO_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISV_EEDpRT0_.exit
  %i.bgc = load ptr, ptr %67, align 8, !tbaa !1138 ; 3 uses
  %i.bgd = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.bge = load ptr, ptr %i.bgd, align 8, !tbaa !1144 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bgc, %i.bge
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bgi, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i ], [ %i.bgc, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %i.bgf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bgg = load i8, ptr %i.bgf, align 8, !tbaa !1141, !range !78, !noundef !79
  %i.bgh = trunc nuw i8 %i.bgg to i1
  store i8 0, ptr %i.bgf, align 8, !tbaa !1141
  br i1 %i.bgh, label %bb.nn, label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

bb.nn:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %.05.i.i.i) #33
  br label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i: ; preds = %bb.nn, %.lr.ph.i.i.i
  %i.bgi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i206 = icmp eq ptr %i.bgi, %i.bge
  br i1 %.not.i.i.i206, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1177

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %67, align 8, !tbaa !1138
  br label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit
  %i.bgj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bgc, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bgj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit, label %bb.no

bb.no:                                            ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bgk = getelementptr inbounds nuw i8, ptr %67, i64 16
  %i.bgl = load ptr, ptr %i.bgk, align 8, !tbaa !1178
  %i.bgm = ptrtoint ptr %i.bgl to i64
  %i.bgn = ptrtoint ptr %i.bgj to i64
  %i.bgo = sub i64 %i.bgm, %i.bgn
  call void @_ZdlPvm(ptr noundef nonnull %i.bgj, i64 noundef %i.bgo) #37
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, %bb.no
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #33
  br label %bb.np

bb.np:                                            ; preds = %bb.n, %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #33
  ret void

.body:                                            ; preds = %bb.lv, %bb.mr, %bb.kt, %bb.ik, %bb.ja, %bb.ho, %bb.fz, %bb.gp, %bb.fd, %bb.dm, %bb.ec, %bb.cq, %bb.bb, %bb.br, %bb.af, %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %common.resume.sink.split.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26.i.i.i.i.i.i.i.i146, %bb.le, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit53.i.i.i.i.i.i.i.i.i.i.i.i120, %bb.mg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit84.i.i.i.i.i.i.i.i.i.i.i.i, %bb.nc, %bb.jl, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73.i.i.i.i.i.i.i.i.i.i75.i.i, %bb.iv, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48.i.i.i.i.i.i.i.i.i.i49.i.i, %bb.hz, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i104.i.i, %bb.ha, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gk, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fo, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i.i, %bb.en, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit74.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dx, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49.i.i.i.i.i.i.i.i.i.i.i.i, %bb.db, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit23.i.i.i.i.i.i.i.i, %bb.cc, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit77.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bm, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26.i.i.i.i.i.i.i.i
  %.pn.pn.pn = phi { ptr, i32 } [ %common.resume.op.ph.i, %common.resume.sink.split.i ], [ %i.lx, %bb.br ], [ %i.gn, %bb.af ], [ %i.ant, %bb.ja ], [ %.pn.i.i.i.i.i.i.i.i.i, %bb.aq ], [ %i.hn, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26.i.i.i.i.i.i.i.i ], [ %i.bdy, %bb.mr ], [ %.pn.i24.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bm ], [ %i.kw, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cc ], [ %i.mv, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit77.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aib, %bb.ho ], [ %.pn.i.i.i.i.i.i.i69.i.i, %bb.db ], [ %i.qm, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit23.i.i.i.i.i.i.i.i ], [ %i.alq, %bb.ik ], [ %.pn.i21.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dx ], [ %i.tx, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i57.i.i, %bb.en ], [ %i.vy, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit74.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.avx, %bb.kt ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.i.i.i.i.i.i.i.i108.i, %bb.fo ], [ %i.zw, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i.i ], [ %i.acj, %bb.fz ], [ %.pn.i20.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gk ], [ %i.adh, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i.i90.i, %bb.ha ], [ %i.afi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bew, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit84.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i111.i.i, %bb.hz ], [ %i.ajb, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i104.i.i ], [ %i.yw, %bb.fd ], [ %.pn.i20.i.i.i.i.i.i.i.i.i.i53.i.i, %bb.iv ], [ %i.amo, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48.i.i.i.i.i.i.i.i.i.i49.i.i ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i80.i.i, %bb.jl ], [ %i.aor, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73.i.i.i.i.i.i.i.i.i.i75.i.i ], [ %i.aek, %bb.gp ], [ %i.sz, %bb.dm ], [ %i.pm, %bb.cq ], [ %i.va, %bb.ec ], [ %.pn.i.i.i.i.i.i.i.i.i153, %bb.le ], [ %i.awv, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26.i.i.i.i.i.i.i.i146 ], [ %i.jw, %bb.bb ], [ %.pn.i22.i.i.i.i.i.i.i.i.i.i.i.i, %bb.mg ], [ %i.bbn, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit53.i.i.i.i.i.i.i.i.i.i.i.i120 ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i137, %bb.nc ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit226, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit230, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit234, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit238, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit241, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit246, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit249, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit253, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit257, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit261, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit264, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit269, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit272, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit276, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %i.bap, %bb.lv ]
  call void @_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %67) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SL_EEEE27supportsFlatNoNullsFastPathEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SL_EEEE34ensureStringEncodingSetAtAllInputsEv(ptr nonnull readonly align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SL_EEEE36propagateStringEncodingFromAllInputsEv(ptr nonnull readonly align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SL_EEEE16getCanonicalNameEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SL_EEEE16unpackInitializeILm1EJlEEEvRKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISU_EERKNS3_11QueryConfigEPNS0_6memory10MemoryPoolERKSQ_ISR_INS0_10BaseVectorEESaIS16_EEDpPKT0_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.facebook::velox::SelectivityVector", align 8 ; 17 uses
  %4 = alloca %"class.facebook::velox::DecodedVector", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !855
  %i.d = load ptr, ptr %2, align 8, !tbaa !858    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4                   ; 2 uses
  %.not.i.i = icmp ugt i64 %i.h, 1
  br i1 %.not.i.i, label %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE2atEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.59, i64 noundef 1, i64 noundef %i.h) #35
  unreachable

_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE2atEm.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !859
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.p, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE2atEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 37
  store i8 0, ptr %i.k, align 1, !tbaa !862
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %3, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 -1, ptr %i.a, align 8, !tbaa !555
  invoke void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(38) %3, ptr null, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN8facebook5velox17SelectivityVectorC2Eib.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.m = load ptr, ptr %3, align 8, !tbaa !864    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !866
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #37
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit29
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit29 ], [ %i.l, %bb.e ], [ %i.l, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZN8facebook5velox17SelectivityVectorC2Eib.exit:  ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  store i32 1, ptr %i.u, align 8, !tbaa !867
  store i32 0, ptr %i.t, align 4, !tbaa !875
  store i32 1, ptr %i.s, align 8, !tbaa !876
  store i16 257, ptr %i.v, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !855
  %i.x = load ptr, ptr %2, align 8, !tbaa !858    ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4                 ; 2 uses
  %.not.i.i19 = icmp ugt i64 %i.ab, 1
  br i1 %.not.i.i19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN8facebook5velox17SelectivityVectorC2Eib.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.59, i64 noundef 1, i64 noundef %i.ab) #35
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_ZN8facebook5velox17SelectivityVectorC2Eib.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !859
  invoke void @_ZN8facebook5velox13DecodedVectorC1ERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(94) %i.ad, ptr noundef nonnull align 8 dereferenceable(38) %3, i1 noundef zeroext true)
          to label %_ZNK8facebook5velox4exec12VectorReaderINS0_12ShortDecimalINS0_15IntegerVariableILm2EEENS4_ILm6EEEEEEixEm.exit unwind label %bb.l

_ZNK8facebook5velox4exec12VectorReaderINS0_12ShortDecimalINS0_15IntegerVariableILm2EEENS4_ILm6EEEEEEixEm.exit: ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val17 = load ptr, ptr %i.ae, align 8, !tbaa !8779 ; 2 uses
  %.val18 = load ptr, ptr %1, align 8, !tbaa !556 ; 2 uses
  %i.af = load ptr, ptr %.val18, align 8, !tbaa !582
  %i.ag = invoke i16 @_ZN8facebook5velox24getDecimalPrecisionScaleERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(18) %i.af)
          to label %.noexc21 unwind label %bb.m

.noexc21:                                         ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_12ShortDecimalINS0_15IntegerVariableILm2EEENS4_ILm6EEEEEEixEm.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !582
  %i.aj = invoke i16 @_ZN8facebook5velox24getDecimalPrecisionScaleERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(18) %i.ai)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %.noexc21
  %.sroa.311.0.extract.shift.i.i = lshr i16 %i.ag, 8 ; 2 uses
  %.sroa.3.0.extract.shift.i.i = lshr i16 %i.aj, 8 ; 2 uses
  %5 = sub nsw i16 %.sroa.3.0.extract.shift.i.i, %.sroa.311.0.extract.shift.i.i
  %.sroa.speculated4.i.i = call i16 @llvm.smax.i16(i16 %5, i16 0)
  %i.ak = trunc nuw i16 %.sroa.speculated4.i.i to i8
  store i8 %i.ak, ptr %.val17, align 1, !tbaa !8928
  %6 = sub nsw i16 %.sroa.311.0.extract.shift.i.i, %.sroa.3.0.extract.shift.i.i
  %.sroa.speculated.i.i = call i16 @llvm.smax.i16(i16 %6, i16 0)
  %i.al = trunc nuw i16 %.sroa.speculated.i.i to i8
  %i.am = getelementptr inbounds nuw i8, ptr %.val17, i64 1
  store i8 %i.al, ptr %i.am, align 1, !tbaa !8930
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !864 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i23, label %_ZNSt6vectorImSaImEED2Ev.exit.i24, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !866
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #37
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i24

_ZNSt6vectorImSaImEED2Ev.exit.i24:                ; preds = %bb.i, %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !877 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i1.i, label %_ZN8facebook5velox13DecodedVectorD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i24
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !880
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #37
  br label %_ZN8facebook5velox13DecodedVectorD2Ev.exit

_ZN8facebook5velox13DecodedVectorD2Ev.exit:       ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i24, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.bb = load ptr, ptr %3, align 8, !tbaa !864   ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i25, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN8facebook5velox13DecodedVectorD2Ev.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !866
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bg) #37
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit

_ZN8facebook5velox17SelectivityVectorD2Ev.exit:   ; preds = %_ZN8facebook5velox13DecodedVectorD2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.q

bb.l:                                             ; preds = %bb.f, %bb.g
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %.noexc21, %_ZNK8facebook5velox4exec12VectorReaderINS0_12ShortDecimalINS0_15IntegerVariableILm2EEENS4_ILm6EEEEEEixEm.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %4) #33
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %i.bh, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.bj = load ptr, ptr %3, align 8, !tbaa !864   ; 3 uses
  %.not.i.i.i.i27 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i27, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit29, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !866
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bo) #37
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit29

_ZN8facebook5velox17SelectivityVectorD2Ev.exit29: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %common.resume

bb.p:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE2atEm.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.bp, align 8, !tbaa !8779 ; 2 uses
  %.val16 = load ptr, ptr %1, align 8, !tbaa !556 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.val16, i64 16
  %i.br = load ptr, ptr %.val16, align 8, !tbaa !582
  %i.bs = tail call i16 @_ZN8facebook5velox24getDecimalPrecisionScaleERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(18) %i.br)
  %.sroa.311.0.extract.shift.i.i30 = lshr i16 %i.bs, 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !582
  %i.bu = tail call i16 @_ZN8facebook5velox24getDecimalPrecisionScaleERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(18) %i.bt)
  %.sroa.3.0.extract.shift.i.i32 = lshr i16 %i.bu, 8 ; 2 uses
  %7 = sub nsw i16 %.sroa.3.0.extract.shift.i.i32, %.sroa.311.0.extract.shift.i.i30
  %.sroa.speculated4.i.i32 = tail call i16 @llvm.smax.i16(i16 %7, i16 0)
  %i.bv = trunc nuw i16 %.sroa.speculated4.i.i32 to i8
  store i8 %i.bv, ptr %.val, align 1, !tbaa !8928
  %8 = sub nsw i16 %.sroa.311.0.extract.shift.i.i30, %.sroa.3.0.extract.shift.i.i32
  %.sroa.speculated.i.i33 = tail call i16 @llvm.smax.i16(i16 %8, i16 0)
  %i.bw = trunc nuw i16 %.sroa.speculated.i.i33 to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 1
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !8930
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_122DecimalModulusFunctionINS0_4exec10VectorExecEE4callIlllEEvRT_RKT0_RKT1_(i8 %.0.val, i8 %.1.val, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, i64 %.0.val1, i64 %.0.val3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.1027", align 16 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.1027", align 16 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.3727", align 16 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not = icmp eq i64 %.0.val3, 0
  br i1 %.not, label %bb.b, label %bb.e, !prof !80

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33, !noalias !8931
  store i64 0, ptr %5, align 16, !tbaa !22, !alias.scope !8934, !noalias !8931
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.a, align 16, !tbaa !22, !alias.scope !8934, !noalias !8931
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.218, i64 27, i64 19, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33, !noalias !8931
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_122DecimalModulusFunctionINS0_4exec10VectorExecEE4callIlllEEvRT_RKT0_RKT1_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.218) #35
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load ptr, ptr %6, align 8, !tbaa !7      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.f = load i64, ptr %i.d, align 8, !tbaa !22
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %spec.select = tail call i64 @llvm.abs.i64(i64 %.0.val1, i1 true) ; 2 uses
  %i.h = zext i8 %.0.val to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.h
  %i.j = load i128, ptr %i.i, align 16, !tbaa !985
  %i.k = trunc i128 %i.j to i64                   ; 2 uses
  %i.l = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %spec.select, i64 %i.k) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %bb.f, label %_ZN8facebook5velox15checkedMultiplyIlEET_S2_S2_PKc.exit, !prof !80

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !8937
  store ptr @.str.217, ptr %3, align 16, !tbaa !22, !alias.scope !8940, !noalias !8937
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %spec.select, ptr %i.n, align 16, !tbaa !22, !alias.scope !8940, !noalias !8937
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.k, ptr %i.o, align 16, !tbaa !22, !alias.scope !8940, !noalias !8937
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.73, i64 20, i64 828, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !8937
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox15checkedMultiplyIlEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.73) #35
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.t = load i64, ptr %i.r, align 8, !tbaa !22
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %common.resume

_ZN8facebook5velox15checkedMultiplyIlEET_S2_S2_PKc.exit: ; preds = %bb.e
  %.018 = tail call i64 @llvm.abs.i64(i64 %.0.val3, i1 true) ; 2 uses
  %i.v = zext i8 %.1.val to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.v
  %i.x = load i128, ptr %i.w, align 16, !tbaa !985
  %i.y = trunc i128 %i.x to i64                   ; 2 uses
  %i.z = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.018, i64 %i.y) ; 2 uses
  %i.aa = extractvalue { i64, i1 } %i.z, 1
  br i1 %i.aa, label %bb.i, label %_ZN8facebook5velox15checkedMultiplyIlEET_S2_S2_PKc.exit27, !prof !80

bb.i:                                             ; preds = %_ZN8facebook5velox15checkedMultiplyIlEET_S2_S2_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33, !noalias !8943
  store ptr @.str.217, ptr %1, align 16, !tbaa !22, !alias.scope !8946, !noalias !8943
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.018, ptr %i.ab, align 16, !tbaa !22, !alias.scope !8946, !noalias !8943
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.y, ptr %i.ac, align 16, !tbaa !22, !alias.scope !8946, !noalias !8943
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull @.str.73, i64 20, i64 828, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33, !noalias !8943
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox15checkedMultiplyIlEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull @.str.73) #35
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24: ; preds = %bb.k
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !22
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %common.resume

_ZN8facebook5velox15checkedMultiplyIlEET_S2_S2_PKc.exit27: ; preds = %_ZN8facebook5velox15checkedMultiplyIlEET_S2_S2_PKc.exit
  %i.aj = extractvalue { i64, i1 } %i.l, 0
  %i.ak = extractvalue { i64, i1 } %i.z, 0
  %i.al = srem i64 %i.aj, %i.ak                   ; 2 uses
  %i.am = sub nsw i64 0, %i.al
  %.inv6 = icmp slt i64 %.0.val1, 0
  %i.an = select i1 %.inv6, i64 %i.am, i64 %i.al
  store i64 %i.an, ptr %0, align 8, !tbaa !555
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm3EEENSF_ILm7EEEEENS0_15ConstantCheckerIJNSE_INSF_ILm1EEENSF_ILm5EEEEENSE_INSF_ILm2EEENSF_ILm6EEEEEEEEJSM_SP_EEEE7iterateIJNS3_20ConstantVectorReaderISM_EENSU_ISP_EEEEEvRNSS_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS13_EEvRKNS0_17SelectivityVectorES12_EUlS12_E_EEvS17_S12_T0_EUlS12_E_EEvPKmiibS12_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !8949, !range !78, !noundef !79
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8952
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !555
  %i.h = xor i8 %i.b, 1
  %i.i = zext nneg i8 %i.h to i64
  %i.j = sub nsw i64 0, %i.i
  %i.k = xor i64 %i.g, %i.j
  %i.l = and i64 %i.k, %2                         ; 2 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %.loopexit39, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = shl nsw i32 %1, 6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEESA_NS0_12ShortDecimalINS0_15IntegerVariableILm3EEENSD_ILm7EEEEENS0_15ConstantCheckerIJNSC_INSD_ILm1EEENSD_ILm5EEEEENSC_INSD_ILm2EEENSD_ILm6EEEEEEEEJSK_SN_EEEE7iterateIJNS1_20ConstantVectorReaderISK_EENSS_ISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowIS11_EEvRKNS0_17SelectivityVectorES10_EUlS10_E_EEvS15_S10_T0_ENKUlS10_E_clIiEEDaS10_.exit
  %.046 = phi i64 [ %i.l, %.preheader ], [ %i.bs, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEESA_NS0_12ShortDecimalINS0_15IntegerVariableILm3EEENSD_ILm7EEEEENS0_15ConstantCheckerIJNSC_INSD_ILm1EEENSD_ILm5EEEEENSC_INSD_ILm2EEENSD_ILm6EEEEEEEEJSK_SN_EEEE7iterateIJNS1_20ConstantVectorReaderISK_EENSS_ISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowIS11_EEvRKNS0_17SelectivityVectorES10_EUlS10_E_EEvS15_S10_T0_ENKUlS10_E_clIiEEDaS10_.exit ] ; 3 uses
  %i.p = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.046, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = or disjoint i32 %i.n, %i.q               ; 3 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !8953 ; 2 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !8954, !nonnull !79, !align !977 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !8790
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 0, ptr %i.a, align 8, !tbaa !555
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8793, !nonnull !79, !align !977
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !8794, !nonnull !79, !align !977
  %i.z = load i64, ptr %i.w, align 8, !tbaa !555, !noalias !8955
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !555, !noalias !8958
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val = load ptr, ptr %i.ab, align 8, !tbaa !8779 ; 2 uses
  %.val17 = load i8, ptr %.val, align 1
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENS0_11LongDecimalINSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SM_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISW_EERKSU_IKNS0_4TypeEERNS1_7EvalCtxERSW_:bb.a
bb.dt:                                            ; preds = %bb.dr
  %i.ua = atomicrmw volatile add ptr %i.tn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.dt, %bb.ds
  %.0.i.i.i.i.i.i = phi i32 [ %i.tq, %bb.ds ], [ %i.ua, %bb.dt ]
  %i.ub = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ub, label %bb.du, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, !prof !80

bb.du:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tm) #33
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit: ; preds = %bb.du, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.dq, %bb.do, %bb.dn
  %i.uc = load ptr, ptr %25, align 8, !tbaa !1138 ; 3 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !1144 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.uc, %i.ue
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ui, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i ], [ %i.uc, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ug = load i8, ptr %i.uf, align 8, !tbaa !1141, !range !78, !noundef !79
  %i.uh = trunc nuw i8 %i.ug to i1
  store i8 0, ptr %i.uf, align 8, !tbaa !1141
  br i1 %i.uh, label %bb.dv, label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

bb.dv:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %.05.i.i.i) #33
  br label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i: ; preds = %bb.dv, %.lr.ph.i.i.i
  %i.ui = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i75 = icmp eq ptr %i.ui, %i.ue
  br i1 %.not.i.i.i75, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1177

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %25, align 8, !tbaa !1138
  br label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit
  %i.uj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.uc, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.uj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit, label %bb.dw

bb.dw:                                            ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i
  %i.uk = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !1178
  %i.um = ptrtoint ptr %i.ul to i64
  %i.un = ptrtoint ptr %i.uj to i64
  %i.uo = sub i64 %i.um, %i.un
  call void @_ZdlPvm(ptr noundef nonnull %i.uj, i64 noundef %i.uo) #37
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #33
  br label %bb.dx

bb.dx:                                            ; preds = %bb.j, %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  ret void

.body:                                            ; preds = %bb.bv, %bb.cy, %bb.as, %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %common.resume.sink.split.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit27.i.i.i.i.i.i.i.i, %bb.bd, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit55.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit87.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dj
  %.pn.pn.pn = phi { ptr, i32 } [ %common.resume.op.ph.i, %common.resume.sink.split.i ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i, %bb.cy ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.is, %bb.as ], [ %.pn.i.i.i.i.i.i.i.i.i, %bb.bd ], [ %i.jq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit27.i.i.i.i.i.i.i.i ], [ %i.sw, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit87.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn.i23.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cg ], [ %i.om, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit55.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dj ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit91, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit95, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %i.no, %bb.bv ]
  call void @_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %25) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENS0_11LongDecimalINSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SM_EEEE27supportsFlatNoNullsFastPathEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENS0_11LongDecimalINSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SM_EEEE34ensureStringEncodingSetAtAllInputsEv(ptr nonnull readonly align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENS0_11LongDecimalINSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SM_EEEE36propagateStringEncodingFromAllInputsEv(ptr nonnull readonly align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENS0_11LongDecimalINSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SM_EEEE16getCanonicalNameEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENS0_11LongDecimalINSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SM_EEEE16unpackInitializeILm1EJlEEEvRKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISV_EERKNS3_11QueryConfigEPNS0_6memory10MemoryPoolERKSR_ISS_INS0_10BaseVectorEESaIS17_EEDpPKT0_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.facebook::velox::SelectivityVector", align 8 ; 17 uses
  %4 = alloca %"class.facebook::velox::DecodedVector", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !855
  %i.d = load ptr, ptr %2, align 8, !tbaa !858    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4                   ; 2 uses
  %.not.i.i = icmp ugt i64 %i.h, 1
  br i1 %.not.i.i, label %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE2atEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.59, i64 noundef 1, i64 noundef %i.h) #35
  unreachable

_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE2atEm.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !859
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.q, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE2atEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 37
  store i8 0, ptr %i.k, align 1, !tbaa !862
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %3, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 -1, ptr %i.a, align 8, !tbaa !555
  invoke void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(38) %3, ptr null, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN8facebook5velox17SelectivityVectorC2Eib.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.m = load ptr, ptr %3, align 8, !tbaa !864    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !866
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #37
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit29
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit29 ], [ %i.l, %bb.e ], [ %i.l, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZN8facebook5velox17SelectivityVectorC2Eib.exit:  ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  store i32 1, ptr %i.u, align 8, !tbaa !867
  store i32 0, ptr %i.t, align 4, !tbaa !875
  store i32 1, ptr %i.s, align 8, !tbaa !876
  store i16 257, ptr %i.v, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !855
  %i.x = load ptr, ptr %2, align 8, !tbaa !858    ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4                 ; 2 uses
  %.not.i.i19 = icmp ugt i64 %i.ab, 1
  br i1 %.not.i.i19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN8facebook5velox17SelectivityVectorC2Eib.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.59, i64 noundef 1, i64 noundef %i.ab) #35
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_ZN8facebook5velox17SelectivityVectorC2Eib.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !859
  invoke void @_ZN8facebook5velox13DecodedVectorC1ERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(94) %i.ad, ptr noundef nonnull align 8 dereferenceable(38) %3, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val17 = load ptr, ptr %i.ae, align 8, !tbaa !9091 ; 2 uses
  %.val18 = load ptr, ptr %1, align 8, !tbaa !556 ; 2 uses
  %i.af = load ptr, ptr %.val18, align 8, !tbaa !582
  %i.ag = invoke i16 @_ZN8facebook5velox24getDecimalPrecisionScaleERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(18) %i.af)
          to label %.noexc21 unwind label %bb.n

.noexc21:                                         ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !582
  %i.aj = invoke i16 @_ZN8facebook5velox24getDecimalPrecisionScaleERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(18) %i.ai)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %.noexc21
  %.sroa.311.0.extract.shift.i.i = lshr i16 %i.ag, 8 ; 2 uses
  %.sroa.3.0.extract.shift.i.i = lshr i16 %i.aj, 8 ; 2 uses
  %5 = sub nsw i16 %.sroa.3.0.extract.shift.i.i, %.sroa.311.0.extract.shift.i.i
  %.sroa.speculated4.i.i = call i16 @llvm.smax.i16(i16 %5, i16 0)
  %i.ak = trunc nuw i16 %.sroa.speculated4.i.i to i8
  store i8 %i.ak, ptr %.val17, align 1, !tbaa !8928
  %6 = sub nsw i16 %.sroa.311.0.extract.shift.i.i, %.sroa.3.0.extract.shift.i.i
  %.sroa.speculated.i.i = call i16 @llvm.smax.i16(i16 %6, i16 0)
  %i.al = trunc nuw i16 %.sroa.speculated.i.i to i8
  %i.am = getelementptr inbounds nuw i8, ptr %.val17, i64 1
  store i8 %i.al, ptr %i.am, align 1, !tbaa !8930
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !864 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i23, label %_ZNSt6vectorImSaImEED2Ev.exit.i24, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !866
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #37
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i24

_ZNSt6vectorImSaImEED2Ev.exit.i24:                ; preds = %bb.j, %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !877 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i1.i, label %_ZN8facebook5velox13DecodedVectorD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i24
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !880
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #37
  br label %_ZN8facebook5velox13DecodedVectorD2Ev.exit

_ZN8facebook5velox13DecodedVectorD2Ev.exit:       ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i24, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.bb = load ptr, ptr %3, align 8, !tbaa !864   ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i25, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN8facebook5velox13DecodedVectorD2Ev.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !866
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bg) #37
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit

_ZN8facebook5velox17SelectivityVectorD2Ev.exit:   ; preds = %_ZN8facebook5velox13DecodedVectorD2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.r

bb.m:                                             ; preds = %bb.f, %bb.g
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %.noexc21, %bb.h
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %4) #33
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.n ], [ %i.bh, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.bj = load ptr, ptr %3, align 8, !tbaa !864   ; 3 uses
  %.not.i.i.i.i27 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i27, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit29, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !866
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bo) #37
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit29

_ZN8facebook5velox17SelectivityVectorD2Ev.exit29: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %common.resume

bb.q:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE2atEm.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.bp, align 8, !tbaa !9091 ; 2 uses
  %.val16 = load ptr, ptr %1, align 8, !tbaa !556 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.val16, i64 16
  %i.br = load ptr, ptr %.val16, align 8, !tbaa !582
  %i.bs = tail call i16 @_ZN8facebook5velox24getDecimalPrecisionScaleERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(18) %i.br)
  %.sroa.311.0.extract.shift.i.i30 = lshr i16 %i.bs, 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !582
  %i.bu = tail call i16 @_ZN8facebook5velox24getDecimalPrecisionScaleERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(18) %i.bt)
  %.sroa.3.0.extract.shift.i.i32 = lshr i16 %i.bu, 8 ; 2 uses
  %7 = sub nsw i16 %.sroa.3.0.extract.shift.i.i32, %.sroa.311.0.extract.shift.i.i30
  %.sroa.speculated4.i.i32 = tail call i16 @llvm.smax.i16(i16 %7, i16 0)
  %i.bv = trunc nuw i16 %.sroa.speculated4.i.i32 to i8
  store i8 %i.bv, ptr %.val, align 1, !tbaa !8928
  %8 = sub nsw i16 %.sroa.311.0.extract.shift.i.i30, %.sroa.3.0.extract.shift.i.i32
  %.sroa.speculated.i.i33 = tail call i16 @llvm.smax.i16(i16 %8, i16 0)
  %i.bw = trunc nuw i16 %.sroa.speculated.i.i33 to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 1
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !8930
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENS0_11LongDecimalINSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SM_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSP_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISW_EEDpRT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(58) %1, ptr readonly captures(none) %.0.val) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.1027", align 16 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.3546", align 16 ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %9 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %10 = alloca %class.anon.5063, align 8          ; 10 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %13 = alloca %class.anon.5060, align 1          ; 3 uses
  %14 = alloca %class.anon.5048, align 8          ; 11 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %15 = alloca %class.anon.5045, align 8          ; 6 uses
  %16 = alloca %"struct.fmt::v11::detail::format_arg_store.1027", align 16 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"struct.fmt::v11::detail::format_arg_store.3546", align 16 ; 4 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %20 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %21 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %22 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %23 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %24 = alloca %class.anon.5037, align 8          ; 10 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %25 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %26 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %27 = alloca %class.anon.5034, align 1          ; 3 uses
  %28 = alloca %class.anon.5022, align 8          ; 11 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %29 = alloca %class.anon.5019, align 8          ; 6 uses
  %30 = alloca %"struct.facebook::velox::exec::ConstantVectorReader.471", align 16 ; 5 uses
  %31 = alloca %"struct.facebook::velox::exec::FlatVectorReader.472", align 8 ; 5 uses
  %32 = alloca %"struct.fmt::v11::detail::format_arg_store.1027", align 16 ; 6 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %34 = alloca %"struct.fmt::v11::detail::format_arg_store.3546", align 16 ; 4 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %36 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %37 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %38 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %39 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %40 = alloca %class.anon.5011, align 8          ; 10 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %41 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %42 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %43 = alloca %class.anon.5008, align 1          ; 3 uses
  %44 = alloca %class.anon.4996, align 8          ; 11 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %45 = alloca %class.anon.4993, align 8          ; 6 uses
  %46 = alloca %"struct.fmt::v11::detail::format_arg_store.1027", align 16 ; 6 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %48 = alloca %"struct.fmt::v11::detail::format_arg_store.3546", align 16 ; 4 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %50 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %51 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %52 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %53 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %54 = alloca %class.anon.4985, align 8          ; 10 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %55 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %56 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %57 = alloca %class.anon.4982, align 1          ; 3 uses
  %58 = alloca %class.anon.4970, align 8          ; 11 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca ptr, align 8                      ; 4 uses
  %59 = alloca %class.anon.4967, align 8          ; 6 uses
  %60 = alloca %"struct.facebook::velox::exec::ConstantVectorReader.471", align 16 ; 5 uses
  %61 = alloca %"struct.facebook::velox::exec::FlatVectorReader.472", align 8 ; 5 uses
  %62 = alloca %"struct.facebook::velox::exec::ConstantVectorReader.1002", align 8 ; 6 uses
  %63 = alloca %"struct.facebook::velox::exec::FlatVectorReader.1004", align 8 ; 6 uses
  %i.q = load ptr, ptr %.0.val, align 8, !tbaa !859 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !885
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.b, label %bb.es

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #33
  %i.u = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 2 uses
  store i8 0, ptr %i.u, align 8, !tbaa !1672
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 176
  %i.w = load i8, ptr %i.v, align 8, !tbaa !1673, !range !78, !noundef !79
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZN8facebook5velox4exec20ConstantVectorReaderINS0_12ShortDecimalINS0_15IntegerVariableILm1EEENS4_ILm5EEEEEEC2ERNS0_14ConstantVectorIlEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 168
  %i.z = load i64, ptr %i.y, align 8, !tbaa !555
  store i64 %i.z, ptr %62, align 8
  store i8 1, ptr %i.u, align 8
  br label %_ZN8facebook5velox4exec20ConstantVectorReaderINS0_12ShortDecimalINS0_15IntegerVariableILm1EEENS4_ILm5EEEEEEC2ERNS0_14ConstantVectorIlEE.exit

_ZN8facebook5velox4exec20ConstantVectorReaderINS0_12ShortDecimalINS0_15IntegerVariableILm1EEENS4_ILm5EEEEEEC2ERNS0_14ConstantVectorIlEE.exit: ; preds = %bb.b, %bb.c
  %i.aa = getelementptr i8, ptr %.0.val, i64 16
  %.val.val = load ptr, ptr %i.aa, align 8, !tbaa !859 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val.val, i64 28
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !885
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %bb.d, label %bb.by

bb.d:                                             ; preds = %_ZN8facebook5velox4exec20ConstantVectorReaderINS0_12ShortDecimalINS0_15IntegerVariableILm1EEENS4_ILm5EEEEEEC2ERNS0_14ConstantVectorIlEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #33
  %i.ae = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 2 uses
  store i8 0, ptr %i.ae, align 16, !tbaa !978
  %i.af = getelementptr inbounds nuw i8, ptr %.val.val, i64 224
  %i.ag = load i8, ptr %i.af, align 16, !tbaa !979, !range !78, !noundef !79
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %_ZN8facebook5velox4exec20ConstantVectorReaderINS0_11LongDecimalINS0_15IntegerVariableILm2EEENS4_ILm6EEEEEEC2ERNS0_14ConstantVectorInEE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.val, i64 208
  %i.aj = load i128, ptr %i.ai, align 16, !tbaa !985
  store i128 %i.aj, ptr %60, align 16
  store i8 1, ptr %i.ae, align 16
  br label %_ZN8facebook5velox4exec20ConstantVectorReaderINS0_11LongDecimalINS0_15IntegerVariableILm2EEENS4_ILm6EEEEEEC2ERNS0_14ConstantVectorInEE.exit.i

_ZN8facebook5velox4exec20ConstantVectorReaderINS0_11LongDecimalINS0_15IntegerVariableILm2EEENS4_ILm6EEEEEEC2ERNS0_14ConstantVectorInEE.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #33
  store ptr null, ptr %i.o, align 8, !tbaa !986
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #33
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.val.i.i.i = load ptr, ptr %i.ak, align 8, !tbaa !9100
  store ptr %.val.val.i.i.i, ptr %i.p, align 8, !tbaa !986
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #33
  store ptr %1, ptr %59, align 8, !tbaa !9101
  %i.al = getelementptr inbounds nuw i8, ptr %59, i64 8
  store ptr %i.o, ptr %i.al, align 8, !tbaa !990
  %i.am = getelementptr inbounds nuw i8, ptr %59, i64 16
  store ptr %i.p, ptr %i.am, align 8, !tbaa !990
  %.val21.i.i.i = load ptr, ptr %1, align 8, !tbaa !9094 ; 11 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val22.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !9099 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %58)
  store ptr %0, ptr %58, align 8
  %.sroa.425.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 4 uses
  store ptr %62, ptr %.sroa.425.0..sroa_idx.i.i.i, align 8
  %.sroa.526.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 4 uses
  store ptr %60, ptr %.sroa.526.0..sroa_idx.i.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %58, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %58, i64 32 ; 4 uses
  store ptr %59, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %57)
  %i.ao = getelementptr inbounds nuw i8, ptr %.val21.i.i.i, i64 36 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val21.i.i.i, i64 37
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !862, !range !78, !noundef !79
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i.i, label %bb.f

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox4exec20ConstantVectorReaderINS0_11LongDecimalINS0_15IntegerVariableILm2EEENS4_ILm6EEEEEEC2ERNS0_14ConstantVectorInEE.exit.i
  %.0.in.pre.i.i.i.i.i.i.i.i = load i8, ptr %i.ao, align 1, !tbaa !554, !range !78
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZN8facebook5velox4exec20ConstantVectorReaderINS0_11LongDecimalINS0_15IntegerVariableILm2EEENS4_ILm6EEEEEEC2ERNS0_14ConstantVectorInEE.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %.val21.i.i.i, i64 28
  %i.at = load i32, ptr %i.as, align 4, !tbaa !875
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.g, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %.val21.i.i.i, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !876 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val21.i.i.i, i64 24
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !867
  %i.az = icmp eq i32 %i.aw, %i.ay
  br i1 %i.az, label %bb.h, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ba = load ptr, ptr %.val21.i.i.i, align 8, !tbaa !864 ; 2 uses
  %.not.i.i15.i.i.i.i.i.i.i = icmp sgt i32 %i.aw, 0
  br i1 %.not.i.i15.i.i.i.i.i.i.i, label %bb.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.bb = and i32 %i.aw, 2147483584               ; 3 uses
  %i.bc = zext nneg i32 %i.bb to i64
  %.not37.i.i.not.i.i.i.i.i.i.i.i319.not = icmp eq i32 %i.bb, 0
  br i1 %.not37.i.i.not.i.i.i.i.i.i.i.i319.not, label %.critedge.i.i.i.i.i.i.i.i.i.i, label %.lr.ph321

bb.j:                                             ; preds = %.lr.ph321
  %indvars.iv.next.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.i320, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i.i.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i.i.i.i.i, %i.bc
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSJ_SM_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISW_EERKSU_IKNS0_4TypeEERNS1_7EvalCtxERSW_:bb.a
bb.nh:                                            ; preds = %bb.nf
  %i.bex = atomicrmw volatile add ptr %i.bek, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.nh, %bb.ng
  %.0.i.i.i.i.i.i = phi i32 [ %i.ben, %bb.ng ], [ %i.bex, %bb.nh ]
  %i.bey = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bey, label %bb.ni, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, !prof !80

bb.ni:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bej) #33
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit: ; preds = %bb.ni, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ne, %bb.nc, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSJ_SM_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSP_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISW_EEDpRT0_.exit
  %i.bez = load ptr, ptr %67, align 8, !tbaa !1138 ; 3 uses
  %i.bfa = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.bfb = load ptr, ptr %i.bfa, align 8, !tbaa !1144 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bez, %i.bfb
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bff, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i ], [ %i.bez, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %i.bfc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bfd = load i8, ptr %i.bfc, align 8, !tbaa !1141, !range !78, !noundef !79
  %i.bfe = trunc nuw i8 %i.bfd to i1
  store i8 0, ptr %i.bfc, align 8, !tbaa !1141
  br i1 %i.bfe, label %bb.nj, label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

bb.nj:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %.05.i.i.i) #33
  br label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i: ; preds = %bb.nj, %.lr.ph.i.i.i
  %i.bff = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bff, %i.bfb
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1177

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %67, align 8, !tbaa !1138
  br label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit
  %i.bfg = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bez, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bfg, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit, label %bb.nk

bb.nk:                                            ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bfh = getelementptr inbounds nuw i8, ptr %67, i64 16
  %i.bfi = load ptr, ptr %i.bfh, align 8, !tbaa !1178
  %i.bfj = ptrtoint ptr %i.bfi to i64
  %i.bfk = ptrtoint ptr %i.bfg to i64
  %i.bfl = sub i64 %i.bfj, %i.bfk
  call void @_ZdlPvm(ptr noundef nonnull %i.bfg, i64 noundef %i.bfl) #37
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, %bb.nk
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #33
  br label %bb.nl

bb.nl:                                            ; preds = %bb.j, %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #33
  ret void

.body:                                            ; preds = %bb.lr, %bb.mn, %bb.kp, %bb.ig, %bb.iw, %bb.hk, %bb.fv, %bb.gl, %bb.ez, %bb.di, %bb.dy, %bb.cm, %bb.ax, %bb.bn, %bb.ab, %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %common.resume.sink.split.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26.i.i.i.i.i.i.i.i146, %bb.la, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit53.i.i.i.i.i.i.i.i.i.i.i.i120, %bb.mc, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit85.i.i.i.i.i.i.i.i.i.i.i.i, %bb.my, %bb.jh, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73.i.i.i.i.i.i.i.i.i.i75.i.i, %bb.ir, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48.i.i.i.i.i.i.i.i.i.i49.i.i, %bb.hv, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i104.i.i, %bb.gw, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fk, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i.i, %bb.ej, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit74.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dt, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cx, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit23.i.i.i.i.i.i.i.i, %bb.by, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit77.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52.i.i.i.i.i.i.i.i.i.i.i.i, %bb.am, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26.i.i.i.i.i.i.i.i
  %.pn.pn.pn = phi { ptr, i32 } [ %common.resume.op.ph.i, %common.resume.sink.split.i ], [ %i.ku, %bb.bn ], [ %i.fk, %bb.ab ], [ %i.amq, %bb.iw ], [ %.pn.i.i.i.i.i.i.i.i.i, %bb.am ], [ %i.gk, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26.i.i.i.i.i.i.i.i ], [ %i.bcv, %bb.mn ], [ %.pn.i24.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bi ], [ %i.jt, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.by ], [ %i.ls, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit77.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.agy, %bb.hk ], [ %.pn.i.i.i.i.i.i.i69.i.i, %bb.cx ], [ %i.pj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit23.i.i.i.i.i.i.i.i ], [ %i.akn, %bb.ig ], [ %.pn.i21.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dt ], [ %i.su, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i57.i.i, %bb.ej ], [ %i.uv, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit74.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.auu, %bb.kp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.i.i.i.i.i.i.i.i108.i, %bb.fk ], [ %i.yt, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i.i ], [ %i.abg, %bb.fv ], [ %.pn.i20.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gg ], [ %i.ace, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i.i90.i, %bb.gw ], [ %i.aef, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bdt, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit85.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i111.i.i, %bb.hv ], [ %i.ahy, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i104.i.i ], [ %i.xt, %bb.ez ], [ %.pn.i20.i.i.i.i.i.i.i.i.i.i53.i.i, %bb.ir ], [ %i.all, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48.i.i.i.i.i.i.i.i.i.i49.i.i ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i80.i.i, %bb.jh ], [ %i.ano, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73.i.i.i.i.i.i.i.i.i.i75.i.i ], [ %i.adh, %bb.gl ], [ %i.rw, %bb.di ], [ %i.oj, %bb.cm ], [ %i.tx, %bb.dy ], [ %.pn.i.i.i.i.i.i.i.i.i153, %bb.la ], [ %i.avs, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26.i.i.i.i.i.i.i.i146 ], [ %i.it, %bb.ax ], [ %.pn.i22.i.i.i.i.i.i.i.i.i.i.i.i, %bb.mc ], [ %i.bak, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit53.i.i.i.i.i.i.i.i.i.i.i.i120 ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i137, %bb.my ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit221, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit225, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit229, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit233, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit236, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit241, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit244, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit248, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit252, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit256, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit259, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit264, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit267, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit271, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %i.azm, %bb.lr ]
  call void @_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %67) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSJ_SM_EEEE27supportsFlatNoNullsFastPathEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSJ_SM_EEEE34ensureStringEncodingSetAtAllInputsEv(ptr nonnull readonly align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSJ_SM_EEEE36propagateStringEncodingFromAllInputsEv(ptr nonnull readonly align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSJ_SM_EEEE16getCanonicalNameEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_12ShortDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSJ_SM_EEEE16unpackInitializeILm1EJnEEEvRKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISV_EERKNS3_11QueryConfigEPNS0_6memory10MemoryPoolERKSR_ISS_INS0_10BaseVectorEESaIS17_EEDpPKT0_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.facebook::velox::SelectivityVector", align 8 ; 17 uses
  %4 = alloca %"class.facebook::velox::DecodedVector", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !855
  %i.d = load ptr, ptr %2, align 8, !tbaa !858    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4                   ; 2 uses
  %.not.i.i = icmp ugt i64 %i.h, 1
  br i1 %.not.i.i, label %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE2atEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.59, i64 noundef 1, i64 noundef %i.h) #35
  unreachable

_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE2atEm.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !859
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.p, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE2atEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 37
  store i8 0, ptr %i.k, align 1, !tbaa !862
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %3, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 -1, ptr %i.a, align 8, !tbaa !555
  invoke void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(38) %3, ptr null, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN8facebook5velox17SelectivityVectorC2Eib.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.m = load ptr, ptr %3, align 8, !tbaa !864    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !866
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #37
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit29
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit29 ], [ %i.l, %bb.e ], [ %i.l, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZN8facebook5velox17SelectivityVectorC2Eib.exit:  ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  store i32 1, ptr %i.u, align 8, !tbaa !867
  store i32 0, ptr %i.t, align 4, !tbaa !875
  store i32 1, ptr %i.s, align 8, !tbaa !876
  store i16 257, ptr %i.v, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !855
  %i.x = load ptr, ptr %2, align 8, !tbaa !858    ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4                 ; 2 uses
  %.not.i.i19 = icmp ugt i64 %i.ab, 1
  br i1 %.not.i.i19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN8facebook5velox17SelectivityVectorC2Eib.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.59, i64 noundef 1, i64 noundef %i.ab) #35
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_ZN8facebook5velox17SelectivityVectorC2Eib.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !859
  invoke void @_ZN8facebook5velox13DecodedVectorC1ERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(94) %i.ad, ptr noundef nonnull align 8 dereferenceable(38) %3, i1 noundef zeroext true)
          to label %_ZNK8facebook5velox4exec12VectorReaderINS0_12ShortDecimalINS0_15IntegerVariableILm2EEENS4_ILm6EEEEEEixEm.exit unwind label %bb.l

_ZNK8facebook5velox4exec12VectorReaderINS0_12ShortDecimalINS0_15IntegerVariableILm2EEENS4_ILm6EEEEEEixEm.exit: ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val17 = load ptr, ptr %i.ae, align 8, !tbaa !9424 ; 2 uses
  %.val18 = load ptr, ptr %1, align 8, !tbaa !556 ; 2 uses
  %i.af = load ptr, ptr %.val18, align 8, !tbaa !582
  %i.ag = invoke i16 @_ZN8facebook5velox24getDecimalPrecisionScaleERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(18) %i.af)
          to label %.noexc21 unwind label %bb.m

.noexc21:                                         ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_12ShortDecimalINS0_15IntegerVariableILm2EEENS4_ILm6EEEEEEixEm.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !582
  %i.aj = invoke i16 @_ZN8facebook5velox24getDecimalPrecisionScaleERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(18) %i.ai)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %.noexc21
  %.sroa.311.0.extract.shift.i.i = lshr i16 %i.ag, 8 ; 2 uses
  %.sroa.3.0.extract.shift.i.i = lshr i16 %i.aj, 8 ; 2 uses
  %5 = sub nsw i16 %.sroa.3.0.extract.shift.i.i, %.sroa.311.0.extract.shift.i.i
  %.sroa.speculated4.i.i = call i16 @llvm.smax.i16(i16 %5, i16 0)
  %i.ak = trunc nuw i16 %.sroa.speculated4.i.i to i8
  store i8 %i.ak, ptr %.val17, align 1, !tbaa !8928
  %6 = sub nsw i16 %.sroa.311.0.extract.shift.i.i, %.sroa.3.0.extract.shift.i.i
  %.sroa.speculated.i.i = call i16 @llvm.smax.i16(i16 %6, i16 0)
  %i.al = trunc nuw i16 %.sroa.speculated.i.i to i8
  %i.am = getelementptr inbounds nuw i8, ptr %.val17, i64 1
  store i8 %i.al, ptr %i.am, align 1, !tbaa !8930
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !864 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i23, label %_ZNSt6vectorImSaImEED2Ev.exit.i24, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !866
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #37
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i24

_ZNSt6vectorImSaImEED2Ev.exit.i24:                ; preds = %bb.i, %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !877 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i1.i, label %_ZN8facebook5velox13DecodedVectorD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i24
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !880
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #37
  br label %_ZN8facebook5velox13DecodedVectorD2Ev.exit

_ZN8facebook5velox13DecodedVectorD2Ev.exit:       ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i24, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.bb = load ptr, ptr %3, align 8, !tbaa !864   ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i25, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN8facebook5velox13DecodedVectorD2Ev.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !866
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bg) #37
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit

_ZN8facebook5velox17SelectivityVectorD2Ev.exit:   ; preds = %_ZN8facebook5velox13DecodedVectorD2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.q

bb.l:                                             ; preds = %bb.f, %bb.g
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %.noexc21, %_ZNK8facebook5velox4exec12VectorReaderINS0_12ShortDecimalINS0_15IntegerVariableILm2EEENS4_ILm6EEEEEEixEm.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %4) #33
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %i.bh, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.bj = load ptr, ptr %3, align 8, !tbaa !864   ; 3 uses
  %.not.i.i.i.i27 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i27, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit29, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !866
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bo) #37
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit29

_ZN8facebook5velox17SelectivityVectorD2Ev.exit29: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %common.resume

bb.p:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE2atEm.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.bp, align 8, !tbaa !9424 ; 2 uses
  %.val16 = load ptr, ptr %1, align 8, !tbaa !556 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.val16, i64 16
  %i.br = load ptr, ptr %.val16, align 8, !tbaa !582
  %i.bs = tail call i16 @_ZN8facebook5velox24getDecimalPrecisionScaleERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(18) %i.br)
  %.sroa.311.0.extract.shift.i.i30 = lshr i16 %i.bs, 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !582
  %i.bu = tail call i16 @_ZN8facebook5velox24getDecimalPrecisionScaleERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(18) %i.bt)
  %.sroa.3.0.extract.shift.i.i32 = lshr i16 %i.bu, 8 ; 2 uses
  %7 = sub nsw i16 %.sroa.3.0.extract.shift.i.i32, %.sroa.311.0.extract.shift.i.i30
  %.sroa.speculated4.i.i32 = tail call i16 @llvm.smax.i16(i16 %7, i16 0)
  %i.bv = trunc nuw i16 %.sroa.speculated4.i.i32 to i8
  store i8 %i.bv, ptr %.val, align 1, !tbaa !8928
  %8 = sub nsw i16 %.sroa.311.0.extract.shift.i.i30, %.sroa.3.0.extract.shift.i.i32
  %.sroa.speculated.i.i33 = tail call i16 @llvm.smax.i16(i16 %8, i16 0)
  %i.bw = trunc nuw i16 %.sroa.speculated.i.i33 to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 1
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !8930
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_122DecimalModulusFunctionINS0_4exec10VectorExecEE4callIlnlEEvRT_RKT0_RKT1_(i8 %.0.val, i8 %.1.val, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, i128 %.0.val1, i64 %.0.val3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.1027", align 16 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.1027", align 16 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.3727", align 16 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not = icmp eq i64 %.0.val3, 0
  br i1 %.not, label %bb.b, label %bb.e, !prof !80

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33, !noalias !9573
  store i64 0, ptr %5, align 16, !tbaa !22, !alias.scope !9576, !noalias !9573
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.a, align 16, !tbaa !22, !alias.scope !9576, !noalias !9573
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.218, i64 27, i64 19, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33, !noalias !9573
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_122DecimalModulusFunctionINS0_4exec10VectorExecEE4callIlnlEEvRT_RKT0_RKT1_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.218) #35
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load ptr, ptr %6, align 8, !tbaa !7      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.f = load i64, ptr %i.d, align 8, !tbaa !22
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i23 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.h = trunc i128 %.0.val1 to i64               ; 2 uses
  %i.i = icmp slt i128 %.0.val1, 0                ; 2 uses
  %i.j = sub nsw i64 0, %i.h
  %spec.select = select i1 %i.i, i64 %i.j, i64 %i.h ; 2 uses
  %i.k = zext i8 %.0.val to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.k
  %i.m = load i128, ptr %i.l, align 16, !tbaa !985
  %i.n = trunc i128 %i.m to i64                   ; 2 uses
  %i.o = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %spec.select, i64 %i.n) ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 1
  br i1 %i.p, label %bb.f, label %_ZN8facebook5velox15checkedMultiplyIlEET_S2_S2_PKc.exit, !prof !80

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !9579
  store ptr @.str.217, ptr %3, align 16, !tbaa !22, !alias.scope !9582, !noalias !9579
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %spec.select, ptr %i.q, align 16, !tbaa !22, !alias.scope !9582, !noalias !9579
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.n, ptr %i.r, align 16, !tbaa !22, !alias.scope !9582, !noalias !9579
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.73, i64 20, i64 828, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !9579
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox15checkedMultiplyIlEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.73) #35
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.w = load i64, ptr %i.u, align 8, !tbaa !22
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %common.resume

_ZN8facebook5velox15checkedMultiplyIlEET_S2_S2_PKc.exit: ; preds = %bb.e
  %.018 = tail call i64 @llvm.abs.i64(i64 %.0.val3, i1 true) ; 2 uses
  %i.y = zext i8 %.1.val to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.y
  %i.aa = load i128, ptr %i.z, align 16, !tbaa !985
  %i.ab = trunc i128 %i.aa to i64                 ; 2 uses
  %i.ac = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.018, i64 %i.ab) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 1
  br i1 %i.ad, label %bb.i, label %_ZN8facebook5velox15checkedMultiplyIlEET_S2_S2_PKc.exit25, !prof !80

bb.i:                                             ; preds = %_ZN8facebook5velox15checkedMultiplyIlEET_S2_S2_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33, !noalias !9585
  store ptr @.str.217, ptr %1, align 16, !tbaa !22, !alias.scope !9588, !noalias !9585
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.018, ptr %i.ae, align 16, !tbaa !22, !alias.scope !9588, !noalias !9585
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.ab, ptr %i.af, align 16, !tbaa !22, !alias.scope !9588, !noalias !9585
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull @.str.73, i64 20, i64 828, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33, !noalias !9585
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox15checkedMultiplyIlEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull @.str.73) #35
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22: ; preds = %bb.k
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !22
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i23: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %common.resume

_ZN8facebook5velox15checkedMultiplyIlEET_S2_S2_PKc.exit25: ; preds = %_ZN8facebook5velox15checkedMultiplyIlEET_S2_S2_PKc.exit
  %i.am = extractvalue { i64, i1 } %i.o, 0
  %i.an = extractvalue { i64, i1 } %i.ac, 0
  %i.ao = srem i64 %i.am, %i.an                   ; 2 uses
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = select i1 %i.i, i64 %i.ap, i64 %i.ao
  store i64 %i.aq, ptr %0, align 8, !tbaa !555
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS3_10VectorExecEEESC_NS0_12ShortDecimalINS0_15IntegerVariableILm3EEENSF_ILm7EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSF_ILm1EEENSF_ILm5EEEEENSE_INSF_ILm2EEENSF_ILm6EEEEEEEEJSN_SQ_EEEE7iterateIJNS3_20ConstantVectorReaderISN_EENSV_ISQ_EEEEEvRNST_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS14_EEvRKNS0_17SelectivityVectorES13_EUlS13_E_EEvS18_S13_T0_EUlS13_E_EEvPKmiibS13_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !9591, !range !78, !noundef !79
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9594
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !555
  %i.h = xor i8 %i.b, 1
  %i.i = zext nneg i8 %i.h to i64
  %i.j = sub nsw i64 0, %i.i
  %i.k = xor i64 %i.g, %i.j
  %i.l = and i64 %i.k, %2                         ; 2 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %.loopexit39, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = shl nsw i32 %1, 6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEESA_NS0_12ShortDecimalINS0_15IntegerVariableILm3EEENSD_ILm7EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSD_ILm1EEENSD_ILm5EEEEENSC_INSD_ILm2EEENSD_ILm6EEEEEEEEJSL_SO_EEEE7iterateIJNS1_20ConstantVectorReaderISL_EENST_ISO_EEEEEvRNSR_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowIS12_EEvRKNS0_17SelectivityVectorES11_EUlS11_E_EEvS16_S11_T0_ENKUlS11_E_clIiEEDaS11_.exit
  %.046 = phi i64 [ %i.l, %.preheader ], [ %i.bs, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEESA_NS0_12ShortDecimalINS0_15IntegerVariableILm3EEENSD_ILm7EEEEENS0_15ConstantCheckerIJNS0_11LongDecimalINSD_ILm1EEENSD_ILm5EEEEENSC_INSD_ILm2EEENSD_ILm6EEEEEEEEJSL_SO_EEEE7iterateIJNS1_20ConstantVectorReaderISL_EENST_ISO_EEEEEvRNSR_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowIS12_EEvRKNS0_17SelectivityVectorES11_EUlS11_E_EEvS16_S11_T0_ENKUlS11_E_clIiEEDaS11_.exit ] ; 3 uses
  %i.p = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.046, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = or disjoint i32 %i.n, %i.q               ; 3 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !9595 ; 2 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !9596, !nonnull !79, !align !977 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !9435
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 0, ptr %i.a, align 8, !tbaa !555
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !9438, !nonnull !79, !align !1001
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !9439, !nonnull !79, !align !977
  %i.z = load i128, ptr %i.w, align 16, !tbaa !985, !noalias !9597
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !555, !noalias !9600
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNS0_12ShortDecimalINSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSJ_SM_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISW_EERKSU_IKNS0_4TypeEERNS1_7EvalCtxERSW_:bb.a
bb.nh:                                            ; preds = %bb.nf
  %i.bex = atomicrmw volatile add ptr %i.bek, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.nh, %bb.ng
  %.0.i.i.i.i.i.i = phi i32 [ %i.ben, %bb.ng ], [ %i.bex, %bb.nh ]
  %i.bey = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bey, label %bb.ni, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, !prof !80

bb.ni:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bej) #33
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit: ; preds = %bb.ni, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ne, %bb.nc, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNS0_12ShortDecimalINSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSJ_SM_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSP_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISW_EEDpRT0_.exit
  %i.bez = load ptr, ptr %67, align 8, !tbaa !1138 ; 3 uses
  %i.bfa = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.bfb = load ptr, ptr %i.bfa, align 8, !tbaa !1144 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bez, %i.bfb
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bff, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i ], [ %i.bez, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %i.bfc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bfd = load i8, ptr %i.bfc, align 8, !tbaa !1141, !range !78, !noundef !79
  %i.bfe = trunc nuw i8 %i.bfd to i1
  store i8 0, ptr %i.bfc, align 8, !tbaa !1141
  br i1 %i.bfe, label %bb.nj, label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

bb.nj:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %.05.i.i.i) #33
  br label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i: ; preds = %bb.nj, %.lr.ph.i.i.i
  %i.bff = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bff, %i.bfb
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1177

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %67, align 8, !tbaa !1138
  br label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit
  %i.bfg = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bez, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bfg, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit, label %bb.nk

bb.nk:                                            ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bfh = getelementptr inbounds nuw i8, ptr %67, i64 16
  %i.bfi = load ptr, ptr %i.bfh, align 8, !tbaa !1178
  %i.bfj = ptrtoint ptr %i.bfi to i64
  %i.bfk = ptrtoint ptr %i.bfg to i64
  %i.bfl = sub i64 %i.bfj, %i.bfk
  call void @_ZdlPvm(ptr noundef nonnull %i.bfg, i64 noundef %i.bfl) #37
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, %bb.nk
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #33
  br label %bb.nl

bb.nl:                                            ; preds = %bb.j, %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #33
  ret void

.body:                                            ; preds = %bb.lr, %bb.mn, %bb.kp, %bb.ig, %bb.iw, %bb.hk, %bb.fv, %bb.gl, %bb.ez, %bb.di, %bb.dy, %bb.cm, %bb.ax, %bb.bn, %bb.ab, %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %common.resume.sink.split.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit27.i.i.i.i.i.i.i.i144, %bb.la, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit55.i.i.i.i.i.i.i.i.i.i.i.i, %bb.mc, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit87.i.i.i.i.i.i.i.i.i.i.i.i, %bb.my, %bb.jh, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73.i.i.i.i.i.i.i.i.i.i75.i.i, %bb.ir, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48.i.i.i.i.i.i.i.i.i.i49.i.i, %bb.hv, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i104.i.i, %bb.gw, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fk, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i.i, %bb.ej, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit74.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dt, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cx, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit23.i.i.i.i.i.i.i.i, %bb.by, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit77.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52.i.i.i.i.i.i.i.i.i.i.i.i, %bb.am, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26.i.i.i.i.i.i.i.i
  %.pn.pn.pn = phi { ptr, i32 } [ %common.resume.op.ph.i, %common.resume.sink.split.i ], [ %i.ku, %bb.bn ], [ %i.fk, %bb.ab ], [ %i.amq, %bb.iw ], [ %.pn.i.i.i.i.i.i.i.i.i, %bb.am ], [ %i.gk, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26.i.i.i.i.i.i.i.i ], [ %i.bcv, %bb.mn ], [ %.pn.i24.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bi ], [ %i.jt, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.by ], [ %i.ls, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit77.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.agy, %bb.hk ], [ %.pn.i.i.i.i.i.i.i69.i.i, %bb.cx ], [ %i.pj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit23.i.i.i.i.i.i.i.i ], [ %i.akn, %bb.ig ], [ %.pn.i21.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dt ], [ %i.su, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i57.i.i, %bb.ej ], [ %i.uv, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit74.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.auu, %bb.kp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.i.i.i.i.i.i.i.i108.i, %bb.fk ], [ %i.yt, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i.i ], [ %i.abg, %bb.fv ], [ %.pn.i20.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gg ], [ %i.ace, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i.i90.i, %bb.gw ], [ %i.aef, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bdt, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit87.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i111.i.i, %bb.hv ], [ %i.ahy, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i104.i.i ], [ %i.xt, %bb.ez ], [ %.pn.i20.i.i.i.i.i.i.i.i.i.i53.i.i, %bb.ir ], [ %i.all, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48.i.i.i.i.i.i.i.i.i.i49.i.i ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i80.i.i, %bb.jh ], [ %i.ano, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73.i.i.i.i.i.i.i.i.i.i75.i.i ], [ %i.adh, %bb.gl ], [ %i.rw, %bb.di ], [ %i.oj, %bb.cm ], [ %i.tx, %bb.dy ], [ %.pn.i.i.i.i.i.i.i.i.i151, %bb.la ], [ %i.avs, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit27.i.i.i.i.i.i.i.i144 ], [ %i.it, %bb.ax ], [ %.pn.i23.i.i.i.i.i.i.i.i.i.i.i.i, %bb.mc ], [ %i.bak, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit55.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i135, %bb.my ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit214, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit218, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit222, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit226, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit229, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit234, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit237, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit241, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit245, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit249, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit252, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit257, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit260, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit264, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %i.azm, %bb.lr ]
  call void @_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %67) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNS0_12ShortDecimalINSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSJ_SM_EEEE27supportsFlatNoNullsFastPathEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNS0_12ShortDecimalINSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSJ_SM_EEEE34ensureStringEncodingSetAtAllInputsEv(ptr nonnull readonly align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNS0_12ShortDecimalINSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSJ_SM_EEEE36propagateStringEncodingFromAllInputsEv(ptr nonnull readonly align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNS0_12ShortDecimalINSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSJ_SM_EEEE16getCanonicalNameEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNS0_12ShortDecimalINSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSJ_SM_EEEE16unpackInitializeILm1EJlEEEvRKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISV_EERKNS3_11QueryConfigEPNS0_6memory10MemoryPoolERKSR_ISS_INS0_10BaseVectorEESaIS17_EEDpPKT0_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.facebook::velox::SelectivityVector", align 8 ; 17 uses
  %4 = alloca %"class.facebook::velox::DecodedVector", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !855
  %i.d = load ptr, ptr %2, align 8, !tbaa !858    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4                   ; 2 uses
  %.not.i.i = icmp ugt i64 %i.h, 1
  br i1 %.not.i.i, label %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE2atEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.59, i64 noundef 1, i64 noundef %i.h) #35
  unreachable

_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE2atEm.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !859
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.q, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE2atEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 37
  store i8 0, ptr %i.k, align 1, !tbaa !862
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %3, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 -1, ptr %i.a, align 8, !tbaa !555
  invoke void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(38) %3, ptr null, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN8facebook5velox17SelectivityVectorC2Eib.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.m = load ptr, ptr %3, align 8, !tbaa !864    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !866
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #37
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit29
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit29 ], [ %i.l, %bb.e ], [ %i.l, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZN8facebook5velox17SelectivityVectorC2Eib.exit:  ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  store i32 1, ptr %i.u, align 8, !tbaa !867
  store i32 0, ptr %i.t, align 4, !tbaa !875
  store i32 1, ptr %i.s, align 8, !tbaa !876
  store i16 257, ptr %i.v, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !855
  %i.x = load ptr, ptr %2, align 8, !tbaa !858    ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4                 ; 2 uses
  %.not.i.i19 = icmp ugt i64 %i.ab, 1
  br i1 %.not.i.i19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN8facebook5velox17SelectivityVectorC2Eib.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.59, i64 noundef 1, i64 noundef %i.ab) #35
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_ZN8facebook5velox17SelectivityVectorC2Eib.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !859
  invoke void @_ZN8facebook5velox13DecodedVectorC1ERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(94) %i.ad, ptr noundef nonnull align 8 dereferenceable(38) %3, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val17 = load ptr, ptr %i.ae, align 8, !tbaa !9733 ; 2 uses
  %.val18 = load ptr, ptr %1, align 8, !tbaa !556 ; 2 uses
  %i.af = load ptr, ptr %.val18, align 8, !tbaa !582
  %i.ag = invoke i16 @_ZN8facebook5velox24getDecimalPrecisionScaleERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(18) %i.af)
          to label %.noexc21 unwind label %bb.n

.noexc21:                                         ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !582
  %i.aj = invoke i16 @_ZN8facebook5velox24getDecimalPrecisionScaleERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(18) %i.ai)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %.noexc21
  %.sroa.311.0.extract.shift.i.i = lshr i16 %i.ag, 8 ; 2 uses
  %.sroa.3.0.extract.shift.i.i = lshr i16 %i.aj, 8 ; 2 uses
  %5 = sub nsw i16 %.sroa.3.0.extract.shift.i.i, %.sroa.311.0.extract.shift.i.i
  %.sroa.speculated4.i.i = call i16 @llvm.smax.i16(i16 %5, i16 0)
  %i.ak = trunc nuw i16 %.sroa.speculated4.i.i to i8
  store i8 %i.ak, ptr %.val17, align 1, !tbaa !8928
  %6 = sub nsw i16 %.sroa.311.0.extract.shift.i.i, %.sroa.3.0.extract.shift.i.i
  %.sroa.speculated.i.i = call i16 @llvm.smax.i16(i16 %6, i16 0)
  %i.al = trunc nuw i16 %.sroa.speculated.i.i to i8
  %i.am = getelementptr inbounds nuw i8, ptr %.val17, i64 1
  store i8 %i.al, ptr %i.am, align 1, !tbaa !8930
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !864 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i23, label %_ZNSt6vectorImSaImEED2Ev.exit.i24, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !866
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #37
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i24

_ZNSt6vectorImSaImEED2Ev.exit.i24:                ; preds = %bb.j, %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !877 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i1.i, label %_ZN8facebook5velox13DecodedVectorD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i24
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !880
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #37
  br label %_ZN8facebook5velox13DecodedVectorD2Ev.exit

_ZN8facebook5velox13DecodedVectorD2Ev.exit:       ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i24, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.bb = load ptr, ptr %3, align 8, !tbaa !864   ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i25, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN8facebook5velox13DecodedVectorD2Ev.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !866
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bg) #37
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit

_ZN8facebook5velox17SelectivityVectorD2Ev.exit:   ; preds = %_ZN8facebook5velox13DecodedVectorD2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.r

bb.m:                                             ; preds = %bb.f, %bb.g
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %.noexc21, %bb.h
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %4) #33
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.n ], [ %i.bh, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.bj = load ptr, ptr %3, align 8, !tbaa !864   ; 3 uses
  %.not.i.i.i.i27 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i27, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit29, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !866
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bo) #37
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit29

_ZN8facebook5velox17SelectivityVectorD2Ev.exit29: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %common.resume

bb.q:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE2atEm.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.bp, align 8, !tbaa !9733 ; 2 uses
  %.val16 = load ptr, ptr %1, align 8, !tbaa !556 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.val16, i64 16
  %i.br = load ptr, ptr %.val16, align 8, !tbaa !582
  %i.bs = tail call i16 @_ZN8facebook5velox24getDecimalPrecisionScaleERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(18) %i.br)
  %.sroa.311.0.extract.shift.i.i30 = lshr i16 %i.bs, 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !582
  %i.bu = tail call i16 @_ZN8facebook5velox24getDecimalPrecisionScaleERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(18) %i.bt)
  %.sroa.3.0.extract.shift.i.i32 = lshr i16 %i.bu, 8 ; 2 uses
  %7 = sub nsw i16 %.sroa.3.0.extract.shift.i.i32, %.sroa.311.0.extract.shift.i.i30
  %.sroa.speculated4.i.i32 = tail call i16 @llvm.smax.i16(i16 %7, i16 0)
  %i.bv = trunc nuw i16 %.sroa.speculated4.i.i32 to i8
  store i8 %i.bv, ptr %.val, align 1, !tbaa !8928
  %8 = sub nsw i16 %.sroa.311.0.extract.shift.i.i30, %.sroa.3.0.extract.shift.i.i32
  %.sroa.speculated.i.i33 = tail call i16 @llvm.smax.i16(i16 %8, i16 0)
  %i.bw = trunc nuw i16 %.sroa.speculated.i.i33 to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 1
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !8930
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_122DecimalModulusFunctionINS0_4exec10VectorExecEE4callInlnEEvRT_RKT0_RKT1_(i8 %.0.val, i8 %.1.val, ptr noundef nonnull writeonly align 16 captures(none) dereferenceable(16) %0, i64 %.0.val1, i128 %.0.val3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.506", align 16 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.506", align 16 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.3546", align 16 ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not = icmp eq i128 %.0.val3, 0
  br i1 %.not, label %bb.b, label %bb.e, !prof !80

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33, !noalias !9873
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %5, i8 0, i64 20, i1 false)
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.218, i64 27, i64 21, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33, !noalias !9873
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_122DecimalModulusFunctionINS0_4exec10VectorExecEE4callInlnEEvRT_RKT0_RKT1_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.218) #35
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = load ptr, ptr %6, align 8, !tbaa !7      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.e = load i64, ptr %i.c, align 8, !tbaa !22
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i22, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i22 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.g = tail call i64 @llvm.abs.i64(i64 %.0.val1, i1 false)
  %.019 = zext i64 %i.g to i128                   ; 2 uses
  %i.h = zext i8 %.0.val to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.h
  %i.j = load i128, ptr %i.i, align 16, !tbaa !985 ; 2 uses
  %i.k = tail call { i128, i1 } @llvm.smul.with.overflow.i128(i128 %.019, i128 %i.j) ; 2 uses
  %i.l = extractvalue { i128, i1 } %i.k, 1
  br i1 %i.l, label %bb.f, label %_ZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKc.exit, !prof !80

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !9876
  store ptr @.str.217, ptr %3, align 16, !tbaa !22, !alias.scope !9879, !noalias !9876
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i128 %.019, ptr %i.m, align 16, !tbaa !22, !alias.scope !9879, !noalias !9876
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i128 %i.j, ptr %i.n, align 16, !tbaa !22, !alias.scope !9879, !noalias !9876
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.73, i64 20, i64 1372, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !9876
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.73) #35
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.s = load i64, ptr %i.q, align 8, !tbaa !22
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %common.resume

_ZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKc.exit: ; preds = %bb.e
  %.018 = tail call i128 @llvm.abs.i128(i128 %.0.val3, i1 true) ; 2 uses
  %i.u = zext i8 %.1.val to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.u
  %i.w = load i128, ptr %i.v, align 16, !tbaa !985 ; 2 uses
  %i.x = tail call { i128, i1 } @llvm.smul.with.overflow.i128(i128 %.018, i128 %i.w) ; 2 uses
  %i.y = extractvalue { i128, i1 } %i.x, 1
  br i1 %i.y, label %bb.i, label %_ZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKc.exit24, !prof !80

bb.i:                                             ; preds = %_ZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33, !noalias !9882
  store ptr @.str.217, ptr %1, align 16, !tbaa !22, !alias.scope !9885, !noalias !9882
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i128 %.018, ptr %i.z, align 16, !tbaa !22, !alias.scope !9885, !noalias !9882
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i128 %i.w, ptr %i.aa, align 16, !tbaa !22, !alias.scope !9885, !noalias !9882
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull @.str.73, i64 20, i64 1372, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33, !noalias !9882
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull @.str.73) #35
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21: ; preds = %bb.k
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !22
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i22: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %common.resume

_ZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKc.exit24: ; preds = %_ZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKc.exit
  %i.ah = extractvalue { i128, i1 } %i.k, 0
  %i.ai = icmp slt i64 %.0.val1, 0
  %i.aj = extractvalue { i128, i1 } %i.x, 0
  %i.ak = srem i128 %i.ah, %i.aj                  ; 2 uses
  %i.al = sub nsw i128 0, %i.ak
  %i.am = select i1 %i.ai, i128 %i.al, i128 %i.ak
  store i128 %i.am, ptr %0, align 16, !tbaa !985
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS3_10VectorExecEEESC_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSF_ILm7EEEEENS0_15ConstantCheckerIJNS0_12ShortDecimalINSF_ILm1EEENSF_ILm5EEEEENSE_INSF_ILm2EEENSF_ILm6EEEEEEEEJSN_SQ_EEEE7iterateIJNS3_20ConstantVectorReaderISN_EENSV_ISQ_EEEEEvRNST_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS14_EEvRKNS0_17SelectivityVectorES13_EUlS13_E_EEvS18_S13_T0_EUlS13_E_EEvPKmiibS13_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i128, align 16                    ; 5 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !9888, !range !78, !noundef !79
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9891
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !555
  %i.h = xor i8 %i.b, 1
  %i.i = zext nneg i8 %i.h to i64
  %i.j = sub nsw i64 0, %i.i
  %i.k = xor i64 %i.g, %i.j
  %i.l = and i64 %i.k, %2                         ; 2 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %.loopexit39, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = shl nsw i32 %1, 6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEESA_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSD_ILm7EEEEENS0_15ConstantCheckerIJNS0_12ShortDecimalINSD_ILm1EEENSD_ILm5EEEEENSC_INSD_ILm2EEENSD_ILm6EEEEEEEEJSL_SO_EEEE7iterateIJNS1_20ConstantVectorReaderISL_EENST_ISO_EEEEEvRNSR_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowIS12_EEvRKNS0_17SelectivityVectorES11_EUlS11_E_EEvS16_S11_T0_ENKUlS11_E_clIiEEDaS11_.exit
  %.046 = phi i64 [ %i.l, %.preheader ], [ %i.bs, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEESA_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSD_ILm7EEEEENS0_15ConstantCheckerIJNS0_12ShortDecimalINSD_ILm1EEENSD_ILm5EEEEENSC_INSD_ILm2EEENSD_ILm6EEEEEEEEJSL_SO_EEEE7iterateIJNS1_20ConstantVectorReaderISL_EENST_ISO_EEEEEvRNSR_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowIS12_EEvRKNS0_17SelectivityVectorES11_EUlS11_E_EEvS16_S11_T0_ENKUlS11_E_clIiEEDaS11_.exit ] ; 3 uses
  %i.p = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.046, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = or disjoint i32 %i.n, %i.q               ; 3 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !9892 ; 2 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !9893, !nonnull !79, !align !977 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !9744
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i128 0, ptr %i.a, align 16, !tbaa !985
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !9747, !nonnull !79, !align !977
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !9748, !nonnull !79, !align !1001
  %i.z = load i64, ptr %i.w, align 8, !tbaa !555, !noalias !9894
  %i.aa = load i128, ptr %i.y, align 16, !tbaa !985, !noalias !9897
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val = load ptr, ptr %i.ab, align 8, !tbaa !9733 ; 2 uses
  %.val17 = load i8, ptr %.val, align 1
  %i.ac = getelementptr i8, ptr %.val, i64 1
  %.val18 = load i8, ptr %i.ac, align 1
  invoke fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_122DecimalModulusFunctionINS0_4exec10VectorExecEE4callInlnEEvRT_RKT0_RKT1_(i8 %.val17, i8 %.val18, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 %i.z, i128 %i.aa)
end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENS0_12ShortDecimalINSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SM_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISW_EERKSU_IKNS0_4TypeEERNS1_7EvalCtxERSW_:bb.a
bb.nh:                                            ; preds = %bb.nf
  %i.bev = atomicrmw volatile add ptr %i.bei, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.nh, %bb.ng
  %.0.i.i.i.i.i.i = phi i32 [ %i.bel, %bb.ng ], [ %i.bev, %bb.nh ]
  %i.bew = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bew, label %bb.ni, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, !prof !80

bb.ni:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.beh) #33
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit: ; preds = %bb.ni, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ne, %bb.nc, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENS0_12ShortDecimalINSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SM_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSP_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISW_EEDpRT0_.exit
  %i.bex = load ptr, ptr %67, align 8, !tbaa !1138 ; 3 uses
  %i.bey = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.bez = load ptr, ptr %i.bey, align 8, !tbaa !1144 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bex, %i.bez
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bfd, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i ], [ %i.bex, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %i.bfa = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bfb = load i8, ptr %i.bfa, align 8, !tbaa !1141, !range !78, !noundef !79
  %i.bfc = trunc nuw i8 %i.bfb to i1
  store i8 0, ptr %i.bfa, align 8, !tbaa !1141
  br i1 %i.bfc, label %bb.nj, label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

bb.nj:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %.05.i.i.i) #33
  br label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i: ; preds = %bb.nj, %.lr.ph.i.i.i
  %i.bfd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i205 = icmp eq ptr %i.bfd, %i.bez
  br i1 %.not.i.i.i205, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1177

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %67, align 8, !tbaa !1138
  br label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit
  %i.bfe = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bex, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bfe, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit, label %bb.nk

bb.nk:                                            ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bff = getelementptr inbounds nuw i8, ptr %67, i64 16
  %i.bfg = load ptr, ptr %i.bff, align 8, !tbaa !1178
  %i.bfh = ptrtoint ptr %i.bfg to i64
  %i.bfi = ptrtoint ptr %i.bfe to i64
  %i.bfj = sub i64 %i.bfh, %i.bfi
  call void @_ZdlPvm(ptr noundef nonnull %i.bfe, i64 noundef %i.bfj) #37
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, %bb.nk
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #33
  br label %bb.nl

bb.nl:                                            ; preds = %bb.j, %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #33
  ret void

.body:                                            ; preds = %bb.lr, %bb.mn, %bb.kp, %bb.ig, %bb.iw, %bb.hk, %bb.fv, %bb.gl, %bb.ez, %bb.di, %bb.dy, %bb.cm, %bb.ax, %bb.bn, %bb.ab, %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %common.resume.sink.split.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26.i.i.i.i.i.i.i.i146, %bb.la, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit53.i.i.i.i.i.i.i.i.i.i.i.i120, %bb.mc, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit85.i.i.i.i.i.i.i.i.i.i.i.i, %bb.my, %bb.jh, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73.i.i.i.i.i.i.i.i.i.i75.i.i, %bb.ir, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48.i.i.i.i.i.i.i.i.i.i49.i.i, %bb.hv, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i104.i.i, %bb.gw, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fk, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i.i, %bb.ej, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit74.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dt, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cx, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit23.i.i.i.i.i.i.i.i, %bb.by, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit77.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52.i.i.i.i.i.i.i.i.i.i.i.i, %bb.am, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26.i.i.i.i.i.i.i.i
  %.pn.pn.pn = phi { ptr, i32 } [ %common.resume.op.ph.i, %common.resume.sink.split.i ], [ %i.ks, %bb.bn ], [ %i.fi, %bb.ab ], [ %i.amo, %bb.iw ], [ %.pn.i.i.i.i.i.i.i.i.i, %bb.am ], [ %i.gi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26.i.i.i.i.i.i.i.i ], [ %i.bct, %bb.mn ], [ %.pn.i24.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bi ], [ %i.jr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.by ], [ %i.lq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit77.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.agw, %bb.hk ], [ %.pn.i.i.i.i.i.i.i69.i.i, %bb.cx ], [ %i.ph, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit23.i.i.i.i.i.i.i.i ], [ %i.akl, %bb.ig ], [ %.pn.i21.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dt ], [ %i.ss, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i57.i.i, %bb.ej ], [ %i.ut, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit74.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aus, %bb.kp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.i.i.i.i.i.i.i.i108.i, %bb.fk ], [ %i.yr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i.i ], [ %i.abe, %bb.fv ], [ %.pn.i20.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gg ], [ %i.acc, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i.i90.i, %bb.gw ], [ %i.aed, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bdr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit85.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i111.i.i, %bb.hv ], [ %i.ahw, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i104.i.i ], [ %i.xr, %bb.ez ], [ %.pn.i20.i.i.i.i.i.i.i.i.i.i53.i.i, %bb.ir ], [ %i.alj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48.i.i.i.i.i.i.i.i.i.i49.i.i ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i80.i.i, %bb.jh ], [ %i.anm, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73.i.i.i.i.i.i.i.i.i.i75.i.i ], [ %i.adf, %bb.gl ], [ %i.ru, %bb.di ], [ %i.oh, %bb.cm ], [ %i.tv, %bb.dy ], [ %.pn.i.i.i.i.i.i.i.i.i153, %bb.la ], [ %i.avq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26.i.i.i.i.i.i.i.i146 ], [ %i.ir, %bb.ax ], [ %.pn.i22.i.i.i.i.i.i.i.i.i.i.i.i, %bb.mc ], [ %i.bai, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit53.i.i.i.i.i.i.i.i.i.i.i.i120 ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i137, %bb.my ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit221, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit225, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit229, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit233, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit236, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit241, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit244, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit248, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit252, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit256, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit259, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit264, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit267, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit271, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %i.azk, %bb.lr ]
  call void @_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %67) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENS0_12ShortDecimalINSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SM_EEEE27supportsFlatNoNullsFastPathEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENS0_12ShortDecimalINSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SM_EEEE34ensureStringEncodingSetAtAllInputsEv(ptr nonnull readonly align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENS0_12ShortDecimalINSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SM_EEEE36propagateStringEncodingFromAllInputsEv(ptr nonnull readonly align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENS0_12ShortDecimalINSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SM_EEEE16getCanonicalNameEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENS0_12ShortDecimalINSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SM_EEEE16unpackInitializeILm1EJnEEEvRKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISV_EERKNS3_11QueryConfigEPNS0_6memory10MemoryPoolERKSR_ISS_INS0_10BaseVectorEESaIS17_EEDpPKT0_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.facebook::velox::SelectivityVector", align 8 ; 17 uses
  %4 = alloca %"class.facebook::velox::DecodedVector", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !855
  %i.d = load ptr, ptr %2, align 8, !tbaa !858    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4                   ; 2 uses
  %.not.i.i = icmp ugt i64 %i.h, 1
  br i1 %.not.i.i, label %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE2atEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.59, i64 noundef 1, i64 noundef %i.h) #35
  unreachable

_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE2atEm.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !859
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.p, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE2atEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 37
  store i8 0, ptr %i.k, align 1, !tbaa !862
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %3, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 -1, ptr %i.a, align 8, !tbaa !555
  invoke void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(38) %3, ptr null, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN8facebook5velox17SelectivityVectorC2Eib.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.m = load ptr, ptr %3, align 8, !tbaa !864    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !866
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #37
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit29
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit29 ], [ %i.l, %bb.e ], [ %i.l, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZN8facebook5velox17SelectivityVectorC2Eib.exit:  ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  store i32 1, ptr %i.u, align 8, !tbaa !867
  store i32 0, ptr %i.t, align 4, !tbaa !875
  store i32 1, ptr %i.s, align 8, !tbaa !876
  store i16 257, ptr %i.v, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !855
  %i.x = load ptr, ptr %2, align 8, !tbaa !858    ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4                 ; 2 uses
  %.not.i.i19 = icmp ugt i64 %i.ab, 1
  br i1 %.not.i.i19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN8facebook5velox17SelectivityVectorC2Eib.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.59, i64 noundef 1, i64 noundef %i.ab) #35
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_ZN8facebook5velox17SelectivityVectorC2Eib.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !859
  invoke void @_ZN8facebook5velox13DecodedVectorC1ERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(94) %i.ad, ptr noundef nonnull align 8 dereferenceable(38) %3, i1 noundef zeroext true)
          to label %_ZNK8facebook5velox4exec12VectorReaderINS0_12ShortDecimalINS0_15IntegerVariableILm2EEENS4_ILm6EEEEEEixEm.exit unwind label %bb.l

_ZNK8facebook5velox4exec12VectorReaderINS0_12ShortDecimalINS0_15IntegerVariableILm2EEENS4_ILm6EEEEEEixEm.exit: ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val17 = load ptr, ptr %i.ae, align 8, !tbaa !10027 ; 2 uses
  %.val18 = load ptr, ptr %1, align 8, !tbaa !556 ; 2 uses
  %i.af = load ptr, ptr %.val18, align 8, !tbaa !582
  %i.ag = invoke i16 @_ZN8facebook5velox24getDecimalPrecisionScaleERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(18) %i.af)
          to label %.noexc21 unwind label %bb.m

.noexc21:                                         ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_12ShortDecimalINS0_15IntegerVariableILm2EEENS4_ILm6EEEEEEixEm.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !582
  %i.aj = invoke i16 @_ZN8facebook5velox24getDecimalPrecisionScaleERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(18) %i.ai)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %.noexc21
  %.sroa.311.0.extract.shift.i.i = lshr i16 %i.ag, 8 ; 2 uses
  %.sroa.3.0.extract.shift.i.i = lshr i16 %i.aj, 8 ; 2 uses
  %5 = sub nsw i16 %.sroa.3.0.extract.shift.i.i, %.sroa.311.0.extract.shift.i.i
  %.sroa.speculated4.i.i = call i16 @llvm.smax.i16(i16 %5, i16 0)
  %i.ak = trunc nuw i16 %.sroa.speculated4.i.i to i8
  store i8 %i.ak, ptr %.val17, align 1, !tbaa !8928
  %6 = sub nsw i16 %.sroa.311.0.extract.shift.i.i, %.sroa.3.0.extract.shift.i.i
  %.sroa.speculated.i.i = call i16 @llvm.smax.i16(i16 %6, i16 0)
  %i.al = trunc nuw i16 %.sroa.speculated.i.i to i8
  %i.am = getelementptr inbounds nuw i8, ptr %.val17, i64 1
  store i8 %i.al, ptr %i.am, align 1, !tbaa !8930
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !864 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i23, label %_ZNSt6vectorImSaImEED2Ev.exit.i24, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !866
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #37
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i24

_ZNSt6vectorImSaImEED2Ev.exit.i24:                ; preds = %bb.i, %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !877 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i1.i, label %_ZN8facebook5velox13DecodedVectorD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i24
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !880
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #37
  br label %_ZN8facebook5velox13DecodedVectorD2Ev.exit

_ZN8facebook5velox13DecodedVectorD2Ev.exit:       ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i24, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.bb = load ptr, ptr %3, align 8, !tbaa !864   ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i25, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN8facebook5velox13DecodedVectorD2Ev.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !866
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bg) #37
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit

_ZN8facebook5velox17SelectivityVectorD2Ev.exit:   ; preds = %_ZN8facebook5velox13DecodedVectorD2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.q

bb.l:                                             ; preds = %bb.f, %bb.g
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %.noexc21, %_ZNK8facebook5velox4exec12VectorReaderINS0_12ShortDecimalINS0_15IntegerVariableILm2EEENS4_ILm6EEEEEEixEm.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %4) #33
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.m ], [ %i.bh, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.bj = load ptr, ptr %3, align 8, !tbaa !864   ; 3 uses
  %.not.i.i.i.i27 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i27, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit29, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !866
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bo) #37
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit29

_ZN8facebook5velox17SelectivityVectorD2Ev.exit29: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %common.resume

bb.p:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE2atEm.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.bp, align 8, !tbaa !10027 ; 2 uses
  %.val16 = load ptr, ptr %1, align 8, !tbaa !556 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.val16, i64 16
  %i.br = load ptr, ptr %.val16, align 8, !tbaa !582
  %i.bs = tail call i16 @_ZN8facebook5velox24getDecimalPrecisionScaleERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(18) %i.br)
  %.sroa.311.0.extract.shift.i.i30 = lshr i16 %i.bs, 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !582
  %i.bu = tail call i16 @_ZN8facebook5velox24getDecimalPrecisionScaleERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(18) %i.bt)
  %.sroa.3.0.extract.shift.i.i32 = lshr i16 %i.bu, 8 ; 2 uses
  %7 = sub nsw i16 %.sroa.3.0.extract.shift.i.i32, %.sroa.311.0.extract.shift.i.i30
  %.sroa.speculated4.i.i32 = tail call i16 @llvm.smax.i16(i16 %7, i16 0)
  %i.bv = trunc nuw i16 %.sroa.speculated4.i.i32 to i8
  store i8 %i.bv, ptr %.val, align 1, !tbaa !8928
  %8 = sub nsw i16 %.sroa.311.0.extract.shift.i.i30, %.sroa.3.0.extract.shift.i.i32
  %.sroa.speculated.i.i33 = tail call i16 @llvm.smax.i16(i16 %8, i16 0)
  %i.bw = trunc nuw i16 %.sroa.speculated.i.i33 to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 1
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !8930
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_122DecimalModulusFunctionINS0_4exec10VectorExecEE4callInnlEEvRT_RKT0_RKT1_(i8 %.0.val, i8 %.1.val, ptr noundef nonnull writeonly align 16 captures(none) dereferenceable(16) %0, i128 %.0.val1, i64 %.0.val3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.1027", align 16 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.506", align 16 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.3727", align 16 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not = icmp eq i64 %.0.val3, 0
  br i1 %.not, label %bb.b, label %bb.e, !prof !80

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33, !noalias !10176
  store i64 0, ptr %5, align 16, !tbaa !22, !alias.scope !10179, !noalias !10176
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.a, align 16, !tbaa !22, !alias.scope !10179, !noalias !10176
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.218, i64 27, i64 19, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33, !noalias !10176
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_122DecimalModulusFunctionINS0_4exec10VectorExecEE4callInnlEEvRT_RKT0_RKT1_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.218) #35
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load ptr, ptr %6, align 8, !tbaa !7      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.f = load i64, ptr %i.d, align 8, !tbaa !22
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i23 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %.019 = tail call i128 @llvm.abs.i128(i128 %.0.val1, i1 true) ; 2 uses
  %i.h = zext i8 %.0.val to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.h
  %i.j = load i128, ptr %i.i, align 16, !tbaa !985 ; 2 uses
  %i.k = tail call { i128, i1 } @llvm.smul.with.overflow.i128(i128 %.019, i128 %i.j) ; 2 uses
  %i.l = extractvalue { i128, i1 } %i.k, 1
  br i1 %i.l, label %bb.f, label %_ZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKc.exit, !prof !80

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !10182
  store ptr @.str.217, ptr %3, align 16, !tbaa !22, !alias.scope !10185, !noalias !10182
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i128 %.019, ptr %i.m, align 16, !tbaa !22, !alias.scope !10185, !noalias !10182
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i128 %i.j, ptr %i.n, align 16, !tbaa !22, !alias.scope !10185, !noalias !10182
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.73, i64 20, i64 1372, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !10182
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.73) #35
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.s = load i64, ptr %i.q, align 8, !tbaa !22
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %common.resume

_ZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKc.exit: ; preds = %bb.e
  %.018.off0 = tail call i64 @llvm.abs.i64(i64 %.0.val3, i1 false) ; 2 uses
  %i.u = zext i8 %.1.val to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.u
  %i.w = load i128, ptr %i.v, align 16, !tbaa !985
  %i.x = trunc i128 %i.w to i64                   ; 2 uses
  %i.y = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.018.off0, i64 %i.x) ; 2 uses
  %i.z = extractvalue { i64, i1 } %i.y, 1
  br i1 %i.z, label %bb.i, label %_ZN8facebook5velox15checkedMultiplyIlEET_S2_S2_PKc.exit, !prof !80

bb.i:                                             ; preds = %_ZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33, !noalias !10188
  store ptr @.str.217, ptr %1, align 16, !tbaa !22, !alias.scope !10191, !noalias !10188
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.018.off0, ptr %i.aa, align 16, !tbaa !22, !alias.scope !10191, !noalias !10188
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.x, ptr %i.ab, align 16, !tbaa !22, !alias.scope !10191, !noalias !10188
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull @.str.73, i64 20, i64 828, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33, !noalias !10188
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox15checkedMultiplyIlEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull @.str.73) #35
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22: ; preds = %bb.k
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !22
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i23: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %common.resume

_ZN8facebook5velox15checkedMultiplyIlEET_S2_S2_PKc.exit: ; preds = %_ZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKc.exit
  %i.ai = extractvalue { i128, i1 } %i.k, 0
  %i.aj = extractvalue { i64, i1 } %i.y, 0
  %i.ak = sext i64 %i.aj to i128
  %i.al = srem i128 %i.ai, %i.ak                  ; 2 uses
  %i.am = sub nsw i128 0, %i.al
  %.inv6 = icmp slt i128 %.0.val1, 0
  %i.an = select i1 %.inv6, i128 %i.am, i128 %i.al
  store i128 %i.an, ptr %0, align 16, !tbaa !985
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS3_10VectorExecEEESC_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSF_ILm7EEEEENS0_15ConstantCheckerIJNSE_INSF_ILm1EEENSF_ILm5EEEEENS0_12ShortDecimalINSF_ILm2EEENSF_ILm6EEEEEEEEJSM_SQ_EEEE7iterateIJNS3_20ConstantVectorReaderISM_EENSV_ISQ_EEEEEvRNST_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS14_EEvRKNS0_17SelectivityVectorES13_EUlS13_E_EEvS18_S13_T0_EUlS13_E_EEvPKmiibS13_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i128, align 16                    ; 5 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !10194, !range !78, !noundef !79
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10197
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !555
  %i.h = xor i8 %i.b, 1
  %i.i = zext nneg i8 %i.h to i64
  %i.j = sub nsw i64 0, %i.i
  %i.k = xor i64 %i.g, %i.j
  %i.l = and i64 %i.k, %2                         ; 2 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %.loopexit39, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = shl nsw i32 %1, 6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEESA_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSD_ILm7EEEEENS0_15ConstantCheckerIJNSC_INSD_ILm1EEENSD_ILm5EEEEENS0_12ShortDecimalINSD_ILm2EEENSD_ILm6EEEEEEEEJSK_SO_EEEE7iterateIJNS1_20ConstantVectorReaderISK_EENST_ISO_EEEEEvRNSR_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowIS12_EEvRKNS0_17SelectivityVectorES11_EUlS11_E_EEvS16_S11_T0_ENKUlS11_E_clIiEEDaS11_.exit
  %.046 = phi i64 [ %i.l, %.preheader ], [ %i.bs, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEESA_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSD_ILm7EEEEENS0_15ConstantCheckerIJNSC_INSD_ILm1EEENSD_ILm5EEEEENS0_12ShortDecimalINSD_ILm2EEENSD_ILm6EEEEEEEEJSK_SO_EEEE7iterateIJNS1_20ConstantVectorReaderISK_EENST_ISO_EEEEEvRNSR_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowIS12_EEvRKNS0_17SelectivityVectorES11_EUlS11_E_EEvS16_S11_T0_ENKUlS11_E_clIiEEDaS11_.exit ] ; 3 uses
  %i.p = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.046, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = or disjoint i32 %i.n, %i.q               ; 3 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !10198 ; 2 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !10199, !nonnull !79, !align !977 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !10038
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i128 0, ptr %i.a, align 16, !tbaa !985
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !10041, !nonnull !79, !align !1001
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !10042, !nonnull !79, !align !977
  %i.z = load i128, ptr %i.w, align 16, !tbaa !985, !noalias !10200
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !555, !noalias !10203
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val = load ptr, ptr %i.ab, align 8, !tbaa !10027 ; 2 uses
  %.val17 = load i8, ptr %.val, align 1
end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SL_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISV_EERKST_IKNS0_4TypeEERNS1_7EvalCtxERSV_:bb.a
bb.nl:                                            ; preds = %bb.nj
  %i.bga = atomicrmw volatile add ptr %i.bfn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.nl, %bb.nk
  %.0.i.i.i.i.i.i = phi i32 [ %i.bfq, %bb.nk ], [ %i.bga, %bb.nl ]
  %i.bgb = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bgb, label %bb.nm, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, !prof !80

bb.nm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bfm) #33
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit: ; preds = %bb.nm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ni, %bb.ng, %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SL_EEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSO_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISV_EEDpRT0_.exit
  %i.bgc = load ptr, ptr %67, align 8, !tbaa !1138 ; 3 uses
  %i.bgd = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.bge = load ptr, ptr %i.bgd, align 8, !tbaa !1144 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bgc, %i.bge
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bgi, %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i ], [ %i.bgc, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %i.bgf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.bgg = load i8, ptr %i.bgf, align 8, !tbaa !1141, !range !78, !noundef !79
  %i.bgh = trunc nuw i8 %i.bgg to i1
  store i8 0, ptr %i.bgf, align 8, !tbaa !1141
  br i1 %i.bgh, label %bb.nn, label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

bb.nn:                                            ; preds = %.lr.ph.i.i.i
  call void @_ZN8facebook5velox4exec18LocalDecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %.05.i.i.i) #33
  br label %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i: ; preds = %bb.nn, %.lr.ph.i.i.i
  %i.bgi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i202 = icmp eq ptr %i.bgi, %i.bge
  br i1 %.not.i.i.i202, label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1177

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %67, align 8, !tbaa !1138
  br label %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit
  %i.bgj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bgc, %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bgj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit, label %bb.no

bb.no:                                            ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i
  %i.bgk = getelementptr inbounds nuw i8, ptr %67, i64 16
  %i.bgl = load ptr, ptr %i.bgk, align 8, !tbaa !1178
  %i.bgm = ptrtoint ptr %i.bgl to i64
  %i.bgn = ptrtoint ptr %i.bgj to i64
  %i.bgo = sub i64 %i.bgm, %i.bgn
  call void @_ZdlPvm(ptr noundef nonnull %i.bgj, i64 noundef %i.bgo) #37
  br label %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit

_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEES5_EvT_S7_RSaIT0_E.exit.i, %bb.no
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #33
  br label %bb.np

bb.np:                                            ; preds = %bb.n, %_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #33
  ret void

.body:                                            ; preds = %bb.lv, %bb.mr, %bb.kt, %bb.ik, %bb.ja, %bb.ho, %bb.fz, %bb.gp, %bb.fd, %bb.dm, %bb.ec, %bb.cq, %bb.bb, %bb.br, %bb.af, %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %common.resume.sink.split.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit28.i.i.i.i.i.i.i.i145, %bb.le, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56.i.i.i.i.i.i.i.i.i.i.i.i120, %bb.mg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit89.i.i.i.i.i.i.i.i.i.i.i.i, %bb.nc, %bb.jl, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73.i.i.i.i.i.i.i.i.i.i75.i.i, %bb.iv, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48.i.i.i.i.i.i.i.i.i.i49.i.i, %bb.hz, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i104.i.i, %bb.ha, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gk, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fo, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i.i, %bb.en, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit74.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dx, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49.i.i.i.i.i.i.i.i.i.i.i.i, %bb.db, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit23.i.i.i.i.i.i.i.i, %bb.cc, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit77.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bm, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26.i.i.i.i.i.i.i.i
  %.pn.pn.pn = phi { ptr, i32 } [ %common.resume.op.ph.i, %common.resume.sink.split.i ], [ %i.lx, %bb.br ], [ %i.gn, %bb.af ], [ %i.ant, %bb.ja ], [ %.pn.i.i.i.i.i.i.i.i.i, %bb.aq ], [ %i.hn, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit26.i.i.i.i.i.i.i.i ], [ %i.bdy, %bb.mr ], [ %.pn.i24.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bm ], [ %i.kw, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit52.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cc ], [ %i.mv, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit77.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aib, %bb.ho ], [ %.pn.i.i.i.i.i.i.i69.i.i, %bb.db ], [ %i.qm, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit23.i.i.i.i.i.i.i.i ], [ %i.alq, %bb.ik ], [ %.pn.i21.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dx ], [ %i.tx, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit49.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i57.i.i, %bb.en ], [ %i.vy, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit74.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.avx, %bb.kt ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.i.i.i.i.i.i.i.i108.i, %bb.fo ], [ %i.zw, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i.i.i ], [ %i.acj, %bb.fz ], [ %.pn.i20.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gk ], [ %i.adh, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i.i90.i, %bb.ha ], [ %i.afi, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bew, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit89.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.pn.i.i.i.i.i.i.i111.i.i, %bb.hz ], [ %i.ajb, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit22.i.i.i.i.i.i104.i.i ], [ %i.yw, %bb.fd ], [ %.pn.i20.i.i.i.i.i.i.i.i.i.i53.i.i, %bb.iv ], [ %i.amo, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit48.i.i.i.i.i.i.i.i.i.i49.i.i ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i80.i.i, %bb.jl ], [ %i.aor, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit73.i.i.i.i.i.i.i.i.i.i75.i.i ], [ %i.aek, %bb.gp ], [ %i.sz, %bb.dm ], [ %i.pm, %bb.cq ], [ %i.va, %bb.ec ], [ %.pn.i.i.i.i.i.i.i.i.i152, %bb.le ], [ %i.awv, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit28.i.i.i.i.i.i.i.i145 ], [ %i.jw, %bb.bb ], [ %.pn.i23.i.i.i.i.i.i.i.i.i.i.i.i, %bb.mg ], [ %i.bbn, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit56.i.i.i.i.i.i.i.i.i.i.i.i120 ], [ %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i136, %bb.nc ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit222, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit226, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit230, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit234, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit237, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit242, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit245, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit249, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit253, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit257, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit260, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit265, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit268, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit272, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %i.bap, %bb.lv ]
  call void @_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %67) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SL_EEEE27supportsFlatNoNullsFastPathEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SL_EEEE34ensureStringEncodingSetAtAllInputsEv(ptr nonnull readonly align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SL_EEEE36propagateStringEncodingFromAllInputsEv(ptr nonnull readonly align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SL_EEEE16getCanonicalNameEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSB_ILm7EEEEENS0_15ConstantCheckerIJNSA_INSB_ILm1EEENSB_ILm5EEEEENSA_INSB_ILm2EEENSB_ILm6EEEEEEEEJSI_SL_EEEE16unpackInitializeILm1EJnEEEvRKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISU_EERKNS3_11QueryConfigEPNS0_6memory10MemoryPoolERKSQ_ISR_INS0_10BaseVectorEESaIS16_EEDpPKT0_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.facebook::velox::SelectivityVector", align 8 ; 17 uses
  %4 = alloca %"class.facebook::velox::DecodedVector", align 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !855
  %i.d = load ptr, ptr %2, align 8, !tbaa !858    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 4                   ; 2 uses
  %.not.i.i = icmp ugt i64 %i.h, 1
  br i1 %.not.i.i, label %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE2atEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.59, i64 noundef 1, i64 noundef %i.h) #35
  unreachable

_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE2atEm.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !859
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.q, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE2atEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 37
  store i8 0, ptr %i.k, align 1, !tbaa !862
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %3, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 -1, ptr %i.a, align 8, !tbaa !555
  invoke void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(38) %3, ptr null, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN8facebook5velox17SelectivityVectorC2Eib.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.m = load ptr, ptr %3, align 8, !tbaa !864    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !866
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #37
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit29
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit29 ], [ %i.l, %bb.e ], [ %i.l, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZN8facebook5velox17SelectivityVectorC2Eib.exit:  ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  store i32 1, ptr %i.u, align 8, !tbaa !867
  store i32 0, ptr %i.t, align 4, !tbaa !875
  store i32 1, ptr %i.s, align 8, !tbaa !876
  store i16 257, ptr %i.v, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !855
  %i.x = load ptr, ptr %2, align 8, !tbaa !858    ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4                 ; 2 uses
  %.not.i.i19 = icmp ugt i64 %i.ab, 1
  br i1 %.not.i.i19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN8facebook5velox17SelectivityVectorC2Eib.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.59, i64 noundef 1, i64 noundef %i.ab) #35
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_ZN8facebook5velox17SelectivityVectorC2Eib.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !859
  invoke void @_ZN8facebook5velox13DecodedVectorC1ERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(94) %i.ad, ptr noundef nonnull align 8 dereferenceable(38) %3, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val17 = load ptr, ptr %i.ae, align 8, !tbaa !10336 ; 2 uses
  %.val18 = load ptr, ptr %1, align 8, !tbaa !556 ; 2 uses
  %i.af = load ptr, ptr %.val18, align 8, !tbaa !582
  %i.ag = invoke i16 @_ZN8facebook5velox24getDecimalPrecisionScaleERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(18) %i.af)
          to label %.noexc21 unwind label %bb.n

.noexc21:                                         ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !582
  %i.aj = invoke i16 @_ZN8facebook5velox24getDecimalPrecisionScaleERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(18) %i.ai)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %.noexc21
  %.sroa.311.0.extract.shift.i.i = lshr i16 %i.ag, 8 ; 2 uses
  %.sroa.3.0.extract.shift.i.i = lshr i16 %i.aj, 8 ; 2 uses
  %5 = sub nsw i16 %.sroa.3.0.extract.shift.i.i, %.sroa.311.0.extract.shift.i.i
  %.sroa.speculated4.i.i = call i16 @llvm.smax.i16(i16 %5, i16 0)
  %i.ak = trunc nuw i16 %.sroa.speculated4.i.i to i8
  store i8 %i.ak, ptr %.val17, align 1, !tbaa !8928
  %6 = sub nsw i16 %.sroa.311.0.extract.shift.i.i, %.sroa.3.0.extract.shift.i.i
  %.sroa.speculated.i.i = call i16 @llvm.smax.i16(i16 %6, i16 0)
  %i.al = trunc nuw i16 %.sroa.speculated.i.i to i8
  %i.am = getelementptr inbounds nuw i8, ptr %.val17, i64 1
  store i8 %i.al, ptr %i.am, align 1, !tbaa !8930
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !864 ; 3 uses
  %.not.i.i.i.i23 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i23, label %_ZNSt6vectorImSaImEED2Ev.exit.i24, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !866
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #37
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i24

_ZNSt6vectorImSaImEED2Ev.exit.i24:                ; preds = %bb.j, %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !877 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i1.i, label %_ZN8facebook5velox13DecodedVectorD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i24
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !880
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #37
  br label %_ZN8facebook5velox13DecodedVectorD2Ev.exit

_ZN8facebook5velox13DecodedVectorD2Ev.exit:       ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i24, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.bb = load ptr, ptr %3, align 8, !tbaa !864   ; 3 uses
  %.not.i.i.i.i25 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i25, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN8facebook5velox13DecodedVectorD2Ev.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !866
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bg) #37
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit

_ZN8facebook5velox17SelectivityVectorD2Ev.exit:   ; preds = %_ZN8facebook5velox13DecodedVectorD2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.r

bb.m:                                             ; preds = %bb.f, %bb.g
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %.noexc21, %bb.h
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %4) #33
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.n ], [ %i.bh, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.bj = load ptr, ptr %3, align 8, !tbaa !864   ; 3 uses
  %.not.i.i.i.i27 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i27, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit29, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !866
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bj to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef %i.bo) #37
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit29

_ZN8facebook5velox17SelectivityVectorD2Ev.exit29: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %common.resume

bb.q:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE2atEm.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.bp, align 8, !tbaa !10336 ; 2 uses
  %.val16 = load ptr, ptr %1, align 8, !tbaa !556 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.val16, i64 16
  %i.br = load ptr, ptr %.val16, align 8, !tbaa !582
  %i.bs = tail call i16 @_ZN8facebook5velox24getDecimalPrecisionScaleERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(18) %i.br)
  %.sroa.311.0.extract.shift.i.i30 = lshr i16 %i.bs, 8 ; 2 uses
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !582
  %i.bu = tail call i16 @_ZN8facebook5velox24getDecimalPrecisionScaleERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(18) %i.bt)
  %.sroa.3.0.extract.shift.i.i32 = lshr i16 %i.bu, 8 ; 2 uses
  %7 = sub nsw i16 %.sroa.3.0.extract.shift.i.i32, %.sroa.311.0.extract.shift.i.i30
  %.sroa.speculated4.i.i32 = tail call i16 @llvm.smax.i16(i16 %7, i16 0)
  %i.bv = trunc nuw i16 %.sroa.speculated4.i.i32 to i8
  store i8 %i.bv, ptr %.val, align 1, !tbaa !8928
  %8 = sub nsw i16 %.sroa.311.0.extract.shift.i.i30, %.sroa.3.0.extract.shift.i.i32
  %.sroa.speculated.i.i33 = tail call i16 @llvm.smax.i16(i16 %8, i16 0)
  %i.bw = trunc nuw i16 %.sroa.speculated.i.i33 to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 1
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !8930
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_122DecimalModulusFunctionINS0_4exec10VectorExecEE4callInnnEEvRT_RKT0_RKT1_(i8 %.0.val, i8 %.1.val, ptr noundef nonnull writeonly align 16 captures(none) dereferenceable(16) %0, i128 %.0.val1, i128 %.0.val3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.fmt::v11::detail::format_arg_store.506", align 16 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.506", align 16 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.3546", align 16 ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not = icmp eq i128 %.0.val3, 0
  br i1 %.not, label %bb.b, label %bb.e, !prof !80

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33, !noalias !10476
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %5, i8 0, i64 20, i1 false)
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.218, i64 27, i64 21, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33, !noalias !10476
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_122DecimalModulusFunctionINS0_4exec10VectorExecEE4callInnnEEvRT_RKT0_RKT1_E18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.218) #35
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = load ptr, ptr %6, align 8, !tbaa !7      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.e = load i64, ptr %i.c, align 8, !tbaa !22
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %.019 = tail call i128 @llvm.abs.i128(i128 %.0.val1, i1 true) ; 2 uses
  %i.g = zext i8 %.0.val to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.g
  %i.i = load i128, ptr %i.h, align 16, !tbaa !985 ; 2 uses
  %i.j = tail call { i128, i1 } @llvm.smul.with.overflow.i128(i128 %.019, i128 %i.i) ; 2 uses
  %i.k = extractvalue { i128, i1 } %i.j, 1
  br i1 %i.k, label %bb.f, label %_ZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKc.exit, !prof !80

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !10479
  store ptr @.str.217, ptr %3, align 16, !tbaa !22, !alias.scope !10482, !noalias !10479
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i128 %.019, ptr %i.l, align 16, !tbaa !22, !alias.scope !10482, !noalias !10479
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i128 %i.i, ptr %i.m, align 16, !tbaa !22, !alias.scope !10482, !noalias !10479
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.73, i64 20, i64 1372, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !10479
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.73) #35
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.r = load i64, ptr %i.p, align 8, !tbaa !22
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %common.resume

_ZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKc.exit: ; preds = %bb.e
  %.018 = tail call i128 @llvm.abs.i128(i128 %.0.val3, i1 true) ; 2 uses
  %i.t = zext i8 %.1.val to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.t
  %i.v = load i128, ptr %i.u, align 16, !tbaa !985 ; 2 uses
  %i.w = tail call { i128, i1 } @llvm.smul.with.overflow.i128(i128 %.018, i128 %i.v) ; 2 uses
  %i.x = extractvalue { i128, i1 } %i.w, 1
  br i1 %i.x, label %bb.i, label %_ZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKc.exit26, !prof !80

bb.i:                                             ; preds = %_ZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33, !noalias !10485
  store ptr @.str.217, ptr %1, align 16, !tbaa !22, !alias.scope !10488, !noalias !10485
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i128 %.018, ptr %i.y, align 16, !tbaa !22, !alias.scope !10488, !noalias !10485
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i128 %i.v, ptr %i.z, align 16, !tbaa !22, !alias.scope !10488, !noalias !10485
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull @.str.73, i64 20, i64 1372, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33, !noalias !10485
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nonnull @.str.73) #35
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23: ; preds = %bb.k
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !22
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i24: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %common.resume

_ZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKc.exit26: ; preds = %_ZN8facebook5velox15checkedMultiplyInEET_S2_S2_PKc.exit
  %i.ag = extractvalue { i128, i1 } %i.j, 0
  %i.ah = extractvalue { i128, i1 } %i.w, 0
  %i.ai = srem i128 %i.ag, %i.ah                  ; 2 uses
  %i.aj = sub nsw i128 0, %i.ai
  %.inv6 = icmp slt i128 %.0.val1, 0
  %i.ak = select i1 %.inv6, i128 %i.aj, i128 %i.ai
  store i128 %i.ak, ptr %0, align 16, !tbaa !985
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS3_10VectorExecEEESC_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSF_ILm7EEEEENS0_15ConstantCheckerIJNSE_INSF_ILm1EEENSF_ILm5EEEEENSE_INSF_ILm2EEENSF_ILm6EEEEEEEEJSM_SP_EEEE7iterateIJNS3_20ConstantVectorReaderISM_EENSU_ISP_EEEEEvRNSS_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowIS13_EEvRKNS0_17SelectivityVectorES12_EUlS12_E_EEvS17_S12_T0_EUlS12_E_EEvPKmiibS12_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i128, align 16                    ; 5 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !10491, !range !78, !noundef !79
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10494
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !555
  %i.h = xor i8 %i.b, 1
  %i.i = zext nneg i8 %i.h to i64
  %i.j = sub nsw i64 0, %i.i
  %i.k = xor i64 %i.g, %i.j
  %i.l = and i64 %i.k, %2                         ; 2 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %.loopexit39, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = shl nsw i32 %1, 6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEESA_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSD_ILm7EEEEENS0_15ConstantCheckerIJNSC_INSD_ILm1EEENSD_ILm5EEEEENSC_INSD_ILm2EEENSD_ILm6EEEEEEEEJSK_SN_EEEE7iterateIJNS1_20ConstantVectorReaderISK_EENSS_ISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowIS11_EEvRKNS0_17SelectivityVectorES10_EUlS10_E_EEvS15_S10_T0_ENKUlS10_E_clIiEEDaS10_.exit
  %.046 = phi i64 [ %i.l, %.preheader ], [ %i.bs, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_122DecimalModulusFunctionINS1_10VectorExecEEESA_NS0_11LongDecimalINS0_15IntegerVariableILm3EEENSD_ILm7EEEEENS0_15ConstantCheckerIJNSC_INSD_ILm1EEENSD_ILm5EEEEENSC_INSD_ILm2EEENSD_ILm6EEEEEEEEJSK_SN_EEEE7iterateIJNS1_20ConstantVectorReaderISK_EENSS_ISN_EEEEEvRNSQ_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowIS11_EEvRKNS0_17SelectivityVectorES10_EUlS10_E_EEvS15_S10_T0_ENKUlS10_E_clIiEEDaS10_.exit ] ; 3 uses
  %i.p = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.046, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = or disjoint i32 %i.n, %i.q               ; 3 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !10495 ; 2 uses
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !10496, !nonnull !79, !align !977 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !10347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i128 0, ptr %i.a, align 16, !tbaa !985
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !10350, !nonnull !79, !align !1001
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !10351, !nonnull !79, !align !1001
  %i.z = load i128, ptr %i.w, align 16, !tbaa !985, !noalias !10497
  %i.aa = load i128, ptr %i.y, align 16, !tbaa !985, !noalias !10500
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val = load ptr, ptr %i.ab, align 8, !tbaa !10336 ; 2 uses
  %.val17 = load i8, ptr %.val, align 1
  %i.ac = getelementptr i8, ptr %.val, i64 1
  %.val18 = load i8, ptr %i.ac, align 1
  invoke fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_122DecimalModulusFunctionINS0_4exec10VectorExecEE4callInnnEEvRT_RKT0_RKT1_(i8 %.val17, i8 %.val18, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i128 %i.z, i128 %i.aa)
          to label %_ZN8facebook5velox6StatusD2Ev.exit29 unwind label %.body
end_hunk_5
begin_hunk_6_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_123DecimalTruncateFunctionINS1_10VectorExecEEES8_NS0_11LongDecimalINS0_15IntegerVariableILm1EEENSB_ILm5EEEEENS0_15ConstantCheckerIJSE_iEEEJSE_iEEEE16unpackInitializeILm1EJnEEEvRKSt6vectorISt10shared_ptrIKNS0_4TypeEESaISO_EERKNS3_11QueryConfigEPNS0_6memory10MemoryPoolERKSK_ISL_INS0_10BaseVectorEESaIS10_EEDpPKT0_:bb.a
_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE2atEm.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !859
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.q, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE2atEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 37
  store i8 0, ptr %i.k, align 1, !tbaa !862
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %3, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 -1, ptr %i.a, align 8, !tbaa !555
  invoke void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(38) %3, ptr null, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN8facebook5velox17SelectivityVectorC2Eib.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.m = load ptr, ptr %3, align 8, !tbaa !864    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !866
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #37
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit28
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit28 ], [ %i.l, %bb.e ], [ %i.l, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZN8facebook5velox17SelectivityVectorC2Eib.exit:  ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  store i32 1, ptr %i.u, align 8, !tbaa !867
  store i32 0, ptr %i.t, align 4, !tbaa !875
  store i32 1, ptr %i.s, align 8, !tbaa !876
  store i16 257, ptr %i.v, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !855
  %i.x = load ptr, ptr %2, align 8, !tbaa !858    ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4                 ; 2 uses
  %.not.i.i19 = icmp ugt i64 %i.ab, 1
  br i1 %.not.i.i19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN8facebook5velox17SelectivityVectorC2Eib.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.59, i64 noundef 1, i64 noundef %i.ab) #35
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %_ZN8facebook5velox17SelectivityVectorC2Eib.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !859
  invoke void @_ZN8facebook5velox13DecodedVectorC1ERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(94) %i.ad, ptr noundef nonnull align 8 dereferenceable(38) %3, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val17 = load ptr, ptr %i.ae, align 8, !tbaa !12893
  %.val18 = load ptr, ptr %1, align 8, !tbaa !556
  %.val18.val = load ptr, ptr %.val18, align 8, !tbaa !582
  %i.af = invoke i16 @_ZN8facebook5velox24getDecimalPrecisionScaleERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(18) %.val18.val)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  store i16 %i.af, ptr %.val17, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !864 ; 3 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i22, label %_ZNSt6vectorImSaImEED2Ev.exit.i23, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !866
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #37
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i23

_ZNSt6vectorImSaImEED2Ev.exit.i23:                ; preds = %bb.j, %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !877 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i1.i, label %_ZN8facebook5velox13DecodedVectorD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i23
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !880
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #37
  br label %_ZN8facebook5velox13DecodedVectorD2Ev.exit

_ZN8facebook5velox13DecodedVectorD2Ev.exit:       ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i23, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.au = load ptr, ptr %3, align 8, !tbaa !864   ; 3 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i24, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN8facebook5velox13DecodedVectorD2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !866
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #37
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit

_ZN8facebook5velox17SelectivityVectorD2Ev.exit:   ; preds = %_ZN8facebook5velox13DecodedVectorD2Ev.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.r

bb.m:                                             ; preds = %bb.f, %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.h
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %4) #33
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.n ], [ %i.ba, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.bc = load ptr, ptr %3, align 8, !tbaa !864   ; 3 uses
  %.not.i.i.i.i26 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i26, label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit28, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !866
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #37
  br label %_ZN8facebook5velox17SelectivityVectorD2Ev.exit28

_ZN8facebook5velox17SelectivityVectorD2Ev.exit28: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %common.resume

bb.q:                                             ; preds = %_ZNKSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EE2atEm.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.bi, align 8, !tbaa !12893
  %.val16 = load ptr, ptr %1, align 8, !tbaa !556
  %.val16.val = load ptr, ptr %.val16, align 8, !tbaa !582
  %i.bj = tail call i16 @_ZN8facebook5velox24getDecimalPrecisionScaleERKNS0_4TypeE(ptr noundef nonnull align 8 dereferenceable(18) %.val16.val)
  store i16 %i.bj, ptr %.val, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN8facebook5velox17SelectivityVectorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec16VectorWriterBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #26

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.usub.sat.i8(i8, i8) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #29

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #23 = { cold noreturn }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #25 = { nounwind memory(none) }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #28 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #31 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #33 = { nounwind }
attributes #34 = { builtin allocsize(0) }
attributes #35 = { noreturn }
attributes #36 = { noreturn nounwind }
attributes #37 = { builtin nounwind }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !10, i64 0}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0, !12, i64 8, !5, i64 16}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!15 = distinct !{!15, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!16 = !{!8, !12, i64 8}
!17 = !{!18, !20}
!18 = distinct !{!18, !19, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!19 = distinct !{!19, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!20 = distinct !{!20, !21, !"_ZN8facebook5velox15IntegerVariableILm3EE4nameB5cxx11Ev: argument 0"}
!21 = distinct !{!21, !"_ZN8facebook5velox15IntegerVariableILm3EE4nameB5cxx11Ev"}
!22 = !{!5, !5, i64 0}
!23 = !{!24, !26}
!24 = distinct !{!24, !25, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!25 = distinct !{!25, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!26 = distinct !{!26, !27, !"_ZN8facebook5velox15IntegerVariableILm1EE4nameB5cxx11Ev: argument 0"}
!27 = distinct !{!27, !"_ZN8facebook5velox15IntegerVariableILm1EE4nameB5cxx11Ev"}
!28 = !{!29, !31}
!29 = distinct !{!29, !30, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!30 = distinct !{!30, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!31 = distinct !{!31, !32, !"_ZN8facebook5velox15IntegerVariableILm2EE4nameB5cxx11Ev: argument 0"}
!32 = distinct !{!32, !"_ZN8facebook5velox15IntegerVariableILm2EE4nameB5cxx11Ev"}
!33 = !{!34, !36}
!34 = distinct !{!34, !35, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!35 = distinct !{!35, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!36 = distinct !{!36, !37, !"_ZN8facebook5velox15IntegerVariableILm5EE4nameB5cxx11Ev: argument 0"}
!37 = distinct !{!37, !"_ZN8facebook5velox15IntegerVariableILm5EE4nameB5cxx11Ev"}
!38 = !{!39, !41}
!39 = distinct !{!39, !40, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!40 = distinct !{!40, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!41 = distinct !{!41, !42, !"_ZN8facebook5velox15IntegerVariableILm6EE4nameB5cxx11Ev: argument 0"}
!42 = distinct !{!42, !"_ZN8facebook5velox15IntegerVariableILm6EE4nameB5cxx11Ev"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZN3fmt3v116formatIJNS0_6detail9named_argIcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_SA_SA_EEES9_NS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!45 = distinct !{!45, !"_ZN3fmt3v116formatIJNS0_6detail9named_argIcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_SA_SA_EEES9_NS0_7fstringIJDpT_EE1tEDpOSC_"}
!46 = !{!47, !48, i64 0}
!47 = !{!"_ZTSN3fmt3v116detail15named_arg_valueIcEE", !48, i64 0, !12, i64 8}
!48 = !{!"p1 _ZTSN3fmt3v116detail14named_arg_infoIcEE", !11, i64 0}
!49 = !{!47, !12, i64 8}
!50 = !{!10, !10, i64 0}
!51 = !{!9, !10, i64 0}
!52 = !{!53, !54, i64 32}
!53 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !5, i64 0, !54, i64 32}
!54 = !{!"bool", !5, i64 0}
!55 = !{!56, !58}
!56 = distinct !{!56, !57, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!57 = distinct !{!57, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!58 = distinct !{!58, !59, !"_ZN8facebook5velox15IntegerVariableILm7EE4nameB5cxx11Ev: argument 0"}
!59 = distinct !{!59, !"_ZN8facebook5velox15IntegerVariableILm7EE4nameB5cxx11Ev"}
!60 = !{!61, !63}
!61 = distinct !{!61, !62, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!62 = distinct !{!62, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!63 = distinct !{!63, !64, !"_ZN8facebook5velox15IntegerVariableILm5EE4nameB5cxx11Ev: argument 0"}
!64 = distinct !{!64, !"_ZN8facebook5velox15IntegerVariableILm5EE4nameB5cxx11Ev"}
!65 = !{!66, !68}
!66 = distinct !{!66, !67, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!67 = distinct !{!67, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!68 = distinct !{!68, !69, !"_ZN8facebook5velox15IntegerVariableILm6EE4nameB5cxx11Ev: argument 0"}
!69 = distinct !{!69, !"_ZN8facebook5velox15IntegerVariableILm6EE4nameB5cxx11Ev"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN3fmt3v116formatIJNS0_6detail9named_argIcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EEES9_NS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
!72 = distinct !{!72, !"_ZN3fmt3v116formatIJNS0_6detail9named_argIcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EEES9_NS0_7fstringIJDpT_EE1tEDpOSC_"}
!73 = !{!74, !75, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec17SignatureVariableESaIS3_EE17_Vector_impl_dataE", !75, i64 0, !75, i64 8, !75, i64 16}
!75 = !{!"p1 _ZTSN8facebook5velox4exec17SignatureVariableE", !11, i64 0}
!76 = !{!74, !75, i64 16}
!77 = !{!74, !75, i64 8}
!78 = !{i8 0, i8 2}
!79 = !{}
!80 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!81 = !{!82, !83, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !83, i64 0, !83, i64 8, !83, i64 16}
!83 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!84 = !{!82, !83, i64 16}
!85 = !{!82, !83, i64 8}
!86 = !{!"branch_weights", i32 1, i32 1048575}
!87 = !{!83, !83, i64 0}
!88 = !{!89, !90, i64 0}
!89 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !90, i64 0}
!90 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!91 = !{!11, !11, i64 0}
!92 = !{!93, !11, i64 24}
!93 = !{!"_ZTSSt8functionIFSt10unique_ptrIN8facebook5velox4exec28SimpleFunctionAdapterFactoryESt14default_deleteIS4_EEvEE", !94, i64 0, !11, i64 24}
!94 = !{!"_ZTSSt14_Function_base", !5, i64 0, !11, i64 16}
!95 = !{!94, !11, i64 16}
!96 = !{!97, !4, i64 8}
!97 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!98 = !{!97, !4, i64 12}
!99 = !{!100, !100, i64 0}
!100 = !{!"vtable pointer", !6, i64 0}
!101 = distinct !{null, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!102 = distinct !{!102, !103}
!103 = !{!"llvm.loop.mustprogress"}
!104 = distinct !{null, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!105 = distinct !{null, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!106 = distinct !{null, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!107 = distinct !{null, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4core23ISimpleFunctionMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!108 = distinct !{!108, !103}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!111 = distinct !{!111, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!112 = !{!113, !115}
!113 = distinct !{!113, !114, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!114 = distinct !{!114, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!115 = distinct !{!115, !116, !"_ZN8facebook5velox15IntegerVariableILm3EE4nameB5cxx11Ev: argument 0"}
!116 = distinct !{!116, !"_ZN8facebook5velox15IntegerVariableILm3EE4nameB5cxx11Ev"}
!117 = !{!118, !120}
!118 = distinct !{!118, !119, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!119 = distinct !{!119, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!120 = distinct !{!120, !121, !"_ZN8facebook5velox15IntegerVariableILm1EE4nameB5cxx11Ev: argument 0"}
!121 = distinct !{!121, !"_ZN8facebook5velox15IntegerVariableILm1EE4nameB5cxx11Ev"}
!122 = !{!123, !125}
!123 = distinct !{!123, !124, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!124 = distinct !{!124, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!125 = distinct !{!125, !126, !"_ZN8facebook5velox15IntegerVariableILm2EE4nameB5cxx11Ev: argument 0"}
!126 = distinct !{!126, !"_ZN8facebook5velox15IntegerVariableILm2EE4nameB5cxx11Ev"}
!127 = !{!128, !130}
!128 = distinct !{!128, !129, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!129 = distinct !{!129, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!130 = distinct !{!130, !131, !"_ZN8facebook5velox15IntegerVariableILm5EE4nameB5cxx11Ev: argument 0"}
!131 = distinct !{!131, !"_ZN8facebook5velox15IntegerVariableILm5EE4nameB5cxx11Ev"}
!132 = !{!133, !135}
!133 = distinct !{!133, !134, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!134 = distinct !{!134, !"_ZN3fmt3v116formatIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!135 = distinct !{!135, !136, !"_ZN8facebook5velox15IntegerVariableILm6EE4nameB5cxx11Ev: argument 0"}
!136 = distinct !{!136, !"_ZN8facebook5velox15IntegerVariableILm6EE4nameB5cxx11Ev"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZN3fmt3v116formatIJNS0_6detail9named_argIcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_SA_SA_EEES9_NS0_7fstringIJDpT_EE1tEDpOSC_: argument 0"}
end_hunk_6
