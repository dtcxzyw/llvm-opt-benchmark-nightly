Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TestLinalgElementwiseFusion?download=true
inline.NumInlined: 2805
inline.NumDeleted: 1760
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_:bb.a
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #16

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !57
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #23
  %i.f = load ptr, ptr %0, align 8, !tbaa !19
  %i.g = load i32, ptr %i.a, align 8, !tbaa !57
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !57
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIN4mlir5ValueENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E21eraseFromFilledBucketIZNSB_21eraseFromFilledBucketEPS9_EUlRS9_E_EEvSD_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !183
  %i.c = add i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !183
  %i.d = load ptr, ptr %0, align 8, !tbaa !169    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !177  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !168
  %i.i = add i32 %i.h, -1                         ; 4 uses
  %i.j = ptrtoint ptr %1 to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 3
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add i32 %i.n, 1
  %i.p = and i32 %i.o, %i.i                       ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = lshr i64 %i.q, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !144
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.pn = phi i64 [ %i.at, %bb.c ], [ %i.q, %bb.a ]
  %i.x = phi i32 [ %i.as, %bb.c ], [ %i.p, %bb.a ] ; 3 uses
  %.03337 = phi i32 [ %.2, %bb.c ], [ %i.n, %bb.a ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.pn
  %.sroa.0.0.copyload = load ptr, ptr %i.y, align 8
  %i.z = ptrtoint ptr %.sroa.0.0.copyload to i64  ; 2 uses
  %i.aa = xor i64 %i.z, -49064778989728563        ; 2 uses
  %i.ab = lshr i64 %i.aa, 30
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = mul i64 %i.ac, -4658895280553007687     ; 2 uses
  %i.ae = lshr i64 %i.ad, 27
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = mul i64 %i.af, -7723592293110705685     ; 2 uses
  %i.ah = lshr i64 %i.ag, 31
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ak = sub i32 %.03337, %i.aj
  %i.al = and i32 %i.ak, %i.i
  %i.am = sub i32 %i.x, %i.aj
  %i.an = and i32 %i.am, %i.i
  %i.ao = icmp ult i32 %i.al, %i.an
  br i1 %i.ao, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.ap = zext i32 %.03337 to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ap
  store i64 %i.z, ptr %i.aq, align 8, !tbaa !160
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.2 = phi i32 [ %.03337, %.lr.ph ], [ %i.x, %bb.b ] ; 2 uses
  %i.ar = add i32 %i.x, 1
  %i.as = and i32 %i.ar, %i.i                     ; 3 uses
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = lshr i64 %i.at, 5
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !144
  %i.ax = and i32 %i.as, 31
  %i.ay = lshr i32 %i.aw, %i.ax
  %i.az = trunc i32 %i.ay to i1
  br i1 %i.az, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.033.lcssa = phi i32 [ %i.n, %bb.a ], [ %.2, %bb.c ] ; 2 uses
  %i.ba = and i32 %.033.lcssa, 31
  %i.bb = shl nuw i32 1, %i.ba
  %i.bc = xor i32 %i.bb, -1
  %i.bd = lshr i32 %.033.lcssa, 5
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.be ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !144
  %i.bh = and i32 %i.bg, %i.bc
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !144
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFbPN4mlir9OpOperandEEPS3_E9_M_invokeERKSt9_Any_dataOS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  %i.b = load ptr, ptr %1, align 8, !tbaa !172
  %i.c = tail call noundef zeroext i1 %i.a(ptr noundef %i.b) #23, !inline_history !427
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFbPN4mlir9OpOperandEEPS3_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIPFbPN4mlir9OpOperandEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIPFbPN4mlir9OpOperandEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split
    i32 0, label %.sink.split.i
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIPFbPN4mlir9OpOperandEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split

.sink.split.i:                                    ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIPFbPN4mlir9OpOperandEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIPFbPN4mlir9OpOperandEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split: ; preds = %bb.b, %bb.a, %.sink.split.i
  %.sink.i.sink = phi ptr [ %1, %bb.a ], [ %i.a, %bb.b ], [ null, %.sink.split.i ]
  store ptr %.sink.i.sink, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIPFbPN4mlir9OpOperandEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIPFbPN4mlir9OpOperandEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIPFbPN4mlir9OpOperandEEE10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFbPN4mlir9OpOperandEEZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlS2_E0_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) #9 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFbPN4mlir9OpOperandEEZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlS2_E0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #6 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ null, %bb.b ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFbPN4mlir9OpOperandEEZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlS2_E1_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::MutableOperandRange", align 8 ; 6 uses
  %3 = alloca %"class.mlir::OperandRange", align 8 ; 7 uses
  %4 = alloca %"class.mlir::ResultRange", align 8 ; 5 uses
  %5 = alloca %"class.mlir::ResultRange::UseIterator", align 8 ; 5 uses
  %6 = alloca %"class.mlir::ResultRange", align 8 ; 5 uses
  %7 = alloca %"class.llvm::iterator_range.446", align 8 ; 7 uses
  %8 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %9 = alloca %"struct.mlir::detail::TypedValue", align 8 ; 5 uses
  %10 = alloca %"class.llvm::iterator_range.446", align 8 ; 4 uses
  %11 = alloca %"class.mlir::linalg::LinalgOp", align 8 ; 6 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !172   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !160
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %8, align 8
  %i.b = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #23 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZSt10__invoke_rIbRZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE1_JS4_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !84
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !86
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_6tensor15CollapseShapeOpEvE2idE
  %12 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6tensor15CollapseShapeOpEvE2idE
  %spec.select.i.i.i.i.i.i.i = and i1 %12, %i.f
  br i1 %spec.select.i.i.i.i.i.i.i, label %bb.c, label %.critedge.i.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !175
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !160
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %9, align 8
  %i.j = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #23 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i, label %.critedge14.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = call noundef ptr @_ZN4mlir11OpInterfaceINS_6linalg8LinalgOpENS1_6detail23LinalgOpInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.j)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i, label %.critedge14.i.i.i, label %_ZN4llvm20ValueFromPointerCastIN4mlir6linalg8LinalgOpENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i.i.i.i.i.i

