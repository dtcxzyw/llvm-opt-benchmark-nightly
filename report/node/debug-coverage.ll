inline.NumInlined: 1792
inline.NumDeleted: 970
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2v88internal8Coverage7CollectEPNS0_7IsolateENS_5debug12CoverageModeE:bb.a
  br i1 %.not.i.i.i.i142, label %_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i, label %.lr.ph.i.i.i.i139, !llvm.loop !68

_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i: ; preds = %.lr.ph.i.i.i.i139, %_ZSt12construct_atIN2v88internal16CoverageFunctionEJRS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i136
  %.0.lcssa.i.i.i.i = phi ptr [ %i.atv, %_ZSt12construct_atIN2v88internal16CoverageFunctionEJRS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i136 ], [ %i.ava, %.lr.ph.i.i.i.i139 ]
  %i.avb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 56
  %.not.i23.i = icmp eq ptr %i.atk, null
  br i1 %.not.i23.i, label %_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, label %bb.gi

bb.gi:                                            ; preds = %_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i
  %i.avc = load ptr, ptr %i.te, align 8
  %i.avd = ptrtoint ptr %i.avc to i64
  %i.ave = sub i64 %i.avd, %i.atm
  call void @_ZdlPvm(ptr noundef nonnull %i.atk, i64 noundef %i.ave) #23
  br label %_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit

_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i, %bb.gi
  store ptr %i.atv, ptr %i.ro, align 8
  store ptr %i.avb, ptr %i.td, align 8
  %i.avf = getelementptr inbounds nuw [56 x i8], ptr %i.atv, i64 %i.att
  store ptr %i.avf, ptr %i.te, align 8
  br label %_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit

_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit: ; preds = %_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, %_ZSt12construct_atIN2v88internal16CoverageFunctionEJRS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i, %bb.fu
  %.sroa.18.1 = phi ptr [ %.sroa.18.0275, %bb.fu ], [ %.sroa.18.2, %_ZSt12construct_atIN2v88internal16CoverageFunctionEJRS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i ], [ %.sroa.18.2, %_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit ] ; 2 uses
  %.sroa.8.2 = phi ptr [ %.sroa.8.1, %bb.fu ], [ %.sroa.8.3, %_ZSt12construct_atIN2v88internal16CoverageFunctionEJRS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i ], [ %.sroa.8.3, %_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit ]
  %.sroa.0155.1 = phi ptr [ %.sroa.0155.0277, %bb.fu ], [ %.sroa.0155.2, %_ZSt12construct_atIN2v88internal16CoverageFunctionEJRS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i ], [ %.sroa.0155.2, %_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit ] ; 2 uses
  %i.avg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 249), align 1, !range !60, !noundef !61
  %i.avh = trunc nuw i8 %i.avg to i1
  br i1 %i.avh, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit
  %i.avi = load i64, ptr %.sroa.022.0.copyload, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.avj = load ptr, ptr %i.nd, align 8
  %i.avk = load i64, ptr %i.avj, align 8
  %i.avl = add i64 %i.avk, -1
  %i.avm = inttoptr i64 %i.avl to ptr
  call void @_ZN2v88internal6String9ToCStringEPm(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.979") align 8 %5, ptr noundef nonnull align 4 dereferenceable(16) %i.avm, ptr noundef null) #20
  %i.avn = load ptr, ptr %5, align 8
  %i.avo = inttoptr i64 %i.avi to ptr
  %i.avp = zext i1 %spec.select.i94 to i32
  %i.avq = zext i1 %i.arm to i32
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.8, ptr noundef %i.avn, ptr noundef %i.avo, i32 noundef %i.avp, i32 noundef %i.avq) #20
  %i.avr = load i32, ptr %31, align 8
  %i.avs = load i32, ptr %i.nb, align 4
  %i.avt = load i32, ptr %i.nc, align 8
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.9, i32 noundef %i.avr, i32 noundef %i.avs, i32 noundef %i.avt) #20
  %i.avu = load ptr, ptr %i.ne, align 8           ; 2 uses
  %i.avv = load ptr, ptr %i.ng, align 8           ; 2 uses
  %i.avw = icmp eq ptr %i.avu, %i.avv
  br i1 %i.avw, label %._crit_edge.i104, label %.lr.ph.i103

