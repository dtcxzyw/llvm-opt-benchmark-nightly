Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LegalityPredicates?download=true
inline.NumInlined: 1563
inline.NumDeleted: 800
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@"_ZNSt17_Function_handlerIFbRKN4llvm13LegalityQueryEEZNS0_18LegalityPredicates6sizeIsEjjE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation"
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN4llvm13LegalityQueryEEZNS0_18LegalityPredicates6sizeIsEjjE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4llvm18LegalityPredicates6sizeIsEjjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !28
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm18LegalityPredicates6sizeIsEjjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !64
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm18LegalityPredicates6sizeIsEjjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8, !tbaa !10
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm18LegalityPredicates6sizeIsEjjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4llvm18LegalityPredicates6sizeIsEjjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN4llvm13LegalityQueryEEZNS0_18LegalityPredicates8sameSizeEjjE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) #9 align 2 {
bb.a:
  %.val = load i32, ptr %0, align 8, !tbaa !141
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val2 = load i32, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.b, align 8, !tbaa !60 ; 2 uses
  %i.c = zext i32 %.val to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.val3, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8              ; 10 uses
  %.mask.i.i.i.i.i = and i64 %i.e, -1152921504606846976
  %i.f = icmp eq i64 %.mask.i.i.i.i.i, 4611686018427387904 ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = lshr i64 %i.e, 60
  %.off.i.i.i.i.i = add nsw i64 %i.g, -1
  %switch.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i, 3
  br i1 %switch.i.i.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = icmp slt i64 %i.e, -8070450532247928832
  %spec.select.i.i.i.i.i.i = or i1 %i.h, %i.f
  %i.i = lshr i64 %i.e, 44
  %i.j = and i64 %i.i, 65535
  %i.k = lshr i64 %i.e, 28
  %i.l = and i64 %i.k, 4294967295
  %i.m = select i1 %spec.select.i.i.i.i.i.i, i64 %i.j, i64 %i.l
  br label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.n = lshr i64 %i.e, 4
  %.sroa.0.0.insert.ext.i.i.i.i.i.i = and i64 %i.n, 65535
  %i.o = icmp slt i64 %i.e, -8070450532247928832
  %i.p = lshr i64 %i.e, 44
  %i.q = and i64 %i.p, 65535
  %i.r = lshr i64 %i.e, 28
  %.0.in.i3.i.i.i.i = select i1 %i.o, i64 %i.q, i64 %i.r
  %i.s = mul nuw nsw i64 %.0.in.i3.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i.i
  %i.t = and i64 %i.s, 4294967295
  %i.u = trunc i64 %i.e to i8
  %.sroa.0.4.extract.trunc.i.i.i.i = and i8 %i.u, 1
  br label %_ZNK4llvm3LLT13getSizeInBitsEv.exit.i.i.i

_ZNK4llvm3LLT13getSizeInBitsEv.exit.i.i.i:        ; preds = %bb.d, %bb.c
  %.sroa.05.0.i.i.i.i = phi i64 [ %i.m, %bb.c ], [ %i.t, %bb.d ]
  %.sroa.3.0.i.i.i.i = phi i8 [ 0, %bb.c ], [ %.sroa.0.4.extract.trunc.i.i.i.i, %bb.d ]
  %i.v = zext i32 %.val2 to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.val3, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8              ; 10 uses
  %.mask.i.i7.i.i.i = and i64 %i.x, -1152921504606846976
  %i.y = icmp eq i64 %.mask.i.i7.i.i.i, 4611686018427387904 ; 2 uses
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm3LLT13getSizeInBitsEv.exit.i.i.i
  %i.z = lshr i64 %i.x, 60
  %.off.i.i8.i.i.i = add nsw i64 %i.z, -1
  %switch.i.i9.i.i.i = icmp ult i64 %.off.i.i8.i.i.i, 3
  br i1 %switch.i.i9.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %_ZNK4llvm3LLT13getSizeInBitsEv.exit.i.i.i
  %i.aa = icmp slt i64 %i.x, -8070450532247928832
  %spec.select.i.i.i17.i.i.i = or i1 %i.aa, %i.y
  %i.ab = lshr i64 %i.x, 44
  %i.ac = and i64 %i.ab, 65535
  %i.ad = lshr i64 %i.x, 28
  %i.ae = and i64 %i.ad, 4294967295
  %i.af = select i1 %spec.select.i.i.i17.i.i.i, i64 %i.ac, i64 %i.ae
  br label %"_ZSt10__invoke_rIbRZN4llvm18LegalityPredicates8sameSizeEjjE3$_0JRKNS0_13LegalityQueryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit"

