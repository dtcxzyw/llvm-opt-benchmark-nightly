Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ACCSpecializeForDevice?download=true
inline.NumInlined: 4977
inline.NumDeleted: 2952
begin_hunk_0_@_ZN4llvm15SmallVectorImplIlEaSEOS1_:bb.a
  store ptr %i.h, ptr %0, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !69
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !69
  store ptr %i.c, ptr %1, align 8, !tbaa !14
  store i32 0, ptr %i.k, align 4, !tbaa !15
  store i32 0, ptr %i.j, align 8, !tbaa !25
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !25   ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !25   ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit
    i32 1, label %bb.h
  ], !prof !204

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load i64, ptr %i.b, align 8, !tbaa !21
  store i64 %i.t, ptr %i.s, align 8, !tbaa !21
  br label %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit

_ZSt4moveIPlS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.f, %bb.h, %bb.g
  store i32 %i.n, ptr %i.p, align 8, !tbaa !25
  store i32 0, ptr %i.m, align 8, !tbaa !25
  br label %bb.p

bb.i:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !15
  %i.w = icmp ult i32 %i.v, %i.n
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.p, align 8, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.x, i64 noundef %i.o, i64 noundef 8) #23
  br label %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit34

bb.k:                                             ; preds = %bb.i
  %.not32 = icmp eq i32 %i.q, 0
  br i1 %.not32, label %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %.not37 = icmp eq i32 %i.q, 1
  br i1 %.not37, label %bb.n, label %bb.m, !prof !205

bb.m:                                             ; preds = %bb.l
  %.idx36 = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.y, ptr align 8 %i.b, i64 %.idx36, i1 false)
  br label %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit34

bb.n:                                             ; preds = %bb.l
  %i.z = load i64, ptr %i.b, align 8, !tbaa !21
  store i64 %i.z, ptr %i.y, align 8, !tbaa !21
  br label %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit34

_ZSt4moveIPlS0_ET0_T_S2_S1_.exit34:               ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.026 = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %i.r, %bb.m ], [ 1, %bb.n ] ; 4 uses
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !25
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %.not.i.i = icmp samesign eq i64 %.026, %i.ab
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_moveIPlS3_EEvT_S4_T0_.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit34
  %i.ac = load ptr, ptr %1, align 8, !tbaa !14
  %.idx39 = shl nuw nsw i64 %.026, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx39
  %i.ae = load ptr, ptr %0, align 8, !tbaa !14
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.026
  %i.ag = sub nsw i64 %i.ab, %.026
  %gepdiff = shl nsw i64 %i.ag, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 8 %i.ad, i64 %gepdiff, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_moveIPlS3_EEvT_S4_T0_.exit

_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_moveIPlS3_EEvT_S4_T0_.exit: ; preds = %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit34, %bb.o
  store i32 %i.n, ptr %i.p, align 8, !tbaa !25
  store i32 0, ptr %i.m, align 8, !tbaa !25
  br label %bb.p

bb.p:                                             ; preds = %_ZSt4moveIPlS0_ET0_T_S2_S1_.exit, %_ZN4llvm23SmallVectorTemplateBaseIlLb1EE18uninitialized_moveIPlS3_EEvT_S4_T0_.exit, %bb.a, %_ZN4llvm15SmallVectorImplIlE12assignRemoteEOS1_.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4mlir3acc4impl26ACCSpecializeForDeviceBaseIN12_GLOBAL__N_122ACCSpecializeForDeviceEED2Ev(ptr noundef nonnull align 8 dead_on_return(600) dereferenceable(600) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4mlir3acc4impl26ACCSpecializeForDeviceBaseIN12_GLOBAL__N_122ACCSpecializeForDeviceEEE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  tail call void @_ZN4mlir6detail11PassOptions10ListOptionIlN4llvm2cl6parserIlEEED2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.a) #23
  tail call void @_ZN4mlir4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %0) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_122ACCSpecializeForDeviceD0Ev(ptr noundef nonnull align 8 dereferenceable(600) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4mlir3acc4impl26ACCSpecializeForDeviceBaseIN12_GLOBAL__N_122ACCSpecializeForDeviceEEE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  tail call void @_ZN4mlir6detail11PassOptions10ListOptionIlN4llvm2cl6parserIlEEED2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.a) #23, !inline_history !206
  tail call void @_ZN4mlir4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(600) %0) #23, !inline_history !206
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 600) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK4mlir3acc4impl26ACCSpecializeForDeviceBaseIN12_GLOBAL__N_122ACCSpecializeForDeviceEE7getNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.9, i64 22 }
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK4mlir3acc4impl26ACCSpecializeForDeviceBaseIN12_GLOBAL__N_122ACCSpecializeForDeviceEE20getDependentDialectsERNS_15DialectRegistryE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::function.121", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_3acc14OpenACCDialectEEEvvEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_, ptr %i.b, align 8, !tbaa !209
  store ptr @_ZNSt17_Function_handlerIFPN4mlir7DialectEPNS0_11MLIRContextEEZNS0_15DialectRegistry6insertINS0_3acc14OpenACCDialectEEEvvEUlS4_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.a, align 8, !tbaa !71
  call void @_ZN4mlir15DialectRegistry6insertENS_6TypeIDEN4llvm9StringRefERKSt8functionIFPNS_7DialectEPNS_11MLIRContextEEE(ptr noundef nonnull align 8 dereferenceable(136) %1, ptr nonnull @_ZN4mlir6detail14TypeIDResolverINS_3acc14OpenACCDialectEvE2idE, ptr nonnull @.str.10, i64 3, ptr noundef nonnull align 8 dereferenceable(32) %2) #23
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN4mlir15DialectRegistry6insertINS_3acc14OpenACCDialectEEEvv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #23, !inline_history !207 ; 0 uses
  br label %_ZN4mlir15DialectRegistry6insertINS_3acc14OpenACCDialectEEEvv.exit

