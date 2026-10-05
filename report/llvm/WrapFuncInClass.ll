Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/WrapFuncInClass?download=true
inline.NumInlined: 2454
inline.NumDeleted: 1581
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_5emitc12EmitCDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation:bb.a
  ]

.sink.split.i:                                    ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_5emitc12EmitCDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_5emitc12EmitCDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %.sink.split.i
  %.sink = phi ptr [ null, %.sink.split.i ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !74
  br label %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_5emitc12EmitCDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_5emitc12EmitCDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN4mlir15DialectRegistry6insertINS1_5emitc12EmitCDialectEEEvvEUlPNS1_11MLIRContextEE_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

declare noundef ptr @_ZN4mlir11MLIRContext16getOrLoadDialectEN4llvm9StringRefENS_6TypeIDENS1_12function_refIFSt10unique_ptrINS_7DialectESt14default_deleteIS6_EEvEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr, ptr, i64) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFSt10unique_ptrIN4mlir7DialectESt14default_deleteIS3_EEvEE11callback_fnIZNS2_11MLIRContext16getOrLoadDialectINS2_5emitc12EmitCDialectEEEPT_vEUlvE_EES6_l(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.110") align 8 %0, i64 noundef %1) #0 comdat align 2 {
_ZNSt10unique_ptrIN4mlir5emitc12EmitCDialectESt14default_deleteIS2_EED2Ev.exit:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120, !noalias !249
  %i.c = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #23, !noalias !249 ; 2 uses
  tail call void @_ZN4mlir5emitc12EmitCDialectC1EPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef %i.b) #24, !noalias !249
  store ptr %i.c, ptr %0, align 8, !tbaa !251
  ret void
}

declare void @_ZN4mlir5emitc12EmitCDialectC1EPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) unnamed_addr #8

declare void @_ZN4mlir20walkAndApplyPatternsEPNS_9OperationERKNS_23FrozenRewritePatternSetEPNS_12RewriterBase8ListenerE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #8

declare void @_ZN4mlir23FrozenRewritePatternSetC1EONS_17RewritePatternSetEN4llvm8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(176), ptr, i64, ptr, i64) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN4mlir23FrozenRewritePatternSetD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS2_8GlobalOpENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !79   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS2_8GlobalOpENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !77
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !81   ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.l = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS3_8GlobalOpENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ac, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS3_8GlobalOpENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !87   ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS3_8GlobalOpENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !85
  %i.v = zext i32 %i.r to i64                     ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = add nuw nsw i64 %i.v, 31
  %i.y = lshr i64 %i.x, 3
  %i.z = and i64 %i.y, 1073741820
  %i.aa = add nuw nsw i64 %i.z, %i.w
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.u, i64 noundef %i.aa, i64 noundef 8) #24
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS3_8GlobalOpENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS3_8GlobalOpENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.c, %bb.b
  %i.ab = add i32 %.0.i3.i, -1
  %i.ac = and i32 %i.ab, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !1

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS3_8GlobalOpENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS3_8GlobalOpENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !2

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS3_8GlobalOpENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !79   ; 2 uses
  %i.ad = icmp eq i32 %.pr, 0
  br i1 %i.ad, label %_ZN4llvm8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS2_8GlobalOpENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEE17deallocateBucketsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS3_8GlobalOpENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEv.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !77
  %i.af = zext i32 %.pr to i64                    ; 2 uses
  %i.ag = shl nuw nsw i64 %i.af, 5
  %i.ah = add nuw nsw i64 %i.af, 31
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = and i64 %i.ai, 1073741820
  %i.ak = add nuw nsw i64 %i.aj, %i.ag
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ae, i64 noundef %i.ak, i64 noundef 8) #24
  br label %_ZN4llvm8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS2_8GlobalOpENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS2_8GlobalOpENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS3_8GlobalOpENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E10destroyAllEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void %1(i64 noundef %2, ptr noundef %0) #24, !inline_history !252
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = tail call { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64) %0) #24 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 5
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not41 = icmp eq i64 %i.d, 0
  br i1 %.not41, label %._crit_edge43, label %.preheader

