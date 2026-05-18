inline.NumInlined: 5606
inline.NumDeleted: 3138
begin_hunk_0_@_ZN2v88internal4wasm8WasmCode17DecrementRefCountENS_4base6VectorIKPS2_EE:bb.a
bb.w:                                             ; preds = %bb.v
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.ca) #32
  br label %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EED2Ev.exit

_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EED2Ev.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.cb = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_St6vectorIPNS2_8WasmCodeESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN2v88internal4wasm12NativeModuleESt6vectorIPNS5_8WasmCodeESaISB_EEELb0EEEEE18_M_deallocate_nodeEPSF_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.cc, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN2v88internal4wasm12NativeModuleESt6vectorIPNS5_8WasmCodeESaISB_EEELb0EEEEE18_M_deallocate_nodeEPSF_.exit.i.i.i.i ], [ %i.cb, %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EED2Ev.exit ] ; 4 uses
  %i.cc = load ptr, ptr %.06.i.i.i.i, align 8     ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN2v88internal4wasm12NativeModuleESt6vectorIPNS5_8WasmCodeESaISB_EEELb0EEEEE18_M_deallocate_nodeEPSF_.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.ce to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.cj) #32
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN2v88internal4wasm12NativeModuleESt6vectorIPNS5_8WasmCodeESaISB_EEELb0EEEEE18_M_deallocate_nodeEPSF_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN2v88internal4wasm12NativeModuleESt6vectorIPNS5_8WasmCodeESaISB_EEELb0EEEEE18_M_deallocate_nodeEPSF_.exit.i.i.i.i: ; preds = %bb.x, %.lr.ph.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 40) #32
  %.not.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_St6vectorIPNS2_8WasmCodeESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !38

_ZNSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_St6vectorIPNS2_8WasmCodeESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN2v88internal4wasm12NativeModuleESt6vectorIPNS5_8WasmCodeESaISB_EEELb0EEEEE18_M_deallocate_nodeEPSF_.exit.i.i.i.i, %_ZNSt6vectorIPN2v88internal4wasm8WasmCodeESaIS4_EED2Ev.exit
  %i.ck = load ptr, ptr %2, align 8
  %i.cl = load i64, ptr %i.c, align 8
  %i.cm = shl i64 %i.cl, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ck, i8 0, i64 %i.cm, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.cn = load ptr, ptr %2, align 8               ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.b
  br i1 %i.co, label %_ZNSt13unordered_mapIPN2v88internal4wasm12NativeModuleESt6vectorIPNS2_8WasmCodeESaIS7_EESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S9_EEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_St6vectorIPNS2_8WasmCodeESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.cp = load i64, ptr %i.c, align 8
  %i.cq = shl i64 %i.cp, 3
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #32
  br label %_ZNSt13unordered_mapIPN2v88internal4wasm12NativeModuleESt6vectorIPNS2_8WasmCodeESaIS7_EESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S9_EEED2Ev.exit

_ZNSt13unordered_mapIPN2v88internal4wasm12NativeModuleESt6vectorIPNS2_8WasmCodeESaIS7_EESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S9_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIPN2v88internal4wasm12NativeModuleESt4pairIKS4_St6vectorIPNS2_8WasmCodeESaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS4_ESt4hashIS4_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void
}

declare void @_ZN2v88internal4wasm10WasmEngine12FreeDeadCodeERKSt13unordered_mapIPNS1_12NativeModuleESt6vectorIPNS1_8WasmCodeESaIS8_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEERSA_(ptr noundef nonnull align 8 dereferenceable(8488), ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define hidden i64 @_ZN2v88internal4wasm8WasmCode23GetSourcePositionBeforeEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::SourcePositionTableIterator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = load i32, ptr %i.g, align 4
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i32, ptr %i.k, align 8
  %i.m = sext i32 %i.l to i64
  call void @_ZN2v88internal27SourcePositionTableIteratorC1ENS_4base6VectorIKhEENS1_15IterationFilterENS1_19FunctionEntryFilterE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr %i.j, i64 %i.m, i32 noundef 0, i32 noundef 0) #31
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.p = load i32, ptr %i.n, align 8
  %i.q = icmp ne i32 %i.p, -1
  %i.r = load i32, ptr %i.o, align 8
  %i.s = icmp slt i32 %i.r, %1
  %or.cond4 = select i1 %i.q, i1 %i.s, i1 false
  br i1 %or.cond4, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.b

.critedge:                                        ; preds = %bb.b, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.u, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret i64 %.sroa.0.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.u = load i64, ptr %i.t, align 8
  call void @_ZN2v88internal27SourcePositionTableIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #31
  %i.v = load i32, ptr %i.n, align 8
  %i.w = icmp ne i32 %i.v, -1
  %i.x = load i32, ptr %i.o, align 8
  %i.y = icmp slt i32 %i.x, %1
  %or.cond = select i1 %i.w, i1 %i.y, i1 false
  br i1 %or.cond, label %bb.b, label %.critedge, !llvm.loop !39
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 -1, 1073741823) i32 @_ZN2v88internal4wasm8WasmCode21GetSourceOffsetBeforeEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::SourcePositionTableIterator", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = load i32, ptr %i.g, align 4
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i32, ptr %i.k, align 8
  %i.m = sext i32 %i.l to i64
  call void @_ZN2v88internal27SourcePositionTableIteratorC1ENS_4base6VectorIKhEENS1_15IterationFilterENS1_19FunctionEntryFilterE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr %i.j, i64 %i.m, i32 noundef 0, i32 noundef 0) #31
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.p = load i32, ptr %i.n, align 8
  %i.q = icmp ne i32 %i.p, -1
  %i.r = load i32, ptr %i.o, align 8
  %i.s = icmp slt i32 %i.r, %1
  %or.cond4.i = select i1 %i.q, i1 %i.s, i1 false
  br i1 %or.cond4.i, label %.lr.ph.i, label %_ZN2v88internal4wasm8WasmCode23GetSourcePositionBeforeEi.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %i.u = load i64, ptr %i.t, align 8
  call void @_ZN2v88internal27SourcePositionTableIterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #31
  %i.v = load i32, ptr %i.n, align 8
  %i.w = icmp ne i32 %i.v, -1
  %i.x = load i32, ptr %i.o, align 8
  %i.y = icmp slt i32 %i.x, %1
  %or.cond.i = select i1 %i.w, i1 %i.y, i1 false
  br i1 %or.cond.i, label %bb.b, label %_ZN2v88internal4wasm8WasmCode23GetSourcePositionBeforeEi.exit.loopexit, !llvm.loop !39

_ZN2v88internal4wasm8WasmCode23GetSourcePositionBeforeEi.exit.loopexit: ; preds = %bb.b
  %i.z = trunc i64 %i.u to i32
  %i.aa = lshr i32 %i.z, 1
  %i.ab = and i32 %i.aa, 1073741823
  %i.ac = add nsw i32 %i.ab, -1
  br label %_ZN2v88internal4wasm8WasmCode23GetSourcePositionBeforeEi.exit

