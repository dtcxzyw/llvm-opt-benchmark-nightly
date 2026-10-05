Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestPDLByteCode?download=true
inline.NumInlined: 1410
inline.NumDeleted: 926
begin_hunk_0_@_ZNSt17_Function_handlerIFSt10unique_ptrIN4mlir4PassESt14default_deleteIS2_EEvEZNS1_16PassRegistrationIN12_GLOBAL__N_119TestPDLByteCodePassEEC1EvEUlvE_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation:bb.a
_ZNSt14_Function_base13_Base_managerIZN4mlir16PassRegistrationIN12_GLOBAL__N_119TestPDLByteCodePassEEC1EvEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN4mlir16PassRegistrationIN12_GLOBAL__N_119TestPDLByteCodePassEEC1EvEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4mlir4PassE, i64 16), ptr %0, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !99   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #18
  br label %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i

_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.i = load i32, ptr %i.h, align 4, !tbaa !103  ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !104
  %i.m = zext i32 %i.i to i64                     ; 2 uses
  %i.n = mul nuw nsw i64 %i.m, 24
  %i.o = add nuw nsw i64 %i.m, 31
  %i.p = lshr i64 %i.o, 3
  %i.q = and i64 %i.p, 1073741820
  %i.r = add nuw nsw i64 %i.q, %i.n
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.l, i64 noundef %i.r, i64 noundef 8) #16
  br label %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i

_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i: ; preds = %bb.c, %_ZNSt6vectorIPN4mlir6detail11PassOptions10OptionBaseESaIS4_EED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.t) #16
  br label %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i: ; preds = %bb.d, %_ZN4llvm8DenseMapINS_9StringRefEPNS_2cl6OptionENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S4_EEED2Ev.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !15   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZN4mlir6detail11PassOptionsD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.x) #16
  br label %_ZN4mlir6detail11PassOptionsD2Ev.exit

_ZN4mlir6detail11PassOptionsD2Ev.exit:            ; preds = %_ZN4llvm11SmallVectorIPNS_2cl6OptionELj4EED2Ev.exit.i.i, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !107 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4mlir6detail11PassOptionsD2Ev.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !108
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #18
  br label %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit: ; preds = %_ZN4mlir6detail11PassOptionsD2Ev.exit, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !27, !range !109, !noundef !28
  %i.aj = trunc nuw i8 %i.ai to i1
  store i8 0, ptr %i.ah, align 8, !tbaa !27
  %.not.i.i.i1 = xor i1 %i.aj, true
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load i8, ptr %i.ak, align 8, !range !109
  %i.am = trunc nuw i8 %i.al to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i1, i1 true, i1 %i.am
  br i1 %or.cond.i.i.i, label %_ZNSt14_Optional_baseIN4mlir6detail18PassExecutionStateELb0ELb0EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !111
  tail call void @free(ptr noundef %i.ao) #16
  br label %_ZNSt14_Optional_baseIN4mlir6detail18PassExecutionStateELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4mlir6detail18PassExecutionStateELb0ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorIPN4mlir4Pass9StatisticESaIS3_EED2Ev.exit, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_119TestPDLByteCodePassD0Ev(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN4mlir4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 336) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal { ptr, i64 } @_ZNK4mlir11PassWrapperIN12_GLOBAL__N_119TestPDLByteCodePassENS_13OperationPassINS_8ModuleOpEEEE7getNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 align 2 {
bb.a:
  ret { ptr, i64 } { ptr getelementptr (i8, ptr @.str.7, i64 49), i64 42 }
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_119TestPDLByteCodePass20getDependentDialectsERN4mlir15DialectRegistryE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::function.41", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_10pdl_interp16PDLInterpDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_, ptr %i.b, align 8, !tbaa !114
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_10pdl_interp16PDLInterpDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.a, align 8, !tbaa !11
  call void @_ZN4mlir15DialectRegistry6insertENS_6TypeIDEN4llvm9StringRefERKSt8functionIFPNS_7DialectEPNS_11MLIRContextEEE(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_10pdl_interp16PDLInterpDialectEvE2idE, ptr nonnull @.str.8, i64 10, ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN4mlir15DialectRegistry6insertINS_10pdl_interp16PDLInterpDialectEEEvv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #16, !inline_history !112 ; 0 uses
  br label %_ZN4mlir15DialectRegistry6insertINS_10pdl_interp16PDLInterpDialectEEEvv.exit

_ZN4mlir15DialectRegistry6insertINS_10pdl_interp16PDLInterpDialectEEEvv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK12_GLOBAL__N_119TestPDLByteCodePass11getArgumentEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.9, i64 22 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK12_GLOBAL__N_119TestPDLByteCodePass14getDescriptionEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.10, i64 31 }
}

declare i8 @_ZN4mlir4Pass17initializeOptionsEN4llvm9StringRefENS1_12function_refIFNS1_13LogicalResultERKNS1_5TwineEEEE(ptr noundef nonnull align 8 dereferenceable(336), ptr, i64, ptr, i64) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_119TestPDLByteCodePass14runOnOperationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(336) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::function.146", align 8 ; 9 uses
  %2 = alloca %"class.std::function.146", align 8 ; 9 uses
  %3 = alloca %"class.std::function.146", align 8 ; 9 uses
  %4 = alloca %"class.std::function.146", align 8 ; 9 uses
  %5 = alloca %"class.std::function.146", align 8 ; 9 uses
  %6 = alloca %"class.std::function.146", align 8 ; 9 uses
  %7 = alloca %"class.std::function.146", align 8 ; 9 uses
  %8 = alloca %"class.std::function.146", align 8 ; 9 uses
  %9 = alloca %"class.std::function.146", align 8 ; 9 uses
  %10 = alloca %"class.std::function.146", align 8 ; 9 uses
  %11 = alloca %"class.std::function.146", align 8 ; 9 uses
  %12 = alloca %"class.std::function.146", align 8 ; 9 uses
  %13 = alloca %"class.std::function.146", align 8 ; 9 uses
  %14 = alloca %"class.std::function.146", align 8 ; 9 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %17 = alloca %"class.mlir::RewritePatternSet", align 8 ; 16 uses
  %18 = alloca %"class.mlir::PDLPatternModule", align 8 ; 25 uses
  %19 = alloca %"class.mlir::FrozenRewritePatternSet", align 8 ; 5 uses
  %20 = alloca %"class.mlir::GreedyRewriteConfig", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8
  %i.b = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.e = tail call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  %i.f = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %15, i64 33
  store i8 1, ptr %i.g, align 1, !tbaa !31
  store ptr @.str.11, ptr %15, align 8, !tbaa !32
  store i8 3, ptr %i.f, align 8, !tbaa !33
  %i.h = call ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef %i.e, ptr noundef nonnull align 8 dereferenceable(34) %15) #16
  %i.i = call noundef ptr @_ZN4mlir11SymbolTable14lookupSymbolInEPNS_9OperationENS_10StringAttrE(ptr noundef %i.c, ptr %i.h) #16 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN4mlir7OpTrait11SymbolTableINS_8ModuleOpEE12lookupSymbolIS2_EET_NS_10StringAttrE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.m = icmp eq ptr %i.l, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  %21 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  %spec.select.i.i.i.i.i.i = and i1 %21, %i.m
  %spec.select.i.i.i.i = select i1 %spec.select.i.i.i.i.i.i, ptr %i.i, ptr null
  br label %_ZN4mlir7OpTrait11SymbolTableINS_8ModuleOpEE12lookupSymbolIS2_EET_NS_10StringAttrE.exit

