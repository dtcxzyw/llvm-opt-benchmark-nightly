Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/OpenACCUtilsGPU?download=true
inline.NumInlined: 198
inline.NumDeleted: 177
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.mlir::SelfOwningTypeID" = type { [8 x i8] }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.mlir::SymbolTable" = type <{ ptr, %"class.llvm::DenseMap", i32, [4 x i8] }>
%"class.llvm::DenseMap" = type { ptr, ptr, i32, i32 }
%"class.mlir::OpBuilder" = type { %"class.mlir::Builder", ptr, ptr, %"class.llvm::ilist_iterator" }
%"class.mlir::Builder" = type { ptr }
%"class.llvm::ilist_iterator" = type { ptr }
%"class.mlir::gpu::LaunchOp" = type { %"class.mlir::Op.70" }
%"class.mlir::Op.70" = type { %"class.mlir::OpState" }
%"class.mlir::OpState" = type { ptr }
%"struct.mlir::gpu::KernelDim3" = type { %"class.mlir::Value", %"class.mlir::Value", %"class.mlir::Value" }
%"class.mlir::Value" = type { ptr }
%"class.mlir::StringAttr" = type { %"class.mlir::detail::StorageUserBase.69" }
%"class.mlir::detail::StorageUserBase.69" = type { %"class.mlir::Attribute" }
%"class.mlir::Attribute" = type { ptr }
%"class.mlir::NamedAttrList" = type { %"class.llvm::SmallVector", %"class.llvm::PointerIntPair.100" }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage" = type { [64 x i8] }
%"class.llvm::PointerIntPair.100" = type { %"struct.llvm::detail::PunnedPointer.101" }
%"struct.llvm::detail::PunnedPointer.101" = type { [8 x i8] }

$_ZN4mlir9Operation7setAttrENS_10StringAttrENS_9AttributeE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [15 x i8] c"acc_gpu_module\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"gpu.container_module\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_3gpu11GPUModuleOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i8 } @_ZN4mlir3acc20getOrCreateGPUModuleENS_8ModuleOpEbN4llvm9StringRefE(ptr %0, i1 noundef zeroext %1, ptr %2, i64 %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %5 = alloca %"class.mlir::SymbolTable", align 8 ; 7 uses
  %6 = alloca %"class.mlir::OpBuilder", align 8   ; 5 uses
  %i.a = icmp eq i64 %3, 0                        ; 2 uses
  %.sroa.012.0 = select i1 %i.a, ptr @.str, ptr %2 ; 2 uses
  %.sroa.6.0 = select i1 %i.a, i64 14, i64 %3     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @_ZN4mlir11SymbolTableC1EPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %0) #6
  %i.b = call noundef ptr @_ZNK4mlir11SymbolTable6lookupEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr %.sroa.012.0, i64 %.sroa.6.0) #6 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.f = icmp ne ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_3gpu11GPUModuleOpEvE2idE ; 2 uses
  %brmerge.not = and i1 %i.f, %1
  %not. = xor i1 %i.f, true
  %.mux29 = zext i1 %not. to i8
  br i1 %brmerge.not, label %bb.c, label %_ZNK4mlir11SymbolTable6lookupINS_3gpu11GPUModuleOpEEET_N4llvm9StringRefE.exit

.critedge:                                        ; preds = %bb.a
  br i1 %1, label %bb.c, label %_ZNK4mlir11SymbolTable6lookupINS_3gpu11GPUModuleOpEEET_N4llvm9StringRefE.exit