_ZN2v88internal4wasm8WasmCode23GetSourcePositionBeforeEi.exit: ; preds = %_ZN2v88internal4wasm8WasmCode23GetSourcePositionBeforeEi.exit.loopexit, %bb.a
  %.sroa.0.0.lcssa.i = phi i32 [ -1, %bb.a ], [ %i.ac, %_ZN2v88internal4wasm8WasmCode23GetSourcePositionBeforeEi.exit.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret i32 %.sroa.0.0.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZNK2v88internal4wasm8WasmCode19GetInliningPositionEi(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::tuple.1001") align 8 captures(none) initializes((0, 9), (12, 16)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1, i32 noundef %2) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.d = load i32, ptr %i.c, align 4
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.h = load i32, ptr %i.g, align 4
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load i32, ptr %i.k, align 8
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.m
  %i.o = sext i32 %2 to i64
  %i.p = mul nsw i64 %i.o, 13
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = load i32, ptr %i.q, align 1
  store i32 %i.t, ptr %i.s, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = load i8, ptr %i.u, align 1
  store i8 %i.v, ptr %i.r, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 5
  %i.x = load i64, ptr %i.w, align 1
  store i64 %i.x, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i64 -2147483536, 2147483760) i64 @_ZNK2v88internal4wasm8WasmCode32EstimateCurrentMemoryConsumptionEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %1 = load <5 x i32>, ptr %i.a, align 4
  %i.b = tail call i32 @llvm.vector.reduce.add.v5i32(<5 x i32> %1)
  %i.c = sext i32 %i.b to i64
  %i.d = add nsw i64 %i.c, 112
  ret i64 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm17WasmCodeAllocatorC2ESt10shared_ptrINS0_8CountersEE(ptr noundef nonnull align 8 dereferenceable(160) initializes((8, 12), (16, 24)) %0, ptr noundef captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.f, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, i8 0, i64 56, i1 false)
  %i.m = load ptr, ptr %1, align 8
  store ptr %i.m, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr null, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  store ptr null, ptr %i.o, align 8
  store ptr %i.p, ptr %i.n, align 8
  store ptr null, ptr %1, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load ptr, ptr %i.k, align 8              ; 4 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 24
  %i.x = icmp ult i64 %i.w, 4
  br i1 %i.x, label %_ZNSt12_Vector_baseIN2v88internal13VirtualMemoryESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN2v88internal13VirtualMemoryESaIS2_EE7reserveEm.exit

_ZNSt12_Vector_baseIN2v88internal13VirtualMemoryESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.u
  %i.ac = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #33 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.s, %i.z
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN2v88internal13VirtualMemoryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN2v88internal13VirtualMemoryESaIS2_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i ], [ %i.ac, %_ZNSt12_Vector_baseIN2v88internal13VirtualMemoryESaIS2_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %i.s, %_ZNSt12_Vector_baseIN2v88internal13VirtualMemoryESaIS2_EE11_M_allocateEm.exit.i ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %i.ae = load ptr, ptr %.0911.i.i.i.i, align 8, !alias.scope !43, !noalias !40
  store ptr %i.ae, ptr %.012.i.i.i.i, align 8, !alias.scope !40, !noalias !43
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false), !alias.scope !45
  tail call void @_ZN2v88internal13VirtualMemory5ResetEv(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i) #31, !noalias !40
  tail call void @_ZN2v88internal13VirtualMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.0911.i.i.i.i) #31, !noalias !40
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.ag, %i.z
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN2v88internal13VirtualMemoryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !46

_ZNSt6vectorIN2v88internal13VirtualMemoryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i = load ptr, ptr %i.k, align 8
  br label %_ZNSt6vectorIN2v88internal13VirtualMemoryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

_ZNSt6vectorIN2v88internal13VirtualMemoryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %_ZNSt6vectorIN2v88internal13VirtualMemoryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit.i, %_ZNSt12_Vector_baseIN2v88internal13VirtualMemoryESaIS2_EE11_M_allocateEm.exit.i
  %i.ai = phi ptr [ %.pre.i, %_ZNSt6vectorIN2v88internal13VirtualMemoryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.loopexit.i ], [ %i.s, %_ZNSt12_Vector_baseIN2v88internal13VirtualMemoryESaIS2_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.not.i8.i = icmp eq ptr %i.ai, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN2v88internal13VirtualMemoryESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN2v88internal13VirtualMemoryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.aj = load ptr, ptr %i.q, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ai to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.am) #32
  br label %_ZNSt12_Vector_baseIN2v88internal13VirtualMemoryESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN2v88internal13VirtualMemoryESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.b, %_ZNSt6vectorIN2v88internal13VirtualMemoryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.ac, ptr %i.k, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store ptr %i.an, ptr %i.y, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  store ptr %i.ao, ptr %i.q, align 8
  br label %_ZNSt6vectorIN2v88internal13VirtualMemoryESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN2v88internal13VirtualMemoryESaIS2_EE7reserveEm.exit: ; preds = %bb.a, %_ZNSt12_Vector_baseIN2v88internal13VirtualMemoryESaIS2_EE13_M_deallocateEPS2_m.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm17WasmCodeAllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = tail call noundef ptr @_ZN2v88internal4wasm18GetWasmCodeManagerEv() #31 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load atomic i64, ptr %i.g acquire, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #31
  %.not16.i = icmp eq ptr %i.f, %i.d
  br i1 %.not16.i, label %_ZN2v88internal4wasm15WasmCodeManager16FreeNativeModuleENS_4base6VectorINS0_13VirtualMemoryEEEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.017.i = phi ptr [ %i.d, %.lr.ph.i ], [ %i.q, %bb.b ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.k = getelementptr inbounds nuw i8, ptr %.017.i, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  store i64 %i.l, ptr %i.a, align 8
  %i.m = call noundef i64 @_ZNSt8_Rb_treeImSt4pairIKmS0_ImPN2v88internal4wasm12NativeModuleEEESt10_Select1stIS8_ESt4lessImESaIS8_EE5eraseERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.n = load i64, ptr %i.k, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.017.i, i64 16
  %i.p = load i64, ptr %i.o, align 8
  call void @_ZN2v88internal15ThreadIsolation17UnregisterJitPageEmm(i64 noundef %i.n, i64 noundef %i.p) #31
  call void @_ZN2v88internal13VirtualMemory4FreeEv(ptr noundef nonnull align 8 dereferenceable(24) %.017.i) #31
  %i.q = getelementptr inbounds nuw i8, ptr %.017.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.f
  br i1 %.not.i, label %_ZN2v88internal4wasm15WasmCodeManager16FreeNativeModuleENS_4base6VectorINS0_13VirtualMemoryEEEm.exit, label %bb.b

_ZN2v88internal4wasm15WasmCodeManager16FreeNativeModuleENS_4base6VectorINS0_13VirtualMemoryEEEm.exit: ; preds = %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = atomicrmw sub ptr %i.r, i64 %i.h seq_cst, align 8 ; 0 uses
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #31
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.u = load ptr, ptr %i.t, align 8              ; 8 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2v88internal8CountersELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal4wasm15WasmCodeManager16FreeNativeModuleENS_4base6VectorINS0_13VirtualMemoryEEEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.v, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4
  %i.aa = load ptr, ptr %i.u, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #31, !inline_history !47
  %i.ad = load ptr, ptr %i.u, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #31, !inline_history !47
  br label %_ZNSt12__shared_ptrIN2v88internal8CountersELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.y, %bb.f ], [ %i.ai, %bb.g ]
  %i.aj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aj, label %bb.h, label %_ZNSt12__shared_ptrIN2v88internal8CountersELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !13

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #31
  br label %_ZNSt12__shared_ptrIN2v88internal8CountersELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v88internal8CountersELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN2v88internal4wasm15WasmCodeManager16FreeNativeModuleENS_4base6VectorINS0_13VirtualMemoryEEEm.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.ak = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.al = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN2v88internal13VirtualMemoryEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12__shared_ptrIN2v88internal8CountersELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.lr.ph.i.i.i