_ZN4mlir7OpTrait11SymbolTableINS_8ModuleOpEE12lookupSymbolIS2_EET_NS_10StringAttrE.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.b ], [ null, %bb.a ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  %i.n = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  %i.o = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.p, align 1, !tbaa !31
  store ptr @.str.12, ptr %16, align 8, !tbaa !32
  store i8 3, ptr %i.o, align 8, !tbaa !33
  %i.q = call ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(34) %16) #16
  %i.r = call noundef ptr @_ZN4mlir11SymbolTable14lookupSymbolInEPNS_9OperationENS_10StringAttrE(ptr noundef nonnull %i.c, ptr %i.q) #16 ; 5 uses
  %.not.i.i.i4 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i4, label %_ZN4mlir7OpTrait11SymbolTableINS_8ModuleOpEE12lookupSymbolIS2_EET_NS_10StringAttrE.exit8.thread, label %_ZN4mlir7OpTrait11SymbolTableINS_8ModuleOpEE12lookupSymbolIS2_EET_NS_10StringAttrE.exit8

_ZN4mlir7OpTrait11SymbolTableINS_8ModuleOpEE12lookupSymbolIS2_EET_NS_10StringAttrE.exit8: ; preds = %_ZN4mlir7OpTrait11SymbolTableINS_8ModuleOpEE12lookupSymbolIS2_EET_NS_10StringAttrE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i5 = load ptr, ptr %i.s, align 8, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i5, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !37
  %i.v = icmp eq ptr %i.u, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  %22 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_8ModuleOpEvE2idE
  %spec.select.i.i.i.i.i.i6 = and i1 %22, %i.v    ; 2 uses
  %spec.select.i.i.i.i7 = select i1 %spec.select.i.i.i.i.i.i6, ptr %i.r, ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  %i.w = icmp ne ptr %.sroa.0.0.i.i.i, null
  %or.cond = select i1 %i.w, i1 %spec.select.i.i.i.i.i.i6, i1 false
  br i1 %or.cond, label %bb.c, label %.thread

_ZN4mlir7OpTrait11SymbolTableINS_8ModuleOpEE12lookupSymbolIS2_EET_NS_10StringAttrE.exit8.thread: ; preds = %_ZN4mlir7OpTrait11SymbolTableINS_8ModuleOpEE12lookupSymbolIS2_EET_NS_10StringAttrE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %.thread

bb.c:                                             ; preds = %_ZN4mlir7OpTrait11SymbolTableINS_8ModuleOpEE12lookupSymbolIS2_EET_NS_10StringAttrE.exit8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  %i.x = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #16
  store ptr %i.x, ptr %17, align 8, !tbaa !170
  %i.y = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %17, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i8 0, i64 32, i1 false)
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %17, i64 48
  store i32 0, ptr %i.ab, align 8, !tbaa !45
  %i.ac = getelementptr inbounds nuw i8, ptr %17, i64 52
  store i32 6, ptr %i.ac, align 4, !tbaa !16
  %i.ad = getelementptr inbounds nuw i8, ptr %17, i64 104
  %i.ae = getelementptr inbounds nuw i8, ptr %17, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i8 0, i64 40, i1 false)
  store i32 40, ptr %i.ae, align 8, !tbaa !171
  %i.af = getelementptr inbounds nuw i8, ptr %17, i64 152
  %i.ag = getelementptr inbounds nuw i8, ptr %17, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.af, i8 0, i64 16, i1 false)
  store i32 40, ptr %i.ag, align 8, !tbaa !171
  %i.ah = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.ak, align 8, !alias.scope !172
  store i64 ptrtoint (ptr @_ZL27customMultiEntityConstraintRN4mlir15PatternRewriterEPNS_9OperationES3_ to i64), ptr %14, align 8, !tbaa !22, !alias.scope !172
  store ptr @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEZNS2_6detail20pdl_function_builder17buildConstraintFnIRFS1_S4_PNS2_9OperationESF_EEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionISA_EEE5valueESL_E4typeEOSJ_EUlS4_S6_S9_E_E9_M_invokeERKSt9_Any_dataS4_S6_OS9_, ptr %i.aj, align 8, !tbaa !174, !alias.scope !172
  store ptr @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEZNS2_6detail20pdl_function_builder17buildConstraintFnIRFS1_S4_PNS2_9OperationESF_EEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionISA_EEE5valueESL_E4typeEOSJ_EUlS4_S6_S9_E_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation, ptr %i.ai, align 8, !tbaa !11, !alias.scope !172
  call void @_ZN4mlir16PDLPatternModule26registerConstraintFunctionEN4llvm9StringRefESt8functionIFNS1_13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS1_8ArrayRefINS_8PDLValueEEEEE(ptr noundef nonnull align 8 dereferenceable(144) %i.ah, ptr nonnull @.str.13, i64 23, ptr nofree noundef nonnull align 8 dereferenceable(32) %14) #16
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterEPNS_9OperationES7_EEEvNS2_9StringRefEOT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = call noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef 3) #16, !inline_history !117 ; 0 uses
  br label %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterEPNS_9OperationES7_EEEvNS2_9StringRefEOT_.exit