_ZN4llvm20ValueFromPointerCastIN4mlir6linalg8LinalgOpENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.l = call noundef ptr @_ZN4mlir11OpInterfaceINS_6linalg8LinalgOpENS1_6detail23LinalgOpInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.j) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %_ZN4llvm20ValueFromPointerCastIN4mlir6linalg8LinalgOpENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i.i.i.i.i.i, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !164  ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i16.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !84
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i16.i.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !86
  %i.r = icmp ne ptr %i.q, @_ZN4mlir6detail14TypeIDResolverINS_6tensor13ExpandShapeOpEvE2idE
  %13 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6tensor13ExpandShapeOpEvE2idE
  %spec.select.i.i.i.i17.not.i.i.i = or i1 %13, %i.r
  %.not1112.i.i.i = icmp eq ptr %i.n, null
  %.not11.i.i.i = or i1 %.not1112.i.i.i, %spec.select.i.i.i.i17.not.i.i.i
  br i1 %.not11.i.i.i, label %_ZSt10__invoke_rIbRZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE1_JS4_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit, label %bb.e

bb.e:                                             ; preds = %.critedge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !434
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 36 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !165, !noalias !434 ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  %i.v = getelementptr inbounds i8, ptr %i.n, i64 -16 ; 2 uses
  %i.w = zext i32 %i.t to i64
  %.sroa.0.0.i.i.i.i.i.i = select i1 %i.u, ptr null, ptr %i.v
  store ptr %.sroa.0.0.i.i.i.i.i.i, ptr %6, align 8, !noalias !434
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.w, ptr %i.x, align 8, !noalias !434
  call void @_ZNK4mlir11ResultRange7getUsesEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.446") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !434
  %.sroa.4.0..sroa_idx6.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  %.sroa.4.0.copyload7.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx6.i.i.i.i.i, align 8 ; 2 uses
  %.sroa.33.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 72
  %.sroa.33.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.33.0..sroa_idx.i.i.i.i.i, align 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.4.0.copyload7.i.i.i.i.i, %.sroa.33.0.copyload.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir9Operation9hasOneUseEv.exit.thread.i.i.i, label %_ZN4mlir9Operation9hasOneUseEv.exit.i.i.i