end_hunk_0
begin_hunk_1_@_ZNK2v88internal4wasm12NativeModule14SampleCodeSizeEPNS0_8CountersE:bb.a
_ZN2v88internal8Counters24wasm_module_code_size_kbEv.exit: ; preds = %_ZN2v88internal8Counters24wasm_module_code_size_mbEv.exit, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i15
  tail call void @_ZN2v88internal9Histogram9AddSampleEi(ptr noundef nonnull align 8 dereferenceable(48) %i.o, i32 noundef %i.n) #31
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1408 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1432 ; 4 uses
  %i.y = load atomic ptr, ptr %i.x acquire, align 8
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.f, label %_ZN2v88internal8Counters28wasm_module_metadata_size_kbEv.exit

bb.f:                                             ; preds = %_ZN2v88internal8Counters24wasm_module_code_size_kbEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1448 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #31
  %i.ab = load atomic ptr, ptr %i.x monotonic, align 8
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.g, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i16

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call noundef ptr @_ZNK2v88internal9Histogram15CreateHistogramEv(ptr noundef nonnull align 8 dereferenceable(48) %i.w) #31
  store atomic ptr %i.ad, ptr %i.x release, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i16

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i16: ; preds = %bb.g, %bb.f
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #31
  br label %_ZN2v88internal8Counters28wasm_module_metadata_size_kbEv.exit

_ZN2v88internal8Counters28wasm_module_metadata_size_kbEv.exit: ; preds = %_ZN2v88internal8Counters24wasm_module_code_size_kbEv.exit, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i16
  %i.ae = load atomic ptr, ptr %i.x seq_cst, align 8
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal8Counters28wasm_module_metadata_size_kbEv.exit
  %i.af = tail call noundef i64 @_ZNK2v88internal4wasm12NativeModule32EstimateCurrentMemoryConsumptionEv(ptr noundef nonnull align 8 dereferenceable(552) %0)
  %i.ag = lshr i64 %i.af, 10
  %i.ah = trunc i64 %i.ag to i32
  tail call void @_ZN2v88internal9Histogram9AddSampleEi(ptr noundef nonnull align 8 dereferenceable(48) %i.w, i32 noundef %i.ah) #31
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN2v88internal8Counters28wasm_module_metadata_size_kbEv.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8 ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, 2097151
  br i1 %i.ak, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 704
  %i.ao = load i8, ptr %i.an, align 8
  %i.ap = icmp eq i8 %i.ao, 0
  br i1 %i.ap, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8
  %i.as = mul i64 %i.ar, 100
  %i.at = udiv i64 %i.as, %i.aj
  %i.au = trunc i64 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 1504 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1528 ; 3 uses
  %i.ax = load atomic ptr, ptr %i.aw acquire, align 8
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.l, label %_ZN2v88internal8Counters35wasm_module_freed_code_size_percentEv.exit

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 1544 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.az) #31
  %i.ba = load atomic ptr, ptr %i.aw monotonic, align 8
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.m, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i17

bb.m:                                             ; preds = %bb.l
  %i.bc = tail call noundef ptr @_ZNK2v88internal9Histogram15CreateHistogramEv(ptr noundef nonnull align 8 dereferenceable(48) %i.av) #31
  store atomic ptr %i.bc, ptr %i.aw release, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i17

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i17: ; preds = %bb.m, %bb.l
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.az) #31
  br label %_ZN2v88internal8Counters35wasm_module_freed_code_size_percentEv.exit