.preheader:                                       ; preds = %bb.c, %._crit_edge
  %.042 = phi ptr [ %i.g, %._crit_edge ], [ %i.c, %bb.c ] ; 4 uses
  %.sroa.022.0.in36 = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %.sroa.022.037 = load ptr, ptr %.sroa.022.0.in36, align 8, !tbaa !124 ; 2 uses
  %.not3238 = icmp eq ptr %.sroa.022.037, %.042
  br i1 %.not3238, label %._crit_edge, label %.lr.ph40

._crit_edge43:                                    ; preds = %._crit_edge, %bb.c
  %i.f = icmp eq i32 %3, 1
  br i1 %i.f, label %bb.d, label %bb.e

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph40
  %.sroa.022.0.in = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 8
  %.sroa.022.0 = load ptr, ptr %.sroa.022.0.in, align 8, !tbaa !124 ; 2 uses
  %.not32 = icmp eq ptr %.sroa.022.0, %.042
  br i1 %.not32, label %._crit_edge, label %.lr.ph40

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.042, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge43, label %.preheader

.lr.ph40:                                         ; preds = %.preheader, %.loopexit
  %.sroa.022.039 = phi ptr [ %.sroa.022.0, %.loopexit ], [ %.sroa.022.037, %.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !124  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.039, i64 32 ; 2 uses
  %.not3334 = icmp eq ptr %i.i, %i.j
  br i1 %.not3334, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph40, %.lr.ph
  %.sroa.019.035 = phi ptr [ %i.l, %.lr.ph ], [ %i.i, %.lr.ph40 ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.019.035, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !124  ; 2 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef %.sroa.019.035) #24
  tail call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull %i.m, ptr %1, i64 %2, i32 noundef %3)
  %.not33 = icmp eq ptr %i.l, %i.j
  br i1 %.not33, label %.loopexit, label %.lr.ph

bb.d:                                             ; preds = %._crit_edge43
  tail call void %1(i64 noundef %2, ptr noundef nonnull %0) #24, !inline_history !252
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge43
  ret void
}

declare { ptr, i64 } @_ZN4mlir15ForwardIterator12makeIterableERNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #8

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE11getValuePtrEPNS_15ilist_node_implIS5_EE(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNS1_5emitc12_GLOBAL__N_119WrapFuncInClassPass14runOnOperationEvEUlNSB_6FuncOpEE_SE_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESM_E4typeES3_OT1_EUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %class.anon.230, align 8            ; 4 uses
  %3 = alloca %"class.mlir::emitc::FuncOp", align 8 ; 4 uses
  %4 = alloca %class.anon.229, align 16           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.d = icmp ne ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_5emitc6FuncOpEvE2idE
  %.not1.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not1.i, %i.d
  br i1 %.not.i, label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNS_5emitc12_GLOBAL__N_119WrapFuncInClassPass14runOnOperationEvEUlNS4_6FuncOpEE_S7_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.e, align 8
  %i.f = load <2 x ptr>, ptr %.val, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store <2 x ptr> %i.f, ptr %4, align 16, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %3, ptr %i.g, align 16, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %4, ptr %2, align 8, !tbaa !74
  %i.h = ptrtoint ptr %2 to i64
  call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nonnull @_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZNS1_5emitc12_GLOBAL__N_119WrapFuncInClassPass14runOnOperationEvENKUlNSB_6FuncOpEE_clESE_EUlNSB_11GetGlobalOpEE_SG_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESO_E4typeES3_OT1_EUlS3_E_EEvlS3_, i64 %i.h, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNS_5emitc12_GLOBAL__N_119WrapFuncInClassPass14runOnOperationEvEUlNS4_6FuncOpEE_S7_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit

_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNS_5emitc12_GLOBAL__N_119WrapFuncInClassPass14runOnOperationEvEUlNS4_6FuncOpEE_S7_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESH_E4typeESC_OT1_ENKUlSC_E_clESC_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZZNS1_5emitc12_GLOBAL__N_119WrapFuncInClassPass14runOnOperationEvENKUlNSB_6FuncOpEE_clESE_EUlNSB_11GetGlobalOpEE_SG_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESO_E4typeES3_OT1_EUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::emitc::GlobalOp", align 8 ; 4 uses
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.e = icmp ne ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_5emitc11GetGlobalOpEvE2idE
  %.not1.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not1.i, %i.e
  br i1 %.not.i, label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZZNS_5emitc12_GLOBAL__N_119WrapFuncInClassPass14runOnOperationEvENKUlNS4_6FuncOpEE_clES7_EUlNS4_11GetGlobalOpEE_S9_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESJ_E4typeESE_OT1_ENKUlSE_E_clESE_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !262, !nonnull !70, !align !126 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i32 %i.i, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = lshr i32 %i.i, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.k, 1
  %i.l = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.l
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !128
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull %1, ptr %.sroa.0.0.copyload.i.i.i.i) #24, !inline_history !254 ; 3 uses
  %.not.i.i.i2.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i2.i.i, label %_ZZZN4mlir5emitc12_GLOBAL__N_119WrapFuncInClassPass14runOnOperationEvENKUlNS0_6FuncOpEE_clES3_ENKUlNS0_11GetGlobalOpEE_clES5_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !95
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !97
  %i.u = icmp eq ptr %i.t, @_ZN4mlir6detail14TypeIDResolverINS_5emitc8GlobalOpEvE2idE
  br i1 %i.u, label %bb.d, label %_ZZZN4mlir5emitc12_GLOBAL__N_119WrapFuncInClassPass14runOnOperationEvENKUlNS0_6FuncOpEE_clES3_ENKUlNS0_11GetGlobalOpEE_clES5_.exit.i