_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterEPNS_9OperationES7_EEEvNS2_9StringRefEOT_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.ap, align 8, !alias.scope !175
  store i64 ptrtoint (ptr @_ZL28customSingleEntityConstraintRN4mlir15PatternRewriterEPNS_9OperationE to i64), ptr %13, align 8, !tbaa !22, !alias.scope !175
  store ptr @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEZNS2_6detail20pdl_function_builder17buildConstraintFnIRFS1_S4_PNS2_9OperationEEEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionISA_EEE5valueESL_E4typeEOSJ_EUlS4_S6_S9_E_E9_M_invokeERKSt9_Any_dataS4_S6_OS9_, ptr %i.ao, align 8, !tbaa !174, !alias.scope !175
  store ptr @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEZNS2_6detail20pdl_function_builder17buildConstraintFnIRFS1_S4_PNS2_9OperationEEEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionISA_EEE5valueESL_E4typeEOSJ_EUlS4_S6_S9_E_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation, ptr %i.an, align 8, !tbaa !11, !alias.scope !175
  call void @_ZN4mlir16PDLPatternModule26registerConstraintFunctionEN4llvm9StringRefESt8functionIFNS1_13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS1_8ArrayRefINS_8PDLValueEEEEE(ptr noundef nonnull align 8 dereferenceable(144) %i.ah, ptr nonnull @.str.14, i64 24, ptr nofree noundef nonnull align 8 dereferenceable(32) %13) #16
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !11 ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i9, label %_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterEPNS_9OperationES7_EEEvNS2_9StringRefEOT_.exit
  %i.ar = call noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef 3) #16, !inline_history !120 ; 0 uses
  br label %_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit

_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit:    ; preds = %bb.e, %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterEPNS_9OperationES7_EEEvNS2_9StringRefEOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @_ZN4mlir9Operation6removeEv(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.0.i.i.i) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  store ptr %.sroa.0.0.i.i.i, ptr %18, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %18, i64 24
  store ptr %i.at, ptr %i.as, align 8, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i32 0, ptr %i.au, align 8, !tbaa !45
  %i.av = getelementptr inbounds nuw i8, ptr %18, i64 20
  store i32 6, ptr %i.av, align 4, !tbaa !16
  %i.aw = getelementptr inbounds nuw i8, ptr %18, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %18, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, i8 0, i64 40, i1 false)
  store i32 40, ptr %i.ax, align 8, !tbaa !171
  %i.ay = getelementptr inbounds nuw i8, ptr %18, i64 120
  %i.az = getelementptr inbounds nuw i8, ptr %18, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ay, i8 0, i64 16, i1 false)
  store i32 40, ptr %i.az, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.bc, align 8, !alias.scope !176
  store i64 ptrtoint (ptr @_ZL27customMultiEntityConstraintRN4mlir15PatternRewriterEPNS_9OperationES3_ to i64), ptr %12, align 8, !tbaa !22, !alias.scope !176
  store ptr @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEZNS2_6detail20pdl_function_builder17buildConstraintFnIRFS1_S4_PNS2_9OperationESF_EEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionISA_EEE5valueESL_E4typeEOSJ_EUlS4_S6_S9_E_E9_M_invokeERKSt9_Any_dataS4_S6_OS9_, ptr %i.bb, align 8, !tbaa !174, !alias.scope !176
  store ptr @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEZNS2_6detail20pdl_function_builder17buildConstraintFnIRFS1_S4_PNS2_9OperationESF_EEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionISA_EEE5valueESL_E4typeEOSJ_EUlS4_S6_S9_E_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation, ptr %i.ba, align 8, !tbaa !11, !alias.scope !176
  call void @_ZN4mlir16PDLPatternModule26registerConstraintFunctionEN4llvm9StringRefESt8functionIFNS1_13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS1_8ArrayRefINS_8PDLValueEEEEE(ptr noundef nonnull align 8 dereferenceable(144) %18, ptr nonnull @.str.13, i64 23, ptr nofree noundef nonnull align 8 dereferenceable(32) %12) #16
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !11 ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i10, label %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterEPNS_9OperationES7_EEEvNS2_9StringRefEOT_.exit11, label %bb.f

bb.f:                                             ; preds = %_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit
  %i.be = call noundef zeroext i1 %i.bd(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3) #16, !inline_history !117 ; 0 uses
  br label %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterEPNS_9OperationES7_EEEvNS2_9StringRefEOT_.exit11

_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterEPNS_9OperationES7_EEEvNS2_9StringRefEOT_.exit11: ; preds = %_ZN4mlir11OwningOpRefINS_8ModuleOpEED2Ev.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.bh, align 8, !alias.scope !177
  store i64 ptrtoint (ptr @_ZL35customMultiEntityVariadicConstraintRN4mlir15PatternRewriterENS_10ValueRangeENS_9TypeRangeE to i64), ptr %11, align 8, !tbaa !22, !alias.scope !177
  store ptr @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEZNS2_6detail20pdl_function_builder17buildConstraintFnIRFS1_S4_NS2_10ValueRangeENS2_9TypeRangeEEEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionISA_EEE5valueESL_E4typeEOSJ_EUlS4_S6_S9_E_E9_M_invokeERKSt9_Any_dataS4_S6_OS9_, ptr %i.bg, align 8, !tbaa !174, !alias.scope !177
  store ptr @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEZNS2_6detail20pdl_function_builder17buildConstraintFnIRFS1_S4_NS2_10ValueRangeENS2_9TypeRangeEEEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionISA_EEE5valueESL_E4typeEOSJ_EUlS4_S6_S9_E_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation, ptr %i.bf, align 8, !tbaa !11, !alias.scope !177
  call void @_ZN4mlir16PDLPatternModule26registerConstraintFunctionEN4llvm9StringRefESt8functionIFNS1_13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS1_8ArrayRefINS_8PDLValueEEEEE(ptr noundef nonnull align 8 dereferenceable(144) %18, ptr nonnull @.str.15, i64 27, ptr nofree noundef nonnull align 8 dereferenceable(32) %11) #16
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !11 ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i12, label %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterENS_10ValueRangeENS_9TypeRangeEEEEvNS2_9StringRefEOT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterEPNS_9OperationES7_EEEvNS2_9StringRefEOT_.exit11
  %i.bj = call noundef zeroext i1 %i.bi(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3) #16, !inline_history !125 ; 0 uses
  br label %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterENS_10ValueRangeENS_9TypeRangeEEEEvNS2_9StringRefEOT_.exit