._crit_edge.i104:                                 ; preds = %.lr.ph.i103, %bb.gj
  %i.avx = load ptr, ptr %5, align 8              ; 2 uses
  %.not.i.i105 = icmp eq ptr %i.avx, null
  br i1 %.not.i.i105, label %_ZN2v88internal12_GLOBAL__N_118PrintBlockCoverageEPKNS0_16CoverageFunctionENS0_6TaggedINS0_18SharedFunctionInfoEEEbb.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %._crit_edge.i104
  call void @_ZdaPv(ptr noundef nonnull %i.avx) #23
  br label %_ZN2v88internal12_GLOBAL__N_118PrintBlockCoverageEPKNS0_16CoverageFunctionENS0_6TaggedINS0_18SharedFunctionInfoEEEbb.exit

.lr.ph.i103:                                      ; preds = %bb.gj, %.lr.ph.i103
  %.sroa.011.017.i = phi ptr [ %i.awd, %.lr.ph.i103 ], [ %i.avu, %bb.gj ] ; 4 uses
  %i.avy = load i32, ptr %.sroa.011.017.i, align 4
  %i.avz = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i, i64 4
  %i.awa = load i32, ptr %i.avz, align 4
  %i.awb = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i, i64 8
  %i.awc = load i32, ptr %i.awb, align 4
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.9, i32 noundef %i.avy, i32 noundef %i.awa, i32 noundef %i.awc) #20
  %i.awd = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i, i64 12 ; 2 uses
  %i.awe = icmp eq ptr %i.awd, %i.avv
  br i1 %i.awe, label %._crit_edge.i104, label %.lr.ph.i103

_ZN2v88internal12_GLOBAL__N_118PrintBlockCoverageEPKNS0_16CoverageFunctionENS0_6TaggedINS0_18SharedFunctionInfoEEEbb.exit: ; preds = %._crit_edge.i104, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.gk

bb.gk:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_118PrintBlockCoverageEPKNS0_16CoverageFunctionENS0_6TaggedINS0_18SharedFunctionInfoEEEbb.exit, %_ZNSt6vectorIN2v88internal16CoverageFunctionESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_.exit
  %i.awf = load ptr, ptr %i.ne, align 8           ; 3 uses
  %.not.i.i.i.i106 = icmp eq ptr %i.awf, null
  br i1 %.not.i.i.i.i106, label %_ZN2v88internal16CoverageFunctionD2Ev.exit, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.awg = load ptr, ptr %i.nh, align 8
  %i.awh = ptrtoint ptr %i.awg to i64
  %i.awi = ptrtoint ptr %i.awf to i64
  %i.awj = sub i64 %i.awh, %i.awi
  call void @_ZdlPvm(ptr noundef nonnull %i.awf, i64 noundef %i.awj) #23
  br label %_ZN2v88internal16CoverageFunctionD2Ev.exit

_ZN2v88internal16CoverageFunctionD2Ev.exit:       ; preds = %bb.gk, %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #20
  %i.awk = getelementptr inbounds nuw i8, ptr %.sroa.0154.0274, i64 24
  %i.awl = icmp eq ptr %.sroa.0154.0274, %.0.lcssa.i.i.i.i.i.pn
  br i1 %i.awl, label %._crit_edge279.loopexit, label %bb.bj

bb.gm:                                            ; preds = %._crit_edge279
  %i.awm = load ptr, ptr %0, align 8
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awm, i64 8 ; 2 uses
  %i.awo = load ptr, ptr %i.awn, align 8          ; 4 uses
  %i.awp = getelementptr inbounds i8, ptr %i.awo, i64 -32
  store ptr %i.awp, ptr %i.awn, align 8
  %i.awq = getelementptr inbounds i8, ptr %i.awo, i64 -24 ; 2 uses
  %i.awr = load ptr, ptr %i.awq, align 8          ; 3 uses
  %i.aws = getelementptr inbounds i8, ptr %i.awo, i64 -16
  %i.awt = load ptr, ptr %i.aws, align 8          ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.awr, %i.awt
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2v88internal16CoverageFunctionEEvT_S4_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i107

.lr.ph.i.i.i.i.i.i107:                            ; preds = %bb.gm, %_ZSt8_DestroyIN2v88internal16CoverageFunctionEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.axb, %_ZSt8_DestroyIN2v88internal16CoverageFunctionEEvPT_.exit.i.i.i.i.i.i ], [ %i.awr, %bb.gm ] ; 3 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24
  %i.awv = load ptr, ptr %i.awu, align 8          ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.awv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN2v88internal16CoverageFunctionEEvPT_.exit.i.i.i.i.i.i, label %bb.gn