_ZN4mlir15DialectRegistry6insertINS_3acc14OpenACCDialectEEEvv.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK4mlir3acc4impl26ACCSpecializeForDeviceBaseIN12_GLOBAL__N_122ACCSpecializeForDeviceEE11getArgumentEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.11, i64 25 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_ZNK4mlir3acc4impl26ACCSpecializeForDeviceBaseIN12_GLOBAL__N_122ACCSpecializeForDeviceEE14getDescriptionEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.12, i64 43 }
}

declare i8 @_ZN4mlir4Pass17initializeOptionsEN4llvm9StringRefENS1_12function_refIFNS1_13LogicalResultERKNS1_5TwineEEEE(ptr noundef nonnull align 8 dereferenceable(336), ptr, i64, ptr, i64) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_122ACCSpecializeForDevice14runOnOperationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(600) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %1 = alloca %"class.mlir::GreedyRewriteConfig", align 8 ; 13 uses
  %2 = alloca %"class.llvm::SmallSetVector", align 8 ; 11 uses
  %3 = alloca %"class.mlir::RewritePatternSet", align 8 ; 18 uses
  %4 = alloca %"class.mlir::FrozenRewritePatternSet", align 8 ; 5 uses
  %5 = alloca %"class.llvm::SmallVector.191", align 8 ; 9 uses
  %6 = alloca %class.anon.196, align 8            ; 4 uses
  %7 = alloca %"class.mlir::FrozenRewritePatternSet", align 8 ; 5 uses
  %8 = alloca %"class.mlir::GreedyRewriteConfig", align 8 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.b, align 8
  %i.c = and i64 %.0.copyload.i.i.i.i.i, -8       ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %2, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 0, ptr %i.k, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 3, ptr %i.l, align 4, !tbaa !15
  %.not4.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i, label %_ZN4llvm14SmallSetVectorIlLj3EECI2NS_9SetVectorIlNS_11SmallVectorIlLj3EEENS_8DenseSetIlNS_12DenseMapInfoIlvEEEELj3EEEIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEET_SG_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.01.05.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %i.m = call noundef zeroext i1 @_ZN4llvm9SetVectorIlNS_11SmallVectorIlLj3EEENS_8DenseSetIlNS_12DenseMapInfoIlvEEEELj3EE6insertERKl(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.01.05.i.i.i) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i, label %_ZN4llvm14SmallSetVectorIlLj3EECI2NS_9SetVectorIlNS_11SmallVectorIlLj3EEENS_8DenseSetIlNS_12DenseMapInfoIlvEEEELj3EEEIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEET_SG_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !210

_ZN4llvm14SmallSetVectorIlLj3EECI2NS_9SetVectorIlNS_11SmallVectorIlLj3EEENS_8DenseSetIlNS_12DenseMapInfoIlvEEEELj3EEEIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEET_SG_.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.0.copyload.i.i.i.i.i4.pre = load i64, ptr %i.b, align 8
  %.pre = and i64 %.0.copyload.i.i.i.i.i4.pre, -8
  %.pre53 = inttoptr i64 %.pre to ptr
  br label %_ZN4llvm14SmallSetVectorIlLj3EECI2NS_9SetVectorIlNS_11SmallVectorIlLj3EEENS_8DenseSetIlNS_12DenseMapInfoIlvEEEELj3EEEIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEET_SG_.exit