_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterENS_10ValueRangeENS_9TypeRangeEEEEvNS2_9StringRefEOT_.exit: ; preds = %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterEPNS_9OperationES7_EEEvNS2_9StringRefEOT_.exit11, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.bm, align 8, !alias.scope !178
  store ptr @_ZL27customValueResultConstraintRN4mlir15PatternRewriterERNS_13PDLResultListEN4llvm8ArrayRefINS_8PDLValueEEE, ptr %10, align 8, !tbaa !22, !alias.scope !178
  store ptr @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEPSA_E9_M_invokeERKSt9_Any_dataS4_S6_OS9_, ptr %i.bl, align 8, !tbaa !174, !alias.scope !178
  store ptr @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEPSA_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.bk, align 8, !tbaa !11, !alias.scope !178
  call void @_ZN4mlir16PDLPatternModule26registerConstraintFunctionEN4llvm9StringRefESt8functionIFNS1_13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS1_8ArrayRefINS_8PDLValueEEEEE(ptr noundef nonnull align 8 dereferenceable(144) %18, ptr nonnull @.str.16, i64 21, ptr nofree noundef nonnull align 8 dereferenceable(32) %10) #16
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !11 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i13, label %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS2_8ArrayRefINS_8PDLValueEEEEEEvNS2_9StringRefEOT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterENS_10ValueRangeENS_9TypeRangeEEEEvNS2_9StringRefEOT_.exit
  %i.bo = call noundef zeroext i1 %i.bn(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3) #16, !inline_history !128 ; 0 uses
  br label %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS2_8ArrayRefINS_8PDLValueEEEEEEvNS2_9StringRefEOT_.exit

_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS2_8ArrayRefINS_8PDLValueEEEEEEvNS2_9StringRefEOT_.exit: ; preds = %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterENS_10ValueRangeENS_9TypeRangeEEEEvNS2_9StringRefEOT_.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.br, align 8, !alias.scope !179
  store ptr @_ZL26customTypeResultConstraintRN4mlir15PatternRewriterERNS_13PDLResultListEN4llvm8ArrayRefINS_8PDLValueEEE, ptr %9, align 8, !tbaa !22, !alias.scope !179
  store ptr @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEPSA_E9_M_invokeERKSt9_Any_dataS4_S6_OS9_, ptr %i.bq, align 8, !tbaa !174, !alias.scope !179
  store ptr @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEPSA_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.bp, align 8, !tbaa !11, !alias.scope !179
  call void @_ZN4mlir16PDLPatternModule26registerConstraintFunctionEN4llvm9StringRefESt8functionIFNS1_13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS1_8ArrayRefINS_8PDLValueEEEEE(ptr noundef nonnull align 8 dereferenceable(144) %18, ptr nonnull @.str.17, i64 21, ptr nofree noundef nonnull align 8 dereferenceable(32) %9) #16
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !11 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i14, label %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS2_8ArrayRefINS_8PDLValueEEEEEEvNS2_9StringRefEOT_.exit15, label %bb.i

bb.i:                                             ; preds = %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS2_8ArrayRefINS_8PDLValueEEEEEEvNS2_9StringRefEOT_.exit
  %i.bt = call noundef zeroext i1 %i.bs(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef 3) #16, !inline_history !128 ; 0 uses
  br label %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS2_8ArrayRefINS_8PDLValueEEEEEEvNS2_9StringRefEOT_.exit15

_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS2_8ArrayRefINS_8PDLValueEEEEEEvNS2_9StringRefEOT_.exit15: ; preds = %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS2_8ArrayRefINS_8PDLValueEEEEEEvNS2_9StringRefEOT_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.bw, align 8, !alias.scope !180
  store ptr @_ZL23customConstraintFailureRN4mlir15PatternRewriterERNS_13PDLResultListEN4llvm8ArrayRefINS_8PDLValueEEE, ptr %8, align 8, !tbaa !22, !alias.scope !180
  store ptr @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEPSA_E9_M_invokeERKSt9_Any_dataS4_S6_OS9_, ptr %i.bv, align 8, !tbaa !174, !alias.scope !180
  store ptr @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEPSA_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.bu, align 8, !tbaa !11, !alias.scope !180
  call void @_ZN4mlir16PDLPatternModule26registerConstraintFunctionEN4llvm9StringRefESt8functionIFNS1_13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS1_8ArrayRefINS_8PDLValueEEEEE(ptr noundef nonnull align 8 dereferenceable(144) %18, ptr nonnull @.str.18, i64 27, ptr nofree noundef nonnull align 8 dereferenceable(32) %8) #16
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !11 ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i16, label %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS2_8ArrayRefINS_8PDLValueEEEEEEvNS2_9StringRefEOT_.exit17, label %bb.j

bb.j:                                             ; preds = %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS2_8ArrayRefINS_8PDLValueEEEEEEvNS2_9StringRefEOT_.exit15
  %i.by = call noundef zeroext i1 %i.bx(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3) #16, !inline_history !128 ; 0 uses
  br label %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS2_8ArrayRefINS_8PDLValueEEEEEEvNS2_9StringRefEOT_.exit17