bb.g:                                             ; preds = %bb.e
  %i.ag = lshr i64 %i.x, 4
  %.sroa.0.0.insert.ext.i.i.i10.i.i.i = and i64 %i.ag, 65535
  %i.ah = icmp slt i64 %i.x, -8070450532247928832
  %i.ai = lshr i64 %i.x, 44
  %i.aj = and i64 %i.ai, 65535
  %i.ak = lshr i64 %i.x, 28
  %.0.in.i3.i11.i.i.i = select i1 %i.ah, i64 %i.aj, i64 %i.ak
  %i.al = mul nuw nsw i64 %.0.in.i3.i11.i.i.i, %.sroa.0.0.insert.ext.i.i.i10.i.i.i
  %i.am = and i64 %i.al, 4294967295
  %i.an = trunc i64 %i.x to i8
  %.sroa.0.4.extract.trunc.i12.i.i.i = and i8 %i.an, 1
  br label %"_ZSt10__invoke_rIbRZN4llvm18LegalityPredicates8sameSizeEjjE3$_0JRKNS0_13LegalityQueryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit"

"_ZSt10__invoke_rIbRZN4llvm18LegalityPredicates8sameSizeEjjE3$_0JRKNS0_13LegalityQueryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit": ; preds = %bb.f, %bb.g
  %.sroa.05.0.i13.i.i.i = phi i64 [ %i.af, %bb.f ], [ %i.am, %bb.g ]
  %.sroa.3.0.i14.i.i.i = phi i8 [ 0, %bb.f ], [ %.sroa.0.4.extract.trunc.i12.i.i.i, %bb.g ]
  %i.ao = icmp eq i64 %.sroa.05.0.i.i.i.i, %.sroa.05.0.i13.i.i.i
  %i.ap = icmp eq i8 %.sroa.3.0.i.i.i.i, %.sroa.3.0.i14.i.i.i
  %i.aq = and i1 %i.ao, %i.ap
  ret i1 %i.aq
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN4llvm13LegalityQueryEEZNS0_18LegalityPredicates8sameSizeEjjE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4llvm18LegalityPredicates8sameSizeEjjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !28
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm18LegalityPredicates8sameSizeEjjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !64
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm18LegalityPredicates8sameSizeEjjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8, !tbaa !10
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm18LegalityPredicates8sameSizeEjjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4llvm18LegalityPredicates8sameSizeEjjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN4llvm13LegalityQueryEEZNS0_18LegalityPredicates21memSizeInBytesNotPow2EjE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) #2 align 2 {
bb.a:
  %.val = load i32, ptr %0, align 8, !tbaa !143
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2 = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.b = zext i32 %.val to i64
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %.val2, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8              ; 10 uses
  %.mask.i.i.i.i.i.i = and i64 %i.d, -1152921504606846976
  %i.e = icmp eq i64 %.mask.i.i.i.i.i.i, 4611686018427387904 ; 2 uses
  br i1 %i.e, label %_ZNK4llvm3LLT14getSizeInBytesEv.exit.thread.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 60
  %.off.i.i.i.i.i.i = add nsw i64 %i.f, -1
  %switch.i.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i, 3
  br i1 %switch.i.i.i.i.i.i, label %_ZNK4llvm3LLT14getSizeInBytesEv.exit.thread.i.i.i, label %_ZNK4llvm3LLT14getSizeInBytesEv.exit.i.i.i

_ZNK4llvm3LLT14getSizeInBytesEv.exit.thread.i.i.i: ; preds = %bb.b, %bb.a
  %i.g = icmp slt i64 %i.d, -8070450532247928832
  %spec.select.i.i.i.i.i.i.i = or i1 %i.g, %i.e
  %i.h = lshr i64 %i.d, 44
  %i.i = and i64 %i.h, 65535
  %i.j = lshr i64 %i.d, 28
  %i.k = and i64 %i.j, 4294967295
  %i.l = select i1 %spec.select.i.i.i.i.i.i.i, i64 %i.i, i64 %i.k
  br label %_ZNK4llvm8TypeSizecvmEv.exit.i.i.i