bb.gn:                                            ; preds = %.lr.ph.i.i.i.i.i.i107
  %i.aww = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 40
  %i.awx = load ptr, ptr %i.aww, align 8
  %i.awy = ptrtoint ptr %i.awx to i64
  %i.awz = ptrtoint ptr %i.awv to i64
  %i.axa = sub i64 %i.awy, %i.awz
  call void @_ZdlPvm(ptr noundef nonnull %i.awv, i64 noundef %i.axa) #23
  br label %_ZSt8_DestroyIN2v88internal16CoverageFunctionEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN2v88internal16CoverageFunctionEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.gn, %.lr.ph.i.i.i.i.i.i107
  %i.axb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i.i.i108 = icmp eq ptr %i.axb, %i.awt
  br i1 %.not.i.i.i.i.i.i108, label %_ZSt8_DestroyIPN2v88internal16CoverageFunctionEEvT_S4_.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i107, !llvm.loop !69

_ZSt8_DestroyIPN2v88internal16CoverageFunctionEEvT_S4_.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN2v88internal16CoverageFunctionEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.awq, align 8
  br label %_ZSt8_DestroyIPN2v88internal16CoverageFunctionEEvT_S4_.exit.i.i.i.i

_ZSt8_DestroyIPN2v88internal16CoverageFunctionEEvT_S4_.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN2v88internal16CoverageFunctionEEvT_S4_.exitthread-pre-split.i.i.i.i, %bb.gm
  %i.axc = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN2v88internal16CoverageFunctionEEvT_S4_.exitthread-pre-split.i.i.i.i ], [ %i.awr, %bb.gm ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.axc, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE8pop_backEv.exit, label %bb.go

bb.go:                                            ; preds = %_ZSt8_DestroyIPN2v88internal16CoverageFunctionEEvT_S4_.exit.i.i.i.i
  %i.axd = getelementptr inbounds i8, ptr %i.awo, i64 -8
  %i.axe = load ptr, ptr %i.axd, align 8
  %i.axf = ptrtoint ptr %i.axe to i64
  %i.axg = ptrtoint ptr %i.axc to i64
  %i.axh = sub i64 %i.axf, %i.axg
  call void @_ZdlPvm(ptr noundef nonnull %i.axc, i64 noundef %i.axh) #23
  br label %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE8pop_backEv.exit

_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE8pop_backEv.exit: ; preds = %bb.go, %_ZSt8_DestroyIPN2v88internal16CoverageFunctionEEvT_S4_.exit.i.i.i.i, %._crit_edge279
  %.not.i.i.i109 = icmp eq ptr %.sroa.0155.0.lcssa, null
  br i1 %.not.i.i.i109, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.gp

bb.gp:                                            ; preds = %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE8pop_backEv.exit
  %i.axi = ptrtoint ptr %.sroa.0155.0.lcssa to i64
  %i.axj = sub i64 %.sroa.18.0.lcssa, %i.axi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0155.0.lcssa, i64 noundef %i.axj) #23
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE8pop_backEv.exit, %bb.gp
  %.not.i.i.i110 = icmp eq ptr %.sroa.0171.0.lcssa451455, null
  br i1 %.not.i.i.i110, label %_ZNSt6vectorIN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESaIS3_EED2Ev.exit, label %bb.gq

bb.gq:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.axk = ptrtoint ptr %.sroa.0171.0.lcssa451455 to i64
  %i.axl = sub i64 %.sroa.14.0.lcssa449456, %i.axk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0171.0.lcssa451455, i64 noundef %i.axl) #23
  br label %_ZNSt6vectorIN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESaIS3_EED2Ev.exit

_ZNSt6vectorIN2v88internal12_GLOBAL__N_126SharedFunctionInfoAndCountESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20
  %i.axm = getelementptr inbounds nuw i8, ptr %.sroa.0176.0282, i64 8 ; 2 uses
  %i.axn = icmp eq ptr %i.axm, %.sroa.7.1
  br i1 %i.axn, label %._crit_edge284, label %bb.an
}