_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS2_8ArrayRefINS_8PDLValueEEEEEEvNS2_9StringRefEOT_.exit17: ; preds = %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS2_8ArrayRefINS_8PDLValueEEEEEEvNS2_9StringRefEOT_.exit15, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.cb, align 8, !alias.scope !181
  store ptr @_ZL31customTypeRangeResultConstraintRN4mlir15PatternRewriterERNS_13PDLResultListEN4llvm8ArrayRefINS_8PDLValueEEE, ptr %7, align 8, !tbaa !22, !alias.scope !181
  store ptr @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEPSA_E9_M_invokeERKSt9_Any_dataS4_S6_OS9_, ptr %i.ca, align 8, !tbaa !174, !alias.scope !181
  store ptr @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEPSA_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.bz, align 8, !tbaa !11, !alias.scope !181
  call void @_ZN4mlir16PDLPatternModule26registerConstraintFunctionEN4llvm9StringRefESt8functionIFNS1_13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS1_8ArrayRefINS_8PDLValueEEEEE(ptr noundef nonnull align 8 dereferenceable(144) %18, ptr nonnull @.str.19, i64 27, ptr nofree noundef nonnull align 8 dereferenceable(32) %7) #16
  %i.cc = load ptr, ptr %i.bz, align 8, !tbaa !11 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i18, label %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS2_8ArrayRefINS_8PDLValueEEEEEEvNS2_9StringRefEOT_.exit19, label %bb.k

bb.k:                                             ; preds = %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS2_8ArrayRefINS_8PDLValueEEEEEEvNS2_9StringRefEOT_.exit17
  %i.cd = call noundef zeroext i1 %i.cc(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3) #16, !inline_history !128 ; 0 uses
  br label %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS2_8ArrayRefINS_8PDLValueEEEEEEvNS2_9StringRefEOT_.exit19

_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS2_8ArrayRefINS_8PDLValueEEEEEEvNS2_9StringRefEOT_.exit19: ; preds = %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS2_8ArrayRefINS_8PDLValueEEEEEEvNS2_9StringRefEOT_.exit17, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.cg, align 8, !alias.scope !182
  store ptr @_ZL32customValueRangeResultConstraintRN4mlir15PatternRewriterERNS_13PDLResultListEN4llvm8ArrayRefINS_8PDLValueEEE, ptr %6, align 8, !tbaa !22, !alias.scope !182
  store ptr @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEPSA_E9_M_invokeERKSt9_Any_dataS4_S6_OS9_, ptr %i.cf, align 8, !tbaa !174, !alias.scope !182
  store ptr @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEPSA_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation, ptr %i.ce, align 8, !tbaa !11, !alias.scope !182
  call void @_ZN4mlir16PDLPatternModule26registerConstraintFunctionEN4llvm9StringRefESt8functionIFNS1_13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS1_8ArrayRefINS_8PDLValueEEEEE(ptr noundef nonnull align 8 dereferenceable(144) %18, ptr nonnull @.str.20, i64 28, ptr nofree noundef nonnull align 8 dereferenceable(32) %6) #16
  %i.ch = load ptr, ptr %i.ce, align 8, !tbaa !11 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i20, label %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS2_8ArrayRefINS_8PDLValueEEEEEEvNS2_9StringRefEOT_.exit21, label %bb.l

bb.l:                                             ; preds = %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS2_8ArrayRefINS_8PDLValueEEEEEEvNS2_9StringRefEOT_.exit19
  %i.ci = call noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3) #16, !inline_history !128 ; 0 uses
  br label %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS2_8ArrayRefINS_8PDLValueEEEEEEvNS2_9StringRefEOT_.exit21

_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS2_8ArrayRefINS_8PDLValueEEEEEEvNS2_9StringRefEOT_.exit21: ; preds = %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS2_8ArrayRefINS_8PDLValueEEEEEEvNS2_9StringRefEOT_.exit19, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.cl, align 8, !alias.scope !183
  store i64 ptrtoint (ptr @_ZL12customCreateRN4mlir15PatternRewriterEPNS_9OperationE to i64), ptr %5, align 8, !tbaa !22, !alias.scope !183
  store ptr @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEZNS2_6detail20pdl_function_builder14buildRewriteFnIRFPNS2_9OperationES4_SF_EEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionISA_EEE5valueESL_E4typeEOSJ_EUlS4_S6_S9_E_E9_M_invokeERKSt9_Any_dataS4_S6_OS9_, ptr %i.ck, align 8, !tbaa !174, !alias.scope !183
  store ptr @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEZNS2_6detail20pdl_function_builder14buildRewriteFnIRFPNS2_9OperationES4_SF_EEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionISA_EEE5valueESL_E4typeEOSJ_EUlS4_S6_S9_E_E10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation, ptr %i.cj, align 8, !tbaa !11, !alias.scope !183
  call void @_ZN4mlir16PDLPatternModule23registerRewriteFunctionEN4llvm9StringRefESt8functionIFNS1_13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS1_8ArrayRefINS_8PDLValueEEEEE(ptr noundef nonnull align 8 dereferenceable(144) %18, ptr nonnull @.str.21, i64 7, ptr nofree noundef nonnull align 8 dereferenceable(32) %5) #16
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !11 ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i22, label %_ZN4mlir16PDLPatternModule23registerRewriteFunctionIRFPNS_9OperationERNS_15PatternRewriterES3_EEEvN4llvm9StringRefEOT_.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS2_8ArrayRefINS_8PDLValueEEEEEEvNS2_9StringRefEOT_.exit21
  %i.cn = call noundef zeroext i1 %i.cm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3) #16, !inline_history !139 ; 0 uses
  br label %_ZN4mlir16PDLPatternModule23registerRewriteFunctionIRFPNS_9OperationERNS_15PatternRewriterES3_EEEvN4llvm9StringRefEOT_.exit