_ZNK4llvm3LLT14getSizeInBytesEv.exit.i.i.i:       ; preds = %bb.b
  %i.m = lshr i64 %i.d, 4
  %.sroa.0.0.insert.ext.i.i.i.i.i.i.i = and i64 %i.m, 65535
  %i.n = icmp slt i64 %i.d, -8070450532247928832
  %i.o = lshr i64 %i.d, 44
  %i.p = and i64 %i.o, 65535
  %i.q = lshr i64 %i.d, 28
  %.0.in.i3.i.i.i.i.i = select i1 %i.n, i64 %i.p, i64 %i.q
  %i.r = mul nuw nsw i64 %.0.in.i3.i.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i.i.i
  %i.s = and i64 %i.r, 4294967295
  %i.t = trunc i64 %i.d to i1
  br i1 %i.t, label %bb.c, label %_ZNK4llvm8TypeSizecvmEv.exit.i.i.i

bb.c:                                             ; preds = %_ZNK4llvm3LLT14getSizeInBytesEv.exit.i.i.i
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str) #15
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i.i.i:               ; preds = %_ZNK4llvm3LLT14getSizeInBytesEv.exit.i.i.i, %_ZNK4llvm3LLT14getSizeInBytesEv.exit.thread.i.i.i
  %.in.in.i.i.i = phi i64 [ %i.l, %_ZNK4llvm3LLT14getSizeInBytesEv.exit.thread.i.i.i ], [ %i.s, %_ZNK4llvm3LLT14getSizeInBytesEv.exit.i.i.i ]
  %.in.i.i.i = add nuw nsw i64 %.in.in.i.i.i, 7
  %i.u = lshr i64 %.in.i.i.i, 3                   ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i.i, label %"_ZSt10__invoke_rIbRZN4llvm18LegalityPredicates21memSizeInBytesNotPow2EjE3$_0JRKNS0_13LegalityQueryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit", label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i.i
  %i.v = trunc nuw nsw i64 %i.u to i32
  %i.w = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.v)
  %i.x = icmp samesign ugt i32 %i.w, 1
  br label %"_ZSt10__invoke_rIbRZN4llvm18LegalityPredicates21memSizeInBytesNotPow2EjE3$_0JRKNS0_13LegalityQueryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit"

"_ZSt10__invoke_rIbRZN4llvm18LegalityPredicates21memSizeInBytesNotPow2EjE3$_0JRKNS0_13LegalityQueryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit": ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i.i.i, %bb.d
  %i.y = phi i1 [ true, %_ZNK4llvm8TypeSizecvmEv.exit.i.i.i ], [ %i.x, %bb.d ]
  ret i1 %i.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN4llvm13LegalityQueryEEZNS0_18LegalityPredicates21memSizeInBytesNotPow2EjE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4llvm18LegalityPredicates21memSizeInBytesNotPow2EjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !28
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm18LegalityPredicates21memSizeInBytesNotPow2EjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !64
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm18LegalityPredicates21memSizeInBytesNotPow2EjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i32, ptr %1, align 8
  store i32 %.val, ptr %0, align 8, !tbaa !10
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm18LegalityPredicates21memSizeInBytesNotPow2EjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4llvm18LegalityPredicates21memSizeInBytesNotPow2EjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN4llvm13LegalityQueryEEZNS0_18LegalityPredicates22memSizeNotByteSizePow2EjE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) #9 align 2 {
bb.a:
  %.val = load i32, ptr %0, align 8, !tbaa !145
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val2 = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.b = zext i32 %.val to i64
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %.val2, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11   ; 13 uses
  %.mask.i.i.i.i.i.i = and i64 %i.d, -1152921504606846976
  %i.e = icmp eq i64 %.mask.i.i.i.i.i.i, 4611686018427387904 ; 2 uses
  br i1 %i.e, label %_ZNK4llvm3LLT11isByteSizedEv.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i64 %i.d, 60
  %.off.i.i.i.i.i.i = add nsw i64 %i.f, -1
  %switch.i.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i, 3
  br i1 %switch.i.i.i.i.i.i, label %_ZNK4llvm3LLT11isByteSizedEv.exit.thread5.i.i.i, label %_ZNK4llvm3LLT11isByteSizedEv.exit.thread.i.i.i