_ZN4mlir9Operation9hasOneUseEv.exit.thread.i.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %_ZSt10__invoke_rIbRZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE1_JS4_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit

_ZN4mlir9Operation9hasOneUseEv.exit.i.i.i:        ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(80) %7, i64 32, i1 false)
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %.sroa.4.0.copyload7.i.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8
  %i.y = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4mlir11ResultRange11UseIteratorppEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #23, !noalias !435 ; 0 uses
  %.sroa.3.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.z = icmp eq ptr %.sroa.3.0.copyload.i.i.i.i.i, %.sroa.33.0.copyload.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %i.z, label %bb.f, label %_ZSt10__invoke_rIbRZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE1_JS4_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit

bb.f:                                             ; preds = %_ZN4mlir9Operation9hasOneUseEv.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !436
  %i.aa = load i32, ptr %i.s, align 4, !tbaa !165, !noalias !436 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  %i.ac = zext i32 %i.aa to i64
  %.sroa.0.0.i.i.i.i.i = select i1 %i.ab, ptr null, ptr %i.v
  store ptr %.sroa.0.0.i.i.i.i.i, ptr %4, align 8, !noalias !436
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !noalias !436
  call void @_ZNK4mlir11ResultRange7getUsesEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.446") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !436
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 32
  %.sroa.3.0.copyload.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i.i.i, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !164 ; 4 uses
  %i.ag = call noundef ptr @_ZN4mlir11OpInterfaceINS_6linalg8LinalgOpENS1_6detail23LinalgOpInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef %i.af)
  %.not.i.i18.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i18.i.i.i, label %_ZN4llvm8dyn_castIN4mlir6linalg8LinalgOpENS1_9OperationEEEDcPT0_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm20ValueFromPointerCastIN4mlir6linalg8LinalgOpENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = call noundef ptr @_ZN4mlir11OpInterfaceINS_6linalg8LinalgOpENS1_6detail23LinalgOpInterfaceTraitsEE15getInterfaceForEPNS_9OperationE(ptr noundef nonnull %i.af)
  br label %_ZN4llvm20ValueFromPointerCastIN4mlir6linalg8LinalgOpENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i.i.i.i

_ZN4llvm20ValueFromPointerCastIN4mlir6linalg8LinalgOpENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %i.ai = phi ptr [ %i.ah, %bb.h ], [ null, %bb.g ]
  %.fca.0.insert.i.i.i.i.i.i = insertvalue { ptr, ptr } poison, ptr %i.af, 0
  %.fca.1.insert.i.i.i.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i.i.i, ptr %i.ai, 1
  br label %_ZN4llvm8dyn_castIN4mlir6linalg8LinalgOpENS1_9OperationEEEDcPT0_.exit.i.i.i

_ZN4llvm8dyn_castIN4mlir6linalg8LinalgOpENS1_9OperationEEEDcPT0_.exit.i.i.i: ; preds = %_ZN4llvm20ValueFromPointerCastIN4mlir6linalg8LinalgOpENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i.i.i.i, %bb.f
  %.pn.i.i.i.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i.i.i.i, %_ZN4llvm20ValueFromPointerCastIN4mlir6linalg8LinalgOpENS1_9OperationENS_8CastInfoIS3_PS4_vEEE6doCastES6_.exit.i.i.i.i.i ], [ zeroinitializer, %bb.f ] ; 2 uses
  %i.aj = extractvalue { ptr, ptr } %.pn.i.i.i.i.i, 0 ; 2 uses
  store ptr %i.aj, ptr %11, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.al = extractvalue { ptr, ptr } %.pn.i.i.i.i.i, 1
  store ptr %i.al, ptr %i.ak, align 8
  %.not13.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not13.i.i.i, label %.thread.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8dyn_castIN4mlir6linalg8LinalgOpENS1_9OperationEEEDcPT0_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN4mlir6linalg8LinalgOp18getDpsInitsMutableEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::MutableOperandRange") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %11) #23
  %i.am = call { ptr, i64 } @_ZNK4mlir19MutableOperandRangecvNS_12OperandRangeEEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #23 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !19 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZN4mlir6linalg8LinalgOp11getDpsInitsEv.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.ao) #23
  br label %_ZN4mlir6linalg8LinalgOp11getDpsInitsEv.exit.i.i.i.i