_ZN2v88internal8Counters35wasm_module_freed_code_size_percentEv.exit: ; preds = %bb.k, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i17
  tail call void @_ZN2v88internal9Histogram9AddSampleEi(ptr noundef nonnull align 8 dereferenceable(48) %i.av, i32 noundef %i.au) #31
  br label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal8Counters35wasm_module_freed_code_size_percentEv.exit, %bb.j, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZNK2v88internal4wasm12NativeModule32EstimateCurrentMemoryConsumptionEv(ptr noundef nonnull align 8 dereferenceable(552) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.std::_Sp_locker", align 1  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef i64 @_ZNK2v88internal4wasm10WasmModule32EstimateCurrentMemoryConsumptionEv(ptr noundef nonnull align 8 dereferenceable(832) %i.b) #31
  %i.d = add i64 %i.c, 552
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31, !noalias !203
  call void @_ZNSt10_Sp_lockerC1EPKv(ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull %i.e) #31, !noalias !203
  %i.f = load ptr, ptr %i.e, align 8, !noalias !203 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.h = load ptr, ptr %i.g, align 8, !noalias !203 ; 9 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null        ; 2 uses
  br i1 %.not.i.i.i.i.i, label %_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !noalias !203
  %.not.i.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.i, align 4, !noalias !203
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !noalias !203
  br label %_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4, !noalias !203 ; 0 uses
  br label %_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_.exit

_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_.exit: ; preds = %bb.a, %bb.c, %bb.d
  call void @_ZNSt10_Sp_lockerD1Ev(ptr noundef nonnull align 1 dead_on_return(2) dereferenceable(2) %1) #31, !noalias !203
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31, !noalias !203
  %.not43 = icmp eq ptr %i.f, null
  br i1 %.not43, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.o = load i64, ptr %i.n, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_.exit, %bb.e
  %i.p = phi i64 [ %i.o, %bb.e ], [ 0, %_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_.exit ] ; 2 uses
  %i.q = add i64 %i.d, %i.p                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not44 = icmp eq ptr %i.s, null
  br i1 %.not44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = call noundef i64 @_ZNK2v88internal4wasm19WasmModuleSourceMap32EstimateCurrentMemoryConsumptionEv(ptr noundef nonnull align 8 dereferenceable(97) %i.s) #31
  %i.u = add i64 %i.t, %i.q
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.g, %bb.f
  %.0 = phi i64 [ %i.u, %bb.g ], [ %i.q, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef i64 @_ZNK2v88internal4wasm16CompilationState32EstimateCurrentMemoryConsumptionEv(ptr noundef nonnull align 1 dereferenceable(1) %i.w) #31
  %i.y = add i64 %i.x, %.0
  %i.z = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = zext i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %i.ae = add i64 %i.y, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  %i.aj = load i64, ptr %i.ah, align 8
  %i.ak = select i1 %i.ai, i64 15, i64 %i.aj      ; 2 uses
  %i.al = icmp ugt i64 %i.ak, 32
  %i.am = select i1 %i.al, i64 %i.ak, i64 0
  %spec.select = add i64 %i.ae, %i.am
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 84
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = zext i32 %i.ao to i64
  %i.aq = shl nuw nsw i64 %i.ap, 4
  %i.ar = add i64 %spec.select, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  call void @_ZN2v84base14RecursiveMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #31
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.au = load i64, ptr %i.at, align 8
  %i.av = shl i64 %i.au, 5
  %i.aw = add i64 %i.ar, %i.av                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.2.lcssa = phi i64 [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit ], [ %i.bs, %.lr.ph ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = load ptr, ptr %i.bb, align 8            ; 3 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = add i64 %.2.lcssa, %i.bf
  %i.bi = sub i64 %i.bh, %i.bg                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = icmp eq ptr %i.be, %i.bk
  br i1 %i.bl, label %._crit_edge52, label %.lr.ph51

.lr.ph:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit, %.lr.ph
  %.247 = phi i64 [ %i.bs, %.lr.ph ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit ]
  %.sroa.037.046 = phi ptr [ %i.bt, %.lr.ph ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.037.046, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 36
  %2 = load <5 x i32>, ptr %i.bo, align 4
  %i.bp = call i32 @llvm.vector.reduce.add.v5i32(<5 x i32> %2)
  %i.bq = sext i32 %i.bp to i64
  %i.br = add i64 %.247, 112
  %i.bs = add i64 %i.br, %i.bq                    ; 2 uses
  %i.bt = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.037.046) #30 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.az
  br i1 %i.bu, label %._crit_edge, label %.lr.ph

._crit_edge52:                                    ; preds = %.lr.ph51, %._crit_edge
  %.3.lcssa = phi i64 [ %i.bi, %._crit_edge ], [ %i.cs, %.lr.ph51 ]
  %i.bv = load ptr, ptr %i.a, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 96
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = zext i32 %i.bx to i64
  %i.bz = shl nuw nsw i64 %i.by, 3
  %i.ca = add i64 %i.bz, %.3.lcssa
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = load ptr, ptr %i.cb, align 8
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = add i64 %i.ca, %i.ch                    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %.not45 = icmp eq ptr %i.cm, null
  br i1 %.not45, label %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit, label %bb.h

.lr.ph51:                                         ; preds = %._crit_edge, %.lr.ph51
  %.349 = phi i64 [ %i.cs, %.lr.ph51 ], [ %i.bi, %._crit_edge ]
  %.sroa.033.048 = phi ptr [ %i.ct, %.lr.ph51 ], [ %i.be, %._crit_edge ] ; 2 uses
  %i.cn = load ptr, ptr %.sroa.033.048, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 36
  %3 = load <5 x i32>, ptr %i.co, align 4
  %i.cp = call i32 @llvm.vector.reduce.add.v5i32(<5 x i32> %3)
  %i.cq = sext i32 %i.cp to i64
  %i.cr = add i64 %.349, 112
  %i.cs = add i64 %i.cr, %i.cq                    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.033.048, i64 8 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.bk
  br i1 %i.cu, label %._crit_edge52, label %.lr.ph51

bb.h:                                             ; preds = %._crit_edge52
  %i.cv = call noundef i64 @_ZNK2v88internal4wasm13NamesProvider32EstimateCurrentMemoryConsumptionEv(ptr noundef nonnull align 8 dereferenceable(288) %i.cm) #31
  %i.cw = add i64 %i.cv, %i.ci
  br label %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit: ; preds = %bb.h, %._crit_edge52
  %.4 = phi i64 [ %i.cw, %bb.h ], [ %i.ci, %._crit_edge52 ] ; 2 uses
  call void @_ZN2v84base14RecursiveMutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #31
  %.not = icmp eq ptr %i.ck, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit
  %i.cx = call noundef i64 @_ZNK2v88internal4wasm9DebugInfo32EstimateCurrentMemoryConsumptionEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ck) #31
  %i.cy = add i64 %i.cx, %.4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit
  %.5 = phi i64 [ %i.cy, %bb.i ], [ %.4, %_ZN2v84base9LockGuardINS0_14RecursiveMutexEED2Ev.exit ] ; 2 uses
  %i.cz = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 712), align 8, !range !25, !noundef !26
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.80, i64 noundef %i.p) #31
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.81, i64 noundef %.5) #31
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN2v84base11OwnedVectorIKhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.db = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.dc = load atomic i64, ptr %i.db acquire, align 8 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 4294967297
  %i.de = trunc i64 %i.dc to i32                  ; 2 uses
  br i1 %i.dd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.db, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.df, align 4
  %i.dg = load ptr, ptr %i.h, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #31, !inline_history !19
  %i.dj = load ptr, ptr %i.h, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #31, !inline_history !19
  br label %_ZNSt12__shared_ptrIN2v84base11OwnedVectorIKhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.dm = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dn = add nsw i32 %i.de, -1
  store i32 %i.dn, ptr %i.db, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.do = atomicrmw volatile add ptr %i.db, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i = phi i32 [ %i.de, %bb.p ], [ %i.do, %bb.q ]
  %i.dp = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.dp, label %bb.r, label %_ZNSt12__shared_ptrIN2v84base11OwnedVectorIKhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !13

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #31
  br label %_ZNSt12__shared_ptrIN2v84base11OwnedVectorIKhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v84base11OwnedVectorIKhEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.l, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.r
  ret i64 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm12NativeModule15AddCompiledCodeERNS1_21WasmCompilationResultE(ptr dead_on_unwind noalias writable writeonly sret(%"struct.v8::internal::wasm::UnpublishedWasmCode") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(552) %1, ptr noundef nonnull align 8 dereferenceable(200) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::vector.1276", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN2v88internal4wasm12NativeModule15AddCompiledCodeENS_4base6VectorINS1_21WasmCompilationResultEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.1276") align 8 %3, ptr noundef nonnull align 8 dereferenceable(552) %1, ptr nonnull %2, i64 1)
  %i.a = load ptr, ptr %3, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load <2 x i64>, ptr %i.a, align 8
  store ptr null, ptr %i.a, align 8
  store <2 x i64> %i.c, ptr %0, align 8
  store ptr null, ptr %i.b, align 8
  %i.d = load ptr, ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN2v88internal4wasm19UnpublishedWasmCodeEEEvT_S7_(ptr noundef %i.d, ptr noundef %i.f)
  %i.g = load ptr, ptr %3, align 8                ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #32
  br label %_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EED2Ev.exit