_ZN4mlir16PDLPatternModule23registerRewriteFunctionIRFPNS_9OperationERNS_15PatternRewriterES3_EEEvN4llvm9StringRefEOT_.exit: ; preds = %_ZN4mlir16PDLPatternModule26registerConstraintFunctionIRFN4llvm13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS2_8ArrayRefINS_8PDLValueEEEEEEvNS2_9StringRefEOT_.exit21, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.cq, align 8, !alias.scope !184
  store i64 ptrtoint (ptr @_ZL26customVariadicResultCreateRN4mlir15PatternRewriterEPNS_9OperationE to i64), ptr %4, align 8, !tbaa !22, !alias.scope !184
  store ptr @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEZNS2_6detail20pdl_function_builder14buildRewriteFnIRFSt4pairINS2_12OperandRangeENS2_14ValueTypeRangeISF_EEES4_PNS2_9OperationEEEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionISA_EEE5valueESQ_E4typeEOSO_EUlS4_S6_S9_E_E9_M_invokeERKSt9_Any_dataS4_S6_OS9_, ptr %i.cp, align 8, !tbaa !174, !alias.scope !184
  store ptr @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEZNS2_6detail20pdl_function_builder14buildRewriteFnIRFSt4pairINS2_12OperandRangeENS2_14ValueTypeRangeISF_EEES4_PNS2_9OperationEEEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionISA_EEE5valueESQ_E4typeEOSO_EUlS4_S6_S9_E_E10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation, ptr %i.co, align 8, !tbaa !11, !alias.scope !184
  call void @_ZN4mlir16PDLPatternModule23registerRewriteFunctionEN4llvm9StringRefESt8functionIFNS1_13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS1_8ArrayRefINS_8PDLValueEEEEE(ptr noundef nonnull align 8 dereferenceable(144) %18, ptr nonnull @.str.22, i64 11, ptr nofree noundef nonnull align 8 dereferenceable(32) %4) #16
  %i.cr = load ptr, ptr %i.co, align 8, !tbaa !11 ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i23, label %_ZN4mlir16PDLPatternModule23registerRewriteFunctionIRFSt4pairINS_12OperandRangeENS_14ValueTypeRangeIS3_EEERNS_15PatternRewriterEPNS_9OperationEEEEvN4llvm9StringRefEOT_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4mlir16PDLPatternModule23registerRewriteFunctionIRFPNS_9OperationERNS_15PatternRewriterES3_EEEvN4llvm9StringRefEOT_.exit
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3) #16, !inline_history !142 ; 0 uses
  br label %_ZN4mlir16PDLPatternModule23registerRewriteFunctionIRFSt4pairINS_12OperandRangeENS_14ValueTypeRangeIS3_EEERNS_15PatternRewriterEPNS_9OperationEEEEvN4llvm9StringRefEOT_.exit

_ZN4mlir16PDLPatternModule23registerRewriteFunctionIRFSt4pairINS_12OperandRangeENS_14ValueTypeRangeIS3_EEERNS_15PatternRewriterEPNS_9OperationEEEEvN4llvm9StringRefEOT_.exit: ; preds = %_ZN4mlir16PDLPatternModule23registerRewriteFunctionIRFPNS_9OperationERNS_15PatternRewriterES3_EEEvN4llvm9StringRefEOT_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.cv, align 8, !alias.scope !185
  store i64 ptrtoint (ptr @_ZL16customCreateTypeRN4mlir15PatternRewriterE to i64), ptr %3, align 8, !tbaa !22, !alias.scope !185
  store ptr @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEZNS2_6detail20pdl_function_builder14buildRewriteFnIRFNS2_4TypeES4_EEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionISA_EEE5valueESK_E4typeEOSI_EUlS4_S6_S9_E_E9_M_invokeERKSt9_Any_dataS4_S6_OS9_, ptr %i.cu, align 8, !tbaa !174, !alias.scope !185
  store ptr @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEZNS2_6detail20pdl_function_builder14buildRewriteFnIRFNS2_4TypeES4_EEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionISA_EEE5valueESK_E4typeEOSI_EUlS4_S6_S9_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation, ptr %i.ct, align 8, !tbaa !11, !alias.scope !185
  call void @_ZN4mlir16PDLPatternModule23registerRewriteFunctionEN4llvm9StringRefESt8functionIFNS1_13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS1_8ArrayRefINS_8PDLValueEEEEE(ptr noundef nonnull align 8 dereferenceable(144) %18, ptr nonnull @.str.23, i64 12, ptr nofree noundef nonnull align 8 dereferenceable(32) %3) #16
  %i.cw = load ptr, ptr %i.ct, align 8, !tbaa !11 ; 2 uses
  %.not.i.i24 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i24, label %_ZN4mlir16PDLPatternModule23registerRewriteFunctionIRFNS_4TypeERNS_15PatternRewriterEEEEvN4llvm9StringRefEOT_.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4mlir16PDLPatternModule23registerRewriteFunctionIRFSt4pairINS_12OperandRangeENS_14ValueTypeRangeIS3_EEERNS_15PatternRewriterEPNS_9OperationEEEEvN4llvm9StringRefEOT_.exit
  %i.cx = call noundef zeroext i1 %i.cw(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3) #16, !inline_history !145 ; 0 uses
  br label %_ZN4mlir16PDLPatternModule23registerRewriteFunctionIRFNS_4TypeERNS_15PatternRewriterEEEEvN4llvm9StringRefEOT_.exit