_ZN4mlir6linalg8LinalgOp11getDpsInitsEv.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.ar = extractvalue { ptr, i64 } %i.am, 0
  store ptr %i.ar, ptr %3, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.at = extractvalue { ptr, i64 } %i.am, 1      ; 2 uses
  store i64 %i.at, ptr %i.as, align 8
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_ZN4mlir6linalg8LinalgOp9isDpsInitEPNS_9OpOperandE.exit.thread.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN4mlir6linalg8LinalgOp11getDpsInitsEv.exit.i.i.i.i
  %i.av = call noundef i32 @_ZNK4mlir9OpOperand16getOperandNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0.copyload.i.i.i) #23 ; 2 uses
  %i.aw = call noundef i32 @_ZNK4mlir12OperandRange20getBeginOperandIndexEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #23
  %.not.i.i.i.i = icmp ult i32 %i.av, %i.aw
  br i1 %.not.i.i.i.i, label %_ZN4mlir6linalg8LinalgOp9isDpsInitEPNS_9OpOperandE.exit.thread.i.i.i, label %_ZN4mlir6linalg8LinalgOp9isDpsInitEPNS_9OpOperandE.exit.i.i.i

_ZN4mlir6linalg8LinalgOp9isDpsInitEPNS_9OpOperandE.exit.thread.i.i.i: ; preds = %bb.k, %_ZN4mlir6linalg8LinalgOp11getDpsInitsEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.thread.i.i.i

_ZN4mlir6linalg8LinalgOp9isDpsInitEPNS_9OpOperandE.exit.i.i.i: ; preds = %bb.k
  %i.ax = zext i32 %i.av to i64
  %i.ay = call noundef i32 @_ZNK4mlir12OperandRange20getBeginOperandIndexEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #23
  %i.az = zext i32 %i.ay to i64
  %i.ba = load i64, ptr %i.as, align 8, !tbaa !181
  %i.bb = add i64 %i.ba, %i.az
  %i.bc = icmp ugt i64 %i.bb, %i.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br i1 %i.bc, label %bb.l, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_ZN4mlir6linalg8LinalgOp9isDpsInitEPNS_9OpOperandE.exit.i.i.i, %_ZN4mlir6linalg8LinalgOp9isDpsInitEPNS_9OpOperandE.exit.thread.i.i.i, %_ZN4llvm8dyn_castIN4mlir6linalg8LinalgOpENS1_9OperationEEEDcPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %_ZSt10__invoke_rIbRZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE1_JS4_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit

bb.l:                                             ; preds = %_ZN4mlir6linalg8LinalgOp9isDpsInitEPNS_9OpOperandE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %_ZSt10__invoke_rIbRZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE1_JS4_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit

.critedge14.i.i.i:                                ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %_ZSt10__invoke_rIbRZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE1_JS4_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit

_ZSt10__invoke_rIbRZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE1_JS4_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit: ; preds = %bb.a, %.critedge.i.i.i, %_ZN4mlir9Operation9hasOneUseEv.exit.thread.i.i.i, %_ZN4mlir9Operation9hasOneUseEv.exit.i.i.i, %.thread.i.i.i, %bb.l, %.critedge14.i.i.i
  %.4.i.i.i = phi i1 [ false, %.critedge14.i.i.i ], [ false, %bb.a ], [ true, %.critedge.i.i.i ], [ true, %bb.l ], [ false, %.thread.i.i.i ], [ false, %_ZN4mlir9Operation9hasOneUseEv.exit.thread.i.i.i ], [ false, %_ZN4mlir9Operation9hasOneUseEv.exit.i.i.i ]
  ret i1 %.4.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFbPN4mlir9OpOperandEEZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlS2_E1_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #6 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE1_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE1_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE1_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE1_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ null, %bb.b ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE1_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE1_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE1_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN4mlir11ResultRange11UseIteratorppEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZNK4mlir11ResultRange7getUsesEv(ptr dead_on_unwind writable sret(%"class.llvm::iterator_range.446") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef i32 @_ZNK4mlir9OpOperand16getOperandNumberEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFbPN4mlir9OpOperandEEZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlS2_E2_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) #9 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFbPN4mlir9OpOperandEEZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlS2_E2_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #6 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE2_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE2_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE2_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE2_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ null, %bb.b ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE2_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE2_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE2_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFbPN4mlir9OpOperandEEZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlS2_E3_E9_M_invokeERKSt9_Any_dataOS2_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !172   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !160
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %2, align 8
  %i.b = call noundef ptr @_ZNK4mlir5Value13getDefiningOpEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !84
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !86
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_6tensor13ExpandShapeOpEvE2idE
  %3 = icmp ne ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6tensor13ExpandShapeOpEvE2idE
  %spec.select.i.i.i.i.i.i.i.i = and i1 %3, %i.f
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef i32 @_ZNK4mlir9OpOperand16getOperandNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %.val) #23
  %i.h = icmp ne i32 %i.g, 0
  br label %_ZSt10__invoke_rIbRZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE3_JS4_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !164  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !84
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !86
  %i.n = icmp ne ptr %i.m, @_ZN4mlir6detail14TypeIDResolverINS_6tensor15CollapseShapeOpEvE2idE
  %4 = icmp eq ptr @_ZN4mlir6detail14TypeIDResolverIvvE2idE, @_ZN4mlir6detail14TypeIDResolverINS_6tensor15CollapseShapeOpEvE2idE
  %spec.select.i.i.i.i.not.i.i.i = or i1 %4, %i.n
  %.not4.i.i.i = icmp eq ptr %i.j, null
  %.not.i.i.i = or i1 %.not4.i.i.i, %spec.select.i.i.i.i.not.i.i.i
  br i1 %.not.i.i.i, label %_ZSt10__invoke_rIbRZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE3_JS4_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !175
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !160 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.r, align 8 ; 2 uses
  %i.s = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7
  %i.t = icmp eq i64 %i.s, 6
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !443
  %i.w = trunc i64 %i.v to i32
  %i.x = add i32 %i.w, 6
  br label %_ZNK4mlir8OpResult15getResultNumberEv.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.y = trunc i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  %i.z = and i32 %i.y, 7
  br label %_ZNK4mlir8OpResult15getResultNumberEv.exit.i.i.i

_ZNK4mlir8OpResult15getResultNumberEv.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.1.i.i.i.i.i = phi i32 [ %i.z, %bb.f ], [ %i.x, %bb.e ]
  %i.aa = icmp ne i32 %.1.i.i.i.i.i, 0
  br label %_ZSt10__invoke_rIbRZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE3_JS4_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit

_ZSt10__invoke_rIbRZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE3_JS4_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit: ; preds = %bb.b, %bb.c, %_ZNK4mlir8OpResult15getResultNumberEv.exit.i.i.i
  %.2.i.i.i = phi i1 [ %i.h, %bb.b ], [ %i.aa, %_ZNK4mlir8OpResult15getResultNumberEv.exit.i.i.i ], [ true, %bb.c ]
  ret i1 %.2.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFbPN4mlir9OpOperandEEZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlS2_E3_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #6 align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE3_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit [
    i32 1, label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE3_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE3_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE3_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ null, %bb.b ], [ %1, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !32
  br label %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE3_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE3_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_127TestLinalgElementwiseFusion14runOnOperationEvEUlPN4mlir9OpOperandEE3_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

declare void @_ZN4mlir14PatternBenefitC1Ej(ptr noundef nonnull align 2 dereferenceable(2), i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4mlir14RewritePatternD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #23
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir7PatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i
  tail call void @free(ptr noundef %i.f) #23
  br label %_ZN4mlir7PatternD2Ev.exit

_ZN4mlir7PatternD2Ev.exit:                        ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_126TestMultiUseProducerFusionD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.b) #23
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN4mlir14RewritePatternD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  tail call void @free(ptr noundef %i.f) #23
  br label %_ZN4mlir14RewritePatternD2Ev.exit

_ZN4mlir14RewritePatternD2Ev.exit:                ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i8 @_ZNK4mlir6detail31OpOrInterfaceRewritePatternBaseINS_6linalg9GenericOpEE15matchAndRewriteEPNS_9OperationERNS_15PatternRewriterE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i8 %i.c(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #23
  ret i8 %i.d
}

declare void @_ZN4mlir14RewritePattern6anchorEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal range(i8 0, 2) i8 @_ZNK12_GLOBAL__N_126TestMultiUseProducerFusion15matchAndRewriteEN4mlir6linalg9GenericOpERNS1_15PatternRewriterE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %class.anon.512, align 8            ; 4 uses
  %4 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %5 = alloca %class.anon.512, align 8            ; 4 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %7 = alloca %"class.mlir::linalg::GenericOp", align 8 ; 4 uses
  %8 = alloca %"class.llvm::FailureOr", align 8   ; 9 uses
  %9 = alloca %class.anon.511, align 8            ; 4 uses
  store ptr %1, ptr %7, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 8388608
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %._crit_edge.thread, label %_ZN4mlir9Operation13getOpOperandsEv.exit, !prof !173

_ZN4mlir9Operation13getOpOperandsEv.exit:         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !175  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !176  ; 2 uses
  %i.h = zext i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 5
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.i
  %.not86 = icmp eq i32 %i.g, 0
  br i1 %.not86, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4mlir9Operation13getOpOperandsEv.exit, %bb.b
  %.02087 = phi ptr [ %i.l, %bb.b ], [ %i.e, %_ZN4mlir9Operation13getOpOperandsEv.exit ] ; 4 uses
  %i.k = tail call noundef zeroext i1 @_ZN4mlir6linalg24areElementwiseOpsFusableEPNS_9OpOperandE(ptr noundef %.02087) #23
  br i1 %i.k, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.02087, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.l, %i.j
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %.not22 = icmp eq ptr %.02087, null
  br i1 %.not22, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.b, %bb.a, %_ZN4mlir9Operation13getOpOperandsEv.exit, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.n, align 1, !tbaa !452
  store ptr @.str.39, ptr %6, align 8, !tbaa !106
  store i8 3, ptr %i.m, align 8, !tbaa !453
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %6, ptr %5, align 8, !tbaa !454
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !460  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg9GenericOpEEEN4llvm13LogicalResultEOT_PKc.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = call noundef zeroext i1 @_ZN4mlir12RewriterBase8Listener7classofEPKNS_9OpBuilder8ListenerE(ptr noundef nonnull align 8 dereferenceable(12) %i.p) #23
  br i1 %i.q, label %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i, label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg9GenericOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i: ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.r, align 8
  %i.s = ptrtoint ptr %5 to i64
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(12) %i.p, ptr %.sroa.0.0.copyload.i.i.i.i, ptr nonnull @_ZN4llvm12function_refIFvRN4mlir10DiagnosticEEE11callback_fnIZNS1_12RewriterBase18notifyMatchFailureIRNS1_6linalg9GenericOpEEENS_13LogicalResultEOT_RKNS_5TwineEEUlS3_E_EEvlS3_, i64 %i.s) #23, !inline_history !444
  br label %_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg9GenericOpEEEN4llvm13LogicalResultEOT_PKc.exit

_ZN4mlir12RewriterBase18notifyMatchFailureIRNS_6linalg9GenericOpEEEN4llvm13LogicalResultEOT_PKc.exit: ; preds = %._crit_edge.thread, %bb.c, %_ZN4llvm19dyn_cast_if_presentIN4mlir12RewriterBase8ListenerENS1_9OpBuilder8ListenerEEEDaPT0_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZNSt14_Optional_baseIN4mlir6linalg25ElementwiseOpFusionResultELb0ELb0EED2Ev.exit27
end_hunk_0