declare void @_ZN2v88internal7Isolate35SetFeedbackVectorsForProfilingToolsENS0_6TaggedINS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(64320), i64) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Coverage17CollectBestEffortEPNS0_7IsolateE(ptr dead_on_unwind noalias nofree writable sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN2v88internal8Coverage7CollectEPNS0_7IsolateENS_5debug12CoverageModeE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef %1, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8Coverage15CollectWasmDataEPNS0_7IsolateE(ptr dead_on_unwind noalias nofree writable sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.std::_Sp_locker", align 1  ; 6 uses
  %3 = alloca %"class.std::vector.456", align 8   ; 11 uses
  %4 = alloca %"class.v8::internal::Script::Iterator", align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::Handle", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::wasm::StringBuilder", align 8 ; 13 uses
  %7 = alloca %"class.v8::internal::wasm::NamesProvider", align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN2v88internal6Script8IteratorC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %1) #20
  %i.d = call i64 @_ZN2v88internal6Script8Iterator4NextEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #20 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %._crit_edge127, label %.lr.ph126

.lr.ph126:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 256 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 280 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 288 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 296
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 304 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 688 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 264
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 272
  br label %bb.b

._crit_edge127.loopexit:                          ; preds = %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE8pop_backEv.exit
  %.pre145 = load ptr, ptr %0, align 8
  br label %._crit_edge127

._crit_edge127:                                   ; preds = %._crit_edge127.loopexit, %bb.a
  %i.r = phi ptr [ %.pre145, %._crit_edge127.loopexit ], [ %i.c, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %._crit_edge138, label %.lr.ph137

bb.b:                                             ; preds = %.lr.ph126, %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE8pop_backEv.exit
  %storemerge124 = phi i64 [ %i.d, %.lr.ph126 ], [ %i.jf, %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE8pop_backEv.exit ] ; 3 uses
  %i.w = add i64 %storemerge124, 47
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load i64, ptr %i.x, align 8
  %.mask = and i64 %i.y, -4294967296
  %.not = icmp eq i64 %.mask, 12884901888
  br i1 %.not, label %bb.c, label %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE8pop_backEv.exit

bb.c:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %0, align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.aa = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ab = load ptr, ptr %i.g, align 8
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %_ZN2v88internal6HandleINS0_6ScriptEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.ad = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #20
  br label %_ZN2v88internal6HandleINS0_6ScriptEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_6ScriptEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.ad, %bb.d ], [ %i.aa, %bb.c ] ; 4 uses
  %i.ae = ptrtoint ptr %.0.i.i to i64
  %i.af = add i64 %i.ae, 8
  %i.ag = inttoptr i64 %i.af to ptr
  store ptr %i.ag, ptr %i.f, align 8
  store i64 %storemerge124, ptr %.0.i.i, align 8
  store ptr %.0.i.i, ptr %5, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  %.not.i = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal6HandleINS0_6ScriptEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  store ptr %.0.i.i, ptr %i.ai, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.am = load ptr, ptr %i.ah, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 2 uses
  store ptr %i.an, ptr %i.ah, align 8
  br label %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE12emplace_backIJNS1_6HandleINS1_6ScriptEEEEEERS2_DpOT_.exit

bb.f:                                             ; preds = %_ZN2v88internal6HandleINS0_6ScriptEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  call void @_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE17_M_realloc_insertIJNS1_6HandleINS1_6ScriptEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %.pre = load ptr, ptr %i.ah, align 8
  br label %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE12emplace_backIJNS1_6HandleINS1_6ScriptEEEEEERS2_DpOT_.exit

_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE12emplace_backIJNS1_6HandleINS1_6ScriptEEEEEERS2_DpOT_.exit: ; preds = %bb.e, %bb.f
  %i.ao = phi ptr [ %i.an, %bb.e ], [ %.pre, %bb.f ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -24 ; 3 uses
  %i.aq = add i64 %storemerge124, 79
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = add i64 %i.as, 7
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = load ptr, ptr %i.ay, align 8            ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 216
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 528
  %i.bd = load ptr, ptr %i.bc, align 8            ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph123, label %._crit_edge

.lr.ph123:                                        ; preds = %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE12emplace_backIJNS1_6HandleINS1_6ScriptEEEEEERS2_DpOT_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 84
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 240 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 248
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bm = getelementptr inbounds i8, ptr %i.ao, i64 -16 ; 4 uses
  %i.bn = getelementptr inbounds i8, ptr %i.ao, i64 -8 ; 3 uses
  br label %bb.g

._crit_edge:                                      ; preds = %_ZN2v88internal4wasm13StringBuilderD2Ev.exit, %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE12emplace_backIJNS1_6HandleINS1_6ScriptEEEEEERS2_DpOT_.exit
  %i.bo = load ptr, ptr %i.ap, align 8
  %i.bp = getelementptr inbounds i8, ptr %i.ao, i64 -16
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = icmp eq ptr %i.bo, %i.bq
  br i1 %i.br, label %bb.av, label %_ZNSt6vectorIN2v88internal14CoverageScriptESaIS2_EE8pop_backEv.exit

bb.g:                                             ; preds = %.lr.ph123, %_ZN2v88internal4wasm13StringBuilderD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph123 ], [ %indvars.iv.next, %_ZN2v88internal4wasm13StringBuilderD2Ev.exit ] ; 3 uses
  %i.bs = load i32, ptr %i.bi, align 4
  %i.bt = trunc nuw nsw i64 %indvars.iv to i32
  %i.bu = add i32 %i.bs, %i.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  store ptr %6, ptr %i.i, align 8
  store ptr %6, ptr %i.j, align 8
  store i64 256, ptr %i.k, align 8
  store i8 1, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20, !noalias !70
  call void @_ZNSt10_Sp_lockerC1EPKv(ptr noundef nonnull align 1 dereferenceable(2) %2, ptr noundef nonnull %i.bj) #20, !noalias !70
  %i.bv = load ptr, ptr %i.bj, align 8, !noalias !70 ; 4 uses
  %i.bw = load ptr, ptr %i.bk, align 8, !noalias !70 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 7 uses
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !noalias !70
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bz = load i32, ptr %i.bx, align 4, !noalias !70
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.bx, align 4, !noalias !70
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.cb = atomicrmw volatile add ptr %i.bx, i32 1 acq_rel, align 4, !noalias !70 ; 0 uses
  br label %bb.k

_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_.exit.i: ; preds = %bb.g
  call void @_ZNSt10_Sp_lockerD1Ev(ptr noundef nonnull align 1 dead_on_return(2) dereferenceable(2) %2) #20, !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !70
  %i.cc = load ptr, ptr %i.bv, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.ce = load i64, ptr %i.cd, align 8
  br label %_ZNK2v88internal4wasm12NativeModule10wire_bytesEv.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @_ZNSt10_Sp_lockerD1Ev(ptr noundef nonnull align 1 dead_on_return(2) dereferenceable(2) %2) #20, !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !70
  %i.cf = load ptr, ptr %i.bv, align 8            ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.ch = load i64, ptr %i.cg, align 8            ; 3 uses
  %i.ci = load atomic i64, ptr %i.bx acquire, align 8 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 4294967297
  %i.ck = trunc i64 %i.ci to i32                  ; 2 uses
  br i1 %i.cj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.bx, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i32 0, ptr %i.cl, align 4
  %i.cm = load ptr, ptr %i.bw, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #20, !inline_history !75
  %i.cp = load ptr, ptr %i.bw, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #20, !inline_history !75
  br label %_ZNK2v88internal4wasm12NativeModule10wire_bytesEv.exit

bb.m:                                             ; preds = %bb.k
  %i.cs = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.cs, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ct = add nsw i32 %i.ck, -1
  store i32 %i.ct, ptr %i.bx, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.cu = atomicrmw volatile add ptr %i.bx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i = phi i32 [ %i.ck, %bb.n ], [ %i.cu, %bb.o ]
  %i.cv = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cv, label %bb.p, label %_ZNK2v88internal4wasm12NativeModule10wire_bytesEv.exit, !prof !12

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw) #20
  br label %_ZNK2v88internal4wasm12NativeModule10wire_bytesEv.exit