_ZN4mlir16PDLPatternModule23registerRewriteFunctionIRFNS_4TypeERNS_15PatternRewriterEEEEvN4llvm9StringRefEOT_.exit: ; preds = %_ZN4mlir16PDLPatternModule23registerRewriteFunctionIRFSt4pairINS_12OperandRangeENS_14ValueTypeRangeIS3_EEERNS_15PatternRewriterEPNS_9OperationEEEEvN4llvm9StringRefEOT_.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.da, align 8, !alias.scope !186
  store i64 ptrtoint (ptr @_ZL19customCreateStrAttrB5cxx11RN4mlir15PatternRewriterE to i64), ptr %2, align 8, !tbaa !22, !alias.scope !186
  store ptr @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEZNS2_6detail20pdl_function_builder14buildRewriteFnIRFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_EEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionISA_EEE5valueESP_E4typeEOSN_EUlS4_S6_S9_E_E9_M_invokeERKSt9_Any_dataS4_S6_OS9_, ptr %i.cz, align 8, !tbaa !174, !alias.scope !186
  store ptr @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEZNS2_6detail20pdl_function_builder14buildRewriteFnIRFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_EEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionISA_EEE5valueESP_E4typeEOSN_EUlS4_S6_S9_E_E10_M_managerERSt9_Any_dataRKSV_St18_Manager_operation, ptr %i.cy, align 8, !tbaa !11, !alias.scope !186
  call void @_ZN4mlir16PDLPatternModule23registerRewriteFunctionEN4llvm9StringRefESt8functionIFNS1_13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS1_8ArrayRefINS_8PDLValueEEEEE(ptr noundef nonnull align 8 dereferenceable(144) %18, ptr nonnull @.str.24, i64 11, ptr nofree noundef nonnull align 8 dereferenceable(32) %2) #16
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !11 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.db, null
  br i1 %.not.i.i25, label %_ZN4mlir16PDLPatternModule23registerRewriteFunctionIRFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_15PatternRewriterEEEEvN4llvm9StringRefEOT_.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4mlir16PDLPatternModule23registerRewriteFunctionIRFNS_4TypeERNS_15PatternRewriterEEEEvN4llvm9StringRefEOT_.exit
  %i.dc = call noundef zeroext i1 %i.db(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #16, !inline_history !148 ; 0 uses
  br label %_ZN4mlir16PDLPatternModule23registerRewriteFunctionIRFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_15PatternRewriterEEEEvN4llvm9StringRefEOT_.exit

_ZN4mlir16PDLPatternModule23registerRewriteFunctionIRFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_15PatternRewriterEEEEvN4llvm9StringRefEOT_.exit: ; preds = %_ZN4mlir16PDLPatternModule23registerRewriteFunctionIRFNS_4TypeERNS_15PatternRewriterEEEEvN4llvm9StringRefEOT_.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.df, align 8, !alias.scope !187
  store i64 ptrtoint (ptr @_ZL14customRewriterRN4mlir15PatternRewriterEPNS_9OperationENS_5ValueE to i64), ptr %1, align 8, !tbaa !22, !alias.scope !187
  store ptr @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEZNS2_6detail20pdl_function_builder14buildRewriteFnIRFvS4_PNS2_9OperationENS2_5ValueEEEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionISA_EEE5valueESM_E4typeEOSK_EUlS4_S6_S9_E_E9_M_invokeERKSt9_Any_dataS4_S6_OS9_, ptr %i.de, align 8, !tbaa !174, !alias.scope !187
  store ptr @_ZNSt17_Function_handlerIFN4llvm13LogicalResultERN4mlir15PatternRewriterERNS2_13PDLResultListENS0_8ArrayRefINS2_8PDLValueEEEEZNS2_6detail20pdl_function_builder14buildRewriteFnIRFvS4_PNS2_9OperationENS2_5ValueEEEENSt9enable_ifIXntsr3std14is_convertibleIT_St8functionISA_EEE5valueESM_E4typeEOSK_EUlS4_S6_S9_E_E10_M_managerERSt9_Any_dataRKSS_St18_Manager_operation, ptr %i.dd, align 8, !tbaa !11, !alias.scope !187
  call void @_ZN4mlir16PDLPatternModule23registerRewriteFunctionEN4llvm9StringRefESt8functionIFNS1_13LogicalResultERNS_15PatternRewriterERNS_13PDLResultListENS1_8ArrayRefINS_8PDLValueEEEEE(ptr noundef nonnull align 8 dereferenceable(144) %18, ptr nonnull @.str.25, i64 8, ptr nofree noundef nonnull align 8 dereferenceable(32) %1) #16
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !11 ; 2 uses
  %.not.i.i26 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i26, label %_ZN4mlir16PDLPatternModule23registerRewriteFunctionIRFvRNS_15PatternRewriterEPNS_9OperationENS_5ValueEEEEvN4llvm9StringRefEOT_.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4mlir16PDLPatternModule23registerRewriteFunctionIRFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_15PatternRewriterEEEEvN4llvm9StringRefEOT_.exit
  %i.dh = call noundef zeroext i1 %i.dg(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #16, !inline_history !151 ; 0 uses
  br label %_ZN4mlir16PDLPatternModule23registerRewriteFunctionIRFvRNS_15PatternRewriterEPNS_9OperationENS_5ValueEEEEvN4llvm9StringRefEOT_.exit

_ZN4mlir16PDLPatternModule23registerRewriteFunctionIRFvRNS_15PatternRewriterEPNS_9OperationENS_5ValueEEEEvN4llvm9StringRefEOT_.exit: ; preds = %_ZN4mlir16PDLPatternModule23registerRewriteFunctionIRFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_15PatternRewriterEEEEvN4llvm9StringRefEOT_.exit, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @_ZN4mlir16PDLPatternModule7mergeInEOS0_(ptr noundef nonnull align 8 dereferenceable(144) %i.ah, ptr noundef nonnull align 8 dereferenceable(144) %18) #16
  %i.di = getelementptr inbounds nuw i8, ptr %i.r, i64 44
  %i.dj = load i32, ptr %i.di, align 4            ; 3 uses
  %i.dk = and i32 %i.dj, 8388607
  %i.dl = icmp ne i32 %i.dk, 0
  call void @llvm.assume(i1 %i.dl)
  %i.dm = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i7, i64 64
  %i.dn = lshr i32 %i.dj, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.dn, 1
  %i.do = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.do
  %i.dq = lshr i32 %i.dj, 21
  %i.dr = and i32 %i.dq, 2040
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !202
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.dt, i64 %i.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  call void @_ZN4mlir23FrozenRewritePatternSetC1EONS_17RewritePatternSetEN4llvm8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(176) %17, ptr null, i64 0, ptr null, i64 0) #16
  %i.dy = getelementptr inbounds nuw i8, ptr %20, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %20, i8 0, i64 56, i1 false)
  store i32 2, ptr %i.dy, align 4, !tbaa !208
  %i.dz = getelementptr inbounds nuw i8, ptr %20, i64 16
  store i64 10, ptr %i.dz, align 8, !tbaa !209
  %i.ea = getelementptr inbounds nuw i8, ptr %20, i64 24
  store i64 -1, ptr %i.ea, align 8, !tbaa !210
  %i.eb = getelementptr inbounds nuw i8, ptr %20, i64 40
  store ptr null, ptr %i.eb, align 8, !tbaa !211
  %i.ec = getelementptr inbounds nuw i8, ptr %20, i64 48
  store i8 1, ptr %i.ec, align 8, !tbaa !212
  %i.ed = getelementptr inbounds nuw i8, ptr %20, i64 49
  store i8 1, ptr %i.ed, align 1, !tbaa !213
  %i.ee = call i8 @_ZN4mlir21applyPatternsGreedilyERNS_6RegionERKNS_23FrozenRewritePatternSetENS_19GreedyRewriteConfigEPb(ptr noundef nonnull align 8 dereferenceable(28) %i.dx, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull byval(%"class.mlir::GreedyRewriteConfig") align 8 %20, ptr noundef null) #16 ; 0 uses
  call void @_ZN4mlir23FrozenRewritePatternSetD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  call void @_ZN4mlir16PDLPatternModuleD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @_ZN4mlir16PDLPatternModuleD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.ah) #16
  %i.ef = load ptr, ptr %i.y, align 8, !tbaa !214 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !215 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ef, %i.eh
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4mlir16PDLPatternModule23registerRewriteFunctionIRFvRNS_15PatternRewriterEPNS_9OperationENS_5ValueEEEEvN4llvm9StringRefEOT_.exit, %_ZSt8_DestroyISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.em, %_ZSt8_DestroyISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.ef, %_ZN4mlir16PDLPatternModule23registerRewriteFunctionIRFvRNS_15PatternRewriterEPNS_9OperationENS_5ValueEEEEvN4llvm9StringRefEOT_.exit ] ; 2 uses
  %i.ei = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !217 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4mlir14RewritePatternEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4mlir14RewritePatternEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !18
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(96) %i.ei) #16, !inline_history !152
  br label %_ZSt8_DestroyISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4mlir14RewritePatternEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.em, %i.eh
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !153