_ZNK4llvm3LLT11isByteSizedEv.exit.i.i.i:          ; preds = %bb.a
  %i.g = and i64 %i.d, 123145302310912
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.thread.thread.i.i.i, label %"_ZSt10__invoke_rIbRZN4llvm18LegalityPredicates22memSizeNotByteSizePow2EjE3$_0JRKNS0_13LegalityQueryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit"

_ZNK4llvm3LLT11isByteSizedEv.exit.thread5.i.i.i:  ; preds = %bb.b
  %i.i = icmp slt i64 %i.d, -8070450532247928832
  %i.j = select i1 %i.i, i64 123145302310912, i64 1879048192
  %i.k = and i64 %i.j, %i.d
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.thread.thread.i.i.i, label %"_ZSt10__invoke_rIbRZN4llvm18LegalityPredicates22memSizeNotByteSizePow2EjE3$_0JRKNS0_13LegalityQueryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit"

_ZNK4llvm3LLT11isByteSizedEv.exit.thread.i.i.i:   ; preds = %bb.b
  %i.m = lshr i64 %i.d, 4                         ; 2 uses
  %i.n = icmp slt i64 %i.d, -8070450532247928832  ; 2 uses
  %.0.in.i3.i.v.i.i.i.i = select i1 %i.n, i64 44, i64 28
  %.0.in.i3.i.i.i.i.i = lshr i64 %i.d, %.0.in.i3.i.v.i.i.i.i
  %i.o = mul i64 %.0.in.i3.i.i.i.i.i, %i.m
  %.zext.i4.i.i.i = and i64 %i.o, 7
  %i.p = icmp eq i64 %.zext.i4.i.i.i, 0
  br i1 %i.p, label %.thread.i.i.i, label %"_ZSt10__invoke_rIbRZN4llvm18LegalityPredicates22memSizeNotByteSizePow2EjE3$_0JRKNS0_13LegalityQueryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit"

.thread.thread.i.i.i:                             ; preds = %_ZNK4llvm3LLT11isByteSizedEv.exit.thread5.i.i.i, %_ZNK4llvm3LLT11isByteSizedEv.exit.i.i.i
  %i.q = icmp slt i64 %i.d, -8070450532247928832
  %spec.select.i.i.i.i7.i.i.i = or i1 %i.q, %i.e
  %i.r = lshr i64 %i.d, 44
  %i.s = and i64 %i.r, 65535
  %i.t = lshr i64 %i.d, 28
  %i.u = and i64 %i.t, 4294967295
  %i.v = select i1 %spec.select.i.i.i.i7.i.i.i, i64 %i.s, i64 %i.u
  br label %_ZNK4llvm3LLT14getSizeInBytesEv.exit.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNK4llvm3LLT11isByteSizedEv.exit.thread.i.i.i
  %.sroa.0.0.insert.ext.i.i.i.i.i.i.i = and i64 %i.m, 65535
  %i.w = lshr i64 %i.d, 44
  %i.x = and i64 %i.w, 65535
  %i.y = lshr i64 %i.d, 28
  %.0.in.i3.i.i5.i.i.i = select i1 %i.n, i64 %i.x, i64 %i.y
  %i.z = mul nuw nsw i64 %.0.in.i3.i.i5.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i.i.i.i
  %i.aa = and i64 %i.z, 4294967295
  br label %_ZNK4llvm3LLT14getSizeInBytesEv.exit.i.i.i

_ZNK4llvm3LLT14getSizeInBytesEv.exit.i.i.i:       ; preds = %.thread.i.i.i, %.thread.thread.i.i.i
  %.sroa.05.0.i.i6.i.i.i = phi i64 [ %i.v, %.thread.thread.i.i.i ], [ %i.aa, %.thread.i.i.i ]
  %i.ab = add nuw nsw i64 %.sroa.05.0.i.i6.i.i.i, 7
  %i.ac = lshr i64 %i.ab, 3                       ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i, label %"_ZSt10__invoke_rIbRZN4llvm18LegalityPredicates22memSizeNotByteSizePow2EjE3$_0JRKNS0_13LegalityQueryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit", label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm3LLT14getSizeInBytesEv.exit.i.i.i
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = tail call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %i.ad)
  %i.af = icmp samesign ugt i32 %i.ae, 1
  br label %"_ZSt10__invoke_rIbRZN4llvm18LegalityPredicates22memSizeNotByteSizePow2EjE3$_0JRKNS0_13LegalityQueryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit"