_ZNSt6vectorIN2v88internal4wasm19UnpublishedWasmCodeESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm12NativeModule15AddCompiledCodeENS_4base6VectorINS1_21WasmCompilationResultEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.1276") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(552) %1, ptr %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca [2 x %"class.std::unique_ptr.1474"], align 16 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.v8::internal::tracing::ScopedTracer", align 8 ; 11 uses
  %6 = alloca %"struct.std::array.1293", align 1  ; 3 uses
  %7 = alloca %"class.std::vector.1276", align 8  ; 8 uses
  %8 = alloca %"struct.v8::internal::wasm::NativeModule::JumpTablesRef", align 8 ; 5 uses
  %9 = alloca %"class.std::vector.1296", align 8  ; 11 uses
  %10 = alloca %"class.std::unique_ptr.1127", align 8 ; 6 uses
  %11 = alloca %"class.v8::base::Vector", align 8 ; 3 uses
  %12 = alloca %"class.v8::base::Vector", align 8 ; 3 uses
  %13 = alloca %"class.v8::base::Vector", align 8 ; 3 uses
  %14 = alloca %"class.v8::base::Vector", align 8 ; 3 uses
  %15 = alloca %"class.v8::base::Vector.10", align 8 ; 3 uses
  %i.d = load atomic volatile i64, ptr @_ZZN2v88internal4wasm12NativeModule15AddCompiledCodeENS_4base6VectorINS1_21WasmCompilationResultEEEE29trace_event_unique_atomic2656 acquire, align 8 ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #31 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.50) #31 ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64
  store atomic volatile i64 %i.k, ptr @_ZZN2v88internal4wasm12NativeModule15AddCompiledCodeENS_4base6VectorINS1_21WasmCompilationResultEEEE29trace_event_unique_atomic2656 release, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.e, %bb.a ], [ %i.j, %bb.b ]  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr null, ptr %5, align 8
  %i.l = load atomic volatile i8, ptr %.0 monotonic, align 1
  %i.m = and i8 %i.l, 5
  %.not75 = icmp eq i8 %i.m, 0
  br i1 %.not75, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.75, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #31
  store i8 2, ptr %i.b, align 1
  store i64 %3, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.n = tail call noundef ptr @_ZN2v88internal7tracing16TraceEventHelper20GetTracingControllerEv() #31 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call noundef i64 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i8 noundef signext 88, ptr noundef nonnull %.0, ptr noundef nonnull @.str.74, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %4, i32 noundef 0) #31, !inline_history !112
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i: ; preds = %bb.d
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.t) #31, !inline_history !113
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i
  %i.x = load ptr, ptr %4, align 16               ; 3 uses
  %.not.i.1 = icmp eq ptr %i.x, null
  br i1 %.not.i.1, label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1, label %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1

_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1: ; preds = %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #31, !inline_history !113
  br label %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1

_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit.1: ; preds = %_ZNKSt14default_deleteIN2v824ConvertableToTraceFormatEEclEPS1_.exit.i.1, %_ZNSt10unique_ptrIN2v824ConvertableToTraceFormatESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeImSt4pairIKmSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessImESaISA_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISA_ESI_:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.d, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.i, align 8
  br label %.loopexit

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.j = icmp eq ptr %1, %2
  br i1 %i.j, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt8_Rb_treeImSt4pairIKmSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessImESaISA_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISA_E.exit
  %.sroa.06.08 = phi ptr [ %1, %.lr.ph ], [ %i.m, %_ZNSt8_Rb_treeImSt4pairIKmSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessImESaISA_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISA_E.exit ] ; 2 uses
  %i.m = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.08) #30 ; 2 uses
  %i.n = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.08, ptr noundef nonnull align 8 dereferenceable(32) %i.k) #31 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8              ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessImESaISA_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISA_E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %_ZNK2v88internal4wasm8WasmCode18trap_handler_indexEv.exit.i.i.i.i.i.i.i.i, label %bb.f

_ZNK2v88internal4wasm8WasmCode18trap_handler_indexEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e
  tail call void @_ZN2v88internal12trap_handler18ReleaseHandlerDataEi(i32 noundef %i.r) #31
  br label %bb.f

bb.f:                                             ; preds = %_ZNK2v88internal4wasm8WasmCode18trap_handler_indexEv.exit.i.i.i.i.i.i.i.i, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #32
  br label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_KhEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i.i.i.i.i, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 112) #32
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessImESaISA_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISA_E.exit

_ZNSt8_Rb_treeImSt4pairIKmSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessImESaISA_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISA_E.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 48) #32
  %i.v = load i64, ptr %i.l, align 8
  %i.w = add i64 %i.v, -1
  store i64 %i.w, ptr %i.l, align 8
  %i.x = icmp eq ptr %i.m, %2
  br i1 %i.x, label %.loopexit, label %bb.d, !llvm.loop !329

.loopexit:                                        ; preds = %_ZNSt8_Rb_treeImSt4pairIKmSt10unique_ptrIN2v88internal4wasm8WasmCodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessImESaISA_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISA_E.exit, %.critedge, %bb.c
  ret void
}

declare void @_ZN2v88internal4wasm9DebugInfoC1EPNS1_12NativeModuleE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #6