_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.y, align 8, !tbaa !214
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, %_ZN4mlir16PDLPatternModule23registerRewriteFunctionIRFvRNS_15PatternRewriterEPNS_9OperationENS_5ValueEEEEvN4llvm9StringRefEOT_.exit
  %i.en = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i ], [ %i.ef, %_ZN4mlir16PDLPatternModule23registerRewriteFunctionIRFvRNS_15PatternRewriterEPNS_9OperationENS_5ValueEEEEvN4llvm9StringRefEOT_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i1.i.i, label %_ZN4mlir17RewritePatternSetD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !218
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.en to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef %i.es) #18
  br label %_ZN4mlir17RewritePatternSetD2Ev.exit

_ZN4mlir17RewritePatternSetD2Ev.exit:             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exit.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %.thread

.thread:                                          ; preds = %_ZN4mlir7OpTrait11SymbolTableINS_8ModuleOpEE12lookupSymbolIS2_EET_NS_10StringAttrE.exit8.thread, %_ZN4mlir7OpTrait11SymbolTableINS_8ModuleOpEE12lookupSymbolIS2_EET_NS_10StringAttrE.exit8, %_ZN4mlir17RewritePatternSetD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir4Pass10initializeEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4mlir13OperationPassINS_8ModuleOpEE13canScheduleOnENS_23RegisteredOperationNameE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %2, align 8
  %i.b = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8
  %i.f = trunc nuw i8 %.sroa.5.0.copyload to i1
  %.not.i.i = icmp eq i64 %i.d, %.sroa.4.0.copyload
  %or.cond = select i1 %i.f, i1 %.not.i.i, i1 false
  br i1 %or.cond, label %bb.b, label %_ZSteqIN4llvm9StringRefES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES5_RKSt8optionalIS6_E.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.d, 0
  br i1 %i.g, label %_ZSteqIN4llvm9StringRefES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES5_RKSt8optionalIS6_E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %bcmp.i.i = call i32 @bcmp(ptr %i.c, ptr %.sroa.0.0.copyload, i64 %i.d)
  %i.h = icmp eq i32 %bcmp.i.i, 0
  br label %_ZSteqIN4llvm9StringRefES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES5_RKSt8optionalIS6_E.exit

_ZSteqIN4llvm9StringRefES1_ENSt9enable_ifIXsr14is_convertibleIDTeqclsr3stdE7declvalIRKT0_EEclsr3stdE7declvalIRKT_EEEbEE5valueEbE4typeES5_RKSt8optionalIS6_E.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.i = phi i1 [ false, %bb.a ], [ %i.h, %bb.c ], [ true, %bb.b ]
  ret i1 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4mlir4Pass13canScheduleOnEPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8, !tbaa !35 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %.not.i.not = icmp eq ptr %i.c, @_ZN4mlir6detail14TypeIDResolverIvvE2idE
  br i1 %.not.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr nonnull %.sroa.0.0.copyload.i) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.g, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK4mlir11PassWrapperIN12_GLOBAL__N_119TestPDLByteCodePassENS_13OperationPassINS_8ModuleOpEEEE9clonePassEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(336) %1) unnamed_addr #0 align 2 {
_ZNSt10unique_ptrIN12_GLOBAL__N_119TestPDLByteCodePassESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(336) ptr @_Znwm(i64 noundef 336) #17, !noalias !222, !inline_history !221 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !13, !noalias !222
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !222
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.e, align 8, !tbaa !13, !noalias !222
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i8 0, ptr %i.f, align 8, !tbaa !27, !noalias !222
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, i8 0, i64 56, i1 false), !noalias !222
  store ptr %i.i, ptr %i.h, align 8, !tbaa !15, !noalias !222
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i32 0, ptr %i.j, align 8, !tbaa !45, !noalias !222
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  store i32 4, ptr %i.k, align 4, !tbaa !16, !noalias !222
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store ptr %i.m, ptr %i.l, align 8, !tbaa !15, !noalias !222
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i32 0, ptr %i.n, align 8, !tbaa !45, !noalias !222
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  store i32 4, ptr %i.o, align 4, !tbaa !16, !noalias !222
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i8 0, i64 64, i1 false), !noalias !222
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN12_GLOBAL__N_119TestPDLByteCodePassE, i64 16), ptr %i.a, align 8, !tbaa !18, !noalias !222
  store ptr %i.a, ptr %0, align 8, !tbaa !21
  ret void
}

declare void @_ZN4mlir4Pass6anchorEv(ptr noundef nonnull align 8 dereferenceable(336)) unnamed_addr #8

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

declare void @_ZN4mlir15DialectRegistry6insertENS_6TypeIDEN4llvm9StringRefERKSt8functionIFPNS_7DialectEPNS_11MLIRContextEEE(ptr noundef nonnull align 8 dereferenceable(136), ptr, ptr, i64, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_10pdl_interp16PDLInterpDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.58, align 8             ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !223    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr %i.a, ptr %2, align 8, !tbaa !50
end_hunk_0