"_ZSt10__invoke_rIbRZN4llvm18LegalityPredicates22memSizeNotByteSizePow2EjE3$_0JRKNS0_13LegalityQueryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit": ; preds = %_ZNK4llvm3LLT11isByteSizedEv.exit.i.i.i, %_ZNK4llvm3LLT11isByteSizedEv.exit.thread5.i.i.i, %_ZNK4llvm3LLT11isByteSizedEv.exit.thread.i.i.i, %_ZNK4llvm3LLT14getSizeInBytesEv.exit.i.i.i, %bb.c
  %i.ag = phi i1 [ true, %_ZNK4llvm3LLT11isByteSizedEv.exit.i.i.i ], [ true, %_ZNK4llvm3LLT11isByteSizedEv.exit.thread5.i.i.i ], [ true, %_ZNK4llvm3LLT11isByteSizedEv.exit.thread.i.i.i ], [ true, %_ZNK4llvm3LLT14getSizeInBytesEv.exit.i.i.i ], [ %i.af, %bb.c ]
  ret i1 %i.ag
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN4llvm13LegalityQueryEEZNS0_18LegalityPredicates22memSizeNotByteSizePow2EjE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4llvm18LegalityPredicates22memSizeNotByteSizePow2EjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !28
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm18LegalityPredicates22memSizeNotByteSizePow2EjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !64
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm18LegalityPredicates22memSizeNotByteSizePow2EjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i32, ptr %1, align 8
  store i32 %.val, ptr %0, align 8, !tbaa !10
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm18LegalityPredicates22memSizeNotByteSizePow2EjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4llvm18LegalityPredicates22memSizeNotByteSizePow2EjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN4llvm13LegalityQueryEEZNS0_18LegalityPredicates18numElementsNotPow2EjE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) #9 align 2 {
bb.a:
  %.val = load i32, ptr %0, align 8, !tbaa !147
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.b = zext i32 %.val to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %.val2, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11   ; 3 uses
  %i.e = lshr i64 %i.d, 60
  %i.f = add nsw i64 %i.e, -9
  %switch.selectcmp.i.i.i.i.i = icmp ult i64 %i.f, -4
  %i.g = trunc i64 %i.d to i1
  %.not.i.i.i = or i1 %switch.selectcmp.i.i.i.i.i, %i.g
  br i1 %.not.i.i.i, label %"_ZSt10__invoke_rIbRZN4llvm18LegalityPredicates18numElementsNotPow2EjE3$_0JRKNS0_13LegalityQueryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit", label %_ZNK4llvm3LLT14getNumElementsEv.exit.i.i.i

_ZNK4llvm3LLT14getNumElementsEv.exit.i.i.i:       ; preds = %bb.a
  %i.h = trunc i64 %i.d to i32
  %i.i = lshr i32 %i.h, 4
  %i.j = and i32 %i.i, 65535                      ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i.i, label %"_ZSt10__invoke_rIbRZN4llvm18LegalityPredicates18numElementsNotPow2EjE3$_0JRKNS0_13LegalityQueryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit", label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm3LLT14getNumElementsEv.exit.i.i.i
  %i.k = tail call range(i32 1, 17) i32 @llvm.ctpop.i32(i32 %i.j)
  %i.l = icmp samesign ugt i32 %i.k, 1
  br label %"_ZSt10__invoke_rIbRZN4llvm18LegalityPredicates18numElementsNotPow2EjE3$_0JRKNS0_13LegalityQueryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit"