bb.d:                                             ; preds = %bb.c
  store ptr %i.q, ptr %2, align 8
  %i.v = load ptr, ptr %.val, align 8, !tbaa !263, !nonnull !70, !align !126
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !264, !nonnull !70, !align !126
  %i.y = tail call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS3_8GlobalOpENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 8
  %i.aa = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5emitc8GlobalOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %2), !noalias !265 ; 0 uses
  br label %_ZZZN4mlir5emitc12_GLOBAL__N_119WrapFuncInClassPass14runOnOperationEvENKUlNS0_6FuncOpEE_clES3_ENKUlNS0_11GetGlobalOpEE_clES5_.exit.i

_ZZZN4mlir5emitc12_GLOBAL__N_119WrapFuncInClassPass14runOnOperationEvENKUlNS0_6FuncOpEE_clES3_ENKUlNS0_11GetGlobalOpEE_clES5_.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZZNS_5emitc12_GLOBAL__N_119WrapFuncInClassPass14runOnOperationEvENKUlNS4_6FuncOpEE_clES7_EUlNS4_11GetGlobalOpEE_S9_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESJ_E4typeESE_OT1_ENKUlSE_E_clESE_.exit

_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZZNS_5emitc12_GLOBAL__N_119WrapFuncInClassPass14runOnOperationEvENKUlNS4_6FuncOpEE_clES7_EUlNS4_11GetGlobalOpEE_S9_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESJ_E4typeESE_OT1_ENKUlSE_E_clESE_.exit: ; preds = %bb.a, %_ZZZN4mlir5emitc12_GLOBAL__N_119WrapFuncInClassPass14runOnOperationEvENKUlNS0_6FuncOpEE_clES3_ENKUlNS0_11GetGlobalOpEE_clES5_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS3_8GlobalOpENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !77, !noalias !270 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78, !noalias !270 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !79, !noalias !270 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %.sroa.04.0.copyload.i = load ptr, ptr %1, align 8 ; 2 uses
  %i.i = ptrtoint ptr %.sroa.04.0.copyload.i to i64
  %i.j = xor i64 %i.i, -49064778989728563         ; 2 uses
  %i.k = lshr i64 %i.j, 30
  %i.l = xor i64 %i.k, %i.j
  %i.m = mul i64 %i.l, -4658895280553007687       ; 2 uses
  %i.n = lshr i64 %i.m, 27
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul i64 %i.o, -7723592293110705685       ; 2 uses
  %i.q = lshr i64 %i.p, 31
  %i.r = xor i64 %i.q, %i.p
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.h, %i.s                       ; 3 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.u ; 2 uses
  %i.w = lshr i64 %i.u, 5
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !81
  %i.z = and i32 %i.t, 31
  %i.aa = lshr i32 %i.y, %i.z
  %i.ab = trunc i32 %i.aa to i1
  br i1 %i.ab, label %.lr.ph.i, label %.loopexit, !prof !129

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ac = phi ptr [ %i.ah, %bb.c ], [ %i.v, %bb.b ] ; 2 uses
  %.01926.i = phi i32 [ %i.af, %bb.c ], [ %i.t, %bb.b ]
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ac, align 8
  %i.ad = icmp eq ptr %.sroa.04.0.copyload.i, %.sroa.0.0.copyload.i
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS3_8GlobalOpENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E15LookupBucketForIS4_EEbRKT_RPSD_.exit, label %bb.c, !prof !130

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.01926.i, 1
  %i.af = and i32 %i.ae, %i.h                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !81
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !131, !llvm.loop !3

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.v, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !132
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !80
  %i.aq = shl i32 %i.ap, 2
  %i.ar = add i32 %i.aq, 4
  %i.as = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ar, %i.as
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS3_8GlobalOpENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E22findBucketForInsertionIS4_EEPSD_RKT_SH_.exit, label %bb.d, !prof !130

