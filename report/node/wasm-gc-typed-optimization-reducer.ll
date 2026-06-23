inline.NumInlined: 1835
inline.NumDeleted: 1081
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer16ProcessStructGetERKNS2_11StructGetOpE:bb.a
  %i.l = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS5_NS2_4wasm9ValueTypeEENS2_13ZoneAllocatorISA_EENS_10_Select1stESt8equal_toIS5_ENS1_4base4hashIS5_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS5_(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %2)
  store i32 %i.b, ptr %i.l, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.07.0.copyload = load i32, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.s, align 8              ; 3 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 24                  ; 2 uses
  %i.aa = zext i32 %.sroa.07.0.copyload to i64    ; 2 uses
  %i.ab = icmp ugt i64 %i.z, %i.aa
  call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %.sroa.04.0.copyload = load i32, ptr %i.ad, align 4 ; 3 uses
  %i.ae = zext i32 %.sroa.04.0.copyload to i64    ; 2 uses
  %i.af = icmp ugt i64 %i.z, %i.ae
  call void @llvm.assume(i1 %i.af)
  %i.ag = icmp ult i32 %.sroa.04.0.copyload, 1048576
  br i1 %i.ag, label %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.21) #20
  unreachable

_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit: ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.ae ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.aj = load i8, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 22
  %i.al = load i8, ptr %i.ak, align 2, !range !10, !noundef !5
  %i.am = shl nuw nsw i8 %i.al, 4
  %i.an = or disjoint i8 %i.am, 3
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = zext i8 %i.aj to i32
  %i.aq = shl nuw nsw i32 %i.ap, 5
  %i.ar = or disjoint i32 %i.aq, %i.ao
  %i.as = shl nuw nsw i32 %.sroa.04.0.copyload, 8
  %i.at = or i32 %i.ar, %i.as
  br label %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit

bb.d:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = zext i32 %i.n to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ay
  %.sroa.0.0.copyload.i.i21 = load i32, ptr %i.az, align 4 ; 2 uses
  switch i32 %.sroa.0.0.copyload.i.i21, label %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit [
    i32 6928, label %bb.e
    i32 7184, label %bb.e
    i32 7440, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  br label %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit

bb.f:                                             ; preds = %bb.d
  br label %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit

_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit:  ; preds = %bb.f, %bb.e, %bb.d, %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit
  %.sroa.022.0 = phi i32 [ %i.at, %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit ], [ 5648, %bb.e ], [ 6160, %bb.f ], [ %.sroa.0.0.copyload.i.i21, %bb.d ]
  %i.ba = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.f, %i.bd
  %i.bf = trunc i64 %i.be to i32
  %i.bg = call i32 @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19RefineTypeKnowledgeENS2_7OpIndexENS0_4wasm9ValueTypeERKNS2_9OperationE(ptr noundef nonnull align 8 dereferenceable(561) %0, i32 %i.bf, i32 %.sroa.022.0, ptr noundef nonnull align 4 dereferenceable(4) %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer16ProcessStructSetERKNS2_11StructSetOpE(ptr noundef nonnull align 8 dereferenceable(561) %0, ptr noundef nonnull align 8 dereferenceable(26) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::turboshaft::OpIndex", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 8
  %i.b = tail call i32 @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer26RefineTypeKnowledgeNotNullENS2_7OpIndexERKNS2_9OperationE(ptr noundef nonnull align 8 dereferenceable(561) %0, i32 %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 496
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.f, %i.i
  %i.k = trunc i64 %i.j to i32
  store i32 %i.k, ptr %2, align 4
  %i.l = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS5_NS2_4wasm9ValueTypeEENS2_13ZoneAllocatorISA_EENS_10_Select1stESt8equal_toIS5_ENS1_4base4hashIS5_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS5_(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %2)
  store i32 %i.b, ptr %i.l, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer15ProcessArrayGetERKNS2_10ArrayGetOpE(ptr noundef nonnull align 8 dereferenceable(561) %0, ptr noundef nonnull align 8 dereferenceable(18) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 8
  %i.b = tail call i32 @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer26RefineTypeKnowledgeNotNullENS2_7OpIndexERKNS2_9OperationE(ptr noundef nonnull align 8 dereferenceable(561) %0, i32 %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 4 dereferenceable(4) %1) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !6
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.0.0.copyload.i = load i32, ptr %i.i, align 4 ; 2 uses
  switch i32 %.sroa.0.0.copyload.i, label %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit [
    i32 6928, label %bb.b
    i32 7184, label %bb.b
    i32 7440, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  br label %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit

bb.c:                                             ; preds = %bb.a
  br label %_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit

_ZNK2v88internal4wasm9ValueType8UnpackedEv.exit:  ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i32 [ 5648, %bb.b ], [ 6160, %bb.c ], [ %.sroa.0.0.copyload.i, %bb.a ]
  %i.j = ptrtoint ptr %1 to i64
  %i.k = ptrtoint ptr %i.f to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = trunc i64 %i.l to i32
  %i.n = tail call i32 @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19RefineTypeKnowledgeENS2_7OpIndexENS0_4wasm9ValueTypeERKNS2_9OperationE(ptr noundef nonnull align 8 dereferenceable(561) %0, i32 %i.m, i32 %.sroa.0.0.i, ptr noundef nonnull align 4 dereferenceable(4) %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer18ProcessArrayLengthERKNS2_13ArrayLengthOpE(ptr noundef nonnull align 8 dereferenceable(561) %0, ptr noundef nonnull align 4 dereferenceable(5) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::turboshaft::OpIndex", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.a, align 4
  %i.b = tail call i32 @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer26RefineTypeKnowledgeNotNullENS2_7OpIndexERKNS2_9OperationE(ptr noundef nonnull align 8 dereferenceable(561) %0, i32 %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 496
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6
  %i.f = ptrtoint ptr %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.f, %i.i
  %i.k = trunc i64 %i.j to i32
  store i32 %i.k, ptr %2, align 4
  %i.l = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS5_NS2_4wasm9ValueTypeEENS2_13ZoneAllocatorISA_EENS_10_Select1stESt8equal_toIS5_ENS1_4base4hashIS5_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS5_(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %2)
  store i32 %i.b, ptr %i.l, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer16ProcessGlobalGetERKNS2_11GlobalGetOpE(ptr noundef nonnull align 8 dereferenceable(561) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6
  %i.c = ptrtoint ptr %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.c, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %.sroa.01.0.copyload = load i32, ptr %i.j, align 8
  %i.k = tail call i32 @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19RefineTypeKnowledgeENS2_7OpIndexENS0_4wasm9ValueTypeERKNS2_9OperationE(ptr noundef nonnull align 8 dereferenceable(561) %0, i32 %i.h, i32 %.sroa.01.0.copyload, ptr noundef nonnull align 4 dereferenceable(4) %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer14ProcessRefFuncERKNS2_13WasmRefFuncOpE(ptr noundef nonnull align 8 dereferenceable(561) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = zext i32 %i.e to i64
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %.sroa.05.0.copyload = load i32, ptr %i.i, align 4 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = sdiv exact i64 %i.p, 24
  %i.r = zext i32 %.sroa.05.0.copyload to i64     ; 2 uses
  %i.s = icmp ugt i64 %i.q, %i.r
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp ult i32 %.sroa.05.0.copyload, 1048576
  br i1 %i.t, label %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.21) #20
  unreachable

_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit: ; preds = %bb.a
  %i.u = ptrtoint ptr %1 to i64
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = load ptr, ptr %2, align 8, !nonnull !5, !align !6
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %5 = load ptr, ptr %4, align 8
  %i.v = ptrtoint ptr %5 to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.aa = load i8, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 22
  %i.ac = load i8, ptr %i.ab, align 2, !range !10, !noundef !5
  %i.ad = shl nuw nsw i8 %i.ac, 4
  %i.ae = or disjoint i8 %i.ad, 3
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = zext i8 %i.aa to i32
  %i.ah = shl nuw nsw i32 %i.ag, 5
  %i.ai = or disjoint i32 %i.ah, %i.af
  %i.aj = shl nuw nsw i32 %.sroa.05.0.copyload, 8
  %i.ak = or i32 %i.ai, %i.aj
  %i.al = tail call i32 @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19RefineTypeKnowledgeENS2_7OpIndexENS0_4wasm9ValueTypeERKNS2_9OperationE(ptr noundef nonnull align 8 dereferenceable(561) %0, i32 %i.x, i32 %i.ak, ptr noundef nonnull align 4 dereferenceable(4) %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer20ProcessAllocateArrayERKNS2_19WasmAllocateArrayOpE(ptr noundef nonnull align 8 dereferenceable(561) %0, ptr noundef nonnull align 8 dereferenceable(17) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.h = add i64 %i.f, %i.g
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.07.0.copyload = load i32, ptr %i.j, align 4 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 24
  %i.u = zext i32 %.sroa.07.0.copyload to i64     ; 2 uses
  %i.v = icmp ugt i64 %i.t, %i.u
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp ult i32 %.sroa.07.0.copyload, 1048576
  br i1 %i.w, label %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.21) #20
  unreachable

_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit: ; preds = %bb.a
  %i.x = ptrtoint ptr %1 to i64
  %i.y = sub i64 %i.x, %i.f
  %i.z = trunc i64 %i.y to i32
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.u ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 22
  %i.ae = load i8, ptr %i.ad, align 2, !range !10, !noundef !5
  %i.af = shl nuw nsw i8 %i.ae, 4
  %i.ag = or disjoint i8 %i.af, 3
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = zext i8 %i.ac to i32
  %i.aj = shl nuw nsw i32 %i.ai, 5
  %i.ak = or disjoint i32 %i.aj, %i.ah
  %i.al = shl nuw nsw i32 %.sroa.07.0.copyload, 8
  %i.am = or i32 %i.ak, %i.al
  %i.an = tail call i32 @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19RefineTypeKnowledgeENS2_7OpIndexENS0_4wasm9ValueTypeERKNS2_9OperationE(ptr noundef nonnull align 8 dereferenceable(561) %0, i32 %i.z, i32 %i.am, ptr noundef nonnull align 4 dereferenceable(4) %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer21ProcessAllocateStructERKNS2_20WasmAllocateStructOpE(ptr noundef nonnull align 8 dereferenceable(561) %0, ptr noundef nonnull align 8 dereferenceable(17) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.h = add i64 %i.f, %i.g
  %i.i = inttoptr i64 %i.h to ptr                 ; 3 uses
  %i.j = load i8, ptr %i.i, align 4
  switch i8 %i.j, label %.critedge.critedge [
    i8 17, label %bb.b
    i8 77, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.026.0.copyload = load i32, ptr %i.k, align 4
  %.phi.trans.insert56 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre57 = load ptr, ptr %.phi.trans.insert56, align 8 ; 2 uses
  %.phi.trans.insert58 = getelementptr inbounds nuw i8, ptr %.pre57, i64 160
  %.pre59.a = load ptr, ptr %.phi.trans.insert58, align 8
  %.phi.trans.insert60 = getelementptr inbounds nuw i8, ptr %.pre57, i64 152
  %.pre61 = load ptr, ptr %.phi.trans.insert60, align 8 ; 2 uses
  %.pre62.a = ptrtoint ptr %.pre59.a to i64
  %.pre63 = ptrtoint ptr %.pre61 to i64
  %.pre65 = sub i64 %.pre62.a, %.pre63
  %.pre67 = sdiv exact i64 %.pre65, 24
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %.sroa.0.0.copyload.i.i49 = load i32, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = tail call i32 @_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3GetENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %i.m, i32 %.sroa.0.0.copyload.i.i49) ; 2 uses
  %i.o = and i32 %i.n, 3
  %i.p = icmp eq i32 %i.o, 3
  br i1 %i.p, label %bb.d, label %.critedge.critedge47

.critedge.critedge47:                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6
  %i.r = ptrtoint ptr %1 to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.r, %i.u
  %i.w = trunc i64 %i.v to i32
  %i.x = tail call i32 @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19RefineTypeKnowledgeENS2_7OpIndexENS0_4wasm9ValueTypeERKNS2_9OperationE(ptr noundef nonnull align 8 dereferenceable(561) %0, i32 %i.w, i32 3397, ptr noundef nonnull align 4 dereferenceable(4) %1) ; 0 uses
  br label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = lshr i32 %i.n, 8
  %i.ab = and i32 %i.aa, 1048575
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 152
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 160
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load ptr, ptr %i.ac, align 8            ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 24                ; 2 uses
  %i.ak = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.al = icmp ugt i64 %i.aj, %i.ak
  tail call void @llvm.assume(i1 %i.al)
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ak
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i32, ptr %i.an, align 4            ; 2 uses
  %.not54 = icmp eq i32 %i.ao, -1
  br i1 %.not54, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %2 = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6
  %i.ap = ptrtoint ptr %1 to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.ap, %i.as
  %i.au = trunc i64 %i.at to i32
  %i.av = tail call i32 @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19RefineTypeKnowledgeENS2_7OpIndexENS0_4wasm9ValueTypeERKNS2_9OperationE(ptr noundef nonnull align 8 dereferenceable(561) %0, i32 %i.au, i32 514, ptr noundef nonnull align 4 dereferenceable(4) %1) ; 0 uses
  br label %.critedge

.critedge.critedge:                               ; preds = %bb.a
  %i.aw = ptrtoint ptr %1 to i64
  %i.ax = sub i64 %i.aw, %i.f
  %i.ay = trunc i64 %i.ax to i32
  %i.az = tail call i32 @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19RefineTypeKnowledgeENS2_7OpIndexENS0_4wasm9ValueTypeERKNS2_9OperationE(ptr noundef nonnull align 8 dereferenceable(561) %0, i32 %i.ay, i32 3397, ptr noundef nonnull align 4 dereferenceable(4) %1) ; 0 uses
  br label %.critedge

.thread:                                          ; preds = %bb.d, %bb.b
  %.pre-phi68 = phi i64 [ %i.aj, %bb.d ], [ %.pre67, %bb.b ]
  %i.ba = phi ptr [ %i.af, %bb.d ], [ %.pre61, %bb.b ]
  %.sroa.026.4 = phi i32 [ %i.ao, %bb.d ], [ %.sroa.026.0.copyload, %bb.b ] ; 3 uses
  %i.bb = zext i32 %.sroa.026.4 to i64            ; 2 uses
  %i.bc = icmp ugt i64 %.pre-phi68, %i.bb
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = icmp ult i32 %.sroa.026.4, 1048576
  br i1 %i.bd, label %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit, label %bb.f, !prof !13

bb.f:                                             ; preds = %.thread
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.21) #20
  unreachable

_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit: ; preds = %.thread
  %i.be = ptrtoint ptr %1 to i64
  %3 = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %5 = load ptr, ptr %4, align 8
  %i.bf = ptrtoint ptr %5 to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.ba, i64 %i.bb ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  %i.bk = load i8, ptr %i.bj, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 22
  %i.bm = load i8, ptr %i.bl, align 2, !range !10, !noundef !5
  %i.bn = shl nuw nsw i8 %i.bm, 4
  %i.bo = or disjoint i8 %i.bn, 3
  %i.bp = zext nneg i8 %i.bo to i32
  %i.bq = zext i8 %i.bk to i32
  %i.br = shl nuw nsw i32 %i.bq, 5
  %i.bs = or disjoint i32 %i.br, %i.bp
  %i.bt = shl nuw nsw i32 %.sroa.026.4, 8
  %i.bu = or i32 %i.bs, %i.bt
  %i.bv = tail call i32 @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19RefineTypeKnowledgeENS2_7OpIndexENS0_4wasm9ValueTypeERKNS2_9OperationE(ptr noundef nonnull align 8 dereferenceable(561) %0, i32 %i.bh, i32 %i.bu, ptr noundef nonnull align 4 dereferenceable(4) %1) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %.critedge.critedge47, %.critedge.critedge, %_ZNK2v88internal4wasm10WasmModule9heap_typeENS1_15ModuleTypeIndexE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer10ProcessPhiERKNS2_5PhiOpE(ptr noundef nonnull align 8 dereferenceable(561) %0, ptr noundef nonnull align 4 dereferenceable(5) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::wasm::ValueType", align 4 ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.b = load i8, ptr %i.a, align 8, !range !10, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.c, label %.preheader, label %.preheader112

.preheader:                                       ; preds = %bb.a, %bb.d
  %.sroa.08.0.i.i.in = phi ptr [ %i.n, %bb.d ], [ %i.i, %bb.a ]
  %.sroa.08.0.i.i = load i32, ptr %.sroa.08.0.i.i.in, align 4 ; 2 uses
  %i.j = zext i32 %.sroa.08.0.i.i to i64
  %i.k = add i64 %i.j, %i.h
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = load i8, ptr %i.l, align 4
  switch i8 %i.m, label %_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer15GetResolvedTypeENS2_7OpIndexE.exit [
    i8 19, label %bb.d
    i8 16, label %bb.b
    i8 22, label %bb.c
  ]

bb.b:                                             ; preds = %.preheader
  br label %bb.d

bb.c:                                             ; preds = %.preheader
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.preheader
  %.sink.i.i = phi i64 [ 8, %bb.c ], [ 12, %bb.b ], [ 16, %.preheader ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sink.i.i
  br label %.preheader

_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer15GetResolvedTypeENS2_7OpIndexE.exit: ; preds = %.preheader
  %i.o = ptrtoint ptr %1 to i64
  %i.p = sub i64 %i.o, %i.h
  %i.q = trunc i64 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = tail call i32 @_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3GetENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %i.r, i32 %.sroa.08.0.i.i)
  %i.t = tail call i32 @_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer19RefineTypeKnowledgeENS2_7OpIndexENS0_4wasm9ValueTypeERKNS2_9OperationE(ptr noundef nonnull align 8 dereferenceable(561) %0, i32 %i.q, i32 %i.s, ptr noundef nonnull align 4 dereferenceable(4) %1) ; 0 uses
  br label %.loopexit

.preheader112:                                    ; preds = %bb.a, %bb.g
  %.sroa.08.0.i.in.i = phi ptr [ %i.y, %bb.g ], [ %i.i, %bb.a ]
  %.sroa.08.0.i.i37 = load i32, ptr %.sroa.08.0.i.in.i, align 4 ; 4 uses
  %i.u = zext i32 %.sroa.08.0.i.i37 to i64
  %i.v = add i64 %i.u, %i.h
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  %i.x = load i8, ptr %i.w, align 4
  switch i8 %i.x, label %_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer14ResolveAliasesENS2_7OpIndexE.exit.i [
    i8 19, label %bb.g
    i8 16, label %bb.e
    i8 22, label %bb.f
  ]

bb.e:                                             ; preds = %.preheader112
  br label %bb.g

bb.f:                                             ; preds = %.preheader112
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.preheader112
  %.sink.i.i38 = phi i64 [ 8, %bb.f ], [ 12, %bb.e ], [ 16, %.preheader112 ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink.i.i38
  br label %.preheader112

_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer14ResolveAliasesENS2_7OpIndexE.exit.i: ; preds = %.preheader112
  %i.z = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.aa = sub i64 %i.z, %i.h
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %.sroa.0.0.copyload.i8.i = load i32, ptr %i.ae, align 4
  %i.af = lshr i32 %.sroa.0.0.copyload.i8.i, 4
  %i.ag = lshr i32 %.sroa.08.0.i.i37, 4           ; 2 uses
  %.not.i = icmp samesign ule i32 %i.af, %i.ag
  %i.ah = lshr i32 %i.ab, 4
  %i.ai = icmp samesign ult i32 %i.ag, %i.ah
  %or.cond.i = select i1 %.not.i, i1 %i.ai, i1 false
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  br i1 %or.cond.i, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer14ResolveAliasesENS2_7OpIndexE.exit.i
  %i.ak = tail call i32 @_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3GetENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %i.aj, i32 %.sroa.08.0.i.i37)
  br label %_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer18GetTypeForPhiInputERKNS2_5PhiOpEi.exit

.critedge.i:                                      ; preds = %_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer14ResolveAliasesENS2_7OpIndexE.exit.i
  %i.al = tail call i32 @_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE19GetPredecessorValueENS2_7OpIndexEi(ptr noundef nonnull align 8 dereferenceable(384) %i.aj, i32 %.sroa.08.0.i.i37, i32 noundef 0)
  br label %_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer18GetTypeForPhiInputERKNS2_5PhiOpEi.exit

_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer18GetTypeForPhiInputERKNS2_5PhiOpEi.exit: ; preds = %bb.h, %.critedge.i
  %.sroa.07.0.i = phi i32 [ %i.ak, %bb.h ], [ %i.al, %.critedge.i ]
  %.fr2.i5093 = freeze i32 %.sroa.07.0.i          ; 3 uses
  %i.am = icmp eq i32 %.fr2.i5093, 2
  br i1 %i.am, label %.loopexit, label %.preheader89

.preheader89:                                     ; preds = %_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer18GetTypeForPhiInputERKNS2_5PhiOpEi.exit
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 4 uses
  %i.ao = load i16, ptr %i.an, align 2
  %.not94 = icmp ugt i16 %i.ao, 1
  br i1 %.not94, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader89
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread ] ; 3 uses
  %.fr2.i5096 = phi i32 [ %.fr2.i5093, %.lr.ph ], [ %.sroa.075.1.ph, %_ZNK2v88internal4wasm13ValueTypeBase14is_uninhabitedEv.exit.thread ] ; 10 uses
  %i.aq = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %.sroa.08.0.i.in.i39 = phi ptr [ %i.au, %bb.i ], [ %i.az, %bb.m ]
  %.sroa.08.0.i.i40 = load i32, ptr %.sroa.08.0.i.in.i39, align 4 ; 4 uses
  %i.av = zext i32 %.sroa.08.0.i.i40 to i64
  %i.aw = add i64 %i.av, %i.at
  %i.ax = inttoptr i64 %i.aw to ptr               ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 4
  switch i8 %i.ay, label %_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer14ResolveAliasesENS2_7OpIndexE.exit.i42 [
    i8 19, label %bb.m
    i8 16, label %bb.k
    i8 22, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.sink.i.i41 = phi i64 [ 8, %bb.l ], [ 12, %bb.k ], [ 16, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sink.i.i41
  br label %bb.j

_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer14ResolveAliasesENS2_7OpIndexE.exit.i42: ; preds = %bb.j
  %i.ba = sub i64 %i.z, %i.at
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = load ptr, ptr %i.ac, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 44
  %.sroa.0.0.copyload.i8.i43 = load i32, ptr %i.bd, align 4
  %i.be = lshr i32 %.sroa.0.0.copyload.i8.i43, 4
  %i.bf = lshr i32 %.sroa.08.0.i.i40, 4           ; 2 uses
  %.not.i44 = icmp samesign ule i32 %i.be, %i.bf
  %i.bg = lshr i32 %i.bb, 4
  %i.bh = icmp samesign ult i32 %i.bf, %i.bg
  %or.cond.i45 = select i1 %.not.i44, i1 %i.bh, i1 false
  br i1 %or.cond.i45, label %bb.n, label %.critedge.i46

bb.n:                                             ; preds = %_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer14ResolveAliasesENS2_7OpIndexE.exit.i42
  %i.bi = tail call i32 @_ZNK2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE3GetENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(384) %i.aj, i32 %.sroa.08.0.i.i40)
  br label %_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer18GetTypeForPhiInputERKNS2_5PhiOpEi.exit48

.critedge.i46:                                    ; preds = %_ZNK2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer14ResolveAliasesENS2_7OpIndexE.exit.i42
  %i.bj = trunc nuw nsw i64 %indvars.iv to i32
  %i.bk = tail call i32 @_ZN2v88internal8compiler10turboshaft26SparseOpIndexSnapshotTableINS0_4wasm9ValueTypeENS2_9NoKeyDataEE19GetPredecessorValueENS2_7OpIndexEi(ptr noundef nonnull align 8 dereferenceable(384) %i.aj, i32 %.sroa.08.0.i.i40, i32 noundef %i.bj)
  br label %_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer18GetTypeForPhiInputERKNS2_5PhiOpEi.exit48

_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer18GetTypeForPhiInputERKNS2_5PhiOpEi.exit48: ; preds = %bb.n, %.critedge.i46
  %.sroa.07.0.i47 = phi i32 [ %i.bi, %bb.n ], [ %i.bk, %.critedge.i46 ]
  %.fr2.i = freeze i32 %.sroa.07.0.i47            ; 11 uses
  %i.bl = icmp eq i32 %.fr2.i, 2
  br i1 %i.bl, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal8compiler10turboshaft18WasmGCTypeAnalyzer18GetTypeForPhiInputERKNS2_5PhiOpEi.exit48
end_hunk_0