"_ZSt10__invoke_rIbRZN4llvm18LegalityPredicates18numElementsNotPow2EjE3$_0JRKNS0_13LegalityQueryEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit": ; preds = %bb.a, %_ZNK4llvm3LLT14getNumElementsEv.exit.i.i.i, %bb.b
  %i.m = phi i1 [ false, %bb.a ], [ true, %_ZNK4llvm3LLT14getNumElementsEv.exit.i.i.i ], [ %i.l, %bb.b ]
  ret i1 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN4llvm13LegalityQueryEEZNS0_18LegalityPredicates18numElementsNotPow2EjE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4llvm18LegalityPredicates18numElementsNotPow2EjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !28
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm18LegalityPredicates18numElementsNotPow2EjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !64
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm18LegalityPredicates18numElementsNotPow2EjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i32, ptr %1, align 8
  store i32 %.val, ptr %0, align 8, !tbaa !10
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm18LegalityPredicates18numElementsNotPow2EjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4llvm18LegalityPredicates18numElementsNotPow2EjE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN4llvm13LegalityQueryEEZNS0_18LegalityPredicates35atomicOrderingAtLeastOrStrongerThanEjNS0_14AtomicOrderingEE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) #9 align 2 {
bb.a:
  %.val = load i32, ptr %0, align 8, !tbaa !150
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val2 = load i32, ptr %i.a, align 4, !tbaa !151
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3 = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.c = zext i32 %.val to i64
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val3, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !153
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm23isAtLeastOrStrongerThanENS_14AtomicOrderingES0_E6lookup, i64 %i.g
  %i.i = zext i32 %.val2 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !67, !range !68, !noundef !69
  %i.l = trunc nuw i8 %i.k to i1
  ret i1 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFbRKN4llvm13LegalityQueryEEZNS0_18LegalityPredicates35atomicOrderingAtLeastOrStrongerThanEjNS0_14AtomicOrderingEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #4 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4llvm18LegalityPredicates35atomicOrderingAtLeastOrStrongerThanEjNS1_14AtomicOrderingEE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !28
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm18LegalityPredicates35atomicOrderingAtLeastOrStrongerThanEjNS1_14AtomicOrderingEE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !64
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm18LegalityPredicates35atomicOrderingAtLeastOrStrongerThanEjNS1_14AtomicOrderingEE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN4llvm18LegalityPredicates35atomicOrderingAtLeastOrStrongerThanEjNS1_14AtomicOrderingEE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4llvm18LegalityPredicates35atomicOrderingAtLeastOrStrongerThanEjNS1_14AtomicOrderingEE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind allocsize(0) }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !37}
!1 = distinct !{!1, !37}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"_ZTSSt14_Function_base", !6, i64 0, !12, i64 16}
!14 = !{!"_ZTSSt8functionIFbRKN4llvm13LegalityQueryEEE", !13, i64 0, !12, i64 24}
!15 = !{!14, !12, i64 24}
!16 = !{!13, !12, i64 16}
!17 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !12, i64 0, !7, i64 8, !7, i64 12}
!18 = !{!17, !12, i64 0}
!19 = !{!17, !7, i64 8}
!20 = !{!17, !7, i64 12}
!21 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_3LLTEvEE", !17, i64 0}
!22 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_3LLTELb1EEE", !21, i64 0}
!23 = !{!"_ZTSN4llvm15SmallVectorImplINS_3LLTEEE", !22, i64 0}
!24 = !{!"_ZTSN4llvm18SmallVectorStorageINS_3LLTELj4EEE", !6, i64 0}
!25 = !{!"_ZTSN4llvm11SmallVectorINS_3LLTELj4EEE", !23, i64 0, !24, i64 16}
!26 = !{!"_ZTSZN4llvm18LegalityPredicates9typeInSetEjSt16initializer_listINS_3LLTEEE3$_0", !25, i64 0, !7, i64 48}
!27 = !{!26, !7, i64 48}
!28 = !{!12, !12, i64 0}
!29 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairINS_3LLTES2_EvEE", !17, i64 0}
!30 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairINS_3LLTES2_ELb1EEE", !29, i64 0}
!31 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairINS_3LLTES2_EEE", !30, i64 0}
!32 = !{!"_ZTSN4llvm18SmallVectorStorageISt4pairINS_3LLTES2_ELj4EEE", !6, i64 0}
!33 = !{!"_ZTSN4llvm11SmallVectorISt4pairINS_3LLTES2_ELj4EEE", !31, i64 0, !32, i64 16}
!34 = !{!"_ZTSZN4llvm18LegalityPredicates13typePairInSetEjjSt16initializer_listISt4pairINS_3LLTES3_EEE3$_0", !33, i64 0, !7, i64 80, !7, i64 84}
!35 = !{!34, !7, i64 80}
end_hunk_0