bb.d:                                             ; preds = %.loopexit
  %i.at = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS3_8GlobalOpENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.at)
  %i.au = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS3_8GlobalOpENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E15LookupBucketForIS4_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !132
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !78
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !77
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS3_8GlobalOpENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E22findBucketForInsertionIS4_EEPSD_RKT_SH_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS3_8GlobalOpENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E22findBucketForInsertionIS4_EEPSD_RKT_SH_.exit: ; preds = %.loopexit, %bb.d
  %i.av = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.aw = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.ax = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 5                 ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 31
  %i.be = shl nuw i32 1, %i.bd
  %i.bf = lshr i64 %i.bb, 5
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !81
  %i.bi = or i32 %i.be, %i.bh
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !81
  %i.bj = load i32, ptr %i.ao, align 8, !tbaa !80
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.ao, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = load i64, ptr %1, align 8
  store i64 %i.bl, ptr %i.ax, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i8 0, i64 24, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS3_8GlobalOpENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E15LookupBucketForIS4_EEbRKT_RPSD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS3_8GlobalOpENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E15LookupBucketForIS4_EEbRKT_RPSD_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS3_8GlobalOpENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E22findBucketForInsertionIS4_EEPSD_RKT_SH_.exit
  %.sroa.0.0 = phi ptr [ %i.ax, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS3_8GlobalOpENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E22findBucketForInsertionIS4_EEPSD_RKT_SH_.exit ], [ %i.ac, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS3_8GlobalOpENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E22findBucketForInsertionIS4_EEPSD_RKT_SH_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS3_8GlobalOpENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E15LookupBucketForIS4_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !77, !noalias !275 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !78, !noalias !275 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !79, !noalias !275 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %i.h = ptrtoint ptr %.sroa.04.0.copyload to i64
  %i.i = xor i64 %i.h, -49064778989728563         ; 2 uses
  %i.j = lshr i64 %i.i, 30
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 27
  %i.n = xor i64 %i.m, %i.l
  %i.o = mul i64 %i.n, -7723592293110705685       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.g, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !81
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph, label %.thread, !prof !129

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ag, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.01926 = phi i32 [ %i.ae, %bb.c ], [ %i.s, %bb.b ]
  %.sroa.0.0.copyload = load ptr, ptr %i.ab, align 8
  %i.ac = icmp eq ptr %.sroa.04.0.copyload, %.sroa.0.0.copyload ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !130

bb.c:                                             ; preds = %.lr.ph
  %i.ad = add nuw i32 %.01926, 1
  %i.ae = and i32 %i.ad, %i.g                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.af ; 2 uses
  %i.ah = lshr i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !81
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !131, !llvm.loop !3

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.ab, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !132
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS3_8GlobalOpENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.20", align 16 ; 10 uses
  %i.a = add i32 %1, -1
end_hunk_0
begin_hunk_1_@_ZN4mlir5BlockD1Ev
declare void @_ZN4mlir5BlockD1Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80)) unnamed_addr #15