_ZN4llvm14SmallSetVectorIlLj3EECI2NS_9SetVectorIlNS_11SmallVectorIlLj3EEENS_8DenseSetIlNS_12DenseMapInfoIlvEEEELj3EEEIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEET_SG_.exit: ; preds = %_ZN4llvm14SmallSetVectorIlLj3EECI2NS_9SetVectorIlNS_11SmallVectorIlLj3EEENS_8DenseSetIlNS_12DenseMapInfoIlvEEEELj3EEEIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEET_SG_.exit.loopexit, %bb.a
  %.pre-phi54 = phi ptr [ %.pre53, %_ZN4llvm14SmallSetVectorIlLj3EECI2NS_9SetVectorIlNS_11SmallVectorIlLj3EEENS_8DenseSetIlNS_12DenseMapInfoIlvEEEELj3EEEIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEET_SG_.exit.loopexit ], [ %i.d, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.o = getelementptr inbounds nuw i8, ptr %.pre-phi54, i64 24
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #23
  store ptr %i.p, ptr %3, align 8, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 32, i1 false)
  store ptr %i.s, ptr %i.r, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 0, ptr %i.t, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 6, ptr %i.u, align 4, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, i8 0, i64 40, i1 false)
  store i32 40, ptr %i.w, align 8, !tbaa !213
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.x, i8 0, i64 16, i1 false)
  store i32 40, ptr %i.y, align 8, !tbaa !213
  call void @_ZN4mlir3acc38populateACCSpecializeForDevicePatternsERNS_17RewritePatternSetERKN4llvm14SmallSetVectorIlLj3EEE(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef nonnull align 8 dereferenceable(64) %2)
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZN4mlir3acc23isSpecializedAccRoutineEPNS_9OperationE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm14SmallSetVectorIlLj3EECI2NS_9SetVectorIlNS_11SmallVectorIlLj3EEENS_8DenseSetIlNS_12DenseMapInfoIlvEEEELj3EEEIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEET_SG_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 2 uses
  %9 = load i32, ptr %i.z, align 4
  %.not.i.i = icmp ult i32 %9, 16777216
  br i1 %.not.i.i, label %_ZN4mlir3acc23isSpecializedAccRoutineEPNS_9OperationE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = call { ptr, i8 } @_ZN4mlir9Operation15getInherentAttrEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr nonnull @.str.13, i64 23) #23 ; 2 uses
  %i.ab = extractvalue { ptr, i8 } %i.aa, 1
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.split, label %_ZN4mlir3acc23isSpecializedAccRoutineEPNS_9OperationE.exit

.split:                                           ; preds = %bb.c
  %i.ad = extractvalue { ptr, i8 } %i.aa, 0
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %_ZN4mlir3acc23isSpecializedAccRoutineEPNS_9OperationE.exit.thread, label %bb.d

_ZN4mlir3acc23isSpecializedAccRoutineEPNS_9OperationE.exit: ; preds = %bb.b, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.af = call noundef zeroext i1 @_ZNK4mlir14DictionaryAttr8containsEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr nonnull @.str.13, i64 23) #23
  br i1 %i.af, label %bb.d, label %_ZN4mlir3acc23isSpecializedAccRoutineEPNS_9OperationE.exit.thread

bb.d:                                             ; preds = %.split, %_ZN4mlir3acc23isSpecializedAccRoutineEPNS_9OperationE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN4mlir23FrozenRewritePatternSetC1EONS_17RewritePatternSetEN4llvm8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(176) %3, ptr null, i64 0, ptr null, i64 0) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr null, ptr %1, align 8
  %.sroa.241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 1, ptr %.sroa.241.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 2, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 10, ptr %.sroa.543.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 -1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.744.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %.sroa.744.0..sroa_idx, align 8
  %.sroa.946.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr null, ptr %.sroa.946.0..sroa_idx, align 8
  %.sroa.1047.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i8 1, ptr %.sroa.1047.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 49
  store i8 1, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.1248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 50
  store i8 0, ptr %.sroa.1248.0..sroa_idx, align 2
  %i.ag = load i32, ptr %i.z, align 4             ; 3 uses
  %i.ah = and i32 %i.ag, 8388607                  ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_ZN4mlir21applyPatternsGreedilyEPNS_9OperationERKNS_23FrozenRewritePatternSetENS_19GreedyRewriteConfigEPb.exit, label %_ZN4mlir9Operation10getRegionsEv.exit.i