_ZNK2v88internal4wasm12NativeModule10wire_bytesEv.exit: ; preds = %_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_.exit.i, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.p
  %i.cw = phi i64 [ %i.ce, %_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_.exit.i ], [ %i.ch, %bb.l ], [ %i.ch, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i ], [ %i.ch, %bb.p ]
  %i.cx = phi ptr [ %i.cc, %_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_.exit.i ], [ %i.cf, %bb.l ], [ %i.cf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i ], [ %i.cf, %bb.p ]
  call void @_ZN2v88internal4wasm13NamesProviderC1EPKNS1_10WasmModuleENS_4base6VectorIKhEE(ptr noundef nonnull align 8 dereferenceable(288) %7, ptr noundef nonnull %i.bb, ptr %i.cx, i64 %i.cw) #20
  call void @_ZN2v88internal4wasm13NamesProvider17PrintFunctionNameERNS1_13StringBuilderEjNS2_21FunctionNamesBehaviorENS2_14IndexAsCommentE(ptr noundef nonnull align 8 dereferenceable(288) %7, ptr noundef nonnull align 8 dereferenceable(305) %6, i32 noundef %i.bu, i1 noundef zeroext true, i1 noundef zeroext false) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.cy = load ptr, ptr %i.i, align 8             ; 5 uses
  store ptr %i.cy, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.cz = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = sub i64 %i.da, %i.db                    ; 9 uses
  store i64 %i.dc, ptr %i.b, align 8
  %i.dd = load ptr, ptr %i.m, align 8             ; 6 uses
  %i.de = load ptr, ptr %i.n, align 8
  %.not.i42 = icmp eq ptr %i.dd, %i.de
  br i1 %.not.i42, label %bb.z, label %bb.q