declare void @_ZN4llvm12ilist_traitsIN4mlir5BlockEE18removeNodeFromListEPS2_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #8

declare void @_ZN4llvm12ilist_traitsIN4mlir5BlockEE21transferNodesFromListERS3_NS_14ilist_iteratorINS_12ilist_detail12node_optionsIS2_Lb0ELb0EvLb0EvEELb0ELb0EEES9_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr) local_unnamed_addr #8

declare { ptr, i64 } @_ZNK4mlir12FunctionType9getInputsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN4mlir6detail24FunctionOpInterfaceTraitINS_5emitc6FuncOpEE18getTypeWithoutArgsERKN4llvm9BitVectorE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(68) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::FunctionType", align 8 ; 4 uses
  %3 = alloca %"class.mlir::FunctionType", align 8 ; 4 uses
  %4 = alloca %"class.mlir::FunctionType", align 8 ; 4 uses
  %5 = alloca %"class.llvm::SmallVector.561", align 8 ; 8 uses
  %6 = alloca %"class.mlir::TypeRange", align 8   ; 3 uses
  %7 = alloca %"class.mlir::TypeRange", align 8   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 6, ptr %i.c, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.d = call ptr @_ZN4mlir5emitc6FuncOp15getFunctionTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  store ptr %i.d, ptr %4, align 8
  %i.e = call { ptr, i64 } @_ZNK4mlir12FunctionType9getInputsEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.f = extractvalue { ptr, i64 } %i.e, 0
  %i.g = extractvalue { ptr, i64 } %i.e, 1
  call void @_ZN4mlir9TypeRangeC1EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr %i.f, i64 %i.g) #24
  %i.h = load i64, ptr %6, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = call { i64, i64 } @_ZN4mlir14filterTypesOutENS_9TypeRangeERKN4llvm9BitVectorERNS1_15SmallVectorImplINS_4TypeEEE(i64 %i.h, i64 %i.j, ptr noundef nonnull align 8 dereferenceable(68) %1, ptr noundef nonnull align 8 dereferenceable(16) %5) #24 ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.n = call ptr @_ZN4mlir5emitc6FuncOp15getFunctionTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  store ptr %i.n, ptr %3, align 8
  %i.o = call { ptr, i64 } @_ZNK4mlir12FunctionType10getResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.p = extractvalue { ptr, i64 } %i.o, 0
  %i.q = extractvalue { ptr, i64 } %i.o, 1
  call void @_ZN4mlir9TypeRangeC1EN4llvm8ArrayRefINS_4TypeEEE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr %i.p, i64 %i.q) #24
  %i.r = load i64, ptr %7, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.t = load i64, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.u = call ptr @_ZN4mlir5emitc6FuncOp15getFunctionTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #24
  store ptr %i.u, ptr %2, align 8
  %i.v = call ptr @_ZNK4mlir12FunctionType5cloneENS_9TypeRangeES1_(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %i.l, i64 %i.m, i64 %i.r, i64 %i.t) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.w = load ptr, ptr %5, align 8, !tbaa !17     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.a
  br i1 %i.x, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.w) #24
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj6EED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret ptr %i.v
}

declare void @_ZN4mlir23function_interface_impl22eraseFunctionArgumentsENS_19FunctionOpInterfaceERKN4llvm9BitVectorENS_4TypeE(ptr, ptr, ptr noundef nonnull align 8 dereferenceable(68), ptr) local_unnamed_addr #8

declare { i64, i64 } @_ZN4mlir14filterTypesOutENS_9TypeRangeERKN4llvm9BitVectorERNS1_15SmallVectorImplINS_4TypeEEE(i64, i64, ptr noundef nonnull align 8 dereferenceable(68), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #8

declare ptr @_ZNK4mlir12FunctionType5cloneENS_9TypeRangeES1_(ptr noundef nonnull align 8 dereferenceable(8), i64, i64, i64, i64) local_unnamed_addr #8

declare { ptr, i64 } @_ZNK4mlir12FunctionType10getResultsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

declare void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #24
  br label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !447  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !448  ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.f, %i.h
  br i1 %.not.i.i13, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit
  %.0.i.i4 = phi ptr [ %i.j, %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit ], [ %i.f, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit ] ; 3 uses
  %i.i = load ptr, ptr %.0.i.i4, align 8, !tbaa !450 ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.i, null
  br i1 %.not.i.i2, label %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit, label %_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i: ; preds = %.lr.ph
  tail call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.i) #24, !inline_history !442
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 192) #25, !inline_history !442
  br label %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit

_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIN4mlir10DiagnosticEEclEPS1_.exit.i
  store ptr null, ptr %.0.i.i4, align 8, !tbaa !450
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i4, i64 8 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.j, %i.h
  br i1 %.not.i.i1, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit, label %.lr.ph, !llvm.loop !443

_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvPT_.exit
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !447
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit

_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit
  %i.k = phi ptr [ %.pre, %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit.loopexit ], [ %i.f, %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj0EED2Ev.exit ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !451
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #25
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EEEvT_S7_.exit, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !454  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !455  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.t
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i ], [ %i.r, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit ] ; 2 uses
  %i.u = load ptr, ptr %.05.i.i.i, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #25
  br label %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.t
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !444

_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIA_cSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.q, align 8, !tbaa !454
  br label %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i

_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exitthread-pre-split.i ], [ %i.r, %_ZNSt12_Vector_baseISt10unique_ptrIN4mlir10DiagnosticESt14default_deleteIS2_EESaIS5_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !456
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #25
  br label %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_cSt14default_deleteIS1_EEEvT_S6_.exit.i, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !17 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit
  tail call void @free(ptr noundef %i.ad) #24
  br label %_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir18DiagnosticArgumentELj4EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIA_cSt14default_deleteIS1_EESaIS4_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNK15WrapFuncInClass15matchAndRewriteENS1_5emitc6FuncOpERNS1_15PatternRewriterEEUlNSC_11GetGlobalOpEE_SG_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESO_E4typeES3_OT1_EUlS3_E_EEvlS3_(i64 noundef %0, ptr noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.d = icmp ne ptr %i.c, @_ZN4mlir6detail14TypeIDResolverINS_5emitc11GetGlobalOpEvE2idE
  %.not2.i = icmp eq ptr %1, null
  %.not.i = or i1 %.not2.i, %i.d
  br i1 %.not.i, label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNK15WrapFuncInClass15matchAndRewriteENS_5emitc6FuncOpERNS_15PatternRewriterEEUlNS5_11GetGlobalOpEE_S9_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESJ_E4typeESE_OT1_ENKUlSE_E_clESE_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !459, !nonnull !70, !align !126 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !461, !nonnull !70, !align !126 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !462
  %i.j = tail call noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef nonnull %1) #24
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.i, ptr %i.k, align 8, !tbaa !153
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.j, ptr %i.l, align 8
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !461, !nonnull !70, !align !126
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.o, align 8
  %i.p = getelementptr inbounds i8, ptr %1, i64 -8
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.p, align 8
  %i.q = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i32 %i.t, 16777215
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.v = lshr i32 %i.t, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.v, 1
  %i.w = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.w
  %.sroa.0.0.copyload.i.i3.i.i = load ptr, ptr %i.x, align 8, !tbaa !128
  %i.y = tail call ptr @_ZN4mlir5emitc10GetFieldOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_17FlatSymbolRefAttrE(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.r, ptr %.sroa.0.0.copyload.i.i3.i.i) #24
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !461, !nonnull !70, !align !126 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull %1, ptr noundef %i.y) #24, !inline_history !457
  br label %_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNK15WrapFuncInClass15matchAndRewriteENS_5emitc6FuncOpERNS_15PatternRewriterEEUlNS5_11GetGlobalOpEE_S9_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESJ_E4typeESE_OT1_ENKUlSE_E_clESE_.exit