_ZN4mlir9Operation10getRegionsEv.exit.i:          ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ak = lshr i32 %i.ag, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.ak, 1
  %i.al = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.al
  %i.an = lshr i32 %i.ag, 21
  %i.ao = and i32 %i.an, 2040
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !90
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.aq, i64 %i.at ; 2 uses
  %i.av = shl nuw nsw i32 %i.ah, 5
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %_ZN4mlir9Operation10getRegionsEv.exit.i
  %.01422.i = phi ptr [ %i.az, %.lr.ph.i ], [ %i.au, %_ZN4mlir9Operation10getRegionsEv.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.ay = call i8 @_ZN4mlir21applyPatternsGreedilyERNS_6RegionERKNS_23FrozenRewritePatternSetENS_19GreedyRewriteConfigEPb(ptr noundef nonnull align 8 dereferenceable(28) %.01422.i, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull byval(%"class.mlir::GreedyRewriteConfig") align 8 %1, ptr noundef nonnull %i.a) #23 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.az = getelementptr inbounds nuw i8, ptr %.01422.i, i64 32 ; 2 uses
  %.not.i5 = icmp eq ptr %i.az, %i.ax
  br i1 %.not.i5, label %_ZN4mlir21applyPatternsGreedilyEPNS_9OperationERKNS_23FrozenRewritePatternSetENS_19GreedyRewriteConfigEPb.exit, label %.lr.ph.i

_ZN4mlir21applyPatternsGreedilyEPNS_9OperationERKNS_23FrozenRewritePatternSetENS_19GreedyRewriteConfigEPb.exit: ; preds = %.lr.ph.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @_ZN4mlir23FrozenRewritePatternSetD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.h

_ZN4mlir3acc23isSpecializedAccRoutineEPNS_9OperationE.exit.thread: ; preds = %_ZN4llvm14SmallSetVectorIlLj3EECI2NS_9SetVectorIlNS_11SmallVectorIlLj3EEENS_8DenseSetIlNS_12DenseMapInfoIlvEEEELj3EEEIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEEET_SG_.exit, %.split, %_ZN4mlir3acc23isSpecializedAccRoutineEPNS_9OperationE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.ba, ptr %5, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.bb, align 8, !tbaa !25
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 6, ptr %i.bc, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %5, ptr %6, align 8, !tbaa !92
  %i.bd = ptrtoint ptr %6 to i64
  call void @_ZN4mlir6detail4walkINS_15ForwardIteratorEEEvPNS_9OperationEN4llvm12function_refIFvS4_EEENS_9WalkOrderE(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr nonnull @_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZN12_GLOBAL__N_122ACCSpecializeForDevice14runOnOperationEvEUlS3_E_EEvlS3_, i64 %i.bd, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.be = load i32, ptr %i.bb, align 8, !tbaa !25 ; 2 uses
  %.not.i6 = icmp eq i32 %i.be, 0
  br i1 %.not.i6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4mlir3acc23isSpecializedAccRoutineEPNS_9OperationE.exit.thread
  %i.bf = load ptr, ptr %5, align 8, !tbaa !14
  %i.bg = zext i32 %i.be to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZN4mlir23FrozenRewritePatternSetC1EONS_17RewritePatternSetEN4llvm8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(176) %3, ptr null, i64 0, ptr null, i64 0) #23
  store ptr null, ptr %8, align 8, !tbaa !215
  %.sroa.5.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i8 1, ptr %.sroa.5.0..sroa_idx16, align 8, !tbaa !216
  %.sroa.719.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 2, ptr %.sroa.719.0..sroa_idx20, align 4, !tbaa !218
  %.sroa.8.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 10, ptr %.sroa.8.0..sroa_idx22, align 8, !tbaa !21
  %.sroa.9.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 -1, ptr %.sroa.9.0..sroa_idx24, align 8, !tbaa !21
  %.sroa.10.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i32 2, ptr %.sroa.10.0..sroa_idx26, align 8, !tbaa !220
  %.sroa.1230.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr null, ptr %.sroa.1230.0..sroa_idx31, align 8, !tbaa !222
  %.sroa.13.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i8 1, ptr %.sroa.13.0..sroa_idx33, align 8, !tbaa !216
  %.sroa.14.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %8, i64 49
  store i8 1, ptr %.sroa.14.0..sroa_idx35, align 1, !tbaa !216
  %.sroa.15.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %8, i64 50
  store i8 0, ptr %.sroa.15.0..sroa_idx37, align 2, !tbaa !216
  %i.bh = call i8 @_ZN4mlir23applyOpPatternsGreedilyEN4llvm8ArrayRefIPNS_9OperationEEERKNS_23FrozenRewritePatternSetENS_19GreedyRewriteConfigEPbS9_(ptr %i.bf, i64 %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull byval(%"class.mlir::GreedyRewriteConfig") align 8 %8, ptr noundef null, ptr noundef null) #23 ; 0 uses
  call void @_ZN4mlir23FrozenRewritePatternSetD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4mlir3acc23isSpecializedAccRoutineEPNS_9OperationE.exit.thread
  %i.bi = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ba
  br i1 %i.bj, label %_ZN4llvm11SmallVectorIPN4mlir9OperationELj6EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef %i.bi) #23
  br label %_ZN4llvm11SmallVectorIPN4mlir9OperationELj6EED2Ev.exit