bb.c:                                             ; preds = %bb.b, %.critedge
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #6 ; 2 uses
  %i.i = call ptr @_ZN4mlir8UnitAttr3getEPNS_11MLIRContextE(ptr noundef %i.h) #6
  %i.j = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i8 5, ptr %i.k, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.l, align 1, !tbaa !31
  store ptr @.str.2, ptr %4, align 8, !tbaa !32
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 20, ptr %i.m, align 8, !tbaa !32
  %i.n = call ptr @_ZN4mlir10StringAttr3getEPNS_11MLIRContextERKN4llvm5TwineE(ptr noundef %i.j, ptr noundef nonnull align 8 dereferenceable(34) %4) #6
  call void @_ZN4mlir9Operation7setAttrENS_10StringAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr %i.n, ptr %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #6
  store ptr %i.h, ptr %6, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8
  %i.p = call ptr @_ZN4mlir3gpu11GPUModuleOp6createERNS_9OpBuilderENS_8LocationEN4llvm9StringRefENS_9ArrayAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.012.0, i64 %.sroa.6.0, ptr null, ptr null) #6 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.r = load i32, ptr %i.q, align 4              ; 3 uses
  %i.s = and i32 %i.r, 8388607
  %i.t = icmp ne i32 %i.s, 0
  call void @llvm.assume(i1 %i.t)
  %i.u = lshr i32 %i.r, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.u, 1
  %i.v = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.v
  %i.x = lshr i32 %i.r, 21
  %i.y = and i32 %i.x, 2040
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !52
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !53
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ai = call ptr @_ZN4mlir11SymbolTable6insertEPNS_9OperationEN4llvm14ilist_iteratorINS3_12ilist_detail12node_optionsIS1_Lb0ELb0EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %i.p, ptr nonnull %i.ah) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #6
  br label %_ZNK4mlir11SymbolTable6lookupINS_3gpu11GPUModuleOpEEET_N4llvm9StringRefE.exit

_ZNK4mlir11SymbolTable6lookupINS_3gpu11GPUModuleOpEEET_N4llvm9StringRefE.exit: ; preds = %bb.b, %.critedge, %bb.c
  %.sroa.027.0 = phi ptr [ undef, %.critedge ], [ %i.p, %bb.c ], [ %i.b, %bb.b ]
  %.sroa.3.0 = phi i8 [ 0, %.critedge ], [ 1, %bb.c ], [ %.mux29, %bb.b ]
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !56 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZN4mlir11SymbolTableD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4mlir11SymbolTable6lookupINS_3gpu11GPUModuleOpEEET_N4llvm9StringRefE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !57
  %i.ao = zext i32 %i.ak to i64                   ; 2 uses
  %i.ap = shl nuw nsw i64 %i.ao, 4
  %i.aq = add nuw nsw i64 %i.ao, 31
  %i.ar = lshr i64 %i.aq, 3
  %i.as = and i64 %i.ar, 1073741820
  %i.at = add nuw nsw i64 %i.as, %i.ap
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.an, i64 noundef %i.at, i64 noundef 8) #6
  br label %_ZN4mlir11SymbolTableD2Ev.exit

_ZN4mlir11SymbolTableD2Ev.exit:                   ; preds = %_ZNK4mlir11SymbolTable6lookupINS_3gpu11GPUModuleOpEEET_N4llvm9StringRefE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4mlir11SymbolTableC1EPNS_9OperationE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @_ZN4mlir8UnitAttr3getEPNS_11MLIRContextE(ptr noundef) local_unnamed_addr #2