_ZZN4mlir6detail4walkILNS_9WalkOrderE1ENS_15ForwardIteratorEZNK15WrapFuncInClass15matchAndRewriteENS_5emitc6FuncOpERNS_15PatternRewriterEEUlNS5_11GetGlobalOpEE_S9_vEENSt9enable_ifIXaantsr4llvm9is_one_ofIT2_PNS_9OperationEPNS_6RegionEPNS_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESJ_E4typeESE_OT1_ENKUlSE_E_clESE_.exit: ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @_ZN4mlir5emitc10GetFieldOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_17FlatSymbolRefAttrE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, ptr) local_unnamed_addr #8

declare noundef ptr @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsIN4mlir9OperationELb0ELb0EvLb0EvEEE10getNodePtrEPS4_(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { builtin nounwind allocsize(0) }
attributes #24 = { nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn nounwind }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{ptr @_ZN4mlir6detail11PassOptions6OptionINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvm2cl6parserIS8_EEED2Ev, null, null}
!1 = distinct !{!1, !82}
!2 = distinct !{!2, !82}
!3 = distinct !{!3, !82}
!4 = distinct !{!4, !82}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTSN4mlir6TypeID7StorageE", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !13, i64 0, !10, i64 8, !10, i64 12}
!17 = !{!16, !13, i64 0}
!18 = !{!16, !10, i64 12}
!19 = !{!"vtable pointer", !8, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"p1 omnipotent char", !13, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"long", !9, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"p1 _ZTSN4mlir4PassE", !13, i64 0}
!26 = !{!"_ZTSSt10_Head_baseILm0EPN4mlir4PassELb0EE", !25, i64 0}
!27 = !{!26, !25, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !21, i64 0}
!29 = !{!28, !21, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !28, i64 0, !23, i64 8, !9, i64 16}
!31 = !{!30, !21, i64 0}
!32 = !{!30, !23, i64 8}
!33 = !{!9, !9, i64 0}
!34 = !{!"bool", !9, i64 0}
!35 = !{!"_ZTSSt22_Optional_payload_baseIN4mlir6detail18PassExecutionStateEE", !9, i64 0, !34, i64 72}
!36 = !{!35, !34, i64 72}
!37 = !{!16, !10, i64 8}
!38 = !{!"_ZTSSt14_Function_base", !9, i64 0, !13, i64 16}
!39 = !{!38, !13, i64 16}
!40 = !{!"p1 _ZTSN4mlir11MLIRContextE", !13, i64 0}
!41 = !{!"p1 _ZTSSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS1_EE", !13, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!43 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !42, i64 0}
!44 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE", !43, i64 0}
!45 = !{!"_ZTSSt6vectorISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EESaIS5_EE", !44, i64 0}
!46 = !{!"p1 _ZTSN4mlir9OperationE", !13, i64 0}
!47 = !{!"_ZTSN4mlir7OpStateE", !46, i64 0}
!48 = !{!"_ZTSN4mlir2OpINS_8ModuleOpEJNS_7OpTrait9OneRegionENS2_11ZeroResultsENS2_14ZeroSuccessorsENS2_12ZeroOperandsENS2_17NoRegionArgumentsENS2_12NoTerminatorENS2_11SingleBlockENS2_12OpInvariantsENS_19BytecodeOpInterface5TraitENS2_11AffineScopeENS2_19IsIsolatedFromAboveENS2_11SymbolTableENS_17SymbolOpInterface5TraitENS_16OpAsmOpInterface5TraitENS_19RegionKindInterface5TraitENS2_18HasOnlyGraphRegionEEEE", !47, i64 0}
!49 = !{!"_ZTSN4mlir8ModuleOpE", !48, i64 0}
!50 = !{!"_ZTSN4mlir11OwningOpRefINS_8ModuleOpEEE", !49, i64 0}
!51 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EEvEE", !16, i64 0}
!52 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELb0EEE", !51, i64 0}
!53 = !{!"_ZTSN4llvm15SmallVectorImplISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EEEE", !52, i64 0}
!54 = !{!"_ZTSN4llvm18SmallVectorStorageISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELj6EEE", !9, i64 0}
!55 = !{!"_ZTSN4llvm11SmallVectorISt10unique_ptrIN4mlir19PDLPatternConfigSetESt14default_deleteIS3_EELj6EEE", !53, i64 0, !54, i64 16}
!56 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPN4mlir9OperationEPNS2_19PDLPatternConfigSetEEE", !13, i64 0}
!57 = !{!"p1 int", !13, i64 0}
!58 = !{!"_ZTSN4llvm8DenseMapIPN4mlir9OperationEPNS1_19PDLPatternConfigSetENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEE", !56, i64 0, !57, i64 8, !10, i64 16, !10, i64 20}
!59 = !{!"any p2 pointer", !13, i64 0}
!60 = !{!"p2 _ZTSN4llvm18StringMapEntryBaseE", !59, i64 0}
!61 = !{!"_ZTSN4llvm13StringMapImplE", !60, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!62 = !{!"_ZTSN4llvm9StringMapISt8functionIFNS_13LogicalResultERN4mlir15PatternRewriterERNS3_13PDLResultListENS_8ArrayRefINS3_8PDLValueEEEEENS_15MallocAllocatorEEE", !61, i64 0}
!63 = !{!"_ZTSN4mlir16PDLPatternModuleE", !50, i64 0, !55, i64 8, !58, i64 72, !62, i64 96, !62, i64 120}
!64 = !{!"_ZTSN4mlir17RewritePatternSetE", !40, i64 0, !45, i64 8, !63, i64 32}
!65 = !{!64, !40, i64 0}
!66 = !{!40, !40, i64 0}
!67 = !{!"_ZTSN4llvm19SmallPtrSetImplBaseE", !59, i64 0, !10, i64 8, !10, i64 12, !34, i64 16}
!68 = !{!67, !34, i64 16}
!69 = !{i8 0, i8 2}
!70 = !{}
!71 = !{!67, !59, i64 0}
!72 = !{!"p1 _ZTSN4llvm8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS2_8GlobalOpENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEE", !13, i64 0}
!73 = !{!"p1 _ZTSN4mlir21SymbolTableCollectionE", !13, i64 0}
!74 = !{!13, !13, i64 0}
!75 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIN4mlir5emitc6FuncOpENS_8DenseSetINS3_8GlobalOpENS_12DenseMapInfoIS6_vEEEEEE", !13, i64 0}
!76 = !{!"_ZTSN4llvm8DenseMapIN4mlir5emitc6FuncOpENS_8DenseSetINS2_8GlobalOpENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEE", !75, i64 0, !57, i64 8, !10, i64 16, !10, i64 20}
!77 = !{!76, !75, i64 0}
!78 = !{!76, !57, i64 8}
!79 = !{!76, !10, i64 20}
!80 = !{!76, !10, i64 16}
!81 = !{!10, !10, i64 0}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairIN4mlir5emitc8GlobalOpEEE", !13, i64 0}
!84 = !{!"_ZTSN4llvm8DenseMapIN4mlir5emitc8GlobalOpENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEE", !83, i64 0, !57, i64 8, !10, i64 16, !10, i64 20}
!85 = !{!84, !83, i64 0}
!86 = !{!84, !57, i64 8}
!87 = !{!84, !10, i64 20}
!88 = !{!84, !10, i64 16}
!89 = !{!42, !41, i64 0}
!90 = !{!42, !41, i64 8}
!91 = !{!"p1 _ZTSN4mlir14RewritePatternE", !13, i64 0}
!92 = !{!91, !91, i64 0}
!93 = !{!42, !41, i64 16}
!94 = !{!"p1 _ZTSN4mlir13OperationName4ImplE", !13, i64 0}
!95 = !{!94, !94, i64 0}
!96 = !{!"_ZTSN4mlir6TypeIDE", !14, i64 0}
!97 = !{!96, !14, i64 0}
!98 = !{!"p2 _ZTSN4mlir6detail11PassOptions10OptionBaseE", !59, i64 0}
!99 = !{!"_ZTSNSt12_Vector_baseIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EE17_Vector_impl_dataE", !98, i64 0, !98, i64 8, !98, i64 16}
!100 = !{!99, !98, i64 0}
!101 = !{!99, !98, i64 16}
!102 = !{!"p1 _ZTSN4llvm2cl10SubCommandE", !13, i64 0}
end_hunk_1