_ZN4llvm11SmallVectorIPN4mlir9OperationELj6EED2Ev.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm11SmallVectorIPN4mlir9OperationELj6EED2Ev.exit, %_ZN4mlir21applyPatternsGreedilyEPNS_9OperationERKNS_23FrozenRewritePatternSetENS_19GreedyRewriteConfigEPb.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @_ZN4mlir16PDLPatternModuleD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %i.bk) #23
  %i.bl = load ptr, ptr %i.q, align 8, !tbaa !64  ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !59 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bl, %i.bn
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %_ZSt8_DestroyISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bs, %_ZSt8_DestroyISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.bl, %bb.h ] ; 2 uses
  %i.bo = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !65 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4mlir14RewritePatternEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4mlir14RewritePatternEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(96) %i.bo) #23, !inline_history !211
  br label %_ZSt8_DestroyISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4mlir14RewritePatternEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bs, %i.bn
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !212

_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.q, align 8, !tbaa !64
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, %bb.h
  %i.bt = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i ], [ %i.bl, %bb.h ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i1.i.i, label %_ZN4mlir17RewritePatternSetD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !60
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.bt to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.by) #25
  br label %_ZN4mlir17RewritePatternSetD2Ev.exit

_ZN4mlir17RewritePatternSetD2Ev.exit:             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4mlir14RewritePatternESt14default_deleteIS2_EEEvT_S7_.exit.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.bz = load ptr, ptr %i.i, align 8, !tbaa !14  ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.j
  br i1 %i.ca, label %_ZN4llvm11SmallVectorIlLj3EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZN4mlir17RewritePatternSetD2Ev.exit
  call void @free(ptr noundef %i.bz) #23
  br label %_ZN4llvm11SmallVectorIlLj3EED2Ev.exit.i

_ZN4llvm11SmallVectorIlLj3EED2Ev.exit.i:          ; preds = %bb.j, %_ZN4mlir17RewritePatternSetD2Ev.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !95 ; 2 uses
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %_ZN4llvm9SetVectorIlNS_11SmallVectorIlLj3EEENS_8DenseSetIlNS_12DenseMapInfoIlvEEEELj3EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorIlLj3EED2Ev.exit.i
  %i.ce = load ptr, ptr %2, align 8, !tbaa !96
  %i.cf = zext i32 %i.cc to i64                   ; 2 uses
  %i.cg = shl nuw nsw i64 %i.cf, 3
  %i.ch = add nuw nsw i64 %i.cf, 31
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = and i64 %i.ci, 1073741820
  %i.ck = add nuw nsw i64 %i.cj, %i.cg
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ce, i64 noundef %i.ck, i64 noundef 8) #23
  br label %_ZN4llvm9SetVectorIlNS_11SmallVectorIlLj3EEENS_8DenseSetIlNS_12DenseMapInfoIlvEEEELj3EED2Ev.exit

_ZN4llvm9SetVectorIlNS_11SmallVectorIlLj3EEENS_8DenseSetIlNS_12DenseMapInfoIlvEEEELj3EED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIlLj3EED2Ev.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZN4mlir4Pass10initializeEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4mlir13OperationPassINS_4func6FuncOpEE13canScheduleOnENS_23RegisteredOperationNameE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::StringAttr", align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %2, align 8
  %i.b = call { ptr, i64 } @_ZNK4mlir10StringAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #23 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
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
end_hunk_0