declare ptr @_ZN4mlir3gpu11GPUModuleOp6createERNS_9OpBuilderENS_8LocationEN4llvm9StringRefENS_9ArrayAttrENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(32), ptr, ptr, i64, ptr, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @_ZN4mlir11SymbolTable6insertEPNS_9OperationEN4llvm14ilist_iteratorINS3_12ilist_detail12node_optionsIS1_Lb0ELb0EvLb0EvEELb0ELb0EEE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir3acc10getGPUSizeENS_3gpu9ProcessorENS1_8LaunchOpERKN4llvm8DenseMapIS2_NS_5ValueENS4_12DenseMapInfoIS2_vEENS4_6detail12DenseMapPairIS2_S6_EEEE(i64 noundef %0, ptr %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.mlir::gpu::LaunchOp", align 8 ; 5 uses
  %4 = alloca %"struct.mlir::gpu::KernelDim3", align 8 ; 6 uses
  %5 = alloca %"struct.mlir::gpu::KernelDim3", align 8 ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @_ZN4mlir3gpu8LaunchOp11getGridSizeEv(ptr dead_on_unwind nonnull writable sret(%"struct.mlir::gpu::KernelDim3") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @_ZN4mlir3gpu8LaunchOp12getBlockSizeEv(ptr dead_on_unwind nonnull writable sret(%"struct.mlir::gpu::KernelDim3") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  switch i64 %0, label %_ZN4mlir3accL20getGPUSizeFromLaunchENS_3gpu8LaunchOpENS1_9ProcessorE.exit [
    i64 3, label %bb.c
    i64 4, label %bb.d
    i64 5, label %bb.e
    i64 0, label %bb.f
    i64 1, label %bb.g
    i64 2, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.a = load i64, ptr %5, align 8, !tbaa !11
  %i.b = inttoptr i64 %i.a to ptr
  br label %_ZN4mlir3accL20getGPUSizeFromLaunchENS_3gpu8LaunchOpENS1_9ProcessorE.exit

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = inttoptr i64 %i.d to ptr
  br label %_ZN4mlir3accL20getGPUSizeFromLaunchENS_3gpu8LaunchOpENS1_9ProcessorE.exit

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11
  %i.h = inttoptr i64 %i.g to ptr
  br label %_ZN4mlir3accL20getGPUSizeFromLaunchENS_3gpu8LaunchOpENS1_9ProcessorE.exit

bb.f:                                             ; preds = %bb.b
  %i.i = load i64, ptr %4, align 8, !tbaa !11
  %i.j = inttoptr i64 %i.i to ptr
  br label %_ZN4mlir3accL20getGPUSizeFromLaunchENS_3gpu8LaunchOpENS1_9ProcessorE.exit

bb.g:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !11
  %i.m = inttoptr i64 %i.l to ptr
  br label %_ZN4mlir3accL20getGPUSizeFromLaunchENS_3gpu8LaunchOpENS1_9ProcessorE.exit

bb.h:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11
  %i.p = inttoptr i64 %i.o to ptr
  br label %_ZN4mlir3accL20getGPUSizeFromLaunchENS_3gpu8LaunchOpENS1_9ProcessorE.exit

_ZN4mlir3accL20getGPUSizeFromLaunchENS_3gpu8LaunchOpENS1_9ProcessorE.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.0.0.i = phi ptr [ %i.p, %bb.h ], [ %i.b, %bb.c ], [ %i.e, %bb.d ], [ %i.h, %bb.e ], [ %i.j, %bb.f ], [ %i.m, %bb.g ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir3gpu9ProcessorENS2_5ValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E6lookupERKS4_.exit

bb.i:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %2, align 8, !tbaa !14, !noalias !62
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15, !noalias !62 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !16, !noalias !62 ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir3gpu9ProcessorENS2_5ValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E6lookupERKS4_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = add i32 %i.u, -1                         ; 2 uses
  %i.x = mul i64 %0, -4658895280553007687         ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.w, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !17
  %i.ag = and i32 %i.ab, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIN4mlir3gpu9ProcessorENS2_5ValueENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E6lookupERKS4_.exit, !prof !18

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.k
  %i.aj = phi i64 [ %i.ap, %bb.k ], [ %i.ac, %bb.j ]
  %.017.i.i = phi i32 [ %i.ao, %bb.k ], [ %i.ab, %bb.j ]
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.aj ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !20
  %i.am = icmp eq i64 %0, %i.al
  br i1 %i.am, label %bb.l, label %bb.k, !prof !21

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.an = add nuw i32 %.017.i.i, 1
  %i.ao = and i32 %i.an, %i.w                     ; 3 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = lshr i64 %i.ap, 5
end_hunk_0