bb.q:                                             ; preds = %_ZNK2v88internal4wasm12NativeModule10wire_bytesEv.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 3 uses
  store ptr %i.df, ptr %i.dd, align 8
  %i.dg = icmp eq ptr %i.cy, null
  %i.dh = icmp ne ptr %i.cz, null
  %or.cond.i.i.i = and i1 %i.dg, %i.dh
  br i1 %or.cond.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #21
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.di = icmp ugt i64 %i.dc, 15
  br i1 %i.di, label %bb.t, label %._crit_edge.i.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.dj = icmp slt i64 %i.dc, 0
  br i1 %i.dj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dk = add nuw i64 %i.dc, 1                    ; 2 uses
  %i.dl = icmp slt i64 %i.dk, 0
  br i1 %i.dl, label %bb.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !12

bb.w:                                             ; preds = %bb.v
  call void @_ZSt17__throw_bad_allocv() #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.v
  %i.dm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #22 ; 2 uses
  store ptr %i.dm, ptr %i.dd, align 8
  store i64 %i.dc, ptr %i.df, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.s
  %i.dn = phi ptr [ %i.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.df, %bb.s ] ; 3 uses
  switch i64 %i.dc, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i
  ]

bb.x:                                             ; preds = %._crit_edge.i.i.i.i
  %i.do = load i8, ptr %i.cy, align 1
  store i8 %i.do, ptr %i.dn, align 1
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

bb.y:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dn, ptr align 1 %i.cy, i64 %i.dc, i1 false)
  br label %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i

_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i: ; preds = %bb.y, %bb.x, %._crit_edge.i.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i64 %i.dc, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dc
  store i8 0, ptr %i.dq, align 1
  %i.dr = load ptr, ptr %i.m, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  store ptr %i.ds, ptr %i.m, align 8
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKcmEEERS5_DpOT_.exit

bb.z:                                             ; preds = %_ZNK2v88internal4wasm12NativeModule10wire_bytesEv.exit
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJPKcmEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.dd, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKcmEEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKcmEEERS5_DpOT_.exit: ; preds = %_ZSt12construct_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJPKcmEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS9_DpOSA_.exit.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #20
  %i.dt = load ptr, ptr %i.bl, align 8
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %indvars.iv
  %i.dv = load ptr, ptr %i.du, align 8            ; 4 uses
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #20
  %.not41 = icmp eq ptr %i.dv, null
  br i1 %.not41, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPKcmEEERS5_DpOT_.exit
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dy = load i64, ptr %i.dx, align 8            ; 2 uses
  %.not139 = icmp eq i64 %i.dy, 0
  br i1 %.not139, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12emplace_backIJRiS6_RjEEERS2_DpOT_.exit
  %.038119 = phi i64 [ 0, %.lr.ph ], [ %i.ex, %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12emplace_backIJRiS6_RjEEERS2_DpOT_.exit ] ; 3 uses
  %.sroa.8.0118 = phi ptr [ null, %.lr.ph ], [ %.sroa.8.2, %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12emplace_backIJRiS6_RjEEERS2_DpOT_.exit ] ; 6 uses
  %.sroa.15.0117 = phi ptr [ null, %.lr.ph ], [ %.sroa.15.2, %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12emplace_backIJRiS6_RjEEERS2_DpOT_.exit ] ; 7 uses
  %.sroa.22.0116 = phi ptr [ null, %.lr.ph ], [ %.sroa.22.2, %_ZNSt6vectorIN2v88internal13CoverageBlockESaIS2_EE12emplace_backIJRiS6_RjEEERS2_DpOT_.exit ] ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %.038119
  %i.eb = load i64, ptr %i.ea, align 4            ; 2 uses
  %i.ec = load ptr, ptr %i.dz, align 8
end_hunk_0