declare void @_ZN2v88internal4wasm13NamesProviderC1EPKNS1_10WasmModuleENS_4base6VectorIKhEE(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef, ptr, i64) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNSt8_Rb_treeImSt4pairIKmS0_ImPN2v88internal4wasm12NativeModuleEEESt10_Select1stIS8_ESt4lessImESaIS8_EE5eraseERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %.041.i = load ptr, ptr %i.a, align 8           ; 3 uses
  %.not42.i = icmp eq ptr %.041.i, null
  br i1 %.not42.i, label %_ZNSt8_Rb_treeImSt4pairIKmS0_ImPN2v88internal4wasm12NativeModuleEEESt10_Select1stIS8_ESt4lessImESaIS8_EE11equal_rangeERS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8                ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %.044.i = phi ptr [ %.041.i, %.lr.ph.i ], [ %.0.i, %bb.e ] ; 7 uses
  %.02243.i = phi ptr [ %i.b, %.lr.ph.i ], [ %.123.i, %bb.e ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.044.i, i64 32
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp ult i64 %i.e, %i.c
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ult i64 %i.c, %i.e
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.044.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.044.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not10.i.i = icmp eq ptr %i.i, null
  br i1 %.not10.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmS0_ImPN2v88internal4wasm12NativeModuleEEESt10_Select1stIS8_ESt4lessImESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.012.i.i = phi ptr [ %.1.i.i, %.lr.ph.i.i ], [ %i.i, %bb.d ] ; 3 uses
  %.0811.i.i = phi ptr [ %.19.i.i, %.lr.ph.i.i ], [ %.044.i, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 32
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp ult i64 %i.m, %i.c                  ; 2 uses
  %.19.i.i = select i1 %i.n, ptr %.0811.i.i, ptr %.012.i.i ; 2 uses
  %.1.in.v.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 %.1.in.v.i.i
  %.1.i.i = load ptr, ptr %.1.in.i.i, align 8     ; 2 uses
  %.not.i.i = icmp eq ptr %.1.i.i, null
  br i1 %.not.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmS0_ImPN2v88internal4wasm12NativeModuleEEESt10_Select1stIS8_ESt4lessImESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i, label %.lr.ph.i.i, !llvm.loop !198

_ZNSt8_Rb_treeImSt4pairIKmS0_ImPN2v88internal4wasm12NativeModuleEEESt10_Select1stIS8_ESt4lessImESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i: ; preds = %.lr.ph.i.i, %bb.d
  %.08.lcssa.i.i = phi ptr [ %.044.i, %bb.d ], [ %.19.i.i, %.lr.ph.i.i ] ; 2 uses
  %.not10.i24.i = icmp eq ptr %i.k, null
  br i1 %.not10.i24.i, label %_ZNSt8_Rb_treeImSt4pairIKmS0_ImPN2v88internal4wasm12NativeModuleEEESt10_Select1stIS8_ESt4lessImESaIS8_EE11equal_rangeERS1_.exit, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %_ZNSt8_Rb_treeImSt4pairIKmS0_ImPN2v88internal4wasm12NativeModuleEEESt10_Select1stIS8_ESt4lessImESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i, %.lr.ph.i25.i
  %.012.i26.i = phi ptr [ %.1.i31.i, %.lr.ph.i25.i ], [ %i.k, %_ZNSt8_Rb_treeImSt4pairIKmS0_ImPN2v88internal4wasm12NativeModuleEEESt10_Select1stIS8_ESt4lessImESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i ] ; 3 uses
  %.0811.i27.i = phi ptr [ %.19.i28.i, %.lr.ph.i25.i ], [ %.02243.i, %_ZNSt8_Rb_treeImSt4pairIKmS0_ImPN2v88internal4wasm12NativeModuleEEESt10_Select1stIS8_ESt4lessImESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i26.i, i64 32
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp ult i64 %i.c, %i.p                  ; 2 uses
  %.19.i28.i = select i1 %i.q, ptr %.012.i26.i, ptr %.0811.i27.i ; 2 uses
  %.1.in.v.i29.i = select i1 %i.q, i64 16, i64 24
  %.1.in.i30.i = getelementptr inbounds nuw i8, ptr %.012.i26.i, i64 %.1.in.v.i29.i
  %.1.i31.i = load ptr, ptr %.1.in.i30.i, align 8 ; 2 uses
  %.not.i32.i = icmp eq ptr %.1.i31.i, null
  br i1 %.not.i32.i, label %_ZNSt8_Rb_treeImSt4pairIKmS0_ImPN2v88internal4wasm12NativeModuleEEESt10_Select1stIS8_ESt4lessImESaIS8_EE11equal_rangeERS1_.exit, label %.lr.ph.i25.i, !llvm.loop !330

bb.e:                                             ; preds = %bb.c, %bb.b
  %.sink.i = phi i64 [ 24, %bb.b ], [ 16, %bb.c ]
  %.123.i = phi ptr [ %.02243.i, %bb.b ], [ %.044.i, %bb.c ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.044.i, i64 %.sink.i
  %.0.i = load ptr, ptr %i.r, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %_ZNSt8_Rb_treeImSt4pairIKmS0_ImPN2v88internal4wasm12NativeModuleEEESt10_Select1stIS8_ESt4lessImESaIS8_EE11equal_rangeERS1_.exit, label %bb.b, !llvm.loop !331

_ZNSt8_Rb_treeImSt4pairIKmS0_ImPN2v88internal4wasm12NativeModuleEEESt10_Select1stIS8_ESt4lessImESaIS8_EE11equal_rangeERS1_.exit: ; preds = %bb.e, %.lr.ph.i25.i, %bb.a, %_ZNSt8_Rb_treeImSt4pairIKmS0_ImPN2v88internal4wasm12NativeModuleEEESt10_Select1stIS8_ESt4lessImESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i
  %.sroa.037.0.i = phi ptr [ %.08.lcssa.i.i, %.lr.ph.i25.i ], [ %.08.lcssa.i.i, %_ZNSt8_Rb_treeImSt4pairIKmS0_ImPN2v88internal4wasm12NativeModuleEEESt10_Select1stIS8_ESt4lessImESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i ], [ %i.b, %bb.a ], [ %.123.i, %bb.e ] ; 3 uses
  %.sroa.3.0.i = phi ptr [ %.19.i28.i, %.lr.ph.i25.i ], [ %.02243.i, %_ZNSt8_Rb_treeImSt4pairIKmS0_ImPN2v88internal4wasm12NativeModuleEEESt10_Select1stIS8_ESt4lessImESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i ], [ %i.b, %bb.a ], [ %.123.i, %bb.e ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %.sroa.037.0.i, %i.v
  %i.x = icmp eq ptr %.sroa.3.0.i, %i.b
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %_ZNSt8_Rb_treeImSt4pairIKmS0_ImPN2v88internal4wasm12NativeModuleEEESt10_Select1stIS8_ESt4lessImESaIS8_EE11equal_rangeERS1_.exit
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmS0_ImPN2v88internal4wasm12NativeModuleEEESt10_Select1stIS8_ESt4lessImESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %.041.i)
  store ptr null, ptr %i.a, align 8
  store ptr %i.b, ptr %i.u, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %i.y, align 8
  store i64 0, ptr %i.s, align 8
  br label %_ZNSt8_Rb_treeImSt4pairIKmS0_ImPN2v88internal4wasm12NativeModuleEEESt10_Select1stIS8_ESt4lessImESaIS8_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS8_ESG_.exit

.critedge.i:                                      ; preds = %_ZNSt8_Rb_treeImSt4pairIKmS0_ImPN2v88internal4wasm12NativeModuleEEESt10_Select1stIS8_ESt4lessImESaIS8_EE11equal_rangeERS1_.exit
  %i.z = icmp eq ptr %.sroa.037.0.i, %.sroa.3.0.i
  br i1 %i.z, label %_ZNSt8_Rb_treeImSt4pairIKmS0_ImPN2v88internal4wasm12NativeModuleEEESt10_Select1stIS8_ESt4lessImESaIS8_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS8_ESG_.exit, label %.lr.ph.i2

.lr.ph.i2:                                        ; preds = %.critedge.i, %.lr.ph.i2
  %.sroa.06.08.i = phi ptr [ %i.aa, %.lr.ph.i2 ], [ %.sroa.037.0.i, %.critedge.i ] ; 2 uses
  %i.aa = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.06.08.i) #30 ; 2 uses
  %i.ab = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %.sroa.06.08.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 56) #32
  %i.ac = load i64, ptr %i.s, align 8
  %i.ad = add i64 %i.ac, -1                       ; 2 uses
  store i64 %i.ad, ptr %i.s, align 8
  %i.ae = icmp eq ptr %i.aa, %.sroa.3.0.i
  br i1 %i.ae, label %_ZNSt8_Rb_treeImSt4pairIKmS0_ImPN2v88internal4wasm12NativeModuleEEESt10_Select1stIS8_ESt4lessImESaIS8_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS8_ESG_.exit, label %.lr.ph.i2, !llvm.loop !332

_ZNSt8_Rb_treeImSt4pairIKmS0_ImPN2v88internal4wasm12NativeModuleEEESt10_Select1stIS8_ESt4lessImESaIS8_EE12_M_erase_auxESt23_Rb_tree_const_iteratorIS8_ESG_.exit: ; preds = %.lr.ph.i2, %bb.f, %.critedge.i
  %i.af = phi i64 [ %i.t, %.critedge.i ], [ 0, %bb.f ], [ %i.ad, %.lr.ph.i2 ]
  %i.ag = sub i64 %i.t, %i.af
  ret i64 %i.ag
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v5i32(<5 x i32>) #29

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { nounwind }
attributes #32 = { builtin nounwind }
attributes #33 = { builtin nounwind allocsize(0) }
attributes #34 = { noreturn nounwind }
attributes #35 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{!"llvm.loop.unroll.runtime.disable"}
!11 = distinct !{!11, !10, !9}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{!15, !17}
!15 = distinct !{!15, !16, !"_ZSt20atomic_load_explicitIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_St12memory_order: argument 0"}
!16 = distinct !{!16, !"_ZSt20atomic_load_explicitIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_St12memory_order"}
!17 = distinct !{!17, !18, !"_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_: argument 0"}
!18 = distinct !{!18, !"_ZSt11atomic_loadIN2v84base11OwnedVectorIKhEEESt10shared_ptrIT_EPKS7_"}
!19 = distinct !{null, null, null}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZSt11make_uniqueIN2v88internal4wasm19WasmModuleSourceMapEJRPNS0_7IsolateERNS0_5LocalINS0_6StringEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!22 = distinct !{!22, !"_ZSt11make_uniqueIN2v88internal4wasm19WasmModuleSourceMapEJRPNS0_7IsolateERNS0_5LocalINS0_6StringEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!23 = distinct !{null}
!24 = distinct !{!24, !6}
!25 = !{i8 0, i8 2}
!26 = !{}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZSt11make_uniqueIN2v88internal4wasm9DebugInfoEJPNS2_12NativeModuleEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!29 = distinct !{!29, !"_ZSt11make_uniqueIN2v88internal4wasm9DebugInfoEJPNS2_12NativeModuleEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!30 = !{ptr @_ZN2v88internal12StdoutStreamD1Ev}
!31 = distinct !{!31, !6}
!32 = distinct !{!32, !6}
!33 = distinct !{!33, !6}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZSt11make_uniqueIN2v88internal4wasm9DebugInfoEJPNS2_12NativeModuleEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!36 = distinct !{!36, !"_ZSt11make_uniqueIN2v88internal4wasm9DebugInfoEJPNS2_12NativeModuleEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!37 = distinct !{!37, !6}
!38 = distinct !{!38, !6}
!39 = distinct !{!39, !6}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZSt19__relocate_object_aIN2v88internal13VirtualMemoryES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!42 = distinct !{!42, !"_ZSt19__relocate_object_aIN2v88internal13VirtualMemoryES2_SaIS2_EEvPT_PT0_RT1_"}
!43 = !{!44}
!44 = distinct !{!44, !42, !"_ZSt19__relocate_object_aIN2v88internal13VirtualMemoryES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!45 = !{!41, !44}
!46 = distinct !{!46, !6}
!47 = distinct !{null, null, null}
!48 = distinct !{!48, !6}
!49 = distinct !{null, null, null, null}
!50 = distinct !{null, null, null, null}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZN2v88internal4wasm12_GLOBAL__N_132SplitRangeByReservationsIfNeededENS_4base13AddressRegionERKSt6vectorINS0_13VirtualMemoryESaIS6_EE: argument 0"}
!53 = distinct !{!53, !"_ZN2v88internal4wasm12_GLOBAL__N_132SplitRangeByReservationsIfNeededENS_4base13AddressRegionERKSt6vectorINS0_13VirtualMemoryESaIS6_EE"}
!54 = distinct !{null, null, null, null}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZSt9make_pairImSt4pairImPN2v88internal4wasm12NativeModuleEEES0_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_: argument 0"}
!57 = distinct !{!57, !"_ZSt9make_pairImSt4pairImPN2v88internal4wasm12NativeModuleEEES0_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS7_INS8_IT0_E4typeEE6__typeEEOS9_OSE_"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZN2v88internal12EmbeddedData8FromBlobEv: argument 0"}
!60 = distinct !{!60, !"_ZN2v88internal12EmbeddedData8FromBlobEv"}
!61 = distinct !{!61, !6}
!62 = distinct !{!62, !6}
!63 = !{!64, !66}
!64 = distinct !{!64, !65, !"_ZSt19__relocate_object_aIN2v88internal4wasm12NativeModule13CodeSpaceDataES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!65 = distinct !{!65, !"_ZSt19__relocate_object_aIN2v88internal4wasm12NativeModule13CodeSpaceDataES4_SaIS4_EEvPT_PT0_RT1_"}
!66 = distinct !{!66, !65, !"_ZSt19__relocate_object_aIN2v88internal4wasm12NativeModule13CodeSpaceDataES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!67 = distinct !{!67, !6}
!68 = !{!69, !71}
!69 = distinct !{!69, !70, !"_ZSt19__relocate_object_aIN2v88internal4wasm12NativeModule13CodeSpaceDataES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!70 = distinct !{!70, !"_ZSt19__relocate_object_aIN2v88internal4wasm12NativeModule13CodeSpaceDataES4_SaIS4_EEvPT_PT0_RT1_"}
!71 = distinct !{!71, !70, !"_ZSt19__relocate_object_aIN2v88internal4wasm12NativeModule13CodeSpaceDataES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!72 = distinct !{!72, !6}
!73 = distinct !{null, null, null, null}
!74 = distinct !{!74, !6}
!75 = distinct !{null, null, null, null}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZN2v88internal4wasm12_GLOBAL__N_132SplitRangeByReservationsIfNeededENS_4base13AddressRegionERKSt6vectorINS0_13VirtualMemoryESaIS6_EE: argument 0"}
!78 = distinct !{!78, !"_ZN2v88internal4wasm12_GLOBAL__N_132SplitRangeByReservationsIfNeededENS_4base13AddressRegionERKSt6vectorINS0_13VirtualMemoryESaIS6_EE"}
!79 = !{ptr @_ZN2v88internal4wasm15WasmCodeManager8DecommitENS_4base13AddressRegionE}
!80 = distinct !{null, null, null}
!81 = distinct !{!81, !9, !10}
!82 = distinct !{!82, !10, !9}
!83 = distinct !{null, null, null, null}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZSt11make_uniqueIA_PN2v88internal4wasm8WasmCodeEENSt8__detail9_MakeUniqIT_E7__arrayEm: argument 0"}
!86 = distinct !{!86, !"_ZSt11make_uniqueIA_PN2v88internal4wasm8WasmCodeEENSt8__detail9_MakeUniqIT_E7__arrayEm"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZSt11make_uniqueIA_N2v88internal15WasmCodePointerEENSt8__detail9_MakeUniqIT_E7__arrayEm: argument 0"}
!89 = distinct !{!89, !"_ZSt11make_uniqueIA_N2v88internal15WasmCodePointerEENSt8__detail9_MakeUniqIT_E7__arrayEm"}
!90 = distinct !{!90, !6}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZSt11make_uniqueIA_St6atomicIjEENSt8__detail9_MakeUniqIT_E7__arrayEm: argument 0"}
!93 = distinct !{!93, !"_ZSt11make_uniqueIA_St6atomicIjEENSt8__detail9_MakeUniqIT_E7__arrayEm"}
!94 = distinct !{!94, !95}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = distinct !{!96, !6}
!97 = !{!98, !100}
!98 = distinct !{!98, !99, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN2v88internal4wasm22WasmModuleCoverageDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_: argument 0"}
!99 = distinct !{!99, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN2v88internal4wasm22WasmModuleCoverageDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSB_"}
!100 = distinct !{!100, !101, !"_ZSt11make_sharedIN2v88internal4wasm22WasmModuleCoverageDataEJRKjEESt10shared_ptrIT_EDpOT0_: argument 0"}
!101 = distinct !{!101, !"_ZSt11make_sharedIN2v88internal4wasm22WasmModuleCoverageDataEJRKjEESt10shared_ptrIT_EDpOT0_"}
!102 = !{!100}
!103 = !{!104, !106, !100}
!104 = distinct !{!104, !105, !"_ZSt11make_uniqueIA_St10unique_ptrIN2v88internal4wasm24WasmFunctionCoverageDataESt14default_deleteIS4_EEENSt8__detail9_MakeUniqIT_E7__arrayEm: argument 0"}
!105 = distinct !{!105, !"_ZSt11make_uniqueIA_St10unique_ptrIN2v88internal4wasm24WasmFunctionCoverageDataESt14default_deleteIS4_EEENSt8__detail9_MakeUniqIT_E7__arrayEm"}
!106 = distinct !{!106, !107, !"_ZN2v84base11OwnedVectorISt10unique_ptrINS_8internal4wasm24WasmFunctionCoverageDataESt14default_deleteIS5_EEE3NewEm: argument 0"}
!107 = distinct !{!107, !"_ZN2v84base11OwnedVectorISt10unique_ptrINS_8internal4wasm24WasmFunctionCoverageDataESt14default_deleteIS5_EEE3NewEm"}
!108 = distinct !{null, null, null, null, null}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZSt11make_uniqueIA_N2v88internal15WasmCodePointerEENSt8__detail9_MakeUniqIT_E7__arrayEm: argument 0"}
!111 = distinct !{!111, !"_ZSt11make_uniqueIA_N2v88internal15WasmCodePointerEENSt8__detail9_MakeUniqIT_E7__arrayEm"}
!112 = distinct !{null}
!113 = distinct !{null, null}
!114 = distinct !{null}
!115 = distinct !{!115, !6}
!116 = distinct !{!116, !6}
!117 = !{!118, !120, !122, !124}
!118 = distinct !{!118, !119, !"_ZSt25make_unique_for_overwriteIA_hENSt8__detail9_MakeUniqIT_E7__arrayEm: argument 0"}
!119 = distinct !{!119, !"_ZSt25make_unique_for_overwriteIA_hENSt8__detail9_MakeUniqIT_E7__arrayEm"}
!120 = distinct !{!120, !121, !"_ZN2v84base11OwnedVectorIhE15NewForOverwriteEm: argument 0"}
!121 = distinct !{!121, !"_ZN2v84base11OwnedVectorIhE15NewForOverwriteEm"}
!122 = distinct !{!122, !123, !"_ZN2v84base11OwnedVectorIhE12NewByCopyingIhEENS1_IT_EEPKS4_m: argument 0"}
!123 = distinct !{!123, !"_ZN2v84base11OwnedVectorIhE12NewByCopyingIhEENS1_IT_EEPKS4_m"}
!124 = distinct !{!124, !125, !"_ZN2v84base11OwnedCopyOfIhEENS0_11OwnedVectorIT_EEPKS3_m: argument 0"}
!125 = distinct !{!125, !"_ZN2v84base11OwnedCopyOfIhEENS0_11OwnedVectorIT_EEPKS3_m"}
!126 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!127 = !{!122, !124}
!128 = !{!129, !131, !133, !135}
!129 = distinct !{!129, !130, !"_ZSt25make_unique_for_overwriteIA_hENSt8__detail9_MakeUniqIT_E7__arrayEm: argument 0"}
!130 = distinct !{!130, !"_ZSt25make_unique_for_overwriteIA_hENSt8__detail9_MakeUniqIT_E7__arrayEm"}
!131 = distinct !{!131, !132, !"_ZN2v84base11OwnedVectorIhE15NewForOverwriteEm: argument 0"}
!132 = distinct !{!132, !"_ZN2v84base11OwnedVectorIhE15NewForOverwriteEm"}
!133 = distinct !{!133, !134, !"_ZN2v84base11OwnedVectorIhE12NewByCopyingIhEENS1_IT_EEPKS4_m: argument 0"}
!134 = distinct !{!134, !"_ZN2v84base11OwnedVectorIhE12NewByCopyingIhEENS1_IT_EEPKS4_m"}
!135 = distinct !{!135, !136, !"_ZN2v84base11OwnedCopyOfIhEENS0_11OwnedVectorIT_EEPKS3_m: argument 0"}
!136 = distinct !{!136, !"_ZN2v84base11OwnedCopyOfIhEENS0_11OwnedVectorIT_EEPKS3_m"}
!137 = !{!133, !135}
!138 = !{!139}
!139 = distinct !{!139, !140, !"_ZN2v88internal12EmbeddedData8FromBlobEv: argument 0"}
!140 = distinct !{!140, !"_ZN2v88internal12EmbeddedData8FromBlobEv"}
!141 = distinct !{!141, !6, !9, !10}
!142 = distinct !{!142, !95}
!143 = distinct !{!143, !6, !9}
!144 = distinct !{!144, !6}
!145 = !{!146}
!146 = distinct !{!146, !147, !"_ZN2v88internal4wasm8WasmCode16ConcatenateBytesESt16initializer_listINS_4base6VectorIKhEEE: argument 0"}
!147 = distinct !{!147, !"_ZN2v88internal4wasm8WasmCode16ConcatenateBytesESt16initializer_listINS_4base6VectorIKhEEE"}
!148 = !{ptr @_ZN2v88internal4wasm12NativeModule26CreateEmptyJumpTableLockedEiNS2_13JumpTableTypeE}
!149 = distinct !{!149, !6}
!150 = distinct !{!150, !6}
!151 = distinct !{!151, !6}
!152 = distinct !{!152, !6}
!153 = distinct !{!153, !6}
!154 = distinct !{!154, !6}
!155 = distinct !{!155, !6}
!156 = distinct !{!156, !95}
!157 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!158 = distinct !{!158, !6}
end_hunk_2
